uint64_t sub_100FAFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10003633C;

  return sub_100FAFB5C(a3);
}

uint64_t sub_100FAFB5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  type metadata accessor for CentralManager.ConnectedState();
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20);
  v2[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100FAFD84, v1, 0);
}

uint64_t sub_100FAFD84()
{
  v30 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016C1CB0);
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
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101375BA0, &v29);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v29);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v0[21] = *(v0[4] + 136);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v18 = type metadata accessor for CentralManager.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v0[22] = v22;
  *(v22 + 16) = xmmword_10138BBE0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for CentralManager.State.poweredOn(_:), v18);
  v24(v23 + v20, enum case for CentralManager.State.restricted(_:), v18);
  v25 = swift_task_alloc();
  v0[23] = v25;
  v26 = type metadata accessor for CentralManager();
  v0[24] = v26;
  v27 = sub_100FC4DB8(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v25 = v0;
  v25[1] = sub_100FB0198;

  return CentralManagerProtocol.await(states:)(v22, v26, v27);
}

uint64_t sub_100FB0198()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100FB0DB4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100FB02C0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FB02C0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = swift_allocObject();
  v0[26] = v5;
  *(v5 + 16) = xmmword_101385D80;
  v1(v2, v4, v3);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  sub_100FC4DB8(&unk_1016C21D0, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FB0468, v7, v6);
}

uint64_t sub_100FB0468()
{
  v1 = v0[25];
  dispatch thunk of CentralManager.connectionEvents(peripheralIdentifiers:)();
  v0[27] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_100FB0F54;
  }

  else
  {
    v4 = v0[4];

    v3 = sub_100FB050C;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100FB050C()
{
  AsyncStream.makeAsyncIterator()();
  v2 = sub_100FC4DB8(&qword_1016C2128, v1, type metadata accessor for BTFindingService, &unk_1013F60B8);
  v3 = v0[27];
  v0[28] = v2;
  v0[29] = v3;
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100FB0608;
  v6 = v0[7];
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v6, v4, v2, v7);
}

uint64_t sub_100FB0608()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100FB0718, v1, 0);
}

uint64_t sub_100FB0718()
{
  v1 = v0[7];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "centralManager.connectionEvents() terminated", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_12;
  }

  v10 = v0[29];
  v11 = v0[6];
  v12 = *v1;
  v0[31] = *v1;
  sub_100FC4778(v1 + *(v2 + 48), v11, &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v14 = v0[12];
    v13 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    sub_100FC47E0(v19, &type metadata accessor for CentralManager.ConnectedState);
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

    v32 = v0[1];

    return v32();
  }

  v25 = v0[28];
  v27 = v0[5];
  v26 = v0[6];
  v29 = v0[3];
  v28 = v0[4];
  type metadata accessor for Transaction();
  v0[32] = static Transaction.$current.getter();
  v0[2] = v12;
  v30 = swift_task_alloc();
  v0[33] = v30;
  v30[2] = v26;
  v30[3] = v28;
  v30[4] = v29;
  v30[5] = v27;

  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = sub_100FB0B78;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v31, v0 + 2, &unk_1013F62A8, v30, v28, v25, 0xD000000000000023, 0x8000000101375B70);
}

uint64_t sub_100FB0B78()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_100FB10F4;
  }

  else
  {
    v4 = sub_100FB0CD4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FB0CD4()
{

  v1 = v0[35];
  sub_100FC47E0(v0[6], &type metadata accessor for CentralManager.ConnectedState);
  v0[29] = v1;
  v2 = v0[28];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100FB0608;
  v5 = v0[7];
  v6 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100FB0DB4()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100FB0F54()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100FB10F4()
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

  sub_100FC47E0(v0[6], &type metadata accessor for CentralManager.ConnectedState);
  v0[29] = 0;
  v6 = v0[28];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_100FB0608;
  v9 = v0[7];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
}

uint64_t sub_100FB12DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FB13A8, v1, 0);
}

uint64_t sub_100FB13A8()
{
  v39 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  if (v9)
  {
    v36 = v8;
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101375A40, &v38);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v37 = *(v11 + 8);
    v37(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v38);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v36, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v37 = *(v11 + 8);
    v37(v10, v12);
  }

  v18 = v0[9];
  swift_beginAccess();
  if (!*(*(v18 + 216) + 16) || (v19 = v0[8], , sub_1000210EC(v19), LOBYTE(v19) = v20, , (v19 & 1) == 0))
  {
    v6(v0[12], v0[8], v0[10]);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[12];
    v25 = v0[10];
    if (v23)
    {
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v26 = 136446723;
      *(v26 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101375A40, &v38);
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v37(v24, v25);
      v30 = sub_1000136BC(v27, v29, &v38);

      *(v26 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s Adding new tracker %{private,mask.hash}s", v26, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v37(v24, v25);
    }

    v31 = v0[8];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v18 + 216);
    *(v18 + 216) = 0x8000000000000000;
    sub_101001EEC(0, 0, v31, isUniquelyReferenced_nonNull_native);
    *(v18 + 216) = v38;
    swift_endAccess();
  }

  *(v0[9] + 185) = 1;
  v33 = swift_task_alloc();
  v0[14] = v33;
  *v33 = v0;
  v33[1] = sub_100FB1910;
  v34 = v0[8];

  return sub_100FB1A44(v34);
}

uint64_t sub_100FB1910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FB1A44(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100FB1B1C, v1, 0);
}

uint64_t sub_100FB1B1C()
{
  v23 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100FB1DF4;
  v20 = v0[2];

  return sub_100FA9C48(v20);
}

uint64_t sub_100FB1DF4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100FB22E0;
  }

  else
  {
    v4 = sub_100FB1F20;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FB1F20()
{
  v16 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 32));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v15);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v15);

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s Successfully started FAM for %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_100FB218C;
  v13 = *(v0 + 16);

  return sub_100FB4D18(v13);
}

uint64_t sub_100FB218C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FB22E0()
{
  v18 = v0;
  (*(v0 + 80))(*(v0 + 48), *(v0 + 16), *(v0 + 32));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446979;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v17);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 24) = v11;
    *(v7 + 32) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v12;
    *v16 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s Failed to start FAM for %{private,mask.hash}s %{public}@", v7, 0x2Au);
    sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_100FB218C;
  v14 = *(v0 + 16);

  return sub_100FB4D18(v14);
}

uint64_t sub_100FB25D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100FB2698, v1, 0);
}

uint64_t sub_100FB2698()
{
  v20 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101375960, &v19);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v19);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_100FB2958;

  return sub_100FA4648();
}

uint64_t sub_100FB2958()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_100FB2AB0;
  v4 = *(v1 + 16);

  return sub_100FA5EC8(v4);
}

uint64_t sub_100FB2AB0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_100FB2BF0;

  return sub_100FA6AC8();
}

uint64_t sub_100FB2BF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FB2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CentralManager.ConnectedState();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FB2E28, a3, 0);
}

uint64_t sub_100FB2E28()
{
  v55 = v0;
  v1 = v0[6];
  sub_100FC4840(v0[2], v0[12], &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 32);
  v4 = v0[12];
  v5 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    v3(v0[8], v4, v5);
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v7 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016C1CB0);
    (*(v8 + 16))(v6, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v50 = v12;
      v21 = *(v15 + 8);
      v21(v14, v16);
      v22 = sub_1000136BC(v18, v20, &v54);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v50, "Connected to %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v51);
    }

    else
    {

      v21 = *(v15 + 8);
      v21(v14, v16);
    }

    v0[13] = v21;
    v41 = v0[3];
    if (*(v41 + 184) == 1)
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Restarting FAM uppon reconnection", v44, 2u);
      }

      *(v41 + 184) = 0;
      v45 = swift_task_alloc();
      v0[14] = v45;
      *v45 = v0;
      v45[1] = sub_100FB3438;
      v46 = v0[4];

      return sub_100FA9C48(v46);
    }

    v21(v0[8], v0[5]);
  }

  else
  {
    v3(v0[10], v4, v5);
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v23 = v0[9];
    v24 = v0[10];
    v25 = v0[5];
    v26 = v0[6];
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_1016C1CB0);
    (*(v26 + 16))(v23, v24, v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[9];
    v32 = v0[10];
    v34 = v0[5];
    v33 = v0[6];
    if (v30)
    {
      v53 = v0[10];
      v35 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v31, v34);
      v40 = sub_1000136BC(v36, v38, &v54);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Disconnected from %{private,mask.hash}s", v35, 0x16u);
      sub_100007BAC(v52);

      v39(v53, v34);
    }

    else
    {

      v48 = *(v33 + 8);
      v48(v31, v34);
      v48(v32, v34);
    }

    *(v0[3] + 184) = 1;
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_100FB3438()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100FB3614;
  }

  else
  {
    v4 = sub_100FB3564;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100FB3564()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FB3614()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FB36CC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Device();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100FB3790, 0, 0);
}

uint64_t sub_100FB3790()
{
  v22 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 24);
  if (v8)
  {
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 67109378;
    *(v13 + 4) = v12;
    *(v13 + 8) = 2080;
    sub_100FC4DB8(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Throttled every 2 seconds] isFastAdvertising:%{BOOL}d device:%s", v13, 0x12u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 8);

  return v19(1);
}

uint64_t sub_100FB39E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100FB3A80, 0, 0);
}

uint64_t sub_100FB3A80()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[6];
    v4 = type metadata accessor for Logger();
    v0[11] = sub_1000076D4(v4, qword_1016C1CB0);
    sub_100FC4840(v3, v2, type metadata accessor for LocalFindableAccessoryRecord);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[9];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100FC47E0(v8, type metadata accessor for LocalFindableAccessoryRecord);
      v14 = sub_1000136BC(v11, v13, &v20);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Putting beacon %{private,mask.hash}s back into FAM", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100FC47E0(v8, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_100FB3DA8;
    v19 = v0[7];

    return sub_100FA9C48(v19);
  }

  else
  {

    v15 = v0[1];
    v16 = v0[10] != 0;

    return v15(v16);
  }
}

uint64_t sub_100FB3DA8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100FB3F38;
  }

  else
  {
    v2 = sub_100FB3EBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FB3EBC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80) != 0;

  return v1(v2);
}

uint64_t sub_100FB3F38()
{
  v17 = v0;
  sub_100FC4840(v0[6], v0[8], type metadata accessor for LocalFindableAccessoryRecord);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 141558531;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_100FC47E0(v4, type metadata accessor for LocalFindableAccessoryRecord);
    v11 = sub_1000136BC(v8, v10, &v16);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to put beacon %{private,mask.hash}s back into FAM %{public}@", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {

    sub_100FC47E0(v4, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v13 = v0[1];
  v14 = v0[10] != 0;

  return v13(v14);
}

uint64_t sub_100FB41F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FB4358, 0, 0);
}

uint64_t sub_100FB4358()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[15] = sub_1000076D4(v2, qword_1016C1CB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Saving detected-nearby event with throttle", v5, 2u);
    }

    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_100FB4530;

    return daemon.getter();
  }

  else
  {

    v7 = v0[1];
    v8 = v0[14] != 0;

    return v7(v8);
  }
}

uint64_t sub_100FB4530(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&qword_10169A090, 255, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100FB4714;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FB4714(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_100FB4B70;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_100FB4844;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100FB4844()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  (*(v1 + 16))(v0[10], v0[6], v2);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  (*(v1 + 56))(v3, 1, 1, v2);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100FB4954;
  v5 = v0[13];
  v6 = v0[7];

  return sub_100D7219C(v5, v6);
}

uint64_t sub_100FB4954()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 56);

  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100FB4AD8, 0, 0);
}

uint64_t sub_100FB4AD8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112) != 0;

  return v1(v2);
}

uint64_t sub_100FB4B70()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save detected-nearby event %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 112) != 0;

  return v6(v7);
}

uint64_t sub_100FB4D18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FB4E4C, v1, 0);
}

uint64_t sub_100FB4E4C()
{
  v35 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v33 = *(v3 + 16);
  v33(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101375A80, &v34);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v34);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[9];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[3];
  v32 = v0[4];
  v23 = v0[2];
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v33(v17, v23, v21);
  v26 = sub_100FC4DB8(&qword_1016C2128, v25, type metadata accessor for BTFindingService, &unk_1013F60B8);
  v27 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v22;
  *(v29 + 3) = v26;
  *(v29 + 4) = v22;
  (*(v19 + 32))(&v29[v27], v17, v21);
  *&v29[v28] = v32;
  swift_retain_n();
  sub_10025EDD4(0, 0, v20, &unk_1013F61E0, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100FB5234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for UUID();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v6[7] = *(v9 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_100FB5358;

  return sub_100FB593C(a5);
}

uint64_t sub_100FB5358(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100FB5470, v2, 0);
}

uint64_t sub_100FB5470()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v19 = v4;
    v20 = *(v0 + 72);
    v5 = *(v0 + 24);
    v21 = *(v0 + 32);
    v22 = v5;
    v6 = *(v0 + 16);
    v17 = v6;
    type metadata accessor for WorkItemQueue.WorkItem();
    v23 = *(v3 + 16);
    v23(v1, v5, v4);
    v7 = *(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = *(v3 + 32);
    v9(v8 + ((v7 + 24) & ~v7), v1, v4);
    v18 = v9;
    *(v8 + ((((v7 + 24) & ~v7) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    v23(v20, v5, v4);
    v10 = (v7 + 16) & ~v7;
    v11 = swift_allocObject();
    v9(v11 + v10, v20, v4);
    *(v11 + ((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

    UUID.init()();
    v12 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v23(v1, v22, v19);
    v13 = swift_allocObject();
    *(v13 + 16) = v17;
    v18(v13 + ((v7 + 24) & ~v7), v1, v19);
    *(v13 + ((((v7 + 24) & ~v7) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_100FB57EC;

    return sub_100FA74A0();
  }
}

uint64_t sub_100FB57EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100FB593C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100FB5A08, v1, 0);
}

uint64_t sub_100FB5A08()
{
  v32 = v0;
  if (sub_100F9E19C())
  {
    v1 = v0[7];
    swift_beginAccess();
    v2 = *(v1 + 216);
    if (*(v2 + 16))
    {
      v3 = v0[6];

      v4 = sub_1000210EC(v3);
      if (v5)
      {
        v6 = (*(v2 + 56) + 16 * v4);
        v0[12] = *v6;
        v0[13] = v6[1];

        return _swift_task_switch(sub_100FB5E34, 0, 0);
      }
    }

    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v15 = v0[6];
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_1016C1CB0);
    (*(v13 + 16))(v12, v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_1000136BC(v25, v27, &v31);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing tracker for %{private,mask.hash}s. Not extending FAM", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C1CB0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101375AE0, &v31);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s No active client. Not extending FAM", v10, 0xCu);
      sub_100007BAC(v11);
    }
  }

  v29 = v0[1];

  return v29(0);
}

uint64_t sub_100FB5E34()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 112) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_100FB5F34;

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100FB5F34()
{

  return _swift_task_switch(sub_100FB604C, 0, 0);
}

uint64_t sub_100FB604C()
{
  v1 = v0[7];
  v0[16] = v0[5];
  return _swift_task_switch(sub_100FB6070, v1, 0);
}

uint64_t sub_100FB6070()
{
  v30 = v0;
  v1 = v0[13];
  v2 = sub_101074E70(v0[16]);

  if (v1 >= v2)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_1016C1CB0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[13];
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v2;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v19;

      _os_log_impl(&_mh_execute_header, v17, v18, "Exceeded max number of extensions allowed! Limit: %ld Current: %ld.", v20, 0x16u);

      goto LABEL_19;
    }

LABEL_18:

    goto LABEL_19;
  }

  v3 = qword_101695110;
  if (v0[12])
  {

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016C1CB0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[11];
      v9 = v0[8];
      v8 = v0[9];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446210;
      v29 = v11;
      WorkItemQueue.WorkItem.id.getter();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v8 + 8))(v7, v9);
      v15 = sub_1000136BC(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found existing task %{public}s. Not scheduling extension.", v10, 0xCu);
      sub_100007BAC(v11);

LABEL_19:
      v26 = 0;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_1016C1CB0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[13];
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v22, v23, "Extending FAM with current counter: %ld", v25, 0xCu);
  }

  v26 = 1;
LABEL_20:

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_100FB64B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100FB65DC, 0, 0);
}

uint64_t sub_100FB65DC()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 96) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100FB66DC;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100FB66DC()
{

  return _swift_task_switch(sub_100FB67F4, 0, 0);
}

uint64_t sub_100FB67F4()
{
  v1 = v0[3];
  v0[14] = v0[2];
  return _swift_task_switch(sub_100FB6814, v1, 0);
}

uint64_t sub_100FB6814()
{
  sub_101074E8C(v0[14]);

  v0[15] = static Duration.seconds(_:)();
  v0[16] = v1;

  return _swift_task_switch(sub_100FB6898, 0, 0);
}

uint64_t sub_100FB6898()
{
  v29 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000136BC(v13, v15, &v28);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    v18 = Duration.description.getter();
    v20 = sub_1000136BC(v18, v19, &v28);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Will extend FAM for %{private,mask.hash}s after %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];

    v16 = *(v23 + 8);
    v16(v21, v22);
  }

  v0[20] = v16;
  static Clock<>.continuous.getter();
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_100FB6BAC;
  v26 = v0[15];
  v25 = v0[16];

  return sub_100D24214(v26, v25, 0, 0, 1);
}

uint64_t sub_100FB6BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100FB6FCC;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_100FB6D2C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100FB6D2C()
{
  sub_100FB719C(*(v0 + 32));

  return _swift_task_switch(sub_100FB6D94, 0, 0);
}

uint64_t sub_100FB6D94()
{
  v18 = v0;
  (*(v0 + 144))(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  if (v3)
  {
    v16 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v16(v5, v6);
    v12 = sub_1000136BC(v9, v11, &v17);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Extending FAM for %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_100FB704C;
  v14 = *(v0 + 32);

  return sub_100FB1A44(v14);
}

uint64_t sub_100FB6FCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FB704C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100FB719C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016C1CB0);
  v41 = *(v5 + 16);
  v41(v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = v5;
    v14 = v13;
    v38 = swift_slowAlloc();
    v39 = a1;
    v45[0] = v38;
    *v14 = 136446723;
    *(v14 + 4) = sub_1000136BC(0xD000000000000012, 0x8000000101375AC0, v45);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = v9;
    v19 = *(v40 + 8);
    v19(v18, v4);
    v20 = sub_1000136BC(v15, v17, v45);

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s for %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
    a1 = v39;
  }

  else
  {

    v21 = v9;
    v19 = *(v5 + 8);
    v19(v21, v4);
  }

  swift_beginAccess();
  v22 = *(v2 + 216);
  v23 = v42;
  if (*(v22 + 16))
  {

    v24 = sub_1000210EC(a1);
    if (v25)
    {
      v26 = *(*(v22 + 56) + 16 * v24 + 8);

      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *(v2 + 216);
        *(v2 + 216) = 0x8000000000000000;
        sub_101001EEC(0, v28, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 216) = v43;
        swift_endAccess();
      }

      return;
    }
  }

  v41(v23, a1, v4);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44[0] = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v19(v23, v4);
    v37 = sub_1000136BC(v34, v36, v44);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "clearTracker: no tracker for %{private,mask.hash}s", v32, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {

    v19(v23, v4);
  }
}

uint64_t sub_100FB76F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v4 = type metadata accessor for CancellationError();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100FB7828, 0, 0);
}

uint64_t sub_100FB7828()
{
  v52 = v0;
  if ((*(v0 + 104) & 1) == 0)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 32);
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_1016C1CB0);
    (*(v21 + 16))(v19, v22, v20);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    if (v24)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v51 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v11 + 8))(v9, v10);
      v28 = sub_1000136BC(v25, v27, &v51);

      *(v12 + 14) = v28;
      v18 = "FAM extension succeeded for %{private,mask.hash}s.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  *(v0 + 16) = *(v0 + 24);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 32);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016C1CB0);
    (*(v3 + 16))(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v51 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000136BC(v14, v16, &v51);

      *(v12 + 14) = v17;
      v18 = "FAM extension cancelled for %{private,mask.hash}s.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, v7, v18, v12, 0x16u);
      sub_100007BAC(v13);

      goto LABEL_18;
    }

LABEL_12:

    (*(v11 + 8))(v9, v10);
    goto LABEL_18;
  }

  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);
  v33 = *(v0 + 24);
  v32 = *(v0 + 32);
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_1016C1CB0);
  (*(v30 + 16))(v29, v32, v31);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  sub_1000BB584(v33, 1);
  v37 = os_log_type_enabled(v35, v36);
  v39 = *(v0 + 72);
  v38 = *(v0 + 80);
  v40 = *(v0 + 64);
  if (v37)
  {
    v41 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v41 = 141558531;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v38, v40);
    v45 = sub_1000136BC(v42, v44, &v51);

    *(v41 + 14) = v45;
    *(v41 + 22) = 2114;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 24) = v46;
    *v49 = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "FAM extension failed for %{private,mask.hash}s. Error %{public}@", v41, 0x20u);
    sub_10000B3A8(v49, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v50);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

LABEL_18:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100FB7EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100FB7EEC, a1, 0);
}

uint64_t sub_100FB7EEC()
{
  sub_100FB7F54(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_100FB7F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C1CB0);
  v46 = *(v7 + 16);
  v47 = v7 + 16;
  v46(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v48 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v10;
    v18 = v17;
    v44 = swift_slowAlloc();
    v51[0] = v44;
    *v18 = 136446723;
    *(v18 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101375AA0, v51);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a2;
    v21 = v3;
    v22 = a1;
    v24 = v23;
    v42 = v14;
    v25 = *(v48 + 8);
    v25(v12, v6);
    v26 = sub_1000136BC(v19, v24, v51);
    a1 = v22;
    v3 = v21;
    a2 = v20;

    *(v18 + 24) = v26;
    v27 = v42;
    _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s for %{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();

    v10 = v45;
  }

  else
  {

    v25 = *(v7 + 8);
    v25(v12, v6);
  }

  swift_beginAccess();
  v28 = *(v3 + 216);
  if (*(v28 + 16))
  {

    v29 = sub_1000210EC(a1);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 16 * v29 + 8);

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v3 + 216);
      *(v3 + 216) = 0x8000000000000000;
      sub_101001EEC(a2, v31, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + 216) = v49;
      swift_endAccess();
      return;
    }
  }

  v46(v10, a1, v6);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50[0] = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v10;
    v40 = v39;
    v25(v38, v6);
    v41 = sub_1000136BC(v37, v40, v50);

    *(v35 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "addTracker: missing tracker for %{private,mask.hash}s!", v35, 0x16u);
    sub_100007BAC(v36);
  }

  else
  {

    v25(v10, v6);
  }
}

uint64_t sub_100FB84BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = type metadata accessor for UUID();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FB8588, a1, 0);
}

uint64_t sub_100FB8588(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[6];
  v6 = v1[5];
  XPCSession.identifier.getter();
  swift_beginAccess();
  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + 208);
  *(v6 + 208) = 0x8000000000000000;
  sub_101001EC4(v7, v2, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  *(v6 + 208) = v10;
  swift_endAccess();

  return _swift_task_switch(sub_100FB8688, 0, 0);
}

uint64_t sub_100FB8688()
{
  (*(v0 + 64))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FB86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = *v3;
  v38 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v36 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C1CB0);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v14;
    v18 = v7;
    v19 = v12;
    v21 = v20;
    (*(v6 + 8))(v10, v5);
    v22 = sub_1000136BC(v17, v21, &v41);
    v12 = v19;
    v7 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v33, "Start BT Finding for beacon %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v34);

    a1 = v35;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  type metadata accessor for Transaction();
  v23 = v36;
  v12(v36, a1, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v24, v23, v5);
  v28 = v38;
  *(v27 + v25) = v39;
  v29 = (v27 + v26);
  v30 = v40;
  *v29 = v28;
  v29[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FB8ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v4[14] = *(v7 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[19] = v8;
  *v8 = v4;
  v8[1] = sub_100FB8CA0;

  return daemon.getter();
}

uint64_t sub_100FB8CA0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016AA520, 255, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100FB8E84;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FB8E84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {

    v5 = swift_task_alloc();
    *(v3 + 256) = v5;
    *v5 = v4;
    v5[1] = sub_100FB9960;
    v6 = *(v3 + 16);

    return sub_100F9FD08(v6);
  }

  else
  {

    return _swift_task_switch(sub_100FB9034, 0, 0);
  }
}

uint64_t sub_100FB9034()
{
  v35 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[23] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[24] = v6;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v31 = v8;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v34);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v31, "Checking if we have LocalFindableRecord for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[26] = v18;
  v21 = v0[22];
  v22 = v0[17];
  v23 = v0[13];
  v24 = v0[12];
  v6(v22, v0[2], v24);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v0[27] = v26;
  *(v26 + 16) = v21;
  (*(v23 + 32))(v26 + v25, v22, v24);

  v27 = swift_task_alloc();
  v0[28] = v27;
  *v27 = v0;
  v27[1] = sub_100FB9390;
  v29 = v0[6];
  v28 = v0[7];

  return withTimeout<A>(_:block:)(v28, 0x8AC7230489E80000, 0, &unk_1013F6240, v26, v29);
}

uint64_t sub_100FB9390()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100FB9F04;
  }

  else
  {

    v2 = sub_100FB94AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FB94AC()
{
  v20 = v0;
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = sub_100FB9960;
    v3 = v0[2];

    return sub_100F9FD08(v3);
  }

  else
  {
    v6 = v0[10];
    v5 = v0[11];
    sub_100FC4778(v1, v5, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100FC4840(v5, v6, type metadata accessor for LocalFindableAccessoryRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_100158AA8();
      v15 = v14;
      sub_100FC47E0(v10, type metadata accessor for LocalFindableAccessoryRecord);
      v16 = sub_1000136BC(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found LocalFindableRecord: %s", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100FC47E0(v10, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v17 = swift_task_alloc();
    v0[30] = v17;
    *v17 = v0;
    v17[1] = sub_100FB9768;
    v18 = v0[11];

    return sub_100FAC8DC(v18);
  }
}

uint64_t sub_100FB9768()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100FBA180;
  }

  else
  {
    v2 = sub_100FB987C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FB987C()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 88);

  sub_100FC47E0(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FB9960()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100FBA4D4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[34] = v3;
    *v3 = v2;
    v3[1] = sub_100FB9AD0;
    v4 = v2[2];

    return sub_100FA9C48(v4);
  }
}

uint64_t sub_100FB9AD0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100FBA5AC;
  }

  else
  {
    v2 = sub_100FB9BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FB9BE4()
{
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully started aggressive advertising.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_100FB9D34;
  v6 = *(v0 + 16);

  return sub_100FA0E84(v6);
}

uint64_t sub_100FB9D34()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100FBA684;
  }

  else
  {
    v2 = sub_100FB9E48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FB9E48()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FB9F04()
{
  v22 = v0;
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[2];

  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  v9 = v0[16];
  v10 = v0[12];
  if (v7)
  {
    v20 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v20(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timed out looking up LocalFindableRecord for beacon: %{private,mask.hash}s", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    v8(v9, v10);
  }

  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_100FB9960;
  v18 = v0[2];

  return sub_100F9FD08(v18);
}

uint64_t sub_100FBA180()
{
  v22 = v0;
  (*(v0 + 192))(*(v0 + 120), *(v0 + 16), *(v0 + 96));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v20 = *(v0 + 208);
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136446979;
    *(v5 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101375B30, &v21);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v20(v3, v4);
    v10 = sub_1000136BC(v7, v9, &v21);

    *(v5 + 24) = v10;
    *(v5 + 32) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 34) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s failed for beacon: %{private,mask.hash}s Error: %{public}@", v5, 0x2Au);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);

    v12(v13, v14);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 32);
  swift_errorRetain();
  v16(v15);

  v17 = *(v0 + 88);

  sub_100FC47E0(v17, type metadata accessor for LocalFindableAccessoryRecord);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100FBA4D4()
{
  v1 = v0[33];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBA5AC()
{
  v1 = v0[35];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBA684()
{
  v1 = v0[37];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100FBA77C, a2, 0);
}

uint64_t sub_100FBA77C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100FC4FB0;
  v2 = v0[4];
  v3 = v0[2];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100FBA81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C1CB0);
  v36 = *(v8 + 16);
  v36(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136446723;
    *(v17 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101375A10, &v39);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v15;
    v19 = a1;
    v20 = v4;
    v21 = a3;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v39);
    a3 = v21;
    v4 = v20;
    a1 = v19;

    *(v17 + 24) = v24;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();

    v9 = v35;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v37;
  v36(v37, a1, v7);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  (*(v8 + 32))(v28 + v27, v26, v7);
  v29 = (v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v38;
  v29[1] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100FBACB4;

  return sub_100FB12DC(a2);
}

uint64_t sub_100FBACB4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100FC4FB4;
  }

  else
  {
    v2 = sub_100FC4FC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FBADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C1CB0);
  v36 = *(v8 + 16);
  v36(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136446723;
    *(v17 + 4) = sub_1000136BC(0xD000000000000027, 0x80000001013759B0, &v39);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v15;
    v19 = a1;
    v20 = v4;
    v21 = a3;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v39);
    a3 = v21;
    v4 = v20;
    a1 = v19;

    *(v17 + 24) = v24;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();

    v9 = v35;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v37;
  v36(v37, a1, v7);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  (*(v8 + 32))(v28 + v27, v26, v7);
  v29 = (v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v38;
  v29[1] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100FBB260;

  return sub_100FA58D8(a2);
}

uint64_t sub_100FBB260()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100FBB3DC;
  }

  else
  {
    v2 = sub_100FBB374;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FBB374()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FBB3DC()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBB468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = *v3;
  v38 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v36 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C1CB0);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v14;
    v18 = v7;
    v19 = v12;
    v21 = v20;
    (*(v6 + 8))(v10, v5);
    v22 = sub_1000136BC(v17, v21, &v41);
    v12 = v19;
    v7 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v33, "Stop BT Finding for beacon %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v34);

    a1 = v35;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  type metadata accessor for Transaction();
  v23 = v36;
  v12(v36, a1, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v24, v23, v5);
  v28 = v38;
  *(v27 + v25) = v39;
  v29 = (v27 + v26);
  v30 = v40;
  *v29 = v28;
  v29[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBB848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v4[14] = *(v7 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[18] = v8;
  *v8 = v4;
  v8[1] = sub_100FBBA00;

  return daemon.getter();
}

uint64_t sub_100FBBA00(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100FC4DB8(&unk_1016AA520, 255, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100FBBBE4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100FBBBE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {

    v5 = swift_task_alloc();
    *(v3 + 240) = v5;
    *v5 = v4;
    v5[1] = sub_100FBC6A0;
    v6 = *(v3 + 16);

    return sub_100FAAD8C(v6);
  }

  else
  {

    return _swift_task_switch(sub_100FBBD94, 0, 0);
  }
}

uint64_t sub_100FBBD94()
{
  v35 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v31 = v8;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v34);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v31, "Checking if we have LocalFindableRecord for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[25] = v18;
  v21 = v0[21];
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[12];
  v6(v22, v0[2], v24);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v0[26] = v26;
  *(v26 + 16) = v21;
  (*(v23 + 32))(v26 + v25, v22, v24);

  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = sub_100FBC0F0;
  v29 = v0[6];
  v28 = v0[7];

  return withTimeout<A>(_:block:)(v28, 0x8AC7230489E80000, 0, &unk_1013F6190, v26, v29);
}

uint64_t sub_100FBC0F0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100FBCACC;
  }

  else
  {

    v2 = sub_100FBC20C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FBC20C()
{
  v20 = v0;
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_100FBC6A0;
    v3 = v0[2];

    return sub_100FAAD8C(v3);
  }

  else
  {
    v6 = v0[10];
    v5 = v0[11];
    sub_100FC4778(v1, v5, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100FC4840(v5, v6, type metadata accessor for LocalFindableAccessoryRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_100158AA8();
      v15 = v14;
      sub_100FC47E0(v10, type metadata accessor for LocalFindableAccessoryRecord);
      v16 = sub_1000136BC(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found LocalFindableRecord: %s", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100FC47E0(v10, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    v17[1] = sub_100FBC4C4;
    v18 = v0[2];

    return sub_100FB25D8(v18);
  }
}

uint64_t sub_100FBC4C4()
{

  return _swift_task_switch(sub_100FBC5C0, 0, 0);
}

uint64_t sub_100FBC5C0()
{
  v1 = *(v0 + 88);
  (*(v0 + 32))(0);

  sub_100FC47E0(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FBC6A0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100FBCD48;
  }

  else
  {
    v2 = sub_100FBC7B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FBC7B4()
{
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully stopped aggressive advertising.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_100FBC904;
  v6 = *(v0 + 16);

  return sub_100FA4284(v6);
}

uint64_t sub_100FBC904()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100FBCE18;
  }

  else
  {
    v2 = sub_100FBCA18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100FBCA18()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FBCACC()
{
  v22 = v0;
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[2];

  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[15];
  v10 = v0[12];
  if (v7)
  {
    v20 = v0[25];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v20(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timed out looking up LocalFindableRecord for beacon: %{private,mask.hash}s", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    v8(v9, v10);
  }

  v17 = swift_task_alloc();
  v0[30] = v17;
  *v17 = v0;
  v17[1] = sub_100FBC6A0;
  v18 = v0[2];

  return sub_100FAAD8C(v18);
}

uint64_t sub_100FBCD48()
{
  v1 = v0[31];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBCE18()
{
  v1 = v0[33];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100FBCEE8(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC4FB8;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
    sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC4CDC;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165E320;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DE8EAC(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
          sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FBDAFC(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC4FB8;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC4DAC;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165E550;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DEAA7C(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
          sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FBE710(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC4FB8;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
    sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC4C9C;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165E208;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DEE2AC(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
          sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FBF324(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC4FB8;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC4C50;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165DFD8;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DF1258(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
          sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FBFF38(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC4FB8;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC4D1C;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165E438;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DF1848(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
          sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FC0B4C(void *a1, int64_t a2)
{
  v4 = [a1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v4[2] = v5;
    v68 = sub_100FC377C;
  }

  else
  {
    v68 = 0;
  }

  v66 = v4;
  swift_beginAccess();
  v67 = a2;
  v6 = *(a2 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v8 = v82;
    v7 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v8 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_15:
  v19 = (v17 - 1) & v17;
  v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

  if (v20)
  {
    while (1)
    {
      sub_1000128AC();
      v2 = v20;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v87 = v21;
        sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8(v8);

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v87 = v74;
      *v58 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);

      v63 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v55;
      *v70 = v55;
      v64 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Already have a session for %@", v58, 0x16u);
      sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v74);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return v2;
  }

  else
  {
LABEL_22:
    sub_1000128F8(v8);

    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    swift_allocObject();
    v24 = a1;
    v25 = XPCSession.init(connection:)();
    v18 = v67;
    if (v25)
    {
      v11 = v25;
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v24;
      v2 = v66;
      v27[4] = v68;
      v27[5] = v66;
      v79 = sub_100FC3770;
      v80 = v27;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_10165DB78;
      v28 = _Block_copy(&aBlock);
      v29 = v24;
      sub_100012908(v68, v66);

      [v29 setInvalidationHandler:v28];
      _Block_release(v28);
      v30 = *(v67 + 32);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *(v30 + 16);
      }

      swift_beginAccess();

      sub_100DF1EF0(&v87, v11);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
LABEL_31:
        v42 = type metadata accessor for Logger();
        sub_1000076D4(v42, qword_10177C668);
        swift_retain_n();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136446722;
          aBlock = 60;
          v76 = 0xE100000000000000;
          v81 = v18;
          v73 = v15;
          sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
          sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160, &unk_101404F78);
          v47._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v18 = v67;
          v49._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 62;
          v50._object = 0xE100000000000000;
          String.append(_:)(v50);
          v51 = sub_1000136BC(aBlock, v76, &v87);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v73;
          *(v45 + 22) = 2048;
          v52 = *(v67 + 32);
          if ((v52 & 0xC000000000000001) != 0)
          {

            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *(v52 + 16);
          }

          *(v45 + 24) = v53;

          _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s: Session count: %ld -> %ld", v45, 0x20u);
          sub_100007BAC(v46);
        }

        else
        {
        }

        if ((*(v18 + 32) & 0xC000000000000001) != 0)
        {

          __CocoaSet.count.getter();
        }

        sub_1000BB27C(v68, v2);
        return v11;
      }

LABEL_50:
      swift_once();
      goto LABEL_31;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C668);
    v32 = v24;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v35 = 136446466;
      v81 = v67;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160, &unk_101404F78);
      v36._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 62;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);

      v40 = sub_1000136BC(60, 0xE100000000000000, &v87);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v32;
      *v69 = v32;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Failed to make XPCSession from %@", v35, 0x16u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v72);

      sub_1000BB27C(v68, v66);
    }

    else
    {
      sub_1000BB27C(v68, v66);
    }

    return 0;
  }
}

uint64_t sub_100FC1760(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4CE8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E3C0;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC1B1C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1001BCDB8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E5F0;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC1ED8(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4CA8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E2A8;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2294(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC508, &qword_1013F62F0);
      sub_1000041A4(&unk_1016BC510, &qword_1016BC508, &qword_1013F62F0, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4C68;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E190;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2650(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100F04BC8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E078;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2A0C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4D28;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E4D8;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2DC8(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160, &unk_101404F78);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC378C;
    *(v18 + 24) = v17;
    v27 = sub_1000D2FB0;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165DC18;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC319C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FA1424(a1, v4, v5, v6);
}

uint64_t sub_100FC3254(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100F9D6A4(v8);
    if (v10)
    {
      v11 = v10;
      type metadata accessor for Transaction();
      v12 = swift_allocObject();
      v12[2] = a2;
      v12[3] = a1;
      v12[4] = v11;
      v12[5] = sub_10001E370;
      v12[6] = v6;

      v13 = a1;

      static Transaction.asyncTask(name:block:)();
    }
  }

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C468);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unable to add current XPC connection to the pool!", v18, 2u);
  }

  type metadata accessor for SPBTFindingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FC4DB8(&unk_1016C2170, 255, type metadata accessor for SPBTFindingSessionError, &unk_101389EE0);
  _BridgedStoredNSError.init(_:userInfo:)();
  v19 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v19);
}

uint64_t sub_100FC352C()
{
  sub_100FC3634();
  v0 = NSXPCConnection.hasEntitlement<A>(_:)();
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C468);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "BTFindingService: Received new XPC connection (has entitlement: %{BOOL}d).", v4, 8u);
  }

  return v0 & 1;
}

unint64_t sub_100FC3634()
{
  result = qword_1016C2190;
  if (!qword_1016C2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2190);
  }

  return result;
}

uint64_t sub_100FC3688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100FB84BC(v2, v3, v4, v5, v6);
}

uint64_t sub_100FC3794()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100FBB848(v0 + v3, v6, v7, v8);
}

uint64_t sub_100FC38C8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006A86FC(a1, v6, v1 + v5);
}

uint64_t sub_100FC39AC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100FBB1C0(v4, v0 + v3, v6, v7);
}

uint64_t sub_100FC3AC4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100FBAC14(v4, v0 + v3, v6, v7);
}

uint64_t sub_100FC3BDC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100FB5234(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100FC3D0C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100FB64B4(v4, v0 + v3);
}

uint64_t sub_100FC3E14(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100FB76F0(a1, a2 & 1, v2 + v7);
}

uint64_t sub_100FC3F2C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100FB7EC4(v4, v0 + v3, v5);
}

uint64_t sub_100FC4034()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100FC40F4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100FB8ADC(v0 + v3, v6, v7, v8);
}

uint64_t sub_100FC4228(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FBA75C(a1, v6, v1 + v5);
}

uint64_t sub_100FC430C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
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
  v13[1] = sub_100014650;

  return sub_100FAD1BC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_100FC449C()
{
  result = qword_1016C21A8;
  if (!qword_1016C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C21A8);
  }

  return result;
}

uint64_t sub_100FC44F0(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FAD88C(a1, v6, v1 + v5);
}

uint64_t sub_100FC45D4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FAFAC0(a1, v6, v1 + v5);
}

uint64_t sub_100FC46B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FB2D00(a1, v4, v5, v6);
}

uint64_t sub_100FC4778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100FC47E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FC4840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100FC48A8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10073ACF0;

  return sub_100FB41F8(v4, v0 + v3);
}

uint64_t sub_100FC49B0()
{
  v2 = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001BBA4C;

  return sub_100FB39E0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100FC4B1C()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10073ACF0;

  return sub_100FB36CC(v4, v0 + v3);
}

uint64_t sub_100FC4D5C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100FC4DB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100FC4E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100F9F028();
}

unint64_t sub_100FC4E98(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

unint64_t sub_100FC4ED4()
{
  result = qword_1016C2270;
  if (!qword_1016C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2270);
  }

  return result;
}

unint64_t sub_100FC4F2C()
{
  result = qword_1016C2278;
  if (!qword_1016C2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2278);
  }

  return result;
}

uint64_t type metadata accessor for RoleCategoriesEndpoint(uint64_t a1)
{
  result = qword_1016C22D8;
  if (!qword_1016C22D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC506C()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x73656C6F722FLL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t type metadata accessor for AirPodsPairingLockCheckResponse(uint64_t a1)
{
  result = qword_1016C2368;
  if (!qword_1016C2368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FC51E4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1003955F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100FC5294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for UUID();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C23C0, &qword_1013F65E8);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  v11 = __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13[*(v11 + 48)] = 0;
  v14 = a1[3];
  v32 = a1;
  sub_1000035D0(a1, v14);
  sub_100FC5BC4();
  v31 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v32);
  }

  v15 = v6;
  v16 = v29;
  v17 = v13;
  v34 = 0;
  v18 = sub_1000E307C();
  v19 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(&v33 + 1);
  v25[2] = *(&v33 + 1);
  v26 = v33;
  *v17 = v33;
  *(v17 + 8) = v20;
  v34 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + 16) = v33;
  v34 = 2;
  v25[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + 32) = v33;
  v34 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + 48) = v33;
  v34 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v18;
  *(v17 + 64) = v33;
  LOBYTE(v33) = 5;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(v17 + v10[9], v15, v4);
  LOBYTE(v33) = 6;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = (v17 + v10[10]);
  *v22 = v21;
  v22[1] = v23;
  v34 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v31, v19);
  *(v17 + v10[11]) = v33;
  sub_100FC5C18(v17, v27);
  sub_100007BAC(v32);
  return sub_100FC5C7C(v17);
}

unint64_t sub_100FC58D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FC5DF0(*a1);
  *a2 = result;
  return result;
}

void sub_100FC5900(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684628325;
  v5 = 0xED00006449656C70;
  v6 = 0x704164656B73616DLL;
  if (v2 != 6)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000101347DB0;
  }

  v7 = 0xEA00000000006E67;
  v8 = 0x6953726576726573;
  if (v2 != 4)
  {
    v8 = 0x6449616E6D66;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265626DLL;
  v10 = 0x754E6C6169726573;
  if (v2 != 2)
  {
    v10 = 0x5364656573;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x644970696863;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_100FC5A08()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x704164656B73616DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6953726576726573;
  if (v1 != 4)
  {
    v4 = 0x6449616E6D66;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 2)
  {
    v5 = 0x5364656573;
  }

  if (*v0)
  {
    v2 = 0x644970696863;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100FC5B0C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FC5DF0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FC5B34(uint64_t a1)
{
  v2 = sub_100FC5BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FC5B70(uint64_t a1)
{
  v2 = sub_100FC5BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100FC5BC4()
{
  result = qword_1016C23C8;
  if (!qword_1016C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23C8);
  }

  return result;
}

uint64_t sub_100FC5C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FC5C7C(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100FC5CEC()
{
  result = qword_1016C23D0;
  if (!qword_1016C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23D0);
  }

  return result;
}

unint64_t sub_100FC5D44()
{
  result = qword_1016C23D8;
  if (!qword_1016C23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23D8);
  }

  return result;
}

unint64_t sub_100FC5D9C()
{
  result = qword_1016C23E0;
  if (!qword_1016C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23E0);
  }

  return result;
}

unint64_t sub_100FC5DF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C860, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FC5EEC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = xmmword_101394D60;
  *(v4 + 56) = 0xF000000000000000;
  *(v4 + 64) = 0;
  v10 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_signpostID;
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C3B0;
  OSSignpostID.init(log:)();
  v12 = v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost;
  *v12 = "ackPairingLock";
  *(v12 + 8) = 14;
  *(v12 + 16) = 2;
  v13 = (v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  *v13 = 0;
  v13[1] = 0;
  v38 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor) = a1;
  type metadata accessor for SPAnalyticsItemPairEvent(0);
  swift_allocObject();
  v14 = a1;
  v15 = sub_101164980(1);
  v36 = v10;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics) = v15;
  v16 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue) = a3;
  v37 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_validator;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_validator) = a2;
  v17 = a3;

  v18 = a2;
  v19 = static Data.random(bytes:)();
  v21 = v20;
  sub_100017D5C(v19, v20);
  sub_1004A4740();
  v22 = v44;
  if (v44 >> 60 == 15)
  {
    v23 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v11, "Could not generate nonce", 24, 2, _swiftEmptyArrayStorage);

    sub_100016590(v19, v21);

    sub_100006654(*(v4 + 32), *(v4 + 40));
    sub_100006654(*(v4 + 48), *(v4 + 56));
    v24 = type metadata accessor for OSSignpostID();
    (*(*(v24 - 8) + 8))(v4 + v36, v24);

    sub_1000BB27C(*(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock), *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock + 8));
    type metadata accessor for ItemPairingCoordinator(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v37 = v17;
    v38 = v18;
    v25 = v43;
    v26 = v39;
    UUID.init()();
    v27 = objc_allocWithZone(SPPairingSession);
    sub_100017D5C(v25, v22);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v27 initWithIdentifier:isa nonce:v29];

    sub_100006654(v25, v22);
    (*(v40 + 8))(v26, v41);
    *(v4 + 16) = v30;
    v31 = qword_101694FA8;
    v32 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v43 = 0x7365547265646E75;
    v44 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v33 = v37;
    if ((v42 & 1) == 0)
    {
      v34 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
      CurrentLocationMonitor.requestLocation()();
    }

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    sub_100016590(v19, v21);

    sub_100006654(v25, v22);
  }

  return v4;
}

void sub_100FC63E8(uint64_t a1)
{
  v1 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Clearing up pairing coordinator.", 32, 2, _swiftEmptyArrayStorage);

  Transaction.capture()();
}

uint64_t sub_100FC6474()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_1000BB27C(v3, v4);
  }

  sub_100006654(*(v1 + 32), *(v1 + 40));
  sub_100006654(*(v1 + 48), *(v1 + 56));
  v6 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_signpostID;
  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_1000BB27C(*v2, v2[1]);
  return v1;
}

uint64_t sub_100FC657C()
{
  sub_100FC6474();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemPairingCoordinator(uint64_t a1)
{
  result = qword_1016C2430;
  if (!qword_1016C2430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC6628(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100FC6714(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v16 = 0x7365547265646E75;
  v17 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v18 & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074624(v16);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v13 = type metadata accessor for Transaction();
  __chkstk_darwin(v13);
  *(&v15 - 4) = v2;
  *(&v15 - 3) = v11;
  *(&v15 - 2) = a1;
  *(&v15 - 1) = a2;
  static Transaction.named<A>(_:with:)();
  return (v12)(v11, v5);
}

uint64_t sub_100FC69C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a2 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v15[5] = a5;
  aBlock[4] = sub_100FCB390;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165EBA0;
  v16 = _Block_copy(aBlock);

  sub_100012908(a4, a5);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_100FC6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UUID();
  v57 = *(v63 - 8);
  v13 = __chkstk_darwin(v63);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  Transaction.capture()();
  v18 = [*(a2 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v18) = *(a2 + 64);
  v54 = static os_log_type_t.default.getter();
  if (v18 > 1)
  {
    v52 = v17;
    v53 = v5;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v51 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10138BBE0;
    v34 = [*(a2 + 16) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = UUID.uuidString.getter();
    v37 = v36;
    v57 = *(v57 + 8);
    (v57)(v15, v63);
    *(v33 + 56) = &type metadata for String;
    v38 = sub_100008C00();
    *(v33 + 64) = v38;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    LOBYTE(aBlock) = *(a2 + 64);
    v39 = String.init<A>(describing:)();
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v38;
    *(v33 + 72) = v39;
    *(v33 + 80) = v40;
    os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v51, "Pairing session %@ state %@. Ignore timeout.", 44, 2, v33);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v41 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    v42 = swift_allocObject();
    v44 = v55;
    v43 = v56;
    *(v42 + 16) = v55;
    *(v42 + 24) = v43;
    v69 = sub_100FCB39C;
    v70 = v42;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100006684;
    v68 = &unk_10165EBF0;
    v45 = _Block_copy(&aBlock);
    sub_100012908(v44, v43);
    v46 = v58;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v47 = v59;
    v48 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v62 + 8))(v47, v48);
    (*(v60 + 8))(v46, v61);
    (v57)(v52, v63);
  }

  else
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v19, "#Durian: Pairing session %@ should have completed by now. Bailing...", 68, 2, v20);

    v24 = sub_100FC752C();
    sub_100408170(v24, v25 & 1);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    v27 = swift_allocObject();
    v29 = v55;
    v28 = v56;
    *(v27 + 16) = v55;
    *(v27 + 24) = v28;
    v69 = sub_100FCB3A4;
    v70 = v27;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100006684;
    v68 = &unk_10165EC40;
    v30 = _Block_copy(&aBlock);
    sub_100012908(v29, v28);
    v31 = v58;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v32 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v62 + 8))(v32, v5);
    (*(v60 + 8))(v31, v61);
    (*(v57 + 8))(v17, v63);
  }
}

void *sub_100FC752C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  v15 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = [*(v1 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v15, "invalidatePairingSync session %@.", 33, 2, v16);

  v21 = [*(v1 + 16) ecid];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = [*(v1 + 16) chipId];
    if (v26)
    {
      v27 = v26;
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = [*(v1 + 16) serialNumber];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v4;
        v35 = v34;

        v36 = [*(v1 + 16) productId];
        v37 = [*(v1 + 16) vendorId];
        *&v49 = v23;
        *(&v49 + 1) = v25;
        *&v50 = v28;
        *(&v50 + 1) = v30;
        *&v51 = v33;
        *(&v51 + 1) = v35;
        *&v52 = v36;
        *(&v52 + 1) = v37;
        v53[0] = v49;
        v53[1] = v50;
        v53[2] = v51;
        v53[3] = v52;
        v38 = dispatch_group_create();
        dispatch_group_enter(v38);
        v39 = swift_allocObject();
        type metadata accessor for SPPairingSessionError(0);
        v48 = 1;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(v39 + 16) = v47[0];
        *(v39 + 24) = 1;
        v40 = v46;
        (*(v6 + 56))(v46, 1, 1, v5);
        v41 = v38;

        sub_10088B5B8(v40, v53, v41, v39);

        sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
        OS_dispatch_group.wait()();

        sub_1004059C4(&v49);
        *(v1 + 64) = 3;
        swift_beginAccess();
        v42 = *(v39 + 16);
        sub_1004081B0(v42, *(v39 + 24));

        return v42;
      }

      sub_100016590(v28, v30);
    }

    sub_100016590(v23, v25);
  }

  v44 = static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v15, "#Durian: Insufficient info for remove pairing lock.", 51, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPPairingSessionError(0);
  *&v49 = 6;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  return *&v53[0];
}

void sub_100FC7B20(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v5 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "#Durian: Failed to remove pairing lock due to %@.", 49, 2, v7);

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    swift_errorRetain();
    *(inited + 48) = String.init<A>(describing:)();
    *(inited + 56) = v13;
    v14 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    sub_1006953B0(v14);

    sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v15 = *(a3 + 16);
    v16 = *(a3 + 24);
    *(a3 + 16) = v21;
    *(a3 + 24) = 1;
    sub_100408170(v15, v16);
    dispatch_group_leave(a2);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v20 = v17;
      swift_once();
      v17 = v20;
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C3B0, "#Durian: Pairing failed. Successfully removed pairing lock.", 59, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v19 = *(a3 + 24);
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    sub_100408170(v18, v19);
    dispatch_group_leave(a2);
  }
}

uint64_t sub_100FC7E50(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a1;
  v61 = a4;
  v58 = a3;
  v59 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v54 = v6;
    v15 = static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  v22 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v53 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  v24 = [*(v5 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v12 + 8))(v14, v11);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v22, "completeVerifyPairing for session %@.", 37, 2, v23);

  v28 = static os_log_type_t.default.getter();
  v29 = v59;
  if (v59)
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C3D8;
    v31 = swift_allocObject();
    *(v31 + 16) = v53;
    v32 = v60;
    v33 = _convertErrorToNSError(_:)();
    *(v31 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v31 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v31 + 32) = v33;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v30, "#Durian: Beacon - Verify Pairing failed with error: %@", 54, 2, v31);

    v34 = [*(v5 + 16) pairingUsingTool];
    v35 = v54;
    if (v34)
    {
      v36 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v30, "#Durian: Not submitting analytics for tool based pairing", 56, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      type metadata accessor for Transaction();
      v40 = swift_allocObject();
      *(v40 + 16) = v5;
      *(v40 + 24) = v32;
      v41 = v32;

      static Transaction.asyncTask(name:block:)();
    }
  }

  else
  {
    v35 = v54;
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v37 = qword_10177C3D8;
    v38 = swift_allocObject();
    *(v38 + 16) = v53;
    *(v38 + 56) = sub_100008BB8(0, &qword_1016C2608, SPPairingSession_ptr);
    *(v38 + 64) = sub_1002917A0(&qword_1016C2610, &qword_1016C2608, SPPairingSession_ptr);
    v32 = v60;
    *(v38 + 32) = v60;
    v39 = v32;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v37, "#Durian: Beacon - Verify Pairing completed with session: %@", 59, 2, v38);

    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();

    *(v5 + 64) = 1;
    sub_100FC6714(0, 0);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v43 = v55;
  v42 = v56;
  v44 = v57;
  (*(v56 + 104))(v55, enum case for DispatchQoS.QoSClass.default(_:), v57);
  v45 = static OS_dispatch_queue.global(qos:)();
  (*(v42 + 8))(v43, v44);
  v46 = swift_allocObject();
  v47 = v61;
  *(v46 + 16) = v58;
  *(v46 + 24) = v47;
  *(v46 + 32) = v32;
  *(v46 + 40) = v29 & 1;
  aBlock[4] = sub_100FCB2DC;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165EB00;
  v48 = _Block_copy(aBlock);
  v49 = v32;

  v50 = v62;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v51 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

  (*(v66 + 8))(v51, v35);
  (*(v63 + 8))(v50, v65);
}

uint64_t sub_100FC8768()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100FC8794, v1, 0);
}

uint64_t sub_100FC8794()
{
  sub_101165CFC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC87F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FC8814, 0, 0);
}

uint64_t sub_100FC8814()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_100FC8840, v1, 0);
}

uint64_t sub_100FC8840()
{
  sub_101165CFC();

  return _swift_task_switch(sub_100FC88A8, 0, 0);
}

uint64_t sub_100FC88A8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100FC891C, v1, 0);
}

uint64_t sub_100FC891C()
{
  v1 = *(v0 + 24);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  *(v2 + 56) = 0;

  v3 = v1;
  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100FC89F8(void *a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v78 = a4;
  v79 = a1;
  v88 = a2;
  v7 = a3[7];
  v119 = a3[6];
  v120 = v7;
  v121 = a3[8];
  v122 = *(a3 + 18);
  v8 = a3[3];
  v115 = a3[2];
  v116 = v8;
  v9 = a3[5];
  v117 = a3[4];
  v118 = v9;
  v10 = a3[1];
  v113 = *a3;
  v114 = v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v83 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for UUID();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v5 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v22 = v5;
    v73 = v11;
    v24 = static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  v25 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  v86 = xmmword_101385D80;
  *(v26 + 16) = xmmword_101385D80;
  v27 = [v22[2] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = UUID.uuidString.getter();
  v30 = v29;
  v31 = *(v89 + 8);
  v89 += 8;
  v70 = v31;
  v31(v17, v87);
  *(v26 + 56) = &type metadata for String;
  v69 = sub_100008C00();
  *(v26 + 64) = v69;
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v71 = v25;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "completeFinalizePairing for session %@.", 39, 2, v26);

  v32 = type metadata accessor for Transaction();

  v72 = v32;
  static Transaction.asyncTask(name:block:)();
  v74 = v22;

  v33 = static os_log_type_t.default.getter();
  if (v88)
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C3D8;
    v35 = swift_allocObject();
    *(v35 + 16) = v86;
    v36 = v79;
    v37 = _convertErrorToNSError(_:)();
    *(v35 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v35 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v35 + 32) = v37;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "#Durian: Beacon - Finalize Pairing failed with error: %@", 56, 2, v35);

    v38 = v74;
    if ([v74[2] pairingUsingTool])
    {
      v39 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v34, "#Durian: Not submitting analytics for tool based pairing", 56, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v38;
      *(v50 + 24) = v36;

      v51 = v36;
      static Transaction.asyncTask(name:block:)();
    }
  }

  else
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v40 = qword_10177C3D8;
    v41 = swift_allocObject();
    *(v41 + 16) = v86;
    *(v41 + 56) = sub_100008BB8(0, &qword_1016C2608, SPPairingSession_ptr);
    *(v41 + 64) = sub_1002917A0(&qword_1016C2610, &qword_1016C2608, SPPairingSession_ptr);
    v36 = v79;
    *(v41 + 32) = v79;
    v42 = v36;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v40, "#Durian: Beacon - Finalize Pairing completed with session: %@", 61, 2, v41);

    v43 = static os_log_type_t.default.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v86;
    v45 = [v42 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = UUID.uuidString.getter();
    v48 = v47;
    v70(v17, v87);
    v49 = v69;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v49;
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v71, "Setting session %@ state to finalized to ignore timeout.", 56, 2, v44);

    v38 = v74;
    *(v74 + 64) = 2;
  }

  v52 = v73;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v54 = v75;
  v53 = v76;
  v55 = v77;
  (*(v76 + 104))(v75, enum case for DispatchQoS.QoSClass.default(_:), v77);
  v56 = static OS_dispatch_queue.global(qos:)();
  (*(v53 + 8))(v54, v55);
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v78;
  *(v57 + 24) = v58;
  *(v57 + 32) = v36;
  *(v57 + 40) = v88 & 1;
  *&v105 = sub_100FCB450;
  *(&v105 + 1) = v57;
  *&v103 = _NSConcreteStackBlock;
  *(&v103 + 1) = 1107296256;
  *&v104 = sub_100006684;
  *(&v104 + 1) = &unk_10165EA60;
  v59 = _Block_copy(&v103);
  v60 = v36;

  v61 = v80;
  static DispatchQoS.unspecified.getter();
  *&v93 = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v62 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);

  (*(v85 + 8))(v62, v52);
  (*(v82 + 8))(v61, v84);

  v63 = a3[7];
  v99 = a3[6];
  v100 = v63;
  v101 = a3[8];
  v102 = *(a3 + 18);
  v64 = a3[3];
  v95 = a3[2];
  v96 = v64;
  v65 = a3[5];
  v97 = a3[4];
  v98 = v65;
  v66 = a3[1];
  v93 = *a3;
  v94 = v66;
  result = sub_10040BA9C(&v93);
  if (result != 1)
  {
    v112 = v102;
    v109 = v99;
    v110 = v100;
    v111 = v101;
    v105 = v95;
    v106 = v96;
    v107 = v97;
    v108 = v98;
    v103 = v93;
    v104 = v94;
    __chkstk_darwin(result);
    *(&v68 - 2) = v38;
    *(&v68 - 1) = &v103;
    v91[6] = v119;
    v91[7] = v120;
    v91[8] = v121;
    v92 = v122;
    v91[2] = v115;
    v91[3] = v116;
    v91[4] = v117;
    v91[5] = v118;
    v91[0] = v113;
    v91[1] = v114;
    sub_100407B48(v91, &v90);
    static Transaction.named<A>(_:with:)();
    return sub_10000B3A8(a3, &qword_10169F428, &qword_1013A08E8);
  }

  return result;
}

uint64_t sub_100FC9548()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100FC9574, v1, 0);
}

uint64_t sub_100FC9574()
{
  sub_101165EF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC95D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FC95F4, 0, 0);
}

uint64_t sub_100FC95F4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  v0[4] = v1;
  v0[5] = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100FC9678, v1, 0);
}

uint64_t sub_100FC9678()
{
  v1 = *(v0 + 24);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  *(v2 + 56) = 0;

  v3 = v1;
  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100FC9754(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a2 + 16) pairingUsingTool])
  {
    v6 = static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C3D8, "#Durian: Not submitting analytics for tool based pairing", 56, 2, _swiftEmptyArrayStorage);
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  }

  sub_100FC9A74(a3, v7, sub_100FCB1F8, a1);
}

uint64_t sub_100FC986C(void *a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    v4 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    type metadata accessor for SPPairingSessionError(0);
    v7 = a1;
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "#Durian: Ack register failed with error - %@", 44, 2, v6);
  }

  else
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    *(v14 + 56) = &type metadata for Bool;
    *(v14 + 64) = &protocol witness table for Bool;
    *(v14 + 32) = a1 & 1;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "#Durian: Ack register was success? - %i", v15);
  }
}

uint64_t sub_100FC9A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = type metadata accessor for OSSignpostID();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v35);
  v31 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v29[-v10];
  v30 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v36 = *v4;
  sub_1000BC4D4(&qword_1016C2600, &qword_1013F6968);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD000000000000037;
  *(v13 + 80) = 0x8000000101375CE0;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v12, "%{public}@: %{public}@", 22, 2, v13);

  v18 = v12;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  *(swift_allocObject() + 16) = a2;

  static Transaction.asyncTask(name:block:)();

  v19 = v31;
  v20 = v35;
  (*(v7 + 16))(v31, v11, v35);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  (*(v7 + 32))(v23 + v21, v19, v20);
  *(v23 + v22) = a2;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;

  sub_10088C010(v34);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100FCADDC;
  *(v26 + 24) = v23;

  Future.addFailure(block:)();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_100FCADDC;
  *(v27 + 24) = v23;

  Future.addSuccess(block:)();

  return (*(v7 + 8))(v11, v20);
}

unint64_t sub_100FC9ED0()
{
  result = qword_1016C25F0;
  if (!qword_1016C25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C25F0);
  }

  return result;
}

uint64_t sub_100FC9F24(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1)
  {
    return _swift_task_switch(sub_100FC9F5C, a1, 0);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100FC9F5C()
{
  sub_101165FF0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC9FBC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  *(swift_allocObject() + 16) = a5;

  static Transaction.asyncTask(name:block:)();

  v10 = static os_log_type_t.default.getter();
  if (a2)
  {
    v21 = a6;
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C3D8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v13 = _convertErrorToNSError(_:)();
    *(v12 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v12 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v12 + 32) = v13;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Durian: Beacon - Finalize Pairing failed with error: %@", 56, 2, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a1;

    sub_1004081B0(a1, 1);
    static Transaction.asyncTask(name:block:)();
    a6 = v21;
  }

  else
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C3D8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_101385D80;
    if (a1)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (a1)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v15, "#Durian: Beacon - Finalize Pairing completed with success: %@", 61, 2, v17);

    *(swift_allocObject() + 16) = a5;

    static Transaction.asyncTask(name:block:)();
  }

  return a6(a1, a2 & 1);
}

uint64_t sub_100FCA380(uint64_t a1)
{
  v1[5] = a1;
  v3 = type metadata accessor for DispatchTime();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  if (a1)
  {

    return _swift_task_switch(sub_100FCA4A0, a1, 0);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_100FCA4A0(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[5];
  static DispatchTime.now()();
  v6 = DispatchTime.uptimeNanoseconds.getter();
  v7 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v7, v3);
  v8 = DispatchTime.uptimeNanoseconds.getter();
  v9 = *(v4 + 8);
  result = v9(v2, v3);
  v11 = v6 - v8;
  if (v6 < v8)
  {
    __break(1u);
  }

  else
  {
    v12 = v1[9];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v11 / 1000000000.0;
    type metadata accessor for Transaction();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;

    static Transaction.asyncTask(name:block:)();

    v9(v12, v14);

    v17 = v1[1];

    return v17();
  }

  return result;
}

uint64_t sub_100FCA668()
{
  if (v0[2])
  {
    v0[3] = sub_10090907C(_swiftEmptyArrayStorage);
    v1 = v0[2];

    return _swift_task_switch(sub_100FCA710, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100FCA710()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100FCA7EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FCA80C, 0, 0);
}

uint64_t sub_100FCA80C()
{
  if (v0[2])
  {
    v0[4] = sub_10090907C(_swiftEmptyArrayStorage);
    v1 = v0[2];

    return _swift_task_switch(sub_100FCA8B4, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100FCA8B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v2;
  *(v4 + 56) = 0;

  v5 = v2;
  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

void sub_100FCA99C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "#Durian: Error acking pairing lock. Error - %@", 46, 2, v6);

  swift_errorRetain();
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    v10 = v14;
    a2(v14, 1);
  }

  else
  {
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000032;
    *(inited + 56) = 0x8000000101375D80;
    v13 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    sub_1006953B0(v13);

    sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = a1;
    a2(a1, 1);
  }
}

uint64_t sub_100FCAC4C(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C3B0, "#Durian: Ack pairing lock was successful.", 41, 2, _swiftEmptyArrayStorage);
  return a2(1, 0);
}

unint64_t sub_100FCACF4()
{
  result = qword_1016C25F8;
  if (!qword_1016C25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C25F8);
  }

  return result;
}

uint64_t sub_100FCAD48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FC9F24(v2);
}

uint64_t sub_100FCADDC(void *a1, char a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100FC9FBC(a1, a2 & 1, v8, v2 + v6, v9, v10);
}

uint64_t sub_100FCAEAC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FCA380(v2);
}

uint64_t sub_100FCAF40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100FCA7EC(v2, v3);
}

uint64_t sub_100FCAFD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FCA648(v2);
}

uint64_t sub_100FCB06C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100FC9528(v0);
}

uint64_t sub_100FCB0FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100FC95D4(v2, v3);
}

uint64_t sub_100FCB194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100FCB204()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100FC87F4(v2, v3);
}

uint64_t sub_100FCB29C()
{

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_100FCB2E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100FC8748(v0);
}

uint64_t sub_100FCB3AC(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_100FCB3E0(void (*a1)())
{
  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock + 8);
  *v2 = sub_100FCB438;
  v2[1] = a1;

  return sub_1000BB27C(v4, v3);
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupRequest(uint64_t a1)
{
  result = qword_1016C2670;
  if (!qword_1016C2670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FCB4DC(uint64_t a1)
{
  sub_1003955F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestMethod();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100FCB560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for RequestMethod();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100FCB5D8(uint64_t a1)
{
  v2 = sub_100FCB698(&qword_1016C26B8, &unk_1013F6AA4);

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100FCB698(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OfflineLostModeInfoLookupRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100FCB6DC(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74617453636E7973;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x6169726553746C61;
      break;
    case 6:
      result = 0x644974726170;
      break;
    case 7:
      result = 0x6F636165426D756ELL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x6E55646572616873;
      break;
    case 11:
      result = 0x314B64656573;
      break;
    case 12:
      result = 0x7374726563;
      break;
    case 13:
      result = 7500643;
      break;
    case 14:
      result = 0x636E6F4E68747561;
      break;
    case 15:
      result = 0x726F737365636361;
      break;
    case 16:
      result = 0x7461747365747461;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x69634572656E776FLL;
      break;
    case 20:
      result = 0x69684372656E776FLL;
      break;
    case 21:
      result = 0x7372655663657073;
      break;
    case 22:
      result = 0x657261776D726966;
      break;
    case 23:
      result = 0x49746375646F7270;
      break;
    case 24:
      result = 0x6449726F646E6576;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100FCB9DC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C26C8, &unk_1013F7228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100FCE8E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v25, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    v24 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1001022C4(&v24, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v23 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_1000D2A70(&v23, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1001022C4(&v22, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v21 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v21, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 14);
    v11[0] = 8;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + 15);
    v11[0] = 9;
    sub_1000BC4D4(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[9];
    v13 = v3[9];
    v12 = 11;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v19 = v3[10];
    v13 = v3[10];
    v12 = 12;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = v3[11];
    v13 = v3[11];
    v12 = 13;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = v3[12];
    v13 = v3[12];
    v12 = 14;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = v3[13];
    v13 = v3[13];
    v12 = 15;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[14];
    v13 = v3[14];
    v12 = 16;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v14 = v3[15];
    v13 = v3[15];
    v12 = 17;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100FCC330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100FCEB8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100FCC364(uint64_t a1)
{
  v2 = sub_100FCE8E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCC3A0(uint64_t a1)
{
  v2 = sub_100FCE8E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FCC430@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v110 = a2;
  v111 = a3;
  v109 = a4;
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v117 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v122 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v7 = __chkstk_darwin(v125);
  v116 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v124 = (&v106 - v10);
  __chkstk_darwin(v9);
  v126 = (&v106 - v11);
  v12 = a1[16];
  v163 = a1[17];
  v13 = a1[18];
  v143 = v163;
  v144 = v13;
  v161 = a1[2];
  v162 = v13;
  v145 = v161;
  v14 = *(a1 + 120);
  v159 = *(a1 + 136);
  v160 = v14;
  v141 = *(a1 + 136);
  v142 = v14;
  v140 = *(a1 + 160);
  v139 = *(a1 + 19);
  v156 = v12;
  sub_1001022C4(&v163, &v155);
  sub_1001022C4(&v162, &v155);
  sub_1000D2A70(&v161, &v155, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v160, &v155);
  sub_1001022C4(&v159, &v155);
  sub_1000E0A3C();
  v15 = DataProtocol.intValue.getter();
  v16 = *(a1 + 21);
  v17 = *(a1 + 22);
  v112 = a1;
  v107 = v15;
  v108 = v16;
  v157 = v17;
  v158 = v16;
  sub_1000D2A70(&v158, &v156, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v157, &v156, &qword_1016AAA28, &unk_1013BD990);
  v18 = sub_100908488(_swiftEmptyArrayStorage);
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  v118 = v17;

  v24 = 0;
  v123 = 0;
  v114 = v23;
  v115 = v17 + 64;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_8:
      v26 = __clz(__rbit64(v22)) | (v25 << 6);
      v27 = (*(v118 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v117 + 72);
      v31 = v126;
      sub_1000E180C(*(v118 + 56) + v30 * v26, v126 + *(v125 + 48));
      *v31 = v29;
      v31[1] = v28;
      v32 = v31;
      v33 = v124;
      sub_1000D2A70(v32, v124, &qword_101696E38, &qword_1013D8510);
      v34 = *v33;
      v35 = v33[1];
      *&v156 = v34;
      *(&v156 + 1) = v35;
      v36 = v35 >> 62;
      v121 = v34;
      if ((v35 >> 62) <= 1)
      {
        break;
      }

      v37 = v18;
      if (v36 == 2)
      {
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        v38 = v39 - v40;
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v34, v35);
        goto LABEL_19;
      }

      v38 = 0;
LABEL_19:
      v41 = 20 - v38;
      if (__OFSUB__(20, v38))
      {
        goto LABEL_57;
      }

      v119 = v30;
      if (v41)
      {
        if (v41 <= 14)
        {
          if (v41 < 0)
          {
            goto LABEL_60;
          }

          v46 = v113 & 0xF00000000000000 | ((20 - v38) << 48);
          sub_100017D5C(v29, v28);
          v45 = v37;

          v43 = 0;
          v113 = v46;
          v44 = v46;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          sub_100017D5C(v29, v28);

          v42 = __DataStorage.init(length:)();
          if (v41 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v43 = swift_allocObject();
            *(v43 + 16) = 0;
            *(v43 + 24) = v41;
            v44 = v42 | 0x8000000000000000;
          }

          else
          {
            v43 = v41 << 32;
            v44 = v42 | 0x4000000000000000;
          }

          v45 = v37;
        }
      }

      else
      {
        sub_100017D5C(v29, v28);
        v45 = v37;

        v43 = 0;
        v44 = 0xC000000000000000;
      }

      v47 = v123;
      v48 = v125;
      v120 = *(v125 + 48);
      *&v155 = v43;
      *(&v155 + 1) = v44;
      sub_100776394(&v155, 0);
      v123 = v47;
      v49 = v155;
      Data.append(_:)();
      sub_100016590(v121, v35);
      sub_100016590(v49, *(&v49 + 1));
      v50 = v156;
      v51 = Data.base64EncodedString(options:)(0);
      sub_100016590(v50, *(&v50 + 1));
      sub_1000E1870(v124 + v120);
      v52 = v116;
      sub_1000D2A70(v126, v116, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v52, *(v52 + 8));
      sub_100837460(v52 + *(v48 + 48), v122);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v156 = v45;
      v54 = sub_100771D58(v51._countAndFlagsBits, v51._object);
      v56 = *(v45 + 16);
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_58;
      }

      v60 = v55;
      if (*(v45 + 24) >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = v54;
          sub_1010064AC();
          v54 = v67;
        }
      }

      else
      {
        sub_100FE8E54(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_100771D58(v51._countAndFlagsBits, v51._object);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_64;
        }
      }

      v19 = v115;
      v22 &= v22 - 1;
      if (v60)
      {
        v62 = v54;

        v63 = v156;
        sub_1008374C4(v122, *(v156 + 56) + v62 * v119);

        sub_10000B3A8(v126, &qword_101696E38, &qword_1013D8510);
        v24 = v25;
        v18 = v63;
        v23 = v114;
        if (!v22)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v64 = v156;
        *(v156 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        *(v64[6] + 16 * v54) = v51;
        sub_100837460(v122, v64[7] + v54 * v119);

        sub_10000B3A8(v126, &qword_101696E38, &qword_1013D8510);
        v65 = v64[2];
        v58 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v58)
        {
          goto LABEL_59;
        }

        v64[2] = v66;
        v24 = v25;
        v18 = v64;
        v23 = v114;
        if (!v22)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v36)
    {
      v37 = v18;
      v38 = BYTE6(v35);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_61;
    }

    v37 = v18;
    v38 = HIDWORD(v34) - v34;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
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
      goto LABEL_63;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  sub_10000B3A8(&v157, &qword_1016AAA28, &unk_1013BD990);
  v68 = v112;
  v69 = *(v112 + 23);
  v138 = 0;
  v70 = v112[12];
  v155 = v112[13];
  v156 = v70;
  *&v137[7] = v70;
  v71 = v112[15];
  v154 = v112[14];
  v135 = v154;
  v136 = v155;
  v134 = *(v112 + 104);
  v152 = v71;
  v153 = v134;
  v73 = *v112;
  v72 = v112[1];
  v132 = v71;
  v133 = v72;
  v74 = v112[1];
  v150 = v73;
  v151 = v74;
  v130 = *(v112 + 88);
  v131 = v73;
  v148 = *(v112 + 56);
  v149 = v130;
  v128 = *(v112 + 72);
  v129 = v148;
  v75 = *(v112 + 41);
  v146 = v112[19];
  v147 = v128;
  if (v75 >> 60 == 15)
  {
    sub_1001022C4(&v156, v127);
    sub_1001022C4(&v155, v127);
    sub_1001022C4(&v154, v127);
    sub_1001022C4(&v153, v127);
    sub_1001022C4(&v152, v127);
    sub_1001022C4(&v151, v127);
    sub_1001022C4(&v150, v127);
    sub_1000D2A70(&v149, v127, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v148, v127, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v147, v127, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v146, v127, &qword_1016A0AC0, &unk_1013926A0);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
LABEL_55:
    v95 = v138;
    v96 = v144;
    v97 = v109;
    *v109 = v143;
    v97[1] = v96;
    v97[2] = v145;
    *(v97 + 6) = 0;
    v98 = v141;
    *(v97 + 56) = v142;
    *(v97 + 72) = v98;
    v99 = v139;
    *(v97 + 11) = v107;
    *(v97 + 12) = v99;
    *(v97 + 104) = v140;
    *(v97 + 14) = v108;
    *(v97 + 15) = v18;
    *(v97 + 16) = v69;
    *(v97 + 136) = v95;
    v100 = v136;
    *(v97 + 137) = *v137;
    *(v97 + 19) = *&v137[15];
    v101 = v135;
    v97[10] = v100;
    v97[11] = v101;
    v102 = v133;
    v97[12] = v134;
    v97[13] = v102;
    v103 = v131;
    v97[14] = v132;
    v97[15] = v103;
    v104 = v129;
    v97[16] = v130;
    v97[17] = v104;
    v97[18] = v128;
    *(v97 + 38) = 0x302E302E33;
    *(v97 + 39) = 0xE500000000000000;
    v97[20] = v68[19];
    *(v97 + 42) = v77;
    *(v97 + 43) = v78;
    *(v97 + 44) = v79;
    *(v97 + 45) = v80;
    v105 = v111;
    *(v97 + 46) = v110;
    *(v97 + 47) = v105;
    return result;
  }

  v81 = v18;
  v82 = *(v112 + 40);
  sub_1001022C4(&v156, v127);
  sub_1001022C4(&v155, v127);
  sub_1001022C4(&v154, v127);
  sub_1001022C4(&v153, v127);
  sub_1001022C4(&v152, v127);
  sub_1001022C4(&v151, v127);
  sub_1001022C4(&v150, v127);
  sub_1000D2A70(&v149, v127, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v148, v127, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v147, v127, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v146, v127, &qword_1016A0AC0, &unk_1013926A0);
  v83 = sub_100313B54(v82, v75);
  v85 = v84;
  v77 = Data.hexString.getter();
  v78 = v86;
  sub_100016590(v83, v85);
  v87 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v87 != 2)
    {
LABEL_54:
      v91 = Data.subdata(in:)();
      v93 = v92;
      v79 = Data.hexString.getter();
      v80 = v94;
      result = sub_100016590(v91, v93);
      v18 = v81;
      goto LABEL_55;
    }

    v89 = *(v82 + 16);
    v88 = *(v82 + 24);
    v58 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v58)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v90 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v87)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v90) = HIDWORD(v82) - v82;
  if (!__OFSUB__(HIDWORD(v82), v82))
  {
    v90 = v90;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}