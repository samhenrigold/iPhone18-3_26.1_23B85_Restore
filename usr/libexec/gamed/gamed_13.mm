uint64_t sub_10021A03C()
{
  sub_100005528();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for Logger();
  v1[11] = v7;
  sub_1001B6A00(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10021A0F0()
{
  sub_1001AFA50();
  v1 = *(*(v0 + 80) + 32);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    v7 = *(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v7;
    *(v3 + 40) = v2;

    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_10021A254;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
  }

  else
  {

    sub_1000046F8();

    return v5();
  }
}

uint64_t sub_10021A254()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v3 + 136) = v0;

  if (v0)
  {
    v6 = sub_10021A3C0;
  }

  else
  {

    v6 = sub_10021A360;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10021A360()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_10021A3C0()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[9];
  v3 = v0[8];

  v4 = static os_log_type_t.error.getter();
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v5._object = 0x800000010030C720;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10021A9D8();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 673197344;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010030C740;
  String.append(_:)(v9);
  v0[4] = v1;
  sub_1001A6C04(&unk_1003B6170, &unk_1002C35A0);
  _print_unlocked<A, B>(_:_:)();
  v10 = v0[2];
  v11 = v0[3];
  static GKLog.match.getter();
  v12 = Logger.logObject.getter();
  v25 = v4;
  v13 = os_log_type_enabled(v12, v4);
  v14 = v0[13];
  v16 = v0[11];
  v15 = v0[12];
  if (v13)
  {
    v17 = sub_100005AE4();
    v24 = v14;
    v18 = sub_100005808();
    v26[0] = v18;
    *v17 = 136315138;
    v19 = sub_100005C3C(v10, v11, v26);
    v20 = v16;
    v21 = v19;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v25, "Nearby - %s", v17, 0xCu);
    sub_100005BE0(v18);
    sub_1000043D8(v18);
    sub_1000043D8(v17);

    (*(v15 + 8))(v24, v20);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  sub_1000046F8();

  return v22();
}

uint64_t sub_10021A654()
{
  sub_100005528();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_1001B6A00(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10021A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  if (*(v22[2] + 32))
  {
    swift_allocObject();
    swift_weakInit();

    NWConnection.stateUpdateHandler.setter();

    v25 = static os_log_type_t.info.getter();
    sub_100006138();
    _StringGuts.grow(_:)(28);

    sub_1001F7304();
    a10 = 0xD00000000000001ALL;
    a11 = v26;
    v27._countAndFlagsBits = NWConnection.debugDescription.getter();
    String.append(_:)(v27);

    v28 = a10;
    static GKLog.match.getter();
    v29 = Logger.logObject.getter();
    v30 = os_log_type_enabled(v29, v25);
    v31 = v22[6];
    v33 = v22[3];
    v32 = v22[4];
    if (v30)
    {
      sub_100005AE4();
      sub_10021DF6C();
      sub_10021DF9C();
      sub_10021DF2C(4.8149e-34, v34, v35);
      sub_1001F7658();
      *(v31 + 4) = v28;
      sub_1001F7448(&_mh_execute_header, v36, v37, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();

      (*(v32 + 8))(a9, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    sub_1001A7B44(0, &qword_1003B5578, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    NWConnection.start(queue:)();
  }

  else
  {
    v38 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v39 = Logger.logObject.getter();
    v40 = os_log_type_enabled(v39, v38);
    v42 = v22[4];
    v41 = v22[5];
    v43 = v22[3];
    if (v40)
    {
      v44 = sub_100005AE4();
      v45 = sub_100005808();
      a10 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_100005C3C(0xD00000000000002ELL, 0x800000010030C760, &a10);
      _os_log_impl(&_mh_execute_header, v39, v38, "Nearby - %s", v44, 0xCu);
      sub_100005BE0(v45);
      sub_1000043D8(v45);
      sub_1000043D8(v44);
    }

    (*(v42 + 8))(v41, v43);
  }

  sub_1000046F8();
  sub_100005B0C();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_10021A9D8()
{
  v1 = v0;
  _StringGuts.grow(_:)(45);

  sub_1001F7304();
  if (*(v0 + 32))
  {

    v2 = NWConnection.debugDescription.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = sub_100219928(v2, v4);
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x6167656C6564202CLL;
  v9._object = 0xEC000000203A6574;
  String.append(_:)(v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = sub_10021996C(Strong, *(v1 + 24));
  v13 = v12;
  swift_unknownObjectRelease();
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return 0xD00000000000001DLL;
}

uint64_t sub_10021AB08()
{
  sub_100005528();
  v1[32] = v2;
  v1[33] = v0;
  memcpy(v1 + 12, v2, 0x50uLL);
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021AB70()
{
  sub_100005528();
  v2 = v0[32];
  v1 = v0[33];
  memcpy(v0 + 2, (v1 + 40), 0x50uLL);
  memcpy((v1 + 40), v0 + 12, 0x50uLL);
  sub_1001F6F1C((v0 + 2), &qword_1003B6510, &qword_1002C6440);
  sub_1001F6CC0(v2, (v0 + 22));
  sub_1000046F8();

  return v3();
}

uint64_t sub_10021AC08(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for NWError();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B60F0, &qword_1002C3530);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for NWConnection.State();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10021ADD0, 0, 0);
}

uint64_t sub_10021ADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = *(v22[7] + 32);
  v22[20] = v25;
  if (!v25)
  {
    goto LABEL_29;
  }

  v27 = v22[18];
  v26 = v22[19];
  v28 = v22[17];
  (*(v27 + 16))(v26, v22[6], v28);
  v29 = (*(v27 + 88))(v26, v28);
  if (v29 == enum case for NWConnection.State.failed(_:))
  {
    v30 = v22[19];
    v31 = v22[9];
    v32 = v22[10];
    v33 = v22[8];
    (*(v22[18] + 96))(v30, v22[17]);
    (*(v31 + 32))(v32, v30, v33);

    LOBYTE(v31) = static os_log_type_t.debug.getter();
    sub_100006138();
    _StringGuts.grow(_:)(130);
    v34 = a11;
    v22[4] = a10;
    v22[5] = v34;
    v35._countAndFlagsBits = 0xD000000000000080;
    v35._object = 0x800000010030C7F0;
    String.append(_:)(v35);
    _print_unlocked<A, B>(_:_:)();
    v36 = v22[4];
    static GKLog.match.getter();
    v37 = Logger.logObject.getter();
    v38 = os_log_type_enabled(v37, v31);
    v39 = v22[15];
    v41 = v22[12];
    v40 = v22[13];
    if (v38)
    {
      sub_100005AE4();
      sub_10021DF6C();
      sub_10021DF9C();
      sub_10021DF2C(4.8149e-34, v42, v43);
      sub_1001F7658();
      *(v39 + 4) = v36;
      sub_1001F7448(&_mh_execute_header, v44, v45, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();

      (*(v40 + 8))(a9, v41);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }

    NWConnection.cancel()();
    Strong = swift_unknownObjectWeakLoadStrong();
    v22[23] = Strong;
    if (Strong)
    {
      v64 = swift_task_alloc();
      v22[24] = v64;
      *v64 = v22;
      v64[1] = sub_10021B63C;
      sub_100005B0C();

      return sub_1001F31B4();
    }

    v70 = v22[9];
    v69 = v22[10];
    v71 = v22[8];
    goto LABEL_28;
  }

  if (v29 == enum case for NWConnection.State.ready(_:))
  {

    v46 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v47 = Logger.logObject.getter();
    v48 = os_log_type_enabled(v47, v46);
    v49 = v22[16];
    v50 = v22[12];
    v51 = v22[13];
    if (v48)
    {
      v52 = sub_100005AE4();
      v53 = sub_100005808();
      a10 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005C3C(0xD000000000000017, 0x800000010030C880, &a10);
      _os_log_impl(&_mh_execute_header, v47, v46, "Nearby - %s", v52, 0xCu);
      sub_100005BE0(v53);
      sub_1000043D8(v53);
      sub_1000043D8(v52);
    }

    (*(v51 + 8))(v49, v50);
    v54 = v22[11];
    v55 = v22[7];
    v56 = type metadata accessor for TaskPriority();
    sub_1001A9674(v54, 1, 1, v56);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v55;

    sub_1001D1C0C();
    *(v55 + 120) = v58;

    v59 = swift_unknownObjectWeakLoadStrong();
    v22[21] = v59;
    if (v59)
    {
      v60 = swift_task_alloc();
      v22[22] = v60;
      *v60 = v22;
      v60[1] = sub_10021B4A8;
      sub_100005B0C();

      return sub_1001F1E88();
    }

LABEL_29:
    sub_10021DF4C();

    sub_1000046F8();
    sub_100005B0C();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
  }

  if (v29 != enum case for NWConnection.State.cancelled(_:))
  {

    v72 = static os_log_type_t.info.getter();
    sub_100006138();
    _StringGuts.grow(_:)(38);
    v73 = a11;
    v22[2] = a10;
    v22[3] = v73;
    sub_100006A7C("State changed to ");
    _print_unlocked<A, B>(_:_:)();
    sub_100006A7C(" for connection: ");
    v74._countAndFlagsBits = NWConnection.debugDescription.getter();
    String.append(_:)(v74);

    v75 = v22[2];
    static GKLog.match.getter();
    v76 = Logger.logObject.getter();
    v77 = os_log_type_enabled(v76, v72);
    v79 = v22[13];
    v78 = v22[14];
    v80 = v22[12];
    if (v77)
    {
      a9 = v22[14];
      v81 = v72;
      v82 = sub_100005AE4();
      sub_100005808();
      sub_10021DF9C();
      sub_10021DF2C(4.8149e-34, v83, v84);
      sub_1001F7658();
      *(v82 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v76, v81, "Nearby - %s", v82, 0xCu);
      sub_1000058BC();
      sub_1001F719C();

      (*(v79 + 8))(a9, v80);
    }

    else
    {

      (*(v79 + 8))(v78, v80);
    }

    v70 = v22[18];
    v69 = v22[19];
    v71 = v22[17];
LABEL_28:
    (*(v70 + 8))(v69, v71);
    goto LABEL_29;
  }

  v66 = swift_unknownObjectWeakLoadStrong();
  v22[25] = v66;
  if (!v66)
  {
    goto LABEL_29;
  }

  v67 = swift_task_alloc();
  v22[26] = v67;
  *v67 = v22;
  v67[1] = sub_10021B7E8;
  sub_100005B0C();

  return sub_1001F1CB8();
}

uint64_t sub_10021B4A8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021B5A8()
{
  sub_1001AFA50();

  sub_10021DF4C();

  sub_1000046F8();

  return v0();
}

uint64_t sub_10021B63C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021B73C()
{
  sub_1001AFA50();

  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_10021DF4C();

  sub_1000046F8();

  return v1();
}

uint64_t sub_10021B7E8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021B8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF9F8;

  return sub_10021B978();
}

uint64_t sub_10021B978()
{
  v1[14] = v0;
  v2 = sub_1001A6C04(&qword_1003B7488, &qword_1002C6418);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_1001A6C04(&qword_1003B7490, &qword_1002C6420);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10021BB14, 0, 0);
}

uint64_t sub_10021BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14[14] + 32);
  v14[25] = v15;
  if (v15)
  {

    v16 = static os_log_type_t.info.getter();
    sub_100006138();
    _StringGuts.grow(_:)(29);

    sub_1001F7304();
    v54 = v17;
    v18._countAndFlagsBits = NWConnection.debugDescription.getter();
    String.append(_:)(v18);

    static GKLog.match.getter();
    v19 = Logger.logObject.getter();
    v20 = os_log_type_enabled(v19, v16);
    v21 = v14[24];
    v23 = v14[21];
    v22 = v14[22];
    if (v20)
    {
      sub_100005AE4();
      sub_10021DF6C();
      sub_10021DF9C();
      sub_10021DF2C(4.8149e-34, v24, v25);
      sub_1001F7658();
      *(v21 + 4) = 0xD00000000000001BLL;
      sub_1001F7448(&_mh_execute_header, v26, v27, "Nearby - %s");
      sub_1000058BC();
      sub_1001F719C();

      v30 = *(v22 + 8);
      v28 = v22 + 8;
      v29 = v30;
      v30(a9, v23);
    }

    else
    {

      v40 = *(v22 + 8);
      v28 = v22 + 8;
      v29 = v40;
      v40(v21, v23);
    }

    v14[26] = v28;
    v14[27] = v29;
    v42 = v14[16];
    v41 = v14[17];
    v43 = v14[15];
    sub_10021CBF0();
    AsyncStream.makeAsyncIterator()();
    (*(v42 + 8))(v41, v43);
    swift_task_alloc();
    sub_1000062E8();
    v14[28] = v44;
    *v44 = v45;
    sub_10021DEF4(v44);
    sub_100005B0C();

    return AsyncStream.Iterator.next(isolation:)(v46, v47, v48, v49, v50, v51, v52, v53, a9, 0xD00000000000001BLL, v54, a12, a13, a14);
  }

  else
  {

    sub_1000046F8();
    sub_100005B0C();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10021BD34()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021BE18()
{
  v31 = v0;
  v1 = v0[3];
  v0[29] = v0[2];
  v0[30] = v1;
  v2 = v0[4];
  v3 = v0[5];
  v0[31] = v2;
  v0[32] = v3;
  if (v2 == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    sub_1000046F8();
    sub_1001F7484();

    __asm { BRAA            X1, X16 }
  }

  if (v3)
  {
    swift_errorRetain();
    v6 = static os_log_type_t.error.getter();
    v0[11] = 0;
    v0[12] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v7 = v0[12];
    v0[9] = v0[11];
    v0[10] = v7;
    v8._object = 0x800000010030C8C0;
    v8._countAndFlagsBits = 0xD000000000000033;
    String.append(_:)(v8);
    swift_getErrorValue();
    v9._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v9);

    v10 = v0[10];
    v26 = v0[9];
    static GKLog.match.getter();
    v11 = Logger.logObject.getter();
    v28 = v6;
    v12 = os_log_type_enabled(v11, v6);
    v13 = v0[27];
    v14 = v0[23];
    v29 = v0[21];
    if (v12)
    {
      v15 = sub_100005AE4();
      v25 = v14;
      v16 = sub_100005808();
      v30 = v16;
      *v15 = 136315138;
      v17 = sub_100005C3C(v26, v10, &v30);
      v27 = v13;
      v18 = v17;

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v28, "Nearby - %s", v15, 0xCu);
      sub_100005BE0(v16);
      sub_1000043D8(v16);
      sub_1000043D8(v15);

      v27(v25, v29);
    }

    else
    {

      v13(v14, v29);
    }
  }

  v19 = swift_task_alloc();
  v0[33] = v19;
  *v19 = v0;
  v19[1] = sub_10021C0F8;
  sub_1001F7484();

  return sub_10021C4D0(v20, v21, v22);
}

uint64_t sub_10021C0F8()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10021C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005528();
  sub_10021DC28(v14[29], v14[30], v14[31], v14[32]);
  swift_task_alloc();
  sub_1000062E8();
  v14[28] = v15;
  *v15 = v16;
  v17 = sub_10021DEF4(v15);

  return AsyncStream.Iterator.next(isolation:)(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10021C258(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWConnection.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1001A6C04(&qword_1003B60F0, &qword_1002C3530);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    sub_1001A9674(v8, 1, 1, v11);
    (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_1001D1C0C();
  }

  return result;
}

uint64_t sub_10021C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1001AF328;

  return sub_10021AC08(a5);
}

uint64_t sub_10021C4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Logger();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021C5A0, 0, 0);
}

uint64_t sub_10021C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = v22[10];
  v26 = static os_log_type_t.info.getter();
  sub_100006138();
  _StringGuts.grow(_:)(26);

  sub_1001F7304();
  a10 = 0xD000000000000018;
  a11 = v27;
  v22[5] = *(v25 + 32);
  sub_1001A6C04(&qword_1003B7498, &qword_1002C6430);
  v28._countAndFlagsBits = Optional.debugDescription.getter();
  String.append(_:)(v28);

  v30 = a10;
  v29 = a11;
  static GKLog.match.getter();
  v31 = Logger.logObject.getter();
  v32 = os_log_type_enabled(v31, v26);
  v33 = v22[14];
  v34 = v22[11];
  v35 = v22[12];
  if (v32)
  {
    v36 = sub_100005AE4();
    v37 = sub_100005808();
    a10 = v37;
    *v36 = 136315138;
    v38 = sub_100005C3C(v30, v29, &a10);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v26, "Nearby - %s", v36, 0xCu);
    sub_100005BE0(v37);
    sub_1001F719C();
    sub_1000043D8(v36);
  }

  else
  {
  }

  v39 = *(v35 + 8);
  v39(v33, v34);
  v22[15] = v39;
  if (v22[9])
  {
    if (qword_1003B54D0 != -1)
    {
      swift_once();
    }

    v40 = dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)();
    v22[16] = v40;
    if (v40)
    {
      type metadata accessor for NWProtocolFramer.Message();
      if (swift_dynamicCastClass())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v22[17] = Strong;
        if (Strong)
        {
          v42 = swift_task_alloc();
          v22[18] = v42;
          *v42 = v22;
          v42[1] = sub_10021C85C;
          sub_100005B0C();

          return sub_1001F3BE4();
        }
      }
    }
  }

  sub_1000046F8();
  sub_100005B0C();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10021C85C()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;
  *(v4 + 152) = v0;

  if (v0)
  {
    v5 = sub_10021C9D0;
  }

  else
  {
    v5 = sub_10021C960;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021C960()
{
  sub_100005528();
  swift_unknownObjectRelease();

  sub_1000046F8();

  return v0();
}

void sub_10021C9D0(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(44);

  sub_1001F7304();
  v18 = 0xD00000000000002ALL;
  v19 = v3;
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  v5 = v19;
  static GKLog.match.getter();
  v6 = Logger.logObject.getter();
  v7 = os_log_type_enabled(v6, v2);
  v8 = v1[15];
  v9 = v1[13];
  v17 = v1[11];
  if (v7)
  {
    v16 = v1[15];
    v10 = sub_100005AE4();
    v15 = v9;
    v11 = sub_100005808();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_100005C3C(0xD00000000000002ALL, v5, &v18);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v2, "Nearby - %s", v10, 0xCu);
    sub_100005BE0(v11);
    sub_1000043D8(v11);
    sub_1000043D8(v10);

    swift_unknownObjectRelease();
    v16(v15, v17);
  }

  else
  {

    swift_unknownObjectRelease();

    v8(v9, v17);
  }

  sub_1000046F8();
  sub_1001F7484();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10021CBF0()
{
  sub_1001A6C04(&qword_1003B74A0, &qword_1002C6448);
  sub_1000043C4();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_10021CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a2;
  v6 = sub_1001A6C04(&qword_1003B7478, &qword_1002C63C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = type metadata accessor for NWConnection.SendCompletion();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  *v13 = sub_10021DA1C;
  v13[1] = v15;
  (*(v11 + 104))(v13, enum case for NWConnection.SendCompletion.contentProcessed(_:), v10);
  NWConnection.send(content:contentContext:isComplete:completion:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10021CEFC(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B7480, &qword_1002C63D0);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  v5 = type metadata accessor for NWError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A96E4(a1, v4, &qword_1003B7480, &qword_1002C63D0);
  if (sub_1001A969C(v4, 1, v5) == 1)
  {
    sub_1001F6F1C(v4, &qword_1003B7480, &qword_1002C63D0);
    sub_1001A6C04(&qword_1003B7478, &qword_1002C63C8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1001B8304();
    v10 = swift_allocError();
    (*(v6 + 16))(v11, v8, v5);
    v12[1] = v10;
    sub_1001A6C04(&qword_1003B7478, &qword_1002C63C8);
    CheckedContinuation.resume(throwing:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t *sub_10021D108()
{
  sub_1001AF9D0((v0 + 2));

  sub_10021D1D8(v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14]);

  return v0;
}

uint64_t sub_10021D15C()
{
  sub_10021D108();

  return _swift_deallocClassInstance(v0, 128, 7);
}

void sub_10021D1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }
}

uint64_t sub_10021D254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B74A8, &qword_1002C6450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  NWConnection.receiveMessage(completion:)();
}

uint64_t sub_10021D3B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v64 = a6;
  v59 = a3;
  v60 = a1;
  v61 = a2;
  v8 = type metadata accessor for Logger();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1001A6C04(&qword_1003B74A8, &qword_1002C6450);
  v54 = *(v63 - 8);
  v52 = *(v54 + 64);
  __chkstk_darwin(v63);
  v53 = &v51 - v10;
  v11 = type metadata accessor for NWError();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001A6C04(&qword_1003B7480, &qword_1002C63D0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = sub_1001A6C04(&qword_1003B74B0, &qword_1002C6458);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  v24 = a5;
  sub_1001A96E4(a5, v19, &qword_1003B7480, &qword_1002C63D0);
  if (sub_1001A969C(v19, 1, v11) == 1)
  {
    v25 = v12;
    sub_1001F6F1C(v19, &qword_1003B7480, &qword_1002C63D0);
    v26 = 0;
  }

  else
  {
    sub_1001B8304();
    v26 = swift_allocError();
    v25 = v12;
    (*(v12 + 32))(v27, v19, v11);
  }

  v29 = v60;
  v28 = v61;
  v65 = v60;
  v66 = v61;
  v67 = v59;
  v68 = v26;

  sub_1001D09D8(v29, v28);
  v31 = v63;
  v30 = v64;
  AsyncStream.Continuation.yield(_:)();
  (*(v21 + 8))(v23, v20);
  sub_1001A96E4(v24, v17, &qword_1003B7480, &qword_1002C63D0);
  if (sub_1001A969C(v17, 1, v11) == 1)
  {
    sub_1001F6F1C(v17, &qword_1003B7480, &qword_1002C63D0);
    v33 = v53;
    v32 = v54;
    (*(v54 + 16))(v53, v30, v31);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = (v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v32 + 32))(v36 + v34, v33, v31);
    *(v36 + v35) = v55;

    NWConnection.receiveMessage(completion:)();
  }

  else
  {
    v38 = v25;
    (*(v25 + 32))(v62, v17, v11);
    v39 = static os_log_type_t.info.getter();
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v40._object = 0x800000010030C950;
    v40._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v40);
    v41 = v11;
    _print_unlocked<A, B>(_:_:)();
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v44 = v65;
    v43 = v66;
    v45 = v58;
    static GKLog.match.getter();
    v46 = Logger.logObject.getter();
    if (os_log_type_enabled(v46, v39))
    {
      v47 = swift_slowAlloc();
      v48 = v38;
      v49 = swift_slowAlloc();
      v65 = v49;
      *v47 = 136315138;
      v50 = sub_100005C3C(v44, v43, &v65);

      *(v47 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v46, v39, "Nearby - %s", v47, 0xCu);
      sub_100005BE0(v49);
      v38 = v48;

      (*(v56 + 8))(v58, v57);
    }

    else
    {

      (*(v56 + 8))(v45, v57);
    }

    AsyncStream.Continuation.finish()();
    return (*(v38 + 8))(v62, v41);
  }
}

uint64_t sub_10021DA1C(uint64_t a1)
{
  sub_1001A6C04(&qword_1003B7478, &qword_1002C63C8);

  return sub_10021CEFC(a1);
}

uint64_t sub_10021DAA0()
{
  sub_1001AFA50();
  type metadata accessor for NWConnection.State();
  v2 = *(v0 + 32);
  swift_task_alloc();
  sub_1000062E8();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1001AF328;
  v5 = sub_10021DFA8();

  return sub_10021C434(v5, v6, v7, v2, v8);
}

uint64_t sub_10021DB84()
{
  swift_task_alloc();
  sub_1000062E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_10021DFA8();

  return sub_10021B8E8();
}

uint64_t sub_10021DC28(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_1001B9874(result, a2);
  }

  return result;
}

uint64_t sub_10021DC84()
{
  sub_1001A6C04(&qword_1003B74A8, &qword_1002C6450);
  sub_1000047C0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10021DD20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1001A6C04(&qword_1003B74A8, &qword_1002C6450);
  sub_1001B6A00(v11);
  v13 = v12;
  v15 = v14;
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v5 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10021D3B4(a1, a2, a3, a4, a5, v5 + v16, v17);
}

uint64_t sub_10021DDF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10021DE0C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021DE34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021DE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10021DF2C(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_100005C3C(v4, v3, va);
}

uint64_t sub_10021DF4C()
{
}

uint64_t sub_10021DF6C()
{

  return swift_slowAlloc();
}

void sub_10021E004()
{
  sub_10000469C();
  v2 = v0;
  v4 = v3;
  v39 = v6;
  v40 = v5;
  v8 = v7;
  v9 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  __chkstk_darwin(v9 - 8);
  sub_1000043F0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for URL();
  sub_1000043C4();
  v38 = v17;
  __chkstk_darwin(v18);
  sub_1000043F0();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v35 - v24;
  __chkstk_darwin(v23);
  sub_1002204CC();
  __chkstk_darwin(v26);
  v28 = &v35 - v27;
  sub_100220418(v8, v15);
  if (sub_1001A969C(v15, 1, v16) == 1)
  {

    sub_1001A974C(v15, &qword_1003B5800, &qword_1002C40D0);
    type metadata accessor for ProcessExiter();
    sub_100220504("Unable to locate old database URL. Exiting.");
  }

  v36 = v4;
  v37 = v2;
  v30 = v38 + 32;
  v29 = *(v38 + 32);
  v29(v28, v15, v16);
  sub_100220418(v40, v12);
  v31 = sub_1001A969C(v12, 1, v16);
  v35 = v30 - 24;
  if (v31 == 1)
  {

    sub_100006148(v12);
    type metadata accessor for ProcessExiter();
    sub_100220504("Unable to locate new database URL. Exiting.");
  }

  v29(v1, v12, v16);
  v33 = v38 + 16;
  v32 = *(v38 + 16);
  v32(v25, v28, v16);
  v32(v21, v1, v16);
  sub_10021FE94(v25, v21, v39, v36);
  sub_100006148(v40);
  sub_100006148(v8);
  v34 = *(v33 - 8);
  v34(v1, v16);
  v34(v28, v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_1000057D8();
}

void sub_10021E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000469C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v27 + 24);
  v34 = *(v27 + 32);
  v35 = sub_10020F3F8(v27, v33);
  __chkstk_darwin(v35);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v37);
  v24(v32, v30, v37, v26, v20, v33, v34);
  sub_100005BE0(v28);
  sub_1000057D8();
}

Swift::Void __swiftcall DatabaseMigrator.migrate()()
{
  sub_10000469C();
  type metadata accessor for NSPersistentStore.StoreType();
  sub_1000043C4();
  v63 = v1;
  v64 = v2;
  __chkstk_darwin(v1);
  sub_1000043F0();
  v58 = v3 - v4;
  sub_100005874();
  __chkstk_darwin(v5);
  v7 = &v53[-v6];
  v8 = type metadata accessor for Logger();
  sub_1000043C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000043F0();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v53[-v17];
  __chkstk_darwin(v16);
  v20 = &v53[-v19];
  static GKLog.cache.getter();
  v21 = v0;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v62 = v8;
  v59 = v14;
  v57 = v18;
  if (v24)
  {
    sub_1002204E0();
    v25 = swift_slowAlloc();
    sub_1002204EC();
    v26 = swift_slowAlloc();
    v60 = v10;
    v27 = v8;
    v28 = v26;
    v65[0] = v26;
    *v25 = 136315138;
    type metadata accessor for URL();
    sub_1002202C4();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = sub_100005C3C(v29, v30, v65);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "About to migrate: %s to secure location", v25, 0xCu);
    sub_100005BE0(v28);
    sub_100004858();

    sub_100004858();

    v32 = *(v60 + 8);
    v33 = v20;
    v34 = v27;
    v10 = v60;
  }

  else
  {

    v32 = *(v10 + 8);
    v33 = v20;
    v34 = v8;
  }

  v61 = v32;
  v32(v33, v34);
  v35 = &v21[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator];
  v36 = *&v21[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator + 24];
  v37 = *&v21[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator + 32];
  sub_100006454(&v21[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator], v36);
  v38 = OBJC_IVAR___GKDatabaseMigrator_newDatabaseURL;
  v39 = *&v21[OBJC_IVAR___GKDatabaseMigrator_options];
  v40 = OBJC_IVAR___GKDatabaseMigrator_oldDatabaseURL;
  static NSPersistentStore.StoreType.sqlite.getter();
  (*(v37 + 8))(&v21[v38], v39, &v21[v40], v39, v7, v36, v37);
  v41 = *(v64 + 8);
  v64 += 8;
  v56 = v41;
  v41(v7, v63);
  v42 = v57;
  static GKLog.cache.getter();
  v43 = v21;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    sub_1002204E0();
    v46 = swift_slowAlloc();
    sub_1002204EC();
    v55 = swift_slowAlloc();
    v65[0] = v55;
    *v46 = 136315138;
    type metadata accessor for URL();
    v60 = v10;
    sub_1002202C4();
    v54 = v45;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = sub_100005C3C(v47, v48, v65);

    *(v46 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v44, v54, "About to destroy: %s", v46, 0xCu);
    sub_100005BE0(v55);
    sub_100004858();

    sub_100004858();
  }

  v61(v42, v62);
  v50 = *(v35 + 3);
  v51 = *(v35 + 4);
  sub_100006454(v35, v50);
  v52 = v58;
  static NSPersistentStore.StoreType.sqlite.getter();
  (*(v51 + 16))(&v21[v40], v52, v39, v50, v51);
  v56(v52, v63);
  sub_1000057D8();
}

uint64_t static DatabaseMigrator.removeInsecureOldDatabaseFolders(fileManager:oldDatabaseURL:bundleID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v85 = a3;
  v86 = a4;
  v93 = a1;
  type metadata accessor for Logger();
  sub_1000043C4();
  v90 = v8;
  v91 = v7;
  __chkstk_darwin(v7);
  sub_1000043F0();
  v87 = v9 - v10;
  sub_100005874();
  __chkstk_darwin(v11);
  v13 = &v82 - v12;
  v14 = type metadata accessor for URL();
  sub_1000043C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000043F0();
  v84 = v18 - v19;
  sub_100005874();
  v21 = __chkstk_darwin(v20);
  v23 = &v82 - v22;
  __chkstk_darwin(v21);
  sub_1002204CC();
  __chkstk_darwin(v24);
  v26 = &v82 - v25;
  URL.deletingLastPathComponent()();
  v28 = URL.pathExtension.getter() == 0x617461646367 && v27 == 0xE600000000000000;
  v92 = v23;
  if (v28)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  static GKLog.cache.getter();
  v30 = *(v16 + 16);
  v89 = v26;
  v30(v5, v26, v14);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1002204E0();
    v33 = swift_slowAlloc();
    v88 = v16;
    v34 = v14;
    v35 = v33;
    sub_1002204EC();
    v36 = swift_slowAlloc();
    v83 = v4;
    v37 = v36;
    v94 = v36;
    *v35 = 136315138;
    sub_1002202C4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v5;
    v39 = *(v88 + 8);
    v39(v38, v34);
    v40 = sub_1002204F8();
    v43 = sub_100005C3C(v40, v41, v42);

    *(v35 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v31, v32, "Removing old database folder: %s", v35, 0xCu);
    sub_100005BE0(v37);
    v6 = v83;
    sub_100004858();

    v14 = v34;
    v16 = v88;
    sub_100004858();
  }

  else
  {

    v44 = v5;
    v39 = *(v16 + 8);
    v39(v44, v14);
  }

  (*(v90 + 8))(v13, v91);
  v26 = v89;
  v45 = v89;
  URL.path(percentEncoded:)(1);
  String._bridgeToObjectiveC()();
  sub_100005FBC();

  v94 = 0;
  v46 = [v93 removeItemAtPath:v45 error:&v94];

  if (!v46)
  {
    v54 = v94;
    sub_100005FBC();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v39)(v26, v14);
  }

  v47 = v94;
  v23 = v92;
LABEL_13:
  URL.deletingLastPathComponent()();
  URL.path(percentEncoded:)(1);
  v48 = String._bridgeToObjectiveC()();
  v94 = 0;
  v49 = [v93 contentsOfDirectoryAtPath:v48 error:&v94];

  v50 = v94;
  if (!v49)
  {
    v56 = v94;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_18;
  }

  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v50;

  v53 = *(v51 + 16);
  v23 = v92;

  if (v53)
  {
LABEL_15:

LABEL_18:
    v57 = *(v16 + 8);
    v57(v23, v14);
    return (v57)(v26, v14);
  }

  if (URL.lastPathComponent.getter() == v85 && v58 == v86)
  {
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v60 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v61 = v87;
  static GKLog.cache.getter();
  v62 = *(v16 + 16);
  v63 = v84;
  v89 = v26;
  v62(v84, v26, v14);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    sub_1002204E0();
    v66 = swift_slowAlloc();
    v88 = v16;
    v67 = v14;
    v68 = v66;
    sub_1002204EC();
    v69 = swift_slowAlloc();
    v83 = v6;
    v70 = v69;
    v94 = v69;
    *v68 = 136315138;
    sub_1002202C4();
    LODWORD(v86) = v65;
    dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v63;
    v72 = *(v88 + 8);
    v72(v71, v67);
    v73 = sub_1002204F8();
    v76 = sub_100005C3C(v73, v74, v75);

    *(v68 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v64, v86, "Removing old bundle folder: %s", v68, 0xCu);
    sub_100005BE0(v70);
    sub_100004858();

    v14 = v67;
    sub_100004858();

    v77 = v72;
    (*(v90 + 8))(v87, v91);
  }

  else
  {

    v77 = *(v16 + 8);
    v77(v63, v14);
    (*(v90 + 8))(v61, v91);
  }

  v78 = String._bridgeToObjectiveC()();

  v94 = 0;
  v79 = [v93 removeItemAtPath:v78 error:&v94];

  v80 = v89;
  v81 = v94;
  if (!v79)
  {
    sub_100005FBC();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v77(v92, v14);
  return (v77)(v80, v14);
}

uint64_t static DatabaseMigrator.removeSecurityApplicationGroup(fileManager:oldDatabaseURL:bundleID:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v89 = a3;
  v90 = a1;
  type metadata accessor for Logger();
  sub_1000043C4();
  v85 = v6;
  v86 = v5;
  __chkstk_darwin(v5);
  sub_1000043F0();
  v80 = v7 - v8;
  sub_100005874();
  __chkstk_darwin(v9);
  v83 = &v78 - v10;
  v11 = type metadata accessor for URL();
  sub_1000043C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000043F0();
  v79 = v15 - v16;
  sub_100005874();
  v18 = __chkstk_darwin(v17);
  v20 = &v78 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v78 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v78 - v25;
  __chkstk_darwin(v24);
  sub_1002204CC();
  __chkstk_darwin(v27);
  v29 = &v78 - v28;
  URL.deletingLastPathComponent()();
  URL.deletingLastPathComponent()();
  v84 = v13;
  v30 = *(v13 + 8);
  v30(v26, v11);
  URL.deletingLastPathComponent()();
  v93 = v30;
  v30(v4, v11);
  URL.deletingLastPathComponent()();
  v31 = URL.path(percentEncoded:)(1);
  object = v31._object;
  v88 = v23;
  v32 = v89;
  v34 = URL.lastPathComponent.getter() == v32 && v33 == v87;
  countAndFlagsBits = v31._countAndFlagsBits;
  if (v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v36 = v83;
  static GKLog.cache.getter();
  v37 = *(v84 + 16);
  v82 = v29;
  v37(v20, v29, v11);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    sub_1002204E0();
    v40 = swift_slowAlloc();
    v78 = v13 + 8;
    v41 = v40;
    sub_1002204EC();
    v42 = swift_slowAlloc();
    v94 = v42;
    *v41 = 136315138;
    sub_1002202C4();
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v93(v20, v11);
    v46 = sub_100005C3C(v43, v45, &v94);
    v32 = v89;

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Removing old database folder: %s", v41, 0xCu);
    sub_100005BE0(v42);
    sub_100004858();

    sub_100004858();
  }

  else
  {

    v93(v20, v11);
  }

  (*(v85 + 8))(v36, v86);
  v29 = v82;
  v47 = v82;
  URL.path(percentEncoded:)(1);
  String._bridgeToObjectiveC()();
  sub_100005FBC();

  v94 = 0;
  v48 = [v90 removeItemAtPath:v47 error:&v94];

  v49 = v94;
  if (!v48)
  {
    goto LABEL_16;
  }

  v50 = v94;
LABEL_13:
  v51 = String._bridgeToObjectiveC()();
  v94 = 0;
  v52 = [v90 contentsOfDirectoryAtPath:v51 error:&v94];

  v49 = v94;
  if (!v52)
  {
LABEL_16:
    v58 = v49;

    goto LABEL_17;
  }

  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v49;

  v55 = *(v53 + 16);

  v57 = v79;
  v56 = v80;
  if (!v55)
  {
    if (URL.lastPathComponent.getter() == v32 && v62 == v87)
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    static GKLog.cache.getter();
    (*(v84 + 16))(v57, v29, v11);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      sub_1002204E0();
      v67 = swift_slowAlloc();
      v82 = v29;
      v68 = v67;
      sub_1002204EC();
      v89 = swift_slowAlloc();
      v94 = v89;
      *v68 = 136315138;
      sub_1002202C4();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = sub_1002204F8();
      (v93)(v72);
      v73 = sub_100005C3C(v69, v71, &v94);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Removing old bundle folder: %s", v68, 0xCu);
      sub_100005BE0(v89);
      sub_100004858();

      v29 = v82;
      sub_100004858();

      (*(v85 + 8))(v80, v86);
    }

    else
    {

      v74 = sub_1002204F8();
      (v93)(v74);
      (*(v85 + 8))(v56, v86);
    }

    v75 = String._bridgeToObjectiveC()();

    v94 = 0;
    v76 = [v90 removeItemAtPath:v75 error:&v94];

    if (v76)
    {
      v77 = v94;
      goto LABEL_18;
    }

    v58 = v94;
LABEL_17:
    v59 = _convertNSErrorToError(_:)();

    v92 = v59;
    swift_willThrow();
    goto LABEL_18;
  }

LABEL_15:

LABEL_18:
  v60 = v93;
  v93(v88, v11);
  return v60(v29, v11);
}

void sub_10021FD20()
{
  sub_10000469C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for URL();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v3;
  v1();
  (*(v6 + 8))(v9, v4);

  sub_1000057D8();
}

id sub_10021FE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DatabaseMigrator(0);
  v9 = objc_allocWithZone(v8);
  v18[3] = sub_100220488();
  v18[4] = &protocol witness table for NSPersistentStoreCoordinator;
  v18[0] = a3;
  v10 = OBJC_IVAR___GKDatabaseMigrator_oldDatabaseURL;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v9[v10], a1, v11);
  v13(&v9[OBJC_IVAR___GKDatabaseMigrator_newDatabaseURL], a2, v11);
  sub_1001E07C4(v18, &v9[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator]);
  *&v9[OBJC_IVAR___GKDatabaseMigrator_options] = a4;
  v17.receiver = v9;
  v17.super_class = v8;
  v14 = objc_msgSendSuper2(&v17, "init");
  v15 = *(v12 + 8);
  v15(a2, v11);
  v15(a1, v11);
  sub_100005BE0(v18);
  return v14;
}

id sub_100220000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  __chkstk_darwin(a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a3, a6);
  v18 = sub_100220130(a1, a2, v15, a4, v17, a6, a7);
  (*(v13 + 8))(a3, a6);
  return v18;
}

id sub_100220130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v24[3] = a6;
  v24[4] = a7;
  v15 = sub_100005668(v24);
  (*(*(a6 - 8) + 32))(v15, a3, a6);
  v16 = OBJC_IVAR___GKDatabaseMigrator_oldDatabaseURL;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&a5[v16], a1, v17);
  v19(&a5[OBJC_IVAR___GKDatabaseMigrator_newDatabaseURL], a2, v17);
  sub_1001E07C4(v24, &a5[OBJC_IVAR___GKDatabaseMigrator_persistentStoreCoordinator]);
  *&a5[OBJC_IVAR___GKDatabaseMigrator_options] = a4;
  v23.receiver = a5;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "init");
  v21 = *(v18 + 8);
  v21(a2, v17);
  v21(a1, v17);
  sub_100005BE0(v24);
  return v20;
}

unint64_t sub_1002202C4()
{
  result = qword_1003B5C10;
  if (!qword_1003B5C10)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5C10);
  }

  return result;
}

uint64_t type metadata accessor for DatabaseMigrator(uint64_t a1)
{
  result = qword_1003B7518;
  if (!qword_1003B7518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100220370(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100220418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100220488()
{
  result = qword_1003B7528;
  if (!qword_1003B7528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B7528);
  }

  return result;
}

void sub_100220504(uint64_t a1@<X8>)
{

  sub_100254374(0xD00000000000002BLL, (a1 - 32) | 0x8000000000000000);
}

id sub_100220588()
{
  type metadata accessor for SecureFileLocator(0);
  v0 = [objc_opt_self() defaultManager];
  result = sub_1002205DC(v0);
  qword_1003C0AC0 = result;
  return result;
}

id sub_1002205DC(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_1002209C0();
  if (!container_query_create() || (container_query_set_class(), container_query_operation_set_flags(), container_query_set_persona_unique_string(), !container_query_get_single_result()) || !container_get_path() || (v13 = container_copy_sandbox_token()) == 0 || (v14 = v13, sandbox_extension_consume() < 0))
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  sub_1001A9674(v5, 1, 1, v6);
  URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
  sub_1001A974C(v5, &qword_1003B5800, &qword_1002C40D0);
  (*(v7 + 16))(v10, v12, v6);
  v15 = objc_allocWithZone(v1);
  v16 = a1;
  v17 = sub_100220A10(v16, v10);
  (*(v7 + 8))(v12, v6);
  free(v14);
  container_query_free();

  return v17;
}

id sub_10022093C()
{
  if (qword_1003B54F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003C0AC0;

  return v1;
}

uint64_t sub_1002209C0()
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result != 1)
  {
    type metadata accessor for ProcessExiter();
    sub_100254374(0xD00000000000003ELL, 0x800000010030CBE0);
  }

  return result;
}

id sub_100220A10(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___GKSecureFileLocator_fileManager] = a1;
  (*(v11 + 16))(&v3[OBJC_IVAR___GKSecureFileLocator_rootDirectory], a2, v10);
  strcpy(v20, "Library/Caches");
  v20[15] = -18;
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.isDirectory(_:), v6);
  sub_1001B6954();
  v14 = a1;
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 32))(&v3[OBJC_IVAR___GKSecureFileLocator_parentCachesDirectory], v13, v10);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "init");

  (*(v11 + 8))(a2, v10);
  return v15;
}

void sub_100220C84()
{
  sub_10000469C();
  v2 = v1;
  v3 = type metadata accessor for Logger();
  sub_1000043C4();
  v26 = v4;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  v9 = type metadata accessor for URL();
  sub_1000043C4();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_1002209C0();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v2 containerURLForSecurityApplicationGroupIdentifier:v18];

  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 16))(v15, v17, v9);
    objc_allocWithZone(v0);
    sub_100220A10(v2, v15);
    (*(v11 + 8))(v17, v9);
  }

  else
  {
    v20 = v3;
    v21 = v26;
    static GKLog.cache.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to locate application group container.", v24, 2u);
      sub_1000043D8(v24);
    }

    (*(v21 + 8))(v8, v20);
  }

  sub_1000057D8();
}

void sub_100220F48()
{
  sub_10000469C();
  v26._countAndFlagsBits = v1;
  v26._object = v2;
  v25 = v3;
  v5 = v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  sub_1000043C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000043B4();
  v12 = v11 - v10;
  v13 = type metadata accessor for URL();
  sub_1000043C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000043B4();
  v19 = v18 - v17;
  (*(v15 + 16))(v18 - v17, v0 + OBJC_IVAR___GKSecureFileLocator_parentCachesDirectory, v13);

  v20._countAndFlagsBits = 47;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = v25;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  String.append(_:)(v26);
  v23 = sub_100222780();
  v24(v23);
  sub_1001B6954();
  URL.appending<A>(path:directoryHint:)();
  (*(v8 + 8))(v12, v6);

  (*(v15 + 8))(v19, v13);
  sub_1000057D8();
}

void sub_10022115C()
{
  sub_10000469C();
  v0 = type metadata accessor for URL.DirectoryHint();
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000043B4();
  v6 = v5 - v4;
  v7 = type metadata accessor for URL();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043B4();
  v13 = v12 - v11;
  sub_100220F48();
  v14 = sub_100222780();
  v15(v14);
  sub_1001B6954();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v6, v0);
  (*(v9 + 8))(v13, v7);
  sub_1000057D8();
}

id sub_10022133C()
{
  sub_10000469C();
  v24 = v0;
  v2 = v1;
  v3 = type metadata accessor for URL();
  sub_1000043C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000043B4();
  v9 = v8 - v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = v2;
  v24(v10, v12, v13, v15, v16, v18);

  URL._bridgeToObjectiveC()(v20);
  (*(v5 + 8))(v9, v3);
  sub_1000057D8();

  return v21;
}

void sub_1002214A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_10000469C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  type metadata accessor for Logger();
  sub_1000043C4();
  v60 = v29;
  v61 = v28;
  __chkstk_darwin(v28);
  sub_1000043B4();
  v59 = v31 - v30;
  v32 = type metadata accessor for URL.DirectoryHint();
  sub_1000043C4();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_1000043B4();
  v38 = v37 - v36;
  v39 = type metadata accessor for URL();
  sub_1000043C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_1000043B4();
  v45 = v44 - v43;
  sub_10022115C();
  if ((a21 & 1) == 0)
  {
    goto LABEL_4;
  }

  v62 = v39;
  v63 = v27;
  v46 = *(v21 + OBJC_IVAR___GKSecureFileLocator_fileManager);
  URL._bridgeToObjectiveC()(OBJC_IVAR___GKSecureFileLocator_fileManager);
  v48 = v47;
  v64[0] = 0;
  v49 = [v46 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:v64];

  if (v49)
  {
    v50 = v64[0];
    v39 = v62;
    v27 = v63;
LABEL_4:
    v64[0] = v25;
    v64[1] = v23;
    (*(v34 + 104))(v38, enum case for URL.DirectoryHint.notDirectory(_:), v32);
    sub_1001B6954();
    URL.appending<A>(path:directoryHint:)();
    (*(v34 + 8))(v38, v32);
    (*(v41 + 8))(v45, v39);
    v51 = 0;
    v52 = v27;
    goto LABEL_8;
  }

  v53 = v64[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static GKLog.cache.getter();
  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    swift_errorRetain();
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "Failed to create secure directory: %@", v56, 0xCu);
    sub_1001A974C(v57, &unk_1003B6180, &qword_1002C32E0);
    sub_1000043D8(v57);
    sub_1000043D8(v56);
  }

  (*(v60 + 8))(v59, v61);
  v39 = v62;
  (*(v41 + 8))(v45, v62);
  v51 = 1;
  v52 = v63;
LABEL_8:
  sub_1001A9674(v52, v51, 1, v39);
  sub_1000057D8();
}

void sub_100221C24()
{
  sub_10000469C();
  v0 = type metadata accessor for URL();
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000043B4();
  v6 = v5 - v4;
  sub_100220F48();
  sub_100221D1C();
  (*(v2 + 8))(v6, v0);
  sub_1000057D8();
}

id sub_100221D1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  URL._bridgeToObjectiveC()(v6);
  v10 = v9;
  v19 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v9 error:&v19];

  v11 = v19;
  if (v1)
  {

    return v11;
  }

  else
  {
    v13 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static GKLog.cache.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to remove item: %@", v16, 0xCu);
      sub_1001A974C(v17, &unk_1003B6180, &qword_1002C32E0);
      sub_1000043D8(v17);
      sub_1000043D8(v16);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_10022204C()
{
  v1 = type metadata accessor for URL();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043B4();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR___GKSecureFileLocator_parentCachesDirectory, v1);
  sub_100222140();
  return (*(v3 + 8))(v7, v1);
}

void sub_100222140()
{
  sub_10000469C();
  v1 = v0;
  v47 = v2;
  v45._clients = v3;
  v4 = type metadata accessor for Logger();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  v11 = type metadata accessor for URL();
  sub_1000043C4();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v45._baseURL = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  URL._bridgeToObjectiveC()(&v45);
  v20 = v19;
  v48 = 0;
  v45._reserved = v1;
  v21 = [v1 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:0 options:0 error:&v48];

  v22 = v48;
  if (v21)
  {
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v22;

    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = v13 + 16;
      v27 = *(v13 + 16);
      v28 = *(v13 + 80);
      v45._urlString = v23;
      v29 = v23 + ((v28 + 32) & ~v28);
      v30 = *(v13 + 72);
      v46 = v26;
      v31 = (v26 - 8);
      while (1)
      {
        v27(v18, v29, v11);
        if (!v47)
        {
          goto LABEL_13;
        }

        if (URL.isFileURL.getter())
        {
          break;
        }

LABEL_14:
        (*v31)(v18, v11);
        v29 += v30;
        if (!--v25)
        {
          goto LABEL_18;
        }
      }

      v32 = v27;
      baseURL = v45._baseURL;
      URL.deletingPathExtension()();
      v34 = URL.lastPathComponent.getter();
      v36 = v35;
      (*v31)(baseURL, v11);
      if (v34 == v45._clients && v36 == v47)
      {

        v27 = v32;
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v32;
        if ((v38 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_13:
      sub_100221D1C();
      goto LABEL_14;
    }

LABEL_18:
  }

  else
  {
    v39 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static GKLog.cache.getter();
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to retrieve contents of directory with error: %@", v42, 0xCu);
      sub_1001A974C(v43, &unk_1003B6180, &qword_1002C32E0);
      sub_1000043D8(v43);
      sub_1000043D8(v42);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
  }

  sub_1000057D8();
}

uint64_t type metadata accessor for SecureFileLocator(uint64_t a1)
{
  result = qword_1003B7570;
  if (!qword_1003B7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002226E0(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100222794(uint64_t a1, void *a2)
{
  sub_100006454((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;

    return sub_1001D1394();
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

id PseudonymManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(IDSService);
  result = sub_100223638(0xD000000000000027, 0x800000010030CD20);
  if (result)
  {
    *&v0[OBJC_IVAR___GKPseudonymManager_service] = result;
    result = [objc_allocWithZone(GKFireworksPseudonymManager) initWithService:result];
    if (result)
    {
      *&v0[OBJC_IVAR___GKPseudonymManager_fwManager] = result;
      v4.receiver = v0;
      v4.super_class = ObjectType;
      return objc_msgSendSuper2(&v4, "init");
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100222900()
{
  sub_1000057FC();
  v1 = *(v0[19] + OBJC_IVAR___GKPseudonymManager_fwManager);
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100222A10;
  v2 = swift_continuation_init();
  v3 = sub_1001A6C04(&qword_1003B7590, &qword_1002C6648);
  sub_100004558(v3);
  v0[11] = 1107296256;
  v0[12] = sub_100208D74;
  v0[13] = &unk_10036CFC0;
  v0[14] = v2;
  [v1 provisionPseudonymIfNeeded:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100222A10()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_100222C5C;
  }

  else
  {
    v5 = sub_100222B14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100222B14()
{
  sub_1001AFA50();
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 URI];
    v3 = [v2 prefixedURI];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = *(v0 + 8);

    return v7(v4, v6);
  }

  else
  {
    sub_1002236B4();
    v9 = sub_100223A3C();
    *v10 = 0;
    *(v10 + 8) = 2;
    swift_willThrow();
    sub_100223A3C();
    *v11 = v9;
    *(v11 + 8) = 0;
    swift_willThrow();
    sub_1000046F8();

    return v12();
  }
}

uint64_t sub_100222C5C()
{
  sub_1000057FC();
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 168);
  sub_1002236B4();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  swift_willThrow();
  sub_1000046F8();

  return v4();
}

uint64_t sub_100222D70(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100222E18;

  return PseudonymManager.fetchPseudonym()();
}

uint64_t sub_100222E18()
{
  sub_1001AFA50();
  v2 = v0;
  sub_1000057F0();
  v4 = v3;
  sub_100006028();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_100006028();
  *v9 = v8;

  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = 0;
    v12 = v11;
  }

  v13 = *(v4 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  sub_1000046F8();

  return v14();
}

uint64_t PseudonymManager.revokePseudonym(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return sub_100004548();
}

uint64_t sub_100222FB0()
{
  sub_1001AFA50();
  v1 = *(v0[20] + OBJC_IVAR___GKPseudonymManager_fwManager);
  v0[21] = v1;
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_1002230E4;
  v4 = swift_continuation_init();
  v5 = sub_1001A6C04(&unk_1003B6BE0, &qword_1002C37C8);
  sub_100004558(v5);
  v0[11] = 1107296256;
  v0[12] = sub_100222794;
  v0[13] = &unk_10036CFE8;
  v0[14] = v4;
  [v2 revokePseudonym:v3 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002230E4()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_100223248;
  }

  else
  {
    v5 = sub_1002231E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002231E8()
{
  sub_100005528();
  v1 = *(v0 + 176);

  sub_1000046F8();

  return v2();
}

uint64_t sub_100223248()
{
  sub_1001AFA50();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  sub_1002236B4();
  swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 1;
  swift_willThrow();
  sub_1000046F8();

  return v5();
}

uint64_t sub_100223380(uint64_t a1, void *aBlock, void *a3)
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
  v8[1] = sub_100223454;

  return PseudonymManager.revokePseudonym(_:)(v5, v7);
}

uint64_t sub_100223454()
{
  sub_1001AFA50();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100006028();
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

id sub_100223638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

unint64_t sub_1002236B4()
{
  result = qword_1003B7598;
  if (!qword_1003B7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7598);
  }

  return result;
}

uint64_t sub_10022372C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100223748(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100223788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002237CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1002237F4()
{
  sub_1000057FC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100223A38;

  return sub_100223380(v2, v3, v4);
}

uint64_t sub_1002238A4()
{
  sub_1000057FC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10022394C;

  return sub_100222D70(v2, v3);
}

uint64_t sub_10022394C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100006028();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_100223A3C()
{

  return swift_allocError();
}

void sub_100223A5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v113, "relationships");
  HIWORD(v113[0]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v109);
  sub_1001B2E34(&v108);
  if (!v110)
  {
    sub_1001B2DDC(&v109, &qword_1003B5808, &qword_1002C32D0);
    goto LABEL_7;
  }

  v10 = sub_1001A6C04(&qword_1003B6320, &qword_1002C6AE0);
  if ((sub_1002333BC(&v107, &v109, (&type metadata for Any + 1)) & 1) == 0)
  {
LABEL_7:
    sub_100232168(v113);
LABEL_79:
    memcpy(a2, v113, 0xC8uLL);
    return;
  }

  v95 = v6;
  v96 = v9;
  v101 = a2;
  v11 = v107;
  v12 = sub_100233158();
  sub_1001AFB10(v12, 0xE600000000000000, v11, v113);
  if (*(&v113[1] + 1))
  {
    v13 = sub_100232FB0();
    if (sub_1002333BC(v13, v14, v15))
    {
      sub_100228EE4(*&v106[0], v111);
      v99 = v111[1];
      v100 = v111[0];
      v97 = v111[3];
      v98 = v111[2];

      goto LABEL_10;
    }
  }

  else
  {
    sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
LABEL_10:
  v16 = sub_100233158();
  sub_1001AFB10(v16 & 0xFFFFFFFFFFFFLL | 0x73000000000000, 0xE700000000000000, v11, v113);
  if (!*(&v113[1] + 1))
  {
    sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    goto LABEL_24;
  }

  sub_1001A6C04(&qword_1003B76B8, &qword_1002C6AE8);
  sub_100232FB0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v24 = 0;
LABEL_38:
    sub_1001AFB10(1701667175, 0xE400000000000000, v11, v113);
    if (!*(&v113[1] + 1))
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
      goto LABEL_44;
    }

    v35 = sub_100232FB0();
    if ((sub_1002333BC(v35, v36, v37) & 1) == 0)
    {
LABEL_44:
      v102 = 0;
      v39 = 0;
LABEL_45:
      v103 = 0;
      v40 = 0;
LABEL_46:
      v95 = 0;
      v96 = 0;
      goto LABEL_47;
    }

    v38 = *&v106[0];
    sub_100233780();
    if (*(&v113[1] + 1))
    {
      sub_100232FB0();
      if (swift_dynamicCast())
      {
        v39 = *(&v106[0] + 1);
        v102 = *&v106[0];
        goto LABEL_83;
      }
    }

    else
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    }

    sub_100233780();
    if (*(&v113[1] + 1))
    {
      sub_100232FB0();
      if (swift_dynamicCast())
      {
        *&v113[0] = *&v106[0];
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v60;
        goto LABEL_83;
      }
    }

    else
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    }

    v102 = 0;
    v39 = 0;
LABEL_83:
    v68 = sub_100233510();
    sub_1001AFB10(v68, v69, v38, v70);
    if (*(&v113[1] + 1))
    {
      sub_100232FB0();
      if (swift_dynamicCast())
      {
        v94 = *(&v106[0] + 1);
        v103 = *&v106[0];
        goto LABEL_94;
      }
    }

    else
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    }

    sub_1001AFB10(0x6449656C646E7562, 0xE800000000000000, v38, v113);
    if (*(&v113[1] + 1))
    {
      sub_100232FB0();
      v71 = swift_dynamicCast();
      v73 = *(&v106[0] + 1);
      v72 = *&v106[0];
      if (!v71)
      {
        v73 = 0;
      }

      v94 = v73;
      if (!v71)
      {
        v72 = 0;
      }

      v103 = v72;
    }

    else
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
      v94 = 0;
      v103 = 0;
    }

LABEL_94:
    sub_1001AFB10(0x6567616D69, 0xE500000000000000, v38, v113);
    if (*(&v113[1] + 1))
    {
      if (swift_dynamicCast())
      {
        v74 = v104;
        v75 = v105;

        *&v106[0] = v74;
        *(&v106[0] + 1) = v75;
        goto LABEL_102;
      }
    }

    else
    {
      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    }

    sub_1001AFB10(0x6C72556567616D69, 0xE800000000000000, v38, v113);

    if (*(&v113[1] + 1))
    {
      sub_100232FB0();
      v76 = swift_dynamicCast();
      v40 = v94;
      if ((v76 & 1) == 0)
      {
        v106[0] = 0uLL;
      }

      goto LABEL_103;
    }

    sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
    v106[0] = 0uLL;
LABEL_102:
    v40 = v94;
LABEL_103:
    if (!v39)
    {

      v102 = 0;
      goto LABEL_45;
    }

    if (!v40)
    {

      v102 = 0;
      v103 = 0;
      v39 = 0;
      goto LABEL_46;
    }

    v77 = *(&v106[0] + 1);
    if (*(&v106[0] + 1))
    {
      goto LABEL_117;
    }

    v78 = objc_allocWithZone(LSApplicationRecord);
    swift_bridgeObjectRetain_n();
    v79 = sub_10025352C(v103, v40, 0);
    if (v79)
    {

      static GKLog.daemon.getter();
      v40 = v94;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();

      LODWORD(v93) = v81;
      v82 = v81;
      v83 = v80;
      if (os_log_type_enabled(v80, v82))
      {
        v84 = sub_100005AE4();
        v92 = swift_slowAlloc();
        *&v113[0] = v92;
        *v84 = 136315138;

        v85 = sub_100005C3C(v103, v94, v113);

        *(v84 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v83, v93, "Using appicon://%s as placeholder for game icon URL absent in push notification.", v84, 0xCu);
        v86 = v92;
        sub_100005BE0(v92);
        sub_1000043D8(v86);
        v87 = v84;
        v40 = v94;
        sub_1000043D8(v87);
      }

      (*(v95 + 8))(v96, v4);
      v88._countAndFlagsBits = v103;
      strcpy(v113, "appicon://");
      BYTE11(v113[0]) = 0;
      HIDWORD(v113[0]) = -369098752;
      v88._object = v40;
      String.append(_:)(v88);

      v77 = *(&v113[0] + 1);
      v106[0] = v113[0];
    }

    else
    {
      v40 = v94;

      v77 = *(&v106[0] + 1);
    }

    if (v77)
    {
LABEL_117:
      v95 = *&v106[0];
      v96 = v77;
LABEL_47:
      sub_1001AFB10(0x676E656C6C616863, 0xE900000000000065, v11, v113);
      if (*(&v113[1] + 1))
      {
        v41 = sub_100232FB0();
        if ((sub_1002333BC(v41, v42, v43) & 1) == 0)
        {
          goto LABEL_53;
        }

        v44 = *&v106[0];
        v45 = sub_100233510();
        sub_1001AFB10(v45, v46, v44, v47);

        if (*(&v113[1] + 1))
        {
          sub_100232FB0();
          if (swift_dynamicCast())
          {
            v93 = *(&v106[0] + 1);
            v94 = *&v106[0];
            goto LABEL_54;
          }

LABEL_53:
          v93 = 0;
          v94 = 0;
LABEL_54:
          sub_1001AFB10(0x6F6272656461656CLL, 0xEB00000000647261, v11, v113);
          v91 = v39;
          if (*(&v113[1] + 1))
          {
            v48 = sub_100232FB0();
            if ((sub_1002333BC(v48, v49, v50) & 1) == 0)
            {
              goto LABEL_72;
            }

            v51 = *&v106[0];
            v52 = sub_100233510();
            sub_1001AFB10(v52, v53, v51, v54);
            if (*(&v113[1] + 1))
            {
              sub_100232FB0();
              if (swift_dynamicCast())
              {
                v55 = *(&v106[0] + 1);
                v56 = *&v106[0];
                sub_1001AFB10(1701667182, 0xE400000000000000, v51, v113);

                if (*(&v113[1] + 1))
                {
                  v57 = swift_dynamicCast();
                  if (v57)
                  {
                    v58 = *&v106[0];
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (v57)
                  {
                    v59 = *(&v106[0] + 1);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v92 = v59;
                }

                else
                {
                  sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
                  v58 = 0;
                  v92 = 0;
                }

                v61 = v55;
LABEL_73:
                sub_1001AFB10(0x7974697669746361, 0xE800000000000000, v11, v113);

                if (*(&v113[1] + 1))
                {
                  v62 = v40;
                  if (sub_1002333BC(v106, v113, (&type metadata for Any + 1)))
                  {
                    v90 = v58;
                    v63 = sub_100228DC4(*&v106[0]);
                    v40 = v64;
                    v10 = v65;
                    v67 = v66;
                    v58 = v90;

LABEL_78:
                    v106[0] = v100;
                    v106[1] = v99;
                    v106[2] = v98;
                    v106[3] = v97;
                    *&v106[4] = v24;
                    *(&v106[4] + 1) = v102;
                    *&v106[5] = v91;
                    *(&v106[5] + 1) = v103;
                    *&v106[6] = v62;
                    *(&v106[6] + 1) = v95;
                    *&v106[7] = v96;
                    *(&v106[7] + 1) = v94;
                    *&v106[8] = v93;
                    *(&v106[8] + 1) = v56;
                    *&v106[9] = v61;
                    *(&v106[9] + 1) = v58;
                    *&v106[10] = v92;
                    *(&v106[10] + 1) = v63;
                    *&v106[11] = v40;
                    *(&v106[11] + 1) = v10;
                    *&v106[12] = v67;
                    AppMetadataNetworkFetcher.init(batchTask:)();
                    memcpy(v113, v106, 0xC8uLL);
                    a2 = v101;
                    goto LABEL_79;
                  }
                }

                else
                {
                  v62 = v40;
                  sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
                }

                v63 = 0;
                sub_100233680();
                v67 = 0;
                goto LABEL_78;
              }

LABEL_72:
              v56 = 0;
              v61 = 0;
              v58 = 0;
              v92 = 0;
              goto LABEL_73;
            }
          }

          sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
          goto LABEL_72;
        }
      }

      sub_1001B2DDC(v113, &qword_1003B5808, &qword_1002C32D0);
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v102 = v4;
  v103 = v11;
  v17 = *(*&v106[0] + 16);
  if (v17)
  {
    v18 = *&v106[0] + 32;
    v19 = _swiftEmptyArrayStorage;
    do
    {
      sub_1001A7AE8(v18, v113);
      sub_100005C2C(v113, v106);
      if (sub_1002333BC(v112, v106, (&type metadata for Any + 1)))
      {
        v20 = *&v112[0];
        if (*&v112[0])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001DF2C0();
            v19 = v22;
          }

          v21 = v19[2];
          if (v21 >= v19[3] >> 1)
          {
            sub_1001DF2C0();
            v19 = v23;
          }

          v19[2] = v21 + 1;
          v19[v21 + 4] = v20;
        }
      }

      v18 += 32;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v25 = 0;
  v26 = v19[2];
  v24 = _swiftEmptyArrayStorage;
LABEL_27:
  v11 = v103;
  while (1)
  {
    if (v26 == v25)
    {

      v4 = v102;
      goto LABEL_38;
    }

    if (v25 >= v19[2])
    {
      break;
    }

    sub_100228EE4(v27, v112);
    v113[0] = v112[0];
    v113[1] = v112[1];
    v113[2] = v112[2];
    v113[3] = v112[3];

    if (*(&v112[0] + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF200();
        v24 = v33;
      }

      v28 = v24[2];
      if (v28 >= v24[3] >> 1)
      {
        sub_1001DF200();
        v24 = v34;
      }

      ++v25;
      v106[2] = v113[2];
      v106[3] = v113[3];
      v106[0] = v113[0];
      v29 = v113[0];
      v106[1] = v113[1];
      v24[2] = v28 + 1;
      v30 = &v24[8 * v28];
      v31 = v106[1];
      v32 = v106[3];
      v30[4] = v106[2];
      v30[5] = v32;
      v30[2] = v29;
      v30[3] = v31;
      goto LABEL_27;
    }

    ++v25;
  }

  __break(1u);
}

uint64_t sub_1002246A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_100232F48(sub_1002246C0);
}

uint64_t sub_1002246C0()
{
  sub_100005838();
  sub_10023305C(0x656C746974);
  *(v0 + 8) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_100233608();
  v6 = sub_1001B2E34(v4);
  if (*(v0 - 40))
  {
    sub_100233344(v6, v7, v8, &type metadata for String);
    sub_1002334D0();
  }

  else
  {
    sub_1001B2DDC(v2, &qword_1003B5808, &qword_1002C32D0);
    sub_100233680();
  }

  sub_100233434();
  v3[22] = v9;
  v3[23] = 0xEE00656C74695465;
  AnyHashable.init<A>(_:)();
  sub_1001F77B8();
  sub_1001AFA68(v10, v11);
  v12 = sub_1001B2E34(v5);
  if (v3[19])
  {
    sub_10023330C(v12, v13, v14, &type metadata for String);
    sub_1002334A0();
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    sub_1001B2DDC(v1, &qword_1003B5808, &qword_1002C32D0);
    v17 = 0;
  }

  v3[31] = v17;
  v18 = swift_task_alloc();
  v3[32] = v18;
  *v18 = v3;
  sub_10023303C(v18);
  sub_1001D185C();

  return sub_100229C18(v19, v20, v21, v22, v23);
}

uint64_t sub_100224864(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_100232F48(sub_10022487C);
}

uint64_t sub_10022487C()
{
  sub_100005838();
  sub_10023305C(0x6567617373656DLL);
  *(v0 + 8) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_100233608();
  v6 = sub_1001B2E34(v4);
  if (*(v0 - 40))
  {
    sub_100233344(v6, v7, v8, &type metadata for String);
    sub_1002334D0();
    if (v10)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }
  }

  else
  {
    sub_1001B2DDC(v2, &qword_1003B5808, &qword_1002C32D0);
    sub_100233680();
  }

  v3[30] = v4;
  v3[22] = 0xD000000000000010;
  v3[23] = 0x800000010030CF80;
  AnyHashable.init<A>(_:)();
  sub_1001F77B8();
  sub_1001AFA68(v11, v12);
  v13 = sub_1001B2E34(v5);
  if (v3[19])
  {
    sub_10023330C(v13, v14, v15, &type metadata for String);
    sub_1002334A0();
    if (v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    sub_1001B2DDC(v1, &qword_1003B5808, &qword_1002C32D0);
    v17 = 0;
  }

  v3[31] = v17;
  v18 = swift_task_alloc();
  v3[32] = v18;
  *v18 = v3;
  v19 = sub_10023303C(v18);

  return sub_100229C18(v19, v20, v21, v22, v23);
}

uint64_t sub_100224A38()
{
  sub_1001AFA50();
  v0[5] = v2;
  if (v1[5])
  {
    swift_task_alloc();
    sub_1000062E8();
    v0[6] = v3;
    *v3 = v4;
    v3[1] = sub_100224BF4;
    sub_1001D18C4();

    return sub_10022C00C(v5, v6, v7, v8, v9);
  }

  else if (v1[7])
  {
    swift_task_alloc();
    sub_1000062E8();
    v0[7] = v12;
    *v12 = v13;
    v12[1] = sub_100224CD4;
    sub_1001D18C4();

    return sub_10022CB70(v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = v1[1];
    v0[8] = *v1;
    v0[9] = v20;
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    sub_1002332C8(v21);
    sub_1001E4240();
    sub_1001D18C4();

    return sub_10022C720(v22, v23);
  }
}

uint64_t sub_100224BF4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_100224CD4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_100224DB4()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  sub_100233018(v3, v4);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 88) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100224E90()
{
  sub_100005528();
  if (*(v0 + 88))
  {
    swift_task_alloc();
    sub_1000062E8();
    *(v0 + 96) = v1;
    *v1 = v2;
    v3 = sub_1002333F0(v1);

    return sub_10022CB70(v3, v4, v5, v6, v7);
  }

  else
  {
    type metadata accessor for URL();
    v9 = sub_10023314C();
    sub_1001A9674(v9, v10, 1, v11);
    sub_1000046F8();

    return v12();
  }
}

uint64_t sub_100224F68()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_100225064()
{
  sub_100005528();
  v0[33] = v1;
  v2 = type metadata accessor for URL();
  v0[34] = v2;
  sub_1001B6A00(v2);
  v0[35] = v3;
  v0[36] = sub_1002335CC();
  v0[37] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v0[38] = v4;
  sub_1001B6A00(v4);
  v0[39] = v5;
  v0[40] = sub_1002335CC();
  v0[41] = swift_task_alloc();
  v6 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  sub_100006A0C(v6);
  v0[42] = sub_1002335CC();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v7 = sub_10000448C();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1002251B0()
{
  v2 = 0;
  sub_100233520();
  v3 = _swiftEmptyArrayStorage;
  v0[31] = _swiftEmptyArrayStorage;
  v0[45] = *(v0[33] + 16);
  v4 = &type metadata for String;
LABEL_2:
  v0[46] = v3;
  while (1)
  {
    while (1)
    {
      do
      {
        v0[47] = v2;
        v5 = v0[45];
        if (v2 == v5)
        {
          sub_1002332EC();

          sub_100233500();
          sub_1001F7468();

          __asm { BRAA            X2, X16 }
        }

        if (v2 >= v5)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          return;
        }

        v6 = *(v0[33] + 8 * v2 + 32);
        v7 = __OFADD__(v2++, 1);
        v0[48] = v2;
        if (v7)
        {
          goto LABEL_53;
        }
      }

      while (!*(v6 + 16));

      v8 = sub_1002334F0();
      v10 = sub_1001B247C(v8, v9);
      if (v11)
      {
        v12 = sub_1002336B8(v10);
        sub_1001A7AE8(v12, (v0 + 2));
        sub_1001B6ACC();
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v13 = v4;
    v14 = v0[21];
    v15 = v0[22];
    sub_1001E4070();
    sub_1001A9674(v16, v17, v18, v19);
    if (v14 != 0x6C6F626D7973 || v15 != 0xE600000000000000)
    {
      v21 = sub_100233698();
      if ((sub_100233624(v21, v22, 0x6C6F626D7973) & 1) == 0)
      {
        break;
      }
    }

    if (!*(v6 + 16))
    {
      break;
    }

    v23 = sub_1002334E0();
    v25 = sub_1001B247C(v23, v24);
    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = sub_1002336B8(v25);
    sub_1001A7AE8(v27, (v0 + 14));
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v28 = v0[30];
    v86 = v0[29];
    static GKLog.daemon.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (sub_1002332D4(v30))
    {
      v31 = sub_100005B50();
      sub_100233260(v31);
      _os_log_impl(&_mh_execute_header, v29, v30, "BulletinHelpers assembleAttachment assembling symbol url", v14, 2u);
      sub_100233130();
    }

    v33 = v0[43];
    v32 = v0[44];
    v34 = v0[41];
    v1 = v0[38];
    v35 = v0[39];

    (*(v35 + 8))(v34, v1);
    sub_10022B968(v86, v28, v33);

    sub_1001B2DDC(v32, &qword_1003B5800, &qword_1002C40D0);
    sub_100231B2C(v33, v32);
    sub_100233520();
    v4 = v13;
LABEL_32:
    v44 = v0[34];
    sub_1002319FC(v0[44], v0[42], &qword_1003B5800, &qword_1002C40D0);
    v45 = sub_10023314C();
    v47 = sub_1001A969C(v45, v46, v44);
    v48 = v0[42];
    if (v47 != 1)
    {
      v49 = v0[47];
      v51 = v0[36];
      v50 = v0[37];
      v52 = v0[34];
      v53 = v0[35];
      (*(v53 + 32))(v50, v0[42], v52);
      sub_100232FDC();
      v0[32] = v49;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55 = v0[23];
      v56 = v0[24];
      (*(v53 + 16))(v51, v50, v52);
      v57 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
      sub_100245618(v55, v56, v51, 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v58 = v0[44];
      v59 = v0[37];
      v1 = v0[34];
      v60 = v0[35];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v60 + 8))(v59, v1);
      sub_1001B2DDC(v58, &qword_1003B5800, &qword_1002C40D0);
      v2 = v0[48];
      sub_100233520();
      v4 = v13;
      goto LABEL_2;
    }

    sub_1001B2DDC(v0[44], &qword_1003B5800, &qword_1002C40D0);
    sub_1001B2DDC(v48, &qword_1003B5800, &qword_1002C40D0);
    v2 = v0[48];
  }

  if (v14 == v1 && v15 == 0xE600000000000000)
  {
  }

  else
  {
    v37 = sub_100233698();
    v39 = sub_100233624(v37, v38, v1);

    if ((v39 & 1) == 0)
    {

      v4 = v13;
      goto LABEL_32;
    }
  }

  v4 = v13;
  if (!*(v6 + 16) || (v40 = sub_100233158(), v41 = sub_1001B247C(v40 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000), (v42 & 1) == 0) || (v43 = sub_1002336B8(v41), sub_1001A7AE8(v43, (v0 + 6)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_32;
  }

  v63 = v0[26];
  v0[49] = v0[25];
  v0[50] = v63;
  static GKLog.daemon.getter();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (sub_1002332D4(v65))
  {
    v66 = sub_100005B50();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "BulletinHelpers assembleAttachment assembling avatar url", v66, 2u);
    sub_1000043D8(v66);
  }

  v67 = sub_1001F77B8();
  v68(v67);
  if (*(v6 + 16) && (v69 = sub_100233530(), v71 = sub_1001B247C(v69, v70), (v72 & 1) != 0))
  {
    v73 = sub_1002336B8(v71);
    sub_1001A7AE8(v73, (v0 + 10));

    if (swift_dynamicCast())
    {
      v0[51] = v0[28];
      swift_task_alloc();
      sub_1000062E8();
      v0[52] = v74;
      *v74 = v75;
      sub_100232F80(v74);
      sub_1001F7468();

      sub_10022C00C(v76, v77, v78, v79, v80);
      return;
    }
  }

  else
  {
  }

  v82 = swift_task_alloc();
  v0[53] = v82;
  *v82 = v0;
  sub_100006160(v82);
  sub_100005540();
  sub_1001F7468();

  sub_10022C720(v83, v84);
}

uint64_t sub_1002258B0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002259CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v19 = v14[43];
  v18 = v14[44];
  v20 = sub_100005558();
  sub_1001B2DDC(v20, v21, &qword_1002C40D0);
  sub_100231B2C(v19, v18);
  sub_100006AA0();
  while (2)
  {
    while (2)
    {
      sub_100233568();
      v22 = sub_10023314C();
      if (sub_1001A969C(v22, v23, v15) == 1)
      {
        sub_1002335B4(v14[44]);
        v24 = sub_100005558();
        v26 = sub_1001B2DDC(v24, v25, &qword_1002C40D0);
        v27 = v14[48];
      }

      else
      {
        v28 = sub_100233288();
        v29(v28);
        sub_100232FDC();
        v14[32] = v16;
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31 = sub_1002331B0();
        v32(v31);
        v33 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
        sub_100233540();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100233658();
        if (v34)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v17 = v14[44];
        v35 = v14[37];
        v16 = v14[34];
        v36 = v14[35];
        sub_1002331B0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v36 + 8))(v35, v16);
        sub_1001B2DDC(v17, &type metadata for Any, &qword_1002C40D0);
        v27 = v14[48];
        v14[46] = v14[31];
        sub_100006AA0();
      }

      while (1)
      {
        v14[47] = v27;
        v37 = v14[45];
        if (v27 == v37)
        {
          sub_1002332EC();

          sub_100233500();
          sub_100005B0C();

          return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
        }

        if (v27 >= v37)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        sub_1002336C4();
        v14[48] = v38;
        if (v39)
        {
          goto LABEL_41;
        }

        if (*(v17 + 16))
        {
          break;
        }

LABEL_14:
        ++v27;
      }

      v40 = sub_1002334F0();
      v42 = sub_1001B247C(v40, v41);
      if ((v43 & 1) == 0 || (v44 = sub_1002332BC(v42), sub_1001A7AE8(v44, (v14 + 2)), (sub_10023326C((v14 + 21), (v14 + 2)) & 1) == 0))
      {

        goto LABEL_14;
      }

      v15 = v14[21];
      v45 = v14[22];
      sub_1001E4070();
      sub_1001A9674(v46, v47, v48, v49);
      v50 = v15 == v16 && v45 == 0xE600000000000000;
      if (v50 || (sub_1002335E4() & 1) != 0)
      {
        if (*(v17 + 16))
        {
          v51 = sub_1002334E0();
          v53 = sub_1001B247C(v51, v52);
          if (v54)
          {
            v55 = sub_1002332BC(v53);
            sub_1001A7AE8(v55, (v14 + 14));
            if (sub_10023326C((v14 + 29), (v14 + 14)))
            {

              a10 = v14[29];
              a11 = v14[30];
              static GKLog.daemon.getter();
              v56 = Logger.logObject.getter();
              v17 = static os_log_type_t.info.getter();
              if (sub_1002332D4(v17))
              {
                v57 = sub_100005B50();
                sub_100233484(v57);
                _os_log_impl(&_mh_execute_header, v56, v17, "BulletinHelpers assembleAttachment assembling symbol url", v15, 2u);
                sub_1001E3DC0();
              }

              sub_1002337A0();
              v58 = *(v16 + 8);
              v16 += 8;
              v58(v45, v56);
              sub_10022B968(a10, a11, v17);

              sub_1002335B4(v15);
              sub_100231B2C(v17, v15);
              sub_100006AA0();
              continue;
            }
          }
        }
      }

      break;
    }

    sub_1002336D8();
    if (v50 && v45 == 0xE600000000000000)
    {
    }

    else
    {
      v61 = sub_100233624(v15, v45, v59);

      if ((v61 & 1) == 0)
      {
LABEL_36:

        continue;
      }
    }

    break;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_36;
  }

  v62 = sub_100233158();
  v63 = sub_1001B247C(v62 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000);
  if ((v64 & 1) == 0)
  {
    goto LABEL_36;
  }

  v65 = sub_1002332BC(v63);
  sub_1001A7AE8(v65, (v14 + 6));
  v26 = sub_10023326C((v14 + 25), (v14 + 6));
  if ((v26 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  sub_100233700(v26);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();
  if (sub_1002332D4(v76))
  {
    v77 = sub_100005B50();
    sub_100233484(v77);
    sub_100004894(&_mh_execute_header, v78, v79, "BulletinHelpers assembleAttachment assembling avatar url");
    sub_1001E3DC0();
  }

  v80 = sub_1002335A8();
  v81(v80);
  if (*(v17 + 16) && (v82 = sub_100233530(), v84 = sub_1001B247C(v82, v83), (v85 & 1) != 0))
  {
    v86 = sub_1002332BC(v84);
    sub_1001A7AE8(v86, (v14 + 10));

    if (sub_100233760(v87, v88, v89, &type metadata for String))
    {
      v14[51] = v14[28];
      swift_task_alloc();
      sub_1000062E8();
      v14[52] = v90;
      *v90 = v91;
      sub_100232F80(v90);
      sub_100005B0C();

      return sub_10022C00C(v92, v93, v94, v95, v96);
    }
  }

  else
  {
  }

  v98 = swift_task_alloc();
  v14[53] = v98;
  *v98 = v14;
  sub_100006160(v98);
  sub_100005B0C();

  return sub_10022C720(v99, v100);
}

uint64_t sub_100225F34()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  v1[18] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 432) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10022601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  if (v14[54])
  {
    swift_task_alloc();
    sub_1000062E8();
    v14[55] = v18;
    *v18 = v19;
    v18[1] = sub_1002265F4;
    sub_100005B0C();

    return sub_10022CB70(v20, v21, v22, v23, v24);
  }

  sub_100006AA0();
  while (2)
  {
    while (2)
    {
      sub_100233568();
      v27 = sub_10023314C();
      if (sub_1001A969C(v27, v28, v15) == 1)
      {
        sub_1002335B4(v14[44]);
        v29 = sub_100005558();
        v31 = sub_1001B2DDC(v29, v30, &qword_1002C40D0);
        v32 = v14[48];
      }

      else
      {
        v33 = sub_100233288();
        v34(v33);
        sub_100232FDC();
        v14[32] = v16;
        v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v35);

        v36 = sub_1002331B0();
        v37(v36);
        v38 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
        sub_100233540();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100233658();
        if (v39)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v17 = v14[44];
        v40 = v14[37];
        v16 = v14[34];
        v41 = v14[35];
        sub_1002331B0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v41 + 8))(v40, v16);
        sub_1001B2DDC(v17, &type metadata for Any, &qword_1002C40D0);
        v32 = v14[48];
        v14[46] = v14[31];
        sub_100006AA0();
      }

      while (1)
      {
        v14[47] = v32;
        v42 = v14[45];
        if (v32 == v42)
        {
          sub_1002332EC();

          sub_100233500();
          sub_100005B0C();

          return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
        }

        if (v32 >= v42)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        sub_1002336C4();
        v14[48] = v43;
        if (v44)
        {
          goto LABEL_45;
        }

        if (*(v17 + 16))
        {
          break;
        }

LABEL_18:
        ++v32;
      }

      v45 = sub_1002334F0();
      v47 = sub_1001B247C(v45, v46);
      if ((v48 & 1) == 0 || (v49 = sub_1002332BC(v47), sub_1001A7AE8(v49, (v14 + 2)), (sub_10023326C((v14 + 21), (v14 + 2)) & 1) == 0))
      {

        goto LABEL_18;
      }

      v15 = v14[21];
      v50 = v14[22];
      sub_1001E4070();
      sub_1001A9674(v51, v52, v53, v54);
      v55 = v15 == v16 && v50 == 0xE600000000000000;
      if (v55 || (sub_1002335E4() & 1) != 0)
      {
        if (*(v17 + 16))
        {
          v56 = sub_1002334E0();
          v58 = sub_1001B247C(v56, v57);
          if (v59)
          {
            v60 = sub_1002332BC(v58);
            sub_1001A7AE8(v60, (v14 + 14));
            if (sub_10023326C((v14 + 29), (v14 + 14)))
            {

              a10 = v14[29];
              a11 = v14[30];
              static GKLog.daemon.getter();
              v61 = Logger.logObject.getter();
              v17 = static os_log_type_t.info.getter();
              if (sub_1002332D4(v17))
              {
                v62 = sub_100005B50();
                sub_100233484(v62);
                _os_log_impl(&_mh_execute_header, v61, v17, "BulletinHelpers assembleAttachment assembling symbol url", v15, 2u);
                sub_1001E3DC0();
              }

              sub_1002337A0();
              v63 = *(v16 + 8);
              v16 += 8;
              v63(v50, v61);
              sub_10022B968(a10, a11, v17);

              sub_1002335B4(v15);
              sub_100231B2C(v17, v15);
              sub_100006AA0();
              continue;
            }
          }
        }
      }

      break;
    }

    sub_1002336D8();
    if (v55 && v50 == 0xE600000000000000)
    {
    }

    else
    {
      v66 = sub_100233624(v15, v50, v64);

      if ((v66 & 1) == 0)
      {
LABEL_40:

        continue;
      }
    }

    break;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_40;
  }

  v67 = sub_100233158();
  v68 = sub_1001B247C(v67 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000);
  if ((v69 & 1) == 0)
  {
    goto LABEL_40;
  }

  v70 = sub_1002332BC(v68);
  sub_1001A7AE8(v70, (v14 + 6));
  v31 = sub_10023326C((v14 + 25), (v14 + 6));
  if ((v31 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_46:
  sub_100233700(v31);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  if (sub_1002332D4(v80))
  {
    v81 = sub_100005B50();
    sub_100233484(v81);
    sub_100004894(&_mh_execute_header, v82, v83, "BulletinHelpers assembleAttachment assembling avatar url");
    sub_1001E3DC0();
  }

  v84 = sub_1002335A8();
  v85(v84);
  if (*(v17 + 16) && (v86 = sub_100233530(), v88 = sub_1001B247C(v86, v87), (v89 & 1) != 0))
  {
    v90 = sub_1002332BC(v88);
    sub_1001A7AE8(v90, (v14 + 10));

    if (sub_100233760(v91, v92, v93, &type metadata for String))
    {
      v14[51] = v14[28];
      swift_task_alloc();
      sub_1000062E8();
      v14[52] = v94;
      *v94 = v95;
      sub_100232F80(v94);
      sub_100005B0C();

      return sub_10022C00C(v96, v97, v98, v99, v100);
    }
  }

  else
  {
  }

  v102 = swift_task_alloc();
  v14[53] = v102;
  *v102 = v14;
  sub_100006160(v102);
  sub_100005B0C();

  return sub_10022C720(v103, v104);
}

uint64_t sub_1002265F4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100226710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4143726579616C70 && a2 == 0xEA00000000004449;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5255726174617661 && a2 == 0xE90000000000004CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701667182 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100226880(char a1)
{
  result = 0x4449726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x4143726579616C70;
      break;
    case 2:
      result = 0x5255726174617661;
      break;
    case 3:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100226904(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B7600, &qword_1002C69F0);
  sub_1000043C4();
  v5 = v4;
  sub_100006AB0();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_10023346C(a1, a1[3]);
  v9 = sub_100231430();
  sub_100233740(&type metadata for BulletinHelpers.BulletinRelationships.PlayerRelationship.CodingKeys, v10, v9);
  sub_10023368C();
  sub_10023302C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1000063DC();
    sub_10023302C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[13] = 2;
    sub_10023302C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[12] = 3;
    sub_10023302C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_100226A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10023332C();
  v25 = v24;
  v27 = v26;
  v28 = sub_1001A6C04(&qword_1003B75F0, &qword_1002C69E8);
  sub_1000043C4();
  v30 = v29;
  sub_100006AB0();
  __chkstk_darwin(v31);
  v33 = &v49 - v32;
  sub_1002331BC();
  v34 = sub_100231430();
  sub_100233384(&type metadata for BulletinHelpers.BulletinRelationships.PlayerRelationship.CodingKeys, v35, v34);
  if (v23)
  {
    sub_100005BE0(v25);
  }

  else
  {
    LOBYTE(v58[0]) = 0;
    sub_1002334C0();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v37;
    LOBYTE(v58[0]) = 1;
    sub_1002334C0();
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v39;
    v50 = v38;
    LOBYTE(v58[0]) = 2;
    sub_1002334C0();
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v40;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v42;
    (*(v30 + 8))(v33, v28);
    v44 = v53;
    *&v54 = v36;
    *(&v54 + 1) = v53;
    v46 = v50;
    v45 = v51;
    *&v55 = v50;
    *(&v55 + 1) = v52;
    *&v56 = v49;
    *(&v56 + 1) = v51;
    *&v57 = v41;
    *(&v57 + 1) = v43;
    sub_100231484(&v54, v58);
    sub_100005BE0(v25);
    v58[0] = v36;
    v58[1] = v44;
    v58[2] = v46;
    v58[3] = v52;
    v58[4] = v49;
    v58[5] = v45;
    v58[6] = v41;
    v58[7] = v43;
    sub_1002314BC(v58);
    v47 = v55;
    *v27 = v54;
    v27[1] = v47;
    v48 = v57;
    v27[2] = v56;
    v27[3] = v48;
  }

  sub_1002333A4();
}

uint64_t sub_100226CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100226E00(char a1)
{
  if (!a1)
  {
    return 0x44496D616461;
  }

  if (a1 == 1)
  {
    return 0x4449656C646E7562;
  }

  return 0x4C52556567616D69;
}

uint64_t sub_100226E54(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B7730, &qword_1002C6F98);
  sub_1000043C4();
  v5 = v4;
  sub_100006AB0();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_10023346C(a1, a1[3]);
  v9 = sub_1002326A0();
  sub_100233740(&type metadata for BulletinHelpers.BulletinRelationships.GameRelationship.CodingKeys, v10, v9);
  sub_10023368C();
  sub_10023302C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1000063DC();
    sub_10023302C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    sub_10023302C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_100226F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10023332C();
  v26 = v25;
  v28 = v27;
  v29 = sub_1001A6C04(&qword_1003B76F0, &qword_1002C6F78);
  sub_1000043C4();
  v31 = v30;
  sub_100006AB0();
  __chkstk_darwin(v32);
  v34 = &v44 - v33;
  sub_10023346C(v26, v26[3]);
  sub_1002326A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100005BE0(v26);
  }

  else
  {
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v36;
    sub_1002332B0();
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = v37;
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v34;
    v41 = v40;
    (*(v31 + 8))(v39, v29);
    sub_100005BE0(v26);
    v42 = v47;
    *v28 = v35;
    v28[1] = v42;
    v43 = v46;
    v28[2] = v45;
    v28[3] = v43;
    v28[4] = v38;
    v28[5] = v41;
  }

  sub_1002333A4();
}

uint64_t sub_1002271A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10022723C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10022728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10023332C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1001A6C04(&qword_1003B7738, &qword_1002C6FA0);
  sub_1000043C4();
  v26 = v25;
  sub_100006AB0();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  sub_10023346C(v23, v23[3]);
  sub_1002326F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v26 + 8))(v29, v24);
  sub_1002333A4();
}

uint64_t sub_1002273A8(void *a1)
{
  v5 = sub_1001A6C04(&qword_1003B7700, &qword_1002C6F80);
  sub_1000043C4();
  v7 = v6;
  sub_100006AB0();
  __chkstk_darwin(v8);
  sub_100006C10();
  sub_1002331BC();
  sub_1002326F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v1 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v3, v5);
  }

  sub_100005BE0(a1);
  return v1;
}

uint64_t sub_1002274DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1002275A4(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

void sub_1002275C8(uint64_t a1, uint64_t a2)
{
  sub_10023332C();
  sub_100233590(v5, v6, v7, v8, v9);
  v10 = sub_1001A6C04(&qword_1003B7740, &qword_1002C6FA8);
  sub_1000043C4();
  v12 = v11;
  sub_100006AB0();
  __chkstk_darwin(v13);
  sub_100006C10();
  sub_10023346C(v2, v2[3]);
  v14 = sub_100232748();
  sub_100233720(&type metadata for BulletinHelpers.BulletinRelationships.LeaderboardRelationship.CodingKeys, v15, v14);
  sub_10023368C();
  sub_10023321C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    sub_1000063DC();
    sub_10023321C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v12 + 8))(v4, v10);
  sub_1002333A4();
}

void sub_1002276D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10023332C();
  v24 = v23;
  sub_1001A6C04(&qword_1003B7710, &qword_1002C6F88);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v25);
  sub_100006C10();
  sub_1002331BC();
  v26 = sub_100232748();
  sub_100233384(&type metadata for BulletinHelpers.BulletinRelationships.LeaderboardRelationship.CodingKeys, v27, v26);
  if (!v22)
  {
    sub_10023322C();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1002332B0();
    sub_10023322C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = sub_10023307C();
    v29(v28);
  }

  sub_100005BE0(v24);
  sub_100233450();
  sub_1002333A4();
}

uint64_t sub_100227834(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1002278FC(char a1)
{
  if (a1)
  {
    return 0x6449726F646E6576;
  }

  else
  {
    return 7107189;
  }
}

void sub_10022792C(uint64_t a1, uint64_t a2)
{
  sub_10023332C();
  sub_100233590(v5, v6, v7, v8, v9);
  v10 = sub_1001A6C04(&qword_1003B7748, &qword_1002C6FB0);
  sub_1000043C4();
  v12 = v11;
  sub_100006AB0();
  __chkstk_darwin(v13);
  sub_100006C10();
  sub_10023346C(v2, v2[3]);
  v14 = sub_10023279C();
  sub_100233720(&type metadata for BulletinHelpers.BulletinRelationships.GameActivityRelationship.CodingKeys, v15, v14);
  sub_10023368C();
  sub_10023321C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    sub_1000063DC();
    sub_10023321C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v12 + 8))(v4, v10);
  sub_1002333A4();
}

void sub_100227A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10023332C();
  v24 = v23;
  sub_1001A6C04(&qword_1003B7720, &qword_1002C6F90);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v25);
  sub_100006C10();
  sub_1002331BC();
  v26 = sub_10023279C();
  sub_100233384(&type metadata for BulletinHelpers.BulletinRelationships.GameActivityRelationship.CodingKeys, v27, v26);
  if (!v22)
  {
    sub_10023322C();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1002332B0();
    sub_10023322C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v28 = sub_10023307C();
    v29(v28);
  }

  sub_100005BE0(v24);
  sub_100233450();
  sub_1002333A4();
}

uint64_t sub_100227B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726579616C70 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667175 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x69746341656D6167 && a2 == 0xEC00000079746976)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100227D94(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x73726579616C70;
      break;
    case 2:
      result = 1701667175;
      break;
    case 3:
      result = 0x676E656C6C616863;
      break;
    case 4:
      result = 0x6F6272656461656CLL;
      break;
    case 5:
      result = 0x69746341656D6167;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100227E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10023332C();
  v25 = v23;
  v27 = v26;
  v28 = sub_1001A6C04(&qword_1003B7650, &qword_1002C6A08);
  sub_1000043C4();
  v30 = v29;
  sub_100006AB0();
  __chkstk_darwin(v31);
  v33 = &v54 - v32;
  sub_10023346C(v27, v27[3]);
  sub_1002314EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = v25[1];
  v58[0] = *v25;
  v58[1] = v34;
  v35 = v25[3];
  v37 = *v25;
  v36 = v25[1];
  v58[2] = v25[2];
  v58[3] = v35;
  v57[4] = v37;
  v57[5] = v36;
  v38 = v25[3];
  v57[6] = v25[2];
  v57[7] = v38;
  sub_1002319FC(v58, v57, &qword_1003B6580, &qword_1002C4E70);
  sub_1002317E0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    sub_1002336EC();
    sub_1001B2DDC(v57, &qword_1003B6580, &qword_1002C4E70);
  }

  else
  {
    sub_1002336EC();
    sub_1001B2DDC(v57, &qword_1003B6580, &qword_1002C4E70);
    *&v54 = *(v25 + 8);
    sub_1002332B0();
    sub_1001A6C04(&qword_1003B7620, &qword_1002C6A00);
    sub_100231834(&qword_1003B7660, sub_1002317E0, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = *(v25 + 88);
    v54 = *(v25 + 72);
    v55 = v39;
    v56 = *(v25 + 104);
    v40 = sub_1002318AC();
    sub_1002330DC(v40, v41, v42, &type metadata for BulletinHelpers.BulletinRelationships.GameRelationship, v40);
    v54 = *(v25 + 120);
    v43 = sub_100231900();
    sub_1002330DC(v43, v44, v45, &type metadata for BulletinHelpers.BulletinRelationships.ChallengeRelationship, v43);
    v46 = *(v25 + 152);
    v54 = *(v25 + 136);
    v55 = v46;
    v47 = sub_100231954();
    sub_1002330DC(v47, v48, v49, &type metadata for BulletinHelpers.BulletinRelationships.LeaderboardRelationship, v47);
    v50 = *(v25 + 184);
    v54 = *(v25 + 168);
    v55 = v50;
    v51 = sub_1002319A8();
    sub_1002330DC(v51, v52, v53, &type metadata for BulletinHelpers.BulletinRelationships.GameActivityRelationship, v51);
  }

  (*(v30 + 8))(v33, v28);
  sub_1002333A4();
}

void sub_100228140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10023332C();
  v25 = v24;
  v27 = v26;
  sub_1001A6C04(&qword_1003B7608, &qword_1002C69F8);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v28);
  sub_10023346C(v25, v25[3]);
  sub_1002314EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100005BE0(v25);
  }

  else
  {
    sub_1002315D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v92 = v88;
    v93 = v89;
    v94 = v90;
    v95 = v91;
    sub_1001A6C04(&qword_1003B7620, &qword_1002C6A00);
    sub_100231834(&qword_1003B7628, sub_1002315D4, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51 = v62;
    v29 = sub_100231628();
    sub_100233168(&type metadata for BulletinHelpers.BulletinRelationships.GameRelationship, v30, v31, v32, v29);
    v54 = v63;
    v33 = v64;
    v55 = v66;
    v56 = v62;
    v50 = v67;
    v34 = sub_10023167C();
    sub_100233168(&type metadata for BulletinHelpers.BulletinRelationships.ChallengeRelationship, v35, v36, v37, v34);
    v57 = v65;
    v53 = v64;
    v52 = v63;
    LOBYTE(v61[0]) = 4;
    v38 = sub_1002316D0();
    sub_100233168(&type metadata for BulletinHelpers.BulletinRelationships.LeaderboardRelationship, v39, v40, v41, v38);
    v49 = v62;
    v60 = v63;
    v42 = v65;
    v58 = v62;
    v59 = v64;
    sub_100231724();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = sub_100233120();
    v44(v43);
    v47 = v86;
    v48 = v85;
    v45 = v87;
    v46 = *(&v86 + 1);
    v61[0] = v92;
    v61[1] = v93;
    v61[2] = v94;
    v61[3] = v95;
    *&v61[4] = v51;
    *(&v61[4] + 1) = v56;
    *&v61[5] = v54;
    *(&v61[5] + 1) = v33;
    *&v61[6] = v57;
    *(&v61[6] + 1) = v55;
    *&v61[7] = v50;
    *(&v61[7] + 1) = v49;
    *&v61[8] = v52;
    *(&v61[8] + 1) = v58;
    *&v61[9] = v60;
    *(&v61[9] + 1) = v59;
    *&v61[10] = v42;
    *(&v61[10] + 1) = v85;
    v61[11] = v86;
    *&v61[12] = v87;
    sub_100231778(v61, &v62);
    sub_100005BE0(v25);
    sub_1002336A4();
    v68 = v51;
    v69 = v56;
    v70 = v54;
    v71 = v53;
    v72 = v57;
    v73 = v55;
    v74 = v50;
    v75 = v49;
    v76 = v52;
    v77 = v58;
    v78 = v60;
    v79 = v59;
    v80 = v42;
    v81 = v48;
    v82 = v47;
    v83 = v46;
    v84 = v45;
    sub_1002317B0(&v62);
    memcpy(v27, v61, 0xC8uLL);
  }

  sub_1002333A4();
}

uint64_t sub_100228688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100226710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002286D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100226878();
  *a1 = result;
  return result;
}

uint64_t sub_1002286F8(uint64_t a1)
{
  v2 = sub_100231430();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228734(uint64_t a1)
{
  v2 = sub_100231430();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100228770@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100226A68(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

uint64_t sub_1002287D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100226CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002287FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100226DF8();
  *a1 = result;
  return result;
}

uint64_t sub_100228824(uint64_t a1)
{
  v2 = sub_1002326A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228860(uint64_t a1)
{
  v2 = sub_1002326A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100228900(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100228944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002271A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10022898C@<X0>(_BYTE *a1@<X8>)
{
  result = _s14GameDaemonCore19AppMetadataSchemaV1V0dE0C9_metadata33_9DC203CAEB983F42B18FE72770C1F807LLAE16_SwiftDataNoTypeVSgvpfi_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1002289B8(uint64_t a1)
{
  v2 = sub_1002326F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002289F4(uint64_t a1)
{
  v2 = sub_1002326F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228A30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002273A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100228A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002274DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100228AA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10022759C();
  *a1 = result;
  return result;
}

uint64_t sub_100228AD0(uint64_t a1)
{
  v2 = sub_100232748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228B0C(uint64_t a1)
{
  v2 = sub_100232748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100227834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100228BC8(uint64_t a1)
{
  v2 = sub_10023279C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228C04(uint64_t a1)
{
  v2 = sub_10023279C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100228C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100227B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100228CC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100227D8C();
  *a1 = result;
  return result;
}

uint64_t sub_100228CE8(uint64_t a1)
{
  v2 = sub_1002314EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228D24(uint64_t a1)
{
  v2 = sub_1002314EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100228D60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_100228140(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0xC8uLL);
  }
}

uint64_t sub_100228DC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1001B247C(7107189, 0xE300000000000000);
    if (v3)
    {
      sub_1001A7AE8(*(a1 + 56) + 32 * v2, &v7);
      if (swift_dynamicCast())
      {
        v4 = v6;
        sub_1001AFB10(0x6449726F646E6576, 0xE800000000000000, a1, &v7);
        if (v8)
        {
          if (swift_dynamicCast())
          {
            return v4;
          }
        }

        else
        {

          sub_1001B2DDC(&v7, &qword_1003B5808, &qword_1002C32D0);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100228EE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1001AFB10(25705, 0xE200000000000000, a1, &v16);
  if (!v17)
  {
    sub_1001B2DDC(&v16, &qword_1003B5808, &qword_1002C32D0);
LABEL_5:
    sub_1001AFB10(0x6449726579616C70, 0xE800000000000000, a1, &v16);
    if (v17)
    {
      v6 = swift_dynamicCast();
      if (v6)
      {
        v4 = v19;
      }

      else
      {
        v4 = 0;
      }

      if (v6)
      {
        v5 = v18;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      sub_1001B2DDC(&v16, &qword_1003B5808, &qword_1002C32D0);
      v4 = 0;
      v5 = 0;
    }

    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = v18;
  v4 = v19;
LABEL_13:
  sub_1001AFB10(0x4143726579616C70, 0xEA00000000004449, a1, &v16);
  if (v17)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_1001B2DDC(&v16, &qword_1003B5808, &qword_1002C32D0);
    v8 = 0;
    v9 = 0;
  }

  sub_1001AFB10(0x7255726174617661, 0xE90000000000006CLL, a1, &v16);
  if (v17)
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v18;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v19;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_1001B2DDC(&v16, &qword_1003B5808, &qword_1002C32D0);
    v11 = 0;
    v12 = 0;
  }

  sub_1001AFB10(1701667182, 0xE400000000000000, a1, &v16);
  if (!v17)
  {
    sub_1001B2DDC(&v16, &qword_1003B5808, &qword_1002C32D0);
    v14 = 0;
    result = 0;
    if (v4)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = swift_dynamicCast();
  v14 = v18;
  if (v13)
  {
    result = v19;
  }

  else
  {
    v14 = 0;
    result = 0;
  }

  if (!v4)
  {
LABEL_34:

    v5 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    result = 0;
  }

LABEL_35:
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v14;
  a2[7] = result;
  return result;
}

uint64_t sub_1002291BC(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for Logger();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B76B0, &qword_1002C6AC8);
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for PersonNameComponents();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100229328, 0, 0);
}

uint64_t sub_100229328()
{
  sub_100005838();
  v1 = [objc_opt_self() gameCenterClient];
  v0[36] = v1;
  if (!v1)
  {
LABEL_7:
    static GKLog.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (sub_1002332D4(v15))
    {
      v16 = sub_100005B50();
      sub_100233484(v16);
      sub_100004894(&_mh_execute_header, v17, v18, "BulletinHelpers getPlayerName(for caid:) failed to initialize profileService");
      sub_1001E3DC0();
    }

    v19 = sub_10000595C();
    v20(v19);

    sub_1001D1874();
    sub_1001D185C();

    __asm { BRAA            X3, X16 }
  }

  v2 = v1;
  sub_1001A7B44(0, &qword_1003B5FB0, off_10035E218);
  v3 = v2;
  v4 = sub_1001D132C(0, v2, 0);
  v0[37] = v4;
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v7 = v0[25];
  v6 = v0[26];
  sub_1001A6C04(&qword_1003B5B98, &qword_1002C36F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C33A0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;

  sub_10024A08C(inited);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v0[38] = isa;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1002295D4;
  v10 = swift_continuation_init();
  v11 = sub_1001A6C04(&qword_1003B6588, &qword_1002C4E78);
  sub_100233190(v11);
  v0[11] = 1107296256;
  v0[12] = sub_1001F95A4;
  v0[13] = &unk_10036D480;
  v0[14] = v10;
  [v5 getContactsForContactAssociationIDs:isa completionHandler:v0 + 10];
  sub_1001D185C();

  return _swift_continuation_await(v12);
}

uint64_t sub_1002295D4()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;
  sub_1001B6A34();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002296A4()
{
  v64 = v0;
  v1 = *(v0 + 192);

  if (*(v1 + 16) == 1)
  {
    sub_1001BAA1C(v1);
    v3 = v2;
    v5 = v4;

    if (v3)
    {
      v55 = *(v0 + 256);

      v6 = [v5 namePrefix];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = [v5 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = [v5 middleName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = [v5 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = [v5 nameSuffix];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v5 nickname];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10023314C();
      sub_1001A9674(v18, v19, 1, v20);
      PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
      v21 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
      [v21 setStyle:1];
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v23 = [v21 stringFromPersonNameComponents:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static GKLog.daemon.getter();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      v26 = os_log_type_enabled(v24, v25);
      v56 = *(v0 + 296);
      v57 = *(v0 + 288);
      v28 = *(v0 + 272);
      v27 = *(v0 + 280);
      v59 = *(v0 + 248);
      v61 = *(v0 + 264);
      v29 = *(v0 + 224);
      v58 = *(v0 + 216);
      if (v26)
      {
        v51 = *(v0 + 200);
        v52 = *(v0 + 208);
        v54 = *(v0 + 280);
        v30 = swift_slowAlloc();
        v53 = v21;
        v31 = swift_slowAlloc();
        v63 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_100005C3C(v51, v52, &v63);
        *(v30 + 12) = 2080;
        v32 = sub_1002335A8();
        *(v30 + 14) = sub_100005C3C(v32, v33, v34);
        _os_log_impl(&_mh_execute_header, v24, v25, "BulletinHelpers getPlayerName(for caid:) CAID %s resolved to %s", v30, 0x16u);
        swift_arrayDestroy();
        sub_1000043D8(v31);
        sub_100233130();

        (*(v29 + 8))(v59, v58);
        (*(v28 + 8))(v54, v61);
      }

      else
      {

        (*(v29 + 8))(v59, v58);
        (*(v28 + 8))(v27, v61);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  static GKLog.daemon.getter();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v35, v36);
  v39 = *(v0 + 288);
  v38 = *(v0 + 296);
  v40 = *(v0 + 224);
  if (v37)
  {
    v60 = *(v0 + 216);
    v62 = *(v0 + 240);
    v42 = *(v0 + 200);
    v41 = *(v0 + 208);
    v43 = sub_100005AE4();
    v44 = swift_slowAlloc();
    v63 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_100005C3C(v42, v41, &v63);
    _os_log_impl(&_mh_execute_header, v35, v36, "BulletinHelpers getPlayerName(for caid:) no contact found for player CAID %s", v43, 0xCu);
    sub_100005BE0(v44);
    sub_1000043D8(v44);
    sub_1000043D8(v43);

    (*(v40 + 8))(v62, v60);
  }

  else
  {

    v45 = sub_1001F77B8();
    v47(v45, v46);
  }

LABEL_11:

  sub_1001D1874();
  v48 = sub_1002335A8();

  return v49(v48);
}

uint64_t sub_100229C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100229CE0, 0, 0);
}

uint64_t sub_100229CE0()
{
  sub_1001AFA50();
  if (!v0[16])
  {
    sub_100233428();
LABEL_13:

    goto LABEL_14;
  }

  sub_10023323C();
  v1 = sub_1000062F4("${contact_card_name}");
  v2 = sub_10023363C(v1);
  if ((sub_100233364(v2, &type metadata for String) & 1) == 0)
  {
LABEL_14:

    sub_1002330A0();
    sub_1001D18C4();

    __asm { BRAA            X3, X16 }
  }

  v3 = v0[19];
  if (!*(v3 + 8) || !*(v3 + 24))
  {
    sub_1002337C0();
    static GKLog.daemon.getter();
    Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (sub_100006A60(v9))
    {
      v10 = sub_100005B50();
      sub_100233260(v10);
      sub_100215CCC(&_mh_execute_header, v11, v12, "BulletinHelpers performContactCardSubstitution: no CAID found for player");
      sub_100233130();
    }

    sub_10023340C();
    v13 = sub_100005540();
    v14(v13);
    sub_100233428();
    goto LABEL_13;
  }

  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  sub_1002332C8(v4);
  sub_1001B6ACC();
  sub_1001D18C4();

  return sub_1002291BC(v5, v6);
}

uint64_t sub_100229E6C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  sub_100233018(v3, v4);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 200) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100229F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_10022A010, 0, 0);
}

uint64_t sub_10022A010()
{
  sub_1001AFA50();
  if (!v0[16])
  {
    sub_100233428();
LABEL_13:

    goto LABEL_14;
  }

  sub_10023323C();
  v1 = sub_1000062F4("${contact_card_name}");
  v2 = sub_10023363C(v1);
  if ((sub_100233364(v2, &type metadata for String) & 1) == 0)
  {
LABEL_14:

    sub_1002330A0();
    sub_1001D18C4();

    __asm { BRAA            X3, X16 }
  }

  v3 = v0[19];
  if (!*(v3 + 8) || !*(v3 + 24))
  {
    sub_1002337C0();
    static GKLog.daemon.getter();
    Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (sub_100006A60(v9))
    {
      v10 = sub_100005B50();
      sub_100233260(v10);
      sub_100215CCC(&_mh_execute_header, v11, v12, "BulletinHelpers performContactCardSubstitution: no CAID found for player");
      sub_100233130();
    }

    sub_10023340C();
    v13 = sub_100005540();
    v14(v13);
    sub_100233428();
    goto LABEL_13;
  }

  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  sub_1002332C8(v4);
  sub_1001B6ACC();
  sub_1001D18C4();

  return sub_1002291BC(v5, v6);
}

uint64_t sub_10022A19C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  sub_100233018(v3, v4);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 200) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10022A278()
{
  v1 = v0[25];
  if (v1)
  {
    v0[13] = v0[3];
    v2 = v0[23];
    v3 = v0[16];
    v0[9] = v0[15];
    v0[10] = v3;
    v0[11] = 0xD000000000000014;
    v0[12] = 0x800000010030CF60;
    v0[14] = v1;
    v23 = v2;
    v24 = v2;
    v22 = v2;
    sub_100233004();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v4, v5, v6, v7, v8, v9, v10, v10, &type metadata for String, v22, v23, v24);
    v13 = v12;
  }

  else
  {
    sub_1002337C0();
    static GKLog.daemon.getter();
    Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (sub_100006A60(v14))
    {
      v15 = sub_100005B50();
      sub_100233260(v15);
      sub_100215CCC(&_mh_execute_header, v16, v17, "BulletinHelpers performContactCardSubstitution: no CAID found for player");
      sub_100233130();
    }

    sub_10023340C();
    v18 = sub_100005540();
    v19(v18);
    v11 = v0[17];
    v13 = v0[18];
  }

  sub_1001D1874();

  return v20(v11, v13);
}

uint64_t sub_10022A3D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_100232F48(sub_10022A3F0);
}

uint64_t sub_10022A3F0()
{
  sub_100005838();
  sub_10023305C(2036625250);
  *(v0 + 8) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_100233608();
  v6 = sub_1001B2E34(v4);
  if (*(v0 - 40))
  {
    sub_100233344(v6, v7, v8, &type metadata for String);
    sub_1002334D0();
  }

  else
  {
    sub_1001B2DDC(v2, &qword_1003B5808, &qword_1002C32D0);
    sub_100233680();
  }

  sub_100233434();
  v3[22] = v9;
  v3[23] = 0xED000079646F4265;
  AnyHashable.init<A>(_:)();
  sub_1001F77B8();
  sub_1001AFA68(v10, v11);
  v12 = sub_1001B2E34(v5);
  if (v3[19])
  {
    sub_10023330C(v12, v13, v14, &type metadata for String);
    sub_1002334A0();
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    sub_1001B2DDC(v1, &qword_1003B5808, &qword_1002C32D0);
    v17 = 0;
  }

  v3[31] = v17;
  v18 = swift_task_alloc();
  v3[32] = v18;
  *v18 = v3;
  sub_10023303C(v18);
  sub_1001D185C();

  return sub_100229F48(v19, v20, v21, v22, v23);
}

uint64_t sub_10022A590()
{
  sub_1000057FC();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_1002330A0();

  return v4(v3);
}

uint64_t sub_10022A6B8()
{
  sub_100005528();
  v0[33] = v1;
  v0[34] = v2;
  v0[31] = v3;
  v0[32] = v4;
  v0[30] = v5;
  v6 = type metadata accessor for Logger();
  v0[35] = v6;
  sub_1001B6A00(v6);
  v0[36] = v7;
  v0[37] = sub_1002335CC();
  v0[38] = swift_task_alloc();
  v8 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  v0[39] = v8;
  sub_100006A0C(v8);
  v0[40] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v0[41] = v9;
  sub_1001B6A00(v9);
  v0[42] = v10;
  v0[43] = sub_1002335CC();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v11 = sub_10000448C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10022A80C()
{
  v1 = v0[40];
  v53 = v0[41];
  v2 = v0[32];
  v0[18] = v0[31];
  v0[19] = v2;
  v0[20] = 8222587;
  v0[21] = 0xE300000000000000;
  v0[22] = 3682865;
  v0[23] = 0xE300000000000000;
  v3 = sub_1001B6954();
  sub_100005540();
  sub_100233004();
  v0[24] = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v4, v5, v6, v7, v8, v9, &type metadata for String, &type metadata for String, &type metadata for String, v3, v3, v3);
  v0[26] = 8218747;
  v0[25] = v10;
  v0[27] = 0xE300000000000000;
  v0[28] = 3682865;
  v0[29] = 0xE300000000000000;
  sub_100233004();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v11, v12, v13, v14, v15, v16, &type metadata for String, &type metadata for String, &type metadata for String, v3, v3, v3);

  sub_1001D1B80();
  URL.init(string:)();
  if (sub_1001A969C(v1, 1, v53) == 1)
  {
    v18 = v0[40];
    v17 = v0[41];

    sub_1001B2DDC(v18, &qword_1003B5800, &qword_1002C40D0);
    sub_1001E4070();
    sub_1001A9674(v19, v20, v21, v17);
    sub_1002331E0();

    sub_1000046F8();
    sub_1001F7484();

    __asm { BRAA            X1, X16 }
  }

  v24 = v0[45];
  v25 = v0[41];
  v26 = v0[42];
  v27 = v0[40];
  v28 = *(v26 + 32);
  v0[46] = v28;
  v0[47] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v28(v24, v27, v25);
  URL.scheme.getter();
  if (v29 && (v30._countAndFlagsBits = 0x6E6F6369707061, v30._object = 0xE700000000000000, v31 = String.hasPrefix(_:)(v30), , v31))
  {
    v32 = v0[43];

    v33 = [objc_allocWithZone(type metadata accessor for GKGameKitDirectoryServicePrivateImpl()) init];
    v0[48] = v33;
    sub_1001F761C();
    v34 = String._bridgeToObjectiveC()();
    v0[49] = v34;
    v0[2] = v0;
    v0[7] = v32;
    v0[3] = sub_10022ACB0;
    v35 = swift_continuation_init();
    v36 = sub_1001A6C04(&qword_1003B76A8, &qword_1002C6A90);
    sub_100233190(v36);
    v0[11] = 1107296256;
    v0[12] = sub_10022B31C;
    v0[13] = &unk_10036D368;
    v0[14] = v35;
    [v33 fetchAppIconURLForBundleID:v34 completionHandler:v0 + 10];
    sub_1001F7484();

    return _swift_continuation_await(v37);
  }

  else
  {
    v39 = v0[45];
    v41 = v0[33];
    v40 = v0[34];
    v42 = [objc_opt_self() gameCenterClient];
    v0[51] = v42;
    sub_1001D1B80();
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 _gkSHA256Hash];

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v45._countAndFlagsBits = 95;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46._countAndFlagsBits = sub_100233698();
    String.append(_:)(v46);

    v47 = v40;
    v0[52] = v40;
    v48 = swift_task_alloc();
    v0[53] = v48;
    v48[2] = v42;
    v48[3] = v39;
    v48[4] = v41;
    v48[5] = v47;
    swift_task_alloc();
    sub_1000062E8();
    v0[54] = v49;
    *v49 = v50;
    v49[1] = sub_10022AF7C;
    sub_1001B6A34();
    sub_1001F7484();

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10022ACB0()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10022ADAC()
{
  v1 = *(v0 + 392);
  (*(v0 + 368))(*(v0 + 352), *(v0 + 344), *(v0 + 328));

  if (URL.isFileURL.getter())
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 336);
    URL.path(percentEncoded:)(1);
    URL.init(string:)();

    v4 = *(v3 + 8);
    v5 = sub_100005558();
    v4(v5);
    v6 = sub_100005540();
    v4(v6);
  }

  else
  {
    static GKLog.daemon.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_100006A60(v8))
    {
      v9 = sub_100005B50();
      sub_100233260(v9);
      sub_100215CCC(&_mh_execute_header, v10, v11, "BulletinHelpers assembleGameIconUrl app icon is not a file url.");
      sub_100233130();
    }

    v12 = *(v0 + 384);
    v13 = *(v0 + 352);
    v24 = *(v0 + 360);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);

    v16 = sub_1001F77B8();
    v17(v16);
    v18 = *(v15 + 8);
    v18(v13, v14);
    sub_1001E4070();
    sub_1001A9674(v19, v20, v21, v14);
    v18(v24, v14);
  }

  sub_1002331E0();

  sub_1000046F8();

  return v22();
}

uint64_t sub_10022AF7C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10022B098()
{
  sub_1001AFA50();

  v1 = sub_1001E4240();
  v2(v1);
  sub_1002331E0();

  sub_1000046F8();
  sub_1001D18C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10022B144()
{
  sub_100005838();
  v1 = v0[49];
  swift_willThrow();

  static GKLog.daemon.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[48];
  if (v4)
  {
    v6 = sub_100005AE4();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "BulletinHelpers fetchAppIconURL could not fetch local icon %@", v6, 0xCu);
    sub_1001B2DDC(v7, &unk_1003B6180, &qword_1002C32E0);
    sub_1001E3DC0();
    sub_1000043D8(v6);
  }

  else
  {
  }

  v9 = v0[41];
  (*(v0[36] + 8))(v0[37], v0[35]);
  sub_1001E4070();
  sub_1001A9674(v10, v11, v12, v9);
  v13 = sub_1001E4240();
  v14(v13);
  sub_1002331E0();

  sub_1000046F8();

  return v15();
}

uint64_t sub_10022B31C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001D1394();
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    return sub_1001BAE28();
  }
}

void sub_10022B3F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v36 = a1;
  v38 = sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v30 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A7B44(0, &qword_1003B5FF0, &off_10035E258);
  v14 = a2;
  v37 = sub_1001D132C(0, a2, 0);
  if (v37)
  {
    URL._bridgeToObjectiveC()(v15);
    v34 = v16;
    v33 = @"GKBulletins";
    v31 = a4;
    v32 = String._bridgeToObjectiveC()();
    (*(v11 + 16))(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
    v17 = v35;
    v18 = v38;
    (*(v8 + 16))(v35, v36, v38);
    v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v8 + 80) + v20 + 16) & ~*(v8 + 80);
    v22 = swift_allocObject();
    (*(v11 + 32))(v22 + v19, v13, v10);
    v23 = (v22 + v20);
    v24 = v39;
    *v23 = v31;
    v23[1] = v24;
    (*(v8 + 32))(v22 + v21, v17, v18);
    aBlock[4] = sub_100231EF8;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022B8E0;
    aBlock[3] = &unk_10036D3B8;
    v25 = _Block_copy(aBlock);

    v26 = v37;
    v28 = v33;
    v27 = v34;
    v29 = v32;
    [v37 requestImageDataForURL:v34 subdirectory:v33 fileName:v32 handler:v25];
    _Block_release(v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10022B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 isAuthorizedForGamesWithImageData:isa];

  if (v12 && (v13 = objc_opt_self(), URL._bridgeToObjectiveC()(v14), v16 = v15, v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(), sub_100231FEC(v16, v17, v18, a4, a5, v13), v20 = v19, v16, v20))
  {
    URL.init(string:)();
  }

  else
  {
    v21 = type metadata accessor for URL();
    sub_1001A9674(v9, 1, 1, v21);
  }

  sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10022B8E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_1000072CC(v5, v7);
}

uint64_t sub_10022B968@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Logger();
  sub_1000043C4();
  v54 = v7;
  v55 = v6;
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - v10;
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  sub_100006A0C(v14);
  sub_100006AB0();
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v57 = type metadata accessor for URL();
  sub_1000043C4();
  v53 = v18;
  __chkstk_darwin(v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:40.0];
  sub_1001A7B44(0, &qword_1003B7690, UIImage_ptr);
  v56 = v22;

  sub_100233200();
  v26 = sub_10022D3C0(v23, v24, v25);
  if (v26)
  {
    v27 = v26;
    v52 = a3;
    v28 = [objc_opt_self() labelColor];
    v29 = [v27 imageWithTintColor:v28];

    v30 = sub_10022D440(8.0, 8.0);
    v31 = UIImagePNGRepresentation(v30);
    if (v31)
    {
      v32 = v31;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v58 = a1;
      v59 = a2;

      v36._countAndFlagsBits = 1735290926;
      v36._object = 0xE400000000000000;
      String.append(_:)(v36);
      sub_10022D63C(v58, v59, v17);

      v37 = v57;
      if (sub_1001A969C(v17, 1, v57) == 1)
      {
        sub_1001B2DDC(v17, &qword_1003B5800, &qword_1002C40D0);
        static GKLog.daemon.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = v35;
          v41 = sub_100005B50();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "BulletinHelpers assembleSymbolAttachmentURL failed to create disk path", v41, 2u);
          sub_1000043D8(v41);
          sub_1000072CC(v33, v40);
        }

        else
        {

          sub_1000072CC(v33, v35);
        }

        a3 = v52;

        (*(v54 + 8))(v13, v55);
        v48 = 1;
      }

      else
      {
        v49 = *(v53 + 32);
        v49(v21, v17, v37);
        Data.write(to:options:)();

        sub_1000072CC(v33, v35);
        a3 = v52;
        v49(v52, v21, v37);
        v48 = 0;
      }

      return sub_1001A9674(a3, v48, 1, v37);
    }

    a3 = v52;
  }

  else
  {
    v30 = 0;
  }

  static GKLog.daemon.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = a3;
    v45 = sub_100005AE4();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100005C3C(a1, a2, &v58);
    _os_log_impl(&_mh_execute_header, v42, v43, "BulletinHelpers assembleSymbolAttachmentURL failed to create symbol: %s", v45, 0xCu);
    sub_100005BE0(v46);
    sub_1000043D8(v46);
    v47 = v45;
    a3 = v44;
    sub_1000043D8(v47);
  }

  else
  {
  }

  (*(v54 + 8))(v11, v55);
  v48 = 1;
  v37 = v57;
  return sub_1001A9674(a3, v48, 1, v37);
}

uint64_t sub_10022C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  v5[20] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10022C178, 0, 0);
}

uint64_t sub_10022C178(uint64_t a1)
{
  static GKLog.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100006A60(v3))
  {
    v4 = sub_100005B50();
    sub_100233260(v4);
    sub_100215CCC(&_mh_execute_header, v5, v6, "BulletinHelpers assemblePlayerAvatarURL");
    sub_100233130();
  }

  v7 = v1[20];
  v9 = v1[15];
  v8 = v1[16];

  v10 = sub_1002335A8();
  v53 = v11;
  v11(v10);
  v1[2] = v9;
  v1[3] = v8;
  v1[4] = 8222587;
  v1[5] = 0xE300000000000000;
  v1[6] = 3682865;
  v1[7] = 0xE300000000000000;
  v12 = sub_1001B6954();
  sub_100233004();
  v1[8] = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v13, v14, v15, v16, v17, v18, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);
  v1[9] = v19;
  v1[10] = 8218747;
  v1[11] = 0xE300000000000000;
  v1[12] = 3682865;
  v1[13] = 0xE300000000000000;
  sub_100233004();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v20, v21, v22, v23, v24, v25, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);

  URL.init(string:)();
  sub_100233100(v7);
  if (v26)
  {
    v27 = v1[20];

    sub_1001B2DDC(v27, &qword_1003B5800, &qword_1002C40D0);
    static GKLog.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (sub_100006A60(v29))
    {
      v30 = sub_100005B50();
      sub_100233260(v30);
      sub_100215CCC(&_mh_execute_header, v31, v32, "BulletinHelpers assemblePlayerAvatarURL invalid url");
      sub_100233130();
    }

    v33 = v1[21];

    v34 = sub_100005540();
    v53(v34);
    sub_1001E4070();
    sub_1001A9674(v35, v36, v37, v33);

    sub_1000046F8();
    sub_1001F7484();

    __asm { BRAA            X1, X16 }
  }

  v40 = v1[23];
  v42 = v1[17];
  v41 = v1[18];
  (*(v1[22] + 32))(v40, v1[20], v1[21]);
  v43 = [objc_opt_self() gameCenterClient];
  v1[28] = v43;
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 _gkSHA256Hash];

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v46._countAndFlagsBits = 95;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = sub_1001F77B8();
  String.append(_:)(v47);

  v1[29] = v41;
  v48 = swift_task_alloc();
  v1[30] = v48;
  v48[2] = v43;
  v48[3] = v40;
  v48[4] = v42;
  v48[5] = v41;
  v48[6] = v42;
  v48[7] = v41;
  swift_task_alloc();
  sub_1000062E8();
  v1[31] = v49;
  *v49 = v50;
  v49[1] = sub_10022C560;
  sub_1001B6A34();
  sub_1001F7484();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10022C560()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022C67C()
{
  sub_1000057FC();

  v1 = sub_1001E4240();
  v2(v1);

  sub_1000046F8();

  return v3();
}

uint64_t sub_10022C720(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10022C7E0, 0, 0);
}

uint64_t sub_10022C7E0()
{
  sub_1001AFA50();
  v1 = [objc_opt_self() gameCenterClient];
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    sub_1001A7B44(0, &qword_1003B5FB0, off_10035E218);
    v3 = v2;
    v4 = sub_1001D132C(0, v2, 0);
    v0[10] = v4;
    if (v4)
    {
      v5 = v4;
      v7 = v0[4];
      v6 = v0[5];
      v8 = swift_task_alloc();
      v0[11] = v8;
      v8[2] = v5;
      v8[3] = v7;
      v8[4] = v6;
      v9 = swift_task_alloc();
      v0[12] = v9;
      sub_1001A6C04(&qword_1003B5D10, &qword_1002C4200);
      *v9 = v0;
      v9[1] = sub_10022CA04;
      sub_1001B6A34();

      return withCheckedContinuation<A>(isolation:function:_:)();
    }
  }

  static GKLog.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (sub_1002332D4(v11))
  {
    v12 = sub_100005B50();
    sub_100233484(v12);
    sub_100004894(&_mh_execute_header, v13, v14, "BulletinHelpers getPlayerName(forPlayerID:) failed to initialize profileService");
    sub_1001E3DC0();
  }

  v15 = sub_10000595C();
  v16(v15);

  sub_1001D1874();

  return v17(0, 0);
}

uint64_t sub_10022CA04()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022CB04()
{
  sub_100005528();
  v1 = *(v0 + 80);

  sub_1001D1874();
  v2 = sub_1001E4240();

  return v3(v2);
}

uint64_t sub_10022CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = type metadata accessor for Logger();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();

  return _swift_task_switch(sub_10022CCE4, 0, 0);
}

uint64_t sub_10022CCE4()
{
  v1 = v0[29];
  v27 = v0[20];
  v28 = v0[21];

  v2._countAndFlagsBits = 1735290926;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  sub_10022D63C(v27, v28, v1);

  sub_100233100(v1);
  if (v3)
  {
    sub_1001B2DDC(v0[29], &qword_1003B5800, &qword_1002C40D0);
    static GKLog.daemon.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (sub_100006A60(v5))
    {
      v6 = sub_100005B50();
      sub_100233260(v6);
      sub_100215CCC(&_mh_execute_header, v7, v8, "BulletinHelpers assemblePlayerMonogramAttachmentURL failed to create disk path");
      sub_100233130();
    }

    v9 = v0[30];
    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[25];

    (*(v12 + 8))(v10, v11);
    sub_1001E4070();
    sub_1001A9674(v13, v14, v15, v9);

    sub_1000046F8();

    return v16();
  }

  else
  {
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[29];
    v21 = v0[30];
    v22 = *(v19 + 32);
    v0[33] = v22;
    v0[34] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v18, v20, v21);
    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    v0[35] = v24;
    v25 = String._bridgeToObjectiveC()();
    v0[36] = v25;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10022CFC4;
    v26 = swift_continuation_init();
    v0[17] = sub_1001A6C04(&qword_1003B7698, &unk_1002C6A70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10022F0C8;
    v0[13] = &unk_10036D2F0;
    v0[14] = v26;
    [v23 monogramImageForPlayerID:v24 playerName:v25 withCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10022CFC4()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;
  sub_1001B6A34();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022D094()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 144);

  if (v2 && (v3 = UIImagePNGRepresentation(v2)) != 0)
  {
    v4 = v3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Data.write(to:options:)();
    v15 = *(v0 + 264);
    v16 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 152);

    v19 = sub_1001F761C();
    sub_1000072CC(v19, v20);
    v15(v18, v16, v17);
    v21 = v18;
    v22 = 0;
    v23 = 1;
    v24 = v17;
  }

  else
  {
    static GKLog.daemon.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_1002332D4(v6))
    {
      v7 = sub_100005B50();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "BulletinHelpers assemblePlayerMonogramAttachmentURL failed to create image", v7, 2u);
      sub_1000043D8(v7);
    }

    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);

    v11 = sub_1001F77B8();
    v12(v11);
    (*(v9 + 8))(v8, v10);
    sub_1001E4070();
    v24 = v10;
  }

  sub_1001A9674(v21, v22, v23, v24);

  sub_1000046F8();

  return v13();
}

id sub_10022D3C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

uint64_t sub_10022D440(double a1, double a2)
{
  [v2 size];
  v6 = a1 + a1 + v5;
  [v2 size];
  v8 = a2 + a2 + v7;
  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v9 format:{v6, v8}];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10023215C;
  *(v12 + 24) = v11;
  v17[4] = sub_100232F3C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10022F180;
  v17[3] = &unk_10036D458;
  v13 = _Block_copy(v17);
  v14 = v2;

  v15 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022D63C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v66 = a2;
  v73 = a3;
  v3 = type metadata accessor for Logger();
  v70 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v59 - v6;
  v71 = type metadata accessor for URL.DirectoryHint();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v67 = &v59 - v19;
  __chkstk_darwin(v18);
  v72 = &v59 - v20;
  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 URLsForDirectory:13 inDomains:1];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001BAA04(v23);

  if (sub_1001A969C(v12, 1, v13) == 1)
  {
    v24 = v73;
    v25 = v21;
    sub_1001B2DDC(v12, &qword_1003B5800, &qword_1002C40D0);
    static GKLog.daemon.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "BulletinHelpers getImageDirectory failed to get cache directory", v28, 2u);
    }

    (*(v70 + 8))(v7, v3);
    v29 = 1;
    return sub_1001A9674(v24, v29, 1, v13);
  }

  v59 = v3;
  v68 = v14;
  (*(v14 + 32))(v72, v12, v13);
  v74 = 0x6C7070612E6D6F63;
  v75 = 0xEF64656D61672E65;
  v30 = enum case for URL.DirectoryHint.isDirectory(_:);
  v31 = v69;
  v62 = v17;
  v63 = v21;
  v32 = v69[13];
  v33 = v71;
  (v32)(v9, enum case for URL.DirectoryHint.isDirectory(_:), v71);
  v34 = sub_1001B6954();
  URL.appending<A>(path:directoryHint:)();
  v35 = v31[1];
  v35(v9, v33);
  v74 = 0x736567616D49;
  v75 = 0xE600000000000000;
  v69 = v32;
  (v32)(v9, v30, v33);
  v36 = v67;
  v61 = v34;
  v37 = v62;
  URL.appending<A>(path:directoryHint:)();
  v60 = v35;
  v35(v9, v33);
  v39 = v68 + 8;
  v38 = *(v68 + 8);
  v38(v37, v13);
  URL.path.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = v63;
  LOBYTE(v37) = [v63 fileExistsAtPath:v40];

  if (v37)
  {
LABEL_8:
    v74 = v65;
    v75 = v66;
    v70 = v13;
    v47 = v38;
    v48 = v71;
    (v69)(v9, enum case for URL.DirectoryHint.notDirectory(_:), v71);
    v24 = v73;
    URL.appending<A>(path:directoryHint:)();

    v60(v9, v48);
    v13 = v70;
    v47(v36, v70);
    v47(v72, v13);
    v29 = 0;
    return sub_1001A9674(v24, v29, 1, v13);
  }

  v68 = v39;
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  v74 = 0;
  v45 = [v41 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v74];

  if (v45)
  {
    v46 = v74;
    goto LABEL_8;
  }

  v49 = v41;
  v50 = v38;
  v51 = v74;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v52 = v64;
  static GKLog.daemon.getter();
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    swift_errorRetain();
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&_mh_execute_header, v53, v54, "BulletinHelpers getImageDirectory failed to create directory: %@", v55, 0xCu);
    sub_1001B2DDC(v56, &unk_1003B6180, &qword_1002C32E0);
  }

  (*(v70 + 8))(v52, v59);
  v50(v36, v13);
  v50(v72, v13);
  v29 = 1;
  v24 = v73;
  return sub_1001A9674(v24, v29, 1, v13);
}

void sub_10022DE14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001A6C04(&qword_1003B76A0, &unk_1002C6A80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  sub_1001A6C04(&qword_1003B5B60, &qword_1002C4E90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002C33A0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a3;
  v17[1] = a4;
  aBlock[4] = sub_100231E08;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BCB40;
  aBlock[3] = &unk_10036D340;
  v18 = _Block_copy(aBlock);

  [a2 getProfilesForPlayerIDs:isa fetchOptions:0 handler:v18];

  _Block_release(v18);
}

void sub_10022E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v40 - v16;
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  if (a2)
  {
    swift_errorRetain();
    static GKLog.daemon.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "BulletinHelpers getPlayerName(forPlayerID:) failed to get player: %@", v22, 0xCu);
      sub_1001B2DDC(v23, &unk_1003B6180, &qword_1002C32E0);
    }

    (*(v11 + 8))(v19, v10);
    v41 = 0;
    v42 = 0;
    sub_1001A6C04(&qword_1003B76A0, &unk_1002C6A80);
    CheckedContinuation.resume(returning:)();
  }

  else if (sub_1001E6E2C())
  {
    sub_1001D13A0();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(a1 + 32);
    }

    v26 = v25;
    static GKLog.daemon.getter();

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[1] = a3;
      v41 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_100005C3C(a4, a5, &v41);
      *(v30 + 12) = 2080;
      v32 = sub_100231A58(v27);
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v32 = 0x6E776F6E6B6E753CLL;
        v34 = 0xE90000000000003ELL;
      }

      v35 = sub_100005C3C(v32, v34, &v41);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "BulletinHelpers getPlayerName(forPlayerID:) ID %s resolved to %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v14, v10);
    v41 = sub_100231A58(v27);
    v42 = v36;
    sub_1001A6C04(&qword_1003B76A0, &unk_1002C6A80);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    static GKLog.daemon.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "BulletinHelpers getPlayerName(forPlayerID:) player not found", v39, 2u);
    }

    (*(v11 + 8))(v17, v10);
    v41 = 0;
    v42 = 0;
    sub_1001A6C04(&qword_1003B76A0, &unk_1002C6A80);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10022E534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v9 = sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  sub_1001A7B44(0, &qword_1003B5FF0, &off_10035E258);
  v14 = a2;
  v15 = sub_1001D132C(0, a2, 0);
  if (v15)
  {
    v17 = v15;
    URL._bridgeToObjectiveC()(v16);
    v19 = v18;
    v20 = @"GKBulletins";
    v21 = String._bridgeToObjectiveC()();
    (*(v10 + 16))(v13, a1, v9);
    v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v10 + 32))(v24 + v22, v13, v9);
    v25 = (v24 + v23);
    v26 = v29;
    *v25 = v28;
    v25[1] = v26;
    aBlock[4] = sub_100231CC4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022B8E0;
    aBlock[3] = &unk_10036D250;
    v27 = _Block_copy(aBlock);

    [v17 requestImageDataForURL:v19 subdirectory:v20 fileName:v21 handler:v27];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_10022E7AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v44 = a4;
  v47 = a3;
  v8 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  v9 = __chkstk_darwin(v8 - 8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = type metadata accessor for URL();
  v42 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Logger();
  v15 = *(v45 - 8);
  v16 = __chkstk_darwin(v45);
  v17 = __chkstk_darwin(v16);
  v19 = &v40 - v18;
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  sub_1001A7B44(0, &qword_1003B7690, UIImage_ptr);
  sub_1001D09EC(a1, a2);
  v22 = sub_10022EE94(a1, a2);
  if (v22)
  {
    v23 = sub_10022EF0C();
    v24 = UIImagePNGRepresentation(v23);
    if (v24)
    {
      v25 = v24;
      v41 = v23;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v48 = v44;
      v49 = a5;

      v29._countAndFlagsBits = 1735290926;
      v29._object = 0xE400000000000000;
      String.append(_:)(v29);
      sub_10022D63C(v48, v49, v12);

      v30 = v13;
      if (sub_1001A969C(v12, 1, v13) == 1)
      {
        sub_1001B2DDC(v12, &qword_1003B5800, &qword_1002C40D0);
        static GKLog.daemon.getter();
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "BulletinHelpers assemblePlayerAvatarURL failed to create disk path", v33, 2u);
        }

        (*(v15 + 8))(v19, v45);
        sub_1001A9674(v46, 1, 1, v13);
        sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
        CheckedContinuation.resume(returning:)();

        sub_1000072CC(v26, v28);
      }

      else
      {
        v38 = v42;
        v37 = v43;
        (*(v42 + 32))(v43, v12, v30);
        Data.write(to:options:)();
        v39 = v46;
        (*(v38 + 16))(v46, v37, v30);
        sub_1001A9674(v39, 0, 1, v30);
        sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
        CheckedContinuation.resume(returning:)();
        sub_1000072CC(v26, v28);

        (*(v38 + 8))(v37, v30);
      }

      return;
    }
  }

  else
  {
    v23 = 0;
  }

  static GKLog.daemon.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "BulletinHelpers assemblePlayerAvatarURL failed to create image", v36, 2u);
  }

  (*(v15 + 8))(v21, v45);
  sub_1001A9674(v46, 1, 1, v13);
  sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
  CheckedContinuation.resume(returning:)();
}

id sub_10022EE94(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_1000072CC(a1, a2);
  return v6;
}

id sub_10022EF0C()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v2, v3}];
  v6 = swift_allocObject();
  v6[2] = 0.0;
  v6[3] = 0.0;
  v6[4] = v2;
  v6[5] = v4;
  *(v6 + 6) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100231D04;
  *(v7 + 24) = v6;
  v12[4] = sub_100231D14;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10022F180;
  v12[3] = &unk_10036D2C8;
  v8 = _Block_copy(v12);
  v9 = v0;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022F0C8(uint64_t a1, void *a2)
{
  v3 = *sub_100006454((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_1001D1358(v3, a2);
}

id sub_10022F114(int a1, id a2, double a3, double a4)
{
  [a2 size];

  return [a2 drawInRect:{a3, a4, v7, v8}];
}

void sub_10022F180(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10022F1CC(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v20 = [objc_opt_self() bezierPathWithOvalInRect:{a1, a2, a3, a4}];
  [v20 addClip];
  v11 = [a6 CGImage];
  if (v11)
  {
    v12 = v11;
    [a6 size];
    v14 = v13;
    [a6 size];
    v22.size.height = v15;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v14;
    v16 = CGImageCreateWithImageInRect(v12, v22);

    if (v16)
    {
      v17 = v16;
      [a6 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:objc_msgSend(a6 orientation:{"imageOrientation"), v18}];

      [v19 drawInRect:{a1, a2, a3, a4}];
    }
  }
}

uint64_t sub_10022F360()
{
  sub_100005528();
  v1[195] = v0;
  v1[189] = v2;
  v3 = type metadata accessor for URL();
  v1[201] = v3;
  sub_1001B6A00(v3);
  v1[207] = v4;
  v1[208] = sub_1002335CC();
  v1[209] = swift_task_alloc();
  v5 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  v1[210] = v5;
  sub_100006A0C(v5);
  v1[211] = sub_1002335CC();
  v1[212] = swift_task_alloc();
  v1[213] = swift_task_alloc();
  v1[214] = swift_task_alloc();
  v1[215] = swift_task_alloc();
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v6 = sub_10000448C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10022F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 1728);
  v16 = *(v14 + 1608);
  v17 = *(v14 + 1512);
  sub_1001E4070();
  sub_1001A9674(v18, v19, v20, v16);
  v21 = sub_10023314C();
  sub_1001A9674(v21, v22, 1, v16);
  v23 = v17[1];
  v24 = *(v14 + 1512);
  if (v23)
  {
    v25 = *v17;
    v26 = *(v17 + 1);
    v27 = *(v17 + 3);
    *(v14 + 1432) = *(v17 + 2);
    *(v14 + 1448) = v27;
    *(v14 + 1416) = v26;
    *(v14 + 1400) = v25;
    *(v14 + 1408) = v23;
    v28 = *(v24 + 80);
    if (v28)
    {
      v30 = *(v24 + 104);
      v29 = *(v24 + 112);
      v31 = *(v24 + 88);
      *(v14 + 1464) = *(v24 + 72);
      *(v14 + 1472) = v28;
      *(v14 + 1480) = v31;
      *(v14 + 1496) = v30;
      *(v14 + 1504) = v29;
      v32 = swift_task_alloc();
      *(v14 + 1744) = v32;
      *(v32 + 16) = v14 + 1464;
      swift_asyncLet_begin();
      v33 = swift_task_alloc();
      *(v14 + 1752) = v33;
      *(v33 + 16) = v14 + 1400;
      swift_asyncLet_begin();
      sub_100005B0C();

      return _swift_asyncLet_get(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v45 = *(v17 + 1);
      v46 = *(v17 + 3);
      *(v14 + 1368) = *(v17 + 2);
      *(v14 + 1384) = v46;
      *(v14 + 1352) = v45;
      *(v14 + 1336) = v25;
      *(v14 + 1344) = v23;
      swift_task_alloc();
      sub_1000062E8();
      *(v14 + 1768) = v47;
      *v47 = v48;
      v47[1] = sub_10022FF74;
      sub_100005B0C();

      return sub_100224A38();
    }
  }

  else if (*(v24 + 80))
  {
    swift_task_alloc();
    sub_1000062E8();
    *(v14 + 1760) = v42;
    *v42 = v43;
    v42[1] = sub_10022FC94;
    sub_100233200();
    sub_100005B0C();

    return sub_10022A6B8();
  }

  else
  {
    v50 = sub_100233250();
    sub_1002319FC(v50, v15, &qword_1003B5800, &qword_1002C40D0);
    sub_1002330B4();
    if (v52)
    {
      sub_1001B2DDC(v51, &qword_1003B5800, &qword_1002C40D0);
    }

    else
    {
      v53 = sub_100232F54();
      v54(v53);
      sub_1001A6C04(&qword_1003B6BB0, &qword_1002C4030);
      sub_1001F7388();
      v55 = swift_allocObject();
      v56 = sub_100232FC0(v55, xmmword_1002C3960);
      v57(v56);
      v58 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
      v55[2].n128_u64[0] = sub_100005920();
      v59 = sub_1001F761C();
      sub_100231AB8(v59, v60);
      v61 = sub_10000595C();
      v62(v61);
    }

    v63 = sub_10023320C();
    sub_1002319FC(v63, v15, &qword_1003B5800, &qword_1002C40D0);
    sub_100233100(v15);
    if (v52)
    {
      v16 = 0;
    }

    else
    {
      sub_1002333D4(v64);
      v65 = sub_10023308C();
      v66(v65);
    }

    [sub_100004864() setGameIcon:v16];

    sub_100233200();
    sub_1001B2DDC(v67, v68, v69);
    sub_100233200();
    sub_1001B2DDC(v70, v71, v72);

    sub_1000046F8();
    sub_100005B0C();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10022F8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005528();
  sub_1002319FC(v14[214], v14[213], &qword_1003B5800, &qword_1002C40D0);
  v19 = v14[215];

  return _swift_asyncLet_get(v14 + 2, v19, sub_10022F944, v14 + 190, v15, v16, v17, v18, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10022F958()
{
  sub_1001AFA50();
  v1 = v0[217];
  v2 = v0[213];
  sub_1001B2DDC(v0[216], &qword_1003B5800, &qword_1002C40D0);
  sub_1001B2DDC(v1, &qword_1003B5800, &qword_1002C40D0);
  sub_100231B2C(v2, v1);
  v3 = sub_1001D1B80();
  sub_1002319FC(v3, v4, &qword_1003B5800, &qword_1002C40D0);
  v5 = v0[214];

  return _swift_asyncLet_finish(v0 + 82, v5, sub_10022FA24, v0 + 196);
}

uint64_t sub_10022FA38()
{
  sub_100005528();

  v1 = *(v0 + 1720);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10022FAA0, v0 + 1616);
}

uint64_t sub_10022FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();

  v16 = sub_100233250();
  sub_1002319FC(v16, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_1002330B4();
  if (v18)
  {
    sub_1001B2DDC(v17, &qword_1003B5800, &qword_1002C40D0);
  }

  else
  {
    v19 = sub_100232F54();
    v20(v19);
    sub_1001A6C04(&qword_1003B6BB0, &qword_1002C4030);
    sub_1001F7388();
    v21 = swift_allocObject();
    v22 = sub_100232FC0(v21, xmmword_1002C3960);
    v23(v22);
    v24 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
    v21[2].n128_u64[0] = sub_100005920();
    v25 = sub_1001F761C();
    sub_100231AB8(v25, v26);
    v27 = sub_10000595C();
    v28(v27);
  }

  v29 = sub_10023320C();
  sub_1002319FC(v29, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_100233100(v15);
  if (v18)
  {
    v14 = 0;
  }

  else
  {
    sub_1002333D4(v30);
    v31 = sub_10023308C();
    v32(v31);
  }

  [sub_100004864() setGameIcon:v14];

  sub_100233200();
  sub_1001B2DDC(v33, v34, v35);
  sub_100233200();
  sub_1001B2DDC(v36, v37, v38);

  sub_1000046F8();
  sub_100005B0C();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10022FC94()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 1728);
  v16 = *(v14 + 1720);
  v17 = sub_100005558();
  sub_1001B2DDC(v17, v18, &qword_1002C40D0);
  v19 = sub_1001B6ACC();
  sub_100231B2C(v19, v20);
  v21 = sub_100233250();
  sub_1002319FC(v21, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_1002330B4();
  if (v23)
  {
    sub_1001B2DDC(v22, &qword_1003B5800, &qword_1002C40D0);
  }

  else
  {
    v24 = sub_100232F54();
    v25(v24);
    sub_1001A6C04(&qword_1003B6BB0, &qword_1002C4030);
    sub_1001F7388();
    v26 = swift_allocObject();
    v27 = sub_100232FC0(v26, xmmword_1002C3960);
    v28(v27);
    v29 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
    v26[2].n128_u64[0] = sub_100005920();
    v30 = sub_1001F761C();
    sub_100231AB8(v30, v31);
    v32 = sub_10000595C();
    v33(v32);
  }

  v34 = sub_10023320C();
  sub_1002319FC(v34, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_100233100(v15);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    sub_1002333D4(v35);
    v36 = sub_10023308C();
    v37(v36);
  }

  [sub_100004864() setGameIcon:v16];

  sub_100233200();
  sub_1001B2DDC(v38, v39, v40);
  sub_100233200();
  sub_1001B2DDC(v41, v42, v43);

  sub_1000046F8();
  sub_100005B0C();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10022FF74()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100230058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 1736);
  v16 = *(v14 + 1720);
  v17 = sub_100005558();
  sub_1001B2DDC(v17, v18, &qword_1002C40D0);
  v19 = sub_1001B6ACC();
  sub_100231B2C(v19, v20);
  v21 = sub_100233250();
  sub_1002319FC(v21, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_1002330B4();
  if (v23)
  {
    sub_1001B2DDC(v22, &qword_1003B5800, &qword_1002C40D0);
  }

  else
  {
    v24 = sub_100232F54();
    v25(v24);
    sub_1001A6C04(&qword_1003B6BB0, &qword_1002C4030);
    sub_1001F7388();
    v26 = swift_allocObject();
    v27 = sub_100232FC0(v26, xmmword_1002C3960);
    v28(v27);
    v29 = objc_allocWithZone(type metadata accessor for BulletinAttachment(0));
    v26[2].n128_u64[0] = sub_100005920();
    v30 = sub_1001F761C();
    sub_100231AB8(v30, v31);
    v32 = sub_10000595C();
    v33(v32);
  }

  v34 = sub_10023320C();
  sub_1002319FC(v34, v15, &qword_1003B5800, &qword_1002C40D0);
  sub_100233100(v15);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    sub_1002333D4(v35);
    v36 = sub_10023308C();
    v37(v36);
  }

  [sub_100004864() setGameIcon:v16];

  sub_100233200();
  sub_1001B2DDC(v38, v39, v40);
  sub_100233200();
  sub_1001B2DDC(v41, v42, v43);

  sub_1000046F8();
  sub_100005B0C();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100230254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF540;

  return sub_10022A6B8();
}

uint64_t sub_100230314(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  v4 = a2[5];
  if (v4)
  {
    v5 = a2[4];
    v6 = *a2;
    v7 = a2[1];
    v8 = swift_task_alloc();
    v2[6] = v8;
    *v8 = v2;
    v8[1] = sub_1002304F0;

    return sub_10022C00C(a1, v5, v4, v6, v7);
  }

  else
  {
    v10 = a2[7];
    if (v10)
    {
      v11 = a2[6];
      v12 = *a2;
      v13 = a2[1];
      v14 = swift_task_alloc();
      v2[7] = v14;
      *v14 = v2;
      v14[1] = sub_1002305D4;

      return sub_10022CB70(a1, v12, v13, v11, v10);
    }

    else
    {
      v16 = *a2;
      v15 = a2[1];
      v2[8] = *a2;
      v2[9] = v15;
      v17 = swift_task_alloc();
      v2[10] = v17;
      *v17 = v2;
      v17[1] = sub_1002306B8;

      return sub_10022C720(v16, v15);
    }
  }
}

uint64_t sub_1002304F0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1002305D4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1002306B8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  sub_100233018(v3, v4);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 88) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100230794()
{
  sub_100005528();
  if (*(v0 + 88))
  {
    swift_task_alloc();
    sub_1000062E8();
    *(v0 + 96) = v1;
    *v1 = v2;
    v3 = sub_1002333F0(v1);

    return sub_10022CB70(v3, v4, v5, v6, v7);
  }

  else
  {
    type metadata accessor for URL();
    v9 = sub_10023314C();
    sub_1001A9674(v9, v10, 1, v11);
    sub_1000046F8();

    return v12();
  }
}

uint64_t sub_100230870()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

id sub_100230970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinHelpersBridge();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1002309E0()
{
  sub_100005528();
  sub_100223A5C(*(v0 + 568), (v0 + 216));
  memcpy((v0 + 16), (v0 + 216), 0xC8uLL);
  if (sub_1001FBC7C(v0 + 16) != 1)
  {
    v1 = *(v0 + 32);
    *(v0 + 416) = *(v0 + 16);
    *(v0 + 432) = v1;
    v2 = *(v0 + 64);
    *(v0 + 448) = *(v0 + 48);
    *(v0 + 464) = v2;
    if (*(v0 + 424))
    {
      sub_1002319FC(v0 + 416, v0 + 480, &qword_1003B6580, &qword_1002C4E70);
      sub_1001B2DDC(v0 + 216, &qword_1003B6578, &unk_1002C8B50);
      v3 = sub_1001FC0E0();
      *(v0 + 576) = v3;
      *v3 = v0;
      v3[1] = sub_100230B3C;
      v4 = sub_100233490(*(v0 + 568));

      return v5(v4);
    }

    sub_1001B2DDC(v0 + 216, &qword_1003B6578, &unk_1002C8B50);
  }

  sub_1001B6A34();

  return v7();
}

uint64_t sub_100230B3C()
{
  sub_1000057FC();
  v1 = *v0;
  v2 = *v0;
  sub_100004410();
  *v3 = v2;
  v4 = *v0;
  sub_1001D14B0();
  *v5 = v4;
  v2[73] = v6;
  v2[74] = v7;

  v8 = sub_1001FC0E0();
  v2[75] = v8;
  *v8 = v4;
  v8[1] = sub_100230C7C;
  v9 = sub_100233490(v1[71]);

  return v10(v9);
}

uint64_t sub_100230C7C()
{
  sub_1000057FC();
  v1 = *v0;
  v2 = *v0;
  sub_100004410();
  *v3 = v2;
  v2[68] = v0;
  v2[69] = v4;
  v2[70] = v5;
  v6 = *v0;
  *v3 = *v0;
  v2[76] = v5;

  v7 = sub_1001FC0E0();
  v2[77] = v7;
  *v7 = v6;
  v7[1] = sub_100230DC4;
  v8 = sub_100233490(v1[71]);

  return v9(v8);
}

uint64_t sub_100230DC4()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 624) = v4;
  *(v2 + 632) = v5;

  sub_1001B2DDC(v2 + 416, &qword_1003B6580, &qword_1002C4E70);
  v6 = sub_10000448C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100230EC8()
{
  sub_100005528();
  if (v0[76])
  {
    v1 = v0 + 76;
    v2 = v0[69];
  }

  else
  {
    v1 = v0 + 79;
    v2 = v0[78];
  }

  v3 = *v1;
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[1];

  return v6(v5, v4, v2, v3);
}

uint64_t sub_100230FD4(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002310A0;

  return static BulletinHelpersBridge.formatBulletinStrings(forPushNotification:)(v3);
}

uint64_t sub_1002310A0()
{
  sub_1001AFA50();
  v2 = v1;
  v4 = v3;
  sub_1000057F0();
  v6 = v5;
  sub_1001D14B0();
  *v7 = v6;
  v8 = *v0;
  sub_100004410();
  *v9 = v8;

  if (v4)
  {
    v10 = String._bridgeToObjectiveC()();
    if (v2)
    {
LABEL_3:
      v11 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = *(v6 + 16);
  v13 = sub_100233698();
  v14(v13);

  _Block_release(v12);

  sub_1000046F8();

  return v15();
}

id BulletinHelpersBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinHelpersBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10023127C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100231290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002312D0(uint64_t result, int a2, int a3)
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

uint64_t sub_100231348(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023139C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100231430()
{
  result = qword_1003B75F8;
  if (!qword_1003B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B75F8);
  }

  return result;
}

unint64_t sub_1002314EC()
{
  result = qword_1003B7610;
  if (!qword_1003B7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7610);
  }

  return result;
}

void sub_100231540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_100231584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1002315D4()
{
  result = qword_1003B7618;
  if (!qword_1003B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7618);
  }

  return result;
}

unint64_t sub_100231628()
{
  result = qword_1003B7630;
  if (!qword_1003B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7630);
  }

  return result;
}

unint64_t sub_10023167C()
{
  result = qword_1003B7638;
  if (!qword_1003B7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7638);
  }

  return result;
}

unint64_t sub_1002316D0()
{
  result = qword_1003B7640;
  if (!qword_1003B7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7640);
  }

  return result;
}

unint64_t sub_100231724()
{
  result = qword_1003B7648;
  if (!qword_1003B7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7648);
  }

  return result;
}

unint64_t sub_1002317E0()
{
  result = qword_1003B7658;
  if (!qword_1003B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7658);
  }

  return result;
}

uint64_t sub_100231834(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B7620, &qword_1002C6A00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002318AC()
{
  result = qword_1003B7668;
  if (!qword_1003B7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7668);
  }

  return result;
}

unint64_t sub_100231900()
{
  result = qword_1003B7670;
  if (!qword_1003B7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7670);
  }

  return result;
}

unint64_t sub_100231954()
{
  result = qword_1003B7678;
  if (!qword_1003B7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7678);
  }

  return result;
}

unint64_t sub_1002319A8()
{
  result = qword_1003B7680;
  if (!qword_1003B7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7680);
  }

  return result;
}

uint64_t sub_1002319FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1001A6C04(a3, a4);
  sub_100005780();
  v5 = sub_1001B6ACC();
  v6(v5);
  return a2;
}

uint64_t sub_100231A58(void *a1)
{
  v1 = [a1 alias];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001B6ACC();
}

void sub_100231AB8(uint64_t a1, void *a2)
{
  type metadata accessor for BulletinAttachment(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setAttachments:isa];
}

uint64_t sub_100231B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5800, &qword_1002C40D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100231B9C()
{
  sub_100005528();
  swift_task_alloc();
  sub_1000062E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_10023366C(v1);

  return sub_100230254();
}

uint64_t sub_100231C28()
{
  sub_100005528();
  swift_task_alloc();
  sub_1000062E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_10023366C(v1);

  return sub_100230314(v3, v4);
}

uint64_t sub_100231CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100231D74(uint64_t *a1, uint64_t *a2)
{
  sub_1001A6C04(a1, a2);
  sub_100005780();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v2 + v5);

  return _swift_deallocObject(v2, v6 + 16, v4 | 7);
}

uint64_t sub_100231E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v5 = sub_1001A6C04(a3, a4);
  sub_1001B6A00(v5);
  v6 = sub_1001D1B80();

  return a5(v6);
}

uint64_t sub_100231EF8()
{
  v0 = type metadata accessor for URL();
  sub_1001B6A00(v0);
  v1 = sub_1001A6C04(&qword_1003B7688, &unk_1002C6A60);
  sub_100006A0C(v1);
  v2 = sub_1001D1B80();

  return sub_10022B74C(v2, v3, v4, v5, v6);
}

uint64_t sub_100231FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  v10 = [a6 _gkImageCachePathForURL:a1 subdirectory:v8 filename:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t sub_1002320B0()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;
  v2 = sub_100005540();

  return v3(v2);
}

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.PlayerRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100232354(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100232394(uint64_t result, int a2, int a3)
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

__n128 sub_1002323E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002323F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100232434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}