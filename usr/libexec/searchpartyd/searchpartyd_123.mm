uint64_t sub_100DB4980()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100DB49EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a7;
  v61 = a8;
  v59 = a6;
  v56 = a5;
  v64 = a4;
  v46 = a3;
  v50 = a1;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v58 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v62 = v13;
  v65 = *(v13 - 8);
  v63 = v65[8];
  v14 = __chkstk_darwin(v13);
  v54 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v44 = &v43 - v16;
  v18 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v53 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v20;
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v43 = &v43 - v22;
  v57 = *(a2 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v52 = a2;
  v55 = type metadata accessor for WorkItemQueue.WorkItem();
  v24 = *(v19 + 16);
  v49 = v19 + 16;
  v51 = v24;
  v24(v23, a1, v18);
  v25 = v65;
  v45 = v65[2];
  v45(v17, a3, v13);
  v26 = *(v19 + 80);
  v27 = (v26 + 24) & ~v26;
  v28 = *(v25 + 80);
  v29 = (v20 + v28 + v27) & ~v28;
  v47 = v26 | v28;
  v30 = (v63 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  v32 = v19 + 32;
  v33 = *(v19 + 32);
  v56 = v32;
  v33(v31 + v27, v43, v18);
  v34 = v65[4];
  v65 += 4;
  v43 = v34;
  v35 = v62;
  (v34)(v31 + v29, v44, v62);
  *(v31 + v30) = v64;
  v36 = v54;
  v45(v54, v46, v35);
  v37 = v53;
  v51(v53, v50, v18);
  v38 = (v28 + 16) & ~v28;
  v39 = (v63 + v26 + v38) & ~v26;
  v40 = (v48 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (v43)(v41 + v38, v36, v62);
  v33(v41 + v39, v37, v18);
  *(v41 + v40) = v64;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100DB4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100DB4FE0, 0, 0);
}

uint64_t sub_100DB4FE0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v14 = v0[8];
  v15 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v16 = v4;
  v7 = v0[4];
  v17 = v0[5];
  v8 = v0[2];
  (*(v3 + 16))(v1, v0[3], v2);
  (*(v6 + 16))(v4, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v15 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v2);
  (*(v6 + 32))(v11 + v10, v16, v5);
  *(v11 + ((v14 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_100DB51C0;

  return withTimeout<A>(_:block:)(v12, 0x40AAD21B3B700000, 3, &unk_1013E8C18, v11, &type metadata for () + 1);
}

uint64_t sub_100DB51C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100DB534C;
  }

  else
  {

    v2 = sub_100DB52DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DB52DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB534C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for CentralManager.State();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100DB5590, 0, 0);
}

uint64_t sub_100DB5590()
{
  v17 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    if (sub_1004F21B4())
    {
      v3 = swift_task_alloc();
      v0[26] = v3;
      *v3 = v0;
      v3[1] = sub_100DB59B4;

      return daemon.getter();
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016BB490);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s FMIP is disabled!", v13, 0xCu);
      sub_100007BAC(v14);
    }

    v0[7] = 6;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v9 = v0[1];
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Feature.FindMy.lineUp is disabled!", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_10139D960;
    *(v8 + 16) = 3;
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100DB59B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 216) = a1;

  v3 = swift_task_alloc();
  *(v2 + 224) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DB5B90;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DB5B90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DB705C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v4;
    v5[1] = sub_100DB5D18;

    return sub_10084B7B8();
  }
}

uint64_t sub_100DB5D18(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_100DB5E18, 0, 0);
}

uint64_t sub_100DB5E18()
{
  v13 = v0;
  if (*(v0 + 392) == 1)
  {
    v1 = *(v0 + 200);
    *(v0 + 256) = type metadata accessor for CentralManager();
    v2 = type metadata accessor for CentralManager.Options();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_100DB60D8;
    v4 = *(v0 + 200);

    return CentralManager.__allocating_init(options:)(v4);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016BB490);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Account is not ready!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    *(v0 + 64) = 5;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100DB60D8(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100DB61D8, 0, 0);
}

uint64_t sub_100DB61D8()
{
  (*(v0[23] + 104))(v0[24], enum case for CentralManager.State.poweredOn(_:), v0[22]);
  v1 = swift_task_alloc();
  v0[35] = v1;
  v2 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100DB62D4;
  v3 = v0[32];
  v4 = v0[24];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100DB62D4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_100DB7100;
  }

  else
  {
    v3 = sub_100DB643C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DB643C()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[37] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[34];
    v5 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v26);
    *(v5 + 12) = 2080;
    v0[11] = v4;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v26);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %s has powered on!", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(v11 + 16);
  v0[38] = v15;
  v0[39] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14 + v13, v12, v10);
  v26 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v16 = v26;
  v15(v9, v14 + v13, v10);

  Identifier.id.getter();
  v17 = *(v11 + 8);
  v0[40] = v17;
  v0[41] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    sub_101123D4C((v18 > 1), v19 + 1, 1);
    v16 = v26;
  }

  v0[42] = v16;
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[19];
  v16[2] = v19 + 1;
  (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
  v25 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v23 = swift_task_alloc();
  v0[43] = v23;
  *v23 = v0;
  v23[1] = sub_100DB680C;

  return v25(v16);
}

uint64_t sub_100DB680C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_100DB71B0;
  }

  else
  {

    v4 = sub_100DB6928;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DB6928()
{
  v30 = v0;
  v1 = v0[44];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = v0[38];
    v12 = v0[17];
    v14 = v0[14];
    v13 = v0[15];

    v11(v12, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[40];
    v19 = v0[17];
    v20 = v0[15];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v18(v19, v20);
      v26 = sub_1000136BC(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing peripheral for %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      v18(v19, v20);
    }

    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_1013E84C0;
    *(v27 + 16) = 3;
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[44] + 32);
  }

  v0[46] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, v29);
    *(v6 + 12) = 2080;
    v0[10] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, v29);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Retrieved peripheral: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = swift_task_alloc();
  v0[47] = v10;
  *v10 = v0;
  v10[1] = sub_100DB6DDC;

  return sub_100DA5158(v3);
}

uint64_t sub_100DB6DDC(char a1)
{
  v3 = *v2;
  *(v3 + 393) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_100DB726C;
  }

  else
  {
    v4 = sub_100DB6EF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DB6EF4(uint64_t a1)
{
  v2 = *(v1 + 384);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    *(v1 + 72) = qword_1013E8DD0[*(v1 + 393)];
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100DB705C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB7100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB71B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB726C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB7328(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DB7408, 0, 0);
}

uint64_t sub_100DB7408()
{
  v45 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v44);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v42 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v44);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v43 = v19;
      _os_log_impl(&_mh_execute_header, v8, v42, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v44);
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s Not resuming continuation in cancelled task.", v38, 0xCu);
      sub_100007BAC(v39);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016BB490);
    (*(v22 + 16))(v20, v23, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v44);
      *(v31 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v28, v29);
      v35 = sub_1000136BC(v32, v34, &v44);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s succeeded for %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
  }

LABEL_16:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100DB7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100DB7B40, 0, 0);
}

uint64_t sub_100DB7B40()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100DB7C10;
  v2 = v0[9];

  return sub_100DB7E38(v2);
}

uint64_t sub_100DB7C10()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100DB7DC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100DB7DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB7E38(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for CentralManager.State();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100DB7F78, v1, 0);
}

uint64_t sub_100DB7F78()
{
  v22 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[16] = v6;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v21);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for identifier: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[18] = v17;
  v0[19] = type metadata accessor for CentralManager();
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_100DB8240;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DB8240(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[6];

    return _swift_task_switch(sub_100DB83A8, v6, 0);
  }
}

uint64_t sub_100DB83A8()
{
  (*(v0[8] + 104))(v0[9], enum case for CentralManager.State.poweredOn(_:), v0[7]);
  v1 = swift_task_alloc();
  v0[22] = v1;
  v2 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100DB84A4;
  v3 = v0[19];
  v4 = v0[9];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100DB84A4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100DB96FC;
  }

  else
  {
    v7 = sub_100DB8620;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DB8620(uint64_t a1)
{
  v22 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CentralManager has powered on!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  (*(v1 + 128))(*(v1 + 104), *(v1 + 40), *(v1 + 80));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 144);
  v10 = *(v1 + 104);
  v11 = *(v1 + 80);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v21);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v9(v10, v11);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Retrieving peripheral matching identifier: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v9(v10, v11);
  }

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  type metadata accessor for UUID();
  v17 = swift_allocObject();
  *(v1 + 192) = v17;
  *(v17 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v20 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v18 = swift_task_alloc();
  *(v1 + 200) = v18;
  *v18 = v1;
  v18[1] = sub_100DB89E8;

  return v20(v17);
}

uint64_t sub_100DB89E8(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_100DB9790;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_100DB8B10;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DB8B10()
{
  v24 = v0;
  v1 = v0[26];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[10];
    v8 = v0[5];

    v5(v6, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    v13 = v0[12];
    v14 = v0[10];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, v23);
      *(v15 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v12(v13, v14);
      v19 = sub_1000136BC(v16, v18, v23);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Missing peripheral for %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v14);
    }

    sub_100500BC4();
    swift_allocError();
    *v20 = xmmword_1013E84C0;
    *(v20 + 16) = 3;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[26] + 32);
  }

  v0[28] = v3;

  v22 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_100DB8EAC;

  return v22();
}

uint64_t sub_100DB8EAC(char a1)
{
  v4 = *v2;
  *(v4 + 240) = v1;

  v5 = *(v4 + 48);
  if (v1)
  {
    v6 = sub_100DB9830;
  }

  else
  {
    *(v4 + 264) = a1 & 1;
    v6 = sub_100DB8FEC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB8FEC()
{
  v22 = v0;
  v1 = *(v0 + 264);

  v2 = Logger.logObject.getter();
  if (v1 == 1)
  {
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 224);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21 = v6;
      *v5 = 136446210;
      *(v0 + 32) = v4;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = sub_1000136BC(v7, v8, &v21);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Now unpairing peripheral: %{public}s", v5, 0xCu);
      sub_100007BAC(v6);
    }

    v20 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v10 = swift_task_alloc();
    *(v0 + 248) = v10;
    *v10 = v0;
    v10[1] = sub_100DB93D0;

    return v20();
  }

  else
  {
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v2, v12);
    v14 = *(v0 + 224);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101370C30, &v21);
      *(v15 + 12) = 2082;
      *(v0 + 16) = v14;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = sub_1000136BC(v16, v17, &v21);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v2, v12, "%{public}s Peripheral is not paired. No need to unpair %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100DB93D0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100DB98D0;
  }

  else
  {
    v4 = sub_100DB94FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DB94FC()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Bluetooth device unpaired successfully! %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100DB96FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB9790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB9830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB98D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB9970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100DB9B18, a4, 0);
}

uint64_t sub_100DB9B18()
{
  v24 = v0;
  sub_1000D2A70(v0[6], v0[20], &qword_10169A068, &qword_1013933F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016BB490);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v23 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000136BC(v6, v7, &v23);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Can't determine accessory state due to failure on peripheral discovery: %s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    else
    {
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[11];
    sub_100DD921C(v0[20], v10, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    sub_100DD9284(v10, v9, type metadata accessor for PencilPairingService.PeripheralDiscovery);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v11 + 32);
    v14 = v0[17];
    if (EnumCaseMultiPayload == 1)
    {
      v13(v0[13], v14, v0[10]);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v15 = type metadata accessor for UUID();
      v0[30] = v15;
      v0[31] = *(v15 - 8);
      v16 = swift_allocObject();
      v0[32] = v16;
      *(v16 + 16) = xmmword_101385D80;
      Identifier.id.getter();
      v22 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
      v17 = swift_task_alloc();
      v0[33] = v17;
      *v17 = v0;
      v18 = sub_100DBAA84;
    }

    else
    {
      v13(v0[15], v14, v0[10]);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v21 = type metadata accessor for UUID();
      v0[21] = v21;
      v0[22] = *(v21 - 8);
      v16 = swift_allocObject();
      v0[23] = v16;
      *(v16 + 16) = xmmword_101385D80;
      Identifier.id.getter();
      v22 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
      v17 = swift_task_alloc();
      v0[24] = v17;
      *v17 = v0;
      v18 = sub_100DBA028;
    }

    v17[1] = v18;

    return v22(v16);
  }
}

uint64_t sub_100DBA028(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_100DBB4E0;
  }

  else
  {
    v6 = sub_100DBA178;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBA178()
{
  v30 = v0;
  v1 = v0[25];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[25] + 32);

LABEL_6:
      v0[27] = v2;

      v3 = swift_task_alloc();
      v0[28] = v3;
      *v3 = v0;
      v3[1] = sub_100DBA570;

      return sub_100D94F40(v2);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_101694EA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[10];
  v8 = v0[11];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016BB490);
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[15];
  v17 = v0[10];
  v16 = v0[11];
  if (v12)
  {
    v28 = v0[18];
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_1000136BC(v19, v21, &v29);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v27);

    v22(v15, v17);
    v24 = v28;
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v14, v17);
    v25(v15, v17);
    v24 = v13;
  }

  sub_100DD92EC(v24, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100DBA570(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100DBA688, v2, 0);
}

uint64_t sub_100DBA688()
{
  if (*(v0 + 312) == 1)
  {
    (*(*(v0 + 176) + 56))(*(v0 + 72), 1, 1, *(v0 + 168));
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_100DBA83C;
    v2 = *(v0 + 120);
    v3 = *(v0 + 72);

    return sub_100D71518(v2, v3);
  }

  else
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    (*(v8 + 8))(v6, v7);
    sub_100DD92EC(v5, type metadata accessor for PencilPairingService.PeripheralDiscovery);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100DBA83C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100DBA978, v2, 0);
}

uint64_t sub_100DBA978()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];

  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DBAA84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_100DBB5E4;
  }

  else
  {
    v6 = sub_100DBABD4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBABD4()
{
  v30 = v0;
  v1 = v0[34];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[34] + 32);

LABEL_6:
      v0[36] = v2;

      v3 = swift_task_alloc();
      v0[37] = v3;
      *v3 = v0;
      v3[1] = sub_100DBAFCC;

      return sub_100D94F40(v2);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_101694EA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016BB490);
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  if (v12)
  {
    v28 = v0[18];
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_1000136BC(v19, v21, &v29);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v27);

    v22(v15, v17);
    v24 = v28;
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v14, v17);
    v25(v15, v17);
    v24 = v13;
  }

  sub_100DD92EC(v24, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100DBAFCC(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 313) = a1;

  return _swift_task_switch(sub_100DBB0E4, v2, 0);
}

uint64_t sub_100DBB0E4()
{
  if (*(v0 + 313) == 1)
  {
    (*(*(v0 + 248) + 56))(*(v0 + 72), 1, 1, *(v0 + 240));
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_100DBB298;
    v2 = *(v0 + 104);
    v3 = *(v0 + 72);

    return sub_100D71C7C(v2, v3);
  }

  else
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    (*(v8 + 8))(v6, v7);
    sub_100DD92EC(v5, type metadata accessor for PencilPairingService.PeripheralDiscovery);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100DBB298()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100DBB3D4, v2, 0);
}

uint64_t sub_100DBB3D4()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DBB4E0()
{
  v1 = v0[18];
  (*(v0[11] + 8))(v0[15], v0[10]);
  sub_100DD92EC(v1, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100DBB5E4()
{
  v1 = v0[18];
  (*(v0[11] + 8))(v0[13], v0[10]);
  sub_100DD92EC(v1, type metadata accessor for PencilPairingService.PeripheralDiscovery);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100DBB6E8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for BinaryDecoder();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v6 = type metadata accessor for BinaryEncoder();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_100DBB93C, v1, 0);
}

uint64_t sub_100DBB93C()
{
  v16 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[37];
    v4 = v0[38];
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101370F00, &v15);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s for peripheral: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = sub_100DBBC60;
  v13 = v0[22];

  return withTimeout<A>(_:block:)(v12, 0xA055690D9DB80000, 1, &unk_1013E89D8, v13, &type metadata for () + 1);
}

uint64_t sub_100DBBC60()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_100DBC05C;
  }

  else
  {

    v4 = sub_100DBBD98;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DBBD98()
{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101370F00, &v14);
    *(v4 + 12) = 2082;
    v0[21] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;

    v8 = sub_1000136BC(v5, v7, &v14);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Connected to peripheral: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  BinaryEncoder.init()();
  BinaryDecoder.init()();
  v0[42] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_100DBC108;
  v12 = v0[29];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v12, v9, v10);
}

uint64_t sub_100DBC05C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DBC108(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[44] = a1;
  v4[45] = v1;

  v5 = v3[29];
  v6 = v3[28];
  v7 = v3[27];
  v8 = v3[23];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100DBC534;
  }

  else
  {
    v9 = sub_100DBC28C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DBC28C()
{
  v0[46] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_100DBC394;
  v3 = v0[42];
  v4 = v0[26];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_100DBC394(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v5 = v3[26];
  v6 = v3[25];
  v7 = v3[24];
  v8 = v3[23];
  (*(v6 + 8))(v5, v7);

  if (v1)
  {
    v9 = sub_100DBCB00;
  }

  else
  {
    v9 = sub_100DBC60C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DBC534()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DBC60C(uint64_t a1)
{
  v43 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Paired Owner characteristic.", v4, 2u);
  }

  v5 = sub_100F54748();
  *(v1 + 400) = v5;
  *(v1 + 408) = v6;
  if (v6 >> 60 == 15)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate FindMyNetworkId!", v9, 2u);
    }

    v11 = *(v1 + 272);
    v10 = *(v1 + 280);
    v13 = *(v1 + 256);
    v12 = *(v1 + 264);
    v14 = *(v1 + 240);
    v15 = *(v1 + 248);

    sub_100500BC4();
    swift_allocError();
    *v16 = xmmword_1013E8500;
    *(v16 + 16) = 3;
    swift_willThrow();

    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);
    goto LABEL_22;
  }

  v17 = v5;
  v18 = v6;
  v19 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v19 != 2)
    {
LABEL_29:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.mtu.getter(v5, v6);
    }

    v22 = *(v5 + 16);
    v21 = *(v5 + 24);
    v20 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v6);
    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = HIDWORD(v5) - v5;
LABEL_16:
  v5 = sub_100017D5C(v5, v6);
LABEL_17:
  if (v20 != 32)
  {
    goto LABEL_29;
  }

  sub_100017D5C(v17, v18);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  sub_100006654(v17, v18);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    *(v1 + 96) = v17;
    *(v1 + 104) = v18;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 1;
    sub_100017D5C(v17, v18);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000136BC(v27, v28, &v42);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Sending .verifyFindMyNetworkId command: %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v30 = *(v1 + 392);
  *(v1 + 16) = v17;
  *(v1 + 24) = v18;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  sub_100DDA200();
  *(v1 + 416) = BinaryEncoder.encode<A>(_:)();
  *(v1 + 424) = v31;
  if (!v30)
  {
    v39 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v40 = swift_task_alloc();
    *(v1 + 432) = v40;
    *v40 = v1;
    v40[1] = sub_100DBCBD8;
    v5 = *(v1 + 368);
    v6 = v39;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v5, v6);
  }

  v32 = *(v1 + 272);
  v41 = *(v1 + 280);
  v34 = *(v1 + 256);
  v33 = *(v1 + 264);
  v36 = *(v1 + 240);
  v35 = *(v1 + 248);
  sub_100006654(v17, v18);

  (*(v35 + 8))(v34, v36);
  (*(v32 + 8))(v41, v33);
  sub_100006654(v17, v18);
LABEL_22:

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_100DBCB00()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DBCBD8(uint64_t a1)
{
  v4 = *v2;
  v4[55] = v1;

  v5 = v4[23];
  if (v1)
  {
    v6 = sub_100DBCF6C;
  }

  else
  {
    v4[56] = a1;
    v6 = sub_100DBCD14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBCD14()
{
  v1 = v0[48];
  v2 = fragment(data:mtu:)();
  v3 = swift_allocObject();
  v0[57] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_100DBCE24;

  return withTimeout<A>(_:block:)(v0 + 17, 0x40AAD21B3B700000, 3, &unk_1013E89E8, v3, &type metadata for Data);
}

uint64_t sub_100DBCE24()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 184);

  if (v0)
  {
    v4 = sub_100DBD554;
  }

  else
  {
    v4 = sub_100DBD08C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DBCF6C()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  sub_100016590(v0[52], v0[53]);
  sub_100006654(v1, v2);

  sub_100006654(v1, v2);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

void *sub_100DBD08C()
{
  v50 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  sub_100017D5C(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_100006654(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49[0] = v10;
    *(v0 + 56) = v8;
    *v9 = 136315138;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = v7;
    *(v0 + 88) = 1;
    sub_100017D5C(v8, v7);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v49);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sent command: %s.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  sub_100017D5C(v4, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100016590(v4, v3);
    goto LABEL_16;
  }

  v16 = swift_slowAlloc();
  result = swift_slowAlloc();
  v18 = result;
  v49[0] = result;
  *v16 = 134218242;
  v19 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_15;
    }

    v22 = *(v4 + 16);
    v21 = *(v4 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v20) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_12;
  }

  v20 = BYTE6(v3);
LABEL_15:
  *(v16 + 4) = v20;
  sub_100016590(v4, v3);
  *(v16 + 12) = 2080;
  v24 = Data.hexString.getter();
  v26 = sub_1000136BC(v24, v25, v49);

  *(v16 + 14) = v26;
  _os_log_impl(&_mh_execute_header, v14, v15, "Length: %ld received response: %s", v16, 0x16u);
  sub_100007BAC(v18);

LABEL_16:

  v27 = *(v0 + 472);
  sub_100DDA300();
  BinaryDecoder.decode<A>(_:from:)();
  v28 = *(v0 + 416);
  v29 = *(v0 + 424);
  v31 = *(v0 + 400);
  v30 = *(v0 + 408);
  if (v27)
  {
    v32 = v4;
    v33 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 280);
    v34 = *(v0 + 248);
    v46 = *(v0 + 256);
    v35 = *(v0 + 240);
    sub_100016590(v28, v29);
    sub_100006654(v31, v30);
    sub_100016590(v32, v3);

    sub_100006654(v31, v30);
    (*(v34 + 8))(v46, v35);
    (*(v33 + 8))(v48, v47);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);
    v39 = *(v0 + 256);
    v45 = *(v0 + 264);
    v40 = *(v0 + 248);
    v44 = *(v0 + 240);
    sub_100016590(v28, v29);
    sub_100006654(v31, v30);
    sub_100016590(v4, v3);

    sub_100006654(v31, v30);
    (*(v40 + 8))(v39, v44);
    (*(v37 + 8))(v38, v45);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);

    v43 = *(v0 + 8);

    return v43(v42, v41);
  }
}

uint64_t sub_100DBD554()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  sub_100016590(v0[52], v0[53]);
  sub_100006654(v1, v2);

  sub_100006654(v1, v2);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100DBD674(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v84 = a1;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v74 - v8;
  v10 = type metadata accessor for AccessoryProductInfo(0);
  v11 = (a2 + *(v10 + 96));
  v12 = *v11;
  v13 = v11[1];

  v14 = sub_100D65C9C(v12, v13);
  v16 = v15;

  if (v16 >> 60 == 15)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016BB490);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to generate E1 blob.", v20, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v23 = sub_100F54748();
    if (v24 >> 60 == 15)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_1016BB490);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Unable to generate FindMyNetworkId.", v28, 2u);
      }

      sub_100500BC4();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 16) = 3;
      swift_willThrow();
      return sub_100006654(v14, v16);
    }

    else
    {
      v81 = v24;
      v82 = v23;
      v77 = v10;
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      v31 = sub_1000076D4(v30, qword_1016BB490);
      sub_100017D5C(v14, v16);
      v75 = v31;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      sub_100006654(v14, v16);
      v34 = os_log_type_enabled(v32, v33);
      v79 = v9;
      v80 = v4;
      v78 = a2;
      v76 = v14;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v74 = v5;
        v36 = v35;
        v37 = swift_slowAlloc();
        v83[0] = v37;
        *v36 = 136315138;
        sub_100017D5C(v14, v16);
        v38 = Data.hexString.getter();
        v40 = v39;
        sub_100006654(v14, v16);
        v41 = sub_1000136BC(v38, v40, v83);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "E1: %s", v36, 0xCu);
        sub_100007BAC(v37);

        v5 = v74;
      }

      v42 = v81;
      v43 = v82;
      sub_100017D5C(v82, v81);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      sub_100006654(v43, v42);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v83[0] = v75;
        *v46 = 136315138;
        sub_100017D5C(v43, v42);
        v47 = Data.hexString.getter();
        v49 = v48;
        sub_100006654(v43, v42);
        v50 = sub_1000136BC(v47, v49, v83);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "findMyNetworkId: %s", v46, 0xCu);
        sub_100007BAC(v75);
      }

      v51 = v78;
      v52 = v84;
      v53 = *(v5 + 160);
      v54 = type metadata accessor for AccessoryMetadata(0);
      v55 = v52 + *(v54 + 44);
      if (*(v55 + 16))
      {

        sub_100006654(v76, v16);
        v56 = 0;
        v57 = 0;
      }

      else
      {
        v58 = *v55;
        v59 = *(v55 + 8);

        v56 = sub_100B67D6C(v58, v59);
        v57 = v60;
        sub_100006654(v76, v16);
      }

      *(v53 + 88) = v56;
      *(v53 + 96) = v57;

      v61 = *(v5 + 160);
      v62 = (v52 + *(v54 + 20));
      v64 = *v62;
      v63 = v62[1];
      v65 = *(v61 + 104);
      v66 = *(v61 + 112);
      *(v61 + 104) = *v62;
      *(v61 + 112) = v63;

      sub_100017D5C(v64, v63);
      sub_100006654(v65, v66);

      v67 = (*(v5 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
      v69 = *v67;
      v68 = v67[1];
      v70 = v81;
      *v67 = v82;
      v67[1] = v70;

      sub_100006654(v69, v68);

      v71 = *(v5 + 160);
      v72 = v79;
      sub_100DD9284(v51, v79, type metadata accessor for AccessoryProductInfo);
      (*(*(v77 - 8) + 56))(v72, 0, 1);
      v73 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();

      sub_10002311C(v72, v71 + v73, &qword_101697268, &qword_101394FE0);
      swift_endAccess();
    }
  }
}

void sub_100DBDD8C(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = v2[6];
  if (v3 >> 60 == 15)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing E1 blob to generate init pairing.", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v9 = v2[5];
    v10 = (v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v11 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8);
    if (v11 >> 60 == 15)
    {
      sub_100017D5C(v2[5], v2[6]);
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_1016BB490);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Missing FindMyNetworkId to generate init pairing.", v15, 2u);
      }

      sub_100500BC4();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 3;
      swift_willThrow();
      sub_100006654(v9, v3);
    }

    else
    {
      v17 = v1;
      v60 = a1;
      v18 = *v10;
      v19 = v2[2];
      v20 = v2[3];
      sub_100DE5458(v19, v20, v9, v3, *v10, v11, v57);
      v47 = v57[1];
      v44 = v57[0];
      v45 = v59;
      v46 = v58;
      sub_10002E98C(v9, v3);
      sub_10002E98C(v18, v11);
      sub_10002E98C(v9, v3);
      sub_10002E98C(v18, v11);
      sub_100017D5C(v19, v20);
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_1016BB490);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v42 = v18;
        v24 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v48 = v41;
        *v24 = 136315138;
        v25 = *(v17 + 160);
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        sub_100017D5C(v26, v27);
        v40 = v23;
        v28 = Data.hexString.getter();
        v43 = v9;
        v30 = v29;
        sub_100016590(v26, v27);
        v31 = sub_1000136BC(v28, v30, &v48);
        v9 = v43;

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v40, "sessionNonce: %s", v24, 0xCu);
        sub_100007BAC(v41);

        v18 = v42;
      }

      v48 = v44;
      v49 = v47;
      *&v50 = v46;
      *(&v50 + 1) = v45;
      sub_1002807FC(&v48);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "generateInitPairingPayload request success.", v34, 2u);
      }

      sub_100006654(v18, v11);
      sub_100006654(v9, v3);

      v35 = v55;
      v36 = v60;
      v60[6] = v54;
      v36[7] = v35;
      v36[8] = v56;
      v37 = v51;
      v36[2] = v50;
      v36[3] = v37;
      v38 = v53;
      v36[4] = v52;
      v36[5] = v38;
      v39 = v49;
      *v36 = v48;
      v36[1] = v39;
    }
  }
}

uint64_t sub_100DBE2D8(uint64_t a1)
{
  v2[198] = v1;
  v2[197] = a1;
  v2[199] = *v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[200] = swift_task_alloc();
  v2[201] = type metadata accessor for PencilPairingLockCheckResponse(0);
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  v2[205] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[206] = v3;
  v2[207] = *(v3 - 8);
  v2[208] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[209] = v4;
  v2[210] = *(v4 - 8);
  v2[211] = swift_task_alloc();
  v2[212] = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();

  return _swift_task_switch(sub_100DBE540, v1, 0);
}

uint64_t sub_100DBE540()
{
  v54 = v0;
  v1 = v0[198];

  sub_100D66838(v0 + 78);

  memcpy(v0 + 40, v0 + 78, 0x130uLL);
  if (sub_100DD993C((v0 + 40)) == 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016BB490);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to create pairing check data.", v5, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v6 = 0xD00000000000001ALL;
    *(v6 + 8) = 0x800000010134B3C0;
    *(v6 + 16) = 0;
    swift_willThrow();
LABEL_17:

    v48 = v0[1];

    return v48();
  }

  memcpy(v0 + 2, v0 + 40, 0x130uLL);
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[215] = sub_1000076D4(v7, qword_1016BB490);
  sub_1000D2A70((v0 + 78), (v0 + 116), &qword_1016BB8A8, &qword_1013E8918);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v10 = 136316162;
    v52 = v9;
    v11 = v0[32];
    v12 = v0[33];
    sub_100017D5C(v11, v12);
    v13 = Data.description.getter();
    v15 = v14;
    sub_100016590(v11, v12);
    v16 = sub_1000136BC(v13, v15, v53);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = v0[34];
    v18 = v0[35];
    sub_100017D5C(v17, v18);
    v19 = Data.description.getter();
    v21 = v20;
    sub_100016590(v17, v18);
    v22 = sub_1000136BC(v19, v21, v53);

    *(v10 + 14) = v22;
    *(v10 + 22) = 2080;
    v23 = v0[26];
    v24 = v0[27];
    sub_100017D5C(v23, v24);
    v25 = Data.description.getter();
    v27 = v26;
    sub_100016590(v23, v24);
    v28 = sub_1000136BC(v25, v27, v53);

    *(v10 + 24) = v28;
    *(v10 + 32) = 2080;
    v29 = v0[24];
    v30 = v0[25];
    sub_100017D5C(v29, v30);
    v31 = Data.description.getter();
    v33 = v32;
    sub_100016590(v29, v30);
    v34 = sub_1000136BC(v31, v33, v53);

    *(v10 + 34) = v34;
    *(v10 + 42) = 2080;
    v35 = v0[22];
    v36 = v0[23];
    sub_100017D5C(v35, v36);
    v37 = Data.description.getter();
    v39 = v38;
    sub_100016590(v35, v36);
    v40 = sub_1000136BC(v37, v39, v53);

    *(v10 + 44) = v40;
    _os_log_impl(&_mh_execute_header, v8, v52, "nonce: %s e1: %s attestation: %s\ncsr: %s certs: %s", v10, 0x34u);
    swift_arrayDestroy();
  }

  v41 = (*(v1 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v42 = *v41;
  v0[216] = *v41;
  v43 = v41[1];
  v0[217] = v43;
  if (v43 >> 60 == 15)
  {
LABEL_14:
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Invalid serial number.", v46, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v47 = xmmword_1013E84F0;
    *(v47 + 16) = 3;
    swift_willThrow();
    sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
    goto LABEL_17;
  }

  v0[193] = v42;
  v0[194] = v43;
  sub_100017D5C(v42, v43);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v42, v43);
    goto LABEL_14;
  }

  v0[218] = Data.trimmed.getter();
  v0[219] = v50;
  v51 = swift_task_alloc();
  v0[220] = v51;
  *v51 = v0;
  v51[1] = sub_100DBEC00;

  return daemon.getter();
}

uint64_t sub_100DBEC00(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1768) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1776) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DBEDDC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DBEDDC(uint64_t a1)
{
  v3 = *v2;
  v3[223] = a1;
  v3[224] = v1;

  if (v1)
  {
    v4 = v3[198];
    v5 = sub_100DC0854;
  }

  else
  {
    v6 = v3[198];

    v5 = sub_100DBEF08;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DBEF08()
{
  v1 = v0[223];
  v2 = v0[199];
  v3 = swift_allocObject();
  v0[225] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_100DBF008;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1013E8928, v3, &type metadata for () + 1);
}

uint64_t sub_100DBF008()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = *(v2 + 1584);
    v4 = sub_100DC096C;
  }

  else
  {
    v5 = *(v2 + 1584);

    v4 = sub_100DBF130;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DBF14C()
{
  v1 = swift_task_alloc();
  v0[228] = v1;
  *v1 = v0;
  v1[1] = sub_100DBF1EC;
  v2 = v0[219];
  v3 = v0[218];

  return sub_100C580A0(v3, v2);
}

uint64_t sub_100DBF1EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1832) = a1;
  *(v4 + 1840) = v1;

  v5 = *(v3 + 1584);
  if (v1)
  {
    v6 = sub_100DBF6A0;
  }

  else
  {
    v6 = sub_100DBF324;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBF324()
{
  v20 = v0;
  result = *(v0 + 1832);
  v2 = *(result + 16);
  *(v0 + 1848) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 1696) + 80);
    *(v0 + 1896) = v3;
    *(v0 + 1856) = 0;
    if (*(result + 16))
    {
      v4 = *(v0 + 1712);
      v5 = *(v0 + 1704);
      sub_100DD9284(result + ((v3 + 32) & ~v3), v4, type metadata accessor for LocalFindableAccessoryRecord);
      sub_100DD9284(v4, v5, type metadata accessor for LocalFindableAccessoryRecord);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 1704);
      if (v8)
      {
        v10 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v19);
        *(v10 + 12) = 2082;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v13 = v12;
        sub_100DD92EC(v9, type metadata accessor for LocalFindableAccessoryRecord);
        v14 = sub_1000136BC(v11, v13, &v19);

        *(v10 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Removing dupe: %{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100DD92EC(v9, type metadata accessor for LocalFindableAccessoryRecord);
      }

      (*(*(v0 + 1656) + 16))(*(v0 + 1664), *(v0 + 1712), *(v0 + 1648));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v17 = swift_task_alloc();
      *(v0 + 1864) = v17;
      *v17 = v0;
      v17[1] = sub_100DBF7B8;
      v18 = *(v0 + 1688);

      return sub_100DC1228(v18, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v15 = swift_task_alloc();
    *(v0 + 1880) = v15;
    *v15 = v0;
    v15[1] = sub_100DBFCD0;
    v16 = *(v0 + 1640);

    return sub_100DC34DC(v16, v0 + 16);
  }

  return result;
}

uint64_t sub_100DBF6A0()
{
  v1 = v0[219];
  v2 = v0[218];
  v3 = v0[217];
  v4 = v0[216];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DBF7B8()
{
  v2 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v3 = v2[211];
    v4 = v2[210];
    v5 = v2[209];
    v6 = v2[198];
    (*(v4 + 8))(v3, v5);

    v7 = sub_100DC0A94;
    v8 = v6;
  }

  else
  {
    v9 = v2[198];
    (*(v2[210] + 8))(v2[211], v2[209]);
    v7 = sub_100DBF920;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100DBF920()
{
  v22 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1856) + 1;
  result = sub_100DD92EC(*(v0 + 1712), type metadata accessor for LocalFindableAccessoryRecord);
  if (v2 == v1)
  {

    v4 = swift_task_alloc();
    *(v0 + 1880) = v4;
    *v4 = v0;
    v4[1] = sub_100DBFCD0;
    v5 = *(v0 + 1640);

    return sub_100DC34DC(v5, v0 + 16);
  }

  else
  {
    v6 = *(v0 + 1856) + 1;
    *(v0 + 1856) = v6;
    v7 = *(v0 + 1832);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + 1712);
      v9 = *(v0 + 1704);
      sub_100DD9284(v7 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + *(*(v0 + 1696) + 72) * v6, v8, type metadata accessor for LocalFindableAccessoryRecord);
      sub_100DD9284(v8, v9, type metadata accessor for LocalFindableAccessoryRecord);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 1704);
      if (v12)
      {
        v14 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v14 = 136446466;
        *(v14 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v21);
        *(v14 + 12) = 2082;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        sub_100DD92EC(v13, type metadata accessor for LocalFindableAccessoryRecord);
        v18 = sub_1000136BC(v15, v17, &v21);

        *(v14 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s Removing dupe: %{public}s", v14, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100DD92EC(v13, type metadata accessor for LocalFindableAccessoryRecord);
      }

      (*(*(v0 + 1656) + 16))(*(v0 + 1664), *(v0 + 1712), *(v0 + 1648));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v19 = swift_task_alloc();
      *(v0 + 1864) = v19;
      *v19 = v0;
      v19[1] = sub_100DBF7B8;
      v20 = *(v0 + 1688);

      return sub_100DC1228(v20, 0);
    }
  }

  return result;
}

uint64_t sub_100DBFCD0()
{
  v1 = *(*v0 + 1584);

  return _swift_task_switch(sub_100DBFDE0, v1, 0);
}

uint64_t sub_100DBFDE0()
{
  v39 = v0;
  v1 = v0[205];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "Pairing lock check failed. Error: %{public}@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
    }

    v0[195] = v2;
    type metadata accessor for SPPairingSessionError(0);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.code.getter();
    v9 = v0[219];
    v10 = v0[218];
    v11 = v0[217];
    v12 = v0[216];
    if (v0[196] == 18)
    {
      sub_100500BC4();
      swift_allocError();
      *v13 = xmmword_1013E84E0;
      *(v13 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      sub_100500BC4();
      swift_allocError();
      *v25 = v2;
      *(v25 + 8) = 0;
      *(v25 + 16) = 1;
      swift_willThrow();
      v26 = v2;
    }

    sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
    sub_100006654(v12, v11);

    sub_100016590(v10, v9);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v14 = v0[203];
    v15 = v0[202];
    sub_100DD921C(v1, v14, type metadata accessor for PencilPairingLockCheckResponse);
    sub_100DD9284(v14, v15, type metadata accessor for PencilPairingLockCheckResponse);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[202];
    if (v18)
    {
      v20 = v0[201];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136446210;
      if (*(v19 + *(v20 + 40) + 8) >> 60 == 15)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v23 = Data.hexString.getter();
        v24 = v29;
      }

      sub_100DD92EC(v0[202], type metadata accessor for PencilPairingLockCheckResponse);
      v30 = sub_1000136BC(v23, v24, &v38);

      *(v21 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Received SeedS and S3 from server. Pairing token: %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100DD92EC(v19, type metadata accessor for PencilPairingLockCheckResponse);
    }

    v31 = v0[207];
    v32 = v0[206];
    v33 = v0[200];
    v34 = *(v0[198] + 160);
    (*(v31 + 16))(v33, v0[203] + *(v0[201] + 32), v32);
    (*(v31 + 56))(v33, 0, 1, v32);
    v35 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();

    sub_10002311C(v33, v34 + v35, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();

    v36 = swift_task_alloc();
    v0[236] = v36;
    *v36 = v0;
    v36[1] = sub_100DC0384;
    v37 = v0[203];

    return sub_100DC3D28((v0 + 172), v37);
  }
}

uint64_t sub_100DC0384()
{
  v1 = *(*v0 + 1584);

  return _swift_task_switch(sub_100DC0494, v1, 0);
}

uint64_t sub_100DC0494()
{
  *(v0 + 1312) = *(v0 + 1456);
  *(v0 + 1328) = *(v0 + 1472);
  *(v0 + 1344) = *(v0 + 1488);
  *(v0 + 1360) = *(v0 + 1504);
  *(v0 + 1248) = *(v0 + 1392);
  *(v0 + 1264) = *(v0 + 1408);
  *(v0 + 1280) = *(v0 + 1424);
  *(v0 + 1296) = *(v0 + 1440);
  *(v0 + 1232) = *(v0 + 1376);
  if (sub_100DD9A00(v0 + 1232) == 1)
  {
    v1 = *(v0 + 1752);
    v2 = *(v0 + 1744);
    v3 = *(v0 + 1736);
    v4 = *(v0 + 1728);
    v5 = *(v0 + 1624);
    sub_100500BC4();
    swift_allocError();
    *v6 = 0xD00000000000001ALL;
    *(v6 + 8) = 0x8000000101370CF0;
    *(v6 + 16) = 0;
    swift_willThrow();
    sub_100016590(v2, v1);

    sub_100006654(v4, v3);
    sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
    sub_100DD92EC(v5, type metadata accessor for PencilPairingLockCheckResponse);

    v7 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 1328);
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1360);
    v20 = *(v0 + 1264);
    v21 = *(v0 + 1280);
    v22 = *(v0 + 1296);
    v23 = *(v0 + 1312);
    v18 = *(v0 + 1232);
    v19 = *(v0 + 1248);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1752);
    v12 = *(v0 + 1744);
    v13 = *(v0 + 1736);
    v14 = *(v0 + 1728);
    if (v10)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Successfully generated finalize pairing command.", v15, 2u);

      sub_100016590(v12, v11);

      sub_100006654(v14, v13);
      sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
    }

    else
    {
      sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
      sub_100006654(v14, v13);

      sub_100016590(v12, v11);
    }

    v16 = *(v0 + 1576);
    sub_100DD92EC(*(v0 + 1624), type metadata accessor for PencilPairingLockCheckResponse);
    v16[6] = v24;
    v16[7] = v25;
    v16[8] = v26;
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v16[5] = v23;
    *v16 = v18;
    v16[1] = v19;

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_100DC0854()
{
  v1 = v0[219];
  v2 = v0[218];
  v3 = v0[217];
  v4 = v0[216];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DC096C()
{
  v1 = v0[219];
  v2 = v0[218];
  v3 = v0[217];
  v4 = v0[216];
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  sub_100006654(v4, v3);

  sub_100016590(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DC0A94()
{
  v1 = v0[217];
  v2 = v0[216];
  v3 = v0[214];
  sub_100016590(v0[218], v0[219]);

  sub_100006654(v2, v1);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  sub_100DD92EC(v3, type metadata accessor for LocalFindableAccessoryRecord);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC0BC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100DC0C88, 0, 0);
}

uint64_t sub_100DC0C88()
{
  v9 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available... %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100DC0E2C, v6, 0);
}

uint64_t sub_100DC0E2C()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100DC0EDC;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_100DC0EDC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_100DC114C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_100DC1010;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC1010(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_100DC114C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100DC11C4, 0, 0);
}

uint64_t sub_100DC11C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DC1228(uint64_t a1, char a2)
{
  *(v3 + 388) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BB858, &unk_1013E87B8);
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  *(v3 + 128) = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  *(v3 + 136) = v6;
  *(v3 + 144) = *(v6 - 8);
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 160) = v7;
  v8 = *(v7 - 8);
  *(v3 + 168) = v8;
  *(v3 + 176) = *(v8 + 64);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100DC149C, v2, 0);
}

uint64_t sub_100DC149C()
{
  v30 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v2 + 16);
  v0[27] = v6;
  v0[28] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  if (v9)
  {
    v28 = v8;
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000003ALL, 0x8000000101370BF0, v29);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, v29);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v28, "%{public}s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[29] = v17;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v20 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v21 = swift_task_alloc();
    v0[30] = v21;
    *v21 = v0;
    v21[1] = sub_100DC1938;

    return daemon.getter();
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Feature.FindMy.lineUp is disabled!", v24, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v25 = xmmword_10139D960;
    *(v25 + 16) = 3;
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100DC1938(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 248) = a1;

  v3 = swift_task_alloc();
  *(v2 + 256) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DC1B14;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DC1B14(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = sub_100DC321C;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_100DC1C3C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DC1C3C()
{
  v1 = *(v0 + 264);
  Identifier.id.getter();

  return _swift_task_switch(sub_100DC1CB0, v1, 0);
}

uint64_t sub_100DC1CB0()
{
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_100DC1D4C;
  v3 = v0[15];
  v2 = v0[16];

  return sub_100C57B00(v2, v3);
}

uint64_t sub_100DC1D4C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = v2[33];
    v4 = sub_100DC2200;
  }

  else
  {
    v5 = v2[8];
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = sub_100DC1E84;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC1E84()
{
  v30 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 56);
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    v3(v4, v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 232);
    v11 = *(v0 + 184);
    v12 = *(v0 + 160);
    if (v9)
    {
      v28 = *(v0 + 232);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v28(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v29);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No LocalFindableAccessoryRecord corresponds to peripheralIdentifier: %{public}s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {

      v10(v11, v12);
    }

    sub_100500BC4();
    swift_allocError();
    *v26 = xmmword_10139D9A0;
    *(v26 + 16) = 3;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v19 = *(v0 + 152);
    sub_100DD921C(v2, v19, type metadata accessor for LocalFindableAccessoryRecord);
    v20 = *(v1 + 28);
    *(v0 + 384) = v20;
    v21 = (v19 + v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = swift_task_alloc();
    *(v0 + 296) = v24;
    *v24 = v0;
    v24[1] = sub_100DC2348;

    return sub_100DD6AEC(v23, v22);
  }
}

uint64_t sub_100DC2200()
{
  v1 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_100DC227C, v1, 0);
}

uint64_t sub_100DC227C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DC2348()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);

    return _swift_task_switch(sub_100DC32E8, v3, 0);
  }

  else
  {
    v4 = (*(v2 + 152) + *(v2 + 384));
    v6 = *v4;
    v5 = v4[1];
    v7 = swift_task_alloc();
    *(v2 + 312) = v7;
    *v7 = v2;
    v7[1] = sub_100DC24E0;
    v8 = *(v2 + 152);

    return sub_100DA6CF8(v8, v6, v5);
  }
}

uint64_t sub_100DC24E0()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100DC25F0, v1, 0);
}

uint64_t sub_100DC25F0()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v2;

  return _swift_task_switch(sub_100DC2668, v1, 0);
}

uint64_t sub_100DC2668()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_100DC2730;
  v2 = v0[40];
  v3 = v0[12];

  return v5(v3, &unk_1013E87E0, v2);
}

uint64_t sub_100DC2730()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = sub_100DC2AC4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100DC2858;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC2858()
{
  v1 = v0[33];
  (*(v0[10] + 104))(v0[11], enum case for CloudKitCoordinator.Database.private(_:), v0[9]);

  return _swift_task_switch(sub_100DC28E0, v1, 0);
}

uint64_t sub_100DC28E0()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[43] = v1;
  *v1 = v0;
  v1[1] = sub_100DC2990;
  v2 = v0[11];
  v3 = v0[12];

  return v5(v3, v2);
}

uint64_t sub_100DC2990()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = v2[33];
    v4 = sub_100DC2E4C;
  }

  else
  {
    v5 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_100DC2C1C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC2AC4()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100DC2B30, v1, 0);
}

uint64_t sub_100DC2B30()
{
  v1 = *(v0 + 152);

  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DC2C1C()
{
  if (*(v0 + 388) == 1)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 168);
    v3 = *(v0 + 160);
    v4 = *(v0 + 64);
    (*(v0 + 216))(v1, *(v0 + 56), v3);
    v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
    v6 = swift_allocObject();
    *(v0 + 360) = v6;
    *(v6 + 16) = v4;
    (*(v2 + 32))(v6 + v5, v1, v3);

    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_100DC2FCC;

    return withTimeout<A>(_:block:)(v7, 0x40AAD21B3B700000, 3, &unk_1013E87F0, v6, &type metadata for () + 1);
  }

  else
  {
    sub_10000B3A8(*(v0 + 96), &qword_1016BB858, &unk_1013E87B8);

    sub_100DD92EC(*(v0 + 152), type metadata accessor for LocalFindableAccessoryRecord);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100DC2E4C()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return _swift_task_switch(sub_100DC2EC4, v1, 0);
}

uint64_t sub_100DC2EC4()
{
  v1 = v0[19];
  v2 = v0[12];

  sub_10000B3A8(v2, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DC2FCC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {
    v4 = sub_100DC33D4;
  }

  else
  {
    v4 = sub_100DC3114;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC3114()
{
  v1 = v0[12];

  sub_10000B3A8(v1, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD92EC(v0[19], type metadata accessor for LocalFindableAccessoryRecord);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100DC321C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DC32E8()
{
  v1 = *(v0 + 152);

  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DC33D4()
{
  v1 = v0[19];
  v2 = v0[12];

  sub_10000B3A8(v2, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DC34DC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Date();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for PencilPairingLockCheckResponse(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100DC35DC, v2, 0);
}

uint64_t sub_100DC35DC()
{
  v28 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = 0x7365547265646E75;
  *(v0 + 56) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 216) == 1)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v23 = *(v0 + 160);
    v24 = *(v0 + 152);
    v4 = *(v0 + 136);
    v22 = *(v0 + 144);
    v25 = *(v0 + 128);
    *(v0 + 16) = *(v4 + 80);
    *(v0 + 32) = *(v4 + 96);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    sub_1001022C4(v0 + 16, v0 + 64);
    sub_1001022C4(v0 + 32, v0 + 80);
    v26 = 0x2000000000;
    v27 = __DataStorage.init(length:)();
    sub_1007765FC(&v26, 17);
    v20 = v27 | 0x4000000000000000;
    v21 = v26;
    swift_allocObject();
    v5 = __DataStorage.init(length:)();
    v26 = 0x6400000000;
    v27 = v5;
    sub_1007765FC(&v26, 34);
    v6 = v26;
    v7 = v27 | 0x4000000000000000;
    UUID.init()();
    swift_allocObject();
    v8 = __DataStorage.init(length:)();
    v26 = 0x2000000000;
    v27 = v8;
    sub_1007765FC(&v26, 85);
    v9 = v26;
    v10 = v27 | 0x4000000000000000;
    *v1 = *(v0 + 16);
    *(v1 + 16) = *(v0 + 32);
    *(v1 + 32) = v21;
    *(v1 + 40) = v20;
    *(v1 + 48) = v6;
    *(v1 + 56) = v7;
    v11 = (v1 + v3[9]);
    *v11 = 0xD000000000000011;
    v11[1] = 0x800000010134B430;
    v12 = (v1 + v3[10]);
    *v12 = v9;
    v12[1] = v10;
    *(v1 + v3[11]) = 0;
    v13 = *(v22 + 160);

    Date.init()();
    v14 = Date.epoch.getter();
    (*(v23 + 8))(v2, v24);
    *(v13 + 32) = v14;

    sub_100DD921C(v1, v25, type metadata accessor for PencilPairingLockCheckResponse);
    sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
    swift_storeEnumTagMultiPayload();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_100DC3990;
    v18 = *(v0 + 184);
    v19 = *(v0 + 136);

    return sub_1004F5960(v18, v19);
  }
}

uint64_t sub_100DC3990()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_100DC3B78;
  }

  else
  {
    v4 = sub_100DC3ABC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DC3ABC()
{
  sub_100DD921C(v0[23], v0[16], type metadata accessor for PencilPairingLockCheckResponse);
  sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100DC3B78()
{
  v0[12] = v0[26];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    v1 = v0[16];

    *v1 = v0[13];
  }

  else
  {
    v0[15] = 7;
    v2 = v0[16];
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();

    *v2 = v0[14];
  }

  sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DC3D28(uint64_t a1, uint64_t a2)
{
  v3[44] = a1;
  v3[45] = a2;
  type metadata accessor for PencilPairingLockCheckResponse(0);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_100DC3DC4, v2, 0);
}

void *sub_100DC3DC4()
{
  v48 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016BB490);
  sub_100DD9284(v3, v2, type metadata accessor for PencilPairingLockCheckResponse);
  sub_100DD9284(v3, v1, type metadata accessor for PencilPairingLockCheckResponse);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 376);
  if (v7)
  {
    v9 = swift_slowAlloc();
    result = swift_slowAlloc();
    v11 = result;
    v47 = result;
    *v9 = 134218242;
    v12 = *(v8 + 48);
    v13 = *(v8 + 56);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v18 = v12 + 16;
      v12 = *(v12 + 16);
      v17 = *(v18 + 8);
      v15 = v17 - v12;
      if (!__OFSUB__(v17, v12))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(v13);
LABEL_15:
      v21 = *(v0 + 368);
      sub_100DD92EC(*(v0 + 376), type metadata accessor for PencilPairingLockCheckResponse);
      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100DD92EC(v21, type metadata accessor for PencilPairingLockCheckResponse);
      v25 = sub_1000136BC(v22, v24, &v47);

      *(v9 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v5, v6, "S3 count %ld: %s", v9, 0x16u);
      sub_100007BAC(v11);

      goto LABEL_16;
    }

    v19 = __OFSUB__(HIDWORD(v12), v12);
    v20 = HIDWORD(v12) - v12;
    if (v19)
    {
      __break(1u);
      return result;
    }

    v15 = v20;
    goto LABEL_15;
  }

  v16 = *(v0 + 368);
  sub_100DD92EC(*(v0 + 376), type metadata accessor for PencilPairingLockCheckResponse);

  sub_100DD92EC(v16, type metadata accessor for PencilPairingLockCheckResponse);
LABEL_16:
  v27 = *(v0 + 352);
  v26 = *(v0 + 360);
  v28 = v26[4];
  v29 = v26[5];
  v30 = v26[6];
  v31 = v26[7];
  sub_100017D5C(v28, v29);
  sub_100017D5C(v30, v31);
  sub_100D54608(v28, v29, v30, v31, (v0 + 304));
  v32 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  v33 = *(v0 + 336);
  *(v0 + 176) = v32;
  *(v0 + 192) = v33;
  sub_100280714((v0 + 160));
  v34 = *(v0 + 240);
  v35 = *(v0 + 272);
  v36 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v35;
  *(v0 + 144) = v36;
  v37 = *(v0 + 176);
  v38 = *(v0 + 208);
  v39 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v38;
  *(v0 + 80) = v39;
  *(v0 + 96) = v34;
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v37;
  SharingCircleWildAdvertisementKey.init(key:)();
  *v27 = *(v0 + 16);
  v40 = *(v0 + 32);
  v41 = *(v0 + 48);
  v42 = *(v0 + 80);
  v27[3] = *(v0 + 64);
  v27[4] = v42;
  v27[1] = v40;
  v27[2] = v41;
  v43 = *(v0 + 96);
  v44 = *(v0 + 112);
  v45 = *(v0 + 144);
  v27[7] = *(v0 + 128);
  v27[8] = v45;
  v27[5] = v43;
  v27[6] = v44;

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_100DC411C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v2[13] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[32] = v7;
  *v7 = v2;
  v7[1] = sub_100DC43FC;

  return daemon.getter();
}

uint64_t sub_100DC43FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 264) = a1;

  v3 = swift_task_alloc();
  *(v2 + 272) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalFindableLostModeDetectionService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService, &unk_1013F7ED8);
  *v3 = v9;
  v3[1] = sub_100DC45D8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DC45D8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  if (v1)
  {
    v5 = sub_100DC7650;
    v6 = 0;
  }

  else
  {

    v5 = sub_100DC4710;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100DC4710()
{
  v1 = *(v0 + 280);
  if (*(v1 + 145) == 1)
  {
    v2 = sub_100DC4754;
  }

  else
  {
    *(v0 + 600) = *(v1 + 146);
    v2 = sub_100DC4920;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DC4754()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Onboarding is showing. Not retrying.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100DC4920()
{
  if (*(v0 + 600))
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016BB490);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Onboarding is showing. Not retrying.", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 64);
    Identifier.id.getter();

    return _swift_task_switch(sub_100DC4B4C, v7, 0);
  }
}

uint64_t sub_100DC4B4C()
{
  *(v0 + 296) = sub_100DDB460();

  return _swift_task_switch(sub_100DC4BB4, 0, 0);
}

uint64_t sub_100DC4BB4()
{
  if (*(v0[37] + 16) && (v1 = sub_1000210EC(v0[27]), (v2 & 1) != 0))
  {
    v3 = v0[31];
    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[27];
    v7 = v0[22];
    v8 = v0[23];
    v9 = v0[21];
    (*(v5 + 16))(v9, *(v0[37] + 56) + *(v5 + 72) * v1, v4);
    v10 = *(v8 + 8);
    v10(v6, v7);

    (*(v5 + 56))(v9, 0, 1, v4);
    (*(v5 + 32))(v3, v9, v4);
  }

  else
  {
    v11 = v0[28];
    v12 = v0[29];
    v13 = v0[27];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[21];

    v10 = *(v15 + 8);
    v10(v13, v14);
    (*(v12 + 56))(v16, 1, 1, v11);
    static Date.distantPast.getter();
    if ((*(v12 + 48))(v16, 1, v11) != 1)
    {
      sub_10000B3A8(v0[21], &unk_101696900, &unk_10138B1E0);
    }
  }

  v0[38] = v10;
  v17 = v0[30];
  v18 = v0[28];
  v19 = v0[29];
  static Date.trustedNow.getter(v17);
  Date.timeIntervalSince(_:)();
  v0[39] = v20;
  v21 = *(v19 + 8);
  v0[40] = v21;
  v0[41] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v18);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v22 = qword_10177B348;
  v0[42] = qword_10177B348;

  v23 = swift_task_alloc();
  v0[43] = v23;
  *v23 = v0;
  v23[1] = sub_100DC4E74;

  return unsafeBlocking<A>(_:)(v0 + 4, sub_1000D2BE0, v22, &type metadata for Configuration);
}

uint64_t sub_100DC4E74()
{

  return _swift_task_switch(sub_100DC4F8C, 0, 0);
}

uint64_t sub_100DC4F8C()
{
  v1 = v0[8];
  v0[44] = v0[4];
  return _swift_task_switch(sub_100DC4FB0, v1, 0);
}

uint64_t sub_100DC4FB0()
{
  sub_1010748E8(*(v0 + 352));
  *(v0 + 360) = v1;

  return _swift_task_switch(sub_100DC5028, 0, 0);
}

uint64_t sub_100DC5028()
{
  v1 = *(v0 + 312);
  if (*(v0 + 360) >= v1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 360);
      v8 = *(v0 + 312);
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v8;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Time since last attempt %f. Threshold %f. Not retrying.", v9, 0x16u);
    }

    else
    {
    }

    (*(v0 + 320))(*(v0 + 248), *(v0 + 224));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v2 = *(v0 + 64);
    if (v1 <= 86400.0)
    {
      Identifier.id.getter();
      v3 = sub_100DC53DC;
    }

    else
    {
      Identifier.id.getter();
      v3 = sub_100DC52D4;
    }

    return _swift_task_switch(v3, v2, 0);
  }
}

uint64_t sub_100DC52D4()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[22];
  sub_100DDBB80(0, v2);
  v1(v2, v3);

  return _swift_task_switch(sub_100DC536C, 0, 0);
}

uint64_t sub_100DC536C()
{
  v1 = *(v0 + 64);
  Identifier.id.getter();

  return _swift_task_switch(sub_100DC53DC, v1, 0);
}

uint64_t sub_100DC53DC()
{
  *(v0 + 368) = sub_100DDB824();

  return _swift_task_switch(sub_100DC5444, 0, 0);
}

uint64_t sub_100DC5444()
{
  if (*(*(v0 + 368) + 16) && (v1 = sub_1000210EC(*(v0 + 200)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 368) + 56) + 8 * v1);
    (*(v0 + 304))(*(v0 + 200), *(v0 + 176));
  }

  else
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);

    v4(v5, v6);
    v3 = 0;
  }

  *(v0 + 376) = v3;

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_100DC559C;
  v8 = *(v0 + 336);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v8, &type metadata for Configuration);
}

uint64_t sub_100DC559C()
{

  return _swift_task_switch(sub_100DC56B4, 0, 0);
}

uint64_t sub_100DC56B4()
{
  v1 = v0[8];
  v0[49] = v0[5];
  return _swift_task_switch(sub_100DC56D8, v1, 0);
}

uint64_t sub_100DC56D8()
{
  *(v0 + 400) = sub_10107488C(*(v0 + 392));

  return _swift_task_switch(sub_100DC5750, 0, 0);
}

uint64_t sub_100DC5750()
{
  v38 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= 1)
  {
    if (qword_101694EA0 == -1)
    {
LABEL_4:
      v5 = *(v0 + 160);
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      v8 = *(v0 + 72);
      v9 = type metadata accessor for Logger();
      *(v0 + 408) = sub_1000076D4(v9, qword_1016BB490);
      v10 = *(v7 + 16);
      *(v0 + 416) = v10;
      *(v0 + 424) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v5, v8, v6);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v35 = *(v0 + 376);
        v36 = *(v0 + 400);
        v13 = *(v0 + 160);
        v15 = *(v0 + 112);
        v14 = *(v0 + 120);
        v16 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v16 = 136446722;
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        v20 = *(v14 + 8);
        v20(v13, v15);
        v21 = sub_1000136BC(v17, v19, &v37);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2048;
        *(v16 + 14) = v35;
        *(v16 + 22) = 2048;
        *(v16 + 24) = v36;
        _os_log_impl(&_mh_execute_header, v11, v12, "Retry pairing for %{public}s. Attempted %ld. Daily limit %ld", v16, 0x20u);
        sub_100007BAC(v34);
      }

      else
      {
        v28 = *(v0 + 160);
        v29 = *(v0 + 112);
        v30 = *(v0 + 120);

        v20 = *(v30 + 8);
        v20(v28, v29);
      }

      *(v0 + 432) = v20;
      v31 = *(v0 + 64);
      static Date.trustedNow.getter(*(v0 + 240));
      Identifier.id.getter();

      return _swift_task_switch(sub_100DC5BD8, v31, 0);
    }

LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_1016BB490);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 400);
    v26 = *(v0 + 376);
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v25;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v23, v24, "Exceeded number of retries per day %ld. Attempted: %ld", v27, 0x16u);
  }

  else
  {
  }

  (*(v0 + 320))(*(v0 + 248), *(v0 + 224));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100DC5BD8()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  sub_100DDBD4C(v3, v5);
  v0[55] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v5, v6);
  v1(v3, v4);

  return _swift_task_switch(sub_100DC5CA4, 0, 0);
}

uint64_t sub_100DC5CA4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[47];
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v3[8];
    v3[56] = v5 + 1;
    Identifier.id.getter();
    a1 = sub_100DC5D28;
    a2 = v6;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100DC5D28()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[22];
  sub_100DDBB80(v0[56], v2);
  v1(v2, v3);
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_100DC5DEC;
  v5 = v0[13];
  v6 = v0[9];

  return sub_100D8D800(v5, v6);
}

uint64_t sub_100DC5DEC()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_100DC776C;
  }

  else
  {
    v2 = sub_100DC5F00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DC5F00()
{
  v26 = v0;
  v1 = *(v0 + 104);
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    *(v0 + 472) = type metadata accessor for CentralManager();
    v4 = swift_task_alloc();
    *(v0 + 480) = v4;
    *v4 = v0;
    v4[1] = sub_100DC62A8;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {
    (*(v0 + 416))(*(v0 + 152), *(v0 + 72), *(v0 + 112));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 320);
    v24 = *(v0 + 432);
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    v11 = *(v0 + 152);
    v12 = *(v0 + 112);
    if (v7)
    {
      v23 = *(v0 + 248);
      v13 = swift_slowAlloc();
      v22 = v10;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v21 = v8;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v24(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found record for %{public}s. Not retrying", v13, 0xCu);
      sub_100007BAC(v14);

      v21(v23, v22);
    }

    else
    {

      v24(v11, v12);
      v8(v9, v10);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100DC62A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_100DC7A80;
  }

  else
  {
    v4 = sub_100DC63BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DC63BC()
{
  (*(v0[11] + 104))(v0[12], enum case for CentralManager.State.poweredOn(_:), v0[10]);
  v1 = swift_task_alloc();
  v0[63] = v1;
  v2 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100DC64B8;
  v3 = v0[59];
  v4 = v0[12];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100DC64B8()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_100DC7BB4;
  }

  else
  {
    v3 = sub_100DC6620;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DC6620()
{
  v1 = v0[52];
  v15 = v0[54];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[9];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v1(v7 + v6, v5, v3);
  sub_101123D4C(0, 1, 0);
  v1(v2, v7 + v6, v3);

  Identifier.id.getter();
  v0[65] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v3);
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    sub_101123D4C((v8 > 1), v9 + 1, 1);
  }

  v0[66] = _swiftEmptyArrayStorage;
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  _swiftEmptyArrayStorage[2] = v9 + 1;
  (*(v11 + 32))(_swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10, v12);
  v16 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v13 = swift_task_alloc();
  v0[67] = v13;
  *v13 = v0;
  v13[1] = sub_100DC6830;

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_100DC6830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 544) = a1;
  *(v3 + 552) = v1;

  if (v1)
  {
    v4 = sub_100DC7CF4;
  }

  else
  {
    v4 = sub_100DC6970;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DC6970()
{
  v32 = v0;
  v1 = v0[68];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = v0[52];
    v12 = v0[16];
    v13 = v0[14];
    v14 = v0[9];

    v11(v12, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[54];
    v19 = v0[16];
    v20 = v0[14];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, v31);
      *(v21 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v18(v19, v20);
      v25 = sub_1000136BC(v22, v24, v31);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s Missing peripheral for %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v18(v19, v20);
    }

    v26 = v0[40];
    v27 = v0[31];
    v28 = v0[28];
    sub_100500BC4();
    swift_allocError();
    *v29 = xmmword_1013E84C0;
    *(v29 + 16) = 3;
    swift_willThrow();

    v26(v27, v28);

    v30 = v0[1];

    return v30();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[68] + 32);
  }

  v0[70] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, v31);
    *(v6 + 12) = 2080;
    v0[7] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, v31);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Retrieved peripheral: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = swift_task_alloc();
  v0[71] = v10;
  *v10 = v0;
  v10[1] = sub_100DC6ED8;

  return sub_100DA5158(v3);
}

uint64_t sub_100DC6ED8(char a1)
{
  v3 = *v2;
  *(v3 + 601) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v4 = sub_100DC7E34;
  }

  else
  {
    v4 = sub_100DC6FF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DC6FF0(uint64_t a1)
{
  v28 = v1;
  v2 = (*(v1 + 601) < 5u) & (*(v1 + 601) ^ 1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 601);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446466;
    v8 = sub_100B9F190(v5);
    v10 = sub_1000136BC(v8, v9, &v27);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1026;
    *(v6 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "AccountCheckResult: %{public}s, shouldRetry = %{BOOL,public}d", v6, 0x12u);
    sub_100007BAC(v7);
  }

  if (v2)
  {
    (*(v1 + 416))(*(v1 + 136), *(v1 + 72), *(v1 + 112));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 432);
    v15 = *(v1 + 136);
    v16 = *(v1 + 112);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v14(v15, v16);
      v22 = sub_1000136BC(v19, v21, &v27);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Retrying pairing for %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {

      v14(v15, v16);
    }

    v25 = swift_task_alloc();
    *(v1 + 584) = v25;
    *v25 = v1;
    v25[1] = sub_100DC73F8;
    v26 = *(v1 + 560);

    return sub_100D9BE04(v26);
  }

  else
  {
    (*(v1 + 320))(*(v1 + 248), *(v1 + 224));

    v23 = *(v1 + 8);

    return v23();
  }
}

uint64_t sub_100DC73F8()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_100DC7F80;
  }

  else
  {
    v2 = sub_100DC750C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DC750C()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC7650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DC776C()
{
  v0[6] = v0[58];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (v0[3])
  {

LABEL_4:

    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138543362;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v1, v2, "Error during localFindableRecord check: %{public}@", v3, 0xCu);
      sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
    }

    v6 = v0[40];
    v7 = v0[31];
    v8 = v0[28];

    swift_willThrow();

    v6(v7, v8);

    v9 = v0[1];

    return v9();
  }

  v0[59] = type metadata accessor for CentralManager();
  v11 = swift_task_alloc();
  v0[60] = v11;
  *v11 = v0;
  v11[1] = sub_100DC62A8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DC7A80()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC7BB4()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC7CF4()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC7E34()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC7F80()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC80CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100DC81A8, 0, 0);
}

uint64_t sub_100DC81A8()
{
  v38 = v0;
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    (*(v3 + 16))(v2, v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1000BB584(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v13 = 136446722;
      *(v13 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v37);
      *(v13 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, &v37);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v18;
      *v36 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s failed for %{public}s. Error %{public}@", v13, 0x20u);
      sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

LABEL_10:

      goto LABEL_13;
    }

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 24);
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_1016BB490);
    (*(v21 + 16))(v19, v22, v20);
    v7 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v7, v24);
    v26 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v37);
      *(v29 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v28 + 8))(v26, v27);
      v33 = sub_1000136BC(v30, v32, &v37);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v7, v24, "%{public}s succeeded for %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }

    (*(v28 + 8))(v26, v27);
  }

LABEL_13:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100DC868C(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DC882C, 0, 0);
}

uint64_t sub_100DC882C()
{
  v1 = v0[10];
  v17 = v0[9];
  v2 = v0[5];
  v3 = v0[4];
  v4 = enum case for ConnectUseCase.findNearbyPencil(_:);
  v5 = type metadata accessor for ConnectUseCase();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v7;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for LongTermKey();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v10 = type metadata accessor for Peripheral.Options();
  (*(*(v10 - 8) + 56))(v17, 0, 1, v10);
  v11 = type metadata accessor for Peripheral();
  v12 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_100DC8B98;
  v14 = v0[9];
  v15 = v0[10];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v15, v14, v11, v12);
}

uint64_t sub_100DC8B98()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 96) = v0;

  sub_10000B3A8(v3, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v2, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {

    return _swift_task_switch(sub_100DDDDB8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_100DC8D64(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DC8F04, 0, 0);
}

uint64_t sub_100DC8F04()
{
  v1 = v0[10];
  v15 = v0[9];
  v2 = v0[5];
  v3 = v0[4];
  v4 = type metadata accessor for ConnectUseCase();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v5;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = type metadata accessor for LongTermKey();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v8 = type metadata accessor for Peripheral.Options();
  (*(*(v8 - 8) + 56))(v15, 0, 1, v8);
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_100DC8B98;
  v12 = v0[9];
  v13 = v0[10];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v13, v12, v9, v10);
}

uint64_t sub_100DC9230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Characteristic();
  v8 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_100DC93A0;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v6, a3, v7, v8);
}

uint64_t sub_100DC93A0()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100DDDDC8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_100DC9558;
    v5 = v2[3];

    return AsyncSequence<>.reassemble()(v5, v4);
  }
}

uint64_t sub_100DC9558(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[9] = v2;

  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[3];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100DDDDCC;
  }

  else
  {
    v6[10] = a2;
    v6[11] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_100DDDDC4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100DC96E4(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for BinaryDecoder();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = type metadata accessor for BinaryEncoder();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[48] = v7;
  v2[49] = *(v7 - 8);
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_100DC9938, v1, 0);
}

uint64_t sub_100DC9938()
{
  v18 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[51] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[49];
    v4 = v0[50];
    v6 = v0[48];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101370EC0, &v17);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s for %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v0[52] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = type metadata accessor for Peripheral();
  v0[53] = v12;
  v13 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[54] = v13;
  v14 = swift_task_alloc();
  v0[55] = v14;
  *v14 = v0;
  v14[1] = sub_100DC9CA8;
  v15 = v0[47];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v15, v12, v13);
}

uint64_t sub_100DC9CA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[56] = a1;
  v4[57] = v1;

  v5 = v3[47];
  v6 = v3[46];
  v7 = v3[45];
  v8 = v3[35];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100DCA0D4;
  }

  else
  {
    v9 = sub_100DC9E2C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DC9E2C()
{
  v0[58] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_100DC9F34;
  v3 = v0[52];
  v4 = v0[44];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_100DC9F34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  v5 = v3[44];
  v6 = v3[43];
  v7 = v3[42];
  v8 = v3[35];
  (*(v6 + 8))(v5, v7);

  if (v1)
  {
    v9 = sub_100DCA530;
  }

  else
  {
    v9 = sub_100DCA178;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100DCA0D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DCA178(uint64_t a1)
{
  v27 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101370EC0, v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Discovered FindMy services and Config characteristic.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  BinaryEncoder.init()();
  BinaryDecoder.init()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136446210;
    *(v1 + 208) = xmmword_1013AAD90;
    *(v1 + 224) = 0;
    *(v1 + 232) = 0;
    *(v1 + 240) = xmmword_10139BF70;
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending .unpair command: %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v13 = *(v1 + 488);
  *(v1 + 16) = xmmword_1013AAD90;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = xmmword_10139BF70;
  sub_10067C1D4();
  *(v1 + 496) = BinaryEncoder.encode<A>(_:)();
  *(v1 + 504) = v14;
  if (v13)
  {
    v16 = *(v1 + 320);
    v15 = *(v1 + 328);
    v18 = *(v1 + 304);
    v17 = *(v1 + 312);
    v19 = *(v1 + 288);
    v20 = *(v1 + 296);

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    v23 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v24 = swift_task_alloc();
    *(v1 + 512) = v24;
    *v24 = v1;
    v24[1] = sub_100DCA5D4;
    v25 = *(v1 + 464);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v25, v23);
  }
}

uint64_t sub_100DCA530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DCA5D4(uint64_t a1)
{
  v4 = *v2;
  v4[65] = v1;

  v5 = v4[35];
  if (v1)
  {
    v6 = sub_100DCA968;
  }

  else
  {
    v4[66] = a1;
    v6 = sub_100DCA710;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DCA710()
{
  v1 = v0[60];
  v2 = fragment(data:mtu:)();
  v3 = swift_allocObject();
  v0[67] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[68] = v4;
  *v4 = v0;
  v4[1] = sub_100DCA820;

  return withTimeout<A>(_:block:)(v0 + 32, 0x40AAD21B3B700000, 3, &unk_1013E89B8, v3, &type metadata for Data);
}

uint64_t sub_100DCA820()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 280);

  if (v0)
  {
    v4 = sub_100DCB90C;
  }

  else
  {
    v4 = sub_100DCAA64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DCA968()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  sub_100016590(v0[62], v0[63]);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

void *sub_100DCAA64(uint64_t a1)
{
  v137 = v1;
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v136[0] = v7;
    *(v1 + 160) = xmmword_1013AAD90;
    *v6 = 136446210;
    *(v1 + 176) = 0;
    *(v1 + 184) = 0;
    *(v1 + 192) = xmmword_10139BF70;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, v136);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sent command: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  sub_100017D5C(v2, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    sub_100016590(v2, v3);
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  result = swift_slowAlloc();
  v15 = result;
  v136[0] = result;
  *v13 = 134218242;
  v16 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v17) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v17 = BYTE6(v3);
LABEL_15:
  *(v13 + 4) = v17;
  sub_100016590(v2, v3);
  *(v13 + 12) = 2082;
  v21 = Data.hexString.getter();
  v23 = sub_1000136BC(v21, v22, v136);

  *(v13 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v11, v12, "Length: %ld received response: %{public}s", v13, 0x16u);
  sub_100007BAC(v15);

LABEL_16:

  v24 = *(v1 + 552);
  sub_10067C180();
  BinaryDecoder.decode<A>(_:from:)();
  if (!v24)
  {
    v32 = *(v1 + 64);
    v31 = *(v1 + 72);
    v34 = *(v1 + 80);
    v33 = *(v1 + 88);
    v35 = *(v1 + 96);
    v36 = *(v1 + 104);
    v129 = v2;
    v130 = v3;
    v127 = v31;
    v128 = v36;
    v133 = v33;
    v135 = v35;
    v131 = v32;
    v132 = v34;
    if (((v35 >> 58) & 0xC | (v31 >> 60) & 3) != 1)
    {
      swift_retain_n();
      sub_100DD9FC8(v32, v31, v34, v33, v35, v36, sub_100017D5C);
      v49 = v31;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v52 = v32;
      v53 = v51;
      sub_100DD9FC8(v52, v49, v34, v33, v35, v36, sub_100016590);
      if (os_log_type_enabled(v50, v53))
      {
        v54 = *(v1 + 392);
        v55 = *(v1 + 400);
        v56 = *(v1 + 384);
        v57 = swift_slowAlloc();
        v136[0] = swift_slowAlloc();
        *v57 = 136446723;
        *(v1 + 112) = v131;
        *(v1 + 120) = v49;
        *(v1 + 128) = v132;
        *(v1 + 136) = v133;
        *(v1 + 144) = v135;
        *(v1 + 152) = v36;
        sub_100DD9FC8(v131, v49, v132, v133, v135, v36, sub_100017D5C);
        v58 = String.init<A>(describing:)();
        v60 = sub_1000136BC(v58, v59, v136);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2160;
        *(v57 + 14) = 1752392040;
        *(v57 + 22) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();

        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;

        (*(v54 + 8))(v55, v56);
        v64 = sub_1000136BC(v61, v63, v136);

        *(v57 + 24) = v64;
        _os_log_impl(&_mh_execute_header, v50, v53, "Invalid response %{public}s Peripheral %{private,mask.hash}s", v57, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v78 = *(v1 + 496);
      v77 = *(v1 + 504);
      v79 = *(v1 + 320);
      v80 = *(v1 + 304);
      logb = *(v1 + 312);
      v125 = *(v1 + 328);
      v82 = *(v1 + 288);
      v81 = *(v1 + 296);
      sub_100500BC4();
      swift_allocError();
      *v83 = xmmword_10139D990;
      *(v83 + 16) = 3;
      swift_willThrow();
      sub_100016590(v78, v77);
      sub_100DD9FC8(v131, v127, v132, v133, v135, v128, sub_100016590);
      sub_100016590(v129, v130);

      (*(v81 + 8))(v80, v82);
      (*(v79 + 8))(v125, logb);
      goto LABEL_39;
    }

    sub_100017D5C(v32, v31 & 0xCFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v34, v33);
    v37 = sub_10041C094(v32, v31 & 0xCFFFFFFFFFFFFFFFLL, v34, v33);
    if ((v37 & 0xFF0000) == 0x60000)
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v1 + 392);
        v41 = *(v1 + 400);
        v42 = *(v1 + 384);
        v43 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v136[0] = v123;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v44 = v42;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;

        (*(v40 + 8))(v41, v44);
        v48 = sub_1000136BC(v45, v47, v136);

        *(v43 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v38, v39, "Invalid commandResponse for %{private,mask.hash}s.", v43, 0x16u);
        sub_100007BAC(v123);

LABEL_37:
        v101 = *(v1 + 496);
        v100 = *(v1 + 504);
        v102 = *(v1 + 320);
        v103 = *(v1 + 304);
        loga = *(v1 + 312);
        v126 = *(v1 + 328);
        v105 = *(v1 + 288);
        v104 = *(v1 + 296);
        sub_100500BC4();
        swift_allocError();
        *v106 = xmmword_1013AC380;
        v107 = 3;
LABEL_38:
        *(v106 + 16) = v107;
        swift_willThrow();
        sub_100016590(v101, v100);
        sub_100DD9FC8(v131, v127, v132, v133, v135, v128, sub_100016590);
        sub_100016590(v129, v130);

        (*(v104 + 8))(v103, v105);
        (*(v102 + 8))(v126, loga);
        goto LABEL_39;
      }
    }

    else
    {
      v65 = v37;
      v66 = sub_10030F9A4(v37);

      if (v66 != 23)
      {

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = *(v1 + 392);
          v87 = *(v1 + 400);
          v119 = *(v1 + 384);
          v88 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v88 = 136315907;
          v89 = sub_10030E868(v66);
          log = v84;
          v91 = sub_1000136BC(v89, v90, v136);

          *(v88 + 4) = v91;
          *(v88 + 12) = 2082;
          if (BYTE2(v65))
          {
            v92 = BYTE2(v65);
          }

          else
          {
            v92 = 6;
          }

          v93 = sub_10041B9C8(v92);
          v95 = sub_1000136BC(v93, v94, v136);

          *(v88 + 14) = v95;
          *(v88 + 22) = 2160;
          *(v88 + 24) = 1752392040;
          *(v88 + 32) = 2081;
          dispatch thunk of PeripheralProtocol.id.getter();

          sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v97;

          (*(v86 + 8))(v87, v119);
          v99 = sub_1000136BC(v96, v98, v136);

          *(v88 + 34) = v99;
          v84 = log;
          _os_log_impl(&_mh_execute_header, log, v85, "Opcode: %s. Status %{public}s. Peripheral %{private,mask.hash}s", v88, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
        }

        v109 = BYTE2(v65);
        if (!v109)
        {
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "RX unpair succeeded", v112, 2u);
          }

          v113 = *(v1 + 320);
          v114 = *(v1 + 328);
          v115 = *(v1 + 304);
          v116 = *(v1 + 312);
          v118 = *(v1 + 288);
          v117 = *(v1 + 296);
          sub_100016590(*(v1 + 496), *(v1 + 504));

          sub_100DD9FC8(v131, v127, v34, v133, v135, v128, sub_100016590);
          sub_100016590(v129, v130);

          (*(v117 + 8))(v115, v118);
          (*(v113 + 8))(v114, v116);

          v108 = *(v1 + 8);
          goto LABEL_40;
        }

        v101 = *(v1 + 496);
        v100 = *(v1 + 504);
        v102 = *(v1 + 320);
        v103 = *(v1 + 304);
        loga = *(v1 + 312);
        v126 = *(v1 + 328);
        v105 = *(v1 + 288);
        v104 = *(v1 + 296);
        sub_100500BC4();
        swift_allocError();
        *v106 = v109;
        *(v106 + 8) = 0;
        v107 = 2;
        goto LABEL_38;
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v1 + 392);
        v70 = *(v1 + 400);
        v71 = *(v1 + 384);
        v72 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v136[0] = v124;
        *v72 = 33686275;
        *(v72 + 4) = v65;
        *(v72 + 6) = 2160;
        *(v72 + 8) = 1752392040;
        *(v72 + 16) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;

        (*(v69 + 8))(v70, v71);
        v76 = sub_1000136BC(v73, v75, v136);

        *(v72 + 18) = v76;
        _os_log_impl(&_mh_execute_header, v67, v68, "Invalid opcode: %{public}hu. Peripheral %{private,mask.hash}s", v72, 0x1Au);
        sub_100007BAC(v124);

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  v134 = *(v1 + 328);
  v25 = v2;
  v27 = *(v1 + 312);
  v26 = *(v1 + 320);
  v28 = *(v1 + 296);
  v29 = *(v1 + 304);
  v30 = *(v1 + 288);
  sub_100016590(*(v1 + 496), *(v1 + 504));
  sub_100016590(v25, v3);

  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v134, v27);
LABEL_39:

  v108 = *(v1 + 8);
LABEL_40:

  return v108();
}

uint64_t sub_100DCB90C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  sub_100016590(v0[62], v0[63]);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DCBA08(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DCBBA8, 0, 0);
}

uint64_t sub_100DCBBA8()
{
  v1 = v0[10];
  v15 = v0[9];
  v2 = v0[5];
  v3 = v0[4];
  v4 = type metadata accessor for ConnectUseCase();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v5;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = type metadata accessor for LongTermKey();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v8 = type metadata accessor for Peripheral.Options();
  (*(*(v8 - 8) + 56))(v15, 0, 1, v8);
  v9 = type metadata accessor for Peripheral();
  v10 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_100DCBED4;
  v12 = v0[9];
  v13 = v0[10];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v13, v12, v9, v10);
}

uint64_t sub_100DCBED4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 96) = v0;

  sub_10000B3A8(v3, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v2, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {

    return _swift_task_switch(sub_100DCC0A0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_100DCC0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DCC134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Characteristic();
  v6 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a3, v5, v6);
}

uint64_t sub_100DCC228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_100DCC2BC;

  return sub_100DCC6EC();
}

uint64_t sub_100DCC2BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100DCC414;
  v4 = *(v1 + 24);

  return sub_100DCCF98(v4);
}

uint64_t sub_100DCC414()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100DCC548, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100DCC548()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registration failed - %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100DCC6EC()
{
  v1[92] = v0;
  v1[93] = type metadata accessor for PencilPairingLockAckResponse(0);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();

  return _swift_task_switch(sub_100DCC798, v0, 0);
}

uint64_t sub_100DCC798()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 776) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ackPairing...", v4, 2u);
  }

  sub_100D66FA0(v0 + 496);

  v5 = *(v0 + 704);
  *(v0 + 448) = *(v0 + 688);
  *(v0 + 464) = v5;
  *(v0 + 480) = *(v0 + 720);
  v6 = *(v0 + 640);
  *(v0 + 384) = *(v0 + 624);
  *(v0 + 400) = v6;
  v7 = *(v0 + 672);
  *(v0 + 416) = *(v0 + 656);
  *(v0 + 432) = v7;
  v8 = *(v0 + 576);
  *(v0 + 320) = *(v0 + 560);
  *(v0 + 336) = v8;
  v9 = *(v0 + 608);
  *(v0 + 352) = *(v0 + 592);
  *(v0 + 368) = v9;
  v10 = *(v0 + 512);
  *(v0 + 256) = *(v0 + 496);
  *(v0 + 272) = v10;
  v11 = *(v0 + 544);
  *(v0 + 288) = *(v0 + 528);
  *(v0 + 304) = v11;
  if (sub_1001010A8(v0 + 256) == 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, " Unable to generate ack data!", v14, 2u);
    }

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 464);
    *(v0 + 208) = *(v0 + 448);
    *(v0 + 224) = v17;
    *(v0 + 240) = *(v0 + 480);
    v18 = *(v0 + 400);
    *(v0 + 144) = *(v0 + 384);
    *(v0 + 160) = v18;
    v19 = *(v0 + 432);
    *(v0 + 176) = *(v0 + 416);
    *(v0 + 192) = v19;
    v20 = *(v0 + 336);
    *(v0 + 80) = *(v0 + 320);
    *(v0 + 96) = v20;
    v21 = *(v0 + 368);
    *(v0 + 112) = *(v0 + 352);
    *(v0 + 128) = v21;
    v22 = *(v0 + 272);
    *(v0 + 16) = *(v0 + 256);
    *(v0 + 32) = v22;
    v23 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v23;
    v24 = swift_task_alloc();
    *(v0 + 784) = v24;
    *v24 = v0;
    v24[1] = sub_100DCCA70;
    v25 = *(v0 + 768);

    return sub_1004F8EC4(v25, v0 + 16);
  }
}

uint64_t sub_100DCCA70()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 736);
  if (v0)
  {
    v4 = sub_100DCCDE8;
  }

  else
  {
    v4 = sub_100DCCB9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DCCB9C()
{
  v16 = v0;
  sub_100DD9284(v0[96], v0[95], type metadata accessor for PencilPairingLockAckResponse);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[96];
  v5 = v0[95];
  if (v3)
  {
    v6 = v0[94];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    sub_100DD9284(v5, v6, type metadata accessor for PencilPairingLockAckResponse);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_100DD92EC(v5, type metadata accessor for PencilPairingLockAckResponse);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, " Ack register was success. %{public}s", v7, 0xCu);
    sub_100007BAC(v8);

    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);
  }

  else
  {
    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);

    sub_100DD92EC(v5, type metadata accessor for PencilPairingLockAckResponse);
  }

  sub_100DD92EC(v4, type metadata accessor for PencilPairingLockAckResponse);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DCCDE8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, " Ack register failed with error - %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_10000B3A8(v0 + 496, &qword_1016BB898, &qword_1013E88F8);
  }

  else
  {
    sub_10000B3A8(v0 + 496, &qword_1016BB898, &qword_1013E88F8);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100DCCF98(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for PeripheralState();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_100DCD154, v1, 0);
}

uint64_t sub_100DCD154()
{
  v24 = v0;
  v1 = (*(v0[25] + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v2 = *v1;
  v0[38] = *v1;
  v3 = v1[1];
  v0[39] = v3;
  if (v3 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[18] = v2;
  v0[19] = v3;
  sub_100017D5C(v2, v3);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v2, v3);
LABEL_4:
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Invalid serial number.", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_1013E84F0;
    *(v8 + 16) = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  v11 = Data.trimmed.getter();
  v13 = v12;
  v0[40] = v11;
  v0[41] = v12;
  sub_100017D5C(v11, v12);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[42] = v14;
  sub_1000076D4(v14, qword_10177C418);
  sub_100017D5C(v11, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_100016590(v11, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v19 = String.init(data:encoding:)();
    if (!v20)
    {
      v19 = Data.hexString.getter();
    }

    v21 = sub_1000136BC(v19, v20, &v23);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting registration through FMFD %{private,mask.hash}s", v17, 0x16u);
    sub_100007BAC(v18);
  }

  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_100DCD54C;

  return daemon.getter();
}

uint64_t sub_100DCD54C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 352) = a1;

  v3 = swift_task_alloc();
  *(v2 + 360) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DCD728;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DCD728(uint64_t a1)
{
  v4 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  if (v1)
  {
    v5 = v4[25];
    sub_100016590(v4[40], v4[41]);

    v6 = sub_100DCDE34;
    v7 = v5;
  }

  else
  {

    v6 = sub_100DCD88C;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100DCD88C()
{
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_100DCD928;
  v3 = v0[40];
  v2 = v0[41];

  return sub_100C580A0(v3, v2);
}

uint64_t sub_100DCD928(uint64_t a1)
{
  v3 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v4 = v3[25];
    sub_100016590(v3[40], v3[41]);
    v5 = sub_100DCDD68;
    v6 = v4;
  }

  else
  {
    v6 = v3[25];
    v5 = sub_100DCDA50;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100DCDA50()
{
  v1 = v0[49];
  if (*(v1 + 16))
  {
    v3 = v0[35];
    v2 = v0[36];
    v5 = v0[31];
    v4 = v0[32];
    v6 = v0[30];
    v7 = *(v0[34] + 80);
    sub_100DD9284(v1 + ((v7 + 32) & ~v7), v3, type metadata accessor for LocalFindableAccessoryRecord);

    sub_100DD921C(v3, v2, type metadata accessor for LocalFindableAccessoryRecord);
    v0[51] = [objc_opt_self() sharedInstance];
    (*(v5 + 16))(v4, v2, v6);
    v8 = type metadata accessor for Peripheral();
    v9 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_100DCDEF4;
    v11 = v0[29];

    return dispatch thunk of PeripheralProtocol.state.getter(v11, v8, v9);
  }

  else
  {
    sub_100016590(v0[40], v0[41]);

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[42], qword_1016BB490);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[40];
    v15 = v0[41];
    v18 = v0[38];
    v17 = v0[39];
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid record!", v19, 2u);
    }

    sub_100006654(v18, v17);

    sub_100016590(v16, v15);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100DCDD68()
{
  v2 = v0[40];
  v1 = v0[41];
  sub_100006654(v0[38], v0[39]);

  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DCDE34()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_100016590(v0[40], v0[41]);
  sub_100006654(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DCDEF4()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_100DCE004, v1, 0);
}

uint64_t sub_100DCE004()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[27];
  (*(v5 + 104))(v3, enum case for PeripheralState.connected(_:), v4);
  sub_100D97688(&qword_1016BB890, &type metadata accessor for PeripheralState, &protocol conformance descriptor for PeripheralState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v5 + 8);
  v0[53] = v6;
  v0[54] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  v7 = v0[22] == v0[23];
  v8 = objc_allocWithZone(FMDLocalFindableAccessory);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithIdentifier:isa name:v10 connected:v7];
  v0[55] = v11;

  sub_100017D5C(v2, v1);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  v13 = v12;
  sub_100016590(v2, v1);
  v14 = v0[40];
  v15 = v0[41];
  if (!v13)
  {
    v16 = v0[40];
    v17 = v0[41];
    Data.hexString.getter();
    v14 = v16;
    v15 = v17;
  }

  sub_100016590(v14, v15);
  v18 = v0[36];
  v19 = v0[33];
  v20 = String._bridgeToObjectiveC()();

  [v11 setSerialNumber:v20];

  v21 = (v18 + *(v19 + 32));
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    v23 = *v21;
    v0[20] = *v21;
    v0[21] = v22;
    sub_100017D5C(v23, v22);
    sub_100DD8D18();
    RawRepresentable<>.hexString.getter();
    v24 = String._bridgeToObjectiveC()();

    [v11 setAlternateSerialNumber:v24];

    sub_100006654(v23, v22);
  }

  v38 = v0[51];
  v25 = v0[36];
  v26 = v0[33];
  type metadata accessor for PeripheralConnectionMaterial(0);
  v27 = Data._bridgeToObjectiveC()().super.isa;
  [v11 setIrkData:v27];

  MACAddress.hexString.getter();
  v28 = String._bridgeToObjectiveC()();

  [v11 setBtAddress:v28];

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_101385D80;
  v30 = *(v25 + *(v26 + 40));
  *(v29 + 56) = &type metadata for Int;
  *(v29 + 64) = &protocol witness table for Int;
  *(v29 + 32) = v30;
  String.init(format:_:)();
  v31 = String._bridgeToObjectiveC()();

  [v11 setVendorId:v31];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  v33 = *(v25 + *(v26 + 44));
  *(v32 + 56) = &type metadata for Int;
  *(v32 + 64) = &protocol witness table for Int;
  *(v32 + 32) = v33;
  String.init(format:_:)();
  v34 = String._bridgeToObjectiveC()();

  [v11 setProductId:v34];

  v35 = UUID._bridgeToObjectiveC()().super.isa;
  [v11 setBaUUID:v35];

  v0[2] = v0;
  v0[3] = sub_100DCE510;
  v36 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100DDDDE4;
  v0[13] = &unk_101650CB0;
  v0[14] = v36;
  [v38 didAddLocalFindableAccessory:v11 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100DCE510()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_100DCE784;
  }

  else
  {
    v4 = sub_100DCE630;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DCE630()
{
  v13 = *(v0 + 424);
  v1 = *(v0 + 408);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v14 = *(v0 + 288);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 256);
  v8 = *(v0 + 208);

  sub_100016590(v3, v2);
  sub_100006654(v5, v4);
  v13(v7, v8);
  (*(v6 + 8))(v12, v11);
  sub_100DD92EC(v14, type metadata accessor for LocalFindableAccessoryRecord);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100DCE784(uint64_t a1)
{
  v2 = v1[55];
  v15 = v1[53];
  v3 = v1[51];
  v5 = v1[40];
  v4 = v1[41];
  v11 = v1[38];
  v12 = v1[39];
  v16 = v1[36];
  v6 = v1[31];
  v7 = v1[29];
  v13 = v1[30];
  v14 = v1[32];
  v8 = v1[26];
  swift_willThrow();

  sub_100016590(v5, v4);
  sub_100006654(v11, v12);
  v15(v7, v8);
  (*(v6 + 8))(v14, v13);
  sub_100DD92EC(v16, type metadata accessor for LocalFindableAccessoryRecord);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100DCE8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Characteristic();
  v8 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1000EFFFC;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v6, a3, v7, v8);
}

uint64_t sub_100DCEA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[425] = v3;
  v4[424] = a3;
  v4[423] = a2;
  v4[422] = a1;
  type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[426] = swift_task_alloc();
  v4[427] = swift_task_alloc();
  v4[428] = swift_task_alloc();

  return _swift_task_switch(sub_100DCEB00, v3, 0);
}

void *sub_100DCEB00()
{
  v204 = v0;
  sub_1001011C0(*(v0 + 3392), v0 + 3040);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v115 = *(v0 + 3392);
    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_1016BB490);
    sub_1001011C0(v115, v0 + 3088);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v203[0] = v120;
      *v119 = 136446210;
      sub_1001011C0(v0 + 3088, v0 + 3136);
      v121 = String.init<A>(describing:)();
      v123 = v122;
      sub_100007BAC((v0 + 3088));
      v124 = sub_1000136BC(v121, v123, v203);

      *(v119 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v117, v118, "Invalid command from payload %{public}s", v119, 0xCu);
      sub_100007BAC(v120);
    }

    else
    {

      sub_100007BAC((v0 + 3088));
    }

    sub_100500BC4();
    swift_allocError();
    *v125 = xmmword_10139D990;
    *(v125 + 16) = 3;
    swift_willThrow();
    goto LABEL_50;
  }

  v1 = (v0 + 1456);
  v2 = *(v0 + 560);
  *(v0 + 1552) = *(v0 + 544);
  *(v0 + 1568) = v2;
  *(v0 + 1584) = *(v0 + 576);
  v3 = *(v0 + 496);
  *(v0 + 1488) = *(v0 + 480);
  *(v0 + 1504) = v3;
  v4 = *(v0 + 528);
  *(v0 + 1520) = *(v0 + 512);
  *(v0 + 1536) = v4;
  v5 = *(v0 + 464);
  *(v0 + 1456) = *(v0 + 448);
  *(v0 + 1472) = v5;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 3432) = v6;
  sub_1000076D4(v6, qword_1016BB490);
  sub_100DD93E8(v0 + 1456, v0 + 592);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100DD9444(v0 + 1456);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v203[0] = v10;
    *v9 = 136446210;
    v11 = *(v0 + 1568);
    *(v0 + 2992) = *(v0 + 1552);
    *(v0 + 3008) = v11;
    *(v0 + 3024) = *(v0 + 1584);
    v12 = *(v0 + 1504);
    *(v0 + 2928) = *(v0 + 1488);
    *(v0 + 2944) = v12;
    v13 = *(v0 + 1536);
    *(v0 + 2960) = *(v0 + 1520);
    *(v0 + 2976) = v13;
    v14 = *(v0 + 1472);
    *(v0 + 2896) = *v1;
    *(v0 + 2912) = v14;
    sub_100DD93E8(v0 + 1456, v0 + 160);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, v203);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received command: %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v18 = *(v0 + 1568);
  *(v0 + 112) = *(v0 + 1552);
  *(v0 + 128) = v18;
  *(v0 + 144) = *(v0 + 1584);
  v19 = *(v0 + 1504);
  *(v0 + 48) = *(v0 + 1488);
  *(v0 + 64) = v19;
  v20 = *(v0 + 1536);
  *(v0 + 80) = *(v0 + 1520);
  *(v0 + 96) = v20;
  v21 = *(v0 + 1472);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v21;
  v22 = sub_10027EE64(v0 + 16);
  if (v22 != 3)
  {
    if (v22 != 1)
    {
      sub_100DD93E8(v0 + 1456, v0 + 880);
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();
      sub_100DD9444(v0 + 1456);
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v203[0] = v147;
        *v146 = 136446210;
        v148 = *(v0 + 1568);
        *(v0 + 1120) = *(v0 + 1552);
        *(v0 + 1136) = v148;
        *(v0 + 1152) = *(v0 + 1584);
        v149 = *(v0 + 1504);
        *(v0 + 1056) = *(v0 + 1488);
        *(v0 + 1072) = v149;
        v150 = *(v0 + 1536);
        *(v0 + 1088) = *(v0 + 1520);
        *(v0 + 1104) = v150;
        v151 = *(v0 + 1472);
        *(v0 + 1024) = *v1;
        *(v0 + 1040) = v151;
        sub_100DD93E8(v0 + 1456, v0 + 1168);
        v152 = String.init<A>(describing:)();
        v154 = sub_1000136BC(v152, v153, v203);

        *(v146 + 4) = v154;
        _os_log_impl(&_mh_execute_header, v144, v145, "Received unexpected command %{public}s", v146, 0xCu);
        sub_100007BAC(v147);
      }

      sub_100500BC4();
      swift_allocError();
      v156 = xmmword_10139D990;
      goto LABEL_48;
    }

    sub_10004F9D4(v0 + 16);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, " Received pairing data!!", v25, 2u);
    }

    sub_10027EBC4((v0 + 3264));
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 1712);
      *(v0 + 1984) = *(v0 + 1696);
      *(v0 + 2000) = v26;
      *(v0 + 2016) = *(v0 + 1728);
      v27 = *(v0 + 1648);
      *(v0 + 1920) = *(v0 + 1632);
      *(v0 + 1936) = v27;
      v28 = *(v0 + 1680);
      *(v0 + 1952) = *(v0 + 1664);
      *(v0 + 1968) = v28;
      v29 = *(v0 + 1616);
      *(v0 + 1888) = *(v0 + 1600);
      *(v0 + 1904) = v29;
      sub_100DD98E0(v0 + 1888, v0 + 2032);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v203[0] = v33;
        *v32 = 136315138;
        v34 = Data.hexString.getter();
        v36 = sub_1000136BC(v34, v35, v203);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "AuthNonce: %s", v32, 0xCu);
        sub_100007BAC(v33);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2176);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v203[0] = v40;
        *v39 = 136315138;
        v41 = Data.hexString.getter();
        v43 = sub_1000136BC(v41, v42, v203);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "SerialNumber: %s", v39, 0xCu);
        sub_100007BAC(v40);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2320);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v203[0] = v47;
        *v46 = 136315138;
        v48 = Data.hexString.getter();
        v50 = sub_1000136BC(v48, v49, v203);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Alternate SerialNumber: %s", v46, 0xCu);
        sub_100007BAC(v47);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2464);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v203[0] = v54;
        *v53 = 136315138;
        v55 = Data.hexString.getter();
        v57 = sub_1000136BC(v55, v56, v203);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "seed: %s", v53, 0xCu);
        sub_100007BAC(v54);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2608);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v203[0] = v61;
        *v60 = 136315138;
        v62 = Data.hexString.getter();
        v64 = sub_1000136BC(v62, v63, v203);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "Certs: %s", v60, 0xCu);
        sub_100007BAC(v61);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2752);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v203[0] = v68;
        *v67 = 136315138;
        v69 = Data.hexString.getter();
        v71 = sub_1000136BC(v69, v70, v203);

        *(v67 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Attestation: %s", v67, 0xCu);
        sub_100007BAC(v68);
      }

      v72 = *(v0 + 3400);
      *(v72 + 152) = 3;
      v73 = *(v0 + 1888);
      v74 = *(v0 + 1896);
      v75 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
      v76 = *v75;
      v77 = v75[1];
      *v75 = v73;
      v75[1] = v74;

      sub_100017D5C(v73, v74);
      sub_100006654(v76, v77);

      v78 = *(v0 + 1904);
      v79 = *(v0 + 1912);
      v80 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v81 = *v80;
      v82 = v80[1];
      *v80 = v78;
      v80[1] = v79;

      sub_100017D5C(v78, v79);
      sub_100006654(v81, v82);

      v83 = *(v0 + 1920);
      v84 = *(v0 + 1928);
      v85 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
      v86 = *v85;
      v87 = v85[1];
      *v85 = v83;
      v85[1] = v84;

      sub_100017D5C(v83, v84);
      sub_100006654(v86, v87);

      v88 = *(v0 + 1936);
      v89 = *(v0 + 1944);
      v90 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
      v91 = *v90;
      v92 = v90[1];
      *v90 = v88;
      v90[1] = v89;

      sub_100017D5C(v88, v89);
      sub_100006654(v91, v92);

      v93 = *(v0 + 1968);
      v94 = *(v0 + 1976);
      v95 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
      v96 = *v95;
      v97 = v95[1];
      *v95 = v93;
      v95[1] = v94;

      sub_100017D5C(v93, v94);
      sub_100006654(v96, v97);

      v98 = *(v0 + 1952);
      v99 = *(v0 + 1960);
      v100 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
      v101 = *v100;
      v102 = v100[1];
      *v100 = v98;
      v100[1] = v99;

      sub_100017D5C(v98, v99);
      sub_100006654(v101, v102);

      v103 = *(v0 + 1984);
      v104 = *(v0 + 1992);
      v105 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
      v106 = *v105;
      v107 = v105[1];
      *v105 = v103;
      v105[1] = v104;

      sub_100017D5C(v103, v104);
      sub_100006654(v106, v107);

      v108 = *(v0 + 2000);
      v109 = *(v0 + 2008);
      v110 = (*(v72 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature);
      v111 = *v110;
      v112 = v110[1];
      *v110 = v108;
      v110[1] = v109;

      sub_100017D5C(v108, v109);
      sub_100006654(v111, v112);

      v113 = swift_task_alloc();
      *(v0 + 3440) = v113;
      *v113 = v0;
      v113[1] = sub_100DD0138;

      return sub_100DBE2D8(v0 + 304);
    }

    sub_100DD93E8(v0 + 1456, v0 + 1744);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.error.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v203[0] = v160;
      *v159 = 136446210;
      sub_10027EBC4((v0 + 3304));
      v161 = String.init<A>(describing:)();
      v163 = sub_1000136BC(v161, v162, v203);

      *(v159 + 4) = v163;
      v164 = "Invalid sendPairingData payload %{public}s";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v157, v158, v164, v159, 0xCu);
      sub_100007BAC(v160);

      goto LABEL_47;
    }

    goto LABEL_47;
  }

  sub_10004F9D4(v0 + 16);
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&_mh_execute_header, v126, v127, "Received pairing status.", v128, 2u);
  }

  v129 = *(v0 + 3400);

  *(v129 + 152) = 5;
  sub_10027EBC4((v0 + 3184));
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_100DD93E8(v0 + 1456, v0 + 1312);
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.error.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v203[0] = v160;
      *v159 = 136446210;
      sub_10027EBC4((v0 + 3224));
      v165 = String.init<A>(describing:)();
      v167 = sub_1000136BC(v165, v166, v203);

      *(v159 + 4) = v167;
      v164 = " Invalid sendPairingStatus payload %{public}s";
      goto LABEL_46;
    }

LABEL_47:

    sub_100500BC4();
    swift_allocError();
    v156 = xmmword_10139D9A0;
LABEL_48:
    *v155 = v156;
    *(v155 + 16) = 3;
    swift_willThrow();
LABEL_49:
    sub_100DD9444(v0 + 1456);
LABEL_50:

    v168 = *(v0 + 8);

    return v168();
  }

  v130 = *(v0 + 3344);
  *(v0 + 3456) = v130;
  v131 = *(v0 + 3352);
  *(v0 + 3464) = v131;
  v132 = *(v0 + 3360);
  *(v0 + 3472) = v132;
  v133 = *(v0 + 3368);
  *(v0 + 3480) = v133;
  sub_100017D5C(v130, v131);
  v134 = sub_1008CDF88(v130, v131);
  if (v134)
  {
    v201 = v131;
    v135 = v134;
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v203[0] = v139;
      *v138 = 136446210;
      v140 = sub_1008CDD10(v135);
      v142 = sub_1000136BC(v140, v141, v203);

      *(v138 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v136, v137, " Pairing failed with status %{public}s", v138, 0xCu);
      sub_100007BAC(v139);
    }

    sub_100500BC4();
    swift_allocError();
    *v143 = xmmword_1013AC380;
    *(v143 + 16) = 3;
    swift_willThrow();
    sub_100016590(v130, v201);
    sub_100016590(v132, v133);
    goto LABEL_49;
  }

  v169 = *(v0 + 3400);
  v170 = (*(v169 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v171 = *v170;
  v172 = v170[1];
  *v170 = v130;
  v170[1] = v131;
  sub_100017D5C(v130, v131);

  sub_100006654(v171, v172);

  v173 = (*(v169 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v174 = *v173;
  v175 = v173[1];
  *v173 = v132;
  v173[1] = v133;

  sub_100017D5C(v132, v133);
  sub_100006654(v174, v175);

  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v176, v177))
  {
    buf = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v203[0] = v202;
    *buf = 136446210;
    v178 = sub_1008CDD10(0);
    v180 = v131;
    v181 = v130;
    v182 = v133;
    v183 = v132;
    v184 = sub_1000136BC(v178, v179, v203);

    *(buf + 4) = v184;
    v132 = v183;
    v133 = v182;
    v130 = v181;
    v131 = v180;
    _os_log_impl(&_mh_execute_header, v176, v177, "status: %{public}s", buf, 0xCu);
    sub_100007BAC(v202);
  }

  sub_100017D5C(v130, v131);
  sub_100017D5C(v132, v133);
  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    result = swift_slowAlloc();
    v188 = result;
    v203[0] = result;
    *v187 = 134218242;
    v189 = v133 >> 62;
    if ((v133 >> 62) > 1)
    {
      if (v189 != 2)
      {
        v190 = 0;
        goto LABEL_67;
      }

      v192 = *(v132 + 16);
      v191 = *(v132 + 24);
      v193 = __OFSUB__(v191, v192);
      v190 = v191 - v192;
      if (!v193)
      {
        goto LABEL_67;
      }

      __break(1u);
    }

    else if (!v189)
    {
      v190 = BYTE6(v133);
LABEL_67:
      *(v187 + 4) = v190;
      sub_100016590(v130, v131);
      sub_100016590(v132, v133);
      *(v187 + 12) = 2080;
      v194 = Data.hexString.getter();
      v196 = sub_1000136BC(v194, v195, v203);

      *(v187 + 14) = v196;
      _os_log_impl(&_mh_execute_header, v185, v186, "S4 count %ld: %s", v187, 0x16u);
      sub_100007BAC(v188);

      goto LABEL_68;
    }

    LODWORD(v190) = HIDWORD(v132) - v132;
    if (__OFSUB__(HIDWORD(v132), v132))
    {
      __break(1u);
      return result;
    }

    v190 = v190;
    goto LABEL_67;
  }

  sub_100016590(v130, v131);
  sub_100016590(v132, v133);
LABEL_68:

  v197 = swift_task_alloc();
  *(v0 + 3488) = v197;
  *v197 = v0;
  v197[1] = sub_100DD03C4;
  v198 = *(v0 + 3424);
  v199 = *(v0 + 3384);

  return sub_100DD0A2C(v198, v199);
}

uint64_t sub_100DD0138()
{
  v2 = *v1;
  *(*v1 + 3448) = v0;

  v3 = *(v2 + 3400);
  if (v0)
  {
    v4 = sub_100DD0330;
  }

  else
  {
    v5 = *(v2 + 416);
    *(v2 + 832) = *(v2 + 400);
    *(v2 + 848) = v5;
    *(v2 + 864) = *(v2 + 432);
    v6 = *(v2 + 352);
    *(v2 + 768) = *(v2 + 336);
    *(v2 + 784) = v6;
    v7 = *(v2 + 384);
    *(v2 + 800) = *(v2 + 368);
    *(v2 + 816) = v7;
    v8 = *(v2 + 320);
    *(v2 + 736) = *(v2 + 304);
    *(v2 + 752) = v8;
    v4 = sub_100DD0278;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD0278()
{
  sub_10027FD08(v0 + 1888);
  sub_100DD9444(v0 + 1456);
  v1 = *(v0 + 3376);
  v2 = *(v0 + 864);
  v4 = *(v0 + 816);
  v3 = *(v0 + 832);
  v1[7] = *(v0 + 848);
  v1[8] = v2;
  v1[5] = v4;
  v1[6] = v3;
  v5 = *(v0 + 800);
  v7 = *(v0 + 752);
  v6 = *(v0 + 768);
  v1[3] = *(v0 + 784);
  v1[4] = v5;
  v1[1] = v7;
  v1[2] = v6;
  *v1 = *(v0 + 736);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100DD0330()
{
  sub_10027FD08(v0 + 1888);
  sub_100DD9444(v0 + 1456);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DD03C4()
{
  v2 = *v1;
  *(*v1 + 3496) = v0;

  v3 = *(v2 + 3400);
  if (v0)
  {
    v4 = sub_100DD0980;
  }

  else
  {
    v4 = sub_100DD04F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD04F0()
{
  v38 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = *(v0 + 3408);
  sub_1000076D4(*(v0 + 3432), qword_10177C418);
  sub_100DD9284(v1, v2, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v1, v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 3416);
  v8 = *(v0 + 3408);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v9 = 136315651;
    v10 = sub_100158AA8();
    v12 = v11;
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
    v13 = sub_1000136BC(v10, v12, v37);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100DD92EC(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v17 = sub_1000136BC(v14, v16, v37);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Created beacon: %s. BeaconId: %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100DD92EC(v8, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v18 = *(v0 + 3496);
  *(*(v0 + 3400) + 152) = 9;
  v19 = static Data.random(bytes:)();
  v21 = v20;
  sub_100017D5C(v19, v20);
  sub_100D53EA4();
  BinaryDecodable.init(data:)();
  v22 = *(v0 + 3480);
  v23 = *(v0 + 3472);
  v24 = *(v0 + 3464);
  v25 = *(v0 + 3456);
  v26 = *(v0 + 3424);
  if (v18)
  {

    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_10139D9A0;
    *(v27 + 16) = 3;
    swift_willThrow();
    sub_100DD9444(v0 + 1456);
    sub_100016590(v19, v21);
    sub_100016590(v25, v24);
    sub_100016590(v23, v22);
    sub_100DD92EC(v26, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    sub_100016590(v19, v21);
    sub_100016590(v25, v24);
    sub_100016590(v23, v22);
    sub_100DD9444(v0 + 1456);
    sub_100DD92EC(v26, type metadata accessor for LocalFindableAccessoryRecord);
    sub_10028067C(v0 + 736);
    v29 = *(v0 + 3376);
    v30 = *(v0 + 800);
    v32 = *(v0 + 752);
    v31 = *(v0 + 768);
    v29[3] = *(v0 + 784);
    v29[4] = v30;
    v29[1] = v32;
    v29[2] = v31;
    v33 = *(v0 + 864);
    v35 = *(v0 + 816);
    v34 = *(v0 + 832);
    v29[7] = *(v0 + 848);
    v29[8] = v33;
    v29[5] = v35;
    v29[6] = v34;
    *v29 = *(v0 + 736);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100DD0980()
{
  v1 = v0[435];
  v2 = v0[434];
  sub_100016590(v0[432], v0[433]);
  sub_100016590(v2, v1);
  sub_100DD9444((v0 + 182));

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DD0A2C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[15] = swift_task_alloc();
  type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = *(v7 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169B558, &qword_1013E8940);
  v3[27] = swift_task_alloc();
  v8 = type metadata accessor for PeripheralPairingInfo();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BB858, &unk_1013E87B8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_100DD0DC0, v2, 0);
}

uint64_t sub_100DD0DC0()
{
  v37 = v0;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 BOOLForKey:v4];

    if (v5)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016BB490);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v36[0] = v10;
        *v9 = 136446210;
        *(v9 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, v36);
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s SimulateLocalFindablePairingFailure defaults set. Failing beacon creation!", v9, 0xCu);
        sub_100007BAC(v10);
      }

      v11 = 20;
LABEL_18:
      sub_100500BC4();
      swift_allocError();
      *v19 = v11;
      *(v19 + 8) = 0;
      *(v19 + 16) = 3;
      swift_willThrow();

      v20 = v0[1];

      return v20();
    }
  }

  v12 = (*(v0[9] + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v13 = *v12;
  v0[36] = *v12;
  v14 = v12[1];
  v0[37] = v14;
  if (v14 >> 60 == 15)
  {
LABEL_13:
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016BB490);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid serial number.", v18, 2u);
    }

    v11 = 8;
    goto LABEL_18;
  }

  v0[5] = v13;
  v0[6] = v14;
  sub_100017D5C(v13, v14);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v13, v14);
    goto LABEL_13;
  }

  v22 = Data.trimmed.getter();
  v24 = v23;
  v0[38] = v22;
  v0[39] = v23;
  sub_100017D5C(v22, v23);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v0[40] = v25;
  sub_1000076D4(v25, qword_10177C418);
  sub_100017D5C(v22, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  sub_100016590(v22, v24);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v30 = String.init(data:encoding:)();
    if (!v31)
    {
      v30 = Data.hexString.getter();
    }

    v32 = v30;
    v33 = v31;
    sub_100016590(v22, v24);
    v34 = sub_1000136BC(v32, v33, v36);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Creating beacon for %{private,mask.hash}s", v28, 0x16u);
    sub_100007BAC(v29);
  }

  else
  {
    sub_100016590(v22, v24);
  }

  v35 = swift_task_alloc();
  v0[41] = v35;
  *v35 = v0;
  v35[1] = sub_100DD142C;

  return daemon.getter();
}

uint64_t sub_100DD142C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 336) = a1;

  v3 = swift_task_alloc();
  *(v2 + 344) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DD1608;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DD1608(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = sub_100DD1958;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_100DD1730;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD1730()
{
  v1 = v0[44];
  v2 = v0[10];
  v3 = swift_allocObject();
  v0[46] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_100DD1830;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1013E8950, v3, &type metadata for () + 1);
}

uint64_t sub_100DD1830()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100DD1CD8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100DD1AB4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD1958()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];

  sub_100016590(v1, v2);
  sub_100006654(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DD1AB4()
{
  v1 = type metadata accessor for Peripheral();
  v0[49] = v1;
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[50] = v2;
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100DD1BAC;
  v4 = v0[32];

  return dispatch thunk of PeripheralProtocol.pairingInfo.getter(v4, v1, v2);
}

uint64_t sub_100DD1BAC()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100DD2248;
  }

  else
  {
    v4 = sub_100DD1E3C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD1CD8()
{
  v2 = v0[38];
  v1 = v0[39];
  sub_100006654(v0[36], v0[37]);
  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DD1E3C()
{
  v44 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v0[53] = sub_1000076D4(v0[40], qword_1016BB490);
  v42 = *(v4 + 16);
  v42(v1, v2, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v11 = 136315138;
    sub_100D97688(&qword_1016BB8B0, &type metadata accessor for PeripheralPairingInfo, &protocol conformance descriptor for PeripheralPairingInfo);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v38 = v6;
    v15 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16 = v9;
    v17 = *(v10 + 8);
    v17(v8, v16);
    v18 = sub_1000136BC(v12, v14, &v43);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v38, "Peripheral pairing info: %s", v11, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    v15 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19 = v9;
    v17 = *(v10 + 8);
    v17(v8, v19);
  }

  v20 = v17;
  v0[54] = v17;
  v21 = v0[30];
  v23 = v0[27];
  v22 = v0[28];
  v24 = v0[21];
  v37 = v0[19];
  v39 = v0[20];
  v41 = v0[9];
  v25 = *(v41 + 160);
  v42(v21, v0[32], v22);

  PeripheralPairingInfo.remoteAddress.getter();
  v26 = PeripheralPairingInfo.remoteIRK.getter();
  v28 = v27;
  v0[55] = v15;
  v20(v21, v22);
  v29 = type metadata accessor for PeripheralConnectionMaterial(0);
  v30 = (v23 + *(v29 + 20));
  *v30 = v26;
  v30[1] = v28;
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
  swift_beginAccess();
  sub_10002311C(v23, v25 + v31, &qword_10169B558, &qword_1013E8940);
  swift_endAccess();

  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  (*(v39 + 8))(v24, v37);
  v32 = *(v41 + 160);
  v0[56] = v32;

  v33 = swift_task_alloc();
  v0[57] = v33;
  *v33 = v0;
  v33[1] = sub_100DD23A0;
  v34 = v0[26];
  v35 = v0[18];

  return sub_100DD3F60(v35, v34, v32);
}

uint64_t sub_100DD2248()
{
  v2 = v0[38];
  v1 = v0[39];
  sub_100006654(v0[36], v0[37]);
  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DD23A0()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_100DD26AC;
  }

  else
  {
    v3 = *(v2 + 352);

    v4 = sub_100DD24E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD24E0()
{
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_100DD2580;
  v2 = v0[26];
  v3 = v0[15];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100DD2580()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100DD2ABC;
  }

  else
  {
    v4 = sub_100DD2848;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD26AC()
{
  v12 = v0[54];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];

  sub_100016590(v1, v2);
  sub_100006654(v4, v3);
  (*(v9 + 8))(v7, v8);
  v12(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD2848()
{
  v1 = v0[44];
  v2 = v0[18];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v0[61] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return _swift_task_switch(sub_100DD28CC, v1, 0);
}

uint64_t sub_100DD28CC()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_100DD2994;
  v2 = v0[61];
  v3 = v0[33];

  return v5(v3, &unk_1013E8968, v2);
}

uint64_t sub_100DD2994()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = sub_100DD2F3C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100DD2C7C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD2ABC()
{
  v13 = v0[54];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];
  v12 = v0[18];

  sub_100016590(v1, v2);
  sub_100006654(v4, v3);
  (*(v9 + 8))(v7, v8);
  v13(v5, v6);
  sub_100DD92EC(v12, type metadata accessor for LocalFindableAccessoryRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD2C7C()
{
  v22 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_1000D2AD8(v0[33], v0[34], &qword_1016BB858, &unk_1013E87B8);
  sub_100DD9284(v1, v2, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v1, v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_100158AA8();
    v11 = v10;
    sub_100DD92EC(v6, type metadata accessor for LocalFindableAccessoryRecord);
    v12 = sub_1000136BC(v9, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving new %s %{public}s to CK.", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];

    sub_100DD92EC(v18, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100DD92EC(v17, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v19 = v0[44];
  (*(v0[13] + 104))(v0[14], enum case for CloudKitCoordinator.Database.private(_:), v0[12]);

  return _swift_task_switch(sub_100DD3188, v19, 0);
}

uint64_t sub_100DD2F3C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100DD2FA8, v1, 0);
}

uint64_t sub_100DD2FA8()
{
  v13 = v0[54];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];
  v14 = v0[18];
  v12 = v0[15];

  sub_100016590(v1, v2);
  sub_100006654(v4, v3);
  (*(v9 + 8))(v7, v8);
  v13(v5, v6);
  sub_10000B3A8(v12, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v14, type metadata accessor for LocalFindableAccessoryRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD3188()
{
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  v1[1] = sub_100DD323C;
  v2 = v0[34];
  v3 = v0[14];

  return v5(v2, v3);
}

uint64_t sub_100DD323C()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = v2[44];
    v4 = sub_100DD36EC;
  }

  else
  {
    v5 = v2[9];
    (*(v2[13] + 8))(v2[14], v2[12]);
    v4 = sub_100DD3374;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD3374()
{
  v27 = v0[54];
  v17 = v0[38];
  v20 = v0[37];
  v18 = v0[39];
  v19 = v0[36];
  v25 = v0[34];
  v23 = v0[32];
  v22 = v0[28];
  v1 = v0[25];
  v2 = v0[26];
  v16 = v2;
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v24 = v0[18];
  v26 = v0[15];
  v6 = v0[11];
  v15 = v0[10];
  v7 = v0[9];
  v21 = v0[7];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v3 + 16))(v1, v2, v5);
  v9 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v9;
  *(v12 + 4) = v7;
  (*(v3 + 32))(&v12[v10], v1, v5);
  *&v12[v11] = v15;
  swift_retain_n();
  sub_10025EDD4(0, 0, v6, &unk_1013E8978, v12);

  sub_100016590(v17, v18);
  sub_100006654(v19, v20);
  (*(v3 + 8))(v16, v5);
  v27(v23, v22);
  sub_10000B3A8(v25, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD9284(v24, v21, type metadata accessor for LocalFindableAccessoryRecord);
  sub_10000B3A8(v26, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v24, type metadata accessor for LocalFindableAccessoryRecord);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DD36EC()
{
  v1 = v0[9];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_100DD3768, v1, 0);
}

uint64_t sub_100DD3768()
{
  v14 = v0[54];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[26];
  v9 = v0[22];
  v8 = v0[23];
  v15 = v0[18];
  v12 = v0[34];
  v13 = v0[15];

  sub_100016590(v1, v2);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v7, v9);
  v14(v5, v6);
  sub_10000B3A8(v12, &qword_1016BB858, &unk_1013E87B8);
  sub_10000B3A8(v13, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v15, type metadata accessor for LocalFindableAccessoryRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD3964(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100DD3A24, 0, 0);
}

uint64_t sub_100DD3A24()
{
  v9 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available... %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100DD3BC8, v6, 0);
}

uint64_t sub_100DD3BC8()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100DD3C78;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_100DD3C78()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_100DD3EE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_100DD3DAC;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD3DAC(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_100DD3EE8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100DDDDD0, 0, 0);
}

uint64_t sub_100DD3F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a2;
  v4[17] = a3;
  v4[15] = a1;
  type metadata accessor for Endianness();
  v4[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v4[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169B558, &qword_1013E8940);
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for PeripheralConnectionMaterial(0);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_100DD416C, v3, 0);
}

uint64_t sub_100DD416C()
{
  v84 = v0;
  v1 = (*(v0 + 136) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  *(v0 + 88) = *v1;
  *(v0 + 96) = v2;
  sub_100017D5C(v3, v2);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v2);
  }

  else
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v7 = *(v0 + 136);
    v8 = Data.trimmed.getter();
    v10 = v9;
    v11 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();
    sub_1000D2A70(v7 + v11, v6, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v4 + 48))(v6, 1, v5) == 1)
    {
      v12 = *(v0 + 192);
      sub_100006654(v3, v2);
      sub_100016590(v8, v10);
      v13 = &qword_1016980D0;
      v14 = &unk_10138F3B0;
      v15 = v12;
    }

    else
    {
      v80 = v3;
      v81 = v8;
      v16 = *(v0 + 136);
      v17 = *(*(v0 + 208) + 32);
      v17(*(v0 + 232), *(v0 + 192), *(v0 + 200));
      if (*(v16 + 112) >> 60 == 15)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
        sub_100006654(v3, v2);
        sub_100016590(v8, v10);
        goto LABEL_9;
      }

      v77 = v17;
      v78 = v10;
      v79 = *(v16 + 112);
      v26 = *(v16 + 104);
      v27 = *(v0 + 168);
      v28 = *(v0 + 176);
      v29 = *(v0 + 160);
      v30 = *(v0 + 136);
      v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
      swift_beginAccess();
      sub_1000D2A70(v30 + v31, v29, &qword_10169B558, &qword_1013E8940);
      if ((*(v28 + 48))(v29, 1, v27) != 1)
      {
        v36 = *(v0 + 136);
        sub_100DD921C(*(v0 + 160), *(v0 + 184), type metadata accessor for PeripheralConnectionMaterial);
        v37 = (v36 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
        v38 = *(v36 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
        v39 = v0;
        if (v38 >> 60 == 15)
        {
          sub_100017D5C(v26, v79);
          v82 = 0;
          v76 = 0xF000000000000000;
        }

        else
        {
          v40 = *v37;
          *(v0 + 104) = *v37;
          *(v0 + 112) = v38;
          sub_10002E98C(v26, v79);
          sub_10002E98C(v40, v38);
          if (DataProtocol.isNull.getter())
          {
            sub_100006654(v40, v38);
            v82 = 0;
            v76 = 0xF000000000000000;
          }

          else
          {
            v82 = Data.trimmed.getter();
            v76 = v41;
            sub_100006654(v40, v38);
          }

          v39 = v0;
        }

        v42 = v39[28];
        v43 = v39;
        v44 = v39[25];
        v45 = v39[26];
        v46 = v39[19];
        v47 = v43[17];
        v70 = *(v45 + 16);
        (v70)(v42, v43[16], v44);
        v48 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
        swift_beginAccess();
        sub_1000D2A70(v47 + v48, v46, &qword_101697268, &qword_101394FE0);
        v49 = type metadata accessor for AccessoryProductInfo(0);
        v50 = (*(*(v49 - 8) + 48))(v46, 1, v49);
        v51 = v43[19];
        if (v50)
        {
          v74 = 0xE000000000000000;
          v75 = 0;
        }

        else
        {
          v52 = (v51 + *(v49 + 52));
          v74 = v52[1];
          v75 = *v52;
        }

        v53 = *(v0 + 136);
        sub_10000B3A8(v51, &qword_101697268, &qword_101394FE0);
        v64 = *(v0 + 136);
        if (*(v53 + 96))
        {
          v72 = *(v53 + 96);
          v73 = *(*(v0 + 136) + 88);
        }

        else
        {
          v72 = 0xE000000000000000;
          v73 = 0;
        }

        v68 = *(v0 + 224);
        v69 = *(v0 + 216);
        v54 = *(v0 + 200);
        v66 = *(v0 + 232);
        v67 = *(v0 + 208);
        v62 = *(v0 + 184);
        v55 = *(v0 + 120);
        v70();

        v71 = sub_100313A28(v26, v79);
        sub_100313B54(v26, v79);
        static Endianness.current.getter();
        sub_10012BF24();
        FixedWidthInteger.init(data:ofEndianness:)();
        if (*(v0 + 244))
        {
          v56 = 0;
        }

        else
        {
          v56 = *(v0 + 240);
        }

        v63 = v56;
        v65 = *(v64 + 32);
        v57 = type metadata accessor for LocalFindableAccessoryRecord(0);
        sub_100DD9284(v62, v55 + v57[13], type metadata accessor for PeripheralConnectionMaterial);
        static P256PrivateKey.random()();
        static SymmetricKey256.random()();
        sub_100006654(v26, v79);
        sub_100006654(v80, v2);
        sub_100DD92EC(v62, type metadata accessor for PeripheralConnectionMaterial);
        (*(v67 + 8))(v66, v54);
        v77(v55, v68, v54);
        v58 = (v55 + v57[5]);
        *v58 = v75;
        v58[1] = v74;
        v59 = (v55 + v57[6]);
        *v59 = v73;
        v59[1] = v72;
        v60 = (v55 + v57[7]);
        *v60 = v81;
        v60[1] = v78;
        v61 = (v55 + v57[8]);
        *v61 = v82;
        v61[1] = v76;
        v77(v55 + v57[9], v69, v54);
        *(v55 + v57[10]) = v71;
        *(v55 + v57[11]) = v63;
        *(v55 + v57[12]) = v65;

        v24 = *(v0 + 8);
        goto LABEL_14;
      }

      v32 = *(v0 + 232);
      v34 = *(v0 + 200);
      v33 = *(v0 + 208);
      v35 = *(v0 + 160);
      sub_100017D5C(v26, v79);
      (*(v33 + 8))(v32, v34);
      sub_100006654(v80, v2);
      sub_100016590(v81, v78);
      sub_100006654(v26, v79);
      v13 = &qword_10169B558;
      v14 = &qword_1013E8940;
      v15 = v35;
    }

    sub_10000B3A8(v15, v13, v14);
  }

LABEL_9:
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_1016BB490);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v83[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000136BC(0xD00000000000002ELL, 0x8000000101370DE0, v83);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s Invalid parameters!", v21, 0xCu);
    sub_100007BAC(v22);
  }

  sub_100500BC4();
  swift_allocError();
  *v23 = xmmword_10139D9A0;
  *(v23 + 16) = 3;
  swift_willThrow();

  v24 = *(v0 + 8);
LABEL_14:

  return v24();
}

uint64_t sub_100DD4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DD4B38, 0, 0);
}

uint64_t sub_100DD4B38()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1000D2A70(v0[3], v3, &qword_1016A9A30, &unk_1013BD120);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[5], &qword_1016A9A30, &unk_1013BD120);
    v4 = swift_task_alloc();
    v0[9] = v4;
    v5 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138FB50);
    *v4 = v0;
    v4[1] = sub_100DD4D78;
    v6 = v0[6];
    v7 = v0[4];

    return CloudKitChangeSet.Adaptor.create<A>(record:)(v7, v6, v5);
  }

  else
  {
    v8 = v0[4];
    sub_100DD921C(v0[5], v0[8], type metadata accessor for LocalFindableAccessoryRecord);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *(v9 + 16) = v8;
    v10 = swift_task_alloc();
    v0[11] = v10;
    v11 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138FB50);
    *v10 = v0;
    v10[1] = sub_100DD4EAC;
    v12 = v0[8];
    v13 = v0[6];

    return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v12, sub_100DD9EA4, v9, v13, v11);
  }
}

uint64_t sub_100DD4D78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100DD4EAC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100DD5068;
  }

  else
  {
    v2 = sub_100DD4FDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DD4FDC()
{
  sub_100DD92EC(*(v0 + 64), type metadata accessor for LocalFindableAccessoryRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DD5068()
{
  sub_100DD92EC(*(v0 + 64), type metadata accessor for LocalFindableAccessoryRecord);

  v1 = *(v0 + 8);

  return v1();
}