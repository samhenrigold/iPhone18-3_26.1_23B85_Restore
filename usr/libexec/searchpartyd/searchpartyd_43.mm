uint64_t sub_1004C69A4()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1004C6E48;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v3 = sub_1004C6AD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C6AD0()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v1(*(v0 + 184), *(v0 + 88), v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  if (v7)
  {
    v26 = v6;
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136446979;
    *(v12 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v27);
    *(v12 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v8, v11);
    v17 = sub_1000136BC(v13, v15, &v27);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v16(v9, v11);
    v21 = sub_1000136BC(v18, v20, &v27);

    *(v12 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v5, v26, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v9, v11);
    v22(v8, v11);
  }

  (*(v0 + 64))(0);

  v23 = *(v0 + 128);

  sub_1004E4A04(v23, type metadata accessor for AccessoryCommand);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1004C6E48()
{
  v35 = v0;
  v1 = v0[39];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[10];
  v1(v0[21], v0[11], v3);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v33 = v6;
    v7 = v0[21];
    v31 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v10 = 136447235;
    *(v10 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v34);
    *(v10 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_1000136BC(v11, v13, &v34);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v14(v31, v9);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v10 + 34) = v19;
    *(v10 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 44) = v20;
    *v32 = v20;
    _os_log_impl(&_mh_execute_header, v5, v33, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s failed with error: %{public}@!", v10, 0x34u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[17];
    v24 = v0[18];

    v25 = *(v24 + 8);
    v25(v22, v23);
    v25(v21, v23);
  }

  v26 = v0[47];
  v27 = v0[8];
  swift_errorRetain();
  v27(v26);

  v28 = v0[16];

  sub_1004E4A04(v28, type metadata accessor for AccessoryCommand);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1004C7264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v18;
  v8[39] = v19;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();
  v11 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v8[46] = v11;
  v8[47] = *(v11 - 8);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8[51] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8[52] = swift_task_alloc();
  v12 = type metadata accessor for WildModeAssociationRecord(0);
  v8[53] = v12;
  v8[54] = *(v12 - 8);
  v8[55] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[56] = v13;
  v14 = *(v13 - 8);
  v8[57] = v14;
  v8[58] = *(v14 + 64);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[64] = v15;
  *v15 = v8;
  v15[1] = sub_1004C7590;

  return daemon.getter();
}

uint64_t sub_1004C7590(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[65] = a1;

  v3 = swift_task_alloc();
  v2[66] = v3;
  v4 = type metadata accessor for Daemon();
  v2[67] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[68] = v6;
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1004C7770;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004C7770(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 552) = a1;
  *(v4 + 560) = v1;

  if (v1)
  {
    v5 = sub_1004C987C;
    v6 = 0;
  }

  else
  {

    v5 = sub_1004C78AC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1004C78AC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 504);
  v3 = *(v0 + 456);
  v4 = *(v0 + 448);
  v5 = *(v0 + 264);
  v6 = *(v3 + 16);
  *(v0 + 568) = v6;
  *(v0 + 576) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 712) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 584) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 592) = v10;
  *(v0 + 600) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 608) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1004C7A50;

  return unsafeBlocking<A>(context:_:)(v0 + 200, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v9, v12);
}

uint64_t sub_1004C7A50()
{

  return _swift_task_switch(sub_1004C7B68, 0, 0);
}

uint64_t sub_1004C7B68()
{
  if (v0[28])
  {
    sub_10000A748((v0 + 25), (v0 + 20));
    v1 = v0[23];
    v2 = v0[24];
    sub_1000035D0(v0 + 20, v1);
    if ((*(v2 + 152))(v1, v2))
    {
      v23 = v0[74];
      v3 = *(v0 + 712);
      v4 = v0[71];
      v5 = v0[63];
      v6 = v0[61];
      v7 = v0[58];
      v8 = v0[56];
      v24 = v0[45];
      v28 = v0[44];
      v29 = v0[43];
      v25 = v0[42];
      v26 = v0[40];
      v27 = v0[41];
      v21 = v0[37];
      v22 = v0[38];
      v19 = v0[35];
      v9 = v0[33];
      v20 = v0[34];
      v4(v5, v0[36], v8);
      v4(v6, v9, v8);
      v10 = (((v3 + 24) | v3) + v7) & ~v3;
      v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      v23(v12 + ((v3 + 24) & ~v3), v5, v8);
      v23(v12 + v10, v6, v8);
      *(v12 + v11) = v20;
      v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v13 = v21;
      v13[1] = v22;
      v0[18] = sub_1004E4EB4;
      v0[19] = v12;
      v0[14] = _NSConcreteStackBlock;
      v0[15] = 1107296256;
      v0[16] = sub_100006684;
      v0[17] = &unk_1016232F8;
      v14 = _Block_copy(v0 + 14);

      static DispatchQoS.unspecified.getter();
      v0[32] = _swiftEmptyArrayStorage;
      sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v27 + 8))(v25, v26);
      (*(v28 + 8))(v24, v29);

      sub_100007BAC(v0 + 20);

      v15 = v0[1];

      return v15();
    }

    else
    {
      v18 = swift_task_alloc();
      v0[81] = v18;
      *v18 = v0;
      v18[1] = sub_1004C921C;

      return daemon.getter();
    }
  }

  else
  {
    v17 = v0[69];
    sub_10000B3A8((v0 + 25), &qword_101696920, &unk_10138B200);

    return _swift_task_switch(sub_1004C8014, v17, 0);
  }
}

uint64_t sub_1004C8014()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 552);
  v3 = *(v0 + 504);
  v4 = *(v0 + 448);
  v5 = (*(v0 + 712) + 24) & ~*(v0 + 712);
  (*(v0 + 568))(v3, *(v0 + 264), v4);
  v6 = swift_allocObject();
  *(v0 + 616) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 624) = v7;
  *v7 = v0;
  v7[1] = sub_1004C816C;
  v8 = *(v0 + 416);
  v9 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1004E36F8, v6, v9);
}

uint64_t sub_1004C816C()
{

  if (v0)
  {

    v1 = sub_1004C88FC;
  }

  else
  {

    v1 = sub_1004C82B4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004C82B4()
{
  v47 = v0;
  v1 = v0[55];
  v2 = v0[52];
  (*(v0[54] + 56))(v2, 0, 1, v0[53]);
  sub_10002AAA4(v2, v1, type metadata accessor for WildModeAssociationRecord);
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[71];
  v4 = v0[62];
  v5 = v0[56];
  v6 = v0[33];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  v3(v4, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[62];
  v12 = v0[56];
  v13 = v0[57];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v14 = 136315651;
    *(v14 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101356F80, &v46);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v13 + 8))(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v46);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Found UT record for %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v19 = v0[55];
  if (*(v19 + *(v0[53] + 52)) == 3)
  {
    v38 = v0[74];
    v20 = *(v0 + 712);
    v21 = v0[71];
    v22 = v0[63];
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[56];
    v39 = v0[45];
    v44 = v0[44];
    v45 = v0[43];
    v40 = v0[42];
    v41 = v0[40];
    v42 = v0[41];
    v36 = v0[37];
    v37 = v0[38];
    v34 = v0[35];
    v43 = v0[55];
    v26 = v0[33];
    v35 = v0[34];
    v21(v22, v0[36], v25);
    v21(v23, v26, v25);
    v27 = (((v20 + 24) | v20) + v24) & ~v20;
    v28 = (v24 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v34;
    v38(v29 + ((v20 + 24) & ~v20), v22, v25);
    v38(v29 + v27, v23, v25);
    *(v29 + v28) = v35;
    v30 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v36;
    v30[1] = v37;
    v0[12] = sub_1004E3728;
    v0[13] = v29;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100006684;
    v0[11] = &unk_1016232A8;
    v31 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[31] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v42 + 8))(v40, v41);
    (*(v44 + 8))(v39, v45);
    sub_1004E4A04(v43, type metadata accessor for WildModeAssociationRecord);
  }

  else
  {
    sub_1004CA2D0(v0[36], v0[33], v0[34], v0[37], v0[38]);

    sub_1004E4A04(v19, type metadata accessor for WildModeAssociationRecord);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004C88FC()
{
  v1 = v0[69];
  v2 = v0[52];
  (*(v0[54] + 56))(v2, 1, 1, v0[53]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_1004C899C, v1, 0);
}

uint64_t sub_1004C899C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 552);
  v3 = *(v0 + 504);
  v4 = *(v0 + 448);
  v5 = (*(v0 + 712) + 24) & ~*(v0 + 712);
  (*(v0 + 568))(v3, *(v0 + 264), v4);
  v6 = swift_allocObject();
  *(v0 + 632) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 640) = v7;
  *v7 = v0;
  v7[1] = sub_1004C8AF4;
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3710, v6, v9);
}

uint64_t sub_1004C8AF4()
{

  return _swift_task_switch(sub_1004C8C0C, 0, 0);
}

uint64_t sub_1004C8C0C()
{
  v45 = v0;
  v1 = v0[51];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  }

  else
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v3 = v0[71];
    v4 = v0[60];
    v5 = v0[56];
    v6 = v0[33];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C430);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[60];
    v13 = v0[56];
    v12 = v0[57];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101356F80, &v44);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v44);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Checking if we have a beacon group for %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v37 = v0[74];
    v19 = *(v0 + 712);
    v20 = v0[71];
    v21 = v0[63];
    v22 = v0[61];
    v23 = v0[58];
    v24 = v0[56];
    v38 = v0[45];
    v42 = v0[44];
    v43 = v0[43];
    v39 = v0[42];
    v40 = v0[40];
    v41 = v0[41];
    v35 = v0[37];
    v36 = v0[38];
    v33 = v0[35];
    v25 = v0[33];
    v34 = v0[34];
    v20(v21, v0[36], v24);
    v20(v22, v25, v24);
    v26 = (((v19 + 24) | v19) + v23) & ~v19;
    v27 = (v23 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 16) = v33;
    v37(v28 + ((v19 + 24) & ~v19), v21, v24);
    v37(v28 + v26, v22, v24);
    *(v28 + v27) = v34;
    v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v29 = v35;
    v29[1] = v36;
    v0[6] = sub_1004E4EB4;
    v0[7] = v28;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101623258;
    v30 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v41 + 8))(v39, v40);
    (*(v42 + 8))(v38, v43);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1004C921C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 656) = a1;

  v5 = swift_task_alloc();
  *(v3 + 664) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_1004DB51C(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_1004C93D0;
  v8 = *(v2 + 544);
  v9 = *(v2 + 536);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004C93D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[84] = a1;
  v3[85] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004C9BE4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[86] = v5;
    *v5 = v4;
    v5[1] = sub_1004C9584;
    v6 = v3[33];

    return sub_100028F54(v6);
  }
}

uint64_t sub_1004C9584(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v4 = sub_1004C9F54;
  }

  else
  {
    v4 = sub_1004C969C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C969C()
{
  v1 = v0[87];
  if (*(v1 + 16))
  {
    v2 = v0[48];
    v3 = v0[49];
    v4 = v0[46];
    v5 = *(v0[47] + 80);
    sub_1004E46C0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for KeyGenerationBeaconInfo);

    sub_10002AAA4(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
    LODWORD(v2) = *(v3 + *(v4 + 28));
    sub_1004E4A04(v3, type metadata accessor for KeyGenerationBeaconInfo);
    v6 = v0[34];
    if (v2 == 3)
    {
      if (v6 == 1)
      {
        v6 = 5;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {

    v6 = v0[34];
  }

  sub_1004CA2D0(v0[36], v0[33], v6, v0[37], v0[38]);

  sub_100007BAC(v0 + 20);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004C987C()
{
  v25 = v0;

  v1 = v0[70];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[33];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[37];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004C9BE4()
{
  v25 = v0;

  sub_100007BAC(v0 + 20);
  v1 = v0[85];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[33];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[37];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004C9F54()
{
  v25 = v0;

  sub_100007BAC(v0 + 20);
  v1 = v0[88];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[33];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[37];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004CA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v57 = a4;
  v68 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v59 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UUID();
  v54 = *(v55 - 8);
  v11 = *(v54 + 64);
  v12 = __chkstk_darwin(v55);
  v65 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v47 - v13;
  LODWORD(v53) = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v52 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138B360;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v19 = UUID.uuidString.getter();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;
  v61 = v9;
  v56 = a3;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v21 = 0x8000000101357040;
        v22 = 0xD000000000000010;
        goto LABEL_18;
      case 4:
        v21 = 0xEF64656D7269666ELL;
        v22 = 0x6F4365756575712ELL;
        goto LABEL_18;
      case 5:
        v21 = 0xEE0074726F685367;
        goto LABEL_12;
    }

LABEL_15:
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    goto LABEL_18;
  }

  if (!a3)
  {
    v21 = 0xE800000000000000;
    v22 = 0x746C75616665642ELL;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v21 = 0xE800000000000000;
    v22 = 0x676E69676E61722ELL;
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    goto LABEL_15;
  }

  v21 = 0xE900000000000067;
LABEL_12:
  v22 = 0x6E696B636172742ELL;
LABEL_18:
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v18;
  *(v14 + 112) = v22;
  *(v14 + 120) = v21;
  os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v52, "#Durian: Command playSound commandIdentifier: %{public}@ beaconIdentifier: %{mask.hash}@ context: %@", 100, 2, v14);

  v23 = v54;
  v24 = *(v54 + 16);
  v53 = v24;
  v25 = v55;
  v24(v64, a2, v55);
  v24(v65, v68, v25);
  v26 = *(v23 + 80);
  v51 = a2;
  v27 = (v26 + 24) & ~v26;
  v50 = v27;
  v28 = (v11 + v26 + v27) & ~v26;
  v49 = v28;
  v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v66;
  v31 = *(v23 + 32);
  v32 = v64;
  v31(v30 + v27, v64, v25);
  v33 = v65;
  v31(v30 + v28, v65, v25);
  v52 = v30;
  *(v30 + v29) = v56;
  v34 = v29;
  v35 = (v30 + v48);
  v37 = v66;
  v36 = v67;
  *v35 = v57;
  v35[1] = v36;
  v57 = *(v37 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v38 = v53;
  v53(v32, v51, v25);
  v38(v33, v68, v25);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v31(v39 + v50, v32, v25);
  v31(v39 + v49, v33, v25);
  v40 = (v39 + v34);
  v41 = v52;
  *v40 = sub_1004E3900;
  v40[1] = v41;
  aBlock[4] = sub_1004E39B0;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623370;
  v42 = _Block_copy(aBlock);
  swift_retain_n();

  v43 = v58;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v44 = v60;
  v45 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);

  (*(v62 + 8))(v44, v45);
  (*(v59 + 8))(v43, v61);
}

uint64_t sub_1004CAA2C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v8 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager];
  (*(v16 + 16))(v14, a2);
  v17 = type metadata accessor for TagCommandManager();
  v38 = v17;
  v39 = &off_101637F28;
  v37[0] = v15;
  type metadata accessor for SoundPlaybackCoordinator(0);
  v18 = swift_allocObject();
  v19 = sub_10015049C(v37, v17);
  __chkstk_darwin(v19);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = v15;
  v25 = sub_1004DB088(v23, v14, v18);
  sub_100007BAC(v37);
  v38 = type metadata accessor for BeaconManagerService(0);
  v39 = &off_101622B68;
  v37[0] = a1;
  v34 = v37;
  v35 = v25;

  OS_dispatch_queue.sync<A>(execute:)();
  (*(v9 + 8))(v11, v8);
  sub_100007BAC(v37);

  sub_1006FF188(a2, a1, v25);

  v26 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *&a1[v26];
  *&a1[v26] = 0x8000000000000000;
  sub_100FFDEE0(v25, 0, 0, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v26] = v36;
  swift_endAccess();
  v28 = swift_allocObject();
  *(v28 + 16) = v30;
  *(v28 + 24) = v31;

  sub_100B7C35C(v32, v33, sub_1004E3A3C, v28);
}

uint64_t sub_1004CADEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "#Durian: Command playSound completed with error (%@)", 52, 2, v15);

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = v26;
  v20[3] = v21;
  v20[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623460;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v30;
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v8, v29);
}

uint64_t sub_1004CB28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  sub_100023184(a2, (&v26 - v11));
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = sub_10000B3A8(v12, &unk_1016C7C90, &qword_1013BB4B0);
  if (v14 == 1)
  {
    v16 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
    v15 = swift_beginAccess();
    v17 = *(a1 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1000210EC(a2);
      if (v19)
      {
        v20 = *(v17 + 56) + 24 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        sub_1004E39C8(*v20, v22, v23);

        if ((v23 & 1) == 0)
        {
          v25 = swift_allocObject();
          v25[2] = a1;
          v25[3] = a4;
          v25[4] = a5;

          sub_100B7C9F4(a3, sub_1004E3A14, v25);

          return sub_1001E61D8(v21, v22, 0);
        }

        v15 = sub_1001E61D8(v21, v22, 1);
      }

      else
      {
      }
    }
  }

  return a4(v15);
}

uint64_t sub_1004CB4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  aBlock[4] = sub_10013A884;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016233E8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1004CB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v60 = a3;
  v53 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v64 = &v47 - v6;
  v58 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v58);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v63 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v56 = &v47 - v17;
  v54 = v18;
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B380);
  v22 = *(v13 + 16);
  v59 = a2;
  v49 = v22;
  v22(v20, a2, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v47 = v12;
  v48 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v26 = 136315651;
    *(v26 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101357150, v65);
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v13 + 8))(v20, v12);
    v30 = sub_1000136BC(v27, v29, v65);

    *(v26 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s for %{private,mask.hash}s.", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v20, v12);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v50 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v51);
  static DispatchQoS.unspecified.getter();
  v65[0] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v58 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v64, 1, 1, v31);
  v32 = v56;
  v33 = v47;
  v34 = v49;
  v49(v56, v59, v47);
  v34(v63, v53, v33);
  v35 = v48;
  v36 = *(v48 + 80);
  v37 = (v36 + 32) & ~v36;
  v38 = (v54 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v36 + v39 + 8) & ~v36;
  v41 = (v54 + 7 + v40) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v43 = *(v35 + 32);
  v43(v42 + v37, v32, v33);
  *(v42 + v38) = v58;
  *(v42 + v39) = v61;
  v43(v42 + v40, v63, v33);
  v44 = (v42 + v41);
  v45 = v62;
  *v44 = v60;
  v44[1] = v45;

  sub_10025EDD4(0, 0, v64, &unk_1013AAFF8, v42);
}

uint64_t sub_1004CBE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v16;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8[49] = swift_task_alloc();
  v8[50] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8[51] = swift_task_alloc();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[52] = v9;
  v8[53] = *(v9 - 8);
  v8[54] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[55] = v10;
  v8[56] = *(v10 - 8);
  v8[57] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[58] = v11;
  v12 = *(v11 - 8);
  v8[59] = v12;
  v8[60] = *(v12 + 64);
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[64] = v13;
  *v13 = v8;
  v13[1] = sub_1004CC0D4;

  return daemon.getter();
}

uint64_t sub_1004CC0D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 520) = a1;

  v3 = swift_task_alloc();
  *(v2 + 528) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1004CC2B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004CC2B0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 536) = a1;
  *(v4 + 544) = v1;

  if (v1)
  {
    v5 = sub_1004CD938;
    v6 = 0;
  }

  else
  {

    v5 = sub_1004CC3EC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1004CC3EC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v5 = *(v0 + 344);
  v6 = *(v3 + 16);
  *(v0 + 552) = v6;
  *(v0 + 560) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 640) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 568) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 576) = v10;
  *(v0 + 584) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 592) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1004CC590;

  return unsafeBlocking<A>(context:_:)(v0 + 160, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v12);
}

uint64_t sub_1004CC590()
{

  return _swift_task_switch(sub_1004CC6A8, 0, 0);
}

uint64_t sub_1004CC6A8()
{
  sub_1000D2A70((v0 + 10), (v0 + 15), &qword_101696920, &unk_10138B200);
  if (!*(v0 + 33))
  {
    sub_10000B3A8((v0 + 15), &qword_101696920, &unk_10138B200);
    goto LABEL_5;
  }

  sub_10000A748(v0 + 15, v0 + 200);
  v1 = *(v0 + 28);
  v2 = *(v0 + 29);
  sub_1000035D0(v0 + 25, v1);
  if ((*(v2 + 152))(v1, v2))
  {
    sub_100007BAC(v0 + 25);
LABEL_5:
    v3 = *(v0 + 67);

    return _swift_task_switch(sub_1004CCAC8, v3, 0);
  }

  v20 = *(v0 + 72);
  v4 = *(v0 + 640);
  v5 = *(v0 + 69);
  v7 = *(v0 + 62);
  v6 = *(v0 + 63);
  v8 = *(v0 + 60);
  v9 = *(v0 + 58);
  v21 = *(v0 + 57);
  v25 = *(v0 + 56);
  v26 = *(v0 + 55);
  v22 = *(v0 + 54);
  v23 = *(v0 + 52);
  v18 = *(v0 + 47);
  v19 = *(v0 + 48);
  v17 = *(v0 + 45);
  v10 = *(v0 + 43);
  v24 = *(v0 + 53);
  v5(v6, *(v0 + 46), v9);
  v5(v7, v10, v9);
  v11 = (((v4 + 24) | v4) + v8) & ~v4;
  v12 = swift_allocObject();
  *(v12 + 16) = v17;
  v20(v12 + ((v4 + 24) & ~v4), v6, v9);
  v20(v12 + v11, v7, v9);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v18;
  v13[1] = v19;
  *(v0 + 18) = sub_1004E3C74;
  *(v0 + 19) = v12;
  *(v0 + 14) = _NSConcreteStackBlock;
  *(v0 + 15) = 1107296256;
  *(v0 + 16) = sub_100006684;
  *(v0 + 17) = &unk_1016235F0;
  v14 = _Block_copy(v0 + 7);

  static DispatchQoS.unspecified.getter();
  *(v0 + 42) = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v24 + 8))(v22, v23);
  (*(v25 + 8))(v21, v26);
  sub_10000B3A8((v0 + 10), &qword_101696920, &unk_10138B200);

  sub_100007BAC(v0 + 25);

  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_1004CCAC8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 536);
  v3 = *(v0 + 504);
  v4 = *(v0 + 464);
  v5 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 552))(v3, *(v0 + 344), v4);
  v6 = swift_allocObject();
  *(v0 + 600) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_1004CCC20;
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F58, v6, v9);
}

uint64_t sub_1004CCC20()
{

  return _swift_task_switch(sub_1004CCD38, 0, 0);
}

uint64_t sub_1004CCD38()
{
  v1 = v0[51];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  if (v3 != 1)
  {
LABEL_4:
    v24 = v0[72];
    v7 = *(v0 + 640);
    v8 = v0[69];
    v10 = v0[62];
    v9 = v0[63];
    v11 = v0[60];
    v12 = v0[58];
    v25 = v0[57];
    v29 = v0[56];
    v30 = v0[55];
    v26 = v0[54];
    v27 = v0[52];
    v22 = v0[47];
    v23 = v0[48];
    v21 = v0[45];
    v13 = v0[43];
    v28 = v0[53];
    v8(v9, v0[46], v12);
    v8(v10, v13, v12);
    v14 = (((v7 + 24) | v7) + v11) & ~v7;
    v15 = swift_allocObject();
    *(v15 + 16) = v21;
    v24(v15 + ((v7 + 24) & ~v7), v9, v12);
    v24(v15 + v14, v10, v12);
    v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v22;
    v16[1] = v23;
    v0[12] = sub_1004E3BB4;
    v0[13] = v15;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100006684;
    v0[11] = &unk_1016235A0;
    v17 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[41] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v28 + 8))(v26, v27);
    (*(v29 + 8))(v25, v30);
    sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);

    v18 = v0[1];

    return v18();
  }

  sub_1000D2A70((v0 + 20), (v0 + 35), &qword_101696920, &unk_10138B200);
  v4 = v0[38];
  if (v4)
  {
    v5 = v0[39];
    sub_1000035D0(v0 + 35, v0[38]);
    v6 = (*(v5 + 152))(v4, v5);
    sub_100007BAC(v0 + 35);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_10000B3A8((v0 + 35), &qword_101696920, &unk_10138B200);
  }

  v20 = v0[67];

  return _swift_task_switch(sub_1004CD1A8, v20, 0);
}

uint64_t sub_1004CD1A8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 536);
  v3 = *(v0 + 504);
  v4 = *(v0 + 464);
  v5 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 552))(v3, *(v0 + 344), v4);
  v6 = swift_allocObject();
  *(v0 + 616) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 624) = v7;
  v8 = type metadata accessor for WildModeAssociationRecord(0);
  *(v0 + 632) = v8;
  *v7 = v0;
  v7[1] = sub_1004CD310;
  v9 = *(v0 + 392);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F60, v6, v8);
}

uint64_t sub_1004CD310()
{

  if (v0)
  {

    v1 = sub_1004CD80C;
  }

  else
  {

    v1 = sub_1004CD458;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004CD458()
{
  v19 = v0[72];
  v1 = *(v0 + 640);
  v2 = v0[69];
  v4 = v0[62];
  v3 = v0[63];
  v5 = v0[60];
  v6 = v0[58];
  v20 = v0[57];
  v24 = v0[56];
  v25 = v0[55];
  v21 = v0[54];
  v23 = v0[53];
  v7 = v0[49];
  v17 = v0[47];
  v18 = v0[48];
  v14 = v0[46];
  v22 = v0[52];
  v15 = v0[43];
  v16 = v0[45];
  (*(*(v0[79] - 8) + 56))(v7, 0, 1);
  sub_10000B3A8(v7, &unk_1016C7C90, &qword_1013BB4B0);
  v2(v3, v14, v6);
  v2(v4, v15, v6);
  v8 = (((v1 + 24) | v1) + v5) & ~v1;
  v9 = swift_allocObject();
  *(v9 + 16) = v16;
  v19(v9 + ((v1 + 24) & ~v1), v3, v6);
  v19(v9 + v8, v4, v6);
  v10 = (v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v17;
  v10[1] = v18;
  v0[6] = sub_1004E4EB8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101623550;
  v11 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[40] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v23 + 8))(v21, v22);
  (*(v24 + 8))(v20, v25);
  sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004CD80C()
{
  v1 = v0[79];
  v2 = v0[49];

  sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);
  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004CD938()
{
  v26 = v0;

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[43];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C430);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[61];
    v10 = v0[58];
    v9 = v0[59];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315907;
    *(v11 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101357150, &v25);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v11 + 24) = v16;
    *(v11 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s failed %{private,mask.hash}s, %{public}@.", v11, 0x2Au);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[61];
    v19 = v0[58];
    v20 = v0[59];

    (*(v20 + 8))(v18, v19);
  }

  v21 = v0[68];
  v22 = v0[47];
  swift_errorRetain();
  v22(v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004CDCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v44 = a2;
  v45 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for UUID();
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  v10 = __chkstk_darwin(v43);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v20 = v44;
  v21 = UUID.uuidString.getter();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "#Durian: Command stopSound commandIdentifier: %@ beaconIdentifier: %@", 69, 2, v15);

  v23 = v46;
  v42 = *(v46 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v24 = v41;
  v25 = *(v41 + 16);
  v26 = v43;
  v25(v12, v20, v43);
  v27 = v40;
  v25(v40, a1, v26);
  v28 = *(v24 + 80);
  v29 = (v28 + 24) & ~v28;
  v30 = (v9 + v28 + v29) & ~v28;
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  v32 = *(v24 + 32);
  v32(v31 + v29, v12, v26);
  v32(v31 + v30, v27, v26);
  v33 = (v31 + ((v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v34 = v47;
  *v33 = v45;
  v33[1] = v34;
  aBlock[4] = sub_1004E3E1C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623640;
  v35 = _Block_copy(aBlock);

  v36 = v48;
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v37 = v51;
  v38 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v52 + 8))(v37, v38);
  (*(v49 + 8))(v36, v50);
}

uint64_t sub_1004CE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v42 = a3;
  v7 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  v39 = a2;
  if (v16)
  {

    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = *(v15 + 56) + 24 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      sub_1004E39C8(*v19, v21, v22);

      if ((v22 & 1) == 0)
      {
        sub_100B7C9F4(v42, v40, v41);
        return sub_1001E61D8(v20, v21, 0);
      }

      sub_1001E61D8(v20, v21, 1);
      a2 = v39;
    }

    else
    {
    }
  }

  v23 = *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  (*(v11 + 16))(v13, a2, v10);
  v24 = type metadata accessor for TagCommandManager();
  v45 = v24;
  v46 = &off_101637F28;
  v44[0] = v23;
  type metadata accessor for SoundPlaybackCoordinator(0);
  v25 = swift_allocObject();
  v26 = sub_10015049C(v44, v24);
  __chkstk_darwin(v26);
  v28 = (&v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v31 = v23;
  v32 = sub_1004DB088(v30, v13, v25);
  sub_100007BAC(v44);
  v45 = type metadata accessor for BeaconManagerService(0);
  v46 = &off_101622B68;
  v44[0] = a1;
  __chkstk_darwin(v45);
  *(&v37 - 2) = v44;
  *(&v37 - 1) = v32;

  v33 = v38;
  OS_dispatch_queue.sync<A>(execute:)();
  (*(v37 + 8))(v9, v33);
  sub_100007BAC(v44);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + v14);
  *(a1 + v14) = 0x8000000000000000;
  sub_100FFDEE0(v32, 0, 0, v39, isUniquelyReferenced_nonNull_native);
  *(a1 + v14) = v43;
  swift_endAccess();
  v35 = swift_allocObject();
  *(v35 + 16) = v40;
  *(v35 + 24) = v41;

  sub_100B7C9F4(v42, sub_1004E3EEC, v35);
}

uint64_t sub_1004CE664(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "#Durian: Command stopSound completed with error (%@)", 52, 2, v6);

  return a2(a1);
}

uint64_t sub_1004CE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for AccessoryCommand(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[25] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[26] = v6;
  *v6 = v3;
  v6[1] = sub_1004CE98C;

  return daemon.getter();
}

uint64_t sub_1004CE98C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[27] = a1;

  v3 = swift_task_alloc();
  v2[28] = v3;
  v4 = type metadata accessor for Daemon();
  v2[29] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1004CEB6C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004CEB6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1004CED18, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 256) = v5;
    *v5 = v4;
    v5[1] = sub_1004CEEE4;

    return daemon.getter();
  }
}

uint64_t sub_1004CED18()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to unpair!", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_1003FD838();
  swift_allocError();
  *v6 = 11;
  v5();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004CEEE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 264) = a1;

  v5 = swift_task_alloc();
  *(v3 + 272) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1004CF098;
  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004CF098(uint64_t a1)
{
  *(*v2 + 280) = a1;

  if (v1)
  {

    v4 = sub_1004CF1F0;
    v5 = 0;
  }

  else
  {

    v4 = sub_1004CF3C8;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004CF1F0()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor to unpair!", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_1003FD838();
  swift_allocError();
  *v6 = 11;
  v5();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004CF3C8()
{
  v1 = v0[35];
  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[38] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[39] = v9;
  v0[40] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_1004CF544;
  v12 = v0[24];
  v11 = v0[25];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1004E41BC, v8, v12);
}

uint64_t sub_1004CF544()
{

  return _swift_task_switch(sub_1004CF65C, 0, 0);
}

uint64_t sub_1004CF65C()
{
  v49 = v0;
  v1 = v0[25];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[25];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v11 = v0[36];
  v12 = v0[22];
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  (*(v14 + 56))(v15, 1, 1, v13);
  v11(v12, v17, v13);
  sub_1000D2A70(v15, v16, &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v14 + 48);
  if (v18(v16, 1, v13) == 1)
  {
    v19 = v0[16];
    v21 = v0[11];
    v20 = v0[12];
    UUID.init()();
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v18(v21, 1, v19) != 1)
    {
      sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v22 = v0[39];
    v23 = v0[21];
    v24 = v0[16];
    v25 = v0[11];
    sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    v22(v23, v25, v24);
  }

  v26 = v0[39];
  v27 = v0[22];
  v29 = v0[15];
  v28 = v0[16];
  v30 = v0[13];
  v26(v29, v0[21], v28);
  v26(v29 + v30[5], v27, v28);
  v31 = (v29 + v30[6]);
  v31[1] = 0u;
  v31[2] = 0u;
  *v31 = 0u;
  *(v29 + v30[7]) = v3 & 1;
  *(v29 + v30[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v32 = v0[14];
  v33 = v0[15];
  v34 = type metadata accessor for Logger();
  v0[42] = sub_1000076D4(v34, qword_10177B048);
  sub_1004E46C0(v33, v32, type metadata accessor for AccessoryCommand);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[14];
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48 = v40;
    *v39 = 136446210;
    v41 = sub_1010C00BC();
    v43 = v42;
    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
    v44 = sub_1000136BC(v41, v43, &v48);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Executing unpair command: %{public}s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_1004E4A04(v38, type metadata accessor for AccessoryCommand);
  }

  v45 = swift_task_alloc();
  v0[43] = v45;
  *v45 = v0;
  v45[1] = sub_1004CFB14;
  v46 = v0[15];

  return sub_10121B780((v0 + 2), v46, 1);
}

uint64_t sub_1004CFB14()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1004CFF10;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v3 = sub_1004CFC40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004CFC40()
{
  v16 = v0;
  (*(v0 + 288))(*(v0 + 160), *(v0 + 80), *(v0 + 128));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v15);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v11 = sub_1000136BC(v8, v10, &v15);

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  (*(v0 + 64))(0);

  v12 = *(v0 + 120);

  sub_1004E4A04(v12, type metadata accessor for AccessoryCommand);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004CFF10()
{
  v22 = v0;
  (*(v0 + 288))(*(v0 + 152), *(v0 + 80), *(v0 + 128));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136446979;
    *(v6 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v21);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = sub_1000136BC(v8, v10, &v21);

    *(v6 + 24) = v11;
    *(v6 + 32) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 34) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s beaconIdentifier: %{private,mask.hash}s\nfailed with error: %{public}@!", v6, 0x2Au);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);

    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v0 + 352);
  v17 = *(v0 + 64);
  swift_errorRetain();
  v17(v16);

  v18 = *(v0 + 120);

  sub_1004E4A04(v18, type metadata accessor for AccessoryCommand);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1004D027C(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = UUID.uuidString.getter();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "#Accessory: Command updateAccessoryFirmware commandIdentifier: %@ accessoryUUID: %@", 83, 2, v5);

  if (*(v2 + 176))
  {

    v13 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C400;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v16 = UUID.uuidString.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v9;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "#Accessory - updateAccessoryFirmware called for %@", 50, 2, v15);

    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_1004D04EC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = v14;
  v59 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C430);
  v56 = *(v9 + 16);
  v57 = v9 + 16;
  v56(v16, a2, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55 = v4;
    v21 = v20;
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v17;
    v23 = a1;
    v24 = a2;
    v25 = v9;
    v27 = v26;
    (*(v25 + 8))(v16, v8);
    v28 = sub_1000136BC(v22, v27, v63);
    v9 = v25;
    a2 = v24;
    a1 = v23;
    v17 = v54;

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "#Durian: Client asking to connect to beacon with UUID - %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v53);

    v5 = v55;
  }

  else
  {

    (*(v9 + 8))(v16, v8);
  }

  v29 = v8;
  My = type metadata accessor for Feature.FindMy();
  v63[3] = My;
  v63[4] = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v31 = sub_1000280DC(v63);
  (*(*(My - 8) + 104))(v31, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v63);
  if (My)
  {
    v55 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
    v32 = v59;
    v52 = a2;
    v33 = v8;
    v34 = v56;
    v56(v59, a2, v33);
    v35 = v60;
    v34(v60, a1, v29);
    v36 = *(v9 + 80);
    v37 = (v36 + 16) & ~v36;
    v38 = (v58 + v36 + v37) & ~v36;
    v39 = (v58 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = *(v9 + 32);
    v41(v40 + v37, v32, v29);
    v41(v40 + v38, v35, v29);
    v42 = (v40 + v39);
    v43 = v62;
    *v42 = v61;
    v42[1] = v43;

    sub_100804368(v52, a1, sub_1004E3F04, v40);
  }

  else
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v17, qword_10177B048);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Connecting legacy when spPlaySoundAll is off!", v46, 2u);
    }

    sub_10089102C(a2);
    v47 = swift_allocObject();
    v48 = v61;
    v49 = v62;
    *(v47 + 16) = v61;
    *(v47 + 24) = v49;

    Future.addFailure(block:)();

    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v49;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1004D0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v43 = a4;
  v44 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v37 - v12;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C430);
  v39 = *(v8 + 16);
  v39(v14, a2, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v45 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46 = v37;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v5;
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v14, v7);
    v24 = sub_1000136BC(v20, v23, &v46);
    v8 = v21;
    v5 = v38;

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "#Durian: Client asking to disconnect from beacon with UUID - %{private,mask.hash}s", v19, 0x16u);
    sub_100007BAC(v37);

    a2 = v45;
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v38 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
  v26 = v39;
  v25 = v40;
  v39(v40, a2, v7);
  v27 = v41;
  v28 = v44;
  v26(v41, v44, v7);
  v29 = *(v8 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = (v9 + v29 + v30) & ~v29;
  v32 = swift_allocObject();
  v33 = *(v8 + 32);
  v33(v32 + v30, v25, v7);
  v33(v32 + v31, v27, v7);
  v34 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v43;
  *v34 = v42;
  v34[1] = v35;

  sub_100805628(v45, v28, sub_1004E3FEC, v32);
}

uint64_t sub_1004D0F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, const char *a6, const char *a7)
{
  v64 = a3;
  v65 = a5;
  v63 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v61 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v61 - v20;
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  v66 = a4;
  if (a1)
  {
    v62 = a6;
    swift_errorRetain();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B048);
    v25 = *(v12 + 16);
    v25(v23, v63, v11);
    v25(v21, v64, v11);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = v64;
      *v28 = 141558787;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v61 = sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v63) = v27;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v21;
      v32 = v31;
      v33 = *(v12 + 8);
      v33(v23, v11);
      v34 = sub_1000136BC(v29, v32, &v68);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2082;
      v67 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v35 = String.init<A>(describing:)();
      v37 = sub_1000136BC(v35, v36, &v68);

      *(v28 + 24) = v37;
      *(v28 + 32) = 2082;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v33(v30, v11);
      v41 = sub_1000136BC(v38, v40, &v68);

      *(v28 + 34) = v41;
      _os_log_impl(&_mh_execute_header, v26, v63, v62, v28, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v59 = *(v12 + 8);
      v59(v21, v11);
      v59(v23, v11);
    }

    swift_errorRetain();
    v66(a1);
  }

  else
  {
    v62 = a7;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177B048);
    v43 = *(v12 + 16);
    v43(v18, v63, v11);
    v43(v15, v64, v11);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v63) = v45;
      v47 = v46;
      v64 = swift_slowAlloc();
      v68 = v64;
      *v47 = 141558531;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = *(v12 + 8);
      v51(v18, v11);
      v52 = sub_1000136BC(v48, v50, &v68);

      *(v47 + 14) = v52;
      *(v47 + 22) = 2082;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v51(v15, v11);
      v56 = sub_1000136BC(v53, v55, &v68);
      v57 = v66;

      *(v47 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v44, v63, v62, v47, 0x20u);
      swift_arrayDestroy();

      return (v57)(0);
    }

    else
    {

      v60 = *(v12 + 8);
      v60(v15, v11);
      v60(v18, v11);
      return (v66)(0);
    }
  }
}

uint64_t sub_1004D15D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "#Durian: Error while connecting to beacon. Error - %@", 53, 2, v6);

  return a2(a1);
}

uint64_t sub_1004D1704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C398, "#Durian: Connection successful for beacon.", 42, 2, _swiftEmptyArrayStorage);
  return a2(0);
}

uint64_t sub_1004D17A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = sub_1004D189C;

  return daemon.getter();
}

uint64_t sub_1004D189C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_1004D1A78;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_1004D1A78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D1D98, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v4;
    v5[1] = sub_1004D1C08;
    v6 = v3[3];
    v7 = v3[2];

    return sub_10032A048(v7, v6);
  }
}

uint64_t sub_1004D1C08()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1004D2088;
  }

  else
  {
    v2 = sub_1004D1D1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D1D1C()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D1D98()
{
  v25 = v0;
  v1 = v0[13];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to enable notify when found for %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[4];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004D2088()
{
  v25 = v0;
  v1 = v0[15];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to enable notify when found for %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[4];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004D2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = sub_1004D246C;

  return daemon.getter();
}

uint64_t sub_1004D246C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_1004D2648;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_1004D2648(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D28EC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v4;
    v5[1] = sub_1004D27D8;
    v6 = v3[3];
    v7 = v3[2];

    return sub_10033205C(v7, v6);
  }
}

uint64_t sub_1004D27D8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1004D2BDC;
  }

  else
  {
    v2 = sub_1004E4EB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D28EC()
{
  v25 = v0;
  v1 = v0[13];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to disable notify when found for %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[4];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004D2BDC()
{
  v25 = v0;
  v1 = v0[15];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C430);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v22 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to disable notify when found for %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[4];
  swift_errorRetain();
  v19(v1);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004D2ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for KeySyncMetadata(0);
  v8[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[9] = v9;
  *v9 = v8;
  v9[1] = sub_1004D2F98;

  return daemon.getter();
}

uint64_t sub_1004D2F98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1004D3174;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004D3174(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_1004D360C;
  }

  else
  {

    v3 = sub_1004D32C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D32C4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  v7 = (v1 + v2[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v4;
  v8 = v2[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v1 + v8, v3, v9);
  *(v1 + v2[5]) = 1;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1004D3420;
  v11 = v0[8];

  return sub_1010CDAC4(v11);
}

uint64_t sub_1004D3420()
{
  v2 = *v1;

  v3 = *(v2 + 64);
  if (v0)
  {

    sub_1004E4A04(v3, type metadata accessor for KeySyncMetadata);
    v4 = sub_1004E4F14;
  }

  else
  {
    sub_1004E4A04(v3, type metadata accessor for KeySyncMetadata);
    v4 = sub_1004D3590;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004D3590()
{

  (*(v0 + 40))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D360C()
{
  (*(v0 + 40))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D3680(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a1;
  v6 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *a2;
  v17 = a2[1];
  result = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(a3 + *(result + 40));
  if (*(v19 + 16))
  {
    result = sub_100771E30(v16, v17);
    if (v20)
    {
      sub_1004E46C0(*(v19 + 56) + *(v7 + 72) * result, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10002AAA4(v13, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10002AAA4(v15, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v21 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v22 = v21[12];
        sub_100006654(*&v10[v21[16]], *&v10[v21[16] + 8]);
        v23 = &v10[v21[24]];
        v24 = *v23;
        v25 = v23[1];
        sub_10000B3A8(&v10[v22], &qword_1016A40D0, &unk_10138BE70);
        v26 = type metadata accessor for UUID();
        result = (*(*(v26 - 8) + 8))(v10, v26);
        if (v25)
        {
          return result;
        }
      }

      else
      {
        v27 = &v10[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
        v24 = *v27;
        v28 = v27[1];
        result = sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
        if (v28)
        {
          return result;
        }
      }

      v29 = *(v42 + 16);
      v30 = (v42 + 32);
      while (v29)
      {
        v31 = *v30++;
        --v29;
        if (v31 == v24)
        {
          v32 = sub_100519EE8(v16, v17);
          v34 = v33;
          v35 = v41;
          v36 = *v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100A5B734(0, *(v36 + 16) + 1, 1, v36);
            v36 = result;
          }

          v38 = *(v36 + 16);
          v37 = *(v36 + 24);
          if (v38 >= v37 >> 1)
          {
            result = sub_100A5B734((v37 > 1), v38 + 1, 1, v36);
            v36 = result;
          }

          *(v36 + 16) = v38 + 1;
          v39 = v36 + 16 * v38;
          *(v39 + 32) = v32;
          *(v39 + 40) = v34;
          *v35 = v36;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004D3A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v18[1] = a3;
    v22 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v9, 0);
    v10 = v22;
    v11 = a2 + 32;
    do
    {
      sub_10001F280(v11, v19);
      v13 = v20;
      v12 = v21;
      sub_1000035D0(v19, v20);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_100007BAC(v19);
      v22 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_101123D4C((v14 > 1), v15 + 1, 1);
        v10 = v22;
      }

      v10[2] = v15 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v5);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = sub_10000954C(v10);

    sub_100A4165C(v16);
  }
}

uint64_t sub_1004D3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a2)
  {
    v12 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a3 + v12);
    *(a3 + v12) = 0x8000000000000000;
    sub_100FFDEE0(a1, a2, 1, a4, isUniquelyReferenced_nonNull_native);
    *(a3 + v12) = v15;
  }

  else
  {
    (*(v9 + 16))(v11, a4);
    swift_beginAccess();
    sub_1001DF224(0, 0, 255, v11);
  }

  return swift_endAccess();
}

uint64_t sub_1004D3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1004D3E80;

  return daemon.getter();
}

uint64_t sub_1004D3E80(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_1004D405C;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_1004D405C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1004D41DC, 0, 0);
  }
}

uint64_t sub_1004D41DC()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = sub_10000954C(v5);
  v0[7] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1004D4378;

  return sub_10094DB94(v6);
}

uint64_t sub_1004D4378()
{

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_1004D4490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D44F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for SharedBeaconRecord(0);
  v4[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1004D45B4;

  return daemon.getter();
}

uint64_t sub_1004D45B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1004D4790;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004D4790(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D4AB0, 0, 0);
  }

  else
  {
    v6 = v3[2];
    v5 = v3[3];

    v7 = *(v5 + 24);
    v8 = swift_task_alloc();
    v3[10] = v8;
    *v8 = v4;
    v8[1] = sub_1004D4934;

    return sub_100191968(v6 + v7, 1);
  }
}

uint64_t sub_1004D4934()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1004D4DA0;
  }

  else
  {
    v2 = sub_1004D4A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004D4A48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D4AB0()
{
  v19 = v0;

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE40);
  sub_1004E46C0(v2, v1, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1004E4A04(v7, type metadata accessor for SharedBeaconRecord);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to remove imported share with share id %{private,mask.hash}s, error: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1004E4A04(v7, type metadata accessor for SharedBeaconRecord);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004D4DA0()
{
  v19 = v0;

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE40);
  sub_1004E46C0(v2, v1, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1004E4A04(v7, type metadata accessor for SharedBeaconRecord);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to remove imported share with share id %{private,mask.hash}s, error: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1004E4A04(v7, type metadata accessor for SharedBeaconRecord);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004D5090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v17[1] = a2;
    v21 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v8, 0);
    v9 = v21;
    v10 = a1 + 32;
    do
    {
      sub_10001F280(v10, v18);
      v12 = v19;
      v11 = v20;
      sub_1000035D0(v18, v19);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100007BAC(v18);
      v21 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_101123D4C((v13 > 1), v14 + 1, 1);
        v9 = v21;
      }

      v9[2] = v14 + 1;
      (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v15 = sub_10000954C(v9);

  sub_100A4165C(v15);
}

Swift::Int sub_1004D5278(uint64_t *a1)
{
  v2 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3200C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1004D56A8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1004D5340()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2._object = 0x8000000101356BE0;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x69446D6F7266202CLL;
  v4._object = 0xEC000000203A6B73;
  String.append(_:)(v4);
  v5 = *(v0 + 8) & 1;
  if (*(v0 + 8))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x6E6575716573202CLL;
  v9._object = 0xED0000203A736563;
  String.append(_:)(v9);
  v10 = *(v0 + 16);
  v11._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  _StringGuts.grow(_:)(71);
  v13._countAndFlagsBits = 0x6974737561687865;
  v13._object = 0xEC000000203A6576;
  String.append(_:)(v13);
  if (v5)
  {
    v14 = 0x65736C6166;
    v15 = 0xE500000000000000;
  }

  else if (*(v10 + 16) == 1)
  {
    if (*(v10 + 32) == 1)
    {

      v15 = 0xE400000000000000;
      v14 = 1702195828;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v25)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    v14 = 0x65736C6166;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._object = 0x8000000101356C00;
  v17._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v17);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x8000000101356C20;
  String.append(_:)(v19);
  if (*(v1 + 56))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + 56))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.append(_:)(v23);

  return 0;
}

Swift::Int sub_1004D56A8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconEstimatedLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004D5A38(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1004D57D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004D57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconEstimatedLocation(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1004E46C0(v23, v17, type metadata accessor for BeaconEstimatedLocation);
      sub_1004E46C0(v20, v13, type metadata accessor for BeaconEstimatedLocation);
      v24 = static Date.< infix(_:_:)();
      sub_1004E4A04(v13, type metadata accessor for BeaconEstimatedLocation);
      result = sub_1004E4A04(v17, type metadata accessor for BeaconEstimatedLocation);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10002AAA4(v23, v35, type metadata accessor for BeaconEstimatedLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AAA4(v25, v20, type metadata accessor for BeaconEstimatedLocation);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5A38(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for BeaconEstimatedLocation(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1004D639C(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1004E46C0(v110 + v24 * v23, v18, type metadata accessor for BeaconEstimatedLocation);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1004E46C0(v26, v116, type metadata accessor for BeaconEstimatedLocation);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_1004E4A04(v28, type metadata accessor for BeaconEstimatedLocation);
      result = sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1004E46C0(v30, v18, type metadata accessor for BeaconEstimatedLocation);
        v31 = v116;
        sub_1004E46C0(v5, v116, type metadata accessor for BeaconEstimatedLocation);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_1004E4A04(v31, type metadata accessor for BeaconEstimatedLocation);
        result = sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_10002AAA4(v39 + v38, v107, type metadata accessor for BeaconEstimatedLocation);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002AAA4(v107, v39 + v33, type metadata accessor for BeaconEstimatedLocation);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1004D639C(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1004E46C0(v5, v18, type metadata accessor for BeaconEstimatedLocation);
    v93 = v116;
    sub_1004E46C0(v90, v116, type metadata accessor for BeaconEstimatedLocation);
    a4 = static Date.< infix(_:_:)();
    sub_1004E4A04(v93, type metadata accessor for BeaconEstimatedLocation);
    result = sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for BeaconEstimatedLocation;
    v94 = v115;
    sub_10002AAA4(v5, v115, type metadata accessor for BeaconEstimatedLocation);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AAA4(v94, v90, type metadata accessor for BeaconEstimatedLocation);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1004D639C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for BeaconEstimatedLocation(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1004E46C0(v30, v43, type metadata accessor for BeaconEstimatedLocation);
          v32 = v44;
          sub_1004E46C0(v27, v44, type metadata accessor for BeaconEstimatedLocation);
          v33 = static Date.< infix(_:_:)();
          sub_1004E4A04(v32, type metadata accessor for BeaconEstimatedLocation);
          sub_1004E4A04(v31, type metadata accessor for BeaconEstimatedLocation);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1004E46C0(a2, v43, type metadata accessor for BeaconEstimatedLocation);
        v21 = v44;
        sub_1004E46C0(a4, v44, type metadata accessor for BeaconEstimatedLocation);
        v22 = static Date.< infix(_:_:)();
        sub_1004E4A04(v21, type metadata accessor for BeaconEstimatedLocation);
        sub_1004E4A04(v20, type metadata accessor for BeaconEstimatedLocation);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AA9C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1004D68CC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v38 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
  result = static _DictionaryStorage.copy(original:)();
  v11 = v9;
  v12 = result;
  v13 = 0;
  v41 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v35 = v15;
  v36 = result + 64;
  v37 = result;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = (*(v41 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v38 + 72) * v24;
      sub_1004E46C0(*(v41 + 56) + v28, v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100017D5C(v27, v26);
      v29 = v43;
      v39(v11);
      v43 = v29;
      if (v29)
      {
        break;
      }

      sub_1004E4A04(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      *(v36 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = v37;
      v31 = (*(v37 + 48) + 16 * v24);
      v12 = v37;
      *v31 = v27;
      v31[1] = v26;
      result = sub_10002AAA4(v7, *(v30 + 56) + v28, type metadata accessor for OwnedBeaconGroup.PairingState);
      v32 = *(v12 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      *(v12 + 16) = v34;
      v19 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    v12 = v37;

    sub_100016590(v27, v26);
    sub_1004E4A04(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    return v12;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v12;
      }

      v23 = *(v35 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v42 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v40);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50[3] = a4;
  v50[4] = a5;
  v19 = sub_1000280DC(v50);
  (*(*(a4 - 8) + 16))(v19, a2, a4);
  v43 = a3;
  v20 = *(a3 + 280);
  sub_10001F280(v50, v49);
  v21 = qword_101694920;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  v37 = qword_10177B2E8;

  v41 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);

  static DispatchQoS.unspecified.getter();
  *&v45 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v16[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v23 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v18 + v22) = v23;
  v26 = v16[11];
  v27 = type metadata accessor for BeaconObservationStore(0);
  v47 = &off_101632E88;
  v48 = &off_101613BE0;
  v46 = v27;
  v28 = v37;
  *&v45 = v37;
  type metadata accessor for MemberCircleRevokeManager();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v45, (v29 + 32));
  *(v18 + v26) = v29;
  v30 = v16[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v18 + v30) = swift_allocObject();
  *v18 = v42;
  sub_10001F280(v49, (v18 + 3));
  v31 = v16[8];

  sub_1005CB7C8(v49, v18 + v31);
  sub_100007BAC(v49);
  v18[1] = v28;
  *(v18 + v16[9]) = v41;
  *(v29 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v32 = swift_allocObject();
  v34 = v43;
  v33 = v44;
  *(v32 + 16) = v44;
  *(v32 + 24) = v34;

  sub_1005CAFE0(v33, sub_1004E2F14, v32);

  sub_1004E4A04(v18, type metadata accessor for LocationFetcher);
  return sub_100007BAC(v50);
}

void sub_1004D7164(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v124 = a4;
  v123 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v126 = &v116[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = type metadata accessor for DispatchTime();
  v118 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v120 = &v116[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v119 = &v116[-v16];
  v17 = type metadata accessor for UUID();
  v130 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v116[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v116[-v22];
  __chkstk_darwin(v21);
  v134 = &v116[-v24];
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v116[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = &_s13DefaultPolicyVN;
  v144 = sub_100111A48();
  v29 = swift_allocObject();
  v142 = v29;
  v30 = *(a2 + 48);
  *(v29 + 48) = *(a2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a2 + 64);
  *(v29 + 96) = *(a2 + 80);
  v31 = *(a2 + 16);
  *(v29 + 16) = *a2;
  *(v29 + 32) = v31;
  v129 = a5;
  v32 = *(a5 + 88);
  *v28 = v32;
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  sub_100111A9C(a2, &v139);
  v33 = v32;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v28, v25);
  if (a2)
  {
    v117 = a3;
    v34 = *(a1 + 16);
    v35 = _swiftEmptyArrayStorage;
    v128 = v34;
    if (v34)
    {
      v135[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v34, 0);
      v35 = v135[0];
      v133 = a1;
      v36 = a1 + 32;
      v37 = v34;
      do
      {
        sub_10001F280(v36, &v139);
        v39 = v140;
        v38 = v141;
        sub_1000035D0(&v139, v140);
        (*(*(*(v38 + 8) + 8) + 32))(v39);
        sub_100007BAC(&v139);
        v135[0] = v35;
        v41 = v35[2];
        v40 = v35[3];
        if (v41 >= v40 >> 1)
        {
          sub_101123D4C((v40 > 1), v41 + 1, 1);
          v35 = v135[0];
        }

        v35[2] = v41 + 1;
        (*(v130 + 32))(v35 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v41, v20, v17);
        v36 += 40;
        --v37;
      }

      while (v37);
      v34 = v128;
      a1 = v133;
    }

    v42 = sub_10000954C(v35);

    v43 = sub_100A4250C(v42, a6);

    if (v34)
    {
      v44 = 0;
      *&v127 = a1 + 32;
      v133 = v43 + 56;
      v132 = v130 + 16;
      v45 = (v130 + 8);
      v125 = _swiftEmptyArrayStorage;
      do
      {
        v131 = v44;
        sub_10001F280(v127 + 40 * v44, &v139);
        v48 = v140;
        v47 = v141;
        sub_1000035D0(&v139, v140);
        (*(*(*(v47 + 8) + 8) + 32))(v48);
        if (*(v43 + 16) && (sub_1004DB51C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v49 = dispatch thunk of Hashable._rawHashValue(seed:)(), v50 = -1 << *(v43 + 32), v51 = v49 & ~v50, ((*(v133 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
        {
          v52 = ~v50;
          v53 = *(v130 + 72);
          v54 = *(v130 + 16);
          while (1)
          {
            v54(v23, *(v43 + 48) + v53 * v51, v17);
            sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v55 = dispatch thunk of static Equatable.== infix(_:_:)();
            v56 = *v45;
            (*v45)(v23, v17);
            if (v55)
            {
              break;
            }

            v51 = (v51 + 1) & v52;
            if (((*(v133 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v56(v134, v17);
          sub_10000A748(&v139, v135);
          v57 = v125;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v57[2] + 1, 1);
            v57 = v138;
          }

          v46 = v128;
          v60 = v57[2];
          v59 = v57[3];
          if (v60 >= v59 >> 1)
          {
            sub_100025B1C((v59 > 1), v60 + 1, 1);
          }

          v61 = v136;
          v62 = v137;
          v63 = sub_10015049C(v135, v136);
          __chkstk_darwin(v63);
          v65 = &v116[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v66 + 16))(v65);
          sub_1006252D4(v60, v65, &v138, v61, v62);
          sub_100007BAC(v135);
          v125 = v138;
        }

        else
        {
LABEL_10:
          (*v45)(v134, v17);
          sub_100007BAC(&v139);
          v46 = v128;
        }

        v44 = v131 + 1;
      }

      while (v131 + 1 != v46);
    }

    else
    {
      v125 = _swiftEmptyArrayStorage;
    }

    v67 = sub_10062D878(v125);

    v69 = *(v67 + 2);
    if (v69)
    {
      v70 = 0;
      v71 = 0;
      v72 = v67 + 32;
      LODWORD(v130) = v117 & (a7 > 0.0);
      v128 = (v118 + 8);
      *&v68 = 138543362;
      v127 = v68;
      v73 = v126;
      v133 = v67;
      v132 = v69;
      v131 = v67 + 32;
      do
      {
        if (v70 >= *(v67 + 2))
        {
          __break(1u);
          goto LABEL_58;
        }

        v79 = &v72[16 * v70];
        v80 = *v79;
        v81 = v79[8];
        if (v81 > 1)
        {
          if (v81 == 2)
          {
            v84 = *(v80 + 16);
            if (v84)
            {
              v134 = v71;
              v135[0] = _swiftEmptyArrayStorage;

              sub_100025B1C(0, v84, 0);
              v85 = v135[0];
              v86 = v80 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
              v87 = *(v122 + 72);
              v88 = v123;
              do
              {
                sub_1004E46C0(v86, v73, type metadata accessor for LocalFindableAccessoryRecord);
                v135[0] = v85;
                v90 = v85[2];
                v89 = v85[3];
                if (v90 >= v89 >> 1)
                {
                  sub_100025B1C((v89 > 1), v90 + 1, 1);
                  v88 = v123;
                  v85 = v135[0];
                }

                v140 = v88;
                v141 = sub_1004DB51C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
                v91 = sub_1000280DC(&v139);
                sub_1004E46C0(v73, v91, type metadata accessor for LocalFindableAccessoryRecord);
                v85[2] = v90 + 1;
                sub_10000A748(&v139, &v85[5 * v90 + 4]);
                sub_1004E4A04(v73, type metadata accessor for LocalFindableAccessoryRecord);
                v86 += v87;
                --v84;
              }

              while (v84);
              v67 = v133;
              v69 = v132;
              v72 = v131;
              v71 = v134;
            }

            else
            {

              v85 = _swiftEmptyArrayStorage;
            }

            sub_1004BF6E4(v85, &v142);
          }

          else
          {
            v74 = v143;
            v75 = v144;
            v76 = sub_1000035D0(&v142, v143);

            v78 = v76;
            v73 = v126;
            sub_1004D9464(v77, v78, v129, v74, v75);
          }
        }

        else
        {
          if (!v81)
          {

            v82 = v80;
            if (v130)
            {
              v83 = dispatch_group_create();
              dispatch_group_enter(v83);
            }

            else
            {
              v83 = 0;
            }

            sub_10001F280(&v142, &v139);
            v97 = swift_allocObject();
            v97[2] = v82;
            v97[3] = v83;
            v98 = v129;
            v97[4] = v129;
            sub_10000A748(&v139, (v97 + 5));
            v99 = type metadata accessor for Transaction();
            __chkstk_darwin(v99);
            *&v116[-48] = v98;
            *&v116[-40] = &v142;
            *&v116[-32] = v124;
            *&v116[-24] = v82;
            *&v116[-16] = sub_1004E2E60;
            *&v116[-8] = v97;
            v100 = v83;
            v134 = v82;

            static Transaction.named<A>(_:with:)();

            if (v83)
            {
              v101 = v100;
              v102 = v120;
              static DispatchTime.now()();
              v103 = v119;
              + infix(_:_:)();
              v104 = *v128;
              v105 = v121;
              (*v128)(v102, v121);
              OS_dispatch_group.wait(timeout:)();

              v106 = v103;
              v67 = v133;
              v104(v106, v105);
              v73 = v126;
              v69 = v132;
              v72 = v131;
            }

            else
            {
              v73 = v126;
              v69 = v132;
              v72 = v131;
              v67 = v133;
            }

            if (static DispatchTimeoutResult.== infix(_:_:)())
            {
            }

            else
            {
              type metadata accessor for SPOwnerSessionError(0);
              v135[0] = 4;
              sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
              _BridgedStoredNSError.init(_:userInfo:)();
              v107 = v139;
              swift_willThrow();

              if (qword_101694770 != -1)
              {
                swift_once();
              }

              v108 = type metadata accessor for Logger();
              sub_1000076D4(v108, qword_10177AE10);
              v109 = v107;
              v110 = Logger.logObject.getter();
              v111 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v110, v111))
              {
                v112 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                *v112 = v127;
                v114 = v109;
                v115 = _swift_stdlib_bridgeErrorToNSError();
                *(v112 + 4) = v115;
                *v113 = v115;
                _os_log_impl(&_mh_execute_header, v110, v111, "Failed to fetch owned beacons locations %{public}@", v112, 0xCu);
                sub_10000B3A8(v113, &qword_10169BB30, &unk_10138B3C0);

                v73 = v126;
              }

              else
              {
              }

              v71 = 0;
            }

            goto LABEL_28;
          }

          v92 = v143;
          v93 = v144;
          v94 = sub_1000035D0(&v142, v143);

          v96 = v94;
          v73 = v126;
          sub_1004D6BB8(v95, v96, v129, v92, v93);
        }

LABEL_28:
        ++v70;
      }

      while (v70 != v69);
    }

    sub_100007BAC(&v142);
  }

  else
  {
LABEL_58:
    __break(1u);
  }
}

uint64_t sub_1004D814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v99 = a1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v103 = v97 - v5;
  v110 = type metadata accessor for Calendar.Component();
  v115 = *(v110 - 8);
  __chkstk_darwin(v110);
  v124 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Calendar();
  v114 = *(v122 - 8);
  __chkstk_darwin(v122);
  v123 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = v97 - v9;
  v11 = type metadata accessor for Date();
  v111 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v108 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v97 - v14;
  v16 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v16 - 8);
  v109 = v97 - v17;
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v105 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v101 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v20;
  __chkstk_darwin(v19);
  v104 = v97 - v21;
  v118 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v118);
  v117 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v23 - 8);
  v116 = (v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v29);
  v100 = (v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134[3] = &_s13DefaultPolicyVN;
  v134[4] = sub_100111A48();
  v31 = swift_allocObject();
  v134[0] = v31;
  v32 = *(a2 + 48);
  *(v31 + 48) = *(a2 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = *(a2 + 64);
  *(v31 + 96) = *(a2 + 80);
  v33 = *(a2 + 16);
  *(v31 + 16) = *a2;
  *(v31 + 32) = v33;
  My = type metadata accessor for Feature.FindMy();
  v132 = My;
  v133 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v35 = sub_1000280DC(v131);
  (*(*(My - 8) + 104))(v35, enum case for Feature.FindMy.airlineTravelV2(_:), My);
  sub_100111A9C(a2, &v127);
  LOBYTE(a2) = isFeatureEnabled(_:)();
  sub_100007BAC(v131);
  if ((a2 & 1) == 0)
  {
    return sub_100007BAC(v134);
  }

  v120 = v18;
  v112 = v15;
  v121 = v11;
  v119 = v10;
  v36 = *(v98 + 280);
  sub_10001F280(v134, v131);
  v37 = qword_101694920;
  v113 = v36;

  if (v37 != -1)
  {
LABEL_38:
    swift_once();
  }

  v106 = qword_10177B2E8;

  v107 = sub_100908168(_swiftEmptyArrayStorage);
  v97[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v26 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v25);

  static DispatchQoS.unspecified.getter();
  *&v127 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v100;
  v100[2] = v38;
  v40 = v29[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  v42 = v111;
  (*(v111 + 56))(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v121);
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v39 + v40) = v41;
  v43 = v29[11];
  v44 = type metadata accessor for BeaconObservationStore(0);
  v129 = &off_101632E88;
  v130 = &off_101613BE0;
  v128 = v44;
  v45 = v106;
  *&v127 = v106;
  type metadata accessor for MemberCircleRevokeManager();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v127, (v46 + 32));
  *(v39 + v43) = v46;
  v47 = v29[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v39 + v47) = swift_allocObject();
  *v39 = v113;
  sub_10001F280(v131, (v39 + 3));
  v48 = v29[8];

  sub_1005CB7C8(v131, v39 + v48);
  sub_100007BAC(v131);
  v39[1] = v45;
  *(v39 + v29[9]) = v107;
  *(v46 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v49 = *(v99 + 16);
  v25 = v110;
  v50 = v109;
  if (!v49)
  {
    v107 = _swiftEmptyArrayStorage;
LABEL_26:
    v84 = v107[2];

    if (v84)
    {
      v85 = swift_allocObject();
      v86 = v99;
      v87 = v98;
      *(v85 + 16) = v99;
      *(v85 + 24) = v87;

      v88 = v86;
      v89 = v100;
      sub_1005CB328(v88, sub_1004E4EF8, v85);

      v90 = v89;
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177AE40);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "No imported beacons to fetch locations for.", v94, 2u);
      }

      v90 = v100;
    }

    sub_1004E4A04(v90, type metadata accessor for LocationFetcher);
    return sub_100007BAC(v134);
  }

  v29 = 0;
  v28 = (v99 + 32);
  v51 = (v105 + 56);
  LODWORD(v118) = enum case for Calendar.Component.second(_:);
  v117 = (v115 + 13);
  ++v115;
  ++v114;
  v113 = (v42 + 48);
  v106 = (v42 + 32);
  v107 = _swiftEmptyArrayStorage;
  v111 = v42 + 8;
  v52 = v120;
  v26 = v104;
  v116 = (v105 + 56);
  while (1)
  {
    sub_10001F280(v28, &v127);
    sub_10001F280(&v127, v131);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (!swift_dynamicCast())
    {
      sub_100007BAC(&v127);
      (*v51)(v50, 1, 1, v52);
      sub_10000B3A8(v50, &unk_101698C30, &unk_101392630);
      goto LABEL_6;
    }

    (*v51)(v50, 0, 1, v52);
    sub_10002AAA4(v50, v26, type metadata accessor for SharedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v53 = v131[0];
    KeyPath = swift_getKeyPath();
    v55 = sub_1010790F4(KeyPath, v53);
    if (v56)
    {
      break;
    }

    v57 = *&v55;

    static Calendar.current.getter();
    (*v117)(v124, v118, v25);
    if ((~*&v57 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v57 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v57 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    v58 = v119;
    v59 = v124;
    v60 = v123;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v115)(v59, v25);
    (*v114)(v60, v122);
    v61 = v121;
    if ((*v113)(v58, 1, v121) == 1)
    {
      sub_1004E4A04(v26, type metadata accessor for SharedBeaconRecord);
      sub_100007BAC(&v127);
      sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v62 = v112;
      (*v106)(v112, v58, v61);
      v63 = v108;
      static Date.trustedNow.getter(v108);
      sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      v65 = *v111;
      (*v111)(v63, v61);
      if (v64)
      {
        sub_10001F280(&v127, v131);
        v66 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_1000084AC(0, v66[2] + 1, 1, v66);
          v126 = v66;
        }

        v50 = v109;
        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          v107 = sub_1000084AC((v68 > 1), v69 + 1, 1, v66);
          v126 = v107;
        }

        else
        {
          v107 = v66;
        }

        v65(v112, v61);
        sub_1004E4A04(v26, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v127);
        v70 = v132;
        v71 = v133;
        v72 = sub_10015049C(v131, v132);
        __chkstk_darwin(v72);
        v74 = v97 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v75 + 16))(v74);
        sub_100B039C0(v69, v74, &v126, v70, v71);
        sub_100007BAC(v131);
        v25 = v110;
      }

      else
      {
        v76 = type metadata accessor for TaskPriority();
        v77 = v103;
        (*(*(v76 - 8) + 56))(v103, 1, 1, v76);
        v78 = v26;
        v79 = v101;
        sub_1004E46C0(v78, v101, type metadata accessor for SharedBeaconRecord);
        v80 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v81 = swift_allocObject();
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        v82 = v81 + v80;
        v25 = v110;
        v83 = v79;
        v26 = v104;
        sub_10002AAA4(v83, v82, type metadata accessor for SharedBeaconRecord);
        sub_10025EDD4(0, 0, v77, &unk_1013AB0A0, v81);

        v65(v62, v61);
        sub_1004E4A04(v26, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v127);
        v50 = v109;
      }
    }

    v52 = v120;
    v51 = v116;
LABEL_6:
    v28 += 40;
    if (!--v49)
    {
      goto LABEL_26;
    }
  }

  v131[0] = 0;
  v131[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v96._object = 0x800000010134CA80;
  v96._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v96);
  v125 = KeyPath;
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004D9464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v99 = a3;
  v122 = a2;
  v100 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v104 = &v98 - v7;
  v110 = type metadata accessor for Calendar.Component();
  v116 = *(v110 - 8);
  __chkstk_darwin(v110);
  v125 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Calendar();
  v115 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v98 - v11;
  v13 = type metadata accessor for Date();
  v113 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v109 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v98 - v16;
  v18 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v18 - 8);
  v20 = &v98 - v19;
  v21 = type metadata accessor for SharedBeaconRecord(0);
  v106 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v102 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v23;
  __chkstk_darwin(v22);
  v105 = &v98 - v24;
  v118 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v118);
  v117 = (&v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v26 - 8);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v119);
  v101 = (&v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135[3] = a4;
  v135[4] = v121;
  v32 = sub_1000280DC(v135);
  (*(*(a4 - 8) + 16))(v32, v122, a4);
  My = type metadata accessor for Feature.FindMy();
  v129 = My;
  v130 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v34 = sub_1000280DC(&v128);
  (*(*(My - 8) + 104))(v34, enum case for Feature.FindMy.airlineTravelV2(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v128);
  if ((My & 1) == 0)
  {
    return sub_100007BAC(v135);
  }

  v121 = v21;
  v112 = v17;
  v122 = v13;
  v120 = v12;
  v35 = *(v99 + 280);
  sub_10001F280(v135, v132);
  v36 = qword_101694920;
  v114 = v35;

  if (v36 != -1)
  {
LABEL_38:
    swift_once();
  }

  v108 = qword_10177B2E8;

  v111 = sub_100908168(_swiftEmptyArrayStorage);
  v107 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v28 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v27);

  static DispatchQoS.unspecified.getter();
  *&v128 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = v101;
  v101[2] = v37;
  v39 = v119;
  v40 = *(v119 + 40);
  type metadata accessor for DeviceIdentityUtility(0);
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  v42 = v113;
  (*(v113 + 56))(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v122);
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v41 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v38 + v40) = v41;
  v43 = v39[11];
  v44 = type metadata accessor for BeaconObservationStore(0);
  v130 = &off_101632E88;
  v131 = &off_101613BE0;
  v129 = v44;
  v45 = v108;
  *&v128 = v108;
  type metadata accessor for MemberCircleRevokeManager();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v128, (v46 + 32));
  *(v38 + v43) = v46;
  v47 = v39[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v38 + v47) = swift_allocObject();
  *v38 = v114;
  sub_10001F280(v132, (v38 + 3));
  v48 = v39[8];

  sub_1005CB7C8(v132, v38 + v48);
  sub_100007BAC(v132);
  v38[1] = v45;
  *(v38 + v39[9]) = v111;
  *(v46 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v49 = *(v100 + 16);
  v50 = v110;
  if (!v49)
  {
    v108 = _swiftEmptyArrayStorage;
LABEL_26:
    v85 = v108[2];

    if (v85)
    {
      v86 = swift_allocObject();
      v87 = v100;
      v88 = v99;
      *(v86 + 16) = v100;
      *(v86 + 24) = v88;

      v89 = v87;
      v90 = v101;
      sub_1005CB328(v89, sub_1004E4EF8, v86);

      v91 = v90;
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_1000076D4(v92, qword_10177AE40);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "No imported beacons to fetch locations for.", v95, 2u);
      }

      v91 = v101;
    }

    sub_1004E4A04(v91, type metadata accessor for LocationFetcher);
    return sub_100007BAC(v135);
  }

  v27 = 0;
  v30 = (v100 + 32);
  v51 = (v106 + 56);
  LODWORD(v119) = enum case for Calendar.Component.second(_:);
  v118 = (v116 + 13);
  ++v116;
  ++v115;
  v114 = (v42 + 48);
  v107 = (v42 + 32);
  v108 = _swiftEmptyArrayStorage;
  v111 = (v42 + 8);
  v52 = v121;
  v28 = v105;
  v117 = (v106 + 56);
  while (1)
  {
    sub_10001F280(v30, &v128);
    sub_10001F280(&v128, v132);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (!swift_dynamicCast())
    {
      sub_100007BAC(&v128);
      (*v51)(v20, 1, 1, v52);
      sub_10000B3A8(v20, &unk_101698C30, &unk_101392630);
      goto LABEL_6;
    }

    (*v51)(v20, 0, 1, v52);
    sub_10002AAA4(v20, v28, type metadata accessor for SharedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v53 = v132[0];
    KeyPath = swift_getKeyPath();
    v55 = sub_1010790F4(KeyPath, v53);
    if (v56)
    {
      break;
    }

    v57 = *&v55;

    static Calendar.current.getter();
    (*v118)(v125, v119, v50);
    if ((~*&v57 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v57 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v57 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    v58 = v120;
    v59 = v124;
    v60 = v125;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v116)(v60, v50);
    (*v115)(v59, v123);
    v61 = v122;
    if ((*v114)(v58, 1, v122) == 1)
    {
      sub_1004E4A04(v28, type metadata accessor for SharedBeaconRecord);
      sub_100007BAC(&v128);
      sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
      v52 = v121;
      v51 = v117;
    }

    else
    {
      v113 = v27;
      v62 = v112;
      (*v107)();
      v63 = v109;
      static Date.trustedNow.getter(v109);
      sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v64 = dispatch thunk of static Comparable.< infix(_:_:)();
      v65 = *v111;
      (*v111)(v63, v61);
      if (v64)
      {
        sub_10001F280(&v128, v132);
        v66 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_1000084AC(0, v66[2] + 1, 1, v66);
          v127 = v66;
        }

        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          v108 = sub_1000084AC((v68 > 1), v69 + 1, 1, v66);
          v127 = v108;
        }

        else
        {
          v108 = v66;
        }

        (v65)(v62, v61);
        sub_1004E4A04(v28, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v128);
        v70 = v133;
        v71 = v134;
        v72 = sub_10015049C(v132, v133);
        __chkstk_darwin(v72);
        v74 = &v98 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v75 + 16))(v74);
        sub_100B039C0(v69, v74, &v127, v70, v71);
        sub_100007BAC(v132);
        v50 = v110;
      }

      else
      {
        v76 = type metadata accessor for TaskPriority();
        v77 = v104;
        (*(*(v76 - 8) + 56))(v104, 1, 1, v76);
        v78 = v28;
        v79 = v20;
        v80 = v102;
        sub_1004E46C0(v78, v102, type metadata accessor for SharedBeaconRecord);
        v81 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v82 = swift_allocObject();
        *(v82 + 16) = 0;
        *(v82 + 24) = 0;
        v83 = v82 + v81;
        v50 = v110;
        v84 = v80;
        v20 = v79;
        v28 = v105;
        sub_10002AAA4(v84, v83, type metadata accessor for SharedBeaconRecord);
        sub_10025EDD4(0, 0, v77, &unk_1013AAF98, v82);

        (v65)(v112, v61);
        sub_1004E4A04(v28, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v128);
      }

      v52 = v121;
      v51 = v117;
      v27 = v113;
    }

LABEL_6:
    v30 += 40;
    if (!--v49)
    {
      goto LABEL_26;
    }
  }

  v132[0] = 0;
  v132[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v97._object = 0x800000010134CA80;
  v97._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v97);
  v126 = KeyPath;
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004DA760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v68 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - v11;
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  if (*(a2 + 8))
  {
    return 0;
  }

  v65 = v4;
  v23 = *(a2 + 16);
  if (*(v23 + 16) != 1)
  {
    return 0;
  }

  v66 = v21;
  v67 = &v64 - v22;
  sub_100111A9C(a2, v69);
  if (*(v23 + 32) == 1)
  {

    sub_1001119F4(a2);
    goto LABEL_6;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1001119F4(a2);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  v26 = a1;
  v27 = sub_100035730(a1, sub_1004E2F0C, v25);

  sub_1012BB138(v27, v12);

  v28 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v28 - 8) + 48))(v12, 1, v28) == 1)
  {
    sub_10000B3A8(v12, &qword_1016A42E0, &qword_1013B0010);
    v29 = v17;
    v30 = v66;
    (*(v17 + 56))(v15, 1, 1, v66);
    static Date.distantPast.getter();
    if ((*(v17 + 48))(v15, 1, v30) != 1)
    {
      sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v29 = v17;
    v31 = v66;
    (*(v17 + 16))(v15, &v12[*(v28 + 20)], v66);
    sub_1004E4A04(v12, type metadata accessor for BeaconObservation);
    (*(v17 + 56))(v15, 0, 1, v31);
    (*(v17 + 32))(v67, v15, v31);
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074054(v69[0]);
  v33 = v32;

  v34 = v33 * 3.0;
  static Date.trustedNow.getter(v20);
  Date.timeIntervalSince(_:)();
  v36 = v35;
  v39 = *(v29 + 8);
  v38 = v29 + 8;
  v37 = v39;
  v39(v20, v66);
  if (v34 >= fabs(v36))
  {
    v51 = v68;
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177AE10);
    v53 = v65;
    (*(v51 + 16))(v7, v26, v65);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v51;
      v58 = swift_slowAlloc();
      v69[0] = v58;
      *v56 = 141558275;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v38;
      v61 = v60;
      (*(v57 + 8))(v7, v53);
      v62 = sub_1000136BC(v59, v61, v69);

      *(v56 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Not allowed to exhaustively fetch beacon %{private,mask.hash}s based on policy.", v56, 0x16u);
      sub_100007BAC(v58);
    }

    else
    {

      (*(v51 + 8))(v7, v53);
    }

    v37(v67, v66);
    return 0;
  }

  v40 = v68;
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177AE10);
  v42 = v65;
  (*(v40 + 16))(v9, v26, v65);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69[0] = v46;
    *v45 = 141558275;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v38;
    v49 = v48;
    (*(v40 + 8))(v9, v42);
    v50 = sub_1000136BC(v47, v49, v69);

    *(v45 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "Allowed to exhaustively fetch beacon %{private,mask.hash}s based on policy.", v45, 0x16u);
    sub_100007BAC(v46);
  }

  else
  {

    (*(v40 + 8))(v9, v42);
  }

  v37(v67, v66);
  return 1;
}

char *sub_1004DB088(uint64_t a1, uint64_t a2, char *a3)
{
  v24 = a2;
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v23);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TagCommandManager();
  v28 = &off_101637F28;
  *&v26 = a1;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v18[1] = "eted with error (%@)";
  v19 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v9 = *(v6 + 104);
  v20 = v6 + 104;
  v22 = v9;
  v9(v8);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  v18[0] = sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a3 + 7) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22(v8, v19, v21);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a3 + 8) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 9) = _swiftEmptyArrayStorage;
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon] = 0;
  v10 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture;
  sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  swift_allocObject();
  *&a3[v10] = Future.init()();
  v11 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture;
  swift_allocObject();
  *&a3[v11] = Future.init()();
  v12 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&a3[v12], 1, 1, v13);
  v15(&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier], 1, 1, v13);
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError] = 0;
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError] = 0;
  v16 = &a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  sub_10000A748(&v26, (a3 + 16));
  (*(v14 + 32))(&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier], v24, v13);
  return a3;
}

uint64_t sub_1004DB51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004DB564()
{
  _StringGuts.grow(_:)(55);
  v0._object = 0x8000000101356BE0;
  v0._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x69446D6F7266202CLL;
  v2._object = 0xEC000000203A6B73;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 1702195828;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6E6575716573202CLL;
  v4._object = 0xED0000203A736563;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  _StringGuts.grow(_:)(71);
  v7._countAndFlagsBits = 0x6974737561687865;
  v7._object = 0xEC000000203A6576;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x65736C6166;
  v8._object = 0xE500000000000000;
  String.append(_:)(v8);
  v9._object = 0x8000000101356C00;
  v9._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x8000000101356C20;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 1702195828;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.append(_:)(v13);

  return 0;
}

void sub_1004DB7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = a3;
  v22 = a4;
  v20 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  __chkstk_darwin(v20);
  v8 = &v19 - v7;
  v23 = a1;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a2 + 48);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(v8, v17 + *(*(v18 - 8) + 72) * v16, v18);
    *&v8[*(v20 + 48)] = *(*(a2 + 56) + 8 * v16);

    sub_1004BAE4C(&v23, v8, v21, v22);
    sub_10000B3A8(v8, &qword_1016A2490, &unk_1013B3200);
    if (v4)
    {

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(a2 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_1004DB99C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_10001F280(v2, v17);
    if (sub_1004ACE8C(v17))
    {
      sub_10000A748(v17, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100025B1C(0, v3[2] + 1, 1);
        v3 = v18;
      }

      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100025B1C((v5 > 1), v6 + 1, 1);
      }

      v7 = v15;
      v8 = v16;
      v9 = sub_10015049C(v14, v15);
      __chkstk_darwin(v9);
      v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      sub_1006252D4(v6, v11, &v18, v7, v8);
      sub_100007BAC(v14);
      v3 = v18;
    }

    else
    {
      sub_100007BAC(v17);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1004DBB74(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v98 = a3;
  v105 = a1;
  v109 = type metadata accessor for UUID();
  v94 = *(v109 - 8);
  __chkstk_darwin(v109);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v108);
  v103 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v102 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v99 = *(v17 - 8);
  v100 = v17;
  __chkstk_darwin(v17);
  v101 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v104);
  v107 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v106 = v20;
  v22 = a2[3];
  v21 = a2[4];
  v23 = sub_1000035D0(a2, v22);
  v24 = *(v21 + 24);
  v96 = v23;
  v97 = v24;
  v93 = a4;
  v89 = a4;
  v90 = a5;

  v92 = a6;

  v91 = a7;

  v25 = v97(v22, v21);
  v26 = a2[3];
  v27 = a2[4];
  sub_1000035D0(a2, v26);
  v28 = (*(v27 + 48))(v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = a2[3];
  v33 = a2[4];
  sub_1000035D0(a2, v34);
  v35 = (*(v33 + 56))(v34, v33);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v36 = sub_1010741C0(v120);

  My = type metadata accessor for Feature.FindMy();
  *(&v121 + 1) = My;
  *&v122 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v38 = sub_1000280DC(&v120);
  (*(*(My - 8) + 104))(v38, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v120);
  *&v120 = v36;
  BYTE8(v120) = v25 & 1;
  *&v121 = &off_1016091F8;
  BYTE8(v121) = v28;
  *&v122 = v30;
  *(&v122 + 1) = v32;
  *&v123 = v35;
  BYTE8(v123) = My & 1;
  v124 = 0uLL;
  v125 = 1;
  v119 = 1;
  v118[2] = v122;
  v118[3] = v123;
  v118[4] = 0u;
  v118[0] = v120;
  v118[1] = v121;
  v39 = *(v98 + 280);
  v116 = &_s13DefaultPolicyVN;
  v117 = sub_100111A48();
  v40 = swift_allocObject();
  v115[0] = v40;
  v41 = v123;
  *(v40 + 48) = v122;
  *(v40 + 64) = v41;
  *(v40 + 80) = v124;
  *(v40 + 96) = v125;
  v42 = v121;
  *(v40 + 16) = v120;
  *(v40 + 32) = v42;
  v98 = v39;

  sub_100111A9C(&v120, &v111);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v43 = qword_10177B2E8;

  v97 = sub_100908168(_swiftEmptyArrayStorage);
  v44 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v95 = "apply(changeSet:)";
  v96 = v44;
  (*(v99 + 104))(v101, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v100);

  static DispatchQoS.unspecified.getter();
  *&v111 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v46 = v107;
  v107[2] = v45;
  v47 = v104;
  v48 = *(v104 + 40);
  type metadata accessor for DeviceIdentityUtility(0);
  v49 = swift_allocObject();
  swift_defaultActor_initialize();
  v50 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v51 = type metadata accessor for Date();
  (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
  *(v49 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v49 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v49 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v46 + v48) = v49;
  v52 = v47[11];
  v53 = type metadata accessor for BeaconObservationStore(0);
  v113 = &off_101632E88;
  v114 = &off_101613BE0;
  v112 = v53;
  *&v111 = v43;
  type metadata accessor for MemberCircleRevokeManager();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v111, (v54 + 32));
  *(v46 + v52) = v54;
  v55 = v47[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v46 + v55) = swift_allocObject();
  *v46 = v98;
  sub_10001F280(v115, (v46 + 3));
  v56 = v47[8];

  sub_1005CB7C8(v115, v46 + v56);
  sub_100007BAC(v115);
  v108 = v43;
  v46[1] = v43;
  *(v46 + v47[9]) = v97;
  *(v54 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_1000076D4(v57, qword_10177AE10);
  sub_100111A9C(&v120, &v111);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  sub_1001119F4(&v120);
  v61 = os_log_type_enabled(v59, v60);
  v104 = v58;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v115[0] = v63;
    *v62 = 136446210;
    sub_100111A9C(&v120, &v111);
    v64 = sub_1004D5340();
    v66 = v65;
    sub_1001119F4(&v120);
    v67 = sub_1000136BC(v64, v66, v115);

    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v59, v60, "Exhaustive fetch with internal policy %{public}s.", v62, 0xCu);
    sub_100007BAC(v63);
  }

  v68 = *(v105 + 16);
  if (v68)
  {
    v69 = v105 + 32;
    v70 = (v94 + 8);
    v71 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v69, &v111);
      v73 = v112;
      v72 = v113;
      sub_1000035D0(&v111, v112);
      (*(*(v72[1] + 1) + 32))(v73);
      LOBYTE(v72) = sub_1004DA760(v13, v118);
      (*v70)(v13, v109);
      if (v72)
      {
        sub_10000A748(&v111, v115);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v71[2] + 1, 1);
          v71 = v110;
        }

        v76 = v71[2];
        v75 = v71[3];
        if (v76 >= v75 >> 1)
        {
          sub_100025B1C((v75 > 1), v76 + 1, 1);
        }

        v77 = v116;
        v78 = v117;
        v79 = sub_10015049C(v115, v116);
        __chkstk_darwin(v79);
        v81 = &v88 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81);
        sub_1006252D4(v76, v81, &v110, v77, v78);
        sub_100007BAC(v115);
        v71 = v110;
      }

      else
      {
        sub_100007BAC(&v111);
      }

      v69 += 40;
      --v68;
    }

    while (v68);
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
  }

  sub_1001119F4(&v120);
  if (v71[2])
  {
    v83 = v107;
    sub_10088FFE4(v71, sub_1004E2F00, v106);
  }

  else
  {

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Skipping exhaustive fetch since all beacons located recently.", v86, 2u);
    }

    sub_100909778(_swiftEmptyArrayStorage);
    Transaction.capture()();
    sub_100A4165C(v91);
    v83 = v107;
    if (v93)
    {
      dispatch_group_leave(v89);
    }
  }

  sub_1004E4A04(v83, type metadata accessor for LocationFetcher);
}

void sub_1004DC7C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  static SystemInfo.lockState.getter();
  (*(v7 + 104))(v10, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v15 = 16;
  }

  else
  {
    sub_100025020(a1, &v22);
    if (v23)
    {
      sub_10000A748(&v22, v24);
      v16 = objc_autoreleasePoolPush();
      sub_1006AAA30(a2, v24, &v21, &v22);
      objc_autoreleasePoolPop(v16);
      v19 = v22;
      (*(a3 + 16))(a3, v22, 0);

      sub_100007BAC(v24);
      return;
    }

    sub_10000B3A8(&v22, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    v15 = 2;
  }

  *&v22 = v15;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  v17 = v24[0];
  v18 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, 0, v18);
}

void sub_1004DCAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  static SystemInfo.lockState.getter();
  (*(v6 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    type metadata accessor for SPOwnerSessionError(0);
    *&v18 = 16;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v20[0];
    v15 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v15);
  }

  else
  {
    sub_100ACBC98(a1, &v18);
    if (v19)
    {
      sub_10000A748(&v18, v20);
      v16 = sub_100B10ADC(v20);
      sub_1009097B0(_swiftEmptyArrayStorage);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_1004DB51C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 setTaskInformation:isa];

      (*(a3 + 16))(a3, v16, 0);
      sub_100007BAC(v20);
      return;
    }

    sub_10000B3A8(&v18, &unk_1016AA480, &unk_1013BD050);
    type metadata accessor for SPOwnerSessionError(0);
    *&v18 = 17;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v20[0];
    v15 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v15);
  }
}

uint64_t sub_1004DCECC(uint64_t a1)
{
  v1[28] = a1;
  v2 = type metadata accessor for UUID();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v1[31] = *(v3 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v1[35] = swift_task_alloc();
  v4 = type metadata accessor for BeaconProductInfoRecord(0);
  v1[36] = v4;
  v1[37] = *(v4 - 8);
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1004DD038, 0, 0);
}

uint64_t sub_1004DD038()
{
  v12 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v11);
    *(v5 + 12) = 2082;
    v6 = sub_1010D74EC(v4);
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s with %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_1004DD230;

  return daemon.getter();
}

uint64_t sub_1004DD230(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 336) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1004DD40C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004DD40C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  if (v1)
  {
    v5 = sub_1004DE618;
    v6 = 0;
  }

  else
  {

    v5 = sub_1004DD544;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1004DD544()
{

  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_1004DD630;
  v3 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_1004DD630()
{
  v1 = *(*v0 + 344);

  return _swift_task_switch(sub_1004DD748, v1, 0);
}

uint64_t sub_1004DD76C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v36 = v3;
  v4 = *(v3 + 46);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = _swiftEmptyArrayStorage;
    v34 = *(v3 + 46);
    while (v6 < *(v4 + 16))
    {
      sub_10001F280(v7, (v3 + 1));
      v9 = *(v3 + 5);
      v10 = *(v3 + 6);
      sub_1000035D0(v3 + 2, v9);
      if ((*(v10 + 112))(v9, v10))
      {
        sub_10000A748(v3 + 1, v3 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v8[2] + 1, 1);
          v8 = v35;
        }

        v12 = v5;
        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          sub_100025B1C((v13 > 1), v14 + 1, 1);
        }

        v15 = *(v3 + 10);
        v16 = *(v3 + 11);
        v17 = sub_10015049C(v3 + 56, v15);
        v18 = *(v15 - 8);
        v19 = swift_task_alloc();
        (*(v18 + 16))(v19, v17, v15);
        sub_1006252D4(v14, v19, &v35, v15, v16);
        sub_100007BAC(v3 + 7);

        v5 = v12;
        v4 = v34;
        v8 = v35;
      }

      else
      {
        a1 = sub_100007BAC(v3 + 2);
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_14:
  *(v3 + 47) = v8;

  v20 = v8[2];
  *(v3 + 48) = v20;
  if (v20)
  {
    *(v3 + 49) = 0;
    v21 = *(v3 + 47);
    if (*(v21 + 16))
    {
      v22 = *(v3 + 43);
      sub_10001F280(v21 + 32, (v3 + 6));
      v23 = *(v3 + 15);
      v24 = *(v3 + 16);
      sub_1000035D0(v3 + 12, v23);
      (*(*(*(v24 + 8) + 8) + 32))(v23);
      a1 = sub_1004DDBA4;
      a2 = v22;
      a3 = 0;

      return _swift_task_switch(a1, a2, a3);
    }

LABEL_25:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v3 + 28);
    v28 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v35);
    *(v28 + 12) = 2082;
    v29 = sub_1010D74EC(v27);
    v31 = sub_1000136BC(v29, v30, &v35);

    *(v28 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s Found no accessory with %{public}s", v28, 0x16u);
    swift_arrayDestroy();
  }

  v32 = *(v3 + 1);

  return v32(0);
}

uint64_t sub_1004DDBA4()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[29];
  (*(v3 + 16))(v2, v0[33], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[50] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_1004DDCFC;
  v9 = v0[34];
  v8 = v0[35];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4A64, v6, v9);
}

uint64_t sub_1004DDCFC()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);

  v5 = *(v3 + 8);
  *(v1 + 416) = v5;
  *(v1 + 424) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_1004DDE84, 0, 0);
}

uint64_t sub_1004DDE84()
{
  v56 = v0;
  v1 = v0[36];
  v2 = v0[35];
  if ((*(v0[37] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10001F280((v0 + 12), (v0 + 17));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[52];
      v6 = v0[33];
      v7 = v0[29];
      v8 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v8 = 136315651;
      *(v8 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v55);
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      v10 = v0[20];
      v9 = v0[21];
      sub_1000035D0(v0 + 17, v10);
      (*(*(*(v9 + 8) + 8) + 32))(v10);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      v5(v6, v7);
      sub_100007BAC(v0 + 17);
      v14 = sub_1000136BC(v11, v13, &v55);

      *(v8 + 24) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Missing product info for %{private,mask.hash}s!", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC(v0 + 17);
    }
  }

  else
  {
    v15 = v0[38];
    v16 = v0[28];
    sub_10002AAA4(v2, v15, type metadata accessor for BeaconProductInfoRecord);
    v17 = *(v15 + *(v1 + 80));
    if ((v16 & ~sub_1010D73CC(v17)) == 0)
    {

      sub_10001F280((v0 + 12), (v0 + 22));
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v53 = v0[52];
        v54 = v0[38];
        v20 = v0[33];
        v21 = v0[29];
        v22 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v22 = 136315907;
        *(v22 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v55);
        *(v22 + 12) = 2160;
        *(v22 + 14) = 1752392040;
        *(v22 + 22) = 2081;
        v24 = v0[25];
        v23 = v0[26];
        sub_1000035D0(v0 + 22, v24);
        (*(*(*(v23 + 8) + 8) + 32))(v24);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v53(v20, v21);
        sub_100007BAC(v0 + 22);
        v28 = sub_1000136BC(v25, v27, &v55);

        *(v22 + 24) = v28;
        *(v22 + 32) = 2082;
        v29 = sub_1010D840C(v17);
        v31 = sub_1000136BC(v29, v30, &v55);

        *(v22 + 34) = v31;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s Found %{private,mask.hash}s with %{public}s", v22, 0x2Au);
        swift_arrayDestroy();

        sub_1004E4A04(v54, type metadata accessor for BeaconProductInfoRecord);
      }

      else
      {
        v50 = v0[38];

        sub_1004E4A04(v50, type metadata accessor for BeaconProductInfoRecord);
        sub_100007BAC(v0 + 22);
      }

      sub_100007BAC(v0 + 12);
      v44 = 1;
LABEL_19:

      v51 = v0[1];

      return v51(v44);
    }

    sub_1004E4A04(v0[38], type metadata accessor for BeaconProductInfoRecord);
  }

  v32 = v0[48];
  v33 = v0[49] + 1;
  v34 = sub_100007BAC(v0 + 12);
  if (v33 == v32)
  {

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[28];
      v40 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v55);
      *(v40 + 12) = 2082;
      v41 = sub_1010D74EC(v39);
      v43 = sub_1000136BC(v41, v42, &v55);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Found no accessory with %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    v44 = 0;
    goto LABEL_19;
  }

  v45 = v0[49] + 1;
  v0[49] = v45;
  v46 = v0[47];
  if (v45 >= *(v46 + 16))
  {
    __break(1u);
  }

  else
  {
    v47 = v0[43];
    sub_10001F280(v46 + 40 * v45 + 32, (v0 + 12));
    v48 = v0[15];
    v49 = v0[16];
    sub_1000035D0(v0 + 12, v48);
    (*(*(*(v49 + 8) + 8) + 32))(v48);
    v34 = sub_1004DDBA4;
    v35 = v47;
    v36 = 0;
  }

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_1004DE618()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1004DE6B4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v13 = __chkstk_darwin(v12);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v30[0] = a1;
  sub_10001F280(a1, v32);
  _Block_copy(a3);
  _Block_copy(a3);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_10002AAA4(v17, v15, type metadata accessor for OwnedBeaconRecord);
    _Block_copy(a3);

    sub_100401924(v15, 1, a2, a3);
    _Block_release(a3);

    v19 = type metadata accessor for OwnedBeaconRecord;
    v20 = v15;
LABEL_5:
    sub_1004E4A04(v20, v19);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_10002AAA4(v11, v9, type metadata accessor for SharedBeaconRecord);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10026AE30;
    *(v21 + 24) = v18;

    sub_1003E0AE0(v9, sub_1003FD88C, v21);

    v19 = type metadata accessor for SharedBeaconRecord;
    v20 = v9;
    goto LABEL_5;
  }

  v22 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  sub_10001F280(v30[0], &v31);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Unhandle beacon type: %@", 24, 2, v24);

  type metadata accessor for SPOwnerSessionError(0);
  v30[1] = 0;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  v28 = v31;
  v29 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v29);

LABEL_9:
  sub_100007BAC(v32);

  _Block_release(a3);
}

uint64_t sub_1004DEB00(uint64_t (**a1)(uint64_t a1), uint64_t a2, void (**a3)(const void *, void *))
{
  v44 = type metadata accessor for OwnedBeaconRecord(0);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v44);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v40 - v15;
  v47 = swift_allocObject();
  *(v47 + 16) = a3;
  v42 = a2;
  v45 = a3;
  _Block_copy(a3);
  v16 = sub_100008CA0();
  v17 = sub_100009324(v16);

  v18 = sub_1000066C8();
  v19 = sub_100009924(v18);

  v51[0] = v17;
  v20 = a1;
  sub_100009AF4(v19);
  v48 = a1;
  sub_1000314D0(sub_1004E44E0, v51[0], v51);

  sub_1000D2A70(v51, v50, &unk_1016AA480, &unk_1013BD050);
  if (v50[3])
  {
    sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
    v21 = swift_dynamicCast();
    (*(v11 + 56))(v9, v21 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v22 = v9;
      v23 = v43;
      sub_10002AAA4(v22, v43, type metadata accessor for OwnedBeaconGroup);
      sub_1004E46C0(v23, v14, type metadata accessor for OwnedBeaconGroup);
      v24 = a1;
      v25 = v46;
      sub_1004E46C0(v24, v46, type metadata accessor for OwnedBeaconRecord);
      v26 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v27 = (v12 + *(v41 + 80) + v26) & ~*(v41 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v42;
      sub_10002AAA4(v14, v28 + v26, type metadata accessor for OwnedBeaconGroup);
      sub_10002AAA4(v25, v28 + v27, type metadata accessor for OwnedBeaconRecord);
      v29 = (v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
      v30 = v47;
      *v29 = sub_10001E370;
      v29[1] = v30;

      sub_1003D9064(v20, 0, sub_1004E4500, v28);

      sub_1004E4A04(v43, type metadata accessor for OwnedBeaconGroup);
      sub_10000B3A8(v51, &unk_1016AA480, &unk_1013BD050);
    }
  }

  else
  {
    sub_10000B3A8(v50, &unk_1016AA480, &unk_1013BD050);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_10000B3A8(v9, &unk_1016AF8B0, &unk_1013A0700);
  v31 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  sub_1004E46C0(a1, v46, type metadata accessor for OwnedBeaconRecord);
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100008C00();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Unable to get beacon group for beacon: %@", 41, 2, v33);

  type metadata accessor for SPOwnerSessionError(0);
  v49 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  v37 = v50[0];
  v38 = _convertErrorToNSError(_:)();
  v45[2](v45, v38);

  sub_10000B3A8(v51, &unk_1016AA480, &unk_1013BD050);
}

uint64_t sub_1004DF188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v19 = v18;
  v21 = v20;
  sub_1000D2A70(v17, v13, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v19 + 48))(v13, 1, v21) == 1)
  {
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1012E7BBC(0);

    return (*(a3 + 16))(a3, 0);
  }

  else
  {
    (*(v19 + 32))(v16, v13, v21);
    sub_100AA33AC(v16, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v23 = v16;
      v47 = v19;
      sub_10000B3A8(v7, &unk_1016A9A20, &qword_10138B280);
      v24 = static os_log_type_t.error.getter();
      v25 = a3;
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      v26 = qword_10177C398;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v27 = swift_allocObject();
      v46 = xmmword_101385D80;
      *(v27 + 16) = xmmword_101385D80;
      v28 = v23;
      v29 = UUID.uuidString.getter();
      v31 = v30;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100008C00();
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v26, "Unable to find owned beacon record for UUID: %@", 47, 2, v27);

      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = v46;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v33;
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v48 = 0xD00000000000002DLL;
      v49 = 0x80000001013575A0;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35 = v49;
      *(inited + 48) = v48;
      *(inited + 56) = v35;
      v36 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      sub_1006953B0(v36);

      v37 = objc_allocWithZone(NSError);
      v38 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = [v37 initWithDomain:v38 code:500 userInfo:isa];

      v41 = v40;
      v42 = _convertErrorToNSError(_:)();
      (*(v25 + 16))(v25, v42);

      return (*(v47 + 8))(v28, v21);
    }

    else
    {
      v43 = v47;
      sub_10002AAA4(v7, v47, type metadata accessor for OwnedBeaconRecord);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v44 = v48;
      v45 = type metadata accessor for Transaction();
      __chkstk_darwin(v45);
      *(&v46 - 6) = v44;
      *(&v46 - 5) = v43;
      *(&v46 - 32) = 2;
      *(&v46 - 3) = 0;
      *(&v46 - 2) = 0;
      static Transaction.named<A>(_:with:)();

      (*(a3 + 16))(a3, 0);
      (*(v19 + 8))(v16, v21);
      return sub_1004E4A04(v43, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

void sub_1004DF8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  sub_100AA33AC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    v18 = v38;
    (*(v4 + 16))(v6, a1, v38);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v4 + 8))(v6, v18);
      v26 = sub_1000136BC(v23, v25, &v41);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to get keySync/keyAlignment record for beacon: %{private,mask.hash}s.", v21, 0x16u);
      sub_100007BAC(v22);
    }

    else
    {

      (*(v4 + 8))(v6, v18);
    }

    type metadata accessor for SPOwnerSessionError(0);
    v40 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = v41;
    v37 = _convertErrorToNSError(_:)();
    (*(v39 + 16))(v39, v37);
  }

  else
  {
    sub_10002AAA4(v9, v16, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BA08);
    sub_1004E46C0(v16, v14, type metadata accessor for OwnedBeaconRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1004E4A04(v14, type metadata accessor for OwnedBeaconRecord);
      v35 = sub_1000136BC(v32, v34, &v41);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Forcing KeyAlignmentRecord update for beacon: %{private,mask.hash}s.", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_1004E4A04(v14, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100ABEEFC(v16);
    (*(v39 + 16))(v39, 0);
    sub_1004E4A04(v16, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1004DFF38(uint64_t a1, uint64_t a2)
{

  AnyCurrentValuePublisher.value.getter();

  v4 = *(a1 + 280);
  v5 = sub_100007F54();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v6 = sub_100319914(v5, v4, qword_10177B2E8, v14[0]);

  v7 = v6[2];
  if (v7)
  {
    v17 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (v6 + 4);
    do
    {
      sub_10001F280(v8, v14);
      v9 = v15;
      v10 = v16;
      v11 = sub_1000035D0(v14, v15);
      sub_100B005BC(v11, v4, v9, v10);
      sub_100007BAC(v14);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 40;
      --v7;
    }

    while (v7);

    v12 = v17;
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  sub_10000AB68(v12);

  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  sub_10000ABA0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1004E0128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v6 = a3;
  sub_100025020(a1, &v20);
  if (!v21)
  {
    sub_10000B3A8(&v20, &qword_101696920, &unk_10138B200);
    sub_1003FD838();
    swift_allocError();
    *v11 = 10;
    v12 = _convertErrorToNSError(_:)();
    a5(_swiftEmptyArrayStorage, v12);
  }

  sub_10000A748(&v20, v23);
  v8 = [a2 sequence];
  if (v8 == 1)
  {
    v9 = [a2 index];
    v21 = &type metadata for PrimaryIndex;
    v10 = sub_10002A2B8();
    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v9 = [a2 index];
    v21 = &type metadata for PrimaryWildIndex;
    v10 = sub_10022A528();
    goto LABEL_9;
  }

  if (v8 != 3)
  {
    sub_1003FD838();
    swift_allocError();
    *v18 = 4;
    v19 = _convertErrorToNSError(_:)();
    a5(_swiftEmptyArrayStorage, v19);

    sub_100007BAC(v23);
  }

  v9 = [a2 index];
  v21 = &type metadata for SecondaryIndex;
  v10 = sub_10022A4D4();
LABEL_9:
  v22 = v10;
  *&v20 = v9;
  v13 = sub_100ABE3A4(v23, &v20, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = *(v14 + 2);
  if (v15)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = 32;
    do
    {
      [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*&v14[v16]];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  a5(_swiftEmptyArrayStorage, 0);

  sub_100007BAC(v23);
  return sub_100007BAC(&v20);
}

void sub_1004E03F4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
LABEL_38:
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_10107406C(v40);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = static os_log_type_t.default.getter();
      if (qword_101694760 != -1)
      {
        v35 = v15;
        swift_once();
        v15 = v35;
      }

      os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177ADF0, "BA service not enabled - not persisting connections.", 52, 2, _swiftEmptyArrayStorage);
      goto LABEL_27;
    }
  }

  if (!*(a1 + 200))
  {
    v20 = static os_log_type_t.error.getter();
    if (qword_101694760 != -1)
    {
      v34 = v20;
      swift_once();
      v20 = v34;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177ADF0, "Persisting connections disabled - missing observer.", 51, 2, _swiftEmptyArrayStorage);
LABEL_27:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_32:
      sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
      sub_10000ABA0();
      v27.super.isa = Set._bridgeToObjectiveC()().super.isa;
      goto LABEL_36;
    }

LABEL_39:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100B110DC(_swiftEmptyArrayStorage);
    }

    goto LABEL_32;
  }

  AnyCurrentValuePublisher.value.getter();

  if ((v40 & 1) == 0)
  {
    v21 = static os_log_type_t.default.getter();
    if (qword_101694760 != -1)
    {
      swift_once();
    }

    v22 = qword_10177ADF0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    LOBYTE(v40) = 0;
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Persisting connections disabled by policy %@.", 45, 2, v23);

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  v38 = a2;
  v16 = sub_100025044();
  v17 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
  v18 = v16[2];
  if (v18)
  {
    v19 = 0;
    v37 = v18 - 1;
    do
    {
      a2 = v19;
      while (1)
      {
        if (a2 >= v16[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_1004E46C0(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2, v7, type metadata accessor for OwnedBeaconRecord);
        sub_1004C29A8(v7, a1, &v39);
        sub_1004E4A04(v7, type metadata accessor for OwnedBeaconRecord);
        if (v39)
        {
          break;
        }

        if (v18 == ++a2)
        {
          goto LABEL_33;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v19 = a2 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v40;
    }

    while (v37 != a2);
  }

LABEL_33:

  v28 = static os_log_type_t.default.getter();
  if (qword_101694760 != -1)
  {
    swift_once();
  }

  v29 = qword_10177ADF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v31 = Array.description.getter();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Persisting connections to beacons: %@.", 38, 2, v30);

  sub_10000AB68(v17);

  sub_10000ABA0();
  v27.super.isa = Set._bridgeToObjectiveC()().super.isa;
  a2 = v38;
LABEL_36:
  (*(a2 + 16))(a2, v27.super.isa);
}

uint64_t sub_1004E0A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v56 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v52 = &v44[-v11];
  v12 = __chkstk_darwin(v10);
  v55 = &v44[-v13];
  __chkstk_darwin(v12);
  v15 = &v44[-v14];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  v17 = *(v7 + 16);
  v17(v15, v56, v6);
  v51 = v17;
  v17(v55, a2, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v50 = a3;
    v21 = v20;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v21 = 136446979;
    *(v21 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v57);
    *(v21 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = a2;
    v46 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = v19;
    v49 = v7;
    v25 = *(v7 + 8);
    v25(v15, v6);
    v26 = sub_1000136BC(v22, v24, &v57);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v27 = v55;
    a2 = v48;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v25(v27, v6);
    v7 = v49;
    v31 = sub_1000136BC(v28, v30, &v57);

    *(v21 + 34) = v31;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s", v21, 0x2Au);
    swift_arrayDestroy();

    a3 = v50;
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v55, v6);
    v33(v15, v6);
  }

  v55 = type metadata accessor for Transaction();
  v34 = v51;
  v35 = v52;
  v51(v52, a2, v6);
  v36 = v53;
  v34(v53, v56, v6);
  v37 = *(v7 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = (v8 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = a3;
  *(v40 + 24) = v41;
  v42 = *(v7 + 32);
  v42(v40 + v38, v35, v6);
  v42(v40 + v39, v36, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v56 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v52 = &v44[-v11];
  v12 = __chkstk_darwin(v10);
  v55 = &v44[-v13];
  __chkstk_darwin(v12);
  v15 = &v44[-v14];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  v17 = *(v7 + 16);
  v17(v15, v56, v6);
  v51 = v17;
  v17(v55, a2, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v50 = a3;
    v21 = v20;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v21 = 136446979;
    *(v21 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v57);
    *(v21 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = a2;
    v46 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = v19;
    v49 = v7;
    v25 = *(v7 + 8);
    v25(v15, v6);
    v26 = sub_1000136BC(v22, v24, &v57);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v27 = v55;
    a2 = v48;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v25(v27, v6);
    v7 = v49;
    v31 = sub_1000136BC(v28, v30, &v57);

    *(v21 + 34) = v31;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s", v21, 0x2Au);
    swift_arrayDestroy();

    a3 = v50;
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v55, v6);
    v33(v15, v6);
  }

  v55 = type metadata accessor for Transaction();
  v34 = v51;
  v35 = v52;
  v51(v52, a2, v6);
  v36 = v53;
  v34(v53, v56, v6);
  v37 = *(v7 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = (v8 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = a3;
  *(v40 + 24) = v41;
  v42 = *(v7 + 32);
  v42(v40 + v38, v35, v6);
  v42(v40 + v39, v36, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E1458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B048);
  v34 = *(v7 + 16);
  v34(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v33))
  {
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136446723;
    *(v16 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v35);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v10;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_1000136BC(v17, v22, &v35);
    a3 = v20;
    a2 = v19;
    a1 = v18;
    v10 = v32;

    *(v16 + 24) = v23;
    v24 = v29;
    _os_log_impl(&_mh_execute_header, v29, v33, "%{public}s beaconIdentifier: %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  type metadata accessor for Transaction();
  v34(v10, a1, v6);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  (*(v7 + 32))(v26 + v25, v10, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  v46 = a4;
  v47 = a8;
  v44 = a7;
  v45 = a3;
  v39 = a6;
  v41 = a1;
  v42 = type metadata accessor for UUID();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  v11 = __chkstk_darwin(v42);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  v20 = UUID.uuidString.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, a5, v39, 2, v19);

  v23 = type metadata accessor for TaskPriority();
  v24 = *(*(v23 - 8) + 56);
  v38 = v16;
  v24(v16, 1, 1, v23);
  v25 = v40;
  v26 = *(v40 + 16);
  v27 = v42;
  v26(v13, v41, v42);
  v28 = v43;
  v26(v43, a2, v27);
  v29 = *(v25 + 80);
  v30 = (v29 + 32) & ~v29;
  v31 = (v10 + v29 + v30) & ~v29;
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = *(v25 + 32);
  v34(v33 + v30, v13, v27);
  v34(v33 + v31, v28, v27);
  v35 = (v33 + v32);
  v36 = v46;
  *v35 = v45;
  v35[1] = v36;

  sub_10025EDD4(0, 0, v38, v47, v33);
}

uint64_t sub_1004E1BB0(char *a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for BeaconObservation(0);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v65 = &v57 - v8;
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v80 = &v57 - v10;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v13 - 8);
  v75 = v13;
  __chkstk_darwin(v13);
  v73 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v71 = *(v15 - 8);
  v72 = v15;
  __chkstk_darwin(v15);
  v70 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UUID();
  v17 = *(v69 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v69);
  v60 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  v76 = a2;
  v77 = a3;
  v22 = static os_log_type_t.default.getter();
  if (a2 | a3)
  {
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v28 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_101385D80;
    v30 = UUID.uuidString.getter();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100008C00();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v28, "SoundPlaybackCoordinator reported allCommandsCompleted %@ with error.", 69, 2, v29);
  }

  else
  {
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "SoundPlaybackCoordinator reported allCommandsCompleted %@.", 58, 2, v24);
  }

  v33 = v81;
  v67 = *(v81 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v34 = *(v17 + 16);
  v68 = a1;
  v35 = v69;
  v59 = v17 + 16;
  v58 = v34;
  v34(v21, a1, v69);
  v36 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v37 = swift_allocObject();
  v38 = v77;
  *(v37 + 2) = v76;
  *(v37 + 3) = v38;
  *(v37 + 4) = v33;
  v64 = v17;
  v57 = *(v17 + 32);
  v57(&v37[v36], v21, v35);
  aBlock[4] = sub_1004E25E0;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101622D30;
  v39 = _Block_copy(aBlock);
  swift_errorRetain();
  swift_errorRetain();

  v40 = v70;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v41 = v73;
  v42 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);
  (*(v74 + 8))(v41, v42);
  (*(v71 + 8))(v40, v72);

  v43 = v80;
  sub_100AA33AC(v68, v80);
  v44 = v79;
  if ((*(v78 + 48))(v43, 1, v79) == 1)
  {
    v45 = &unk_1016A9A20;
    v46 = &qword_10138B280;
    return sub_10000B3A8(v43, v45, v46);
  }

  v47 = v66;
  sub_10002AAA4(v43, v66, type metadata accessor for OwnedBeaconRecord);
  v43 = v65;
  sub_1000D2A70(v47 + *(v44 + 28), v65, &qword_1016980D0, &unk_10138F3B0);
  v48 = v64;
  if ((*(v64 + 48))(v43, 1, v35) == 1)
  {
    sub_1004E4A04(v47, type metadata accessor for OwnedBeaconRecord);
    v45 = &qword_1016980D0;
    v46 = &unk_10138F3B0;
    return sub_10000B3A8(v43, v45, v46);
  }

  v50 = v60;
  v57(v60, v43, v35);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v51 = qword_10177B2E8;
  v52 = v63;
  v58(v63, v50, v35);
  v53 = v61;
  static Date.trustedNow.getter(v52 + *(v61 + 20));
  *(v52 + *(v53 + 24)) = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v54 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_101385D80;
  sub_1004E46C0(v52, v55 + v54, type metadata accessor for BeaconObservation);
  v56 = type metadata accessor for Transaction();
  __chkstk_darwin(v56);
  *(&v57 - 4) = v51;
  *(&v57 - 3) = v55;
  *(&v57 - 2) = 0;
  *(&v57 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1004E4A04(v52, type metadata accessor for BeaconObservation);
  (*(v48 + 8))(v50, v35);
  return sub_1004E4A04(v47, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1004E25E0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1004D3C60(v2, v3, v4, v5);
}

void sub_1004E2648(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v6 - 8);
  v41 = (v35 - v7);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177C430);
  v37 = *(v9 + 16);
  v38 = v9 + 16;
  v37(v14, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35[1] = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v5;
    v35[0] = v19;
    v42 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a1;
    v23 = v22;
    (*(v9 + 8))(v14, v8);
    v24 = sub_1000136BC(v20, v23, &v42);
    a1 = v21;

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "SoundPlaybackCoordinator reported soundPlaybackStateChanged: %{private,mask.hash}s.", v18, 0x16u);
    sub_100007BAC(v35[0]);
    v5 = v36;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v25 = v41;
  sub_100023184(a1, v41);
  v26 = type metadata accessor for WildModeAssociationRecord(0);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  sub_10000B3A8(v25, &unk_1016C7C90, &qword_1013BB4B0);
  if (v27 == 1)
  {
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    v37(v12, a1, v8);
    v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    (*(v9 + 32))(v30 + v29, v12, v8);
    sub_10025EDD4(0, 0, v5, &unk_1013AAF28, v30);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v39, qword_10177BA08);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v33, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(1);
    if (v34)
    {
    }
  }
}

uint64_t sub_1004E2BE8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1004D3DEC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004E2D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1004BC8CC();
}

uint64_t sub_1004E2E94(uint64_t a1)
{
  v3 = *(v1 + 24);
  Transaction.capture()();
  return v3(a1);
}

uint64_t sub_1004E2F38(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1004D44F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004E3064()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *&v0[v3];
  v8 = &v0[(v3 + 15) & 0xFFFFFFFFFFFFFFF8];
  v9 = *v8;
  v10 = v8[1];

  return sub_1004AED5C(v4, v5, v6, &v0[v2], v7, v9, v10);
}

unint64_t sub_1004E3130()
{
  result = qword_1016A2498;
  if (!qword_1016A2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2498);
  }

  return result;
}

uint64_t sub_1004E3190(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1004B05A0(a1, v13, v6, v9, v10, v1 + v4, v7, v8);
}

uint64_t sub_1004E336C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004D17A8(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1004E34B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E35B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004D2378(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1004E372C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  return sub_100805CB0((v0 + v4), (v0 + v5), *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), 62.0);
}

uint64_t sub_1004E37F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E3900()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);
  v9 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1004CAA2C(v7, v0 + v4, v0 + v5, v8, v10, v11);
}

uint64_t sub_1004E39C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1004E3A44(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + ((v9 + v6) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100014744;

  return sub_1004CBE88(a1, v12, v13, v1 + v5, v10, v11, v1 + v9, v14);
}

uint64_t sub_1004E3BB8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  return sub_10080B6D0(v0 + v4, v0 + ((v3 + v2 + v4) & ~v2), *(v0 + ((v3 + ((v3 + v2 + v4) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + ((v3 + v2 + v4) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), 62.0);
}

uint64_t sub_1004E3C74()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  return sub_1004CDCBC(v0 + v4, v0 + ((v3 + v2 + v4) & ~v2), *(v0 + ((v3 + ((v3 + v2 + v4) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + ((v3 + v2 + v4) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1004E3D18()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E3E34(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a1(v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_1004E3F18()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_1004E4000(uint64_t a1, const char *a2, const char *a3, ...)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  return sub_1004D0F1C(a1, v3 + v9, v3 + ((v10 + v8 + v9) & ~v8), *(v3 + ((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3);
}

uint64_t sub_1004E40E0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1004CE7A4(v4, v5, v0 + v3);
}

uint64_t sub_1004E41D4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1004C3D14(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1004E42E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_1004E43D0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1004C55D0(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1004E4500(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1004C1B28(a1, v8, (v1 + v4), v1 + v7, v10, v11);
}

uint64_t sub_1004E4608(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004C2028(a1, v4);
}

uint64_t sub_1004E46C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E4750()
{
  v1 = (type metadata accessor for LocationFetchConfiguration(0) - 8);
  v2 = (*(*v1 + 80) + 128) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v1[9];
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1004E4870()
{
  v1 = *(type metadata accessor for LocationFetchConfiguration(0) - 8);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = v0 + ((*(v1 + 80) + 128) & ~*(v1 + 80));

  return sub_1004BAC24((v0 + 16), v2, v3, v4);
}

uint64_t sub_1004E48D8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  v10 = *(v9 + *(v4 + 64));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1004C35C4(a1, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1004E4A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E4A7C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1004E4B04()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004BD28C(v2, v3);
}

uint64_t sub_1004E4B68(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32);
}

uint64_t sub_1004E4BC0()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v16);
}

uint64_t type metadata accessor for LostModeResponse(uint64_t a1)
{
  result = qword_1016A2518;
  if (!qword_1016A2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004E4FF0(uint64_t a1)
{
  result = type metadata accessor for ServerStatusCode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004E5064@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for ServerStatusCode();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016A2550, &qword_1013AB250);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LostModeResponse(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1004E5540();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = v10;
  v12 = v24;
  v29 = 0;
  sub_100246D30();
  v13 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = *(v12 + 32);
  v22 = v11;
  v14(v11, v5, v13);
  v28 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v25 + 8))(v7, v27);
  v19 = v22;
  v18 = v23;
  v20 = (v22 + *(v8 + 20));
  *v20 = v15;
  v20[1] = v17;
  sub_1004E5594(v19, v18);
  sub_100007BAC(a1);
  return sub_1004E55F8(v19);
}

uint64_t sub_1004E5378()
{
  if (*v0)
  {
    return 0x4D6572756C696166;
  }

  else
  {
    return 0x6F43737574617473;
  }
}

uint64_t sub_1004E53C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D6572756C696166 && a2 == 0xEE00656761737365)
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