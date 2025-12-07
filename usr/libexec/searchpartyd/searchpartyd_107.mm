uint64_t sub_100BC4274()
{

  return _swift_task_switch(sub_100BC4370, 0, 0);
}

uint64_t sub_100BC4370()
{
  v1 = v0[52];
  v2 = v0[31];
  v0[55] = v2;
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[56] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[57] = v4;
  v5 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60, &protocol conformance descriptor for Set<A>);
  *v4 = v0;
  v4[1] = sub_100BC4484;
  v6 = v0[54];

  return Sequence.asyncForEach(_:)(&unk_1013DD980, v3, v6, v5);
}

uint64_t sub_100BC4484()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100BC45D4, 0, 0);
  }
}

uint64_t sub_100BC45D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BC4698()
{

  return _swift_task_switch(sub_100BC4794, 0, 0);
}

uint64_t sub_100BC4794()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[26];
  v0[62] = v3;
  v0[27] = v3;
  v4 = swift_task_alloc();
  v0[63] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[64] = v5;
  v6 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60, &protocol conformance descriptor for Set<A>);
  *v5 = v0;
  v5[1] = sub_100BC48A8;
  v7 = v0[61];

  return Sequence.asyncForEach(_:)(&unk_1013DD968, v4, v7, v6);
}

uint64_t sub_100BC48A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 400);

    return _swift_task_switch(sub_100BC49F0, v4, 0);
  }
}

uint64_t sub_100BC49F0()
{
  sub_100BC5228(*(v0 + 472));

  return _swift_task_switch(sub_100BC4A68, 0, 0);
}

uint64_t sub_100BC4A68()
{
  v1 = v0[58];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  sub_100007BAC(v0 + 8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC4B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100BC4C00;

  return XPCSession.proxy(errorHandler:)(v2 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC4C00()
{

  return _swift_task_switch(sub_100BC4CFC, 0, 0);
}

uint64_t sub_100BC4CFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = _convertErrorToNSError(_:)();
    [v1 accessoryProximityPairingError:v2];
    swift_unknownObjectRelease_n();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100BC4D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *&v12[(v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v3;

  sub_10025F9F4(0, 0, v9, &unk_1013DD990, v12);
}

uint64_t sub_100BC4FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100BC5070;

  return XPCSession.proxy(errorHandler:)(v3 + 2, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC5070()
{

  return _swift_task_switch(sub_100BC516C, 0, 0);
}

uint64_t sub_100BC516C()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    type metadata accessor for UUID();
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 proximityPairingCompleted:v2 beacons:isa];
    swift_unknownObjectRelease_n();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BC5228(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v3;

  sub_100A838D4(0, 0, v6, &unk_1013DD9B0, v8);
}

uint64_t sub_100BC535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[4] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v4[10] = *(v7 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[14] = v8;
  *v8 = v4;
  v8[1] = sub_100BC5504;

  return daemon.getter();
}

uint64_t sub_100BC5504(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v2[17] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BCA23C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[18] = v6;
  v7 = sub_100BCA23C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BC56F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BC56F8(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100BC6314, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[21] = v4;
    *v4 = v3;
    v4[1] = sub_100BC586C;

    return daemon.getter();
  }
}

uint64_t sub_100BC586C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 176) = a1;

  v5 = swift_task_alloc();
  *(v3 + 184) = v5;
  v6 = type metadata accessor for LocalPairingMonitorService();
  v7 = sub_100BCA23C(&qword_1016B1130, 255, type metadata accessor for LocalPairingMonitorService, &unk_1013965D0);
  *v5 = v4;
  v5[1] = sub_100BC5A24;
  v8 = *(v2 + 144);
  v9 = *(v2 + 136);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100BC5A24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_100BC63C0;
  }

  else
  {

    v4 = sub_100BC5B40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100BC5B40()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 264) = v7;
    *(v0 + 216) = *(v5 + 56);
    *(v0 + 224) = v6;
    v8 = *(v0 + 104);
    *(v0 + 232) = 0;
    *(v0 + 240) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100BC5C90, v3, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100BC5C90()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v5 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 224))(v2, *(v0 + 104), v4);
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_100BC5DE8;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v6, v9);
}

uint64_t sub_100BC5DE8()
{

  return _swift_task_switch(sub_100BC5F00, 0, 0);
}

uint64_t sub_100BC5F00()
{
  v37 = v0;
  v1 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v1, 1, *(v0 + 40)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016B7860);
    v2(v4, v3, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 104);
    v11 = *(v0 + 88);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    if (v9)
    {
      v35 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_1000136BC(v15, v17, &v36);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "No beacons for UUID: %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v34);

      v18(v35, v13);
    }

    else
    {

      v24 = *(v12 + 8);
      v24(v11, v13);
      v24(v10, v13);
    }
  }

  else
  {
    v20 = *(v0 + 104);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    v23 = *(v0 + 56);
    sub_100BF3978(v1, v23, type metadata accessor for OwnedBeaconRecord);
    sub_100A5187C(v23);
    sub_1000163C4(v23, type metadata accessor for OwnedBeaconRecord);
    (*(v22 + 8))(v20, v21);
  }

  v25 = *(v0 + 232) + 1;
  if (v25 == *(v0 + 208))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 224);
    v29 = *(v0 + 152);
    v30 = *(v0 + 104);
    v31 = *(v0 + 64);
    v32 = *(v0 + 16) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 216) * v25;
    v33 = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 232) = v25;
    *(v0 + 240) = v33;
    v28(v30, v32, v31);

    return _swift_task_switch(sub_100BC5C90, v29, 0);
  }
}

uint64_t sub_100BC6314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BC63C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BC6478()
{
  v1 = *v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B7860);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000136BC(0x29287472617473, 0xE700000000000000, &v20);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v14 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v14 - 8) + 56))(v8, 2, 4, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v8, v6, type metadata accessor for DiscoveryState.Mode);
  v16 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_100BF3978(v6, v17 + v16, type metadata accessor for DiscoveryState.Mode);
  *(v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v8, type metadata accessor for DiscoveryState.Mode);
}

uint64_t sub_100BC67BC()
{
  v1 = type metadata accessor for RSSIValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v43 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  swift_beginAccess();
  v15 = *(v0 + 200);
  v16 = *(v15 + 16);
  v46 = v5;
  if (v16)
  {
    v17 = sub_1003A8990(v16, 0);
    v18 = sub_1003AA994(v55, &v17[(*(v5 + 80) + 32) & ~*(v5 + 80)], v16, v15);
    v19 = v55[0];
    v52 = v55[2];
    v53 = v55[1];
    v50 = v55[4];
    v51 = v55[3];

    sub_1000128F8(v19);
    if (v18 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_5:
  v20 = *(v17 + 2);
  v54 = v1;
  if (v20)
  {
    v47 = v17;
    v48 = v2;
    v21 = *(v46 + 16);
    v50 = ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v51 = v21;
    v22 = &v50[v17];
    v23 = *(v46 + 72);
    v52 = v46 + 16;
    v24 = (v46 + 32);
    v25 = _swiftEmptyArrayStorage;
    v53 = v12;
    do
    {
      (v51)(v14, v22, v4);
      v26 = *v24;
      (*v24)(v12, v14, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100A5EB0C(0, *(v25 + 2) + 1, 1, v25);
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100A5EB0C((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v50[v25 + v28 * v23];
      v12 = v53;
      v26(v29, v53, v4);
      v22 += v23;
      --v20;
    }

    while (v20);

    v2 = v48;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v30 = v45;
  v31 = v46;
  v32 = v44;
  v53 = *(v25 + 2);
  if (v53)
  {
    v33 = 0;
    v51 = (v2 + 8);
    v52 = v46 + 16;
    v47 = (v46 + 8);
    v50 = (v46 + 32);
    v34 = _swiftEmptyArrayStorage;
    while (v33 < *(v25 + 2))
    {
      v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v36 = *(v31 + 72);
      (*(v31 + 16))(v32, &v25[v35 + v36 * v33], v4);
      v37 = v32;
      Device.rssi.getter();
      v38 = RSSIValue.rawValue.getter();
      (*v51)(v30, v54);
      if (v38 < 0)
      {
        v48 = *v50;
        (v48)(v49, v37, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55[0] = v34;
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v37;
        }

        else
        {
          sub_101125680(0, v34[2] + 1, 1);
          v32 = v44;
          v34 = v55[0];
        }

        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          sub_101125680((v40 > 1), v41 + 1, 1);
          v32 = v44;
          v34 = v55[0];
        }

        v34[2] = v41 + 1;
        (v48)(v34 + v35 + v41 * v36, v49, v4);
        v30 = v45;
        v31 = v46;
      }

      else
      {
        (*v47)(v37, v4);
        v32 = v37;
      }

      if (v53 == ++v33)
      {
        goto LABEL_27;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_27:

    v55[0] = v34;

    sub_100BB9F80(v55);

    return v55[0];
  }

  return result;
}

uint64_t sub_100BC6D14(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  v3 = type metadata accessor for UUID();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100BC6E10, v1, 0);
}

uint64_t sub_100BC6E10()
{
  v27 = v0;
  v1 = v0[23];
  type metadata accessor for WorkItemQueue();
  v0[30] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v26);
      *(v5 + 12) = 2114;
      sub_100BEF73C();
      swift_allocError();
      *v8 = 1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v9;
      *v6 = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failure in %s. Returning error: %{public}@.", v5, 0x16u);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v7);
    }

    v10 = v0[22];
    sub_100BEF73C();
    v11 = swift_allocError();
    *v12 = 1;
    *v10 = v11;
    *(v10 + 40) = 1;

    v13 = v0[1];

    return v13();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[31] = sub_1000076D4(v15, qword_1016B7860);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v20 = v0[24];
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v0[32] = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v25 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
    v23 = swift_task_alloc();
    v0[33] = v23;
    v24 = sub_1000BC4D4(&unk_1016B7DB0, &qword_1013DD9F8);
    *v23 = v0;
    v23[1] = sub_100BC7260;

    return (v25)(v0 + 2, &unk_1013DD9F0, v22, v24);
  }
}

uint64_t sub_100BC7260()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = sub_100BC793C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_100BC7388;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BC7388()
{
  v34 = v0;
  sub_1000D2A70(v0 + 16, v0 + 96, &unk_1016B7DB0, &qword_1013DD9F8);
  if (*(v0 + 120))
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 200);
    v30 = *(v0 + 192);
    sub_10000A748((v0 + 96), v0 + 56);
    sub_1000035D0((v0 + 56), *(v0 + 80));
    dispatch thunk of Accessory.identifier.getter();
    v6 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v1, v5);
    v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    (*(v4 + 32))(v8 + v7, v2, v5);
    *(v8 + ((v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v9 = *(v4 + 8);
    v9(v1, v5);

    sub_10001F280(v0 + 56, v0 + 136);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v32 = v9;
      v12 = *(v0 + 232);
      v31 = *(v0 + 200);
      v13 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v13 = 136315651;
      *(v13 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, v33);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_1000035D0((v0 + 136), *(v0 + 160));
      dispatch thunk of Accessory.identifier.getter();
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v32(v12, v31);
      sub_100007BAC((v0 + 136));
      v17 = sub_1000136BC(v14, v16, v33);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Success in %s. Returning detected accessory: %{private,mask.hash}s.", v13, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
    }

    else
    {

      sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
      sub_100007BAC((v0 + 136));
    }

    v27 = *(v0 + 176);
    sub_10001F280(v0 + 56, v27);
    *(v27 + 40) = 0;
    sub_100007BAC((v0 + 56));
  }

  else
  {
    sub_10000B3A8(v0 + 96, &unk_1016B7DB0, &qword_1013DD9F8);
    sub_100BEF73C();
    v18 = swift_allocError();
    *v19 = 3;
    swift_willThrow();
    sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, v33);
      *(v22 + 12) = 2114;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failure in %s. Returning error: %{public}@.", v22, 0x16u);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);
    }

    v26 = *(v0 + 176);
    *v26 = v18;
    *(v26 + 40) = 1;
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100BC793C()
{
  v12 = v0;

  v1 = v0[34];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v11);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s. Returning error: %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  v8 = v0[22];
  *v8 = v1;
  *(v8 + 40) = 1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BC7B08(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Device();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for DiscoveryState(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BC7C04, 0, 0);
}

uint64_t sub_100BC7C04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BC7D28, Strong, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100BC7D28()
{
  *(v0 + 136) = sub_100BC67BC();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_100BC7DC4;

  return sub_100BC89E4();
}

uint64_t sub_100BC7DC4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100BC874C;
  }

  else
  {
    v2 = sub_100BC7ED8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BC7ED8()
{
  v1 = *(v0 + 128);
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_100BC7F48, v1, 0);
}

uint64_t sub_100BC7F48()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[16] + 152);
    v0[20] = v1;
    v2 = sub_100BC8038;
  }

  else
  {
    v3 = v0[15];
    sub_100BEF73C();
    v0[21] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BC8228;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BC8038()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[14];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC80EC, v2, 0);
}

uint64_t sub_100BC80EC()
{
  v1 = v0[14];
  v2 = sub_100649DB4(v1, v0[15]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[15], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC85EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_100BC84C0;
    v4 = v0[15];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BC8228()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in stopping scanner: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[17];
  if (*(v7 + 16))
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v11 = v0[8];
    (*(v9 + 16))(v8, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10);

    v11[3] = v10;
    v11[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v12 = sub_1000280DC(v11);
    (*(v9 + 32))(v12, v8, v10);
  }

  else
  {
    v13 = v0[8];

    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100BC84C0()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 120), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC85EC, 0, 0);
}

uint64_t sub_100BC85EC()
{
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    v5 = v0[8];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    v5[3] = v4;
    v5[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v6 = sub_1000280DC(v5);
    (*(v3 + 32))(v6, v2, v4);
  }

  else
  {
    v7 = v0[8];

    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100BC874C()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in stopping scanner: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[17];
  if (*(v7 + 16))
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v11 = v0[8];
    (*(v9 + 16))(v8, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10);

    v11[3] = v10;
    v11[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v12 = sub_1000280DC(v11);
    (*(v9 + 32))(v12, v8, v10);
  }

  else
  {
    v13 = v0[8];

    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100BC89E4()
{
  v1[14] = v0;
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for DiscoveryState(0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100BC8B3C, v0, 0);
}

uint64_t sub_100BC8B3C()
{
  v1 = v0[14];
  v0[25] = type metadata accessor for WorkItemQueue();
  v0[26] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[14] + 152);
    v0[27] = v2;

    return _swift_task_switch(sub_100BC8C90, v2, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_100BC8C90()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  v0[28] = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v3, v2, type metadata accessor for DiscoveryState);
  if ((swift_getEnumCaseMultiPayload() | 2) == 3)
  {
    v4 = v0[27];
    sub_1000163C4(v0[24], type metadata accessor for DiscoveryState);
    v5 = sub_100BC8DB4;
    v6 = v4;
  }

  else
  {
    sub_1000163C4(v0[24], type metadata accessor for DiscoveryState);
    v6 = v0[27];
    v5 = sub_100BC94A8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100BC8DB4()
{
  v1 = *(v0 + 112);
  sub_100648FF4(*(v0 + 120));

  return _swift_task_switch(sub_100BC8E20, v1, 0);
}

uint64_t sub_100BC8E20()
{
  v1 = v0[15];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    sub_10000B3A8(v1, &qword_1016A68C8, &qword_1013B4C58);
LABEL_5:
    v6 = v0[27];
    v7 = sub_100BC94A8;
LABEL_6:

    return _swift_task_switch(v7, v6, 0);
  }

  v3 = v0[18];
  v2 = v0[19];
  sub_100BF3978(v1, v2, type metadata accessor for DiscoveryState.Mode);
  v4 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v4 - 8) + 56))(v3, 4, 4, v4);
  v5 = sub_100649A24(v2, v3);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState.Mode);
  if (v5)
  {
    sub_1000163C4(v0[19], type metadata accessor for DiscoveryState.Mode);
    goto LABEL_5;
  }

  sub_100BF39E0(v0[19], v0[23], type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v6 = v0[27];
    v7 = sub_100BC90D4;
    goto LABEL_6;
  }

  v8 = v0[23];
  v9 = v0[19];
  sub_100BEF73C();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  sub_1000163C4(v8, type metadata accessor for DiscoveryState);
  sub_1000163C4(v9, type metadata accessor for DiscoveryState.Mode);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100BC90D4()
{
  v1 = v0[14];
  sub_100BF39E0(v0[27] + v0[28], v0[22], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC915C, v1, 0);
}

uint64_t sub_100BC915C()
{
  v1 = v0[22];
  v2 = sub_100649DB4(v1, v0[23]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[14];
    sub_1000163C4(v0[23], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC93D8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_100BC9298;
    v5 = v0[23];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BC9298()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 112);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC93D8, v3, 0);
}

uint64_t sub_100BC93D8()
{
  sub_1000163C4(*(v0 + 152), type metadata accessor for DiscoveryState.Mode);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100BC94A8()
{
  v1 = *(v0 + 112);
  *(v0 + 256) = sub_100648974() & 1;

  return _swift_task_switch(sub_100BC951C, v1, 0);
}

uint64_t sub_100BC951C()
{
  if (*(v0 + 256) == 1)
  {
    *(v0 + 240) = *(*(v0 + 112) + 232);
    type metadata accessor for TimeTracker();
    sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BC9740, v2, v1);
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016B7860);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Scanner already stopped.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_100BC9740()
{
  v1 = *(v0 + 112);
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BC97D4, v1, 0);
}

uint64_t sub_100BC97D4()
{
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[27];

    return _swift_task_switch(sub_100BC993C, v1, 0);
  }

  else
  {
    v2 = v0[21];
    sub_100BEF73C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    sub_1000163C4(v2, type metadata accessor for DiscoveryState);

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_100BC993C()
{
  v1 = v0[14];
  sub_100BF39E0(v0[27] + v0[28], v0[22], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC99C4, v1, 0);
}

uint64_t sub_100BC99C4()
{
  v1 = v0[22];
  v2 = sub_100649DB4(v1, v0[21]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[14];
    sub_1000163C4(v0[21], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC9C40, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_100BC9B00;
    v5 = v0[21];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BC9B00()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 112);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC9C40, v3, 0);
}

uint64_t sub_100BC9C40()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  *(v1 + 200) = _swiftEmptyDictionarySingleton;

  sub_100BD90FC();
  v2 = *(v0 + 112);
  if (*(v2 + 208))
  {

    Task.cancel()();
  }

  v3 = *(v0 + 112);
  *(v2 + 208) = 0;

  if (*(v3 + 184))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  v4 = *(v0 + 112);
  *(v3 + 184) = 0;

  sub_1000035D0(v4 + 30, v4[33]);
  sub_100C2C618();
  swift_beginAccess();
  v4[28] = _swiftEmptyArrayStorage;

  swift_beginAccess();
  v4[22] = _swiftEmptyDictionarySingleton;

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7860);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Discovery finished.", v8, 2u);
  }

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_100BC9F50()
{
  v1 = *v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B7860);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000136BC(0x6F74536563726F66, 0xEB00000000292870, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 1;
  *(v8 + 32) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCA158(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BC6D14(a1);
}

uint64_t sub_100BCA23C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100BCA284(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B7860);
  v25 = *(v3 + 16);
  v25(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v6;
    v13 = v12;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010136F1E0, &v27);
    *(v13 + 12) = 2082;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = a1;
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_1000136BC(v14, v17, &v27);
    a1 = v15;

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s for %{public}s.", v13, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v19 = swift_allocObject();
  swift_weakInit();
  v25(v6, a1, v2);
  v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v3 + 32))(v21 + v20, v6, v2);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCA648(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for UserSessionState();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100BCA708, 0, 0);
}

uint64_t sub_100BCA708()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = v0[9];
  if (Strong)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v0[10] = *(Strong + 128);

    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 16))(v2, v5, v6);
    (*(v4 + 104))(v2, enum case for UserSessionState.pairingStarted(_:), v3);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_100BCA8B8;
    v8 = v0[9];

    return sub_1011EAA64(v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100BCA8B8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100BCAA38(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v32 = v7;
  v33 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v27[-v8];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B7860);
  v31 = *(v5 + 16);
  v31(v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a2;
    v14 = v13;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F1B0, &v34);
    *(v14 + 12) = 2082;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v12;
    v16 = a1;
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_1000136BC(v15, v18, &v34);
    a1 = v16;

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v28, "%s for %{public}s.", v14, 0x16u);
    swift_arrayDestroy();

    a2 = v30;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v33;
  v31(v33, a1, v4);
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = (v32 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v5 + 32))(v24 + v22, v21, v4);
  *(v24 + v23) = a2;

  v25 = a2;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCAE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UserSessionState();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCAEE8, 0, 0);
}

uint64_t sub_100BCAEE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = v0[10];
  if (Strong)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v0[11] = *(Strong + 128);

    v7 = (v2 + *(sub_1000BC4D4(&qword_1016B7E38, &qword_1013DDC58) + 48));
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 16))(v2, v5, v8);
    v7[3] = sub_100008BB8(0, &qword_1016B7E40, SPAccessoryPairingConfiguration_ptr);
    v7[4] = sub_100BF4078();
    *v7 = v6;
    (*(v4 + 104))(v2, enum case for UserSessionState.accessoryConfigured(_:), v3);
    v9 = v6;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_100BCB0E8;
    v11 = v0[10];

    return sub_1011EAA64(v11);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100BCB0E8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100BCB268()
{
  v1 = *v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v17[-1] - v7;
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_1000280DC(v17);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v17);
  if (My)
  {
    v12 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
    (*(*(v12 - 8) + 56))(v8, 4, 4, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    sub_100BF39E0(v8, v6, type metadata accessor for DiscoveryState.Mode);
    v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_100BF3978(v6, v15 + v14, type metadata accessor for DiscoveryState.Mode);
    *(v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_1000163C4(v8, type metadata accessor for DiscoveryState.Mode);
  }

  return result;
}

uint64_t sub_100BCB548()
{
  v1 = *v0;
  My = type metadata accessor for Feature.FindMy();
  v7[3] = My;
  v7[4] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_1000280DC(v7);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v7);
  if (My)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_100BCB6C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCB6E8, 0, 0);
}

uint64_t sub_100BCB6E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = *(Strong + 152);
    v0[8] = v3;
    v4 = swift_allocObject();
    v0[9] = v4;
    swift_weakInit();
    v5 = swift_allocObject();
    v0[10] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;

    return _swift_task_switch(sub_100BCB81C, v3, 0);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100BCB81C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = &unk_1013DDAB8;
  *(v2 + 120) = v1;

  sub_1000BB27C(v3, v4);

  return _swift_task_switch(sub_100BCB8D8, 0, 0);
}

uint64_t sub_100BCB8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BCB93C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCB95C, 0, 0);
}

uint64_t sub_100BCB95C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100BCBA4C;
    v3 = v0[5];

    return sub_100BCBD34(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BCBA4C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCBB88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100BCBB88()
{

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on discovery state change: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BCBD34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[5] = swift_task_alloc();
  type metadata accessor for DiscoveryState.Mode(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DiscoveryState(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCBE6C, v1, 0);
}

uint64_t sub_100BCBE6C()
{
  v37 = v0;
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    sub_100BEF73C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v15 = v0[1];
    goto LABEL_27;
  }

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  sub_100BF39E0(v2, v1, type metadata accessor for DiscoveryState);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446210;
    v10 = sub_100648264();
    v12 = v11;
    sub_1000163C4(v7, type metadata accessor for DiscoveryState);
    v13 = sub_1000136BC(v10, v12, &v36);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "New state = %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1000163C4(v7, type metadata accessor for DiscoveryState);
  }

  sub_100BF39E0(v0[2], v0[9], type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 4) < 2 || EnumCaseMultiPayload != 6)
    {
      goto LABEL_26;
    }

    v23 = v0[3];
    if (*(v23 + 192))
    {

      Task.cancel()();
    }

    *(v23 + 192) = 0;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    v21 = v0[9];
    v22 = type metadata accessor for DiscoveryState;
    goto LABEL_18;
  }

  v17 = v0[6];
  v18 = v0[7];
  sub_100BF3978(v0[9], v18, type metadata accessor for DiscoveryState.Mode);
  sub_100BF39E0(v18, v17, type metadata accessor for DiscoveryState.Mode);
  v19 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v20 = (*(*(v19 - 8) + 48))(v17, 4, v19);
  if (v20 <= 1)
  {
    if (!v20)
    {
      v25 = v0[6];
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 8))(v25, v26);
    }

    goto LABEL_22;
  }

  if (v20 == 3)
  {
LABEL_22:
    v27 = v0[3];
    v28 = v0[7];
    if (*(v27 + 192))
    {
      v24 = type metadata accessor for DiscoveryState.Mode;
      v21 = v0[7];
      goto LABEL_19;
    }

    v31 = v0[4];
    v30 = v0[5];
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v33;
    v34[5] = v31;
    v35 = sub_1008CE048(0, 0, v30, &unk_1013DDAD0, v34);
    sub_10000B3A8(v30, &qword_101698C00, &qword_10138B570);
    sub_1000163C4(v28, type metadata accessor for DiscoveryState.Mode);
    *(v27 + 192) = v35;
LABEL_25:

    goto LABEL_26;
  }

  v21 = v0[7];
  v22 = type metadata accessor for DiscoveryState.Mode;
LABEL_18:
  v24 = v22;
LABEL_19:
  sub_1000163C4(v21, v24);
LABEL_26:

  v15 = v0[1];
LABEL_27:

  return v15();
}

uint64_t sub_100BCC424()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100BCC50C;

    return sub_100BCC7F4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100BCC50C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCC648, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100BCC648()
{

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in discovery timeout: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BCC7F4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for CancellationError();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCC938, v0, 0);
}

uint64_t sub_100BCC938()
{
  v1 = v0[3];
  type metadata accessor for WorkItemQueue();
  v0[11] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[12] = sub_1000076D4(v5, qword_1016B7860);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Discovery timeout start", v8, 2u);
    }

    v9 = v0[3];

    v11 = *(v9 + 344);
    v10 = *(v9 + 352);
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_100BCCB70;

    return sub_100D24214(v11, v10, 0, 0, 1);
  }
}

uint64_t sub_100BCCB70()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[3];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100BCCFDC;
  }

  else
  {
    v7 = sub_100BCCCEC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100BCCCEC(uint64_t a1)
{
  v2 = v1[14];
  static Task<>.checkCancellation()();
  if (!v2)
  {
    v9 = v1[4];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    goto LABEL_11;
  }

  v1[2] = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Timeout task was cancelled.", v5, 2u);
    }

    v7 = v1[6];
    v6 = v1[7];
    v8 = v1[5];

    (*(v7 + 8))(v6, v8);
  }

  else
  {

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Timeout failed with error: %{public}@.", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_11;
    }
  }

LABEL_11:

  v17 = v1[1];

  return v17();
}

uint64_t sub_100BCCFDC()
{
  v0[2] = v0[14];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Timeout task was cancelled.", v3, 2u);
    }

    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Timeout failed with error: %{public}@.", v9, 0xCu);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BCD23C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCD25C, 0, 0);
}

uint64_t sub_100BCD25C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100BCD34C;
    v3 = v0[6];

    return sub_100BCD638(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BCD34C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCD488, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100BCD488()
{

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in start discovery: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BCD638(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v2[14] = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  v2[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveryState(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for DiscoveryState.Mode(0);
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_100BCD930, v1, 0);
}

uint64_t sub_100BCD930()
{
  v33 = v0;
  v1 = v0[12];
  v0[45] = type metadata accessor for WorkItemQueue();
  v0[46] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[40];
    sub_100BF39E0(v0[11], v2, type metadata accessor for DiscoveryState.Mode);
    v3 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
    v0[47] = v3;
    v4 = *(v3 - 8);
    v0[48] = v4;
    if ((*(v4 + 48))(v2, 4, v3))
    {
      sub_1000163C4(v0[40], type metadata accessor for DiscoveryState.Mode);
LABEL_14:
      v29 = *(v0[12] + 152);
      v0[49] = v29;

      return _swift_task_switch(sub_100BCDFC0, v29, 0);
    }

    v8 = v0[44];
    v9 = v0[12];
    (*(v0[42] + 32))(v8, v0[40], v0[41]);
    swift_beginAccess();
    v10 = *(v9 + 168);

    LOBYTE(v8) = sub_100037E20(v8, v10);

    if ((v8 & 1) == 0)
    {
      (*(v0[42] + 8))(v0[44], v0[41]);
      goto LABEL_14;
    }

    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v11 = v0[43];
    v12 = v0[44];
    v13 = v0[41];
    v14 = v0[42];
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016B7860);
    (*(v14 + 16))(v11, v12, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[43];
    v20 = v0[44];
    v22 = v0[41];
    v21 = v0[42];
    if (v18)
    {
      v31 = v0[44];
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v32);
      *(v23 + 12) = 2082;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v19, v22);
      v28 = sub_1000136BC(v24, v26, v32);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s ProxCard already has been displayed for this accessory %{public}s!", v23, 0x16u);
      swift_arrayDestroy();

      v27(v31, v22);
    }

    else
    {

      v30 = *(v21 + 8);
      v30(v19, v22);
      v30(v20, v22);
    }

    v6 = v0[1];
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_100BCDFC0()
{
  v1 = v0[49];
  v2 = v0[33];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  v0[50] = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCE078, v3, 0);
}

uint64_t sub_100BCE078()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  swift_storeEnumTagMultiPayload();
  v3 = sub_100649DB4(v2, v1);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);
  if (v3)
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 88);
    (*(*(v0 + 384) + 56))(v4, 2, 4, *(v0 + 376));
    v6 = sub_100649A24(v5, v4);
    sub_1000163C4(v4, type metadata accessor for DiscoveryState.Mode);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 568) = v6 & 1;
  v7 = *(v0 + 392);

  return _swift_task_switch(sub_100BCE198, v7, 0);
}

uint64_t sub_100BCE198()
{
  v1 = v0[49];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);

  if (v3)
  {
    v7 = 0;
    v8 = v0[20];
    while (v7 < *(v2 + 16))
    {
      v10 = v0[30];
      v9 = v0[31];
      sub_100BF39E0(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, v9, type metadata accessor for DiscoveryState);
      sub_100BF3978(v9, v10, type metadata accessor for DiscoveryState);
      if (!swift_getEnumCaseMultiPayload())
      {
        v11 = v0[12];
        v13 = v0[30];

        sub_1000163C4(v13, type metadata accessor for DiscoveryState);
        v12 = sub_100BCE414;
        goto LABEL_8;
      }

      ++v7;
      v4 = sub_1000163C4(v0[30], type metadata accessor for DiscoveryState);
      if (v3 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v11 = v0[12];

    v12 = sub_100BCE334;
LABEL_8:
    v4 = v12;
    v5 = v11;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BCE334()
{
  v0[51] = *(v0[12] + 232);
  v0[52] = type metadata accessor for TimeTracker();
  v0[53] = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE5D8, v2, v1);
}

uint64_t sub_100BCE414()
{
  if (*(v0 + 568) == 1)
  {
    *(v0 + 408) = *(*(v0 + 96) + 232);
    *(v0 + 416) = type metadata accessor for TimeTracker();
    *(v0 + 424) = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100BCE5D8;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 504) = sub_1000076D4(v7, qword_1016B7860);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Discovery already running or pairing in progress.", v10, 2u);
    }

    v11 = *(v0 + 392);

    v4 = sub_100BD0288;
    v5 = v11;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BCE5D8()
{
  v1 = *(v0 + 96);
  dispatch thunk of TimeTracker.reset()();

  return _swift_task_switch(sub_100BCE64C, v1, 0);
}

uint64_t sub_100BCE64C()
{
  v0[54] = *(v0[12] + 232);

  v0[55] = sub_100647DEC();
  v0[56] = v1;
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE6EC, v3, v2);
}

uint64_t sub_100BCE6EC()
{
  v1 = *(v0 + 96);
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BCE778, v1, 0);
}

uint64_t sub_100BCE778()
{
  *(v0 + 456) = *(*(v0 + 96) + 296);
  swift_getObjectType();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE800, v2, v1);
}

uint64_t sub_100BCE800()
{
  v1 = *(v0 + 96);
  *(v0 + 569) = *(*(v0 + 456) + 193);
  return _swift_task_switch(sub_100BCE828, v1, 0);
}

uint64_t sub_100BCE828()
{
  v20 = v0;
  v1 = *(v0 + 569);
  if (v1 > 0x3F || (v1 != 4 ? (v2 = v1 == 1) : (v2 = 1), !v2))
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    *(v0 + 488) = sub_1000076D4(v10, qword_1016B7860);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s System is locked!", v13, 0xCu);
      sub_100007BAC(v14);
    }

    v8 = *(v0 + 392);
    v9 = sub_100BCF6D0;
    goto LABEL_18;
  }

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 464) = sub_1000076D4(v3, qword_1016B7860);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v19);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s System is unlocked!", v6, 0xCu);
    sub_100007BAC(v7);
  }

  sub_100BF39E0(*(v0 + 88), *(v0 + 232), type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v8 = *(v0 + 392);
    v9 = sub_100BCECD8;
LABEL_18:

    return _swift_task_switch(v9, v8, 0);
  }

  v15 = *(v0 + 232);
  sub_100BEF73C();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();
  sub_1000163C4(v15, type metadata accessor for DiscoveryState);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100BCECD8()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCED60, v1, 0);
}

uint64_t sub_100BCED60()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[29]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[29], type metadata accessor for DiscoveryState);
    v3 = swift_task_alloc();
    v0[60] = v3;
    *v3 = v0;
    v3[1] = sub_100BCF038;

    return sub_100BD28E4();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[59] = v5;
    *v5 = v0;
    v5[1] = sub_100BCEECC;
    v6 = v0[29];

    return sub_10064A314(v6);
  }
}

uint64_t sub_100BCEECC()
{
  v1 = *v0;
  v2 = *v0;

  sub_1000163C4(*(v1 + 232), type metadata accessor for DiscoveryState);
  v3 = swift_task_alloc();
  *(v1 + 480) = v3;
  *v3 = v2;
  v3[1] = sub_100BCF038;

  return sub_100BD28E4();
}

uint64_t sub_100BCF038()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 96);

    return _swift_task_switch(sub_100BCF2B0, v6, 0);
  }
}

uint64_t sub_100BCF2B0(uint64_t a1)
{
  v20 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Discovery started.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  sub_100BBA0A0();
  v7 = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, &v19);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v7 + 16);

    *(v10 + 22) = 2080;
    type metadata accessor for Device();
    v11 = Array.description.getter();
    v13 = sub_1000136BC(v11, v12, &v19);

    *(v10 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Buffered devices[%ld]: %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = *(v1 + 104);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v7;
  v16[4] = v14;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_100BCF6D0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 96);
  sub_100BF39E0(*(v0 + 392) + *(v0 + 400), v2, type metadata accessor for DiscoveryState);
  swift_storeEnumTagMultiPayload();
  *(v0 + 570) = sub_100649DB4(v2, v1) & 1;
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCF7B8, v3, 0);
}

uint64_t sub_100BCF7B8(uint64_t a1)
{
  if (*(v1 + 570))
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Already waiting for unlock to start scanner.", v4, 2u);
    }

    v5 = *(v1 + 8);
    goto LABEL_10;
  }

  swift_storeEnumTagMultiPayload();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    v7 = *(v1 + 224);
    sub_100BEF73C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    sub_1000163C4(v7, type metadata accessor for DiscoveryState);

    v5 = *(v1 + 8);
LABEL_10:

    return v5();
  }

  v6 = *(v1 + 392);

  return _swift_task_switch(sub_100BCFB8C, v6, 0);
}

uint64_t sub_100BCFB8C()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCFC14, v1, 0);
}

uint64_t sub_100BCFC14()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[28]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[28], type metadata accessor for DiscoveryState);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[62] = v5;
    *v5 = v0;
    v5[1] = sub_100BCFE80;
    v6 = v0[28];

    return sub_10064A314(v6);
  }
}

uint64_t sub_100BCFE80()
{
  v1 = *v0;
  v4 = *v0;

  sub_1000163C4(*(v1 + 224), type metadata accessor for DiscoveryState);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100BD0288()
{
  v1 = *(v0 + 96);
  sub_100648FF4(*(v0 + 144));

  return _swift_task_switch(sub_100BD02F8, v1, 0);
}

uint64_t sub_100BD02F8()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = *(v2 + 56);
  v0[64] = v9;
  v0[65] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28 = v9;
  v9(v6, 4, 4, v1);
  (*(v4 + 56))(v6, 0, 1, v3);
  v10 = *(v8 + 48);
  sub_1000D2A70(v5, v7, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000D2A70(v6, v7 + v10, &qword_1016A68C8, &qword_1013B4C58);
  v11 = *(v4 + 48);
  v12 = v11(v7, 1, v3);
  v13 = v0[34];
  if (v12 == 1)
  {
    v14 = v0[18];
    sub_10000B3A8(v0[17], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
    if (v11(v7 + v10, 1, v13) == 1)
    {
      sub_10000B3A8(v0[15], &qword_1016A68C8, &qword_1013B4C58);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v0[15], v0[16], &qword_1016A68C8, &qword_1013B4C58);
  if (v11(v7 + v10, 1, v13) == 1)
  {
    v15 = v0[18];
    v16 = v0[16];
    sub_10000B3A8(v0[17], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v15, &qword_1016A68C8, &qword_1013B4C58);
    sub_1000163C4(v16, type metadata accessor for DiscoveryState.Mode);
LABEL_6:
    sub_10000B3A8(v0[15], &unk_1016B7C00, &qword_1013B4C50);
    goto LABEL_7;
  }

  v20 = v0[39];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[16];
  v27 = v0[15];
  sub_100BF3978(v7 + v10, v20, type metadata accessor for DiscoveryState.Mode);
  v24 = sub_100649A24(v23, v20);
  sub_1000163C4(v20, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v22, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v21, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000163C4(v23, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v27, &qword_1016A68C8, &qword_1013B4C58);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = v0[39];
  v18 = v0[11];
  v28(v17, 4, 4, v0[47]);
  LOBYTE(v18) = sub_100649A24(v18, v17);
  sub_1000163C4(v17, type metadata accessor for DiscoveryState.Mode);
  if ((v18 & 1) == 0 || !*(v0[12] + 192))
  {
LABEL_13:

    v25 = v0[1];

    return v25();
  }

  v19 = v0[49];

  return _swift_task_switch(sub_100BD07A0, v19, 0);
}

uint64_t sub_100BD07A0()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[27], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD0828, v1, 0);
}

uint64_t sub_100BD0828()
{
  v1 = v0[27];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v14 = v0[64];
    v15 = v0[47];
    v16 = v0[39];
    v17 = v0[36];
    v18 = v0[22];
    sub_100BF39E0(v1, v18, type metadata accessor for DiscoveryState);
    sub_100BF3978(v18, v17, type metadata accessor for DiscoveryState.Mode);
    v14(v16, 4, 4, v15);
    LOBYTE(v15) = sub_100649A24(v17, v16);
    sub_1000163C4(v16, type metadata accessor for DiscoveryState.Mode);
    if (v15)
    {
      v8 = v0 + 36;
      goto LABEL_10;
    }

    (v0[64])(v0[21], 4, 4, v0[47]);
    swift_storeEnumTagMultiPayload();
    if ((static WorkItemQueue.called(on:)() & 1) == 0)
    {
      v26 = v0[36];
      v27 = v0[27];
      v28 = v0[21];
      goto LABEL_26;
    }

    v24 = v0[49];
    v25 = sub_100BD1B08;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_11:
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Unsupported state for user initiated discovery.", v21, 2u);
        }

        v22 = v0[27];

        sub_1000163C4(v22, type metadata accessor for DiscoveryState);

        v23 = v0[1];
        goto LABEL_27;
      }

      v3 = v0[64];
      v4 = v0[47];
      v6 = v0[38];
      v5 = v0[39];
      v7 = v0[26];
      sub_100BF39E0(v1, v7, type metadata accessor for DiscoveryState);
      sub_100BF3978(v7, v6, type metadata accessor for DiscoveryState.Mode);
      v3(v5, 4, 4, v4);
      LOBYTE(v4) = sub_100649A24(v6, v5);
      sub_1000163C4(v5, type metadata accessor for DiscoveryState.Mode);
      if (v4)
      {
        v8 = v0 + 38;
LABEL_10:
        sub_1000163C4(*v8, type metadata accessor for DiscoveryState.Mode);
        goto LABEL_11;
      }

      (v0[64])(v0[25], 4, 4, v0[47]);
      swift_storeEnumTagMultiPayload();
      if (static WorkItemQueue.called(on:)())
      {
        v24 = v0[49];
        v25 = sub_100BD0F3C;
        goto LABEL_20;
      }

      v26 = v0[38];
      v27 = v0[27];
      v28 = v0[25];
LABEL_26:
      sub_100BEF73C();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      sub_1000163C4(v28, type metadata accessor for DiscoveryState);
      sub_1000163C4(v26, type metadata accessor for DiscoveryState.Mode);
      sub_1000163C4(v27, type metadata accessor for DiscoveryState);

      v23 = v0[1];
LABEL_27:

      return v23();
    }

    v9 = v0[64];
    v10 = v0[47];
    v11 = v0[39];
    v12 = v0[37];
    v13 = v0[24];
    sub_100BF39E0(v1, v13, type metadata accessor for DiscoveryState);
    sub_100BF3978(v13, v12, type metadata accessor for DiscoveryState.Mode);
    v9(v11, 4, 4, v10);
    LOBYTE(v10) = sub_100649A24(v12, v11);
    sub_1000163C4(v11, type metadata accessor for DiscoveryState.Mode);
    if (v10)
    {
      v8 = v0 + 37;
      goto LABEL_10;
    }

    (v0[64])(v0[23], 4, 4, v0[47]);
    swift_storeEnumTagMultiPayload();
    if ((static WorkItemQueue.called(on:)() & 1) == 0)
    {
      v26 = v0[37];
      v27 = v0[27];
      v28 = v0[23];
      goto LABEL_26;
    }

    v24 = v0[49];
    v25 = sub_100BD15E4;
  }

LABEL_20:

  return _swift_task_switch(v25, v24, 0);
}

uint64_t sub_100BD0F3C()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD0FC4, v1, 0);
}

uint64_t sub_100BD0FC4()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[25]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[25], type metadata accessor for DiscoveryState);
    v3 = swift_task_alloc();
    v0[67] = v3;
    *v3 = v0;
    v3[1] = sub_100BD129C;

    return sub_100BD21FC();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[66] = v5;
    *v5 = v0;
    v5[1] = sub_100BD1130;
    v6 = v0[25];

    return sub_10064A314(v6);
  }
}

uint64_t sub_100BD1130()
{
  v1 = *v0;
  v2 = *v0;

  sub_1000163C4(*(v1 + 200), type metadata accessor for DiscoveryState);
  v3 = swift_task_alloc();
  *(v1 + 536) = v3;
  *v3 = v2;
  v3[1] = sub_100BD129C;

  return sub_100BD21FC();
}

uint64_t sub_100BD129C()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_100BD202C;
  }

  else
  {
    v4 = sub_100BD13C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BD13C8()
{
  v1 = v0[27];
  v2 = v0[12];
  sub_1000163C4(v0[38], type metadata accessor for DiscoveryState.Mode);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (*(v2 + 192))
  {

    Task.cancel()();
  }

  *(v0[12] + 192) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BD15E4()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD166C, v1, 0);
}

uint64_t sub_100BD166C()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[23]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[12];
    sub_1000163C4(v0[23], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BD18EC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[69] = v4;
    *v4 = v0;
    v4[1] = sub_100BD17AC;
    v5 = v0[23];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BD17AC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 96);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD18EC, v3, 0);
}

uint64_t sub_100BD18EC()
{
  v1 = v0[27];
  v2 = v0[12];
  sub_1000163C4(v0[37], type metadata accessor for DiscoveryState.Mode);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (*(v2 + 192))
  {

    Task.cancel()();
  }

  *(v0[12] + 192) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BD1B08()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD1B90, v1, 0);
}

uint64_t sub_100BD1B90()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[21]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[12];
    sub_1000163C4(v0[21], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BD1E10, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[70] = v4;
    *v4 = v0;
    v4[1] = sub_100BD1CD0;
    v5 = v0[21];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BD1CD0()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 96);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD1E10, v3, 0);
}

uint64_t sub_100BD1E10()
{
  v1 = v0[27];
  v2 = v0[12];
  sub_1000163C4(v0[36], type metadata accessor for DiscoveryState.Mode);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (*(v2 + 192))
  {

    Task.cancel()();
  }

  *(v0[12] + 192) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BD202C()
{
  v1 = v0[27];
  sub_1000163C4(v0[38], type metadata accessor for DiscoveryState.Mode);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100BD221C()
{
  v22 = v0;
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[5];
    swift_beginAccess();
    v2 = *(v1 + 200);
    if (*(v2 + 16))
    {
      v3 = qword_101694D50;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      v0[6] = sub_1000076D4(v4, qword_1016B7860);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 134218242;
        *(v7 + 4) = *(v2 + 16);

        *(v7 + 12) = 2080;
        type metadata accessor for UUID();
        type metadata accessor for Device();
        sub_100BCA23C(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v9 = Dictionary.Keys.description.getter();
        v11 = v10;

        v12 = sub_1000136BC(v9, v11, &v21);

        *(v7 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v5, v6, "Delayed discovered devices check. Detected %ld devices.\nDevices: %s.", v7, 0x16u);
        sub_100007BAC(v8);
      }

      else
      {
      }

      v16 = *(v2 + 16);
      if (v16)
      {
        v17 = sub_1003A8990(*(v2 + 16), 0);
        v18 = *(type metadata accessor for Device() - 8);
        v19 = sub_1003AA994(&v21, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v2);
        sub_1000128F8(v21);
        if (v19 == v16)
        {
LABEL_17:
          v0[7] = v17;
          v20 = swift_task_alloc();
          v0[8] = v20;
          *v20 = v0;
          v20[1] = sub_100BD25E0;

          return sub_100BDFD00(v17);
        }

        __break(1u);
      }

      v17 = _swiftEmptyArrayStorage;
      goto LABEL_17;
    }

    v14 = v0[1];
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_100BD25E0()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_100BD271C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100BD271C()
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
    *v3 = 136315394;
    *(v3 + 4) = sub_1000136BC(0xD000000000000019, 0x800000010136EEB0, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in %s: %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BD28E4()
{
  v1[4] = v0;
  v1[5] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[6] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for ScanRate();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for CBDiscovery.DiscoveryFlags();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7C48, &qword_10140DC00);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = type metadata accessor for CBDiscovery.Config();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for RSSIValue();
  v1[27] = v7;
  v1[28] = *(v7 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100BD2C40, v0, 0);
}

uint64_t sub_100BD2C40()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 248) = qword_10177B348;

    return _swift_task_switch(sub_100BD2E28, 0, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BD2E28()
{

  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100BD2EEC;
  v2 = *(v0 + 248);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100BD2EEC()
{

  return _swift_task_switch(sub_100BD3004, 0, 0);
}

uint64_t sub_100BD3004()
{
  v1 = v0[4];
  v0[33] = v0[2];
  return _swift_task_switch(sub_100BD3028, v1, 0);
}

uint64_t sub_100BD3028()
{
  v34 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_101074FFC(v0[33]);

  *v1 = v4;
  (*(v3 + 104))(v1, enum case for RSSIValue.rssi(_:), v2);
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v9 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v9, qword_1016B7860);
  v10 = *(v8 + 16);
  v10(v5, v6, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[28];
  v14 = v0[29];
  v16 = v0[27];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136315138;
    sub_100BCA23C(&unk_1016B8D70, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
    v31 = v12;
    v18 = v10;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = v19;
    v10 = v18;
    v23 = sub_1000136BC(v22, v21, &v33);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v11, v31, "Start discovery scanner with %s", v17, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = v0[27];
  v25 = v0[28];
  v26 = v0[26];
  v10(v26, v0[30], v24);
  v27 = *(v25 + 56);
  v0[35] = v27;
  v0[36] = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v27(v26, 0, 1, v24);
  v28 = swift_task_alloc();
  v0[37] = v28;
  *v28 = v0;
  v28[1] = sub_100BD3348;
  v29 = v0[26];

  return sub_10059D518(v29);
}

uint64_t sub_100BD3348(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 32);
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;

  sub_10000B3A8(v4, &qword_1016B7C50, &qword_1013DD730);

  return _swift_task_switch(sub_100BD348C, v5, 0);
}

uint64_t sub_100BD348C()
{
  v14 = v0[35];
  v11 = v0[26];
  v12 = v0[27];
  v17 = v0[25];
  v1 = v0[21];
  v13 = v0[20];
  v18 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v15 = v0[18];
  v16 = v0[14];
  v8 = v0[13];
  v9 = v0[12];
  v10 = v0[15];
  v4 = type metadata accessor for CBDiscovery.UseCase();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1000BC4D4(&qword_1016B7C58, &qword_1013DD738);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  static CBDiscovery.DiscoveryFlags.objectSetup.getter();
  static CBDiscovery.DiscoveryFlags.rssi.getter();
  v0[3] = v5;
  sub_100BCA23C(&qword_1016B7C60, 255, &type metadata accessor for CBDiscovery.DiscoveryFlags, &protocol conformance descriptor for CBDiscovery.DiscoveryFlags);
  sub_1000BC4D4(&qword_1016B7C68, &qword_1013DD740);
  sub_1000041A4(&unk_1016B7C70, &qword_1016B7C68, &qword_1013DD740, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for ScanRate.max(_:), v9);
  v14(v11, 1, 1, v12);
  sub_1000D2A70(v1, v13, &qword_1016B7C48, &qword_10140DC00);
  (*(v2 + 16))(v15, v18, v3);
  (*(v8 + 16))(v16, v10, v9);
  sub_1000D2A70(v11, v17, &qword_1016B7C50, &qword_1013DD730);
  CBDiscovery.Config.init(useCase:discoveryFlags:discoveryTypes:oobKeys:scanRate:rssiThreshold:)();
  sub_10000B3A8(v11, &qword_1016B7C50, &qword_1013DD730);
  (*(v8 + 8))(v10, v9);
  (*(v2 + 8))(v18, v3);
  sub_10000B3A8(v1, &qword_1016B7C48, &qword_10140DC00);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100BD3820;

  return sub_100BD44C0();
}

uint64_t sub_100BD3820()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100BD3930, v1, 0);
}

uint64_t sub_100BD3930()
{
  *(v0 + 328) = *(*(v0 + 32) + 232);
  type metadata accessor for TimeTracker();
  sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BD3A08, v2, v1);
}

uint64_t sub_100BD3A08()
{
  v1 = *(v0 + 32);
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BD3A9C, v1, 0);
}

uint64_t sub_100BD3A9C(uint64_t a1)
{
  v13 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x635374726174735FLL, 0xEF292872656E6E61, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Starting bubble manager.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  sub_1000035D0((v1[4] + 240), *(v1[4] + 264));
  sub_100C2BDB0();
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v1[42] = v7;
  *v7 = v1;
  v7[1] = sub_100BD3E74;
  v8 = v1[39];
  v9 = v1[24];
  v10 = v1[11];

  return dispatch thunk of CBDiscoveryProtocol.scan(config:)(v10, v9, ObjectType, v8);
}

uint64_t sub_100BD3E74()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100BD426C;
  }

  else
  {
    v4 = sub_100BD3FA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BD3FA0()
{
  v22 = v0[27];
  v23 = v0[30];
  v20 = v0[24];
  v21 = v0[28];
  v18 = v0[23];
  v19 = v0[22];
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v16 = v2;
  v17 = v0[5];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v5);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v4 + 32))(&v12[v10], v1, v5);
  *&v12[v11] = v17;
  v13 = sub_100BB9ADC(0, 0, v6, &unk_1013DD758, v12);
  swift_unknownObjectRelease();
  sub_10000B3A8(v6, &qword_101698C00, &qword_10138B570);
  (*(v4 + 8))(v16, v5);
  (*(v18 + 8))(v20, v19);
  (*(v21 + 8))(v23, v22);
  *(v7 + 184) = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_100BD426C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[23];
  v16 = v0[24];
  v8 = v0[22];
  if (v3)
  {
    v14 = v0[27];
    v9 = swift_slowAlloc();
    v15 = v4;
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error on scanner start: %{public}@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
    v4 = v15;

    v6 = v14;
  }

  swift_unknownObjectRelease();

  (*(v7 + 8))(v16, v8);
  (*(v5 + 8))(v4, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BD44C0()
{
  v1[8] = v0;
  v2 = type metadata accessor for UserSessionState();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100BD458C, v0, 0);
}

uint64_t sub_100BD458C()
{
  v10 = v0;
  v1 = *(v0 + 64);
  if (*(v1 + 184))
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010136EE80, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: There is ongoing discovery task!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    if (*(v1 + 184))
    {

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      Task.cancel()();
    }

    *(v1 + 184) = 0;

    v1 = *(v0 + 64);
  }

  v7 = *(v1 + 152);
  *(v0 + 104) = v7;

  return _swift_task_switch(sub_100BD477C, v7, 0);
}

uint64_t sub_100BD477C()
{
  v1 = *(v0 + 64);
  *(v0 + 164) = sub_10064858C() & 1;

  return _swift_task_switch(sub_100BD47F0, v1, 0);
}

uint64_t sub_100BD47F0()
{
  v1 = *(*(v0 + 64) + 128);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100BD4814, v1, 0);
}

uint64_t sub_100BD4814()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  swift_beginAccess();
  (*(v4 + 16))(v2, v1 + v6, v3);

  return _swift_task_switch(sub_100BD48D0, v5, 0);
}

uint64_t sub_100BD48D0()
{
  v18 = v0;
  v1 = *(v0 + 164);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 160) = enum case for UserSessionState.idle(_:);
  v6 = *(v5 + 104);
  *(v0 + 120) = v6;
  *(v0 + 128) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v2);
  MyPairing16UserSessionStateO12searchpartydE2eeoiySbAC_ACtFZ_0 = _s13FindMyPairing16UserSessionStateO12searchpartydE2eeoiySbAC_ACtFZ_0(v3, v2);
  v8 = *(v5 + 8);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  v8(v3, v4);
  if (MyPairing16UserSessionStateO12searchpartydE2eeoiySbAC_ACtFZ_0 & 1) != 0 || (v1)
  {

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016B7860);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010136EE80, &v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: User session wasn't reseted!", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = *(v0 + 112);

    return _swift_task_switch(sub_100BD4B34, v14, 0);
  }
}

uint64_t sub_100BD4B34()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  swift_beginAccess();
  *(v3 + 136) = _swiftEmptyArrayStorage;

  v1(v4, v2, v5);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_100BD4C40;
  v7 = *(v0 + 96);

  return sub_1011EAA64(v7);
}

uint64_t sub_100BD4C40()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v4 = *v0;

  v1(v2, v3);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_100BD4DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 728) = a5;
  *(v5 + 720) = a4;
  return _swift_task_switch(sub_100BD4DF0, 0, 0);
}

uint64_t sub_100BD4DF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[92] = Strong;
  if (Strong)
  {
    v2 = v0[91];
    v3 = swift_task_alloc();
    v0[93] = v3;
    *(v3 + 16) = Strong;
    *(v3 + 24) = v2;
    swift_asyncLet_begin();

    return _swift_asyncLet_get_throwing(v0 + 2, v4, sub_100BD4EF0, v0 + 82);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BD4EF0(uint64_t a1, uint64_t a2)
{
  *(v3 + 752) = v2;
  if (v2)
  {
    return _swift_task_switch(sub_100BD4FBC, 0, 0);
  }

  else
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BD4F30, v3 + 656);
  }
}

uint64_t sub_100BD4F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BD4FBC()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in updates listener: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  return _swift_asyncLet_finish(v0 + 16, v7, sub_100BD4F30, v0 + 656);
}

uint64_t sub_100BD5168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014650;

  return sub_100BD5204(a3);
}

uint64_t sub_100BD5204(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *v1;
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v2[24] = *(v4 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v7 = type metadata accessor for DeviceChange();
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0);
  v2[42] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v2[43] = v8;
  v2[44] = *(v8 - 8);
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_100BD5558, v1, 0);
}

uint64_t sub_100BD5558()
{
  v1 = *(v0 + 160);
  type metadata accessor for WorkItemQueue();
  *(v0 + 368) = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    *(v0 + 376) = sub_1000076D4(v5, qword_1016B7860);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "DiscoveryService: Start listening to scanner updates.", v8, 2u);
    }

    sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
    AsyncThrowingStream.makeAsyncIterator()();
    v10 = sub_100BCA23C(&qword_1016B7BE0, v9, type metadata accessor for DiscoveryService, &unk_1013DD690);
    *(v0 + 384) = v10;
    *(v0 + 408) = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v11 = *(v0 + 160);
    v12 = swift_task_alloc();
    *(v0 + 392) = v12;
    *v12 = v0;
    v12[1] = sub_100BD586C;
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v13, v11, v10, v14, v0 + 144);
  }
}

uint64_t sub_100BD586C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100BD6898;
  }

  else
  {
    v4 = sub_100BD5984;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BD5984()
{
  v99 = v0;
  v1 = *(v0 + 336);
  if ((*(*(v0 + 312) + 48))(v1, 1, *(v0 + 304)) == 1)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
LABEL_23:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "DiscoveryService: Finished listening to scanner updates.", v30, 2u);
    }

    v31 = *(v0 + 8);

    return v31();
  }

  v2 = *(v0 + 400);
  sub_100BF3978(v1, *(v0 + 328), &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 360);
    v5 = *(v0 + 344);
    sub_1000163C4(*(v0 + 328), &type metadata accessor for DeviceChange);
    (*(v3 + 8))(v4, v5);
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
      _os_log_impl(&_mh_execute_header, v6, v7, "DiscoveryService: Error in scanner listening %{public}@", v8, 0xCu);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    goto LABEL_23;
  }

  sub_100BF39E0(*(v0 + 328), *(v0 + 320), &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 328);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x800000010136EE60, v98);
      *(v37 + 12) = 2080;
      v38 = Array.description.getter();
      v40 = v39;

      v41 = sub_1000136BC(v38, v40, v98);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s Unexpected buffered devices %s!", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1000163C4(v36, &type metadata accessor for DeviceChange);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v96 = *(v0 + 328);
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v45 = *(v0 + 184);
    v44 = *(v0 + 192);
    v46 = *(v0 + 176);
    v93 = v42;
    v94 = *(v0 + 168);
    v47 = *(v45 + 32);
    v47(v42, *(v0 + 320), v46);
    v48 = swift_allocObject();
    swift_weakInit();
    (*(v45 + 16))(v43, v42, v46);
    v49 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    v47(v50 + v49, v43, v46);
    *(v50 + ((v44 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v94;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    (*(v45 + 8))(v93, v46);
    sub_1000163C4(v96, &type metadata accessor for DeviceChange);
    goto LABEL_45;
  }

  (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 320), *(v0 + 272));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = 0x7365547265646E75;
  *(v0 + 120) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 412) != 1)
  {
    goto LABEL_16;
  }

  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 isInternalBuild];

  if (!v13)
  {
    goto LABEL_16;
  }

  if (qword_101694418 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = sub_1000076D4(*(v0 + 232), qword_101696A00);
  swift_beginAccess();
  sub_1000D2A70(v17, v16, &unk_101696900, &unk_10138B1E0);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_10000B3A8(*(v0 + 240), &unk_101696900, &unk_10138B1E0);
LABEL_16:
    v18 = *(v0 + 408);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 40) = My;
    *(v0 + 48) = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v20 = sub_1000280DC((v0 + 16));
    (*(*(My - 8) + 104))(v20, v18, My);
    LOBYTE(v18) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 16));
    if (v18)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 128) - *(v0 + 136) > 86400.0)
      {
        v22 = *(v0 + 216);
        v23 = *(v0 + 224);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v24 = type metadata accessor for TaskPriority();
        v25 = *(v24 - 8);
        (*(v25 + 56))(v23, 1, 1, v24);
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        sub_1000D2A70(v23, v22, &qword_101698C00, &qword_10138B570);
        LODWORD(v23) = (*(v25 + 48))(v22, 1, v24);

        v27 = *(v0 + 216);
        if (v23 == 1)
        {
          sub_10000B3A8(*(v0 + 216), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v25 + 8))(v27, v24);
        }

        v51 = *(v26 + 16);
        swift_unknownObjectRetain();

        if (v51)
        {
          swift_getObjectType();
          v52 = dispatch thunk of Actor.unownedExecutor.getter();
          v54 = v53;
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0;
          v54 = 0;
        }

        sub_10000B3A8(*(v0 + 224), &qword_101698C00, &qword_10138B570);
        v55 = swift_allocObject();
        *(v55 + 16) = &unk_10138B610;
        *(v55 + 24) = v26;
        if (v54 | v52)
        {
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v52;
          *(v0 + 80) = v54;
        }

        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

    goto LABEL_43;
  }

  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
LABEL_43:
  v57 = *(v0 + 256);
  v56 = *(v0 + 264);
  v58 = *(v0 + 248);
  v59 = *(v0 + 160);
  Date.timeIntervalSinceReferenceDate.getter();
  v61 = v60;
  (*(v57 + 8))(v56, v58);
  Device.bleAdvertisementTimestamp.getter();
  v63 = v61 - v62;
  if (v63 >= *(v59 + 360))
  {
    (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 296), *(v0 + 272));
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 328);
    v82 = *(v0 + 288);
    v83 = *(v0 + 296);
    v85 = *(v0 + 272);
    v84 = *(v0 + 280);
    if (v80)
    {
      v97 = *(v0 + 328);
      v86 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98[0] = v95;
      *v86 = 134218242;
      *(v86 + 4) = v63;
      *(v86 + 12) = 2082;
      sub_100BCA23C(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v90 = *(v84 + 8);
      v90(v82, v85);
      v91 = sub_1000136BC(v87, v89, v98);

      *(v86 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v78, v79, "Device is too old! Age:%f seconds. Ignoring %{public}s.", v86, 0x16u);
      sub_100007BAC(v95);

      v90(v83, v85);
      sub_1000163C4(v97, &type metadata accessor for DeviceChange);
    }

    else
    {

      v92 = *(v84 + 8);
      v92(v82, v85);
      v92(v83, v85);
      sub_1000163C4(v81, &type metadata accessor for DeviceChange);
    }

    goto LABEL_46;
  }

  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v66 = *(v0 + 272);
  v67 = *(v0 + 280);
  v68 = *(v0 + 168);
  sub_1000BC4D4(&qword_10169EF60, &qword_10139FC30);
  v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_101385D80;
  (*(v67 + 16))(v70 + v69, v65, v66);
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  v72[2] = v71;
  v72[3] = v70;
  v72[4] = v68;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  (*(v67 + 8))(v65, v66);
  sub_1000163C4(v64, &type metadata accessor for DeviceChange);
LABEL_45:

LABEL_46:
  v73 = *(v0 + 384);
  v74 = *(v0 + 160);
  v75 = swift_task_alloc();
  *(v0 + 392) = v75;
  *v75 = v0;
  v75[1] = sub_100BD586C;
  v76 = *(v0 + 336);
  v77 = *(v0 + 344);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v76, v74, v73, v77, v0 + 144);
}

uint64_t sub_100BD6898()
{
  (*(v0[44] + 8))(v0[45], v0[43]);
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
    _os_log_impl(&_mh_execute_header, v1, v2, "DiscoveryService: Error in scanner listening %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DiscoveryService: Finished listening to scanner updates.", v8, 2u);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BD6B18(uint64_t a1, char a2)
{
  *(v2 + 352) = a2;
  *(v2 + 72) = a1;
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  *(v2 + 128) = swift_task_alloc();
  v5 = type metadata accessor for Device();
  *(v2 + 136) = v5;
  *(v2 + 144) = *(v5 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = type metadata accessor for DiscoveryState(0);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v6 = type metadata accessor for DiscoveryState.Mode(0);
  *(v2 + 184) = v6;
  *(v2 + 192) = *(v6 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  *(v2 + 216) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100BD6DFC, 0, 0);
}

uint64_t sub_100BD6DFC()
{
  v12 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[32] = sub_1000076D4(v3, qword_1016B7860);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136F090, &v11);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v8 = *(v2 + 152);
    v0[33] = v8;

    return _swift_task_switch(sub_100BD7074, v8, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100BD7074()
{
  sub_100648FF4(*(v0 + 240));

  return _swift_task_switch(sub_100BD70E0, 0, 0);
}

uint64_t sub_100BD70E0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v7 - 8) + 56))(v2, 2, 4, v7);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000D2A70(v1, v3, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000D2A70(v2, v3 + v8, &qword_1016A68C8, &qword_1013B4C58);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 184);
    sub_10000B3A8(*(v0 + 232), &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v10, &qword_1016A68C8, &qword_1013B4C58);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      v12 = *(v0 + 352);
      sub_10000B3A8(*(v0 + 216), &qword_1016A68C8, &qword_1013B4C58);
      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v13 = *(v0 + 184);
  sub_1000D2A70(*(v0 + 216), *(v0 + 224), &qword_1016A68C8, &qword_1013B4C58);
  v14 = v9(v3 + v8, 1, v13);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  if (v14 == 1)
  {
    sub_10000B3A8(*(v0 + 232), &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v15, &qword_1016A68C8, &qword_1013B4C58);
    sub_1000163C4(v17, type metadata accessor for DiscoveryState.Mode);
LABEL_7:
    sub_10000B3A8(*(v0 + 216), &unk_1016B7C00, &qword_1013B4C50);
    goto LABEL_8;
  }

  v20 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 352);
  sub_100BF3978(v3 + v8, v21, type metadata accessor for DiscoveryState.Mode);
  v23 = sub_100649A24(v17, v21);
  sub_1000163C4(v21, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v16, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v15, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000163C4(v17, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v20, &qword_1016A68C8, &qword_1013B4C58);
  if (v22)
  {
    if (v23)
    {
LABEL_13:
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Pairing was interrupted during multi-detection flow.", v26, 2u);
      }

      v27 = *(v0 + 248);

      return _swift_task_switch(sub_100BD762C, v27, 0);
    }
  }

  else if (v23)
  {
LABEL_19:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Ignore scanner stop request because of ongoing after multi detection scanner run.", v30, 2u);
    }

    v31 = *(v0 + 8);

    return v31();
  }

LABEL_8:
  *(v0 + 272) = _swiftEmptyArrayStorage;
  v18 = swift_task_alloc();
  *(v0 + 280) = v18;
  *v18 = v0;
  v18[1] = sub_100BD76C8;

  return sub_100BC89E4();
}

uint64_t sub_100BD762C()
{
  *(v0 + 272) = sub_100BC67BC();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_100BD76C8;

  return sub_100BC89E4();
}

uint64_t sub_100BD76C8(char a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_100BD8624;
  }

  else
  {
    *(v4 + 353) = a1 & 1;
    v5 = sub_100BD77F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BD77F4()
{
  if (*(v0 + 353) == 1)
  {
    v1 = *(v0 + 248);
    swift_storeEnumTagMultiPayload();

    return _swift_task_switch(sub_100BD799C, v1, 0);
  }

  else
  {
    *(v0 + 64) = *(v0 + 272);
    v2 = swift_allocObject();
    *(v0 + 320) = v2;
    swift_weakInit();
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    v4 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
    v5 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
    *v3 = v0;
    v3[1] = sub_100BD812C;
    v6 = *(v0 + 128);

    return Sequence.asyncFirst(where:)(v6, &unk_1013DD9D8, v2, v4, v5);
  }
}

uint64_t sub_100BD799C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[31] + 152);
    v0[37] = v1;
    v2 = sub_100BD7A8C;
  }

  else
  {
    v3 = v0[22];
    sub_100BEF73C();
    v0[38] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BD7C7C;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BD7A8C()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD7B40, v2, 0);
}

uint64_t sub_100BD7B40()
{
  v1 = v0[21];
  v2 = sub_100649DB4(v1, v0[22]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[22], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BD7FE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[39] = v3;
    *v3 = v0;
    v3[1] = sub_100BD7EB8;
    v4 = v0[22];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BD7C7C()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in scanner stop: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v0[8] = v0[34];
  v6 = swift_allocObject();
  v0[40] = v6;
  swift_weakInit();
  v7 = swift_task_alloc();
  v0[41] = v7;
  v8 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v9 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
  *v7 = v0;
  v7[1] = sub_100BD812C;
  v10 = v0[16];

  return Sequence.asyncFirst(where:)(v10, &unk_1013DD9D8, v6, v8, v9);
}

uint64_t sub_100BD7EB8()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 176), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD7FE4, 0, 0);
}

uint64_t sub_100BD7FE4()
{
  v0[8] = v0[34];
  v1 = swift_allocObject();
  v0[40] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[41] = v2;
  v3 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v4 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
  *v2 = v0;
  v2[1] = sub_100BD812C;
  v5 = v0[16];

  return Sequence.asyncFirst(where:)(v5, &unk_1013DD9D8, v1, v3, v4);
}

uint64_t sub_100BD812C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100BD8278, 0, 0);
  }
}

uint64_t sub_100BD8278()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[31];
  if (v4 == 1)
  {

    sub_10000B3A8(v3, &qword_101699860, &qword_1013A34D0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    (*(v2 + 32))(v0[19], v3, v1);
    Device.id.getter();
    Identifier.id.getter();
    (*(v9 + 8))(v8, v10);

    return _swift_task_switch(sub_100BD8464, v5, 0);
  }
}

uint64_t sub_100BD8464()
{
  v1 = v0[42];
  sub_100BD8D08(v0[15]);
  v0[43] = v1;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (v1)
  {
    v2 = sub_100BD8860;
  }

  else
  {
    v2 = sub_100BD850C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BD850C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BD8624()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in scanner stop: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v0[8] = v0[34];
  v6 = swift_allocObject();
  v0[40] = v6;
  swift_weakInit();
  v7 = swift_task_alloc();
  v0[41] = v7;
  v8 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v9 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
  *v7 = v0;
  v7[1] = sub_100BD812C;
  v10 = v0[16];

  return Sequence.asyncFirst(where:)(v10, &unk_1013DD9D8, v6, v8, v9);
}

uint64_t sub_100BD8860()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BD897C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BD8AA4, 0, 0);
}

uint64_t sub_100BD8AA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BD8B78, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2(0);
  }
}

uint64_t sub_100BD8B78()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 168);

  return _swift_task_switch(sub_100BD8C04, 0, 0);
}

uint64_t sub_100BD8C04(uint64_t a1)
{
  v2 = v1[17];
  v4 = v1[14];
  v3 = v1[15];
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[10];
  v8 = v1[11];
  Device.id.getter();
  Identifier.id.getter();
  (*(v8 + 8))(v6, v7);
  v9 = sub_100037E20(v3, v2);

  (*(v4 + 8))(v3, v5);

  v10 = v1[1];

  return v10((v9 & 1) == 0);
}

uint64_t sub_100BD8D08(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v31[-v11];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v39 = v9;
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v38 = v12;
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016B7860);
    v16 = *(v6 + 16);
    v41 = a1;
    v37 = v16;
    v16(v14, a1, v5);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = v3;
      v20 = v19;
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v20 = 136315651;
      *(v20 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136F0B0, v40);
      *(v20 + 12) = 2160;
      *(v20 + 14) = 1752392040;
      *(v20 + 22) = 2081;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = v17;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v2;
      v23 = v22;
      v32 = v18;
      v24 = *(v6 + 8);
      v24(v14, v5);
      v25 = sub_1000136BC(v21, v23, v40);

      *(v20 + 24) = v25;
      v26 = v33;
      _os_log_impl(&_mh_execute_header, v33, v32, "%s: %{private,mask.hash}s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v24 = *(v6 + 8);
      v24(v14, v5);
    }

    v29 = v39;
    v37(v39, v41, v5);
    swift_beginAccess();
    v30 = v38;
    sub_100DE8BCC(v38, v29);
    v24(v30, v5);
    return swift_endAccess();
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100BD90FC()
{
  v1 = v0;
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x800000010136EFE0, v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s.", v5, 0xCu);
      sub_100007BAC(v6);
    }

    swift_beginAccess();
    *(v1 + 200) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100BD92B8(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for DiscoveryState(0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100BD9390, 0, 0);
}

uint64_t sub_100BD9390()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 152);
    v0[18] = v2;

    return _swift_task_switch(sub_100BD946C, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100BD946C()
{
  v1 = v0[18];
  v2 = v0[13];
  swift_beginAccess();
  v3 = *(v1 + 136);
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 16);

  v5 = 0;
  while (v4 != v5)
  {
    v6 = v5 + 1;
    v7 = sub_100649DB4(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, v0[16]);
    v5 = v6;
    if (v7)
    {
      v8 = v0[16];

      sub_1000163C4(v8, type metadata accessor for DiscoveryState);
      v9 = sub_100BD96F8;
      goto LABEL_6;
    }
  }

  v10 = v0[16];

  sub_1000163C4(v10, type metadata accessor for DiscoveryState);
  v9 = sub_100BD95AC;
LABEL_6:

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100BD95AC()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovery timeout, stopping discovery.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_100BD9838;

  return sub_100BC89E4();
}

uint64_t sub_100BD96F8()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't timeout, discovery was already stopped.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100BD9838(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_100BD9F50;
  }

  else
  {
    *(v4 + 192) = a1 & 1;
    v5 = sub_100BD9964;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BD9964()
{
  v1 = *(v0 + 136);
  if (*(v0 + 192) == 1)
  {
    swift_storeEnumTagMultiPayload();

    return _swift_task_switch(sub_100BD9A3C, v1, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BD9A3C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[17] + 152);
    v0[21] = v1;
    v2 = sub_100BD9B2C;
  }

  else
  {
    v3 = v0[15];
    sub_100BEF73C();
    v0[22] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BD9D1C;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BD9B2C()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD9BE0, v2, 0);
}

uint64_t sub_100BD9BE0()
{
  v1 = v0[14];
  v2 = sub_100649DB4(v1, v0[15]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[15], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BD9ED0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_100BD9DA4;
    v4 = v0[15];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BD9D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BD9DA4()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 120), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD9ED0, 0, 0);
}

uint64_t sub_100BD9ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BD9F50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BD9FD8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 144) = a1;
  *(v2 + 24) = *v1;
  v3 = type metadata accessor for DiscoveryState.Mode(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100BDA180, v1, 0);
}

uint64_t sub_100BDA180()
{
  v1 = *(v0 + 144);
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      v2 = *(*(v0 + 16) + 152);
      *(v0 + 128) = v2;
      v3 = sub_100BDA35C;
LABEL_13:

      return _swift_task_switch(v3, v2, 0);
    }
  }

  else
  {
    if (v1 != 4 && v1 != 1)
    {
      v2 = *(*(v0 + 16) + 152);
      *(v0 + 136) = v2;
      v3 = sub_100BDA7E8;
      goto LABEL_13;
    }

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v7 = *(v0 + 24);
    *(v6 + 16) = v5;
    *(v6 + 24) = v7;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100BDA35C()
{
  v1 = *(v0 + 16);
  sub_100648FF4(*(v0 + 96));

  return _swift_task_switch(sub_100BDA3CC, v1, 0);
}

uint64_t sub_100BDA3CC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v7 - 8) + 56))(v2, 4, 4, v7);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000D2A70(v1, v3, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000D2A70(v2, v3 + v8, &qword_1016A68C8, &qword_1013B4C58);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 32);
    sub_10000B3A8(*(v0 + 88), &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v10, &qword_1016A68C8, &qword_1013B4C58);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_10000B3A8(*(v0 + 64), &qword_1016A68C8, &qword_1013B4C58);
LABEL_11:
      sub_100BDAFE4();
LABEL_12:
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = 1;
      *(v22 + 32) = *(v0 + 24);

      dispatch thunk of WorkItemQueue.enqueue(_:)();

      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v12 = *(v0 + 32);
  sub_1000D2A70(*(v0 + 64), *(v0 + 80), &qword_1016A68C8, &qword_1013B4C58);
  v13 = v9(v3 + v8, 1, v12);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 80);
  if (v13 == 1)
  {
    sub_10000B3A8(*(v0 + 88), &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
    sub_1000163C4(v16, type metadata accessor for DiscoveryState.Mode);
LABEL_6:
    sub_10000B3A8(*(v0 + 64), &unk_1016B7C00, &qword_1013B4C50);
    goto LABEL_7;
  }

  v18 = *(v0 + 64);
  v19 = *(v0 + 48);
  sub_100BF3978(v3 + v8, v19, type metadata accessor for DiscoveryState.Mode);
  v20 = sub_100649A24(v16, v19);
  sub_1000163C4(v19, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v15, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000163C4(v16, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v18, &qword_1016A68C8, &qword_1013B4C58);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = *(v0 + 144) & 0x3F;
  sub_100BDAFE4();
  if (v17 != 1 && v17 != 4)
  {
    goto LABEL_12;
  }

LABEL_13:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100BDA7E8()
{
  v1 = *(v0 + 16);
  sub_100648FF4(*(v0 + 120));

  return _swift_task_switch(sub_100BDA858, v1, 0);
}

uint64_t sub_100BDA858()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v7 - 8) + 56))(v2, 4, 4, v7);
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000D2A70(v1, v3, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000D2A70(v2, v3 + v8, &qword_1016A68C8, &qword_1013B4C58);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[15];
    v11 = v0[4];
    sub_10000B3A8(v0[14], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v10, &qword_1016A68C8, &qword_1013B4C58);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      v12 = v0[9];
      v13 = &qword_1016A68C8;
      v14 = &qword_1013B4C58;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v15 = v0[4];
  sub_1000D2A70(v0[9], v0[13], &qword_1016A68C8, &qword_1013B4C58);
  v16 = v9(v3 + v8, 1, v15);
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];
  if (v16 == 1)
  {
    sub_10000B3A8(v0[14], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v17, &qword_1016A68C8, &qword_1013B4C58);
    sub_1000163C4(v19, type metadata accessor for DiscoveryState.Mode);
LABEL_6:
    v12 = v0[9];
    v13 = &unk_1016B7C00;
    v14 = &qword_1013B4C50;
    goto LABEL_8;
  }

  v20 = v0[9];
  v21 = v0[6];
  sub_100BF3978(v3 + v8, v21, type metadata accessor for DiscoveryState.Mode);
  sub_100649A24(v19, v21);
  sub_1000163C4(v21, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v18, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v17, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000163C4(v19, type metadata accessor for DiscoveryState.Mode);
  v12 = v20;
  v13 = &qword_1016A68C8;
  v14 = &qword_1013B4C58;
LABEL_8:
  sub_10000B3A8(v12, v13, v14);
  sub_100BDAFE4();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = 1;
  *(v23 + 32) = v0[3];

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100BDAC48()
{
  v2 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  sub_1000163C4(v2, type metadata accessor for DiscoveryState.Mode);
  if (v0)
  {
    v3 = sub_100BDAE0C;
  }

  else
  {
    v3 = sub_100BDAD8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100BDAD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDAE0C()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to start discovery: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_100BDAFE4()
{
  swift_beginAccess();
  *(v0 + 168) = &_swiftEmptySetSingleton;

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleaned saved devicesWithDisplayedProxCard list.", v4, 2u);
  }
}

uint64_t sub_100BDB0EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_100BDB10C, 0, 0);
}

uint64_t sub_100BDB10C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BDB1C8, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BDB1C8()
{
  v0[9] = *(v0[8] + 232);
  v0[10] = type metadata accessor for TimeTracker();
  v0[11] = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BDB2A8, v2, v1);
}

uint64_t sub_100BDB2A8()
{
  *(v0 + 120) = dispatch thunk of TimeTracker.containsCheckpoint(for:)() & 1;

  return _swift_task_switch(sub_100BDB338, 0, 0);
}

uint64_t sub_100BDB338()
{
  if (*(v0 + 120))
  {
    *(v0 + 40) = *(v0 + 56);
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    v2 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
    v3 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
    *v1 = v0;
    v1[1] = sub_100BDB6CC;
    v4 = *(v0 + 64);

    return Sequence.asyncForEach(_:)(&unk_1013DD708, v4, v2, v3);
  }

  else
  {
    v5 = *(v0 + 64);

    return _swift_task_switch(sub_100BDB498, v5, 0);
  }
}

uint64_t sub_100BDB498()
{
  *(v0 + 96) = *(*(v0 + 64) + 232);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BDB52C, v2, v1);
}

uint64_t sub_100BDB52C()
{
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BDB5B4, 0, 0);
}

uint64_t sub_100BDB5B4()
{
  v0[5] = v0[7];
  v1 = swift_task_alloc();
  v0[13] = v1;
  v2 = sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v3 = sub_1000041A4(&unk_1016B7C20, &qword_1016A04C8, &unk_1013DD710, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_100BDB6CC;
  v4 = v0[8];

  return Sequence.asyncForEach(_:)(&unk_1013DD708, v4, v2, v3);
}

uint64_t sub_100BDB6CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100BDB9C8;
  }

  else
  {
    v2 = sub_100BDB7E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BDB7E0()
{
  v1 = v0[14];
  v2 = v0[7];
  sub_1000035D0((v0[8] + 240), *(v0[8] + 264));
  sub_100C2CA48(v2);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Bubble manager failed to process discovery: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

LABEL_6:

    goto LABEL_8;
  }

LABEL_8:
  v9 = v0[1];

  return v9();
}

uint64_t sub_100BDB9C8()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Bubble manager failed to process discovery: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BDBB80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100BDBB9C, a2, 0);
}

uint64_t sub_100BDBB9C()
{
  sub_100BDBC18(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDBC18(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    Device.id.getter();
    Identifier.id.getter();
    (*(v6 + 8))(v8, v5);
    v12 = type metadata accessor for Device();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v4, a1, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
    swift_beginAccess();
    sub_1001E0D2C(v4, v11);
    return swift_endAccess();
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100BDBE98(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100BDBF90, 0, 0);
}

uint64_t sub_100BDBF90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
    Identifier.id.getter();

    return _swift_task_switch(sub_100BDC23C, v2, 0);
  }

  else
  {
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (v3)
    {
      v4 = v0[17];
      sub_10001F280(v3 + 240, (v0 + 2));

      sub_1000035D0(v0 + 2, v0[5]);
      sub_100C2CAC0(v4);
      sub_100007BAC(v0 + 2);
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BDC23C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[21];
    v2 = v0[19];
    v3 = v0[20];
    v4 = v0[18];
    swift_beginAccess();
    sub_1001E5884(v1, v4);
    sub_10000B3A8(v4, &qword_101699860, &qword_1013A34D0);
    swift_endAccess();

    (*(v3 + 8))(v1, v2);
    v5 = sub_100BDC3A4;
  }

  else
  {
    v6 = v0[21];
    v7 = v0[19];
    v8 = v0[20];
    sub_100BEF73C();
    v0[23] = swift_allocError();
    *v9 = 0;
    swift_willThrow();

    (*(v8 + 8))(v6, v7);
    v5 = sub_100BDC5C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BDC3A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[17];
    sub_10001F280(Strong + 240, (v0 + 2));

    sub_1000035D0(v0 + 2, v0[5]);
    sub_100C2CAC0(v2);
    sub_100007BAC(v0 + 2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BDC5C0()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Bubble manager failed to process detection loss: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BDC798()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_allocObject();
    v0[3] = v4;
    swift_weakInit();
    v7 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
    v5 = swift_task_alloc();
    v0[4] = v5;
    v6 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v5 = v0;
    v5[1] = sub_100BDC92C;

    return (v7)(v0 + 6, &unk_1013DDC10, v4, v6);
  }
}

uint64_t sub_100BDC92C()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100BDCA50;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = Database.await(state:);
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BDCA50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDCAB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BDCAD4, 0, 0);
}

uint64_t sub_100BDCAD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BDCB9C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BDCB9C()
{
  sub_100BD90FC();
  *(v0 + 64) = 0;

  return _swift_task_switch(sub_100B4B290, 0, 0);
}

uint64_t sub_100BDCC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDCC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100BDCCB8, 0, 0);
}

uint64_t sub_100BDCCB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100BDCDB4;
    v3 = *(v0 + 56);

    return sub_100BDCEFC(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100BDCDB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1005C0750;
  }

  else
  {

    v2 = sub_100BDCED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BDCEFC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v2[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100BDD0B8, v1, 0);
}

uint64_t sub_100BDD0B8()
{
  v32 = v0;
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = v0[15];
    v1 = v0[16];
    v3 = v0[14];
    v4 = v0[5];
    v5 = type metadata accessor for Logger();
    v0[17] = sub_1000076D4(v5, qword_1016B7860);
    v6 = *(v2 + 16);
    v0[18] = v6;
    v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    if (v9)
    {
      v13 = v0[13];
      v14 = v0[10];
      v28 = v0[11];
      v29 = v0[12];
      v30 = v0[14];
      v16 = v0[8];
      v15 = v0[9];
      v17 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136F170, v31);
      *(v17 + 12) = 2080;
      v27 = v8;
      Device.id.getter();
      Identifier.id.getter();
      (*(v15 + 8))(v14, v16);
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v29 + 8))(v13, v28);
      (*(v11 + 8))(v10, v30);
      v21 = sub_1000136BC(v18, v20, v31);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v27, "%s: save detected device %s.", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v0[20] = *(v0[6] + 232);
    v0[21] = type metadata accessor for TimeTracker();
    v0[22] = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

    v26 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BDD4EC, v26, v25);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100BDD4EC()
{
  v1 = *(v0 + 48);
  *(v0 + 216) = dispatch thunk of TimeTracker.containsCheckpoint(for:)() & 1;

  return _swift_task_switch(sub_100BDD580, v1, 0);
}

uint64_t sub_100BDD580(uint64_t a1)
{
  if (*(v1 + 216))
  {
    v18 = *(v1 + 144);
    v2 = *(v1 + 120);
    v17 = *(v1 + 112);
    v3 = *(v1 + 104);
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
    v7 = *(v1 + 56);
    v6 = *(v1 + 64);
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    Device.id.getter();
    Identifier.id.getter();
    (*(v5 + 8))(v4, v6);
    v18(v7, v9, v17);
    (*(v2 + 56))(v7, 0, 1, v17);
    swift_beginAccess();
    sub_1001E0D2C(v7, v3);
    swift_endAccess();
    v10 = *(v8 + 152);
    *(v1 + 192) = v10;
    v11 = sub_100BDD8D4;
    v12 = 0;
  }

  else
  {
    *(v1 + 184) = *(*(v1 + 48) + 232);

    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    v11 = sub_100BDD70C;
    v10 = v13;
    v12 = v15;
  }

  return _swift_task_switch(v11, v10, v12);
}

uint64_t sub_100BDD70C()
{
  v1 = *(v0 + 48);
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BDD798, v1, 0);
}

uint64_t sub_100BDD798(uint64_t a1)
{
  v13 = v1[18];
  v2 = v1[15];
  v12 = v1[14];
  v3 = v1[13];
  v5 = v1[9];
  v4 = v1[10];
  v7 = v1[7];
  v6 = v1[8];
  v9 = v1[5];
  v8 = v1[6];
  Device.id.getter();
  Identifier.id.getter();
  (*(v5 + 8))(v4, v6);
  v13(v7, v9, v12);
  (*(v2 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1001E0D2C(v7, v3);
  swift_endAccess();
  v10 = *(v8 + 152);
  v1[24] = v10;

  return _swift_task_switch(sub_100BDD8D4, v10, 0);
}

uint64_t sub_100BDD8D4()
{
  if (sub_10064858C())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = sub_100BDD9DC;

    return sub_100BDDCDC();
  }
}

uint64_t sub_100BDD9DC()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100BDDB4C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100BDDB4C()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in delayed detections analysis: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100BDDCDC()
{
  v1[5] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for DiscoveryState(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100BDDE54, v0, 0);
}

uint64_t sub_100BDDE54()
{
  v1 = v0[5];
  v0[15] = type metadata accessor for WorkItemQueue();
  v0[16] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[5] + 152);
    v0[17] = v2;

    return _swift_task_switch(sub_100BDDF9C, v2, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100BDDF9C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  *(v0 + 144) = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);
  *(v0 + 160) = swift_getEnumCaseMultiPayload();
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BDE08C, v3, 0);
}

uint64_t sub_100BDE08C()
{
  if (*(v0 + 160))
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016B7860);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Can't start delayed detections analysis.", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 136);

    return _swift_task_switch(sub_100BDE230, v7, 0);
  }
}

uint64_t sub_100BDE230()
{
  v1 = *(v0 + 40);
  sub_100648FF4(*(v0 + 56));

  return _swift_task_switch(sub_100BDE2A0, v1, 0);
}

uint64_t sub_100BDE2A0()
{
  v31 = v0;
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    sub_10000B3A8(v1, &qword_1016A68C8, &qword_1013B4C58);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Can't set delayed detections analysis state because discovery mode is nil.", v5, 2u);
    }

    v6 = v0[5];
    if (*(v6 + 208))
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_1016B7860);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Already started Task for delayed detections analysis.", v9, 2u);
      }
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_1016B7860);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        v21 = Duration.description.getter();
        v23 = sub_1000136BC(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Starting delayed detections analysis. Delay: %s.", v19, 0xCu);
        sub_100007BAC(v20);
      }

      v24 = v0[6];
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v26;
      v28 = sub_1008CE048(0, 0, v24, &unk_1013DDBF0, v27);
      sub_10000B3A8(v24, &qword_101698C00, &qword_10138B570);
      *(v6 + 208) = v28;
    }

    v16 = v0[1];
    goto LABEL_23;
  }

  v10 = v0[13];
  v11 = v0[10];
  sub_100BF3978(v1, v11, type metadata accessor for DiscoveryState.Mode);
  sub_100BF39E0(v11, v10, type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    v13 = v0[13];
    v14 = v0[10];
    sub_100BEF73C();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    sub_1000163C4(v13, type metadata accessor for DiscoveryState);
    sub_1000163C4(v14, type metadata accessor for DiscoveryState.Mode);

    v16 = v0[1];
LABEL_23:

    return v16();
  }

  v12 = v0[17];

  return _swift_task_switch(sub_100BDE858, v12, 0);
}

uint64_t sub_100BDE858()
{
  v1 = v0[5];
  sub_100BF39E0(v0[17] + v0[18], v0[12], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BDE8E0, v1, 0);
}

uint64_t sub_100BDE8E0()
{
  v1 = v0[12];
  v2 = sub_100649DB4(v1, v0[13]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[5];
    sub_1000163C4(v0[13], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BDEB5C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_100BDEA1C;
    v5 = v0[13];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BDEA1C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 40);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BDEB5C, v3, 0);
}

uint64_t sub_100BDEB5C()
{
  v22 = v0;
  sub_1000163C4(v0[10], type metadata accessor for DiscoveryState.Mode);
  v1 = v0[5];
  if (*(v1 + 208))
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already started Task for delayed detections analysis.", v5, 2u);
    }
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016B7860);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v11 = Duration.description.getter();
      v13 = sub_1000136BC(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Starting delayed detections analysis. Delay: %s.", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v14 = v0[6];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v18 = sub_1008CE048(0, 0, v14, &unk_1013DDBF0, v17);
    sub_10000B3A8(v14, &qword_101698C00, &qword_10138B570);
    *(v1 + 208) = v18;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100BDEEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BDEFA0, 0, 0);
}

uint64_t sub_100BDEFA0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 384);
    v2 = *(Strong + 392);
    static Clock<>.continuous.getter();
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100BDF0D0;

    return sub_100D24214(v3, v2, 0, 0, 1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100BDF0D0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_100BDF270;
    v8 = 0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v8 = v3[9];
    v7 = sub_100BDF28C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100BDF28C()
{
  sub_100BDF35C();

  return _swift_task_switch(sub_100BDF2F4, 0, 0);
}

uint64_t sub_100BDF2F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BDF35C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BDF454()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100BDF53C;

    return sub_100BD21FC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100BDF53C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100BDF8D0;
  }

  else
  {
    v2 = sub_100BDF650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BDF650()
{
  v1 = *(*(v0 + 48) + 152);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100BDF674, v1, 0);
}

uint64_t sub_100BDF674()
{
  sub_100649254();
  *(v0 + 96) = v1 & 1;

  return _swift_task_switch(sub_100BDF6E4, 0, 0);
}

uint64_t sub_100BDF6E4()
{
  if (*(v0 + 96) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_100BDF7BC;

    return sub_100BC89E4();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100BDF7BC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100BDFAE8;
  }

  else
  {
    v2 = sub_1004A9788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BDF8D0()
{
  v11 = v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136F190, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100BDFAE8()
{
  v11 = v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136F190, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100BDFD00(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[39] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v2[43] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v2[55] = v6;
  v2[56] = *(v6 - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v7 = type metadata accessor for DiscoveryState.Mode(0);
  v2[62] = v7;
  v2[63] = *(v7 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v8 = type metadata accessor for DiscoveryState(0);
  v2[69] = v8;
  v2[70] = *(v8 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return _swift_task_switch(sub_100BE013C, v1, 0);
}

uint64_t sub_100BE013C()
{
  v1 = v0[35];
  v0[75] = type metadata accessor for WorkItemQueue();
  v0[76] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[35] + 152);
    v0[77] = v2;

    return _swift_task_switch(sub_100BE0390, v2, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100BE0390()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 560);
  swift_beginAccess();
  v3 = *(v1 + 136);
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 16);

  v5 = 0;
  while (v4 != v5)
  {
    v6 = v5 + 1;
    v7 = sub_100649DB4(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, *(v0 + 592));
    v5 = v6;
    if (v7)
    {
      v8 = *(v0 + 592);
      v9 = *(v0 + 280);

      sub_1000163C4(v8, type metadata accessor for DiscoveryState);
      v10 = sub_100BE0550;
      v11 = v9;
      goto LABEL_6;
    }
  }

  v12 = *(v0 + 592);
  v13 = *(v0 + 544);
  v14 = *(v0 + 496);
  v15 = *(v0 + 504);
  v16 = *(v0 + 280);

  sub_1000163C4(v12, type metadata accessor for DiscoveryState);
  sub_100648FF4(v13);
  v17 = *(v15 + 48);
  *(v0 + 624) = v17;
  *(v0 + 632) = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  *(v0 + 736) = v17(v13, 1, v14);
  sub_10000B3A8(v13, &qword_1016A68C8, &qword_1013B4C58);
  v10 = sub_100BE07BC;
  v11 = v16;
LABEL_6:

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100BE0550()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Already triggered pairing.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100BE07BC()
{
  if (*(v0 + 736) == 1)
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016B7860);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Already triggered pairing.", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 616);

    return _swift_task_switch(sub_100BE0A7C, v7, 0);
  }
}

uint64_t sub_100BE0A7C()
{
  v1 = *(v0 + 280);
  sub_100648FF4(*(v0 + 536));

  return _swift_task_switch(sub_100BE0AEC, v1, 0);
}

uint64_t sub_100BE0AEC()
{
  v16 = v0;
  v1 = *(v0 + 536);
  if ((*(v0 + 624))(v1, 1, *(v0 + 496)) == 1)
  {
    sub_10000B3A8(v1, &qword_1016A68C8, &qword_1013B4C58);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136EED0, &v15);
      _os_log_impl(&_mh_execute_header, v3, v4, "Failure in %s: Discovery mode is not set!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    v7 = *(v0 + 8);
    goto LABEL_12;
  }

  v8 = *(v0 + 584);
  v9 = *(v0 + 528);
  sub_100BF3978(v1, v9, type metadata accessor for DiscoveryState.Mode);
  sub_100BF39E0(v9, v8, type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    v11 = *(v0 + 584);
    v12 = *(v0 + 528);
    sub_100BEF73C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    sub_1000163C4(v11, type metadata accessor for DiscoveryState);
    sub_1000163C4(v12, type metadata accessor for DiscoveryState.Mode);

    v7 = *(v0 + 8);
LABEL_12:

    return v7();
  }

  v10 = *(v0 + 616);

  return _swift_task_switch(sub_100BE1058, v10, 0);
}

uint64_t sub_100BE1058()
{
  v1 = v0[77];
  v2 = v0[72];
  v3 = v0[35];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  v0[80] = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE1110, v3, 0);
}

uint64_t sub_100BE1110()
{
  v1 = v0[72];
  v2 = sub_100649DB4(v1, v0[73]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[35];
    sub_1000163C4(v0[73], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BE1390, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[81] = v4;
    *v4 = v0;
    v4[1] = sub_100BE1250;
    v5 = v0[73];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BE1250()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 280);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE1390, v3, 0);
}

uint64_t sub_100BE1390()
{
  v130 = v0;
  v1 = *(v0 + 272);
  *(*(v0 + 280) + 208) = 0;

  v2 = *(v1 + 16);
  *(v0 + 656) = v2;
  v112 = v2;
  if (v2)
  {
    v3 = *(v0 + 448);
    v4 = *(v0 + 272) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = v2;
    do
    {
      sub_100BF14C8(v4);
      v4 += v5;
      --v6;
    }

    while (v6);
    v7 = *(v0 + 448);
    v8 = *(v0 + 384);
    v9 = *(v0 + 360);
    v10 = *(v0 + 328);
    v11 = *(v0 + 272);
    v126 = *(v0 + 280);
    swift_beginAccess();
    v12 = *(v7 + 16);
    v7 += 16;
    v125 = v12;
    v117 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v13 = v11 + v117;
    v122 = (v8 + 8);
    v123 = (v9 + 8);
    v14 = *(v7 + 56);
    v120 = (v7 + 32);
    v121 = (v7 + 40);
    v114 = (v10 + 48);
    v113 = (v10 + 32);
    v115 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v116 = (v10 + 8);
    v118 = (v7 - 8);
    v119 = (v7 + 16);
    v124 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v14;
      v16 = *(v0 + 368);
      v17 = *(v0 + 352);
      v125(*(v0 + 488), v13, *(v0 + 440));
      Device.id.getter();
      Identifier.id.getter();
      (*v123)(v16, v17);
      v18 = *(v126 + 176);
      v19 = *(v0 + 432);
      if (*(v18 + 16))
      {

        v20 = sub_1000210EC(v19);
        if (v21)
        {
          v22 = *(v0 + 432);
          v23 = *(v0 + 376);
          v125(*(v0 + 344), *(v18 + 56) + v20 * v15, *(v0 + 440));
          (*v122)(v22, v23);

          v24 = 0;
          goto LABEL_13;
        }

        v25 = *(v0 + 432);
        v26 = *(v0 + 376);

        (*v122)(v25, v26);
      }

      else
      {
        (*v122)(*(v0 + 432), *(v0 + 376));
      }

      v24 = 1;
LABEL_13:
      v27 = *(v0 + 440);
      v28 = *(v0 + 344);
      (*v121)(v28, v24, 1, v27);
      if (!(*v120)(v28, 1, v27))
      {
        v30 = *(v0 + 344);
        v125(*(v0 + 480), v30, *(v0 + 440));
        sub_10000B3A8(v30, &qword_101699860, &qword_1013A34D0);
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        *(v0 + 232) = 0x7365547265646E75;
        *(v0 + 240) = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        if (*(v0 + 740) == 1 && (v31 = [objc_opt_self() sharedInstance], v32 = objc_msgSend(v31, "isInternalBuild"), v31, v32))
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v34 = *(v0 + 312);
          v33 = *(v0 + 320);
          v35 = sub_1000076D4(*(v0 + 304), qword_101696A00);
          swift_beginAccess();
          sub_1000D2A70(v35, v34, &unk_101696900, &unk_10138B1E0);
          if ((*v114)(v34, 1, v33) == 1)
          {
            sub_10000B3A8(*(v0 + 312), &unk_101696900, &unk_10138B1E0);
            goto LABEL_23;
          }

          (*v113)(*(v0 + 336), *(v0 + 312), *(v0 + 320));
        }

        else
        {
LABEL_23:
          My = type metadata accessor for Feature.FindMy();
          *(v0 + 40) = My;
          *(v0 + 48) = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
          v37 = sub_1000280DC((v0 + 16));
          (*(*(My - 8) + 104))(v37, v115, My);
          LOBYTE(My) = isFeatureEnabled(_:)();
          sub_100007BAC((v0 + 16));
          if (My)
          {
            sub_100F0FDBC();
            Current = CFAbsoluteTimeGetCurrent();
            if (qword_101694FD8 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
            OSAllocatedUnfairLock.callAsFunction<A>(_:)();
            if (Current - *(v0 + 248) - *(v0 + 256) > 86400.0)
            {
              v39 = *(v0 + 288);
              v40 = *(v0 + 296);
              OSAllocatedUnfairLock.callAsFunction<A>(_:)();
              v41 = type metadata accessor for TaskPriority();
              v42 = *(v41 - 8);
              (*(v42 + 56))(v40, 1, 1, v41);
              v43 = swift_allocObject();
              *(v43 + 16) = 0;
              *(v43 + 24) = 0;
              sub_1000D2A70(v40, v39, &qword_101698C00, &qword_10138B570);
              LODWORD(v40) = (*(v42 + 48))(v39, 1, v41);

              v44 = *(v0 + 288);
              if (v40 == 1)
              {
                sub_10000B3A8(*(v0 + 288), &qword_101698C00, &qword_10138B570);
              }

              else
              {
                TaskPriority.rawValue.getter();
                (*(v42 + 8))(v44, v41);
              }

              v45 = *(v43 + 16);
              swift_unknownObjectRetain();

              if (v45)
              {
                swift_getObjectType();
                v46 = dispatch thunk of Actor.unownedExecutor.getter();
                v48 = v47;
                swift_unknownObjectRelease();
              }

              else
              {
                v46 = 0;
                v48 = 0;
              }

              sub_10000B3A8(*(v0 + 296), &qword_101698C00, &qword_10138B570);
              v49 = swift_allocObject();
              *(v49 + 16) = &unk_1013DD7A8;
              *(v49 + 24) = v43;
              if (v48 | v46)
              {
                *(v0 + 56) = 0;
                *(v0 + 64) = 0;
                *(v0 + 72) = v46;
                *(v0 + 80) = v48;
              }

              swift_task_create();
            }

            Date.init(timeIntervalSinceReferenceDate:)();
          }

          else
          {
            Date.init()();
          }
        }

        v50 = *(v0 + 480);
        v51 = *(v0 + 440);
        v52 = *(v0 + 336);
        v53 = *(v0 + 320);
        Date.timeIntervalSinceReferenceDate.getter();
        v55 = v54;
        (*v116)(v52, v53);
        Device.bleAdvertisementTimestamp.getter();
        v57 = v56;
        (*v118)(v50, v51);
        v29 = v55 - v57;
        goto LABEL_40;
      }

      sub_10000B3A8(*(v0 + 344), &qword_101699860, &qword_1013A34D0);
      v29 = 1.79769313e308;
LABEL_40:
      v14 = v15;
      if (v29 >= *(v126 + 368))
      {
        (*v118)(*(v0 + 488), *(v0 + 440));
      }

      else
      {
        v58 = *v119;
        (*v119)(*(v0 + 472), *(v0 + 488), *(v0 + 440));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v124;
        v129 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125680(0, v124[2] + 1, 1);
          v14 = v15;
          v60 = v129;
        }

        v62 = v60[2];
        v61 = v60[3];
        if (v62 >= v61 >> 1)
        {
          sub_101125680((v61 > 1), v62 + 1, 1);
          v14 = v15;
          v60 = v129;
        }

        v63 = *(v0 + 472);
        v64 = *(v0 + 440);
        v60[2] = v62 + 1;
        v124 = v60;
        v58(v60 + v117 + v62 * v14, v63, v64);
      }

      v13 += v14;
      if (!--v2)
      {
        goto LABEL_47;
      }
    }
  }

  swift_beginAccess();
  v124 = _swiftEmptyArrayStorage;
LABEL_47:
  *(v0 + 664) = v124;
  v65 = *(v0 + 528);
  v66 = *(v0 + 520);
  swift_weakInit();
  sub_100BF39E0(v65, v66, type metadata accessor for DiscoveryState.Mode);
  v67 = v124[2];
  if (!v67)
  {

    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_1016B7860);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v129 = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136EED0, &v129);
      _os_log_impl(&_mh_execute_header, v87, v88, "%s all advertisements are too old, can't proceed with pairing.", v89, 0xCu);
      sub_100007BAC(v90);
    }

    v84 = swift_task_alloc();
    *(v0 + 720) = v84;
    *v84 = v0;
    v85 = sub_100BE3540;
    goto LABEL_61;
  }

  if (v67 == 1)
  {
    v127 = *(v0 + 528);
    v68 = *(v0 + 512);
    v69 = *(v0 + 464);
    v71 = *(v0 + 440);
    v70 = *(v0 + 448);
    v72 = *(v0 + 360);
    v73 = *(v0 + 368);
    v74 = *(v0 + 352);
    (*(v70 + 16))(v69, v124 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v71);
    Device.id.getter();
    Identifier.id.getter();
    (*(v72 + 8))(v73, v74);
    (*(v70 + 8))(v69, v71);
    v75 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
    (*(*(v75 - 8) + 56))(v68, 4, 4, v75);
    v76 = sub_100649A24(v127, v68);
    sub_1000163C4(v68, type metadata accessor for DiscoveryState.Mode);
    if ((v76 & 1) == 0)
    {
      v77 = *(v0 + 424);
      v78 = *(v0 + 280);
      swift_beginAccess();
      v79 = *(v78 + 168);

      LOBYTE(v77) = sub_100037E20(v77, v79);

      if (v77)
      {

        if (qword_101694D50 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_1000076D4(v80, qword_1016B7860);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "ProxCard already has been displayed for this accessory!", v83, 2u);
        }

        v84 = swift_task_alloc();
        *(v0 + 672) = v84;
        *v84 = v0;
        v85 = sub_100BE24A8;
LABEL_61:
        v84[1] = v85;
        v91 = *(v0 + 520);

        return sub_100BE42B8(v0 + 264, v91);
      }
    }

    (*(*(v0 + 384) + 8))(*(v0 + 424), *(v0 + 376));
    v67 = 1;
  }

  sub_1000163C4(*(v0 + 520), type metadata accessor for DiscoveryState.Mode);
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  *(v0 + 688) = sub_1000076D4(v93, qword_1016B7860);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 134218240;
    *(v96 + 4) = v124[2];

    *(v96 + 12) = 2048;
    *(v96 + 14) = v112;

    _os_log_impl(&_mh_execute_header, v94, v95, "Trigger pairing for %ld accessories (originally %ld)!", v96, 0x16u);
  }

  else
  {
  }

  if (v67 == 1)
  {
    v97 = *(v0 + 464);
    v98 = *(v0 + 440);
    v99 = *(v0 + 448);
    v100 = *(v0 + 360);
    v101 = *(v0 + 368);
    v102 = *(v0 + 352);
    v103 = *(v0 + 280);
    swift_beginAccess();
    v128 = *(v103 + 168);
    v129 = _swiftEmptyArrayStorage;

    sub_101123D4C(0, 1, 0);
    v104 = _swiftEmptyArrayStorage;
    (*(v99 + 16))(v97, v124 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v98);
    Device.id.getter();
    Identifier.id.getter();
    (*(v100 + 8))(v101, v102);
    (*(v99 + 8))(v97, v98);
    v106 = _swiftEmptyArrayStorage[2];
    v105 = _swiftEmptyArrayStorage[3];
    if (v106 >= v105 >> 1)
    {
      sub_101123D4C((v105 > 1), v106 + 1, 1);
      v104 = v129;
    }

    v107 = *(v0 + 416);
    v108 = *(v0 + 376);
    v109 = *(v0 + 384);
    v104[2] = v106 + 1;
    (*(v109 + 32))(v104 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v106, v107, v108);
    v110 = sub_1003ADDE8(v104, v128);

    *(v103 + 168) = v110;
  }

  v111 = swift_task_alloc();
  *(v0 + 696) = v111;
  *v111 = v0;
  v111[1] = sub_100BE27FC;

  return sub_100BC89E4();
}

uint64_t sub_100BE24A8()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 520);
  v4 = *(v2 + 280);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState.Mode);
  if (v0)
  {
    v5 = sub_100BE3A60;
  }

  else
  {
    v5 = sub_100BE2604;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BE2604()
{
  v1 = v0[66];
  (*(v0[48] + 8))(v0[53], v0[47]);
  swift_weakDestroy();
  sub_1000163C4(v1, type metadata accessor for DiscoveryState.Mode);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100BE27FC()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_100BE3C5C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 280);
    v4 = sub_100BE2924;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100BE2924()
{
  v45 = v0;
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[77];

    return _swift_task_switch(sub_100BE303C, v1, 0);
  }

  v2 = v0[71];

  sub_100BEF73C();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);
  if (v0[82] != 1)
  {

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      v35 = v0[66];

      swift_weakDestroy();
      v27 = v35;
      goto LABEL_13;
    }

    v30 = v0[82];
    v15 = v0[66];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 134218242;
    *(v31 + 4) = v30;

    *(v31 + 12) = 2114;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failure to trigger multi-pairing of %ld accessories, error %{public}@!", v31, 0x16u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    goto LABEL_11;
  }

  v4 = v0[56];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[50];
  v41 = v0[51];
  v8 = v0[48];
  v43 = v0[49];
  v9 = v0[46];
  v39 = v0[47];
  v10 = v0[44];
  v11 = v0[45];
  (*(v4 + 16))(v5, v0[34] + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6);
  Device.id.getter();
  Identifier.id.getter();
  (*(v11 + 8))(v9, v10);
  (*(v4 + 8))(v5, v6);
  (*(v8 + 32))(v41, v7, v39);
  (*(v8 + 16))(v43, v41, v39);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[66];
  v16 = v0[51];
  v18 = v0[48];
  v17 = v0[49];
  v19 = v0[47];
  if (!v14)
  {

    v34 = *(v18 + 8);
    v34(v17, v19);
    v34(v16, v19);
LABEL_11:
    swift_weakDestroy();
    v27 = v15;
    goto LABEL_13;
  }

  v20 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v44 = v42;
  *v20 = 141558531;
  *(v20 + 4) = 1752392040;
  *(v20 + 12) = 2081;
  sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v16;
  v23 = v22;
  v24 = *(v18 + 8);
  v24(v17, v19);
  v25 = sub_1000136BC(v21, v23, &v44);

  *(v20 + 14) = v25;
  *(v20 + 22) = 2114;
  swift_errorRetain();
  v26 = _swift_stdlib_bridgeErrorToNSError();
  *(v20 + 24) = v26;
  *v38 = v26;
  _os_log_impl(&_mh_execute_header, v12, v13, "Failure to trigger pairing for device %{private,mask.hash}s, error %{public}@!", v20, 0x20u);
  sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

  sub_100007BAC(v42);

  v24(v40, v19);
  swift_weakDestroy();
  v27 = v15;
LABEL_13:
  sub_1000163C4(v27, type metadata accessor for DiscoveryState.Mode);

  v36 = v0[1];

  return v36();
}

uint64_t sub_100BE303C()
{
  v1 = v0[35];
  sub_100BF39E0(v0[77] + v0[80], v0[72], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE30C8, v1, 0);
}

uint64_t sub_100BE30C8()
{
  v1 = v0[72];
  v2 = sub_100649DB4(v1, v0[71]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[35];
    sub_1000163C4(v0[71], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BE3348, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[89] = v4;
    *v4 = v0;
    v4[1] = sub_100BE3208;
    v5 = v0[71];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BE3208()
{
  v1 = *v0;

  v2 = *(v1 + 568);
  v3 = *(v1 + 280);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE3348, v3, 0);
}

uint64_t sub_100BE3348()
{
  v1 = v0[66];
  sub_100BE53CC(v0[83]);

  swift_weakDestroy();
  sub_1000163C4(v1, type metadata accessor for DiscoveryState.Mode);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100BE3540()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 520);
  v4 = *(v2 + 280);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState.Mode);
  if (v0)
  {
    v5 = sub_100BE387C;
  }

  else
  {
    v5 = sub_100BE369C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BE369C()
{
  v1 = *(v0 + 528);
  swift_weakDestroy();
  sub_1000163C4(v1, type metadata accessor for DiscoveryState.Mode);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BE387C()
{
  v1 = *(v0 + 528);
  swift_weakDestroy();
  sub_1000163C4(v1, type metadata accessor for DiscoveryState.Mode);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BE3A60()
{
  v1 = v0[66];
  (*(v0[48] + 8))(v0[53], v0[47]);
  swift_weakDestroy();
  sub_1000163C4(v1, type metadata accessor for DiscoveryState.Mode);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100BE3C5C()
{
  v42 = v0;
  if (v0[82] == 1)
  {
    v1 = v0[56];
    v2 = v0[57];
    v3 = v0[55];
    v4 = v0[50];
    v38 = v0[51];
    v5 = v0[48];
    v40 = v0[49];
    v6 = v0[46];
    v36 = v0[47];
    v7 = v0[44];
    v8 = v0[45];
    (*(v1 + 16))(v2, v0[34] + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3);
    Device.id.getter();
    Identifier.id.getter();
    (*(v8 + 8))(v6, v7);
    (*(v1 + 8))(v2, v3);
    (*(v5 + 32))(v38, v4, v36);
    (*(v5 + 16))(v40, v38, v36);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[66];
    v13 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v16 = v0[47];
    if (v11)
    {
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v13;
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v14, v16);
      v22 = sub_1000136BC(v18, v20, &v41);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      *v35 = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failure to trigger pairing for device %{private,mask.hash}s, error %{public}@!", v17, 0x20u);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v39);

      v21(v37, v16);
      swift_weakDestroy();
      v24 = v12;
      goto LABEL_9;
    }

    v31 = *(v15 + 8);
    v31(v14, v16);
    v31(v13, v16);
    goto LABEL_7;
  }

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[82];
    v12 = v0[66];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 134218242;
    *(v28 + 4) = v27;

    *(v28 + 12) = 2114;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failure to trigger multi-pairing of %ld accessories, error %{public}@!", v28, 0x16u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

LABEL_7:
    swift_weakDestroy();
    v24 = v12;
    goto LABEL_9;
  }

  v32 = v0[66];

  swift_weakDestroy();
  v24 = v32;
LABEL_9:
  sub_1000163C4(v24, type metadata accessor for DiscoveryState.Mode);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100BE42B8(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v2[16] = type metadata accessor for DiscoveryState(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100BE4370, 0, 0);
}

uint64_t sub_100BE4370()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 152);
    v0[22] = v2;

    return _swift_task_switch(sub_100BE4460, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100BE4460()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);
  swift_storeEnumTagMultiPayload();
  *(v0 + 256) = sub_100649DB4(v3, v2) & 1;
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE456C, 0, 0);
}

uint64_t sub_100BE456C()
{
  if (*(v0 + 256))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(*(v0 + 168) + 152);
    *(v0 + 184) = v3;

    return _swift_task_switch(sub_100BE4644, v3, 0);
  }
}

uint64_t sub_100BE4644()
{
  sub_100649254();
  *(v0 + 257) = v1 & 1;

  return _swift_task_switch(sub_100BE46B4, 0, 0);
}

uint64_t sub_100BE46B4()
{
  if (*(v0 + 257) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_100BE47CC;

    return sub_100BC89E4();
  }

  else
  {
    v3 = *(v0 + 168);
    sub_100BF39E0(*(v0 + 120), *(v0 + 144), type metadata accessor for DiscoveryState.Mode);
    swift_storeEnumTagMultiPayload();

    return _swift_task_switch(sub_100BE48E0, v3, 0);
  }
}

uint64_t sub_100BE47CC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100BE5330;
  }

  else
  {
    v2 = sub_100BE4E18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BE48E0()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[21] + 152);
    v0[26] = v1;
    v2 = sub_100BE49D0;
  }

  else
  {
    v3 = v0[18];
    sub_100BEF73C();
    v0[27] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BE4BC0;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BE49D0()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE4A80, v3, 0);
}

uint64_t sub_100BE4A80()
{
  v1 = v0[20];
  v2 = sub_100649DB4(v1, v0[18]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[18], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BE4D88, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_100BE4C5C;
    v4 = v0[18];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BE4BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BE4C5C()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 144), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE4D88, 0, 0);
}

uint64_t sub_100BE4D88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BE4E18()
{
  v1 = *(v0 + 168);
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_100BE4E88, v1, 0);
}

uint64_t sub_100BE4E88()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[21] + 152);
    v0[29] = v1;
    v2 = sub_100BE4F78;
  }

  else
  {
    v3 = v0[17];
    sub_100BEF73C();
    v0[30] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BE5168;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BE4F78()
{
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE5028, v3, 0);
}

uint64_t sub_100BE5028()
{
  v1 = v0[20];
  v2 = sub_100649DB4(v1, v0[17]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[17], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BF4420, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[31] = v3;
    *v3 = v0;
    v3[1] = sub_100BE5204;
    v4 = v0[17];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BE5168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BE5204()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 136), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BF4420, 0, 0);
}

uint64_t sub_100BE5330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BE53CC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = v4;

  static Transaction.asyncTask(name:block:)();

  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BE5540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for ObservationStreams();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100BE5688, 0, 0);
}

uint64_t sub_100BE5688()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BE5770, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BE5770()
{
  *(v0 + 128) = *(*(v0 + 120) + 232);
  type metadata accessor for TimeTracker();
  sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BE5848, v2, v1);
}

uint64_t sub_100BE5848()
{
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BE58D8, 0, 0);
}

uint64_t sub_100BE58D8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[15] + 320);
  ObjectType = swift_getObjectType();
  v5 = sub_10039D1A4(v2);
  v0[17] = v5;
  v6 = type metadata accessor for PairingContext();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_100BE59FC;
  v8 = v0[14];
  v9 = v0[9];

  return dispatch thunk of PairingServiceType.pairAccessories(_:context:)(v8, v5, v9, ObjectType, v3);
}

uint64_t sub_100BE59FC()
{
  v2 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  if (v0)
  {
    v3 = sub_100BE5EBC;
  }

  else
  {
    v3 = sub_100BE5B60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100BE5B60()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v19 = v0[6];
  v20 = v0[7];
  v18 = type metadata accessor for TaskPriority();
  v17 = *(*(v18 - 8) + 56);
  v17(v6, 1, 1, v18);
  v7 = swift_allocObject();
  swift_weakInit();
  v16 = *(v4 + 16);
  v13 = v5;
  v16(v3, v1, v5);
  v15 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v7;
  *(v8 + 5) = v19;
  v14 = *(v4 + 32);
  v14(&v8[v15], v3, v5);
  *&v8[(v2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

  sub_1008CE048(0, 0, v6, &unk_1013DD800, v8);

  sub_10000B3A8(v6, &qword_101698C00, &qword_10138B570);
  v17(v6, 1, 1, v18);
  v9 = swift_allocObject();
  swift_weakInit();

  v16(v3, v1, v13);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v9;
  *(v10 + 5) = v19;
  v14(&v10[v15], v3, v13);
  *&v10[(v2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

  sub_1008CE048(0, 0, v6, &unk_1013DD810, v10);

  sub_10000B3A8(v6, &qword_101698C00, &qword_10138B570);
  (*(v4 + 8))(v1, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BE5EBC()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in pairing trigger: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 56);

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100BE611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016B7D30, &unk_1013EACD0);
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100BE630C, 0, 0);
}

uint64_t sub_100BE630C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[15];
      v5 = v0[12];
      v6 = v0[9];
      sub_101123D4C(0, v3, 0);
      v7 = *(v5 + 16);
      v5 += 16;
      v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v22 = *(v5 + 56);
      v23 = v7;
      v24 = v4;
      v21 = (v5 - 8);
      do
      {
        v9 = v0[13];
        v11 = v0[10];
        v10 = v0[11];
        v12 = v0[8];
        v23(v9, v8, v10);
        Device.id.getter();
        Identifier.id.getter();
        (*(v6 + 8))(v11, v12);
        (*v21)(v9, v10);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123D4C((v13 > 1), v14 + 1, 1);
        }

        v15 = v0[16];
        v16 = v0[14];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        (*(v24 + 32))(_swiftEmptyArrayStorage + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14, v15, v16);
        v8 += v22;
        --v3;
      }

      while (v3);
    }

    v0[21] = _swiftEmptyArrayStorage;
    ObservationStreams.pairingStream.getter();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_100BE65E8;
    v18 = v0[19];

    return sub_100BE69D0(_swiftEmptyArrayStorage, v18);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100BE65E8()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100BE6800, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100BE6800()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in pairing updates listener: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BE69D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for PairingCoordinatorState();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7D38, &qword_1013DD8C8);
  v3[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016B7D40, &qword_1013DD8D0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100BE6BF4, v2, 0);
}

uint64_t sub_100BE6BF4()
{
  v35 = v0;
  v1 = *(v0 + 32);
  type metadata accessor for WorkItemQueue();
  *(v0 + 168) = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    *(v0 + 176) = v6;
    if (v6 == 1)
    {
      v7 = *(v0 + 136);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      if (qword_101694D50 != -1)
      {
        swift_once();
        v7 = *(v0 + 136);
      }

      v9 = *(v0 + 160);
      v10 = *(v0 + 128);
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_1016B7860);
      (*(v7 + 16))(v9, v5 + v8, v10);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 160);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      if (v14)
      {
        v18 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = v33;
        *v18 = 141558275;
        *(v18 + 4) = 1752392040;
        *(v18 + 12) = 2081;
        sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v16 + 8))(v15, v17);
        v22 = sub_1000136BC(v19, v21, &v34);

        *(v18 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v12, v13, "DiscoveryService: Start pairing state observation for %{private,mask.hash}s", v18, 0x16u);
        sub_100007BAC(v33);
      }

      else
      {

        (*(v16 + 8))(v15, v17);
      }
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_1016B7860);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v6;

        _os_log_impl(&_mh_execute_header, v24, v25, "DiscoveryService: Start multi-pairing state observation for %ld accessories.", v26, 0xCu);
      }

      else
      {
      }
    }

    sub_1000BC4D4(&qword_1016B7D30, &unk_1013EACD0);
    AsyncStream.makeAsyncIterator()();
    v28 = sub_100BCA23C(&qword_1016B7BE0, v27, type metadata accessor for DiscoveryService, &unk_1013DD690);
    *(v0 + 208) = enum case for PairingCoordinatorState.proxCard(_:);
    *(v0 + 184) = v28;
    *(v0 + 192) = v6;
    v29 = *(v0 + 32);
    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_100BE7104;
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);

    return AsyncStream.Iterator.next(isolation:)(v31, v29, v28, v32);
  }
}

uint64_t sub_100BE7104()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100BE7214, v1, 0);
}

uint64_t sub_100BE7214()
{
  v114 = v0;
  v1 = *(v0 + 96);
  v2 = sub_1000BC4D4(&qword_1016B7D48, &qword_1013DD8D8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 40);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    if (v4 == 1 && v3)
    {
      v8 = *(v0 + 136);
      v9 = *(v0 + 16);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      if (qword_101694D50 != -1)
      {
        swift_once();
        v8 = *(v0 + 136);
      }

      v11 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_1016B7860);
      (*(v8 + 16))(v11, v9 + v10, v12);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v18 = *(v0 + 136);
      v17 = *(v0 + 144);
      v19 = *(v0 + 128);
      if (v16)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        p_isa = v21;
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2081;
        sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v18 + 8))(v17, v19);
        v25 = sub_1000136BC(v22, v24, &p_isa);

        *(v20 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v14, v15, "DiscoveryService: Finished pairing state observation for %{private,mask.hash}s", v20, 0x16u);
        sub_100007BAC(v21);
      }

      else
      {

        (*(v18 + 8))(v17, v19);
      }
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1000076D4(v59, qword_1016B7860);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 192);
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        *(v63 + 4) = v62;

        _os_log_impl(&_mh_execute_header, v60, v61, "DiscoveryService: Finished multi-pairing state observation for %ld accessories.", v63, 0xCu);
      }

      else
      {
      }
    }

    v104 = *(v0 + 8);

    return v104();
  }

  else
  {
    v26 = *(v0 + 176);
    v27 = *(v0 + 88);
    v28 = *(v0 + 48);
    v29 = *(v0 + 56);

    (*(v29 + 32))(v27, v1 + *(v2 + 48), v28);
    if (v26 == 1)
    {
      v30 = *(v0 + 136);
      v109 = *(v0 + 16);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      if (qword_101694D50 != -1)
      {
        swift_once();
        v30 = *(v0 + 136);
      }

      v32 = *(v0 + 152);
      v33 = *(v0 + 128);
      v35 = *(v0 + 80);
      v34 = *(v0 + 88);
      v36 = *(v0 + 48);
      v37 = *(v0 + 56);
      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_1016B7860);
      v111 = *(v37 + 16);
      v111(v35, v34, v36);
      (*(v30 + 16))(v32, v109 + v31, v33);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 152);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);
      v45 = *(v0 + 80);
      v47 = *(v0 + 48);
      v46 = *(v0 + 56);
      if (v41)
      {
        log = v39;
        v48 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        *v48 = 136315651;
        sub_100BCA23C(&unk_1016B7D50, 255, &type metadata accessor for PairingCoordinatorState, &protocol conformance descriptor for PairingCoordinatorState);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v40;
        v51 = v50;
        v52 = v47;
        v53 = *(v46 + 8);
        v53(v45, v52);
        v54 = sub_1000136BC(v49, v51, &p_isa);

        *(v48 + 4) = v54;
        *(v48 + 12) = 2160;
        *(v48 + 14) = 1752392040;
        *(v48 + 22) = 2081;
        sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        (*(v43 + 8))(v42, v44);
        v58 = sub_1000136BC(v55, v57, &p_isa);

        *(v48 + 24) = v58;
        _os_log_impl(&_mh_execute_header, log, v106, "DiscoveryService: state = %s, accessory %{private,mask.hash}s.", v48, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v43 + 8))(v42, v44);
        v81 = v47;
        v53 = *(v46 + 8);
        v53(v45, v81);
      }

      v82 = 1;
      v69 = v111;
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 88);
      v65 = *(v0 + 72);
      v66 = *(v0 + 48);
      v67 = *(v0 + 56);
      v68 = type metadata accessor for Logger();
      sub_1000076D4(v68, qword_1016B7860);
      v69 = *(v67 + 16);
      v69(v65, v64, v66);
      swift_bridgeObjectRetain_n();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v110 = *(v0 + 192);
        v112 = v69;
        v72 = *(v0 + 72);
        v74 = *(v0 + 48);
        v73 = *(v0 + 56);
        v75 = swift_slowAlloc();
        loga = swift_slowAlloc();
        p_isa = &loga->isa;
        *v75 = 136315394;
        sub_100BCA23C(&unk_1016B7D50, 255, &type metadata accessor for PairingCoordinatorState, &protocol conformance descriptor for PairingCoordinatorState);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v53 = *(v73 + 8);
        v79 = v74;
        v69 = v112;
        v53(v72, v79);
        v80 = sub_1000136BC(v76, v78, &p_isa);

        *(v75 + 4) = v80;
        *(v75 + 12) = 2048;

        *(v75 + 14) = v110;

        _os_log_impl(&_mh_execute_header, v70, v71, "DiscoveryService: multi-pairing state = %s, for %ld accessories.", v75, 0x16u);
        sub_100007BAC(loga);
      }

      else
      {
        v83 = *(v0 + 72);
        v84 = *(v0 + 48);
        v85 = *(v0 + 56);
        swift_bridgeObjectRelease_n();

        v53 = *(v85 + 8);
        v53(v83, v84);
      }

      v82 = *(v0 + 192);
    }

    v86 = *(v0 + 208);
    v88 = *(v0 + 56);
    v87 = *(v0 + 64);
    v89 = *(v0 + 48);
    v69(v87, *(v0 + 88), v89);
    if ((*(v88 + 88))(v87, v89) == v86)
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_1000076D4(v90, qword_1016B7860);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        p_isa = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_1000136BC(0xD000000000000023, 0x800000010136EFB0, &p_isa);
        _os_log_impl(&_mh_execute_header, v91, v92, "%s.", v93, 0xCu);
        sub_100007BAC(v94);
      }

      v95 = *(v0 + 88);
      v96 = *(v0 + 48);
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of WorkItemQueue.enqueue(_:)();

      v53(v95, v96);
    }

    else
    {
      v97 = *(v0 + 64);
      v98 = *(v0 + 48);
      v53(*(v0 + 88), v98);
      v53(v97, v98);
    }

    *(v0 + 192) = v82;
    v99 = *(v0 + 184);
    v100 = *(v0 + 32);
    v101 = swift_task_alloc();
    *(v0 + 200) = v101;
    *v101 = v0;
    v101[1] = sub_100BE7104;
    v102 = *(v0 + 96);
    v103 = *(v0 + 104);

    return AsyncStream.Iterator.next(isolation:)(v102, v100, v99, v103);
  }
}