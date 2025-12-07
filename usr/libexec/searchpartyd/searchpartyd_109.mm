uint64_t sub_100C084CC()
{
  v1[5] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C0858C, v0, 0);
}

uint64_t sub_100C0858C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  LOBYTE(v4) = PairingUIState.interruptible.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = *(v0[5] + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher);
    v0[9] = v6;
    if (v6)
    {

      return _swift_task_switch(sub_100C08710, v6, 0);
    }

    v8 = v0[1];
  }

  else
  {
    sub_100C09C04();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_100C08710()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

id sub_100C087A4()
{
  v1 = type metadata accessor for PairingUIState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  (*(v2 + 104))(&v12 - v6, enum case for PairingUIState.finished(_:), v1);
  v8 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v2 + 24))(v0 + v8, v7, v1);
  swift_endAccess();
  (*(v2 + 16))(v5, v0 + v8, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  v10 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask))
  {

    Task.cancel()();
  }

  *(v0 + v10) = 0;

  return [*(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient) invalidate];
}

uint64_t sub_100C089B8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  v2 = type metadata accessor for PairingUIState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PairingUIManager(uint64_t a1)
{
  result = qword_1016B83C8;
  if (!qword_1016B83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C08AD4(uint64_t a1)
{
  result = type metadata accessor for PairingUIState();
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

uint64_t sub_100C08B98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingUIState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C08C30(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairingUIManager(0);

  return PairingUIManager.stream()(v3, a2);
}

uint64_t sub_100C08C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C071C0(a1);
}

uint64_t sub_100C08D10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C084CC();
}

uint64_t sub_100C08DA0()
{
  v1[5] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C08E6C, v0, 0);
}

uint64_t sub_100C08E6C()
{
  v17 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = type metadata accessor for PairingUIState.Displayed();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  (*(v4 + 104))(v1, enum case for PairingUIState.displayed(_:), v3);
  v7 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v4 + 24))(v5 + v7, v1, v3);
  swift_endAccess();
  (*(v4 + 16))(v2, v5 + v7, v3);
  AsyncStreamProvider.yield(value:transaction:)();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B8368);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F500, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100C09114()
{
  v1[8] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100C091E0, v0, 0);
}

uint64_t sub_100C091E0()
{
  v40 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  v7 = PairingUIState.interruptible.getter();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v7)
  {
    sub_100C087A4();
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016B8368);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136F4E0, &v39);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
      sub_100007BAC(v13);
    }
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v37 = v5;
    v38 = v8;
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016B8368);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "State is not interruptible!", v17, 2u);
    }

    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[9];
    v21 = v0[10];

    v6(v18, v4 + v37, v20);
    v36 = v4;
    v22 = enum case for PairingUIState.Displayed.frozen(_:);
    v23 = type metadata accessor for PairingUIState.Displayed();
    v35 = v6;
    v24 = *(v23 - 8);
    v34 = *(v24 + 104);
    v34(v19, v22, v23);
    v33 = *(v24 + 56);
    v33(v19, 0, 1, v23);
    v25 = enum case for PairingUIState.displayed(_:);
    v32 = *(v21 + 104);
    v32(v19, enum case for PairingUIState.displayed(_:), v20);
    LOBYTE(v21) = static PairingUIState.== infix(_:_:)();
    v38(v19, v20);
    v38(v18, v20);
    if (v21)
    {
      v27 = v0[11];
      v26 = v0[12];
      v28 = v0[9];
      v29 = v0[10];
      v34(v26, enum case for PairingUIState.Displayed.delayedFinish(_:), v23);
      v33(v26, 0, 1, v23);
      v32(v26, v25, v28);
      swift_beginAccess();
      (*(v29 + 24))(v36 + v37, v26, v28);
      swift_endAccess();
      v35(v27, v36 + v37, v28);
      AsyncStreamProvider.yield(value:transaction:)();
      v38(v27, v28);
      v38(v26, v28);
    }
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_100C096FC()
{
  v9 = v0;
  sub_100C087A4();
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136F4C0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100C09878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C08DA0();
}

uint64_t sub_100C09904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C09114();
}

uint64_t sub_100C09990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C096DC();
}

uint64_t sub_100C09A1C(uint64_t a1)
{
  result = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager, &unk_1013DF620);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100C09ABC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8368);
  v1 = sub_1000076D4(v0, qword_1016B8368);
  if (qword_101694D68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BD18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C09B84()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD18);
  sub_1000076D4(v0, qword_10177BD18);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C09C04()
{
  result = qword_1016B8500;
  if (!qword_1016B8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8500);
  }

  return result;
}

uint64_t sub_100C09C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09D9C(uint64_t a1)
{
  v2 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C09DF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100C062B4(a1, v4, v5, v6, v7);
}

uint64_t sub_100C09EC8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100C04F08(a1, v4, v5);
}

uint64_t sub_100C09F3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100C054FC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100C0A0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C0A0F0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C050E8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100C0A1FC()
{
  result = qword_1016B8548;
  if (!qword_1016B8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8548);
  }

  return result;
}

uint64_t sub_100C0A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[50] = v5;
  v4[51] = *(v5 - 8);
  v4[52] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v4[53] = v6;
  v4[54] = *(v6 - 8);
  v4[55] = swift_task_alloc();
  v7 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[56] = v7;
  v4[57] = *(v7 - 8);
  v4[58] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v4[59] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v4[60] = swift_task_alloc();
  v8 = type metadata accessor for Peripheral.ConnectionOptions();
  v4[61] = v8;
  v4[62] = *(v8 - 8);
  v4[63] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v4[64] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v4[65] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v4[66] = v9;
  v4[67] = *(v9 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[85] = v10;
  v4[86] = *(v10 - 8);
  v4[87] = swift_task_alloc();
  v11 = type metadata accessor for Device();
  v4[88] = v11;
  v4[89] = *(v11 - 8);
  v4[90] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v4[91] = v12;
  v4[92] = *(v12 - 8);
  v4[93] = swift_task_alloc();

  return _swift_task_switch(sub_100C0A75C, v3, 0);
}

uint64_t sub_100C0A75C(uint64_t a1)
{
  ContinuousClock.init()();
  *(v1 + 752) = type metadata accessor for CentralManager();
  v2 = swift_task_alloc();
  *(v1 + 760) = v2;
  *v2 = v1;
  v2[1] = sub_100C0A804;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100C0A804(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 768) = a1;
  *(v4 + 776) = v1;

  v5 = *(v3 + 392);
  if (v1)
  {
    v6 = sub_100C0DF24;
  }

  else
  {
    v6 = sub_100C0A93C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C0A93C()
{
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[98] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[99] = v8;
  v9 = sub_100C114D4(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100C0AB08;
  v10 = v0[94];

  return CentralManagerProtocol.await(states:)(v5, v10, v9);
}

uint64_t sub_100C0AB08()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 392);

  if (v0)
  {
    v4 = sub_100C0E130;
  }

  else
  {
    v4 = sub_100C0AC50;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C0AC50()
{
  v46 = v0;
  if (qword_101694D70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[101] = v1;
  v0[102] = sub_1000076D4(v1, qword_1016B8550);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[96];
    v5 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v45);
    *(v5 + 12) = 2080;
    v0[45] = v4;
    sub_100C114D4(&qword_1016B8628, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v45);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %s has powered on", v5, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[89] + 16))(v0[90], v0[48], v0[88]);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  if (v11)
  {
    v15 = v0[87];
    v42 = v10;
    v16 = v0[86];
    v17 = v0[85];
    log = v9;
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v45);
    *(v18 + 12) = 2082;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_1000136BC(v19, v21, &v45);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2082;
    sub_100C114D4(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v13 + 8))(v12, v14);
    v26 = sub_1000136BC(v23, v25, &v45);

    *(v18 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v42, "%s Connecting to: %{public}s. Device: %{public}s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v27 = v0[65];
  v43 = v0[64];
  v29 = v0[59];
  v28 = v0[60];
  ContinuousClock.now.getter();
  v30 = enum case for ConnectUseCase.findMyPair(_:);
  v31 = type metadata accessor for ConnectUseCase();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v27, v30, v31);
  (*(v32 + 56))(v27, 0, 1, v31);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[44] = v33;
  sub_100C114D4(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
  v35 = type metadata accessor for LongTermKey();
  (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v36 = type metadata accessor for Peripheral.Options();
  (*(*(v36 - 8) + 56))(v43, 0, 1, v36);
  v44 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v37 = swift_task_alloc();
  v0[103] = v37;
  *v37 = v0;
  v37[1] = sub_100C0B3B0;
  v38 = v0[65];
  v39 = v0[64];

  return v44(v38, v39);
}

uint64_t sub_100C0B3B0()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = v2[65];
  v4 = v2[64];
  v5 = v2[49];
  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_100C0E34C;
  }

  else
  {
    v6 = sub_100C0B534;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C0B534(uint64_t a1)
{
  v42 = v1;
  ContinuousClock.now.getter();
  if (qword_101694D48 != -1)
  {
    swift_once();
  }

  v2 = v1[84];
  v3 = v1[83];
  v4 = v1[82];
  v5 = v1[81];
  v6 = v1[67];
  v7 = v1[66];
  v1[105] = sub_1000076D4(v1[101], qword_10177BCE8);
  v8 = *(v6 + 16);
  v1[106] = v8;
  v1[107] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v2, v7);
  v8(v5, v3, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[82];
  v13 = v1[81];
  v14 = v1[67];
  v15 = v1[66];
  if (v11)
  {
    loga = v9;
    v16 = v1[57];
    v17 = v1[58];
    v37 = v1[56];
    v38 = v10;
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v41);
    *(v18 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v19 = static Duration.description<A>(_:_:units:)();
    v21 = v20;
    (*(v16 + 8))(v17, v37);
    v22 = *(v14 + 8);
    v22(v13, v15);
    v22(v12, v15);
    v23 = sub_1000136BC(v19, v21, &v41);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, loga, v38, "%s Connection latency: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v14 + 8);
    v22(v13, v15);
    v22(v12, v15);
  }

  v1[108] = v22;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v1[87];
    v27 = v1[86];
    v28 = v1[85];
    v29 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v41);
    *(v29 + 12) = 2082;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, &v41);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s Connected to: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  log = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v34 = swift_task_alloc();
  v1[109] = v34;
  *v34 = v1;
  v34[1] = sub_100C0BA74;
  v35 = v1[55];

  return (log)(v35);
}

uint64_t sub_100C0BA74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[110] = a1;
  v4[111] = v1;

  v5 = v3[55];
  v6 = v3[54];
  v7 = v3[53];
  v8 = v3[49];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C0E58C;
  }

  else
  {
    v9 = sub_100C0BBFC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C0BBFC()
{
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v1 = swift_task_alloc();
  *(v0 + 896) = v1;
  *v1 = v0;
  v1[1] = sub_100C0BCD0;
  v2 = *(v0 + 416);

  return v4(v2);
}

uint64_t sub_100C0BCD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[113] = a1;
  v4[114] = v1;

  v5 = v3[52];
  v6 = v3[51];
  v7 = v3[50];
  v8 = v3[49];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C0E7E8;
  }

  else
  {
    v9 = sub_100C0BE58;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C0BE58(uint64_t a1)
{
  v58 = v1;
  v2 = *(v1 + 848);
  v3 = *(v1 + 664);
  v4 = *(v1 + 640);
  v5 = *(v1 + 632);
  v6 = *(v1 + 624);
  v7 = *(v1 + 528);
  ContinuousClock.now.getter();
  v2(v5, v3, v7);
  v2(v6, v4, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 864);
  v12 = *(v1 + 632);
  v13 = *(v1 + 624);
  v14 = *(v1 + 528);
  if (v10)
  {
    log = v8;
    v15 = *(v1 + 456);
    v16 = *(v1 + 464);
    v52 = *(v1 + 448);
    v53 = v9;
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v56);
    *(v17 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v51 = static Duration.description<A>(_:_:units:)();
    v19 = v18;
    (*(v15 + 8))(v16, v52);
    v11(v13, v14);
    v11(v12, v14);
    v20 = sub_1000136BC(v51, v19, &v56);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v53, "%s Service/Characteristic discovery latency: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v11(v13, v14);
    v11(v12, v14);
  }

  v21 = Device.productID.getter();
  if (v21 == static Device.invalidProductID.getter())
  {
    ContinuousClock.now.getter();
    *(v1 + 232) = &type metadata for PoshAccessoryNonOwnerCommand;
    v22 = sub_10038B8D0();
    *(v1 + 240) = v22;
    v23 = sub_10038B924();
    *(v1 + 248) = v23;
    *(v1 + 216) = 0;
    *(v1 + 208) = 0;
    v24 = v1 + 208;
    *(v1 + 224) = 11;
    v25 = swift_task_alloc();
    *(v1 + 920) = v25;
    *v25 = v1;
    v25[1] = sub_100C0C4E8;
    v26 = *(v1 + 904);
    v27 = v1 + 160;
  }

  else
  {
    v28 = Device.productID.getter();
    *(v1 + 324) = 76;
    sub_100101824();
    v56 = FixedWidthInteger.data.getter();
    v57 = v29;
    *(v1 + 348) = v28;
    v30 = FixedWidthInteger.data.getter();
    v32 = v31;
    Data.append(_:)();
    sub_100016590(v30, v32);
    v33 = v56;
    v34 = v57;
    *(v1 + 944) = v57;
    *(v1 + 936) = v33;

    sub_100017D5C(v33, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    sub_100016590(v33, v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v1 + 696);
      v38 = *(v1 + 688);
      v39 = *(v1 + 680);
      loga = v36;
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v40 = 136446466;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v38 + 8))(v37, v39);
      v44 = sub_1000136BC(v41, v43, &v56);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      sub_100017D5C(v33, v34);
      v45 = sub_100313D58(v33, v34);
      v47 = v46;
      sub_100016590(v33, v34);
      v48 = sub_1000136BC(v45, v47, &v56);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v35, loga, "%{public}s productData: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    ContinuousClock.now.getter();
    *(v1 + 88) = &type metadata for PoshAccessoryNonOwnerCommand;
    v22 = sub_10038B8D0();
    *(v1 + 96) = v22;
    v23 = sub_10038B924();
    *(v1 + 104) = v23;
    *(v1 + 64) = xmmword_10139D980;
    v24 = v1 + 64;
    *(v1 + 80) = 11;
    v49 = swift_task_alloc();
    *(v1 + 952) = v49;
    *v49 = v1;
    v49[1] = sub_100C0CF58;
    v26 = *(v1 + 904);
    v27 = v1 + 16;
  }

  return sub_100C0EFC8(v27, v26, v24, &type metadata for PoshAccessoryNonOwnerCommand, v22, v23, 0);
}

uint64_t sub_100C0C4E8()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = sub_100C0EA50;
  }

  else
  {
    v5 = *(v2 + 392);
    sub_100007BAC((v2 + 208));
    v4 = sub_100C0C610;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C0C610()
{
  v66 = v0;
  sub_1001011C0(v0 + 160, v0 + 256);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v0 + 344))
  {
    sub_10038B978(*(v0 + 328), *(v0 + 336), *(v0 + 344));
LABEL_4:
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Invalid productDataResponse!", v3, 2u);
    }

    v4 = *(v0 + 864);
    v5 = *(v0 + 736);
    v59 = *(v0 + 728);
    v61 = *(v0 + 744);
    v56 = *(v0 + 664);
    v58 = *(v0 + 672);
    v54 = *(v0 + 640);
    v6 = *(v0 + 616);
    v7 = *(v0 + 528);

    sub_100C10608();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    sub_100007BAC((v0 + 160));
    v4(v6, v7);
    v4(v54, v7);
    v4(v56, v7);
    v4(v58, v7);
    (*(v5 + 8))(v61, v59);

    v9 = *(v0 + 8);

    return v9();
  }

  v62 = *(v0 + 328);
  v63 = *(v0 + 336);
  v11 = *(v0 + 848);
  v12 = *(v0 + 616);
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 528);
  ContinuousClock.now.getter();
  v11(v14, v12, v16);
  v11(v15, v13, v16);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 864);
  v21 = *(v0 + 616);
  v22 = *(v0 + 608);
  v23 = *(v0 + 600);
  v24 = *(v0 + 592);
  v25 = *(v0 + 528);
  if (v19)
  {
    v60 = v17;
    v57 = v18;
    v26 = *(v0 + 600);
    v28 = *(v0 + 456);
    v27 = *(v0 + 464);
    v53 = *(v0 + 448);
    v29 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v65);
    *(v29 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v52 = static Duration.description<A>(_:_:units:)();
    v55 = v22;
    v31 = v30;
    (*(v28 + 8))(v27, v53);
    v20(v24, v25);
    v20(v26, v25);
    v32 = sub_1000136BC(v52, v31, v65);

    *(v29 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v60, v57, "%s productData latency: %{public}s", v29, 0x16u);
    swift_arrayDestroy();

    v20(v55, v25);
    sub_100007BAC((v0 + 160));
    v20(v21, v25);
  }

  else
  {

    v20(v24, v25);
    v20(v23, v25);
    v20(v22, v25);
    sub_100007BAC((v0 + 160));
    v20(v21, v25);
  }

  v33 = v63;
  *(v0 + 944) = v63;
  *(v0 + 936) = v62;

  sub_100017D5C(v62, v63);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  sub_100016590(v62, v63);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 696);
    v37 = *(v0 + 688);
    v38 = *(v0 + 680);
    v64 = v35;
    v39 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v39 = 136446466;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v37 + 8))(v36, v38);
    v43 = sub_1000136BC(v40, v42, v65);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    sub_100017D5C(v62, v33);
    v44 = sub_100313D58(v62, v33);
    v46 = v45;
    sub_100016590(v62, v33);
    v47 = sub_1000136BC(v44, v46, v65);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v34, v64, "%{public}s productData: %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  ContinuousClock.now.getter();
  *(v0 + 88) = &type metadata for PoshAccessoryNonOwnerCommand;
  v48 = sub_10038B8D0();
  *(v0 + 96) = v48;
  v49 = sub_10038B924();
  *(v0 + 104) = v49;
  *(v0 + 64) = xmmword_10139D980;
  *(v0 + 80) = 11;
  v50 = swift_task_alloc();
  *(v0 + 952) = v50;
  *v50 = v0;
  v50[1] = sub_100C0CF58;
  v51 = *(v0 + 904);

  return sub_100C0EFC8(v0 + 16, v51, v0 + 64, &type metadata for PoshAccessoryNonOwnerCommand, v48, v49, 0);
}

uint64_t sub_100C0CF58()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = sub_100C0ED00;
  }

  else
  {
    v5 = *(v2 + 392);
    sub_100007BAC((v2 + 64));
    v4 = sub_100C0D080;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C0D080()
{
  v115 = v0;
  sub_1001011C0(v0 + 16, v0 + 112);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 320);
    if (v1 == 9)
    {
      v113 = *(v0 + 304);
      v2 = *(v0 + 848);
      v3 = *(v0 + 584);
      v4 = *(v0 + 576);
      v5 = *(v0 + 568);
      v6 = *(v0 + 560);
      v7 = *(v0 + 528);
      ContinuousClock.now.getter();
      v2(v5, v3, v7);
      v2(v6, v4, v7);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 864);
      v12 = *(v0 + 568);
      v13 = *(v0 + 560);
      v14 = *(v0 + 528);
      if (v10)
      {
        v107 = v8;
        v15 = *(v0 + 456);
        v16 = *(v0 + 464);
        v99 = *(v0 + 448);
        v102 = v9;
        v17 = swift_slowAlloc();
        v114[0] = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v114);
        *(v17 + 12) = 2082;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v18 = static Duration.description<A>(_:_:units:)();
        v20 = v19;
        (*(v15 + 8))(v16, v99);
        v11(v13, v14);
        v11(v12, v14);
        v21 = sub_1000136BC(v18, v20, v114);

        *(v17 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v107, v102, "%s firmwareVersion latency: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v11(v13, v14);
        v11(v12, v14);
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 696);
        v42 = *(v0 + 688);
        v43 = *(v0 + 680);
        v44 = swift_slowAlloc();
        v114[0] = swift_slowAlloc();
        *v44 = 136446466;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v42 + 8))(v41, v43);
        v48 = sub_1000136BC(v45, v47, v114);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v49 = sub_10098E010();
        v51 = sub_1000136BC(v49, v50, v114);

        *(v44 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s firmwareVersion: %s", v44, 0x16u);
        swift_arrayDestroy();
      }

      v52 = *(v0 + 848);
      v53 = *(v0 + 576);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v52(*(v0 + 552), *(v0 + 672), v55);
      v52(v54, v53, v55);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 864);
      v60 = *(v0 + 552);
      v61 = *(v0 + 544);
      v62 = *(v0 + 528);
      if (v58)
      {
        v111 = v56;
        v63 = *(v0 + 456);
        v64 = *(v0 + 464);
        v104 = *(v0 + 448);
        v106 = v57;
        v65 = swift_slowAlloc();
        v114[0] = swift_slowAlloc();
        *v65 = 136315394;
        *(v65 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v114);
        *(v65 + 12) = 2082;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v101 = static Duration.description<A>(_:_:units:)();
        v67 = v66;
        (*(v63 + 8))(v64, v104);
        v59(v61, v62);
        v59(v60, v62);
        v68 = sub_1000136BC(v101, v67, v114);

        *(v65 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v111, v106, "%s Overall latency: %{public}s", v65, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v59(v61, v62);
        v59(v60, v62);
      }

      v96 = *(v0 + 944);
      v95 = *(v0 + 936);
      v69 = *(v0 + 864);
      v93 = *(v0 + 728);
      v94 = *(v0 + 744);
      v70 = *(v0 + 696);
      v71 = *(v0 + 688);
      v72 = *(v0 + 680);
      v91 = *(v0 + 672);
      v92 = *(v0 + 736);
      v90 = *(v0 + 664);
      v109 = *(v0 + 640);
      v112 = *(v0 + 584);
      v73 = *(v0 + 576);
      v74 = *(v0 + 528);
      v75 = *(v0 + 368);
      Peripheral.id.getter();
      Identifier.id.getter();
      (*(v71 + 8))(v70, v72);
      v76 = type metadata accessor for AccessoryMetadata(0);
      v77 = v76[9];
      v78 = type metadata accessor for AirTagVersionNumber();
      (*(*(v78 - 8) + 56))(v75 + v77, 1, 1, v78);
      v79 = v75 + v76[11];
      *v79 = 0;
      *(v79 + 8) = 0;
      *(v79 + 16) = 1;
      v80 = v76[16];

      v81 = (v75 + v80);
      v69(v73, v74);
      sub_100007BAC((v0 + 16));
      v69(v112, v74);
      v69(v109, v74);
      v69(v90, v74);
      v69(v91, v74);
      (*(v92 + 8))(v94, v93);
      *v81 = 0;
      v81[1] = 0xE000000000000000;
      v82 = (v75 + v76[5]);
      *v82 = v95;
      v82[1] = v96;
      *(v75 + v76[8]) = v113;
      v83 = (v75 + v76[7]);
      *v83 = 0;
      v83[1] = 0;
      v84 = (v75 + v76[6]);
      *v84 = 0;
      v84[1] = 0;
      v85 = v75 + v76[10];
      *v85 = 0;
      *(v85 + 4) = 1;
      v86 = v75 + v76[12];
      *v86 = 0;
      *(v86 + 8) = 1;
      v87 = v75 + v76[13];
      *v87 = 0;
      *(v87 + 4) = 1;
      *(v75 + v76[14]) = 4;
      *(v75 + v76[15]) = 5;
      v88 = v75 + v76[17];
      *v88 = 0;
      *(v88 + 4) = 1;

      v38 = *(v0 + 8);
      goto LABEL_16;
    }

    sub_10038B978(*(v0 + 304), *(v0 + 312), v1);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 696);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v114[0] = v28;
    *v27 = 136446210;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v25 + 8))(v24, v26);
    v32 = sub_1000136BC(v29, v31, v114);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Invalid firmwareVersionCommandResponse!", v27, 0xCu);
    sub_100007BAC(v28);
  }

  v33 = *(v0 + 936);
  v34 = *(v0 + 864);
  v35 = *(v0 + 736);
  v108 = *(v0 + 728);
  v110 = *(v0 + 744);
  v103 = *(v0 + 664);
  v105 = *(v0 + 672);
  v100 = *(v0 + 640);
  v97 = *(v0 + 944);
  v98 = *(v0 + 584);
  v36 = *(v0 + 528);
  sub_100C10608();
  swift_allocError();
  *v37 = 1;
  swift_willThrow();

  sub_100016590(v33, v97);

  sub_100007BAC((v0 + 16));
  v34(v98, v36);
  v34(v100, v36);
  v34(v103, v36);
  v34(v105, v36);
  (*(v35 + 8))(v110, v108);

  v38 = *(v0 + 8);
LABEL_16:

  return v38();
}

uint64_t sub_100C0DF24()
{
  (*(v0[92] + 8))(v0[93], v0[91]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C0E130()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C0E34C()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[84];
  v5 = v0[67];
  v6 = v0[66];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C0E58C()
{
  v1 = v0[108];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[66];

  v1(v6, v7);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C0E7E8()
{
  v1 = v0[108];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[66];

  v1(v6, v7);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C0EA50()
{
  v1 = v0[108];
  v2 = v0[92];
  v10 = v0[91];
  v11 = v0[93];
  v9 = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[66];

  v1(v5, v6);
  v1(v4, v6);
  v1(v3, v6);
  v1(v9, v6);
  (*(v2 + 8))(v11, v10);
  sub_100007BAC(v0 + 26);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C0ED00()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[108];
  v4 = v0[92];
  v12 = v0[91];
  v13 = v0[93];
  v10 = v0[83];
  v11 = v0[84];
  v9 = v0[80];
  v5 = v0[73];
  v6 = v0[66];

  sub_100016590(v2, v1);

  v3(v5, v6);
  v3(v9, v6);
  v3(v10, v6);
  v3(v11, v6);
  (*(v4 + 8))(v13, v12);
  sub_100007BAC(v0 + 8);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C0EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 264) = a6;
  *(v8 + 272) = v7;
  *(v8 + 400) = a7;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  v9 = type metadata accessor for BinaryDecoder();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  v10 = type metadata accessor for BinaryEncoder();
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 - 8);
  *(v8 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100C0F0F4, v7, 0);
}

uint64_t sub_100C0F0F4(uint64_t a1)
{
  v25 = v1;
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  if (qword_101694D88 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 240);
  v3 = type metadata accessor for Logger();
  *(v1 + 328) = sub_1000076D4(v3, qword_10177BDD8);
  sub_1001011C0(v2, v1 + 16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v24);
    *(v6 + 12) = 2080;
    sub_1001011C0(v1 + 16, v1 + 160);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100007BAC((v1 + 16));
    v10 = sub_1000136BC(v7, v9, v24);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Sending command: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v1 + 16));
  }

  sub_1000035D0(*(v1 + 240), *(*(v1 + 240) + 24));
  v11 = BinaryEncoder.encode<A>(_:)();
  *(v1 + 336) = v11;
  *(v1 + 344) = v12;
  if (*(v1 + 400))
  {
    v13 = type metadata accessor for Characteristic();
    v14 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v15 = swift_task_alloc();
    *(v1 + 352) = v15;
    *v15 = v1;
    v15[1] = sub_100C0F5A0;

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v13, v14);
  }

  else
  {
    v16 = v11;
    v17 = v12;
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_100017D5C(v16, v17);
    v19 = *(v1 + 400);
    v20 = *(v1 + 232);
    v21 = swift_allocObject();
    *(v1 + 376) = v21;
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(v21 + 32) = v18;

    v22 = swift_task_alloc();
    *(v1 + 384) = v22;
    *v22 = v1;
    v22[1] = sub_100C0F8B8;

    return withTimeout<A>(_:block:)(v1 + 208, 0x8AC7230489E80000, 0, &unk_1013DF8C0, v21, &type metadata for Data);
  }
}

uint64_t sub_100C0F5A0(uint64_t a1)
{
  v4 = *v2;
  v4[45] = v1;

  v5 = v4[34];
  if (v1)
  {
    v6 = sub_100C0F7F4;
  }

  else
  {
    v4[46] = a1;
    v6 = sub_100C0F6DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C0F6DC()
{
  v1 = fragment(data:mtu:)();
  v2 = *(v0 + 400);
  v3 = *(v0 + 232);
  v4 = swift_allocObject();
  *(v0 + 376) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;

  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v5[1] = sub_100C0F8B8;

  return withTimeout<A>(_:block:)(v0 + 208, 0x8AC7230489E80000, 0, &unk_1013DF8C0, v4, &type metadata for Data);
}

uint64_t sub_100C0F7F4()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  sub_100016590(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C0F8B8()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 272);

  if (v0)
  {
    v4 = sub_100C0FEAC;
  }

  else
  {
    v4 = sub_100C0FA00;
  }

  return _swift_task_switch(v4, v3, 0);
}

void *sub_100C0FA00()
{
  v51 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  sub_100017D5C(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    result = swift_slowAlloc();
    v7 = result;
    v50[0] = result;
    *v5 = 134218242;
    v8 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      v12 = __OFSUB__(v10, v11);
      v9 = v10 - v11;
      if (!v12)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v9 = BYTE6(v1);
LABEL_13:
      *(v5 + 4) = v9;
      sub_100016590(v2, v1);
      *(v5 + 12) = 2080;
      v13 = Data.hexString.getter();
      v15 = sub_1000136BC(v13, v14, v50);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Length: %ld received raw response: %s", v5, 0x16u);
      sub_100007BAC(v7);

      goto LABEL_14;
    }

    LODWORD(v9) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v9 = v9;
    goto LABEL_13;
  }

  sub_100016590(v2, v1);
LABEL_14:

  v16 = *(v0 + 392);
  v17 = *(v0 + 224);
  v18 = *(v0 + 256);
  *(v17 + 24) = *(v0 + 248);
  *(v17 + 32) = v18;
  sub_1000280DC(v17);
  BinaryDecoder.decode<A>(_:from:)();
  if (v16)
  {
    v20 = *(v0 + 336);
    v19 = *(v0 + 344);
    v48 = *(v0 + 320);
    v21 = v1;
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    v26 = *(v0 + 280);
    v27 = v2;
    v28 = *(v0 + 224);
    sub_100016590(v27, v21);
    sub_100016590(v20, v19);
    (*(v24 + 8))(v25, v26);
    (*(v22 + 8))(v48, v23);
    sub_100101758(v28);

    v29 = *(v0 + 8);
  }

  else
  {
    sub_1001011C0(*(v0 + 224), v0 + 64);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v46 = *(v0 + 336);
    v47 = *(v0 + 344);
    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v36 = *(v0 + 296);
    v35 = *(v0 + 304);
    v37 = *(v0 + 288);
    v49 = *(v0 + 280);
    if (v32)
    {
      v45 = *(v0 + 320);
      v38 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v50);
      *(v38 + 12) = 2080;
      sub_1001011C0(v0 + 64, v0 + 112);
      sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
      v43 = v2;
      v44 = v36;
      v39 = String.init<A>(describing:)();
      v41 = v40;
      sub_100007BAC((v0 + 64));
      v42 = sub_1000136BC(v39, v41, v50);

      *(v38 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s Received response: %s", v38, 0x16u);
      swift_arrayDestroy();

      sub_100016590(v43, v1);
      sub_100016590(v46, v47);
      (*(v37 + 8))(v44, v49);
      (*(v34 + 8))(v45, v35);
    }

    else
    {

      sub_100016590(v2, v1);
      sub_100016590(v46, v47);
      sub_100007BAC((v0 + 64));
      (*(v37 + 8))(v36, v49);
      (*(v34 + 8))(v33, v35);
    }

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_100C0FEAC()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  sub_100016590(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C0FF70(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v5 = swift_task_alloc();
  v3[4] = v5;
  type metadata accessor for AccessoryMetadataManager();
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100C10068;

  return sub_100359F48(v5, a2, 1);
}

uint64_t sub_100C10068()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100C102FC;
  }

  else
  {
    v3 = sub_100C10190;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100C10190()
{
  v1 = v0[4];
  v2 = type metadata accessor for AccessoryProductInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101697268, &qword_101394FE0);
    sub_100C10608();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else
  {
    v5 = v0[2];
    v5[3] = v2;
    v5[4] = sub_100C114D4(&qword_1016B31C0, 255, type metadata accessor for AccessoryProductInfo, &unk_1013DF870);
    v6 = sub_1000280DC(v5);
    sub_100C1065C(v1, v6);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C102FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C104B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100C0A250(a1, v6, a3);
}

uint64_t sub_100C10560(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C0FF70(a1, a2);
}

unint64_t sub_100C10608()
{
  result = qword_1016B8620;
  if (!qword_1016B8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8620);
  }

  return result;
}

uint64_t sub_100C1065C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C106C0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8550);
  v1 = sub_1000076D4(v0, qword_1016B8550);
  if (qword_101694D88 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BDD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C10788(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v7 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v4[5] = v7;
  v4[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  if (a2)
  {
    v8 = v9;
    v10 = type metadata accessor for Characteristic();
    v11 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v12 = swift_task_alloc();
    v4[9] = v12;
    *v12 = v4;
    v13 = sub_100C109A4;
  }

  else
  {
    v10 = type metadata accessor for Characteristic();
    v11 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v12 = swift_task_alloc();
    v4[11] = v12;
    *v12 = v4;
    v13 = sub_100C10B5C;
  }

  v12[1] = v13;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v8, a4, v10, v11);
}

uint64_t sub_100C109A4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C10EA4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_100C10D18;
    v5 = v2[5];

    return AsyncSequence<>.reassemble()(v5, v4);
  }
}

uint64_t sub_100C10B5C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C11160, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[17] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_100C10FF8;
    v5 = v2[5];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_100C10D18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  v7 = v6[8];
  v8 = v6[6];
  v9 = v6[5];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100C10F8C;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_100C10F10;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100C10EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C10F10()
{
  **(v0 + 32) = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C10F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C10FF8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_100C113B4;
  }

  else
  {
    v3 = sub_100C111CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C11160()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C111CC()
{
  v11 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_101694D88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177BDD8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, &v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalid response!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    sub_100C1151C();
    swift_allocError();
    swift_willThrow();

    v7 = v0[1];
  }

  else
  {
    v8 = v0[4];
    *v8 = v0[2];
    v8[1] = v1;

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_100C113B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C11420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100C10788(a1, v4, v6, v5);
}

uint64_t sub_100C114D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100C1151C()
{
  result = qword_1016B8630;
  if (!qword_1016B8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8630);
  }

  return result;
}

unint64_t sub_100C11584()
{
  result = qword_1016B8638;
  if (!qword_1016B8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8638);
  }

  return result;
}

void sub_100C11628(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 name];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [v5 roleId];
    v12 = [v5 roleEmoji];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {

      v14 = 0;
      v16 = 0;
    }

    v17 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
    swift_beginAccess();
    v18 = type metadata accessor for PairingConfig(0);
    *(a1 + 24) = v18;
    *(a1 + 32) = sub_100C13B8C(&qword_1016B7408, type metadata accessor for PairingConfig, &unk_1013DDF28);
    v19 = sub_1000280DC(a1);
    sub_1000D2A70(v1 + v17, v19 + *(v18 + 28), &qword_101697268, &qword_101394FE0);
    *v19 = v8;
    v19[1] = v10;
    v19[2] = v11;
    v19[3] = v14;
    v19[4] = v16;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_100C117D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DetectedAccessory();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100C118F4, v1, 0);
}

uint64_t sub_100C118F4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  type metadata accessor for ProximityPairingInfoStore(0);
  sub_100C13B8C(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFA30);
  PairingInfoStore.accessory.getter();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  if (v4 != enum case for DetectedAccessory.single(_:))
  {
    (*(v5 + 8))(*(v0 + 112), v7);
    v12 = type metadata accessor for PairingCoordinatorError();
    sub_100C13B8C(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError, &protocol conformance descriptor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v12);
    swift_willThrow();
    goto LABEL_14;
  }

  v8 = *(v0 + 64);
  (*(v5 + 96))(*(v0 + 112), v7);
  sub_10000A748(v6, v0 + 16);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  dispatch thunk of Accessory.identifier.getter();
  if (*(v8 + 120) > 1u)
  {
    v14 = 2;
    if (*(v8 + 120) != 2)
    {
      v14 = 0;
    }
  }

  else
  {
    if (!*(v8 + 120))
    {
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = *(v0 + 72);
      sub_100BAB70C();
      swift_allocError();
      swift_willThrow();
      (*(v10 + 8))(v9, v11);
      sub_100007BAC((v0 + 16));
LABEL_14:

      v18 = *(v0 + 8);

      return v18();
    }

    v14 = 1;
  }

  *(v0 + 120) = v14;
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 200) = dispatch thunk of Accessory.colorCode.getter();
  if (MKBGetDeviceLockState() == 2 || (v15 = MKBGetDeviceLockState(), v16 = 0, v15 == 1))
  {
    v16 = 1;
  }

  *(v0 + 128) = v16;
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 136) = dispatch thunk of Accessory.engravingData.getter();
  *(v0 + 144) = v17;
  *(v0 + 204) = sub_100C123AC();
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_100C11CA8;

  return daemon.getter();
}

uint64_t sub_100C11CA8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100C13B8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C13B8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100C11E84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C11E84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v6 = v4[17];
    v5 = v4[18];
    v7 = v4[8];

    sub_100006654(v6, v5);
    v8 = sub_100C1231C;
    v9 = v7;
  }

  else
  {

    v4[23] = a1;
    v8 = sub_100C11FEC;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100C11FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100C12080;

  return sub_100A9A4DC();
}

uint64_t sub_100C12080(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 205) = a1;

  return _swift_task_switch(sub_100C12198, v2, 0);
}

uint64_t sub_100C12198()
{
  v16 = *(v0 + 205);
  v15 = *(v0 + 204);
  v1 = *(v0 + 136);
  v14 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 200);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = type metadata accessor for ProximityPairingInfo(0);
  v8[3] = v9;
  v8[4] = sub_100C13B8C(&qword_1016A6DF0, type metadata accessor for ProximityPairingInfo, &unk_1013E0CF0);
  v10 = sub_1000280DC(v8);
  (*(v6 + 32))(v10, v5, v7);
  *(v10 + v9[5]) = v3;
  *(v10 + v9[6]) = v4;
  *(v10 + v9[7]) = v2;
  v11 = (v10 + v9[8]);
  *v11 = v1;
  v11[1] = v14;
  *(v10 + v9[9]) = v15;
  *(v10 + v9[10]) = v16;
  *(v10 + v9[11]) = 0;
  sub_100007BAC((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100C1231C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C123AC()
{
  v1 = type metadata accessor for BatteryLevel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectedAccessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProximityPairingInfoStore(0);
  sub_100C13B8C(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFA30);
  PairingInfoStore.accessory.getter();
  if ((*(v6 + 88))(v8, v5) == enum case for DetectedAccessory.single(_:))
  {
    (*(v6 + 96))(v8, v5);
    sub_10000A748(v8, v14);
    sub_1000035D0(v14, v14[3]);
    dispatch thunk of Accessory.battery.getter();
    v9 = (*(v2 + 88))(v4, v1);
    if (v9 == enum case for BatteryLevel.unknown(_:))
    {
      v10 = 2;
    }

    else if (v9 == enum case for BatteryLevel.low(_:))
    {
      v10 = *(v0 + 121) == 1;
    }

    else if (v9 == enum case for BatteryLevel.critical(_:))
    {
      v10 = 1;
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v10 = 0;
    }

    sub_100007BAC(v14);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v10 = type metadata accessor for PairingCoordinatorError();
    sub_100C13B8C(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError, &protocol conformance descriptor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v10);
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_100C12710@<X0>(void *a1@<X8>)
{
  v61 = a1;
  v1 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2 = __chkstk_darwin(v1 - 8);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v56 - v4;
  v66 = type metadata accessor for AccessoryProductInfo(0);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AccessoryMetadata(0);
  v7 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  v12 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = static Data.random(bytes:)();
  v20 = v19;
  v21 = type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v18, v20);
  v22 = sub_10024C9E8(v18, v20);
  if (!v22)
  {
    sub_100C13B38();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
    v28 = v18;
    v29 = v20;
    return sub_100016590(v28, v29);
  }

  v64 = v22;
  v65 = v20;
  v67 = v18;
  v23 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata;
  v24 = v69;
  swift_beginAccess();
  sub_1000D2A70(v24 + v23, v17, &qword_1016A62A0, &unk_101396E10);
  v25 = *(v7 + 48);
  if (v25(v17, 1, v68))
  {
    sub_10000B3A8(v17, &qword_1016A62A0, &unk_101396E10);
    sub_100C13B38();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();
LABEL_7:

    v28 = v67;
    v29 = v65;
    return sub_100016590(v28, v29);
  }

  sub_100A569CC(v17, v11, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v17, &qword_1016A62A0, &unk_101396E10);
  v30 = &v11[*(v68 + 20)];
  v31 = v30[1];
  v58 = *v30;
  sub_100017D5C(v58, v31);
  sub_10028602C(v11, type metadata accessor for AccessoryMetadata);
  v32 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
  v33 = v69;
  swift_beginAccess();
  sub_1000D2A70(v33 + v32, v5, &qword_101697268, &qword_101394FE0);
  v34 = v63;
  if ((*(v63 + 48))(v5, 1, v66) == 1)
  {
    sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
    sub_100C13B38();
    swift_allocError();
    *v35 = 5;
    swift_willThrow();
    sub_100016590(v58, v31);
    goto LABEL_7;
  }

  v57 = v31;
  v37 = v62;
  sub_100A56964(v5, v62, type metadata accessor for AccessoryProductInfo);
  sub_1000D2A70(v69 + v23, v15, &qword_1016A62A0, &unk_101396E10);
  v38 = v25(v15, 1, v68);
  v39 = v67;
  if (v38 == 1)
  {
    sub_10000B3A8(v15, &qword_1016A62A0, &unk_101396E10);
    sub_100C13B38();
    swift_allocError();
    *v40 = 6;
    swift_willThrow();

    sub_100016590(v58, v57);
    sub_100016590(v39, v65);
    return sub_10028602C(v37, type metadata accessor for AccessoryProductInfo);
  }

  else
  {
    v41 = v60;
    sub_100A56964(v15, v60, type metadata accessor for AccessoryMetadata);
    v56 = type metadata accessor for AccessoryProductInfo;
    v42 = v59;
    sub_100A569CC(v37, v59, type metadata accessor for AccessoryProductInfo);
    v43 = v66;
    (*(v34 + 56))(v42, 0, 1, v66);
    v44 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    v45 = v64;
    swift_beginAccess();
    sub_10002311C(v42, v45 + v44, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
    v46 = v45[13];
    v47 = v45[14];
    v48 = v58;
    v49 = v57;
    v45[13] = v58;
    v45[14] = v49;
    sub_100017D5C(v48, v49);
    sub_100006654(v46, v47);
    v45[11] = sub_10098E010();
    v45[12] = v50;

    v51 = (v37 + *(v43 + 52));
    v53 = *v51;
    v52 = v51[1];
    v54 = (v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
    *v54 = v53;
    v54[1] = v52;

    *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v69 + 121);
    v55 = v61;
    v61[3] = v21;
    v55[4] = sub_100C13B8C(&qword_1016ACE88, type metadata accessor for AccessoryPairingInfo, &unk_1013DC628);
    sub_100016590(v48, v49);
    sub_100016590(v67, v65);
    *v55 = v45;
    sub_10028602C(v41, type metadata accessor for AccessoryMetadata);
    return sub_10028602C(v37, v56);
  }
}

uint64_t sub_100C12EA0(uint64_t a1, char a2, char a3)
{
  swift_defaultActor_initialize();
  *(v3 + 128) = 0;
  v7 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata;
  v8 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
  v10 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 121) = a3;
  return v3;
}

uint64_t sub_100C12FB0()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo, &qword_101697268, &qword_101394FE0);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ProximityPairingInfoStore(uint64_t a1)
{
  result = qword_1016B8668;
  if (!qword_1016B8668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C130B4(uint64_t a1)
{
  sub_100A55C6C(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
  if (v1 <= 0x3F)
  {
    sub_100A55C6C(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100C13374@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100C133D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100C13490(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProximityPairingInfoStore(0);

  return PairingInfoStore.accessory.getter();
}

uint64_t sub_100C134DC()
{
  v0 = type metadata accessor for ProximityPairingInfoStore(0);
  v1 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFAF8);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100C13580(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for ProximityPairingInfoStore(0);
  v4 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFAF8);

  return a3(v3, v4);
}

uint64_t sub_100C13630()
{
  v0 = type metadata accessor for ProximityPairingInfoStore(0);
  v1 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFAF8);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100C136B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C117D8(a1);
}

double sub_100C13764()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100C137AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100C138D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for ProximityPairingInfoStore(0);
  v11 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore, &unk_1013DFAF8);
  return a6(a1, v10, a2, v11, a3);
}

unint64_t sub_100C13B38()
{
  result = qword_1016B8818;
  if (!qword_1016B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8818);
  }

  return result;
}

uint64_t sub_100C13B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100C13BE8()
{
  result = qword_1016B8820;
  if (!qword_1016B8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8820);
  }

  return result;
}

uint64_t sub_100C13C3C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_100102538(v8, &v7);
}

uint64_t sub_100C13C94(uint64_t a1)
{
  v2[563] = v1;
  v2[557] = a1;
  type metadata accessor for String.Encoding();
  v2[569] = swift_task_alloc();
  v3 = type metadata accessor for BinaryDecoder();
  v2[575] = v3;
  v2[581] = *(v3 - 8);
  v2[587] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[593] = v4;
  v2[599] = *(v4 - 8);
  v2[605] = swift_task_alloc();
  v2[611] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v2[617] = v5;
  v2[623] = *(v5 - 8);
  v2[629] = swift_task_alloc();
  v2[635] = swift_task_alloc();

  return _swift_task_switch(sub_100C13E60, v1, 0);
}

uint64_t sub_100C13E60()
{
  v1 = *(v0 + 4504);
  v2 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
  *(v0 + 5128) = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
  LODWORD(v2) = *(*(v1 + v2) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID);
  *(v0 + 7364) = v2;
  if (v2 == 3)
  {
    sub_100C29CEC();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
    sub_1000BB27C(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider + 8);
    ObjectType = swift_getObjectType();
    v8 = swift_task_alloc();
    *(v0 + 5176) = v8;
    v9 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
    *v8 = v0;
    v8[1] = sub_100C14048;
    v10 = *(v0 + 4456);

    return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 4440, v10, v9, ObjectType, v6);
  }
}

uint64_t sub_100C14048()
{
  v2 = *v1;
  *(*v1 + 5224) = v0;

  v3 = *(v2 + 4504);
  if (v0)
  {
    v4 = sub_100C17FEC;
  }

  else
  {
    v4 = sub_100C14174;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C14174()
{
  v23 = v0;
  *(v0 + 5272) = *(v0 + 4440);
  *(v0 + 5320) = *(v0 + 4448);
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 4456);
  v2 = type metadata accessor for Logger();
  *(v0 + 5368) = sub_1000076D4(v2, qword_1016B8828);
  sub_10001F280(v1, v0 + 3816);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    sub_10001F280(v0 + 3816, v0 + 3736);
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100007BAC((v0 + 3816));
    v10 = sub_1000136BC(v7, v9, &v22);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {

    sub_100007BAC((v0 + 3816));
  }

  v11 = *(v0 + 5080);
  v12 = *(v0 + 4984);
  v13 = *(v0 + 4936);
  v14 = enum case for PairingExecutorState.InitiatePairing.commandStart(_:);
  v15 = type metadata accessor for PairingExecutorState.InitiatePairing();
  *(v0 + 5416) = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  *(v0 + 5464) = v17;
  *(v0 + 5512) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v11, v14, v15);
  v18 = *(v16 + 56);
  *(v0 + 5560) = v18;
  *(v0 + 5608) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v11, 0, 1, v15);
  *(v0 + 7360) = enum case for PairingExecutorState.initiatePairing(_:);
  v19 = *(v12 + 104);
  *(v0 + 5656) = v19;
  *(v0 + 5704) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v11);
  *(v0 + 5752) = type metadata accessor for AirTagPairingExecutor(0);
  *(v0 + 5800) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor, &unk_1013E0180);
  PairingExecutor.setState(_:)();
  v20 = *(v12 + 8);
  *(v0 + 5848) = v20;
  *(v0 + 5896) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v13);

  return _swift_task_switch(sub_100C144D8, 0, 0);
}

uint64_t sub_100C144D8()
{
  ObjectType = swift_getObjectType();
  v0[743] = ObjectType;
  v0[749] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[755] = v2;
  *v2 = v0;
  v2[1] = sub_100C145B8;
  v3 = v0[665];
  v4 = v0[611];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, ObjectType, v3);
}

uint64_t sub_100C145B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[761] = a1;
  v4[767] = v1;

  v5 = v3[611];
  v6 = v3[599];
  v7 = v3[593];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_100C149E8;
  }

  else
  {
    v4[773] = v9;
    v4[779] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_100C14748;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100C14748()
{
  swift_getAssociatedTypeWitness();
  v0[785] = swift_getAssociatedConformanceWitness();
  Identifier.init(stringLiteral:)();
  v1 = swift_task_alloc();
  v0[791] = v1;
  *v1 = v0;
  v1[1] = sub_100C1486C;
  v2 = v0[743];
  v3 = v0[665];
  v4 = v0[605];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v2, v3);
}

uint64_t sub_100C1486C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 6376) = a1;
  *(v4 + 6424) = v1;

  (*(v3 + 6184))(*(v3 + 4840), *(v3 + 4744));
  if (v1)
  {
    v5 = sub_100C14FD4;
  }

  else
  {
    v5 = sub_100C14AD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C14A04()
{
  swift_unknownObjectRelease();
  sub_1000BB27C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C14AD4()
{
  v1 = swift_task_alloc();
  v0[809] = v1;
  *v1 = v0;
  v1[1] = sub_100C14B80;
  v2 = v0[797];
  v3 = v0[785];

  return sub_100C4F128(v2, v3);
}

uint64_t sub_100C14B80()
{
  v2 = *v1;
  *(*v1 + 6520) = v0;

  v3 = *(v2 + 4504);
  if (v0)
  {
    v4 = sub_100C14EEC;
  }

  else
  {
    v4 = sub_100C14CAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

void *sub_100C14CAC()
{
  v24 = v0;
  v1 = *(v0[563] + v0[641]);
  v2 = *(v1 + 16);
  v0[821] = v2;
  v3 = *(v1 + 24);
  v0[827] = v3;
  sub_100017D5C(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    result = swift_slowAlloc();
    v8 = result;
    v23 = result;
    *v6 = 134218242;
    v9 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_12;
      }

      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE6(v3);
LABEL_12:
      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v14 = Data.hexString.getter();
      v16 = sub_1000136BC(v14, v15, &v23);

      *(v6 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Writing nonce[%ld]: %s", v6, 0x16u);
      sub_100007BAC(v8);

      goto LABEL_13;
    }

    LODWORD(v10) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v10 = v10;
    goto LABEL_12;
  }

LABEL_13:

  v17 = *(v0[563] + v0[641]);
  v18 = *(v17 + 16);
  v0[833] = v18;
  v19 = *(v17 + 24);
  v0[839] = v19;
  sub_100017D5C(v18, v19);
  v20 = swift_task_alloc();
  v0[845] = v20;
  *v20 = v0;
  v20[1] = sub_100C150CC;
  v21 = v0[665];
  v22 = v0[659];

  return sub_100C4F5AC(v22, v21, v18, v19);
}

uint64_t sub_100C14EEC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000BB27C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C14FF0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000BB27C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C150CC()
{
  v2 = *v1;
  *(*v1 + 6808) = v0;

  if (v0)
  {
    v3 = v2[563];
    v4 = sub_100C1531C;
  }

  else
  {
    v5 = v2[563];
    sub_100016590(v2[833], v2[839]);
    v4 = sub_100C151F8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C151F8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote nonce", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[857] = v5;
  *v5 = v1;
  v5[1] = sub_100C15428;
  v6 = v1[785];
  v7 = v1[761];

  return sub_100C4FC78(v7, v6);
}

uint64_t sub_100C1531C()
{
  v1 = v0[827];
  v2 = v0[821];
  sub_100016590(v0[833], v0[839]);
  sub_100016590(v2, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000BB27C(0, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C15428(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 6904) = a1;
  *(v4 + 6952) = v1;

  v5 = *(v3 + 4504);
  if (v1)
  {
    v6 = sub_100C1582C;
  }

  else
  {
    v6 = sub_100C15560;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C15560(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading S2, payload, vbVersion, refPubKey, and sysPubKey.", v4, 2u);
  }

  v5 = v1[665];
  v6 = v1[659];

  v7 = swift_allocObject();
  v1[875] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
  swift_asyncLet_begin();
  v8 = swift_allocObject();
  v1[881] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v9 = swift_allocObject();
  v1[887] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  v1[893] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v11 = swift_allocObject();
  v1[894] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v1 + 82, v1 + 545, sub_100C15924, v1 + 472);
}

uint64_t sub_100C1582C()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000BB27C(0, 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C15924()
{
  v1[895] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 322, v1 + 543, sub_100C180B4, v1 + 482);
  }

  else
  {
    v2 = v1[545];
    v1[896] = v2;
    v3 = v1[546];
    v1[897] = v3;
    sub_10002E98C(v2, v3);

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 547, sub_100C159EC, v1 + 530);
  }
}

uint64_t sub_100C159EC()
{
  v1[898] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18318, v2, 0);
  }

  else
  {
    v3 = v1[547];
    v1[899] = v3;
    v4 = v1[548];
    v1[900] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 549, sub_100C15AAC, v1 + 582);
  }
}

uint64_t sub_100C15AAC()
{
  v1[901] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18600, v2, 0);
  }

  else
  {
    v3 = v1[549];
    v1[902] = v3;
    v4 = v1[550];
    v1[903] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 553, sub_100C15B6C, v1 + 618);
  }
}

uint64_t sub_100C15B6C()
{
  v1[904] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18904, v2, 0);
  }

  else
  {
    v3 = v1[553];
    v1[905] = v3;
    v4 = v1[554];
    v1[906] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 322, v1 + 543, sub_100C15C2C, v1 + 654);
  }
}

uint64_t sub_100C15C2C()
{
  *(v1 + 7256) = v0;
  if (v0)
  {
    v2 = sub_100C18C24;
  }

  else
  {
    v2 = sub_100C15C60;
  }

  return _swift_task_switch(v2, *(v1 + 4504), 0);
}

uint64_t sub_100C15C60()
{
  v218 = v0;
  v1 = *(v0 + 7176);
  v2 = *(v0 + 7168);
  v3 = *(v0 + 5128);
  v4 = *(v0 + 4504);
  v5 = *(v0 + 4344);
  *(v0 + 7264) = v5;
  v6 = *(v0 + 4352);
  *(v0 + 7272) = v6;
  v7 = (*(v4 + v3) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v2;
  v7[1] = v1;
  sub_10002E98C(v2, v1);

  sub_10002E98C(v5, v6);
  sub_100006654(v8, v9);

  v216 = v5;
  if (v1 >> 60 != 15)
  {
    sub_100017D5C(*(v0 + 7168), *(v0 + 7176));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 7176);
    if (!v12)
    {
      v24 = *(v0 + 7168);

      sub_100006654(v24, v13);
      goto LABEL_14;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *&v217 = v15;
    *v14 = 134218242;
    v21 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = v6;
        v23 = 0;
        goto LABEL_13;
      }

      v25 = *(*(v0 + 7168) + 16);
      v26 = *(*(v0 + 7168) + 24);
      v27 = __OFSUB__(v26, v25);
      v23 = v26 - v25;
      if (!v27)
      {
        v22 = v6;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v21)
      {
        v22 = v6;
        v23 = *(v0 + 7182);
LABEL_13:
        v30 = *(v0 + 7176);
        v31 = *(v0 + 7168);
        *(v14 + 4) = v23;
        *(v14 + 12) = 2080;
        v32 = Data.hexString.getter();
        v34 = sub_1000136BC(v32, v33, &v217);

        *(v14 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v10, v11, "Read S2[%ld]: %s", v14, 0x16u);
        sub_100007BAC(v20);

        sub_100006654(v31, v30);

        v6 = v22;
        v5 = v216;
        goto LABEL_14;
      }

      v28 = *(v0 + 7168);
      v29 = *(v0 + 7172);
      v27 = __OFSUB__(v29, v28);
      LODWORD(v23) = v29 - v28;
      if (!v27)
      {
        v22 = v6;
        v23 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_14:
  v35 = *(v0 + 7200);
  v215 = v6;
  if (v35 >> 60 == 15)
  {
    v36 = *(v0 + 7256);
LABEL_37:
    v110 = *(v0 + 7224);
    if (v110 >> 60 == 15)
    {
LABEL_56:
      v148 = *(v0 + 7248);
      v149 = *(v0 + 7240);
      v150 = (*(*(v0 + 4504) + *(v0 + 5128)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
      v151 = *v150;
      v152 = v150[1];
      *v150 = v149;
      v150[1] = v148;
      sub_10002E98C(v149, v148);

      sub_100006654(v151, v152);

      if (v148 >> 60 == 15)
      {
        goto LABEL_71;
      }

      sub_100017D5C(*(v0 + 7240), *(v0 + 7248));
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.default.getter();
      v155 = os_log_type_enabled(v153, v154);
      v156 = *(v0 + 7248);
      if (!v155)
      {
        v161 = *(v0 + 7240);

        sub_100006654(v161, v156);
LABEL_70:
        v5 = v216;
LABEL_71:
        v171 = (*(*(v0 + 4504) + *(v0 + 5128)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
        v172 = *v171;
        v173 = v171[1];
        *v171 = v5;
        v171[1] = v6;
        sub_10002E98C(v5, v6);

        sub_100006654(v172, v173);

        if (v6 >> 60 != 15)
        {
          sub_100017D5C(v5, v6);
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v177 = v15;
            *&v217 = v15;
            *v176 = 134218242;
            v178 = v6 >> 62;
            if ((v6 >> 62) > 1)
            {
              if (v178 != 2)
              {
                v179 = 0;
                goto LABEL_84;
              }

              v181 = *(v5 + 16);
              v180 = *(v5 + 24);
              v27 = __OFSUB__(v180, v181);
              v179 = v180 - v181;
              if (!v27)
              {
                goto LABEL_84;
              }

              __break(1u);
            }

            else if (!v178)
            {
              v179 = BYTE6(v6);
LABEL_84:
              *(v176 + 4) = v179;
              *(v176 + 12) = 2080;
              v182 = Data.hexString.getter();
              v184 = sub_1000136BC(v182, v183, &v217);

              *(v176 + 14) = v184;
              _os_log_impl(&_mh_execute_header, v174, v175, "Read sysPubKey[%ld]: %s", v176, 0x16u);
              sub_100007BAC(v177);

              sub_100006654(v5, v6);

              goto LABEL_85;
            }

            LODWORD(v179) = HIDWORD(v5) - v5;
            if (!__OFSUB__(HIDWORD(v5), v5))
            {
              v179 = v179;
              goto LABEL_84;
            }

LABEL_107:
            __break(1u);
            return Task.value.getter(v15, v16, v17, v18, v19);
          }

          sub_100006654(v5, v6);
        }

LABEL_85:
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          *v187 = 0;
          _os_log_impl(&_mh_execute_header, v185, v186, "Generated collaborative share", v187, 2u);
        }

        v188 = *(v0 + 5128);
        v189 = *(v0 + 4504);

        v190 = (*(v189 + v188) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
        v191 = *v190;
        v192 = v190[1];
        if (v192 >> 60 == 15)
        {
          v193 = 0;
        }

        else
        {
          v193 = *v190;
        }

        if (v192 >> 60 == 15)
        {
          v194 = 0xF000000000000000;
        }

        else
        {
          v194 = v190[1];
        }

        sub_10002E98C(v191, v192);
        v195 = sub_100C4DB3C((v0 + 3976), v193, v194);
        *(v0 + 7296) = v36;
        *(v0 + 7304) = v195;
        *(v0 + 7312) = v196;
        *(v0 + 7320) = v197;
        if (v36)
        {
          v198 = *(v0 + 7248);
          v199 = *(v0 + 7240);
          v200 = *(v0 + 7224);
          v201 = *(v0 + 7216);
          v202 = *(v0 + 7200);
          v203 = v5;
          v204 = *(v0 + 7192);
          sub_100006654(*(v0 + 7168), *(v0 + 7176));
          sub_100006654(v204, v202);
          sub_100006654(v201, v200);
          sub_100006654(v199, v198);
          sub_100006654(v203, v215);
          sub_100006654(v191, v192);
          v65 = sub_100C191D0;
          v66 = v0 + 2576;
          v67 = v0 + 4344;
          v135 = 5520;
          goto LABEL_95;
        }

        v205 = *(v0 + 5128);
        v206 = *(v0 + 4504);
        sub_100006654(v191, v192);
        sub_10000A748((v0 + 3976), v0 + 3896);
        v207 = *(v206 + v205);
        sub_10001F280(v0 + 3896, v0 + 4056);
        v208 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C(v0 + 4056, v207 + v208, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v209 = swift_task_alloc();
        *(v0 + 7328) = v209;
        v18 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        *v209 = v0;
        v209[1] = sub_100C17014;
        v16 = *(v0 + 6904);
        v17 = &type metadata for Data;
        v19 = &protocol self-conformance witness table for Error;
        v15 = v0 + 4408;

        return Task.value.getter(v15, v16, v17, v18, v19);
      }

      v157 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v158 = v15;
      *&v217 = v15;
      *v157 = 134218242;
      v159 = v156 >> 62;
      if ((v156 >> 62) > 1)
      {
        if (v159 != 2)
        {
          v160 = 0;
          goto LABEL_69;
        }

        v162 = *(*(v0 + 7240) + 16);
        v163 = *(*(v0 + 7240) + 24);
        v27 = __OFSUB__(v163, v162);
        v160 = v163 - v162;
        if (!v27)
        {
          goto LABEL_69;
        }

        __break(1u);
      }

      else if (!v159)
      {
        v160 = *(v0 + 7254);
LABEL_69:
        v166 = *(v0 + 7248);
        v167 = *(v0 + 7240);
        *(v157 + 4) = v160;
        *(v157 + 12) = 2080;
        v168 = Data.hexString.getter();
        v170 = sub_1000136BC(v168, v169, &v217);

        *(v157 + 14) = v170;
        _os_log_impl(&_mh_execute_header, v153, v154, "Read refPubKey[%ld]: %s", v157, 0x16u);
        sub_100007BAC(v158);

        sub_100006654(v167, v166);

        v6 = v215;
        goto LABEL_70;
      }

      v164 = *(v0 + 7240);
      v165 = *(v0 + 7244);
      v27 = __OFSUB__(v165, v164);
      LODWORD(v160) = v165 - v164;
      if (!v27)
      {
        v160 = v160;
        goto LABEL_69;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    sub_100017D5C(*(v0 + 7216), v110);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v111, v112))
    {
LABEL_50:

      v125 = sub_100C50F50(*(v0 + 7216), *(v0 + 7224));
      *(v0 + 7288) = v36;
      if (v36)
      {
        v127 = *(v0 + 7248);
        v128 = *(v0 + 7240);
        v129 = *(v0 + 7224);
        v130 = *(v0 + 7216);
        v131 = *(v0 + 7200);
        v132 = *(v0 + 7192);
        v133 = *(v0 + 7176);
        v134 = *(v0 + 7168);
        sub_100006654(v130, v129);
        sub_100006654(v216, v6);
        sub_100006654(v128, v127);
        sub_100006654(v130, v129);
        sub_100006654(v132, v131);
        sub_100006654(v134, v133);
        v65 = sub_100C16DA8;
        v66 = v0 + 2576;
        v67 = v0 + 4344;
        v135 = 6960;
LABEL_95:
        v68 = v0 + v135;
        goto LABEL_96;
      }

      v136 = v126;
      v137 = *(*(v0 + 4504) + *(v0 + 5128));
      v138 = v125;
      *(v137 + 88) = v125;
      *(v137 + 96) = v126;
      swift_bridgeObjectRetain_n();

      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();

      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 7224);
      v143 = *(v0 + 7216);
      if (v141)
      {
        v144 = swift_slowAlloc();
        v145 = v6;
        v146 = swift_slowAlloc();
        *&v217 = v146;
        *v144 = 136315138;
        v147 = sub_1000136BC(v138, v136, &v217);

        *(v144 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v139, v140, "systemVersion: %s", v144, 0xCu);
        sub_100007BAC(v146);
        v6 = v145;

        sub_100006654(v143, v142);
      }

      else
      {
        sub_100006654(*(v0 + 7216), *(v0 + 7224));
      }

      v36 = 0;
      v5 = v216;
      goto LABEL_56;
    }

    v113 = *(v0 + 7224);
    v114 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v115 = v15;
    *&v217 = v15;
    *v114 = 134218242;
    v116 = v113 >> 62;
    if ((v113 >> 62) > 1)
    {
      if (v116 != 2)
      {
        v117 = 0;
        goto LABEL_49;
      }

      v118 = *(*(v0 + 7216) + 16);
      v119 = *(*(v0 + 7216) + 24);
      v27 = __OFSUB__(v119, v118);
      v117 = v119 - v118;
      if (!v27)
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    else if (!v116)
    {
      v117 = *(v0 + 7230);
LABEL_49:
      *(v114 + 4) = v117;
      *(v114 + 12) = 2080;
      v122 = Data.hexString.getter();
      v124 = sub_1000136BC(v122, v123, &v217);

      *(v114 + 14) = v124;
      _os_log_impl(&_mh_execute_header, v111, v112, "Read vbVersion[%ld]: %s", v114, 0x16u);
      sub_100007BAC(v115);

      goto LABEL_50;
    }

    v120 = *(v0 + 7216);
    v121 = *(v0 + 7220);
    v27 = __OFSUB__(v121, v120);
    LODWORD(v117) = v121 - v120;
    if (!v27)
    {
      v117 = v117;
      goto LABEL_49;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_100017D5C(*(v0 + 7192), v35);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 7200);
    v40 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v15;
    *&v217 = v15;
    *v40 = 134218242;
    v42 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v43 = 0;
        goto LABEL_27;
      }

      v44 = *(*(v0 + 7192) + 16);
      v45 = *(*(v0 + 7192) + 24);
      v27 = __OFSUB__(v45, v44);
      v43 = v45 - v44;
      if (!v27)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v43 = *(v0 + 7206);
LABEL_27:
      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, &v217);

      *(v40 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "Read payload[%ld]: %s", v40, 0x16u);
      sub_100007BAC(v41);

      goto LABEL_28;
    }

    v46 = *(v0 + 7192);
    v47 = *(v0 + 7196);
    v27 = __OFSUB__(v47, v46);
    LODWORD(v43) = v47 - v46;
    if (!v27)
    {
      v43 = v43;
      goto LABEL_27;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_28:

  v51 = *(v0 + 7364);
  BinaryDecoder.init()();
  if (v51)
  {
    v52 = sub_100C2A8F8();
    v53 = &type metadata for ProximityInfoPayload;
    v54 = sub_100C2A94C();
  }

  else
  {
    v52 = sub_100C2A9A0();
    v53 = &type metadata for AirTagInfoPayload;
    v54 = sub_100C2A9F4();
  }

  v55 = v54;
  v56 = *(v0 + 7256);
  *(v0 + 3712) = v53;
  *(v0 + 3720) = v52;
  *(v0 + 3728) = v54;
  sub_1000280DC((v0 + 3688));
  BinaryDecoder.decode<A>(_:from:)();
  *(v0 + 7280) = v56;
  if (!v56)
  {
    v211 = *(v0 + 4504);
    v213 = *(v0 + 5128);
    v69 = *(v211 + v213);
    v70 = v55[2];

    v71 = v70(v53, v55);
    v72 = (v69 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v73 = *(v69 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v74 = *(v69 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
    *v72 = v71;
    v72[1] = v75;
    sub_100006654(v73, v74);

    v76 = *(v211 + v213);
    v77 = v55[3];

    v78 = v77(v53, v55);
    v79 = (v76 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v80 = *(v76 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v81 = *(v76 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
    *v79 = v78;
    v79[1] = v82;
    sub_100006654(v80, v81);

    v83 = *(v211 + v213);
    v84 = v55[4];

    v85 = v84(v53, v55);
    v86 = (v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v87 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v88 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *v86 = v85;
    v86[1] = v89;
    sub_100006654(v87, v88);

    v90 = *(v211 + v213);
    v91 = v55[5];

    v92 = v91(v53, v55);
    sub_1004A4714(v92, v93, &v217);
    v94 = *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v95 = *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    *(v90 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v217;
    sub_100006654(v94, v95);

    sub_1001011C0(v0 + 3688, v0 + 3640);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 7200);
    v100 = *(v0 + 7192);
    v101 = *(v0 + 4696);
    v102 = *(v0 + 4648);
    v103 = *(v0 + 4600);
    if (v98)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v217 = v105;
      *v104 = 136315138;
      v212 = v101;
      v214 = v103;
      sub_1000035D0((v0 + 3640), *(v0 + 3664));
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = v107;
      sub_100007BAC((v0 + 3640));
      v109 = sub_1000136BC(v106, v108, &v217);

      *(v104 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v96, v97, "decodedPayload: %s", v104, 0xCu);
      sub_100007BAC(v105);

      sub_100006654(v100, v99);
      (*(v102 + 8))(v212, v214);
    }

    else
    {
      sub_100006654(*(v0 + 7192), *(v0 + 7200));

      (*(v102 + 8))(v101, v103);
      sub_100007BAC((v0 + 3640));
    }

    v6 = v215;
    sub_100007BAC((v0 + 3688));
    v36 = 0;
    v5 = v216;
    goto LABEL_37;
  }

  v57 = *(v0 + 7248);
  v58 = *(v0 + 7240);
  v59 = *(v0 + 7224);
  v60 = *(v0 + 7216);
  v61 = *(v0 + 7200);
  v62 = *(v0 + 7192);
  v63 = *(v0 + 7176);
  v64 = *(v0 + 7168);
  (*(*(v0 + 4648) + 8))(*(v0 + 4696), *(v0 + 4600));
  sub_100006654(v64, v63);
  sub_100006654(v62, v61);
  sub_100006654(v60, v59);
  sub_100006654(v58, v57);
  sub_100006654(v216, v215);
  sub_100006654(v62, v61);
  sub_100101758((v0 + 3688));
  v65 = sub_100C18F60;
  v66 = v0 + 2576;
  v67 = v0 + 4344;
  v68 = v0 + 7104;
LABEL_96:

  return _swift_asyncLet_finish(v66, v67, v65, v68);
}

uint64_t sub_100C16ED0()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C17014()
{
  v2 = *v1;
  *(*v1 + 7336) = v0;

  v3 = *(v2 + 4504);
  if (v0)
  {
    v4 = sub_100C19440;
  }

  else
  {
    v4 = sub_100C17140;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C17140()
{
  v154 = v0;
  v146 = *(v0 + 5848);
  v132 = *(v0 + 5656);
  v1 = *(v0 + 7360);
  v2 = *(v0 + 5560);
  v3 = *(v0 + 5416);
  v137 = *(v0 + 5128);
  v4 = *(v0 + 5080);
  v5 = *(v0 + 4936);
  v6 = *(v0 + 4504);
  v7 = *(v0 + 4408);
  v8 = *(v0 + 4416);
  (*(v0 + 5464))(v4, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v3);
  v2(v4, 0, 1, v3);
  v132(v4, v1, v5);
  PairingExecutor.setState(_:)();
  v9 = v4;
  v10 = v7;
  v146(v9, v5);
  v11 = (*(v6 + v137) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
  v12 = *v11;
  v13 = v11[1];
  *v11 = v7;
  v11[1] = v8;

  sub_100017D5C(v7, v8);
  sub_100006654(v12, v13);

  sub_100017D5C(v7, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    v153[0] = v17;
    *v16 = 134218242;
    v22 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v23 = 0;
        goto LABEL_13;
      }

      v25 = *(v10 + 16);
      v24 = *(v10 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (!v26)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v22)
    {
      v23 = BYTE6(v8);
LABEL_13:
      *(v16 + 4) = v23;
      sub_100016590(v10, v8);
      *(v16 + 12) = 2080;
      v27 = Data.hexString.getter();
      v29 = sub_1000136BC(v27, v28, v153);

      *(v16 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "S1[%ld]: %s", v16, 0x16u);
      sub_100007BAC(v21);

      goto LABEL_14;
    }

    LODWORD(v23) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return _swift_asyncLet_finish(v17, v18, v19, v20);
    }

    v23 = v23;
    goto LABEL_13;
  }

  sub_100016590(v7, v8);
LABEL_14:

  v151 = v10;
  v30 = sub_100314604(76, qword_1013E04D0[*(v0 + 7364)]);
  if (v31 >> 60 == 15)
  {
    v32 = *(v0 + 7312);
    v33 = *(v0 + 7304);
    v34 = *(v0 + 7272);
    v35 = *(v0 + 7264);
    v36 = *(v0 + 7248);
    v37 = *(v0 + 7240);
    v135 = *(v0 + 7216);
    v138 = *(v0 + 7224);
    v141 = *(v0 + 7192);
    v144 = *(v0 + 7200);
    v147 = *(v0 + 7168);
    v149 = *(v0 + 7176);
    sub_100C29CEC();
    *(v0 + 7352) = swift_allocError();
    *v38 = 4;
    swift_willThrow();
    sub_100016590(v33, v32);

    sub_100016590(v151, v8);
    sub_100006654(v35, v34);
    sub_100006654(v37, v36);
    sub_100006654(v135, v138);
    sub_100006654(v141, v144);
    sub_100006654(v147, v149);
    sub_100007BAC((v0 + 3896));
    v19 = sub_100C17D7C;
    v17 = v0 + 2576;
    v18 = v0 + 4344;
    v39 = 6096;
  }

  else
  {
    v142 = *(v0 + 7336);
    v145 = v8;
    v40 = *(v0 + 7312);
    v41 = *(*(v0 + 4504) + *(v0 + 5128));
    v42 = *(v0 + 7304);
    v44 = *(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v43 = *(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    if (v43 >> 60 == 15)
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    }

    if (v43 >> 60 == 15)
    {
      v46 = 0xF000000000000000;
    }

    else
    {
      v46 = *(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    }

    v47 = v30;
    v48 = v31;

    sub_10002E98C(v44, v43);
    v148 = v47;
    v150 = v48;
    sub_100C1A0A8(v45, v46, v42, v40, v47, v48, v152);
    *(v0 + 7344) = v142;
    if (v142)
    {
      v143 = *(v0 + 7312);
      v139 = *(v0 + 7304);
      v130 = *(v0 + 7264);
      v133 = *(v0 + 7272);
      v126 = *(v0 + 7240);
      v128 = *(v0 + 7248);
      v49 = *(v0 + 7224);
      v50 = *(v0 + 7216);
      v51 = *(v0 + 7200);
      v52 = *(v0 + 7192);
      v53 = *(v0 + 7176);
      v54 = *(v0 + 7168);
      sub_100007BAC((v0 + 3896));
      sub_100006654(v54, v53);
      sub_100006654(v52, v51);
      sub_100006654(v50, v49);
      sub_100006654(v126, v128);
      sub_100006654(v130, v133);
      sub_100006654(v44, v43);

      sub_100006654(v148, v150);
      sub_100016590(v151, v145);

      sub_100016590(v139, v143);
      v19 = sub_100C197C0;
      v17 = v0 + 2576;
      v18 = v0 + 4344;
      v39 = 6336;
    }

    else
    {
      v55 = *(v0 + 5128);
      v56 = *(v0 + 4504);
      sub_100006654(v44, v43);

      v57 = v152[9];
      *(v0 + 3384) = v152[8];
      *(v0 + 3400) = v57;
      v58 = v152[11];
      *(v0 + 3416) = v152[10];
      *(v0 + 3432) = v58;
      v59 = v152[5];
      *(v0 + 3320) = v152[4];
      *(v0 + 3336) = v59;
      v60 = v152[7];
      *(v0 + 3352) = v152[6];
      *(v0 + 3368) = v60;
      v61 = v152[1];
      *(v0 + 3256) = v152[0];
      *(v0 + 3272) = v61;
      v62 = v152[3];
      *(v0 + 3288) = v152[2];
      *(v0 + 3304) = v62;
      SharingCircleWildAdvertisementKey.init(key:)();
      v63 = (v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
      v64 = *(v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 48);
      v66 = *(v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
      v65 = *(v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 16);
      *(v0 + 3480) = *(v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 32);
      *(v0 + 3496) = v64;
      *(v0 + 3448) = v66;
      *(v0 + 3464) = v65;
      v67 = v63[7];
      v69 = v63[4];
      v68 = v63[5];
      *(v0 + 3544) = v63[6];
      *(v0 + 3560) = v67;
      *(v0 + 3512) = v69;
      *(v0 + 3528) = v68;
      v70 = v63[11];
      v72 = v63[8];
      v71 = v63[9];
      *(v0 + 3608) = v63[10];
      *(v0 + 3624) = v70;
      *(v0 + 3576) = v72;
      *(v0 + 3592) = v71;
      v73 = *(v0 + 3256);
      v74 = *(v0 + 3272);
      v75 = *(v0 + 3304);
      v63[2] = *(v0 + 3288);
      v63[3] = v75;
      *v63 = v73;
      v63[1] = v74;
      v76 = *(v0 + 3320);
      v77 = *(v0 + 3336);
      v78 = *(v0 + 3368);
      v63[6] = *(v0 + 3352);
      v63[7] = v78;
      v63[4] = v76;
      v63[5] = v77;
      v79 = *(v0 + 3384);
      v80 = *(v0 + 3400);
      v81 = *(v0 + 3432);
      v63[10] = *(v0 + 3416);
      v63[11] = v81;
      v63[8] = v79;
      v63[9] = v80;
      sub_10000B3A8(v0 + 3448, &qword_10169F440, &unk_1013A0950);
      v82 = *(v56 + v55);
      v83 = *(v82 + 104);
      v84 = *(v82 + 112);
      *(v82 + 104) = v47;
      *(v82 + 112) = v48;

      sub_10002E98C(v47, v48);
      sub_100006654(v83, v84);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Created pairing check data", v87, 2u);
      }

      v88 = *(v0 + 7320);
      v89 = *(v0 + 5320);
      v90 = *(v0 + 5272);
      v91 = *(v0 + 5128);
      v92 = *(v0 + 4504);
      v93 = *(v0 + 4456);

      *(v92 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto) = v88;

      v94 = (v92 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
      *v94 = v90;
      v94[1] = v89;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_10001F280(v93, v0 + 4136);
      v95 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
      swift_beginAccess();
      sub_10002311C(v0 + 4136, v92 + v95, &qword_1016A12E8, &qword_1013A51D8);
      swift_endAccess();
      v96 = *(v92 + v91);
      v97 = (v96 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v98 = *(v96 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
      if (v98 >> 60 == 15)
      {
        v99 = 0;
        v100 = 0;
      }

      else
      {
        v101 = *(v0 + 5128);
        v102 = *(v0 + 4504);
        v103 = *v97;
        sub_100017D5C(*v97, *(v96 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
        static String.Encoding.utf8.getter();
        v99 = String.init(data:encoding:)();
        v100 = v104;
        sub_100006654(v103, v98);
        v96 = *(v102 + v101);
      }

      v105 = *(v96 + 96);
      v106 = 0xE000000000000000;
      if (v105)
      {
        v107 = *(v96 + 88);
        v108 = v105;
      }

      else
      {
        v107 = 0;
        v108 = 0xE000000000000000;
      }

      v120 = *(v0 + 7312);
      v119 = *(v0 + 7304);
      v122 = *(v0 + 7272);
      v121 = *(v0 + 7264);
      v124 = *(v0 + 7248);
      v123 = *(v0 + 7240);
      v127 = *(v0 + 7224);
      v125 = *(v0 + 7216);
      v131 = *(v0 + 7200);
      v129 = *(v0 + 7192);
      v136 = *(v0 + 7176);
      v134 = *(v0 + 7168);
      v140 = *(v0 + 5848);
      v109 = *(v0 + 5656);
      v110 = *(v0 + 7360);
      v111 = *(v0 + 5560);
      v112 = *(v0 + 5464);
      v113 = *(v0 + 5416);
      v114 = *(v0 + 5032);
      v115 = v100 == 0;
      if (v100)
      {
        v106 = v100;
      }

      v116 = *(v0 + 4936);
      if (v115)
      {
        v117 = 0;
      }

      else
      {
        v117 = v99;
      }

      *v114 = v117;
      v114[1] = v106;
      v114[2] = v107;
      v114[3] = v108;
      v112(v114, enum case for PairingExecutorState.InitiatePairing.result(_:), v113);
      v111(v114, 0, 1, v113);
      v109(v114, v110, v116);

      PairingExecutor.setState(_:)();
      sub_100016590(v119, v120);

      sub_100006654(v148, v150);
      sub_100016590(v151, v145);
      sub_100006654(v121, v122);
      sub_100006654(v123, v124);
      sub_100006654(v125, v127);
      sub_100006654(v129, v131);
      sub_100006654(v134, v136);
      v140(v114, v116);
      sub_100007BAC((v0 + 3896));
      v19 = sub_100C17B04;
      v17 = v0 + 2576;
      v18 = v0 + 4344;
      v39 = 6720;
    }
  }

  v20 = v0 + v39;

  return _swift_asyncLet_finish(v17, v18, v19, v20);
}

uint64_t sub_100C17C30()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C17EA8()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C17FEC()
{
  sub_1000BB27C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C181D4()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C18318()
{
  sub_100006654(*(v0 + 7168), *(v0 + 7176));

  return _swift_asyncLet_finish(v0 + 2576, v0 + 4344, sub_100C18390, v0 + 4304);
}

uint64_t sub_100C184BC()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C18600()
{
  v1 = v0[897];
  v2 = v0[896];
  sub_100006654(v0[899], v0[900]);
  sub_100006654(v2, v1);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C18694, v0 + 588);
}

uint64_t sub_100C187C0()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C18904()
{
  v1 = v0[900];
  v2 = v0[899];
  v3 = v0[897];
  v4 = v0[896];
  sub_100006654(v0[902], v0[903]);
  sub_100006654(v2, v1);
  sub_100006654(v4, v3);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C189B4, v0 + 624);
}

uint64_t sub_100C18AE0()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C18C24()
{
  v1 = v0[903];
  v2 = v0[902];
  v3 = v0[900];
  v4 = v0[899];
  v5 = v0[897];
  v6 = v0[896];
  sub_100006654(v0[905], v0[906]);
  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  sub_100006654(v6, v5);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C18CF0, v0 + 660);
}

uint64_t sub_100C18E1C()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C1908C()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C192FC()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C19440()
{
  v1 = v0[909];
  v2 = v0[908];
  v3 = v0[906];
  v4 = v0[905];
  v5 = v0[903];
  v6 = v0[902];
  v7 = v0[900];
  v8 = v0[899];
  v10 = v0[896];
  v11 = v0[897];
  sub_100016590(v0[913], v0[914]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  sub_100006654(v6, v5);
  sub_100006654(v8, v7);
  sub_100006654(v10, v11);
  sub_100007BAC(v0 + 487);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C19550, v0 + 732);
}

uint64_t sub_100C1967C()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C198EC()
{
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000BB27C(&unk_1013E03A0, v0[894]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C19A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19AE8;

  return sub_100C513F4(a2, a3);
}

uint64_t sub_100C19AE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100C19C44, 0, 0);
  }
}

uint64_t sub_100C19C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return sub_100C51BDC(a2, a3);
}

uint64_t sub_100C19D24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100C2AB64, 0, 0);
  }
}

uint64_t sub_100C19E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return sub_100C52650(a2, a3);
}

uint64_t sub_100C19F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return sub_100C528C4(a2, a3);
}

uint64_t sub_100C19FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return sub_100C52B38(a2, a3);
}

uint64_t sub_100C1A0A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = type metadata accessor for Endianness();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v98 = a2;
  if (a2 >> 60 == 15)
  {
    sub_100C29DC0();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0;
    return swift_willThrow();
  }

  v92 = a7;
  v93 = a3;
  v94 = a4;
  v16 = (v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v17 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v17 >> 60 == 15 || (v18 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v18 >> 60 == 15) || (v19 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v19 >> 60 == 15))
  {
    v20 = a1;
    sub_100017D5C(a1, v98);
LABEL_7:
    if (v16[1] >> 60 == 15)
    {
      v21 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_100A5B2CC((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[16 * v23];
      *(v24 + 4) = 1684628325;
      *(v24 + 5) = 0xE400000000000000;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v26 >= v25 >> 1)
      {
        v21 = sub_100A5B2CC((v25 > 1), v26 + 1, 1, v21);
      }

      *(v21 + 2) = v26 + 1;
      v27 = &v21[16 * v26];
      *(v27 + 4) = 0x644970696863;
      *(v27 + 5) = 0xE600000000000000;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_100A5B2CC((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      strcpy(v30 + 32, "serialNumber");
      v30[45] = 0;
      *(v30 + 23) = -5120;
    }

    if (!v7[12])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        v21 = sub_100A5B2CC((v31 > 1), v32 + 1, 1, v21);
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[16 * v32];
      strcpy(v33 + 32, "systemVersion");
      *(v33 + 23) = -4864;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v35 = *(v21 + 2);
      v34 = *(v21 + 3);
      if (v35 >= v34 >> 1)
      {
        v21 = sub_100A5B2CC((v34 > 1), v35 + 1, 1, v21);
      }

      *(v21 + 2) = v35 + 1;
      v36 = &v21[16 * v35];
      strcpy(v36 + 32, "signature(S2)");
      *(v36 + 23) = -4864;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v38 = *(v21 + 2);
      v37 = *(v21 + 3);
      if (v38 >= v37 >> 1)
      {
        v21 = sub_100A5B2CC((v37 > 1), v38 + 1, 1, v21);
      }

      *(v21 + 2) = v38 + 1;
      v39 = &v21[16 * v38];
      *(v39 + 4) = 0x7461747365747461;
      *(v39 + 5) = 0xEF293153286E6F69;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v41 = *(v21 + 2);
      v40 = *(v21 + 3);
      if (v41 >= v40 >> 1)
      {
        v21 = sub_100A5B2CC((v40 > 1), v41 + 1, 1, v21);
      }

      *(v21 + 2) = v41 + 1;
      v42 = &v21[16 * v41];
      *(v42 + 4) = 0x755079654B666572;
      *(v42 + 5) = 0xEF79654B63696C62;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5B2CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v44 = *(v21 + 2);
      v43 = *(v21 + 3);
      if (v44 >= v43 >> 1)
      {
        v21 = sub_100A5B2CC((v43 > 1), v44 + 1, 1, v21);
      }

      *(v21 + 2) = v44 + 1;
      v45 = &v21[16 * v44];
      *(v45 + 4) = 0x755079654B666572;
      *(v45 + 5) = 0xEF79654B63696C62;
    }

    v99[4] = v21;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 33;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    sub_100C29DC0();
    swift_allocError();
    *v51 = 0x20676E697373694DLL;
    v51[1] = 0xE800000000000000;
    swift_willThrow();
    return sub_100006654(v20, v98);
  }

  v52 = *v16;
  v90 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v91 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  sub_10002E98C(a1, v98);
  v89 = v52;
  sub_10002E98C(v52, v17);
  v88 = v18;
  sub_10002E98C(v91, v18);
  sub_10002E98C(v90, v19);
  static String.Encoding.utf8.getter();
  v53 = String.init(data:encoding:)();
  if (!v54)
  {
    sub_100006654(v90, v19);
    sub_100006654(v91, v18);
    sub_100006654(v52, v17);
    v20 = a1;
    goto LABEL_7;
  }

  v86 = v19;
  v87 = v17;
  if (!v7[12])
  {

    sub_100006654(v90, v19);
    sub_100006654(v91, v18);
    sub_100006654(v52, v17);
    v20 = a1;
    goto LABEL_7;
  }

  v55 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8);
  if (v55 >> 60 == 15)
  {

    sub_100006654(v90, v19);
    v56 = v91;
LABEL_65:
    sub_100006654(v56, v18);
    sub_100006654(v52, v17);
    v20 = a1;
    goto LABEL_7;
  }

  v57 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8);
  if (v57 >> 60 == 15 || *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8) >> 60 == 15 || (v58 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8), v58 >> 60 == 15))
  {

    sub_100006654(v90, v86);
    v56 = v91;
    goto LABEL_65;
  }

  v85 = v53;
  v76 = v54;
  v79 = v7;
  v81 = v7[11];
  v59 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2);
  v60 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
  v61 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
  v62 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
  v84 = v7[12];
  v63 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
  v64 = v58;

  v80 = v59;
  sub_10002E98C(v59, v55);
  v78 = v60;
  sub_10002E98C(v60, v57);
  v77 = v61;
  v83 = v63;
  sub_10002E98C(v61, v63);
  v82 = v64;
  sub_10002E98C(v62, v64);
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_1000076D4(v65, qword_10177BEA8);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v99[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_1000136BC(v85, v76, v99);
    _os_log_impl(&_mh_execute_header, v66, v67, "SerialNumber: %s", v68, 0xCu);
    sub_100007BAC(v69);
  }

  v70 = v79[13];
  v71 = v79[14];
  v79[13] = a5;
  v79[14] = a6;
  sub_100017D5C(a5, a6);
  sub_100006654(v70, v71);
  sub_100313B54(a5, a6);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v99[0]))
  {
    v72 = 0;
  }

  else
  {
    v72 = SLODWORD(v99[0]);
  }

  v73 = sub_100313A28(a5, a6);
  sub_100006654(v90, v86);
  v74 = v79[2];
  v75 = v79[3];
  sub_100017D5C(v74, v75);
  result = sub_100017D5C(v93, v94);
  *v92 = v89;
  v92[1] = v87;
  v92[2] = v91;
  v92[3] = v88;
  v92[4] = v85;
  v92[5] = v76;
  v92[6] = v72;
  v92[7] = v73;
  v92[8] = v81;
  v92[9] = v84;
  v92[10] = v80;
  v92[11] = v55;
  v92[12] = v78;
  v92[13] = v57;
  v92[14] = v77;
  v92[15] = v83;
  v92[16] = v62;
  v92[17] = v82;
  v92[18] = v74;
  v92[19] = v75;
  v92[20] = a1;
  v92[21] = v98;
  v92[22] = v93;
  v92[23] = v94;
  return result;
}

uint64_t sub_100C1ACA0()
{
  v1[781] = v0;
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[787] = v2;
  v1[793] = *(v2 - 8);
  v1[799] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock.Instant();
  v1[805] = v3;
  v1[811] = *(v3 - 8);
  v1[817] = swift_task_alloc();
  v1[823] = swift_task_alloc();
  v1[829] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v1[835] = v4;
  v1[841] = *(v4 - 8);
  v1[847] = swift_task_alloc();
  v1[853] = swift_task_alloc();
  v5 = type metadata accessor for PairingExecutorState();
  v1[859] = v5;
  v1[865] = *(v5 - 8);
  v1[871] = swift_task_alloc();

  return _swift_task_switch(sub_100C1AECC, v0, 0);
}

uint64_t sub_100C1AECC()
{
  v1 = (v0 + 3896);
  v2 = (*(v0 + 6248) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 3928) = v2[2];
  *(v0 + 3944) = v3;
  *(v0 + 3896) = v5;
  *(v0 + 3912) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 3992) = v2[6];
  *(v0 + 4008) = v6;
  *(v0 + 3960) = v8;
  *(v0 + 3976) = v7;
  v9 = v2[11];
  v11 = v2[8];
  v10 = v2[9];
  *(v0 + 4056) = v2[10];
  *(v0 + 4072) = v9;
  *(v0 + 4024) = v11;
  *(v0 + 4040) = v10;
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[3];
  *(v0 + 4888) = v2[2];
  *(v0 + 4904) = v14;
  *(v0 + 4856) = v12;
  *(v0 + 4872) = v13;
  v15 = v2[4];
  v16 = v2[5];
  v17 = v2[7];
  *(v0 + 4952) = v2[6];
  *(v0 + 4968) = v17;
  *(v0 + 4920) = v15;
  *(v0 + 4936) = v16;
  v18 = v2[8];
  v19 = v2[9];
  v20 = v2[11];
  *(v0 + 5016) = v2[10];
  *(v0 + 5032) = v20;
  *(v0 + 4984) = v18;
  *(v0 + 5000) = v19;
  if (sub_10040BA9C(v0 + 4856) == 1)
  {
    sub_100C29CEC();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
    sub_1000BB27C(0, 0);
    sub_1000BB27C(0, 0);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 6968);
    v25 = *(v0 + 6920);
    v55 = *(v0 + 6872);
    v56 = *(v0 + 6248);
    v26 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v27 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 7016) = v27;
    v28 = *(v27 - 8);
    v29 = *(v28 + 104);
    *(v0 + 7064) = v29;
    *(v0 + 7112) = (v28 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v29(v24, v26, v27);
    v30 = *(v28 + 56);
    *(v0 + 7160) = v30;
    *(v0 + 7208) = (v28 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v30(v24, 0, 1, v27);
    *(v0 + 9568) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v31 = *(v25 + 104);
    *(v0 + 7256) = v31;
    *(v0 + 7304) = (v25 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v31(v24);
    v32 = *(v0 + 4040);
    *(v0 + 4408) = *(v0 + 4024);
    *(v0 + 4424) = v32;
    v33 = *(v0 + 4072);
    *(v0 + 4440) = *(v0 + 4056);
    *(v0 + 4456) = v33;
    v34 = *(v0 + 3976);
    *(v0 + 4344) = *(v0 + 3960);
    *(v0 + 4360) = v34;
    v35 = *(v0 + 4008);
    *(v0 + 4376) = *(v0 + 3992);
    *(v0 + 4392) = v35;
    v36 = *(v0 + 3912);
    *(v0 + 4280) = *v1;
    *(v0 + 4296) = v36;
    v37 = *(v0 + 3944);
    *(v0 + 4312) = *(v0 + 3928);
    *(v0 + 4328) = v37;
    sub_100C29FA0(v0 + 4280, v0 + 4472);
    *(v0 + 7352) = type metadata accessor for AirTagPairingExecutor(0);
    *(v0 + 7400) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor, &unk_1013E0180);
    PairingExecutor.setState(_:)();
    v38 = *(v25 + 8);
    *(v0 + 7448) = v38;
    *(v0 + 7496) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v24, v55);
    v39 = *(v56 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 5920) = &type metadata for PairingCheckData;
    *(v0 + 5928) = sub_100C29FFC();
    v41 = swift_allocObject();
    *(v0 + 5896) = v41;
    v42 = *(v0 + 5000);
    v41[9] = *(v0 + 4984);
    v41[10] = v42;
    v43 = *(v0 + 5032);
    v41[11] = *(v0 + 5016);
    v41[12] = v43;
    v44 = *(v0 + 4936);
    v41[5] = *(v0 + 4920);
    v41[6] = v44;
    v45 = *(v0 + 4968);
    v41[7] = *(v0 + 4952);
    v41[8] = v45;
    v46 = *(v0 + 4872);
    v41[1] = *(v0 + 4856);
    v41[2] = v46;
    v47 = *(v0 + 4904);
    v41[3] = *(v0 + 4888);
    v41[4] = v47;
    v48 = *(v0 + 4040);
    *(v0 + 4216) = *(v0 + 4024);
    *(v0 + 4232) = v48;
    v49 = *(v0 + 4072);
    *(v0 + 4248) = *(v0 + 4056);
    *(v0 + 4264) = v49;
    v50 = *(v0 + 3976);
    *(v0 + 4152) = *(v0 + 3960);
    *(v0 + 4168) = v50;
    v51 = *(v0 + 4008);
    *(v0 + 4184) = *(v0 + 3992);
    *(v0 + 4200) = v51;
    v52 = *(v0 + 3912);
    *(v0 + 4088) = *v1;
    *(v0 + 4104) = v52;
    v53 = *(v0 + 3944);
    *(v0 + 4120) = *(v0 + 3928);
    *(v0 + 4136) = v53;
    sub_100C29FA0(v0 + 4088, v0 + 4664);
    v54 = swift_task_alloc();
    *(v0 + 7544) = v54;
    *v54 = v0;
    v54[1] = sub_100C1B3CC;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 5976, v0 + 5896, ObjectType, v39);
  }
}

uint64_t sub_100C1B3CC()
{
  v2 = *v1;
  *(*v1 + 7592) = v0;

  if (v0)
  {
    v3 = *(v2 + 6248);
    v4 = sub_100C218CC;
  }

  else
  {
    v5 = *(v2 + 6248);
    sub_100007BAC((v2 + 5896));
    v4 = sub_100C1B544;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

_BYTE *sub_100C1B544()
{
  v154 = v0;
  sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  if (swift_dynamicCast())
  {
    v149 = *(v0 + 7448);
    v151 = *(v0 + 7496);
    v143 = (v0 + 5400);
    v1 = *(v0 + 7256);
    v2 = *(v0 + 9568);
    v3 = *(v0 + 7160);
    v4 = *(v0 + 7064);
    v5 = *(v0 + 7016);
    v6 = *(v0 + 6968);
    v7 = *(v0 + 6872);
    v8 = *(v0 + 6248);
    v9 = *(v0 + 5464);
    v10 = *(v0 + 5480);
    v11 = *(v0 + 5512);
    *(v0 + 5432) = *(v0 + 5496);
    *(v0 + 5448) = v11;
    *(v0 + 5400) = v9;
    *(v0 + 5416) = v10;
    v4(v6, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v5);
    v3(v6, 0, 1, v5);
    v1(v6, v2, v7);
    PairingExecutor.setState(_:)();
    v149(v6, v7);
    v12 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
    *(v0 + 7640) = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
    v142 = v8;
    v13 = *(v8 + v12);
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    *(v0 + 5680) = &type metadata for Data;
    *(v0 + 5688) = &protocol witness table for Data;
    *(v0 + 5656) = v15;
    *(v0 + 5664) = v14;
    v16 = sub_1000035D0((v0 + 5656), &type metadata for Data);
    v17 = *v16;
    v18 = v16[1];
    v19 = v18 >> 62;
    if ((v18 >> 62) <= 1)
    {
      if (!v19)
      {
        v20 = *(v0 + 7592);
        *(v0 + 9572) = v17;
        *(v0 + 9580) = v18;
        *(v0 + 9582) = BYTE2(v18);
        *(v0 + 9583) = BYTE3(v18);
        *(v0 + 9584) = BYTE4(v18);
        *(v0 + 9585) = BYTE5(v18);
        sub_100017D5C(v15, v14);
        result = sub_100267F80((v0 + 9572), (v0 + 9572 + BYTE6(v18)), v153);
        if (v20)
        {
          return result;
        }

        goto LABEL_18;
      }

      v24 = v17;
      v23 = (v17 >> 32) - v17;
      if (v17 >> 32 >= v17)
      {
        sub_100017D5C(v15, v14);
        v30 = __DataStorage._bytes.getter();
        if (v30)
        {
          v31 = v30;
          v32 = __DataStorage._offset.getter();
          if (!__OFSUB__(v24, v32))
          {
            v28 = (v24 - v32 + v31);
            goto LABEL_32;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v19 != 2)
    {
      v33 = *(v0 + 7592);
      *(v0 + 9586) = 0;
      *(v0 + 9592) = 0;
      sub_100017D5C(v15, v14);
      result = sub_100267F80((v0 + 9586), (v0 + 9586), v153);
      if (v33)
      {
        return result;
      }

      goto LABEL_18;
    }

    v23 = *(v17 + 16);
    v24 = *(v17 + 24);
    sub_100017D5C(v15, v14);
    v25 = __DataStorage._bytes.getter();
    if (v25)
    {
      v26 = v25;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v23, v27))
      {
        goto LABEL_79;
      }

      v28 = (v23 - v27 + v26);
      v29 = __OFSUB__(v24, v23);
      v23 = v24 - v23;
      if (!v29)
      {
LABEL_32:
        v46 = *(v0 + 7592);
        v47 = __DataStorage._length.getter();
        if (v47 >= v23)
        {
          v48 = v23;
        }

        else
        {
          v48 = v47;
        }

        v49 = &v28[v48];
        if (v28)
        {
          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        result = sub_100267F80(v28, v50, v153);
        if (v46)
        {
          return result;
        }

LABEL_18:
        v34 = v153[0];
        v35 = v153[1];
        sub_100007BAC((v0 + 5656));
        *(v0 + 6216) = v34;
        *(v0 + 6224) = v35;
        Data.append(_:)();
        Data.append(_:)();
        v36 = *(v0 + 5424);
        *(v0 + 7688) = v36;
        v37 = *(v0 + 5432);
        *(v0 + 7736) = v37;
        if (v37 >> 60 == 15 || !*(v0 + 5456) || *(*(v0 + 5440) + 16) != 2)
        {
          sub_100C29CEC();
          swift_allocError();
          *v44 = 5;
          swift_willThrow();
          sub_100407FCC(v143);
          sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
LABEL_24:
          sub_100016590(*(v0 + 6216), *(v0 + 6224));
          goto LABEL_25;
        }

        v139 = *(v0 + 5440);
        v140 = v12;
        v145 = *(v0 + 7448);
        v149 = v37;
        v151 = v36;
        v38 = *(v0 + 7256);
        v39 = *(v0 + 9568);
        v40 = *(v0 + 7160);
        v41 = *(v0 + 7016);
        v42 = *(v0 + 6968);
        v43 = *(v0 + 6872);
        (*(v0 + 7064))(v42, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v41);
        v40(v42, 0, 1, v41);
        v38(v42, v39, v43);
        v24 = v149;
        v23 = v151;
        sub_100017D5C(v151, v149);
        PairingExecutor.setState(_:)();
        v145(v42, v43);
        if (qword_1016946D8 == -1)
        {
LABEL_22:
          sub_100A74FAC(qword_10177ACE0, *algn_10177ACE8, *(v0 + 6216), *(v0 + 6224), v23, v24, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
          v146 = *(v0 + 7448);
          v51 = *(v0 + 7256);
          v52 = *(v0 + 9568);
          v53 = *(v0 + 7160);
          v54 = *(v0 + 7016);
          v55 = *(v0 + 6968);
          v56 = *(v0 + 6872);
          (*(v0 + 7064))(v55, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v54);
          v53(v55, 0, 1, v54);
          v51(v55, v52, v56);
          PairingExecutor.setState(_:)();
          v146(v55, v56);
          if (qword_101694D78 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          *(v0 + 7784) = sub_1000076D4(v57, qword_1016B8828);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Signature S3 verified!", v60, 2u);
          }

          v61 = v139[2];
          if (v61)
          {
            v62 = v139[4];
            *(v0 + 7832) = v62;
            v63 = v139[5];
            *(v0 + 7880) = v63;
            if (v61 != 1)
            {
              v147 = *(v0 + 6248);
              v64 = v139[6];
              *(v0 + 7928) = v64;
              v65 = v139[7];
              *(v0 + 7976) = v65;
              *(v0 + 6232) = v62;
              *(v0 + 6240) = v63;
              sub_100017D5C(v62, v63);
              sub_100017D5C(v62, v63);
              sub_100017D5C(v64, v65);
              Data.append(_:)();
              v66 = (*(v142 + v140) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
              v67 = *v66;
              v68 = v66[1];
              *v66 = v62;
              v66[1] = v63;
              v144 = v62;
              sub_100017D5C(v62, v63);

              sub_100006654(v67, v68);

              v69 = (*(v142 + v140) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
              v70 = *v69;
              v71 = v69[1];
              *v69 = v64;
              v69[1] = v65;
              v141 = v64;
              sub_100017D5C(v64, v65);

              sub_100006654(v70, v71);

              v72 = *(v0 + 6232);
              v73 = *(v0 + 6240);
              v74 = (*(v142 + v140) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
              v75 = *v74;
              v76 = v74[1];
              *v74 = v72;
              v74[1] = v73;

              sub_100017D5C(v72, v73);
              sub_100006654(v75, v76);

              v77 = *(v142 + v140);
              v78 = *(v0 + 5408);
              *(v0 + 6200) = v78;
              v79 = *(v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
              v80 = *(v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
              *(v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed) = v78;

              sub_1000D2A70(v0 + 6200, v0 + 6184, &qword_1016A40E0, &unk_101396F30);
              sub_100006654(v79, v80);

              v81 = (*(v142 + v140) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
              v82 = *v81;
              v83 = v81[1];
              *v81 = v151;
              v81[1] = v149;
              sub_10002E98C(v151, v149);

              sub_100006654(v82, v83);

              v84 = v147 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service;
              v85 = *(v147 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
              *(v0 + 8024) = v85;
              if (v85)
              {
                v148 = *(v0 + 7448);
                v86 = *(v0 + 7256);
                v87 = *(v0 + 9568);
                v88 = *(v0 + 7160);
                v89 = *(v0 + 7064);
                v152 = v85;
                v90 = *(v0 + 7016);
                v91 = *(v0 + 6968);
                v92 = *(v0 + 6872);
                v93 = *(v0 + 6248);
                v94 = *(v84 + 8);
                *(v0 + 8072) = v94;
                v89(v91, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v90);
                v95 = v90;
                v96 = v152;
                v88(v91, 0, 1, v95);
                v86(v91, v87, v92);
                swift_unknownObjectRetain();
                PairingExecutor.setState(_:)();
                v148(v91, v92);
                v97 = swift_allocObject();
                *(v0 + 8120) = v97;
                *(v97 + 16) = v152;
                *(v97 + 24) = v94;
                v98 = *(v0 + 5416);
                *(v97 + 32) = *v143;
                *(v97 + 48) = v98;
                v99 = *(v0 + 5448);
                *(v97 + 64) = *(v0 + 5432);
                *(v97 + 80) = v99;
                swift_unknownObjectRetain();
                sub_100407F70(v143, v0 + 5528);
                swift_asyncLet_begin();
                v100 = swift_allocObject();
                *(v0 + 8168) = v100;
                v100[2] = v152;
                v100[3] = v94;
                v100[4] = v93;
                swift_unknownObjectRetain();

                swift_asyncLet_begin();
                v101 = swift_allocObject();
                *(v0 + 8216) = v101;
                *(v101 + 16) = v152;
                *(v101 + 24) = v94;
                v102 = *(v0 + 5416);
                *(v101 + 32) = *v143;
                *(v101 + 48) = v102;
                v103 = *(v0 + 5448);
                *(v101 + 64) = *(v0 + 5432);
                *(v101 + 80) = v103;
                swift_unknownObjectRetain();
                sub_100407F70(v143, v0 + 5592);
                swift_asyncLet_begin();
                v104 = swift_allocObject();
                *(v0 + 8264) = v104;
                *(v104 + 16) = v152;
                *(v104 + 24) = v94;
                v105 = *(v0 + 5416);
                *(v104 + 32) = *v143;
                *(v104 + 48) = v105;
                v106 = *(v0 + 5448);
                *(v104 + 64) = *(v0 + 5432);
                *(v104 + 80) = v106;
                swift_unknownObjectRetain();
                sub_100407F70(v143, v0 + 5336);
                swift_asyncLet_begin();
                v107 = *(v142 + v140) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts;
                v108 = *(v107 + 8);
                if (v108 >> 60 == 15)
                {
LABEL_62:
                  v121 = *(v0 + 6248);
                  v122 = swift_allocObject();
                  *(v0 + 8312) = v122;
                  v122[2] = v152;
                  v122[3] = v94;
                  v122[4] = v121;
                  swift_unknownObjectRetain();

                  swift_asyncLet_begin();
                  sub_100C52DAC();
                  v124 = v123;
                  v126 = v125;
                  *(v0 + 8360) = v123;
                  *(v0 + 8408) = v125;
                  v127 = Logger.logObject.getter();
                  v128 = static os_log_type_t.default.getter();
                  if (!os_log_type_enabled(v127, v128))
                  {

                    goto LABEL_75;
                  }

                  v150 = v94;
                  v129 = swift_slowAlloc();
                  v112 = swift_slowAlloc();
                  v130 = v112;
                  v153[0] = v112;
                  *v129 = 134218242;
                  v131 = v126 >> 62;
                  if ((v126 >> 62) > 1)
                  {
                    if (v131 != 2)
                    {
                      v132 = 0;
                      goto LABEL_74;
                    }

                    v134 = *(v124 + 16);
                    v133 = *(v124 + 24);
                    v29 = __OFSUB__(v133, v134);
                    v132 = v133 - v134;
                    if (!v29)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  else if (!v131)
                  {
                    v132 = BYTE6(v126);
LABEL_74:
                    *(v129 + 4) = v132;
                    *(v129 + 12) = 2080;
                    v135 = Data.hexString.getter();
                    v137 = sub_1000136BC(v135, v136, v153);

                    *(v129 + 14) = v137;
                    _os_log_impl(&_mh_execute_header, v127, v128, "RefTime[%ld]: %s", v129, 0x16u);
                    sub_100007BAC(v130);

                    v94 = v150;
                    v96 = v152;
LABEL_75:
                    v138 = swift_allocObject();
                    *(v0 + 8456) = v138;
                    v138[2] = v96;
                    v138[3] = v94;
                    v138[4] = v124;
                    v138[5] = v126;
                    swift_unknownObjectRetain();
                    sub_100017D5C(v124, v126);
                    swift_asyncLet_begin();
                    v112 = v0 + 1936;
                    v115 = v0 + 5776;
                    v114 = sub_100C1C624;

                    return _swift_asyncLet_get_throwing(v112, v113, v114, v115);
                  }

                  LODWORD(v132) = HIDWORD(v124) - v124;
                  if (!__OFSUB__(HIDWORD(v124), v124))
                  {
                    v132 = v132;
                    goto LABEL_74;
                  }

                  __break(1u);
LABEL_85:
                  __break(1u);
                  return _swift_asyncLet_get_throwing(v112, v113, v114, v115);
                }

                v109 = *v107;
                sub_100017D5C(*v107, *(v107 + 8));
                v110 = Logger.logObject.getter();
                v111 = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v110, v111))
                {
LABEL_61:
                  sub_100006654(v109, v108);

                  goto LABEL_62;
                }

                v112 = swift_slowAlloc();
                *v112 = 134217984;
                v116 = v108 >> 62;
                if ((v108 >> 62) > 1)
                {
                  if (v116 != 2)
                  {
                    v117 = 0;
                    goto LABEL_60;
                  }

                  v120 = *(v109 + 16);
                  v119 = *(v109 + 24);
                  v29 = __OFSUB__(v119, v120);
                  v117 = v119 - v120;
                  if (!v29)
                  {
                    goto LABEL_60;
                  }

                  __break(1u);
                }

                else if (!v116)
                {
                  v117 = BYTE6(v108);
LABEL_60:
                  *(v112 + 4) = v117;
                  _os_log_impl(&_mh_execute_header, v110, v111, "BAA length: %ld", v112, 0xCu);

                  goto LABEL_61;
                }

                LODWORD(v117) = HIDWORD(v109) - v109;
                if (__OFSUB__(HIDWORD(v109), v109))
                {
                  goto LABEL_85;
                }

                v117 = v117;
                goto LABEL_60;
              }

              sub_100C29CEC();
              swift_allocError();
              *v118 = 8;
              swift_willThrow();
              sub_100006654(v151, v149);
              sub_100407FCC(v143);
              sub_100016590(v141, v65);
              sub_100016590(v144, v63);
              sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
              sub_100016590(*(v0 + 6232), *(v0 + 6240));
              goto LABEL_24;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_81:
        swift_once();
        goto LABEL_22;
      }
    }

    else
    {
      v28 = 0;
      v29 = __OFSUB__(v24, v23);
      v23 = v24 - v23;
      if (!v29)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  sub_100C29CEC();
  swift_allocError();
  *v22 = 7;
  swift_willThrow();
  sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
LABEL_25:
  sub_1000BB27C(0, 0);
  sub_1000BB27C(0, 0);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100C1C624(uint64_t a1, uint64_t a2)
{
  *(v3 + 8504) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C21A04, v3 + 5856);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 2576, a2, sub_100C1C710, v3 + 6304);
  }
}

uint64_t sub_100C1C710(uint64_t a1, uint64_t a2)
{
  *(v3 + 8552) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C22210, v3 + 6352);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 3216, a2, sub_100C1C7FC, v3 + 6640);
  }
}

uint64_t sub_100C1C7FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 8600) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C22A1C, v3 + 6688);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 1296, a2, sub_100C1C8E8, v3 + 6976);
  }
}

uint64_t sub_100C1C8E8(uint64_t a1, uint64_t a2)
{
  *(v3 + 8648) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C23228, v3 + 7024);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 656, a2, sub_100C1C9D4, v3 + 7312);
  }
}

uint64_t sub_100C1C9D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 8696) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C23A34, v3 + 7360);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 16, a2, sub_100C1CAC0, v3 + 7600);
  }
}

uint64_t sub_100C1CAC0(uint64_t a1, uint64_t a2)
{
  *(v3 + 8744) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C2423C, v3 + 7648);
  }

  else
  {
    v4 = *(v3 + 6248);

    return _swift_task_switch(sub_100C1CBA8, v4, 0);
  }
}

uint64_t sub_100C1CBA8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote Seed, C2, S3, masked AppleID, BAA certs, and Ref time", v4, 2u);
  }

  v5 = v1[1009];
  v6 = v1[1003];

  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v7 = swift_task_alloc();
  v1[1099] = v7;
  *v7 = v1;
  v7[1] = sub_100C1CD18;

  return sub_100C53150(v6, v5);
}

uint64_t sub_100C1CD18(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 9600) = a1;
  *(v4 + 8840) = v1;

  v5 = *(v3 + 6248);
  if (v1)
  {
    v6 = sub_100C1D338;
  }

  else
  {
    v6 = sub_100C1CE80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C1CE80(uint64_t a1)
{
  v51 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 9600);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136315138;
    v7 = sub_1008CDD10(v4);
    v9 = sub_1000136BC(v7, v8, &v50);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "CCKG generation status: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v1 + 6824);
  v11 = *(v1 + 6776);
  v12 = *(v1 + 6728);
  v13 = *(v1 + 6680);
  v14 = *(v1 + 6632);
  v15 = *(v1 + 6584);
  v16 = *(v1 + 6488);
  v17 = *(v1 + 6440);
  *(*(*(v1 + 6248) + *(v1 + 7640)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus) = *(v1 + 9600);
  (*(v16 + 16))(v15, v14, v17);
  (*(v12 + 16))(v11, v10, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v1 + 6776);
  v22 = *(v1 + 6728);
  v23 = *(v1 + 6680);
  v24 = *(v1 + 6584);
  if (v20)
  {
    v25 = *(v1 + 6536);
    v26 = *(v1 + 6488);
    v27 = *(v1 + 6392);
    v48 = *(v1 + 6680);
    v28 = *(v1 + 6344);
    v45 = *(v1 + 6440);
    v46 = *(v1 + 6296);
    buf = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *buf = 136446210;
    ContinuousClock.now.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C2A554(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v43 = static Duration.description<A>(_:_:units:)();
    v44 = v19;
    v30 = v29;
    (*(v28 + 8))(v27, v46);
    v31 = *(v26 + 8);
    v31(v25, v45);
    v32 = *(v22 + 8);
    v32(v21, v48);
    v31(v24, v45);
    v33 = sub_1000136BC(v43, v30, &v50);

    *(buf + 4) = v33;
    _os_log_impl(&_mh_execute_header, v18, v44, "Accessory CCKG generation time: %{public}s", buf, 0xCu);
    sub_100007BAC(v49);
  }

  else
  {
    v34 = *(v1 + 6488);
    v35 = *(v1 + 6440);

    v32 = *(v22 + 8);
    v32(v21, v23);
    v31 = *(v34 + 8);
    v31(v24, v35);
  }

  *(v1 + 8936) = v31;
  *(v1 + 8888) = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Reading C3", v38, 2u);
  }

  v39 = *(v1 + 8072);
  v40 = *(v1 + 8024);

  v41 = swift_task_alloc();
  *(v1 + 8984) = v41;
  *v41 = v1;
  v41[1] = sub_100C1DC1C;

  return sub_100C53D88(v40, v39);
}

uint64_t sub_100C1D338()
{
  v1 = v0[853];
  v2 = v0[841];
  v3 = v0[835];
  (*(v0[811] + 8))(v0[829], v0[805]);
  (*(v2 + 8))(v1, v3);

  return _swift_asyncLet_finish(v0 + 2, v4, sub_100C1D410, v0 + 992);
}

uint64_t sub_100C1D410()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D49C, v1, 0);
}

uint64_t sub_100C1D49C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1D538, v0 + 7984);
}

uint64_t sub_100C1D538()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D5C4, v1, 0);
}

uint64_t sub_100C1D5C4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1D654, v2 + 8032);
}

uint64_t sub_100C1D654()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D6E0, v1, 0);
}

uint64_t sub_100C1D6E0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1D770, v2 + 8080);
}

uint64_t sub_100C1D770()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D7FC, v1, 0);
}

uint64_t sub_100C1D7FC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1D88C, v2 + 8128);
}

uint64_t sub_100C1D88C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D918, v1, 0);
}

uint64_t sub_100C1D918(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1D9A8, v2 + 8176);
}

uint64_t sub_100C1D9A8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1DA34, v1, 0);
}

uint64_t sub_100C1DA34()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C1DC1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[1129] = a1;
  v5[1135] = a2;
  v5[1141] = v2;

  v6 = v4[781];
  if (v2)
  {
    v7 = sub_100C1E168;
  }

  else
  {
    v7 = sub_100C1DD84;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C1DD84(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 9080);
  if (v2 >> 60 != 15)
  {
    sub_100017D5C(*(v1 + 9032), v2);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 9080);
    if (!v5)
    {
      sub_100006654(*(v1 + 9032), *(v1 + 9080));
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 134218242;
    v9 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v11 = *(*(v1 + 9032) + 16);
      v12 = *(*(v1 + 9032) + 24);
      v13 = __OFSUB__(v12, v11);
      v10 = v12 - v11;
      if (!v13)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v1 + 9086);
LABEL_14:
      v16 = *(v1 + 9080);
      v17 = *(v1 + 9032);
      *(v7 + 4) = v10;
      sub_100006654(v17, v16);
      *(v7 + 12) = 2080;
      v18 = Data.hexString.getter();
      v20 = sub_1000136BC(v18, v19, &v41);

      *(v7 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v3, v4, "Read C3[%ld]: %s", v7, 0x16u);
      sub_100007BAC(v8);

LABEL_15:

      v21 = *(v1 + 9128);
      v22 = *(v1 + 9080);
      v23 = *(v1 + 9032);
      sub_100017D5C(v23, v22);
      sub_100496254(v23, v22, &v41);
      v24 = *(v1 + 7640);
      v25 = *(v1 + 6248);
      if (v21)
      {

        v26 = *(v25 + v24);
      }

      else
      {
        v27 = v42;
        v26 = *(v25 + v24);
        if (v42 >> 60 != 15)
        {
          v38 = v41;
          v39 = *(v1 + 9080);
          v40 = *(v1 + 9032);
          *(v1 + 5760) = &type metadata for CollaborativeKeyGen.v1.C3;
          *(v1 + 5768) = sub_100101704();

          sub_100006654(v40, v39);
          *(v1 + 5736) = v38;
          *(v1 + 5744) = v27;
          goto LABEL_19;
        }
      }

      v28 = *(v1 + 9080);
      v29 = *(v1 + 9032);

      sub_100006654(v29, v28);
      *(v1 + 5768) = 0;
      *(v1 + 5736) = 0u;
      *(v1 + 5752) = 0u;
LABEL_19:
      v30 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();
      sub_10002311C(v1 + 5736, v26 + v30, &qword_101697320, &qword_10138BE90);
      swift_endAccess();

      goto LABEL_20;
    }

    v14 = *(v1 + 9032);
    v15 = *(v1 + 9036);
    v13 = __OFSUB__(v15, v14);
    LODWORD(v10) = v15 - v14;
    if (v13)
    {
      __break(1u);
    }

    v10 = v10;
    goto LABEL_14;
  }

LABEL_20:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Reading S4", v33, 2u);
  }

  v34 = *(v1 + 8072);
  v35 = *(v1 + 8024);

  v36 = swift_task_alloc();
  *(v1 + 9176) = v36;
  *v36 = v1;
  v36[1] = sub_100C1EA5C;

  return sub_100C53FFC(v35, v34);
}

uint64_t sub_100C1E168()
{
  v1 = *(v0 + 8888);
  v2 = *(v0 + 6824);
  v3 = *(v0 + 6680);
  (*(v0 + 8936))(*(v0 + 6632), *(v0 + 6440));
  v1(v2, v3);

  return _swift_asyncLet_finish(v0 + 16, v4, sub_100C1E250, v0 + 8224);
}

uint64_t sub_100C1E250()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E2DC, v1, 0);
}

uint64_t sub_100C1E2DC()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1E378, v0 + 8272);
}

uint64_t sub_100C1E378()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E404, v1, 0);
}

uint64_t sub_100C1E404(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1E494, v2 + 8320);
}

uint64_t sub_100C1E494()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E520, v1, 0);
}

uint64_t sub_100C1E520(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1E5B0, v2 + 8368);
}

uint64_t sub_100C1E5B0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E63C, v1, 0);
}

uint64_t sub_100C1E63C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1E6CC, v2 + 8416);
}

uint64_t sub_100C1E6CC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E758, v1, 0);
}

uint64_t sub_100C1E758(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1E7E8, v2 + 8464);
}

uint64_t sub_100C1E7E8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E874, v1, 0);
}

uint64_t sub_100C1E874()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C1EA5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[1153] = a1;
  v5[1159] = a2;
  v5[1165] = v2;

  v6 = v4[781];
  if (v2)
  {
    v7 = sub_100C1F1D0;
  }

  else
  {
    v7 = sub_100C1EBC4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C1EBC4()
{
  v61 = v0;
  v1 = *(v0 + 9272);
  if (v1 >> 60 != 15)
  {
    sub_100017D5C(*(v0 + 9224), v1);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 9272);
    if (!v4)
    {
      sub_100006654(*(v0 + 9224), *(v0 + 9272));
LABEL_15:

      v20 = *(v0 + 9272);
      v21 = (*(*(v0 + 6248) + *(v0 + 7640)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v22 = *v21;
      v23 = v21[1];
      *v21 = *(v0 + 9224);
      v21[1] = v20;

      sub_100006654(v22, v23);

      goto LABEL_16;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v60 = v7;
    *v6 = 134218242;
    v8 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v9 = 0;
        goto LABEL_14;
      }

      v10 = *(*(v0 + 9224) + 16);
      v11 = *(*(v0 + 9224) + 24);
      v12 = __OFSUB__(v11, v10);
      v9 = v11 - v10;
      if (!v12)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v9 = *(v0 + 9278);
LABEL_14:
      v15 = *(v0 + 9272);
      v16 = *(v0 + 9224);
      *(v6 + 4) = v9;
      sub_100006654(v16, v15);
      *(v6 + 12) = 2080;
      v17 = Data.hexString.getter();
      v19 = sub_1000136BC(v17, v18, &v60);

      *(v6 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v2, v3, "Read S4[%ld]: %s", v6, 0x16u);
      sub_100007BAC(v7);

      goto LABEL_15;
    }

    v13 = *(v0 + 9224);
    v14 = *(v0 + 9228);
    v12 = __OFSUB__(v14, v13);
    LODWORD(v9) = v14 - v13;
    if (v12)
    {
      __break(1u);
    }

    v9 = v9;
    goto LABEL_14;
  }

LABEL_16:
  v58 = *(v0 + 7448);
  v24 = *(v0 + 7256);
  v25 = *(v0 + 9568);
  v26 = *(v0 + 7160);
  v27 = *(v0 + 7016);
  v28 = *(v0 + 6968);
  v29 = *(v0 + 6872);
  v30 = *(v0 + 6248);
  (*(v0 + 7064))(v28, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v27);
  v26(v28, 0, 1, v27);
  v24(v28, v25, v29);
  PairingExecutor.setState(_:)();
  v58(v28, v29);
  v31 = *(v30 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto);
  *(v0 + 9368) = v31;
  if (v31)
  {
    v59 = *(v0 + 7640);
    v57 = *(v0 + 7448);
    v32 = *(v0 + 7256);
    v33 = *(v0 + 9568);
    v34 = *(v0 + 7160);
    v35 = *(v0 + 7016);
    v36 = *(v0 + 6968);
    v37 = *(v0 + 6872);
    v38 = *(v0 + 6248);
    (*(v0 + 7064))(v36, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v35);
    v34(v36, 0, 1, v35);
    v32(v36, v33, v37);

    PairingExecutor.setState(_:)();
    v57(v36, v37);
    v39 = *(v38 + v59);
    v40 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
    swift_beginAccess();
    sub_1000D2A70(v39 + v40, v0 + 5816, &qword_101697320, &qword_10138BE90);
    v41 = *(v0 + 5840);
    if (v41)
    {
      v42 = *(v0 + 5848);
      v43 = sub_1000035D0((v0 + 5816), *(v0 + 5840));
      v44 = *(v41 - 8);
      v45 = swift_task_alloc();
      (*(v44 + 16))(v45, v43, v41);
      sub_10000B3A8(v0 + 5816, &qword_101697320, &qword_10138BE90);
      *(v0 + 9416) = (*(*(*(v42 + 8) + 8) + 40))(v41);
      *(v0 + 9464) = v46;
      (*(v44 + 8))(v45, v41);

      v47 = sub_100C1FAC4;
    }

    else
    {
      sub_10000B3A8(v0 + 5816, &qword_101697320, &qword_10138BE90);
      v47 = sub_100C20FF8;
    }

    return _swift_task_switch(v47, 0, 0);
  }

  else
  {
    v48 = *(v0 + 8936);
    v49 = *(v0 + 8888);
    v50 = *(v0 + 6824);
    v51 = *(v0 + 6680);
    v52 = *(v0 + 6632);
    v53 = *(v0 + 6440);
    sub_100C29CEC();
    *(v0 + 9560) = swift_allocError();
    *v54 = 9;
    swift_willThrow();
    v48(v52, v53);
    v49(v50, v51);

    return _swift_asyncLet_finish(v0 + 16, v55, sub_100C210C0, v0 + 8800);
  }
}

uint64_t sub_100C1F1D0()
{
  v1 = *(v0 + 8888);
  v2 = *(v0 + 6824);
  v3 = *(v0 + 6680);
  (*(v0 + 8936))(*(v0 + 6632), *(v0 + 6440));
  v1(v2, v3);

  return _swift_asyncLet_finish(v0 + 16, v4, sub_100C1F2B8, v0 + 8512);
}

uint64_t sub_100C1F2B8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F344, v1, 0);
}

uint64_t sub_100C1F344()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1F3E0, v0 + 8560);
}

uint64_t sub_100C1F3E0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F46C, v1, 0);
}

uint64_t sub_100C1F46C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1F4FC, v2 + 8608);
}

uint64_t sub_100C1F4FC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F588, v1, 0);
}

uint64_t sub_100C1F588(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1F618, v2 + 8656);
}

uint64_t sub_100C1F618()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F6A4, v1, 0);
}

uint64_t sub_100C1F6A4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1F734, v2 + 8704);
}

uint64_t sub_100C1F734()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F7C0, v1, 0);
}

uint64_t sub_100C1F7C0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1F850, v2 + 8752);
}

uint64_t sub_100C1F850()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F8DC, v1, 0);
}

uint64_t sub_100C1F8DC()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C1FAC4()
{
  v1 = *(v0 + 9464);
  v2 = *(v0 + 9416);
  v3 = *(v0 + 9368);
  v4 = *(v0 + 9320);
  sub_100017D5C(v2, v1);
  v5 = CCCKGGetOpeningSize();

  sub_1003F141C(v2, v1, v3, v5, v0 + 5256);
  if (v4)
  {
    v6 = *(v0 + 9464);
    v7 = *(v0 + 9416);

    sub_100C2A500();
    v8 = swift_allocError();
    *v9 = 13;
    swift_willThrow();
    sub_100016590(v7, v6);
    sub_100016590(v7, v6);
    *(v0 + 9512) = v8;
    v10 = *(v0 + 6248);
    v11 = sub_100C206E4;
  }

  else
  {
    v12 = *(v0 + 9464);
    v13 = *(v0 + 9416);
    v14 = *(v0 + 6248);
    sub_100016590(v13, v12);
    sub_100016590(v13, v12);
    v15 = *(v0 + 5304);
    *(v0 + 5208) = *(v0 + 5288);
    *(v0 + 5224) = v15;
    *(v0 + 5240) = *(v0 + 5320);
    v16 = *(v0 + 5272);
    *(v0 + 5176) = *(v0 + 5256);
    *(v0 + 5192) = v16;
    v11 = sub_100C1FC90;
    v10 = v14;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C1FC90()
{
  v24 = *(v0 + 8936);
  v25 = *(v0 + 8888);
  v26 = *(v0 + 7640);
  v23 = *(v0 + 7448);
  v18 = *(v0 + 7256);
  v1 = *(v0 + 9568);
  v2 = *(v0 + 7160);
  v3 = *(v0 + 7016);
  v4 = *(v0 + 6968);
  v5 = *(v0 + 6872);
  v22 = *(v0 + 6824);
  v21 = *(v0 + 6680);
  v19 = *(v0 + 6440);
  v20 = *(v0 + 6632);
  v6 = *(v0 + 6248);
  (*(v0 + 7064))(v4, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v3);
  v2(v4, 0, 1, v3);
  v18(v4, v1, v5);
  PairingExecutor.setState(_:)();

  v23(v4, v5);
  v24(v20, v19);
  v25(v22, v21);
  v7 = *(v6 + v26);
  v8 = v6 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16);
  *(v0 + 5048) = *(v6 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo);
  *(v0 + 5064) = v9;
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v0 + 5128) = *(v8 + 80);
  *(v0 + 5096) = v11;
  *(v0 + 5112) = v12;
  *(v0 + 5080) = v10;
  v13 = *(v0 + 5240);
  v15 = *(v0 + 5192);
  v14 = *(v0 + 5208);
  *(v8 + 48) = *(v0 + 5224);
  *(v8 + 64) = v13;
  *(v8 + 16) = v15;
  *(v8 + 32) = v14;
  *v8 = *(v0 + 5176);
  *(v8 + 80) = v7;

  sub_10000B3A8(v0 + 5048, &qword_1016A1320, &unk_1013E02C0);

  return _swift_asyncLet_finish(v0 + 16, v16, sub_100C1FEE8, v0 + 9472);
}

uint64_t sub_100C1FEE8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1FF74, v1, 0);
}

uint64_t sub_100C1FF74()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C20010, v0 + 5136);
}

uint64_t sub_100C20010()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2009C, v1, 0);
}

uint64_t sub_100C2009C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C2012C, v2 + 9088);
}

uint64_t sub_100C2012C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C201B8, v1, 0);
}

uint64_t sub_100C201B8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C20248, v2 + 5696);
}

uint64_t sub_100C20248()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C202D4, v1, 0);
}

uint64_t sub_100C202D4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C20364, v2 + 9520);
}

uint64_t sub_100C20364()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C203F0, v1, 0);
}

uint64_t sub_100C203F0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C20480, v2 + 9424);
}

uint64_t sub_100C20480()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2050C, v1, 0);
}

uint64_t sub_100C2050C()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C206E4()
{
  v1 = v0[1117];
  v2 = v0[1111];
  v3 = v0[853];
  v4 = v0[835];
  v5 = v0[829];
  v6 = v0[805];

  v1(v5, v6);
  v2(v3, v4);

  return _swift_asyncLet_finish(v0 + 2, v7, sub_100C207EC, v0 + 1142);
}

uint64_t sub_100C207EC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20878, v1, 0);
}

uint64_t sub_100C20878()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C20914, v0 + 9184);
}

uint64_t sub_100C20914()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C209A0, v1, 0);
}

uint64_t sub_100C209A0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C20A30, v2 + 9232);
}

uint64_t sub_100C20A30()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20ABC, v1, 0);
}

uint64_t sub_100C20ABC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C20B4C, v2 + 9280);
}

uint64_t sub_100C20B4C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20BD8, v1, 0);
}

uint64_t sub_100C20BD8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C20C68, v2 + 9328);
}

uint64_t sub_100C20C68()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20CF4, v1, 0);
}

uint64_t sub_100C20CF4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C20D84, v2 + 9376);
}

uint64_t sub_100C20D84()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20E10, v1, 0);
}

uint64_t sub_100C20E10()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C20FF8(uint64_t a1)
{
  sub_100C2A500();
  v2 = swift_allocError();
  *v3 = 6;
  swift_willThrow();
  *(v1 + 9512) = v2;
  v4 = *(v1 + 6248);

  return _swift_task_switch(sub_100C206E4, v4, 0);
}

uint64_t sub_100C210C0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2114C, v1, 0);
}

uint64_t sub_100C2114C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C211E8, v0 + 8848);
}

uint64_t sub_100C211E8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21274, v1, 0);
}

uint64_t sub_100C21274(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C21304, v2 + 8896);
}

uint64_t sub_100C21304()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21390, v1, 0);
}

uint64_t sub_100C21390(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C21420, v2 + 8944);
}

uint64_t sub_100C21420()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C214AC, v1, 0);
}

uint64_t sub_100C214AC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C2153C, v2 + 8992);
}

uint64_t sub_100C2153C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C215C8, v1, 0);
}

uint64_t sub_100C215C8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C21658, v2 + 9040);
}

uint64_t sub_100C21658()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C216E4, v1, 0);
}

uint64_t sub_100C216E4()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C218CC()
{
  sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
  sub_100007BAC((v0 + 5896));
  sub_1000BB27C(0, 0);
  sub_1000BB27C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C21A04()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21A90, v1, 0);
}

uint64_t sub_100C21A90()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C21B2C, v0 + 5936);
}

uint64_t sub_100C21B2C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21BB8, v1, 0);
}

uint64_t sub_100C21BB8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C21C48, v2 + 6016);
}

uint64_t sub_100C21C48()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21CD4, v1, 0);
}

uint64_t sub_100C21CD4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C21D64, v2 + 6080);
}

uint64_t sub_100C21D64()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21DF0, v1, 0);
}

uint64_t sub_100C21DF0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C21E80, v2 + 6144);
}

uint64_t sub_100C21E80()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21F0C, v1, 0);
}

uint64_t sub_100C21F0C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C21F9C, v2 + 6256);
}

uint64_t sub_100C21F9C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22028, v1, 0);
}

uint64_t sub_100C22028()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C22210()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2229C, v1, 0);
}

uint64_t sub_100C2229C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C22338, v0 + 6400);
}

uint64_t sub_100C22338()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C223C4, v1, 0);
}

uint64_t sub_100C223C4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C22454, v2 + 6448);
}

uint64_t sub_100C22454()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C224E0, v1, 0);
}

uint64_t sub_100C224E0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C22570, v2 + 6496);
}

uint64_t sub_100C22570()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C225FC, v1, 0);
}

uint64_t sub_100C225FC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C2268C, v2 + 6544);
}

uint64_t sub_100C2268C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22718, v1, 0);
}

uint64_t sub_100C22718(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C227A8, v2 + 6592);
}

uint64_t sub_100C227A8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22834, v1, 0);
}

uint64_t sub_100C22834()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C22A1C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22AA8, v1, 0);
}

uint64_t sub_100C22AA8()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C22B44, v0 + 6736);
}

uint64_t sub_100C22B44()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22BD0, v1, 0);
}

uint64_t sub_100C22BD0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C22C60, v2 + 6784);
}

uint64_t sub_100C22C60()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22CEC, v1, 0);
}

uint64_t sub_100C22CEC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C22D7C, v2 + 6832);
}

uint64_t sub_100C22D7C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22E08, v1, 0);
}

uint64_t sub_100C22E08(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C22E98, v2 + 6880);
}

uint64_t sub_100C22E98()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22F24, v1, 0);
}

uint64_t sub_100C22F24(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C22FB4, v2 + 6928);
}

uint64_t sub_100C22FB4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23040, v1, 0);
}

uint64_t sub_100C23040()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C23228()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C232B4, v1, 0);
}

uint64_t sub_100C232B4()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C23350, v0 + 7072);
}

uint64_t sub_100C23350()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C233DC, v1, 0);
}

uint64_t sub_100C233DC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C2346C, v2 + 7120);
}

uint64_t sub_100C2346C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C234F8, v1, 0);
}

uint64_t sub_100C234F8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C23588, v2 + 7168);
}

uint64_t sub_100C23588()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23614, v1, 0);
}

uint64_t sub_100C23614(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C236A4, v2 + 7216);
}

uint64_t sub_100C236A4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23730, v1, 0);
}

uint64_t sub_100C23730(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C237C0, v2 + 7264);
}

uint64_t sub_100C237C0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2384C, v1, 0);
}

uint64_t sub_100C2384C()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C23A34()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23AC0, v1, 0);
}

uint64_t sub_100C23AC0()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C23B5C, v0 + 7408);
}

uint64_t sub_100C23B5C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23BE8, v1, 0);
}

uint64_t sub_100C23BE8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C23C74, v2 + 3856);
}

uint64_t sub_100C23C74()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23D00, v1, 0);
}

uint64_t sub_100C23D00(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C23D90, v2 + 7456);
}

uint64_t sub_100C23D90()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23E1C, v1, 0);
}

uint64_t sub_100C23E1C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C23EAC, v2 + 7504);
}

uint64_t sub_100C23EAC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23F38, v1, 0);
}

uint64_t sub_100C23F38(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C23FC8, v2 + 7552);
}

uint64_t sub_100C23FC8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24054, v1, 0);
}

uint64_t sub_100C24054()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C2423C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C242C8, v1, 0);
}

uint64_t sub_100C242C8()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C24364, v0 + 7696);
}

uint64_t sub_100C24364()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C243F0, v1, 0);
}

uint64_t sub_100C243F0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C24480, v2 + 7744);
}

uint64_t sub_100C24480()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2450C, v1, 0);
}

uint64_t sub_100C2450C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C2459C, v2 + 7792);
}

uint64_t sub_100C2459C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24628, v1, 0);
}

uint64_t sub_100C24628(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C246B8, v2 + 7840);
}

uint64_t sub_100C246B8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24744, v1, 0);
}

uint64_t sub_100C24744(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C247D4, v2 + 7888);
}

uint64_t sub_100C247D4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24860, v1, 0);
}

uint64_t sub_100C24860()
{
  v1 = v0[997];
  v2 = v0[991];
  v3 = v0[985];
  v4 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v5 = v0[1057];
  sub_1000BB27C(&unk_1013E0330, v0[1039]);
  sub_1000BB27C(&unk_1013E0340, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C24A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return sub_100C54270(a2, a3, v7, v8);
}

uint64_t sub_100C24B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_100C24B34, a4, 0);
}

uint64_t sub_100C24B34()
{
  *(v0 + 104) = *(*(v0 + 96) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  return _swift_task_switch(sub_100C24BB0, 0, 0);
}

uint64_t sub_100C24BB0()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(v1 + v2, (v0 + 2), &qword_101697378, &unk_101391940);

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100C24CA8;
  v5 = v0[10];
  v4 = v0[11];

  return sub_100C54A14(v5, v4, (v0 + 2));
}

uint64_t sub_100C24CA8()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  sub_10000B3A8(v2 + 16, &qword_101697378, &unk_101391940);
  if (v0)
  {

    return _swift_task_switch(sub_100C24DF4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100C24E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(a4 + 32);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return sub_100C551B8(a2, a3, v7, v8);
}

uint64_t sub_100C24ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v8 = *(a4 + 56);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return sub_100C557D8(a2, a3, v7, v8);
}

uint64_t sub_100C24F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_100C24FC0, a4, 0);
}

uint64_t sub_100C24FC0()
{
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  return _swift_task_switch(sub_100C2503C, 0, 0);
}

uint64_t sub_100C2503C()
{
  v1 = (v0[5] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  v0[7] = v3;
  sub_10002E98C(v2, v3);

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100C2512C;
  v6 = v0[2];
  v5 = v0[3];

  return sub_100C56044(v6, v5, v2, v3);
}

uint64_t sub_100C2512C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C25268, 0, 0);
  }

  else
  {
    sub_100006654(v2[6], v2[7]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100C25268()
{
  sub_100006654(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100C252CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return sub_100C56850(a2, a3, a4, a5);
}

uint64_t sub_100C25398(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[95] = *v1;
  v3 = type metadata accessor for UUID();
  v2[96] = v3;
  v2[97] = *(v3 - 8);
  v2[98] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[99] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[100] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v2[101] = v4;
  v5 = *(v4 - 8);
  v2[102] = v5;
  v2[103] = *(v5 + 64);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();

  return _swift_task_switch(sub_100C25570, v1, 0);
}

uint64_t sub_100C25570(uint64_t a1)
{
  v2 = *(v1 + 752);
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16);
  *(v1 + 104) = *(v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo);
  *(v1 + 120) = v4;
  v6 = *(v3 + 48);
  v5 = *(v3 + 64);
  v7 = *(v3 + 80);
  *(v1 + 136) = *(v3 + 32);
  *(v1 + 184) = v7;
  *(v1 + 168) = v5;
  *(v1 + 152) = v6;
  v8 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v8;
  v10 = *(v3 + 48);
  v9 = *(v3 + 64);
  v11 = *(v3 + 80);
  v12 = *(v3 + 32);
  *(v1 + 96) = v11;
  *(v1 + 64) = v10;
  *(v1 + 80) = v9;
  *(v1 + 48) = v12;
  v13 = v11;
  if (v11)
  {
    v14 = (v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
    *(v1 + 856) = *v14;
    v15 = v14[1];
    *(v1 + 864) = v15;
    ObjectType = swift_getObjectType();
    *(v1 + 872) = ObjectType;
    *(v1 + 424) = &type metadata for InitialPairingInfo;
    *(v1 + 432) = sub_10048E614();
    v17 = swift_allocObject();
    *(v1 + 400) = v17;
    v17[1] = *v3;
    v18 = *(v3 + 64);
    v20 = *(v3 + 16);
    v19 = *(v3 + 32);
    v17[4] = *(v3 + 48);
    v17[5] = v18;
    v17[2] = v20;
    v17[3] = v19;
    *(v1 + 464) = type metadata accessor for AccessoryPairingInfo(0);
    *(v1 + 472) = sub_100C2A554(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo, &unk_1013E0270);
    *(v1 + 440) = v13;
    sub_1000D2A70(v1 + 104, v1 + 192, &qword_1016A1320, &unk_1013E02C0);
    sub_100102538(v1 + 16, v1 + 280);

    v21 = swift_task_alloc();
    *(v1 + 880) = v21;
    *v21 = v1;
    v21[1] = sub_100C2582C;

    return dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)(v1 + 360, v1 + 400, v1 + 440, ObjectType, v15);
  }

  else
  {
    sub_100C29CEC();
    swift_allocError();
    *v22 = 10;
    swift_willThrow();

    v23 = *(v1 + 8);

    return v23();
  }
}

uint64_t sub_100C2582C()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = v2[94];
    v4 = sub_100C26950;
  }

  else
  {
    v5 = v2[94];
    sub_100007BAC(v2 + 55);
    sub_100007BAC(v2 + 50);
    v4 = sub_100C2595C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C2595C()
{
  v32 = v0;
  v1 = v0[102];
  sub_1000D2A70((v0 + 45), (v0 + 60), &qword_1016B8AD0, &unk_1013E1320);
  v2 = (v1 + 56);
  if (v0[63])
  {
    v3 = v0[102];
    v4 = v0[101];
    v5 = v0[100];
    sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
    v6 = swift_dynamicCast();
    (*v2)(v5, v6 ^ 1u, 1, v4);
    if ((*(v3 + 48))(v5, 1, v4) != 1)
    {
      sub_100132D2C(v0[100], v0[106]);
      if (qword_101694D78 != -1)
      {
        swift_once();
      }

      v7 = v0[106];
      v8 = v0[105];
      v9 = type metadata accessor for Logger();
      v0[112] = sub_1000076D4(v9, qword_1016B8828);
      sub_100A51D68(v7, v8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[105];
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31 = v15;
        *v14 = 141558275;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2081;
        sub_100C2A554(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_100650DC8(v13);
        v19 = sub_1000136BC(v16, v18, &v31);

        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Generated new beacon %{private,mask.hash}s", v14, 0x16u);
        sub_100007BAC(v15);
      }

      else
      {

        sub_100650DC8(v13);
      }

      v30 = swift_task_alloc();
      v0[113] = v30;
      *v30 = v0;
      v30[1] = sub_100C25EBC;

      return daemon.getter();
    }
  }

  else
  {
    v20 = v0[101];
    v21 = v0[100];
    sub_10000B3A8((v0 + 60), &qword_1016B8AD0, &unk_1013E1320);
    (*v2)(v21, 1, 1, v20);
  }

  sub_10000B3A8(v0[100], &unk_1016A9A20, &qword_10138B280);
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_1016B8828);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Unable to generate new beacon", v25, 2u);
  }

  v26 = type metadata accessor for PairingInfoStoreError();
  sub_100C2A554(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError, &protocol conformance descriptor for PairingInfoStoreError);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v26);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);

  v28 = v0[1];

  return v28();
}

uint64_t sub_100C25EBC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 912) = a1;

  v3 = swift_task_alloc();
  *(v2 + 920) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100C2A554(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C2A554(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100C26098;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C26098(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 928) = a1;
  *(v4 + 936) = v1;

  v5 = *(v3 + 752);

  if (v1)
  {
    v6 = sub_100C26A28;
  }

  else
  {
    v6 = sub_100C261EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C261EC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 848);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 792);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_100A51D68(v2, v3);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  sub_100132D2C(v3, v11 + v10);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  sub_10025EDD4(0, 0, v6, &unk_1013E02E0, v11);

  v12 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_1000D2A70(v8 + v12, v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  if (*(v0 + 584))
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    sub_10000A748((v0 + 560), v0 + 520);
    *(v0 + 664) = v14;
    *(v0 + 672) = sub_100C2A554(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord, &unk_1013DDF44);
    v15 = sub_1000280DC((v0 + 640));
    sub_100A51D68(v13, v15);
    v16 = swift_task_alloc();
    *(v0 + 944) = v16;
    *v16 = v0;
    v16[1] = sub_100C26558;
    v17 = *(v0 + 872);
    v18 = *(v0 + 864);

    return dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)(v0 + 600, v0 + 640, v0 + 520, v17, v18);
  }

  else
  {
    v19 = *(v0 + 848);
    sub_10000B3A8(v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
    sub_100C29CEC();
    swift_allocError();
    *v20 = 11;
    swift_willThrow();
    sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);

    sub_100650DC8(v19);
    sub_10000B3A8(v0 + 360, &qword_1016B8AD0, &unk_1013E1320);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100C26558()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);
    v4 = sub_100C26B14;
  }

  else
  {
    v5 = *(v2 + 752);
    sub_100007BAC((v2 + 640));
    v4 = sub_100C26680;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C26680()
{
  v16 = v0;
  sub_10001F280((v0 + 75), (v0 + 85));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[98];
    v4 = v0[97];
    v14 = v0[96];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    sub_1000035D0(v0 + 85, v0[88]);
    dispatch thunk of BeaconRecordType.identifier.getter();
    sub_100C2A554(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    (*(v4 + 8))(v3, v14);
    sub_100007BAC(v0 + 85);
    v10 = sub_1000136BC(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saved new record %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {

    sub_100007BAC(v0 + 85);
  }

  v11 = v0[106];
  sub_1000035D0(v0 + 75, v0[78]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  sub_100007BAC(v0 + 65);
  sub_100650DC8(v11);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 75);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C26950()
{
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 50);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C26A28()
{
  v1 = *(v0 + 848);
  sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
  sub_100650DC8(v1);
  sub_10000B3A8(v0 + 360, &qword_1016B8AD0, &unk_1013E1320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C26B14()
{
  v1 = v0[106];
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  sub_100007BAC(v0 + 65);
  sub_100650DC8(v1);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 80);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C26C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C26C3C, 0, 0);
}

uint64_t sub_100C26C3C()
{
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending NFC tap info to server", v4, 2u);
  }

  v5 = *(v0 + 16);

  return _swift_task_switch(sub_100C26D60, v5, 0);
}

uint64_t sub_100C26D60()
{
  v1 = sub_100C2A554(&qword_1016B7F28, type metadata accessor for BeaconStoreActor, &unk_1013EB218);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v5 = *(v0 + 16);
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100C26E94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v5, v1, 0xD00000000000001CLL, 0x800000010136F670, sub_100C29F98, v2, &type metadata for () + 1);
}

uint64_t sub_100C26E94()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100C26FBC;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_100014748;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C26FBC()
{

  return _swift_task_switch(sub_100C27024, 0, 0);
}

uint64_t sub_100C27024()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to send NFC tap info due to %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100C27184()
{
  v1[10] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100C27244, v0, 0);
}

uint64_t sub_100C27244(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service;
  v4 = *(v2 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
  *(v1 + 112) = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    v6 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
    swift_beginAccess();
    sub_1000D2A70(v2 + v6, v1 + 16, &qword_1016A12E8, &qword_1013A51D8);
    if (*(v1 + 40))
    {
      v8 = *(v1 + 96);
      v7 = *(v1 + 104);
      v9 = *(v1 + 88);
      swift_unknownObjectRetain();
      sub_10000B3A8(v1 + 16, &qword_1016A12E8, &qword_1013A51D8);
      v10 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
      v11 = type metadata accessor for PairingExecutorState.PairingComplete();
      *(v1 + 120) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 104);
      *(v1 + 128) = v13;
      *(v1 + 136) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v13(v7, v10, v11);
      v14 = *(v12 + 56);
      *(v1 + 144) = v14;
      *(v1 + 152) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v14(v7, 0, 1, v11);
      *(v1 + 224) = enum case for PairingExecutorState.pairingComplete(_:);
      v15 = *(v8 + 104);
      *(v1 + 160) = v15;
      *(v1 + 168) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v15(v7);
      *(v1 + 176) = type metadata accessor for AirTagPairingExecutor(0);
      *(v1 + 184) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor, &unk_1013E0180);
      PairingExecutor.setState(_:)();
      v16 = *(v8 + 8);
      *(v1 + 192) = v16;
      *(v1 + 200) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v7, v9);
      v17 = swift_task_alloc();
      *(v1 + 208) = v17;
      *v17 = v1;
      v17[1] = sub_100C275B8;

      return sub_100C56DD0(v4, v5);
    }

    swift_unknownObjectRetain();
    sub_10000B3A8(v1 + 16, &qword_1016A12E8, &qword_1013A51D8);
    sub_100C29CEC();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100C29CEC();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
  }

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_100C275B8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_100C278B8;
  }

  else
  {
    v4 = sub_100C276E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C276E4()
{
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote Success Receipt", v4, 2u);
  }

  v14 = *(v0 + 192);
  v12 = *(v0 + 224);
  v13 = *(v0 + 160);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 88);

  v6(v8, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v7);
  v5(v8, 0, 1, v7);
  v13(v8, v12, v9);
  PairingExecutor.setState(_:)();
  swift_unknownObjectRelease();
  v14(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100C278B8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C27944()
{
  v9 = v0;
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[51] = sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[52] = *(v0[50] + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_100C27B1C;

  return sub_100C280D8((v0 + 2));
}

uint64_t sub_100C27B1C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = sub_100C28008;
  }

  else
  {
    v5 = *(v2 + 400);

    v4 = sub_100C27C44;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C27C44()
{
  v1 = *(*(v0 + 400) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 384) = &type metadata for PairingAckData;
  *(v0 + 392) = sub_100C29C44();
  v3 = swift_allocObject();
  *(v0 + 360) = v3;
  v4 = *(v0 + 128);
  *(v3 + 112) = *(v0 + 112);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v0 + 144);
  *(v3 + 160) = *(v0 + 160);
  v5 = *(v0 + 64);
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = v5;
  v6 = *(v0 + 96);
  *(v3 + 80) = *(v0 + 80);
  *(v3 + 96) = v6;
  v7 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v7;
  sub_100407B48(v0 + 16, v0 + 168);
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = sub_100C27D78;

  return dispatch thunk of PairingValidator.ack(_:)(v0 + 320, v0 + 360, ObjectType, v1);
}

uint64_t sub_100C27D78()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = sub_100C2806C;
  }

  else
  {
    v5 = *(v2 + 400);
    sub_100007BAC((v2 + 360));
    v4 = sub_100C27EA0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C27EA0()
{
  sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
  if (!swift_dynamicCast())
  {
    v5 = 7;
LABEL_8:
    sub_100C29CEC();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();
    sub_100C29C98(v0 + 16);
    v4 = *(v0 + 8);
    goto LABEL_9;
  }

  if (*(v0 + 456) != 1)
  {
    v5 = 12;
    goto LABEL_8;
  }

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pairing ack completed successfully!", v3, 2u);
  }

  sub_100C29C98(v0 + 16);

  v4 = *(v0 + 8);
LABEL_9:

  return v4();
}

uint64_t sub_100C28008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C2806C()
{
  sub_100C29C98(v0 + 16);
  sub_100007BAC((v0 + 360));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C280D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for Endianness();
  v2[5] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C28194, 0, 0);
}

uint64_t sub_100C28194()
{
  v1 = *(v0 + 32);
  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v3 >> 60 == 15)
  {
LABEL_2:
    v4 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100A5B2CC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 1684628325;
    *(v7 + 5) = 0xE400000000000000;
    goto LABEL_9;
  }

  v8 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v9 >> 60 != 15)
  {
    v10 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v11 = v10[1];
    if (v11 >> 60 == 15)
    {
      v4 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v45 = *v8;
    v46 = *v10;
    v84 = *v2;
    sub_10002E98C(*v2, v3);
    v83 = v45;
    v47 = v45;
    v48 = v46;
    sub_10002E98C(v47, v9);
    sub_10002E98C(v46, v11);
    static String.Encoding.utf8.getter();
    v49 = String.init(data:encoding:)();
    if (v50)
    {
      v51 = *(v0 + 32);
      if (v51[12])
      {
        v52 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
        if (v52 >> 60 != 15 && *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8) >> 60 != 15 && *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8) >> 60 != 15 && *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8) >> 60 != 15 && v51[14] >> 60 != 15)
        {
          v78 = v51[11];
          v82 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
          v81 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
          v79 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
          v80 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
          v53 = *(v0 + 24);
          v65 = v51[14];
          v66 = v51[13];
          v75 = v49;
          v76 = v50;
          v77 = v51[12];
          v54 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
          v55 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8);
          v73 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8);
          v69 = *(v0 + 32);

          sub_10002E98C(v82, v52);
          sub_10002E98C(v81, v54);
          sub_10002E98C(v79, v55);
          sub_10002E98C(v80, v73);
          sub_10002E98C(v66, v65);
          sub_100313B54(v66, v65);
          v74 = v52;
          static Endianness.current.getter();
          sub_10012BF24();
          FixedWidthInteger.init(data:ofEndianness:)();
          v56 = *(v0 + 56);
          v57 = *(v0 + 60);
          v72 = sub_100313A28(v66, v65);
          v58 = *(v69 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus);
          v59 = *(v69 + 16);
          v60 = *(v69 + 24);
          v70 = v60;
          v71 = v59;
          if (v57)
          {
            v61 = 0;
          }

          else
          {
            v61 = v56;
          }

          *(v0 + 62) = v58;
          sub_100017D5C(v59, v60);
          sub_100C29E14();
          v62 = FixedWidthInteger.data.getter();
          v67 = v63;
          v68 = v62;
          sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_10138BBE0;
          *(v64 + 32) = v79;
          *(v64 + 40) = v55;
          *(v64 + 48) = v80;
          *(v64 + 56) = v73;
          sub_100006654(v48, v11);
          sub_100006654(v66, v65);
          *v53 = v84;
          v53[1] = v3;
          v53[2] = v83;
          v53[3] = v9;
          v53[4] = v75;
          v53[5] = v76;
          v53[6] = v61;
          v53[7] = v72;
          v53[8] = v78;
          v53[9] = v77;
          v53[10] = v82;
          v53[11] = v74;
          v53[12] = v71;
          v53[13] = v70;
          v53[14] = v81;
          v53[15] = v54;
          v53[16] = v68;
          v53[17] = v67;
          v53[18] = v64;

          v43 = *(v0 + 8);
          goto LABEL_58;
        }
      }
    }

    sub_100006654(v46, v11);
    sub_100006654(v83, v9);
    sub_100006654(v84, v3);
    if (v2[1] >> 60 == 15)
    {
      goto LABEL_2;
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_9:
  v12 = *(v0 + 32);
  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v14 = *(v4 + 2);
    v13 = *(v4 + 3);
    if (v14 >= v13 >> 1)
    {
      v4 = sub_100A5B2CC((v13 > 1), v14 + 1, 1, v4);
    }

    *(v4 + 2) = v14 + 1;
    v15 = &v4[16 * v14];
    *(v15 + 4) = 0x644970696863;
    *(v15 + 5) = 0xE600000000000000;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v17 = *(v4 + 2);
    v16 = *(v4 + 3);
    if (v17 >= v16 >> 1)
    {
      v4 = sub_100A5B2CC((v16 > 1), v17 + 1, 1, v4);
    }

    *(v4 + 2) = v17 + 1;
    v18 = &v4[16 * v17];
    strcpy(v18 + 32, "serialNumber");
    v18[45] = 0;
    *(v18 + 23) = -5120;
    v12 = *(v0 + 32);
  }

  if (!*(v12 + 96))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_100A5B2CC((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[16 * v20];
    strcpy(v21 + 32, "systemVersion");
    *(v21 + 23) = -4864;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v23 = *(v4 + 2);
    v22 = *(v4 + 3);
    if (v23 >= v22 >> 1)
    {
      v4 = sub_100A5B2CC((v22 > 1), v23 + 1, 1, v4);
    }

    *(v4 + 2) = v23 + 1;
    v24 = &v4[16 * v23];
    strcpy(v24 + 32, "signature(S4)");
    *(v24 + 23) = -4864;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v26 = *(v4 + 2);
    v25 = *(v4 + 3);
    if (v26 >= v25 >> 1)
    {
      v4 = sub_100A5B2CC((v25 > 1), v26 + 1, 1, v4);
    }

    *(v4 + 2) = v26 + 1;
    v27 = &v4[16 * v26];
    *(v27 + 4) = 0x6553726576726573;
    *(v27 + 5) = 0xEA00000000006465;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v29 = *(v4 + 2);
    v28 = *(v4 + 3);
    if (v29 >= v28 >> 1)
    {
      v4 = sub_100A5B2CC((v28 > 1), v29 + 1, 1, v4);
    }

    *(v4 + 2) = v29 + 1;
    v30 = &v4[16 * v29];
    *(v30 + 4) = 0x436661654C616162;
    *(v30 + 5) = 0xEB00000000747265;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v32 = *(v4 + 2);
    v31 = *(v4 + 3);
    if (v32 >= v31 >> 1)
    {
      v4 = sub_100A5B2CC((v31 > 1), v32 + 1, 1, v4);
    }

    *(v4 + 2) = v32 + 1;
    v33 = &v4[16 * v32];
    *(v33 + 4) = 0xD000000000000013;
    *(v33 + 5) = 0x800000010136F630;
    v12 = *(v0 + 32);
  }

  if (*(v12 + 112) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v35 = *(v4 + 2);
    v34 = *(v4 + 3);
    if (v35 >= v34 >> 1)
    {
      v4 = sub_100A5B2CC((v34 > 1), v35 + 1, 1, v4);
    }

    *(v4 + 2) = v35 + 1;
    v36 = &v4[16 * v35];
    *(v36 + 4) = 0x44746375646F7270;
    *(v36 + 5) = 0xEB00000000617461;
  }

  *(v0 + 16) = v4;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 33;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  sub_100C29DC0();
  swift_allocError();
  *v42 = 0x20676E697373694DLL;
  v42[1] = 0xE800000000000000;
  swift_willThrow();

  v43 = *(v0 + 8);
LABEL_58:

  return v43();
}

uint64_t sub_100C28C18()
{
  v1 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 144);
  v12[8] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 128);
  v12[9] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 176);
  v12[10] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 160);
  v12[11] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 64);
  v12[5] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 96);
  v12[7] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  v12[1] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 32);
  v12[3] = v10;
  sub_10000B3A8(v12, &qword_10169F440, &unk_1013A0950);

  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C28E2C()
{
  sub_100C28C18();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AirTagPairingExecutor(uint64_t a1)
{
  result = qword_1016B8888;
  if (!qword_1016B8888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C28EAC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PairingExecutorState();
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100C2901C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C29064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C291A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100C292E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100C293E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100C2944C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100C2951C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirTagPairingExecutor(0);

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100C29568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C13C94(a1);
}

uint64_t sub_100C295FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C1ACA0();
}

uint64_t sub_100C29688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C25398(a1);
}