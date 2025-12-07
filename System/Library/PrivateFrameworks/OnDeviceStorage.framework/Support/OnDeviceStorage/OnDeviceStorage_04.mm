uint64_t sub_10003D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
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

  v8 = *(v3 + 168);
  v9 = *(v3 + 176);
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  *(v4 + 216) = v7;
  sub_10003D98C(v8, v10, v11, (v3 + 56));
  *(v3 + 184) = v9;

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;

      *(v3 + 208) = v9;
      v15 = *(v3 + 96);
      sub_100026FDC((v3 + 16));
      v16 = sub_10003D8F0;
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

  v15 = *(v3 + 96);
  *(v4 + 216) = v13;

  *(v3 + 192) = *(v3 + 56);
  sub_100026FDC((v3 + 16));
  v16 = sub_10003D79C;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10003D720()
{

  v0[26] = v0[22];
  v1 = v0[12];
  sub_100026FDC(v0 + 2);

  return _swift_task_switch(sub_10003D8F0, v1, 0);
}

uint64_t sub_10003D79C()
{
  if (v0[25])
  {
    v1 = v0[23];
    AccessCredential.init(from:)();
    if (v1)
    {
      sub_100042820("cachedCredential", 16, 2, v0[18]);

      v2 = v0[1];
      goto LABEL_7;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[18];
  v5 = v0[9];
  v6 = type metadata accessor for AccessCredential();
  (*(*(v6 - 8) + 56))(v5, v3, 1, v6);
  sub_100042820("cachedCredential", 16, 2, v4);

  v2 = v0[1];
LABEL_7:

  return v2();
}

uint64_t sub_10003D8F0()
{
  sub_100042820("cachedCredential", 16, 2, *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a2;
  v74 = a1;
  v67 = a4;
  v61 = type metadata accessor for Date();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v8 - 8);
  v73 = &v58 - v9;
  v10 = type metadata accessor for Row();
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = &v58 - v21;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v65 = v12;
  v70 = sub_10002FD14(v16, qword_1001732E8);
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v77 = a3;
  v78 = v16;
  v22 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v23 = sub_10002FD14(v22, qword_100173330);
  v81 = v22;
  v82 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v24 = sub_100042BAC(&v79);
  v25 = *(*(v22 - 8) + 16);
  v63 = v23;
  v25(v24, v23, v22);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v26 = swift_allocObject();
  v64 = xmmword_10012FA10;
  *(v26 + 16) = xmmword_10012FA10;
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v27 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v28 = sub_10002FD14(v27, qword_100173348);
  *(v26 + 56) = v27;
  *(v26 + 64) = sub_10002B95C(&qword_10016AE00, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  v29 = sub_100042BAC((v26 + 32));
  v30 = *(*(v27 - 8) + 16);
  v62 = v28;
  v30(v29, v28, v27);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v31 = v78;
  SchemaType.select(_:_:)();

  sub_100026FDC(&v79);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v22, qword_100173318);
  v79 = *&v76;
  v80 = v77;
  static Expression<A>.== infix<A>(_:_:)();
  v32 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v33 = v83;
  QueryType.where(_:)();
  (*(v71 + 8))(v15, v72);
  v34 = *(v17 + 8);
  v34(v20, v31);
  v81 = v31;
  v82 = v32;
  v35 = sub_100042BAC(&v79);
  (*(v17 + 16))(v35, v33, v31);
  v36 = v73;
  v37 = v75;
  Connection.pluck(_:)();
  if (v37)
  {
    v34(v33, v31);
    return sub_100026FDC(&v79);
  }

  sub_100026FDC(&v79);
  v39 = v68;
  v40 = v36;
  v41 = v36;
  v42 = v69;
  if ((*(v68 + 48))(v40, 1, v69) == 1)
  {
    sub_10002BA6C(v41, &qword_10016AD38, &qword_1001332F0);
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for OSLogger();
    sub_10002FD14(v43, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = v64;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._countAndFlagsBits = 0xD00000000000002ALL;
    v44._object = 0x800000010013A1A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    v81 = &type metadata for String;
    v79 = *&v76;
    v80 = v77;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v45);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

LABEL_15:
    result = v34(v83, v78);
    v46 = v67;
    *v67 = 0;
    v46[1] = 0;
    return result;
  }

  v47 = v65;
  (*(v39 + 32))(v65, v41, v42);
  Row.get<A>(_:)();
  v48 = *&v79;
  v49 = v80;
  Row.get<A>(_:)();
  v50 = v79;
  v51 = v59;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v53 = v52;
  (*(v60 + 8))(v51, v61);
  if (v50 <= v53)
  {

    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for OSLogger();
    sub_10002FD14(v55, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = v64;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v56._object = 0x800000010013A1D0;
    v56._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    v81 = &type metadata for String;
    v79 = *&v76;
    v80 = v77;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v79, &qword_10016AB10, &unk_100130B10);
    v57._countAndFlagsBits = 0x6970786520736920;
    v57._object = 0xEB00000000646572;
    LogMessage.StringInterpolation.appendLiteral(_:)(v57);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v68 + 8))(v65, v69);
    goto LABEL_15;
  }

  (*(v68 + 8))(v47, v69);
  result = v34(v83, v31);
  v54 = v67;
  *v67 = v48;
  v54[1] = v49;
  return result;
}

uint64_t sub_10003E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 89) = a5;
  *(v6 + 176) = a2;
  *(v6 + 184) = a3;
  *(v6 + 168) = a1;
  v7 = type metadata accessor for OnConflict();
  *(v6 + 208) = v7;
  *(v6 + 216) = *(v7 - 8);
  *(v6 + 224) = swift_task_alloc();
  v8 = type metadata accessor for Insert();
  *(v6 + 232) = v8;
  *(v6 + 240) = *(v8 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v9 = type metadata accessor for DataDeletionTrigger();
  *(v6 + 272) = v9;
  *(v6 + 280) = *(v9 - 8);
  *(v6 + 288) = swift_task_alloc();
  v10 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  *(v6 + 296) = v10;
  *(v6 + 304) = *(v10 - 8);
  *(v6 + 312) = swift_task_alloc();
  sub_100026F94(&qword_10016AE40, &unk_100130D60);
  *(v6 + 320) = swift_task_alloc();
  v11 = type metadata accessor for ForwardDeletionRules();
  *(v6 + 328) = v11;
  *(v6 + 336) = *(v11 - 8);
  *(v6 + 344) = swift_task_alloc();
  v12 = type metadata accessor for MonotonicTime();
  *(v6 + 352) = v12;
  *(v6 + 360) = *(v12 - 8);
  *(v6 + 368) = swift_task_alloc();
  v13 = type metadata accessor for Setter();
  *(v6 + 376) = v13;
  *(v6 + 384) = *(v13 - 8);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_10003E8F4, v5, 0);
}

uint64_t sub_10003E8F4()
{
  v1 = sub_100026F50((*(v0 + 200) + 152), *(*(v0 + 200) + 176));
  v2 = *v1;
  *(v0 + 440) = *v1;

  return _swift_task_switch(sub_10003E968, v2, 0);
}

uint64_t sub_10003E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  *(v3 + 448) = v5;
  v6 = swift_task_alloc();
  *(v3 + 456) = v6;
  *v6 = v3;
  v6[1] = sub_10003EA68;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003EA68(uint64_t a1)
{
  v3 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[55];

    return _swift_task_switch(sub_10003EC74, v6, 0);
  }
}

uint64_t sub_10003EC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[55];
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
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = v3[59];
  v9 = type metadata accessor for Table();
  v3[60] = v9;
  v3[61] = sub_10002FD14(v9, qword_1001732E8);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (!v8)
  {

    v17 = *(v4 + 216);
    v6 = __OFSUB__(v17, 1);
    v18 = v17 - 1;
    if (!v6)
    {
      v11 = v3[25];
      *(v4 + 216) = v18;
      v10 = sub_10003EEEC;
      v12 = 0;

      return _swift_task_switch(v10, v11, v12);
    }

LABEL_15:
    __break(1u);
    return _swift_task_switch(v10, v11, v12);
  }

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 216) = v14;

  v15 = v3[1];

  return v15();
}

uint64_t sub_10003EEEC()
{
  v1 = v0;
  v2 = *(v0 + 384);
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v3 = *(v2 + 72);
  *(v0 + 496) = v3;
  v4 = *(v2 + 80);
  *(v0 + 92) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100130BB0;
  v109 = v5;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v7 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v7, qword_100173318);
  *(v0 + 16) = AccessCredential.requestId.getter();
  *(v0 + 24) = v8;
  <- infix<A>(_:_:)();

  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v9 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v9, qword_100173348);
  AccessCredential.expiresAt.getter();
  *(v0 + 144) = v10;
  <- infix<A>(_:_:)();
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 176);
  v12 = *(v1 + 168);
  sub_10002FD14(v7, qword_100173330);
  *(v1 + 32) = v12;
  *(v1 + 40) = v11;
  <- infix<A>(_:_:)();
  v111 = v1;
  if (AccessCredential.isRateLimited.getter())
  {
    if (qword_10016A330 != -1)
    {
      swift_once();
    }

    v13 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
    sub_10002FD14(v13, qword_1001733A8);
    *(v1 + 96) = 1;
    *(v1 + 104) = 0;
    <- infix<A>(_:_:)();
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_10007E02C((v14 > 1), v15 + 1, 1, v6);
    }

    v16 = *(v1 + 432);
    v17 = *(v1 + 376);
    v18 = *(v1 + 384);
    *(v6 + 16) = v15 + 1;
    v107 = *(v18 + 32);
    v107(v6 + v5 + v15 * v3, v16, v17);
    if (qword_10016A338 != -1)
    {
      swift_once();
    }

    v20 = *(v1 + 360);
    v19 = *(v1 + 368);
    v21 = *(v1 + 352);
    v22 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    sub_10002FD14(v22, qword_1001733C0);
    static MonotonicTime.now.getter();
    MonotonicTime.timeInterval.getter();
    v24 = v23;
    (*(v20 + 8))(v19, v21);
    *(v1 + 112) = v24;
    *(v1 + 120) = 0;
    <- infix<A>(_:_:)();
    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      v6 = sub_10007E02C((v25 > 1), v26 + 1, 1, v6);
    }

    v27 = *(v1 + 424);
    v28 = *(v1 + 376);
    *(v6 + 16) = v26 + 1;
    v107(v6 + v109 + v26 * v3, v27, v28);
    if (qword_10016A340 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v22, qword_1001733D8);
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    <- infix<A>(_:_:)();
    v30 = *(v6 + 16);
    v29 = *(v6 + 24);
    if (v30 >= v29 >> 1)
    {
      v6 = sub_10007E02C((v29 > 1), v30 + 1, 1, v6);
    }

    v31 = *(v1 + 416);
    v32 = *(v1 + 376);
    *(v6 + 16) = v30 + 1;
    v107(v6 + v109 + v30 * v3, v31, v32);
  }

  v33 = *(v1 + 328);
  v34 = *(v1 + 336);
  v35 = *(v1 + 320);
  AccessCredential.forwardDeletionRules.getter();
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    sub_10002BA6C(*(v1 + 320), &qword_10016AE40, &unk_100130D60);
    v36 = *(AccessCredential.dataDeletionTriggers.getter() + 16);

    if (v36)
    {
      if (qword_10016A328 != -1)
      {
        swift_once();
      }

      v106 = v6;
      v37 = *(v1 + 304);
      v38 = *(v1 + 312);
      v39 = *(v1 + 296);
      v40 = sub_10002FD14(v39, qword_100173390);
      (*(v37 + 16))(v38, v40, v39);
      v41 = AccessCredential.dataDeletionTriggers.getter();
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = *(v1 + 280);
        sub_10007E9EC(0, v42, 0);
        v44 = *(v43 + 16);
        v43 += 16;
        v45 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
        v108 = *(v43 + 56);
        v110 = v44;
        v46 = (v43 - 8);
        do
        {
          v47 = *(v1 + 288);
          v48 = *(v1 + 272);
          v110(v47, v45, v48);
          v49 = DataDeletionTrigger.name.getter();
          v51 = v50;
          (*v46)(v47, v48);
          v53 = _swiftEmptyArrayStorage[2];
          v52 = _swiftEmptyArrayStorage[3];
          if (v53 >= v52 >> 1)
          {
            sub_10007E9EC((v52 > 1), v53 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v53 + 1;
          v54 = &_swiftEmptyArrayStorage[2 * v53];
          v54[4] = v49;
          v54[5] = v51;
          v45 += v108;
          --v42;
          v1 = v111;
        }

        while (v42);
      }

      v81 = *(v1 + 304);
      v82 = *(v1 + 312);
      v83 = *(v1 + 296);
      *(v1 + 152) = _swiftEmptyArrayStorage;
      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
      v84 = BidirectionalCollection<>.joined(separator:)();
      v86 = v85;

      *(v1 + 48) = v84;
      *(v1 + 56) = v86;
      <- infix<A>(_:_:)();

      (*(v81 + 8))(v82, v83);
      v87 = v106;
      v89 = v106[2];
      v88 = v106[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_10007E02C((v88 > 1), v89 + 1, 1, v106);
      }

      v90 = *(v1 + 92);
      v91 = *(v1 + 496);
      v93 = *(v1 + 384);
      v92 = *(v1 + 392);
      v94 = *(v1 + 376);
      v87[2] = v89 + 1;
      (*(v93 + 32))(v87 + ((v90 + 32) & ~v90) + v91 * v89, v92, v94);
    }

    if (*(v1 + 89) == 1)
    {
      v95 = *(v1 + 216);
      v96 = *(v1 + 224);
      v97 = *(v1 + 208);
      (*(v95 + 104))(v96, enum case for OnConflict.ignore(_:), v97);
      sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
      QueryType.insert(or:_:)();

      (*(v95 + 8))(v96, v97);
    }

    else
    {
      sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
      QueryType.insert(_:)();
    }

    v98 = *(v1 + 264);
    v100 = *(v1 + 240);
    v99 = *(v1 + 248);
    v101 = *(v1 + 232);
    v102 = *(v1 + 200);
    (*(v100 + 32))(v98, *(v1 + 256), v101);
    v103 = sub_100026F50((v102 + 152), *(v102 + 176));
    (*(v100 + 16))(v99, v98, v101);
    *(v1 + 528) = *v103;
    v104 = swift_task_alloc();
    *(v1 + 536) = v104;
    *v104 = v1;
    v104[1] = sub_10004034C;
    v105 = *(v1 + 448);

    return sub_100050F58(v105, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
  }

  else
  {
    v55 = v6;
    (*(*(v1 + 336) + 32))(*(v1 + 344), *(v1 + 320), *(v1 + 328));
    if (qword_10016A318 != -1)
    {
      swift_once();
    }

    sub_10002FD14(*(v1 + 296), qword_100173360);
    *(v1 + 160) = ForwardDeletionRules.bundleIds.getter();
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
    v56 = BidirectionalCollection<>.joined(separator:)();
    v58 = v57;

    *(v1 + 64) = v56;
    *(v1 + 72) = v58;
    <- infix<A>(_:_:)();

    v59 = v55;
    v61 = v55[2];
    v60 = v55[3];
    if (v61 >= v60 >> 1)
    {
      v59 = sub_10007E02C((v60 > 1), v61 + 1, 1, v55);
    }

    v62 = *(v1 + 408);
    v63 = *(v1 + 376);
    v64 = *(v1 + 384);
    *(v59 + 2) = v61 + 1;
    v65 = v59;
    v66 = *(v64 + 32);
    v66(&v59[v109 + v61 * v3], v62, v63);
    if (qword_10016A320 != -1)
    {
      swift_once();
    }

    v67 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    sub_10002FD14(v67, qword_100173378);
    ForwardDeletionRules.retentionInterval.getter();
    *(v1 + 80) = v68;
    *(v1 + 88) = 0;
    <- infix<A>(_:_:)();
    v70 = *(v65 + 2);
    v69 = *(v65 + 3);
    v71 = v65;
    if (v70 >= v69 >> 1)
    {
      v71 = sub_10007E02C((v69 > 1), v70 + 1, 1, v65);
    }

    *(v1 + 504) = v71;
    v72 = *(v1 + 400);
    v73 = *(v1 + 376);
    v75 = *(v1 + 192);
    v74 = *(v1 + 200);
    *(v71 + 2) = v70 + 1;
    v66(&v71[v109 + v70 * v3], v72, v73);
    sub_100026F50((v74 + 192), *(v74 + 216));
    v77 = *v75;
    v76 = v75[1];
    v78 = swift_task_alloc();
    *(v1 + 512) = v78;
    *v78 = v1;
    v78[1] = sub_10003FBBC;
    v79 = *(v1 + 344);

    return sub_10005A90C(v77, v76, v79);
  }
}

uint64_t sub_10003FBBC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);

    v4 = sub_100040208;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 200);
    v4 = sub_10003FCE4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10003FCE4()
{
  v1 = v0;
  (*(v0[42] + 8))(v0[43], v0[41]);
  v2 = v0[63];
  v3 = *(AccessCredential.dataDeletionTriggers.getter() + 16);

  if (v3)
  {
    if (qword_10016A328 != -1)
    {
      swift_once();
    }

    v49 = v2;
    v4 = v0[38];
    v5 = v1[39];
    v6 = v1[37];
    v7 = sub_10002FD14(v6, qword_100173390);
    (*(v4 + 16))(v5, v7, v6);
    v8 = AccessCredential.dataDeletionTriggers.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v1[35];
      sub_10007E9EC(0, v9, 0);
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v50 = *(v10 + 56);
      v51 = v11;
      v13 = (v10 - 8);
      do
      {
        v14 = v1[36];
        v15 = v1;
        v16 = v1[34];
        v51(v14, v12, v16);
        v17 = DataDeletionTrigger.name.getter();
        v19 = v18;
        (*v13)(v14, v16);
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_10007E9EC((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v12 += v50;
        --v9;
        v1 = v15;
      }

      while (v9);
    }

    v23 = v1[38];
    v24 = v1[39];
    v25 = v1[37];
    v1[19] = _swiftEmptyArrayStorage;
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390, &protocol conformance descriptor for [A]);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v1[6] = v26;
    v1[7] = v28;
    <- infix<A>(_:_:)();

    (*(v23 + 8))(v24, v25);
    v29 = v49;
    v31 = v49[2];
    v30 = v49[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_10007E02C((v30 > 1), v31 + 1, 1, v49);
    }

    v32 = *(v1 + 92);
    v33 = v1[62];
    v35 = v1[48];
    v34 = v1[49];
    v36 = v1[47];
    v29[2] = v31 + 1;
    (*(v35 + 32))(v29 + ((v32 + 32) & ~v32) + v33 * v31, v34, v36);
  }

  if (*(v1 + 89) == 1)
  {
    v37 = v1[27];
    v38 = v1[28];
    v39 = v1[26];
    (*(v37 + 104))(v38, enum case for OnConflict.ignore(_:), v39);
    sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    QueryType.insert(or:_:)();

    (*(v37 + 8))(v38, v39);
  }

  else
  {
    sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    QueryType.insert(_:)();
  }

  v40 = v1[33];
  v42 = v1[30];
  v41 = v1[31];
  v43 = v1[29];
  v44 = v1[25];
  (*(v42 + 32))(v40, v1[32], v43);
  v45 = sub_100026F50((v44 + 152), *(v44 + 176));
  (*(v42 + 16))(v41, v40, v43);
  v1[66] = *v45;
  v46 = swift_task_alloc();
  v1[67] = v46;
  *v46 = v1;
  v46[1] = sub_10004034C;
  v47 = v1[56];

  return sub_100050F58(v47, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100040208()
{
  (*(v0[42] + 8))(v0[43], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004034C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  v5 = *(v3 + 528);
  if (v1)
  {
    v6 = sub_1000406E8;
  }

  else
  {
    v6 = sub_100040484;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100040484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[66];
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

  v8 = v3[69];
  *(v4 + 216) = v7;
  Connection.run(_:)();

  v9 = *(v4 + 216);
  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  v11 = v6;
  if (v8)
  {
    if ((v11 & 1) == 0)
    {
      *(v4 + 216) = v10;
      v3[72] = v8;
      v13 = v3[30];
      v12 = v3[31];
      v14 = v3[29];
      v15 = v3[25];
      v16 = *(v13 + 8);
      v3[73] = v16;
      v3[74] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v12, v14);
      v17 = sub_10004077C;
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

  v19 = v3[30];
  v18 = v3[31];
  v20 = v3[29];
  v15 = v3[25];
  *(v4 + 216) = v10;
  v21 = *(v19 + 8);
  v3[70] = v21;
  v3[71] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v18, v20);
  v17 = sub_1000405B0;
LABEL_10:
  a1 = v17;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000405B0()
{
  (*(v0 + 560))(*(v0 + 264), *(v0 + 232));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000406E8()
{
  v0[72] = v0[69];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[25];
  v5 = *(v2 + 8);
  v0[73] = v5;
  v0[74] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return _swift_task_switch(sub_10004077C, v4, 0);
}

uint64_t sub_10004077C()
{
  (*(v0 + 584))(*(v0 + 264), *(v0 + 232));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000408BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v30[1] = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  v9 = type metadata accessor for Table();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v34 = v30 - v14;
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v9, qword_100173300);
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v15._countAndFlagsBits = QueryType.name.getter();
  v33 = a1;
  v16 = Connection.tableExists(_:)(v15);

  if (v16)
  {
    v18 = v10;
    if (qword_10016A300 != -1)
    {
      swift_once();
    }

    v19 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v19, qword_100173318);
    v20 = v37;
    v39 = v38;
    v40 = v37;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    (*(v31 + 8))(v8, v32);
    v21 = v34;
    QueryType.exists.getter();
    (*(v18 + 8))(v12, v9);
    v22 = v42;
    Connection.scalar<A>(_:)();
    if (v22 || v39 != 1)
    {
      return (*(v35 + 8))(v21, v36);
    }

    else
    {
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for OSLogger();
      sub_10002FD14(v23, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._object = 0x800000010013A400;
      v24._countAndFlagsBits = 0xD00000000000001FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v41 = &type metadata for String;
      v25 = v38;
      v39 = v38;
      v40 = v20;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v39, &qword_10016AB10, &unk_100130B10);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      v27 = type metadata accessor for AccessCredential.Error();
      sub_100042C10(&qword_10016AB18, &type metadata accessor for AccessCredential.Error, &protocol conformance descriptor for AccessCredential.Error);
      swift_allocError();
      *v28 = v25;
      v28[1] = v20;
      (*(*(v27 - 8) + 104))(v28, enum case for AccessCredential.Error.revokedCredential(_:), v27);
      swift_willThrow();
      v29 = *(v35 + 8);

      return v29(v21, v36);
    }
  }

  return result;
}

uint64_t sub_100040EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v59 = a2;
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  __chkstk_darwin(v10 - 8);
  v57 = v46 - v11;
  v56 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v46 - v12;
  v13 = type metadata accessor for Table();
  v55 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = v46 - v17;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v13, qword_1001732E8);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v4)
  {
  }

  v52 = 0;
  v46[1] = v9;
  v47 = a4;

  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v51 = a1;
  v19 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v20 = sub_10002FD14(v19, qword_100173330);
  v62 = v19;
  v50 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v63 = v50;
  v21 = sub_100042BAC(&v60);
  v22 = *(v19 - 8);
  v23 = *(v22 + 16);
  v48 = v22 + 16;
  v49 = v23;
  v23(v21, v20, v19);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100130B20;
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v25 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v26 = sub_10002FD14(v25, qword_100173348);
  *(v24 + 56) = v25;
  *(v24 + 64) = sub_10002B95C(&qword_10016AE00, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  v27 = sub_100042BAC((v24 + 32));
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v28 = sub_10002FD14(v19, qword_100173318);
  v29 = v50;
  *(v24 + 96) = v19;
  *(v24 + 104) = v29;
  v30 = sub_100042BAC((v24 + 72));
  v49(v30, v28, v19);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  SchemaType.select(_:_:)();

  sub_100026FDC(&v60);
  v60 = v59;
  v61 = v64;
  v31 = v53;
  static Expression<A>.== infix<A>(_:_:)();
  v32 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  v33 = v58;
  QueryType.where(_:)();
  (*(v54 + 8))(v31, v56);
  v34 = v55;
  v35 = *(v55 + 8);
  v35(v16, v13);
  v62 = v13;
  v63 = v32;
  v36 = sub_100042BAC(&v60);
  (*(v34 + 16))(v36, v33, v13);
  v37 = v57;
  v38 = v52;
  Connection.pluck(_:)();
  if (v38)
  {
    v35(v33, v13);
    return sub_100026FDC(&v60);
  }

  else
  {
    sub_100026FDC(&v60);
    v39 = type metadata accessor for Row();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v37, 1, v39) == 1)
    {
      v52 = 0;
      sub_10002BA6C(v37, &qword_10016AD38, &qword_1001332F0);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for OSLogger();
      v56 = sub_10002FD14(v57, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v41 = *(type metadata accessor for LogMessage() - 8);
      v55 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      v42 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43._object = 0x800000010013A3E0;
      v43._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      v62 = &type metadata for String;
      v60 = v59;
      v61 = v64;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v60, &qword_10016AB10, &unk_100130B10);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v35(v58, v13);
      v45 = v47;
    }

    else
    {
      v35(v33, v13);
      v45 = v47;
      (*(v40 + 32))(v47, v37, v39);
      v42 = 0;
    }

    return (*(v40 + 56))(v45, v42, 1, v39);
  }
}

uint64_t sub_10004181C()
{
  sub_100026FDC(v0 + 14);
  sub_100026FDC(v0 + 19);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 34);
  sub_100026FDC(v0 + 39);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000418A0()
{
  v0 = sub_100026F94(&qword_10016AE28, &qword_100130D48);
  __chkstk_darwin(v0 - 8);
  v37 = &v33 - v1;
  v2 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v11 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v11, qword_100173318);
  v12 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 1, 1, v12);
  v16 = *(v11 - 8);
  v38 = *(v16 + 56);
  v39 = v11;
  v45 = (v16 + 56);
  v38(v7, 1, 1, v11);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v7, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v17, qword_100173348);
  v14(v10, 1, 1, v12);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v46 = v17;
  v40 = v18 + 56;
  v41 = v19;
  v19(v4, 1, 1, v17);
  v43 = v15;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v42 = v4;
  sub_10002BA6C(v4, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v20 = v39;
  sub_10002FD14(v39, qword_100173330);
  v14(v10, 1, 1, v12);
  v21 = v38;
  v38(v7, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v7, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A318 != -1)
  {
    swift_once();
  }

  v34 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FD14(v34, qword_100173360);
  v14(v10, 1, 1, v12);
  v21(v7, 1, 1, v20);
  v44 = v12;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v35 = v7;
  sub_10002BA6C(v7, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A320 != -1)
  {
    swift_once();
  }

  v36 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v36, qword_100173378);
  v14(v10, 1, 1, v44);
  v22 = v42;
  v41(v42, 1, 1, v46);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v22, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A328 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v34, qword_100173390);
  v23 = v44;
  v14(v10, 1, 1, v44);
  v24 = v35;
  v38(v35, 1, 1, v39);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v24, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v25 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v25, qword_1001733A8);
  v14(v10, 1, 1, v23);
  v26 = sub_100026F94(&qword_10016AE38, &unk_1001333A0);
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v27, &qword_10016AE28, &qword_100130D48);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  v45 = v14;
  v28 = v46;
  v29 = v36;
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v29, qword_1001733C0);
  v45(v10, 1, 1, v23);
  v31 = v41;
  v30 = v42;
  v41(v42, 1, 1, v28);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v30, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v29, qword_1001733D8);
  v45(v10, 1, 1, v44);
  v31(v30, 1, 1, v46);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v30, &qword_10016AE30, &unk_100130D50);
  return sub_10002BA6C(v10, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10004236C()
{
  v0 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v6 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v6, qword_100173318);
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v2, &qword_10016ADF0, &unk_100130CF0);
  return sub_10002BA6C(v5, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_100042578()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000425C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_100094AB0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100042680()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042820(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016AC28);
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

unint64_t sub_100042B50()
{
  result = qword_10016AE20;
  if (!qword_10016AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AE20);
  }

  return result;
}

uint64_t *sub_100042BAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100042C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100042CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042D18(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100042D68(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042DCC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100042E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, qword_10016AEE8);
}

uint64_t sub_100042EC8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016AF10);
  v1 = sub_10002FD14(v0, qword_10016AF10);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100042F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[127] = v6;
  v7[126] = a6;
  v7[125] = a5;
  v7[124] = a4;
  v7[123] = a3;
  v7[122] = a2;
  v7[121] = a1;
  v8 = type metadata accessor for RequestAccessType();
  v7[128] = v8;
  v7[129] = *(v8 - 8);
  v7[130] = swift_task_alloc();
  v9 = type metadata accessor for RichFailure();
  v7[131] = v9;
  v7[132] = *(v9 - 8);
  v7[133] = swift_task_alloc();
  v10 = type metadata accessor for StatusRequest();
  v7[134] = v10;
  v7[135] = *(v10 - 8);
  v7[136] = swift_task_alloc();
  v11 = type metadata accessor for DataDeletionTriggerRequest();
  v7[137] = v11;
  v7[138] = *(v11 - 8);
  v7[139] = swift_task_alloc();
  v12 = type metadata accessor for DeleteRequest();
  v7[140] = v12;
  v7[141] = *(v12 - 8);
  v7[142] = swift_task_alloc();
  updated = type metadata accessor for UpdateRequest();
  v7[143] = updated;
  v7[144] = *(updated - 8);
  v7[145] = swift_task_alloc();
  inserted = type metadata accessor for InsertRequest();
  v7[146] = inserted;
  v7[147] = *(inserted - 8);
  v7[148] = swift_task_alloc();
  v15 = type metadata accessor for AnyValue();
  v7[149] = v15;
  v7[150] = *(v15 - 8);
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v16 = type metadata accessor for ScalarValueRequest();
  v7[153] = v16;
  v7[154] = *(v16 - 8);
  v7[155] = swift_task_alloc();
  v7[156] = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v17 = type metadata accessor for PluckRequest();
  v7[159] = v17;
  v7[160] = *(v17 - 8);
  v7[161] = swift_task_alloc();
  v18 = type metadata accessor for SelectRequest();
  v7[162] = v18;
  v7[163] = *(v18 - 8);
  v7[164] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v7[165] = swift_task_alloc();
  v19 = type metadata accessor for DisconnectionRequest();
  v7[166] = v19;
  v7[167] = *(v19 - 8);
  v7[168] = swift_task_alloc();
  v20 = type metadata accessor for AccessCredential();
  v7[169] = v20;
  v7[170] = *(v20 - 8);
  v7[171] = swift_task_alloc();
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  v21 = type metadata accessor for ConnectionRequest();
  v7[174] = v21;
  v7[175] = *(v21 - 8);
  v7[176] = swift_task_alloc();
  v22 = type metadata accessor for Dependency();
  v7[177] = v22;
  v7[178] = *(v22 - 8);
  v7[179] = swift_task_alloc();
  v23 = type metadata accessor for OSSignpostID();
  v7[180] = v23;
  v7[181] = *(v23 - 8);
  v7[182] = swift_task_alloc();
  v7[183] = swift_task_alloc();
  v7[184] = type metadata accessor for ClientMessage();
  v7[185] = swift_task_alloc();
  v7[186] = swift_task_alloc();

  return _swift_task_switch(sub_1000436AC, v6, 0);
}

uint64_t sub_1000436AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = v3;
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 1488);
  v5 = *(v3 + 976);
  v6 = type metadata accessor for OSSignposter();
  sub_10002FD14(v6, qword_10016AF10);
  sub_10004F164(v5, v4);
  static OSSignpostID.exclusive.getter();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  v9 = OS_os_log.signpostsEnabled.getter();
  v10 = *(v3 + 1488);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91 = v12;
    *v11 = 136315138;
    sub_10004F508(&qword_10016B148, &type metadata accessor for ClientMessage, &protocol conformance descriptor for ClientMessage);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_10004F1C8(v10);
    v16 = sub_10006CB64(v13, v15, &v91);

    *(v11 + 4) = v16;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v17, "handleRequest", "message=%s", v11, 0xCu);
    sub_100026FDC(v12);
  }

  else
  {

    sub_10004F1C8(v10);
  }

  v18 = *(v3 + 1480);
  v19 = *(v3 + 1464);
  v20 = *(v3 + 1448);
  v21 = *(v3 + 1440);
  v22 = *(v3 + 1432);
  v23 = *(v3 + 1424);
  v89 = *(v3 + 1416);
  v24 = *(v3 + 984);
  v90 = *(v3 + 976);
  (*(v20 + 16))(*(v3 + 1456), v19, v21);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 1496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v20 + 8))(v19, v21);
  sub_10004F224(v24, v3 + 16);
  Dependency.init<A>(satisfying:with:)();
  v25 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  *(v3 + 1504) = v25;
  (*(v23 + 8))(v22, v89);
  sub_10004F164(v90, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v49 = *(v3 + 1184);
        v50 = *(v3 + 1176);
        v51 = *(v3 + 1168);
        (*(v50 + 32))(v49, *(v3 + 1480), v51);
        *(v3 + 528) = v51;
        *(v3 + 536) = sub_10004F508(&qword_10016B068, &type metadata accessor for InsertRequest, &protocol conformance descriptor for InsertRequest);
        v52 = sub_100042BAC((v3 + 504));
        (*(v50 + 16))(v52, v49, v51);
        v53 = swift_task_alloc();
        *(v3 + 1808) = v53;
        *v53 = v3;
        v53[1] = sub_100047064;
        v32 = *(v3 + 1000);
        v33 = *(v3 + 992);
        v34 = v3 + 504;
      }

      else
      {
        v76 = *(v3 + 1160);
        v77 = *(v3 + 1152);
        v78 = *(v3 + 1144);
        (*(v77 + 32))(v76, *(v3 + 1480), v78);
        *(v3 + 448) = v78;
        *(v3 + 456) = sub_10004F508(&qword_10016B060, &type metadata accessor for UpdateRequest, &protocol conformance descriptor for UpdateRequest);
        v79 = sub_100042BAC((v3 + 424));
        (*(v77 + 16))(v79, v76, v78);
        v80 = swift_task_alloc();
        *(v3 + 1856) = v80;
        *v80 = v3;
        v80[1] = sub_1000475FC;
        v32 = *(v3 + 1000);
        v33 = *(v3 + 992);
        v34 = v3 + 424;
      }

LABEL_30:

      return sub_10004C954(v34, v33, v32, v25);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v59 = *(v3 + 1136);
      v60 = *(v3 + 1128);
      v61 = *(v3 + 1120);
      (*(v60 + 32))(v59, *(v3 + 1480), v61);
      *(v3 + 368) = v61;
      *(v3 + 376) = sub_10004F508(&qword_10016B058, &type metadata accessor for DeleteRequest, &protocol conformance descriptor for DeleteRequest);
      v62 = sub_100042BAC((v3 + 344));
      (*(v60 + 16))(v62, v59, v61);
      v63 = swift_task_alloc();
      *(v3 + 1904) = v63;
      *v63 = v3;
      v63[1] = sub_100047B94;
      v32 = *(v3 + 1000);
      v33 = *(v3 + 992);
      v34 = v3 + 344;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v35 = *(v3 + 1112);
      v36 = *(v3 + 1104);
      v37 = *(v3 + 1096);
      (*(v36 + 32))(v35, *(v3 + 1480), v37);
      *(v3 + 288) = v37;
      *(v3 + 296) = sub_10004F508(&qword_10016B040, &type metadata accessor for DataDeletionTriggerRequest, &protocol conformance descriptor for DataDeletionTriggerRequest);
      v38 = sub_100042BAC((v3 + 264));
      (*(v36 + 16))(v38, v35, v37);
      v39 = swift_task_alloc();
      *(v3 + 1952) = v39;
      *v39 = v3;
      v39[1] = sub_10004812C;
      v32 = *(v3 + 1000);
      v33 = *(v3 + 992);
      v34 = v3 + 264;
      goto LABEL_30;
    }

    (*(*(v3 + 1080) + 32))(*(v3 + 1088), *(v3 + 1480), *(v3 + 1072));
    if (static Utils.isInternalBuild.getter())
    {
      v69 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
      v70 = swift_task_alloc();
      *(v3 + 2008) = v70;
      *v70 = v3;
      v70[1] = sub_1000488EC;

      return BaseObjectGraph.injectIfAvailable<A>(_:)(v3 + 184, v69, v69);
    }

    else
    {
      v81 = *(v3 + 1088);
      v82 = *(v3 + 1080);
      v83 = *(v3 + 1072);
      v84 = type metadata accessor for DaemonError();
      sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      v85 = swift_allocError();
      (*(*(v84 - 8) + 104))(v86, enum case for DaemonError.unavailableStatusCommand(_:), v84);
      swift_willThrow();
      (*(v82 + 8))(v81, v83);
      *(v3 + 2072) = v85;
      v87 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v88 = swift_task_alloc();
      *(v3 + 2080) = v88;
      *v88 = v3;
      v88[1] = sub_100049418;

      return BaseObjectGraph.inject<A>(_:)(v3 + 544, v87, v87);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v54 = *(v3 + 1312);
        v55 = *(v3 + 1304);
        v56 = *(v3 + 1296);
        (*(v55 + 32))(v54, *(v3 + 1480), v56);
        *(v3 + 688) = v56;
        *(v3 + 696) = sub_10004F508(&qword_10016B0E0, &type metadata accessor for SelectRequest, &protocol conformance descriptor for SelectRequest);
        v57 = sub_100042BAC((v3 + 664));
        (*(v55 + 16))(v57, v54, v56);
        v58 = swift_task_alloc();
        *(v3 + 1680) = v58;
        *v58 = v3;
        v58[1] = sub_100045DDC;
        v32 = *(v3 + 1000);
        v33 = *(v3 + 992);
        v34 = v3 + 664;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v27 = *(v3 + 1288);
        v28 = *(v3 + 1280);
        v29 = *(v3 + 1272);
        (*(v28 + 32))(v27, *(v3 + 1480), v29);
        *(v3 + 648) = v29;
        *(v3 + 656) = sub_10004F508(&qword_10016B0A8, &type metadata accessor for PluckRequest, &protocol conformance descriptor for PluckRequest);
        v30 = sub_100042BAC((v3 + 624));
        (*(v28 + 16))(v30, v27, v29);
        v31 = swift_task_alloc();
        *(v3 + 1728) = v31;
        *v31 = v3;
        v31[1] = sub_1000463FC;
        v32 = *(v3 + 1000);
        v33 = *(v3 + 992);
        v34 = v3 + 624;
      }

      else
      {
        v64 = *(v3 + 1240);
        v65 = *(v3 + 1232);
        v66 = *(v3 + 1224);
        (*(v65 + 32))(v64, *(v3 + 1480), v66);
        *(v3 + 608) = v66;
        *(v3 + 616) = sub_10004F508(&qword_10016B080, &type metadata accessor for ScalarValueRequest, &protocol conformance descriptor for ScalarValueRequest);
        v67 = sub_100042BAC((v3 + 584));
        (*(v65 + 16))(v67, v64, v66);
        v68 = swift_task_alloc();
        *(v3 + 1768) = v68;
        *v68 = v3;
        v68[1] = sub_100046A3C;
        v32 = *(v3 + 1000);
        v33 = *(v3 + 992);
        v34 = v3 + 584;
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload)
    {
      v71 = *(v3 + 1344);
      v72 = *(v3 + 1336);
      v73 = *(v3 + 1328);
      (*(v72 + 32))(v71, *(v3 + 1480), v73);
      *(v3 + 728) = v73;
      *(v3 + 736) = sub_10004F508(&qword_10016B110, &type metadata accessor for DisconnectionRequest, &protocol conformance descriptor for DisconnectionRequest);
      v74 = sub_100042BAC((v3 + 704));
      (*(v72 + 16))(v74, v71, v73);
      v75 = swift_task_alloc();
      *(v3 + 1640) = v75;
      *v75 = v3;
      v75[1] = sub_100045574;
      v32 = *(v3 + 1000);
      v33 = *(v3 + 992);
      v34 = v3 + 704;
      goto LABEL_30;
    }

    v40 = *(v3 + 1016);
    (*(*(v3 + 1400) + 32))(*(v3 + 1408), *(v3 + 1480), *(v3 + 1392));
    sub_100026F50((v40 + 112), *(v40 + 136));
    v41 = ConnectionRequest.credential.getter();
    v43 = v42;
    v45 = v44;
    *(v3 + 1512) = v41;
    *(v3 + 1520) = v42;
    *(v3 + 2161) = v44;
    v46 = swift_task_alloc();
    *(v3 + 1528) = v46;
    *v46 = v3;
    v46[1] = sub_100044420;
    v47 = *(v3 + 1384);

    return sub_1000307B0(v47, v41, v43, v45 & 1, v25);
  }
}

uint64_t sub_100044420()
{
  v2 = *v1;
  v2[192] = v0;

  if (v0)
  {
    v3 = v2[127];
    sub_100042BA4(v2[189], v2[190]);

    return _swift_task_switch(sub_10004471C, v3, 0);
  }

  else
  {
    sub_100042BA4(v2[189], v2[190]);
    v4 = sub_100026F94(&qword_10016B128, &qword_100130F90);
    v5 = swift_task_alloc();
    v2[193] = v5;
    *v5 = v2;
    v5[1] = sub_1000445F0;

    return BaseObjectGraph.inject<A>(_:)(v2 + 58, v4, v4);
  }
}

uint64_t sub_1000445F0()
{
  v2 = *v1;
  *(*v1 + 1552) = v0;

  v3 = *(v2 + 1016);
  if (v0)
  {
    v4 = sub_10004A208;
  }

  else
  {
    v4 = sub_1000447FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004471C()
{
  (*(v0[175] + 8))(v0[176], v0[174]);
  v0[259] = v0[192];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_1000447FC()
{
  if ((AccessCredential.isDiagnosticsAndUsageRequired.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
  }

  v4 = v1;
  v5 = [v1 isDiagnosticSubmissionAllowed];

  if ((v5 & 1) == 0)
  {
    v13 = v0[176];
    v14 = v0[175];
    v15 = v0[174];
    v16 = v0[173];
    v17 = v0[170];
    v18 = v0[169];
    v19 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v20 = swift_allocError();
    v22 = v24;
    v23 = &enum case for DaemonError.dnuRequired(_:);
  }

  else
  {
LABEL_4:
    if (AccessCredential.isCompatibleWithCurrentOs.getter())
    {
      v6 = v0[173];
      v7 = v0[172];
      v8 = v0[170];
      v9 = v0[169];
      v10 = *(v8 + 16);
      v0[195] = v10;
      v0[196] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v7, v6, v9);
      v11 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
      v12 = swift_task_alloc();
      v0[197] = v12;
      *v12 = v0;
      v12[1] = sub_100044B48;
      v1 = v0 + 48;
      goto LABEL_9;
    }

    v13 = v0[176];
    v14 = v0[175];
    v15 = v0[174];
    v16 = v0[173];
    v17 = v0[170];
    v18 = v0[169];
    v19 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v20 = swift_allocError();
    v22 = v21;
    v23 = &enum case for DaemonError.incompatibleOs(_:);
  }

  (*(*(v19 - 8) + 104))(v22, *v23, v19);
  swift_willThrow();
  sub_100026FDC(v0 + 58);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v0[259] = v20;
  v11 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v25 = swift_task_alloc();
  v0[260] = v25;
  *v25 = v0;
  v25[1] = sub_100049418;
  v1 = v0 + 68;
LABEL_9:
  v2 = v11;
  v3 = v11;

  return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
}

uint64_t sub_100044B48()
{
  v2 = *v1;
  v2[198] = v0;

  if (v0)
  {
    v3 = v2[172];
    v4 = v2[170];
    v5 = v2[169];
    v6 = v2[127];
    v7 = *(v4 + 8);
    v2[266] = v7;
    v2[267] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    return _swift_task_switch(sub_10004A314, v6, 0);
  }

  else
  {
    v8 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
    v9 = swift_task_alloc();
    v2[199] = v9;
    *v9 = v2;
    v9[1] = sub_100044D1C;

    return BaseObjectGraph.injectIfAvailable<A>(_:)(v2 + 38, v8, v8);
  }
}

uint64_t sub_100044D1C()
{
  v2 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = v2[172];
    v4 = v2[170];
    v5 = v2[169];
    v6 = v2[127];
    v7 = *(v4 + 8);
    v2[268] = v7;
    v2[269] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    sub_100026FDC(v2 + 48);
    v8 = sub_10004A438;
    v9 = v6;
  }

  else
  {
    v9 = v2[127];
    v8 = sub_100044E70;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100044E70()
{
  type metadata accessor for DefaultConnectionDelegate();
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(NSCache) init];
  v3 = v0[175];
  v22 = v0[174];
  v23 = v0[176];
  v4 = v0[172];
  v5 = v0[127];
  v6 = v0[125];
  v21 = v0[124];
  *(v1 + 16) = v2;
  v7 = v0[51];
  v8 = sub_10004F464((v0 + 48), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = sub_10004E668(v4, *v10, (v0 + 38), v1);
  v0[201] = v11;

  sub_100026FDC(v0 + 48);

  v12 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
  v0[202] = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
  v13 = (v11 + v12);
  v14 = *v13;
  v15 = v13[1];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v5 + 192);
  *(v5 + 192) = 0x8000000000000000;
  sub_1000A1508(v11, v21, v6, v14, v15, isUniquelyReferenced_nonNull_native);

  *(v5 + 192) = v24;
  swift_endAccess();
  v0[16] = v22;
  v0[17] = sub_10004F508(&qword_10016B130, &type metadata accessor for ConnectionRequest, &protocol conformance descriptor for ConnectionRequest);
  v17 = sub_100042BAC(v0 + 13);
  (*(v3 + 16))(v17, v23, v22);
  v18 = swift_task_alloc();
  v0[203] = v18;
  *v18 = v0;
  v18[1] = sub_10004513C;
  v19 = v0[188];

  return sub_10004B7C8((v0 + 13), v11, v19);
}

uint64_t sub_10004513C()
{
  v2 = *v1;
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v3 = *(v2 + 1016);
    v4 = sub_10004A55C;
  }

  else
  {
    v5 = *(v2 + 1016);
    sub_100026FDC((v2 + 104));
    v4 = sub_100045264;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100045264()
{
  v9 = v0[195];
  v1 = v0[175];
  v10 = v0[174];
  v11 = v0[176];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[121];
  v8 = v0[173];
  v5[3] = sub_100026F94(&qword_10016B138, &qword_100130FA0);
  v5[4] = sub_10004F4B4(&qword_10016B140, &qword_10016B138, &qword_100130FA0);
  sub_100042BAC(v5);
  v9(v2, v8, v4);

  ConnectionDetails.init(connectionId:credential:)();
  swift_storeEnumTagMultiPayload();

  sub_100026FDC(v0 + 58);
  (*(v3 + 8))(v8, v4);
  (*(v1 + 8))(v11, v10);

  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100045574(uint64_t a1)
{
  v3 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {
    v4 = v3[127];
    v5 = sub_10004A690;
  }

  else
  {
    v6 = v3[127];
    sub_100026FDC(v3 + 88);
    v5 = sub_1000456A0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000456A0()
{
  v1 = v0[125];
  v2 = v0[124];
  v3 = (v0[206] + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v4 = *v3;
  v5 = v3[1];
  swift_beginAccess();

  v18 = v4;
  v6 = sub_10004E2B4(v2, v1, v4, v5);
  swift_endAccess();
  if (qword_10016A348 != -1)
  {
    swift_once();
  }

  sub_100026EEC(qword_10016AEE8, (v0 + 93));
  sub_100026F50(v0 + 93, v0[96]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013A5E0;
  v7._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  if (v6)
  {
    v8 = *(v6 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
    v0[101] = &type metadata for String;

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v0[101] = &type metadata for String;
  }

  v9 = 0xE90000000000003ELL;
  v8 = 0x6E776F6E6B6E753CLL;
LABEL_8:
  v0[208] = v6;
  v10 = v0[125];
  v11 = v0[124];
  v0[98] = v8;
  v0[99] = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 98), &qword_10016AB10, &unk_100130B10);
  v12._countAndFlagsBits = 0x656B20726F66202CLL;
  v12._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v0[105] = &type metadata for ClientSessionManagerImplementation.SessionKey;
  v13 = swift_allocObject();
  v0[102] = v13;
  v13[2] = v11;
  v13[3] = v10;
  v13[4] = v18;
  v13[5] = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 102), &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100026FDC(v0 + 93);
  v15 = swift_task_alloc();
  v0[209] = v15;
  *v15 = v0;
  v15[1] = sub_100045A0C;
  v16 = v0[188];

  return sub_10004CE0C(v16);
}

uint64_t sub_100045A0C()
{
  v1 = *(*v0 + 1016);

  return _swift_task_switch(sub_100045B1C, v1, 0);
}

uint64_t sub_100045B1C()
{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 968);
  *(v0 + 2160) = 1;
  *(v4 + 24) = sub_100026F94(&qword_10016B118, &qword_100130F88);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B120, &qword_10016B118, &qword_100130F88);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, *(v0 + 1496));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100045DDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[211] = a1;
  v3[212] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004A778, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 83);
    v6 = swift_task_alloc();
    v3[213] = v6;
    *v6 = v4;
    v6[1] = sub_100045F74;
    v7 = v3[188];
    v8 = v3[164];

    return sub_1000C8094(v8, v7);
  }
}

uint64_t sub_100045F74(uint64_t a1)
{
  v4 = *v2;
  v4[214] = v1;

  v5 = v4[127];

  if (v1)
  {
    v6 = sub_10004A860;
  }

  else
  {
    v4[215] = a1;
    v6 = sub_1000460CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000460CC()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  v4 = v0[121];
  v0[115] = v0[215];
  *(v4 + 24) = sub_100026F94(&qword_10016B0E8, &qword_100130F78);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B0F0, &qword_10016B0E8, &qword_100130F78);
  sub_100026F94(&qword_10016B0F8, &qword_100130F80);
  sub_10004F388(&qword_10016B100, &qword_10016B0C8, &protocol conformance descriptor for Row, &protocol conformance descriptor for <A> [A]);
  sub_10004F388(&qword_10016B108, &qword_10016B0D8, &protocol conformance descriptor for Row, &protocol conformance descriptor for <A> [A]);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000463FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[217] = a1;
  v3[218] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004A940, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 78);
    v6 = swift_task_alloc();
    v3[219] = v6;
    *v6 = v4;
    v6[1] = sub_100046594;
    v7 = v3[188];
    v8 = v3[161];
    v9 = v3[158];

    return sub_1000C8EC4(v9, v8, v7);
  }
}

uint64_t sub_100046594()
{
  v2 = *v1;
  *(*v1 + 1760) = v0;

  v3 = *(v2 + 1016);

  if (v0)
  {
    v4 = sub_10004AA28;
  }

  else
  {
    v4 = sub_1000466DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000466DC()
{
  v7 = v0[161];
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[121];
  sub_10002BA04(v3, v0[157], &qword_10016AD38, &qword_1001332F0);
  v4[3] = sub_100026F94(&qword_10016B0B0, &qword_100130F70);
  v4[4] = sub_10004F4B4(&qword_10016B0B8, &qword_10016B0B0, &qword_100130F70);
  sub_100042BAC(v4);
  sub_10004F2EC(&qword_10016B0C0, &qword_10016B0C8, &protocol conformance descriptor for Row, &protocol conformance descriptor for <A> A?);
  sub_10004F2EC(&qword_10016B0D0, &qword_10016B0D8, &protocol conformance descriptor for Row, &protocol conformance descriptor for <A> A?);
  DaemonResponse.init(_:)();

  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  (*(v1 + 8))(v7, v2);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100046A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004AB08, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 73);
    v6 = swift_task_alloc();
    v3[224] = v6;
    *v6 = v4;
    v6[1] = sub_100046BD4;
    v7 = v3[188];
    v8 = v3[155];
    v9 = v3[152];

    return sub_1000CA224(v9, v8, v7);
  }
}

uint64_t sub_100046BD4()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1016);

  if (v0)
  {
    v4 = sub_10004ABF0;
  }

  else
  {
    v4 = sub_100046D1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100046D1C()
{
  v1 = v0[154];
  v8 = v0[153];
  v9 = v0[155];
  v2 = v0[152];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[121];
  (*(v3 + 16))(v0[151], v2, v4);
  v5[3] = sub_100026F94(&qword_10016B088, &qword_100130F68);
  v5[4] = sub_10004F4B4(&qword_10016B090, &qword_10016B088, &qword_100130F68);
  sub_100042BAC(v5);
  sub_10004F508(&qword_10016B098, &type metadata accessor for AnyValue, &protocol conformance descriptor for AnyValue);
  sub_10004F508(&qword_10016B0A0, &type metadata accessor for AnyValue, &protocol conformance descriptor for AnyValue);
  DaemonResponse.init(_:)();

  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v9, v8);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100047064(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[227] = a1;
  v3[228] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004ACD0, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 63);
    v6 = swift_task_alloc();
    v3[229] = v6;
    *v6 = v4;
    v6[1] = sub_1000471FC;
    v7 = v3[188];
    v8 = v3[148];

    return sub_1000CB2EC(v8, v7);
  }
}

uint64_t sub_1000471FC(uint64_t a1)
{
  v4 = *v2;
  v4[230] = v1;

  v5 = v4[127];

  if (v1)
  {
    v6 = sub_10004ADB8;
  }

  else
  {
    v4[231] = a1;
    v6 = sub_100047354;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100047354()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[121];
  v0[120] = v0[231];
  *(v4 + 24) = sub_100026F94(&qword_10016B070, &qword_100130F60);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B078, &qword_10016B070, &qword_100130F60);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000475FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[233] = a1;
  v3[234] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004AE98, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 53);
    v6 = swift_task_alloc();
    v3[235] = v6;
    *v6 = v4;
    v6[1] = sub_100047794;
    v7 = v3[188];
    v8 = v3[145];

    return sub_1000D0910(v8, v7);
  }
}

uint64_t sub_100047794(uint64_t a1)
{
  v4 = *v2;
  v4[236] = v1;

  v5 = v4[127];

  if (v1)
  {
    v6 = sub_10004AF80;
  }

  else
  {
    v4[237] = a1;
    v6 = sub_1000478EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000478EC()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[121];
  v0[116] = v0[237];
  *(v4 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100047B94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[239] = a1;
  v3[240] = v1;

  if (v1)
  {
    v5 = v3[127];

    return _swift_task_switch(sub_10004B060, v5, 0);
  }

  else
  {
    sub_100026FDC(v3 + 43);
    v6 = swift_task_alloc();
    v3[241] = v6;
    *v6 = v4;
    v6[1] = sub_100047D2C;
    v7 = v3[188];
    v8 = v3[142];

    return sub_1000D4FBC(v8, v7);
  }
}

uint64_t sub_100047D2C(uint64_t a1)
{
  v4 = *v2;
  v4[242] = v1;

  v5 = v4[127];

  if (v1)
  {
    v6 = sub_10004B148;
  }

  else
  {
    v4[243] = a1;
    v6 = sub_100047E84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100047E84()
{
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[121];
  v0[117] = v0[243];
  *(v4 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004812C(uint64_t a1)
{
  v3 = *v2;
  v3[245] = a1;
  v3[246] = v1;

  if (v1)
  {
    v4 = v3[127];
    v5 = sub_10004B228;
  }

  else
  {
    v6 = v3[127];
    sub_100026FDC(v3 + 33);
    v5 = sub_100048258;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100048258()
{
  v1._countAndFlagsBits = DataDeletionTriggerRequest.triggerName.getter();
  v2 = AccessCredential.containsDataDeletionTrigger(_:)(v1);

  if (v2)
  {
    v3 = AccessCredential.requestId.getter();
    v5 = v4;
    type metadata accessor for AccessCredentialDataCleanupTask();
    v6 = swift_allocObject();
    v0[247] = v6;
    swift_defaultActor_initialize();
    *(v6 + 112) = v3;
    *(v6 + 120) = v5;
    v7 = swift_task_alloc();
    v0[248] = v7;
    *v7 = v0;
    v7[1] = sub_1000484F0;
    v8 = v0[188];

    return sub_100097AB4(v8, 1);
  }

  else
  {
    v10 = v0[139];
    v11 = v0[138];
    v12 = v0[137];
    v13 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v14 = swift_allocError();
    v16 = v15;
    *v15 = DataDeletionTriggerRequest.triggerName.getter();
    v16[1] = v17;
    (*(*(v13 - 8) + 104))(v16, enum case for DaemonError.noDataDeletionTrigger(_:), v13);
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    v0[259] = v14;
    v18 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v19 = swift_task_alloc();
    v0[260] = v19;
    *v19 = v0;
    v19[1] = sub_100049418;

    return BaseObjectGraph.inject<A>(_:)(v0 + 68, v18, v18);
  }
}

uint64_t sub_1000484F0(uint64_t a1)
{
  v4 = *v2;
  v4[249] = v1;

  v5 = v4[127];
  if (v1)
  {
    v6 = sub_10004B310;
  }

  else
  {
    v4[250] = a1;
    v6 = sub_10004862C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004862C()
{
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[121];
  v0[118] = v0[250];
  *(v4 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000488EC()
{
  v2 = *v1;
  *(*v1 + 2016) = v0;

  v3 = *(v2 + 1016);
  if (v0)
  {
    v4 = sub_10004B414;
  }

  else
  {
    v4 = sub_100048A18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100048A18()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  if (*(v0 + 208))
  {
    sub_10002C604((v0 + 184), v0 + 144);
    *(v0 + 248) = v3;
    *(v0 + 256) = sub_10004F508(&qword_10016B010, &type metadata accessor for StatusRequest, &protocol conformance descriptor for StatusRequest);
    v4 = sub_100042BAC((v0 + 224));
    (*(v2 + 16))(v4, v1, v3);
    v5 = swift_task_alloc();
    *(v0 + 2024) = v5;
    *v5 = v0;
    v5[1] = sub_100048CB4;
    v6 = *(v0 + 1504);
    v7 = *(v0 + 1000);
    v8 = *(v0 + 992);

    return sub_10004C954(v0 + 224, v8, v7, v6);
  }

  else
  {
    sub_10002BA6C(v0 + 184, &qword_10016AFF8, &unk_100130F10);
    v10 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, enum case for DaemonError.unavailableStatusProvider(_:), v10);
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
    *(v0 + 2072) = v11;
    v13 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v14 = swift_task_alloc();
    *(v0 + 2080) = v14;
    *v14 = v0;
    v14[1] = sub_100049418;

    return BaseObjectGraph.inject<A>(_:)(v0 + 544, v13, v13);
  }
}

uint64_t sub_100048CB4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = v4[127];

    v6 = sub_10004B4F4;
    v7 = v5;
  }

  else
  {
    v8 = v4[127];
    v4[254] = a1;
    sub_100026FDC(v4 + 28);
    v6 = sub_100048DFC;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100048DFC()
{
  v0[255] = v0[254];
  sub_100026F50(v0 + 18, v0[21]);
  v1 = swift_task_alloc();
  v0[256] = v1;
  *v1 = v0;
  v1[1] = sub_100048EC0;
  v2 = v0[188];
  v3 = v0[136];

  return sub_100093860(v3, v2);
}

uint64_t sub_100048EC0(uint64_t a1)
{
  v4 = *v2;
  v4[257] = v1;

  v5 = v4[127];
  if (v1)
  {
    v6 = sub_100049318;
  }

  else
  {
    v4[258] = a1;
    v6 = sub_100048FFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100048FFC()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[121];
  v0[119] = v0[258];
  *(v4 + 24) = sub_100026F94(&qword_10016B018, &qword_100130F48);
  *(v4 + 32) = sub_10004F4B4(&qword_10016B020, &qword_10016B018, &qword_100130F48);
  sub_100026F94(&qword_10016B028, &qword_100130F50);
  sub_10004F280(&qword_10016B030, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_10004F280(&qword_10016B038, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  DaemonResponse.init(_:)();

  (*(v2 + 8))(v1, v3);
  sub_100026FDC(v0 + 18);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100049318()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];

  (*(v2 + 8))(v1, v3);
  sub_100026FDC(v0 + 18);
  v0[259] = v0[257];
  v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v5 = swift_task_alloc();
  v0[260] = v5;
  *v5 = v0;
  v5[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v4, v4);
}

uint64_t sub_100049418()
{
  v2 = *v1;
  *(*v1 + 2088) = v0;

  v3 = *(v2 + 1016);
  if (v0)
  {
    v4 = sub_10004B5BC;
  }

  else
  {
    v4 = sub_100049544;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100049544()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  sub_100026F50(v0 + 68, v0[71]);
  swift_errorRetain();
  RichFailure.init(_:)();
  v4 = RichFailure.errorCode.getter();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[262] = v5;
  *v5 = v0;
  v5[1] = sub_100049640;

  return sub_100063610(v4);
}

uint64_t sub_100049640()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  v3 = *(v2 + 1016);
  if (v0)
  {
    v4 = sub_100049AA0;
  }

  else
  {
    v4 = sub_10004976C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004976C()
{
  v0[114] = v0[259];
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    swift_willThrow();

    sub_100026FDC(v0 + 68);
    sub_10004EB5C("handleRequest", 13, 2, v0[187]);

    v1 = v0[1];

    return v1();
  }

  if (v0[113])
  {

    goto LABEL_4;
  }

  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];
  sub_100026F50(v0 + 68, v0[71]);
  ClientMessage.accessType.getter();
  v6 = RequestAccessType.isRead.getter();
  (*(v4 + 8))(v3, v5);
  v7 = swift_task_alloc();
  v0[264] = v7;
  *v7 = v0;
  v7[1] = sub_100049CB4;
  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  return sub_100061DD0(v8);
}

uint64_t sub_100049AA0()
{

  sub_100026FDC(v0 + 68);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100049CB4()
{
  v2 = *v1;
  *(*v1 + 2120) = v0;

  v3 = *(v2 + 1016);
  if (v0)
  {
    v4 = sub_100049FF4;
  }

  else
  {
    v4 = sub_100049DE0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100049DE0(uint64_t a1)
{
  swift_willThrow();

  sub_100026FDC(v1 + 68);
  sub_10004EB5C("handleRequest", 13, 2, v1[187]);

  v2 = v1[1];

  return v2();
}

uint64_t sub_100049FF4()
{

  sub_100026FDC(v0 + 68);
  sub_10004EB5C("handleRequest", 13, 2, v0[187]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004A208()
{
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[174];
  (*(v0[170] + 8))(v0[173], v0[169]);
  (*(v2 + 8))(v1, v3);
  v0[259] = v0[194];
  v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v5 = swift_task_alloc();
  v0[260] = v5;
  *v5 = v0;
  v5[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v4, v4);
}

uint64_t sub_10004A314()
{
  v1 = v0[266];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[169];
  sub_100026FDC(v0 + 58);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v0[259] = v0[198];
  v7 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v8 = swift_task_alloc();
  v0[260] = v8;
  *v8 = v0;
  v8[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v7, v7);
}

uint64_t sub_10004A438()
{
  v1 = v0[268];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[169];
  sub_100026FDC(v0 + 58);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v0[259] = v0[200];
  v7 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v8 = swift_task_alloc();
  v0[260] = v8;
  *v8 = v0;
  v8[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v7, v7);
}

uint64_t sub_10004A55C()
{
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[174];
  v4 = v0[173];
  v5 = v0[170];
  v6 = v0[169];

  sub_100026FDC(v0 + 58);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100026FDC(v0 + 13);
  v0[259] = v0[204];
  v7 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v8 = swift_task_alloc();
  v0[260] = v8;
  *v8 = v0;
  v8[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v7, v7);
}

uint64_t sub_10004A690()
{
  (*(v0[167] + 8))(v0[168], v0[166]);
  sub_100026FDC(v0 + 88);
  v0[259] = v0[207];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A778()
{
  (*(v0[163] + 8))(v0[164], v0[162]);
  sub_100026FDC(v0 + 83);
  v0[259] = v0[212];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A860()
{
  (*(v0[163] + 8))(v0[164], v0[162]);
  v0[259] = v0[214];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A940()
{
  (*(v0[160] + 8))(v0[161], v0[159]);
  sub_100026FDC(v0 + 78);
  v0[259] = v0[218];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AA28()
{
  (*(v0[160] + 8))(v0[161], v0[159]);
  v0[259] = v0[220];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AB08()
{
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_100026FDC(v0 + 73);
  v0[259] = v0[223];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ABF0()
{
  (*(v0[154] + 8))(v0[155], v0[153]);
  v0[259] = v0[225];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ACD0()
{
  (*(v0[147] + 8))(v0[148], v0[146]);
  sub_100026FDC(v0 + 63);
  v0[259] = v0[228];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ADB8()
{
  (*(v0[147] + 8))(v0[148], v0[146]);
  v0[259] = v0[230];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AE98()
{
  (*(v0[144] + 8))(v0[145], v0[143]);
  sub_100026FDC(v0 + 53);
  v0[259] = v0[234];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AF80()
{
  (*(v0[144] + 8))(v0[145], v0[143]);
  v0[259] = v0[236];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B060()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  sub_100026FDC(v0 + 43);
  v0[259] = v0[240];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B148()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  v0[259] = v0[242];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B228()
{
  (*(v0[138] + 8))(v0[139], v0[137]);
  sub_100026FDC(v0 + 33);
  v0[259] = v0[246];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B310()
{
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[137];

  (*(v2 + 8))(v1, v3);
  v0[259] = v0[249];
  v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v5 = swift_task_alloc();
  v0[260] = v5;
  *v5 = v0;
  v5[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v4, v4);
}

uint64_t sub_10004B414()
{
  (*(v0[135] + 8))(v0[136], v0[134]);
  v0[259] = v0[252];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[260] = v2;
  *v2 = v0;
  v2[1] = sub_100049418;

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B4F4()
{
  sub_100026FDC(v0 + 28);
  v0[255] = 0;
  sub_100026F50(v0 + 18, v0[21]);
  v1 = swift_task_alloc();
  v0[256] = v1;
  *v1 = v0;
  v1[1] = sub_100048EC0;
  v2 = v0[188];
  v3 = v0[136];

  return sub_100093860(v3, v2);
}

uint64_t sub_10004B5BC()
{

  sub_10004EB5C("handleRequest", 13, 2, *(v0 + 1496));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004B7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for RequestAccessType();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_100026F94(&qword_10016B150, &qword_100130FA8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for RateLimit();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10004B988, v3, 0);
}

uint64_t sub_10004B988()
{
  v23 = v0;
  v1 = v0[12];
  v2 = v1[3];
  sub_100026F50(v1, v2);
  if ((sub_1000833B8(v2) & 1) == 0)
  {
LABEL_4:

    v6 = v0[1];

    return v6();
  }

  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v0[27] = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  AccessCredential.rateLimit.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10002BA6C(v0[23], &qword_10016B150, &qword_100130FA8);
    goto LABEL_4;
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  sub_10002FD14(v8, qword_10016AF10);

  static OSSignpostID.exclusive.getter();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = AccessCredential.requestId.getter();
    v15 = sub_10006CB64(v13, v14, &v22);

    *(v11 + 4) = v15;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v16, "performRateLimitingCheck", "requestId=%s", v11, 0xCu);
    sub_100026FDC(v12);
  }

  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[20];
  (*(v19 + 16))(v0[21], v17, v18);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[28] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v17, v18);
  v20 = sub_100026F94(&qword_10016B158, &unk_100130FB0);
  v21 = swift_task_alloc();
  v0[29] = v21;
  *v21 = v0;
  v21[1] = sub_10004BD30;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v20, v20);
}

uint64_t sub_10004BD30()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10004C798;
  }

  else
  {
    v4 = sub_10004BE5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004BE5C()
{
  sub_100026F50(v0 + 2, v0[5]);
  v1 = AccessCredential.requestId.getter();
  v3 = v2;
  v0[31] = v2;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_10004BF2C;
  v5 = v0[26];

  return sub_100078788(v1, v3, v5);
}

uint64_t sub_10004BF2C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 120);

  if (v0)
  {
    v4 = sub_10004C158;
  }

  else
  {
    v4 = sub_10004C074;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004C074()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  sub_100026FDC(v0 + 2);
  sub_10004EB5C("performRateLimitingCheck", 24, 2, v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004C158()
{
  sub_100026FDC(v0 + 2);
  v0[34] = v0[33];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10004C224;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10004C224()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10004C85C;
  }

  else
  {
    v4 = sub_10004C350;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004C350()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  sub_100026F50(v0 + 7, v0[10]);
  sub_100026F50(v4, v4[3]);
  dispatch thunk of RequestType.accessType.getter();
  v5 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_10004C46C;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  return sub_100061DD0(v7);
}

uint64_t sub_10004C46C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10004C698;
  }

  else
  {
    v4 = sub_10004C598;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004C598(uint64_t a1)
{
  swift_willThrow();
  sub_100026FDC(v1 + 7);
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[24];
  sub_10004EB5C("performRateLimitingCheck", 24, 2, v1[28]);

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_10004C698()
{

  sub_100026FDC(v0 + 7);
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_10004EB5C("performRateLimitingCheck", 24, 2, v0[28]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C798()
{
  v0[34] = v0[30];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10004C224;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10004C85C()
{

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_10004EB5C("performRateLimitingCheck", 24, 2, v0[28]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return _swift_task_switch(sub_10004C97C, v4, 0);
}

uint64_t sub_10004C97C()
{
  v1 = v0[14];
  v2 = v0[10];
  sub_100026F50(v2, v2[3]);

  v3 = dispatch thunk of SessionRequest.connectionId.getter();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 192);
  if (*(v6 + 16) && (v7 = sub_10009E660(v0[11], v0[12], v3, v5), (v8 & 1) != 0))
  {
    v9 = v0[10];
    v10 = *(*(v6 + 56) + 8 * v7);
    v0[15] = v10;
    swift_endAccess();

    v11 = v2[3];
    v12 = v2[4];
    v13 = sub_100026F50(v9, v11);
    v0[5] = v11;
    v0[6] = *(v12 + 8);
    v14 = sub_100042BAC(v0 + 2);
    (*(*(v11 - 8) + 16))(v14, v13, v11);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_10004CC60;
    v16 = v0[13];

    return sub_10004B7C8((v0 + 2), v10, v16);
  }

  else
  {
    v19 = v0[11];
    v18 = v0[12];
    swift_endAccess();

    v20 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v22 = v21;
    *v21 = dispatch thunk of SessionRequest.connectionId.getter();
    v22[1] = v23;
    v22[2] = v19;
    v22[3] = v18;
    (*(*(v20 - 8) + 104))(v22, enum case for DaemonError.noSession(_:), v20);
    swift_willThrow();
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10004CC60()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[14];

    return _swift_task_switch(sub_10004CDA0, v3, 0);
  }

  else
  {
    sub_100026FDC(v2 + 2);
    v4 = v2[1];
    v5 = v2[15];

    return v4(v5);
  }
}

uint64_t sub_10004CDA0()
{

  sub_100026FDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004CE0C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10004CE9C, v1, 0);
}

uint64_t sub_10004CE9C()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  if (*(*(v1 + 192) + 16))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_10016A348 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016AEE8, qword_10016AF00);
    *(v0 + 248) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v4 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 256) = *(v4 + 72);
    *(v0 + 312) = *(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    v5 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_10004D0EC;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v5, v5);
  }
}

uint64_t sub_10004D0EC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_10004D818;
  }

  else
  {
    v4 = sub_10004D218;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004D218()
{
  v1 = sub_100026F50(v0 + 2, v0[5]);
  v2 = *v1;
  v0[35] = *v1;

  return _swift_task_switch(sub_10004D288, v2, 0);
}

uint64_t sub_10004D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 280) + 216) <= 0)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016B350, qword_10016B368);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_1000522FC(0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
    type metadata accessor for Connection();
    static Connection.releaseMemory()();
  }

  v4 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
  v5 = swift_task_alloc();
  *(v3 + 288) = v5;
  *v5 = v3;
  v5[1] = sub_10004D45C;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v3 + 96, v4, v4);
}

uint64_t sub_10004D45C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_10004D9C0;
  }

  else
  {
    v4 = sub_10004D588;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004D588()
{
  if (*(v0 + 120))
  {
    sub_10002C604((v0 + 96), v0 + 56);
    sub_100026F50((v0 + 56), *(v0 + 80));
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_10004D698;
    v2 = *(v0 + 224);

    return sub_10008D458(v2);
  }

  else
  {
    sub_10002BA6C(v0 + 96, &qword_10016AFF8, &unk_100130F10);
    sub_100026FDC((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10004D698()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10004D7A8, v1, 0);
}

uint64_t sub_10004D7A8()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004D818()
{
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013A580;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[24];
  v3 = v0[25];
  v0[20] = v3;
  v4 = sub_100042BAC(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 17), &qword_10016AB10, &unk_100130B10);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004D9C0()
{
  sub_100026FDC(v0 + 2);
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x800000010013A580;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[24];
  v3 = v0[25];
  v0[20] = v3;
  v4 = sub_100042BAC(v0 + 17);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 17), &qword_10016AB10, &unk_100130B10);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10004DC04, v3, 0);
}

uint64_t sub_10004DC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10016A348 != -1)
  {
    swift_once();
  }

  v5 = v3[20];
  v7 = v3[17];
  v6 = v3[18];
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x800000010013A4E0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v3[5] = &type metadata for String;
  v3[2] = v7;
  v3[3] = v6;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 2), &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  swift_beginAccess();
  v10 = *(*(v5 + 192) + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = v6;

  v14 = sub_10004EFD8(v13, sub_10004E278);

  *(v5 + 192) = v14;

  v15 = *(*(v5 + 192) + 16);
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x206465766F6D6552;
  v16._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v4[9] = &type metadata for Int;
  v4[6] = v10 - v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v4 + 6), &qword_10016AB10, &unk_100130B10);
  v17._object = 0x800000010013A510;
  v17._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v4[13] = &type metadata for String;
  v4[10] = v7;
  v4[11] = v12;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v4 + 10), &qword_10016AB10, &unk_100130B10);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v19 = swift_task_alloc();
  v4[22] = v19;
  *v19 = v4;
  v19[1] = sub_10004E000;
  v20 = v4[19];

  return sub_10004CE0C(v20);
}

uint64_t sub_10004E000()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004E110()
{
  sub_100026FDC((v0 + 112));
  sub_100026FDC((v0 + 152));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10004E17C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004E188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10004E1D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10004E224()
{
  result = qword_10016AFE0;
  if (!qword_10016AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFE0);
  }

  return result;
}

uint64_t sub_10004E278(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10004E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_10009E660(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000A2A9C();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_1000A0B84(v8, v10);
  *v5 = v10;
  return v11;
}

unint64_t *sub_10004E358(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004EE38(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_10004E3E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100026F94(&qword_10016B000, &qword_100131BC0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v34 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 32 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(*(v4 + 56) + 8 * v15);
    v22 = v8;
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v8 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v22 + 48) + 32 * v26);
    *v31 = v18;
    v31[1] = v17;
    v31[2] = v19;
    v31[3] = v20;
    *(*(v22 + 56) + 8 * v26) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v9 = v35;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v46[3] = v11;
  v46[4] = &off_100164E98;
  v46[0] = a2;
  type metadata accessor for ClientSession(0);
  v12 = swift_allocObject();
  v13 = sub_10004F464(v46, v11);
  __chkstk_darwin(v13);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v45[3] = v11;
  v45[4] = &off_100164E98;
  v45[0] = v17;
  swift_defaultActor_initialize();
  v42 = AccessCredential.requestId.getter();
  v43 = v18;
  v19._countAndFlagsBits = 40;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v8 + 8))(v10, v7);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = v43;
  v26 = (v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  *v26 = v42;
  v26[1] = v25;
  v27 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v28 = type metadata accessor for AccessCredential();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v40 = a1;
  v30(v12 + v27, a1, v28);
  sub_100026EEC(v45, v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager);
  sub_10002BA04(v41, v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, &qword_10016AFF8, &unk_100130F10);
  v31 = (v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  *v31 = v39;
  v31[1] = &off_100164C80;
  v32 = qword_10016A678;
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x800000010013A620;
  v33._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  v35 = *(v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v34 = *(v12 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
  v44 = &type metadata for String;
  v42 = v35;
  v43 = v34;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v42, &qword_10016AB10, &unk_100130B10);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_10002BA6C(v41, &qword_10016AFF8, &unk_100130F10);
  (*(v29 + 8))(v40, v28);
  sub_100026FDC(v45);
  sub_100026FDC(v46);
  return v12;
}

uint64_t sub_10004EB5C(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016AF10);
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

unint64_t *sub_10004EE38(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = 0;
  v23 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 32 * v13);
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v13;
    v20 = *(*(a3 + 56) + 8 * v13);

    LOBYTE(v18) = a4(v15, v16, v18, v17, v20);

    v8 = v27;
    if (v18)
    {
      *(v23 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_10004E3E8(v23, a2, v24, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10004E3E8(v23, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10004EFD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10004EE38(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10004E358(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_10004F158(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10004F164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F1C8(uint64_t a1)
{
  v2 = type metadata accessor for ClientMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016B028, &qword_100130F50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F2EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016AD38, &qword_1001332F0);
    sub_10004F508(a2, &type metadata accessor for Row, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F388(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016B0F8, &qword_100130F80);
    sub_10004F508(a2, &type metadata accessor for Row, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F424()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F464(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10004F4B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F550()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B160);
  sub_10002FD14(v0, qword_10016B160);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F5D4()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B178);
  sub_10002FD14(v0, qword_10016B178);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F64C()
{
  v0 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FDA4(v0, qword_10016B190);
  sub_10002FD14(v0, qword_10016B190);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F6D0()
{
  v0 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FDA4(v0, qword_10016B1A8);
  sub_10002FD14(v0, qword_10016B1A8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F748()
{
  v0 = sub_100026F94(&qword_10016B340, &qword_100131048);
  sub_10002FDA4(v0, qword_10016B1C0);
  sub_10002FD14(v0, qword_10016B1C0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F7C0()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B1D8);
  sub_10002FD14(v0, qword_10016B1D8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F844()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B1F0);
  sub_10002FD14(v0, qword_10016B1F0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F8C8()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B208);
  sub_10002FD14(v0, qword_10016B208);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F940()
{
  v0 = sub_100026F94(&qword_10016B338, &qword_100131040);
  sub_10002FDA4(v0, qword_10016B220);
  sub_10002FD14(v0, qword_10016B220);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F9B8()
{
  v0 = sub_100026F94(&qword_10016B338, &qword_100131040);
  sub_10002FDA4(v0, qword_10016B238);
  sub_10002FD14(v0, qword_10016B238);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FA30()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B250);
  sub_10002FD14(v0, qword_10016B250);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FAA8()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B268);
  sub_10002FD14(v0, qword_10016B268);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FB20()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004FBC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (static Utils.isInternalBuild.getter())
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v7 = sub_100026F94(&qword_10016B328, &qword_100131030);
    sub_10002FD14(v7, a4);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v8 = (v10 == 2) | v10;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_10004FC8C(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 0x20000000;
  }

  if (qword_10016A368 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FD14(v1, qword_10016B190);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 0x20000000;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004FD58(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 0x80000000;
  }

  if (qword_10016A370 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FD14(v1, qword_10016B1A8);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 0x80000000;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004FE24(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 3145728;
  }

  if (qword_10016A378 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B340, &qword_100131048);
  sub_10002FD14(v1, qword_10016B1C0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 3145728;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004FEF0(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 4096;
  }

  if (qword_10016A380 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v1, qword_10016B1D8);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 4096;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004FFBC(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 256;
  }

  if (qword_10016A388 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v1, qword_10016B1F0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 256;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100050088(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 5;
  }

  if (qword_10016A390 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v1, qword_10016B208);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100050154(uint64_t a1)
{
  v1 = 0x4C414D524F4ELL;
  if (static Utils.isInternalBuild.getter())
  {
    if (qword_10016A398 != -1)
    {
      swift_once();
    }

    v2 = sub_100026F94(&qword_10016B338, &qword_100131040);
    sub_10002FD14(v2, qword_10016B220);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    if (v5)
    {
      return v4;
    }
  }

  return v1;
}

uint64_t sub_100050238(uint64_t a1)
{
  v1 = 4997463;
  if (static Utils.isInternalBuild.getter())
  {
    if (qword_10016A3A0 != -1)
    {
      swift_once();
    }

    v2 = sub_100026F94(&qword_10016B338, &qword_100131040);
    sub_10002FD14(v2, qword_10016B238);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    if (v5)
    {
      return v4;
    }
  }

  return v1;
}

uint64_t sub_100050318(uint64_t a1)
{
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 500;
  }

  if (qword_10016A3A8 != -1)
  {
    swift_once();
  }

  v1 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v1, qword_10016B250);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v4)
  {
    return 500;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000503E4(uint64_t a1)
{
  if (static Utils.isInternalBuild.getter())
  {
    if (qword_10016A3B0 != -1)
    {
      swift_once();
    }

    v1 = sub_100026F94(&qword_10016B328, &qword_100131030);
    sub_10002FD14(v1, qword_10016B268);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000504A4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1000A0ED0(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100054A78(a2);
    *v2 = v15;
  }

  else
  {
    v8 = sub_10009E5F4(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1000A2384();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
      sub_100054A78(v13 + *(*(v14 - 8) + 72) * v10);

      sub_1000A0858(v10, v12);
      result = sub_100054A78(a2);
      *v3 = v12;
    }

    else
    {

      return sub_100054A78(a2);
    }
  }

  return result;
}

uint64_t sub_1000505D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A640 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737D0, qword_10016B350);
}

uint64_t sub_100050634()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B378);
  v1 = sub_10002FD14(v0, qword_10016B378);
  if (qword_10016A540 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000506FC()
{
  _StringGuts.grow(_:)(16);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x61642D6E69616D2ELL;
  v3._object = 0xEE00657361626174;
  String.append(_:)(v3);
  qword_10016B390 = v0;
  *algn_10016B398 = v2;
}

void sub_100050790(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v35 = a6;
  v10 = type metadata accessor for URL.DirectoryHint();
  v40 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = *(*a1 + 16);
  NSFileManager.protectedGroupContainerUrl.getter();
  if (v6)
  {

    return;
  }

  if (!a3)
  {
    (*(v38 + 16))(v16, v18, v39);
    v28 = *(v40 + 104);

    goto LABEL_7;
  }

  v41 = sub_1000893C4(a2, a3);
  v42 = v20;
  v34 = *(v40 + 104);
  v34(v12, enum case for URL.DirectoryHint.isDirectory(_:), v10);
  sub_10002C5B0();
  URL.append<A>(path:directoryHint:)();
  (*(v40 + 8))(v12, v10);

  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v41 = 0;
  v24 = [v19 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v41];

  if (v24)
  {
    v33 = *(v38 + 16);
    v25 = v41;
    v33(v16, v18, v39);
    v37 = sub_1000893C4(v37, v36);
    v27 = v26;
    v28 = v34;
LABEL_7:
    v41 = v37;
    v42 = v27;
    v28(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
    sub_10002C5B0();
    URL.appending<A>(path:directoryHint:)();

    (*(v40 + 8))(v12, v10);

    v29 = v39;
    v30 = *(v38 + 8);
    v30(v16, v39);
    v30(v18, v29);
    return;
  }

  v31 = v41;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v38 + 8))(v18, v39);
}

void sub_100050B78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void *sub_100050B84()
{
  v43 = sub_100026F94(&qword_10016B598, &qword_1001311F0);
  v1 = __chkstk_darwin(v43);
  v42 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v41 = &v36 - v3;
  swift_beginAccess();
  v4 = *(v0 + 232);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;

    sub_10007EA2C(0, v5, 0);
    v6 = v45;
    v7 = v4 + 64;
    v8 = _HashTable.startBucket.getter();
    v9 = 0;
    v10 = *(v4 + 36);
    v37 = v4 + 72;
    v38 = v5;
    v39 = v10;
    v40 = v4 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (v10 != *(v4 + 36))
      {
        goto LABEL_27;
      }

      v44 = v9;
      v13 = *(v4 + 48);
      v14 = v13 + *(*(type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0) - 8) + 72) * v8;
      v15 = v41;
      sub_100054A14(v14, v41);
      v16 = *(*(v4 + 56) + 8 * v8);
      v17 = v15;
      v18 = v42;
      sub_100057720(v17, v42);
      *(v18 + *(v43 + 48)) = v16;

      v19 = sub_1000533F4();
      v21 = v20;

      sub_10002BA6C(v18, &qword_10016B598, &qword_1001311F0);
      v45 = v6;
      v23 = v6[2];
      v22 = v6[3];
      v24 = v6;
      if (v23 >= v22 >> 1)
      {
        sub_10007EA2C((v22 > 1), v23 + 1, 1);
        v24 = v45;
      }

      v24[2] = v23 + 1;
      v25 = &v24[3 * v23];
      v25[4] = v19;
      v25[5] = v21;
      v25[6] = v16;
      v11 = 1 << *(v4 + 32);
      if (v8 >= v11)
      {
        goto LABEL_28;
      }

      v7 = v40;
      v26 = *(v40 + 8 * v12);
      if ((v26 & (1 << v8)) == 0)
      {
        goto LABEL_29;
      }

      v6 = v24;
      LODWORD(v10) = v39;
      if (v39 != *(v4 + 36))
      {
        goto LABEL_30;
      }

      v27 = v26 & (-2 << (v8 & 0x3F));
      if (v27)
      {
        v11 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (v37 + 8 * v12);
        while (v29 < (v11 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1000579A0(v8, v39, 0);
            v11 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_1000579A0(v8, v39, 0);
      }

LABEL_4:
      v9 = v44 + 1;
      v8 = v11;
      if (v44 + 1 == v38)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v6[2])
    {
      sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
      v33 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v33 = &_swiftEmptyDictionarySingleton;
    }

    v45 = v33;

    sub_100056DE0(v34, 1, &v45);

    return v45;
  }

  return result;
}

uint64_t sub_100050F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v4[35] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[40] = v6;
  v7 = *(v6 - 8);
  v4[41] = v7;
  v4[42] = *(v7 + 64);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000510D0, v3, 0);
}

uint64_t sub_1000510D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = v3;
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 352);
  v5 = *(v3 + 248);
  v6 = type metadata accessor for OSSignposter();
  sub_10002FD14(v6, qword_10016B378);
  sub_100054A14(v5, v4);
  static OSSignpostID.exclusive.getter();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  v9 = OS_os_log.signpostsEnabled.getter();
  v10 = *(v3 + 352);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v82 = v12;
    *v11 = 136315138;
    v13 = sub_1000533F4();
    v15 = v14;
    sub_100054A78(v10);
    v16 = sub_10006CB64(v13, v15, &v82);

    *(v11 + 4) = v16;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v17, "connection(for:)", "key=%s", v11, 0xCu);
    sub_100026FDC(v12);
  }

  else
  {

    sub_100054A78(v10);
  }

  v18 = *(v3 + 312);
  v19 = *(v3 + 288);
  v20 = *(v3 + 296);
  v21 = *(v3 + 272);
  (*(v20 + 16))(*(v3 + 304), v18, v19);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 360) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v20 + 8))(v18, v19);
  swift_beginAccess();
  v22 = *(v21 + 232);
  if (!*(v22 + 16) || (v23 = sub_10009E5F4(*(v3 + 248)), (v24 & 1) == 0))
  {
    v43 = *(v3 + 272);
    swift_endAccess();
    swift_beginAccess();
    v44 = *(v43 + 224);
    if (*(v44 + 16) && (v45 = sub_10009E5F4(*(v3 + 248)), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      *(v3 + 368) = v47;
      swift_endAccess();

      v48 = swift_task_alloc();
      *(v3 + 376) = v48;
      v49 = type metadata accessor for Connection();
      v32 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v48 = v3;
      v48[1] = sub_1000519C8;
      v33 = &protocol self-conformance witness table for Error;
      v37 = v3 + 240;
      v30 = v47;
      v31 = v49;
    }

    else
    {
      v50 = *(v3 + 320);
      v51 = *(v3 + 248);
      swift_endAccess();
      v52 = *(v50 + 20);
      v53 = StorageCategory.fileProtectionType.getter();
      *(v3 + 392) = v53;
      if (!v53)
      {
        v72 = type metadata accessor for DaemonError();
        sub_100057958(&qword_10016AB40, 255, &type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v74 = v73;
        v75 = type metadata accessor for StorageCategory();
        (*(*(v75 - 8) + 16))(v74, v51 + v52, v75);
        (*(*(v72 - 8) + 104))(v74, enum case for DaemonError.unsupportedStorageCategory(_:), v72);
        swift_willThrow();
        sub_100057328("connection(for:)", 16, 2, *(v3 + 360));

        v76 = *(v3 + 8);

        return v76();
      }

      v54 = v53;
      v56 = *(v3 + 336);
      v55 = *(v3 + 344);
      v57 = *(v3 + 328);
      v59 = *(v3 + 272);
      v58 = *(v3 + 280);
      v60 = *(v3 + 248);
      v81 = v60;
      v61 = type metadata accessor for TaskPriority();
      (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
      sub_100054A14(v60, v55);
      v63 = sub_100057958(&qword_10016B558, v62, type metadata accessor for DatabaseConnectionManagerImplementation, &unk_100131180);
      v64 = (*(v57 + 80) + 40) & ~*(v57 + 80);
      v65 = (v56 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v66[2] = v59;
      v66[3] = v63;
      v66[4] = v59;
      sub_100057720(v55, v66 + v64);
      *(v66 + v65) = v54;
      swift_retain_n();
      v67 = v54;
      v68 = sub_100053FBC(0, 0, v58, &unk_1001311C0, v66, &type metadata accessor for Connection);
      *(v3 + 400) = v68;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v43 + 224);
      *(v43 + 224) = 0x8000000000000000;
      sub_1000A0ED0(v68, v81, isUniquelyReferenced_nonNull_native);
      *(v43 + 224) = v82;
      swift_endAccess();
      v70 = swift_task_alloc();
      *(v3 + 408) = v70;
      v71 = type metadata accessor for Connection();
      v32 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v70 = v3;
      v70[1] = sub_100051D14;
      v33 = &protocol self-conformance witness table for Error;
      v37 = v3 + 232;
      v30 = v68;
      v31 = v71;
    }

    return Task.value.getter(v37, v30, v31, v32, v33);
  }

  v25 = *(v3 + 272);
  v26 = *(v3 + 248);
  v27 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  swift_beginAccess();

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(v25 + 240);
  v29 = v82;
  *(v25 + 240) = 0x8000000000000000;
  v34 = sub_10009E5F4(v26);
  v35 = v29[2];
  v36 = (v30 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    return Task.value.getter(v37, v30, v31, v32, v33);
  }

  v38 = v30;
  if (v29[3] >= v37)
  {
    if ((v28 & 1) == 0)
    {
      sub_1000A216C();
      v29 = v82;
    }
  }

  else
  {
    v39 = *(v3 + 248);
    sub_10009EB50(v37, v28);
    v29 = v82;
    v40 = sub_10009E5F4(v39);
    if ((v38 & 1) != (v41 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v34 = v40;
  }

  *(v25 + 240) = v29;
  if ((v38 & 1) == 0)
  {
    v77 = *(v3 + 344);
    sub_100054A14(*(v3 + 248), v77);
    sub_1000A1844(v34, v77, &_swiftEmptySetSingleton, v29);
  }

  v79 = *(v3 + 256);
  v78 = *(v3 + 264);

  sub_100054BF0(&v82, v79, v78);
  swift_endAccess();

  sub_100057328("connection(for:)", 16, 2, *(v3 + 360));

  v80 = *(v3 + 8);

  return v80(v27);
}

uint64_t sub_1000519C8()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_10005210C;
  }

  else
  {
    v4 = sub_100051AF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100051AF4()
{
  v20 = v0;
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v1 + 240);
  v5 = v19;
  *(v1 + 240) = 0x8000000000000000;
  v7 = sub_10009E5F4(v3);
  v8 = v5[2];
  v9 = (v6 & 1) == 0;
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    return result;
  }

  v11 = v6;
  if (v5[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000A216C();
      v5 = v19;
    }
  }

  else
  {
    v12 = v0[31];
    sub_10009EB50(result, isUniquelyReferenced_nonNull_native);
    v5 = v19;
    v13 = sub_10009E5F4(v12);
    if ((v11 & 1) != (v14 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v7 = v13;
  }

  *(v1 + 240) = v5;
  if ((v11 & 1) == 0)
  {
    v15 = v0[43];
    sub_100054A14(v0[31], v15);
    sub_1000A1844(v7, v15, &_swiftEmptySetSingleton, v5);
  }

  v17 = v0[32];
  v16 = v0[33];

  sub_100054BF0(&v19, v17, v16);
  swift_endAccess();

  sub_100057328("connection(for:)", 16, 2, v0[45]);

  v18 = v0[1];

  return v18(v2);
}

uint64_t sub_100051D14()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_1000521E0;
  }

  else
  {
    v4 = sub_100051E40;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100051E40()
{
  v24 = v0;
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[29];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 232);
  *(v1 + 232) = 0x8000000000000000;
  sub_1000A1060(v3, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 232) = v23;
  swift_endAccess();
  swift_beginAccess();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 240);
  v6 = v23;
  *(v1 + 240) = 0x8000000000000000;
  v8 = sub_10009E5F4(v2);
  v9 = v6[2];
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    return result;
  }

  v12 = v7;
  if (v6[3] >= result)
  {
    if ((v5 & 1) == 0)
    {
      sub_1000A216C();
      v6 = v23;
    }
  }

  else
  {
    v13 = v0[31];
    sub_10009EB50(result, v5);
    v6 = v23;
    v14 = sub_10009E5F4(v13);
    if ((v12 & 1) != (v15 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v8 = v14;
  }

  *(v1 + 240) = v6;
  if ((v12 & 1) == 0)
  {
    v16 = v0[43];
    sub_100054A14(v0[31], v16);
    sub_1000A1844(v8, v16, &_swiftEmptySetSingleton, v6);
  }

  v17 = v0[49];
  v18 = v0[43];
  v19 = v0[33];
  v21 = v0[31];
  v20 = v0[32];

  sub_100054BF0(&v23, v20, v19);
  swift_endAccess();

  sub_100054A14(v21, v18);
  swift_beginAccess();
  sub_1000504A4(0, v18);
  swift_endAccess();

  sub_100057328("connection(for:)", 16, 2, v0[45]);

  v22 = v0[1];

  return v22(v3);
}

uint64_t sub_10005210C()
{

  sub_100057328("connection(for:)", 16, 2, *(v0 + 360));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000521E0()
{
  v1 = v0[49];
  v2 = v0[43];
  sub_100054A14(v0[31], v2);
  swift_beginAccess();
  sub_1000504A4(0, v2);
  swift_endAccess();

  sub_100057328("connection(for:)", 16, 2, v0[45]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000522FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v7 = *(v44 - 8);
  v8 = __chkstk_darwin(v44);
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  swift_beginAccess();
  v13 = *(v2 + 240);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = " for namespace: ";
  v49 = v13;

  v20 = 0;
  v42 = xmmword_10012FA10;
  v48 = v12;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_100054A14(*(v49 + 48) + *(v7 + 72) * (v22 | (v20 << 6)), v12);
    sub_100057720(v12, v10);
    swift_beginAccess();
    v23 = *(v3 + 240);
    if (*(v23 + 16) && (v24 = sub_10009E5F4(v10), (v25 & 1) != 0))
    {
      v53 = *(*(v23 + 56) + 8 * v24);
      v26 = v53;
      swift_endAccess();
      if (*(v26 + 16))
      {
        v46 = v7;
        v47 = v3;
        Hasher.init(_seed:)();
        swift_bridgeObjectRetain_n();
        v27 = v50;
        String.hash(into:)();
        v28 = Hasher._finalize()();
        v29 = v27;
        v30 = -1 << *(v26 + 32);
        v31 = v28 & ~v30;
        if (((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
LABEL_22:

          v7 = v46;
          v3 = v47;
          goto LABEL_24;
        }

        v32 = ~v30;
        while (1)
        {
          v33 = (*(v26 + 48) + 16 * v31);
          if (*v33 == a1 && v33[1] == v29)
          {
            break;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v29 = v50;
          if (v35)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v7 = v46;
        if (qword_10016A3B8 != -1)
        {
          swift_once();
        }

        v41[2] = qword_10016B368;
        v41[3] = qword_10016B370;
        v41[1] = sub_100026F50(qword_10016B350, qword_10016B368);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = v42;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._object = (v43 | 0x8000000000000000);
        v36._countAndFlagsBits = 0xD00000000000001CLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v36);
        v52[3] = v44;
        v37 = sub_100042BAC(v52);
        sub_100054A14(v10, v37);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(v52, &qword_10016AB10, &unk_100130B10);
        v38._countAndFlagsBits = 0;
        v38._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v38);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_1000A3548(a1, v50);

        v39 = v53;
        if (*(v53 + 16))
        {
          v3 = v47;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = *(v3 + 240);
          *(v3 + 240) = 0x8000000000000000;
          sub_1000A11F0(v39, v10, isUniquelyReferenced_nonNull_native);
          *(v3 + 240) = v51;
          swift_endAccess();
        }

        else
        {

          v3 = v47;
          swift_beginAccess();
          sub_100097954(v10);
          swift_endAccess();

          swift_beginAccess();
          sub_100097A04(v10);
          swift_endAccess();
        }

        result = sub_100054A78(v10);
        v12 = v48;
      }

      else
      {

LABEL_24:
        sub_100054A78(v10);

        v12 = v48;
      }
    }

    else
    {
      swift_endAccess();
      result = sub_100054A78(v10);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1000528EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 24);
  v13 = *(v3 + 112);
  v17 = *(a3 + 16);
  v18 = v12;
  v19 = v3;
  v20 = a1;
  v21 = a2;
  os_unfair_lock_lock(v13 + 6);
  sub_1000579AC(&v13[4], v11);
  os_unfair_lock_unlock(v13 + 6);
  if (!v4)
  {
    v14 = URL.path(percentEncoded:)(0);
    v15 = (*(v9 + 8))(v11, v8);
    __chkstk_darwin(v15);
    *(&v16 - 1) = v14;
    os_unfair_lock_lock(v13 + 6);
    sub_1000578F0(&v13[4], &v22);
    os_unfair_lock_unlock(v13 + 6);
  }
}

void sub_100052A9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = String._bridgeToObjectiveC()();
  v14 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v14];

  v6 = v14;
  if (v5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_100057958(&qword_10016A778, 255, type metadata accessor for FileAttributeKey, &unk_10012FF8C);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    if (*(v7 + 16) && (v9 = sub_10009E778(NSFileSize), (v10 & 1) != 0))
    {
      sub_10002FE08(*(v7 + 56) + 32 * v9, v15);

      sub_10005790C();
      if (swift_dynamicCast())
      {
        v11 = v14;
        v12 = [v14 unsignedLongLongValue];

        *a2 = v12;
        return;
      }
    }

    else
    {
    }

    *a2 = 0;
  }

  else
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100052C84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100052C8CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100052C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  sub_1000528EC(a1, a2, a3);
  v9 = v8;
  sub_100026F50((v3 + 136), *(v3 + 160));
  v10 = type metadata accessor for ConfigurationStoreImplementation();
  return v9 >= sub_10004FC8C(v10);
}

uint64_t sub_100052FF0()
{
  sub_100053050();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100053050()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100054274();
  os_unfair_lock_lock((v0 + 120));
  *(v0 + 128) = v2;

  os_unfair_lock_unlock((v0 + 120));
}

uint64_t sub_1000532DC()
{
  v0 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  sub_10002FDA4(v0, qword_10016B3A0);
  v1 = sub_10002FD14(v0, qword_10016B3A0);
  if (qword_10016A3C8 != -1)
  {
    swift_once();
  }

  v3 = qword_10016B390;
  v2 = *algn_10016B398;
  v4 = v0[5];
  v5 = enum case for StorageCategory.classC(_:);
  v6 = type metadata accessor for StorageCategory();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  *v1 = v3;
  *(v1 + 1) = v2;
  v7 = &v1[v0[6]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v1[v0[7]] = 0;
  v1[v0[8]] = 1;
}

uint64_t sub_1000533F4()
{
  _StringGuts.grow(_:)(52);
  v1._countAndFlagsBits = 0x3D616D65686373;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x3D6373202CLL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  type metadata accessor for StorageCategory();
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x644972657375202CLL;
  v4._object = 0xE90000000000003DLL;
  String.append(_:)(v4);
  v5 = (&v0->_countAndFlagsBits + v3[6]);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
  }

  else
  {
    v7 = 0x3E6C696E3CLL;
  }

  if (v6)
  {
    v8 = v5[1];
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6E6F64616572202CLL;
  v10._object = 0xEB000000003D796CLL;
  String.append(_:)(v10);
  if (*(&v0->_countAndFlagsBits + v3[7]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v3[7]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x636976726573202CLL;
  v14._object = 0xEA00000000003D65;
  String.append(_:)(v14);
  if (*(&v0->_countAndFlagsBits + v3[8]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v3[8]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  return 0;
}

void sub_1000535DC(uint64_t a1)
{
  String.hash(into:)();
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  type metadata accessor for StorageCategory();
  sub_100057958(&qword_10016B550, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + v2[6] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v2[7]));
  Hasher._combine(_:)(*(v1 + v2[8]));
}

Swift::Int sub_1000536DC()
{
  Hasher.init(_seed:)();
  sub_1000535DC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100053720(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000535DC(v2);
  return Hasher._finalize()();
}

uint64_t sub_100053764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for Connection.Attributes();
  v6[6] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100053858, a4, 0);
}

uint64_t sub_100053858()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *v2;
  v5 = v2[1];
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v7 = (v2 + v6[6]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v3 + 112);
  v11 = swift_task_alloc();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v5;
  os_unfair_lock_lock(v10 + 6);
  sub_1000578B4(&v10[4], v1);
  os_unfair_lock_unlock(v10 + 6);

  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 56);
  v15 = *(v0 + 32);
  URL.absoluteString.getter();
  (*(v13 + 8))(v12, v14);
  *(v0 + 112) = *(v15 + v6[7]);
  if (*(v15 + v6[8]) == 1)
  {
    static Connection.Attributes.service.getter();
  }

  else
  {
    static Connection.Attributes.none.getter();
  }

  v16 = *(v0 + 40);
  type metadata accessor for Connection();
  v17 = v16;
  *(v0 + 80) = Connection.__allocating_init(_:readonly:protectionType:attributes:)();
  v18 = *(v0 + 24);
  v19 = swift_task_alloc();
  *(v0 + 88) = v19;
  *v19 = v0;
  v19[1] = sub_100053A78;

  return sub_10007C3FC(v18 + 136, v18 + 176);
}

uint64_t sub_100053A78(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100053C90;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100053BA0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100053BA0()
{
  v1 = *(v0 + 104);
  sub_100081920((*(v0 + 24) + 136), *(v0 + 112));
  if (v1)
  {

    v3 = *(v0 + 8);
  }

  else
  {

    v2 = sub_10007C770();

    **(v0 + 16) = v2;

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_100053C90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100042774(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002BA6C(v10, &qword_10016AD80, &qword_1001311B0);
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

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

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

  sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100053FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_100042774(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002BA6C(v12, &qword_10016AD80, &qword_1001311B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100054274()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OSSignpostID();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v11 = sub_10002FD14(v7, qword_10016B378);
  v26 = v8;
  v27 = v7;
  (*(v8 + 16))(v10, v11, v7);
  static OSSignpostID.exclusive.getter();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  v15 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "computerContainerSize", "", v12, 2u);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v1 + 112);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  v18 = *(v17 + 16);
  v19 = v25;
  NSFileManager.protectedGroupContainerUrl.getter();

  if (v19)
  {
    os_unfair_lock_unlock((v16 + 24));
  }

  else
  {
    v17 = FileManagerWrapper.directorySize(at:)(v4);
    (*(v23 + 8))(v4, v24);
    os_unfair_lock_unlock((v16 + 24));
    v20 = static os_signpost_type_t.end.getter();
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v21, "computerContainerSize", "", v12, 2u);
  }

  (*(v28 + 8))(v6, v29);
  (*(v26 + 8))(v10, v27);
  return v17;
}

uint64_t sub_10005465C()
{

  sub_100026FDC((v0 + 136));
  sub_100026FDC((v0 + 176));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

char *sub_1000546E0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016B498, &qword_1001310C8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100054724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StorageCategory();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000547E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StorageCategory();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(uint64_t a1)
{
  result = qword_10016B4F8;
  if (!qword_10016B4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000548D4(uint64_t a1)
{
  type metadata accessor for StorageCategory();
  if (v1 <= 0x3F)
  {
    sub_100054978();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100054978()
{
  if (!qword_10016B508)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B508);
    }
  }
}

uint64_t sub_100054A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054A78(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054AD4(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100055C78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100054BF0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100055DE8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100054D40(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ForwardDeletionRules();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100057958(&qword_10016B578, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100055F68(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100055028(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100056214(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

Swift::Int sub_1000551D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B5A8, &unk_100131200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10005543C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B560, &qword_1001311D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10005569C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100026F94(&qword_10016B580, &qword_1001311D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1000559FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B590, &qword_1001325A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::UInt sub_100055C78(Swift::UInt result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1000551D4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1000A2F20();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1000563FC(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a2);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100055DE8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10005543C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000A3064();
      goto LABEL_16;
    }

    sub_100056634(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100055F68(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ForwardDeletionRules();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005569C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000A31C0();
      goto LABEL_12;
    }

    sub_10005686C(v10 + 1);
  }

  v12 = *v3;
  sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100057958(&qword_10016B578, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100056214(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000559FC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000A33F8();
      goto LABEL_16;
    }

    sub_100056B8C(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000563FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B5A8, &unk_100131200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100056634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B560, &qword_1001311D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10005686C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100026F94(&qword_10016B580, &qword_1001311D8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules, &protocol conformance descriptor for ForwardDeletionRules);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100056B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100026F94(&qword_10016B590, &qword_1001325A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100056DE0(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_10009E700(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10009F7BC(v15, v5 & 1);
    v10 = sub_10009E700(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1000A27B4();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x800000010013AA00;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_10009E700(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_10009F7BC(v30, 1);
        v26 = sub_10009E700(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v38 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100057174(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  type metadata accessor for StorageCategory();
  sub_100057958(&qword_10016B588, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17 == v15 && v18 == v16)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v7 = v5[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  if (*(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v13 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
    return v13 & 1;
  }

LABEL_20:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_100057328(const char *a1, uint64_t a2, int a3, uint64_t a4)
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
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016B378);
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

uint64_t sub_100057604()
{
  v1 = (type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = type metadata accessor for StorageCategory();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100057720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057784(uint64_t a1)
{
  v4 = *(type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100042680;

  return sub_100053764(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t sub_10005790C()
{
  result = qword_10016B568;
  if (!qword_10016B568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B568);
  }

  return result;
}

uint64_t sub_100057958(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000579A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000579C4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_10002FDA4(v4, qword_10016B5B0);
  sub_10002FD14(v4, qword_10016B5B0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_100057B1C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B5C8);
  sub_10002FD14(v0, qword_10016B5C8);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100057C30()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173420);
  sub_10002FD14(v0, qword_100173420);
  return Table.init(_:database:)();
}

uint64_t sub_100057CC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Table();
  sub_10002FDA4(v5, a2);
  sub_10002FD14(v5, a2);
  return Table.init(_:database:)();
}

uint64_t sub_100057D30()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173450);
  sub_10002FD14(v0, qword_100173450);
  return Table.init(_:database:)();
}

uint64_t sub_100057D9C()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173468);
  sub_10002FD14(v0, qword_100173468);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057E48()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173480);
  sub_10002FD14(v0, qword_100173480);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057EF8()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173498);
  sub_10002FD14(v0, qword_100173498);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057FB0()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734B0);
  sub_10002FD14(v0, qword_1001734B0);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058064()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734C8);
  sub_10002FD14(v0, qword_1001734C8);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058114()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734E0);
  sub_10002FD14(v0, qword_1001734E0);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000581C4()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734F8);
  sub_10002FD14(v0, qword_1001734F8);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005826C()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173510);
  sub_10002FD14(v0, qword_100173510);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005831C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173528);
  sub_10002FD14(v0, qword_100173528);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000583DC()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173540);
  sub_10002FD14(v0, qword_100173540);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005849C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173558);
  sub_10002FD14(v0, qword_100173558);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005855C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173570);
  sub_10002FD14(v0, qword_100173570);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005861C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173588);
  sub_10002FD14(v0, qword_100173588);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000586DC()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_1001735A0);
  sub_10002FD14(v0, qword_1001735A0);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005879C()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735B8);
  sub_10002FD14(v0, qword_1001735B8);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058848()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735D0);
  sub_10002FD14(v0, qword_1001735D0);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000588F8()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735E8);
  sub_10002FD14(v0, qword_1001735E8);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000589B8()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173600);
  sub_10002FD14(v0, qword_100173600);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058A70(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 216) = v3;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;
  sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  *(v4 + 224) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v4 + 232) = v5;
  *(v4 + 240) = *(v5 - 8);
  *(v4 + 248) = swift_task_alloc();
  v6 = type metadata accessor for Insert();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  *(v4 + 280) = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100058C60, v3, 0);
}

uint64_t sub_100058C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = v3;
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
    v8 = v3[24];
    v7 = v3[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v19);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v11, "scheduleForwardDeletion", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v3[39];
  v13 = v3[36];
  v14 = v3[37];
  (*(v14 + 16))(v3[38], v12, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[40] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v15 = swift_task_alloc();
  v3[41] = v15;
  *v15 = v3;
  v15[1] = sub_100058EB0;
  v17 = v3[24];
  v16 = v3[25];

  return sub_100059F38(v17, v16);
}

uint64_t sub_100058EB0(char a1)
{
  v4 = *v2;
  *(v4 + 336) = v1;

  v5 = *(v4 + 216);
  if (v1)
  {
    v6 = sub_100059E6C;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v6 = sub_100058FF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100058FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 420) == 1)
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v4 = *(v3 + 216);
    v6 = *(v3 + 192);
    v5 = *(v3 + 200);
    v7 = type metadata accessor for OSLogger();
    *(v3 + 344) = v7;
    *(v3 + 352) = sub_10002FD14(v7, qword_10016B5B0);
    *(v3 + 360) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v8 = *(type metadata accessor for LogMessage() - 8);
    *(v3 + 368) = *(v8 + 72);
    *(v3 + 416) = *(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x800000010013AC20;
    v9._countAndFlagsBits = 0xD000000000000026;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    *(v3 + 80) = &type metadata for String;
    *(v3 + 56) = v6;
    *(v3 + 64) = v5;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v3 + 56, &qword_10016AB10, &unk_100130B10);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v11 = sub_100026F50((v4 + 112), *(v4 + 136));
    v12 = *v11;
    *(v3 + 376) = *v11;

    return _swift_task_switch(sub_1000592E0, v12, 0);
  }

  else
  {
    sub_100070154("scheduleForwardDeletion", 23, 2, *(v3 + 320));

    v13 = *(v3 + 8);

    return v13();
  }
}

uint64_t sub_1000592E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  *v6 = v3;
  v6[1] = sub_1000593DC;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000593DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v5 = *(v3 + 376);
  if (v1)
  {
    v6 = sub_100059D30;
  }

  else
  {
    v6 = sub_100059510;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100059510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[47];
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
    if (qword_10016A3E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = v3[50];
  v9 = type metadata accessor for Table();
  sub_10002FD14(v9, qword_1001733F0);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v8)
  {

    v24 = *(v4 + 216);
    v6 = __OFSUB__(v24, 1);
    v25 = v24 - 1;
    if (!v6)
    {
      *(v4 + 216) = v25;

      v3[51] = v8;
      v32 = v3[27];
      v31 = sub_100059DA0;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_100130BB0;
  if (qword_10016A428 != -1)
  {
LABEL_21:
    swift_once();
  }

  v10 = v3[24];
  v11 = v3[25];
  v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v13 = sub_10002FD14(v12, qword_1001734B0);
  v3[19] = v10;
  v3[20] = v11;
  v38 = v13;
  <- infix<A>(_:_:)();
  if (qword_10016A418 != -1)
  {
    swift_once();
  }

  v14 = v3[30];
  v15 = v3[31];
  v16 = v3[29];
  v17 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v17, qword_100173480);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v19 = v18;
  (*(v14 + 8))(v15, v16);
  v3[21] = v19;
  <- infix<A>(_:_:)();
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  v20 = v3[28];
  v21 = v3[26];
  sub_10002FD14(v17, qword_100173468);
  v3[22] = v21;
  <- infix<A>(_:_:)();
  sub_100026F94(&qword_10016B6A0, &unk_100131300);
  type metadata accessor for OnConflictClause();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  v3[5] = v12;
  v3[6] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0, &protocol conformance descriptor for Expression<A>);
  v22 = sub_100042BAC(v3 + 2);
  (*(*(v12 - 8) + 16))(v22, v38, v12);
  v3[23] = v21;
  static Expression<A>.< infix<A>(_:_:)();
  v23 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
  OnConflictClause.init(_:_:where:)();
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  QueryType.upsert(_:onConflict:)();

  v26 = Connection.run(_:)();
  v27 = v3[25];
  v39 = v3[24];
  (*(v3[33] + 8))(v3[34], v3[32]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._object = 0x800000010013AC50;
  v28._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  v3[14] = &type metadata for String;
  v3[11] = v39;
  v3[12] = v27;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 11), &qword_10016AB10, &unk_100130B10);
  v29._countAndFlagsBits = 0x746C75736572202CLL;
  v29._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v3[18] = &type metadata for Int64;
  v3[15] = v26;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 15), &qword_10016AB10, &unk_100130B10);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v34 = *(v4 + 216);
  v6 = __OFSUB__(v34, 1);
  v35 = v34 - 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(v31, v32, v33);
  }

  v36 = v3[27];
  *(v4 + 216) = v35;

  v31 = sub_100059C64;
  v32 = v36;
LABEL_13:
  v33 = 0;

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_100059C64()
{
  sub_100070154("scheduleForwardDeletion", 23, 2, *(v0 + 320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059D30()
{

  v0[51] = v0[50];
  v1 = v0[27];

  return _swift_task_switch(sub_100059DA0, v1, 0);
}

uint64_t sub_100059DA0()
{
  sub_100070154("scheduleForwardDeletion", 23, 2, *(v0 + 320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059E6C()
{
  sub_100070154("scheduleForwardDeletion", 23, 2, *(v0 + 320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059F38(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005A0E4, v2, 0);
}

uint64_t sub_10005A0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v4 = v3[16];
  v5 = v3[17];
  v6 = v3[14];
  v7 = v3[15];
  v9 = v3[5];
  v8 = v3[6];
  v10 = v3[4];
  v11 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v11, qword_1001734B0);
  v3[2] = v10;
  v3[3] = v9;
  static Expression<A>.== infix<A>(_:_:)();
  v12 = sub_100026F50((v8 + 112), *(v8 + 136));
  (*(v7 + 16))(v4, v5, v6);
  v13 = *v12;
  v3[18] = *v12;

  return _swift_task_switch(sub_10005A21C, v13, 0);
}

uint64_t sub_10005A21C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v6[1] = sub_10005A318;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005A318(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 144);
  if (v1)
  {
    v6 = sub_10005A7C8;
  }

  else
  {
    v6 = sub_10005A44C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005A44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 144);
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
  v8 = *(v3 + 104);
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  v11 = sub_10002FD14(v10, qword_100173408);
  (*(v9 + 16))(v8, v11, v10);
  sub_10006F960(&qword_10016AD20, &protocol conformance descriptor for Table);
  v12._countAndFlagsBits = QueryType.name.getter();
  LOBYTE(v8) = Connection.tableExists(_:)(v12);

  if (v8)
  {
    v39 = *(v3 + 168);
    v13 = v4;
    v14 = *(v3 + 96);
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    QueryType.where(_:)();
    QueryType.exists.getter();
    v17 = *(v16 + 8);
    v18 = v14;
    v4 = v13;
    v17(v18, v15);
    Connection.scalar<A>(_:)();
    v19 = *(v3 + 104);
    v20 = *(v3 + 80);
    (*(*(v3 + 64) + 8))(*(v3 + 72), *(v3 + 56));
    v17(v19, v20);

    if (v39)
    {
      v24 = *(v4 + 216);
      v6 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (!v6)
      {
        *(v4 + 216) = v25;
        *(v3 + 192) = v39;
        v27 = *(v3 + 120);
        v26 = *(v3 + 128);
        v28 = *(v3 + 112);
        v29 = *(v3 + 48);
        v30 = *(v27 + 8);
        *(v3 + 200) = v30;
        *(v3 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v30(v26, v28);
        v31 = sub_10005A858;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return _swift_task_switch(v21, v22, v23);
    }
  }

  else
  {
    (*(*(v3 + 88) + 8))(*(v3 + 104), *(v3 + 80));

    *(v3 + 216) = 0;
  }

  v32 = *(v4 + 216);
  v6 = __OFSUB__(v32, 1);
  v33 = v32 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v35 = *(v3 + 120);
  v34 = *(v3 + 128);
  v36 = *(v3 + 112);
  v29 = *(v3 + 48);
  *(v4 + 216) = v33;
  *(v3 + 217) = *(v3 + 216);
  v37 = *(v35 + 8);
  *(v3 + 176) = v37;
  *(v3 + 184) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v34, v36);
  v31 = sub_10005A714;
LABEL_10:
  v21 = v31;
  v22 = v29;
  v23 = 0;

  return _swift_task_switch(v21, v22, v23);
}