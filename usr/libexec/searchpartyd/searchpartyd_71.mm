uint64_t sub_1007E3BCC()
{

  return _swift_task_switch(sub_1007E3C3C, 0, 0);
}

uint64_t sub_1007E3C3C()
{
  v1 = v0[44];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[11];
  sub_10003627C(v0[7], type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v5, type metadata accessor for ObservedAdvertisement.Location);
  v1(v3, v4);
  sub_10003627C(v2, type metadata accessor for ObservedAdvertisement);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1000358B8;
  v7 = v0[30];
  v8 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v8, 0, 0, v7);
}

uint64_t sub_1007E3D74()
{

  return _swift_task_switch(sub_1007E3DDC, 0, 0);
}

uint64_t sub_1007E3DDC()
{
  v1 = v0[44];
  v2 = v0[31];
  v3 = v0[32];
  v11 = v0[30];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[7];

  sub_10003627C(v8, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v7, type metadata accessor for ObservedAdvertisement.Location);
  v1(v5, v6);
  sub_10003627C(v4, type metadata accessor for ObservedAdvertisement);
  (*(v2 + 8))(v3, v11);

  v9 = v0[1];

  return v9();
}

void sub_1007E3F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v5 = __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B368);
  (*(v11 + 16))(v13, a2, v10);
  sub_1000D2A70(a1, v9, &qword_10169F438, &unk_1013B3300);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v26[1] = v4;
    v20 = v19;
    (*(v11 + 8))(v13, v10);
    v21 = sub_1000136BC(v18, v20, &v28);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    sub_1000D2A70(v9, v7, &qword_10169F438, &unk_1013B3300);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_10000B3A8(v9, &qword_10169F438, &unk_1013B3300);
    v25 = sub_1000136BC(v22, v24, &v28);

    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Done saving location for beacon (from observation store update): %{private,mask.hash}s,\nresult: %s.", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v9, &qword_10169F438, &unk_1013B3300);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_1007E434C()
{
  v1 = v0;
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = v2;
    CurrentLocationMonitor.forceStopMonitor()();

    v2 = *(v1 + 192);
  }

  *(v1 + 192) = 0;

  *(v1 + 200) = 0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Location monitor stopped.", v6, 2u);
  }
}

uint64_t sub_1007E4480()
{

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
  *v1 = v0;
  v1[1] = sub_1007E456C;
  v3 = *(v0 + 24);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF880, v3, v2);
}

uint64_t sub_1007E456C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000142F4, v1, 0);
}

uint64_t sub_1007E4684()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for BeaconIdentifier(0);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007E4718, v0, 0);
}

uint64_t sub_1007E4718()
{
  v9 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101360AF0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1007E48C4;

  return daemon.getter();
}

uint64_t sub_1007E48C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007E4AA0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007E4AA0(uint64_t a1)
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

    *(v4 + 112) = a1;

    return _swift_task_switch(sub_1007E4C28, a1, 0);
  }
}

uint64_t sub_1007E4C28()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_1007E4D14;
  v3 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v3, v2);
}

uint64_t sub_1007E4D14()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1007E4E2C, v1, 0);
}

uint64_t sub_1007E4E2C()
{
  v1 = v0[8];

  v0[16] = v0[7];

  return _swift_task_switch(sub_1007E4EA0, v1, 0);
}

uint64_t sub_1007E4EA0()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = 0;
    sub_10001F280(v1 + 32, (v0 + 2));
    v3 = getuid();
    sub_1000294F0(v3);
    v4 = v0[5];
    v5 = v0[6];
    sub_1000035D0(v0 + 2, v4);
    (*(*(*(v5 + 8) + 8) + 32))(v4);
    v7 = v0[5];
    v6 = v0[6];
    v8 = sub_1000035D0(v0 + 2, v7);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1007E500C;
    v10 = v0[10];
    v11 = v0[8];

    return sub_1007F82D8(v10, v8, v11, v7, v6);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1007E500C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[5];
  v4 = v1[6];
  v5 = sub_1000035D0(v1 + 2, v3);
  v6 = swift_task_alloc();
  v1[20] = v6;
  *v6 = v2;
  v6[1] = sub_1007E51B0;
  v7 = v1[8];
  v8 = v1[10];

  return sub_1007FCAC4(v8, v5, v7, v3, v4);
}

uint64_t sub_1007E51B0()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1007E52C0, v1, 0);
}

uint64_t sub_1007E52C0()
{
  v1 = v0[17];
  v2 = v0[18] + 1;
  sub_10003627C(v0[10], type metadata accessor for BeaconIdentifier);
  sub_100007BAC(v0 + 2);
  if (v2 == v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[18];
    v0[18] = v5 + 1;
    sub_10001F280(v0[16] + 40 * v5 + 72, (v0 + 2));
    v6 = getuid();
    sub_1000294F0(v6);
    v7 = v0[5];
    v8 = v0[6];
    sub_1000035D0(v0 + 2, v7);
    (*(*(*(v8 + 8) + 8) + 32))(v7);
    v10 = v0[5];
    v9 = v0[6];
    v11 = sub_1000035D0(v0 + 2, v10);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1007E500C;
    v13 = v0[10];
    v14 = v0[8];

    return sub_1007F82D8(v13, v11, v14, v10, v9);
  }
}

uint64_t sub_1007E5468()
{
  *(v1 + 16) = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1007E5504, v0, 0);
}

uint64_t sub_1007E5504()
{
  v1 = v0[2];
  if (*(v1 + 176))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B368);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already subscribed to device events.", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[3];
    v9 = type metadata accessor for TaskPriority();
    v0[4] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v0[5] = v11;
    v0[6] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v8, 1, 1, v9);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    v13 = sub_100BB9ADC(0, 0, v8, &unk_1013BD108, v12);
    sub_10000B3A8(v8, &qword_101698C00, &qword_10138B570);
    *(v1 + 176) = v13;

    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_1007E5764;

    return daemon.getter();
  }
}

uint64_t sub_1007E5764(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_1007E5940;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007E5940(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_1007E5AB0, v7, 0);
  }
}

uint64_t sub_1007E5AB0()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 184))
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 80);
    (*(v0 + 40))(v2, 1, 1, *(v0 + 32));
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    v4[5] = v1;

    v5 = sub_100BB9ADC(0, 0, v2, &unk_1013BD118, v4);

    sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
    *(v1 + 184) = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1007E5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for BeaconIdentifier(0);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEvent(0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v4[16] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016AA580, &qword_1013BD1A0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016AA588, &qword_1013BD1A8);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016AA590, &qword_1013BD1B0);
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1007E5ED8, 0, 0);
}

uint64_t sub_1007E5ED8()
{
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 208) = sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Location fetch service subscribing to device events.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_1007E6028;

  return daemon.getter();
}

uint64_t sub_1007E6028(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[28] = a1;

  v3 = swift_task_alloc();
  v2[29] = v3;
  v4 = type metadata accessor for Daemon();
  v2[30] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[31] = v6;
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1007E6208;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007E6208(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_1007E64A0;
  }

  else
  {

    *(v4 + 264) = a1;
    v6 = sub_1007E6344;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007E6344()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[18] + 104))(v0[19], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[17]);
  AsyncStream.init(_:bufferingPolicy:_:)();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[34] = v0[32];
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1007E66E4;
  v5 = v0[23];
  v6 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1007E64A0()
{

  return _swift_task_switch(sub_1007E6508, 0, 0);
}

uint64_t sub_1007E6508()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to register for device events: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1007E66E4()
{

  return _swift_task_switch(sub_1007E67E0, 0, 0);
}

uint64_t sub_1007E67E0()
{
  v32 = v0;
  v1 = v0[16];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Ended stream of device events.", v4, 2u);
    }

    goto LABEL_15;
  }

  v6 = v0[14];
  v5 = v0[15];
  sub_100035B84(v1, v5, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v5, v6, type metadata accessor for DeviceEvent);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v13;
    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16 = v0[2];
    v17 = v0[3];
    sub_10003627C(v10, type metadata accessor for DeviceEvent);
    v18 = sub_1000136BC(v16, v17, &v31);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Subscription updated device event for beacon: %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    sub_10003627C(v10, type metadata accessor for DeviceEvent);
  }

  v19 = v0[34];
  static Task<>.checkCancellation()();
  if (v19)
  {
    v21 = v0[24];
    v20 = v0[25];
    v22 = v0[23];
    sub_10003627C(v0[15], type metadata accessor for DeviceEvent);
    (*(v21 + 8))(v20, v22);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to register for device events: %{public}@.", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_15:

    v29 = v0[1];

    return v29();
  }

  sub_1007FF3E4(v0[15] + *(v0[11] + 36), v0[10], type metadata accessor for BeaconIdentifier);
  v28 = swift_task_alloc();
  v0[36] = v28;
  *v28 = v0;
  v28[1] = sub_1007E6D5C;

  return daemon.getter();
}

uint64_t sub_1007E6D5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 296) = a1;

  v5 = swift_task_alloc();
  *(v3 + 304) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000194F8(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v5 = v4;
  v5[1] = sub_1007E6F10;
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007E6F10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = a1;

  if (v1)
  {

    v5 = sub_1007E7D90;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 72);

    *(v4 + 352) = *(v7 + 20);
    v5 = sub_1007E707C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007E707C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = sub_1007E712C;
  v4 = *(v0 + 40);

  return sub_100C57B00(v4, v2 + v1);
}

uint64_t sub_1007E712C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1007E76AC;
  }

  else
  {
    v2 = sub_1007E7240;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007E7240()
{
  v29 = v0;
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    sub_1007FF390();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    sub_1007FF3E4(v0[15], v0[13], type metadata accessor for DeviceEvent);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[15];
    v7 = v0[13];
    if (v5)
    {
      v26 = v0[10];
      v27 = v0[15];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v8 = 138543875;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      type metadata accessor for UUID();
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10003627C(v7, type metadata accessor for DeviceEvent);
      v14 = sub_1000136BC(v11, v13, &v28);

      *(v8 + 24) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v8, 0x20u);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v25);

      sub_10003627C(v26, type metadata accessor for BeaconIdentifier);
      v15 = v27;
    }

    else
    {
      v21 = v0[10];

      sub_10003627C(v7, type metadata accessor for DeviceEvent);
      sub_10003627C(v21, type metadata accessor for BeaconIdentifier);
      v15 = v6;
    }

    sub_10003627C(v15, type metadata accessor for DeviceEvent);
    v0[34] = 0;
    v22 = swift_task_alloc();
    v0[35] = v22;
    *v22 = v0;
    v22[1] = sub_1007E66E4;
    v23 = v0[23];
    v24 = v0[16];

    return AsyncStream.Iterator.next(isolation:)(v24, 0, 0, v23);
  }

  else
  {
    sub_100035B84(v1, v0[8], type metadata accessor for LocalFindableAccessoryRecord);
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v16[1] = sub_1007E7A08;
    v17 = v0[10];
    v18 = v0[8];
    v19 = v0[4];

    return sub_1007F5B48(v17, v18, v19);
  }
}

uint64_t sub_1007E76AC()
{
  v23 = v0;

  sub_1007FF3E4(v0[15], v0[13], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  v5 = v0[13];
  if (v3)
  {
    v20 = v0[10];
    v21 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v6 = 138543875;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10003627C(v5, type metadata accessor for DeviceEvent);
    v12 = sub_1000136BC(v9, v11, &v22);

    *(v6 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v19);

    sub_10003627C(v20, type metadata accessor for BeaconIdentifier);
    v13 = v21;
  }

  else
  {
    v14 = v0[10];

    sub_10003627C(v5, type metadata accessor for DeviceEvent);
    sub_10003627C(v14, type metadata accessor for BeaconIdentifier);
    v13 = v4;
  }

  sub_10003627C(v13, type metadata accessor for DeviceEvent);
  v0[34] = 0;
  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = sub_1007E66E4;
  v16 = v0[23];
  v17 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v17, 0, 0, v16);
}

uint64_t sub_1007E7A08()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[43] = v3;
  *v3 = v2;
  v3[1] = sub_1007E7B74;
  v4 = v1[8];
  v5 = v1[4];
  v6 = v1[10];

  return sub_1007FAA80(v6, v4, v5);
}

uint64_t sub_1007E7B74()
{

  return _swift_task_switch(sub_1007E7C70, 0, 0);
}

uint64_t sub_1007E7C70()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[8];

  sub_10003627C(v3, type metadata accessor for LocalFindableAccessoryRecord);
  sub_10003627C(v2, type metadata accessor for BeaconIdentifier);
  sub_10003627C(v1, type metadata accessor for DeviceEvent);
  v0[34] = v0[41];
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1007E66E4;
  v5 = v0[23];
  v6 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1007E7D90(uint64_t a1)
{
  v25 = v1;
  sub_1007FF390();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();
  sub_1007FF3E4(v1[15], v1[13], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[15];
  v7 = v1[13];
  if (v5)
  {
    v22 = v1[10];
    v23 = v1[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v8 = 138543875;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10003627C(v7, type metadata accessor for DeviceEvent);
    v14 = sub_1000136BC(v11, v13, &v24);

    *(v8 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);

    sub_10003627C(v22, type metadata accessor for BeaconIdentifier);
    v15 = v23;
  }

  else
  {
    v16 = v1[10];

    sub_10003627C(v7, type metadata accessor for DeviceEvent);
    sub_10003627C(v16, type metadata accessor for BeaconIdentifier);
    v15 = v6;
  }

  sub_10003627C(v15, type metadata accessor for DeviceEvent);
  v1[34] = 0;
  v17 = swift_task_alloc();
  v1[35] = v17;
  *v17 = v1;
  v17[1] = sub_1007E66E4;
  v18 = v1[23];
  v19 = v1[16];

  return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v18);
}

uint64_t sub_1007E8110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for BeaconIdentifier(0);
  v5[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for CloudStorageStore.State(0);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90);
  v5[25] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v5[32] = v11;
  v5[33] = *(v11 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1007E8420, a4, 0);
}

uint64_t sub_1007E8420()
{
  v1 = *(*(v0 + 96) + 128);
  *(v0 + 280) = v1;
  return _swift_task_switch(sub_1007E8444, v1, 0);
}

uint64_t sub_1007E8444()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1007E854C, 0, 0);
}

uint64_t sub_1007E854C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[36] = 0;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1007E862C;
  v5 = v0[32];
  v6 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1007E862C()
{

  return _swift_task_switch(sub_1007E8728, 0, 0);
}

uint64_t sub_1007E8728()
{
  v42 = v0;
  v1 = v0[25];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    v2 = v0[1];
LABEL_5:

    return v2();
  }

  v3 = v0[36];
  sub_100035B84(v1, v0[24], type metadata accessor for CloudStorageStore.State);
  static Task<>.checkCancellation()();
  v0[38] = v3;
  if (v3)
  {
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[32];
    sub_10003627C(v0[24], type metadata accessor for CloudStorageStore.State);
    (*(v5 + 8))(v4, v6);

    v2 = v0[1];
    goto LABEL_5;
  }

  sub_1007FF3E4(v0[24], v0[23], type metadata accessor for CloudStorageStore.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = v0[23];
    sub_10003627C(v0[24], type metadata accessor for CloudStorageStore.State);
    sub_10003627C(v8, type metadata accessor for CloudStorageStore.State);
LABEL_16:
    v0[36] = v0[38];
    v28 = swift_task_alloc();
    v0[37] = v28;
    *v28 = v0;
    v28[1] = sub_1007E862C;
    v29 = v0[32];
    v30 = v0[25];

    return AsyncStream.Iterator.next(isolation:)(v30, 0, 0, v29);
  }

  sub_10000A748(v0[23], (v0 + 2));
  sub_10001F280((v0 + 2), (v0 + 7));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = v0[24];
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[16];
    sub_100007BAC(v0 + 2);
    sub_10003627C(v24, type metadata accessor for CloudStorageStore.State);
    (*(v26 + 56))(v27, 1, 1, v25);
    sub_10000B3A8(v27, &qword_1016A9A30, &unk_1013BD120);
    goto LABEL_16;
  }

  v9 = v0[20];
  v10 = v0[16];
  (*(v0[18] + 56))(v10, 0, 1, v0[17]);
  sub_100035B84(v10, v9, type metadata accessor for LocalFindableAccessoryRecord);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v11 = v0[19];
  v12 = v0[20];
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B368);
  sub_1007FF3E4(v12, v11, type metadata accessor for LocalFindableAccessoryRecord);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[19];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10003627C(v17, type metadata accessor for LocalFindableAccessoryRecord);
    v23 = sub_1000136BC(v20, v22, &v41);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating events for local findable record modified %{private,mask.hash}s.", v18, 0x16u);
    sub_100007BAC(v19);
  }

  else
  {

    sub_10003627C(v17, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v31 = v0[20];
  v33 = v0[14];
  v32 = v0[15];
  v34 = getuid();
  sub_1000294F0(v34);
  v35 = *(v33 + 20);
  v36 = type metadata accessor for UUID();
  (*(*(v36 - 8) + 16))(v32 + v35, v31, v36);
  v37 = swift_task_alloc();
  v0[39] = v37;
  *v37 = v0;
  v37[1] = sub_1007E8DE0;
  v38 = v0[20];
  v39 = v0[15];
  v40 = v0[13];

  return sub_1007F5B48(v39, v38, v40);
}

uint64_t sub_1007E8DE0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[40] = v3;
  *v3 = v2;
  v3[1] = sub_1007E8F4C;
  v4 = v1[20];
  v5 = v1[13];
  v6 = v1[15];

  return sub_1007FAA80(v6, v4, v5);
}

uint64_t sub_1007E8F4C()
{

  return _swift_task_switch(sub_1007E9048, 0, 0);
}

uint64_t sub_1007E9048()
{
  v1 = v0[24];
  v2 = v0[20];
  sub_10003627C(v0[15], type metadata accessor for BeaconIdentifier);
  sub_10003627C(v2, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100007BAC(v0 + 2);
  sub_10003627C(v1, type metadata accessor for CloudStorageStore.State);
  v0[36] = v0[38];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_1007E862C;
  v4 = v0[32];
  v5 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v4);
}

uint64_t sub_1007E915C()
{
  v1 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101360AD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  if (*(v1 + 176))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  *(v1 + 176) = 0;

  if (*(v1 + 184))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  *(v1 + 184) = 0;
}

uint64_t sub_1007E9364(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = type metadata accessor for ContinuousClock();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1007E942C, 0, 0);
}

uint64_t sub_1007E942C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1007E9508;

  return sub_100D24214(v1, v3, 0, 0, 1);
}

uint64_t sub_1007E9508()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_1007E9798;
  }

  else
  {
    v3 = sub_1007E9670;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007E9670()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = v0[8];
    v3 = v2[3];
    v4 = v2[4];
    v5 = sub_1000035D0(v2, v3);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1007E97FC;
    v7 = v0[7];

    return sub_1007F82D8(v7, v5, Strong, v3, v4);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1007E9798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007E97FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1007E9934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a2;
  v5 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceEvent(0);
  sub_1000D2A70(a1 + *(v12 + 32), v7, &unk_1016AA510, &unk_101393150);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &unk_1016AA510, &unk_101393150);
    v13 = 0;
  }

  else
  {
    sub_100035B84(v7, v11, type metadata accessor for DeviceEvent.AttachmentInfo);
    v14 = objc_allocWithZone(SPAttachmentInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v16 = [v14 initWithAttachedToDevice:isa];

    sub_10003627C(v11, type metadata accessor for DeviceEvent.AttachmentInfo);
    v13 = v16;
  }

  v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v18 = qword_1013BD328[*(a1 + 9)];
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTimestamp:v17.super.isa source:v18 attachmentInfo:v13 serialNumber:v19];

  sub_10003627C(a1, type metadata accessor for DeviceEvent);
  return v20;
}

uint64_t sub_1007E9BD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for BeaconIdentifier(0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for DeviceEvent(0);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v3;
  v6[1] = sub_1007E9DD0;

  return daemon.getter();
}

uint64_t sub_1007E9DD0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 152) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1007E9FAC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007E9FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_1007EA344;
  }

  else
  {

    v5 = sub_1007EA0EC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007EA0EC()
{
  v1 = v0[12];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1007EA1D0;
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[4];

  return sub_1010CE7E4(v4, v6, 8, v5);
}

uint64_t sub_1007EA1D0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 40);
  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v5 = sub_1007EA9EC;
  }

  else
  {
    v5 = sub_1007EA688;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007EA344()
{
  v19 = v0;

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
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
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10003627C(v7, type metadata accessor for BeaconIdentifier);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "No device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_10003627C(v7, type metadata accessor for BeaconIdentifier);
  }

  (*(v0[15] + 56))(v0[3], 1, 1, v0[14]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007EA688()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    (*(v2 + 56))(v4, 1, 1, v1);
  }

  else
  {
    v5 = v0[16];
    sub_100035B84(v3, v5, type metadata accessor for DeviceEvent);
    if (*(v5 + 9) != 5)
    {
      goto LABEL_7;
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v7 = v0[14];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(v0[2]);

    v12 = *(v7 + 24);
    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v9);
    Date.timeIntervalSince(_:)();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    if (v14 <= 0.0)
    {
      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[14];
      v24 = v0[3];
      (*(v0[9] + 16))(v24 + *(v7 + 24), v6 + v12, v0[8]);
      sub_1000D2A70(v21 + v23[7], v24 + v23[7], &qword_101699E50, &qword_1013D97C0);
      sub_1000D2A70(v21 + v23[8], v24 + v23[8], &unk_1016AA510, &unk_101393150);
      sub_1007FF3E4(v21 + v23[9], v24 + v23[9], type metadata accessor for BeaconIdentifier);
      static Date.trustedNow.getter(v24 + v23[10]);
      sub_10003627C(v21, type metadata accessor for DeviceEvent);
      *v24 = 0;
      *(v24 + 8) = 513;
      (*(v22 + 56))(v24, 0, 1, v23);
    }

    else
    {
LABEL_7:
      v16 = v0[15];
      v17 = v0[14];
      v18 = v0[3];
      sub_100035B84(v0[16], v18, type metadata accessor for DeviceEvent);
      (*(v16 + 56))(v18, 0, 1, v17);
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1007EA9EC()
{
  v19 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
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
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10003627C(v7, type metadata accessor for BeaconIdentifier);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "No device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_10003627C(v7, type metadata accessor for BeaconIdentifier);
  }

  (*(v0[15] + 56))(v0[3], 1, 1, v0[14]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007EAD28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for BeaconIdentifier(0);
  v3[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v3[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA4E8, &unk_1013D67A0);
  v3[10] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016AA4F0, &unk_1013BD0F0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[22] = v7;
  *v7 = v3;
  v7[1] = sub_1007EAFD0;

  return daemon.getter();
}

uint64_t sub_1007EAFD0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[23] = a1;

  v3 = swift_task_alloc();
  v2[24] = v3;
  v4 = type metadata accessor for Daemon();
  v2[25] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[26] = v6;
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007EB1B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007EB1B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = sub_1007EB7B8;
  }

  else
  {

    *(v4 + 224) = a1;
    v6 = sub_1007EB2EC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007EB2EC()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_1007EB3D8;
  v3 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}

uint64_t sub_1007EB3D8()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1007EB4F0, v1, 0);
}

uint64_t sub_1007EB4F0()
{
  v1 = v0[5];

  v0[30] = v0[2];

  return _swift_task_switch(sub_1007EB564, v1, 0);
}

uint64_t sub_1007EB564()
{
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v2 = v0[20];
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[15];
    v8 = *(v0[16] + 80);
    sub_1007FF3E4(v1 + ((v8 + 32) & ~v8), v6, type metadata accessor for OwnedBeaconRecord);

    v9 = *(v7 + 20);
    v10 = *(v5 + 16);
    v0[31] = v10;
    v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v2, v6 + v9, v4);
    sub_10003627C(v6, type metadata accessor for OwnedBeaconRecord);
    (*(v5 + 32))(v3, v2, v4);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = sub_1007EBB3C;

    return daemon.getter();
  }

  else
  {

    v12 = v0[3];
    v13 = type metadata accessor for DeviceEvent(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1007EB7B8()
{
  v21 = v0;

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10003627C(v6, type metadata accessor for BeaconIdentifier);
    v13 = sub_1000136BC(v10, v12, &v20);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[7];

    sub_10003627C(v15, type metadata accessor for BeaconIdentifier);
  }

  v16 = v0[3];
  v17 = type metadata accessor for DeviceEvent(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1007EBB3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 272) = a1;

  v5 = swift_task_alloc();
  *(v3 + 280) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_1007EBCF0;
  v8 = *(v2 + 208);
  v9 = *(v2 + 200);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007EBCF0(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_1007EC06C;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1007EBE18;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007EBE18()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  (*(v0 + 248))(v3, *(v0 + 168), v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_1007EBEF8;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 32);

  return sub_1010CEAB4(v5, v7, v6);
}

uint64_t sub_1007EBEF8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 40);
  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v5 = sub_1007EC9D8;
  }

  else
  {
    v5 = sub_1007EC410;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007EC06C()
{
  v24 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B368);
  sub_1007FF3E4(v5, v4, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_10003627C(v9, type metadata accessor for BeaconIdentifier);
    v16 = sub_1000136BC(v13, v15, &v23);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v18 = v0[7];

    sub_10003627C(v18, type metadata accessor for BeaconIdentifier);
  }

  v19 = v0[3];
  v20 = type metadata accessor for DeviceEvent(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1007EC410()
{
  v44 = v0;
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[19] + 8))(v0[21], v0[18]);
    sub_10000B3A8(v1, &qword_1016AA4E0, &unk_1013BD0E0);
    v42 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    sub_10000B3A8(v5, &qword_1016AA4E8, &unk_1013D67A0);
    goto LABEL_13;
  }

  v6 = v0[39];
  v7 = v0[11];
  v8 = sub_100A870CC(v0[10] + *(v7 + 48));
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  if (v6)
  {
    v12 = v0[9];
    (*(v11 + 8))(v9, v10);
    sub_10000B3A8(v12, &qword_1016998D0, &unk_1013931A0);
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v13 = v0[7];
    v14 = v0[4];
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B368);
    sub_1007FF3E4(v14, v13, type metadata accessor for BeaconIdentifier);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[7];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_10003627C(v18, type metadata accessor for BeaconIdentifier);
      v25 = sub_1000136BC(v22, v24, &v43);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v19, 0x20u);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v21);
    }

    else
    {
      v37 = v0[7];

      sub_10003627C(v37, type metadata accessor for BeaconIdentifier);
    }
  }

  else
  {
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[11];
    v30 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    (*(v11 + 8))(v9, v10);
    *v31 = v8 & 1;
    sub_10000B3A8(v32, &qword_1016998D0, &unk_1013931A0);
    (*(v30 + 56))(v31, 0, 1, v29);
    sub_1000D2AD8(v31, v27, &unk_1016AA4F0, &unk_1013BD0F0);
    sub_1000D2A70(v27, v28, &unk_1016AA4F0, &unk_1013BD0F0);
    v33 = *v28;
    sub_10003627C(&v28[*(v7 + 48)], type metadata accessor for DeviceEvent);
    v34 = v0[14];
    if (v33 == 1)
    {
      v35 = v0[13];
      v36 = v0[3];
      sub_1000D2AD8(v34, v35, &unk_1016AA4F0, &unk_1013BD0F0);
      sub_100035B84(v35 + *(v7 + 48), v36, type metadata accessor for DeviceEvent);
      v42 = 0;
      goto LABEL_13;
    }

    sub_10000B3A8(v34, &unk_1016AA4F0, &unk_1013BD0F0);
  }

  v42 = 1;
LABEL_13:
  v38 = v0[3];
  v39 = type metadata accessor for DeviceEvent(0);
  (*(*(v39 - 8) + 56))(v38, v42, 1, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1007EC9D8()
{
  v21 = v0;
  (*(v0[19] + 8))(v0[21], v0[18]);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10003627C(v6, type metadata accessor for BeaconIdentifier);
    v13 = sub_1000136BC(v10, v12, &v20);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[7];

    sub_10003627C(v15, type metadata accessor for BeaconIdentifier);
  }

  v16 = v0[3];
  v17 = type metadata accessor for DeviceEvent(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1007ECD6C()
{
  sub_1000BB27C(*(v0 + 112), *(v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1007ECDEC()
{
  sub_1007ECD6C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1007ECE3C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for UUID();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v2[29] = *(v5 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1007ECFC8, 0, 0);
}

uint64_t sub_1007ECFC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1007ED0B8, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1007ED0E0()
{
  v27 = v0;
  if (*(v0 + 504) == 1)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 184);
    v2 = type metadata accessor for Logger();
    *(v0 + 288) = sub_1000076D4(v2, qword_10177B368);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 184);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136446466;
      if (v6)
      {
        v9 = 0x61636F6C20736168;
      }

      else
      {
        v9 = 7104878;
      }

      if (v6)
      {
        v10 = 0xEC0000006E6F6974;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      v11 = sub_1000136BC(v9, v10, &v26);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      if (v6)
      {
        v13 = *(v0 + 264);
        v12 = *(v0 + 272);
        v14 = *(v0 + 256);
        v15 = [v3 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceNow.getter();
        v17 = v16;
        (*(v13 + 8))(v12, v14);
      }

      else
      {
        v17 = 1.0;
      }

      *(v7 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Location monitor did update location: %{public}s,age: %f.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    if (*(v0 + 184))
    {
      v22 = v3;
      v23 = swift_task_alloc();
      *(v0 + 296) = v23;
      *v23 = v0;
      v23[1] = sub_1007ED49C;

      return daemon.getter();
    }
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B368);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring location updates while not processing.", v21, 2u);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1007ED49C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[38] = a1;

  v3 = swift_task_alloc();
  v2[39] = v3;
  v4 = type metadata accessor for Daemon();
  v2[40] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[41] = v5;
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[42] = v6;
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[43] = v7;
  *v3 = v9;
  v3[1] = sub_1007ED690;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007ED690(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = *(v4 + 280);
    v6 = sub_1007EDC3C;
  }

  else
  {

    *(v4 + 360) = a1;
    v6 = sub_1007ED7CC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007ED7CC()
{

  v1 = swift_task_alloc();
  v0[46] = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  v0[47] = v2;
  *v1 = v0;
  v1[1] = sub_1007ED8BC;
  v3 = v0[45];

  return unsafeBlocking<A>(context:_:)(v0 + 20, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_1007ED8BC()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1007ED9D4, v1, 0);
}

uint64_t sub_1007ED9D4()
{

  *(v0 + 384) = *(v0 + 160);

  return _swift_task_switch(sub_1007EDA44, 0, 0);
}

uint64_t sub_1007EDA44()
{
  v0[21] = v0[48];
  v1 = swift_task_alloc();
  v0[49] = v1;
  v2 = sub_1007F5138();
  *v1 = v0;
  v1[1] = sub_1007EDB08;
  v3 = v0[47];
  v4 = v0[35];

  return Sequence.asyncFilter(_:)(&unk_1013BCFD0, v4, v3, v2);
}

uint64_t sub_1007EDB08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_1007EF140;
  }

  else
  {
    v4 = sub_1007EDD40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007EDC3C()
{

  return _swift_task_switch(sub_1007EDCA4, 0, 0);
}

uint64_t sub_1007EDCA4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007EDD40()
{
  v36 = v0;
  v1 = v0[50];
  v2 = *(v1 + 16);
  v0[52] = v2;
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[31];
    v5 = v0[27];
    v0[54] = 0;
    if (*(v1 + 16))
    {
      v6 = v0[32];
      v7 = v0[23];
      sub_10001F280(v1 + 32, (v0 + 2));
      UUID.init()();
      v9 = v0[5];
      v8 = v0[6];
      sub_1000035D0(v0 + 2, v9);
      (*(*(*(v8 + 8) + 8) + 32))(v9);
      [v7 coordinate];
      v11 = v10;
      [v7 coordinate];
      v13 = v12;
      [v7 horizontalAccuracy];
      v15 = v14;
      v16 = [v7 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v5[12];
      v18 = [v7 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 56))(&v4[v17], 0, 1, v6);
      *v4 = xmmword_10138C660;
      *&v4[v5[7]] = v11;
      *&v4[v5[8]] = v13;
      *&v4[v5[9]] = v15;
      v4[v5[11]] = 2;
      *&v4[v5[13]] = 0;
      sub_10001F280((v0 + 2), (v0 + 7));
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v22 = v0[25];
        v21 = v0[26];
        v23 = v0[24];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        v27 = v0[10];
        v26 = v0[11];
        sub_1000035D0(v0 + 7, v27);
        (*(*(*(v26 + 8) + 8) + 32))(v27);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v22 + 8))(v21, v23);
        sub_100007BAC(v0 + 7);
        v31 = sub_1000136BC(v28, v30, &v35);

        *(v24 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v19, v20, "Saving location for connected beacons - from location monitor update:beacon: %{private,mask.hash}s.", v24, 0x16u);
        sub_100007BAC(v25);
      }

      else
      {

        sub_100007BAC(v0 + 7);
      }

      v34 = swift_task_alloc();
      v0[55] = v34;
      *v34 = v0;
      v34[1] = sub_1007EE3E8;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {

    v32 = swift_task_alloc();
    v0[53] = v32;
    *v32 = v0;
    v32[1] = sub_1007EE194;

    return sub_1007E4460();
  }
}

uint64_t sub_1007EE194(char a1)
{
  *(*v1 + 505) = a1;

  return _swift_task_switch(sub_1007EE294, 0, 0);
}

uint64_t sub_1007EE294(uint64_t a1)
{
  if (*(v1 + 505))
  {
    v2 = *(v1 + 184);

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "                    No more running clients. Pausing location updates.", v7, 2u);
    }

    v8 = *(v1 + 280);

    return _swift_task_switch(sub_1007EF038, v8, 0);
  }
}

uint64_t sub_1007EE3E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[56] = a1;

  v4 = swift_task_alloc();
  v2[57] = v4;
  *v4 = v3;
  v4[1] = sub_1007EE574;
  v5 = v2[43];
  v6 = v2[42];
  v7 = v2[41];
  v8 = v2[40];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1007EE574(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v5 = *(v4 + 280);
    v6 = sub_1007EEF00;
  }

  else
  {

    *(v4 + 472) = a1;
    v6 = sub_1007EE6B0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007EE6B0()
{
  v1 = *(v0 + 472);
  sub_10001F280(v0 + 16, v0 + 96);
  v2 = swift_allocObject();
  *(v0 + 480) = v2;
  sub_10000A748((v0 + 96), v2 + 16);

  return _swift_task_switch(sub_1007EE748, v1, 0);
}

uint64_t sub_1007EE748()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[30];
  v5 = v0[28];
  v4 = v0[29];
  sub_1007FF3E4(v0[31], v3, type metadata accessor for BeaconEstimatedLocation);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[61] = v8;
  *(v8 + 16) = v2;
  sub_100035B84(v3, v8 + v6, type metadata accessor for BeaconEstimatedLocation);
  v9 = (v8 + v7);
  *v9 = sub_1007F519C;
  v9[1] = v1;

  v10 = swift_task_alloc();
  v0[62] = v10;
  *v10 = v0;
  v10[1] = sub_1007EE8D0;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1007F51A4, v8, &type metadata for () + 1);
}

uint64_t sub_1007EE8D0()
{
  v1 = *(*v0 + 472);

  return _swift_task_switch(sub_1007EE9FC, v1, 0);
}

uint64_t sub_1007EE9FC()
{

  return _swift_task_switch(sub_1007EEA6C, 0, 0);
}

uint64_t sub_1007EEA6C()
{
  v38 = v0;
  v1 = v0[52];
  v2 = v0[54] + 1;
  sub_10003627C(v0[31], type metadata accessor for BeaconEstimatedLocation);
  sub_100007BAC(v0 + 2);
  if (v2 == v1)
  {

    v3 = swift_task_alloc();
    v0[53] = v3;
    *v3 = v0;
    v3[1] = sub_1007EE194;

    return sub_1007E4460();
  }

  else
  {
    v5 = v0[54] + 1;
    v0[54] = v5;
    v6 = v0[50];
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = v0[32];
      v8 = v0[33];
      v9 = v0[31];
      v10 = v0[27];
      v11 = v0[23];
      sub_10001F280(v6 + 40 * v5 + 32, (v0 + 2));
      UUID.init()();
      v13 = v0[5];
      v12 = v0[6];
      sub_1000035D0(v0 + 2, v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      [v11 coordinate];
      v15 = v14;
      [v11 coordinate];
      v17 = v16;
      [v11 horizontalAccuracy];
      v19 = v18;
      v20 = [v11 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v10[12];
      v22 = [v11 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(&v9[v21], 0, 1, v7);
      *v9 = xmmword_10138C660;
      *&v9[v10[7]] = v15;
      *&v9[v10[8]] = v17;
      *&v9[v10[9]] = v19;
      v9[v10[11]] = 2;
      *&v9[v10[13]] = 0;
      sub_10001F280((v0 + 2), (v0 + 7));
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v26 = v0[25];
        v25 = v0[26];
        v27 = v0[24];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37 = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;
        v31 = v0[10];
        v30 = v0[11];
        sub_1000035D0(v0 + 7, v31);
        (*(*(*(v30 + 8) + 8) + 32))(v31);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v26 + 8))(v25, v27);
        sub_100007BAC(v0 + 7);
        v35 = sub_1000136BC(v32, v34, &v37);

        *(v28 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v23, v24, "Saving location for connected beacons - from location monitor update:beacon: %{private,mask.hash}s.", v28, 0x16u);
        sub_100007BAC(v29);
      }

      else
      {

        sub_100007BAC(v0 + 7);
      }

      v36 = swift_task_alloc();
      v0[55] = v36;
      *v36 = v0;
      v36[1] = sub_1007EE3E8;
    }

    return daemon.getter();
  }
}

uint64_t sub_1007EEF00()
{

  return _swift_task_switch(sub_1007EEF74, 0, 0);
}

uint64_t sub_1007EEF74()
{
  v1 = v0[31];
  v2 = v0[23];

  sub_10003627C(v1, type metadata accessor for BeaconEstimatedLocation);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1007EF038()
{
  sub_1007E434C();
  sub_1007E915C();

  return _swift_task_switch(sub_1007EF0A4, 0, 0);
}

uint64_t sub_1007EF0A4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007EF140()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007EF1DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_1007EF31C;

  return daemon.getter();
}

uint64_t sub_1007EF31C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007EF4F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007EF4F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1007EFA48;
  }

  else
  {

    *(v4 + 120) = a1;
    v6 = sub_1007EF634;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007EF634()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_1007EF6DC, v1, 0);
}

uint64_t sub_1007EF6DC()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  (*(v4 + 16))(v2, v0[10], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v3;
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v6, v2, v5);
  *(v8 + v7) = 1;

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1007EF848;
  v11 = v0[4];
  v10 = v0[5];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v8, v11);
}

uint64_t sub_1007EF848()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1007EF974, v1, 0);
}

uint64_t sub_1007EF974()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  (*(v3 + 8))(v1, v2);
  v6 = *v4;
  sub_10000B3A8(&v4[*(v5 + 48)], &unk_101696900, &unk_10138B1E0);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1007EFA48()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1007EFAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v9 = __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B368);
  sub_10001F280(a2, v31);
  sub_1000D2A70(a1, v13, &qword_10169F438, &unk_1013B3300);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v28 = v8;
    v18 = v32;
    v19 = v33;
    sub_1000035D0(v31, v32);
    (*(*(*(v19 + 8) + 8) + 32))(v18);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v5 + 8))(v7, v4);
    sub_100007BAC(v31);
    v23 = sub_1000136BC(v20, v22, &v30);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    sub_1000D2A70(v13, v11, &qword_10169F438, &unk_1013B3300);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_10000B3A8(v13, &qword_10169F438, &unk_1013B3300);
    v27 = sub_1000136BC(v24, v26, &v30);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Done saving location for connected beacon: %{private,mask.hash}s, result: %s.", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v13, &qword_10169F438, &unk_1013B3300);
    sub_100007BAC(v31);
  }
}

uint64_t sub_1007EFEAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for WorkItemQueue.WorkItem();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  v7 = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1007EFFE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1007ECE3C(v2, v3);
}

uint64_t sub_1007F0080()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v0[5] = 0;
  v0[6] = 0;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v0[7] = v5;
  type metadata accessor for WorkItemQueue();
  v6 = type metadata accessor for WorkItemQueue.WarningOptions();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  UUID.init()();
  v0[8] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v7(v4, 1, 1, v6);
  UUID.init()();
  v0[9] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v0[10] = _swiftEmptyDictionarySingleton;
  return sub_100F04FA4();
}

void sub_1007F0258(void *a1, uint64_t a2)
{
  v3 = sub_100F9CD5C(a1);
  if (v3)
  {
    __chkstk_darwin(v3);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B368);
    sub_10000F4C8(a2, v12);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    sub_1004E2CD8(a2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      if (*(a2 + 48))
      {
        v9 = *(a2 + 40);
        v10 = *(a2 + 48);
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
      }

      v11 = sub_1000136BC(v9, v10, v12);

      *(v7 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to store wrapped connection for context %{private,mask.hash}s.", v7, 0x16u);
      sub_100007BAC(v8);
    }
  }
}

void sub_1007F0464(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *(a3 + 6);
  v28 = *(a3 + 5);
  v27 = v7;
  v8 = a3[56];
  v29 = a3[57];
  v32 = *(a3 + 4);
  v31 = *(a3 + 10);
  v30 = a3[88];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 8);
  v25 = *(a3 + 24);
  XPCSession.identifier.getter();
  swift_beginAccess();

  sub_10000F4C8(a3, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *(a1 + 80);
  *(a1 + 80) = 0x8000000000000000;
  v33 = a2;
  v34 = v6;
  v35 = v26;
  v36 = v25;
  v37 = v28;
  v38 = v27;
  v39 = v8 & 1;
  v40 = v29 & 1;
  v41 = v32;
  v42 = v31;
  v43 = v30 & 1;
  sub_100FFD91C(&v33, v12, isUniquelyReferenced_nonNull_native);
  v14 = *(v10 + 8);
  *&v32 = v10 + 8;
  v14(v12, v9);
  *(a1 + 80) = v44[0];
  swift_endAccess();
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B368);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;

    v31(v12, v9);
    v24 = sub_1000136BC(v21, v23, v44);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Added new location fetch subscription %{private,mask.hash}s.", v19, 0x16u);
    sub_100007BAC(v20);
  }

  else
  {
  }
}

uint64_t sub_1007F0870(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 220) = a4;
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v7 = type metadata accessor for UUID();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  *(v4 + 136) = *(v8 + 64);
  *(v4 + 144) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 152) = v9;
  *v9 = v4;
  v9[1] = sub_1007F097C;

  return sub_1007F12CC(a1, a2);
}

uint64_t sub_1007F097C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1007F0A7C, 0, 0);
}

uint64_t sub_1007F0A7C()
{
  v48 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_10001F280(v2, v0 + 16);
  swift_bridgeObjectRetain_n();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  if (v7)
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v43 = *(v0 + 112);
    v45 = *(v0 + 220);
    v12 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v12 = 141559299;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v14);
    (*(*(*(v13 + 8) + 8) + 32))(v14);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    sub_100007BAC((v0 + 16));
    v18 = sub_1000136BC(v15, v17, &v47);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2048;
    v19 = *(v8 + 16);

    *(v12 + 24) = v19;

    *(v12 + 32) = 2049;
    [v43 latitude];
    *(v12 + 34) = v20;
    *(v12 + 42) = 2049;
    [v43 longitude];
    *(v12 + 44) = v21;
    *(v12 + 52) = 2080;
    v22 = sub_100013454(v45);
    v24 = sub_1000136BC(v22, v23, &v47);

    *(v12 + 54) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "Update location for beacon: %{private,mask.hash}s,\nclientBeaconIdentifiers %ld,\nLoc: lat: %{private}f, lon: %{private}f source: %s.", v12, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 16));
  }

  v25 = *(v0 + 160);
  v26 = *(v25 + 16);
  *(v0 + 168) = v26;
  if (v26)
  {
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v28 + 80);
    *(v0 + 216) = v29;
    *(v0 + 176) = *(v28 + 72);
    v30 = *(v28 + 16);
    v31 = (v29 + 24) & ~v29;
    v32 = (v27 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v0 + 184) = v30;
    *(v0 + 192) = 0;
    v33 = *(v0 + 144);
    v46 = *(v0 + 220);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v44 = *(v0 + 104);
    v30(v33, v25 + ((v29 + 32) & ~v29), v34);
    sub_10001F280(v36, v0 + 56);
    v37 = swift_allocObject();
    *(v0 + 200) = v37;
    *(v37 + 16) = v44;
    (*(v28 + 32))(v37 + v31, v33, v34);
    sub_10000A748((v0 + 56), v37 + v32);
    v38 = v37 + ((v32 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v38 = v35;
    *(v38 + 8) = v46;
    v39 = v35;

    v40 = swift_task_alloc();
    *(v0 + 208) = v40;
    *v40 = v0;
    v40[1] = sub_1007F0F7C;

    return unsafeBlocking<A>(context:_:)(v40, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF140, v37, &type metadata for () + 1);
  }

  else
  {

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1007F0F7C()
{

  return _swift_task_switch(sub_1007F1094, 0, 0);
}

uint64_t sub_1007F1094()
{
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 168))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 192) = v1;
    v4 = *(v0 + 216);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v17 = *(v0 + 220);
    v8 = *(v0 + 112);
    v16 = *(v0 + 104);
    v9 = *(v0 + 96);
    v10 = (v4 + 24) & ~v4;
    v11 = (*(v0 + 136) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 184))(v5, *(v0 + 160) + ((v4 + 32) & ~v4) + *(v0 + 176) * v1, v6);
    sub_10001F280(v9, v0 + 56);
    v12 = swift_allocObject();
    *(v0 + 200) = v12;
    *(v12 + 16) = v16;
    (*(v7 + 32))(v12 + v10, v5, v6);
    sub_10000A748((v0 + 56), v12 + v11);
    v13 = v12 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v13 = v8;
    *(v13 + 8) = v17;
    v14 = v8;

    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_1007F0F7C;

    return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF140, v12, &type metadata for () + 1);
  }
}

uint64_t sub_1007F12CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1007F138C, 0, 0);
}

uint64_t sub_1007F138C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 56) = *(v1 + 72);
  *(v0 + 80) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2[3];
  v5 = v2[4];
  sub_1000035D0(v2, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v2[3];
  v7 = v2[4];
  sub_1000035D0(v2, v6);
  if ((*(v7 + 88))(v6, v7))
  {
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_1007F1550;
    v9 = *(v0 + 48);
    v10 = *(v0 + 16);

    return sub_1007F18CC(v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12(v3);
  }
}

uint64_t sub_1007F1550()
{

  return _swift_task_switch(sub_1007F164C, 0, 0);
}

uint64_t sub_1007F164C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v6 = sub_100A5BFE0(1, 2, 1, *(v0 + 64));
  *(v6 + 2) = 2;
  (*(v3 + 32))(&v6[v1 + v5], v2, v4);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1007F171C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  sub_1000BC4D4(&qword_1016AA4D8, &qword_1013BD0D0);
  v9 = (sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = v11 + v10;
  v13 = v9[14];
  v14 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v12, a2, v15);
  v16 = a3[3];
  v17 = a3[4];
  sub_1000035D0(a3, v16);
  *(v12 + v14) = (*(v17 + 184))(v16, v17);
  *(v12 + v13) = a4;
  v18 = a4;
  sub_1007F247C(v11, _swiftEmptyArrayStorage, v5);
}

uint64_t sub_1007F18CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_1007F1A0C;

  return daemon.getter();
}

uint64_t sub_1007F1A0C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007F1BE8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007F1BE8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007F1F18;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_1007F1D3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007F1D3C()
{
  v1 = v0[14];
  v0[15] = v1;
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  if ((*(v4 + 88))(v3, v4))
  {
    if (v1)
    {
      v5 = v2[3];
      v6 = v2[4];
      sub_1000035D0(v0[3], v5);
      v7 = *(*(v6 + 8) + 8);
      v8 = *(v7 + 32);

      v8(v5, v7);

      return _swift_task_switch(sub_1007F2048, v1, 0);
    }

    (*(v0[5] + 56))(v0[10], 1, 1, v0[4]);
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
  }

  v9 = v0[3];
  v10 = v9[3];
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007F1F18()
{
  v0[15] = 0;
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 88))(v2, v3))
  {
    (*(v0[5] + 56))(v0[10], 1, 1, v0[4]);
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
  }

  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  (*(*(*(v6 + 8) + 8) + 32))(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007F2048()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[4];
  (*(v3 + 16))(v2, v0[8], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  v0[17] = v7;
  v0[18] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);

  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_1007F21B4;
  v10 = v0[9];
  v9 = v0[10];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007FF158, v6, v10);
}

uint64_t sub_1007F21B4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1007F234C, 0, 0);
}

uint64_t sub_1007F234C()
{
  v1 = v0[10];
  v2 = v0[4];
  if ((*(v0[5] + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);
    v3 = v0[3];
    v4 = v3[3];
    v5 = v3[4];
    sub_1000035D0(v3, v4);
    (*(*(*(v5 + 8) + 8) + 32))(v4);
  }

  else
  {
    v6 = v0[17];
    v7 = v0[2];

    v6(v7, v1, v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1007F247C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v48 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
  v8 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v37 - v12;
  __chkstk_darwin(v11);
  v47 = &v37 - v13;
  v14 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_1000BC4D4(&unk_1016B6E00, &qword_1013BD078);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v17 = v51;
  v18 = *(a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v37 = v51;
    v38 = a3;
    v39 = v4;
    v40 = a2;
    v51 = _swiftEmptyArrayStorage;
    sub_10112518C(0, v18, 0);
    v19 = v51;
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v41 = a1;
    v42 = v21;
    v22 = &unk_1013BD060;
    do
    {
      v50 = v18;
      v23 = v47;
      sub_1000D2A70(v20, v47, &unk_1016AA458, &unk_1013BD028);
      v24 = v19;
      v25 = v44;
      sub_1000D2A70(v23, v44, &unk_1016AA458, &unk_1013BD028);
      v26 = *(v46 + 48);
      v49 = *(v25 + v26);
      v27 = *(v48 + 48);
      v28 = v22;
      v29 = *(v25 + v27);
      v30 = type metadata accessor for UUID();
      v31 = v43;
      v32 = v25;
      v19 = v24;
      (*(*(v30 - 8) + 32))(v43, v32, v30);
      *(v31 + v26) = v49;
      *(v31 + v27) = v29;
      v22 = v28;
      sub_1000D2A70(v31, v16, &unk_1016AA490, v28);
      sub_10000B3A8(v31, &unk_1016AA458, &unk_1013BD028);
      sub_10000B3A8(v23, &unk_1016AA458, &unk_1013BD028);
      v51 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        sub_10112518C((v33 > 1), v34 + 1, 1);
        v19 = v51;
      }

      v19[2] = v34 + 1;
      sub_1000D2AD8(v16, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v34, &unk_1016AA490, v28);
      v20 += v42;
      v18 = v50 - 1;
    }

    while (v50 != 1);
    a2 = v40;
    a1 = v41;
    v4 = v39;
    LOBYTE(a3) = v38;
    v17 = v37;
  }

  type metadata accessor for Transaction();
  v35 = swift_allocObject();
  *(v35 + 16) = v4;
  *(v35 + 24) = v17;
  *(v35 + 32) = v19;
  *(v35 + 40) = a3;
  *(v35 + 48) = a2;
  *(v35 + 56) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1007F28E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for UUID();
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1007F2980, 0, 0);
}

uint64_t sub_1007F2980()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1007F2ABC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 568) = a5;
  *(v5 + 560) = a4;
  *(v5 + 114) = a3;
  *(v5 + 552) = a2;
  *(v5 + 544) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 576) = v6;
  *(v5 + 584) = *(v6 - 8);
  *(v5 + 592) = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016AA4B0, &qword_1013BD0A0);
  *(v5 + 600) = v7;
  *(v5 + 608) = *(v7 - 8);
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  *(v5 + 632) = v8;
  v9 = *(v8 - 8);
  *(v5 + 640) = v9;
  *(v5 + 648) = *(v9 + 64);
  *(v5 + 656) = swift_task_alloc();
  *(v5 + 664) = swift_task_alloc();
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();

  return _swift_task_switch(sub_1007F2C94, 0, 0);
}

uint64_t sub_1007F2C94()
{
  v137 = v0;
  v1 = (v0 + 328);
  v2 = *(v0 + 544);
  v3 = *(v2 + 32);
  *(v0 + 115) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v13 = 0;
  v14 = 0;
  if (v6)
  {
    while (1)
    {
      v129 = v13;
      v15 = *(v0 + 544);
LABEL_10:
      *(v0 + 696) = v14;
      *(v0 + 688) = v6;
      v17 = *(v0 + 680);
      *type = *(v0 + 672);
      v18 = *(v0 + 632);
      v19 = *(v0 + 584);
      v134 = *(v0 + 560);
      v130 = *(v0 + 114);
      v132 = *(v0 + 552);
      v20 = __clz(__rbit64(v6)) | (v14 << 6);
      (*(v19 + 16))(v17, *(v15 + 48) + *(v19 + 72) * v20, *(v0 + 576));
      v21 = (*(v15 + 56) + 104 * v20);
      v22 = v21[96];
      v24 = *(v21 + 4);
      v23 = *(v21 + 5);
      *(v0 + 64) = *(v21 + 3);
      *(v0 + 80) = v24;
      *(v0 + 96) = v23;
      *(v0 + 112) = v22;
      v26 = *(v21 + 1);
      v25 = *(v21 + 2);
      *(v0 + 16) = *v21;
      *(v0 + 32) = v26;
      *(v0 + 48) = v25;
      v27 = v17 + *(v18 + 48);
      v28 = *(v0 + 16);
      memmove(v27, v21, 0x61uLL);
      v29 = *(v19 + 32);
      v30 = *(v27 + 24);
      *v1 = *(v27 + 8);
      *(v0 + 344) = v30;
      v31 = *(v27 + 56);
      v32 = *(v27 + 72);
      v33 = *(v27 + 40);
      *(v0 + 401) = *(v27 + 81);
      *(v0 + 376) = v31;
      *(v0 + 392) = v32;
      *(v0 + 360) = v33;
      v34 = *type + *(v18 + 48);
      v126 = v29;
      v29();
      *v34 = v28;
      v35 = *(v0 + 344);
      *(v34 + 8) = *v1;
      *(v34 + 24) = v35;
      v37 = *(v0 + 376);
      v36 = *(v0 + 392);
      v38 = *(v0 + 401);
      *(v34 + 40) = *(v0 + 360);
      *(v34 + 81) = v38;
      *(v34 + 72) = v36;
      *(v34 + 56) = v37;
      v39 = swift_task_alloc();
      *(v39 + 16) = *type;
      *(v39 + 24) = v130;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v13 = v129;
      v40 = sub_10013D964(sub_1007FEFD8, v39, v132);

      v41 = swift_task_alloc();
      *(v41 + 16) = *type;
      *(v41 + 24) = v130;

      v42 = sub_10013DC7C(sub_1007FEFFC, v41, v134);

      v43 = v40[2];

      if (v43 || *(v42 + 16))
      {
        break;
      }

      v6 &= v6 - 1;
      v44 = *(v0 + 672);

      v7 = sub_10000B3A8(v44, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v123 = v42;
    v47 = *(v0 + 568);
    v48 = *(v47 + 16);
    v49 = _swiftEmptyArrayStorage;
    if (v48)
    {
      *(v0 + 520) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v48, 0);
      v49 = *(v0 + 520);
      v50 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
      v51 = *(*(v50 - 8) + 72);
      v52 = v47 + ((*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80));
      do
      {
        v53 = *(v0 + 672);
        v54 = *(v0 + 624);
        v55 = *(v0 + 600);
        v56 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
        v57 = *(v55 + 48);
        *(v54 + v57) = sub_1007F48AC(v54, v52, *(v52 + *(v56 + 48)), *(v52 + *(v50 + 48)), v53);
        *(v0 + 520) = v49;
        v59 = v49[2];
        v58 = v49[3];
        if (v59 >= v58 >> 1)
        {
          sub_1011251CC((v58 > 1), v59 + 1, 1);
          v49 = *(v0 + 520);
        }

        v60 = *(v0 + 624);
        v61 = *(v0 + 608);
        v49[2] = v59 + 1;
        sub_1000D2AD8(v60, v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59, &unk_1016AA4B0, &qword_1013BD0A0);
        v52 += v51;
        --v48;
      }

      while (v48);
    }

    v62 = v123;
    v63 = *(v123 + 16);
    if (v63)
    {
      v121 = v49;
      *(v0 + 528) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v63, 0);
      v64 = 0;
      v7 = v123 + 32;
      v135 = *(v0 + 528);
      v122 = v63;
      while (v64 < *(v62 + 16))
      {
        v133 = v7;
        sub_1000D2A70(v7, v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        v65 = *(v0 + 472);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 672);
        v67 = *(v0 + 664);
        v68 = type metadata accessor for Logger();
        sub_1000076D4(v68, qword_10177B368);
        sub_1000D2A70(v66, v67, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 424, v0 + 480);
        v69 = v65;
        v70 = Logger.logObject.getter();
        LOBYTE(v66) = static os_log_type_t.info.getter();

        v71 = v66;
        v72 = os_log_type_enabled(v70, v66);
        v73 = *(v0 + 664);
        if (v72)
        {
          v74 = *(v0 + 656);
          v124 = v69;
          v75 = *(v0 + 632);
          typea = v71;
          v76 = *(v0 + 592);
          v131 = *(v0 + 584);
          log = v70;
          v77 = *(v0 + 576);
          v78 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v78 = 141559299;
          *(v78 + 4) = 1752392040;
          *(v78 + 12) = 2081;
          sub_1000D2A70(v73, v74, &unk_1016B6E10, &qword_1013BD0A8);
          v79 = v74 + *(v75 + 48);
          v80 = *(v79 + 96);
          v82 = *(v79 + 64);
          v81 = *(v79 + 80);
          *(v0 + 272) = *(v79 + 48);
          *(v0 + 288) = v82;
          *(v0 + 304) = v81;
          *(v0 + 320) = v80;
          v84 = *(v79 + 16);
          v83 = *(v79 + 32);
          *(v0 + 224) = *v79;
          *(v0 + 240) = v84;
          *(v0 + 256) = v83;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          (v126)(v76, v74, v77);
          sub_10000B3A8(v73, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v86;
          v88 = *(v131 + 8);
          v88(v76, v77);
          v89 = sub_1000136BC(v85, v87, v136);

          *(v78 + 14) = v89;
          *(v78 + 22) = 2160;
          *(v78 + 24) = 1752392040;
          *(v78 + 32) = 2081;
          v90 = *(v0 + 504);
          v91 = *(v0 + 512);
          sub_1000035D0((v0 + 480), v90);
          (*(v91 + 8))(v90, v91);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
          v88(v76, v77);
          sub_100007BAC((v0 + 480));
          v95 = sub_1000136BC(v92, v94, v136);

          *(v78 + 34) = v95;
          *(v78 + 42) = 2049;
          [v124 latitude];
          *(v78 + 44) = v96;
          *(v78 + 52) = 2049;
          v97 = v124;
          [v124 longitude];
          *(v78 + 54) = v98;
          _os_log_impl(&_mh_execute_header, log, typea, "Received location update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v78, 0x3Eu);
          swift_arrayDestroy();

          v63 = v122;
          v62 = v123;
        }

        else
        {
          sub_10000B3A8(*(v0 + 664), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 480));
          v97 = v69;
        }

        v99 = *(v0 + 616);
        v100 = *(*(v0 + 600) + 48);
        v101 = *(v0 + 448);
        v102 = *(v0 + 456);
        sub_1000035D0((v0 + 424), v101);
        (*(v102 + 8))(v101, v102);
        *(v99 + v100) = v97;
        v103 = v97;
        sub_10000B3A8(v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        *(v0 + 528) = v135;
        v105 = v135[2];
        v104 = v135[3];
        if (v105 >= v104 >> 1)
        {
          sub_1011251CC((v104 > 1), v105 + 1, 1);
          v135 = *(v0 + 528);
        }

        v106 = *(v0 + 616);
        v107 = *(v0 + 608);
        ++v64;
        v135[2] = v105 + 1;
        sub_1000D2AD8(v106, v135 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v105, &unk_1016AA4B0, &qword_1013BD0A0);
        v7 = v133 + 56;
        if (v63 == v64)
        {

          v49 = v121;
          goto LABEL_35;
        }
      }

LABEL_42:
      __break(1u);
    }

    else
    {

      v135 = _swiftEmptyArrayStorage;
LABEL_35:
      v136[0] = v49;
      sub_10039A580(v135);
      if (*(v136[0] + 16))
      {
        sub_1000BC4D4(&qword_1016AA4D0, &qword_1013BD0C0);
        v108 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v108 = _swiftEmptyDictionarySingleton;
      }

      *(v0 + 536) = v108;

      sub_1007F558C(v109, 1, (v0 + 536));
      *(v0 + 704) = v129;
      v110 = *(v0 + 672);
      v111 = *(v0 + 656);
      v112 = *(v0 + 648);
      v113 = *(v0 + 640);

      v114 = objc_allocWithZone(SPLocationFetchResult);
      sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
      sub_1000194F8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v116 = [v114 initWithResults:isa];
      *(v0 + 712) = v116;

      sub_1000D2A70(v110, v111, &unk_1016B6E10, &qword_1013BD0A8);
      v117 = (*(v113 + 80) + 16) & ~*(v113 + 80);
      v118 = swift_allocObject();
      *(v0 + 720) = v118;
      sub_1000D2AD8(v111, v118 + v117, &unk_1016B6E10, &qword_1013BD0A8);
      *(v118 + ((v112 + v117 + 7) & 0xFFFFFFFFFFFFFFF8)) = v116;
      v119 = v116;
      v120 = swift_task_alloc();
      *(v0 + 728) = v120;
      v12 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v120 = v0;
      v120[1] = sub_1007F39B8;
      v10 = sub_1007FF0A0;
      v7 = v0 + 113;
      v9 = 0x80000001013BCEF0;
      v8 = 0xD000000000000014;
      v11 = v118;
    }

    return unsafeBlocking<A>(context:_:)(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v16 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v0 + 544);
      v6 = *(v15 + 8 * v16 + 64);
      ++v14;
      if (v6)
      {
        v129 = v13;
        v14 = v16;
        goto LABEL_10;
      }
    }

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_1007F39B8()
{

  return _swift_task_switch(sub_1007F3AD0, 0, 0);
}

uint64_t sub_1007F3AD0()
{
  v134 = v0;
  v1 = (v0 + 328);
  v2 = *(v0 + 672);

  v3 = sub_10000B3A8(v2, &unk_1016B6E10, &qword_1013BD0A8);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = (*(v0 + 688) - 1) & *(v0 + 688);
  if (v11)
  {
    while (1)
    {
      v126 = v9;
      v12 = *(v0 + 544);
LABEL_7:
      *(v0 + 696) = v10;
      *(v0 + 688) = v11;
      v14 = *(v0 + 680);
      *type = *(v0 + 672);
      v15 = *(v0 + 632);
      v16 = *(v0 + 584);
      v131 = *(v0 + 560);
      v127 = *(v0 + 114);
      v129 = *(v0 + 552);
      v17 = __clz(__rbit64(v11)) | (v10 << 6);
      (*(v16 + 16))(v14, *(v12 + 48) + *(v16 + 72) * v17, *(v0 + 576));
      v18 = (*(v12 + 56) + 104 * v17);
      v19 = v18[96];
      v21 = *(v18 + 4);
      v20 = *(v18 + 5);
      *(v0 + 64) = *(v18 + 3);
      *(v0 + 80) = v21;
      *(v0 + 96) = v20;
      *(v0 + 112) = v19;
      v23 = *(v18 + 1);
      v22 = *(v18 + 2);
      *(v0 + 16) = *v18;
      *(v0 + 32) = v23;
      *(v0 + 48) = v22;
      v24 = v14 + *(v15 + 48);
      v25 = *(v0 + 16);
      memmove(v24, v18, 0x61uLL);
      v26 = *(v16 + 32);
      v27 = *(v24 + 24);
      *v1 = *(v24 + 8);
      *(v0 + 344) = v27;
      v28 = *(v24 + 56);
      v29 = *(v24 + 72);
      v30 = *(v24 + 40);
      *(v0 + 401) = *(v24 + 81);
      *(v0 + 376) = v28;
      *(v0 + 392) = v29;
      *(v0 + 360) = v30;
      v31 = *type + *(v15 + 48);
      v123 = v26;
      v26();
      *v31 = v25;
      v32 = *(v0 + 344);
      *(v31 + 8) = *v1;
      *(v31 + 24) = v32;
      v34 = *(v0 + 376);
      v33 = *(v0 + 392);
      v35 = *(v0 + 401);
      *(v31 + 40) = *(v0 + 360);
      *(v31 + 81) = v35;
      *(v31 + 72) = v33;
      *(v31 + 56) = v34;
      v36 = swift_task_alloc();
      *(v36 + 16) = *type;
      *(v36 + 24) = v127;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v9 = v126;
      v37 = sub_10013D964(sub_1007FEFD8, v36, v129);

      v38 = swift_task_alloc();
      *(v38 + 16) = *type;
      *(v38 + 24) = v127;

      v39 = sub_10013DC7C(sub_1007FEFFC, v38, v131);

      v40 = v37[2];

      if (v40 || *(v39 + 16))
      {
        break;
      }

      v11 &= v11 - 1;
      v41 = *(v0 + 672);

      v3 = sub_10000B3A8(v41, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    v120 = v39;
    v44 = *(v0 + 568);
    v45 = *(v44 + 16);
    v46 = _swiftEmptyArrayStorage;
    if (v45)
    {
      *(v0 + 520) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v45, 0);
      v46 = *(v0 + 520);
      v47 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
      v48 = *(*(v47 - 8) + 72);
      v49 = v44 + ((*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80));
      do
      {
        v50 = *(v0 + 672);
        v51 = *(v0 + 624);
        v52 = *(v0 + 600);
        v53 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
        v54 = *(v52 + 48);
        *(v51 + v54) = sub_1007F48AC(v51, v49, *(v49 + *(v53 + 48)), *(v49 + *(v47 + 48)), v50);
        *(v0 + 520) = v46;
        v56 = v46[2];
        v55 = v46[3];
        if (v56 >= v55 >> 1)
        {
          sub_1011251CC((v55 > 1), v56 + 1, 1);
          v46 = *(v0 + 520);
        }

        v57 = *(v0 + 624);
        v58 = *(v0 + 608);
        v46[2] = v56 + 1;
        sub_1000D2AD8(v57, v46 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56, &unk_1016AA4B0, &qword_1013BD0A0);
        v49 += v48;
        --v45;
      }

      while (v45);
    }

    v59 = v120;
    v60 = *(v120 + 16);
    if (v60)
    {
      v118 = v46;
      *(v0 + 528) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v60, 0);
      v61 = 0;
      v3 = v120 + 32;
      v132 = *(v0 + 528);
      v119 = v60;
      while (v61 < *(v59 + 16))
      {
        v130 = v3;
        sub_1000D2A70(v3, v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        v62 = *(v0 + 472);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v63 = *(v0 + 672);
        v64 = *(v0 + 664);
        v65 = type metadata accessor for Logger();
        sub_1000076D4(v65, qword_10177B368);
        sub_1000D2A70(v63, v64, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 424, v0 + 480);
        v66 = v62;
        v67 = Logger.logObject.getter();
        LOBYTE(v63) = static os_log_type_t.info.getter();

        v68 = v63;
        v69 = os_log_type_enabled(v67, v63);
        v70 = *(v0 + 664);
        if (v69)
        {
          v71 = *(v0 + 656);
          v121 = v66;
          v72 = *(v0 + 632);
          typea = v68;
          v73 = *(v0 + 592);
          v128 = *(v0 + 584);
          log = v67;
          v74 = *(v0 + 576);
          v75 = swift_slowAlloc();
          v133[0] = swift_slowAlloc();
          *v75 = 141559299;
          *(v75 + 4) = 1752392040;
          *(v75 + 12) = 2081;
          sub_1000D2A70(v70, v71, &unk_1016B6E10, &qword_1013BD0A8);
          v76 = v71 + *(v72 + 48);
          v77 = *(v76 + 96);
          v79 = *(v76 + 64);
          v78 = *(v76 + 80);
          *(v0 + 272) = *(v76 + 48);
          *(v0 + 288) = v79;
          *(v0 + 304) = v78;
          *(v0 + 320) = v77;
          v81 = *(v76 + 16);
          v80 = *(v76 + 32);
          *(v0 + 224) = *v76;
          *(v0 + 240) = v81;
          *(v0 + 256) = v80;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          (v123)(v73, v71, v74);
          sub_10000B3A8(v70, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          v85 = *(v128 + 8);
          v85(v73, v74);
          v86 = sub_1000136BC(v82, v84, v133);

          *(v75 + 14) = v86;
          *(v75 + 22) = 2160;
          *(v75 + 24) = 1752392040;
          *(v75 + 32) = 2081;
          v87 = *(v0 + 504);
          v88 = *(v0 + 512);
          sub_1000035D0((v0 + 480), v87);
          (*(v88 + 8))(v87, v88);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          v85(v73, v74);
          sub_100007BAC((v0 + 480));
          v92 = sub_1000136BC(v89, v91, v133);

          *(v75 + 34) = v92;
          *(v75 + 42) = 2049;
          [v121 latitude];
          *(v75 + 44) = v93;
          *(v75 + 52) = 2049;
          v94 = v121;
          [v121 longitude];
          *(v75 + 54) = v95;
          _os_log_impl(&_mh_execute_header, log, typea, "Received location update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v75, 0x3Eu);
          swift_arrayDestroy();

          v60 = v119;
          v59 = v120;
        }

        else
        {
          sub_10000B3A8(*(v0 + 664), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 480));
          v94 = v66;
        }

        v96 = *(v0 + 616);
        v97 = *(*(v0 + 600) + 48);
        v98 = *(v0 + 448);
        v99 = *(v0 + 456);
        sub_1000035D0((v0 + 424), v98);
        (*(v99 + 8))(v98, v99);
        *(v96 + v97) = v94;
        v100 = v94;
        sub_10000B3A8(v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        *(v0 + 528) = v132;
        v102 = v132[2];
        v101 = v132[3];
        if (v102 >= v101 >> 1)
        {
          sub_1011251CC((v101 > 1), v102 + 1, 1);
          v132 = *(v0 + 528);
        }

        v103 = *(v0 + 616);
        v104 = *(v0 + 608);
        ++v61;
        v132[2] = v102 + 1;
        sub_1000D2AD8(v103, v132 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v102, &unk_1016AA4B0, &qword_1013BD0A0);
        v3 = v130 + 56;
        if (v60 == v61)
        {

          v46 = v118;
          goto LABEL_32;
        }
      }

LABEL_43:
      __break(1u);
      return unsafeBlocking<A>(context:_:)(v3, v4, v5, v6, v7, v8);
    }

    v132 = _swiftEmptyArrayStorage;
LABEL_32:
    v133[0] = v46;
    sub_10039A580(v132);
    if (*(v133[0] + 16))
    {
      sub_1000BC4D4(&qword_1016AA4D0, &qword_1013BD0C0);
      v105 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v105 = _swiftEmptyDictionarySingleton;
    }

    *(v0 + 536) = v105;

    sub_1007F558C(v106, 1, (v0 + 536));
    *(v0 + 704) = v126;
    if (!v126)
    {
      v107 = *(v0 + 672);
      v108 = *(v0 + 656);
      v109 = *(v0 + 648);
      v110 = *(v0 + 640);

      v111 = objc_allocWithZone(SPLocationFetchResult);
      sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
      sub_1000194F8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v113 = [v111 initWithResults:isa];
      *(v0 + 712) = v113;

      sub_1000D2A70(v107, v108, &unk_1016B6E10, &qword_1013BD0A8);
      v114 = (*(v110 + 80) + 16) & ~*(v110 + 80);
      v115 = swift_allocObject();
      *(v0 + 720) = v115;
      sub_1000D2AD8(v108, v115 + v114, &unk_1016B6E10, &qword_1013BD0A8);
      *(v115 + ((v109 + v114 + 7) & 0xFFFFFFFFFFFFFFF8)) = v113;
      v116 = v113;
      v117 = swift_task_alloc();
      *(v0 + 728) = v117;
      v8 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v117 = v0;
      v117[1] = sub_1007F39B8;
      v6 = sub_1007FF0A0;
      v3 = v0 + 113;
      v5 = 0x80000001013BCEF0;
      v4 = 0xD000000000000014;
      v7 = v115;

      return unsafeBlocking<A>(context:_:)(v3, v4, v5, v6, v7, v8);
    }

    return swift_unexpectedError();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v13 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v0 + 544);
      v11 = *(v12 + 8 * v13 + 64);
      ++v10;
      if (v11)
      {
        v126 = v9;
        v10 = v13;
        goto LABEL_7;
      }
    }

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1007F47F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v5 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  return sub_101106A80(a1, *(a1 + *(v5 + 48)), v3) & 1;
}

id sub_1007F48AC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v63 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v11 = __chkstk_darwin(v61);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v16 = __chkstk_darwin(v15);
  v60 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  (*(v9 + 16))();
  v62 = v15;
  *&v22[*(v15 + 48)] = a3;
  v23 = qword_101694958;
  v24 = a3;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B368);
  sub_1000D2A70(a5, v14, &unk_1016B6E10, &qword_1013BD0A8);
  sub_1000D2A70(v22, v20, &unk_1016AA490, &unk_1013BD060);
  v63 = v63;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50 = v14;
    v29 = v28;
    v55 = swift_slowAlloc();
    v64 = v55;
    *v29 = 141559299;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v30 = v14;
    v31 = v58;
    sub_1000D2A70(v30, v58, &unk_1016B6E10, &qword_1013BD0A8);
    v54 = v26;
    v56 = v22;
    v57 = a1;
    v52 = v20;
    v53 = v27;
    v61 = v9;

    v51 = *(v61 + 32);
    v32 = v59;
    v51(v59, v31, v8);
    sub_10000B3A8(v50, &unk_1016B6E10, &qword_1013BD0A8);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = *(v61 + 8);
    v36(v32, v8);
    v37 = sub_1000136BC(v33, v35, &v64);

    *(v29 + 14) = v37;
    *(v29 + 22) = 2160;
    *(v29 + 24) = 1752392040;
    *(v29 + 32) = 2081;
    v38 = v52;
    v39 = v60;
    sub_1000D2A70(v52, v60, &unk_1016AA490, &unk_1013BD060);

    v51(v32, v39, v8);
    v9 = v61;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v36(v32, v8);
    v22 = v56;
    a1 = v57;
    sub_10000B3A8(v38, &unk_1016AA490, &unk_1013BD060);
    v43 = sub_1000136BC(v40, v42, &v64);

    *(v29 + 34) = v43;
    *(v29 + 42) = 2049;
    [v63 latitude];
    *(v29 + 44) = v44;
    *(v29 + 52) = 2049;
    [v63 longitude];
    *(v29 + 54) = v45;
    v46 = v54;
    _os_log_impl(&_mh_execute_header, v54, v53, "Received location update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v29, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000B3A8(v14, &unk_1016B6E10, &qword_1013BD0A8);

    sub_10000B3A8(v20, &unk_1016AA490, &unk_1013BD060);
    v39 = v60;
  }

  sub_1000D2AD8(v22, v39, &unk_1016AA490, &unk_1013BD060);

  (*(v9 + 32))(a1, v39, v8);
  v47 = v63;

  return v47;
}

BOOL sub_1007F4F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1000D2A70(a1, &v10 - v5, &unk_1016B6E10, &qword_1013BD0A8);

  XPCSession.proxy.getter();

  v7 = v11;
  if (v11)
  {
    [v11 receivedUpdatedLocation:a2];
    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v7 == 0;
}

uint64_t sub_1007F50A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_1007EF1DC(a1, v1);
}

unint64_t sub_1007F5138()
{
  result = qword_1016AF980;
  if (!qword_1016AF980)
  {
    sub_1000BC580(&unk_1016AA410, &unk_101395200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF980);
  }

  return result;
}

void sub_1007F51B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1007E3F94(a1, v4);
}

uint64_t sub_1007F5220()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1007F5400()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100E720D0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1007F54A4(uint64_t a1)
{
  v4 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1007DAD40(a1, v6, v1 + 24, v1 + v5);
}

uint64_t sub_1007F558C(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AA4B0, &qword_1013BD0A0);
  v12 = __chkstk_darwin(v11);
  v15 = v55 - v14;
  v60 = *(a1 + 16);
  if (!v60)
  {
  }

  v55[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  sub_1000D2A70(a1 + v17, v55 - v14, &unk_1016AA4B0, &qword_1013BD0A0);
  v56 = v8;
  v62 = *(v8 + 32);
  v63 = v7;
  v62(v10, v15, v7);
  v58 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1000210EC(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_100FE5D7C(v25, a2 & 1);
    v20 = sub_1000210EC(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_101004CB0();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v66 = v28;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v29 = swift_dynamicCast();
    v30 = v56;
    if ((v29 & 1) == 0)
    {

      (*(v30 + 8))(v10, v63);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v57 = *(v56 + 72);
  v35 = v20;
  v62((v34 + v57 * v20), v10, v63);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v61;
    if (v60 == 1)
    {
    }

    v39 = v61 + v59 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_1000D2A70(v39, v15, &unk_1016AA4B0, &qword_1013BD0A0);
      v62(v10, v15, v63);
      v18 = *&v15[v58];
      v41 = *a3;
      v42 = sub_1000210EC(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_100FE5D7C(v46, 1);
        v42 = sub_1000210EC(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v62((v49[6] + v57 * v42), v10, v63);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v59;
      v38 = v61;
      if (v60 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v53._object = 0x8000000101360AB0;
  v53._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v53);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 39;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007F5AD0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  v4 = sub_1007D60D4(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_1007F5B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[40] = a1;
  v3[41] = a3;
  type metadata accessor for String.Encoding();
  v3[42] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v3[43] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[48] = v7;
  v3[49] = *(v7 - 8);
  v3[50] = swift_task_alloc();
  v8 = type metadata accessor for BeaconIdentifier(0);
  v3[51] = v8;
  v9 = *(v8 - 8);
  v3[52] = v9;
  v3[53] = *(v9 + 64);
  v3[54] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[55] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v3[56] = v10;
  v3[57] = *(v10 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v3[60] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[61] = v11;
  v12 = type metadata accessor for DeviceEvent(0);
  v3[62] = v12;
  v3[63] = *(v12 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[5] = v6;
  v3[6] = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v13 = sub_1000280DC(v3 + 2);
  v3[71] = v13;
  sub_1007FF3E4(a2, v13, type metadata accessor for LocalFindableAccessoryRecord);
  v14 = swift_task_alloc();
  v3[72] = v14;
  *v14 = v3;
  v14[1] = sub_1007F5FB4;

  return sub_1007EAD28(v11, a1);
}

uint64_t sub_1007F5FB4()
{
  v1 = *(*v0 + 328);

  return _swift_task_switch(sub_1007F60C4, v1, 0);
}

uint64_t sub_1007F60C4()
{
  v104 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v2 + 48);
  *(v0 + 584) = v4;
  *(v0 + 592) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    *v5 = v0;
    v5[1] = sub_1007F6D5C;
    v6 = *(v0 + 480);
    v7 = *(v0 + 320);

    return sub_1007E9BD4(v6, v7);
  }

  else
  {
    sub_100035B84(v3, *(v0 + 552), type metadata accessor for DeviceEvent);
    v9 = *(v0 + 560);
    sub_100035B84(*(v0 + 552), v9, type metadata accessor for DeviceEvent);
    v10 = *(v9 + 9);
    if (v10 == 5)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 464);
      v11 = *(v0 + 472);
      v13 = *(v0 + 448);
      v14 = *(v0 + 456);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073C8C(*(v0 + 312));

      Date.addingTimeInterval(_:)();
      static Date.trustedNow.getter(v12);
      Date.timeIntervalSince(_:)();
      v16 = v15;
      v17 = *(v14 + 8);
      v17(v12, v13);
      v17(v11, v13);
      if (v16 > 0.0)
      {
        v19 = *(v0 + 320);
        v18 = *(v0 + 328);
        v20 = *(*(v0 + 408) + 20);
        swift_beginAccess();
        if (*(*(v18 + 152) + 16))
        {

          sub_1000210EC(v19 + v20);
          if (v21)
          {

            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            Task.cancel()();
          }

          else
          {
          }
        }

        v22 = *(v0 + 432);
        v23 = *(v0 + 440);
        v24 = *(v0 + 416);
        v10 = *(v0 + 424);
        v100 = v19;
        v25 = v20;
        v26 = *(v0 + 320);
        v27 = type metadata accessor for TaskPriority();
        (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
        v28 = swift_allocObject();
        swift_weakInit();
        sub_1007FF3E4(v26, v22, type metadata accessor for BeaconIdentifier);
        sub_10001F280(v0 + 16, v0 + 216);
        v29 = (*(v24 + 80) + 48) & ~*(v24 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        *(v30 + 32) = v16;
        *(v30 + 40) = v28;
        sub_100035B84(v22, v30 + v29, type metadata accessor for BeaconIdentifier);
        sub_10000A748((v0 + 216), v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
        v31 = sub_100A838D4(0, 0, v23, &unk_1013BD188, v30);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103[0] = *(v18 + 152);
        *(v18 + 152) = 0x8000000000000000;
        sub_100FFF724(v31, v100 + v25, isUniquelyReferenced_nonNull_native);
        *(v18 + 152) = v103[0];
        swift_endAccess();
        LOBYTE(v10) = 5;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 560);
    v34 = *(v0 + 536);
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177B368);
    sub_10001F280(v0 + 16, v0 + 136);
    sub_1007FF3E4(v33, v34, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v33, v35, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v33, v36, type metadata accessor for DeviceEvent);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 536);
    if (v40)
    {
      v99 = v39;
      v101 = v38;
      v102 = v10;
      v42 = *(v0 + 392);
      v43 = *(v0 + 400);
      v44 = *(v0 + 384);
      v45 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v45 = 141559299;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v46 = sub_1000035D0((v0 + 136), *(v0 + 160));
      v98 = *(v42 + 16);
      v98(v43, v46, v44);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v97 = *(v42 + 8);
      v97(v43, v44);
      sub_100007BAC((v0 + 136));
      v50 = sub_1000136BC(v47, v49, v103);

      *(v45 + 14) = v50;
      *(v45 + 22) = 2082;
      v51 = 0xE800000000000000;
      v52 = 0x6E776F6E6B6E752ELL;
      v53 = *(v41 + 9);
      v54 = 0xEC00000064657261;
      v55 = 0x657070617369642ELL;
      if (v53 != 6)
      {
        v55 = 0x726961702ELL;
        v54 = 0xE500000000000000;
      }

      v56 = 0xE700000000000000;
      v57 = 0x6863617465642ELL;
      if (v53 != 4)
      {
        v57 = 0x657463657465642ELL;
        v56 = 0xEF79627261654E64;
      }

      if (*(v41 + 9) <= 5u)
      {
        v55 = v57;
        v54 = v56;
      }

      v58 = 0xEB00000000746365;
      v59 = 0x6E6E6F637369642ELL;
      if (v53 != 2)
      {
        v59 = 0x6863617474612ELL;
        v58 = 0xE700000000000000;
      }

      if (*(v41 + 9))
      {
        v52 = 0x7463656E6E6F632ELL;
        v51 = 0xE800000000000000;
      }

      if (*(v41 + 9) > 1u)
      {
        v52 = v59;
        v51 = v58;
      }

      if (*(v41 + 9) <= 3u)
      {
        v60 = v52;
      }

      else
      {
        v60 = v55;
      }

      if (*(v41 + 9) <= 3u)
      {
        v61 = v51;
      }

      else
      {
        v61 = v54;
      }

      v62 = *(v0 + 528);
      v63 = *(v0 + 520);
      v64 = *(v0 + 496);
      v65 = *(v0 + 376);
      sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
      v66 = sub_1000136BC(v60, v61, v103);

      *(v45 + 24) = v66;
      *(v45 + 32) = 2082;
      sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      sub_10003627C(v62, type metadata accessor for DeviceEvent);
      v70 = sub_1000136BC(v67, v69, v103);

      *(v45 + 34) = v70;
      *(v45 + 42) = 2160;
      *(v45 + 44) = 1752392040;
      *(v45 + 52) = 2081;
      sub_1000D2A70(v63 + *(v64 + 32), v65, &unk_1016AA510, &unk_101393150);
      v71 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
      if ((*(*(v71 - 8) + 48))(v65, 1, v71) == 1)
      {
        sub_10000B3A8(*(v0 + 376), &unk_1016AA510, &unk_101393150);
        v72 = 0xE400000000000000;
        v73 = 1701736302;
      }

      else
      {
        v76 = *(v0 + 400);
        v77 = *(v0 + 376);
        v78 = *(v0 + 384);
        v98(v76, v77, v78);
        sub_10003627C(v77, type metadata accessor for DeviceEvent.AttachmentInfo);
        v73 = UUID.uuidString.getter();
        v72 = v79;
        v97(v76, v78);
      }

      LOBYTE(v10) = v102;
      sub_10003627C(*(v0 + 520), type metadata accessor for DeviceEvent);
      v80 = sub_1000136BC(v73, v72, v103);

      *(v45 + 54) = v80;
      _os_log_impl(&_mh_execute_header, v101, v99, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v45, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v74 = *(v0 + 528);
      v75 = *(v0 + 520);

      sub_10003627C(v75, type metadata accessor for DeviceEvent);
      sub_10003627C(v74, type metadata accessor for DeviceEvent);
      sub_10003627C(v41, type metadata accessor for DeviceEvent);
      sub_100007BAC((v0 + 136));
    }

    v81 = *(v0 + 360);
    sub_10001F280(v0 + 16, v0 + 176);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v82 = swift_dynamicCast();
    v83 = *(v81 + 56);
    if (v82)
    {
      v84 = *(v0 + 368);
      v85 = *(v0 + 344);
      v83(v85, 0, 1, *(v0 + 352));
      sub_100035B84(v85, v84, type metadata accessor for LocalFindableAccessoryRecord);
      static String.Encoding.utf8.getter();
      v86 = String.init(data:encoding:)();
      if (!v87)
      {
        v86 = Data.hexString.getter();
      }

      v88 = v86;
      v89 = v87;
      sub_10003627C(*(v0 + 368), type metadata accessor for LocalFindableAccessoryRecord);
    }

    else
    {
      v90 = *(v0 + 344);
      v83(v90, 1, 1, *(v0 + 352));
      sub_10000B3A8(v90, &qword_1016A9A30, &unk_1013BD120);
      v88 = 0;
      v89 = 0;
    }

    v91 = *(v0 + 560);
    v92 = *(v0 + 512);
    v93 = *(*(v0 + 328) + 160);
    sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
    sub_1007FF3E4(v91, v92, type metadata accessor for DeviceEvent);
    v94 = sub_1007E9934(v92, v88, v89);
    *(v0 + 608) = v94;
    v95 = swift_task_alloc();
    *(v0 + 616) = v95;
    *v95 = v0;
    v95[1] = sub_1007F803C;
    v96 = *(v0 + 568);

    return sub_1007FE0D0(v94, v96, 0x10F0F0F0F040200uLL >> (8 * v10), v93);
  }
}

uint64_t sub_1007F6D5C()
{
  v1 = *(*v0 + 328);

  return _swift_task_switch(sub_1007F6E6C, v1, 0);
}

uint64_t sub_1007F6E6C()
{
  v129 = v0;
  v1 = *(v0 + 480);
  if ((*(v0 + 584))(v1, 1, *(v0 + 496)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
    sub_1007FF390();
    v2 = swift_allocError();
    *v3 = 3;
    swift_willThrow();
    *(v0 + 304) = v2;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 624) == 3)
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 96);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v8 = *(v0 + 392);
        v7 = *(v0 + 400);
        v9 = *(v0 + 384);
        v10 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v128[0] = v125;
        *v10 = 141558275;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2081;
        v11 = sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(v8 + 16))(v7, v11, v9);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        (*(v8 + 8))(v7, v9);
        sub_100007BAC((v0 + 96));
        v15 = sub_1000136BC(v12, v14, v128);

        *(v10 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v5, v6, "No device events for beacon: %{private,mask.hash}s", v10, 0x16u);
        sub_100007BAC(v125);

LABEL_19:

LABEL_23:

        sub_100007BAC((v0 + 16));

        v42 = *(v0 + 8);

        return v42();
      }

      v41 = (v0 + 96);
    }

    else
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 56);
      swift_errorRetain();
      v5 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v30))
      {
        v32 = *(v0 + 392);
        v31 = *(v0 + 400);
        v33 = *(v0 + 384);
        v34 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v128[0] = v126;
        *v34 = 138543875;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v35;
        *v122 = v35;
        *(v34 + 12) = 2160;
        *(v34 + 14) = 1752392040;
        *(v34 + 22) = 2081;
        v36 = sub_1000035D0((v0 + 56), *(v0 + 80));
        (*(v32 + 16))(v31, v36, v33);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v32 + 8))(v31, v33);
        sub_100007BAC((v0 + 56));
        v40 = sub_1000136BC(v37, v39, v128);

        *(v34 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v5, v30, "Failed to send the attach event: %{public}@ for beacon: %{private,mask.hash}s", v34, 0x20u);
        sub_10000B3A8(v122, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v126);

        goto LABEL_19;
      }

      v41 = (v0 + 56);
    }

    sub_100007BAC(v41);
    goto LABEL_23;
  }

  sub_100035B84(v1, *(v0 + 544), type metadata accessor for DeviceEvent);
  v16 = *(v0 + 560);
  sub_100035B84(*(v0 + 544), v16, type metadata accessor for DeviceEvent);
  v17 = *(v16 + 9);
  if (v17 == 5)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 464);
    v18 = *(v0 + 472);
    v20 = *(v0 + 448);
    v21 = *(v0 + 456);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(*(v0 + 312));

    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v19);
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = *(v21 + 8);
    v24(v19, v20);
    v24(v18, v20);
    if (v23 > 0.0)
    {
      v26 = *(v0 + 320);
      v25 = *(v0 + 328);
      v27 = *(*(v0 + 408) + 20);
      swift_beginAccess();
      if (*(*(v25 + 152) + 16))
      {

        sub_1000210EC(v26 + v27);
        if (v28)
        {

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v44 = *(v0 + 432);
      v45 = *(v0 + 440);
      v46 = *(v0 + 416);
      v17 = *(v0 + 424);
      v123 = v26;
      v47 = v27;
      v48 = *(v0 + 320);
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
      v50 = swift_allocObject();
      swift_weakInit();
      sub_1007FF3E4(v48, v44, type metadata accessor for BeaconIdentifier);
      sub_10001F280(v0 + 16, v0 + 216);
      v51 = (*(v46 + 80) + 48) & ~*(v46 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v23;
      *(v52 + 40) = v50;
      sub_100035B84(v44, v52 + v51, type metadata accessor for BeaconIdentifier);
      sub_10000A748((v0 + 216), v52 + ((v17 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      v53 = sub_100A838D4(0, 0, v45, &unk_1013BD188, v52);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128[0] = *(v25 + 152);
      *(v25 + 152) = 0x8000000000000000;
      sub_100FFF724(v53, v123 + v47, isUniquelyReferenced_nonNull_native);
      *(v25 + 152) = v128[0];
      swift_endAccess();
      LOBYTE(v17) = 5;
    }
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 560);
  v56 = *(v0 + 536);
  v57 = *(v0 + 528);
  v58 = *(v0 + 520);
  v59 = type metadata accessor for Logger();
  sub_1000076D4(v59, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 136);
  sub_1007FF3E4(v55, v56, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v55, v57, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v55, v58, type metadata accessor for DeviceEvent);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 536);
  if (v62)
  {
    v121 = v61;
    v124 = v60;
    v127 = v17;
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    v66 = *(v0 + 384);
    v67 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v67 = 141559299;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    v68 = sub_1000035D0((v0 + 136), *(v0 + 160));
    v120 = *(v64 + 16);
    v120(v65, v68, v66);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v119 = *(v64 + 8);
    v119(v65, v66);
    sub_100007BAC((v0 + 136));
    v72 = sub_1000136BC(v69, v71, v128);

    *(v67 + 14) = v72;
    *(v67 + 22) = 2082;
    v73 = 0xE800000000000000;
    v74 = 0x6E776F6E6B6E752ELL;
    v75 = *(v63 + 9);
    v76 = 0xEC00000064657261;
    v77 = 0x657070617369642ELL;
    if (v75 != 6)
    {
      v77 = 0x726961702ELL;
      v76 = 0xE500000000000000;
    }

    v78 = 0xE700000000000000;
    v79 = 0x6863617465642ELL;
    if (v75 != 4)
    {
      v79 = 0x657463657465642ELL;
      v78 = 0xEF79627261654E64;
    }

    if (*(v63 + 9) <= 5u)
    {
      v77 = v79;
      v76 = v78;
    }

    v80 = 0xEB00000000746365;
    v81 = 0x6E6E6F637369642ELL;
    if (v75 != 2)
    {
      v81 = 0x6863617474612ELL;
      v80 = 0xE700000000000000;
    }

    if (*(v63 + 9))
    {
      v74 = 0x7463656E6E6F632ELL;
      v73 = 0xE800000000000000;
    }

    if (*(v63 + 9) > 1u)
    {
      v74 = v81;
      v73 = v80;
    }

    if (*(v63 + 9) <= 3u)
    {
      v82 = v74;
    }

    else
    {
      v82 = v77;
    }

    if (*(v63 + 9) <= 3u)
    {
      v83 = v73;
    }

    else
    {
      v83 = v76;
    }

    v84 = *(v0 + 528);
    v85 = *(v0 + 520);
    v86 = *(v0 + 496);
    v87 = *(v0 + 376);
    sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
    v88 = sub_1000136BC(v82, v83, v128);

    *(v67 + 24) = v88;
    *(v67 + 32) = 2082;
    sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    sub_10003627C(v84, type metadata accessor for DeviceEvent);
    v92 = sub_1000136BC(v89, v91, v128);

    *(v67 + 34) = v92;
    *(v67 + 42) = 2160;
    *(v67 + 44) = 1752392040;
    *(v67 + 52) = 2081;
    sub_1000D2A70(v85 + *(v86 + 32), v87, &unk_1016AA510, &unk_101393150);
    v93 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v93 - 8) + 48))(v87, 1, v93) == 1)
    {
      sub_10000B3A8(*(v0 + 376), &unk_1016AA510, &unk_101393150);
      v94 = 0xE400000000000000;
      v95 = 1701736302;
    }

    else
    {
      v98 = *(v0 + 400);
      v99 = *(v0 + 376);
      v100 = *(v0 + 384);
      v120(v98, v99, v100);
      sub_10003627C(v99, type metadata accessor for DeviceEvent.AttachmentInfo);
      v95 = UUID.uuidString.getter();
      v94 = v101;
      v119(v98, v100);
    }

    LOBYTE(v17) = v127;
    sub_10003627C(*(v0 + 520), type metadata accessor for DeviceEvent);
    v102 = sub_1000136BC(v95, v94, v128);

    *(v67 + 54) = v102;
    _os_log_impl(&_mh_execute_header, v124, v121, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v67, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v96 = *(v0 + 528);
    v97 = *(v0 + 520);

    sub_10003627C(v97, type metadata accessor for DeviceEvent);
    sub_10003627C(v96, type metadata accessor for DeviceEvent);
    sub_10003627C(v63, type metadata accessor for DeviceEvent);
    sub_100007BAC((v0 + 136));
  }

  v103 = *(v0 + 360);
  sub_10001F280(v0 + 16, v0 + 176);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v104 = swift_dynamicCast();
  v105 = *(v103 + 56);
  if (v104)
  {
    v106 = *(v0 + 368);
    v107 = *(v0 + 344);
    v105(v107, 0, 1, *(v0 + 352));
    sub_100035B84(v107, v106, type metadata accessor for LocalFindableAccessoryRecord);
    static String.Encoding.utf8.getter();
    v108 = String.init(data:encoding:)();
    if (!v109)
    {
      v108 = Data.hexString.getter();
    }

    v110 = v108;
    v111 = v109;
    sub_10003627C(*(v0 + 368), type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v112 = *(v0 + 344);
    v105(v112, 1, 1, *(v0 + 352));
    sub_10000B3A8(v112, &qword_1016A9A30, &unk_1013BD120);
    v110 = 0;
    v111 = 0;
  }

  v113 = *(v0 + 560);
  v114 = *(v0 + 512);
  v115 = *(*(v0 + 328) + 160);
  sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
  sub_1007FF3E4(v113, v114, type metadata accessor for DeviceEvent);
  v116 = sub_1007E9934(v114, v110, v111);
  *(v0 + 608) = v116;
  v117 = swift_task_alloc();
  *(v0 + 616) = v117;
  *v117 = v0;
  v117[1] = sub_1007F803C;
  v118 = *(v0 + 568);

  return sub_1007FE0D0(v116, v118, 0x10F0F0F0F040200uLL >> (8 * v17), v115);
}

uint64_t sub_1007F803C()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 328);

  return _swift_task_switch(sub_1007F8164, v2, 0);
}

uint64_t sub_1007F8164()
{
  sub_10003627C(v0[70], type metadata accessor for DeviceEvent);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007F82D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a1;
  v5[41] = a3;
  type metadata accessor for String.Encoding();
  v5[44] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v5[45] = swift_task_alloc();
  v9 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v5[46] = v9;
  v5[47] = *(v9 - 8);
  v5[48] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v5[49] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[50] = v10;
  v5[51] = *(v10 - 8);
  v5[52] = swift_task_alloc();
  v11 = type metadata accessor for BeaconIdentifier(0);
  v5[53] = v11;
  v12 = *(v11 - 8);
  v5[54] = v12;
  v5[55] = *(v12 + 64);
  v5[56] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[57] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v5[58] = v13;
  v5[59] = *(v13 - 8);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5[62] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[63] = v14;
  v15 = type metadata accessor for DeviceEvent(0);
  v5[64] = v15;
  v5[65] = *(v15 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v5[73] = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))();
  v16 = swift_task_alloc();
  v5[74] = v16;
  *v16 = v5;
  v16[1] = sub_1007F8728;

  return sub_1007EAD28(v14, a1);
}

uint64_t sub_1007F8728()
{
  v1 = *(*v0 + 328);

  return _swift_task_switch(sub_1007F8838, v1, 0);
}

uint64_t sub_1007F8838()
{
  v106 = v0;
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v1 + 48);
  *(v0 + 600) = v4;
  *(v0 + 608) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    v5 = swift_task_alloc();
    *(v0 + 616) = v5;
    *v5 = v0;
    v5[1] = sub_1007F94D8;
    v6 = *(v0 + 496);
    v7 = *(v0 + 320);

    return sub_1007E9BD4(v6, v7);
  }

  else
  {
    sub_100035B84(v3, *(v0 + 568), type metadata accessor for DeviceEvent);
    v9 = *(v0 + 576);
    sub_100035B84(*(v0 + 568), v9, type metadata accessor for DeviceEvent);
    v10 = *(v9 + 9);
    if (v10 == 5)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 480);
      v11 = *(v0 + 488);
      v13 = *(v0 + 464);
      v14 = *(v0 + 472);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073C8C(*(v0 + 312));

      Date.addingTimeInterval(_:)();
      static Date.trustedNow.getter(v12);
      Date.timeIntervalSince(_:)();
      v16 = v15;
      v17 = *(v14 + 8);
      v17(v12, v13);
      v17(v11, v13);
      if (v16 > 0.0)
      {
        v19 = *(v0 + 320);
        v18 = *(v0 + 328);
        v20 = *(*(v0 + 424) + 20);
        swift_beginAccess();
        if (*(*(v18 + 152) + 16))
        {

          sub_1000210EC(v19 + v20);
          if (v21)
          {

            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            Task.cancel()();
          }

          else
          {
          }
        }

        v22 = *(v0 + 448);
        v23 = *(v0 + 456);
        v24 = *(v0 + 432);
        v10 = *(v0 + 440);
        v102 = v19;
        v25 = v20;
        v26 = *(v0 + 320);
        v27 = type metadata accessor for TaskPriority();
        (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
        v28 = swift_allocObject();
        swift_weakInit();
        sub_1007FF3E4(v26, v22, type metadata accessor for BeaconIdentifier);
        sub_10001F280(v0 + 16, v0 + 216);
        v29 = (*(v24 + 80) + 48) & ~*(v24 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        *(v30 + 32) = v16;
        *(v30 + 40) = v28;
        sub_100035B84(v22, v30 + v29, type metadata accessor for BeaconIdentifier);
        sub_10000A748((v0 + 216), v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
        v31 = sub_100A838D4(0, 0, v23, &unk_1013BD198, v30);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105[0] = *(v18 + 152);
        *(v18 + 152) = 0x8000000000000000;
        sub_100FFF724(v31, v102 + v25, isUniquelyReferenced_nonNull_native);
        *(v18 + 152) = v105[0];
        swift_endAccess();
        LOBYTE(v10) = 5;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 576);
    v34 = *(v0 + 552);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);
    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177B368);
    sub_10001F280(v0 + 16, v0 + 136);
    sub_1007FF3E4(v33, v34, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v33, v35, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v33, v36, type metadata accessor for DeviceEvent);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 552);
    if (v40)
    {
      v101 = v39;
      v103 = v38;
      v104 = v10;
      v42 = *(v0 + 408);
      v43 = *(v0 + 416);
      v44 = *(v0 + 400);
      v46 = *(v0 + 336);
      v45 = *(v0 + 344);
      v47 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v47 = 141559299;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_1000035D0((v0 + 136), *(v0 + 160));
      (*(*(*(v45 + 8) + 8) + 32))(v46);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v100 = *(v42 + 8);
      v100(v43, v44);
      sub_100007BAC((v0 + 136));
      v51 = sub_1000136BC(v48, v50, v105);

      *(v47 + 14) = v51;
      *(v47 + 22) = 2082;
      v52 = 0xE800000000000000;
      v53 = 0x6E776F6E6B6E752ELL;
      v54 = *(v41 + 9);
      v55 = 0xEC00000064657261;
      v56 = 0x657070617369642ELL;
      if (v54 != 6)
      {
        v56 = 0x726961702ELL;
        v55 = 0xE500000000000000;
      }

      v57 = 0xE700000000000000;
      v58 = 0x6863617465642ELL;
      if (v54 != 4)
      {
        v58 = 0x657463657465642ELL;
        v57 = 0xEF79627261654E64;
      }

      if (*(v41 + 9) <= 5u)
      {
        v56 = v58;
        v55 = v57;
      }

      v59 = 0xEB00000000746365;
      v60 = 0x6E6E6F637369642ELL;
      if (v54 != 2)
      {
        v60 = 0x6863617474612ELL;
        v59 = 0xE700000000000000;
      }

      if (*(v41 + 9))
      {
        v53 = 0x7463656E6E6F632ELL;
        v52 = 0xE800000000000000;
      }

      if (*(v41 + 9) > 1u)
      {
        v53 = v60;
        v52 = v59;
      }

      if (*(v41 + 9) <= 3u)
      {
        v61 = v53;
      }

      else
      {
        v61 = v56;
      }

      if (*(v41 + 9) <= 3u)
      {
        v62 = v52;
      }

      else
      {
        v62 = v55;
      }

      v63 = *(v0 + 544);
      v64 = *(v0 + 536);
      v65 = *(v0 + 512);
      v66 = *(v0 + 392);
      sub_10003627C(*(v0 + 552), type metadata accessor for DeviceEvent);
      v67 = sub_1000136BC(v61, v62, v105);

      *(v47 + 24) = v67;
      *(v47 + 32) = 2082;
      sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      sub_10003627C(v63, type metadata accessor for DeviceEvent);
      v71 = sub_1000136BC(v68, v70, v105);

      *(v47 + 34) = v71;
      *(v47 + 42) = 2160;
      *(v47 + 44) = 1752392040;
      *(v47 + 52) = 2081;
      sub_1000D2A70(v64 + *(v65 + 32), v66, &unk_1016AA510, &unk_101393150);
      v72 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
      if ((*(*(v72 - 8) + 48))(v66, 1, v72) == 1)
      {
        sub_10000B3A8(*(v0 + 392), &unk_1016AA510, &unk_101393150);
        v73 = 0xE400000000000000;
        v74 = 1701736302;
      }

      else
      {
        v77 = *(v0 + 416);
        v78 = *(v0 + 392);
        v79 = *(v0 + 400);
        (*(*(v0 + 408) + 16))(v77, v78, v79);
        sub_10003627C(v78, type metadata accessor for DeviceEvent.AttachmentInfo);
        v74 = UUID.uuidString.getter();
        v73 = v80;
        v100(v77, v79);
      }

      LOBYTE(v10) = v104;
      sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
      v81 = sub_1000136BC(v74, v73, v105);

      *(v47 + 54) = v81;
      _os_log_impl(&_mh_execute_header, v103, v101, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v47, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v75 = *(v0 + 544);
      v76 = *(v0 + 536);

      sub_10003627C(v76, type metadata accessor for DeviceEvent);
      sub_10003627C(v75, type metadata accessor for DeviceEvent);
      sub_10003627C(v41, type metadata accessor for DeviceEvent);
      sub_100007BAC((v0 + 136));
    }

    v82 = *(v0 + 376);
    sub_10001F280(v0 + 16, v0 + 176);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v83 = swift_dynamicCast();
    v84 = *(v82 + 56);
    if (v83)
    {
      v85 = *(v0 + 384);
      v86 = *(v0 + 360);
      v84(v86, 0, 1, *(v0 + 368));
      sub_100035B84(v86, v85, type metadata accessor for LocalFindableAccessoryRecord);
      static String.Encoding.utf8.getter();
      v87 = String.init(data:encoding:)();
      if (!v88)
      {
        v87 = Data.hexString.getter();
      }

      v89 = v87;
      v90 = v88;
      sub_10003627C(*(v0 + 384), type metadata accessor for LocalFindableAccessoryRecord);
    }

    else
    {
      v91 = *(v0 + 360);
      v84(v91, 1, 1, *(v0 + 368));
      sub_10000B3A8(v91, &qword_1016A9A30, &unk_1013BD120);
      v89 = 0;
      v90 = 0;
    }

    v92 = *(v0 + 576);
    v93 = *(v0 + 528);
    v94 = *(*(v0 + 328) + 160);
    sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
    sub_1007FF3E4(v92, v93, type metadata accessor for DeviceEvent);
    v95 = sub_1007E9934(v93, v89, v90);
    *(v0 + 624) = v95;
    v96 = swift_task_alloc();
    *(v0 + 632) = v96;
    *v96 = v0;
    v96[1] = sub_1007FA7E4;
    v97 = *(v0 + 584);
    v98 = *(v0 + 336);
    v99 = *(v0 + 344);

    return sub_100B88FD4(v95, v97, 0x10F0F0F0F040200uLL >> (8 * v10), v94, v98, v99);
  }
}

uint64_t sub_1007F94D8()
{
  v1 = *(*v0 + 328);

  return _swift_task_switch(sub_1007F95E8, v1, 0);
}

uint64_t sub_1007F95E8()
{
  v133 = v0;
  v1 = *(v0 + 496);
  if ((*(v0 + 600))(v1, 1, *(v0 + 512)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
    sub_1007FF390();
    v2 = swift_allocError();
    *v3 = 3;
    swift_willThrow();
    *(v0 + 304) = v2;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 640) == 3)
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 96);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v8 = *(v0 + 408);
        v7 = *(v0 + 416);
        v9 = *(v0 + 400);
        v11 = *(v0 + 336);
        v10 = *(v0 + 344);
        v12 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v132[0] = v129;
        *v12 = 141558275;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2081;
        sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(*(*(v10 + 8) + 8) + 32))(v11);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        (*(v8 + 8))(v7, v9);
        sub_100007BAC((v0 + 96));
        v16 = sub_1000136BC(v13, v15, v132);

        *(v12 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "No device events for beacon: %{private,mask.hash}s", v12, 0x16u);
        sub_100007BAC(v129);

LABEL_19:

LABEL_23:

        sub_100007BAC((v0 + 16));

        v43 = *(v0 + 8);

        return v43();
      }

      v42 = (v0 + 96);
    }

    else
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 56);
      swift_errorRetain();
      v5 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v31))
      {
        v32 = *(v0 + 408);
        v33 = *(v0 + 416);
        v34 = *(v0 + 400);
        v35 = *(v0 + 344);
        v124 = *(v0 + 336);
        v36 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v132[0] = v130;
        *v36 = 138543875;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v37;
        *v126 = v37;
        *(v36 + 12) = 2160;
        *(v36 + 14) = 1752392040;
        *(v36 + 22) = 2081;
        sub_1000035D0((v0 + 56), *(v0 + 80));
        (*(*(*(v35 + 8) + 8) + 32))(v124);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v32 + 8))(v33, v34);
        sub_100007BAC((v0 + 56));
        v41 = sub_1000136BC(v38, v40, v132);

        *(v36 + 24) = v41;
        _os_log_impl(&_mh_execute_header, v5, v31, "Failed to send the attach event: %{public}@ for beacon: %{private,mask.hash}s", v36, 0x20u);
        sub_10000B3A8(v126, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v130);

        goto LABEL_19;
      }

      v42 = (v0 + 56);
    }

    sub_100007BAC(v42);
    goto LABEL_23;
  }

  sub_100035B84(v1, *(v0 + 560), type metadata accessor for DeviceEvent);
  v17 = *(v0 + 576);
  sub_100035B84(*(v0 + 560), v17, type metadata accessor for DeviceEvent);
  v18 = *(v17 + 9);
  if (v18 == 5)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    v21 = *(v0 + 464);
    v22 = *(v0 + 472);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(*(v0 + 312));

    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v20);
    Date.timeIntervalSince(_:)();
    v24 = v23;
    v25 = *(v22 + 8);
    v25(v20, v21);
    v25(v19, v21);
    if (v24 > 0.0)
    {
      v27 = *(v0 + 320);
      v26 = *(v0 + 328);
      v28 = *(*(v0 + 424) + 20);
      swift_beginAccess();
      if (*(*(v26 + 152) + 16))
      {

        sub_1000210EC(v27 + v28);
        if (v29)
        {

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v45 = *(v0 + 448);
      v46 = *(v0 + 456);
      v47 = *(v0 + 432);
      v18 = *(v0 + 440);
      v127 = v27;
      v48 = v28;
      v49 = *(v0 + 320);
      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v46, 1, 1, v50);
      v51 = swift_allocObject();
      swift_weakInit();
      sub_1007FF3E4(v49, v45, type metadata accessor for BeaconIdentifier);
      sub_10001F280(v0 + 16, v0 + 216);
      v52 = (*(v47 + 80) + 48) & ~*(v47 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = v24;
      *(v53 + 40) = v51;
      sub_100035B84(v45, v53 + v52, type metadata accessor for BeaconIdentifier);
      sub_10000A748((v0 + 216), v53 + ((v18 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
      v54 = sub_100A838D4(0, 0, v46, &unk_1013BD198, v53);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132[0] = *(v26 + 152);
      *(v26 + 152) = 0x8000000000000000;
      sub_100FFF724(v54, v127 + v48, isUniquelyReferenced_nonNull_native);
      *(v26 + 152) = v132[0];
      swift_endAccess();
      LOBYTE(v18) = 5;
    }
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 576);
  v57 = *(v0 + 552);
  v58 = *(v0 + 544);
  v59 = *(v0 + 536);
  v60 = type metadata accessor for Logger();
  sub_1000076D4(v60, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 136);
  sub_1007FF3E4(v56, v57, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v56, v58, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v56, v59, type metadata accessor for DeviceEvent);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 552);
  if (v63)
  {
    v125 = v62;
    v128 = v61;
    v131 = v18;
    v65 = *(v0 + 408);
    v66 = *(v0 + 416);
    v67 = *(v0 + 400);
    v69 = *(v0 + 336);
    v68 = *(v0 + 344);
    v70 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v70 = 141559299;
    *(v70 + 4) = 1752392040;
    *(v70 + 12) = 2081;
    sub_1000035D0((v0 + 136), *(v0 + 160));
    (*(*(*(v68 + 8) + 8) + 32))(v69);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v123 = *(v65 + 8);
    v123(v66, v67);
    sub_100007BAC((v0 + 136));
    v74 = sub_1000136BC(v71, v73, v132);

    *(v70 + 14) = v74;
    *(v70 + 22) = 2082;
    v75 = 0xE800000000000000;
    v76 = 0x6E776F6E6B6E752ELL;
    v77 = *(v64 + 9);
    v78 = 0xEC00000064657261;
    v79 = 0x657070617369642ELL;
    if (v77 != 6)
    {
      v79 = 0x726961702ELL;
      v78 = 0xE500000000000000;
    }

    v80 = 0xE700000000000000;
    v81 = 0x6863617465642ELL;
    if (v77 != 4)
    {
      v81 = 0x657463657465642ELL;
      v80 = 0xEF79627261654E64;
    }

    if (*(v64 + 9) <= 5u)
    {
      v79 = v81;
      v78 = v80;
    }

    v82 = 0xEB00000000746365;
    v83 = 0x6E6E6F637369642ELL;
    if (v77 != 2)
    {
      v83 = 0x6863617474612ELL;
      v82 = 0xE700000000000000;
    }

    if (*(v64 + 9))
    {
      v76 = 0x7463656E6E6F632ELL;
      v75 = 0xE800000000000000;
    }

    if (*(v64 + 9) > 1u)
    {
      v76 = v83;
      v75 = v82;
    }

    if (*(v64 + 9) <= 3u)
    {
      v84 = v76;
    }

    else
    {
      v84 = v79;
    }

    if (*(v64 + 9) <= 3u)
    {
      v85 = v75;
    }

    else
    {
      v85 = v78;
    }

    v86 = *(v0 + 544);
    v87 = *(v0 + 536);
    v88 = *(v0 + 512);
    v89 = *(v0 + 392);
    sub_10003627C(*(v0 + 552), type metadata accessor for DeviceEvent);
    v90 = sub_1000136BC(v84, v85, v132);

    *(v70 + 24) = v90;
    *(v70 + 32) = 2082;
    sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    sub_10003627C(v86, type metadata accessor for DeviceEvent);
    v94 = sub_1000136BC(v91, v93, v132);

    *(v70 + 34) = v94;
    *(v70 + 42) = 2160;
    *(v70 + 44) = 1752392040;
    *(v70 + 52) = 2081;
    sub_1000D2A70(v87 + *(v88 + 32), v89, &unk_1016AA510, &unk_101393150);
    v95 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v95 - 8) + 48))(v89, 1, v95) == 1)
    {
      sub_10000B3A8(*(v0 + 392), &unk_1016AA510, &unk_101393150);
      v96 = 0xE400000000000000;
      v97 = 1701736302;
    }

    else
    {
      v100 = *(v0 + 416);
      v101 = *(v0 + 392);
      v102 = *(v0 + 400);
      (*(*(v0 + 408) + 16))(v100, v101, v102);
      sub_10003627C(v101, type metadata accessor for DeviceEvent.AttachmentInfo);
      v97 = UUID.uuidString.getter();
      v96 = v103;
      v123(v100, v102);
    }

    LOBYTE(v18) = v131;
    sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
    v104 = sub_1000136BC(v97, v96, v132);

    *(v70 + 54) = v104;
    _os_log_impl(&_mh_execute_header, v128, v125, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v70, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v98 = *(v0 + 544);
    v99 = *(v0 + 536);

    sub_10003627C(v99, type metadata accessor for DeviceEvent);
    sub_10003627C(v98, type metadata accessor for DeviceEvent);
    sub_10003627C(v64, type metadata accessor for DeviceEvent);
    sub_100007BAC((v0 + 136));
  }

  v105 = *(v0 + 376);
  sub_10001F280(v0 + 16, v0 + 176);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v106 = swift_dynamicCast();
  v107 = *(v105 + 56);
  if (v106)
  {
    v108 = *(v0 + 384);
    v109 = *(v0 + 360);
    v107(v109, 0, 1, *(v0 + 368));
    sub_100035B84(v109, v108, type metadata accessor for LocalFindableAccessoryRecord);
    static String.Encoding.utf8.getter();
    v110 = String.init(data:encoding:)();
    if (!v111)
    {
      v110 = Data.hexString.getter();
    }

    v112 = v110;
    v113 = v111;
    sub_10003627C(*(v0 + 384), type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v114 = *(v0 + 360);
    v107(v114, 1, 1, *(v0 + 368));
    sub_10000B3A8(v114, &qword_1016A9A30, &unk_1013BD120);
    v112 = 0;
    v113 = 0;
  }

  v115 = *(v0 + 576);
  v116 = *(v0 + 528);
  v117 = *(*(v0 + 328) + 160);
  sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
  sub_1007FF3E4(v115, v116, type metadata accessor for DeviceEvent);
  v118 = sub_1007E9934(v116, v112, v113);
  *(v0 + 624) = v118;
  v119 = swift_task_alloc();
  *(v0 + 632) = v119;
  *v119 = v0;
  v119[1] = sub_1007FA7E4;
  v120 = *(v0 + 584);
  v121 = *(v0 + 336);
  v122 = *(v0 + 344);

  return sub_100B88FD4(v118, v120, 0x10F0F0F0F040200uLL >> (8 * v18), v117, v121, v122);
}

uint64_t sub_1007FA7E4()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 328);

  return _swift_task_switch(sub_1007FA90C, v2, 0);
}

uint64_t sub_1007FA90C()
{
  sub_10003627C(v0[72], type metadata accessor for DeviceEvent);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007FAA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v3[21] = type metadata accessor for BeaconIdentifier(0);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v3[25] = *(v6 + 64);
  v3[26] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for BeaconEstimatedLocation(0);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[31] = swift_task_alloc();
  v8 = type metadata accessor for DeviceEvent.Location(0);
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[35] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v3[36] = swift_task_alloc();
  v9 = type metadata accessor for DeviceEvent(0);
  v3[37] = v9;
  v3[38] = *(v9 - 8);
  v3[39] = swift_task_alloc();
  v3[5] = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3[6] = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v10 = sub_1000280DC(v3 + 2);
  sub_1007FF3E4(a2, v10, type metadata accessor for LocalFindableAccessoryRecord);
  v11 = swift_task_alloc();
  v3[40] = v11;
  *v11 = v3;
  v11[1] = sub_1007FAE0C;

  return daemon.getter();
}

uint64_t sub_1007FAE0C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[41] = a1;

  v3 = swift_task_alloc();
  v2[42] = v3;
  v4 = type metadata accessor for Daemon();
  v2[43] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[44] = v6;
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1007FAFEC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007FAFEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);
    v6 = sub_1007FB368;
  }

  else
  {
    v7 = *(v4 + 160);
    *(v4 + 368) = a1;

    v6 = sub_1007FB12C;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007FB12C()
{
  (*(v0[24] + 56))(v0[35], 1, 1, v0[23]);
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1007FB1EC;
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[19];

  return sub_1010CE7E4(v2, v4, 8, v3);
}

uint64_t sub_1007FB1EC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  *(*v1 + 384) = v0;

  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1007FBA64;
  }

  else
  {
    v5 = sub_1007FB6B0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007FB368()
{
  v19 = v0;

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 138543875;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10003627C(v6, type metadata accessor for BeaconIdentifier);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[22];

    sub_10003627C(v15, type metadata accessor for BeaconIdentifier);
  }

  sub_100007BAC(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007FB6B0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v2, 1, v1) == 1)
  {
    v3 = &unk_1016AA500;
    v4 = &unk_1013B3600;
LABEL_5:
    sub_10000B3A8(v2, v3, v4);
    sub_100007BAC((v0 + 16));

    v11 = *(v0 + 8);

    return v11();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  sub_100035B84(v2, v5, type metadata accessor for DeviceEvent);
  sub_1000D2A70(v5 + *(v1 + 28), v8, &qword_101699E50, &qword_1013D97C0);
  v9 = (*(v7 + 48))(v8, 1, v6);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    v2 = *(v0 + 248);
    sub_10003627C(*(v0 + 312), type metadata accessor for DeviceEvent);
    v3 = &qword_101699E50;
    v4 = &qword_1013D97C0;
    goto LABEL_5;
  }

  sub_100035B84(*(v0 + 248), *(v0 + 272), type metadata accessor for DeviceEvent.Location);
  v13 = 0x10F0F0F0F040200uLL >> (8 * *(v10 + 9));
  *(v0 + 492) = v13;
  v14 = *(v0 + 272);
  v15 = *(v0 + 192);
  v31 = *(v0 + 184);
  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  *(v0 + 480) = *(*(v0 + 256) + 28);
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v21 = sub_1010CBDEC(v13);
  v22 = objc_allocWithZone(SPBeaconLocation);
  v23 = v21;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = [v22 initWithTimestamp:isa latitude:v23 longitude:v18 horizontalAccuracy:v19 source:v20];

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v25 = *(v15 + 80);
  *(v0 + 484) = v25;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = *(v16 + 20);
  *(v0 + 488) = v28;
  v29 = *(v15 + 16);
  *(v0 + 400) = v29;
  *(v0 + 408) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v27 + v26, v17 + v28, v31);
  *(v0 + 136) = v27;
  AsyncStreamProvider.yield(value:transaction:)();

  v30 = swift_task_alloc();
  *(v0 + 416) = v30;
  *v30 = v0;
  v30[1] = sub_1007FBDA4;

  return daemon.getter();
}

uint64_t sub_1007FBA64()
{
  v19 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_1007FF3E4(v2, v1, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 138543875;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10003627C(v6, type metadata accessor for BeaconIdentifier);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[22];

    sub_10003627C(v15, type metadata accessor for BeaconIdentifier);
  }

  sub_100007BAC(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007FBDA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 424) = a1;

  v5 = swift_task_alloc();
  *(v3 + 432) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1007FBF58;
  v8 = *(v2 + 352);
  v9 = *(v2 + 344);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007FBF58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);
    v6 = sub_1007FC734;
  }

  else
  {

    *(v4 + 448) = a1;
    v6 = sub_1007FC094;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007FC094()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 484);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  (*(v0 + 400))(v3, *(v0 + 152) + *(v0 + 488), v4);
  v6 = (v2 + 24) & ~v2;
  v7 = swift_allocObject();
  *(v0 + 456) = v7;
  *(v7 + 16) = v1;
  (*(v5 + 32))(v7 + v6, v3, v4);

  v8 = swift_task_alloc();
  *(v0 + 464) = v8;
  v9 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v8 = v0;
  v8[1] = sub_1007FC208;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC94, v7, v9);
}

uint64_t sub_1007FC208()
{
  v1 = *(*v0 + 448);

  return _swift_task_switch(sub_1007FC334, v1, 0);
}

uint64_t sub_1007FC334()
{
  v1 = v0[20];

  v0[59] = v0[18];

  return _swift_task_switch(sub_1007FC3A8, v1, 0);
}

uint64_t sub_1007FC3A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1012BAB18(*(v0 + 472), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v8 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 216), &unk_101696940, &unk_10138B210);
    v9 = *(v8 + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = swift_allocObject();
    sub_10000A748((v0 + 56), v10 + 16);
    *(v10 + 56) = v9;
    *(v10 + 64) = v4;
    *(v10 + 72) = v5;

    v11 = v4;
    static Transaction.asyncTask(name:block:)();

LABEL_5:
    sub_10003627C(v7, type metadata accessor for DeviceEvent.Location);
    v19 = v6;
    goto LABEL_7;
  }

  sub_100035B84(*(v0 + 216), *(v0 + 240), type metadata accessor for BeaconEstimatedLocation);
  v12 = static Date.> infix(_:_:)();
  v13 = *(v0 + 392);
  if (v12)
  {
    v14 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v15 = *(v0 + 240);
    v16 = *(*(v0 + 160) + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 96);
    v17 = swift_allocObject();
    sub_10000A748((v0 + 96), v17 + 16);
    *(v17 + 56) = v16;
    *(v17 + 64) = v13;
    *(v17 + 72) = v14;
    v18 = v13;

    static Transaction.asyncTask(name:block:)();

    sub_10003627C(v15, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_5;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 272);
  v22 = *(v0 + 240);

  sub_10003627C(v22, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v21, type metadata accessor for DeviceEvent.Location);
  v19 = v20;
LABEL_7:
  sub_10003627C(v19, type metadata accessor for DeviceEvent);
  sub_100007BAC((v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1007FC734()
{
  v22 = v0;
  v1 = v0[49];
  v2 = v0[39];
  v3 = v0[34];

  sub_10003627C(v3, type metadata accessor for DeviceEvent.Location);
  sub_10003627C(v2, type metadata accessor for DeviceEvent);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = v0[19];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B368);
  sub_1007FF3E4(v5, v4, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10003627C(v9, type metadata accessor for BeaconIdentifier);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v10 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v18 = v0[22];

    sub_10003627C(v18, type metadata accessor for BeaconIdentifier);
  }

  sub_100007BAC(v0 + 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1007FCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a1;
  v5[20] = a3;
  v5[21] = type metadata accessor for BeaconIdentifier(0);
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[23] = v9;
  v10 = *(v9 - 8);
  v5[24] = v10;
  v5[25] = *(v10 + 64);
  v5[26] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v5[27] = swift_task_alloc();
  v11 = type metadata accessor for BeaconEstimatedLocation(0);
  v5[28] = v11;
  v5[29] = *(v11 - 8);
  v5[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v5[31] = swift_task_alloc();
  v12 = type metadata accessor for DeviceEvent.Location(0);
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5[35] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5[36] = swift_task_alloc();
  v13 = type metadata accessor for DeviceEvent(0);
  v5[37] = v13;
  v5[38] = *(v13 - 8);
  v5[39] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v14 = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))(v14, a2, a4);
  v15 = swift_task_alloc();
  v5[40] = v15;
  *v15 = v5;
  v15[1] = sub_1007FCE30;

  return daemon.getter();
}

uint64_t sub_1007FCE30(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[41] = a1;

  v3 = swift_task_alloc();
  v2[42] = v3;
  v4 = type metadata accessor for Daemon();
  v2[43] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[44] = v6;
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1007FD010;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007FD010(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);
    v6 = sub_1007FFC8C;
  }

  else
  {
    v7 = *(v4 + 160);
    *(v4 + 368) = a1;

    v6 = sub_1007FD150;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007FD150()
{
  (*(v0[24] + 56))(v0[35], 1, 1, v0[23]);
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1007FD210;
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[19];

  return sub_1010CE7E4(v2, v4, 8, v3);
}

uint64_t sub_1007FD210()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  *(*v1 + 384) = v0;

  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1007FFC88;
  }

  else
  {
    v5 = sub_1007FD38C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007FD38C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v2, 1, v1) == 1)
  {
    v3 = &unk_1016AA500;
    v4 = &unk_1013B3600;
LABEL_5:
    sub_10000B3A8(v2, v3, v4);
    sub_100007BAC((v0 + 16));

    v11 = *(v0 + 8);

    return v11();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  sub_100035B84(v2, v5, type metadata accessor for DeviceEvent);
  sub_1000D2A70(v5 + *(v1 + 28), v8, &qword_101699E50, &qword_1013D97C0);
  v9 = (*(v7 + 48))(v8, 1, v6);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    v2 = *(v0 + 248);
    sub_10003627C(*(v0 + 312), type metadata accessor for DeviceEvent);
    v3 = &qword_101699E50;
    v4 = &qword_1013D97C0;
    goto LABEL_5;
  }

  sub_100035B84(*(v0 + 248), *(v0 + 272), type metadata accessor for DeviceEvent.Location);
  v13 = 0x10F0F0F0F040200uLL >> (8 * *(v10 + 9));
  *(v0 + 492) = v13;
  v14 = *(v0 + 272);
  v15 = *(v0 + 192);
  v31 = *(v0 + 184);
  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  *(v0 + 480) = *(*(v0 + 256) + 28);
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v21 = sub_1010CBDEC(v13);
  v22 = objc_allocWithZone(SPBeaconLocation);
  v23 = v21;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = [v22 initWithTimestamp:isa latitude:v23 longitude:v18 horizontalAccuracy:v19 source:v20];

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v25 = *(v15 + 80);
  *(v0 + 484) = v25;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = *(v16 + 20);
  *(v0 + 488) = v28;
  v29 = *(v15 + 16);
  *(v0 + 400) = v29;
  *(v0 + 408) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v27 + v26, v17 + v28, v31);
  *(v0 + 136) = v27;
  AsyncStreamProvider.yield(value:transaction:)();

  v30 = swift_task_alloc();
  *(v0 + 416) = v30;
  *v30 = v0;
  v30[1] = sub_1007FD740;

  return daemon.getter();
}

uint64_t sub_1007FD740(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 424) = a1;

  v5 = swift_task_alloc();
  *(v3 + 432) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1007FD8F4;
  v8 = *(v2 + 352);
  v9 = *(v2 + 344);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007FD8F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);
    v6 = sub_1007FFCA4;
  }

  else
  {

    *(v4 + 448) = a1;
    v6 = sub_1007FDA30;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007FDA30()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 484);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  (*(v0 + 400))(v3, *(v0 + 152) + *(v0 + 488), v4);
  v6 = (v2 + 24) & ~v2;
  v7 = swift_allocObject();
  *(v0 + 456) = v7;
  *(v7 + 16) = v1;
  (*(v5 + 32))(v7 + v6, v3, v4);

  v8 = swift_task_alloc();
  *(v0 + 464) = v8;
  v9 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v8 = v0;
  v8[1] = sub_1007FDBA4;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC94, v7, v9);
}

uint64_t sub_1007FDBA4()
{
  v1 = *(*v0 + 448);

  return _swift_task_switch(sub_1007FDCD0, v1, 0);
}

uint64_t sub_1007FDCD0()
{
  v1 = v0[20];

  v0[59] = v0[18];

  return _swift_task_switch(sub_1007FDD44, v1, 0);
}

uint64_t sub_1007FDD44()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1012BAB18(*(v0 + 472), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v8 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 216), &unk_101696940, &unk_10138B210);
    v9 = *(v8 + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = swift_allocObject();
    sub_10000A748((v0 + 56), v10 + 16);
    *(v10 + 56) = v9;
    *(v10 + 64) = v4;
    *(v10 + 72) = v5;

    v11 = v4;
    static Transaction.asyncTask(name:block:)();

LABEL_5:
    sub_10003627C(v7, type metadata accessor for DeviceEvent.Location);
    v19 = v6;
    goto LABEL_7;
  }

  sub_100035B84(*(v0 + 216), *(v0 + 240), type metadata accessor for BeaconEstimatedLocation);
  v12 = static Date.> infix(_:_:)();
  v13 = *(v0 + 392);
  if (v12)
  {
    v14 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v15 = *(v0 + 240);
    v16 = *(*(v0 + 160) + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 96);
    v17 = swift_allocObject();
    sub_10000A748((v0 + 96), v17 + 16);
    *(v17 + 56) = v16;
    *(v17 + 64) = v13;
    *(v17 + 72) = v14;
    v18 = v13;

    static Transaction.asyncTask(name:block:)();

    sub_10003627C(v15, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_5;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 272);
  v22 = *(v0 + 240);

  sub_10003627C(v22, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v21, type metadata accessor for DeviceEvent.Location);
  v19 = v20;
LABEL_7:
  sub_10003627C(v19, type metadata accessor for DeviceEvent);
  sub_100007BAC((v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1007FE0D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 268) = a3;
  *(v4 + 136) = a1;
  *(v4 + 144) = a4;
  v6 = type metadata accessor for UUID();
  *(v4 + 152) = v6;
  v7 = *(v6 - 8);
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 + 64);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v8 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v9 = swift_task_alloc();
  *(v4 + 192) = v9;
  *(v4 + 40) = v8;
  *(v4 + 48) = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F748);
  v10 = sub_1000280DC((v4 + 16));
  sub_1007FF3E4(a2, v10, type metadata accessor for LocalFindableAccessoryRecord);
  sub_1007FF3E4(v10, v9, type metadata accessor for LocalFindableAccessoryRecord);

  return _swift_task_switch(sub_1007FE268, 0, 0);
}

uint64_t sub_1007FE268()
{
  v55 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 200) = *(v3 + 72);
  v4 = *(v3 + 80);
  *(v0 + 264) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(v3 + 16);
  *(v0 + 208) = v7;
  *(v0 + 216) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v1, v2);
  sub_10003627C(v1, type metadata accessor for LocalFindableAccessoryRecord);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 136);
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 56);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    sub_100007BAC((v0 + 56));
    goto LABEL_22;
  }

  v52 = v12;
  v13 = *(v0 + 184);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v49 = *(v0 + 136);
  v16 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  *v16 = 141558787;
  *(v16 + 4) = 1752392040;
  *(v16 + 12) = 2081;
  v17 = sub_1000035D0((v0 + 56), *(v0 + 80));
  v7(v13, v17, v15);
  sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v14 + 8))(v13, v15);
  sub_100007BAC((v0 + 56));
  v21 = sub_1000136BC(v18, v20, &v54);

  *(v16 + 14) = v21;
  *(v16 + 22) = 2082;
  v22 = [v49 source];
  if (v22 > 2)
  {
    if (v22 <= 4)
    {
      v23 = 0xE700000000000000;
      if (v22 == 3)
      {
        v24 = 1953784110;
      }

      else
      {
        v24 = 1952801838;
      }

      v25 = v24 | 0x68636100000000;
      goto LABEL_21;
    }

    if (v22 == 5)
    {
      v23 = 0xE500000000000000;
      v25 = 0x726961702ELL;
      goto LABEL_21;
    }

    if (v22 == 6)
    {
      v23 = 0xEF79627261654E64;
      v25 = 0x657463657465642ELL;
      goto LABEL_21;
    }

LABEL_16:
    v23 = 0xE800000000000000;
    v25 = 0x6E776F6E6B6E752ELL;
    goto LABEL_21;
  }

  if (!v22)
  {
    goto LABEL_16;
  }

  if (v22 == 1)
  {
    v23 = 0xE800000000000000;
    v25 = 0x7463656E6E6F632ELL;
    goto LABEL_21;
  }

  if (v22 != 2)
  {
    goto LABEL_16;
  }

  v23 = 0xEB00000000746365;
  v25 = 0x6E6E6F637369642ELL;
LABEL_21:
  v26 = sub_1000136BC(v25, v23, &v54);

  *(v16 + 24) = v26;
  *(v16 + 32) = 2048;
  *(v16 + 34) = 1;

  _os_log_impl(&_mh_execute_header, v11, v52, "Update device event for beacon: %{private,mask.hash}s, source: %{public}s,\nclientBeaconIdentifiers %ld].", v16, 0x2Au);
  swift_arrayDestroy();

LABEL_22:
  v27 = sub_10000954C(v6);
  *(v0 + 224) = v27;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = *(v27 + 32);
  *(v0 + 269) = v28;
  v29 = -1;
  v30 = -1 << v28;
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & *(v27 + 56);
  if (v31)
  {
    v32 = 0;
    v33 = *(v0 + 224);
LABEL_29:
    *(v0 + 232) = v31;
    *(v0 + 240) = v32;
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = *(v0 + 160);
    v53 = *(v0 + 268);
    v39 = *(v0 + 152);
    v50 = *(v0 + 144);
    v51 = *(v0 + 136);
    v40 = (*(v0 + 264) + 24) & ~*(v0 + 264);
    v41 = (*(v0 + 168) + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 208))(v36, *(v33 + 48) + *(v0 + 200) * (__clz(__rbit64(v31)) | (v32 << 6)), v39);
    v42 = *(v38 + 32);
    v42(v37, v36, v39);
    sub_10001F280(v0 + 16, v0 + 96);
    v43 = swift_allocObject();
    *(v0 + 248) = v43;
    *(v43 + 16) = v50;
    v42(v43 + v40, v37, v39);
    sub_10000A748((v0 + 96), v43 + v41);
    v44 = v43 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v44 = v51;
    *(v44 + 8) = v53;
    v45 = v51;

    v46 = swift_task_alloc();
    *(v0 + 256) = v46;
    *v46 = v0;
    v46[1] = sub_1007FE930;

    return unsafeBlocking<A>(_:)(v46, sub_1007FF798, v43, &type metadata for () + 1);
  }

  else
  {
    v34 = 0;
    v35 = ((63 - v30) >> 6) - 1;
    v33 = *(v0 + 224);
    while (v35 != v34)
    {
      v32 = v34 + 1;
      v31 = *(v33 + 8 * v34++ + 64);
      if (v31)
      {
        goto LABEL_29;
      }
    }

    sub_100007BAC((v0 + 16));

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1007FE930()
{

  return _swift_task_switch(sub_1007FEA48, 0, 0);
}

uint64_t sub_1007FEA48(void *a1, uint64_t (*a2)(), uint64_t a3, void *a4)
{
  v5 = *(v4 + 240);
  v6 = (*(v4 + 232) - 1) & *(v4 + 232);
  if (v6)
  {
    a1 = *(v4 + 224);
LABEL_7:
    *(v4 + 232) = v6;
    *(v4 + 240) = v5;
    v8 = *(v4 + 176);
    v9 = *(v4 + 184);
    v10 = *(v4 + 160);
    v22 = *(v4 + 268);
    v11 = *(v4 + 152);
    v20 = *(v4 + 144);
    v21 = *(v4 + 136);
    v12 = (*(v4 + 264) + 24) & ~*(v4 + 264);
    v13 = (*(v4 + 168) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v4 + 208))(v8, a1[6] + *(v4 + 200) * (__clz(__rbit64(v6)) | (v5 << 6)), v11, a4);
    v14 = *(v10 + 32);
    v14(v9, v8, v11);
    sub_10001F280(v4 + 16, v4 + 96);
    v15 = swift_allocObject();
    *(v4 + 248) = v15;
    *(v15 + 16) = v20;
    v14(v15 + v12, v9, v11);
    sub_10000A748((v4 + 96), v15 + v13);
    v16 = v15 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v16 = v21;
    *(v16 + 8) = v22;
    v17 = v21;

    a1 = swift_task_alloc();
    *(v4 + 256) = a1;
    *a1 = v4;
    a1[1] = sub_1007FE930;
    a2 = sub_1007FF798;
    a4 = &type metadata for () + 1;
    a3 = v15;

    return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
      }

      a1 = *(v4 + 224);
      if (v7 >= (((1 << *(v4 + 269)) + 63) >> 6))
      {
        break;
      }

      v6 = a1[v7 + 7];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    sub_100007BAC((v4 + 16));

    v18 = *(v4 + 8);

    return v18();
  }
}

uint64_t sub_1007FECD8()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1007F0870(v0 + 16, v2, v3, v4);
}

uint64_t sub_1007FEDB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1007FEE58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1007F28E4(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_1007FEF1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1007F2ABC(v2, v3, v6, v4, v5);
}

uint64_t sub_1007FEFFC(void *a1)
{
  v3 = *(v1 + 24);
  sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  return sub_101106DA0(a1, v3, a1[5]) & 1;
}

BOOL sub_1007FF0A0@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1007F4F30(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_1007FF158()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100E73BB0(v2, v3);
}

uint64_t sub_1007FF1CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1007E5BCC(a1, v4, v5, v6);
}

uint64_t sub_1007FF280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1007E8110(a1, v4, v5, v7, v6);
}

uint64_t sub_1007FF348()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 73);
}

unint64_t sub_1007FF390()
{
  result = qword_1016AA568;
  if (!qword_1016AA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA568);
  }

  return result;
}

uint64_t sub_1007FF3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007FF44C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BeaconIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + 5);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1007E9364(v10, a1, v8, v9, v11, v1 + v6, v1 + v7);
}

uint64_t sub_1007FF584()
{
  v1 = (type metadata accessor for BeaconIdentifier(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  sub_100007BAC((v0 + v3));

  return _swift_deallocObject(v0, v3 + 40);
}

uint64_t sub_1007FF6A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v5 + 9);
}

uint64_t sub_1007FF7B0(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = v1 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return a1(v5, v1 + v3, v1 + v4, v7, v8);
}

uint64_t sub_1007FF8AC(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1007D95C4(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_1007FF9C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1007D9BAC(v2, v0 + 24);
}

uint64_t sub_1007FFA60()
{

  return _swift_deallocObject(v0, 113);
}

uint64_t sub_1007FFAC8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1007D710C(v2, v0 + 24);
}

uint64_t sub_1007FFB88()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1007D6ADC(v0);
}

unint64_t sub_1007FFC2C()
{
  result = qword_1016AA5D8;
  if (!qword_1016AA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA5D8);
  }

  return result;
}

uint64_t sub_1007FFCA8(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = v10;
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v18 = &v41 - v17;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v42 = v16;
  v43 = v11;
  v44 = v15;
  v45 = v6;
  v46 = v7;
  v47 = v4;
  v48 = v3;
  type metadata accessor for CryptoKeys(0);
  DateInterval.start.getter();
  LODWORD(v41) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
LABEL_5:
    swift_once();
  }

  v19 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  v21 = v51;
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(v20 + 56) = &type metadata for String;
  v25 = sub_100008C00();
  *(v20 + 64) = v25;
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_1008015A8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v44;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v25;
  *(v20 + 72) = v27;
  *(v20 + 80) = v28;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v19, "CryptoKeyStreamInspector scanning key batch for identifier: %@ firstDate: %@", 76, 2, v20);

  v29 = v52;
  v41 = *(v52 + 24);
  v30 = v21;
  v31 = v43;
  sub_100801664(v30, v43, type metadata accessor for SharedBeaconRecord);
  v32 = v42;
  (*(v13 + 16))(v42, v18, v26);
  v33 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v34 = (v50 + *(v13 + 80) + v33) & ~*(v13 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  sub_100591C20(v31, v35 + v33);
  (*(v13 + 32))(v35 + v34, v32, v26);
  aBlock[4] = sub_1008014D8;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101634F70;
  v36 = _Block_copy(aBlock);

  v37 = v53;
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_1008015A8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v38 = v45;
  v39 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v47 + 8))(v38, v39);
  (*(v54 + 8))(v37, v46);
  (*(v13 + 8))(v18, v26);
}

uint64_t sub_1008002E0(char *a1, uint64_t a2, uint64_t a3)
{
  v57 = type metadata accessor for CryptoKeyStreamInspector.Event(0);
  __chkstk_darwin(v57);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = v8 - 8;
  v56 = *(v8 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v11 - 8);
  v53 = &v43 - v12;
  v58 = sub_1000BC4D4(&qword_1016AA780, &qword_1013BD3D0);
  v52 = *(v58 - 8);
  __chkstk_darwin(v58);
  v14 = (&v43 - v13);
  v15 = sub_1000BC4D4(&qword_1016AA788, &qword_1013BD3D8);
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v54 = &v43 - v16;
  v17 = *(v9 + 28);
  swift_beginAccess();
  if (!*(*(a1 + 4) + 16))
  {
    goto LABEL_5;
  }

  sub_1000210EC(a2 + v17);
  if ((v18 & 1) == 0)
  {

LABEL_5:
    v19 = sub_1000BC4D4(&qword_1016AA790, &qword_1013BD3E0);
    v49 = v17;
    v47 = v19;
    swift_allocObject();
    v20 = PassthroughSubject.init()();
    v48 = v15;
    v21 = v20;
    swift_beginAccess();
    v46 = v21;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a1 + 4);
    *(a1 + 4) = 0x8000000000000000;
    sub_101000064(v21, a2 + v17, isUniquelyReferenced_nonNull_native);
    *(a1 + 4) = v59;
    swift_endAccess();
    v60 = v21;
    v23 = sub_1000BC4D4(&qword_1016AA798, &qword_101400BB0);
    v50 = v7;
    v51 = a3;
    v24 = *(v23 + 48);
    v25 = *(a1 + 3);
    v26 = v14;
    *v14 = v25;
    v27 = OBJC_IVAR____TtC12searchpartyd24CryptoKeyStreamInspector_delay;
    v28 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    (*(*(v28 - 8) + 16))(v14 + v24, &a1[v27], v28);
    v29 = v52;
    (*(v52 + 104))(v26, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v58);
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v31 = v53;
    (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
    sub_1000BC488();
    v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v10;
    sub_1000041A4(&qword_1016AA7A0, &qword_1016AA790, &qword_1013BD3E0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_1008015A8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v32 = v25;
    v33 = v54;
    v7 = v50;
    Publisher.collect<A>(_:options:)();
    sub_10000B3A8(v31, &unk_1016B0FE0, &unk_101391980);
    (*(v29 + 8))(v26, v58);

    v34 = v44;
    sub_100801664(a2, v44, type metadata accessor for SharedBeaconRecord);
    v35 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    sub_100591C20(v34, v36 + v35);
    sub_1000041A4(&qword_1016AA7A8, &qword_1016AA788, &qword_1013BD3D8, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);

    v37 = v48;
    v38 = Publisher<>.sink(receiveValue:)();

    (*(v55 + 8))(v33, v37);
    swift_beginAccess();

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a1 + 5);
    *(a1 + 5) = 0x8000000000000000;
    sub_101000050(v38, a2 + v49, v39);
    *(a1 + 5) = v59;
    swift_endAccess();
    a3 = v51;

    goto LABEL_6;
  }

  swift_retain_n();

LABEL_6:
  sub_100801664(a2, v7, type metadata accessor for SharedBeaconRecord);
  v40 = *(v57 + 20);
  v41 = type metadata accessor for Date();
  (*(*(v41 - 8) + 16))(&v7[v40], a3, v41);
  PassthroughSubject.send(_:)();

  return sub_1008016CC(v7, type metadata accessor for CryptoKeyStreamInspector.Event);
}

uint64_t sub_100800A08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v44 = a2;
  v4 = type metadata accessor for UUID();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CryptoKeyStreamInspector.Event(0);
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v12 - 8);
  v40 = &v34 - v13;
  v45 = type metadata accessor for Date();
  v14 = *(v45 - 8);
  v15 = __chkstk_darwin(v45);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v42 = &v34 - v18;
  v19 = *a1;
  v20 = *(*a1 + 16);
  v21 = _swiftEmptyArrayStorage;
  v41 = v9;
  v39 = v19;
  if (v20)
  {
    v34 = v4;
    v35 = v6;
    v36 = v8;
    v49 = _swiftEmptyArrayStorage;
    sub_10112524C(0, v20, 0);
    v21 = v49;
    v22 = v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v9 + 72);
    v46 = v14 + 32;
    v47 = v23;
    v24 = v45;
    do
    {
      sub_100801664(v22, v11, type metadata accessor for CryptoKeyStreamInspector.Event);
      (*(v14 + 16))(v17, &v11[*(v48 + 20)], v24);
      sub_1008016CC(v11, type metadata accessor for CryptoKeyStreamInspector.Event);
      v49 = v21;
      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        sub_10112524C((v25 > 1), v26 + 1, 1);
        v21 = v49;
      }

      v21[2] = v26 + 1;
      (*(v14 + 32))(v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v26, v17, v24);
      v22 += v47;
      --v20;
    }

    while (v20);
    v27 = v43;
    v6 = v35;
    v8 = v36;
    v4 = v34;
  }

  else
  {
    v27 = v43;
  }

  v28 = v40;
  sub_10030BB60(v21, v40);

  v29 = v45;
  v30 = (*(v14 + 48))(v28, 1, v45);
  v31 = v41;
  v32 = v42;
  if (v30 == 1)
  {
    return sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
  }

  result = (*(v14 + 32))(v42, v28, v29);
  if (*(v39 + 16))
  {
    sub_100801664(v39 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v8, type metadata accessor for SharedBeaconRecord);
    (*(v38 + 16))(v6, v27 + *(v37 + 20), v4);
    swift_beginAccess();
    sub_1001DFFF8(0, v6);
    swift_endAccess();
    swift_unownedRetainStrong();
    sub_1005754E0(v8, v32);

    sub_1008016CC(v8, type metadata accessor for SharedBeaconRecord);
    return (*(v14 + 8))(v32, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100800F38()
{
  swift_unownedRelease();

  v1 = OBJC_IVAR____TtC12searchpartyd24CryptoKeyStreamInspector_delay;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10080101C(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_10080111C(uint64_t a1)
{
  result = type metadata accessor for SharedBeaconRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1008011A0(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v2 - 8);
  v15 = v2;
  __chkstk_darwin(v2);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC488();
  v13[0] = "";
  v13[1] = v11;
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1008015A8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  *v4 = 60;
  (*(v14 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v15);
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v1[2] = v16;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_1008014D8()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1008002E0(v5, v0 + v2, v6);
}

uint64_t sub_1008015A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1008015F0(uint64_t *a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100800A08(a1, v4, v5);
}

uint64_t sub_100801664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008016CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SPPlaySoundContext.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000010;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6F4365756575712ELL;
  }

  else
  {
    if (!a1)
    {
      return 0x746C75616665642ELL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E69676E61722ELL;
  }
}

uint64_t sub_100801818()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B380);
  sub_1000076D4(v0, qword_10177B380);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1008018A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008320D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10080197C()
{
  v1 = *v0;
  v2 = 0x65755179616C702ELL;
  v3 = 0x6D6F43706F74732ELL;
  if (v1 != 5)
  {
    v3 = 0x74756F656D69742ELL;
  }

  v4 = 0x6D6F4379616C702ELL;
  if (v1 != 3)
  {
    v4 = 0x696E49706F74732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696E4979616C702ELL;
  if (v1 != 1)
  {
    v5 = 0x6E755279616C702ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100801A98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AA7B0);
  v1 = sub_1000076D4(v0, qword_1016AA7B0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B380);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100801B60()
{
  v1 = (v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager);
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager);
  }

  else
  {
    v3 = [objc_allocWithZone(CLFindMyAccessoryManager) initWithDelegate:v0 delegateQueue:*(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue)];
    *v1 = v3;
    v1[1] = &off_10166B548;
    v2 = v3;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_100801C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue;
  v11 = sub_1000BC488();
  v27[1] = "ndPlaybackManager";
  v27[2] = v11;
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v2[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators] = _swiftEmptyDictionarySingleton;
  v12 = &v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager];
  *v12 = 0;
  *(v12 + 1) = 0;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B380);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Init SoundPlaybackManager", v16, 2u);
  }

  v17 = v28;
  *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore] = v28;
  v18 = *&v3[v10];
  v19 = type metadata accessor for OwnerCommandManager();
  swift_allocObject();

  v20 = v29;

  v21 = v18;
  v22 = sub_10067C33C(v17, v20, v18);

  v23 = &v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager];
  *(v23 + 3) = v19;
  *(v23 + 4) = &off_10162CB90;
  *v23 = v22;
  v24 = type metadata accessor for SoundPlaybackManager();
  v30.receiver = v3;
  v30.super_class = v24;

  v25 = objc_msgSendSuper2(&v30, "init");

  v22[6] = &off_101635158;
  swift_unknownObjectWeakAssign();

  return v25;
}

uint64_t sub_100802044()
{
  v1 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v1 - 8);
  v155 = &v155 - v2;
  v184 = type metadata accessor for BeaconObservation(0);
  v175 = *(v184 - 8);
  v3 = __chkstk_darwin(v184);
  v5 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v170 = &v155 - v7;
  v8 = __chkstk_darwin(v6);
  v183 = &v155 - v9;
  v10 = __chkstk_darwin(v8);
  v182 = &v155 - v11;
  v12 = __chkstk_darwin(v10);
  v160 = &v155 - v13;
  v14 = __chkstk_darwin(v12);
  v159 = &v155 - v15;
  v16 = __chkstk_darwin(v14);
  v157 = &v155 - v17;
  v18 = __chkstk_darwin(v16);
  v158 = &v155 - v19;
  __chkstk_darwin(v18);
  v156 = &v155 - v20;
  v180 = type metadata accessor for WildModeAssociationRecord(0);
  v176 = *(v180 - 8);
  v21 = __chkstk_darwin(v180);
  v171 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v178 = &v155 - v24;
  __chkstk_darwin(v23);
  v26 = &v155 - v25;
  v173 = type metadata accessor for UUID();
  v179 = *(v173 - 8);
  v27 = __chkstk_darwin(v173);
  v169 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v172 = &v155 - v30;
  __chkstk_darwin(v29);
  v32 = &v155 - v31;
  v174 = *(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v33 = sub_100007F54();
  v34 = v33;
  v35 = v33[2];
  v36 = _swiftEmptyArrayStorage;
  v181 = v5;
  if (v35)
  {
    v37 = 0;
    v38 = (v33 + 4);
    v177 = v33;
    while (v37 < v34[2])
    {
      sub_10001F280(v38, &v186);
      v39 = v187;
      v40 = v188;
      sub_1000035D0(&v186, v187);
      if ((*(v40 + 112))(v39, v40))
      {
        sub_10000A748(&v186, &v189);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v36[2] + 1, 1);
          v36 = v192;
        }

        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_100025B1C((v42 > 1), v43 + 1, 1);
        }

        v44 = v190;
        v45 = v191;
        v46 = sub_10015049C(&v189, v190);
        __chkstk_darwin(v46);
        v48 = &v155 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48);
        sub_1006252D4(v43, v48, &v192, v44, v45);
        sub_100007BAC(&v189);
        v36 = v192;
        v34 = v177;
      }

      else
      {
        sub_100007BAC(&v186);
      }

      ++v37;
      v38 += 40;
      v5 = v181;
      if (v35 == v37)
      {
        goto LABEL_12;
      }
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_12:

  v50 = v36[2];
  if (v50)
  {
    v189 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v50, 0);
    v37 = v189;
    v51 = (v36 + 4);
    do
    {
      sub_10001F280(v51, &v186);
      v53 = v187;
      v52 = v188;
      sub_1000035D0(&v186, v187);
      (*(*(*(v52 + 8) + 8) + 32))(v53);
      sub_100007BAC(&v186);
      v189 = v37;
      v55 = *(v37 + 16);
      v54 = *(v37 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_101123D4C((v54 > 1), v55 + 1, 1);
        v37 = v189;
      }

      *(v37 + 16) = v55 + 1;
      (*(v179 + 32))(v37 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v55, v32, v173);
      v51 += 40;
      --v50;
    }

    while (v50);

    v5 = v181;
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v189 = v37;
  v56 = sub_10002F740();
  v57 = v56[2];
  v58 = _swiftEmptyArrayStorage;
  if (v57)
  {
    v59 = 0;
    v60 = v176;
    while (v59 < v56[2])
    {
      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v62 = *(v60 + 72);
      sub_100833680(v56 + v61 + v62 * v59, v26, type metadata accessor for WildModeAssociationRecord);
      if (v26[*(v180 + 52)] == 3)
      {
        sub_1008336E8(v26, v178, type metadata accessor for WildModeAssociationRecord);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v186 = v58;
        if ((v63 & 1) == 0)
        {
          sub_101124B2C(0, v58[2] + 1, 1);
          v60 = v176;
          v58 = v186;
        }

        v37 = v58[2];
        v64 = v58[3];
        if (v37 >= v64 >> 1)
        {
          sub_101124B2C((v64 > 1), v37 + 1, 1);
          v60 = v176;
          v58 = v186;
        }

        v58[2] = v37 + 1;
        sub_1008336E8(v178, v58 + v61 + v37 * v62, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        sub_1008333E4(v26, type metadata accessor for WildModeAssociationRecord);
      }

      v5 = v181;
      if (v57 == ++v59)
      {
        goto LABEL_31;
      }
    }

LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v60 = v176;
LABEL_31:

  v65 = v58[2];
  if (v65)
  {
    *&v186 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v65, 0);
    v66 = v186;
    v67 = v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v180 = *(v60 + 72);
    v68 = (v179 + 16);
    v178 = v179 + 32;
    v69 = v173;
    v70 = v171;
    v71 = v169;
    do
    {
      sub_100833680(v67, v70, type metadata accessor for WildModeAssociationRecord);
      (*v68)(v71, v70, v69);
      sub_1008333E4(v70, type metadata accessor for WildModeAssociationRecord);
      *&v186 = v66;
      v73 = v66[2];
      v72 = v66[3];
      if (v73 >= v72 >> 1)
      {
        sub_101123D4C((v72 > 1), v73 + 1, 1);
        v70 = v171;
        v66 = v186;
      }

      v66[2] = v73 + 1;
      (*(v179 + 32))(v66 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v73, v71, v69);
      v67 += v180;
      --v65;
    }

    while (v65);

    v5 = v181;
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
  }

  sub_100398278(v66);
  v74 = v175;
  v162 = v189[2];
  v166 = v189;
  if (v162)
  {
    v75 = 0;
    v76 = 0;
    v164 = v189 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
    v163 = v179 + 16;
    v161 = (v179 + 8);
    v37 = &off_10160A270;
    v165 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v75 >= v166[2])
      {
        goto LABEL_137;
      }

      v77 = *(v179 + 72);
      v167 = v75;
      (*(v179 + 16))(v172, &v164[v77 * v75], v173);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v169 = objc_autoreleasePoolPush();
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v78 = v186;
      v79 = *(v186 + 16);
      v168 = v76;
      if (v79 && (v80 = sub_1000210EC(v172), (v81 & 1) != 0))
      {
        v82 = *(*(v78 + 56) + 8 * v80);

        v83 = *(v82 + 16);
        if (v83)
        {
          v84 = sub_100034824(*(v82 + 16), 0);
          v85 = sub_1000364B4(&v186, v84 + 4, v83, v82);
          sub_1000128F8(v186);
          if (v85 != v83)
          {
            goto LABEL_139;
          }
        }

        else
        {

          v84 = _swiftEmptyArrayStorage;
        }

        v87 = sub_100034838(v84);

        v176 = v87[2];
        if (v176)
        {
          v88 = 0;
          v171 = _swiftEmptyArrayStorage;
          v174 = v87;
          while (v88 < v87[2])
          {
            v89 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v90 = *(v74 + 72);
            v180 = v88 + 1;
            v178 = v89;
            v177 = v90;
            sub_100833680(v87 + v89 + v90 * v88, v183, type metadata accessor for BeaconObservation);
            sub_100525F50();
            v91 = Set.init(minimumCapacity:)();
            v92 = 0;
            while (2)
            {
              v93 = v91 + 56;
              while (1)
              {
                v94 = *(&off_10160A270 + v92++ + 32);
                Hasher.init(_seed:)();
                v95 = qword_1013BD818[v94];
                Hasher._combine(_:)(v95);
                v96 = Hasher._finalize()();
                v97 = -1 << *(v91 + 32);
                v98 = v96 & ~v97;
                if (((*(v93 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
                {
                  break;
                }

                v99 = ~v97;
                while (qword_1013BD818[*(*(v91 + 48) + v98)] != v95)
                {
                  v98 = (v98 + 1) & v99;
                  if (((*(v93 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
                  {
                    goto LABEL_66;
                  }
                }

                if (v92 == 7)
                {
                  v120 = *(v91 + 16);
                  v121 = v91;
                  goto LABEL_96;
                }
              }

LABEL_66:
              v100 = swift_isUniquelyReferenced_nonNull_native();
              v185 = v91;
              v101 = *(v91 + 16);
              if (*(v91 + 24) <= v101)
              {
                if (v100)
                {
                  sub_100DF81C8(v101 + 1);
                }

                else
                {
                  sub_100E0B618(v101 + 1);
                }

                v121 = v185;
                Hasher.init(_seed:)();
                Hasher._combine(_:)(v95);
                v102 = Hasher._finalize()();
                v103 = -1 << *(v121 + 32);
                v98 = v102 & ~v103;
                if ((*(v121 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
                {
                  v104 = ~v103;
                  while (qword_1013BD818[*(*(v121 + 48) + v98)] != v95)
                  {
                    v98 = (v98 + 1) & v104;
                    if (((*(v121 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
                    {
                      goto LABEL_76;
                    }
                  }

                  goto LABEL_140;
                }
              }

              else if (v100)
              {
                v121 = v91;
              }

              else
              {
                sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
                v107 = static _SetStorage.copy(original:)();
                v121 = v107;
                if (*(v91 + 16))
                {
                  v108 = (v107 + 56);
                  v109 = v91 + 56;
                  v110 = ((1 << *(v121 + 32)) + 63) >> 6;
                  if (v121 != v91 || v108 >= v109 + 8 * v110)
                  {
                    memmove(v108, (v91 + 56), 8 * v110);
                  }

                  v111 = 0;
                  *(v121 + 16) = *(v91 + 16);
                  v112 = 1 << *(v91 + 32);
                  if (v112 < 64)
                  {
                    v113 = ~(-1 << v112);
                  }

                  else
                  {
                    v113 = -1;
                  }

                  v114 = v113 & *(v91 + 56);
                  for (i = (v112 + 63) >> 6; v114; *(*(v121 + 48) + v117) = *(*(v91 + 48) + v117))
                  {
                    v116 = __clz(__rbit64(v114));
                    v114 &= v114 - 1;
                    v117 = v116 | (v111 << 6);
LABEL_93:
                    ;
                  }

                  v118 = v111;
                  while (1)
                  {
                    v111 = v118 + 1;
                    if (__OFADD__(v118, 1))
                    {
                      goto LABEL_138;
                    }

                    if (v111 >= i)
                    {
                      break;
                    }

                    v119 = *(v109 + 8 * v111);
                    ++v118;
                    if (v119)
                    {
                      v114 = (v119 - 1) & v119;
                      v117 = __clz(__rbit64(v119)) | (v111 << 6);
                      goto LABEL_93;
                    }
                  }
                }
              }

LABEL_76:
              *(v121 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v98;
              *(*(v121 + 48) + v98) = v94;
              v105 = *(v121 + 16);
              v106 = __OFADD__(v105, 1);
              v120 = v105 + 1;
              if (v106)
              {
                __break(1u);
                goto LABEL_132;
              }

              *(v121 + 16) = v120;
              v91 = v121;
              if (v92 != 7)
              {
                continue;
              }

              break;
            }

LABEL_96:
            v74 = v175;
            v5 = v181;
            v87 = v174;
            if (v120 && (v122 = *(v183 + *(v184 + 24)), Hasher.init(_seed:)(), v123 = qword_1013BD818[v122], Hasher._combine(_:)(v123), v124 = Hasher._finalize()(), v125 = -1 << *(v121 + 32), v126 = v124 & ~v125, ((*(v121 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) != 0))
            {
              v127 = ~v125;
              while (qword_1013BD818[*(*(v121 + 48) + v126)] != v123)
              {
                v126 = (v126 + 1) & v127;
                if (((*(v121 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }

              sub_1008336E8(v183, v170, type metadata accessor for BeaconObservation);
              v128 = v171;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v130 = v128;
              v192 = v128;
              if ((v129 & 1) == 0)
              {
                sub_101124308(0, *(v128 + 16) + 1, 1);
                v130 = v192;
              }

              v132 = *(v130 + 16);
              v131 = *(v130 + 24);
              if (v132 >= v131 >> 1)
              {
                sub_101124308((v131 > 1), v132 + 1, 1);
                v130 = v192;
              }

              *(v130 + 16) = v132 + 1;
              v171 = v130;
              sub_1008336E8(v170, v130 + v178 + v132 * v177, type metadata accessor for BeaconObservation);
            }

            else
            {
LABEL_54:

              sub_1008333E4(v183, type metadata accessor for BeaconObservation);
            }

            v88 = v180;
            if (v180 == v176)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_133;
        }

        v171 = _swiftEmptyArrayStorage;
LABEL_108:

        v86 = v171;
      }

      else
      {

        v86 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v169);
      v133 = v86[2];
      if (v133)
      {
        v180 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v134 = v86 + v180;
        sub_100833680(v86 + v180, v182, type metadata accessor for BeaconObservation);
        v135 = v86;
        if (v133 != 1)
        {
          v146 = 1;
          while (v146 < v135[2])
          {
            sub_100833680(&v134[*(v74 + 72) * v146], v5, type metadata accessor for BeaconObservation);
            v147 = v182;
            if (static Date.< infix(_:_:)())
            {
              sub_1008333E4(v147, type metadata accessor for BeaconObservation);
              sub_1008336E8(v5, v147, type metadata accessor for BeaconObservation);
            }

            else
            {
              sub_1008333E4(v5, type metadata accessor for BeaconObservation);
            }

            ++v146;
            v135 = v86;
            if (v133 == v146)
            {
              goto LABEL_111;
            }
          }

LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_111:

        v136 = v160;
        sub_1008336E8(v182, v160, type metadata accessor for BeaconObservation);
        v137 = v136;
        v138 = v159;
        sub_1008336E8(v137, v159, type metadata accessor for BeaconObservation);
        v139 = sub_1005C8B3C(*(v138 + *(v184 + 24)), &off_10160A248);
        (*v161)(v172, v173);
        if (v139)
        {
          v140 = v138;
          v141 = v157;
          sub_1008336E8(v140, v157, type metadata accessor for BeaconObservation);
          sub_1008336E8(v141, v158, type metadata accessor for BeaconObservation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v165 = sub_100A5D28C(0, v165[2] + 1, 1, v165);
          }

          v142 = v180;
          v144 = v165[2];
          v143 = v165[3];
          if (v144 >= v143 >> 1)
          {
            v165 = sub_100A5D28C((v143 > 1), v144 + 1, 1, v165);
          }

          v145 = v165;
          v165[2] = v144 + 1;
          sub_1008336E8(v158, v145 + v142 + *(v74 + 72) * v144, type metadata accessor for BeaconObservation);
        }

        else
        {
          sub_1008333E4(v138, type metadata accessor for BeaconObservation);
        }
      }

      else
      {

        (*v161)(v172, v173);
      }

      v76 = v168;
      v75 = v167 + 1;
      if (v167 + 1 == v162)
      {
        goto LABEL_125;
      }
    }
  }

  v76 = 0;
  v165 = _swiftEmptyArrayStorage;
LABEL_125:
  v148 = v165;
  v149 = v165[2];
  v37 = v156;
  if (!v149)
  {
LABEL_130:

    v151 = type metadata accessor for TaskPriority();
    v152 = v155;
    (*(*(v151 - 8) + 56))(v155, 1, 1, v151);
    v153 = swift_allocObject();
    v153[2] = 0;
    v153[3] = 0;
    v153[4] = v148;
    sub_10025EDD4(0, 0, v152, &unk_1013BD808, v153);
  }

  v150 = 0;
  while (v150 < v148[2])
  {
    sub_100833680(v148 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v150, v37, type metadata accessor for BeaconObservation);
    sub_100803688(v37);
    if (v76)
    {
      goto LABEL_141;
    }

    ++v150;
    sub_1008333E4(v37, type metadata accessor for BeaconObservation);
    if (v149 == v150)
    {
      goto LABEL_130;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_141:

  result = sub_1008333E4(v37, type metadata accessor for BeaconObservation);
  __break(1u);
  return result;
}

uint64_t sub_100803688(uint64_t a1)
{
  v3 = type metadata accessor for BeaconObservation(0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v11;
  v13 = *(v11 + 16);
  v39 = v14;
  v34 = v13;
  v13();
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B380);
  sub_100833680(a1, v9, type metadata accessor for BeaconObservation);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33[1] = v1;
    v20 = v19;
    v40 = v19;
    *v18 = 136315138;
    v21 = sub_1009201A4();
    v23 = v22;
    sub_1008333E4(v9, type metadata accessor for BeaconObservation);
    v24 = sub_1000136BC(v21, v23, &v40);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Found %s. Force completion so we're not stuck forever", v18, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    sub_1008333E4(v9, type metadata accessor for BeaconObservation);
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v25 = qword_10177B2E8;
  v26 = v37;
  v27 = v39;
  (v34)(v7, v37, v39);
  v28 = v35;
  static Date.trustedNow.getter(&v7[*(v35 + 20)]);
  v7[*(v28 + 24)] = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v29 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  sub_100833680(v7, v30 + v29, type metadata accessor for BeaconObservation);
  v31 = type metadata accessor for Transaction();
  __chkstk_darwin(v31);
  v33[-4] = v25;
  v33[-3] = v30;
  v33[-2] = 0;
  v33[-1] = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v7, type metadata accessor for BeaconObservation);
  return (*(v38 + 8))(v26, v27);
}

uint64_t sub_100803B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = *(type metadata accessor for BeaconObservation(0) - 8);
  v4[4] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100803C34, 0, 0);
}