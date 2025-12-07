uint64_t sub_100D6D62C(uint64_t a1)
{
  ContinuousClock.init()();
  v1[43] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  ContinuousClock.now.getter();
  static Task<>.checkCancellation()();
  v2 = v1[30];
  v16 = v1[29];
  v3 = v1[25];
  v4 = v1[24];
  v5 = type metadata accessor for ConnectUseCase();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v1[6] = v6;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = type metadata accessor for LongTermKey();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v9 = type metadata accessor for Peripheral.Options();
  (*(*(v9 - 8) + 56))(v16, 0, 1, v9);
  v10 = type metadata accessor for Peripheral();
  v1[44] = v10;
  v11 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v1[45] = v11;
  v12 = swift_task_alloc();
  v1[46] = v12;
  *v12 = v1;
  v12[1] = sub_100D6DA94;
  v13 = v1[29];
  v14 = v1[30];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v14, v13, v10, v11);
}

uint64_t sub_100D6DA94()
{
  v2 = *v1;
  v3 = *v1;
  v2[47] = v0;

  v4 = v2[30];
  v5 = v2[29];
  if (v0)
  {
    sub_10000B3A8(v5, &qword_101697260, &unk_10138BDC0);
    sub_10000B3A8(v4, &qword_101697270, &qword_10138BDD0);

    return _swift_task_switch(sub_100D6DDAC, 0, 0);
  }

  else
  {
    sub_10000B3A8(v5, &qword_101697260, &unk_10138BDC0);
    sub_10000B3A8(v4, &qword_101697270, &qword_10138BDD0);
    v6 = swift_task_alloc();
    v2[48] = v6;
    *v6 = v3;
    v6[1] = sub_100D6DC98;
    v7 = v2[44];
    v8 = v2[45];
    v9 = v2[39];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v9, v7, v8);
  }
}

uint64_t sub_100D6DC98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_100D6E2D0;
  }

  else
  {
    v4 = sub_100D6DEB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D6DDAC()
{
  (*(v0[32] + 8))(v0[36], v0[31]);
  v0[80] = v0[47];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3 = swift_task_alloc();
  v0[81] = v3;
  *v3 = v0;
  v3[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_100D6DEB4(uint64_t a1)
{
  v2 = v1[50];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[32] + 8))(v1[36], v1[31]);

    v1[80] = v2;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v5 = swift_task_alloc();
    v1[81] = v5;
    *v5 = v1;
    v5[1] = sub_100D703C0;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v6 = v1[20];
    sub_101123C58(0, 3, 0);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_101123C58((v7 > 1), v8 + 1, 1);
    }

    v1[51] = _swiftEmptyArrayStorage;
    v9 = v1[23];
    v10 = v1[19];
    _swiftEmptyArrayStorage[2] = v8 + 1;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = *(v6 + 72);
    v13 = *(v6 + 32);
    v13(_swiftEmptyArrayStorage + v11 + v12 * v8, v9, v10);
    Identifier.init(stringLiteral:)();
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      sub_101123C58((v14 > 1), v15 + 1, 1);
    }

    v1[51] = _swiftEmptyArrayStorage;
    v16 = v1[23];
    v17 = v1[19];
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v13(_swiftEmptyArrayStorage + v11 + v12 * v15, v16, v17);
    Identifier.init(stringLiteral:)();
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_101123C58((v18 > 1), v19 + 1, 1);
    }

    v1[51] = _swiftEmptyArrayStorage;
    v20 = v1[23];
    v21 = v1[19];
    _swiftEmptyArrayStorage[2] = v19 + 1;
    v13(_swiftEmptyArrayStorage + v11 + v12 * v19, v20, v21);
    v22 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
    v1[52] = v22;
    v23 = swift_task_alloc();
    v1[53] = v23;
    *v23 = v1;
    v23[1] = sub_100D6E3D8;
    v24 = v1[43];

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v24, v22);
  }
}

uint64_t sub_100D6E2D0()
{
  (*(v0[32] + 8))(v0[36], v0[31]);
  v0[80] = v0[50];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3 = swift_task_alloc();
  v0[81] = v3;
  *v3 = v0;
  v3[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_100D6E3D8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = sub_100D6E6EC;
  }

  else
  {

    v2 = sub_100D6E524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D6E524(uint64_t a1)
{
  v2 = v1[54];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[32] + 8))(v1[36], v1[31]);

    v1[80] = v2;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v5 = swift_task_alloc();
    v1[81] = v5;
    *v5 = v1;
    v5[1] = sub_100D703C0;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v1[55] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v6 = swift_task_alloc();
    v1[56] = v6;
    *v6 = v1;
    v6[1] = sub_100D6E804;
    v7 = v1[52];
    v8 = v1[43];
    v9 = v1[22];

    return dispatch thunk of ServiceProtocol.subscript.getter(v9, v8, v7);
  }
}

uint64_t sub_100D6E6EC()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);
  v0[80] = v0[54];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_100D6E804(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  v5 = v3[22];
  v6 = v3[20];
  v7 = v3[19];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_100D6EC10, 0, 0);
  }

  else
  {
    v8 = *(v6 + 8);
    v3[59] = v8;
    v3[60] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v9 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v3[61] = v9;
    v10 = swift_task_alloc();
    v3[62] = v10;
    *v10 = v4;
    v10[1] = sub_100D6EA40;
    v11 = v3[55];
    v12 = v3[18];

    return dispatch thunk of CharacteristicProtocol.read()(v12, v11, v9);
  }
}

uint64_t sub_100D6EA40()
{
  v2 = *v1;
  v2[63] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D6EEAC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[64] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    v2[65] = v4;
    *v3 = v2;
    v3[1] = sub_100D6ED28;
    v5 = v2[15];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_100D6EC10()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);
  v0[80] = v0[58];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_100D6ED28()
{
  v2 = *v1;
  v2[66] = v0;

  v3 = v2[18];
  v4 = v2[16];
  v5 = v2[15];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_100D6F3A0;
  }

  else
  {
    v2[67] = v7;
    v2[68] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_100D6EFC4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D6EEAC()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);
  v0[80] = v0[63];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_100D6EFC4(uint64_t a1)
{
  v30 = v1;
  v2 = v1[2];
  v3 = v1[3];
  v1[69] = v2;
  v1[70] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = 0;
    v5 = 0x8000000000000;
  }

  else
  {
    sub_100017D5C(v2, v3);
    sub_100017D5C(v2, v3);
    v6 = sub_100504370(v2, v3);
    if (v7 >> 60 == 15)
    {
      v4 = 0;
      v5 = 0x8000000000000;
    }

    else
    {
      v8 = v6;
      v9 = v7;
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_10177AC90);
      sub_100017D5C(v8, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      sub_100006654(v8, v9);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v13 = 136315138;
        sub_100017D5C(v8, v9);
        v14 = sub_100503F40(v8, v9);
        v16 = v15;
        sub_100006654(v8, v9);
        v17 = sub_1000136BC(v14, v16, &v29);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "DISProductData: %s", v13, 0xCu);
        sub_100007BAC(v28);
      }

      v4 = sub_1005043E0(v8, v9);
      v5 = v18;
      sub_100006654(v8, v9);
    }

    sub_100006654(v2, v3);
  }

  v1[72] = v5;
  v1[71] = v4;
  v19 = v1[66];
  static Task<>.checkCancellation()();
  if (v19)
  {
    (*(v1[32] + 8))(v1[36], v1[31]);

    sub_100006654(v2, v3);
    sub_100016590(v4, v5);
    v1[80] = v19;
    v20 = type metadata accessor for Peripheral();
    v21 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v22 = swift_task_alloc();
    v1[81] = v22;
    *v22 = v1;
    v22[1] = sub_100D703C0;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v20, v21);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v23 = swift_task_alloc();
    v1[73] = v23;
    *v23 = v1;
    v23[1] = sub_100D6F4B8;
    v24 = v1[52];
    v25 = v1[43];
    v26 = v1[21];

    return dispatch thunk of ServiceProtocol.subscript.getter(v26, v25, v24);
  }
}

uint64_t sub_100D6F3A0()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];

  (*(v3 + 8))(v1, v2);
  v0[80] = v0[66];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_100D6F4B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  v5 = v3[59];
  v6 = v3[21];
  v7 = v3[19];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_100D6F83C, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[76] = v8;
    *v8 = v4;
    v8[1] = sub_100D6F6AC;
    v9 = v3[61];
    v10 = v3[55];
    v11 = v3[17];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_100D6F6AC()
{
  v2 = *v1;
  v2[77] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D6FAFC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[78] = v3;
    *v3 = v2;
    v3[1] = sub_100D6F98C;
    v4 = v2[65];
    v5 = v2[15];

    return AsyncSequence.first()(v2 + 4, v5, v4);
  }
}

uint64_t sub_100D6F83C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[80] = v0[75];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[81] = v10;
  *v10 = v0;
  v10[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_100D6F98C()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  (*(v2 + 536))(*(v2 + 136), *(v2 + 120));
  if (v0)
  {
    v3 = sub_100D70270;
  }

  else
  {
    v3 = sub_100D6FC4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D6FAFC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[80] = v0[77];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[81] = v10;
  *v10 = v0;
  v10[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_100D6FC4C()
{
  v63 = v0;
  v1 = v0[4];
  v2 = v0[5];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC90);
  sub_10002E98C(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100006654(v1, v2);
  v60 = v2;
  v61 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v62[0] = v7;
    *v6 = 136315138;
    if (v2 >> 60 == 15)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = Data.hexString.getter();
      v9 = v10;
    }

    v11 = sub_1000136BC(v8, v9, v62);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "DIS firmware version: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[31];
  v17 = v0[32];
  ContinuousClock.now.getter();
  v18 = *(v17 + 16);
  v18(v14, v12, v16);
  v18(v15, v13, v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[33];
  v22 = v0[34];
  v24 = v0[31];
  v25 = v0[32];
  if (v21)
  {
    v26 = v0[13];
    v27 = v0[14];
    v56 = v0[12];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v58 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100D97688(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v55 = static Duration.description<A>(_:_:units:)();
    v29 = v28;
    (*(v26 + 8))(v27, v56);
    v30 = *(v25 + 8);
    v30(v23, v24);
    v57 = v30;
    v30(v22, v24);
    v31 = sub_1000136BC(v55, v29, v62);

    *(v58 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Raw metadata read time: %{public}s", v58, 0xCu);
    sub_100007BAC(v59);
  }

  else
  {

    v32 = *(v25 + 8);
    v32(v23, v24);
    v57 = v32;
    v32(v22, v24);
  }

  v53 = v0[71];
  v54 = v0[72];
  v33 = v0[41];
  v51 = v0[40];
  v52 = v0[42];
  v34 = v0[38];
  v49 = v0[37];
  v50 = v0[39];
  v47 = v0[70];
  v48 = v0[36];
  v45 = v0[69];
  v46 = v0[35];
  v35 = v0[31];
  v36 = v0[10];
  v37 = v0[11];
  v38 = v0[9];
  v39 = v0[7];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();

  sub_100006654(v45, v47);
  (*(v36 + 8))(v37, v38);
  v57(v46, v35);
  v57(v48, v35);
  (*(v34 + 8))(v50, v49);
  (*(v33 + 8))(v52, v51);
  v40 = type metadata accessor for RawAccessoryMetadata(0);
  v41 = (v39 + v40[5]);
  *v41 = v53;
  v41[1] = v54;
  *(v39 + v40[6]) = xmmword_10138BBF0;
  *(v39 + v40[7]) = xmmword_10138BBF0;
  *(v39 + v40[8]) = xmmword_10138BBF0;
  *(v39 + v40[9]) = xmmword_10138BBF0;
  *(v39 + v40[10]) = xmmword_10138BBF0;
  v42 = (v39 + v40[11]);
  *v42 = v61;
  v42[1] = v60;
  *(v39 + v40[12]) = xmmword_10138BBF0;
  *(v39 + v40[13]) = xmmword_10138BBF0;
  *(v39 + v40[14]) = xmmword_10138BBF0;
  *(v39 + v40[15]) = xmmword_10138BBF0;
  *(v39 + v40[16]) = xmmword_10138BBF0;

  v43 = v0[1];

  return v43();
}

uint64_t sub_100D70270()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];

  sub_100016590(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[80] = v0[79];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[81] = v10;
  *v10 = v0;
  v10[1] = sub_100D703C0;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_100D703C0()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_100D7066C;
  }

  else
  {
    v2 = sub_100D704D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D704D4(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[42];
  v5 = v1[39];
  v4 = v1[40];
  v7 = v1[37];
  v6 = v1[38];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_100D7066C()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C348);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "cancelConnection error in readRawAccessoryMetadata() catch block: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[41];
  v8 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  (*(v7 + 8))(v8, v9);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D70938(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D70AF8, v2, 0);
}

uint64_t sub_100D70AF8()
{
  v31 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101370E10, &v30);
    *(v15 + 12) = 2082;
    v28 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v28, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[5];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v21 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_100D70E58;
  v23 = v0[11];
  v24 = v0[8];
  v25 = v0[5];
  v26 = v0[3];

  return sub_100DAB1EC(v23, 1, v24, v26, v25);
}

uint64_t sub_100D70E58()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  sub_10000B3A8(v4, &qword_101699E50, &qword_1013D97C0);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100DDDDAC, v5, 0);
}

uint64_t sub_100D70FF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D711B8, v2, 0);
}

uint64_t sub_100D711B8()
{
  v31 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000026, 0x8000000101370F90, &v30);
    *(v15 + 12) = 2082;
    v28 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v28, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[5];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v21 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_100D70E58;
  v23 = v0[11];
  v24 = v0[8];
  v25 = v0[5];
  v26 = v0[3];

  return sub_100DAB1EC(v23, 2, v24, v26, v25);
}

uint64_t sub_100D71518(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D716D8, v2, 0);
}

uint64_t sub_100D716D8()
{
  v31 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370FC0, &v30);
    *(v15 + 12) = 2082;
    v28 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v28, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[5];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v21 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_100D71A38;
  v23 = v0[11];
  v24 = v0[8];
  v25 = v0[5];
  v26 = v0[3];

  return sub_100DAB1EC(v23, 3, v24, v26, v25);
}

uint64_t sub_100D71A38()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  sub_10000B3A8(v4, &qword_101699E50, &qword_1013D97C0);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100D71BD8, v5, 0);
}

uint64_t sub_100D71BD8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100D71C7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D71E3C, v2, 0);
}

uint64_t sub_100D71E3C()
{
  v31 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    log = v6;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370FF0, &v30);
    *(v15 + 12) = 2082;
    v28 = v7;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v11);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v28, "%{public}s for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[5];
  static Date.trustedNow.getter(v0[8]);
  Identifier.id.getter();
  v21 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_100D70E58;
  v23 = v0[11];
  v24 = v0[8];
  v25 = v0[5];
  v26 = v0[3];

  return sub_100DAB1EC(v23, 4, v24, v26, v25);
}

uint64_t sub_100D7219C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D723AC, v2, 0);
}

uint64_t sub_100D723AC()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v9)
  {
    v13 = v0[13];
    log = v7;
    v14 = v0[10];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_1000136BC(0xD000000000000022, 0x8000000101370F30, &v26);
    *(v16 + 12) = 2082;
    v24 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_1000136BC(v17, v19, &v26);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v24, "%{public}s for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[21] = v20;
  static Date.trustedNow.getter(v0[9]);
  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_100D726B4;

  return daemon.getter();
}

uint64_t sub_100D726B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D72890;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D72890(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 32);

  if (v1)
  {
    v6 = sub_100D736E4;
  }

  else
  {
    v6 = sub_100D729E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D729E0()
{
  v1 = *(v0 + 200);
  Identifier.id.getter();

  return _swift_task_switch(sub_100D72A54, v1, 0);
}

uint64_t sub_100D72A54()
{
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_100D72AF4;
  v2 = v0[12];
  v3 = v0[6];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100D72AF4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = sub_100D730CC;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];
    v8 = v2[4];
    v9 = *(v6 + 8);
    v2[29] = v9;
    v2[30] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v4 = sub_100D72C38;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D72C38()
{
  v39 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    sub_100500BC4();
    swift_allocError();
    *v4 = xmmword_10139D940;
    *(v4 + 16) = 3;
    swift_willThrow();

    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v5(v6, v8, v7);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[21];
    v13 = v0[16];
    v14 = v0[14];
    if (v11)
    {
      v15 = v0[13];
      v16 = v0[10];
      v33 = v0[11];
      v36 = v10;
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v17 = 136446466;
      v34 = v9;
      Identifier.id.getter();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v12;
      v20 = v19;
      (*(v33 + 8))(v15, v16);
      v18(v13, v14);
      v21 = sub_1000136BC(v32, v20, &v38);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v35 = v22;
      _os_log_impl(&_mh_execute_header, v34, v36, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v17, 0x16u);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v37);
    }

    else
    {

      v12(v13, v14);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    v23 = v0[5];
    Identifier.id.getter();
    v24 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_100D73468;
    v26 = v0[13];
    v27 = v0[9];
    v28 = v0[5];
    v29 = v0[3];

    return sub_100DAB1EC(v26, 5, v27, v29, v28);
  }
}

uint64_t sub_100D730CC()
{
  v1 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return _swift_task_switch(sub_100D73148, v1, 0);
}

uint64_t sub_100D73148()
{
  v28 = v0;

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[16];
  v10 = v0[14];
  if (v7)
  {
    v11 = v0[13];
    v12 = v0[10];
    v22 = v0[11];
    v25 = v6;
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446466;
    v23 = v5;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v17 = v16;
    (*(v22 + 8))(v11, v12);
    v15(v9, v10);
    v18 = sub_1000136BC(v14, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v23, v25, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v13, 0x16u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    v8(v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D73468()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  sub_10000B3A8(v4, &qword_101699E50, &qword_1013D97C0);
  v1(v2, v3);

  return _swift_task_switch(sub_100D73610, v5, 0);
}

uint64_t sub_100D73610()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D736E4()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[16];
  v10 = v0[14];
  if (v7)
  {
    v11 = v0[13];
    v12 = v0[10];
    v22 = v0[11];
    v25 = v6;
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446466;
    v23 = v5;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v17 = v16;
    (*(v22 + 8))(v11, v12);
    v15(v9, v10);
    v18 = sub_1000136BC(v14, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v23, v25, "Failed to store detected device event for %{public}s,\nerror: %{public}@.", v13, 0x16u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    v8(v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D739FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D73C0C, v2, 0);
}

uint64_t sub_100D73C0C()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v9)
  {
    v13 = v0[13];
    log = v7;
    v14 = v0[10];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101370F60, &v26);
    *(v16 + 12) = 2082;
    v24 = v8;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_1000136BC(v17, v19, &v26);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v24, "%{public}s for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[21] = v20;
  static Date.trustedNow.getter(v0[9]);
  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_100D73F14;

  return daemon.getter();
}

uint64_t sub_100D73F14(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D740F0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D740F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 32);

  if (v1)
  {
    v6 = sub_100D74E70;
  }

  else
  {
    v6 = sub_100D74240;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D74240()
{
  v1 = *(v0 + 200);
  Identifier.id.getter();

  return _swift_task_switch(sub_100D742B4, v1, 0);
}

uint64_t sub_100D742B4()
{
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_100D74354;
  v2 = v0[12];
  v3 = v0[6];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100D74354()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = sub_100D7492C;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];
    v8 = v2[4];
    v9 = *(v6 + 8);
    v2[29] = v9;
    v2[30] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v4 = sub_100D74498;
    v3 = v8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D74498()
{
  v39 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    sub_100500BC4();
    swift_allocError();
    *v4 = xmmword_10139D940;
    *(v4 + 16) = 3;
    swift_willThrow();

    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v5(v6, v8, v7);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[21];
    v13 = v0[16];
    v14 = v0[14];
    if (v11)
    {
      v15 = v0[13];
      v16 = v0[10];
      v33 = v0[11];
      v36 = v10;
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v17 = 136446466;
      v34 = v9;
      Identifier.id.getter();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v12;
      v20 = v19;
      (*(v33 + 8))(v15, v16);
      v18(v13, v14);
      v21 = sub_1000136BC(v32, v20, &v38);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v35 = v22;
      _os_log_impl(&_mh_execute_header, v34, v36, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v17, 0x16u);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v37);
    }

    else
    {

      v12(v13, v14);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    v23 = v0[5];
    Identifier.id.getter();
    v24 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_100D74CC8;
    v26 = v0[13];
    v27 = v0[9];
    v28 = v0[5];
    v29 = v0[3];

    return sub_100DAB1EC(v26, 6, v27, v29, v28);
  }
}

uint64_t sub_100D7492C()
{
  v1 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return _swift_task_switch(sub_100D749A8, v1, 0);
}

uint64_t sub_100D749A8()
{
  v28 = v0;

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[16];
  v10 = v0[14];
  if (v7)
  {
    v11 = v0[13];
    v12 = v0[10];
    v22 = v0[11];
    v25 = v6;
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446466;
    v23 = v5;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v17 = v16;
    (*(v22 + 8))(v11, v12);
    v15(v9, v10);
    v18 = sub_1000136BC(v14, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v23, v25, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v13, 0x16u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    v8(v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D74CC8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);

  sub_10000B3A8(v4, &qword_101699E50, &qword_1013D97C0);
  v1(v2, v3);

  return _swift_task_switch(sub_100DDDDE0, v5, 0);
}

uint64_t sub_100D74E70()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[16];
  v10 = v0[14];
  if (v7)
  {
    v11 = v0[13];
    v12 = v0[10];
    v22 = v0[11];
    v25 = v6;
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446466;
    v23 = v5;
    Identifier.id.getter();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v17 = v16;
    (*(v22 + 8))(v11, v12);
    v15(v9, v10);
    v18 = sub_1000136BC(v14, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v23, v25, "Failed to store disappeared device event for %{public}s,\nerror: %{public}@.", v13, 0x16u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    v8(v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D75188(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100D752D0, v2, 0);
}

uint64_t sub_100D752D0()
{
  v38 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for Logger();
  *(v0 + 128) = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v9)
  {
    v34 = v8;
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v37);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v37);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v34, "%s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  *(v0 + 152) = v18;
  v21 = *(v0 + 112);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 48);
  v26 = *(v0 + 184);
  v35 = *(v0 + 56);
  v6(v21, *(v0 + 40), v24);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = v27 + v22;
  v29 = (v27 + v22) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v0 + 160) = v30;
  *(v30 + 16) = v25;
  (*(v23 + 32))(v30 + v27, v21, v24);
  *(v30 + v28) = v26;
  *(v30 + v29 + 8) = v35;
  v36 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v31 = swift_task_alloc();
  *(v0 + 168) = v31;
  *v31 = v0;
  v31[1] = sub_100D75670;

  return v36(&unk_1013E87A0, v30);
}

uint64_t sub_100D75670()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100D75A3C;
  }

  else
  {
    v4 = sub_100D757B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D757B8()
{
  v18 = v0;
  (*(v0 + 136))(*(v0 + 104), *(v0 + 40), *(v0 + 80));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v17);
    *(v7 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Unpaired %{public}s. Reset attachedLocalFindableAccessory to .none", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  swift_beginAccess();
  sub_100DD6A88(v12, v13 + v14);
  swift_endAccess();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100D75A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D75AC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D75BBC, v1, 0);
}

uint64_t sub_100D75BBC()
{
  v26 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v25 = v13;
    *(v12 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v25);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v22 = swift_task_alloc();
  v0[8] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = swift_task_alloc();
  v0[9] = v23;
  *v23 = v0;
  v23[1] = sub_100D75F04;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v19, v21, 0xD000000000000029, 0x8000000101370C70, sub_100DD8D6C, v22, &type metadata for () + 1);
}

uint64_t sub_100D75F04()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100193354;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100D7602C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D7602C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D76090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeaconProductInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + 72);
  sub_100DD9284(a1, v16, type metadata accessor for BeaconProductInfoRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100DD921C(v16, v19 + v17, type metadata accessor for BeaconProductInfoRecord);
  *(v19 + v18) = v4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23[0];
  v20[1] = a3;
  aBlock[4] = sub_100DD9DC4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650DA0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100D76454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PairingErrorRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + 72);
  sub_100DD9284(a1, v16, type metadata accessor for PairingErrorRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100DD921C(v16, v19 + v17, type metadata accessor for PairingErrorRecord);
  *(v19 + v18) = v4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23[0];
  v20[1] = a3;
  aBlock[4] = sub_100DDDCA8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016511D8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100D76818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + 72);
  sub_100DD9284(a1, v16, type metadata accessor for WildModeAssociationRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100DD921C(v16, v19 + v17, type metadata accessor for WildModeAssociationRecord);
  *(v19 + v18) = v4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23[0];
  v20[1] = a3;
  aBlock[4] = sub_100DDA354;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650E40;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100D76BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryMetadataRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + 72);
  sub_100DD9284(a1, v16, type metadata accessor for AccessoryMetadataRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100DD921C(v16, v19 + v17, type metadata accessor for AccessoryMetadataRecord);
  *(v19 + v18) = v4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23[0];
  v20[1] = a3;
  aBlock[4] = sub_100DDC85C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101650FD0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100D97688(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100D76FDC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v20[1] = a4;
  v14 = sub_1000BC4D4(a5, a6);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  a7(a1);
  v17 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    v19 = v17;
    swift_once();
    v17 = v19;
  }

  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C380, "Saved LocalStorageBacked record", 31, 2, _swiftEmptyArrayStorage);
  sub_100DD9284(a1, v16, a8);
  swift_storeEnumTagMultiPayload();
  a3(v16);
  return sub_10000B3A8(v16, a5, a6);
}

uint64_t sub_100D77278()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C0A8);
  sub_1000076D4(v0, qword_10177C0A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D772FC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BB490);
  v1 = sub_1000076D4(v0, qword_1016BB490);
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D773C4(__n128 a1)
{
  v1 = sub_101129930(&off_10160D0F8);
  result = sub_1002FFC04(&unk_10160D118);
  off_1016BB4A8 = v1;
  return result;
}

unint64_t sub_100D77404(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(26);

      v19[0] = 0xD000000000000018;
      v19[1] = 0x80000001013712B0;
      v5 = a1;
      v6 = a2;
LABEL_22:
      String.append(_:)(*&v5);
      return v19[0];
    }

    strcpy(v19, ".underlying(");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
LABEL_21:
    String.append(_:)(*&v13);

    v5 = 41;
    v6 = 0xE100000000000000;
    goto LABEL_22;
  }

  if (a3 == 2)
  {
    v7 = a1;
    v8 = 0xE800000000000000;
    strcpy(v19, ".response(");
    BYTE3(v19[1]) = 0;
    HIDWORD(v19[1]) = -369098752;
    v9 = 0x737365636375732ELL;
    v10 = 0xEE006874676E654CLL;
    v11 = 0xED00006D61726150;
    if (a1 != 4)
    {
      v11 = 0xEF646E616D6D6F43;
    }

    if (a1 != 3)
    {
      v10 = v11;
    }

    v12 = 0xED00006574617453;
    if (a1 != 1)
    {
      v12 = 0xEE006769666E6F43;
    }

    if (a1)
    {
      v9 = 0x64696C61766E692ELL;
      v8 = v12;
    }

    if (a1 <= 2u)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0x64696C61766E692ELL;
    }

    if (v7 <= 2)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
    goto LABEL_21;
  }

  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x74756F656D69742ELL;
      break;
    case 3:
      result = 0x4E64726F6365722ELL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6F707075736E752ELL;
      break;
    case 7:
      result = 0x64696C61766E692ELL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x64696C61766E692ELL;
      break;
    case 12:
    case 19:
      result = 0xD000000000000016;
      break;
    case 13:
      v18 = 9;
      goto LABEL_38;
    case 14:
    case 20:
      result = 0x676E697373696D2ELL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
    case 18:
      result = 0xD000000000000013;
      break;
    case 17:
      v18 = 5;
LABEL_38:
      result = v18 | 0xD000000000000012;
      break;
    case 21:
      result = 0x72756F59746F6E2ELL;
      break;
    case 22:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100D778CC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v2[10] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D779CC, 0, 0);
}

uint64_t sub_100D779CC()
{
  v1 = v0[12];
  v2 = v0[9];
  swift_defaultActor_initialize();
  *(v2 + 112) = 0xD000000000000014;
  *(v2 + 120) = 0x80000001013E8550;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  v3 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider;
  sub_1000BC4D4(&unk_1016BB930, &qword_1013E8CD0);
  swift_allocObject();
  *(v2 + v4) = AsyncStreamProvider.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue;
  type metadata accessor for WorkItemQueue();
  v6 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  UUID.init()();
  *(v2 + v5) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v7 = static Data.random(bytes:)();
  v9 = v8;
  v0[13] = v7;
  v0[14] = v8;
  type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v7, v9);
  v10 = sub_10024C9E8(v7, v9);
  v0[15] = v10;
  if (v10)
  {
    v11 = v0[10];
    type metadata accessor for CentralManager();
    sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
    v12 = type metadata accessor for CentralManager.Options();
    v13 = *(v12 - 8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    static CentralManager.Options.needsRestrictedStateOperation.getter();
    v0[7] = v14;
    sub_100D97688(&unk_1016C1210, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
    sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
    sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v13 + 56))(v11, 0, 1, v12);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_100D77F04;
    v16 = v0[10];

    return CentralManager.__allocating_init(options:)(v16);
  }

  else
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
      _os_log_impl(&_mh_execute_header, v18, v19, "Missing critical information to init pairing ", v20, 2u);
    }

    sub_100016590(v7, v9);

    sub_100DD92EC(v2 + v3, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);

    type metadata accessor for PencilPairingService(0);
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();

    v21 = v0[1];

    return v21(0);
  }
}

uint64_t sub_100D77F04(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100D78004, 0, 0);
}

uint64_t sub_100D78004()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v2[18] = *(v0 + 136);
  v2[20] = v1;
  type metadata accessor for AccessoryPairingValidator();
  v3 = swift_allocObject();
  *(v0 + 144) = type metadata accessor for DeviceIdentityUtility(0);
  v4 = swift_allocObject();

  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v6 = type metadata accessor for Date();
  *(v0 + 152) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v3 + 16) = v4;
  *(v3 + 24) = 0;
  v2[17] = v3;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_100D781B0;

  return sub_1011E6C88(v0 + 16);
}

uint64_t sub_100D781B0(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100D782B0, 0, 0);
}

uint64_t sub_100D782B0()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[8];
  v4 = v0[9];
  *(v4 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher) = v0[23];
  type metadata accessor for PencilLocationsFetcher();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v1(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v2);
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 2;
  *(v5 + 112) = v6;
  *(v4 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationsFetcher) = v5;
  *(v4 + 128) = v3;

  return _swift_task_switch(sub_100D783E4, v4, 0);
}

uint64_t sub_100D783E4()
{
  sub_100016590(v0[13], v0[14]);

  v1 = v0[9];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100D78484()
{
  *(v1 + 3256) = v0;
  v2 = swift_task_alloc();
  *(v1 + 3304) = v2;
  *v2 = v1;
  v2[1] = sub_100D78518;

  return daemon.getter();
}

uint64_t sub_100D78518(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 3352) = a1;

  v3 = swift_task_alloc();
  *(v2 + 3400) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_10169BD10, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_100D786F4;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_100D786F4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 3448) = a1;

  v4 = *(v3 + 3256);
  if (v1)
  {

    v5 = sub_100D78E64;
  }

  else
  {

    v5 = sub_100D78858;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D78858()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 3496) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v7 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v5 = swift_task_alloc();
  *(v0 + 3544) = v5;
  *v5 = v0;
  v5[1] = sub_100D789BC;

  return v7();
}

uint64_t sub_100D789BC()
{
  v1 = *(*v0 + 3256);

  return _swift_task_switch(sub_100D78ACC, v1, 0);
}

uint64_t sub_100D78ACC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v1 + 16);
}

uint64_t sub_100D78E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D78E64()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D78F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D83CEC();
}

uint64_t sub_100D7900C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_100D864F4();
}

uint64_t sub_100D7909C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7912C();
}

uint64_t sub_100D7912C()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169A070, &qword_1013933F8);
  v1[6] = swift_task_alloc();
  v2 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D792F8, v0, 0);
}

uint64_t sub_100D792F8()
{
  v17 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 104) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101371190, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  *(v0 + 112) = *(*(v0 + 24) + 144);
  sub_100D7BE70();
  AsyncStream.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v9 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v10 = enum case for CentralManager.State.restricted(_:);
  *(v0 + 208) = enum case for CentralManager.State.poweredOn(_:);
  *(v0 + 212) = v10;
  *(v0 + 120) = v9;
  *(v0 + 128) = 0;
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_100D79564;
  v13 = *(v0 + 80);
  v14 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v14, v11, v9, v13);
}

uint64_t sub_100D79564()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100D79674, v1, 0);
}

uint64_t sub_100D79674()
{
  v1 = *(v0 + 48);
  v2 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_10;
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 40);
  *(v0 + 144) = *v1;
  sub_1000D2AD8(v1 + *(v2 + 48), v4, &qword_10169A068, &qword_1013933F0);
  static Task<>.checkCancellation()();
  if (v3)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    sub_10000B3A8(*(v0 + 40), &qword_10169A068, &qword_1013933F0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error from subscribeToAccessoryConnectionChanges: %@", v7, 0xCu);
      sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_10:

    v22 = *(v0 + 8);

    return v22();
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 212);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v12 = type metadata accessor for CentralManager.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v0 + 152) = v16;
  *(v16 + 16) = xmmword_10138BBE0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, v11, v12);
  v18(v17 + v14, v10, v12);
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  v20 = type metadata accessor for CentralManager();
  v21 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v19 = v0;
  v19[1] = sub_100D79A84;

  return CentralManagerProtocol.await(states:)(v16, v20, v21);
}

uint64_t sub_100D79A84()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 24);

  if (v0)
  {
    v4 = sub_100D79F64;
  }

  else
  {
    v4 = sub_100D79BCC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D79BCC()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  type metadata accessor for Transaction();
  v0[22] = static Transaction.$current.getter();
  v0[2] = v1;
  v7 = swift_task_alloc();
  v0[23] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;

  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100D79D24;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v8, v0 + 2, &unk_1013E8BD0, v7, v6, v2, 0xD000000000000027, 0x8000000101371060);
}

uint64_t sub_100D79D24()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);

  if (v0)
  {
    v4 = sub_100D7A128;
  }

  else
  {
    v4 = sub_100D79E80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D79E80()
{
  v1 = v0[5];

  sub_10000B3A8(v1, &qword_10169A068, &qword_1013933F0);
  v0[16] = v0[25];
  v2 = v0[15];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100D79564;
  v5 = v0[10];
  v6 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v6, v3, v2, v5);
}

uint64_t sub_100D79F64()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_10000B3A8(v0[5], &qword_10169A068, &qword_1013933F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error from subscribeToAccessoryConnectionChanges: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D7A128()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_10000B3A8(v0[5], &qword_10169A068, &qword_1013933F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error from subscribeToAccessoryConnectionChanges: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D7A2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7A37C();
}

uint64_t sub_100D7A37C()
{
  v1[26] = v0;
  v2 = type metadata accessor for UUID();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v1[29] = *(v3 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = type metadata accessor for CloudStorageStore.State(0);
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90);
  v1[40] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v1[46] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v1[47] = v7;
  v1[48] = *(v7 - 8);
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100D7A658, v0, 0);
}

uint64_t sub_100D7A658()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Monitoring CloudKit state stream", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_100D7A7A8;

  return daemon.getter();
}

uint64_t sub_100D7A7A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 416) = a1;

  v3 = swift_task_alloc();
  *(v2 + 424) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D7A984;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D7A984(uint64_t a1)
{
  v4 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = sub_100D7B994;
  }

  else
  {

    v6 = sub_100D7AABC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D7AABC()
{
  v1 = *(*(v0 + 432) + 128);
  *(v0 + 448) = v1;
  return _swift_task_switch(sub_100D7AAE0, v1, 0);
}

uint64_t sub_100D7AAE0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[26];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100D7ABEC, v4, 0);
}

uint64_t sub_100D7ABEC()
{
  AsyncStream.makeAsyncIterator()();
  v1 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v0[57] = v1;
  v2 = v0[26];
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_100D7ACE8;
  v4 = v0[40];
  v5 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_100D7ACE8()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_100D7ADF8, v1, 0);
}

uint64_t sub_100D7ADF8()
{
  v1 = *(v0 + 320);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 376);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  sub_100DD921C(v1, v10, type metadata accessor for CloudStorageStore.State);
  sub_100DD9284(v10, v11, type metadata accessor for CloudStorageStore.State);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 304);
  if (v14)
  {
    v16 = *(v0 + 296);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *(v0 + 200) = v18;
    *v17 = 136446210;
    sub_100DD9284(v15, v16, type metadata accessor for CloudStorageStore.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = *(v0 + 248);
        v21 = *(v0 + 216);
        v22 = *(v0 + 224);
        (*(v22 + 32))(v20, *(v0 + 296), v21);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        *(v0 + 144) = 0xD00000000000002ELL;
        *(v0 + 152) = 0x800000010136FDD0;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v23);

        v24 = *(v0 + 144);
        v25 = *(v0 + 152);
        (*(v22 + 8))(v20, v21);
      }

      else
      {
        v24 = 0x6E776F6E6B6E752ELL;
        v25 = 0xE800000000000000;
      }
    }

    else
    {
      sub_100031694(*(v0 + 296), v0 + 56);
      *(v0 + 176) = 0;
      *(v0 + 184) = 0xE000000000000000;
      v26._countAndFlagsBits = 0x65696669646F6D2ELL;
      v26._object = 0xEA00000000002864;
      String.append(_:)(v26);
      sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
      _print_unlocked<A, B>(_:_:)();
      v27._countAndFlagsBits = 41;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v24 = *(v0 + 176);
      v25 = *(v0 + 184);
      sub_100007BAC((v0 + 56));
    }

    sub_100DD92EC(*(v0 + 304), type metadata accessor for CloudStorageStore.State);
    v28 = sub_1000136BC(v24, v25, (v0 + 200));

    *(v17 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "cloudKitAccountStateStream event: %{public}s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100DD92EC(v15, type metadata accessor for CloudStorageStore.State);
  }

  sub_100DD9284(*(v0 + 312), *(v0 + 288), type metadata accessor for CloudStorageStore.State);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = *(v0 + 240);
      v31 = *(v0 + 248);
      v32 = *(v0 + 224);
      v34 = *(v0 + 208);
      v33 = *(v0 + 216);
      v35 = *(v32 + 32);
      v35(v30, *(v0 + 288), v33);
      (*(v32 + 16))(v31, v30, v33);
      v36 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v37 = swift_allocObject();
      *(v0 + 472) = v37;
      *(v37 + 16) = v34;
      v35(v37 + v36, v31, v33);

      v38 = swift_task_alloc();
      *(v0 + 480) = v38;
      *v38 = v0;
      v38[1] = sub_100D7B780;

      return withTimeout<A>(_:block:)(v38, 0x40AAD21B3B700000, 3, &unk_1013E8BA8, v37, &type metadata for () + 1);
    }
  }

  else
  {
    sub_100007BAC(*(v0 + 288));
  }

  sub_100DD9284(*(v0 + 312), *(v0 + 280), type metadata accessor for CloudStorageStore.State);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *(v0 + 192) = v44;
    *v43 = 136315138;
    sub_100DD9284(v41, v42, type metadata accessor for CloudStorageStore.State);
    v45 = swift_getEnumCaseMultiPayload();
    if (v45)
    {
      if (v45 == 1)
      {
        v46 = *(v0 + 248);
        v47 = *(v0 + 216);
        v48 = *(v0 + 224);
        (*(v48 + 32))(v46, *(v0 + 272), v47);
        *(v0 + 112) = 0;
        *(v0 + 120) = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        *(v0 + 96) = 0xD00000000000002ELL;
        *(v0 + 104) = 0x800000010136FDD0;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v49);

        v50 = *(v0 + 96);
        v51 = *(v0 + 104);
        (*(v48 + 8))(v46, v47);
      }

      else
      {
        v50 = 0x6E776F6E6B6E752ELL;
        v51 = 0xE800000000000000;
      }
    }

    else
    {
      sub_100031694(*(v0 + 272), v0 + 16);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      v55._countAndFlagsBits = 0x65696669646F6D2ELL;
      v55._object = 0xEA00000000002864;
      String.append(_:)(v55);
      sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
      _print_unlocked<A, B>(_:_:)();
      v56._countAndFlagsBits = 41;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      v50 = *(v0 + 128);
      v51 = *(v0 + 136);
      sub_100007BAC((v0 + 16));
    }

    v57 = *(v0 + 312);
    sub_100DD92EC(*(v0 + 280), type metadata accessor for CloudStorageStore.State);
    v58 = sub_1000136BC(v50, v51, (v0 + 192));

    *(v43 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v39, v40, "Ignoring %s", v43, 0xCu);
    sub_100007BAC(v44);

    v54 = v57;
  }

  else
  {
    v52 = *(v0 + 312);
    v53 = *(v0 + 280);

    sub_100DD92EC(v53, type metadata accessor for CloudStorageStore.State);
    v54 = v52;
  }

  sub_100DD92EC(v54, type metadata accessor for CloudStorageStore.State);
  v59 = *(v0 + 456);
  v60 = *(v0 + 208);
  v61 = swift_task_alloc();
  *(v0 + 464) = v61;
  *v61 = v0;
  v61[1] = sub_100D7ACE8;
  v62 = *(v0 + 320);
  v63 = *(v0 + 328);

  return AsyncStream.Iterator.next(isolation:)(v62, v60, v59, v63);
}

uint64_t sub_100D7B780()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = sub_100D7BBE4;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_100D7B8A8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D7B8A8()
{
  v1 = v0[39];
  (*(v0[28] + 8))(v0[30], v0[27]);
  sub_100DD92EC(v1, type metadata accessor for CloudStorageStore.State);
  v2 = v0[57];
  v3 = v0[26];
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_100D7ACE8;
  v5 = v0[40];
  v6 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100D7B994()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101371170, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D7BBE4()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[39];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "bluetoothUnpair failed: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  (*(v7 + 8))(v5, v6);
  sub_100DD92EC(v4, type metadata accessor for CloudStorageStore.State);
  v11 = v0[57];
  v12 = v0[26];
  v13 = swift_task_alloc();
  v0[58] = v13;
  *v13 = v0;
  v13[1] = sub_100D7ACE8;
  v14 = v0[40];
  v15 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v14, v12, v11, v15);
}

uint64_t sub_100D7BDE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_100D7C2F0();
}

uint64_t sub_100D7BE70()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - v3;
  v5 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  swift_beginAccess();
  sub_100DD9284(v0 + v8, v7, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000BC4D4(&qword_1016BB918, &qword_1013E8B38);
      v10 = *(sub_1000BC4D4(&qword_10169A068, &qword_1013933F0) - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101385D80;
      type metadata accessor for SPPairingSessionError(0);
      v19[1] = 16;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v12 + v11) = v19[2];
      swift_storeEnumTagMultiPayload();
      sub_100DD92EC(v7, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60);
    (*(v2 + 32))(v4, &v7[*(v13 + 48)], v1);
    sub_1000BC4D4(&qword_1016BB918, &qword_1013E8B38);
    v14 = *(sub_1000BC4D4(&qword_10169A068, &qword_1013933F0) - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    (*(v2 + 16))(v16 + v15, v4, v1);
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(v2 + 8))(v4, v1);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(v7, v17);
  }

  else
  {
    sub_100DD92EC(v7, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  }

  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100D7C2F0()
{
  v1[5] = v0;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v1[7] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for BeaconIdentifier(0);
  v1[14] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v1[24] = *(v7 + 64);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = type metadata accessor for DeviceEvent(0);
  v1[28] = v8;
  v9 = *(v8 - 8);
  v1[29] = v9;
  v1[30] = *(v9 + 64);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v1[38] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016AA580, &qword_1013BD1A0);
  v1[39] = v10;
  v1[40] = *(v10 - 8);
  v1[41] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016AA588, &qword_1013BD1A8);
  v1[42] = v11;
  v1[43] = *(v11 - 8);
  v1[44] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016AA590, &qword_1013BD1B0);
  v1[45] = v12;
  v1[46] = *(v12 - 8);
  v1[47] = swift_task_alloc();

  return _swift_task_switch(sub_100D7C7F8, v0, 0);
}

uint64_t sub_100D7C7F8()
{
  v9 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 384) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101371150, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 392) = v6;
  *v6 = v0;
  v6[1] = sub_100D7C9A8;

  return daemon.getter();
}

uint64_t sub_100D7C9A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[50] = a1;

  v3 = swift_task_alloc();
  v2[51] = v3;
  v4 = type metadata accessor for Daemon();
  v2[52] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v2[53] = v5;
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[54] = v6;
  v7 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  v2[55] = v7;
  *v3 = v9;
  v3[1] = sub_100D7CB9C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D7CB9C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 40);

    v6 = sub_100D7CEF8;
    v7 = v5;
  }

  else
  {

    *(v4 + 448) = a1;
    v6 = sub_100D7CD00;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100D7CD00()
{
  v1 = v0[5];
  (*(v0[40] + 104))(v0[41], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[39]);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100D7CDDC, v1, 0);
}

uint64_t sub_100D7CDDC()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v0[57] = v4;
  v5 = v0[5];
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_100D7D198;
  v7 = v0[45];
  v8 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v8, v5, v4, v7);
}

uint64_t sub_100D7CEF8()
{
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84A0;
  *(v1 + 16) = 3;
  swift_willThrow();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to register for device events: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D7D198()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100D7D2A8, v1, 0);
}

uint64_t sub_100D7D2A8()
{
  v20 = v0;
  v1 = v0[38];
  if ((*(v0[29] + 48))(v1, 1, v0[28]) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device event: observationService.stream() terminated.", v4, 2u);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[36];
    v7 = v0[37];
    sub_100DD921C(v1, v7, type metadata accessor for DeviceEvent);
    sub_100DD9284(v7, v8, type metadata accessor for DeviceEvent);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[36];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v13 = 136446723;
      *(v13 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101371150, &v19);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100DD92EC(v12, type metadata accessor for DeviceEvent);
      v17 = sub_1000136BC(v14, v16, &v19);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100DD92EC(v12, type metadata accessor for DeviceEvent);
    }

    v18 = swift_task_alloc();
    v0[59] = v18;
    *v18 = v0;
    v18[1] = sub_100D7D740;

    return daemon.getter();
  }
}

uint64_t sub_100D7D740(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[60] = a1;

  v4 = swift_task_alloc();
  v2[61] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[62] = v5;
  v6 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[63] = v6;
  *v4 = v3;
  v4[1] = sub_100D7D8FC;
  v7 = v2[54];
  v8 = v2[52];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_100D7D8FC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 40);

    v5 = sub_100D7E190;
  }

  else
  {

    *(v4 + 512) = a1;
    v5 = sub_100D7DA54;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_100D7DA54()
{

  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100D7DB40;
  v3 = *(v0 + 512);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100DDDDE8, v3, v2);
}

uint64_t sub_100D7DB40()
{
  v1 = *(*v0 + 512);

  return _swift_task_switch(sub_100D7DC58, v1, 0);
}

uint64_t sub_100D7DC58()
{
  v1 = v0[5];

  v0[66] = v0[4];

  return _swift_task_switch(sub_100D7DCCC, v1, 0);
}

uint64_t sub_100D7DCCC()
{
  v41 = v0;
  v1 = *(v0 + 528);
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 216);
  v37 = *(v0 + 224);
  v38 = *(v0 + 296);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v39 = *(v0 + 128);
  v9 = *(v0 + 120);
  v10 = *(*(v0 + 160) + 80);
  sub_100DD9284(v1 + ((v10 + 32) & ~v10), v6, type metadata accessor for OwnedBeaconRecord);

  v11 = *(v7 + 20);
  v12 = *(v5 + 16);
  *(v0 + 536) = v12;
  *(v0 + 544) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3, v6 + v11, v4);
  sub_100DD92EC(v6, type metadata accessor for OwnedBeaconRecord);
  v13 = *(v5 + 32);
  *(v0 + 552) = v13;
  *(v0 + 560) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v2, v3, v4);
  sub_1000D2A70(v38 + *(v37 + 32), v9, &unk_1016AA510, &unk_101393150);
  if ((*(v8 + 48))(v9, 1, v39) == 1)
  {
    v14 = *(v0 + 120);
    (*(*(v0 + 184) + 8))(*(v0 + 216), *(v0 + 176));
    sub_10000B3A8(v14, &unk_1016AA510, &unk_101393150);
LABEL_5:
    sub_100DD9284(*(v0 + 296), *(v0 + 264), type metadata accessor for DeviceEvent);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 296);
    v19 = *(v0 + 264);
    if (v17)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
      v25 = sub_1000136BC(v22, v24, &v40);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not determine self-beacon UUID to publish the device event,for beacon: %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
    }

    sub_100DD92EC(v18, type metadata accessor for DeviceEvent);
    v26 = *(v0 + 456);
    v27 = *(v0 + 40);
    v28 = swift_task_alloc();
    *(v0 + 464) = v28;
    *v28 = v0;
    v28[1] = sub_100D7D198;
    v29 = *(v0 + 360);
    v30 = *(v0 + 304);

    return AsyncStream.Iterator.next(isolation:)(v30, v27, v26, v29);
  }

  v31 = *(v0 + 296);
  v32 = *(v0 + 224);
  v33 = *(v0 + 112);
  sub_100DD921C(*(v0 + 120), *(v0 + 144), type metadata accessor for DeviceEvent.AttachmentInfo);
  v34 = *(v32 + 36);
  *(v0 + 680) = v34;
  sub_100DD9284(v31 + v34, v33, type metadata accessor for BeaconIdentifier);
  v35 = swift_task_alloc();
  *(v0 + 568) = v35;
  *v35 = v0;
  v35[1] = sub_100D7E470;

  return daemon.getter();
}

uint64_t sub_100D7E190()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[37];
  sub_100500BC4();
  swift_allocError();
  *v5 = xmmword_1013E84B0;
  *(v5 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v4, type metadata accessor for DeviceEvent);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to register for device events: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D7E470(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[72] = a1;

  v4 = swift_task_alloc();
  v2[73] = v4;
  *v4 = v3;
  v4[1] = sub_100D7E5FC;
  v5 = v2[55];
  v6 = v2[54];
  v7 = v2[53];
  v8 = v2[52];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100D7E5FC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 592) = a1;

  v4 = *(v3 + 40);
  if (v1)
  {

    v5 = sub_100D7E9B8;
  }

  else
  {

    v5 = sub_100D7E760;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D7E760()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 48);
  (*(v0 + 536))(v3, *(v0 + 216), v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = swift_task_alloc();
  *(v0 + 600) = v4;
  *v4 = v0;
  v4[1] = sub_100D7E844;
  v5 = *(v0 + 112);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1010CEAB4(v6, v5, v7);
}

uint64_t sub_100D7E844()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v5 = sub_100D809A0;
  }

  else
  {
    v5 = sub_100D7F190;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D7E9B8()
{
  v59 = v0;
  v1 = v0;
  sub_100500BC4();
  swift_allocError();
  *v2 = xmmword_1013E84A0;
  *(v2 + 16) = 3;
  swift_willThrow();
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v51 = v0[32];
    v5 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58[0] = v56;
    *v5 = 138543875;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v6;
    *v54 = v6;
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v7;
    v8._countAndFlagsBits = 47;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = v0[2];
    v11 = v0[3];
    sub_100DD92EC(v51, type metadata accessor for DeviceEvent);
    v12 = sub_1000136BC(v10, v11, v58);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v5, 0x20u);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v56);
  }

  else
  {
    v13 = v0[32];

    sub_100DD92EC(v13, type metadata accessor for DeviceEvent);
  }

  if (static UUID.== infix(_:_:)())
  {
    v14 = v1[37];
    v15 = v1[35];
    v16 = v1[29];
    v17 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v14, v15, type metadata accessor for DeviceEvent);
    v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    sub_100DD921C(v15, v19 + v18, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v14 + 9), &off_10160D128))
    {
      v20 = swift_task_alloc();
      v1[83] = v20;
      *v20 = v1;
      v20[1] = sub_100D80738;

      return sub_100D815B0();
    }

    v35 = v1[37];
    v36 = v1[27];
    v37 = v1[22];
    v38 = v1[23];
    v39 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v39, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v38 + 8))(v36, v37);
    v34 = v35;
  }

  else
  {
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[37];
    v26 = v1[34];
    if (v24)
    {
      v57 = v1[27];
      v27 = v1[23];
      v53 = v1[18];
      v50 = v1[22];
      v52 = v1[14];
      v55 = v1[37];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100DD92EC(v26, type metadata accessor for DeviceEvent);
      v33 = sub_1000136BC(v30, v32, v58);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not publishing event from another device for beacon: %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);

      sub_100DD92EC(v52, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v53, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v27 + 8))(v57, v50);
      v34 = v55;
    }

    else
    {
      v40 = v1[27];
      v41 = v1[22];
      v42 = v1[23];
      v43 = v1[18];
      v44 = v1[14];

      sub_100DD92EC(v26, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v44, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v43, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v42 + 8))(v40, v41);
      v34 = v25;
    }
  }

  sub_100DD92EC(v34, type metadata accessor for DeviceEvent);
  v45 = v1[57];
  v46 = v1[5];
  v47 = swift_task_alloc();
  v1[58] = v47;
  *v47 = v1;
  v47[1] = sub_100D7D198;
  v48 = v1[45];
  v49 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v49, v46, v45, v48);
}

uint64_t sub_100D7F190()
{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[37];
    v3 = v0[27];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[18];
    sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v6, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v5 + 8))(v3, v4);
    sub_100DD92EC(v2, type metadata accessor for DeviceEvent);
    sub_10000B3A8(v1, &qword_1016AA4E0, &unk_1013BD0E0);
    v7 = v0[57];
    v8 = v0[5];
    v9 = swift_task_alloc();
    v0[58] = v9;
    *v9 = v0;
    v9[1] = sub_100D7D198;
    v10 = v0[45];
    v11 = v0[38];

    return AsyncStream.Iterator.next(isolation:)(v11, v8, v7, v10);
  }

  else
  {
    sub_1000D2AD8(v1, v0[12], &qword_1016998D0, &unk_1013931A0);
    v12 = swift_task_alloc();
    v0[77] = v12;
    *v12 = v0;
    v12[1] = sub_100D7F398;

    return daemon.getter();
  }
}

uint64_t sub_100D7F398(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[78] = a1;

  v4 = swift_task_alloc();
  v2[79] = v4;
  *v4 = v3;
  v4[1] = sub_100D7F524;
  v5 = v2[63];
  v6 = v2[62];
  v7 = v2[54];
  v8 = v2[52];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_100D7F524(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 40);

    v5 = sub_100D7FF44;
  }

  else
  {
    v6 = *(v4 + 104);

    *(v4 + 640) = a1;
    *(v4 + 684) = *(v6 + 20);
    v5 = sub_100D7F688;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_100D7F688()
{
  v15 = *(v0 + 640);
  v16 = *(v0 + 552);
  v1 = *(v0 + 536);
  v2 = *(v0 + 200);
  v14 = *(v0 + 684);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 88);
  v6 = *(v0 + 296) + *(v0 + 680);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_1000D2A70(*(v0 + 96), v5, &qword_1016998D0, &unk_1013931A0);
  v1(v2, v6 + v14, v3);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = (v8 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 648) = v11;
  *(v11 + 16) = v15;
  sub_1000D2AD8(v5, v11 + v9, &qword_1016998D0, &unk_1013931A0);
  v16(v11 + v10, v2, v3);

  v12 = swift_task_alloc();
  *(v0 + 656) = v12;
  *v12 = v0;
  v12[1] = sub_100D7F864;

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100DDC2C8, v11, &type metadata for () + 1);
}

uint64_t sub_100D7F864()
{
  v1 = *(*v0 + 640);

  return _swift_task_switch(sub_100D7F990, v1, 0);
}

uint64_t sub_100D7F990()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100D7F9FC, v1, 0);
}

uint64_t sub_100D7F9FC()
{
  v43 = v0;
  sub_10000B3A8(v0[12], &qword_1016998D0, &unk_1013931A0);
  if (static UUID.== infix(_:_:)())
  {
    v1 = v0[37];
    v2 = v0[35];
    v3 = v0[29];
    v4 = v0[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v1, v2, type metadata accessor for DeviceEvent);
    v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    sub_100DD921C(v2, v6 + v5, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v1 + 9), &off_10160D128))
    {
      v7 = swift_task_alloc();
      v0[83] = v7;
      *v7 = v0;
      v7[1] = sub_100D80738;

      return sub_100D815B0();
    }

    v22 = v0[37];
    v23 = v0[27];
    v24 = v0[22];
    v25 = v0[23];
    v26 = v0[18];
    sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v26, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v25 + 8))(v23, v24);
    v21 = v22;
  }

  else
  {
    sub_100DD9284(v0[37], v0[34], type metadata accessor for DeviceEvent);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[37];
    v13 = v0[34];
    if (v11)
    {
      v41 = v0[27];
      v14 = v0[23];
      v39 = v0[18];
      v37 = v0[22];
      v38 = v0[14];
      v40 = v0[37];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_100DD92EC(v13, type metadata accessor for DeviceEvent);
      v20 = sub_1000136BC(v17, v19, &v42);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not publishing event from another device for beacon: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);

      sub_100DD92EC(v38, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v39, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v14 + 8))(v41, v37);
      v21 = v40;
    }

    else
    {
      v27 = v0[27];
      v28 = v0[22];
      v29 = v0[23];
      v30 = v0[18];
      v31 = v0[14];

      sub_100DD92EC(v13, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v31, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v30, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v29 + 8))(v27, v28);
      v21 = v12;
    }
  }

  sub_100DD92EC(v21, type metadata accessor for DeviceEvent);
  v32 = v0[57];
  v33 = v0[5];
  v34 = swift_task_alloc();
  v0[58] = v34;
  *v34 = v0;
  v34[1] = sub_100D7D198;
  v35 = v0[45];
  v36 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v36, v33, v32, v35);
}

uint64_t sub_100D7FF44()
{
  v60 = v0;
  v1 = v0;
  v2 = v0[12];
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84B0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_10000B3A8(v2, &qword_1016998D0, &unk_1013931A0);
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v52 = v0[32];
    v6 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59[0] = v57;
    *v6 = 138543875;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v7;
    *v55 = v7;
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v8;
    v9._countAndFlagsBits = 47;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = v0[2];
    v12 = v0[3];
    sub_100DD92EC(v52, type metadata accessor for DeviceEvent);
    v13 = sub_1000136BC(v11, v12, v59);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v6, 0x20u);
    sub_10000B3A8(v55, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v57);
  }

  else
  {
    v14 = v0[32];

    sub_100DD92EC(v14, type metadata accessor for DeviceEvent);
  }

  if (static UUID.== infix(_:_:)())
  {
    v15 = v1[37];
    v16 = v1[35];
    v17 = v1[29];
    v18 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v15, v16, type metadata accessor for DeviceEvent);
    v19 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_100DD921C(v16, v20 + v19, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v15 + 9), &off_10160D128))
    {
      v21 = swift_task_alloc();
      v1[83] = v21;
      *v21 = v1;
      v21[1] = sub_100D80738;

      return sub_100D815B0();
    }

    v36 = v1[37];
    v37 = v1[27];
    v38 = v1[22];
    v39 = v1[23];
    v40 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v40, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v39 + 8))(v37, v38);
    v35 = v36;
  }

  else
  {
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[37];
    v27 = v1[34];
    if (v25)
    {
      v58 = v1[27];
      v28 = v1[23];
      v54 = v1[18];
      v51 = v1[22];
      v53 = v1[14];
      v56 = v1[37];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59[0] = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100DD92EC(v27, type metadata accessor for DeviceEvent);
      v34 = sub_1000136BC(v31, v33, v59);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not publishing event from another device for beacon: %{private,mask.hash}s", v29, 0x16u);
      sub_100007BAC(v30);

      sub_100DD92EC(v53, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v54, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v28 + 8))(v58, v51);
      v35 = v56;
    }

    else
    {
      v41 = v1[27];
      v42 = v1[22];
      v43 = v1[23];
      v44 = v1[18];
      v45 = v1[14];

      sub_100DD92EC(v27, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v45, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v44, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v43 + 8))(v41, v42);
      v35 = v26;
    }
  }

  sub_100DD92EC(v35, type metadata accessor for DeviceEvent);
  v46 = v1[57];
  v47 = v1[5];
  v48 = swift_task_alloc();
  v1[58] = v48;
  *v48 = v1;
  v48[1] = sub_100D7D198;
  v49 = v1[45];
  v50 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v50, v47, v46, v49);
}

uint64_t sub_100D80738()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100D81140;
  }

  else
  {
    v4 = sub_100D80864;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D80864()
{
  v1 = v0[37];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[18];
  sub_100DD92EC(v0[14], type metadata accessor for BeaconIdentifier);
  sub_100DD92EC(v5, type metadata accessor for DeviceEvent.AttachmentInfo);
  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for DeviceEvent);
  v6 = v0[57];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v0[58] = v8;
  *v8 = v0;
  v8[1] = sub_100D7D198;
  v9 = v0[45];
  v10 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v6, v9);
}

uint64_t sub_100D809A0()
{
  v58 = v0;
  v1 = v0;
  sub_100DD9284(v0[37], v0[32], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v50 = v0[32];
    v4 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v4 = 138543875;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v5;
    *v53 = v5;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v6;
    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9 = v0[2];
    v10 = v0[3];
    sub_100DD92EC(v50, type metadata accessor for DeviceEvent);
    v11 = sub_1000136BC(v9, v10, &v57);

    *(v4 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update the device event: %{public}@for beacon: %{private,mask.hash}s", v4, 0x20u);
    sub_10000B3A8(v53, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v55);
  }

  else
  {
    v12 = v0[32];

    sub_100DD92EC(v12, type metadata accessor for DeviceEvent);
  }

  if (static UUID.== infix(_:_:)())
  {
    v13 = v1[37];
    v14 = v1[35];
    v15 = v1[29];
    v16 = v1[5];
    type metadata accessor for Transaction();
    sub_100DD9284(v13, v14, type metadata accessor for DeviceEvent);
    v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_100DD921C(v14, v18 + v17, type metadata accessor for DeviceEvent);

    static Transaction.asyncTask(name:block:)();

    if (sub_10062CFC0(*(v13 + 9), &off_10160D128))
    {
      v19 = swift_task_alloc();
      v1[83] = v19;
      *v19 = v1;
      v19[1] = sub_100D80738;

      return sub_100D815B0();
    }

    v34 = v1[37];
    v35 = v1[27];
    v36 = v1[22];
    v37 = v1[23];
    v38 = v1[18];
    sub_100DD92EC(v1[14], type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v38, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v37 + 8))(v35, v36);
    v33 = v34;
  }

  else
  {
    sub_100DD9284(v1[37], v1[34], type metadata accessor for DeviceEvent);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[37];
    v25 = v1[34];
    if (v23)
    {
      v56 = v1[27];
      v26 = v1[23];
      v52 = v1[18];
      v49 = v1[22];
      v51 = v1[14];
      v54 = v1[37];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100DD92EC(v25, type metadata accessor for DeviceEvent);
      v32 = sub_1000136BC(v29, v31, &v57);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Not publishing event from another device for beacon: %{private,mask.hash}s", v27, 0x16u);
      sub_100007BAC(v28);

      sub_100DD92EC(v51, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v52, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v26 + 8))(v56, v49);
      v33 = v54;
    }

    else
    {
      v39 = v1[27];
      v40 = v1[22];
      v41 = v1[23];
      v42 = v1[18];
      v43 = v1[14];

      sub_100DD92EC(v25, type metadata accessor for DeviceEvent);
      sub_100DD92EC(v43, type metadata accessor for BeaconIdentifier);
      sub_100DD92EC(v42, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v41 + 8))(v39, v40);
      v33 = v24;
    }
  }

  sub_100DD92EC(v33, type metadata accessor for DeviceEvent);
  v44 = v1[57];
  v45 = v1[5];
  v46 = swift_task_alloc();
  v1[58] = v46;
  *v46 = v1;
  v46[1] = sub_100D7D198;
  v47 = v1[45];
  v48 = v1[38];

  return AsyncStream.Iterator.next(isolation:)(v48, v45, v44, v47);
}

uint64_t sub_100D81140()
{
  v31 = v0;
  sub_100DD9284(v0[37], v0[31], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v29 = v0[37];
  v4 = v0[31];
  if (v3)
  {
    v26 = v0[23];
    v27 = v0[27];
    v28 = v0[22];
    v24 = v0[14];
    v25 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v5 = 138543875;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100DD92EC(v4, type metadata accessor for DeviceEvent);
    v12 = sub_1000136BC(v9, v11, &v30);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to publish the device event: %{public}@for beacon: %{private,mask.hash}s", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);

    sub_100DD92EC(v24, type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v25, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v13 = v0[27];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v17 = v0[14];

    sub_100DD92EC(v4, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v17, type metadata accessor for BeaconIdentifier);
    sub_100DD92EC(v16, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v15 + 8))(v13, v14);
  }

  sub_100DD92EC(v29, type metadata accessor for DeviceEvent);
  v18 = v0[57];
  v19 = v0[5];
  v20 = swift_task_alloc();
  v0[58] = v20;
  *v20 = v0;
  v20[1] = sub_100D7D198;
  v21 = v0[45];
  v22 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v22, v19, v18, v21);
}

uint64_t sub_100D81514(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D81BC0(a2);
}

uint64_t sub_100D815B0()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100D81644;

  return daemon.getter();
}

uint64_t sub_100D81644(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100D81820;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D81820(uint64_t a1)
{
  v4 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = sub_1008F4BFC;
  }

  else
  {

    v6 = sub_100D81958;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D81958()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100D81A68;
  v2 = v0[8];

  return (v4)(v0 + 2, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_100D81A68()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_100D81BA4;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = sub_1003A24D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D81BC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for DeviceEvent(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DeviceEvent.Location(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D81D80, v1, 0);
}

uint64_t sub_100D81D80()
{
  v27 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 9);
  *(v0 + 220) = v2;
  if (v2 == 6)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016BB490);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not updating existing location for the disappeared device event.", v6, 2u);
    }

LABEL_7:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_1000D2A70(v1 + *(*(v0 + 56) + 28), v9, &qword_101699E50, &qword_1013D97C0);
  LODWORD(v10) = (*(v11 + 48))(v9, 1, v10);
  sub_10000B3A8(v9, &qword_101699E50, &qword_1013D97C0);
  if (v10 != 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 16);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016BB490);
    sub_100DD9284(v14, v13, type metadata accessor for DeviceEvent);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 72);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for BeaconIdentifier(0);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
      v25 = sub_1000136BC(v22, v24, &v26);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not updating existing location for the device event for beacon: %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
    }

    goto LABEL_7;
  }

  v12 = *(*(v0 + 24) + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);
  *(v0 + 144) = v12;

  return _swift_task_switch(sub_100D821DC, v12, 0);
}

uint64_t sub_100D821DC()
{
  sub_1000035D0((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100D8227C;

  return sub_100F87B58();
}

uint64_t sub_100D8227C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = a1;

  v4 = *(v3 + 24);
  if (v1)
  {

    v5 = sub_100D82C00;
  }

  else
  {
    v5 = sub_100D823BC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D823BC()
{
  v36 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    v34 = *(v0 + 220);
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v33 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = v1;
    [v9 coordinate];
    *v2 = v10;
    [v9 coordinate];
    v2[1] = v11;
    [v9 horizontalAccuracy];
    v2[2] = v12;
    v13 = [v9 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *v8;
    LOBYTE(v13) = *(v8 + 8);
    v15 = v6[6];
    *(v0 + 216) = v15;
    (*(v7 + 16))(v5 + v15, v8 + v15, v33);
    v16 = v6[7];
    sub_100DD9284(v2, v5 + v16, type metadata accessor for DeviceEvent.Location);
    (*(v3 + 56))(v5 + v16, 0, 1, v4);
    sub_1000D2A70(v8 + v6[8], v5 + v6[8], &unk_1016AA510, &unk_101393150);
    sub_100DD9284(v8 + v6[9], v5 + v6[9], type metadata accessor for BeaconIdentifier);
    static Date.trustedNow.getter(v5 + v6[10]);
    *v5 = v14;
    *(v5 + 8) = v13;
    *(v5 + 9) = v34;
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_100D82864;

    return daemon.getter();
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 80);
    v19 = *(v0 + 16);
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016BB490);
    sub_100DD9284(v19, v18, type metadata accessor for DeviceEvent);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 80);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      type metadata accessor for BeaconIdentifier(0);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100DD92EC(v24, type metadata accessor for DeviceEvent);
      v30 = sub_1000136BC(v27, v29, &v35);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to update location for the device eventfor beacon: %{private,mask.hash}s", v25, 0x16u);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100DD92EC(v24, type metadata accessor for DeviceEvent);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_100D82864(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100D82A40;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D82A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100D82FF4, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[25] = v6;
    *v6 = v4;
    v6[1] = sub_100D82ECC;
    v7 = v3[13];

    return sub_1010D02E4(v7);
  }
}

uint64_t sub_100D82C00()
{
  v17 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100DD9284(v2, v1, type metadata accessor for DeviceEvent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for BeaconIdentifier(0);
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update location for the device eventfor beacon: %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100DD92EC(v7, type metadata accessor for DeviceEvent);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100D82ECC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100D83920;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100D833F0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D82FF4()
{
  v27 = v0;
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84A0;
  *(v1 + 16) = 3;
  swift_willThrow();
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016BB490);
  sub_100DD9284(v3, v2, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[8];
  if (v7)
  {
    v25 = v0[20];
    v24 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v12 = 138543875;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for BeaconIdentifier(0);
    type metadata accessor for UUID();
    v23 = v9;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100DD92EC(v11, type metadata accessor for DeviceEvent);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v12 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update location for the device event, error: %{public}@ for beacon: %{private,mask.hash}s", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v22);

    sub_100DD92EC(v24, type metadata accessor for DeviceEvent);
    v19 = v23;
  }

  else
  {

    sub_100DD92EC(v11, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v10, type metadata accessor for DeviceEvent);
    v19 = v9;
  }

  sub_100DD92EC(v19, type metadata accessor for DeviceEvent.Location);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D833F0()
{
  v49 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = [*(v0 + 160) timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v6 = v5;
  v7 = *(v2 + 8);
  v7(v1, v3);
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 160);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 16);
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016BB490);
  sub_100DD9284(v11, v10, type metadata accessor for DeviceEvent);
  sub_100DD9284(v11, v9, type metadata accessor for DeviceEvent);
  v13 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 160);
  v18 = *(v0 + 128);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v21 = *(v0 + 88);
  if (v16)
  {
    log = v14;
    v46 = v15;
    v22 = *(v0 + 48);
    v47 = *(v0 + 104);
    v41 = *(v0 + 56);
    v42 = *(v0 + 32);
    v44 = v7;
    v23 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v23 = 141559043;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v24 = v17;
    v43 = v17;
    type metadata accessor for BeaconIdentifier(0);
    v25 = v21;
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100DD92EC(v20, type metadata accessor for DeviceEvent);
    v29 = sub_1000136BC(v26, v28, &v48);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2082;
    v30 = [v24 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100D97688(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v44(v22, v42);
    v34 = sub_1000136BC(v31, v33, &v48);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2082;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    sub_100DD92EC(v25, type metadata accessor for DeviceEvent);
    v38 = sub_1000136BC(v35, v37, &v48);

    *(v23 + 34) = v38;
    *(v23 + 42) = 2048;
    *(v23 + 44) = v6;
    _os_log_impl(&_mh_execute_header, log, v46, "Updated existing device event location for beacon: %{private,mask.hash}s. Location timestamp: %{public}s, eventTimestamp: %{public}s, delta: %f.", v23, 0x34u);
    swift_arrayDestroy();

    sub_100DD92EC(v47, type metadata accessor for DeviceEvent);
  }

  else
  {

    sub_100DD92EC(v21, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v20, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v19, type metadata accessor for DeviceEvent);
  }

  sub_100DD92EC(v18, type metadata accessor for DeviceEvent.Location);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100D83920()
{
  v26 = v0;

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100DD9284(v2, v1, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[8];
  if (v6)
  {
    v24 = v0[20];
    v23 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v11 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    type metadata accessor for BeaconIdentifier(0);
    type metadata accessor for UUID();
    v22 = v8;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100DD92EC(v10, type metadata accessor for DeviceEvent);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v11 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update location for the device event, error: %{public}@ for beacon: %{private,mask.hash}s", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);

    sub_100DD92EC(v23, type metadata accessor for DeviceEvent);
    v18 = v22;
  }

  else
  {

    sub_100DD92EC(v10, type metadata accessor for DeviceEvent);
    sub_100DD92EC(v9, type metadata accessor for DeviceEvent);
    v18 = v8;
  }

  sub_100DD92EC(v18, type metadata accessor for DeviceEvent.Location);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100D83CEC()
{
  v1[14] = v0;
  v1[15] = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v1[16] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for AccessoryConnectionService.Event(0);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BB8F8, &qword_1013E8AF8);
  v1[47] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016BB900, &qword_1013E8B00);
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016BB908, &qword_1013E8B08);
  v1[51] = v5;
  v1[52] = *(v5 - 8);
  v1[53] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[54] = v6;
  *v6 = v1;
  v6[1] = sub_100D84104;

  return daemon.getter();
}

uint64_t sub_100D84104(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccessoryConnectionService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AD620, type metadata accessor for AccessoryConnectionService, &unk_1013C3F20);
  *v3 = v9;
  v3[1] = sub_100D842E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D842E0(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 456) = a1;

  if (v1)
  {
    v3 = *(v4 + 112);

    v5 = sub_100D86284;
  }

  else
  {

    v5 = sub_100D84438;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100D84438()
{
  v1 = *(v0 + 112);
  sub_1008D29AC(*(v0 + 400));

  return _swift_task_switch(sub_100D844A8, v1, 0);
}

uint64_t sub_100D844A8()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v5 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  v0[58] = v4;
  v0[59] = v5;
  v0[60] = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_peripheralStreamProvider;
  swift_beginAccess();
  v6 = v0[58];
  v7 = v0[14];
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_100D845F0;
  v9 = v0[51];
  v10 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v6, v9);
}

uint64_t sub_100D845F0()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100D84700, v1, 0);
}

uint64_t sub_100D84700()
{
  v220 = v0;
  v1 = v0[47];
  v2 = sub_1000BC4D4(&qword_1016BB910, &qword_1013E8B10);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[52] + 8))(v0[53], v0[51]);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016BB490);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "accessoryConnectionService.stream() terminated", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }

  v10 = v0[45];
  v9 = v0[46];
  v0[62] = *v1;
  sub_100DD921C(v1 + *(v2 + 48), v9, type metadata accessor for AccessoryConnectionService.Event);
  sub_100DD9284(v9, v10, type metadata accessor for AccessoryConnectionService.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v0[45];
    v27 = v0[41];
    v28 = v0[27];
    v29 = v0[28];
    v30 = v0[26];
    v31 = sub_1000BC4D4(&qword_1016AD680, &qword_1013C4040);
    v32 = *(v26 + v31[12]);
    v33 = v31[16];
    v34 = *(v26 + v31[20]);
    (*(v29 + 32))(v27, v26, v28);
    sub_1000D2AD8(v26 + v33, v30, &qword_1016A40D0, &unk_10138BE70);
    if (((1 << v32) & 0x6BF) == 0)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v122 = v0[46];
      v123 = v0[44];
      v124 = type metadata accessor for Logger();
      sub_1000076D4(v124, qword_1016BB490);
      sub_100DD9284(v122, v123, type metadata accessor for AccessoryConnectionService.Event);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();
      v127 = os_log_type_enabled(v125, v126);
      v128 = v0[44];
      if (v127)
      {
        v129 = v0[43];
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v219 = v131;
        *v130 = 136315138;
        sub_100DD9284(v128, v129, type metadata accessor for AccessoryConnectionService.Event);
        v132 = String.init<A>(describing:)();
        v134 = v133;
        sub_100DD92EC(v128, type metadata accessor for AccessoryConnectionService.Event);
        v135 = sub_1000136BC(v132, v134, &v219);

        *(v130 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v125, v126, "raw accessoryConnectionService event: %s", v130, 0xCu);
        sub_100007BAC(v131);
      }

      else
      {

        sub_100DD92EC(v128, type metadata accessor for AccessoryConnectionService.Event);
      }

      v194 = swift_task_alloc();
      v0[63] = v194;
      *v194 = v0;
      v194[1] = sub_100D85E1C;
      v76 = v0[26];
      v77 = v0[41];
      v78 = v34;
      goto LABEL_69;
    }

    v35 = v0[46];
    v36 = v0[41];
    v38 = v0[27];
    v37 = v0[28];
    v39 = v0[26];

    sub_10000B3A8(v39, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v40 = v0[59];
    v41 = v0[23];
    v42 = v0[14];
    v43 = *(v0[28] + 32);
    v43(v0[33], v0[45], v0[27]);
    sub_100DD9284(v42 + v40, v41, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (!v44)
      {
        v45 = v0[46];
        v47 = v0[32];
        v46 = v0[33];
        v48 = v0[27];
        v49 = v0[28];
        v43(v47, v0[23], v48);
        v50 = static UUID.== infix(_:_:)();

        v51 = *(v49 + 8);
        v51(v47, v48);
        v51(v46, v48);
        sub_100DD92EC(v45, type metadata accessor for AccessoryConnectionService.Event);
        if (v50)
        {
          v52 = v0[59];
          v53 = v0[22];
          v54 = v0[14];
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100DD6A88(v53, v54 + v52);
          swift_endAccess();
        }

        goto LABEL_44;
      }

      v79 = v0[31];
      v80 = v0[27];
      v81 = v0[23];
      v82 = v0[20];
      v83 = v0[17];
      v84 = v0[18];
      v85 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
      v43(v79, v81, v80);
      (*(v84 + 32))(v82, v81 + v85, v83);
      if (static UUID.== infix(_:_:)())
      {
        v86 = v0[59];
        v87 = v0[22];
        v88 = v0[14];
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100DD6A88(v87, v88 + v86);
        swift_endAccess();
        if (qword_101694EA0 != -1)
        {
          swift_once();
        }

        v89 = v0[33];
        v90 = v0[30];
        v92 = v0[27];
        v91 = v0[28];
        v94 = v0[19];
        v93 = v0[20];
        v95 = v0[17];
        v96 = v0[18];
        v97 = type metadata accessor for Logger();
        sub_1000076D4(v97, qword_1016BB490);
        (*(v91 + 16))(v90, v89, v92);
        v214 = *(v96 + 16);
        v214(v94, v93, v95);
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        v100 = os_log_type_enabled(v98, v99);
        v101 = v0[30];
        v103 = v0[27];
        v102 = v0[28];
        v104 = v0[18];
        v105 = v0[19];
        v106 = v0[17];
        if (v100)
        {
          v202 = v99;
          v107 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          *v107 = 136315394;
          sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          log = v98;
          v110 = v109;
          v210 = *(v102 + 8);
          v210(v101, v103);
          v111 = sub_1000136BC(v108, v110, &v219);

          *(v107 + 4) = v111;
          *(v107 + 12) = 2080;
          sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
          v112 = dispatch thunk of CustomStringConvertible.description.getter();
          v114 = v113;
          v207 = *(v104 + 8);
          v207(v105, v106);
          v115 = sub_1000136BC(v112, v114, &v219);

          *(v107 + 14) = v115;
          _os_log_impl(&_mh_execute_header, log, v202, "Pencil detached: uuid: %s %s", v107, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v207 = *(v104 + 8);
          v207(v105, v106);
          v210 = *(v102 + 8);
          v210(v101, v103);
        }

        v204 = v0[33];
        v206 = v0[46];
        v196 = v0[31];
        v197 = v0[27];
        v198 = v0[20];
        v199 = v0[17];
        v200 = v0[16];
        v214(v200, v198, v199);
        type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10000B3A8(v200, &qword_10169A068, &qword_1013933F0);
        v207(v198, v199);
        v210(v196, v197);
        v210(v204, v197);
        v116 = v206;
        goto LABEL_43;
      }

      v35 = v0[46];
      v186 = v0[33];
      v188 = v0[31];
      v189 = v0[27];
      v187 = v0[28];
      v190 = v0[20];
      v191 = v0[17];
      v192 = v0[18];

      (*(v192 + 8))(v190, v191);
LABEL_66:
      v193 = *(v187 + 8);
      v193(v188, v189);
      v193(v186, v189);
      goto LABEL_42;
    }

    if (v44 == 2)
    {
      v43(v0[29], v0[23], v0[27]);
      if (static UUID.== infix(_:_:)())
      {
        v55 = v0[59];
        v56 = v0[22];
        v57 = v0[14];
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100DD6A88(v56, v57 + v55);
        swift_endAccess();
        if (qword_101694EA0 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000076D4(v58, qword_1016BB490);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        v61 = os_log_type_enabled(v59, v60);
        v35 = v0[46];
        v62 = v0[33];
        v63 = v0[28];
        v64 = v0[29];
        v65 = v0[27];
        if (v61)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Unsupported pencil detached.", v66, 2u);
        }

        v67 = *(v63 + 8);
        v67(v64, v65);
        v67(v62, v65);
        goto LABEL_42;
      }

      v35 = v0[46];
      v186 = v0[33];
      v187 = v0[28];
      v188 = v0[29];
      v189 = v0[27];

      goto LABEL_66;
    }

    v35 = v0[46];
    v36 = v0[33];
    v38 = v0[27];
    v37 = v0[28];

LABEL_41:
    (*(v37 + 8))(v36, v38);
LABEL_42:
    v116 = v35;
LABEL_43:
    sub_100DD92EC(v116, type metadata accessor for AccessoryConnectionService.Event);
    goto LABEL_44;
  }

  v12 = v0[59];
  v13 = v0[45];
  v14 = v0[40];
  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[14];
  v20 = sub_1000BC4D4(&unk_1016AD638, &qword_1013C3FD8);
  v21 = *(v20 + 48);
  v213 = *(v13 + *(v20 + 64));
  v22 = v16;
  v23 = *(v15 + 32);
  v23(v14, v13, v22);
  sub_1000D2AD8(v13 + v21, v17, &qword_1016A40D0, &unk_10138BE70);
  sub_100DD9284(v19 + v12, v18, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
LABEL_34:
      v75 = swift_task_alloc();
      v0[64] = v75;
      *v75 = v0;
      v75[1] = sub_100D86050;
      v76 = v0[25];
      v77 = v0[40];
      v78 = v213;
LABEL_69:

      return sub_100D938F4(v77, v76, v78);
    }

    v23(v0[35], v0[24], v0[27]);
    if (static UUID.== infix(_:_:)())
    {
      v25 = v0[35];
      goto LABEL_24;
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v148 = v0[40];
    v149 = v0[34];
    v151 = v0[27];
    v150 = v0[28];
    v152 = type metadata accessor for Logger();
    sub_1000076D4(v152, qword_1016BB490);
    (*(v150 + 16))(v149, v148, v151);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v0[46];
    v145 = v0[40];
    v147 = v0[34];
    v146 = v0[35];
    goto LABEL_57;
  }

  if (!v24)
  {
    v23(v0[39], v0[24], v0[27]);
    if (static UUID.== infix(_:_:)())
    {
      v25 = v0[39];
LABEL_24:
      (*(v0[28] + 8))(v25, v0[27]);
      goto LABEL_34;
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v136 = v0[40];
    v137 = v0[38];
    v139 = v0[27];
    v138 = v0[28];
    v140 = type metadata accessor for Logger();
    sub_1000076D4(v140, qword_1016BB490);
    (*(v138 + 16))(v137, v136, v139);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v0[46];
    v146 = v0[39];
    v145 = v0[40];
    v147 = v0[38];
LABEL_57:
    v153 = v0[27];
    v154 = v0[28];
    v155 = v0[25];
    if (v143)
    {
      v217 = v144;
      v156 = swift_slowAlloc();
      v215 = v145;
      v157 = swift_slowAlloc();
      v219 = v157;
      *v156 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v208 = v146;
      v211 = v155;
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      v161 = *(v154 + 8);
      v161(v147, v153);
      v162 = sub_1000136BC(v158, v160, &v219);

      *(v156 + 4) = v162;
      _os_log_impl(&_mh_execute_header, v141, v142, "Got .propertyInfoChanged event without an earlier .attach event for %{public}s", v156, 0xCu);
      sub_100007BAC(v157);

      v161(v208, v153);
      sub_10000B3A8(v211, &qword_1016A40D0, &unk_10138BE70);
      v161(v215, v153);
      v116 = v217;
    }

    else
    {

      v185 = *(v154 + 8);
      v185(v147, v153);
      v185(v146, v153);
      sub_10000B3A8(v155, &qword_1016A40D0, &unk_10138BE70);
      v185(v145, v153);
      v116 = v144;
    }

    goto LABEL_43;
  }

  v68 = v23;
  v69 = v0[37];
  v70 = v0[27];
  v71 = v0[24];
  v72 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
  v68(v69, v71, v70);
  if (static UUID.== infix(_:_:)())
  {
    v73 = v0[17];
    v74 = v0[18];
    (*(v0[28] + 8))(v0[37], v0[27]);
    (*(v74 + 8))(v71 + v72, v73);
    goto LABEL_34;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v163 = v0[40];
  v164 = v0[36];
  v166 = v0[27];
  v165 = v0[28];
  v167 = type metadata accessor for Logger();
  sub_1000076D4(v167, qword_1016BB490);
  (*(v165 + 16))(v164, v163, v166);
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.default.getter();
  v170 = os_log_type_enabled(v168, v169);
  v171 = v0[46];
  v172 = v0[40];
  v173 = v0[36];
  v216 = v0[37];
  v175 = v0[27];
  v174 = v0[28];
  v218 = v0[25];
  if (v170)
  {
    v209 = v0[46];
    v176 = swift_slowAlloc();
    v212 = v72;
    v203 = swift_slowAlloc();
    v219 = v203;
    *v176 = 136446210;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v205 = v172;
    v177 = dispatch thunk of CustomStringConvertible.description.getter();
    v178 = v169;
    v179 = v71;
    v181 = v180;
    v182 = *(v174 + 8);
    v182(v173, v175);
    v183 = sub_1000136BC(v177, v181, &v219);
    v71 = v179;

    *(v176 + 4) = v183;
    _os_log_impl(&_mh_execute_header, v168, v178, "Got .propertyInfoChanged event without an earlier .attach event for %{public}s", v176, 0xCu);
    sub_100007BAC(v203);
    v72 = v212;

    v182(v216, v175);
    sub_10000B3A8(v218, &qword_1016A40D0, &unk_10138BE70);
    v182(v205, v175);
    v184 = v209;
  }

  else
  {

    v195 = *(v174 + 8);
    v195(v173, v175);
    v195(v216, v175);
    sub_10000B3A8(v218, &qword_1016A40D0, &unk_10138BE70);
    v195(v172, v175);
    v184 = v171;
  }

  sub_100DD92EC(v184, type metadata accessor for AccessoryConnectionService.Event);
  (*(v0[18] + 8))(v71 + v72, v0[17]);
LABEL_44:
  v117 = v0[58];
  v118 = v0[14];
  v119 = swift_task_alloc();
  v0[61] = v119;
  *v119 = v0;
  v119[1] = sub_100D845F0;
  v120 = v0[51];
  v121 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v121, v118, v117, v120);
}

uint64_t sub_100D85E1C()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100D85F2C, v1, 0);
}

uint64_t sub_100D85F2C()
{
  v1 = v0[46];
  v2 = v0[41];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];

  sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for AccessoryConnectionService.Event);
  v6 = v0[58];
  v7 = v0[14];
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_100D845F0;
  v9 = v0[51];
  v10 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v6, v9);
}

uint64_t sub_100D86050()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100D86160, v1, 0);
}

uint64_t sub_100D86160()
{
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];

  sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for AccessoryConnectionService.Event);
  v6 = v0[58];
  v7 = v0[14];
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_100D845F0;
  v9 = v0[51];
  v10 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, v6, v9);
}

uint64_t sub_100D86284()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing AccessoryConnectionService", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100D864F4()
{
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for CentralManager.ConnectedState();
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20);
  v1[6] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100D866B4, v0, 0);
}

uint64_t sub_100D866B4()
{
  v18 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[14] = *(v0[3] + 144);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = type metadata accessor for CentralManager();
  v0[17] = v14;
  v15 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v13 = v0;
  v13[1] = sub_100D869AC;

  return CentralManagerProtocol.await(states:)(v10, v14, v15);
}

uint64_t sub_100D869AC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_10026E4B8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100D86AD4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D86AD4()
{
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v1 = swift_allocObject();
  *(v0 + 152) = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_100D97688(&unk_1016C21D0, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D86C4C, v3, v2);
}

uint64_t sub_100D86C4C()
{
  v1 = v0[18];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[20] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_10026E644;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_100D86CF0;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100D86CF0()
{
  AsyncStream.makeAsyncIterator()();
  v1 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v2 = v0[20];
  v0[21] = v1;
  v0[22] = v2;
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_100D86DEC;
  v5 = v0[6];
  v6 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v1, v6);
}

uint64_t sub_100D86DEC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100D86EFC, v1, 0);
}

uint64_t sub_100D86EFC()
{
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "centralManager.connectionEvents() terminated", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_12;
  }

  v10 = v0[22];
  v11 = v0[5];
  v12 = *v1;
  v0[24] = *v1;
  sub_100DD921C(v1 + *(v2 + 48), v11, &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[5];

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    sub_100DD92EC(v19, &type metadata accessor for CentralManager.ConnectedState);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v22, 0xCu);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_12:

    v31 = v0[1];

    return v31();
  }

  v25 = v0[21];
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  type metadata accessor for Transaction();
  v0[25] = static Transaction.$current.getter();
  v0[2] = v12;
  v29 = swift_task_alloc();
  v0[26] = v29;
  v29[2] = v26;
  v29[3] = v28;
  v29[4] = v27;

  v30 = swift_task_alloc();
  v0[27] = v30;
  *v30 = v0;
  v30[1] = sub_100D87348;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v30, v0 + 2, &unk_1013E8AB8, v29, v28, v25, 0xD000000000000027, 0x8000000101371060);
}

uint64_t sub_100D87348()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 24);

  if (v0)
  {
    v4 = sub_100D87584;
  }

  else
  {
    v4 = sub_100D874A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D874A4()
{

  v1 = v0[28];
  sub_100DD92EC(v0[5], &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = v1;
  v2 = v0[21];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_100D86DEC;
  v5 = v0[6];
  v6 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100D87584()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error processing monitorBluetoothConnections event: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  sub_100DD92EC(v0[5], &type metadata accessor for CentralManager.ConnectedState);
  v0[22] = 0;
  v6 = v0[21];
  v7 = v0[3];
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_100D86DEC;
  v9 = v0[6];
  v10 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
}

uint64_t sub_100D8776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for CentralManager.State();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for CentralManager.ConnectedState();
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for CentralManager();
  v8 = swift_task_alloc();
  v3[38] = v8;
  *v8 = v3;
  v8[1] = sub_100D87AF8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100D87AF8(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[3];

    return _swift_task_switch(sub_100D87D74, v6, 0);
  }
}

uint64_t sub_100D87D74()
{
  v52 = v0;
  v1 = v0[19];
  sub_100DD9284(v0[2], v0[36], &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  v4 = v0[36];
  v5 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v3(v0[27], v4, v5);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[18];
    v9 = v0[19];
    v10 = type metadata accessor for Logger();
    v0[59] = sub_1000076D4(v10, qword_1016BB490);
    v11 = *(v9 + 16);
    v0[60] = v11;
    v0[61] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v6, v7, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[26];
    v16 = v0[18];
    v17 = v0[19];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = *(v17 + 8);
      v22(v15, v16);
      v23 = sub_1000136BC(v19, v21, &v51);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connected to %{public}s", v18, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {

      v22 = *(v17 + 8);
      v22(v15, v16);
    }

    v0[62] = v22;
    (*(v0[5] + 104))(v0[6], enum case for CentralManager.State.poweredOn(_:), v0[4]);
    v42 = swift_task_alloc();
    v0[63] = v42;
    v43 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    *v42 = v0;
    v42[1] = sub_100D8A070;
    v44 = v0[37];
    v45 = v0[6];

    return CentralManagerProtocol.await(state:)(v45, v44, v43);
  }

  else
  {
    v3(v0[34], v4, v5);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v24 = v0[33];
    v25 = v0[34];
    v26 = v0[18];
    v27 = v0[19];
    v28 = type metadata accessor for Logger();
    v0[40] = sub_1000076D4(v28, qword_1016BB490);
    v29 = *(v27 + 16);
    v0[41] = v29;
    v0[42] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v24, v25, v26);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[33];
    v34 = v0[18];
    v35 = v0[19];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v36 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v35 + 8);
      v40(v33, v34);
      v41 = sub_1000136BC(v37, v39, &v51);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Disconnected from %{public}s", v36, 0xCu);
      sub_100007BAC(v50);
    }

    else
    {

      v40 = *(v35 + 8);
      v40(v33, v34);
    }

    v0[43] = v40;

    v46 = swift_task_alloc();
    v0[44] = v46;
    *v46 = v0;
    v46[1] = sub_100D88340;
    v47 = v0[39];

    return withTimeout<A>(_:block:)(v46, 2000000000000000000, 0, &unk_1013E8AD0, v47, &type metadata for () + 1);
  }
}

uint64_t sub_100D88340()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100D8C40C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100D88468;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D88468()
{
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v1 = swift_allocObject();
  *(v0 + 368) = v1;
  *(v1 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v4 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = sub_100D88578;

  return v4(v1);
}

uint64_t sub_100D88578(uint64_t a1)
{
  v3 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100D8C664;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100D886A0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D886A0()
{
  v27 = v0;
  v1 = v0[48];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[41];
    v6 = v0[34];
    v7 = v0[32];
    v8 = v0[18];

    v5(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[43];
    v13 = v0[34];
    v14 = v0[32];
    v15 = v0[18];
    if (v11)
    {
      v25 = v0[43];
      v16 = swift_slowAlloc();
      v23 = v13;
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v25(v14, v15);
      v21 = sub_1000136BC(v18, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to retrieve a Peripheral for %{public}s", v16, 0xCu);
      sub_100007BAC(v17);

      v25(v23, v15);
    }

    else
    {

      v12(v14, v15);
      v12(v13, v15);
    }

    v22 = v0[1];

    return v22();
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

    v3 = *(v0[48] + 32);
  }

  v0[50] = v3;

  v24 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_100D88AF4;

  return v24();
}

uint64_t sub_100D88AF4(char a1)
{
  v4 = *v2;
  *(v4 + 416) = v1;

  v5 = *(v4 + 24);
  if (v1)
  {
    v6 = sub_100D8C8BC;
  }

  else
  {
    *(v4 + 672) = a1 & 1;
    v6 = sub_100D88C34;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D88C34()
{
  v21 = v0;
  if (*(v0 + 672))
  {
    v1 = swift_task_alloc();
    *(v0 + 456) = v1;
    *v1 = v0;
    v1[1] = sub_100D89858;
    v2 = *(v0 + 400);

    return sub_100D94F40(v2);
  }

  else
  {
    (*(v0 + 328))(*(v0 + 248), *(v0 + 272), *(v0 + 144));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 344);
    v8 = *(v0 + 248);
    v9 = *(v0 + 144);
    if (v6)
    {
      v19 = *(v0 + 344);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v19(v8, v9);
      v15 = sub_1000136BC(v12, v14, &v20);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Checking if we have a matching record for %{public}s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      v7(v8, v9);
    }

    v16 = swift_task_alloc();
    *(v0 + 424) = v16;
    *v16 = v0;
    v16[1] = sub_100D88EE0;
    v17 = *(v0 + 272);
    v18 = *(v0 + 104);

    return sub_100D8D800(v18, v17);
  }
}

uint64_t sub_100D88EE0()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100D8CB14;
  }

  else
  {
    v4 = sub_100D8900C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D8900C()
{
  v32 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[41];
    v3 = v0[34];
    v4 = v0[30];
    v5 = v0[18];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v2(v4, v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[43];
    v10 = v0[34];
    v11 = v0[30];
    v12 = v0[18];
    if (v8)
    {
      v30 = v0[34];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v7;
      v17 = v16;
      v9(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v29, "No LocalFindableRecord for %{public}s", v13, 0xCu);
      sub_100007BAC(v14);

      v9(v30, v12);
    }

    else
    {

      v9(v11, v12);
      v9(v10, v12);
    }

    v28 = v0[1];

    return v28();
  }

  else
  {
    v19 = v0[17];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    sub_100DD921C(v1, v19, type metadata accessor for LocalFindableAccessoryRecord);
    (*(v22 + 16))(v20, v19, v21);
    type metadata accessor for Peripheral();
    Identifier.init(_:)();
    (*(v22 + 56))(v23, 1, 1, v21);
    v24 = swift_task_alloc();
    v0[55] = v24;
    *v24 = v0;
    v24[1] = sub_100D894BC;
    v25 = v0[29];
    v26 = v0[7];

    return sub_100D70FF8(v25, v26);
  }
}

uint64_t sub_100D894BC()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 24);

  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  *(v1 + 448) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v5);

  return _swift_task_switch(sub_100D89684, v7, 0);
}

uint64_t sub_100D89684()
{
  v1 = v0[43];
  v2 = v0[34];
  v4 = v0[17];
  v3 = v0[18];

  sub_100DD92EC(v4, type metadata accessor for LocalFindableAccessoryRecord);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D89858(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 673) = a1;

  return _swift_task_switch(sub_100D89970, v2, 0);
}

uint64_t sub_100D89970()
{
  v22 = v0;
  if (*(v0 + 673) == 1)
  {
    (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_100D89D74;
    v2 = *(v0 + 272);
    v3 = *(v0 + 56);

    return sub_100D70FF8(v2, v3);
  }

  else
  {
    (*(v0 + 328))(*(v0 + 224), *(v0 + 272), *(v0 + 144));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 344);
    v9 = *(v0 + 272);
    v10 = *(v0 + 224);
    v11 = *(v0 + 144);
    if (v7)
    {
      v20 = *(v0 + 272);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v6;
      v16 = v15;
      v8(v10, v11);
      v17 = sub_1000136BC(v14, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v19, "Ignore connection event for unsupported accessory %{public}s", v12, 0xCu);
      sub_100007BAC(v13);

      v8(v20, v11);
    }

    else
    {

      v8(v10, v11);
      v8(v9, v11);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100D89D74()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D89EB0, v2, 0);
}

uint64_t sub_100D89EB0()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[18];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D8A070()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 512) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100D8CD6C;
  }

  else
  {
    v7 = sub_100D8A1F8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D8A1F8()
{
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v1 = swift_allocObject();
  *(v0 + 520) = v1;
  *(v1 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v4 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  v2[1] = sub_100D8A308;

  return v4(v1);
}

uint64_t sub_100D8A308(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 536) = a1;
  *(v4 + 544) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_100D8CF28;
  }

  else
  {
    v6 = sub_100D8A45C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D8A45C()
{
  v27 = v0;
  v1 = v0[67];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[60];
    v6 = v0[27];
    v7 = v0[21];
    v8 = v0[18];

    v5(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[62];
    v13 = v0[27];
    v14 = v0[21];
    v15 = v0[18];
    if (v11)
    {
      v25 = v0[62];
      v16 = swift_slowAlloc();
      v23 = v13;
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v25(v14, v15);
      v21 = sub_1000136BC(v18, v20, &v26);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);

      v25(v23, v15);
    }

    else
    {

      v12(v14, v15);
      v12(v13, v15);
    }

    v22 = v0[1];

    return v22();
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

    v3 = *(v0[67] + 32);
  }

  v0[69] = v3;

  v24 = (&async function pointer to dispatch thunk of Peripheral.isPaired.getter + async function pointer to dispatch thunk of Peripheral.isPaired.getter);
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_100D8A8C4;

  return v24();
}

uint64_t sub_100D8A8C4(char a1)
{
  v4 = *v2;
  *(v4 + 568) = v1;

  v5 = *(v4 + 24);
  if (v1)
  {
    v6 = sub_100D8D0E4;
  }

  else
  {
    *(v4 + 674) = a1 & 1;
    v6 = sub_100D8AA04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D8AA04()
{
  v21 = v0;
  if (*(v0 + 674))
  {
    v1 = swift_task_alloc();
    *(v0 + 608) = v1;
    *v1 = v0;
    v1[1] = sub_100D8B62C;
    v2 = *(v0 + 552);

    return sub_100D94F40(v2);
  }

  else
  {
    (*(v0 + 480))(*(v0 + 200), *(v0 + 216), *(v0 + 144));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 496);
    v8 = *(v0 + 200);
    v9 = *(v0 + 144);
    if (v6)
    {
      v19 = *(v0 + 496);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v19(v8, v9);
      v15 = sub_1000136BC(v12, v14, &v20);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Checking if we have a matching record for %{public}s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      v7(v8, v9);
    }

    v16 = swift_task_alloc();
    *(v0 + 576) = v16;
    *v16 = v0;
    v16[1] = sub_100D8ACB0;
    v17 = *(v0 + 216);
    v18 = *(v0 + 96);

    return sub_100D8D800(v18, v17);
  }
}

uint64_t sub_100D8ACB0()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100D8D2AC;
  }

  else
  {
    v4 = sub_100D8ADDC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D8ADDC()
{
  v32 = v0;
  v1 = v0[12];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[60];
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[18];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v2(v4, v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[62];
    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[18];
    if (v8)
    {
      v30 = v0[27];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v7;
      v17 = v16;
      v9(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v29, "No LocalFindableRecord for %{public}s", v13, 0xCu);
      sub_100007BAC(v14);

      v9(v30, v12);
    }

    else
    {

      v9(v11, v12);
      v9(v10, v12);
    }

    v28 = v0[1];

    return v28();
  }

  else
  {
    v19 = v0[16];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    sub_100DD921C(v1, v19, type metadata accessor for LocalFindableAccessoryRecord);
    (*(v22 + 16))(v20, v19, v21);
    type metadata accessor for Peripheral();
    Identifier.init(_:)();
    (*(v22 + 56))(v23, 1, 1, v21);
    v24 = swift_task_alloc();
    v0[74] = v24;
    *v24 = v0;
    v24[1] = sub_100D8B28C;
    v25 = v0[29];
    v26 = v0[7];

    return sub_100D70938(v25, v26);
  }
}

uint64_t sub_100D8B28C()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 24);

  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  *(v1 + 600) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v5);

  return _swift_task_switch(sub_100D8B454, v7, 0);
}

uint64_t sub_100D8B454()
{
  v1 = v0[62];
  v2 = v0[27];
  v3 = v0[18];
  v4 = v0[16];

  sub_100DD92EC(v4, type metadata accessor for LocalFindableAccessoryRecord);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D8B62C(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 675) = a1;

  return _swift_task_switch(sub_100D8B744, v2, 0);
}

uint64_t sub_100D8B744()
{
  v22 = v0;
  if (*(v0 + 675) == 1)
  {
    (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
    v1 = swift_task_alloc();
    *(v0 + 616) = v1;
    *v1 = v0;
    v1[1] = sub_100D8BB48;
    v2 = *(v0 + 216);
    v3 = *(v0 + 56);

    return sub_100D70938(v2, v3);
  }

  else
  {
    (*(v0 + 480))(*(v0 + 176), *(v0 + 216), *(v0 + 144));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 496);
    v9 = *(v0 + 216);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    if (v7)
    {
      v20 = *(v0 + 216);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v6;
      v16 = v15;
      v8(v10, v11);
      v17 = sub_1000136BC(v14, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v19, "Ignore connection event for unsupported accessory %{public}s", v12, 0xCu);
      sub_100007BAC(v13);

      v8(v20, v11);
    }

    else
    {

      v8(v10, v11);
      v8(v9, v11);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100D8BB48()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D8BC84, v2, 0);
}

uint64_t sub_100D8BC84(uint64_t a1)
{
  v2 = v1[62];
  v3 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  Peripheral.id.getter();
  Identifier.id.getter();
  v1[78] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v4);
  v6 = swift_task_alloc();
  v1[79] = v6;
  *v6 = v1;
  v6[1] = sub_100D8BD7C;
  v7 = v1[10];

  return sub_100D8FD14(v7);
}

uint64_t sub_100D8BD7C(char a1)
{
  v4 = *v2;
  *(v4 + 640) = v1;

  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *(v4 + 64);
  v8 = *(v4 + 24);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_100D8D474;
  }

  else
  {
    *(v4 + 676) = a1 & 1;
    (*(v6 + 8))(v5, v7);
    v9 = sub_100D8BF1C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D8BF1C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  if (*(v0 + 676) == 1)
  {
    sub_100D8F834(*(v0 + 216));

    v1(v2, v3);
  }

  else
  {
    v1(*(v0 + 216), *(v0 + 144));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100D8C110()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  return _swift_task_switch(sub_100D8C24C, v2, 0);
}

uint64_t sub_100D8C24C()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[18];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D8C40C()
{
  v21 = v0;

  *(v0 + 648) = *(v0 + 360);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 344);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (v3)
  {
    v19 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = v6 + 8;
    v19(v5, v7);
    v14 = sub_1000136BC(v10, v12, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    v13 = v6 + 8;
    v4(v5, v7);
  }

  *(v0 + 656) = v13;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v15 = swift_task_alloc();
  *(v0 + 664) = v15;
  *v15 = v0;
  v15[1] = sub_100D8C110;
  v16 = *(v0 + 272);
  v17 = *(v0 + 56);

  return sub_100D70FF8(v16, v17);
}

uint64_t sub_100D8C664()
{
  v21 = v0;

  *(v0 + 648) = *(v0 + 392);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 344);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (v3)
  {
    v19 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = v6 + 8;
    v19(v5, v7);
    v14 = sub_1000136BC(v10, v12, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    v13 = v6 + 8;
    v4(v5, v7);
  }

  *(v0 + 656) = v13;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v15 = swift_task_alloc();
  *(v0 + 664) = v15;
  *v15 = v0;
  v15[1] = sub_100D8C110;
  v16 = *(v0 + 272);
  v17 = *(v0 + 56);

  return sub_100D70FF8(v16, v17);
}

uint64_t sub_100D8C8BC()
{
  v21 = v0;

  *(v0 + 648) = *(v0 + 416);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 344);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (v3)
  {
    v19 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = v6 + 8;
    v19(v5, v7);
    v14 = sub_1000136BC(v10, v12, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    v13 = v6 + 8;
    v4(v5, v7);
  }

  *(v0 + 656) = v13;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v15 = swift_task_alloc();
  *(v0 + 664) = v15;
  *v15 = v0;
  v15[1] = sub_100D8C110;
  v16 = *(v0 + 272);
  v17 = *(v0 + 56);

  return sub_100D70FF8(v16, v17);
}

uint64_t sub_100D8CB14()
{
  v21 = v0;

  *(v0 + 648) = *(v0 + 432);
  (*(v0 + 328))(*(v0 + 160), *(v0 + 272), *(v0 + 144));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 344);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (v3)
  {
    v19 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = v6 + 8;
    v19(v5, v7);
    v14 = sub_1000136BC(v10, v12, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timed out waiting for BT .poweredOn. Saving disconnect event for %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    v13 = v6 + 8;
    v4(v5, v7);
  }

  *(v0 + 656) = v13;
  (*(*(v0 + 72) + 56))(*(v0 + 56), 1, 1, *(v0 + 64));
  v15 = swift_task_alloc();
  *(v0 + 664) = v15;
  *v15 = v0;
  v15[1] = sub_100D8C110;
  v16 = *(v0 + 272);
  v17 = *(v0 + 56);

  return sub_100D70FF8(v16, v17);
}

uint64_t sub_100D8CD6C()
{

  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8CF28()
{

  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8D0E4()
{

  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8D2AC()
{

  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8D474()
{

  (*(v0 + 496))(*(v0 + 216), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8D630(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100D8D6F0, 0, 0);
}

uint64_t sub_100D8D6F0()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = type metadata accessor for CentralManager();
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100274D78;
  v4 = v0[5];

  return CentralManagerProtocol.await(state:)(v4, v2, v3);
}

uint64_t sub_100D8D800(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100D8DA64, v2, 0);
}

uint64_t sub_100D8DA64()
{
  v22 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[18];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v21);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[27] = v17;
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_100D8DD1C;

  return daemon.getter();
}

uint64_t sub_100D8DD1C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 232) = a1;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D8DEF8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D8DEF8(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100D8F604;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100D8E020;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D8E020()
{
  v1 = *(v0 + 248);
  Identifier.id.getter();

  return _swift_task_switch(sub_100D8E094, v1, 0);
}

uint64_t sub_100D8E094()
{
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100D8E130;
  v3 = v0[11];
  v2 = v0[12];

  return sub_100C57B00(v2, v3);
}

uint64_t sub_100D8E130()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = v2[31];
    v4 = sub_100D8E76C;
  }

  else
  {
    v5 = v2[4];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_100D8E268;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D8E268()
{
  v37 = v0;
  v1 = v0[12];
  v2 = (*(v0[14] + 48))(v1, 1, v0[13]);
  v3 = v0[25];
  v4 = v0[18];
  if (v2 == 1)
  {
    v5 = v0[21];
    v6 = v0[3];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3(v5, v6, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[27];
    v11 = v0[21];
    v12 = v0[18];
    if (v9)
    {
      v35 = v0[27];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v35(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v36);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Iterating all LocalFindableBeaconRecords to find peripheralIdentifier: %{public}s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {

      v10(v11, v12);
    }

    v32 = v0[31];

    return _swift_task_switch(sub_100D8E8E0, v32, 0);
  }

  else
  {
    v19 = v0[22];
    v20 = v0[3];
    sub_100DD921C(v1, v0[17], type metadata accessor for LocalFindableAccessoryRecord);
    v3(v19, v20, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[27];
    v25 = v0[22];
    v26 = v0[18];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v36);
      *(v27 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v24(v25, v26);
      v31 = sub_1000136BC(v28, v30, &v36);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s Found LocalFindableAccessoryRecord matching %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v24(v25, v26);
    }

    sub_100DD921C(v0[17], v0[2], type metadata accessor for LocalFindableAccessoryRecord);
    (*(v0[14] + 56))(v0[2], 0, 1, v0[13]);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100D8E76C()
{
  v1 = v0[4];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return _swift_task_switch(sub_100D8E7E8, v1, 0);
}

uint64_t sub_100D8E7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8E8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_100D8E974;

  return sub_100031364();
}

uint64_t sub_100D8E974(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_100D8ECEC;
  }

  else
  {
    v6 = sub_100D8EAA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100D8EAA8()
{
  v1 = v0[36];
  v2 = *(v1 + 16);
  v0[38] = v2;
  if (v2)
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[6];
    v0[39] = 0;
    if (*(v1 + 16))
    {
      v6 = v0[16];
      v7 = v0[8];
      v8 = v0[5];
      sub_100DD9284(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, type metadata accessor for LocalFindableAccessoryRecord);
      v9 = *(v4 + 52);
      v10 = *(v5 + 16);
      v0[40] = v10;
      v0[41] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v7, v6 + v9, v8);
      v14 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
      v11 = swift_task_alloc();
      v0[42] = v11;
      *v11 = v0;
      v11[1] = sub_100D8EDE4;
      v12 = v0[8];

      v14(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    (*(v0[14] + 56))(v0[2], 1, 1, v0[13]);

    v13 = v0[1];

    v13();
  }
}

uint64_t sub_100D8ECEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8EDE4(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v4 = v3[4];

    v5 = sub_100D8F6FC;
    v6 = v4;
  }

  else
  {
    v6 = v3[4];
    v5 = sub_100D8EF0C;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D8EF0C(uint64_t a1)
{
  v59 = v1;
  if (*(v1 + 344))
  {
    v2 = *(v1 + 216);
    v3 = *(v1 + 160);
    v4 = *(v1 + 144);
    Peripheral.id.getter();
    type metadata accessor for Peripheral();
    v5 = static Identifier.== infix(_:_:)();
    v2(v3, v4);
    if (v5)
    {
      v7 = *(v1 + 120);
      v6 = *(v1 + 128);

      sub_100DD9284(v6, v7, type metadata accessor for LocalFindableAccessoryRecord);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v1 + 120);
      v12 = *(v1 + 64);
      v13 = *(v1 + 40);
      v14 = *(v1 + 48);
      if (v10)
      {
        v55 = *(v1 + 64);
        v15 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v15 = 136446466;
        *(v15 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v58);
        *(v15 + 12) = 2080;
        v16 = sub_100158AA8();
        v54 = v13;
        v18 = v17;
        sub_100DD92EC(v11, type metadata accessor for LocalFindableAccessoryRecord);
        v19 = sub_1000136BC(v16, v18, &v58);

        *(v15 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Found LocalFindableAccessoryRecord record %s", v15, 0x16u);
        swift_arrayDestroy();

        (*(v14 + 8))(v55, v54);
      }

      else
      {

        sub_100DD92EC(v11, type metadata accessor for LocalFindableAccessoryRecord);
        (*(v14 + 8))(v12, v13);
      }

      sub_100DD921C(*(v1 + 128), *(v1 + 16), type metadata accessor for LocalFindableAccessoryRecord);
      v42 = 0;
      goto LABEL_17;
    }

    v35 = *(v1 + 128);
    v36 = *(v1 + 64);
    v37 = *(v1 + 40);
    v38 = *(v1 + 48);

    (*(v38 + 8))(v36, v37);
    v34 = v35;
  }

  else
  {
    (*(v1 + 320))(*(v1 + 56), *(v1 + 64), *(v1 + 40));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v1 + 128);
    v24 = *(v1 + 56);
    v25 = *(v1 + 64);
    v27 = *(v1 + 40);
    v26 = *(v1 + 48);
    if (v22)
    {
      v56 = *(v1 + 128);
      v28 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101371100, &v58);
      *(v28 + 12) = 2082;
      sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v24, v27);
      v33 = sub_1000136BC(v29, v31, &v58);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s No peripheral for %{public}s!", v28, 0x16u);
      swift_arrayDestroy();

      v32(v25, v27);
      v34 = v56;
    }

    else
    {

      v39 = *(v26 + 8);
      v39(v24, v27);
      v39(v25, v27);
      v34 = v23;
    }
  }

  result = sub_100DD92EC(v34, type metadata accessor for LocalFindableAccessoryRecord);
  v41 = *(v1 + 312) + 1;
  if (v41 == *(v1 + 304))
  {

    v42 = 1;
LABEL_17:
    (*(*(v1 + 112) + 56))(*(v1 + 16), v42, 1, *(v1 + 104));

    v53 = *(v1 + 8);

    return v53();
  }

  *(v1 + 312) = v41;
  v43 = *(v1 + 288);
  if (v41 >= *(v43 + 16))
  {
    __break(1u);
  }

  else
  {
    v44 = *(v1 + 128);
    v45 = *(v1 + 104);
    v46 = *(v1 + 64);
    v47 = *(v1 + 40);
    v48 = *(v1 + 48);
    sub_100DD9284(v43 + ((*(*(v1 + 112) + 80) + 32) & ~*(*(v1 + 112) + 80)) + *(*(v1 + 112) + 72) * v41, v44, type metadata accessor for LocalFindableAccessoryRecord);
    v49 = *(v45 + 52);
    v50 = *(v48 + 16);
    *(v1 + 320) = v50;
    *(v1 + 328) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v46, v44 + v49, v47);
    v57 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v51 = swift_task_alloc();
    *(v1 + 336) = v51;
    *v51 = v1;
    v51[1] = sub_100D8EDE4;
    v52 = *(v1 + 64);

    return v57(v52);
  }

  return result;
}

uint64_t sub_100D8F604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D8F6FC()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D8F834(uint64_t a1)
{
  v42 = a1;
  v39 = *v1;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016BB490);
  v40 = *(v5 + 16);
  v41 = v5 + 16;
  v40(v12, v42, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v5;
    v17 = v16;
    v44 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v44);
    *(v17 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v36 + 8))(v12, v4);
    v21 = sub_1000136BC(v18, v20, &v44);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s for %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v5 = v36;
  }

  else
  {

    (*(v5 + 8))(v12, v4);
  }

  v22 = v43;
  v36 = *(v43 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v35 = type metadata accessor for WorkItemQueue.WorkItem();
  v23 = v42;
  v40(v10, v42, v4);
  v24 = *(v5 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = v6 + 7;
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  v28 = *(v5 + 32);
  v28(v27 + v25, v10, v4);
  v30 = v39;
  v29 = v40;
  *(v27 + ((v26 + v25) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v31 = v37;
  v29(v37, v23, v4);
  v32 = (v24 + 16) & ~v24;
  v33 = swift_allocObject();
  v28(v33 + v32, v31, v4);
  *(v33 + ((v26 + v32) & 0xFFFFFFFFFFFFFFF8)) = v30;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100D8FD14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for LocalFindablePreferences(0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BB8E8, &qword_1013E8A68);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[27] = v7;
  *v7 = v2;
  v7[1] = sub_100D8FF98;

  return daemon.getter();
}

uint64_t sub_100D8FF98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 224) = a1;

  v3 = swift_task_alloc();
  *(v2 + 232) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D90174;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D90174(uint64_t a1)
{
  v4 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_100D9218C;
  }

  else
  {

    v6 = sub_100D902AC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D902AC()
{
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_100D9034C;
  v2 = v0[26];
  v3 = v0[2];

  return sub_100C59FE4(v2, v3);
}

uint64_t sub_100D9034C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100D9108C;
  }

  else
  {
    v4 = sub_100D90478;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D90478()
{
  v128 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 208), v1, &qword_1016BB8E8, &qword_1013E8A68);
  v4 = *(v3 + 48);
  *(v0 + 272) = v4;
  *(v0 + 280) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 192);
  if (v5 == 1)
  {
    sub_10000B3A8(*(v0 + 192), &qword_1016BB8E8, &qword_1013E8A68);
    goto LABEL_4;
  }

  v7 = (v6 + *(*(v0 + 48) + 24));
  v8 = *v7;
  *(v0 + 288) = *v7;
  v9 = v7[1];
  *(v0 + 296) = v9;
  sub_10002E98C(v8, v9);
  sub_100DD92EC(v6, type metadata accessor for LocalFindablePreferences);
  if (v9 >> 60 == 15)
  {
LABEL_4:
    (*(*(v0 + 56) + 56))(*(v0 + 200), 1, 1, *(v0 + 48));
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 96);
    v123 = *(v0 + 88);
    v125 = *(v0 + 120);
    v15 = *(v0 + 16);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_1016BB490);
    sub_1000D2A70(v11, v12, &qword_1016BB8E8, &qword_1013E8A68);
    sub_1000D2A70(v10, v13, &qword_1016BB8E8, &qword_1013E8A68);
    v17 = v123;
    v124 = *(v14 + 16);
    v124(v125, v15, v17);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v118 = v19;
      log = v18;
      v20 = *(v0 + 272);
      v21 = *(v0 + 184);
      v22 = *(v0 + 168);
      v23 = *(v0 + 48);
      v24 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v24 = 136446979;
      sub_1000D2A70(v21, v22, &qword_1016BB8E8, &qword_1013E8A68);
      v25 = v20(v22, 1, v23);
      v26 = *(v0 + 168);
      if (v25 == 1)
      {
        sub_10000B3A8(v26, &qword_1016BB8E8, &qword_1013E8A68);
        v27 = 3;
      }

      else
      {
        v27 = *(v26 + *(*(v0 + 48) + 20));
        sub_100DD92EC(v26, type metadata accessor for LocalFindablePreferences);
      }

      v114 = *(v0 + 272);
      v35 = *(v0 + 176);
      v34 = *(v0 + 184);
      v36 = *(v0 + 160);
      v113 = *(v0 + 48);
      *(v0 + 328) = v27;
      sub_1000BC4D4(&qword_1016BB8F0, &unk_1013E8A90);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      sub_10000B3A8(v34, &qword_1016BB8E8, &qword_1013E8A68);
      v40 = sub_1000136BC(v37, v39, &v127);

      *(v24 + 4) = v40;
      *(v24 + 12) = 2082;
      sub_1000D2A70(v35, v36, &qword_1016BB8E8, &qword_1013E8A68);
      v41 = v114(v36, 1, v113);
      v42 = *(v0 + 160);
      if (v41 == 1)
      {
        sub_10000B3A8(v42, &qword_1016BB8E8, &qword_1013E8A68);
        v43 = 3;
      }

      else
      {
        v43 = *(v42 + *(*(v0 + 48) + 20));
        sub_100DD92EC(v42, type metadata accessor for LocalFindablePreferences);
      }

      v44 = *(v0 + 176);
      v45 = *(v0 + 120);
      v47 = *(v0 + 88);
      v46 = *(v0 + 96);
      *(v0 + 329) = v43;
      v48 = String.init<A>(describing:)();
      v50 = v49;
      sub_10000B3A8(v44, &qword_1016BB8E8, &qword_1013E8A68);
      v51 = sub_1000136BC(v48, v50, &v127);

      *(v24 + 14) = v51;
      *(v24 + 22) = 2160;
      *(v24 + 24) = 1752392040;
      *(v24 + 32) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v46 + 8))(v45, v47);
      v55 = sub_1000136BC(v52, v54, &v127);

      *(v24 + 34) = v55;
      _os_log_impl(&_mh_execute_header, log, v118, "findMyPairingState = %{public}s,\nserialNumber-based findMyPairingState = %{public}s,\nidentifier = %{private,mask.hash}s.", v24, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);
      v30 = *(v0 + 120);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);

      (*(v32 + 8))(v30, v31);
      sub_10000B3A8(v28, &qword_1016BB8E8, &qword_1013E8A68);
      sub_10000B3A8(v29, &qword_1016BB8E8, &qword_1013E8A68);
    }

    v56 = *(v0 + 272);
    v57 = *(v0 + 152);
    v58 = *(v0 + 48);
    sub_1000D2A70(*(v0 + 200), v57, &qword_1016BB8E8, &qword_1013E8A68);
    if (v56(v57, 1, v58) == 1)
    {
      v59 = *(v0 + 152);

      sub_10000B3A8(v59, &qword_1016BB8E8, &qword_1013E8A68);
      goto LABEL_26;
    }

    v60 = *(v0 + 80);
    v61 = *(v0 + 48);
    sub_100DD921C(*(v0 + 152), v60, type metadata accessor for LocalFindablePreferences);
    if (*(v60 + *(v61 + 20)) == 1)
    {
      v62 = *(v0 + 272);
      v63 = *(v0 + 144);
      v64 = *(v0 + 48);
      sub_1000D2A70(*(v0 + 208), v63, &qword_1016BB8E8, &qword_1013E8A68);
      v65 = v62(v63, 1, v64);
      v66 = *(v0 + 144);
      if (v65 == 1)
      {
        sub_10000B3A8(v66, &qword_1016BB8E8, &qword_1013E8A68);
LABEL_24:
        v69 = *(v0 + 104);
        v68 = *(v0 + 112);
        v70 = *(v0 + 88);
        v71 = *(v0 + 96);
        v72 = *(v0 + 40);
        v119 = v72;
        loga = *(v0 + 32);
        v74 = *(v0 + 16);
        v73 = *(v0 + 24);
        v75 = type metadata accessor for TaskPriority();
        (*(*(v75 - 8) + 56))(v72, 1, 1, v75);
        v124(v68, v74, v70);
        v76 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
        v77 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v78 = (v77 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v77 + v69 + 23) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        *(v80 + 16) = v73;
        *(v80 + 24) = v76;
        (*(v71 + 32))(v80 + v77, v68, v70);
        v81 = v80 + v78;
        *v81 = v73;
        *(v81 + 8) = 1;
        *(v80 + v79) = loga;
        swift_retain_n();
        sub_10025EDD4(0, 0, v119, &unk_1013E8A88, v80);

        goto LABEL_25;
      }

      v67 = *(v66 + *(v61 + 20));
      sub_100DD92EC(v66, type metadata accessor for LocalFindablePreferences);
      if (v67 != 1)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v82 = *(v0 + 240);
    v83 = *(v0 + 112);
    v84 = *(v0 + 88);
    v85 = *(v0 + 96);
    v87 = *(v0 + 72);
    v86 = *(v0 + 80);
    v88 = *(v0 + 56);
    v115 = *(v0 + 64);
    v116 = *(v0 + 104);
    v89 = *(v0 + 40);
    v117 = v89;
    v120 = *(v0 + 32);
    v90 = *(v0 + 16);
    v91 = type metadata accessor for TaskPriority();
    (*(*(v91 - 8) + 56))(v89, 1, 1, v91);
    sub_100DD9284(v86, v87, type metadata accessor for LocalFindablePreferences);
    v92 = v83;
    v93 = v83;
    v94 = v84;
    v124(v93, v90, v84);
    v95 = (*(v88 + 80) + 40) & ~*(v88 + 80);
    v96 = (v115 + *(v85 + 80) + v95) & ~*(v85 + 80);
    v97 = swift_allocObject();
    *(v97 + 2) = 0;
    *(v97 + 3) = 0;
    *(v97 + 4) = v82;
    sub_100DD921C(v87, &v97[v95], type metadata accessor for LocalFindablePreferences);
    (*(v85 + 32))(&v97[v96], v92, v94);
    *&v97[(v116 + v96 + 7) & 0xFFFFFFFFFFFFFFF8] = v120;

    sub_10025EDD4(0, 0, v117, &unk_1013E8A78, v97);

    sub_100DD92EC(v86, type metadata accessor for LocalFindablePreferences);
LABEL_26:
    v98 = *(v0 + 272);
    v99 = *(v0 + 136);
    v100 = *(v0 + 48);
    sub_1000D2AD8(*(v0 + 208), v99, &qword_1016BB8E8, &qword_1013E8A68);
    v101 = v98(v99, 1, v100);
    v102 = *(v0 + 136);
    if (v101 == 1)
    {
      sub_10000B3A8(v102, &qword_1016BB8E8, &qword_1013E8A68);
    }

    else
    {
      v103 = *(v102 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v102, type metadata accessor for LocalFindablePreferences);
      if (v103 == 1)
      {
        sub_10000B3A8(*(v0 + 200), &qword_1016BB8E8, &qword_1013E8A68);
        v104 = 1;
        goto LABEL_33;
      }
    }

    v105 = *(v0 + 272);
    v106 = *(v0 + 128);
    v107 = *(v0 + 48);
    sub_1000D2AD8(*(v0 + 200), v106, &qword_1016BB8E8, &qword_1013E8A68);
    v108 = v105(v106, 1, v107);
    v109 = *(v0 + 128);
    if (v108 == 1)
    {
      sub_10000B3A8(v109, &qword_1016BB8E8, &qword_1013E8A68);
      v126 = 0;
LABEL_34:

      v111 = *(v0 + 8);

      return v111(v126);
    }

    v110 = *(v109 + *(*(v0 + 48) + 20));
    sub_100DD92EC(v109, type metadata accessor for LocalFindablePreferences);
    v104 = v110 == 1;
LABEL_33:
    v126 = v104;
    goto LABEL_34;
  }

  v33 = *(v0 + 240);

  return _swift_task_switch(sub_100D911C8, v33, 0);
}

uint64_t sub_100D9108C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100D911C8()
{
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_100D91264;
  v3 = v0[36];
  v2 = v0[37];

  return sub_100C5A584(v3, v2);
}

uint64_t sub_100D91264(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_100D92028;
  }

  else
  {
    v6 = sub_100D91398;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D91398()
{
  v132 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 312);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v131[0] = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2080;
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, v131);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "All SerialNumber-based preferences[%ld]: %s", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = *(v0 + 312);
  v13 = *(v0 + 288);
  v12 = *(v0 + 296);
  v14 = *(v0 + 200);
  v15 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v15;
  sub_1012BD6C4(sub_100DDA828, v11, v14);
  sub_100006654(v13, v12);

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 96);
  v127 = *(v0 + 88);
  v129 = *(v0 + 120);
  v21 = *(v0 + 16);
  sub_1000076D4(v1, qword_1016BB490);
  sub_1000D2A70(v16, v18, &qword_1016BB8E8, &qword_1013E8A68);
  sub_1000D2A70(v17, v19, &qword_1016BB8E8, &qword_1013E8A68);
  v22 = v127;
  v128 = *(v20 + 16);
  v128(v129, v21, v22);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v122 = v24;
    log = v23;
    v25 = *(v0 + 272);
    v26 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 48);
    v29 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v29 = 136446979;
    sub_1000D2A70(v26, v27, &qword_1016BB8E8, &qword_1013E8A68);
    v30 = v25(v27, 1, v28);
    v31 = *(v0 + 168);
    if (v30 == 1)
    {
      sub_10000B3A8(v31, &qword_1016BB8E8, &qword_1013E8A68);
      v32 = 3;
    }

    else
    {
      v32 = *(v31 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v31, type metadata accessor for LocalFindablePreferences);
    }

    v118 = *(v0 + 272);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 160);
    v117 = *(v0 + 48);
    *(v0 + 328) = v32;
    sub_1000BC4D4(&qword_1016BB8F0, &unk_1013E8A90);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_10000B3A8(v38, &qword_1016BB8E8, &qword_1013E8A68);
    v44 = sub_1000136BC(v41, v43, v131);

    *(v29 + 4) = v44;
    *(v29 + 12) = 2082;
    sub_1000D2A70(v39, v40, &qword_1016BB8E8, &qword_1013E8A68);
    v45 = v118(v40, 1, v117);
    v46 = *(v0 + 160);
    if (v45 == 1)
    {
      sub_10000B3A8(v46, &qword_1016BB8E8, &qword_1013E8A68);
      v47 = 3;
    }

    else
    {
      v47 = *(v46 + *(*(v0 + 48) + 20));
      sub_100DD92EC(v46, type metadata accessor for LocalFindablePreferences);
    }

    v48 = *(v0 + 176);
    v49 = *(v0 + 120);
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);
    *(v0 + 329) = v47;
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_10000B3A8(v48, &qword_1016BB8E8, &qword_1013E8A68);
    v55 = sub_1000136BC(v52, v54, v131);

    *(v29 + 14) = v55;
    *(v29 + 22) = 2160;
    *(v29 + 24) = 1752392040;
    *(v29 + 32) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v50 + 8))(v49, v51);
    v59 = sub_1000136BC(v56, v58, v131);

    *(v29 + 34) = v59;
    _os_log_impl(&_mh_execute_header, log, v122, "findMyPairingState = %{public}s,\nserialNumber-based findMyPairingState = %{public}s,\nidentifier = %{private,mask.hash}s.", v29, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v33 = *(v0 + 176);
    v34 = *(v0 + 184);
    v35 = *(v0 + 120);
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);

    (*(v37 + 8))(v35, v36);
    sub_10000B3A8(v33, &qword_1016BB8E8, &qword_1013E8A68);
    sub_10000B3A8(v34, &qword_1016BB8E8, &qword_1013E8A68);
  }

  v60 = *(v0 + 272);
  v61 = *(v0 + 152);
  v62 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 200), v61, &qword_1016BB8E8, &qword_1013E8A68);
  if (v60(v61, 1, v62) == 1)
  {
    v63 = *(v0 + 152);

    sub_10000B3A8(v63, &qword_1016BB8E8, &qword_1013E8A68);
    goto LABEL_25;
  }

  v64 = *(v0 + 80);
  v65 = *(v0 + 48);
  sub_100DD921C(*(v0 + 152), v64, type metadata accessor for LocalFindablePreferences);
  if (*(v64 + *(v65 + 20)) == 1)
  {
    v66 = *(v0 + 272);
    v67 = *(v0 + 144);
    v68 = *(v0 + 48);
    sub_1000D2A70(*(v0 + 208), v67, &qword_1016BB8E8, &qword_1013E8A68);
    v69 = v66(v67, 1, v68);
    v70 = *(v0 + 144);
    if (v69 == 1)
    {
      sub_10000B3A8(v70, &qword_1016BB8E8, &qword_1013E8A68);
LABEL_23:
      v73 = *(v0 + 104);
      v72 = *(v0 + 112);
      v74 = *(v0 + 88);
      v75 = *(v0 + 96);
      v76 = *(v0 + 40);
      v123 = v76;
      loga = *(v0 + 32);
      v78 = *(v0 + 16);
      v77 = *(v0 + 24);
      v79 = type metadata accessor for TaskPriority();
      (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
      v128(v72, v78, v74);
      v80 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
      v81 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v82 = (v81 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v81 + v73 + 23) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      *(v84 + 16) = v77;
      *(v84 + 24) = v80;
      (*(v75 + 32))(v84 + v81, v72, v74);
      v85 = v84 + v82;
      *v85 = v77;
      *(v85 + 8) = 1;
      *(v84 + v83) = loga;
      swift_retain_n();
      sub_10025EDD4(0, 0, v123, &unk_1013E8A88, v84);

      goto LABEL_24;
    }

    v71 = *(v70 + *(v65 + 20));
    sub_100DD92EC(v70, type metadata accessor for LocalFindablePreferences);
    if (v71 != 1)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v86 = *(v0 + 240);
  v87 = *(v0 + 112);
  v88 = *(v0 + 88);
  v89 = *(v0 + 96);
  v91 = *(v0 + 72);
  v90 = *(v0 + 80);
  v92 = *(v0 + 56);
  v119 = *(v0 + 64);
  v120 = *(v0 + 104);
  v93 = *(v0 + 40);
  v121 = v93;
  v124 = *(v0 + 32);
  v94 = *(v0 + 16);
  v95 = type metadata accessor for TaskPriority();
  (*(*(v95 - 8) + 56))(v93, 1, 1, v95);
  sub_100DD9284(v90, v91, type metadata accessor for LocalFindablePreferences);
  v96 = v87;
  v97 = v87;
  v98 = v88;
  v128(v97, v94, v88);
  v99 = (*(v92 + 80) + 40) & ~*(v92 + 80);
  v100 = (v119 + *(v89 + 80) + v99) & ~*(v89 + 80);
  v101 = swift_allocObject();
  *(v101 + 2) = 0;
  *(v101 + 3) = 0;
  *(v101 + 4) = v86;
  sub_100DD921C(v91, &v101[v99], type metadata accessor for LocalFindablePreferences);
  (*(v89 + 32))(&v101[v100], v96, v98);
  *&v101[(v120 + v100 + 7) & 0xFFFFFFFFFFFFFFF8] = v124;

  sub_10025EDD4(0, 0, v121, &unk_1013E8A78, v101);

  sub_100DD92EC(v90, type metadata accessor for LocalFindablePreferences);
LABEL_25:
  v102 = *(v0 + 272);
  v103 = *(v0 + 136);
  v104 = *(v0 + 48);
  sub_1000D2AD8(*(v0 + 208), v103, &qword_1016BB8E8, &qword_1013E8A68);
  v105 = v102(v103, 1, v104);
  v106 = *(v0 + 136);
  if (v105 == 1)
  {
    sub_10000B3A8(v106, &qword_1016BB8E8, &qword_1013E8A68);
  }

  else
  {
    v107 = *(v106 + *(*(v0 + 48) + 20));
    sub_100DD92EC(v106, type metadata accessor for LocalFindablePreferences);
    if (v107 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_1016BB8E8, &qword_1013E8A68);
      v108 = 1;
      goto LABEL_32;
    }
  }

  v109 = *(v0 + 272);
  v110 = *(v0 + 128);
  v111 = *(v0 + 48);
  sub_1000D2AD8(*(v0 + 200), v110, &qword_1016BB8E8, &qword_1013E8A68);
  v112 = v109(v110, 1, v111);
  v113 = *(v0 + 128);
  if (v112 == 1)
  {
    sub_10000B3A8(v113, &qword_1016BB8E8, &qword_1013E8A68);
    v130 = 0;
    goto LABEL_33;
  }

  v114 = *(v113 + *(*(v0 + 48) + 20));
  sub_100DD92EC(v113, type metadata accessor for LocalFindablePreferences);
  v108 = v114 == 1;
LABEL_32:
  v130 = v108;
LABEL_33:

  v115 = *(v0 + 8);

  return v115(v130);
}