uint64_t sub_10037FED0()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100380DD4, 0, 0);
  }

  else
  {
    v5 = (&async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:) + async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:));
    v3 = swift_task_alloc();
    *(v2 + 264) = v3;
    *v3 = v2;
    v3[1] = sub_10038005C;

    return v5(0);
  }
}

uint64_t sub_10038005C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_100380E88;
  }

  else
  {
    v4 = sub_100380170;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100380170()
{
  v1 = v0[34];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[36] = result;
  v3 = v0[34];
  if (result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(v3 + 32);
    }

    v0[37] = v4;
    v0[38] = 1;
    v9 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
    v5 = swift_task_alloc();
    v0[39] = v5;
    *v5 = v0;
    v5[1] = sub_100380314;

    return v9(0);
  }

  else
  {

    v6 = swift_task_alloc();
    v0[42] = v6;
    *v6 = v0;
    v6[1] = sub_100380430;
    v7 = v0[30];
    v8 = v0[4];

    return sub_1003810B0(v8, v7);
  }
}

uint64_t sub_100380314(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {

    v4 = sub_100380F3C;
  }

  else
  {
    v4 = sub_100380544;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100380430()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_100380FFC;
  }

  else
  {
    v2 = sub_100380BC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100380544()
{
  v60 = v0;
  v1 = v0[40];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v57 = v0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v3 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v0[2] = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
LABEL_36:
    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  v3 = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v55 = v2;
    do
    {
      v5 = v0[14];
      v6 = v0[15];
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[11];
      v10 = v57[10];
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      Characteristic.id.getter();
      Identifier.id.getter();
      (*(v5 + 8))(v6, v7);
      v11 = UUID.uuidString.getter();
      v13 = v12;
      v14 = v10;
      v0 = v57;
      (*(v9 + 8))(v8, v14);
      swift_unknownObjectRelease();
      v57[2] = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        sub_101123BB8((v15 > 1), v16 + 1, 1);
        v3 = v57[2];
      }

      ++v4;
      v3[2] = v16 + 1;
      v17 = &v3[2 * v16];
      v17[4] = v11;
      v17[5] = v13;
    }

    while (v55 != v4);
  }

  else
  {
    v18 = v0[40] + 32;
    do
    {
      v56 = v2;
      v19 = v0[15];
      v20 = v57[14];
      v21 = v57[13];
      v22 = v57[12];
      v23 = v57[11];
      v24 = v57[10];

      Characteristic.id.getter();
      Identifier.id.getter();
      (*(v20 + 8))(v19, v21);
      v0 = v57;
      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*(v23 + 8))(v22, v24);

      v57[2] = v3;
      v29 = v3[2];
      v28 = v3[3];
      if (v29 >= v28 >> 1)
      {
        sub_101123BB8((v28 > 1), v29 + 1, 1);
        v3 = v57[2];
      }

      v3[2] = v29 + 1;
      v30 = &v3[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      v18 += 8;
      v2 = v56 - 1;
    }

    while (v56 != 1);
  }

LABEL_17:
  v31 = v0[41];
  v0[3] = v3;

  sub_101120B44(v0 + 3);
  if (v31)
  {

    return;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0[11];
    v35 = v0[12];
    v36 = v0[9];
    v54 = v0[10];
    v37 = v57[8];
    v38 = v57[7];
    v39 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v39 = 136446466;
    Service.id.getter();
    Identifier.id.getter();
    (*(v37 + 8))(v36, v38);
    v0 = v57;
    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*(v34 + 8))(v35, v54);
    v43 = sub_1000136BC(v40, v42, v59);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_1000136BC(v44, v46, v59);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v32, v33, "--Service %{public}s: %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v2 = v0[38];
  v48 = v0[34];
  if (v2 == v0[36])
  {

    v49 = swift_task_alloc();
    v0[42] = v49;
    *v49 = v0;
    v49[1] = sub_100380430;
    v50 = v0[30];
    v51 = v0[4];

    sub_1003810B0(v51, v50);
    return;
  }

  if ((v48 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (v2 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    __break(1u);
    return;
  }

  v52 = *(v48 + 8 * v2 + 32);

LABEL_31:
  v0[37] = v52;
  v0[38] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v58 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
  v53 = swift_task_alloc();
  v0[39] = v53;
  *v53 = v0;
  v53[1] = sub_100380314;

  v58(0);
}

uint64_t sub_100380BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100380FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003810B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v3[5] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100381288, 0, 0);
}

uint64_t sub_100381288(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = type metadata accessor for Peripheral();
  v1[15] = v2;
  v3 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v1[16] = v3;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_100381764;

  return dispatch thunk of PeripheralProtocol.connect()(v2, v3);
}

uint64_t sub_100381764()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100381F3C;
  }

  else
  {
    v2 = sub_100381878;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100381878()
{
  v40 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10169E3B0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v38 = v2;
    v8 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, v39);
    *(v8 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    (*(v6 + 8))(v5, v7);
    v12 = sub_1000136BC(v9, v11, v39);
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Connected to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();

    v2 = v38;
  }

  else
  {
  }

  v13 = v0[18];
  static Task<>.checkCancellation()();
  if (v13)
  {
    v0[70] = v13;
    if (p_weak_ivar_lyt[212] != -1)
    {
      swift_once();
    }

    v0[71] = sub_1000076D4(v2, qword_10169E3B0);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[13];
      v17 = v0[14];
      v18 = v0[12];
      v36 = v15;
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v19 = 136446722;
      *(v19 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, v39);
      *(v19 + 12) = 2082;
      type metadata accessor for Peripheral();
      sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;

      (*(v16 + 8))(v17, v18);
      v23 = sub_1000136BC(v20, v22, v39);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2114;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v24;
      *v37 = v24;
      _os_log_impl(&_mh_execute_header, v14, v36, "%{public}s %{public}s Error %{public}@", v19, 0x20u);
      sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = v0[5];
    v30 = type metadata accessor for Peripheral.DisconnectionOptions();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = type metadata accessor for Peripheral();
    v0[72] = v31;
    v32 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v0[73] = v32;
    v33 = swift_task_alloc();
    v0[74] = v33;
    *v33 = v0;
    v33[1] = sub_1003872BC;
    v34 = v0[5];

    return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v34, v31, v32);
  }

  else
  {
    v0[19] = type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v25 = swift_task_alloc();
    v0[20] = v25;
    *v25 = v0;
    v25[1] = sub_100382340;
    v26 = v0[15];
    v27 = v0[16];
    v28 = v0[11];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v28, v26, v27);
  }
}

uint64_t sub_100381F3C()
{
  v23 = v0;
  v0[70] = v0[18];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v22);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v4 + 8))(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[5];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Peripheral();
  v0[72] = v15;
  v16 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v16;
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_1003872BC;
  v18 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v15, v16);
}

uint64_t sub_100382340(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  (*(v3[10] + 8))(v3[11], v3[9]);
  if (v1)
  {
    v5 = sub_100382724;
  }

  else
  {
    v5 = sub_1003824B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003824B0()
{
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_10038B3E0(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1003825B4;
  v3 = v0[19];
  v4 = v0[8];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_1003825B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  (*(v3[7] + 8))(v3[8], v3[6]);
  if (v1)
  {
    v5 = sub_100382D48;
  }

  else
  {
    v5 = sub_100382B28;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100382724()
{
  v23 = v0;
  v0[70] = v0[22];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v22);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v4 + 8))(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[5];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Peripheral();
  v0[72] = v15;
  v16 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v16;
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_1003872BC;
  v18 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v15, v16);
}

uint64_t sub_100382B28()
{
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_100382BC8;
  v2 = v0[24];
  v3 = v0[4];

  return sub_100387758(0, 0, 11, v2, v3);
}

uint64_t sub_100382BC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1003832D4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[30] = v5;
    *v5 = v4;
    v5[1] = sub_100383154;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(1, 0, 11, v6, v7);
  }
}

uint64_t sub_100382D48()
{
  v23 = v0;

  v0[70] = v0[25];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v22);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v4 + 8))(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[5];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Peripheral();
  v0[72] = v15;
  v16 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v16;
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_1003872BC;
  v18 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v15, v16);
}

uint64_t sub_100383154(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10038386C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[34] = v5;
    *v5 = v4;
    v5[1] = sub_1003836EC;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(2, 0, 11, v6, v7);
  }
}

uint64_t sub_1003832D4()
{
  v23 = v0;

  v0[70] = v0[29];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v22);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v4 + 8))(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[5];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Peripheral();
  v0[72] = v15;
  v16 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v16;
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_1003872BC;
  v18 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v15, v16);
}

uint64_t sub_1003836EC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100383E10, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[38] = v5;
    *v5 = v4;
    v5[1] = sub_100383C90;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(3, 0, 11, v6, v7);
  }
}

uint64_t sub_10038386C()
{
  v23 = v0;
  sub_100016590(v0[27], v0[28]);

  v0[70] = v0[33];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v22);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v4 + 8))(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[5];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Peripheral();
  v0[72] = v15;
  v16 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v16;
  v17 = swift_task_alloc();
  v0[74] = v17;
  *v17 = v0;
  v17[1] = sub_1003872BC;
  v18 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v15, v16);
}

uint64_t sub_100383C90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1003843C4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[42] = v5;
    *v5 = v4;
    v5[1] = sub_100384244;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(4, 0, 11, v6, v7);
  }
}

uint64_t sub_100383E10()
{
  v25 = v0;
  v1 = v0[27];
  v2 = v0[28];
  sub_100016590(v0[31], v0[32]);
  sub_100016590(v1, v2);

  v0[70] = v0[37];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v3, qword_10169E3B0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[12];
    v22 = v5;
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v24);
    *(v9 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v7, v8);
    v13 = sub_1000136BC(v10, v12, &v24);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v23 = v14;
    _os_log_impl(&_mh_execute_header, v4, v22, "%{public}s %{public}s Error %{public}@", v9, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[5];
  v16 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = type metadata accessor for Peripheral();
  v0[72] = v17;
  v18 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v18;
  v19 = swift_task_alloc();
  v0[74] = v19;
  *v19 = v0;
  v19[1] = sub_1003872BC;
  v20 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v20, v17, v18);
}

uint64_t sub_100384244(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100384988, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[46] = v5;
    *v5 = v4;
    v5[1] = sub_100384808;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(10, 0, 11, v6, v7);
  }
}

uint64_t sub_1003843C4()
{
  v27 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  sub_100016590(v0[35], v0[36]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);

  v0[70] = v0[41];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v5, qword_10169E3B0);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    v24 = v7;
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v26);
    *(v11 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    (*(v8 + 8))(v9, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v25 = v16;
    _os_log_impl(&_mh_execute_header, v6, v24, "%{public}s %{public}s Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = v0[5];
  v18 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = type metadata accessor for Peripheral();
  v0[72] = v19;
  v20 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v20;
  v21 = swift_task_alloc();
  v0[74] = v21;
  *v21 = v0;
  v21[1] = sub_1003872BC;
  v22 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v22, v19, v20);
}

uint64_t sub_100384808(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100384F5C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[50] = v5;
    *v5 = v4;
    v5[1] = sub_100384DDC;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(6, 0, 11, v6, v7);
  }
}

uint64_t sub_100384988()
{
  v29 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  sub_100016590(v0[39], v0[40]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);

  v0[70] = v0[45];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[12];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v28);
    *(v13 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v10 + 8))(v11, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[5];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for Peripheral();
  v0[72] = v21;
  v22 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v22;
  v23 = swift_task_alloc();
  v0[74] = v23;
  *v23 = v0;
  v23[1] = sub_1003872BC;
  v24 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v21, v22);
}

uint64_t sub_100384DDC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100385544, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[54] = v5;
    *v5 = v4;
    v5[1] = sub_1003853C4;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(5, 0, 11, v6, v7);
  }
}

uint64_t sub_100384F5C()
{
  v31 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  sub_100016590(v0[43], v0[44]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);

  v0[70] = v0[49];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v9, qword_10169E3B0);

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v28 = v11;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446722;
    *(v15 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v30);
    *(v15 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;

    (*(v12 + 8))(v13, v14);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v10, v28, "%{public}s %{public}s Error %{public}@", v15, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = v0[5];
  v22 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = type metadata accessor for Peripheral();
  v0[72] = v23;
  v24 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v24;
  v25 = swift_task_alloc();
  v0[74] = v25;
  *v25 = v0;
  v25[1] = sub_1003872BC;
  v26 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v26, v23, v24);
}

uint64_t sub_1003853C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100385B40, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[58] = v5;
    *v5 = v4;
    v5[1] = sub_1003859C0;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(9, 0, 11, v6, v7);
  }
}

uint64_t sub_100385544()
{
  v33 = v0;
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[27];
  v29 = v0[28];
  sub_100016590(v0[47], v0[48]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_100016590(v9, v29);

  v0[70] = v0[53];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v30 = v12;
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v32);
    *(v16 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v32);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v30, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[5];
  v23 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for Peripheral();
  v0[72] = v24;
  v25 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v25;
  v26 = swift_task_alloc();
  v0[74] = v26;
  *v26 = v0;
  v26[1] = sub_1003872BC;
  v27 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v24, v25);
}

uint64_t sub_1003859C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[59] = a1;
  v4[60] = a2;
  v4[61] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10038614C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[62] = v5;
    *v5 = v4;
    v5[1] = sub_100385FCC;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(7, 0, 11, v6, v7);
  }
}

uint64_t sub_100385B40()
{
  v35 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[31];
  v29 = v0[32];
  v30 = v0[27];
  v31 = v0[28];
  sub_100016590(v0[51], v0[52]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_100016590(v9, v29);
  sub_100016590(v30, v31);

  v0[70] = v0[57];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v32 = v12;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v34);
    *(v16 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v34);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v33 = v21;
    _os_log_impl(&_mh_execute_header, v11, v32, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[5];
  v23 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for Peripheral();
  v0[72] = v24;
  v25 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v25;
  v26 = swift_task_alloc();
  v0[74] = v26;
  *v26 = v0;
  v26[1] = sub_1003872BC;
  v27 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v24, v25);
}

uint64_t sub_100385FCC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100386720, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[66] = v5;
    *v5 = v4;
    v5[1] = sub_1003865E8;
    v6 = v4[24];
    v7 = v4[4];

    return sub_100387758(8, 0, 11, v6, v7);
  }
}

uint64_t sub_10038614C()
{
  v37 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[35];
  v29 = v0[36];
  v30 = v0[31];
  v31 = v0[32];
  v32 = v0[27];
  v33 = v0[28];
  sub_100016590(v0[55], v0[56]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_100016590(v9, v29);
  sub_100016590(v30, v31);
  sub_100016590(v32, v33);

  v0[70] = v0[61];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v34 = v12;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v36);
    *(v16 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v36);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v35 = v21;
    _os_log_impl(&_mh_execute_header, v11, v34, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[5];
  v23 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for Peripheral();
  v0[72] = v24;
  v25 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v25;
  v26 = swift_task_alloc();
  v0[74] = v26;
  *v26 = v0;
  v26[1] = sub_1003872BC;
  v27 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v24, v25);
}

uint64_t sub_1003865E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 536) = v2;

  if (v2)
  {
    v7 = sub_100386DFC;
  }

  else
  {
    *(v6 + 544) = a2;
    *(v6 + 552) = a1;
    v7 = sub_100386BCC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100386720()
{
  v39 = v0;
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[39];
  v29 = v0[40];
  v30 = v0[35];
  v31 = v0[36];
  v32 = v0[31];
  v33 = v0[32];
  v34 = v0[27];
  v35 = v0[28];
  sub_100016590(v0[59], v0[60]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_100016590(v9, v29);
  sub_100016590(v30, v31);
  sub_100016590(v32, v33);
  sub_100016590(v34, v35);

  v0[70] = v0[65];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v36 = v12;
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v38);
    *(v16 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v38);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v37 = v21;
    _os_log_impl(&_mh_execute_header, v11, v36, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[5];
  v23 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for Peripheral();
  v0[72] = v24;
  v25 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v25;
  v26 = swift_task_alloc();
  v0[74] = v26;
  *v26 = v0;
  v26[1] = sub_1003872BC;
  v27 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v24, v25);
}

uint64_t sub_100386BCC()
{
  v39 = v0[68];
  v40 = v0[69];
  v37 = v0[63];
  v38 = v0[64];
  v33 = v0[60];
  v31 = v0[59];
  v35 = v0[55];
  v36 = v0[56];
  v27 = v0[51];
  v28 = v0[52];
  v34 = v0[48];
  v32 = v0[47];
  v29 = v0[43];
  v30 = v0[44];
  v25 = v0[39];
  v26 = v0[40];
  v23 = v0[35];
  v24 = v0[36];
  v21 = v0[31];
  v22 = v0[32];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[2];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();

  (*(v3 + 8))(v4, v5);
  v7 = type metadata accessor for RawAccessoryMetadata(0);
  v8 = (v6 + v7[5]);
  *v8 = v1;
  v8[1] = v2;
  v9 = (v6 + v7[6]);
  *v9 = v21;
  v9[1] = v22;
  v10 = (v6 + v7[7]);
  *v10 = v23;
  v10[1] = v24;
  *(v6 + v7[8]) = xmmword_10138BBF0;
  v11 = (v6 + v7[9]);
  *v11 = v25;
  v11[1] = v26;
  v12 = (v6 + v7[10]);
  *v12 = v27;
  v12[1] = v28;
  v13 = (v6 + v7[11]);
  *v13 = v31;
  v13[1] = v33;
  v14 = (v6 + v7[12]);
  *v14 = v29;
  v14[1] = v30;
  v15 = (v6 + v7[13]);
  *v15 = v32;
  v15[1] = v34;
  v16 = (v6 + v7[14]);
  *v16 = v35;
  v16[1] = v36;
  v17 = (v6 + v7[15]);
  *v17 = v37;
  v17[1] = v38;
  v18 = (v6 + v7[16]);
  *v18 = v40;
  v18[1] = v39;

  v19 = v0[1];

  return v19();
}

uint64_t sub_100386DFC()
{
  v41 = v0;
  v1 = v0[59];
  v2 = v0[60];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[47];
  v7 = v0[48];
  v9 = v0[43];
  v29 = v0[44];
  v30 = v0[39];
  v31 = v0[40];
  v32 = v0[35];
  v33 = v0[36];
  v34 = v0[31];
  v35 = v0[32];
  v36 = v0[27];
  v37 = v0[28];
  sub_100016590(v0[63], v0[64]);
  sub_100016590(v1, v2);
  sub_100016590(v4, v3);
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_100016590(v9, v29);
  sub_100016590(v30, v31);
  sub_100016590(v32, v33);
  sub_100016590(v34, v35);
  sub_100016590(v36, v37);

  v0[70] = v0[67];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[71] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v38 = v12;
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v40);
    *(v16 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v40);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v39 = v21;
    _os_log_impl(&_mh_execute_header, v11, v38, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[5];
  v23 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for Peripheral();
  v0[72] = v24;
  v25 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[73] = v25;
  v26 = swift_task_alloc();
  v0[74] = v26;
  *v26 = v0;
  v26[1] = sub_1003872BC;
  v27 = v0[5];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v24, v25);
}

uint64_t sub_1003872BC()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  sub_10000B3A8(*(v2 + 40), &qword_10169E750, &unk_1013DC4B0);
  if (v0)
  {
    v3 = sub_1003874A4;
  }

  else
  {
    v3 = sub_100387400;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100387400(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003874A4()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v6 = 136446466;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    (*(v3 + 8))(v4, v5);
    v10 = sub_1000136BC(v7, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v14 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s cancelConnection error in readPoshAccessoryMetadata() catch block: %{public}@", v6, 0x16u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v15);
  }

  else
  {
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100387758(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 33) = a3;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v6 = type metadata accessor for BinaryEncoder();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100387820, 0, 0);
}

uint64_t sub_100387820()
{
  v29 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 33);
  v4 = type metadata accessor for Logger();
  *(v0 + 160) = sub_1000076D4(v4, qword_10169E3B0);
  sub_10038B9A0(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10038B978(v2, v1, v3);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 33);
    v10 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, v28);
    *(v10 + 12) = 2080;
    *(v0 + 64) = v8;
    *(v0 + 72) = v7;
    *(v0 + 80) = v9;
    sub_10038B9A0(v8, v7, v9);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v28);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Sending command: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 33);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  BinaryEncoder.init()();
  *(v0 + 16) = v16;
  *(v0 + 24) = v15;
  *(v0 + 32) = v14;
  sub_10038B924();
  v17 = BinaryEncoder.encode<A>(_:)();
  v19 = v18;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  static Task<>.checkCancellation()();
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  v24 = *(v0 + 33);
  v25 = swift_allocObject();
  *(v0 + 184) = v25;
  *(v25 + 16) = v20;
  *(v25 + 24) = v17;
  *(v25 + 32) = v19;
  *(v25 + 40) = v23;
  *(v25 + 48) = v22;
  *(v25 + 56) = v24;
  *(v25 + 64) = v21;
  sub_10038B9A0(v23, v22, v24);

  sub_100017D5C(v17, v19);
  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *v26 = v0;
  v26[1] = sub_100387BC4;

  return withTimeout<A>(_:block:)(v0 + 88, 0x8AC7230489E80000, 0, &unk_10139DB88, v25, &type metadata for Data);
}

uint64_t sub_100387BC4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10038805C;
  }

  else
  {

    v2 = sub_100387CE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_100387CE0()
{
  v42 = v0;
  v1 = v0;
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 33);
  sub_10038B9A0(v3, v2, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_10038B978(v3, v2, v6);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v39 = v4;
    v11 = v5;
    v12 = *(v0 + 33);
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, &v41);
    *(v13 + 12) = 2080;
    *(v0 + 40) = v10;
    *(v0 + 48) = v9;
    *(v0 + 56) = v12;
    v14 = v12;
    v5 = v11;
    v4 = v39;
    sub_10038B9A0(v10, v9, v14);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, &v41);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Sent command: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_100017D5C(v5, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    result = swift_slowAlloc();
    v22 = result;
    v41 = result;
    *v20 = 134218242;
    v23 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v23 != 2)
      {
        v24 = 0;
        goto LABEL_15;
      }

      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      v31 = __OFSUB__(v29, v30);
      v24 = v29 - v30;
      if (!v31)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v23)
    {
      v24 = BYTE6(v4);
LABEL_15:
      v32 = *(v0 + 168);
      v40 = *(v0 + 176);
      *(v20 + 4) = v24;
      sub_100016590(v5, v4);
      *(v20 + 12) = 2080;
      v33 = Data.hexString.getter();
      v35 = v4;
      v36 = v5;
      v37 = sub_1000136BC(v33, v34, &v41);

      *(v20 + 14) = v37;
      v5 = v36;
      v4 = v35;
      _os_log_impl(&_mh_execute_header, v18, v19, "Length: %ld received raw response: %s", v20, 0x16u);
      sub_100007BAC(v22);

      v27 = v32;
      v28 = v40;
      goto LABEL_16;
    }

    LODWORD(v24) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return result;
    }

    v24 = v24;
    goto LABEL_15;
  }

  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  sub_100016590(v5, v4);
  v27 = v26;
  v28 = v25;
LABEL_16:
  sub_100016590(v27, v28);

  v38 = *(v1 + 8);

  return v38(v5, v4);
}

uint64_t sub_10038805C()
{
  sub_100016590(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003880D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = type metadata accessor for BinaryDecoder();
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100388208, 0, 0);
}

uint64_t sub_100388208()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  v4 = type metadata accessor for Characteristic();
  v5 = sub_10038B3E0(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100388344;
  v7 = v0[18];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v7, v3, v4, v5);
}

uint64_t sub_100388344()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100388670, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[22] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_100388508;
    v5 = v2[16];

    return AsyncSequence.first()(v2 + 5, v5, v4);
  }
}

uint64_t sub_100388508()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
    v3 = sub_100388C68;
  }

  else
  {
    v3 = sub_1003886E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100388670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003886E8(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 48);
  if (v2 >> 60 == 15)
  {
    if (qword_1016946A0 == -1)
    {
LABEL_3:
      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10169E3B0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v38[0] = v7;
        *v6 = 136446210;
        *(v6 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, v38);
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Invalid response!", v6, 0xCu);
        sub_100007BAC(v7);
      }

      type metadata accessor for AccessoryMetadataManager.Error(0);
      sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_23;
    }

LABEL_31:
    swift_once();
    goto LABEL_3;
  }

  v8 = *(v1 + 40);
  v9 = *(v1 + 184);
  BinaryDecoder.init()();
  sub_10038B8D0();
  BinaryDecoder.decode<A>(_:from:)();
  if (v9)
  {
    (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104));
    sub_100006654(v8, v2);
LABEL_23:

    v26 = *(v1 + 8);
    goto LABEL_24;
  }

  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = word_10139DD1A[sub_10059A0E8(v10, v11, v12)];
  v14 = word_10139DD1A[sub_10059A0E8(*(v1 + 88), *(v1 + 96), *(v1 + 33))];
  if (v13 != (v14 | 0x800))
  {
    v37 = v10;
    if (qword_1016946A0 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10169E3B0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136446722;
      *(v21 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x80000001013519D0, v38);
      *(v21 + 12) = 512;
      *(v21 + 14) = v13;
      *(v21 + 16) = 512;
      *(v21 + 18) = v14;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s Invalid responseOpcode: %hu for commandOpcode: %hu", v21, 0x14u);
      sub_100007BAC(v22);
    }

    v23 = *(v1 + 112);
    v24 = *(v1 + 120);
    v25 = *(v1 + 104);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_10038B978(v37, v35, v12);
    sub_100006654(v8, v2);
    (*(v23 + 8))(v24, v25);
    goto LABEL_23;
  }

  v15 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v15)
    {
      v16 = v8 >> 32;
    }

    else
    {
      v16 = BYTE6(v2);
    }

    if (v15)
    {
      v17 = v8 + 2;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= v17)
    {
      goto LABEL_33;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 != 2)
  {
    goto LABEL_30;
  }

  v28 = *(v8 + 16);
  if (__OFADD__(v28, 2))
  {
    __break(1u);
  }

  else if (*(v8 + 24) < v28 + 2)
  {
    goto LABEL_30;
  }

LABEL_33:
  v30 = *(v1 + 112);
  v29 = *(v1 + 120);
  v36 = *(v1 + 104);
  v31 = *(v1 + 56);
  v32 = Data.subdata(in:)();
  v34 = v33;
  sub_10038B978(v10, v11, v12);
  sub_100006654(v8, v2);
  (*(v30 + 8))(v29, v36);
  *v31 = v32;
  v31[1] = v34;

  v26 = *(v1 + 8);
LABEL_24:

  return v26();
}

uint64_t sub_100388C68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100388CD8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v53 = a3;
  v5 = sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
  v6 = *(v5 - 8);
  v55 = *(v6 + 64);
  __chkstk_darwin(v5);
  v54 = &v50 - v7;
  v8 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for AccessoryInfoEndPoint(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = type metadata accessor for Endianness();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AccessoryMetadata(0);
  sub_100313B54(*(a2 + *(v21 + 20)), *(a2 + *(v21 + 20) + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v58 & 1) != 0 || v57 != 21760)
  {
    v52 = v5;
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v28 = qword_10177C218;
    v29 = [objc_opt_self() sharedInstance];
    v30 = [v29 isInternalBuild];

    v31 = &enum case for FMNAccountType.accessory(_:);
    if (v30)
    {
      v32 = String._bridgeToObjectiveC()();
      v33 = [v28 BOOLForKey:v32];

      if (v33)
      {
        v31 = &enum case for FMNAccountType.none(_:);
      }
    }

    v34 = *v31;
    v35 = type metadata accessor for FMNAccountType();
    (*(*(v35 - 8) + 104))(v17, v34, v35);
    sub_10038BEAC(v17, v19, type metadata accessor for AccessoryInfoEndPoint);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v36 = type metadata accessor for FMNMockingPreferences();
    (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
    v37 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v38 = swift_allocObject();
    sub_10038B278(v19, v14, type metadata accessor for AccessoryInfoEndPoint);
    v39 = sub_100620924(v14, v37, v38);
    sub_10038B428(v19, type metadata accessor for AccessoryInfoEndPoint);
    v40 = *v53;
    v41 = *(v53 + 1);
    v42 = *(v53 + 2);

    sub_100017D5C(v41, v42);
    sub_1004FC6D8(v40, v41, v42, 0, v39);

    sub_100016590(v41, v42);
    v43 = v6;
    v53 = *(v6 + 16);
    v44 = v54;
    v51 = a1;
    v45 = a1;
    v46 = v52;
    v53(v54, v45, v52);
    v47 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v39;
    v50 = *(v43 + 32);
    v50(v48 + v47, v44, v46);

    Future.addFailure(block:)();

    v53(v44, v51, v46);
    v49 = swift_allocObject();
    *(v49 + 16) = v39;
    v50(v49 + v47, v44, v46);

    Future.addSuccess(block:)();
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177AC90);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skip fetching product info for AirTag", v25, 2u);
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v26 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v56 = v26;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100389408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a3;
  v4 = type metadata accessor for AccessoryInfoResponseContent(0);
  __chkstk_darwin(v4 - 8);
  v6 = (v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  v13 = type metadata accessor for AccessoryProductInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v17 = qword_10177C218;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 isInternalBuild];

  if (!v19 || (v20 = String._bridgeToObjectiveC()(), v21 = [v17 BOOLForKey:v20], v20, !v21))
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AC90);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error in product info request. Error: %{public}@", v29, 0xCu);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_16;
  }

  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177AC90);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v25, 2u);
  }

  sub_10074B008(v6);
  sub_10119A0F4(v6, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &qword_101697268, &qword_101394FE0);
LABEL_16:
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v32 = swift_allocError();
    *v33 = a1;
    swift_storeEnumTagMultiPayload();
    v35[1] = v32;
    swift_errorRetain();
    sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
    return CheckedContinuation.resume(throwing:)();
  }

  sub_10038BEAC(v12, v16, type metadata accessor for AccessoryProductInfo);
  sub_10038B278(v16, v10, type metadata accessor for AccessoryProductInfo);
  (*(v14 + 56))(v10, 0, 1, v13);
  sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
  CheckedContinuation.resume(returning:)();
  return sub_10038B428(v16, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_10038999C(unsigned int (**a1)(uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v150 = a3;
  v4 = type metadata accessor for AccessoryInfoResponseContent(0);
  v5 = __chkstk_darwin(v4 - 8);
  v152 = (&v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v154 = (&v141 - v7);
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v9 = __chkstk_darwin(v8 - 8);
  *&v145 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = (&v141 - v12);
  v14 = __chkstk_darwin(v11);
  v142 = &v141 - v15;
  v16 = __chkstk_darwin(v14);
  v147 = &v141 - v17;
  __chkstk_darwin(v16);
  v153 = &v141 - v18;
  v148 = type metadata accessor for AccessoryProductInfo(0);
  v19 = *(v148 - 1);
  v20 = __chkstk_darwin(v148);
  v143 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = (&v141 - v23);
  v25 = __chkstk_darwin(v22);
  v141 = &v141 - v26;
  v27 = __chkstk_darwin(v25);
  v159 = &v141 - v28;
  v29 = __chkstk_darwin(v27);
  v151 = &v141 - v30;
  __chkstk_darwin(v29);
  v144 = &v141 - v31;
  v32 = type metadata accessor for AccessoryInfoResponseType(0);
  v157 = *(v32 - 8);
  v158 = v32;
  v33 = __chkstk_darwin(v32);
  v160 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v141 - v35;
  v155 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v37 = *(v155 - 8);
  v38 = __chkstk_darwin(v155);
  v40 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v141 - v41;
  v43 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v43 - 8);
  v44 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v156 = v19;
  if (v44 != 200)
  {
    if (qword_101694F58 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

  v45 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v47 = v46;
  static String.Encoding.utf8.getter();
  v48 = String.init(data:encoding:)();
  v50 = v49;
  sub_100016590(v45, v47);
  v51 = v37;
  v146 = a1;
  if (v50)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177AC90);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v48;
      v58 = v56;
      v162[0] = v56;
      *v55 = 136315138;
      v59 = sub_1000136BC(v57, v50, v162);

      *(v55 + 4) = v59;
      v19 = v156;
      _os_log_impl(&_mh_execute_header, v53, v54, "response data: %s", v55, 0xCu);
      sub_100007BAC(v58);
      a1 = v146;

      v51 = v37;
    }

    else
    {
    }
  }

  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  v87 = sub_1000076D4(v86, qword_10177AC90);
  v88 = a1;
  v89 = v155;
  (v51[2])(v42, v88, v155);
  v149 = v87;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = v51;
    v94 = swift_slowAlloc();
    v162[0] = v94;
    *v92 = 136446210;
    sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = v89;
    v98 = v97;
    (v93[1])(v42, v96);
    v99 = sub_1000136BC(v95, v98, v162);
    v37 = v148;
    v19 = v156;

    *(v92 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v90, v91, "response: %{public}s", v92, 0xCu);
    sub_100007BAC(v94);
  }

  else
  {

    (v51[1])(v42, v89);
    v37 = v148;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v100 = JSONDecoder.init()();
  v101 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v103 = v102;
  sub_10038B488();
  v146 = v100;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v101, v103);
  v40 = v162[0];
  if (!*(v162[0] + 16))
  {

    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v124 = qword_10177C218;
    v125 = [objc_opt_self() sharedInstance];
    v126 = [v125 isInternalBuild];

    if (v126)
    {
      v127 = String._bridgeToObjectiveC()();
      v128 = [v124 BOOLForKey:v127];

      if (v128)
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v131, 2u);
        }

        v132 = v154;
        sub_10074B008(v154);
        v133 = v142;
        sub_10119A0F4(v132, v142);
        if ((*(v19 + 48))(v133, 1, v37) != 1)
        {
          v137 = v141;
          sub_10038BEAC(v133, v141, type metadata accessor for AccessoryProductInfo);
          v140 = v147;
          sub_10038B278(v137, v147, type metadata accessor for AccessoryProductInfo);
          (*(v19 + 56))(v140, 0, 1, v37);
          sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
          goto LABEL_61;
        }

        sub_10000B3A8(v133, &qword_101697268, &qword_101394FE0);
      }
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v134 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v162[0] = v134;
    sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
LABEL_63:
    CheckedContinuation.resume(throwing:)();
  }

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v162[0] = v107;
    *v106 = 136315138;
    v161 = v40;

    v108 = String.init<A>(describing:)();
    v110 = sub_1000136BC(v108, v109, v162);

    *(v106 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v104, v105, "decodedResponse: %s", v106, 0xCu);
    sub_100007BAC(v107);
  }

  v112 = v153;
  v24 = v160;
  v155 = *(v40 + 2);
  if (v155)
  {
    v113 = 0;
    v148 = (v19 + 56);
    a1 = (v19 + 48);
    v13 = _swiftEmptyArrayStorage;
    *&v111 = 134217984;
    v145 = v111;
    while (v113 < *(v40 + 2))
    {
      sub_10038B278(&v40[((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v113], v36, type metadata accessor for AccessoryInfoResponseType);
      sub_10038B278(v36, v24, type metadata accessor for AccessoryInfoResponseType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v114 = v37;
        v115 = *v24;
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = v145;
          *(v118 + 4) = v115;
          _os_log_impl(&_mh_execute_header, v116, v117, "Failed to retrieve product info with server status: %ld", v118, 0xCu);
        }

        v112 = v153;
        v37 = v114;
        (*v148)(v153, 1, 1, v114);
        v19 = v156;
      }

      else
      {
        v119 = v154;
        sub_10038BEAC(v24, v154, type metadata accessor for AccessoryInfoResponseContent);
        v120 = v152;
        sub_10038B278(v119, v152, type metadata accessor for AccessoryInfoResponseContent);
        sub_10119A0F4(v120, v112);
        sub_10038B428(v119, type metadata accessor for AccessoryInfoResponseContent);
      }

      sub_10038B428(v36, type metadata accessor for AccessoryInfoResponseType);
      if ((*a1)(v112, 1, v37) == 1)
      {
        sub_10000B3A8(v112, &qword_101697268, &qword_101394FE0);
      }

      else
      {
        v121 = v151;
        sub_10038BEAC(v112, v151, type metadata accessor for AccessoryProductInfo);
        sub_10038BEAC(v121, v159, type metadata accessor for AccessoryProductInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100A5CAE4(0, v13[2] + 1, 1, v13);
        }

        v123 = v13[2];
        v122 = v13[3];
        if (v123 >= v122 >> 1)
        {
          v13 = sub_100A5CAE4((v122 > 1), v123 + 1, 1, v13);
        }

        v13[2] = v123 + 1;
        sub_10038BEAC(v159, v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v123, type metadata accessor for AccessoryProductInfo);
      }

      v24 = v160;
      if (v155 == ++v113)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
LABEL_8:
    v60 = qword_10177C218;
    v61 = [objc_opt_self() sharedInstance];
    v62 = [v61 isInternalBuild];

    if (!v62 || (v63 = String._bridgeToObjectiveC()(), v64 = [v60 BOOLForKey:v63], v63, !v64))
    {
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000076D4(v73, qword_10177AC90);
      v74 = a1;
      v75 = v155;
      (v37[2])(v40, v74, v155);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v162[0] = v79;
        *v78 = 136315138;
        sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        (v37[1])(v40, v75);
        v83 = sub_1000136BC(v80, v82, v162);

        *(v78 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "Product info check failed: %s", v78, 0xCu);
        sub_100007BAC(v79);
      }

      else
      {

        (v37[1])(v40, v75);
      }

      goto LABEL_21;
    }

    v65 = v156;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000076D4(v66, qword_10177AC90);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v148;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "AccessoryHardcodedPairingEnabled: bypassing product info check failure", v71, 2u);
    }

    v72 = v154;
    sub_10074B008(v154);
    sub_10119A0F4(v72, v13);
    if ((*(v65 + 48))(v13, 1, v70) == 1)
    {
      sub_10000B3A8(v13, &qword_101697268, &qword_101394FE0);
LABEL_21:
      type metadata accessor for AccessoryMetadataManager.Error(0);
      sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
      v84 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      v162[0] = v84;
      sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
      return CheckedContinuation.resume(throwing:)();
    }

    sub_10038BEAC(v13, v24, type metadata accessor for AccessoryProductInfo);
    v135 = v147;
    sub_10038B278(v24, v147, type metadata accessor for AccessoryProductInfo);
    (*(v65 + 56))(v135, 0, 1, v70);
    sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
    CheckedContinuation.resume(returning:)();
    v136 = v24;
    return sub_10038B428(v136, type metadata accessor for AccessoryProductInfo);
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_59:

  if (!v13[2])
  {

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v139 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v162[0] = v139;
    sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
    goto LABEL_63;
  }

  v137 = v144;
  sub_10038B278(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v144, type metadata accessor for AccessoryProductInfo);

  v138 = v147;
  sub_10038B278(v137, v147, type metadata accessor for AccessoryProductInfo);
  (*(v19 + 56))(v138, 0, 1, v37);
  sub_1000BC4D4(&qword_10169E738, &unk_10139DA80);
LABEL_61:
  CheckedContinuation.resume(returning:)();

  v136 = v137;
  return sub_10038B428(v136, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_10038B278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038B2E0(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_10169E738, &unk_10139DA80) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100389408(a1, v4, v5);
}

uint64_t sub_10038B360(unsigned int (**a1)(uint64_t, uint64_t, void))
{
  v3 = *(sub_1000BC4D4(&qword_10169E738, &unk_10139DA80) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10038999C(a1, v4, v5);
}

uint64_t sub_10038B3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10038B428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10038B488()
{
  result = qword_10169E740;
  if (!qword_10169E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E740);
  }

  return result;
}

uint64_t sub_10038B4EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_1003668F8(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_10038B5CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_100017D5C(a2, a3);
  }

  return result;
}

uint64_t sub_10038B624(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10037243C(a1, v1 + v5, v6);
}

uint64_t sub_10038B730()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10038B7C4(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10037281C(a1, v1 + v5, v6);
}

unint64_t sub_10038B8D0()
{
  result = qword_10169E758;
  if (!qword_10169E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E758);
  }

  return result;
}

unint64_t sub_10038B924()
{
  result = qword_10169E760;
  if (!qword_10169E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E760);
  }

  return result;
}

uint64_t sub_10038B978(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return sub_100016590(result, a2);
  }

  return result;
}

double sub_10038B9A0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_100017D5C(a1, a2);
  }

  return result;
}

uint64_t sub_10038B9C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10037EF84(a1, v4, v5, v6);
}

uint64_t sub_10038BA7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10037F24C(a1, v4, v5);
}

uint64_t sub_10038BB30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_1003880D4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10038BC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038BCE4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {
  }

  else
  {
    if (v7 != 2)
    {
      if (v7)
      {
        return result;
      }

      sub_100016590(result, a2);
      result = a3;
      a2 = a4;
    }

    return sub_100016590(result, a2);
  }
}

unint64_t sub_10038BD74()
{
  result = qword_10169E780;
  if (!qword_10169E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E780);
  }

  return result;
}

unint64_t sub_10038BDD8()
{
  result = qword_10169E788;
  if (!qword_10169E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E788);
  }

  return result;
}

double sub_10038BE2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {
  }

  else
  {
    if (v7 != 2)
    {
      if (v7)
      {
        return result;
      }

      sub_100017D5C(a1, a2);
      a1 = a3;
      a2 = a4;
    }

    sub_100017D5C(a1, a2);
  }

  return result;
}

uint64_t sub_10038BEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10038BF14()
{
  result = qword_10169E790;
  if (!qword_10169E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E790);
  }

  return result;
}

uint64_t sub_10038BFE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100363918(*a1, *(a1 + 8), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_10038C044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100361E84(a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_10038C0B0(void (*a1)(char *), void (*a2)(char *))
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_10035D1F0(a1, a2, v6, v7);
}

uint64_t sub_10038C160()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  return sub_10035E6B0(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_10038C24C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

void sub_10038C2A8(uint64_t a1)
{
  sub_10038C3E8(319, &qword_10169E968, sub_10038C384);
  if (v1 <= 0x3F)
  {
    sub_10038C3E8(319, &qword_10169E978, &type metadata accessor for MACAddress);
    if (v2 <= 0x3F)
    {
      sub_10038C3E8(319, &unk_10169E980, type metadata accessor for AccessoryMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_10038C384()
{
  result = qword_10169E970;
  if (!qword_10169E970)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10169E970);
  }

  return result;
}

void sub_10038C3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10038C4D4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *, id))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = a5;
  a6(v13, a5, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10038C624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, void *))
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a1;
  v14 = a5;
  a6(v12, a5);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10038C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10038CAD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4;
  v12 = a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100016590(v13, v14);

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_10038CBC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v6 - 8);
  v111 = &v103 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v104 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v105 = &v103 - v13;
  v14 = __chkstk_darwin(v12);
  v107 = &v103 - v15;
  v16 = __chkstk_darwin(v14);
  v108 = &v103 - v17;
  __chkstk_darwin(v16);
  v19 = &v103 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = a3;
  v24 = *(a3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if (v26)
  {
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177B380);
  v109 = *(v9 + 16);
  v109(v19, a1, v8);
  v110 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v106 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v103 = a1;
    v33 = v9;
    v34 = v8;
    v35 = v32;
    v36 = swift_slowAlloc();
    v116[0] = v36;
    *v35 = 136315138;
    sub_1002FFBAC();
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = v19;
    v41 = *(v33 + 8);
    v41(v40, v34);
    v42 = sub_1000136BC(v37, v39, v116);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v29, v30, "didStartPlayingUnauthorizedSoundOnDevice %s", v35, 0xCu);
    sub_100007BAC(v36);

    v8 = v34;
    a1 = v103;
  }

  else
  {

    v43 = v19;
    v41 = *(v9 + 8);
    v41(v43, v8);
  }

  v44 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v45 = v112;
  swift_beginAccess();
  v46 = *(v45 + v44);
  if (!*(v46 + 16))
  {
    goto LABEL_14;
  }

  v47 = sub_1000210EC(a1);
  if ((v48 & 1) == 0)
  {

LABEL_14:
    v71 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
    v72 = v111;
    (*(*(v71 - 8) + 56))(v111, 1, 1, v71);
    sub_10000B3A8(v72, &qword_1016998E0, &qword_101392030);
    v73 = v108;
    v109(v108, a1, v8);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v73;
      v78 = swift_slowAlloc();
      v115[0] = v78;
      *v76 = 136315138;
      sub_1002FFBAC();
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v41;
      v82 = v81;
      v80(v77, v8);
      v83 = sub_1000136BC(v79, v82, v115);

      *(v76 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "didStartPlayingUnauthorizedSoundOnDevice called with unknown device %s", v76, 0xCu);
      sub_100007BAC(v78);

LABEL_20:

      return;
    }

    v84 = v73;
LABEL_22:
    v41(v84, v8);
    return;
  }

  v49 = v47;
  v50 = *(v46 + 56);
  v51 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v52 = *(v51 - 8);
  v53 = v50 + *(v52 + 72) * v49;
  v54 = v111;
  sub_10038E0A0(v53, v111);

  (*(v52 + 56))(v54, 0, 1, v51);
  sub_10000B3A8(v54, &qword_1016998E0, &qword_101392030);
  v55 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
  v56 = v112;
  swift_beginAccess();
  v57 = v107;
  if (!*(*(v56 + v55) + 16))
  {
LABEL_18:
    v109(v57, a1, v8);
    v74 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v114 = v87;
      *v86 = 136315138;
      sub_1002FFBAC();
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v57;
      v91 = v90;
      v41(v89, v8);
      v92 = sub_1000136BC(v88, v91, &v114);

      *(v86 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v74, v85, "Missing playSoundSubject for device %s!", v86, 0xCu);
      sub_100007BAC(v87);

      goto LABEL_20;
    }

    v84 = v57;
    goto LABEL_22;
  }

  sub_1000210EC(a1);
  if ((v58 & 1) == 0)
  {

    goto LABEL_18;
  }

  v59 = v106;
  if (v106)
  {
    v60 = v105;
    v109(v105, a1, v8);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114 = v112;
      *v63 = 136315394;
      sub_1002FFBAC();
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v41(v60, v8);
      v67 = sub_1000136BC(v64, v66, &v114);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v113 = v106;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v68 = String.init<A>(describing:)();
      v70 = sub_1000136BC(v68, v69, &v114);

      *(v63 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "didStartPlayingUnauthorizedSoundOnDevice %s failed due to %s", v63, 0x16u);
      swift_arrayDestroy();

      v59 = v106;
    }

    else
    {

      v41(v60, v8);
    }

    v114 = v59;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    v93 = v104;
    v109(v104, a1, v8);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = v93;
      v112 = swift_slowAlloc();
      v114 = v112;
      *v96 = 136315138;
      sub_1002FFBAC();
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v41;
      v101 = v100;
      v99(v97, v8);
      v102 = sub_1000136BC(v98, v101, &v114);

      *(v96 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v94, v95, "didStartPlayingUnauthorizedSoundOnDevice %s succeeded", v96, 0xCu);
      sub_100007BAC(v112);
    }

    else
    {

      v41(v93, v8);
    }

    PassthroughSubject.send(_:)();
    v114 = 4;
    PassthroughSubject.send(completion:)();
  }
}

void sub_10038D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v6 - 8);
  v8 = &v79 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v82 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v83 = &v79 - v16;
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = a3;
  v23 = *(a3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v86 = v8;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177B380);
  v27 = *(v10 + 16);
  v89 = a1;
  v84 = v27;
  v27(v18, a1, v9);
  v85 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v80 = a2;
    v32 = v10;
    v33 = v31;
    v92[0] = v31;
    *v30 = 136315138;
    sub_1002FFBAC();
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v87 = *(v32 + 8);
    v87(v18, v9);
    v37 = sub_1000136BC(v34, v36, v92);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "didCompletePlayingUnauthorizedSoundOnDevice %s", v30, 0xCu);
    sub_100007BAC(v33);
    a2 = v80;
  }

  else
  {

    v87 = *(v10 + 8);
    v87(v18, v9);
  }

  v38 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v39 = v88;
  swift_beginAccess();
  v40 = *(v39 + v38);
  v41 = v89;
  if (!*(v40 + 16))
  {
LABEL_12:
    v63 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
    v64 = v86;
    (*(*(v63 - 8) + 56))(v86, 1, 1, v63);
    sub_10000B3A8(v64, &qword_1016998E0, &qword_101392030);
    v65 = v83;
    v84(v83, v41, v9);
    v52 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91 = v68;
      *v67 = 136315138;
      sub_1002FFBAC();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v87(v65, v9);
      v72 = sub_1000136BC(v69, v71, &v91);

      *(v67 + 4) = v72;
      v73 = "didCompletePlayingUnauthorizedSoundOnDevice called with unknown device %s";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v52, v66, v73, v67, 0xCu);
      sub_100007BAC(v68);

      goto LABEL_15;
    }

LABEL_18:

    v78 = v65;
    goto LABEL_19;
  }

  v42 = sub_1000210EC(v41);
  if ((v43 & 1) == 0)
  {

    goto LABEL_12;
  }

  v44 = v42;
  v45 = *(v40 + 56);
  v46 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v47 = *(v46 - 8);
  v48 = v45 + *(v47 + 72) * v44;
  v49 = v86;
  sub_10038E0A0(v48, v86);

  (*(v47 + 56))(v49, 0, 1, v46);
  v50 = v89;
  sub_10000B3A8(v49, &qword_1016998E0, &qword_101392030);
  sub_100815748(v50, 0, 0);
  if (!a2)
  {
    v65 = v81;
    v84(v81, v50, v9);
    v52 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91 = v68;
      *v67 = 136315138;
      sub_1002FFBAC();
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v87(v65, v9);
      v77 = sub_1000136BC(v74, v76, &v91);

      *(v67 + 4) = v77;
      v73 = "didCompletePlayingUnauthorizedSoundOnDevice %s succeeded";
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v51 = v82;
  v84(v82, v50, v9);
  swift_errorRetain();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v51;
    v55 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v55 = 136315394;
    sub_1002FFBAC();
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v87(v54, v9);
    v59 = sub_1000136BC(v56, v58, &v91);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v90 = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v60 = String.init<A>(describing:)();
    v62 = sub_1000136BC(v60, v61, &v91);

    *(v55 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "didCompletePlayingUnauthorizedSoundOnDevice %s failed due to %s", v55, 0x16u);
    swift_arrayDestroy();

LABEL_15:

    return;
  }

  v78 = v51;
LABEL_19:
  v87(v78, v9);
}

uint64_t sub_10038E0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038E168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169EA10, &qword_10139DD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038E1D8()
{
  if (*v0)
  {
    return 0x6574746142776F6CLL;
  }

  else
  {
    return 0x61426C616D726F6ELL;
  }
}

uint64_t sub_10038E224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61426C616D726F6ELL && a2 == 0xED00007972657474;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574746142776F6CLL && a2 == 0xEA00000000007972)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10038E310(uint64_t a1)
{
  v2 = sub_1003908AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038E34C(uint64_t a1)
{
  v2 = sub_1003908AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static MacBeaconConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return sub_10038F898(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

uint64_t AllMacBeaconConfigs.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169EA18, &qword_10139DD58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1003908AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v23[0] = *v3;
  v23[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v23[2] = v3[2];
  v24 = *(v3 + 6);
  v17 = v11;
  v18 = v10;
  v19 = v3[2];
  v20 = *(v3 + 6);
  v25 = 0;
  sub_10038E124(v23, v16);
  sub_100390900();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v12 = *(v3 + 72);
    v21[0] = *(v3 + 56);
    v21[1] = v12;
    v21[2] = *(v3 + 88);
    v22 = *(v3 + 13);
    v13 = *(v3 + 72);
    v17 = *(v3 + 56);
    v18 = v13;
    v19 = *(v3 + 88);
    v20 = *(v3 + 13);
    v25 = 1;
    sub_10038E168(v21, v16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 AllMacBeaconConfigs.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100390954(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

BOOL sub_10038E68C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_10038E72C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10038E828@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100390C08(*a1);
  *a2 = result;
  return result;
}

void sub_10038E858(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = *v1;
  v4 = "instructionsToDisableItems";
  v5 = "isementDurationInSecs";
  v6 = 0xD00000000000002ALL;
  if (v3 != 5)
  {
    v6 = 0xD000000000000020;
    v5 = "isementDurationDecayFactor";
  }

  v7 = "ementIntervalInSecs";
  v8 = 0xD000000000000025;
  if (v3 == 3)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v7 = "slowRollDurationInSecs";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "initialNoBeaconPeriodInSecs";
  if (v3 != 1)
  {
    v2 = 0xD000000000000023;
    v9 = "fastRollDurationInSecs";
  }

  if (*v1)
  {
    v4 = v9;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_10038E920()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD00000000000002ALL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD000000000000025;
  if (v2 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10038E9E4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100390C08(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10038EA0C(uint64_t a1)
{
  v2 = sub_100390F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038EA48(uint64_t a1)
{
  v2 = sub_100390F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall MacBeaconConfig.init(initialNoBeaconDuration:fastRollAdvertisementDuration:fastRollAdvertisementInterval:slowRollAdvertisementDuration:slowRollNoAdvertisementDuration:noAdvertisementDurationDecayFactor:postInitialDayAdvertisementTimes:)(searchpartyd::MacBeaconConfig *__return_ptr retstr, Swift::Double initialNoBeaconDuration, Swift::Double fastRollAdvertisementDuration, Swift::Double fastRollAdvertisementInterval, Swift::Double slowRollAdvertisementDuration, Swift::Double slowRollNoAdvertisementDuration, Swift::Double noAdvertisementDurationDecayFactor, Swift::OpaquePointer postInitialDayAdvertisementTimes)
{
  retstr->initialNoBeaconDuration = initialNoBeaconDuration;
  retstr->fastRollAdvertisementDuration = fastRollAdvertisementDuration;
  retstr->fastRollAdvertisementInterval = fastRollAdvertisementInterval;
  retstr->slowRollAdvertisementDuration = slowRollAdvertisementDuration;
  retstr->slowRollNoAdvertisementDuration = slowRollNoAdvertisementDuration;
  retstr->noAdvertisementDurationDecayFactor = noAdvertisementDurationDecayFactor;
  retstr->postInitialDayAdvertisementTimes = postInitialDayAdvertisementTimes;
}

double MacBeaconConfig.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100390C54(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t MacBeaconConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169EA30, &unk_10139DD60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100390F1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 6;
    sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    sub_100391400(&qword_10169EA40, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10038ED80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10038EE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 56);
    for (i = (a1 + 56); ; i += 32)
    {
      if (*(i - 24) != *(v4 - 24))
      {
        return 0;
      }

      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v12 = v7 >> 62;
      v13 = v10 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v22 = *(v6 + 16);
          v21 = *(v6 + 24);
          v19 = __OFSUB__(v21, v22);
          v14 = v21 - v22;
          if (v19)
          {
            goto LABEL_63;
          }

          goto LABEL_22;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_23;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_62;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_23:
          if (v13)
          {
            LODWORD(v20) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              goto LABEL_61;
            }

            v20 = v20;
          }

          else
          {
            v20 = BYTE6(v10);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v14 = BYTE6(v7);
        if (v13 <= 1)
        {
          goto LABEL_23;
        }
      }

LABEL_16:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

LABEL_34:
        sub_100017D5C(*(i - 2), *(i - 1));
        v15 = v9;
        v16 = v10;
LABEL_35:
        sub_100017D5C(v15, v16);
        goto LABEL_56;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
      }

LABEL_29:
      if (v14 != v20)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_34;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v35 = *v4;
          v36 = *i;
          v37 = v3;
          v25 = *(v6 + 16);
          v34 = *(v6 + 24);
          sub_100017D5C(v6, v7);
          sub_100017D5C(v9, v10);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v25, v27))
            {
              goto LABEL_66;
            }

            v26 += v25 - v27;
          }

          if (__OFSUB__(v34, v25))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v28 = v26;
          v29 = v9;
          v30 = v10;
          v3 = v37;
          goto LABEL_52;
        }

        memset(v39, 0, 14);
        sub_100017D5C(v6, v7);
        sub_100017D5C(v9, v10);
        v23 = v9;
        v24 = v10;
      }

      else
      {
        if (v12)
        {
          v35 = *v4;
          v36 = *i;
          if (v6 >> 32 < v6)
          {
            goto LABEL_64;
          }

          sub_100017D5C(v6, v7);
          sub_100017D5C(v9, v10);
          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v32 = __DataStorage._offset.getter();
            if (__OFSUB__(v6, v32))
            {
              goto LABEL_67;
            }

            v31 += v6 - v32;
          }

          __DataStorage._length.getter();
          v28 = v31;
          v29 = v9;
          v30 = v10;
LABEL_52:
          sub_100771A28(v28, v29, v30, v39);
          v11 = v35;
          v8 = v36;
          if ((v39[0] & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v39[0] = *(i - 2);
        LOWORD(v39[1]) = v7;
        BYTE2(v39[1]) = BYTE2(v7);
        BYTE3(v39[1]) = BYTE3(v7);
        BYTE4(v39[1]) = BYTE4(v7);
        BYTE5(v39[1]) = BYTE5(v7);
        sub_100017D5C(v6, v7);
        sub_100017D5C(v9, v10);
        v23 = v9;
        v24 = v10;
      }

      sub_100771A28(v39, v23, v24, &v38);
      if (!v38)
      {
LABEL_59:
        sub_100016590(v9, v10);
        sub_100016590(v6, v7);
        return 0;
      }

LABEL_56:
      sub_100016590(v9, v10);
      sub_100016590(v6, v7);
      if (v8 != v11)
      {
        return 0;
      }

      v4 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v6 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
    {
      v14 = 0;
      if (!v9 && v10 == 0xC000000000000000)
      {
        sub_100017D5C(0, 0xC000000000000000);
        v15 = 0;
        v16 = 0xC000000000000000;
        goto LABEL_35;
      }
    }

LABEL_22:
    if (v13 <= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_10038F298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v15 = a1;
    v16 = a2;
    while (1)
    {
      v4 = a1 + v3;
      v5 = a2 + v3;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
      {
        break;
      }

      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      v8 = *(v4 + 80);
      v9 = *(v4 + 88);
      v10 = *(v5 + 56);
      v11 = *(v5 + 64);
      v12 = *(v5 + 80);
      v17 = *(v5 + 72);
      v18 = *(v4 + 72);
      v13 = *(v5 + 88);
      if ((*(v4 + 40) != *(v5 + 40) || *(v4 + 48) != *(v5 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if ((v6 != v10 || v7 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v12 || (v18 != v17 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9 == 2)
      {
        if (v13 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v13 == 2 || ((v13 ^ v9) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 64;
      --v2;
      a1 = v15;
      a2 = v16;
      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10038F40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100391338(v13, v10, type metadata accessor for WildModeTrackingLocation);
      sub_100391338(v14, v7, type metadata accessor for WildModeTrackingLocation);
      if (*v10 != *v7 || v10[1] != v7[1] || v10[2] != v7[2])
      {
        break;
      }

      v16 = static Date.== infix(_:_:)();
      sub_1003913A0(v7, type metadata accessor for WildModeTrackingLocation);
      sub_1003913A0(v10, type metadata accessor for WildModeTrackingLocation);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1003913A0(v7, type metadata accessor for WildModeTrackingLocation);
    sub_1003913A0(v10, type metadata accessor for WildModeTrackingLocation);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10038F634(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v20 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v20 + 32 * v3);
    v6 = (v4 + 32 * v3);
    if (*v5 != *v6)
    {
      return 0;
    }

    result = v5[1];
    v7 = v5[3];
    v8 = v6[3];
    if (result != v6[1] || v5[2] != v6[2])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v10 = *(v7 + 16);
    if (v10 != *(v8 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v7 == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v7 + 64);
      v13 = (v8 + 64);
      while (v10)
      {
        if (*(v12 - 4) != *(v13 - 4))
        {
          return 0;
        }

        result = *(v12 - 3);
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = *(v13 - 1);
        v17 = *v13;
        if (result != *(v13 - 3) || *(v12 - 2) != *(v13 - 2))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v14 != v16 || v15 != v17)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v12 += 5;
        v13 += 5;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10038F7B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10038F898(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10038F8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10038F9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawSearchResult(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_15:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100391338(v13, v10, type metadata accessor for RawSearchResult);
      sub_100391338(v14, v7, type metadata accessor for RawSearchResult);
      if (*v10 != *v7 || (static Date.== infix(_:_:)() & 1) == 0 || *&v10[v4[6]] != *&v7[v4[6]] || *&v10[v4[7]] != *&v7[v4[7]] || *&v10[v4[8]] != *&v7[v4[8]])
      {
        break;
      }

      v16 = static UUID.== infix(_:_:)();
      sub_1003913A0(v7, type metadata accessor for RawSearchResult);
      sub_1003913A0(v10, type metadata accessor for RawSearchResult);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1003913A0(v7, type metadata accessor for RawSearchResult);
    sub_1003913A0(v10, type metadata accessor for RawSearchResult);
    goto LABEL_15;
  }

  v16 = 1;
  return v16 & 1;
}

BOOL sub_10038FC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 48);
        v12[2] = *(v3 + 32);
        v12[3] = v5;
        v13 = *(v3 + 64);
        v6 = *(v3 + 16);
        v12[0] = *v3;
        v12[1] = v6;
        v7 = *(v4 + 48);
        v14[2] = *(v4 + 32);
        v14[3] = v7;
        v15 = *(v4 + 64);
        v8 = *(v4 + 16);
        v14[0] = *v4;
        v14[1] = v8;
        sub_1003914F8(v12, v11);
        sub_1003914F8(v14, v11);
        v9 = sub_1012598A0(v12, v14);
        sub_100391554(v14);
        sub_100391554(v12);
        if (!v9)
        {
          break;
        }

        v3 += 72;
        v4 += 72;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

uint64_t sub_10038FD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      if (*(v4 - 2) != *(i - 2))
      {
        return 0;
      }

      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v7 + 16);
          v17 = *(v7 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_58;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_25:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v8);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_57;
      }

LABEL_29:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v29 = v3;
          v19 = *(v7 + 16);
          v28 = *(v7 + 24);
          sub_100017D5C(v7, v6);
          sub_100017D5C(v9, v8);
          v20 = __DataStorage._bytes.getter();
          if (v20)
          {
            v21 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_62;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v28, v19))
          {
            goto LABEL_61;
          }

          __DataStorage._length.getter();
          v22 = v20;
          v23 = v9;
          v24 = v8;
          v3 = v29;
          goto LABEL_50;
        }

        memset(v31, 0, 14);
        sub_100017D5C(v7, v6);
        sub_100017D5C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_60;
          }

          sub_100017D5C(v7, v6);
          sub_100017D5C(v9, v8);
          v25 = __DataStorage._bytes.getter();
          if (v25)
          {
            v26 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v26))
            {
              goto LABEL_63;
            }

            v25 += v7 - v26;
          }

          __DataStorage._length.getter();
          v22 = v25;
          v23 = v9;
          v24 = v8;
LABEL_50:
          sub_100771A28(v22, v23, v24, v31);
          sub_100016590(v9, v8);
          sub_100016590(v7, v6);
          if ((v31[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v31[0] = *(v4 - 1);
        LOWORD(v31[1]) = v6;
        BYTE2(v31[1]) = BYTE2(v6);
        BYTE3(v31[1]) = BYTE3(v6);
        BYTE4(v31[1]) = BYTE4(v6);
        BYTE5(v31[1]) = BYTE5(v6);
        sub_100017D5C(v7, v6);
        sub_100017D5C(v9, v8);
      }

      sub_100771A28(v31, v9, v8, &v30);
      sub_100016590(v9, v8);
      sub_100016590(v7, v6);
      if (!v30)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v7 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v11 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_10039014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100391338(v13, v10, type metadata accessor for DefaultConfigurationLayer);
        sub_100391338(v14, v7, type metadata accessor for DefaultConfigurationLayer);
        v16 = sub_100904838(v10, v7);
        sub_1003913A0(v7, type metadata accessor for DefaultConfigurationLayer);
        sub_1003913A0(v10, type metadata accessor for DefaultConfigurationLayer);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1003902F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1003912E0();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

id MacBeaconConfig.xpcObject()()
{
  v1 = *(v0 + 6);
  v2 = *(v1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(NSNumber) initWithInteger:v4];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
  }

  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = objc_allocWithZone(SPMacBeaconConfig);
  sub_100390F70();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithInitialNoBeaconDuration:isa fastRollAdvertisementDuration:v5 fastRollAdvertisementInterval:v6 slowRollAdvertisementDuration:v7 slowRollNoAdvertisementDuration:v8 noAdvertisementDurationDecayFactor:v9 postInitialDayAdvertisementTimes:v10];

  return v13;
}

uint64_t sub_100390648(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && (*(a1 + 32) == *(a2 + 32) ? (v2 = *(a1 + 40) == *(a2 + 40)) : (v2 = 0), v2))
  {
    return sub_10038F898(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

BOOL _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    v22 = v2;
    v23 = v3;
    v6 = a1;
    if ((sub_10038F898(*(a1 + 48), *(a2 + 48)) & 1) == 0)
    {
      return 0;
    }

    v18 = *(v6 + 56);
    v8 = *(v6 + 88);
    v19 = *(v6 + 72);
    v20 = v8;
    v9 = *(v6 + 104);
    v21 = v9;
    v10 = *(a2 + 72);
    v14 = *(a2 + 56);
    v15 = v10;
    v16 = *(a2 + 88);
    v11 = *(a2 + 104);
    v17 = v11;
    if (v9)
    {
      if (v11 && *&v18 == *&v14 && *(&v18 + 1) == *(&v14 + 1) && *&v19 == *&v15 && *(&v19 + 1) == *(&v15 + 1) && *&v20 == *&v16 && *(&v20 + 1) == *(&v16 + 1))
      {
        v12 = sub_10038F898(v9, v11);
        sub_10038E168(&v18, v13);
        sub_10038E168(&v14, v13);

        return (v12 & 1) != 0;
      }
    }

    else if (!v11)
    {
      sub_10038E168(&v18, v13);
      sub_10038E168(&v14, v13);

      return 1;
    }

    sub_10038E168(&v18, v13);
    sub_10038E168(&v14, v13);

    return 0;
  }

  return result;
}

unint64_t sub_1003908AC()
{
  result = qword_10169EA20;
  if (!qword_10169EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA20);
  }

  return result;
}

unint64_t sub_100390900()
{
  result = qword_10169EA28;
  if (!qword_10169EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA28);
  }

  return result;
}

uint64_t sub_100390954@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000BC4D4(&qword_10169EA88, &qword_10139E138);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_1003908AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v8 = v5;
  LOBYTE(v28) = 0;
  sub_10039146C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v35;
  v10 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v51 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v16 = v47;
  v17 = v48;
  v18 = v49;
  v25 = *(&v50 + 1);
  v26 = v50;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  *&v30 = v13;
  *(&v30 + 1) = v14;
  *&v31 = v15;
  *(&v31 + 1) = v47;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  sub_1003914C0(&v28, &v35);
  sub_100007BAC(a1);
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v26;
  v46 = v25;
  result = sub_10015056C(&v35);
  v20 = v33;
  v21 = v27;
  v27[4] = v32;
  v21[5] = v20;
  v21[6] = v34;
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v23 = v31;
  v21[2] = v30;
  v21[3] = v23;
  return result;
}

unint64_t sub_100390C08(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608AC8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100390C54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_10169EA78, &qword_10139E130);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100390F1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v30 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v29 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v28 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v27 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v26 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v25 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
  v24 = 6;
  sub_100391400(&qword_10169EA80, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v21 = v23[1];
  result = sub_100007BAC(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  a2[6] = v21;
  return result;
}

unint64_t sub_100390F1C()
{
  result = qword_10169EA38;
  if (!qword_10169EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA38);
  }

  return result;
}

unint64_t sub_100390F70()
{
  result = qword_1016AD650;
  if (!qword_1016AD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AD650);
  }

  return result;
}

__n128 sub_100390FBC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

__n128 sub_100390FF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10039100C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100391054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003910D4()
{
  result = qword_10169EA48;
  if (!qword_10169EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA48);
  }

  return result;
}

unint64_t sub_10039112C()
{
  result = qword_10169EA50;
  if (!qword_10169EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA50);
  }

  return result;
}

unint64_t sub_100391184()
{
  result = qword_10169EA58;
  if (!qword_10169EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA58);
  }

  return result;
}

unint64_t sub_1003911DC()
{
  result = qword_10169EA60;
  if (!qword_10169EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA60);
  }

  return result;
}

unint64_t sub_100391234()
{
  result = qword_10169EA68;
  if (!qword_10169EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA68);
  }

  return result;
}

unint64_t sub_10039128C()
{
  result = qword_10169EA70;
  if (!qword_10169EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA70);
  }

  return result;
}

unint64_t sub_1003912E0()
{
  result = qword_1016984A0;
  if (!qword_1016984A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984A0);
  }

  return result;
}

uint64_t sub_100391338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003913A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100391400(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E40, qword_1013C5620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10039146C()
{
  result = qword_10169EA90;
  if (!qword_10169EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA90);
  }

  return result;
}

uint64_t sub_1003915A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACB0);
  sub_1000076D4(v0, qword_10177ACB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100391628(unsigned __int16 a1)
{
  if (a1 > 0x103u)
  {
    if (a1 > 0x10Bu)
    {
      if (a1 == 268)
      {
        return 1;
      }

      if (a1 == 516)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 260)
      {
        return 6;
      }

      if (a1 == 267)
      {
        return 0;
      }
    }
  }

  else if (a1 > 0x101u)
  {
    if (a1 == 258)
    {
      return 4;
    }

    if (a1 == 259)
    {
      return 5;
    }
  }

  else
  {
    if (a1 == 256)
    {
      return 2;
    }

    if (a1 == 257)
    {
      return 3;
    }
  }

  return 8;
}

unint64_t sub_1003916FC()
{
  result = qword_10169EA98;
  if (!qword_10169EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA98);
  }

  return result;
}

unint64_t sub_100391750@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_100100ACC(__dst);
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v19 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSWSendPairingDataCommandPayload;
        a1[4] = sub_1001019A0();
        v20 = swift_allocObject();
        *a1 = v20;
        memmove((v20 + 16), v19, 0x108uLL);
        memcpy(v30, v1, sizeof(v30));
        v16 = sub_1000479AC(v30);
        v17 = &qword_101697348;
        v18 = &unk_10138BEB0;
      }

      else
      {
        v27 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSWFinalizePairingCommandPayload;
        a1[4] = sub_100391AEC();
        v28 = swift_allocObject();
        *a1 = v28;
        memmove((v28 + 16), v27, 0x70uLL);
        memcpy(v30, v1, sizeof(v30));
        v16 = sub_1000479AC(v30);
        v17 = &unk_10169EAB0;
        v18 = &unk_1013F9C00;
      }
    }

    else
    {
      if (!v3)
      {
        v4 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v5 = swift_allocObject();
        *a1 = v5;
        v6 = v4[1];
        *(v5 + 16) = *v4;
        *(v5 + 32) = v6;
        memcpy(v30, v1, sizeof(v30));
        v7 = sub_1000479AC(v30);
        v8 = v7[2];
        v9 = v7[3];
        sub_100017D5C(*v7, v7[1]);
        return sub_100017D5C(v8, v9);
      }

      v21 = sub_1000479AC(__dst);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v22 = swift_allocObject();
      *a1 = v22;
      memmove((v22 + 16), v21, 0x50uLL);
      memcpy(v30, v1, sizeof(v30));
      v16 = sub_1000479AC(v30);
      v17 = &unk_10169EAC0;
      v18 = &unk_10139E338;
    }

    return sub_1000D2A70(v16, v29, v17, v18);
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      v23 = sub_1000479AC(__dst);
      v24 = *v23;
      v25 = v23[1];
      a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      a1[4] = sub_100391A98();
      *a1 = v24;
      a1[1] = v25;
      memcpy(v30, v1, sizeof(v30));
      v26 = sub_1000479AC(v30);
      return sub_100017D5C(*v26, *(v26 + 8));
    }

    v11 = sub_1000479AC(__dst);
    a1[3] = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
    a1[4] = sub_100101224();
    v12 = swift_allocObject();
    *a1 = v12;
    v13 = v11[3];
    v15 = *v11;
    v14 = v11[1];
    v12[3] = v11[2];
    v12[4] = v13;
    v12[1] = v15;
    v12[2] = v14;
    memcpy(v30, v1, sizeof(v30));
    v16 = sub_1000479AC(v30);
    v17 = &qword_101697310;
    v18 = &qword_10139E330;
    return sub_1000D2A70(v16, v29, v17, v18);
  }

  if (v3 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_100391A98()
{
  result = qword_10169EAA0;
  if (!qword_10169EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAA0);
  }

  return result;
}

unint64_t sub_100391AEC()
{
  result = qword_10169EAA8;
  if (!qword_10169EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAA8);
  }

  return result;
}

unint64_t sub_100391B40()
{
  result = qword_10169EAB8;
  if (!qword_10169EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAB8);
  }

  return result;
}

unint64_t sub_100391B94()
{
  result = qword_10169EAC8;
  if (!qword_10169EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAC8);
  }

  return result;
}

uint64_t sub_100391BE8(uint64_t a1)
{
  v1 = (*(a1 + 256) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | ((*(a1 + 240) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_100391C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 184) >> 38) & 0xC00000 | (*(a1 + 200) >> 36) & 0x3000000 | (*(a1 + 208) >> 8 << 26);
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

double sub_100391D28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 232) = 0u;
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
    *(a1 + 248) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 264) = 1;
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
      v4 = -a2;
      *a1 = 0;
      *(a1 + 8) = (-a2 & 3) << 60;
      *(a1 + 16) = 0;
      *(a1 + 24) = (v4 << 58) & 0x3000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 << 56) & 0x3000000000000000;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 << 54) & 0x3000000000000000;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 << 52) & 0x3000000000000000;
      *(a1 + 80) = 0;
      *(a1 + 88) = (v4 << 50) & 0x3000000000000000;
      *(a1 + 96) = 0;
      *(a1 + 104) = (v4 << 48) & 0x3000000000000000;
      *(a1 + 112) = 0;
      *(a1 + 120) = (v4 << 46) & 0x3000000000000000;
      *(a1 + 128) = 0;
      *(a1 + 136) = (v4 << 44) & 0x3000000000000000;
      *(a1 + 144) = 0;
      *(a1 + 152) = (v4 << 42) & 0x3000000000000000;
      *(a1 + 160) = 0;
      *(a1 + 168) = (v4 << 40) & 0x3000000000000000;
      *(a1 + 176) = 0;
      *(a1 + 184) = (v4 << 38) & 0x3000000000000000;
      *(a1 + 192) = 0;
      *(a1 + 200) = (v4 << 36) & 0x3000000000000000;
      *(a1 + 208) = (v4 >> 18) & 0x3F00;
      result = 0.0;
      *(a1 + 248) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 216) = 0u;
      return result;
    }

    *(a1 + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_100391E58(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    v3 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v13 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
    v14 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
    v15 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v16 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(a1 + 24) = v3;
    *(a1 + 40) = v4;
    *(a1 + 56) = v5;
    *(a1 + 72) = v6;
    *(a1 + 88) = v7;
    *(a1 + 104) = v8;
    *(a1 + 120) = v9;
    *(a1 + 136) = v10;
    *(a1 + 152) = v11;
    *(a1 + 168) = v12;
    *(a1 + 184) = v13;
    result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
    *(a1 + 200) = result;
    *(a1 + 224) = v14;
    *(a1 + 240) = v15;
    *(a1 + 256) = v16;
  }

  else
  {
    *a1 = a2 - 6;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0x3000000000000000;
  }

  return result;
}

ValueMetadata *sub_100391F98(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        sub_100391A98();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSWFinalizePairingCommandPayload;
      sub_100391AEC();
    }

    else
    {
      v1 = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      sub_100101224();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsSWSendPairingDataCommandPayload;
      sub_1001019A0();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

uint64_t sub_100392070(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  memcpy(v29, v3, 0x108uLL);
  v9 = sub_100100ACC(v29);
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 7)
      {
        v10 = 516;
      }

      else
      {
        v10 = 267;
      }
    }

    else if (v9 == 4)
    {
      sub_1000479AC(v29);
      v10 = 259;
    }

    else
    {
      sub_1000479AC(v29);
      v10 = 260;
    }
  }

  else if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_1000479AC(v29);
      v10 = 257;
    }

    else
    {
      sub_1000479AC(v29);
      v10 = 258;
    }
  }

  else if (v9)
  {
    sub_1000479AC(v29);
    v10 = 256;
  }

  else
  {
    sub_1000479AC(v29);
    v10 = 268;
  }

  *v23 = v10;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v8, v5);
  *v23 = *v24;
  sub_10015049C(v26, v27);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    memcpy(v28, v3, sizeof(v28));
    v11 = sub_100100ACC(v28);
    if (v11 > 3)
    {
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          sub_100391750(v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_42;
          }

          sub_10015049C(v26, v27);
          sub_10030FB84();
        }

        else
        {
          sub_100391750(v24);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_42;
          }

          sub_10015049C(v26, v27);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v26);
      }

      if (v11 != 4)
      {
        sub_1000479AC(v28);
        sub_100391750(v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v18 = *v23;
          v19 = *&v23[8];
          *v24 = *v23;
          *&v24[8] = *&v23[8];
          sub_10015049C(v26, v27);
          sub_1003928F8();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v16 = v18;
          v17 = v19;
          goto LABEL_36;
        }

LABEL_42:
        sub_1003928A4();
        swift_allocError();
        *v20 = 0;
        swift_willThrow();
        return sub_100007BAC(v26);
      }

      sub_1000479AC(v28);
      sub_100391750(v25);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      *v23 = *v24;
      *&v23[16] = *&v24[16];
      *&v23[32] = *&v24[32];
      *&v23[48] = *&v24[48];
      v22[0] = *v24;
      v22[1] = *&v24[16];
      v22[2] = *&v24[32];
      v22[3] = *&v24[48];
      sub_10015049C(v26, v27);
      sub_10039294C();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_1001016B0(v23);
    }

    else if (v11 > 1)
    {
      if (v11 != 2)
      {
        sub_1000479AC(v28);
        sub_100391750(v25);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          *&v23[64] = *&v24[64];
          *&v23[80] = *&v24[80];
          *&v23[96] = *&v24[96];
          *v23 = *v24;
          *&v23[16] = *&v24[16];
          *&v23[32] = *&v24[32];
          *&v23[48] = *&v24[48];
          v22[4] = *&v24[64];
          v22[5] = *&v24[80];
          v22[6] = *&v24[96];
          v22[0] = *v24;
          v22[1] = *&v24[16];
          v22[2] = *&v24[32];
          v22[3] = *&v24[48];
          sub_10015049C(v26, v27);
          sub_1003929A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1003929F4(v23);
          return sub_100007BAC(v26);
        }

        goto LABEL_42;
      }

      sub_1000479AC(v28);
      sub_100391750(v25);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      memcpy(v23, v24, sizeof(v23));
      memcpy(v22, v24, 0x108uLL);
      sub_10015049C(v26, v27);
      sub_100392A48();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100101A50(v23);
    }

    else
    {
      if (!v11)
      {
        sub_1000479AC(v28);
        sub_100391750(v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v12 = *v23;
          v13 = *&v23[8];
          v14 = *&v23[16];
          v15 = *&v23[24];
          *v24 = *v23;
          *&v24[8] = *&v23[8];
          *&v24[16] = *&v23[16];
          *&v24[24] = *&v23[24];
          sub_10015049C(v26, v27);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v12, v13);
          v16 = v14;
          v17 = v15;
LABEL_36:
          sub_100016590(v16, v17);
          return sub_100007BAC(v26);
        }

        goto LABEL_42;
      }

      sub_1000479AC(v28);
      sub_100391750(v25);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      *&v23[32] = *&v24[32];
      *&v23[48] = *&v24[48];
      *&v23[64] = *&v24[64];
      *v23 = *v24;
      *&v23[16] = *&v24[16];
      v22[2] = *&v24[32];
      v22[3] = *&v24[48];
      v22[4] = *&v24[64];
      v22[0] = *v24;
      v22[1] = *&v24[16];
      sub_10015049C(v26, v27);
      sub_100392A9C();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_1001DAB9C(v23);
    }
  }

  return sub_100007BAC(v26);
}

void *sub_100392840@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100392FAC(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_1003928A4()
{
  result = qword_10169EAD0;
  if (!qword_10169EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAD0);
  }

  return result;
}

unint64_t sub_1003928F8()
{
  result = qword_10169EAD8;
  if (!qword_10169EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAD8);
  }

  return result;
}

unint64_t sub_10039294C()
{
  result = qword_10169EAE0;
  if (!qword_10169EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAE0);
  }

  return result;
}

unint64_t sub_1003929A0()
{
  result = qword_10169EAE8;
  if (!qword_10169EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAE8);
  }

  return result;
}

unint64_t sub_100392A48()
{
  result = qword_10169EAF0;
  if (!qword_10169EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAF0);
  }

  return result;
}

unint64_t sub_100392A9C()
{
  result = qword_10169EAF8;
  if (!qword_10169EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAF8);
  }

  return result;
}

unint64_t sub_100392AF0()
{
  result = qword_10169EB00;
  if (!qword_10169EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EB00);
  }

  return result;
}

ValueMetadata *sub_100392B44@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100391F98(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 != 6)
        {
          sub_10001F280(a2, __src);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100393334(__dst);
            return memcpy(a3, __dst, 0x108uLL);
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v11);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:
          sub_1003928A4();
          swift_allocError();
          *v9 = 0;
          swift_willThrow();
          return sub_100007BAC(a2);
        }

        sub_100007BAC(a2);
        *__src = v10[0];
        sub_100101878(__src);
      }

      else
      {
        if (a1 != 4)
        {
          sub_10001F280(a2, v12);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v10[0] = *v11;
            v10[1] = *&v11[16];
            v10[2] = *&v11[32];
            v10[3] = *&v11[48];
            sub_100007BAC(a2);
            *__src = *v11;
            *&__src[16] = *&v11[16];
            *&__src[32] = *&v11[32];
            *&__src[48] = *&v11[48];
            sub_100393388(__src);
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v12);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        v10[4] = *&v11[64];
        v10[5] = *&v11[80];
        v10[6] = *&v11[96];
        v10[0] = *v11;
        v10[1] = *&v11[16];
        v10[2] = *&v11[32];
        v10[3] = *&v11[48];
        sub_100007BAC(a2);
        *&__src[64] = *&v11[64];
        *&__src[80] = *&v11[80];
        *&__src[96] = *&v11[96];
        *__src = *v11;
        *&__src[16] = *&v11[16];
        *&__src[32] = *&v11[32];
        *&__src[48] = *&v11[48];
        sub_1001021E8(__src);
      }
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, __src);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100100958(__dst);
            return memcpy(a3, __dst, 0x108uLL);
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v11);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          *__src = v10[0];
          *&__src[16] = v10[1];
          sub_100393528(__src);
          goto LABEL_21;
        }

        goto LABEL_28;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v12);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          memcpy(v10, __src, 0x108uLL);
          sub_100007BAC(a2);
          memcpy(v11, v10, sizeof(v11));
          sub_100393458(v11);
          v8 = v11;
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      sub_10001F280(a2, v12);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_28;
      }

      v10[2] = *&v11[32];
      v10[3] = *&v11[48];
      v10[4] = *&v11[64];
      v10[0] = *v11;
      v10[1] = *&v11[16];
      sub_100007BAC(a2);
      *&__src[32] = *&v11[32];
      *&__src[48] = *&v11[48];
      *&__src[64] = *&v11[64];
      *__src = *v11;
      *&__src[16] = *&v11[16];
      sub_100101C00(__src);
    }

LABEL_21:
    v8 = __src;
LABEL_22:
    memcpy(__dst, v8, sizeof(__dst));
    return memcpy(a3, __dst, 0x108uLL);
  }

  __break(1u);
  return result;
}

void *sub_100392FAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v31 = a1;
  sub_1000035D0(a1, v8);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v34, v34[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v9 = v31;
  }

  else
  {
    v10 = v30;
    v36 = v32[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v11 = v33[0];
    v12 = sub_100391628(v33[0]);
    if (v12 != 8)
    {
      v23 = v12;
      v24 = sub_100391F98(v12);
      v26 = v25;
      v27 = v31;
      sub_10001F280(v31, v32);
      v33[3] = v24;
      v33[4] = v26;
      sub_1000280DC(v33);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v33, v32);
      sub_100392B44(v23, v32, v35);
      sub_100007BAC(v33);
      sub_100007BAC(v34);
      sub_100007BAC(v27);
      return memcpy(v10, v35, 0x108uLL);
    }

    v13 = static os_log_type_t.error.getter();
    v9 = v31;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v33[0]) = v11;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Invalid opcode: %@", 18, 2, v15);

    sub_1003928A4();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v34);
  return sub_100007BAC(v9);
}

double sub_100393334(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3000000000000000;
  return result;
}

int8x16_t sub_100393388(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

int8x16_t sub_100393458(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

int8x16_t sub_100393528(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

unint64_t sub_100393608()
{
  result = qword_10169EB08;
  if (!qword_10169EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EB08);
  }

  return result;
}

uint64_t sub_10039365C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169EB10);
  v1 = sub_1000076D4(v0, qword_10169EB10);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100393724(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10039385C, v2, 0);
}

uint64_t sub_10039385C()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = *(v0 + 128);
    *(v0 + 192) = *(v2 + 80);
    swift_beginAccess();
    v3 = 0;
    *(v0 + 160) = *(v2 + 72);
    while (1)
    {
      *(v0 + 168) = v3;
      v4 = *(v0 + 120);
      v5 = *(v0 + 80);
      sub_10039496C(*(v0 + 64) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 160) * v3, *(v0 + 144));
      v6 = *(v5 + 112);
      *(v0 + 196) = *(v4 + 20);
      if (!*(v6 + 16))
      {
        break;
      }

      v25 = v6;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = v25;
      v9 = -1 << *(v25 + 32);
      v10 = v7 & ~v9;
      if (((*(v25 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
LABEL_13:

        break;
      }

      v11 = ~v9;
      v12 = *(v0 + 96);
      v13 = *(v12 + 72);
      v14 = *(v12 + 16);
      while (1)
      {
        v15 = *(v0 + 112);
        v16 = *(v0 + 88);
        v17 = *(v0 + 96);
        v14(v15, *(v8 + 48) + v10 * v13, v16);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v17 + 8))(v15, v16);
        if (v18)
        {
          break;
        }

        v10 = (v10 + 1) & v11;
        v8 = v25;
        if (((*(v25 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v19 = *(v0 + 144);

      sub_1003949D0(v19);
      v3 = *(v0 + 168) + 1;
      if (v3 == *(v0 + 152))
      {
        goto LABEL_10;
      }
    }

    v22 = swift_task_alloc();
    *(v0 + 176) = v22;
    *v22 = v0;
    v22[1] = sub_100393B98;
    v23 = *(v0 + 144);
    v24 = *(v0 + 72);

    return sub_10039459C(v23, v24);
  }

  else
  {
LABEL_10:

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100393B98()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_100394058;
  }

  else
  {
    v4 = sub_100393CC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100393CC4()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  (*(v5 + 16))(v3, v1 + *(v0 + 196), v4);
  swift_beginAccess();
  sub_100DE8BCC(v2, v3);
  (*(v5 + 8))(v2, v4);
  swift_endAccess();
  sub_1003949D0(v1);
  v6 = *(v0 + 168) + 1;
  if (v6 == *(v0 + 152))
  {
LABEL_2:

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    while (1)
    {
      *(v0 + 168) = v6;
      v9 = *(v0 + 120);
      v10 = *(v0 + 80);
      sub_10039496C(*(v0 + 64) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 160) * v6, *(v0 + 144));
      v11 = *(v10 + 112);
      *(v0 + 196) = *(v9 + 20);
      if (!*(v11 + 16))
      {
        break;
      }

      v28 = v11;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v13 = v28;
      v14 = -1 << *(v28 + 32);
      v15 = v12 & ~v14;
      if (((*(v28 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_13:

        break;
      }

      v16 = ~v14;
      v17 = *(v0 + 96);
      v18 = *(v17 + 72);
      v19 = *(v17 + 16);
      while (1)
      {
        v20 = *(v0 + 112);
        v21 = *(v0 + 88);
        v22 = *(v0 + 96);
        v19(v20, *(v13 + 48) + v15 * v18, v21);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v22 + 8))(v20, v21);
        if (v23)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        v13 = v28;
        if (((*(v28 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v24 = *(v0 + 144);

      sub_1003949D0(v24);
      v6 = *(v0 + 168) + 1;
      if (v6 == *(v0 + 152))
      {
        goto LABEL_2;
      }
    }

    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v25[1] = sub_100393B98;
    v26 = *(v0 + 144);
    v27 = *(v0 + 72);

    return sub_10039459C(v26, v27);
  }
}

uint64_t sub_100394058()
{
  v44 = v0;
  if (qword_1016946B8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169EB10);
  sub_10039496C(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v40 = v0;
  if (v6)
  {
    v41 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100394A2C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1003949D0(v8);
    v15 = sub_1000136BC(v12, v14, &v43);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error hiding beacon %{private,mask.hash}s: %{public}@", v9, 0x20u);
    sub_100288C6C(v10);

    sub_100007BAC(v11);

    v17 = v41;
  }

  else
  {

    sub_1003949D0(v8);
    v17 = v7;
  }

  sub_1003949D0(v17);
  v18 = v0[21] + 1;
  if (v18 == v0[19])
  {
LABEL_7:

    v19 = v0[1];

    return v19();
  }

  else
  {
    while (1)
    {
      v0[21] = v18;
      v21 = v0[15];
      v22 = v0[10];
      sub_10039496C(v0[8] + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v0[20] * v18, v0[18]);
      v23 = *(v22 + 112);
      *(v0 + 49) = *(v21 + 20);
      if (!*(v23 + 16))
      {
        break;
      }

      v42 = v23;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v0 = v40;
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = v42;
      v26 = -1 << *(v42 + 32);
      v27 = v24 & ~v26;
      if (((*(v42 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
LABEL_18:

        break;
      }

      v28 = ~v26;
      v29 = v40[12];
      v30 = *(v29 + 72);
      v31 = *(v29 + 16);
      while (1)
      {
        v32 = v0[14];
        v33 = v0[11];
        v34 = v0[12];
        v31(v32, *(v25 + 48) + v27 * v30, v33);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v34 + 8))(v32, v33);
        if (v35)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        v0 = v40;
        v25 = v42;
        if (((*(v42 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v0 = v40;
      v36 = v40[18];

      sub_1003949D0(v36);
      v18 = v40[21] + 1;
      if (v18 == v40[19])
      {
        goto LABEL_7;
      }
    }

    v37 = swift_task_alloc();
    v0[22] = v37;
    *v37 = v0;
    v37[1] = sub_100393B98;
    v38 = v0[18];
    v39 = v0[9];

    return sub_10039459C(v38, v39);
  }
}

uint64_t sub_10039459C(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = type metadata accessor for SharedBeaconRecord(0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100394630, v2, 0);
}

uint64_t sub_100394630()
{
  v21 = v0;
  if (qword_1016946B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169EB10);
  sub_10039496C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_100394A2C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1003949D0(v7);
    v13 = sub_1000136BC(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Hiding .automatic_legacy because we have .automatic beacon for %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1003949D0(v7);
  }

  v14 = v0[7];
  v15 = v0[8];
  v0[5] = v0[9];
  v0[6] = sub_100394A2C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v16 = sub_1000280DC(v0 + 2);
  sub_10039496C(v14, v16);
  type metadata accessor for Transaction();
  v17 = swift_task_alloc();
  v17[2] = v0 + 2;
  v17[3] = v15;
  v17[4] = 0;
  v17[5] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100007BAC(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100394910()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039496C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003949D0(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100394A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100394A74@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

uint64_t sub_100394A9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2 & 0xCFFFFFFFFFFFFFFFLL;
  a5[2] = a3;
  a5[3] = a4 & 0xCFFFFFFFFFFFFFFFLL;
  a5[5] = 0;
  a5[7] = 0;
  a5[9] = 0;
  sub_100017D5C(a1, a2);

  return sub_100017D5C(a3, a4);
}

double sub_100394AF8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 1.49166815e-154;
  *(a1 + 56) = xmmword_10139BF70;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

unint64_t sub_100394B84()
{
  result = qword_10169EBF8;
  if (!qword_10169EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EBF8);
  }

  return result;
}

uint64_t sub_100394BDC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for URLComponents();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v45 - v7;
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMNAuthenticationProvider();
  (*(v9 + 104))(v11, enum case for FMNAccountType.ownedDeviceLocations(_:), v8);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v9 + 8))(v11, v8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v19 = v4;
    v20 = v47;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v20 = v47;
    v19 = v4;
    if ((*(v47 + 48))(v3, 1, v4) != 1)
    {
      v41 = *(v20 + 32);
      v42 = v45;
      v41(v45, v3, v19);
      v43 = URLComponents.path.modify();
      v44._countAndFlagsBits = 0x696D6275732F3276;
      v44._object = 0xE900000000000074;
      String.append(_:)(v44);
      v43(v49, 0);
      (*(v16 + 8))(v18, v15);
      return (v41)(v48, v42, v19);
    }

    (*(v16 + 8))(v18, v15);
    sub_10000B3A8(v3, &qword_101699BA8, &unk_1013926B0);
  }

  v21 = v46;
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BFF8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "No url found in account bag.", v25, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 isInternalBuild];

  if (v28 && (v29 = String._bridgeToObjectiveC()(), v30 = [v26 stringForKey:v29], v29, v30))
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000136BC(v31, v33, v49);
      _os_log_impl(&_mh_execute_header, v34, v35, "Override url found in user defaults %s. ", v36, 0xCu);
      sub_100007BAC(v37);
    }

    v49[0] = 47;
    v49[1] = 0xE100000000000000;
    v38._countAndFlagsBits = v31;
    v38._object = v33;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x6D6275732F32762FLL;
    v39._object = 0xEA00000000007469;
    String.append(_:)(v39);
  }

  else
  {
  }

  URLComponents.path.setter();
  URLComponents.host.setter();
  return (*(v20 + 32))(v48, v21, v19);
}

uint64_t sub_100395324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMNAccountType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10039538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URLComponents();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for OwnedDeviceSubmitEndpoint(uint64_t a1)
{
  result = qword_10169EC58;
  if (!qword_10169EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100395474(uint64_t a1)
{
  result = type metadata accessor for FMNAccountType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URLComponents();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockAckResponse(uint64_t a1)
{
  result = qword_10169ECE8;
  if (!qword_10169ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10039556C(uint64_t a1)
{
  sub_1003955F8();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003955F8()
{
  if (!qword_10169A330)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169A330);
    }
  }
}

void sub_100395648(uint64_t a1)
{
  if (!qword_1016B1C20)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B1C20);
    }
  }
}

uint64_t sub_1003956A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000BC4D4(&qword_10169ED28, &qword_10139F718);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  __chkstk_darwin(v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_100395B98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v18 = v6;
  v23 = 0;
  sub_1000E307C();
  v14 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v13 = v22;
  v23 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13[1] = v22;
  v23 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = a1;
  v13[2] = v22;
  type metadata accessor for UUID();
  LOBYTE(v22) = 3;
  sub_100395BEC();
  v16 = v18;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 8))(v10, v14);
  sub_10012C154(v16, v13 + *(v11 + 28));
  sub_100395C44(v13, v19);
  sub_100007BAC(v15);
  return sub_100395CA8(v13);
}

uint64_t sub_100395A70()
{
  v1 = 1684628325;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 0x6449616E6D66;
  }

  if (*v0)
  {
    v1 = 0x644970696863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100395AE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100395E1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100395B08(uint64_t a1)
{
  v2 = sub_100395B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100395B44(uint64_t a1)
{
  v2 = sub_100395B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100395B98()
{
  result = qword_10169ED30;
  if (!qword_10169ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED30);
  }

  return result;
}

unint64_t sub_100395BEC()
{
  result = qword_101698300;
  if (!qword_101698300)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698300);
  }

  return result;
}

uint64_t sub_100395C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100395CA8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100395D18()
{
  result = qword_10169ED38;
  if (!qword_10169ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED38);
  }

  return result;
}

unint64_t sub_100395D70()
{
  result = qword_10169ED40;
  if (!qword_10169ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED40);
  }

  return result;
}

unint64_t sub_100395DC8()
{
  result = qword_10169ED48;
  if (!qword_10169ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED48);
  }

  return result;
}

uint64_t sub_100395E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100395F7C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v2[14] = type metadata accessor for AccessoryUnpairData(0);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for HashAlgorithm();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003960C8, 0, 0);
}

void sub_1003960C8()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v9, v11, 0xD000000000000011, 0x800000010134EA40, v12);
  v13 = v1;
  Date.init()();
  v14 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[9] = v14;
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v15, v17, 0xD000000000000015, 0x800000010134EA60, v18);
  v0[10] = 1;
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v19, v21, 0xD000000000000013, 0x800000010134EA80, v22);
  v23 = v13;
  v24 = sub_100EB2DF0();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v24, v26, 0x6567412D72657355, 0xEA0000000000746ELL, v27);
  v0[22] = v23;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[23] = JSONEncoder.init()();
  sub_100397170();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v28;
  v0[26] = v29;
  sub_100017D5C(v28, v29);
  v30 = swift_task_alloc();
  v0[27] = v30;
  *v30 = v0;
  v30[1] = sub_100396570;

  sub_100EA1F1C();
}

uint64_t sub_100396570(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_100396670, 0, 0);
}

uint64_t sub_100396670()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  *(v0 + 56) = v2;
  v15 = *(v0 + 128);
  *(v0 + 64) = v1;
  *(v0 + 40) = &type metadata for Data;
  *(v0 + 48) = &protocol witness table for Data;
  *(v0 + 16) = *(v0 + 200);
  v5 = sub_1000035D0((v0 + 16), &type metadata for Data);
  v6 = *v5;
  v7 = v5[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v6, v7, v0 + 56);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 16));
  v8 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 56);
  *(v0 + 248) = v8;
  (*(v3 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v15);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 256) = v9;
  *(v0 + 264) = v10;
  (*(v3 + 8))(v4, v15);
  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  *v12 = v0;
  v12[1] = sub_100396824;
  v13 = *(v0 + 104);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100396824(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = sub_100396D20;
  }

  else
  {
    v6 = v4[32];
    v7 = v4[33];
    v4[36] = a1;
    sub_100016590(v6, v7);
    v5 = sub_100396954;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100396954()
{
  v46 = v0;
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v45);

  sub_100016590(v3, v2);
  v6 = v45;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v40 = v7;
    swift_once();
    v7 = v40;
  }

  v42 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v43 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v43;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v44 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v44;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v42, "%@: %@", 6, 2, v25);
  }

  v15 = v43;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v28 = v41[25];
  v27 = v41[26];
  v29 = v41[15];
  v30 = v41[12];

  v31 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  sub_1003971C8(v30, v29);
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100008C00();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v42, "Unpair body %@", 14, 2, v32);

  sub_100397278(v30);

  sub_100017D5C(v28, v27);

  sub_100016590(v28, v27);
  v37 = v41[25];
  v36 = v41[26];

  v38 = v41[1];

  return v38(v43, v37, v36);
}

uint64_t sub_100396D20()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v2, v3);
  v4 = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  v43 = xmmword_101385D80;
  *(v5 + 16) = xmmword_101385D80;
  v44 = v0;
  v0[11] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v46 = sub_100008C00();
  *(v5 + 64) = v46;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_10039722C();
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v9, "Failed to generate attestation header %@.", 41, 2, v5);

  v10 = v0[22];
  v11 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v42 = v11;
    swift_once();
    v11 = v42;
  }

  v45 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage, v43);
  v12 = v10 + 64;
  v13 = -1;
  v14 = -1 << *(v10 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v10 + 64);
  v16 = (63 - v14) >> 6;
  v47 = v10;

  for (i = 0; v15; v11 = )
  {
    v18 = i;
    v19 = v47;
LABEL_11:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (v18 << 10) | (16 * v20);
    v22 = *(v19 + 56);
    v23 = (*(v19 + 48) + v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = (v22 + v21);
    v10 = *v26;
    v27 = v26[1];

    v28 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10138BBE0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v46;
    *(v29 + 32) = v24;
    *(v29 + 40) = v25;
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v46;
    *(v29 + 72) = v10;
    *(v29 + 80) = v27;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v45, "%@: %@", 6, 2, v29);
  }

  v19 = v47;
  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++i;
    if (v15)
    {
      i = v18;
      goto LABEL_11;
    }
  }

  v31 = v44[25];
  v30 = v44[26];
  v32 = v44[15];
  v33 = v44[12];

  v34 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v35 = swift_allocObject();
  *(v35 + 16) = v43;
  sub_1003971C8(v33, v32);
  v36 = String.init<A>(describing:)();
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = v46;
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v45, "Unpair body %@", 14, 2, v35);

  sub_100397278(v33);

  sub_100017D5C(v31, v30);

  sub_100016590(v31, v30);
  v39 = v44[25];
  v38 = v44[26];

  v40 = v44[1];

  return v40(v47, v39, v38);
}

unint64_t sub_100397170()
{
  result = qword_10169ED50;
  if (!qword_10169ED50)
  {
    type metadata accessor for AccessoryUnpairData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED50);
  }

  return result;
}

uint64_t sub_1003971C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryUnpairData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10039722C()
{
  result = qword_101698160;
  if (!qword_101698160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698160);
  }

  return result;
}

uint64_t sub_100397278(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryUnpairData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1003972E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100397308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100397350(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003973B4()
{
  _StringGuts.grow(_:)(47);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x4449656C70706120;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 16));
  v2._countAndFlagsBits = 0x203A654D736920;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  if (*(v0 + 32))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD000000000000017;
}

Swift::Int sub_1003974BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100397508(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100397554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100397618(v7, v9);
}

unint64_t sub_1003975C4()
{
  result = qword_10169ED58;
  if (!qword_10169ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED58);
  }

  return result;
}

BOOL sub_100397618(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (!v8 || (a1[5] != *(a2 + 40) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[8];
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10 || (a1[7] != *(a2 + 56) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[10];
  v12 = *(a2 + 80);
  if (v11)
  {
    return v12 && (a1[9] == *(a2 + 72) && v11 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v12;
}

uint64_t sub_100397750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1000210EC(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, v9 + *(v11 + 72) * v8, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t sub_1003978AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100397A14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100397A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v8 = v4;
  v8[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v9, a4);
}

uint64_t sub_100397BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v10 = v5;
  v10[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v11, a3, a5);
}

uint64_t sub_100397D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v7, a3);
}

uint64_t sub_100397EB4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5B2CC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100397FD4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5BE68(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398180(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5C1F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398324(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5B734(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398488(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v52 = a2;
  v9 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v51 = v44 - v16;
  __chkstk_darwin(v15);
  v17 = v44;
  v19 = v44 - v18;
  v20 = a4 >> 1;
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v54 = a1;
  v5 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = (v5[3] >> 1), v17 < v24))
  {
    if (v23 <= v24)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = v23;
    }

    v5 = sub_100A5C8CC(isUniquelyReferenced_nonNull_native, v26, 1, v5);
    v17 = (v5[3] >> 1);
  }

  v27 = v17 - v5[2];
  if (v20 == a3)
  {
    if (v22 <= 0)
    {
      v22 = 0;
      v17 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 < v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_16:
    v17 = v20;
LABEL_17:
    if (v22 != v27)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v49 = v17;
    v22 = v5[2];
    v31 = v53;
    v44[0] = *(v53 + 56);
    v44[1] = v53 + 56;
    (v44[0])(v19, 1, 1, v9);
    v32 = v51;
    sub_1000D2A70(v19, v51, &qword_10169EF98, &unk_1013D66D0);
    v33 = v31;
    v24 = v32;
    v47 = *(v33 + 48);
    v48 = v33 + 48;
    if (v47(v32, 1, v9) == 1)
    {
LABEL_24:
      sub_10000B3A8(v19, &qword_10169EF98, &unk_1013D66D0);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v24, &qword_10169EF98, &unk_1013D66D0);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_10000B3A8(v24, &qword_10169EF98, &unk_1013D66D0);
      v35 = v5[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v22 + 1)
      {
        v5 = sub_100A5C8CC((v35 > 1), v22 + 1, 1, v5);
        v36 = v5[3] >> 1;
      }

      v37 = *(v53 + 80);
      sub_1000D2A70(v19, v14, &qword_10169EF98, &unk_1013D66D0);
      if (v47(v14, 1, v9) == 1)
      {
LABEL_32:
        sub_10000B3A8(v14, &qword_10169EF98, &unk_1013D66D0);
        v34 = v22;
      }

      else
      {
        v45 = v5 + ((v37 + 32) & ~v37);
        if (v22 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v22;
        }

        v46 = v38;
        v39 = v50;
        while (1)
        {
          sub_1003CBBBC(v14, v39, type metadata accessor for OwnedDeviceKeyRecord);
          if (v46 == v22)
          {
            break;
          }

          sub_10000B3A8(v19, &qword_10169EF98, &unk_1013D66D0);
          v41 = *(v53 + 72);
          result = sub_1003CBBBC(v39, &v45[v41 * v22], type metadata accessor for OwnedDeviceKeyRecord);
          if (v49 == v20)
          {
            v40 = 1;
            v49 = v20;
          }

          else
          {
            if (v49 < a3 || v49 >= v20)
            {
              goto LABEL_45;
            }

            v42 = v52 + v41 * v49;
            v43 = v49;
            sub_10002FDC4(v42, v19, type metadata accessor for OwnedDeviceKeyRecord);
            v40 = 0;
            v49 = v43 + 1;
          }

          (v44[0])(v19, v40, 1, v9);
          sub_1000D2A70(v19, v14, &qword_10169EF98, &unk_1013D66D0);
          ++v22;
          if (v47(v14, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v39, type metadata accessor for OwnedDeviceKeyRecord);
        v34 = v46;
        v22 = v46;
      }

      v5[2] = v34;
      v24 = v51;
      sub_1000D2A70(v19, v51, &qword_10169EF98, &unk_1013D66D0);
    }

    while (v47(v24, 1, v9) != 1);
    goto LABEL_24;
  }

  v29 = v5[2];
  v21 = __OFADD__(v29, v22);
  v30 = v29 + v22;
  if (!v21)
  {
    v5[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}