uint64_t sub_10016D418(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_10016D778;
  }

  else
  {
    v6 = sub_10016D54C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10016D54C()
{
  v1 = v0[5];
  v2 = v0[6];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  sub_10000CDE0(&qword_10023D690, &qword_1001C1718);
  sub_10016EDF4();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  if (v2)
  {
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000DAC0(v6, qword_10023FD18);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve stories: %@", v9, 0xCu);
      sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v12 = v3;
    v13 = v5;
  }

  v14 = v0[1];

  return v14(v12, v13);
}

uint64_t sub_10016D778()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve stories: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 0xF000000000000000);
}

uint64_t sub_10016D920(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10016D944, v2, 0);
}

uint64_t sub_10016D944()
{
  v1 = v0[3];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
  sub_10016EF8C(&qword_10023D850, sub_10014C9AC, &protocol conformance descriptor for <A> [A]);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  v0[6] = v4;
  v0[7] = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10016DC30;
  v6 = v0[4];

  return sub_1001553C8(v2, v4, v6);
}

uint64_t sub_10016DC30()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10016DD40, v1, 0);
}

uint64_t sub_10016DD40()
{
  sub_10001BABC(v0[7], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DDA0()
{

  sub_10000DB58((v0 + 136));
  sub_10000DB58((v0 + 176));
  v1 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionStream;
  v2 = sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionContinuation;
  v4 = sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SnoutManager(uint64_t a1)
{
  result = qword_10023E250;
  if (!qword_10023E250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016DEE4(uint64_t a1)
{
  sub_10016E004(319, &qword_10023E260, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10016E004(319, &unk_10023E268, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10016E004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SnoutManager.SnoutAction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016E058(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10016E080(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_10016E0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 86) | ((*(a1 + 96) >> 1) << 16);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10016E124(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 232) = 0;
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 240) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 242) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      v4 = -a2;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = v4 << 48;
      *(a1 + 88) = 0;
      *(a1 + 96) = (v4 >> 15) & 0x1FFFE;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 226) = 0u;
      return result;
    }

    *(a1 + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016E1F8(uint64_t result, __int16 a2)
{
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 0xFF01;
  v4 = *(result + 128) & 1;
  v5 = *(result + 144) & 0xFFFF01;
  v6 = *(result + 160) & 1;
  v7 = *(result + 184) & 0xFFFFFFLL;
  v8 = *(result + 240) & 0x103 | (a2 << 15);
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 184) = v7;
  *(result + 240) = v8;
  return result;
}

uint64_t sub_10016E27C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 258) = a4;
  *(v5 + 976) = a3;
  *(v5 + 968) = a2;
  *(v5 + 960) = a1;
  v6 = a1[11];
  *(v5 + 672) = a1[10];
  *(v5 + 688) = v6;
  v7 = a1[13];
  *(v5 + 704) = a1[12];
  *(v5 + 720) = v7;
  v8 = a1[7];
  *(v5 + 608) = a1[6];
  *(v5 + 624) = v8;
  v9 = a1[9];
  *(v5 + 640) = a1[8];
  *(v5 + 656) = v9;
  v10 = a1[3];
  *(v5 + 544) = a1[2];
  *(v5 + 560) = v10;
  v11 = a1[5];
  *(v5 + 576) = a1[4];
  *(v5 + 592) = v11;
  v12 = a1[1];
  *(v5 + 512) = *a1;
  *(v5 + 528) = v12;
  v13 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v5 + 984) = v13;
  *(v5 + 992) = *(v13 - 8);
  *(v5 + 1000) = swift_task_alloc();
  v14 = *v4;
  *(v5 + 1008) = *v4;

  return _swift_task_switch(sub_10016E390, v14, 0);
}

uint64_t sub_10016E390()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v23 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 688);
  *(v0 + 176) = *(v0 + 672);
  *(v0 + 192) = v6;
  v7 = *(v0 + 720);
  *(v0 + 208) = *(v0 + 704);
  *(v0 + 224) = v7;
  v8 = *(v0 + 624);
  *(v0 + 112) = *(v0 + 608);
  *(v0 + 128) = v8;
  v9 = *(v0 + 656);
  *(v0 + 144) = *(v0 + 640);
  *(v0 + 160) = v9;
  v10 = *(v0 + 560);
  *(v0 + 48) = *(v0 + 544);
  *(v0 + 64) = v10;
  v11 = *(v0 + 592);
  *(v0 + 80) = *(v0 + 576);
  *(v0 + 96) = v11;
  v12 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v12;
  v13 = *(v0 + 258);
  *(v0 + 240) = v4;
  *(v0 + 248) = v3;
  *(v0 + 256) = v13;
  *(v0 + 257) = 1;
  sub_1000E191C(v0 + 16);
  v14 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v14;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v15 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v15;
  v16 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v16;
  v17 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v17;
  v18 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v18;
  v19 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v19;
  v20 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v20;
  sub_100010568(v5, v0 + 736);
  sub_10016E7C0(v4, v3, v13);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v23);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10016E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[66] = a3;
  v4[65] = a2;
  v4[64] = a1;
  v5 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  v4[67] = v5;
  v4[68] = *(v5 - 8);
  v4[69] = swift_task_alloc();
  v6 = *v3;
  v4[70] = *v3;

  return _swift_task_switch(sub_10016E60C, v6, 0);
}

uint64_t sub_10016E60C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v4;
  sub_10016E74C(v0 + 16);
  v5 = *(v0 + 224);
  v6 = *(v0 + 240);
  v7 = *(v0 + 192);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v5;
  *(v0 + 488) = v6;
  v8 = *(v0 + 160);
  v9 = *(v0 + 176);
  v10 = *(v0 + 128);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v8;
  *(v0 + 424) = v9;
  *(v0 + 440) = v7;
  v11 = *(v0 + 96);
  v12 = *(v0 + 112);
  v13 = *(v0 + 64);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v11;
  *(v0 + 360) = v12;
  *(v0 + 376) = v10;
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v14;
  *(v0 + 504) = *(v0 + 256);
  *(v0 + 296) = v15;
  *(v0 + 312) = v13;

  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10016E74C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 0xFF01;
  v3 = *(result + 128) & 1;
  v4 = *(result + 144) & 0xFFFF01;
  v5 = *(result + 160) & 1;
  v6 = *(result + 184) & 0xFFFFFFLL;
  v7 = *(result + 240) & 0x103 | 0x8000;
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 184) = v6;
  *(result + 240) = v7;
  return result;
}

uint64_t sub_10016E7C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *sub_10016E7D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v43 = a5;
  v42 = a3;
  v44 = a2;
  v41 = a1;
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v6 - 8);
  v40 = &v40 - v7;
  v8 = sub_10000CDE0(&qword_10023E3D8, &qword_1001C3B90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_10000CDE0(&qword_10023E3E0, &qword_1001C3B98);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v48[3] = &type metadata for SnoutStoryMetrics;
  v48[4] = &off_100216E60;
  v19 = swift_allocObject();
  v48[0] = v19;
  v20 = *(a4 + 16);
  *(v19 + 16) = *a4;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a4 + 32);
  v47[3] = &type metadata for AppStoreDaemonSKANInterop;
  v47[4] = &off_100222C60;
  type metadata accessor for SnoutManager(0);
  v21 = swift_allocObject();
  v22 = sub_100054C30(v48, &type metadata for SnoutStoryMetrics);
  __chkstk_darwin(v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  sub_100054C30(v47, &type metadata for AppStoreDaemonSKANInterop);
  v46[3] = &type metadata for SnoutStoryMetrics;
  v46[4] = &off_100216E60;
  v26 = swift_allocObject();
  v46[0] = v26;
  v27 = *(v24 + 1);
  *(v26 + 16) = *v24;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v24 + 4);
  v45[3] = &type metadata for AppStoreDaemonSKANInterop;
  v45[4] = &off_100222C60;
  swift_defaultActor_initialize();
  v28 = v44;
  *(v21 + 14) = v41;
  *(v21 + 15) = v28;
  v29 = v42;
  *(v21 + 16) = v42;
  sub_10000CE28(v46, (v21 + 136));
  sub_10000CE28(v45, (v21 + 176));
  (*(v9 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);

  v42 = v29;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v9 + 8))(v11, v8);
  sub_100014B50(v18, v16, &qword_10023E3E0, &qword_1001C3B98);
  v30 = *(v13 + 56);
  v31 = OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionStream;
  v32 = sub_10000CDE0(&qword_10023E3C0, &qword_1001C3B78);
  v33 = *(v32 - 8);
  (*(v33 + 32))(&v21[v31], v16, v32);
  v34 = sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  v35 = *(v34 - 8);
  (*(v35 + 8))(&v16[v30], v34);
  sub_100014B50(v18, v16, &qword_10023E3E0, &qword_1001C3B98);
  (*(v35 + 32))(&v21[OBJC_IVAR____TtC20AttributionKitDaemon12SnoutManager_snoutActionContinuation], &v16[*(v13 + 56)], v34);
  (*(v33 + 8))(v16, v32);
  if (v43)
  {
    v36 = type metadata accessor for TaskPriority();
    v37 = v40;
    (*(*(v36 - 8) + 56))(v40, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v21;

    sub_10001267C(0, 0, v37, &unk_1001C3BA8, v38);

    sub_10000DAF8(v18, &qword_10023E3E0, &qword_1001C3B98);
  }

  else
  {
    sub_10000DAF8(v18, &qword_10023E3E0, &qword_1001C3B98);
  }

  sub_10000DB58(v45);
  sub_10000DB58(v46);
  sub_10000DB58(v47);
  sub_10000DB58(v48);
  return v21;
}

unint64_t sub_10016EDF4()
{
  result = qword_10023E398;
  if (!qword_10023E398)
  {
    sub_10000CCC0(&qword_10023D690, &qword_1001C1718);
    sub_10016F5A0(&qword_10023A0B0, type metadata accessor for SnoutStoryModel, &unk_1001B3C8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E398);
  }

  return result;
}

uint64_t sub_10016EEA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016EF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016EF8C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023D848, &unk_1001C19E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016F004()
{
  result = qword_10023E3A8;
  if (!qword_10023E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3A8);
  }

  return result;
}

uint64_t sub_10016F0B4@<X0>(uint64_t (*a1)(unint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v6 = *(type metadata accessor for Date() - 8);
  result = a1(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10016F198()
{

  return _swift_deallocObject(v0, 488, 7);
}

unint64_t sub_10016F2C0()
{
  result = qword_10023E3B0;
  if (!qword_10023E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3B0);
  }

  return result;
}

uint64_t sub_10016F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F3A4()
{
  v1 = type metadata accessor for SnoutStoryModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10016F51C()
{

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_10016F5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016F5E8(uint64_t a1)
{
  v1 = *(a1 + 86) | ((*(a1 + 96) >> 1) << 16);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016F614()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016F64C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016F68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1001637D0();
}

unint64_t sub_10016F760(uint64_t a1)
{
  result = sub_10016F2C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10016F78C()
{
  result = qword_10023E3E8;
  if (!qword_10023E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E3E8);
  }

  return result;
}

void sub_10016F838(void *a1)
{
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    return;
  }

  v3 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v3))
  {
    return;
  }

  v4 = String.init(cString:)();
  v6 = v5;
  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000DAC0(v7, qword_10023FC70);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10017AD04(v4, v6, &v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "Received xpc event: %s", v10, 0xCu);
    sub_10000DB58(v11);
  }

  v12 = xpc_dictionary_get_dictionary(a1, "UserInfo");
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = xpc_get_type(v12);
  if (v13 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_unknownObjectRelease();
LABEL_11:
    v14 = [objc_opt_self() defaultCenter];
    v20 = String._bridgeToObjectiveC()();

    [v14 postNotificationName:v20 object:0];

    return;
  }

  v15 = _CFXPCCreateCFObjectFromXPCObject();
  if (v15 && (v22 = v15, sub_10000CDE0(&qword_10023A758, &qword_1001B5880), swift_dynamicCast()))
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() defaultCenter];
  v18 = String._bridgeToObjectiveC()();

  if (v16)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v17 postNotificationName:v18 object:0 userInfo:v19.super.isa];
  swift_unknownObjectRelease();
}

uint64_t sub_10016FB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 72) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_10016FBB0, 0, 0);
}

uint64_t sub_10016FBB0()
{
  v1 = *(v0 + 72);
  if (v1 == 255)
  {
    v7 = *(v0 + 40);
    os_unfair_lock_lock((v7 + 36));
    v5 = *(v7 + 16);
    v6 = *(v7 + 24);
    v4 = *(v7 + 32);
    sub_100014BB8(v5, v6, *(v7 + 32));
    os_unfair_lock_unlock((v7 + 36));
    if (v4 == 255)
    {
      goto LABEL_6;
    }

    LOBYTE(v1) = *(v0 + 72);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    LOBYTE(v4) = *(v0 + 72);
    v5 = v2;
    v6 = v3;
  }

  sub_100014BB8(v2, v3, v1);
  sub_1000262C0(v5, v6, v4 & 1);
  sub_100014BF8(v5, v6, v4 & 1);
LABEL_6:
  v11 = (*(v0 + 48) + **(v0 + 48));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_10016FD30;
  v9 = *(v0 + 16);

  return v11(v9);
}

uint64_t sub_10016FD30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10016FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10016FE7C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a4;
  v41 = a3;
  v15 = type metadata accessor for Logger();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v46);
  if (*(&v46[1] + 1) != 1)
  {
    v47[0] = v46[0];
    v47[1] = v46[1];
    v48 = *&v46[2];
    goto LABEL_5;
  }

  v39 = a5;
  sub_10000DAF8(v46, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), v47);

    a5 = v39;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_100014ECC(a6, v46);
    sub_1000B6D74(v47, v44);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v41;
    *(v23 + 56) = v42;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v46, 0x260uLL);
    v24 = v44[1];
    *(v23 + 680) = v44[0];
    *(v23 + 696) = v24;
    *(v23 + 712) = v45;
    *(v23 + 720) = v9;
    *(v23 + 728) = v43;
    *(v23 + 736) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C4008, v23);

    return sub_1000D5894(v47);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v40;
  (*(v40 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v43();
  sub_10001BABC(v36, v38);
}

uint64_t sub_1001702C4(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_10001518C(a6, v47);
    sub_1000B6D74(v48, v45);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v42;
    *(v23 + 56) = v43;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v47, 0x408uLL);
    v24 = v45[1];
    *(v23 + 1104) = v45[0];
    *(v23 + 1120) = v24;
    *(v23 + 1136) = v46;
    *(v23 + 1144) = v9;
    *(v23 + 1152) = v44;
    *(v23 + 1160) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3F90, v23);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v41;
  (*(v41 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v44();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100170708(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a4;
  v41 = a3;
  v15 = type metadata accessor for Logger();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v46);
  if (*(&v46[1] + 1) != 1)
  {
    v47[0] = v46[0];
    v47[1] = v46[1];
    v48 = *&v46[2];
    goto LABEL_5;
  }

  v39 = a5;
  sub_10000DAF8(v46, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), v47);

    a5 = v39;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_10001518C(a6, v46);
    sub_1000B6D74(v47, v44);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v41;
    *(v23 + 56) = v42;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v46, 0x408uLL);
    v24 = v44[1];
    *(v23 + 1104) = v44[0];
    *(v23 + 1120) = v24;
    *(v23 + 1136) = v45;
    *(v23 + 1144) = v9;
    *(v23 + 1152) = v43;
    *(v23 + 1160) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3FB8, v23);

    return sub_1000D5894(v47);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v40;
  (*(v40 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017B8D8(v35, 0, 1);
  v38 = v37;
  v43();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100170B38(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_100014F7C(a6, v47);
    sub_1000B6D74(v48, v45);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v42;
    *(v23 + 56) = v43;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v47, 0x1F8uLL);
    v24 = v45[1];
    *(v23 + 576) = v45[0];
    *(v23 + 592) = v24;
    *(v23 + 608) = v46;
    *(v23 + 616) = v9;
    *(v23 + 624) = v44;
    *(v23 + 632) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3F40, v23);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v41;
  (*(v41 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v44();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100170F78(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_100014F7C(a6, v47);
    sub_1000B6D74(v48, v45);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v42;
    *(v23 + 56) = v43;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v47, 0x1F8uLL);
    v24 = v45[1];
    *(v23 + 576) = v45[0];
    *(v23 + 592) = v24;
    *(v23 + 608) = v46;
    *(v23 + 616) = v9;
    *(v23 + 624) = v44;
    *(v23 + 632) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3F68, v23);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v41;
  (*(v41 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v38 = v37;
  v44();
  sub_10001BABC(v36, v38);
}

uint64_t sub_1001713B8(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_1000150DC(a6, v47);
    sub_1000B6D74(v48, v45);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v42;
    *(v23 + 56) = v43;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v47, 0x258uLL);
    v24 = v45[1];
    *(v23 + 672) = v45[0];
    *(v23 + 688) = v24;
    *(v23 + 704) = v46;
    *(v23 + 712) = v9;
    *(v23 + 720) = v44;
    *(v23 + 728) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3F18, v23);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v41;
  (*(v41 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v44();
  sub_10001BABC(v36, v38);
}

uint64_t sub_1001717F8(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v44 = a4;
  v42 = a3;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v47);
  if (*(&v47[1] + 1) != 1)
  {
    v48[0] = v47[0];
    v48[1] = v47[1];
    v49 = *&v47[2];
    goto LABEL_5;
  }

  v40 = a5;
  sub_10000DAF8(v47, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v47[0], *(&v47[0] + 1), *&v47[1], *(&v47[1] + 1), v48);

    a5 = v40;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_100014E1C(a6, v47);
    sub_1000B6D74(v48, v45);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v42;
    *(v23 + 56) = v43;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v47, 0x5C8uLL);
    v24 = v45[1];
    *(v23 + 1552) = v45[0];
    *(v23 + 1568) = v24;
    *(v23 + 1584) = v46;
    *(v23 + 1592) = v9;
    *(v23 + 1600) = v44;
    *(v23 + 1608) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3EF0, v23);

    return sub_1000D5894(v48);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v41;
  (*(v41 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v44();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100171C3C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a4;
  v41 = a3;
  v15 = type metadata accessor for Logger();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v46);
  if (*(&v46[1] + 1) != 1)
  {
    v47[0] = v46[0];
    v47[1] = v46[1];
    v48 = *&v46[2];
    goto LABEL_5;
  }

  v39 = a5;
  sub_10000DAF8(v46, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), v47);

    a5 = v39;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v46);
    sub_1000B6D74(v47, v44);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v41;
    *(v23 + 56) = v42;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v46, 0x2B0uLL);
    v24 = v44[1];
    *(v23 + 760) = v44[0];
    *(v23 + 776) = v24;
    *(v23 + 792) = v45;
    *(v23 + 800) = v9;
    *(v23 + 808) = v43;
    *(v23 + 816) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3EC0, v23);

    return sub_1000D5894(v47);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v40;
  (*(v40 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v38 = v37;
  v43();
  sub_10001BABC(v36, v38);
}

uint64_t sub_100172084(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a4;
  v41 = a3;
  v15 = type metadata accessor for Logger();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  sub_1000F2AD4(v46);
  if (*(&v46[1] + 1) != 1)
  {
    v47[0] = v46[0];
    v47[1] = v46[1];
    v48 = *&v46[2];
    goto LABEL_5;
  }

  v39 = a5;
  sub_10000DAF8(v46, &qword_10023CF98, &unk_1001C3DD0);
  v21 = [objc_opt_self() currentConnection];
  if (v21)
  {
    v22 = v21;
    [v21 auditToken];
    sub_1000B78E0(*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), v47);

    a5 = v39;
LABEL_5:
    sub_100014B50(a7, v20, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v46);
    sub_1000B6D74(v47, v44);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;
    *(v23 + 48) = v41;
    *(v23 + 56) = v42;
    *(v23 + 64) = a9;
    memcpy((v23 + 72), v46, 0x2B0uLL);
    v24 = v44[1];
    *(v23 + 760) = v44[0];
    *(v23 + 776) = v24;
    *(v23 + 792) = v45;
    *(v23 + 800) = v9;
    *(v23 + 808) = v43;
    *(v23 + 816) = a5;

    v25 = v9;

    sub_10001267C(0, 0, v20, &unk_1001C3DE8, v23);

    return sub_1000D5894(v47);
  }

  sub_1000F341C();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = Logger.xpc.unsafeMutableAddressor();
  v29 = v40;
  (*(v40 + 16))(v17, v28, v15);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Received error while getting client: %@", v32, 0xCu);
    sub_10000DAF8(v33, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v29 + 8))(v17, v15);
  v35 = sub_1000F2D3C(v27);
  v36 = sub_10017BB68(v35 | 0x100u, &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v38 = v37;
  v43();
  sub_10001BABC(v36, v38);
}

uint64_t sub_1001724CC(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a8;
  v46 = a4;
  v47 = a5;
  v44 = a3;
  v42 = a1;
  v43 = a2;
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v19 - 8);
  v21 = v41 - v20;
  sub_1000F2AD4(v50);
  if (*(&v50[1] + 1) != 1)
  {
    v51[0] = v50[0];
    v51[1] = v50[1];
    v52 = *&v50[2];
    goto LABEL_5;
  }

  v41[1] = v12;
  sub_10000DAF8(v50, &qword_10023CF98, &unk_1001C3DD0);
  v22 = [objc_opt_self() currentConnection];
  if (v22)
  {
    v23 = v22;
    [v22 auditToken];
    sub_1000B78E0(*&v50[0], *(&v50[0] + 1), *&v50[1], *(&v50[1] + 1), v51);

LABEL_5:
    sub_100014B50(a7, v21, &qword_100239EE0, &qword_1001B3640);
    sub_10001502C(a6, v50);
    sub_1000B6D74(v51, v48);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = v43;
    *(v24 + 32) = v42;
    *(v24 + 40) = v25;
    *(v24 + 48) = v44;
    *(v24 + 56) = v45;
    *(v24 + 64) = a9;
    memcpy((v24 + 72), v50, 0x2B0uLL);
    v26 = v48[1];
    *(v24 + 760) = v48[0];
    *(v24 + 776) = v26;
    *(v24 + 792) = v49;
    *(v24 + 800) = v9;
    v27 = v47;
    *(v24 + 808) = v46;
    *(v24 + 816) = v27;

    v28 = v9;

    sub_10001267C(0, 0, v21, &unk_1001C3E78, v24);

    return sub_1000D5894(v51);
  }

  sub_1000F341C();
  v30 = swift_allocError();
  swift_willThrow();
  v31 = Logger.xpc.unsafeMutableAddressor();
  v32 = v16;
  (*(v16 + 16))(v18, v31, v15);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Received error while getting client: %@", v35, 0xCu);
    sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v32 + 8))(v18, v15);
  *v14 = sub_1000F2D3C(v30);
  swift_storeEnumTagMultiPayload();
  v38 = sub_10017B65C(v14);
  v40 = v39;
  sub_10000DAF8(v14, &qword_10023CF90, &unk_1001BF9B8);
  v46(v38, v40);
  sub_10001BABC(v38, v40);
}

uint64_t sub_100172970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100172AE4, 0, 0);
}

uint64_t sub_100172AE4()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C4018;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100172F54()
{

  if (v0)
  {

    v1 = sub_10017E0EC;
  }

  else
  {

    v1 = sub_10017E060;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1001730F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100173268, 0, 0);
}

uint64_t sub_100173268()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3FF0;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001736D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10017384C, 0, 0);
}

uint64_t sub_10017384C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3FA0;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100173CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100173E30, 0, 0);
}

uint64_t sub_100173E30()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3FC8;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001742A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100174414, 0, 0);
}

uint64_t sub_100174414()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3F50;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100174884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1001749F8, 0, 0);
}

uint64_t sub_1001749F8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3F78;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100174E68;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100174E68()
{

  if (v0)
  {

    v1 = sub_100175278;
  }

  else
  {

    v1 = sub_100175008;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100175008()
{
  v22 = v0;
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  sub_10000DAF8(v1, &qword_10023A2B8, &qword_1001BC460);
  v5 = Logger.xpc.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[24];
  if (v8)
  {
    v20 = v0[26];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = *(v9 + 24);
    v16 = *(v9 + 32);

    v17 = sub_10017AD04(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Transaction %s out of scope", v13, 0xCu);
    sub_10000DB58(v14);

    (*(v10 + 8))(v20, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100175278()
{
}

uint64_t sub_10017530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100175480, 0, 0);
}

uint64_t sub_100175480()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3F28;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001758F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100175A64, 0, 0);
}

uint64_t sub_100175A64()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3F00;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100175ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100176048, 0, 0);
}

uint64_t sub_100176048()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3ED0;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001764B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10017662C, 0, 0);
}

uint64_t sub_10017662C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3E00;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100176A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = v12;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100176C10, 0, 0);
}

uint64_t sub_100176C10()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v31 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v31;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v13, &qword_10023A2B8, &qword_1001BC460);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = *(v0 + 240);
  if (v16 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v30 = *(v0 + 128);
    v28 = *(v0 + 120);
    v23 = *(v0 + 320);
    (*(v21 + 32))(v19, *(v0 + 232), v22);
    (*(v21 + 16))(v20, v19, v22);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v18 = sub_1000F61B0(v28, v30, v23, v20);
    (*(v21 + 8))(v19, v22);
    sub_10000DAF8(v17, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v18;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v18;
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = -1;
  *(v24 + 40) = v10;
  *(v24 + 48) = v12;
  *(v24 + 56) = v18;
  *(v24 + 64) = &unk_1001C3E88;
  *(v24 + 72) = v9;

  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  *v25 = v0;
  v25[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100177080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100177164, 0, 0);
}

uint64_t sub_100177164(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[14] = v5;
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[17] = v14;
  v14(v10, v11);
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_100177334;
  v16 = v1[4];
  v17 = v1[5];

  return (v19)(v1 + 20, v16, v17);
}

uint64_t sub_100177334()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10017E174;
  }

  else
  {
    v2 = sub_10017E058;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100177448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 184) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100177574, 0, 0);
}

uint64_t sub_100177574(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[17] = v5;
  v6 = *(v4 + 16);
  v1[18] = v6;
  v1[19] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[20] = v14;
  v14(v10, v11);
  v20 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[21] = v15;
  *v15 = v1;
  v15[1] = sub_100177744;
  v16 = v1[15];
  v17 = v1[4];
  v18 = v1[5];

  return v20(v16, v17, v18);
}

uint64_t sub_100177744()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10017E170;
  }

  else
  {
    v2 = sub_10017E180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100177858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v12;
  *(v8 + 96) = v13;
  *(v8 + 33) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10017793C, 0, 0);
}

uint64_t sub_10017793C(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[17] = v5;
  v6 = *(v4 + 16);
  v1[18] = v6;
  v1[19] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v13 = v1[5];

  v14 = *(v12 + 8);
  v1[20] = v14;
  v14(v10, v11);
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[21] = v15;
  *v15 = v1;
  v15[1] = sub_100177B0C;
  v16 = v1[7];
  v17 = v1[8];

  return (v19)(v1 + 2, v16, v17);
}

uint64_t sub_100177B0C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100177D00;
  }

  else
  {
    v2 = sub_100177C20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100177C20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[11];
  v4 = v0[22] != 0;
  v5 = sub_10017B8D8(v1, v2, v4);
  v7 = v6;
  v3();
  sub_10001BABC(v5, v7);
  sub_10017DBBC(v1, v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100177D00()
{
  v25 = v0;
  (*(v0 + 144))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v22 = *(v0 + 120);
    v23 = *(v0 + 160);
    v21 = *(v0 + 104);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v3 = 136315394;
    v6 = StaticString.description.getter();
    v8 = sub_10017AD04(v6, v7, &v24);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v3, 0x16u);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v5);

    v23(v22, v21);
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);

    v10(v11, v12);
  }

  v13 = sub_1000F2D3C(*(v0 + 176));

  v14 = *(v0 + 88);
  v15 = *(v0 + 176) != 0;
  v16 = sub_10017B8D8(v13, 0, v15);
  v18 = v17;
  v14();
  sub_10001BABC(v16, v18);
  sub_10017DBBC(v13, 0, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100177FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10017808C, 0, 0);
}

uint64_t sub_10017808C(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[14] = v5;
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[17] = v14;
  v14(v10, v11);
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_10017825C;
  v16 = v1[4];
  v17 = v1[5];

  return (v19)(v1 + 20, v16, v17);
}

uint64_t sub_10017825C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100178448;
  }

  else
  {
    v2 = sub_100178370;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100178370()
{
  v1 = *(v0 + 64);
  v2 = sub_10017BB68(*(v0 + 160) | ((*(v0 + 152) != 0) << 8), &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v4 = v3;
  v1();
  sub_10001BABC(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100178448()
{
  v24 = v0;
  (*(v0 + 120))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 136);
    v20 = *(v0 + 80);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v3 = 136315394;
    v6 = StaticString.description.getter();
    v8 = sub_10017AD04(v6, v7, &v23);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v3, 0x16u);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v5);

    v22(v21, v20);
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);

    v10(v11, v12);
  }

  v13 = sub_1000F2D3C(*(v0 + 152));

  v14 = *(v0 + 64);
  v15 = sub_10017BB68(v13 | ((*(v0 + 152) != 0) << 8), &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v17 = v16;
  v14();
  sub_10001BABC(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001786F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1001787D8, 0, 0);
}

uint64_t sub_1001787D8(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[14] = v5;
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[17] = v14;
  v14(v10, v11);
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_1001789A8;
  v16 = v1[4];
  v17 = v1[5];

  return (v19)(v1 + 20, v16, v17);
}

uint64_t sub_1001789A8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100178B94;
  }

  else
  {
    v2 = sub_100178ABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100178ABC()
{
  v1 = *(v0 + 64);
  v2 = sub_10017BB68(*(v0 + 160) | ((*(v0 + 152) != 0) << 8), &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v4 = v3;
  v1();
  sub_10001BABC(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100178B94()
{
  v24 = v0;
  (*(v0 + 120))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 136);
    v20 = *(v0 + 80);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v3 = 136315394;
    v6 = StaticString.description.getter();
    v8 = sub_10017AD04(v6, v7, &v23);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v3, 0x16u);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v5);

    v22(v21, v20);
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);

    v10(v11, v12);
  }

  v13 = sub_1000F2D3C(*(v0 + 152));

  v14 = *(v0 + 64);
  v15 = sub_10017BB68(v13 | ((*(v0 + 152) != 0) << 8), &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v17 = v16;
  v14();
  sub_10001BABC(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100178E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100178F24, 0, 0);
}

uint64_t sub_100178F24(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[14] = v5;
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[17] = v14;
  v14(v10, v11);
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_1001790F4;
  v16 = v1[4];
  v17 = v1[5];

  return (v19)(v1 + 20, v16, v17);
}

uint64_t sub_1001790F4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10017E178;
  }

  else
  {
    v2 = sub_10017E05C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100179208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v12;
  *(v8 + 72) = v13;
  *(v8 + 184) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100179334, 0, 0);
}

uint64_t sub_100179334(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = Logger.xpc.unsafeMutableAddressor();
  v1[17] = v5;
  v6 = *(v4 + 16);
  v1[18] = v6;
  v1[19] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is anything happening?", v9, 2u);
  }

  v10 = v1[13];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[2];

  v14 = *(v12 + 8);
  v1[20] = v14;
  v14(v10, v11);
  v20 = (v13 + *v13);
  v15 = swift_task_alloc();
  v1[21] = v15;
  *v15 = v1;
  v15[1] = sub_100179504;
  v16 = v1[15];
  v17 = v1[4];
  v18 = v1[5];

  return v20(v16, v17, v18);
}

uint64_t sub_100179504()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100179714;
  }

  else
  {
    v2 = sub_100179618;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100179618()
{
  v1 = v0[15];
  v2 = v0[16];
  swift_storeEnumTagMultiPayload();
  sub_10017C43C(v1, v2);
  v3 = v0[16];
  v4 = v0[8];
  v5 = sub_10017B65C(v3);
  v7 = v6;
  v4();
  sub_10001BABC(v5, v7);
  sub_10000DAF8(v3, &qword_10023CF90, &unk_1001BF9B8);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100179714()
{
  v26 = v0;
  (*(v0 + 144))(*(v0 + 96), *(v0 + 136), *(v0 + 80));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v23 = *(v0 + 96);
    v24 = *(v0 + 160);
    v22 = *(v0 + 80);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v3 = 136315394;
    v6 = StaticString.description.getter();
    v8 = sub_10017AD04(v6, v7, &v25);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v3, 0x16u);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v5);

    v24(v23, v22);
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);

    v10(v11, v12);
  }

  v13 = *(v0 + 128);
  v14 = sub_1000F2D3C(*(v0 + 176));

  *v13 = v14;
  swift_storeEnumTagMultiPayload();
  v15 = *(v0 + 128);
  v16 = *(v0 + 64);
  v17 = sub_10017B65C(v15);
  v19 = v18;
  v16();
  sub_10001BABC(v17, v19);
  sub_10000DAF8(v15, &qword_10023CF90, &unk_1001BF9B8);

  v20 = *(v0 + 8);

  return v20();
}

void *sub_1001799E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.utf8CString.getter();
  v10 = os_transaction_create();

  if (v10)
  {
    v3[2] = v10;
    v3[3] = a1;
    v3[4] = a2;

    timestamp = os_transaction_get_timestamp();
    v13 = Logger.general.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v13, v6);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = v6;
      v17 = timestamp;
      v18 = v16;
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 33554946;
      *(v18 + 4) = v17;
      *(v18 + 6) = 2080;

      v20 = sub_10017AD04(a1, a2, &v22);

      *(v18 + 8) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[TXN%hx] 🐏 Beginning transaction (%s)", v18, 0x10u);
      sub_10000DB58(v19);

      (*(v7 + 8))(v9, v21);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v7 + 8))(v9, v6);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100179C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticString.description.getter();
  String.utf8CString.getter();
  v10 = os_transaction_create();

  if (v10)
  {

    v4[2] = v10;
    v4[3] = StaticString.description.getter();
    v4[4] = v12;
    timestamp = os_transaction_get_timestamp();
    v14 = Logger.general.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v14, v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25[3] = v5;
      v18 = timestamp;
      v19 = v17;
      v20 = swift_slowAlloc();
      v26 = v6;
      v27 = v20;
      v21 = v20;
      *v19 = 33554946;
      *(v19 + 4) = v18;
      *(v19 + 6) = 2080;
      v22 = StaticString.description.getter();
      v24 = sub_10017AD04(v22, v23, &v27);

      *(v19 + 8) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "[TXN%hx] 🐏 Beginning transaction (%s)", v19, 0x10u);
      sub_10000DB58(v21);

      (*(v7 + 8))(v9, v26);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100179E98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100179EB8, 0, 0);
}

uint64_t sub_100179EB8()
{
  v1 = *(v0 + 16);
  *v1 = sub_100026C34() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017A0A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_10017A0C4, 0, 0);
}

uint64_t sub_10017A0C4()
{
  sub_100026D9C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_10017A338, 0, 0);
}

uint64_t sub_10017A338()
{
  sub_100026F18(v0[4], v0[5], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10017A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10000BD30;

  return sub_1000270C8(a3, a4);
}

uint64_t sub_10017ABA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017ABE0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10017AC40@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE **sub_10017AC70(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10017ACA8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10017AD04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10017AD04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10017ADD0(v11, 0, 0, 1, a1, a2);
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
    sub_10002036C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000DB58(v11);
  return v7;
}

unint64_t sub_10017ADD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10017AEDC(a5, a6);
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

void *sub_10017AEDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10017AF28(a1, a2);
  sub_10017B058(&off_1002130B0);
  return v3;
}

void *sub_10017AF28(uint64_t a1, unint64_t a2)
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

  v6 = sub_10017B144(v5, 0);
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
        v7 = sub_10017B144(v10, 0);
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

uint64_t sub_10017B058(uint64_t result)
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

  result = sub_10017B1B8(result, v11, 1, v3);
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

void *sub_10017B144(uint64_t a1, uint64_t a2)
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

  sub_10000CDE0(&qword_10023E480, &qword_1001C3E20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10017B1B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023E480, &qword_1001C3E20);
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

void sub_10017B2AC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10017B320(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D480;

  return sub_1000279B4();
}

uint64_t sub_10017B3B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100084838;

  return sub_100027D10();
}

uint64_t sub_10017B448(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1001764B8(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017B55C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017B65C(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  sub_10017DBC8(&qword_10023E498, &qword_10023CF90, &unk_1001BF9B8);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v2;
}

uint64_t sub_10017B8D8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023E4B0, &qword_1001C3FD8);
  sub_10017DBC8(&qword_10023E4B8, &qword_10023E4B0, &qword_1001C3FD8);
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v4;
}

uint64_t sub_10017BB68(__int16 a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = type metadata accessor for Logger();
  __chkstk_darwin(v7);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(a2, a3);
  sub_10017DBC8(a4, a2, a3);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v8;
}

uint64_t sub_10017BDE8()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017BE20(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10017A574(a1, a2, v7, v6);
}

uint64_t sub_10017BED0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017BF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_10009D5B0(a1, a2, a3, v8);
}

uint64_t sub_10017BFD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_10017A314(a1, a2, a3, v9, v8);
}

uint64_t sub_10017C0D8()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 72));
  sub_10000DB58((v0 + 112));

  sub_10000DB58((v0 + 328));

  sub_10000DB58((v0 + 392));
  sub_10000DB58((v0 + 432));
  sub_10000DB58((v0 + 472));
  sub_10000DB58((v0 + 512));
  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));

  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  if (*(v0 + 784))
  {
    sub_10000DB58((v0 + 760));
  }

  return _swift_deallocObject(v0, 824, 7);
}

uint64_t sub_10017C228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_100176A9C(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017C33C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100179208(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017C43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017C4BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000152E0;

  return sub_10017A0A0(a1, a2, v6);
}

void sub_10017C568()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10017C5C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_100175ED4(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017C6D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100178E40(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017C7D4()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));
  sub_10000DB58((v0 + 176));
  sub_10000DB58((v0 + 216));
  sub_10000DB58((v0 + 256));

  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));

  sub_10000DB58((v0 + 576));

  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));
  sub_10000DB58((v0 + 800));
  sub_10000DB58((v0 + 840));

  sub_10000DB58((v0 + 888));
  sub_10000DB58((v0 + 928));
  sub_10000DB58((v0 + 968));

  sub_10000DB58((v0 + 1152));
  sub_10000DB58((v0 + 1192));
  sub_10000DB58((v0 + 1232));
  sub_10000DB58((v0 + 1272));
  sub_10000DB58((v0 + 1312));
  sub_10000DB58((v0 + 1352));
  sub_10000DB58((v0 + 1392));
  sub_10000DB58((v0 + 1432));
  sub_10000DB58((v0 + 1472));
  sub_10000DB58((v0 + 1512));
  if (*(v0 + 1576))
  {
    sub_10000DB58((v0 + 1552));
  }

  return _swift_deallocObject(v0, 1616, 7);
}

uint64_t sub_10017CA1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1001758F0(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017CB34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017CC34()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 240));

  sub_10000DB58((v0 + 304));
  sub_10000DB58((v0 + 344));
  sub_10000DB58((v0 + 384));
  sub_10000DB58((v0 + 424));
  sub_10000DB58((v0 + 464));
  sub_10000DB58((v0 + 504));

  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));
  if (*(v0 + 696))
  {
    sub_10000DB58((v0 + 672));
  }

  return _swift_deallocObject(v0, 736, 7);
}

uint64_t sub_10017CD6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_10017530C(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017CE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017CF88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1001742A0(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017D0A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177FA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017D1A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000BD30;

  return sub_10016FB7C(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_10017D290()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 216));
  sub_10000DB58((v0 + 256));
  sub_10000DB58((v0 + 296));
  sub_10000DB58((v0 + 336));
  sub_10000DB58((v0 + 376));
  sub_10000DB58((v0 + 416));
  sub_10000DB58((v0 + 456));
  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  if (*(v0 + 600))
  {
    sub_10000DB58((v0 + 576));
  }

  return _swift_deallocObject(v0, 640, 7);
}

uint64_t sub_10017D398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD30;

  return sub_100174884(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017D4B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_1001786F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017D5B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1001736D8(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017D6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017D7CC()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 240));

  sub_10000DB58((v0 + 304));
  sub_10000DB58((v0 + 344));
  sub_10000DB58((v0 + 384));
  sub_10000DB58((v0 + 424));
  sub_10000DB58((v0 + 464));
  sub_10000DB58((v0 + 504));

  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));

  sub_10000DB58((v0 + 816));
  sub_10000DB58((v0 + 856));
  sub_10000DB58((v0 + 896));
  sub_10000DB58((v0 + 936));
  sub_10000DB58((v0 + 976));
  sub_10000DB58((v0 + 1016));
  sub_10000DB58((v0 + 1056));

  if (*(v0 + 1128))
  {
    sub_10000DB58((v0 + 1104));
  }

  return _swift_deallocObject(v0, 1168, 7);
}

uint64_t sub_10017D9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_100173CBC(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017DABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177858(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017DBBC(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10005CB30(result, a2);
  }

  return result;
}

uint64_t sub_10017DBC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017DC1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177448(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017DD1C()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));

  sub_10000DB58((v0 + 320));
  sub_10000DB58((v0 + 360));
  sub_10000DB58((v0 + 400));
  sub_10000DB58((v0 + 440));
  sub_10000DB58((v0 + 480));
  sub_10000DB58((v0 + 520));
  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  if (*(v0 + 704))
  {
    sub_10000DB58((v0 + 680));
  }

  return _swift_deallocObject(v0, 744, 7);
}

uint64_t sub_10017DE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_100172970(a1, v4, v5, v6, v7, v8, v13, v11);
}

uint64_t sub_10017DF58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017E060()
{

  return sub_100175008();
}

uint64_t sub_10017E0EC()
{

  return sub_100175278();
}

void sub_10017E184(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = [v1 connection];
  v6 = v4;
  v7 = sub_100085D4C(v5, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10017E46C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10017E4B8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E494(3u);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v10];

    v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon28PostbackProxyServiceProtocol_];
    [a1 setExportedInterface:v11];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v12 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement for PostbackProxyService", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

uint64_t sub_10017E770()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon28DeveloperModeServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100224380;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002243A8;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for DeveloperModeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FD98 = result;
  return result;
}

void sub_10017EA08(const char *a1)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, static Logger.xpc);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10017EAF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017EB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017EB78()
{
  result = sub_10017EBBC();
  qword_10023FDA0 = result;
  return result;
}

uint64_t sub_10017EBBC()
{
  v18 = &type metadata for FeatureFlag;
  v19 = sub_10017EEFC();
  v0 = isFeatureEnabled(_:)();
  sub_10000DB58(&v15);
  if (v0)
  {
    v1 = objc_allocWithZone(NSXPCConnection);
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 initWithMachServiceName:v2 options:0];

    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [v3 setExportedInterface:v5];

    v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
    [v3 setExportedObject:v6];

    v7 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon36PostbackUpdateTestingServiceProtocol_];
    [v3 setRemoteObjectInterface:v7];

    v19 = sub_10017E9F0;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10001F3F8;
    v18 = &unk_1002243D0;
    v8 = _Block_copy(&v15);
    [v3 setInterruptionHandler:v8];
    _Block_release(v8);
    v19 = sub_10017E9FC;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10001F3F8;
    v18 = &unk_1002243F8;
    v9 = _Block_copy(&v15);
    [v3 setInvalidationHandler:v9];
    _Block_release(v9);
    [v3 resume];
    type metadata accessor for PostbackUpdateTestingServiceConnection();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    if (qword_10023E548 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000DAC0(v11, static Logger.xpc);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Testing feature flag is not enabled", v14, 2u);
    }

    return 0;
  }

  return result;
}

unint64_t sub_10017EEFC()
{
  result = qword_10023E740;
  if (!qword_10023E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E740);
  }

  return result;
}

uint64_t sub_10017EF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10017EFBC, 0, 0);
}

uint64_t sub_10017EFBC()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DeveloperBillingEvent(0);
  sub_100185234(&qword_10023E7F0, type metadata accessor for DeveloperBillingEvent, &protocol conformance descriptor for DeveloperBillingEvent);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v12 = *(v0 + 24);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017F1C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018527C, v8, v10);
}

uint64_t sub_10017F1C8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10017F34C;
  }

  else
  {

    v2 = sub_10017F2E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F2E4()
{
  sub_10001BABC(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017F34C()
{
  sub_10001BABC(v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017F3BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017F408, 0, 0);
}

uint64_t sub_10017F408()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001851C8();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v12 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018521C, v8, v10);
}

uint64_t sub_10017F5D4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100185460;
  }

  else
  {

    v2 = sub_10018546C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F6F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017F73C, 0, 0);
}

uint64_t sub_10017F73C()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001850B4();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v11 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v11;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_10017F8FC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018514C, v8, &type metadata for Bool);
}

uint64_t sub_10017F8FC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10017FA80;
  }

  else
  {

    v2 = sub_10017FA18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017FA18()
{
  sub_10001BABC(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017FA80()
{
  sub_10001BABC(v0[6], v0[7]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10017FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10017FB40, 0, 0);
}

uint64_t sub_10017FB40()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for InAppPurchaseDetails(0);
  sub_100185234(&qword_10023E7E0, type metadata accessor for InAppPurchaseDetails, &protocol conformance descriptor for InAppPurchaseDetails);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v12 = *(v0 + 24);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017FD4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185120, v8, v10);
}

uint64_t sub_10017FD4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10018545C;
  }

  else
  {

    v2 = sub_100185504;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017FE68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017FEB4, 0, 0);
}

uint64_t sub_10017FEB4()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001850B4();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v12 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185108, v8, v10);
}

uint64_t sub_100180080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return _swift_task_switch(sub_1001800CC, 0, 0);
}

uint64_t sub_1001800CC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100185048();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v15 = *(v0 + 64);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v15;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v12 = v0;
  v12[1] = sub_1001802B0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 136, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018509C, v11, v13);
}

uint64_t sub_1001802B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100185464;
  }

  else
  {

    v2 = sub_100185508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001803CC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 90) = a1;
  *(v4 + 40) = *v3;
  return _swift_task_switch(sub_10018041C, 0, 0);
}

uint64_t sub_10018041C()
{
  *(v0 + 89) = *(v0 + 90);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184FDC();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v12 = *(v0 + 16);

  v7 = *(v5 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185030, v8, v10);
}

uint64_t sub_100180604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return _swift_task_switch(sub_100180650, 0, 0);
}

uint64_t sub_100180650()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184F70();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v15 = *(v0 + 64);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v15;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v12 = v0;
  v12[1] = sub_100180834;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 136, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184FC4, v11, v13);
}

uint64_t sub_100180834()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1001809B8;
  }

  else
  {

    v2 = sub_100180950;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180950()
{
  sub_10001BABC(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001809B8()
{
  sub_10001BABC(v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100180A28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100180A74, 0, 0);
}

uint64_t sub_100180A74()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184EC8();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v12 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_100180C40;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184F1C, v8, v10);
}

uint64_t sub_100180C40()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100180D5C;
  }

  else
  {

    v2 = sub_10017FA18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180D5C()
{
  sub_10001BABC(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100180DCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100180E18, 0, 0);
}

uint64_t sub_100180E18()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v11 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v11;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_100180FD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184EB0, v8, &type metadata for Bool);
}

uint64_t sub_100180FD8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100185468;
  }

  else
  {

    v2 = sub_10018546C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001810F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100181140, 0, 0);
}

uint64_t sub_100181140()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v12 = *(v0 + 16);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184DEC, v8, v10);
}

uint64_t sub_10018130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_100181358, 0, 0);
}

uint64_t sub_100181358()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;

  v4 = *(v0 + 48);
  v5 = *(*(v0 + 40) + 16);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  *v8 = v0;
  v8[1] = sub_100181518;
  v10 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184C58, v6, v9);
}

uint64_t sub_100181518()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10017F34C;
  }

  else
  {

    v2 = sub_100181634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100181634()
{
  sub_10001BABC(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100181698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_1001816E4, 0, 0);
}

uint64_t sub_1001816E4()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DevelopmentPostbackConfiguration(0);
  sub_100185234(&qword_10023E768, type metadata accessor for DevelopmentPostbackConfiguration, &protocol conformance descriptor for DevelopmentPostbackConfiguration);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v12 = *(v0 + 24);

  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v9 = v0;
  v9[1] = sub_10017FD4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184BC0, v8, v10);
}

uint64_t sub_100181910()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_10017EF70(v2, sub_1001849C0, 0);
}

uint64_t sub_100181A08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100181B08@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100181B38(uint64_t a1)
{
  v2 = sub_100184A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100181B74(uint64_t a1)
{
  v2 = sub_100184A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AggregatedReportingRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E748, &qword_1001C41F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_100184A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100181CEC(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224A28;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v34);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_1001854FC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182008(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002249B0;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v34);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_1001854FC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182324(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100185178;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224938;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001851A0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182638(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002248C0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_10018294C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224848;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182C60(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002247D0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7D0, &qword_1001C43E8);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182F74(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224758;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183288(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002246E0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_10018359C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100184F34;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224668;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100184F48, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_1001838B0(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002245F0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100185500, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183BC4(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224578;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183ED8(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100184C9C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224500;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100184CC4, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_1001841EC(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224488;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100184500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, static Logger.xpc);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching remote object proxy: %{public}@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  sub_100080044();
  swift_allocError();
  *v12 = 3;
  sub_10000CDE0(a3, a4);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1001846AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10018C6C0(a1, a2);
  v3 = v2;
  if ((v2 & 0x100) != 0)
  {
    sub_100080044();
    swift_allocError();
    *v5 = v3;
    sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100184750(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v6 = __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  sub_10018C2F0(v15 - v9);
  sub_100184D7C(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v8;
    sub_100080044();
    v12 = swift_allocError();
    *v13 = v11;
    v15[1] = v12;
    sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100054734(v8, v4);
    sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
    CheckedContinuation.resume(returning:)();
  }

  return sub_10000DAF8(v10, &qword_10023E798, &qword_1001C4380);
}

uint64_t sub_10018491C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10018C078(a1, a2);
  v3 = v2;
  if ((v2 & 0x100) != 0)
  {
    sub_100080044();
    swift_allocError();
    *v5 = v3;
    sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001849C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100224A78;
  v9 = _Block_copy(v10);

  [v7 reportDeveloperBillingEvent:isa reply:v9];
  _Block_release(v9);
}

unint64_t sub_100184A9C()
{
  result = qword_10023E750;
  if (!qword_10023E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E750);
  }

  return result;
}

unint64_t sub_100184B14()
{
  result = qword_10023E758;
  if (!qword_10023E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E758);
  }

  return result;
}

unint64_t sub_100184B6C()
{
  result = qword_10023E760;
  if (!qword_10023E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E760);
  }

  return result;
}

uint64_t sub_100184BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100184C04()
{
  result = qword_10023E788;
  if (!qword_10023E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E788);
  }

  return result;
}

uint64_t sub_100184CC4(uint64_t a1, uint64_t a2)
{
  sub_10000CDE0(&qword_10023E790, &qword_1001C4378);

  return sub_100184750(a1, a2);
}

uint64_t sub_100184D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  v9 = *(sub_10000CDE0(a3, a4) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a5(a1, a2, v5 + v10, *(v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100184EC8()
{
  result = qword_10023E7A0;
  if (!qword_10023E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7A0);
  }

  return result;
}

unint64_t sub_100184F70()
{
  result = qword_10023E7B0;
  if (!qword_10023E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7B0);
  }

  return result;
}

unint64_t sub_100184FDC()
{
  result = qword_10023E7B8;
  if (!qword_10023E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7B8);
  }

  return result;
}

unint64_t sub_100185048()
{
  result = qword_10023E7C8;
  if (!qword_10023E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7C8);
  }

  return result;
}

unint64_t sub_1001850B4()
{
  result = qword_10023E7D8;
  if (!qword_10023E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7D8);
  }

  return result;
}

unint64_t sub_1001851C8()
{
  result = qword_10023E7E8;
  if (!qword_10023E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7E8);
  }

  return result;
}

uint64_t sub_100185234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100185294(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100185398(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_100185544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001855CC(uint64_t a1)
{
  v2 = sub_100185894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185608(uint64_t a1)
{
  v2 = sub_100185894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185644(uint64_t a1)
{
  v2 = sub_1001858E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185680(uint64_t a1)
{
  v2 = sub_1001858E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageRegistration.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E7F8, &qword_1001C4420);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_10000CDE0(&qword_10023E800, &qword_1001C4428);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000DA7C(a1, a1[3]);
  sub_100185894();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001858E8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100185894()
{
  result = qword_10023E808;
  if (!qword_10023E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E808);
  }

  return result;
}

unint64_t sub_1001858E8()
{
  result = qword_10023E810;
  if (!qword_10023E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E810);
  }

  return result;
}

uint64_t sub_100185954()
{
  if (*v0)
  {
    return 6778732;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_10018598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001001CE730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100185A74(uint64_t a1)
{
  v2 = sub_1001868F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185AB0(uint64_t a1)
{
  v2 = sub_1001868F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185AEC(uint64_t a1)
{
  v2 = sub_1001869A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185B28(uint64_t a1)
{
  v2 = sub_1001869A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100185BFC(uint64_t a1)
{
  v2 = sub_10018694C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185C38(uint64_t a1)
{
  v2 = sub_10018694C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t XPCClientMessage.MessageType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = sub_10000CDE0(&qword_10023E818, &qword_1001C4430);
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_10000CDE0(&qword_10023E820, &qword_1001C4438);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_10000CDE0(&qword_10023E828, &qword_1001C4440);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_10000DA7C(a1, a1[3]);
  sub_1001868F8();
  v14 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    v22 = 1;
    sub_10018694C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_1001869A0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

void *sub_100185F80@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001869F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100185FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100186060(uint64_t a1)
{
  v2 = sub_100186F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018609C(uint64_t a1)
{
  v2 = sub_100186F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t XPCClientMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CDE0(&qword_10023E848, &qword_1001C4448);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000DA7C(a1, a1[3]);
  sub_100186F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[0] = a2;
  v11[1] = a3;
  sub_100186F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

void *sub_100186244@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100186FA8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t XPCClientProtocol.handleMessage(_:)(uint64_t a1, uint64_t a2)
{
  sub_10000CDE0(&qword_10023E860, &qword_1001C4450);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B93B0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  XPCClientProtocol.handleMessages(_:)(v4);
}

Swift::Void __swiftcall XPCClientProtocol.handleMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023E868, &unk_1001C8330);
  sub_10018711C();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 handleMessages:isa];

  sub_10001BABC(v3, v5);
}

uint64_t sub_1001865AC(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023E938, &qword_1001C4C68);
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_10000CDE0(&qword_10023E940, &unk_1001C4C70);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100185894();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1001A53FC() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
    *v16 = &type metadata for MessageRegistration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return sub_10000DB58(v18);
  }

  sub_1001858E8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return sub_10000DB58(v18);
}

unint64_t sub_1001868F8()
{
  result = qword_10023E830;
  if (!qword_10023E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E830);
  }

  return result;
}

unint64_t sub_10018694C()
{
  result = qword_10023E838;
  if (!qword_10023E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E838);
  }

  return result;
}

unint64_t sub_1001869A0()
{
  result = qword_10023E840;
  if (!qword_10023E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E840);
  }

  return result;
}

void *sub_1001869F4(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E918, &qword_1001C4C48);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_10000CDE0(&qword_10023E920, &qword_1001C4C50);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10000CDE0(&qword_10023E928, &qword_1001C4C58);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = sub_10000DA7C(a1, v12);
  sub_1001868F8();
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1001A9350();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
      *v23 = &type metadata for XPCClientMessage.MessageType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_10018694C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v30;
      v27 = v11;
      v13 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_1001869A0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  sub_10000DB58(v31);
  return v13;
}

unint64_t sub_100186F00()
{
  result = qword_10023E850;
  if (!qword_10023E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E850);
  }

  return result;
}

unint64_t sub_100186F54()
{
  result = qword_10023E858;
  if (!qword_10023E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E858);
  }

  return result;
}

void *sub_100186FA8(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023E908, &qword_1001C4C40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_100186F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10018785C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_10018711C()
{
  result = qword_10023E870;
  if (!qword_10023E870)
  {
    sub_10000CCC0(&qword_10023E868, &unk_1001C8330);
    sub_1001871A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E870);
  }

  return result;
}

unint64_t sub_1001871A0()
{
  result = qword_10023E878;
  if (!qword_10023E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E878);
  }

  return result;
}

unint64_t sub_1001871F8()
{
  result = qword_10023E880;
  if (!qword_10023E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E880);
  }

  return result;
}

unint64_t sub_1001872E0()
{
  result = qword_10023E888;
  if (!qword_10023E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E888);
  }

  return result;
}

unint64_t sub_100187338()
{
  result = qword_10023E890;
  if (!qword_10023E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E890);
  }

  return result;
}

unint64_t sub_100187390()
{
  result = qword_10023E898;
  if (!qword_10023E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E898);
  }

  return result;
}

unint64_t sub_1001873E8()
{
  result = qword_10023E8A0;
  if (!qword_10023E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8A0);
  }

  return result;
}

unint64_t sub_100187440()
{
  result = qword_10023E8A8;
  if (!qword_10023E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8A8);
  }

  return result;
}

unint64_t sub_100187498()
{
  result = qword_10023E8B0;
  if (!qword_10023E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8B0);
  }

  return result;
}

unint64_t sub_1001874F0()
{
  result = qword_10023E8B8;
  if (!qword_10023E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8B8);
  }

  return result;
}

unint64_t sub_100187548()
{
  result = qword_10023E8C0;
  if (!qword_10023E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8C0);
  }

  return result;
}

unint64_t sub_1001875A0()
{
  result = qword_10023E8C8;
  if (!qword_10023E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8C8);
  }

  return result;
}

unint64_t sub_1001875F8()
{
  result = qword_10023E8D0;
  if (!qword_10023E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8D0);
  }

  return result;
}

unint64_t sub_100187650()
{
  result = qword_10023E8D8;
  if (!qword_10023E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8D8);
  }

  return result;
}

unint64_t sub_1001876A8()
{
  result = qword_10023E8E0;
  if (!qword_10023E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8E0);
  }

  return result;
}

unint64_t sub_100187700()
{
  result = qword_10023E8E8;
  if (!qword_10023E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8E8);
  }

  return result;
}

unint64_t sub_100187758()
{
  result = qword_10023E8F0;
  if (!qword_10023E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8F0);
  }

  return result;
}

unint64_t sub_1001877B0()
{
  result = qword_10023E8F8;
  if (!qword_10023E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8F8);
  }

  return result;
}

unint64_t sub_100187808()
{
  result = qword_10023E900;
  if (!qword_10023E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E900);
  }

  return result;
}

unint64_t sub_10018785C()
{
  result = qword_10023E910;
  if (!qword_10023E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E910);
  }

  return result;
}

uint64_t ImpressionRequest.preflight(advertisedItemID:compactJWS:adNetworkID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001878F4, 0, 0);
}

uint64_t sub_1001878F4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = sub_100188970;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100187A38;

  return sub_10017F3BC(sub_1001889A0, v3);
}

uint64_t sub_100187A38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100188BD8;
  }

  else
  {
    v2 = sub_100188BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100187B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001A9410;
  v13[3] = &unk_100224F88;
  v12 = _Block_copy(v13);

  [a1 preflightImpressionWithAdvertisedItemID:a6 compactJWS:v10 adNetworkID:v11 reply:v12];
  _Block_release(v12);
}

uint64_t ImpressionRequest.startView(advertisedItemID:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100187C78, 0, 0);
}

uint64_t sub_100187C78()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_1001889CC;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100187DBC;

  return sub_10017F3BC(sub_100188BBC, v3);
}

uint64_t sub_100187DBC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100188BD4;
  }

  else
  {
    v2 = sub_100188BC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t ImpressionRequest.endView(advertisedItemID:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100187EF4, 0, 0);
}

uint64_t sub_100187EF4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_100188A08;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100188038;

  return sub_10017F3BC(sub_100188BBC, v3);
}

uint64_t sub_100188038()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10018814C;
  }

  else
  {
    v2 = sub_10008A18C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018814C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001881B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v14 = String._bridgeToObjectiveC()();
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001A9410;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t ImpressionRequest.processTap(advertisedItemID:compactJWS:eventMessage:reengagementURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001882C4, 0, 0);
}

uint64_t sub_1001882C4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = sub_100188A44;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_100188410;

  return sub_10017F3BC(sub_100188BBC, v6);
}

uint64_t sub_100188410()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100188590;
  }

  else
  {
    v2 = sub_100188524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100188524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100188590()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001885FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v14 - 8);
  v16 = aBlock - v15;
  v17 = String._bridgeToObjectiveC()();
  sub_10001B8EC(a10, v16);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v21 = 0;
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(v19 + 8))(v16, v18);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A9410;
  aBlock[3] = &unk_100224F10;
  v23 = _Block_copy(aBlock);

  [a1 processTapWithAdvertisedItemID:a6 compactJWS:v17 eventMessage:a9 reengagementURL:v21 reply:v23];
  _Block_release(v23);
}

uint64_t sub_1001887E4(uint64_t a1)
{
  v2 = sub_100188A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100188820(uint64_t a1)
{
  v2 = sub_100188A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ImpressionRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E948, &qword_1001C4CA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_100188A74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100188A74()
{
  result = qword_10023E950;
  if (!qword_10023E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E950);
  }

  return result;
}

unint64_t sub_100188AEC()
{
  result = qword_10023E958;
  if (!qword_10023E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E958);
  }

  return result;
}

unint64_t sub_100188B44()
{
  result = qword_10023E960;
  if (!qword_10023E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E960);
  }

  return result;
}

uint64_t sub_100188B98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL ImpressionType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F00, v2);

  return v3 != 0;
}

unint64_t sub_100188C4C()
{
  result = qword_10023E968;
  if (!qword_10023E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E968);
  }

  return result;
}

Swift::Int sub_100188CA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100188D24(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100188D80@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F38, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_100188EBC()
{
  result = qword_10023E970;
  if (!qword_10023E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E970);
  }

  return result;
}

uint64_t ConversionValueTier.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x657372616F63;
  }

  return 1701734758;
}

unint64_t sub_100188F64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon19ConversionValueTierO03rawE0ACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s20AttributionKitCommon19ConversionValueTierO03rawE0ACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F70, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100189094()
{
  result = qword_10023E978;
  if (!qword_10023E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E978);
  }

  return result;
}

unint64_t sub_1001890F8()
{
  result = qword_10023E980;
  if (!qword_10023E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E980);
  }

  return result;
}

uint64_t sub_10018914C(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  v28 = sub_10018DF84;
  v29 = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10018C010;
  *(&v27 + 1) = &unk_1002254F0;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v30, &aBlock);
  sub_10000CDE0(&qword_10023EA40, &unk_1001C52A0);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v31 = v25;
    v13 = a1[1];
    aBlock = *a1;
    v27 = v13;
    v28 = *(a1 + 4);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DE38();
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = v14;
      v18 = v15;

      v19 = a2;
      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      *(v20 + 24) = v12;

      v19(&v31, v17, v18, sub_10018DF30, v20);

      swift_beginAccess();
      v21 = *(v8 + 16);
      if (v21 >> 8 <= 0xFE)
      {
        if ((v21 & 0x100) == 0)
        {
          sub_10001BABC(v17, v18);
          swift_unknownObjectRelease();

          sub_10000DB58(v30);
          return v21 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v24 = v21;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v22 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v17, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v30);
  return 0;
}

uint64_t sub_100189508@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v40 = a3;
  v41 = a2;
  v37 = a4;
  v39 = *v6;
  v8 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v35 - v13;
  sub_10000CDE0(&qword_10023EA38, &unk_1001C5290);
  v14 = swift_allocObject();
  v15 = *(*v14 + 104);
  (*(v12 + 56))(v14 + v15, 1, 1, v11);
  v16 = v6[2];
  v45 = sub_10018DE30;
  v46 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_10018C010;
  *(&v44 + 1) = &unk_100225478;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v17];
  _Block_release(v17);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v47, &aBlock);
  sub_10000CDE0(&qword_10023EA40, &unk_1001C52A0);
  if (!swift_dynamicCast())
  {
    sub_100080044();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v19 = v42;
  v48 = v42;
  v20 = a1[1];
  aBlock = *a1;
  v44 = v20;
  v45 = *(a1 + 4);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10018DE38();
  v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return sub_10000DB58(v47);
  }

  v35 = v19;
  v24 = v21;
  v25 = v22;

  v26 = swift_allocObject();
  v27 = v39;
  *(v26 + 16) = v14;
  *(v26 + 24) = v27;

  v36 = v24;
  v39 = v25;
  v41(&v48, v24, v25, sub_10018DE8C, v26);

  swift_beginAccess();
  sub_100014B50(v14 + v15, v10, &qword_10023EA30, &qword_1001C5288);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DAF8(v10, &qword_10023EA30, &qword_1001C5288);
    sub_100080044();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    sub_10001BABC(v36, v39);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v29 = v36;
  v30 = v38;
  v31 = v39;
  sub_10014AFF8(v10, v38, &qword_10023E798, &qword_1001C4380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LOBYTE(v42) = *v30;
    v32 = v42;
    sub_100080044();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v33 = v32;
    sub_10001BABC(v29, v31);
    goto LABEL_9;
  }

  sub_10001BABC(v29, v31);
  swift_unknownObjectRelease();

  sub_10000DB58(v47);
  return sub_10014AFF8(v30, v37, &qword_10023C230, &qword_1001B4FB0);
}

uint64_t sub_100189A6C(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v29 = sub_10018DF84;
  *(&v29 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_10018C010;
  *(&v28 + 1) = &unk_100225428;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v38, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v39 = v37;
    v12 = a1[7];
    v33 = a1[6];
    v34 = v12;
    v35 = a1[8];
    v36 = *(a1 + 144);
    v13 = a1[3];
    v29 = a1[2];
    v30 = v13;
    v14 = a1[5];
    v31 = a1[4];
    v32 = v14;
    v15 = a1[1];
    aBlock = *a1;
    v28 = v15;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DD88();
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v16;
      v20 = v17;

      v21 = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = v8;
      *(v22 + 24) = v7;

      v21(&v39, v19, v20, sub_10018DF30, v22);

      swift_beginAccess();
      v23 = *(v8 + 16);
      if (v23 >> 8 <= 0xFE)
      {
        if ((v23 & 0x100) == 0)
        {
          sub_10001BABC(v19, v20);
          swift_unknownObjectRelease();

          sub_10000DB58(v38);
          return v23 & 1;
        }

        LOBYTE(v37) = *(v8 + 16);
        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v26 = v23;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v24 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v19, v20);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v38);
  return 0;
}

uint64_t sub_100189E44(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v28 = sub_10018DF84;
  *(&v28 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10018C010;
  *(&v27 + 1) = &unk_1002253D8;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v33, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v12 = a1[5];
    v30 = a1[4];
    v31[0] = v12;
    *(v31 + 9) = *(a1 + 89);
    v13 = a1[1];
    aBlock = *a1;
    v27 = v13;
    v14 = a1[3];
    v28 = a1[2];
    v29 = v14;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DD34();
    v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v15;
      v19 = v16;

      v20 = a2;
      v21 = swift_allocObject();
      *(v21 + 16) = v8;
      *(v21 + 24) = v7;

      v20(&v34, v18, v19, sub_10018DF30, v21);

      swift_beginAccess();
      v22 = *(v8 + 16);
      if (v22 >> 8 <= 0xFE)
      {
        if ((v22 & 0x100) == 0)
        {
          sub_10001BABC(v18, v19);
          swift_unknownObjectRelease();

          sub_10000DB58(v33);
          return v22 & 1;
        }

        LOBYTE(v32) = *(v8 + 16);
        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v25 = v22;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v23 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v18, v19);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v33);
  return 0;
}

uint64_t sub_10018A20C(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225388;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v23, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v24 = v21;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DCE0();
    v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v10;
      v14 = v11;

      v15 = a1;
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      *(v16 + 24) = v9;

      v15(&v24, v13, v14, sub_10018DF30, v16);

      swift_beginAccess();
      v17 = *(v5 + 16);
      if (v17 >> 8 <= 0xFE)
      {
        if ((v17 & 0x100) == 0)
        {
          sub_10001BABC(v13, v14);
          swift_unknownObjectRelease();

          sub_10000DB58(v23);
          return v17 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v20 = v17;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v13, v14);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v23);
  return 0;
}

uint64_t sub_10018A5AC(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v28 = sub_10018DF84;
  *(&v28 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10018C010;
  *(&v27 + 1) = &unk_100225338;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v29, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v30 = v25;
    v13 = a1[1];
    aBlock = *a1;
    v27 = v13;
    v28 = a1[2];
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DC8C();
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = v14;
      v18 = v15;

      v19 = a2;
      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      *(v20 + 24) = v12;

      v19(&v30, v17, v18, sub_10018DF30, v20);

      swift_beginAccess();
      v21 = *(v8 + 16);
      if (v21 >> 8 <= 0xFE)
      {
        if ((v21 & 0x100) == 0)
        {
          sub_10001BABC(v17, v18);
          swift_unknownObjectRelease();

          sub_10000DB58(v29);
          return v21 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v24 = v21;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v22 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v17, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v29);
  return 0;
}

uint64_t sub_10018A968(char a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  aBlock[4] = sub_10018DC54;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002252E8;
  v10 = _Block_copy(aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v26, aBlock);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v27 = v24;
    LOBYTE(aBlock[0]) = a1;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100184FDC();
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a2;
      v19 = swift_allocObject();
      *(v19 + 16) = v8;
      *(v19 + 24) = v12;

      v18(&v27, v16, v17, sub_10018DC70, v19);

      swift_beginAccess();
      v20 = *(v8 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_10001BABC(v16, v17);
          swift_unknownObjectRelease();

          sub_10000DB58(v26);
          return v20 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v26);
  return 0;
}

uint64_t sub_10018AD18@<X0>(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t)@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  sub_10000CDE0(&qword_10023E9E8, qword_1001C5260);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  v8 = v2[2];
  aBlock[4] = sub_10018DB78;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225298;
  v9 = _Block_copy(aBlock);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v9];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v27, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (!swift_dynamicCast())
  {
    sub_100080044();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v24 = a1;
  v28 = v25;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10018DB80();
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return sub_10000DB58(v27);
  }

  v14 = v11;
  v15 = v12;
  v23 = a2;

  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v6;

  v24(&v28, v14, v15, sub_10018DBD4, v16);

  swift_beginAccess();
  v17 = *(v7 + 32);
  if (v17 == 255)
  {
    sub_100080044();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v18 = *(v7 + 16);
  if (v17)
  {
    sub_100080044();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v19 = v18;
LABEL_9:
    sub_10001BABC(v14, v15);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v22 = *(v7 + 24);
  sub_10014C744(*(v7 + 16), v22);
  sub_10001BABC(v14, v15);
  swift_unknownObjectRelease();

  result = sub_10000DB58(v27);
  *v23 = v18;
  v23[1] = v22;
  return result;
}