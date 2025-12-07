unint64_t sub_10103D080()
{
  result = qword_1016C3D18;
  if (!qword_1016C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D18);
  }

  return result;
}

unint64_t sub_10103D0D4()
{
  result = qword_1016C3D28;
  if (!qword_1016C3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D28);
  }

  return result;
}

uint64_t sub_10103D128(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_10103CC7C(a2, type metadata accessor for KeyDropInterface.KeyPackage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10103D1C4()
{
  result = qword_1016C3D50;
  if (!qword_1016C3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D50);
  }

  return result;
}

uint64_t sub_10103D218(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C3D30, &unk_1013F8F28);
    sub_10103CC7C(a2, type metadata accessor for KeyDropCreateRequest.Member, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10103D2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10103D31C()
{
  result = qword_1016C3D80;
  if (!qword_1016C3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D80);
  }

  return result;
}

unint64_t sub_10103D3A4()
{
  result = qword_1016C3D90;
  if (!qword_1016C3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D90);
  }

  return result;
}

unint64_t sub_10103D3FC()
{
  result = qword_1016C3D98;
  if (!qword_1016C3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D98);
  }

  return result;
}

unint64_t sub_10103D454()
{
  result = qword_1016C3DA0;
  if (!qword_1016C3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DA0);
  }

  return result;
}

unint64_t sub_10103D4AC()
{
  result = qword_1016C3DA8;
  if (!qword_1016C3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DA8);
  }

  return result;
}

unint64_t sub_10103D504()
{
  result = qword_1016C3DB0;
  if (!qword_1016C3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DB0);
  }

  return result;
}

unint64_t sub_10103D55C()
{
  result = qword_1016C3DB8;
  if (!qword_1016C3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DB8);
  }

  return result;
}

unint64_t sub_10103D5B4()
{
  result = qword_1016C3DC0;
  if (!qword_1016C3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DC0);
  }

  return result;
}

unint64_t sub_10103D60C()
{
  result = qword_1016C3DC8;
  if (!qword_1016C3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DC8);
  }

  return result;
}

unint64_t sub_10103D664()
{
  result = qword_1016C3DD0;
  if (!qword_1016C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DD0);
  }

  return result;
}

uint64_t sub_10103D6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10103D874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xEE00646C65694664)
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

uint64_t sub_10103D9EC()
{

  return sub_101035734();
}

uint64_t sub_10103DA60()
{

  return sub_101035EC4();
}

uint64_t sub_10103DADC(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 128) = v4;
  v5 = *(v4 - 8);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 + 64);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  *v6 = v3;
  v6[1] = sub_10103DBE4;

  return daemon.getter();
}

uint64_t sub_10103DBE4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000394F4(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000394F4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10103DDC8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10103DDC8(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = sub_10103E6F4;
  }

  else
  {

    v6 = sub_10103DF00;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103DF00()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[14];
  v6 = *(v3 + 16);
  v0[26] = v6;
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[28] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[29] = v9;
  v10 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v9 = v0;
  v9[1] = sub_10103E088;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v8, v10);
}

uint64_t sub_10103E088()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_10103E1B4, v1, 0);
}

uint64_t sub_10103E1B4()
{
  v23 = v0;
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 240) = v1;
    *v1 = v0;
    v1[1] = sub_10103E548;
    v2 = *(v0 + 256);

    return sub_100032054(v0 + 16, v2);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 208);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A548);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v22);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "updateBatteryLevelAndNotify: No beacon record for %{private,mask.hash}s.", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 104) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10103E548()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10103E768;
  }

  else
  {
    v4 = sub_10103E674;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10103E674()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103E6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103E768()
{

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103E7E4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_10103E90C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1004A9788;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10103E90C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103E978(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a2;
  v20 = a1;
  v9 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v24 = a3;
  sub_10001F280(a5, v23);
  v13 = *(v10 + 16);
  v13(v12, a1, v9);
  v14 = *(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  sub_100031694(v23, v15 + 24);
  v16 = *(v10 + 32);
  v16(v15 + ((v14 + 64) & ~v14), v12, v9);
  v13(v12, v20, v9);
  v17 = swift_allocObject();
  v16(v17 + ((v14 + 16) & ~v14), v12, v9);

  dispatch thunk of HysteresisFilter.processInput(newValue:outputBlock:ignoreBlock:)();
}

uint64_t sub_10103EB7C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = *a2;
  v8 = *a1;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_10103EC38;

  return sub_10103EF74(a4, v8, v7);
}

uint64_t sub_10103EC38()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10103EDC4;
  }

  else
  {
    v2 = sub_10103ED4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10103ED4C()
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10103EDC4()
{
  v0[2] = v0[5];
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10103EE6C()
{
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[3] = 4;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
  _BridgedStoredNSError.init(_:userInfo:)();
  v0[3] = v0[2];
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10103EF74(uint64_t a1, char a2, char a3)
{
  *(v4 + 665) = a3;
  *(v4 + 664) = a2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v3;
  v5 = type metadata accessor for BeaconNamingRecord(0);
  *(v4 + 368) = v5;
  *(v4 + 376) = *(v5 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 416) = v6;
  v7 = *(v6 - 8);
  *(v4 + 424) = v7;
  *(v4 + 432) = *(v7 + 64);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v4 + 480) = swift_task_alloc();
  v8 = type metadata accessor for BeaconProductInfoRecord(0);
  *(v4 + 488) = v8;
  *(v4 + 496) = *(v8 - 8);
  *(v4 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_10103F1A4, v3, 0);
}

uint64_t sub_10103F1A4()
{
  v20 = v0;
  if (sub_10111BC4C(*(v0 + 352), *(v0 + 664), *(v0 + 665)))
  {
    v1 = swift_task_alloc();
    *(v0 + 512) = v1;
    *v1 = v0;
    v1[1] = sub_10103F4F8;

    return daemon.getter();
  }

  else
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 352);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A548);
    sub_10001F280(v2, v0 + 88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 464);
      v7 = *(v0 + 416);
      v8 = *(v0 + 424);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = *(v0 + 112);
      v11 = *(v0 + 120);
      sub_1000035D0((v0 + 88), v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v6, v7);
      sub_100007BAC((v0 + 88));
      v16 = sub_1000136BC(v13, v15, &v19);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not posting low battery notification for %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100007BAC((v0 + 88));
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10103F4F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 520) = a1;

  v3 = swift_task_alloc();
  *(v2 + 528) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000394F4(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000394F4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10103F6DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10103F6DC(uint64_t a1)
{
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v4 = v3[45];
    v5 = sub_101041934;
  }

  else
  {
    v6 = v3[45];

    v5 = sub_10103F808;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10103F808()
{
  v1 = v0[44];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = (*(v3 + 112))(v2, v3);
  v5 = v0[67];
  if (v4)
  {
    v7 = v1[3];
    v6 = v1[4];
    sub_1000035D0(v0[44], v7);
    (*(*(*(v6 + 8) + 8) + 32))(v7);
    v8 = sub_10103F94C;
  }

  else
  {
    v0[74] = v5;
    v0[73] = 0x800000010134A8C0;
    v9 = v0[44];
    v10 = v9[3];
    v11 = v9[4];
    sub_1000035D0(v9, v10);
    (*(*(*(v11 + 8) + 8) + 32))(v10);
    v8 = sub_101040574;
  }

  return _swift_task_switch(v8, v5, 0);
}

uint64_t sub_10103F94C()
{
  v1 = v0[67];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[52];
  (*(v3 + 16))(v2, v0[58], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[69] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[70] = v7;
  *v7 = v0;
  v7[1] = sub_10103FAAC;
  v9 = v0[59];
  v8 = v0[60];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_101042178, v6, v9);
}

uint64_t sub_10103FAAC()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 416);
  v5 = *(*v0 + 360);

  v6 = *(v3 + 8);
  *(v1 + 568) = v6;
  *(v1 + 576) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return _swift_task_switch(sub_10103FC4C, v5, 0);
}

uint64_t sub_10103FC4C()
{
  v66 = v0;
  v1 = v0[61];
  v2 = v0[60];
  if ((*(v0[62] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v3 = v0[44];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A548);
    sub_10001F280(v3, (v0 + 26));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[71];
      v8 = v0[58];
      v9 = v0[52];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v65 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v13 = v0[29];
      v12 = v0[30];
      sub_1000035D0(v0 + 26, v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v7(v8, v9);
      sub_100007BAC(v0 + 26);
      v17 = sub_1000136BC(v14, v16, &v65);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Not posting low battery notification for %{private,mask.hash}s.\nAccessory beacon but missing product info!", v10, 0x16u);
      sub_100007BAC(v11);

LABEL_35:

      v62 = v0[1];

      return v62();
    }

    v34 = v0 + 26;
LABEL_34:
    sub_100007BAC(v34);
    goto LABEL_35;
  }

  v18 = v0[63];
  sub_100038F44(v2, v18, type metadata accessor for BeaconProductInfoRecord);
  if (*(v18 + *(v1 + 36)))
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v19 = v0[44];
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177A548);
    sub_10001F280(v19, (v0 + 36));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      v56 = v0[63];

      sub_10002FFA8(v56, type metadata accessor for BeaconProductInfoRecord);
      v34 = v0 + 36;
      goto LABEL_34;
    }

    v23 = v0[71];
    v64 = v0[63];
    v24 = v0[58];
    v25 = v0[52];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65 = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v29 = v0[39];
    v28 = v0[40];
    sub_1000035D0(v0 + 36, v29);
    (*(*(*(v28 + 8) + 8) + 32))(v29);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v23(v24, v25);
    sub_100007BAC(v0 + 36);
    v33 = sub_1000136BC(v30, v32, &v65);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "Not posting low battery notification for hidden beacon %{private,mask.hash}s.", v26, 0x16u);
    sub_100007BAC(v27);

LABEL_28:

    sub_10002FFA8(v64, type metadata accessor for BeaconProductInfoRecord);
    goto LABEL_35;
  }

  v35 = v0[63];
  v36 = *(v35 + *(v0[61] + 28));
  if (v36 != 1)
  {
    if (v36 == 4)
    {
      v37 = 3;
    }

    else
    {
      v37 = *(v35 + *(v0[61] + 28));
    }

    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v38 = v0[44];
    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177A548);
    sub_10001F280(v38, (v0 + 31));
    v21 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v40))
    {
      v61 = v0[63];

      sub_10002FFA8(v61, type metadata accessor for BeaconProductInfoRecord);
      v34 = v0 + 31;
      goto LABEL_34;
    }

    v41 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v41 = 136446723;
    v42 = 0xEB00000000656C62;
    v43 = 0x6167726168636572;
    if (v37 != 2)
    {
      v43 = 0x6E776F6E6B6E75;
      v42 = 0xE700000000000000;
    }

    if (v37)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x64657265776F70;
    }

    if (v37)
    {
      v45 = v42;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    v46 = v0[71];
    v64 = v0[63];
    v47 = v0[58];
    v48 = v0[52];
    v49 = sub_1000136BC(v44, v45, &v65);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2160;
    *(v41 + 14) = 1752392040;
    *(v41 + 22) = 2081;
    v51 = v0[34];
    v50 = v0[35];
    sub_1000035D0(v0 + 31, v51);
    (*(*(*(v50 + 8) + 8) + 32))(v51);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v46(v47, v48);
    sub_100007BAC(v0 + 31);
    v55 = sub_1000136BC(v52, v54, &v65);

    *(v41 + 24) = v55;
    _os_log_impl(&_mh_execute_header, v21, v40, "Not posting low battery notification for unsupported battery type: %{public}s. Beacon %{private,mask.hash}s.", v41, 0x20u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  sub_10002FFA8(v35, type metadata accessor for BeaconProductInfoRecord);
  v57 = v0[67];
  v0[74] = v57;
  v0[73] = 0x800000010134A8C0;
  v58 = v0[44];
  v59 = v58[3];
  v60 = v58[4];
  sub_1000035D0(v58, v59);
  (*(*(*(v60 + 8) + 8) + 32))(v59);

  return _swift_task_switch(sub_101040574, v57, 0);
}

uint64_t sub_101040574()
{
  v1 = v0[67];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[52];
  (*(v3 + 16))(v2, v0[58], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[75] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[76] = v7;
  *v7 = v0;
  v7[1] = sub_1010406C4;
  v8 = v0[73];
  v9 = v0[51];
  v10 = v0[49];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, v8, sub_1010420F0, v6, v10);
}

uint64_t sub_1010406C4()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 416);

  v5 = *(v3 + 8);
  v1[77] = v5;
  v1[78] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = v1[74];

  return _swift_task_switch(sub_101040868, v6, 0);
}

uint64_t sub_101040868()
{

  v1 = swift_task_alloc();
  v0[79] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10104093C;
  v3 = v0[73];
  v4 = v0[67];

  return unsafeBlocking<A>(context:_:)(v0 + 41, 0xD000000000000010, v3, sub_1000D27E4, v4, v2);
}

uint64_t sub_10104093C()
{
  v1 = *v0;

  v2 = *(v1 + 592);

  return _swift_task_switch(sub_101040A70, v2, 0);
}

uint64_t sub_101040A70()
{
  v1 = v0[45];
  v0[80] = v0[41];
  return _swift_task_switch(sub_101040A94, v1, 0);
}

uint64_t sub_101040A94()
{
  v33 = v0;
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = type metadata accessor for Logger();
  *(v0 + 648) = sub_1000076D4(v2, qword_10177A548);
  sub_10001F280(v1, v0 + 128);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 616);
    v6 = *(v0 + 464);
    v7 = *(v0 + 416);
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218499;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    sub_1000035D0((v0 + 128), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v5(v6, v7);
    sub_100007BAC((v0 + 128));
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateBatteryLevelAndNotify %ld for %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC((v0 + 128));
  }

  v17 = *(v0 + 400);
  v18 = *(v0 + 368);
  v19 = *(v0 + 376);
  sub_101042108(*(v0 + 408), v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = *(v0 + 352);
    sub_10000B3A8(*(v0 + 400), &unk_1016B29E0, &unk_1013B70E0);
    v21 = v20[3];
    v22 = v20[4];
    sub_1000035D0(v20, v21);
    (*(*(*(v22 + 8) + 8) + 32))(v21);
    v23 = getuid();
    sub_1000294F0(v23);

    return _swift_task_switch(sub_101040F20, 0, 0);
  }

  else
  {
    v24 = *(v0 + 384);
    v25 = *(v0 + 368);
    sub_100038F44(*(v0 + 400), v24, type metadata accessor for BeaconNamingRecord);
    v26 = (v24 + *(v25 + 32));
    v27 = *v26;
    v28 = v26[1];

    sub_10002FFA8(v24, type metadata accessor for BeaconNamingRecord);
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 408);
    sub_10111C318(*(v0 + 352), *(v0 + 664), v27, v28);

    sub_10000B3A8(v29, &unk_1016B29E0, &unk_1013B70E0);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_101040F20()
{
  v1 = swift_task_alloc();
  v0[82] = v1;
  *v1 = v0;
  v1[1] = sub_101040FCC;
  v3 = v0[55];
  v2 = v0[56];

  return sub_100687A6C((v0 + 2), v2, v3);
}

uint64_t sub_101040FCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10104156C;
    v4 = 0;
  }

  else
  {
    v5 = v2[77];
    v6 = v2[55];
    v7 = v2[56];
    v8 = v2[52];
    v9 = v2[45];
    v5(v6, v8);
    v5(v7, v8);
    v3 = sub_101041124;
    v4 = v9;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_101041124()
{
  v21 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);

    sub_10000B3A8(v0 + 16, &unk_1016AF910, &unk_10138C4C0);
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 408);
    sub_10111C318(*(v0 + 352), *(v0 + 664), v2, v1);

    sub_10000B3A8(v3, &unk_1016B29E0, &unk_1013B70E0);

    v4 = *(v0 + 8);
  }

  else
  {
    sub_10001F280(*(v0 + 352), v0 + 168);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 616);
      v8 = *(v0 + 464);
      v9 = *(v0 + 416);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v13 = *(v0 + 192);
      v12 = *(v0 + 200);
      sub_1000035D0((v0 + 168), v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v7(v8, v9);
      sub_100007BAC((v0 + 168));
      v17 = sub_1000136BC(v14, v16, &v20);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "updateBatteryLevelAndNotify: no name record found for %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100007BAC((v0 + 168));
    }

    v18 = *(v0 + 408);
    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 344) = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_10000B3A8(v18, &unk_1016B29E0, &unk_1013B70E0);

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_10104156C()
{
  v1 = v0[77];
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[45];
  v1(v0[55], v3);
  v1(v2, v3);

  return _swift_task_switch(sub_101041604, v4, 0);
}

uint64_t sub_101041604()
{
  v18 = v0;
  sub_10001F280(v0[44], (v0 + 21));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[77];
    v4 = v0[58];
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v9 = v0[24];
    v8 = v0[25];
    sub_1000035D0(v0 + 21, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v3(v4, v5);
    sub_100007BAC(v0 + 21);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateBatteryLevelAndNotify: no name record found for %{private,mask.hash}s.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100007BAC(v0 + 21);
  }

  v14 = v0[51];
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[43] = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError, &unk_10138A100);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  sub_10000B3A8(v14, &unk_1016B29E0, &unk_1013B70E0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_101041934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101041A14(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v13 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v13);
  v14 = *(*(v12 + 8) + 8);
  v15 = *(v14 + 32);
  v15(v13, v14);
  swift_beginAccess();
  v16 = *(v3 + 128);
  if (!*(v16 + 16))
  {
    goto LABEL_5;
  }

  v17 = sub_1000210EC(v11);
  if ((v18 & 1) == 0)
  {

LABEL_5:
    v25 = v15;
    v26 = *(v26 + 8);
    v21 = v11;
    v22 = v27;
    (v26)(v21, v27);
    sub_1000BC4D4(&qword_1016C3ED0, &qword_1013F93A8);
    v29 = a2;
    v19 = HysteresisFilter.__allocating_init(currentValue:threshold:)();
    v25(v13, v14);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v3 + 128);
    *(v3 + 128) = 0x8000000000000000;
    sub_100FFDECC(v19, v9, isUniquelyReferenced_nonNull_native);
    (v26)(v9, v22);
    *(v3 + 128) = v28;
    swift_endAccess();
    return v19;
  }

  v19 = *(*(v16 + 56) + 8 * v17);
  v20 = *(v26 + 8);

  v20(v11, v27);

  return v19;
}

uint64_t sub_101041C94(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BatteryLevelService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_101041D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for BatteryLevelService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_101041E00(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BatteryLevelService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_101041EA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BatteryLevelService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_101041F50(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BatteryLevelService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_101041FF8()
{
  type metadata accessor for BatteryLevelService();
  sub_1000394F4(&qword_1016A24B8, v0, type metadata accessor for BatteryLevelService, &unk_1013F9320);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_101042108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101042190(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_101042228(char *a1, char *a2)
{
  v6 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_10103EB7C(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_101042328()
{
  v2 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10103EE4C(v0 + v3);
}

uint64_t sub_101042400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = *(a1 + 32);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = a1;
  *(a1 + 32) = v7;
  v3 = static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
LABEL_5:
    swift_once();
  }

  v8 = v7 > 2;
  v9 = qword_10177C610;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = *(v4 + 32);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  *(v10 + 96) = &type metadata for Bool;
  *(v10 + 104) = &protocol witness table for Bool;
  *(v10 + 72) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v9, "Decryption error count %i. Should repair? %i", v13, v14);

  *a3 = v8;
  return result;
}

uint64_t sub_101042538(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  static SystemInfo.lockState.getter();
  (*(v5 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_101042A24();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = (v12)(v10, v4);
  if (v11)
  {
    v14 = static os_log_type_t.default.getter();
    if (qword_101695228 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C610;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v21[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Ignoring decryption error before first unlock. %@", 49, 2, v16);
  }

  else
  {
    __chkstk_darwin(v13);
    v21[-2] = v2;
    v21[-1] = 1;

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    if (LOBYTE(v21[0]) == 1)
    {
      v21[0] = 1;
      return KeyedThrottle.throttle(key:block:)();
    }
  }

  return result;
}

uint64_t sub_101042838(uint64_t a1)
{

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  (*(a1 + 40))(v2);
  return 1;
}

uint64_t sub_1010428C0(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C610;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = *(a1 + 32);
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Decryption error count %i. Will attempt repair!", v7);

  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1010429B8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_101042A24()
{
  result = qword_10169F338;
  if (!qword_10169F338)
  {
    type metadata accessor for SystemInfo.DeviceLockState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F338);
  }

  return result;
}

uint64_t sub_101042ACC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_101042B7C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_101042AF8(uint64_t a1)
{
  *(a1 + 8) = sub_101042B28();
  result = sub_10064D5C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_101042B28()
{
  result = qword_1016C3FD8;
  if (!qword_1016C3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3FD8);
  }

  return result;
}

uint64_t sub_101042B7C(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v5 = result;
  if (v1)
  {
    goto LABEL_12;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v7) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_14;
    }

    v7 = v7;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    goto LABEL_14;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v7 == 28)
  {
LABEL_12:
    sub_100007BAC(v11);
    sub_100007BAC(a1);
    return v5;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Int sub_101042C7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_101042CF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_101042D44@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C230, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1010430AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Trampolining fetchFinderState", 29, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

  sub_10001F280(v3 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v13);
  v8 = v14;
  v9 = v15;
  sub_1000035D0(v13, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v9 + 24);

  v11(sub_101044DEC, v10, v8, v9);

  return sub_100007BAC(v13);
}

uint64_t sub_101043390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001F280(v3 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v10);
  v7 = v11;
  v8 = v12;
  sub_1000035D0(v10, v11);
  (*(v8 + 32))(((a1 + 1) > 2) | (6u >> ((a1 + 1) & 7)) & 1, a2, a3, v7, v8);
  return sub_100007BAC(v10);
}

id sub_101043508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinderStateTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_101043574()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v10[3] = type metadata accessor for FinderStateManagerService(0);
    v10[4] = &off_1016610A0;
    v10[0] = v0;
    v3 = type metadata accessor for FinderStateTrampoline();
    v4 = objc_allocWithZone(v3);
    sub_10001F280(v10, v4 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation);
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    sub_100007BAC(v10);
    v6 = *(v0 + 48);
    *(v0 + 48) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void *sub_10104363C(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0xD000000000000019;
  v1[3] = 0x80000001013F9550;
  v8 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v10[0] = "state manager callback";
  v10[1] = v8;
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_1000197C8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v1[5] = XPCSessionManager.init(name:)();
  v1[6] = 0;
  PressuredExitTransactionManager.init()();
  v1[7] = v11;
  return v1;
}

uint64_t sub_10104390C()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = PressuredExitTransactionManager.begin(_:)();
  v12 = v0[4];
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v1;
  aBlock[4] = sub_101044D54;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661170;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000197C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v4, v2);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_101043C2C(uint64_t a1)
{
  v1 = type metadata accessor for MachServiceName();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for XPCServiceDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_101043574();
  if (qword_101695188 != -1)
  {
    swift_once();
  }

  v6 = qword_1016C3FE0;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  Transaction.end()();
  return (*(v3 + 8))(v5, v2);
}

void sub_101043E04()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPFinderStateXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C3FE0 = v2;
}

uint64_t sub_101043E6C()
{

  v1 = OBJC_IVAR____TtC12searchpartyd25FinderStateManagerService_transactionManager;
  v2 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinderStateManagerService(uint64_t a1)
{
  result = qword_1016C40A8;
  if (!qword_1016C40A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101043F84(uint64_t a1)
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

uint64_t sub_10104406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Requesting disabling finder mode", 32, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1002EDD88(sub_101044C74, v9);

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_10025EDD4(0, 0, v6, &unk_1013F95F0, v11);
}

uint64_t sub_10104421C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1010442AC;

  return daemon.getter();
}

uint64_t sub_1010442AC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 24) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000197C8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000197C8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_101044488;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101044488(uint64_t a1)
{
  *(*v2 + 40) = a1;

  if (v1)
  {

    v3 = sub_101044A50;
  }

  else
  {

    v3 = sub_1010445D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010445D8()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_101044674;

  return sub_1010CCD2C();
}

uint64_t sub_101044674()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1010448B0;
  }

  else
  {

    v2 = sub_101044790;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101044790()
{
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due to Finder turn off.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010448B0()
{

  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to clear observations due to Finder turn off, error: %@.", v4, 0xCu);
    sub_100288C6C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_101044A50()
{
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due to Finder turn off.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_101044B64(uint64_t a1, uint64_t a2)
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Requesting enabling finder mode", 31, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);

  return sub_1002EDAE4(a1, a2);
}

uint64_t sub_101044C74(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_101044CA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10104421C();
}

unint64_t sub_101044D98()
{
  result = qword_1016C4180;
  if (!qword_1016C4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4180);
  }

  return result;
}

uint64_t sub_101044DEC(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = a1;
    v5 = 0;
  }

  else
  {
    v5 = [a1 state];
    v4 = 0;
  }

  return v3(v5, v4);
}

unint64_t sub_101044E48()
{
  result = qword_1016C4188;
  if (!qword_1016C4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4188);
  }

  return result;
}

unint64_t sub_101044EA0()
{
  result = qword_1016C4190[0];
  if (!qword_1016C4190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016C4190);
  }

  return result;
}

uint64_t sub_101044F9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[32];
  if (v14)
  {
    v35 = v11;
    v36 = v8;
    v37 = result;
    v38 = v6;
    v15 = qword_101695190;
    v34 = v2[33];

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C4F0);
    swift_retain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = v5;
      v20 = v19;
      v39 = swift_slowAlloc();
      aBlock[0] = v4;
      *v20 = 136315394;
      swift_getMetatypeMetadata();
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v39);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      v24 = sub_10048F5C4();
      v26 = v25;

      v27 = sub_1000136BC(v24, v26, &v39);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: invalidated %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v5 = v33;
    }

    else
    {
    }

    v28 = swift_allocObject();
    v29 = v34;
    v28[2] = v14;
    v28[3] = v29;
    v28[4] = a1;
    aBlock[4] = sub_100B24A48;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016614F8;
    v30 = _Block_copy(aBlock);
    sub_100012908(v14, v29);

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_10104B624(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v31 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    sub_1000BB27C(v14, v29);
    (*(v38 + 8))(v31, v5);
    (*(v35 + 8))(v13, v37);
  }

  return result;
}

void *sub_101045440()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  v8 = 0;
  v3 = [v1 datagramConnectionForSessionDestination:v2 error:&v8];

  v4 = v8;
  if (v3)
  {
    type metadata accessor for MessagingDatagramConnection();
    swift_allocObject();
    v5 = v4;
    return sub_100F0E880(v3);
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

Swift::Int sub_101045534(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B31F80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10104A440(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1010455D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  sub_100044B3C(v4, a2);
  sub_1000076D4(v4, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101045650()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_10177C520 = result;
  return result;
}

uint64_t sub_1010456A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1016951A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_10177C528;
  if (*(qword_10177C528 + 16) && (v5 = sub_1007725DC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a2 = v7;
  a2[1] = v8;
  return swift_endAccess();
}

uint64_t sub_10104576C()
{
  if (qword_1016951A0 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  sub_1000BB27C(*(v0 + 144), *(v0 + 152));
  sub_1000BB27C(*(v0 + 160), *(v0 + 168));
  sub_1000BB27C(*(v0 + 176), *(v0 + 184));
  sub_1000BB27C(*(v0 + 192), *(v0 + 200));
  sub_1000BB27C(*(v0 + 208), *(v0 + 216));
  sub_1000BB27C(*(v0 + 224), *(v0 + 232));
  sub_1000BB27C(*(v0 + 240), *(v0 + 248));
  sub_1000BB27C(*(v0 + 256), *(v0 + 264));
  return v0;
}

uint64_t sub_10104589C(uint64_t a1)
{
  if (qword_1016951A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 64);
  swift_beginAccess();
  sub_1001DF40C(0, 0, v1);
  return swift_endAccess();
}

uint64_t sub_101045948()
{
  sub_10104576C();

  return swift_deallocClassInstance();
}

void sub_1010459A4()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v11;
        v12._countAndFlagsBits = 118;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v13);

        v14 = v88;
        v15 = v96;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v16;
        v17._countAndFlagsBits = 23328;
        v17._object = 0xE200000000000000;
        String.append(_:)(v17);
        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        v19._countAndFlagsBits = 0x5D736574796220;
        v19._object = 0xE700000000000000;
        String.append(_:)(v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v89, v97, v14, v15, isUniquelyReferenced_nonNull_native);
      }

      while (v7);
      continue;
    }
  }

  v21 = v84[3];
  v24 = *(v21 + 64);
  v23 = v21 + 64;
  v22 = v24;
  v25 = 1 << *(v84[3] + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  if (v27)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_43;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v23 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      do
      {
LABEL_19:
        v27 &= v27 - 1;
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v31;
        v32._countAndFlagsBits = 118;
        v32._object = 0xE100000000000000;
        String.append(_:)(v32);
        v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v33);

        v34 = v98;
        v87 = v90;
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v35;
        v36._countAndFlagsBits = 23328;
        v36._object = 0xE200000000000000;
        String.append(_:)(v36);
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38._countAndFlagsBits = 0x5D736574796220;
        v38._object = 0xE700000000000000;
        String.append(_:)(v38);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v91, v99, v87, v34, v39);
      }

      while (v27);
      continue;
    }
  }

  v40 = v84[4];
  v43 = *(v40 + 64);
  v42 = v40 + 64;
  v41 = v43;
  v44 = 1 << *(v84[4] + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v41;
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  if (v46)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_44;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v42 + 8 * v49);
    ++v48;
    if (v46)
    {
      v48 = v49;
      do
      {
LABEL_29:
        v46 &= v46 - 1;
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v50;
        v51._countAndFlagsBits = 118;
        v51._object = 0xE100000000000000;
        String.append(_:)(v51);
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        v53 = v92;
        v54 = v100;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = v55;
        v56._countAndFlagsBits = 23328;
        v56._object = 0xE200000000000000;
        String.append(_:)(v56);
        v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v57);

        v58._countAndFlagsBits = 0x5D736574796220;
        v58._object = 0xE700000000000000;
        String.append(_:)(v58);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v93, v101, v53, v54, v59);
      }

      while (v46);
      continue;
    }
  }

  v60 = v84[5];
  v63 = *(v60 + 64);
  v62 = v60 + 64;
  v61 = v63;
  v64 = 1 << *(v84[5] + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v61;
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  for (i = _swiftEmptyDictionarySingleton; v66; i = v86)
  {
    v86 = i;
LABEL_39:
    v66 &= v66 - 1;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v71;
    v72._countAndFlagsBits = 118;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v73);

    v74 = v102;
    v85 = v94;
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v75;
    v76._countAndFlagsBits = 23328;
    v76._object = 0xE200000000000000;
    String.append(_:)(v76);
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 0x5D736574796220;
    v78._object = 0xE700000000000000;
    String.append(_:)(v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(v95, v103, v85, v74, v79);
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v67)
    {

      sub_1000BC4D4(&qword_1016C4220, &qword_1013F98E0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_10138C0D0;
      *(v80 + 32) = 0x4E65636976726573;
      *(v80 + 40) = 0xEB00000000656D61;
      v81 = *v84;
      v82 = v84[1];
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v81;
      *(v80 + 72) = v82;
      *(v80 + 120) = &type metadata for String;
      *(v80 + 88) = &type metadata for String;
      *(v80 + 96) = 1953391987;
      *(v80 + 104) = 0xE400000000000000;
      v83 = sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
      *(v80 + 128) = _swiftEmptyDictionarySingleton;
      *(v80 + 152) = v83;
      strcpy((v80 + 160), "sentResource");
      *(v80 + 173) = 0;
      *(v80 + 174) = -5120;
      *(v80 + 184) = &type metadata for String;
      *(v80 + 192) = _swiftEmptyDictionarySingleton;
      *(v80 + 216) = v83;
      *(v80 + 224) = 0x6465766965636572;
      *(v80 + 232) = 0xE800000000000000;
      *(v80 + 248) = &type metadata for String;
      *(v80 + 256) = _swiftEmptyDictionarySingleton;
      *(v80 + 280) = v83;
      *(v80 + 288) = 0xD000000000000010;
      *(v80 + 296) = 0x8000000101378C00;
      *(v80 + 344) = v83;
      *(v80 + 312) = &type metadata for String;
      *(v80 + 320) = i;
      sub_10104ADD4();

      NSDictionary.init(dictionaryLiteral:)();
      return;
    }

    v66 = *(v62 + 8 * v70);
    ++v68;
    if (v66)
    {
      v86 = i;
      v68 = v70;
      goto LABEL_39;
    }
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1010462CC()
{
  swift_getWitnessTable();
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_101046408(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 16) + 16) || (sub_100771C94(a1, a2), (v9 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v3 + 16);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v32;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  v33 = *(v5 + 16);
  result = sub_100771C94(a1, v7);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v14;
  if (*(v12 + 24) >= v18)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v18, v11);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v19 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v11)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v27 = *(v33 + 56) + 16 * result;
    v29 = *(v27 + 8);
    v28 = (v27 + 8);
    v30 = v29 + a3;
    if (!__CFADD__(v29, a3))
    {
      *v28 = v30;
      *(v5 + 16) = v33;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v31 = result;
      sub_10100E980();
      result = v31;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v20 = (*(v33 + 56) + 16 * result);
      if (__OFADD__(*v20, 1))
      {
        break;
      }

      ++*v20;
      *(v5 + 16) = v33;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v11 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v5 + 16);
      v33 = v21;
      result = sub_100771C94(a1, v7);
      v23 = *(v21 + 16);
      v24 = (v22 & 1) == 0;
      v17 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (!v17)
      {
        v4 = v22;
        if (*(v21 + 24) >= v25)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v25, v11);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v26 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_10104663C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v16 = *v8;
  dispatch_assert_queue_V2(*(v8 + 48));
  v17 = *(v8 + 144);
  if (v17)
  {
    v30 = v16;
    v18 = *(v8 + 152);
    v19 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
    if (v19 || (v28 = *(v8 + 24), v29 = *(v8 + 16), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v17(a3, a4, a5, a6 & 1, a7);

      sub_1000BB27C(v17, v18);
    }

    else
    {
      v20 = qword_101695190;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        v31[1] = v30;
        *v23 = 136315650;
        swift_getMetatypeMetadata();
        v24 = String.init<A>(describing:)();
        v26 = sub_1000136BC(v24, v25, v31);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1000136BC(v29, v28, v31);
        *(v23 + 22) = 2080;
        *(v23 + 24) = sub_1000136BC(a1, a2, v31);
        _os_log_impl(&_mh_execute_header, oslog, v22, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v23, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v17, v18);
      }

      else
      {
        sub_1000BB27C(v17, v18);
      }
    }
  }
}

void sub_101046944(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = *v9;
  dispatch_assert_queue_V2(*(v9 + 48));
  if (*(v9 + 160))
  {
    v32 = v18;
    v34 = *(v9 + 160);
    v19 = *(v9 + 168);
    v20 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
    if (v20 || (v21 = a1, v22 = *(v9 + 16), v33 = *(v9 + 24), v30 = v21, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v34(a3, a4, a5, a6, a7, a8);

      sub_1000BB27C(v34, v19);
    }

    else
    {
      v23 = qword_101695190;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        *v26 = 136315650;
        v35[1] = v32;
        swift_getMetatypeMetadata();
        v27 = String.init<A>(describing:)();
        v29 = sub_1000136BC(v27, v28, v35);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1000136BC(v22, v33, v35);
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_1000136BC(v30, a2, v35);
        _os_log_impl(&_mh_execute_header, oslog, v25, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v26, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v34, v19);
      }

      else
      {
        sub_1000BB27C(v34, v19);
      }
    }
  }
}

void sub_101046C6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, os_log_t, uint64_t), void (*a5)(void, void), void (*a6)(void, void, void), int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v148 = a8;
  LODWORD(v140) = a7;
  v158 = a5;
  v159 = a6;
  v139 = a4;
  v138 = a3;
  v152 = a9;
  v153 = a10;
  v14 = *v10;
  isa = v14[12].isa;
  v145 = v14[10].isa;
  v146 = isa;
  v16 = type metadata accessor for Message(255, v145, isa, a4);
  type metadata accessor for MessagingMessageContext(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  v141 = TupleTypeMetadata2;
  v147 = type metadata accessor for Result();
  v143 = *(v147 - 8);
  __chkstk_darwin(v147);
  v142 = &v135[-v18];
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v135[-v20];
  v154 = type metadata accessor for UUID();
  v156 = *(v154 - 8);
  v22 = __chkstk_darwin(v154);
  v137 = &v135[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v150 = &v135[-v25];
  v26 = __chkstk_darwin(v24);
  v151 = &v135[-v27];
  v155 = *(v16 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v135[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v28);
  v144 = &v135[-v32];
  v33 = __chkstk_darwin(v31);
  v35 = &v135[-v34];
  __chkstk_darwin(v33);
  v160 = &v135[-v36];
  dispatch_assert_queue_V2(v11[6]);
  v37 = v11[2];
  v38 = v11[3];
  v157 = a1;
  v39 = v37 == a1;
  v40 = a2;
  if (v39 && v38 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v149 = v14;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    swift_getWitnessTable();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100015794(v153, v21);
    v41 = v156;
    v42 = v154;
    if ((*(v156 + 48))(v21, 1, v154) == 1)
    {
      sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
      v43 = v155;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177C4F0);
      v156 = *(v43 + 16);
      (v156)(v30, v160, v16);

      v45 = v152;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v162[0] = v154;
        *v48 = 136315906;
        v161[0] = v149;
        swift_getMetatypeMetadata();
        v49 = String.init<A>(describing:)();
        v151 = v46;
        v51 = sub_1000136BC(v49, v50, v162);
        LODWORD(v150) = v47;
        v52 = v51;

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_1000136BC(v157, v40, v162);
        *(v48 + 22) = 2080;
        v53 = v148;
        *(v48 + 24) = sub_1000136BC(v148, v45, v162);
        *(v48 + 32) = 2080;
        v54 = v144;
        (v156)(v144, v30, v16);
        v55 = *(v155 + 8);
        v55(v30, v16);
        Message.description.getter(v16);
        v57 = v56;
        v59 = v58;
        v55(v54, v16);
        v60 = sub_1000136BC(v57, v59, v162);

        *(v48 + 34) = v60;
        v61 = v151;
        _os_log_impl(&_mh_execute_header, v151, v150, "%s: Received message on %s from %s: %s", v48, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v55 = *(v43 + 8);
        v55(v30, v16);

        v53 = v148;
      }

      v104 = v11[15];
      __chkstk_darwin(v62);
      v106 = *(v105 + 88);
      v107 = v146;
      *&v135[-64] = v145;
      *&v135[-56] = v106;
      v108 = *(v105 + 104);
      *&v135[-48] = v107;
      *&v135[-40] = v108;
      v109 = v160;
      v111 = v158;
      v110 = v159;
      *&v135[-32] = v160;
      *&v135[-24] = v111;
      *&v135[-16] = v110;
      os_unfair_lock_lock(v104 + 16);
      sub_10104B588(&v104[4]);
      os_unfair_lock_unlock(v104 + 16);
      v112 = v11[22];
      if (v112)
      {
        v113 = v11[23];
        sub_100012908(v11[22], v113);
        v114 = sub_100908F24(_swiftEmptyArrayStorage);
        (v112)(v138, v139, v140, v53, v152, v109, v114, v153);

        sub_1000BB27C(v112, v113);
      }

      v55(v109, v16);
    }

    else
    {
      v70 = v151;
      (*(v41 + 32))(v151, v21, v42);
      v71 = v155;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      v73 = sub_1000076D4(v72, qword_10177C4F0);
      v74 = v71 + 16;
      v159 = *(v71 + 16);
      v159(v35, v160, v16);
      v75 = *(v156 + 16);
      v140 = v156 + 16;
      v139 = v75;
      v75(v150, v70, v42);

      v76 = v71;
      v77 = v152;

      v145 = v73;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      v80 = os_log_type_enabled(v78, v79);
      v146 = v74;
      if (v80)
      {
        v81 = v77;
        v82 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v162[0] = v138;
        *v82 = 136316162;
        v161[0] = v149;
        swift_getMetatypeMetadata();
        v83 = String.init<A>(describing:)();
        v149 = v78;
        v85 = sub_1000136BC(v83, v84, v162);
        v136 = v79;
        v86 = v85;

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_1000136BC(v157, v40, v162);
        *(v82 + 22) = 2080;
        *(v82 + 24) = sub_1000136BC(v148, v81, v162);
        *(v82 + 32) = 2080;
        v87 = v144;
        v159(v144, v35, v16);
        v88 = *(v155 + 8);
        v88(v35, v16);
        Message.description.getter(v16);
        v90 = v89;
        v92 = v91;
        v158 = v88;
        v88(v87, v16);
        v93 = sub_1000136BC(v90, v92, v162);

        *(v82 + 34) = v93;
        *(v82 + 42) = 2080;
        sub_10104B624(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v94 = v150;
        v95 = v154;
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        v99 = *(v156 + 8);
        v99(v94, v95);
        v100 = sub_1000136BC(v96, v98, v162);

        *(v82 + 44) = v100;
        v101 = v149;
        _os_log_impl(&_mh_execute_header, v149, v136, "%s: Received message on %s from %s: %s in response to %s", v82, 0x34u);
        swift_arrayDestroy();
      }

      else
      {
        v158 = *(v76 + 8);
        v158(v35, v16);

        v99 = *(v156 + 8);
        v102 = (v99)(v150, v154);
      }

      v115 = v147;
      __chkstk_darwin(v102);
      v116 = v151;
      *&v135[-16] = v11;
      *&v135[-8] = v116;
      swift_getFunctionTypeMetadata1();
      type metadata accessor for Optional();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v117 = v161[0];
      if (v161[0])
      {
        v118 = v161[1];
        v119 = *(v141 + 48);
        v120 = v142;
        v121 = v160;
        v159(v142, v160, v16);
        sub_100D2577C(v153, &v120[v119]);
        swift_storeEnumTagMultiPayload();

        v117(v120);
        sub_1000BB27C(v117, v118);
        sub_1000BB27C(v117, v118);
        (*(v143 + 8))(v120, v115);
        v122 = v154;
      }

      else
      {
        v123 = v137;
        v124 = v116;
        v125 = v154;
        v139(v137, v124, v154);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v161[0] = v129;
          *v128 = 136315138;
          sub_10104B624(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v130 = dispatch thunk of CustomStringConvertible.description.getter();
          v131 = v123;
          v133 = v132;
          v99(v131, v125);
          v134 = sub_1000136BC(v130, v133, v161);

          *(v128 + 4) = v134;
          _os_log_impl(&_mh_execute_header, v126, v127, "Could not find promise for %s", v128, 0xCu);
          sub_100007BAC(v129);
        }

        else
        {

          v99(v123, v125);
        }

        v121 = v160;
        v122 = v125;
        v116 = v151;
      }

      v99(v116, v122);
      v158(v121, v16);
    }
  }

  else
  {
    v63 = v14;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177C4F0);

    v160 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v160, v65))
    {
      v66 = swift_slowAlloc();
      v162[0] = swift_slowAlloc();
      *v66 = 136315650;
      v161[0] = v63;
      swift_getMetatypeMetadata();
      v67 = String.init<A>(describing:)();
      v69 = sub_1000136BC(v67, v68, v162);

      *(v66 + 4) = v69;
      *(v66 + 12) = 2080;
      *(v66 + 14) = sub_1000136BC(v37, v38, v162);
      *(v66 + 22) = 2080;
      *(v66 + 24) = sub_1000136BC(v157, a2, v162);
      _os_log_impl(&_mh_execute_header, v160, v65, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v66, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v103 = v160;
    }
  }
}

uint64_t sub_101047E68@<X0>(uint64_t *a1@<X0>, __int128 *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  type metadata accessor for UUID();
  type metadata accessor for Message(255, *(v4 + 80), *(v4 + 96), v5);
  type metadata accessor for MessagingMessageContext(255);
  swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  sub_10104B624(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  Dictionary.subscript.getter();
  *a3 = v7;
  return swift_endAccess();
}

uint64_t sub_101047FE0(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 32) + 16) || (sub_100771C94(a1, a2), (v9 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v3 + 32);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v3 + 32) = v32;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 32);
  v33 = *(v5 + 32);
  result = sub_100771C94(a1, v7);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v14;
  if (*(v12 + 24) >= v18)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v18, v11);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v19 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v11)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v27 = *(v33 + 56) + 16 * result;
    v29 = *(v27 + 8);
    v28 = (v27 + 8);
    v30 = v29 + a3;
    if (!__CFADD__(v29, a3))
    {
      *v28 = v30;
      *(v5 + 32) = v33;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v31 = result;
      sub_10100E980();
      result = v31;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v20 = (*(v33 + 56) + 16 * result);
      if (__OFADD__(*v20, 1))
      {
        break;
      }

      ++*v20;
      *(v5 + 32) = v33;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v11 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v5 + 32);
      v33 = v21;
      result = sub_100771C94(a1, v7);
      v23 = *(v21 + 16);
      v24 = (v22 & 1) == 0;
      v17 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (!v17)
      {
        v4 = v22;
        if (*(v21 + 24) >= v25)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v25, v11);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v26 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_101048214(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v79 = a8;
  v78 = a7;
  v75 = a3;
  v76 = a4;
  v77 = a10;
  v81 = a9;
  v14 = *v10;
  v15 = *(*v10 + 96);
  v73 = *(*v10 + 80);
  v74 = v15;
  v16 = type metadata accessor for Message(0, v73, v15, a4);
  v80 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v24 = (&v64 - v23);
  dispatch_assert_queue_V2(v10[6]);
  v25 = v10[22];
  if (v25)
  {
    v71 = a6;
    v72 = v14;
    v82 = v25;
    v83 = v10[23];
    v26 = v10[2];
    v27 = v10[3];
    if (v26 == a1 && v27 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v28 = Data.init(contentsOf:options:)();
      v30 = v29;
      v70 = v10;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      swift_getWitnessTable();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v68 = v28;
      v69 = v30;
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177C4F0);
      v40 = v80;
      v66 = *(v80 + 16);
      v66(v22, v24, v16);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      v67 = v42;
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v84 = v65;
        *v43 = 136315650;
        v85 = v72;
        swift_getMetatypeMetadata();
        v44 = String.init<A>(describing:)();
        v64 = v41;
        v46 = sub_1000136BC(v44, v45, &v84);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_1000136BC(v79, v81, &v84);
        *(v43 + 22) = 2080;
        v66(v19, v22, v16);
        v47 = *(v80 + 8);
        v47(v22, v16);
        Message.description.getter(v16);
        v49 = v48;
        v51 = v50;
        v47(v19, v16);
        v52 = sub_1000136BC(v49, v51, &v84);

        *(v43 + 24) = v52;
        v53 = v64;
        _os_log_impl(&_mh_execute_header, v64, v67, "%s: Received resource from %s: %s", v43, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v47 = *(v40 + 8);
        v47(v22, v16);
      }

      v55 = v70[15];
      __chkstk_darwin(v54);
      v57 = *(v56 + 88);
      v58 = v74;
      *(&v64 - 8) = v73;
      *(&v64 - 7) = v57;
      v59 = *(v56 + 104);
      *(&v64 - 6) = v58;
      *(&v64 - 5) = v59;
      v61 = v68;
      v60 = v69;
      *(&v64 - 4) = v24;
      *(&v64 - 3) = v61;
      *(&v64 - 2) = v60;
      os_unfair_lock_lock(v55 + 16);
      sub_10104B55C(&v55[4]);
      os_unfair_lock_unlock(v55 + 16);
      v62 = v82;
      v63 = v83;
      v82(v75, v76, v78, v79, v81, v24, v71, v77);
      sub_100016590(v61, v60);
      sub_1000BB27C(v62, v63);
      v47(v24, v16);
    }

    else
    {
      v31 = qword_101695190;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177C4F0);

      v81 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v33))
      {
        v34 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v34 = 136315650;
        v85 = v72;
        swift_getMetatypeMetadata();
        v35 = String.init<A>(describing:)();
        v37 = sub_1000136BC(v35, v36, &v84);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1000136BC(v26, v27, &v84);
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_1000136BC(a1, a2, &v84);
        _os_log_impl(&_mh_execute_header, v81, v33, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v34, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v82, v83);
      }

      else
      {
        sub_1000BB27C(v82, v83);
        v38 = v81;
      }
    }
  }
}

uint64_t sub_101048B2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = type metadata accessor for Message(0, a5, a7, v14);
  v16 = *(a2 + *(result + 36));
  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v18 = 0;
    if (v17 != 2)
    {
      return a9(v21, v16, v18);
    }

    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      return a9(v21, v16, v18);
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a4);
    return a9(v21, v16, v18);
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v18 = HIDWORD(a3) - a3;
    return a9(v21, v16, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_101048C14(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 40) + 16) || (sub_100771C94(a1, a2), (v9 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v3 + 40);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v32;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 40);
  v33 = *(v5 + 40);
  result = sub_100771C94(a1, v7);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v14;
  if (*(v12 + 24) >= v18)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v18, v11);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v19 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v11)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v27 = *(v33 + 56) + 16 * result;
    v29 = *(v27 + 8);
    v28 = (v27 + 8);
    v30 = v29 + a3;
    if (!__CFADD__(v29, a3))
    {
      *v28 = v30;
      *(v5 + 40) = v33;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v31 = result;
      sub_10100E980();
      result = v31;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v20 = (*(v33 + 56) + 16 * result);
      if (__OFADD__(*v20, 1))
      {
        break;
      }

      ++*v20;
      *(v5 + 40) = v33;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v11 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v5 + 40);
      v33 = v21;
      result = sub_100771C94(a1, v7);
      v23 = *(v21 + 16);
      v24 = (v22 & 1) == 0;
      v17 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (!v17)
      {
        v4 = v22;
        if (*(v21 + 24) >= v25)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v25, v11);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v26 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_101048E48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 192);
  if (v9)
  {
    v10 = *(v4 + 200);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v9(a3);

      sub_1000BB27C(v9, v10);
    }

    else
    {
      v14 = qword_101695190;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        v22[1] = v8;
        *v17 = 136315650;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_1000136BC(v18, v19, v22);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1000136BC(v11, v12, v22);
        *(v17 + 22) = 2080;
        *(v17 + 24) = sub_1000136BC(a1, a2, v22);
        _os_log_impl(&_mh_execute_header, oslog, v16, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v17, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9, v10);
      }

      else
      {
        sub_1000BB27C(v9, v10);
      }
    }
  }
}

void sub_10104912C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 208);
  if (v9)
  {
    v10 = *(v4 + 216);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v9(a3);

      sub_1000BB27C(v9, v10);
    }

    else
    {
      v14 = qword_101695190;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        v22[1] = v8;
        *v17 = 136315650;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_1000136BC(v18, v19, v22);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1000136BC(v11, v12, v22);
        *(v17 + 22) = 2080;
        *(v17 + 24) = sub_1000136BC(a1, a2, v22);
        _os_log_impl(&_mh_execute_header, oslog, v16, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v17, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9, v10);
      }

      else
      {
        sub_1000BB27C(v9, v10);
      }
    }
  }
}

void sub_101049410(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 224);
  if (v9)
  {
    v10 = *(v4 + 232);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v9(a3);

      sub_1000BB27C(v9, v10);
    }

    else
    {
      v14 = qword_101695190;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        v22[1] = v8;
        *v17 = 136315650;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_1000136BC(v18, v19, v22);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1000136BC(v11, v12, v22);
        *(v17 + 22) = 2080;
        *(v17 + 24) = sub_1000136BC(a1, a2, v22);
        _os_log_impl(&_mh_execute_header, oslog, v16, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v17, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9, v10);
      }

      else
      {
        sub_1000BB27C(v9, v10);
      }
    }
  }
}

BOOL sub_10104973C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_101049764(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_10104978C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_1010497B4(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

Swift::Int sub_1010497DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10104983C()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10104987C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1010498D8()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 118;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

unint64_t sub_101049994()
{
  p_countAndFlagsBits = &v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(38);

  v76._countAndFlagsBits = 0xD000000000000022;
  v76._object = 0x8000000101378BB0;
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 2570;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v77 = 0xD000000000000022;
  v78 = 0x8000000101378BB0;
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v71 = v0;
  if (!*(countAndFlagsBits + 16))
  {
    goto LABEL_13;
  }

  v4._countAndFlagsBits = 0xA3A646E6553;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v5 = *(countAndFlagsBits + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_1003A85E8(*(countAndFlagsBits + 16), 0);
  v7 = sub_1003A8EB8(&v76, (v6 + 4), v5, countAndFlagsBits);
  v8 = v76._countAndFlagsBits;

  sub_1000128F8(v8);
  if (v7 != v5)
  {
    __break(1u);
LABEL_5:
    v6 = _swiftEmptyArrayStorage;
  }

  v76._countAndFlagsBits = v6;
  sub_101045534(&v76);
  v9 = *(v76._countAndFlagsBits + 16);
  if (v9)
  {
    v10 = (v76._countAndFlagsBits + 40);
    do
    {
      if (*(countAndFlagsBits + 16))
      {
        sub_100771C94(*(v10 - 2), *v10);
        if (v11)
        {
          v76._countAndFlagsBits = 0;
          v76._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v76._countAndFlagsBits = 8224;
          v76._object = 0xE200000000000000;
          v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v72._object = v12;
          v13._countAndFlagsBits = 118;
          v13._object = 0xE100000000000000;
          String.append(_:)(v13);
          v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v14);

          String.append(_:)(v72);

          v15._countAndFlagsBits = 8250;
          v15._object = 0xE200000000000000;
          String.append(_:)(v15);
          v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v16);

          v17._countAndFlagsBits = 23328;
          v17._object = 0xE200000000000000;
          String.append(_:)(v17);
          v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v18);

          v19._countAndFlagsBits = 0xA5D736574796220;
          v19._object = 0xE800000000000000;
          String.append(_:)(v19);
          String.append(_:)(v76);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  p_countAndFlagsBits = &v71->_countAndFlagsBits;
LABEL_13:
  v20 = p_countAndFlagsBits[3];
  if (!*(v20 + 16))
  {
    goto LABEL_26;
  }

  v21._countAndFlagsBits = 0x73655220646E6553;
  v21._object = 0xEF0A3A656372756FLL;
  String.append(_:)(v21);
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = sub_1003A85E8(*(v20 + 16), 0);
    v24 = sub_1003A8EB8(&v76, (v23 + 4), v22, v20);
    p_countAndFlagsBits = v76._countAndFlagsBits;

    sub_1000128F8(p_countAndFlagsBits);
    if (v24 != v22)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v76._countAndFlagsBits = v23;
  sub_101045534(&v76);
  v25 = *(v76._countAndFlagsBits + 16);
  if (v25)
  {
    v26 = (v76._countAndFlagsBits + 40);
    do
    {
      if (*(v20 + 16))
      {
        sub_100771C94(*(v26 - 2), *v26);
        if (v27)
        {
          v76._countAndFlagsBits = 0;
          v76._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v76._countAndFlagsBits = 8224;
          v76._object = 0xE200000000000000;
          v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v73._object = v28;
          v29._countAndFlagsBits = 118;
          v29._object = 0xE100000000000000;
          String.append(_:)(v29);
          v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v30);

          String.append(_:)(v73);

          v31._countAndFlagsBits = 8250;
          v31._object = 0xE200000000000000;
          String.append(_:)(v31);
          v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v32);

          v33._countAndFlagsBits = 23328;
          v33._object = 0xE200000000000000;
          String.append(_:)(v33);
          v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0xA5D736574796220;
          v35._object = 0xE800000000000000;
          String.append(_:)(v35);
          String.append(_:)(v76);
        }
      }

      v26 += 2;
      --v25;
    }

    while (v25);
  }

  p_countAndFlagsBits = &v71->_countAndFlagsBits;
LABEL_26:
  v36 = p_countAndFlagsBits[4];
  if (!*(v36 + 16))
  {
    goto LABEL_38;
  }

  v37._countAndFlagsBits = 0x3A65766965636552;
  v37._object = 0xE90000000000000ALL;
  String.append(_:)(v37);
  v38 = *(v36 + 16);
  if (!v38)
  {
    goto LABEL_30;
  }

  v39 = sub_1003A85E8(*(v36 + 16), 0);
  v40 = sub_1003A8EB8(&v76, (v39 + 4), v38, v36);
  v41 = v76._countAndFlagsBits;

  sub_1000128F8(v41);
  if (v40 != v38)
  {
    __break(1u);
LABEL_30:
    v39 = _swiftEmptyArrayStorage;
  }

  v76._countAndFlagsBits = v39;
  sub_101045534(&v76);
  v42 = *(v76._countAndFlagsBits + 16);
  if (v42)
  {
    v43 = (v76._countAndFlagsBits + 40);
    do
    {
      if (*(v36 + 16))
      {
        sub_100771C94(*(v43 - 2), *v43);
        if (v44)
        {
          v76._countAndFlagsBits = 0;
          v76._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v76._countAndFlagsBits = 8224;
          v76._object = 0xE200000000000000;
          v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v74._object = v45;
          v46._countAndFlagsBits = 118;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v47);

          String.append(_:)(v74);

          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v49);

          v50._countAndFlagsBits = 23328;
          v50._object = 0xE200000000000000;
          String.append(_:)(v50);
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 0xA5D736574796220;
          v52._object = 0xE800000000000000;
          String.append(_:)(v52);
          String.append(_:)(v76);
        }
      }

      v43 += 2;
      --v42;
    }

    while (v42);
  }

  p_countAndFlagsBits = &v71->_countAndFlagsBits;
LABEL_38:
  v53 = p_countAndFlagsBits[5];
  if (!*(v53 + 16))
  {
    return v77;
  }

  v54._object = 0x8000000101378BE0;
  v54._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v54);
  v55 = *(v53 + 16);
  if (!v55)
  {
    goto LABEL_42;
  }

  v56 = sub_1003A85E8(*(v53 + 16), 0);
  v57 = sub_1003A8EB8(&v76, (v56 + 4), v55, v53);
  v58 = v76._countAndFlagsBits;

  sub_1000128F8(v58);
  if (v57 != v55)
  {
    __break(1u);
LABEL_42:
    v56 = _swiftEmptyArrayStorage;
  }

  v76._countAndFlagsBits = v56;
  sub_101045534(&v76);
  v59 = *(v76._countAndFlagsBits + 16);
  if (v59)
  {
    v60 = (v76._countAndFlagsBits + 40);
    do
    {
      if (*(v53 + 16))
      {
        sub_100771C94(*(v60 - 2), *v60);
        if (v61)
        {
          v76._countAndFlagsBits = 0;
          v76._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v76._countAndFlagsBits = 8224;
          v76._object = 0xE200000000000000;
          v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v75._object = v62;
          v63._countAndFlagsBits = 118;
          v63._object = 0xE100000000000000;
          String.append(_:)(v63);
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v64);

          String.append(_:)(v75);

          v65._countAndFlagsBits = 8250;
          v65._object = 0xE200000000000000;
          String.append(_:)(v65);
          v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v66);

          v67._countAndFlagsBits = 23328;
          v67._object = 0xE200000000000000;
          String.append(_:)(v67);
          v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v68);

          v69._countAndFlagsBits = 0xA5D736574796220;
          v69._object = 0xE800000000000000;
          String.append(_:)(v69);
          String.append(_:)(v76);
        }
      }

      v60 += 2;
      --v59;
    }

    while (v59);
  }

  return v77;
}

Swift::Int sub_10104A440(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10104A5CC(v7, v8, a1, v4);
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
    return sub_10104A538(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10104A538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v8 < *v11;
      if (v8 == *v11)
      {
        v12 = v9 < *(v11 + 8);
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10104A5CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100B31E68(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_10104AB98((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_100B31DDC(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v13 < *v16;
      if (v13 == *v16)
      {
        v17 = v14 < *(v16 + 8);
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 2);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = v22 >= v14;
        v24 = v20 == v13;
        v25 = v20 >= v13;
        if (v24)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v26)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v27 = 0;
        v28 = 16 * v9;
        v29 = v11;
        do
        {
          if (v29 != v9 + v27 - 1)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v30 = (v34 + v15);
            v31 = v34 + v28;
            v32 = *v30;
            v33 = *(v30 + 1);
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v29;
          --v27;
          v28 -= 16;
          v15 += 16;
        }

        while (v29 < v9 + v27);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_64:
          if (v53)
          {
            goto LABEL_111;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_118;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_78:
        if (v71)
        {
          goto LABEL_113;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_116;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_85:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_107:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_10104AB98((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_100B31DDC(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v35 = *a3;
  v36 = *a3 + 16 * v9 - 16;
  v37 = v11 - v9;
LABEL_35:
  v38 = (v35 + 16 * v9);
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 < *v42;
    if (v39 == *v42)
    {
      v43 = v40 < *(v42 + 8);
    }

    if (!v43)
    {
LABEL_34:
      ++v9;
      v36 += 16;
      --v37;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v35)
    {
      break;
    }

    *(v42 + 16) = *v42;
    *v42 = v39;
    *(v42 + 8) = v40;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_10104AB98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 < *v4;
      if (*v6 == *v4)
      {
        v17 = *(v6 + 1) < *(v4 + 1);
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 4);
      v23 = v20 < v22;
      if (v20 == v22)
      {
        v23 = *(v19 + 8) < *(v6 - 1);
      }

      if (v23)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

unint64_t sub_10104ADD4()
{
  result = qword_1016B2A58;
  if (!qword_1016B2A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B2A58);
  }

  return result;
}

void sub_10104AE20(void *a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  v71 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v71);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v7 + 48));
  v17 = *(v7 + 240);
  if (v17)
  {
    v74 = a5;
    v66 = a2;
    v69 = a3;
    v18 = qword_101695190;
    v72 = *(v7 + 248);

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_1000076D4(v19, qword_10177C4F0);
    v21 = a1;

    v22 = v74;
    sub_100017D5C(v74, a6);
    v73 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    sub_100016590(v22, a6);
    LODWORD(v68) = v24;
    v25 = os_log_type_enabled(v23, v24);
    v67 = v16;
    v70 = a6;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75[0] = v64;
      *v26 = 136315906;
      *&v76[0] = v14;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, v75);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = v21;
      v31 = [v30 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v21;
      v33 = a4;
      v34 = v17;
      v35 = v32;
      v65 = v14;
      v37 = v36;

      v38 = v35;
      v17 = v34;
      a4 = v33;
      v39 = sub_1000136BC(v38, v37, v75);

      *(v26 + 14) = v39;
      *(v26 + 22) = 2080;
      *(v26 + 24) = sub_1000136BC(v69, v33, v75);
      *(v26 + 32) = 2080;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, v75);
      v14 = v65;

      *(v26 + 34) = v42;
      _os_log_impl(&_mh_execute_header, v23, v68, "%s: inviteReceivedFor %s fromId: %s withContext: %s", v26, 0x2Au);
      swift_arrayDestroy();
      v43 = v63;
    }

    else
    {

      v43 = v21;
    }

    v44 = *(v14 + 96);
    v76[0] = *(v14 + 80);
    v76[1] = v44;
    type metadata accessor for MessagingSession(0, v76);
    v45 = *(v7 + 96);
    v46 = *(v7 + 104);
    v47 = *(v7 + 112);
    v48 = v43;

    v49 = sub_10048F754(v48, v7, v47, v45, v46);
    swift_retain_n();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v68 = a4;
      v53 = v52;
      v75[0] = swift_slowAlloc();
      *v53 = 136315394;
      *&v76[0] = v14;
      swift_getMetatypeMetadata();
      v54 = String.init<A>(describing:)();
      v56 = sub_1000136BC(v54, v55, v75);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v57 = sub_10048F5C4();
      v59 = v58;

      v60 = sub_1000136BC(v57, v59, v75);

      *(v53 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s: session: %s", v53, 0x16u);
      swift_arrayDestroy();

      a4 = v68;
    }

    else
    {
    }

    v61 = v67;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10104B624(&qword_1016A2A78, type metadata accessor for BeaconSharingSessionContext, &unk_1013AC00C);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v62 = v72;
    v17(v61, v66, v69, a4, v49);
    sub_1000BB27C(v17, v62);

    sub_1004F20F0(v61);
  }
}

uint64_t sub_10104B624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10104B68C()
{
  result = qword_1016C4228[0];
  if (!qword_1016C4228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016C4228);
  }

  return result;
}

uint64_t sub_10104B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FailableRecordSequence(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10104B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v51 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for FailableRecord(255, v5, a3, a4);
  v7 = type metadata accessor for Optional();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = *(v6 - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = *(a1 + 24);
  v52 = v5;
  v19 = type metadata accessor for FailableRecordSequence(255, v5, v17, v18);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - v23;
  v25 = *(v19 - 8);
  __chkstk_darwin(v22);
  v27 = &v45 - v26;
  v28 = *(v21 + 16);
  v50 = v29;
  v28(v24, v53);
  if ((*(v25 + 48))(v24, 1, v19) == 1)
  {
    (*(v21 + 8))(v24, v50);
    v30 = *(v52 - 8);
    v31 = 1;
LABEL_8:
    v42 = v51;
    return (*(v30 + 56))(v42, v31, 1);
  }

  v46 = v21;
  v47 = v25;
  (*(v25 + 32))(v27, v24, v19);
  v54 = v19;
  sub_100B7A2D0(v19, v10, v32, v33);
  v34 = *(v11 + 48);
  if (v34(v10, 1, v6) == 1)
  {
LABEL_7:
    v38 = v47;
    v39 = v27;
    v40 = v54;
    (*(v47 + 8))(v39, v54);
    (*(v48 + 8))(v10, v49);
    v41 = v53;
    (*(v46 + 8))(v53, v50);
    (*(v38 + 56))(v41, 1, 1, v40);
    v31 = 1;
    v30 = *(v52 - 8);
    goto LABEL_8;
  }

  v35 = *(v11 + 32);
  while (1)
  {
    v35(v16, v10, v6);
    v35(v14, v16, v6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    (*(v11 + 8))(v14, v6);
    sub_100B7A2D0(v54, v10, v36, v37);
    if (v34(v10, 1, v6) == 1)
    {
      goto LABEL_7;
    }
  }

  (*(v47 + 8))(v27, v54);
  v44 = v51;
  v30 = *(v52 - 8);
  (*(v30 + 32))(v51, v14, v52);
  v42 = v44;
  v31 = 0;
  return (*(v30 + 56))(v42, v31, 1);
}

uint64_t sub_10104BCCC(uint64_t a1, uint64_t a2)
{
  v4 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

unint64_t sub_10104BD74()
{
  result = qword_1016C42B0;
  if (!qword_1016C42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C42B0);
  }

  return result;
}

__n128 sub_10104BDC8@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, uint64_t a8@<X6>, unint64_t a9@<X7>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  sub_10104C8B4(a2, a3, a4, a5, a6, a7, a8, a9, v20, a10, a11, a12, a13);
  v14 = v20[11];
  *(a1 + 160) = v20[10];
  *(a1 + 176) = v14;
  *(a1 + 192) = v21;
  v15 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v15;
  v16 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v16;
  v17 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v17;
  v18 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v18;
  result = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10104BE58@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = a1;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  if (!v2)
  {
    v10[0] = v12;
    sub_100A2272C(v10);
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10104BF58()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_10104C888(v9);
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        sub_1000140D8(v9);
        return 10;
      }

      else if (v7 == 10)
      {
        return 0;
      }

      else
      {
        return 11;
      }
    }

    else if (v7 == 6)
    {
      sub_1000140D8(v9);
      return 7;
    }

    else if (v7 == 7)
    {
      sub_1000140D8(v9);
      return 8;
    }

    else
    {
      sub_1000140D8(v9);
      return 9;
    }
  }

  else if (v7 > 2)
  {
    if (v7 == 3)
    {
      sub_1000140D8(v9);
      return 4;
    }

    else if (v7 == 4)
    {
      sub_1000140D8(v9);
      return 5;
    }

    else
    {
      sub_1000140D8(v9);
      return 6;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_1000140D8(v9);
      return 2;
    }

    else
    {
      sub_1000140D8(v9);
      return 3;
    }
  }

  else
  {
    sub_1000140D8(v9);
    return 1;
  }
}

unint64_t sub_10104C0B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v111[10] = v1[10];
  v111[11] = v3;
  v112 = *(v1 + 24);
  v4 = v1[7];
  v111[6] = v1[6];
  v111[7] = v4;
  v5 = v1[9];
  v111[8] = v1[8];
  v111[9] = v5;
  v6 = v1[3];
  v111[2] = v1[2];
  v111[3] = v6;
  v7 = v1[5];
  v111[4] = v1[4];
  v111[5] = v7;
  v8 = v1[1];
  v111[0] = *v1;
  v111[1] = v8;
  v9 = sub_10104C888(v111);
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v57 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
        a1[4] = sub_100A1DAB0();
        v58 = swift_allocObject();
        *a1 = v58;
        memmove((v58 + 16), v57, 0xB8uLL);
        v59 = v1[11];
        v108 = v1[10];
        v109 = v59;
        v110 = *(v1 + 24);
        v60 = v1[7];
        v104 = v1[6];
        v105 = v60;
        v61 = v1[9];
        v106 = v1[8];
        v107 = v61;
        v62 = v1[3];
        v100 = v1[2];
        v101 = v62;
        v63 = v1[5];
        v102 = v1[4];
        v103 = v63;
        v64 = v1[1];
        v98 = *v1;
        v99 = v64;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BA0;
        v20 = &unk_1013F9C10;
      }

      else if (v9 == 4)
      {
        v25 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
        a1[4] = sub_100A1DB08();
        v26 = swift_allocObject();
        *a1 = v26;
        memmove((v26 + 16), v25, 0xC8uLL);
        v27 = v1[11];
        v108 = v1[10];
        v109 = v27;
        v110 = *(v1 + 24);
        v28 = v1[7];
        v104 = v1[6];
        v105 = v28;
        v29 = v1[9];
        v106 = v1[8];
        v107 = v29;
        v30 = v1[3];
        v100 = v1[2];
        v101 = v30;
        v31 = v1[5];
        v102 = v1[4];
        v103 = v31;
        v32 = v1[1];
        v98 = *v1;
        v99 = v32;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1B98;
        v20 = &unk_1013D1350;
      }

      else
      {
        v89 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSWFinalizePairingCommandPayload;
        a1[4] = sub_100391AEC();
        v90 = swift_allocObject();
        *a1 = v90;
        memmove((v90 + 16), v89, 0x70uLL);
        v91 = v1[11];
        v108 = v1[10];
        v109 = v91;
        v110 = *(v1 + 24);
        v92 = v1[7];
        v104 = v1[6];
        v105 = v92;
        v93 = v1[9];
        v106 = v1[8];
        v107 = v93;
        v94 = v1[3];
        v100 = v1[2];
        v101 = v94;
        v95 = v1[5];
        v102 = v1[4];
        v103 = v95;
        v96 = v1[1];
        v98 = *v1;
        v99 = v96;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_10169EAB0;
        v20 = &unk_1013F9C00;
      }
    }

    else
    {
      if (!v9)
      {
        v34 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v35 = swift_allocObject();
        *a1 = v35;
        v36 = v34[1];
        *(v35 + 16) = *v34;
        *(v35 + 32) = v36;
        v37 = v1[3];
        v100 = v1[2];
        v101 = v37;
        v38 = v1[1];
        v98 = *v1;
        v99 = v38;
        v39 = v1[7];
        v104 = v1[6];
        v105 = v39;
        v40 = v1[5];
        v102 = v1[4];
        v103 = v40;
        v110 = *(v1 + 24);
        v41 = v1[11];
        v108 = v1[10];
        v109 = v41;
        v42 = v1[9];
        v106 = v1[8];
        v107 = v42;
        v43 = sub_1000140D8(&v98);
        v44 = v43[2];
        v45 = v43[3];
        sub_100017D5C(*v43, v43[1]);
        return sub_100017D5C(v44, v45);
      }

      if (v9 == 1)
      {
        v10 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsInitiatePairingCommandPayload;
        a1[4] = sub_100A1D950();
        v11 = swift_allocObject();
        *a1 = v11;
        memmove((v11 + 16), v10, 0x50uLL);
        v12 = v1[11];
        v108 = v1[10];
        v109 = v12;
        v110 = *(v1 + 24);
        v13 = v1[7];
        v104 = v1[6];
        v105 = v13;
        v14 = v1[9];
        v106 = v1[8];
        v107 = v14;
        v15 = v1[3];
        v100 = v1[2];
        v101 = v15;
        v16 = v1[5];
        v102 = v1[4];
        v103 = v16;
        v17 = v1[1];
        v98 = *v1;
        v99 = v17;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BB0;
        v20 = &unk_1013F9C20;
      }

      else
      {
        v73 = sub_1000140D8(v111);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
        a1[4] = sub_100A1DA58();
        v74 = swift_allocObject();
        *a1 = v74;
        memmove((v74 + 16), v73, 0xB8uLL);
        v75 = v1[11];
        v108 = v1[10];
        v109 = v75;
        v110 = *(v1 + 24);
        v76 = v1[7];
        v104 = v1[6];
        v105 = v76;
        v77 = v1[9];
        v106 = v1[8];
        v107 = v77;
        v78 = v1[3];
        v100 = v1[2];
        v101 = v78;
        v79 = v1[5];
        v102 = v1[4];
        v103 = v79;
        v80 = v1[1];
        v98 = *v1;
        v99 = v80;
        v18 = sub_1000140D8(&v98);
        v19 = &unk_1016B1BA8;
        v20 = &unk_1013D1360;
      }
    }

    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 <= 8)
  {
    if (v9 != 6)
    {
      if (v9 == 7)
      {
        v21 = sub_1000140D8(v111);
        v22 = *v21;
        v23 = v21[1];
        a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        v24 = sub_100391A98();
      }

      else
      {
        v81 = sub_1000140D8(v111);
        v22 = *v81;
        v23 = v81[1];
        a1[3] = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        v24 = sub_100A1D9A8();
      }

      a1[4] = v24;
      *a1 = v22;
      a1[1] = v23;
      v82 = v1[11];
      v108 = v1[10];
      v109 = v82;
      v110 = *(v1 + 24);
      v83 = v1[7];
      v104 = v1[6];
      v105 = v83;
      v84 = v1[9];
      v106 = v1[8];
      v107 = v84;
      v85 = v1[3];
      v100 = v1[2];
      v101 = v85;
      v86 = v1[5];
      v102 = v1[4];
      v103 = v86;
      v87 = v1[1];
      v98 = *v1;
      v99 = v87;
      v88 = sub_1000140D8(&v98);
      return sub_100017D5C(*v88, *(v88 + 8));
    }

    v46 = sub_1000140D8(v111);
    a1[3] = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
    a1[4] = sub_100101224();
    v47 = swift_allocObject();
    *a1 = v47;
    v48 = v46[3];
    v50 = *v46;
    v49 = v46[1];
    v47[3] = v46[2];
    v47[4] = v48;
    v47[1] = v50;
    v47[2] = v49;
    v51 = v1[11];
    v108 = v1[10];
    v109 = v51;
    v110 = *(v1 + 24);
    v52 = v1[7];
    v104 = v1[6];
    v105 = v52;
    v53 = v1[9];
    v106 = v1[8];
    v107 = v53;
    v54 = v1[3];
    v100 = v1[2];
    v101 = v54;
    v55 = v1[5];
    v102 = v1[4];
    v103 = v55;
    v56 = v1[1];
    v98 = *v1;
    v99 = v56;
    v18 = sub_1000140D8(&v98);
    v19 = &qword_101697310;
    v20 = &qword_10139E330;
    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 == 9)
  {
    v65 = sub_1000140D8(v111);
    a1[3] = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
    a1[4] = sub_100A1DA00();
    v66 = swift_allocObject();
    *a1 = v66;
    memmove((v66 + 16), v65, 0x58uLL);
    v67 = v1[11];
    v108 = v1[10];
    v109 = v67;
    v110 = *(v1 + 24);
    v68 = v1[7];
    v104 = v1[6];
    v105 = v68;
    v69 = v1[9];
    v106 = v1[8];
    v107 = v69;
    v70 = v1[3];
    v100 = v1[2];
    v101 = v70;
    v71 = v1[5];
    v102 = v1[4];
    v103 = v71;
    v72 = v1[1];
    v98 = *v1;
    v99 = v72;
    v18 = sub_1000140D8(&v98);
    v19 = &unk_1016B1B88;
    v20 = &unk_1013D1340;
    return sub_1000D2A70(v18, v97, v19, v20);
  }

  if (v9 == 10)
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

unint64_t sub_10104C734(uint64_t a1)
{
  *(a1 + 8) = sub_10104C764();
  result = sub_10104C7B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10104C764()
{
  result = qword_1016C4450;
  if (!qword_1016C4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4450);
  }

  return result;
}

unint64_t sub_10104C7B8()
{
  result = qword_1016C4458;
  if (!qword_1016C4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4458);
  }

  return result;
}

uint64_t sub_10104C888(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10104C8B4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a8 >> 62;
  v81 = result;
  if ((a8 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v19 = *(a7 + 16);
      v18 = *(a7 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v20)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v16 = a8;
      v15 = a2;
    }

    else
    {
      v16 = a8;
      v15 = a2;
      v17 = 0;
    }
  }

  else if (v14)
  {
    LODWORD(v17) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v16 = a8;
    v15 = a2;
    v17 = v17;
  }

  else
  {
    v15 = a2;
    v16 = a8;
    v17 = BYTE6(a8);
  }

  v95 = v17;
  sub_1000C3258();
  v21 = FixedWidthInteger.data.getter();
  v23 = v22;
  v24 = Data.trimmed.getter();
  v74 = v25;
  v75 = v24;
  result = sub_100016590(v21, v23);
  if (a11 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = a10;
  }

  v27 = 0xC000000000000000;
  if (a11 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = a11;
  }

  if (a13 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = a12;
  }

  if (a13 >> 60 != 15)
  {
    v27 = a13;
  }

  v30 = v15;
  v31 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    v32 = v16;
    if (!v31)
    {
      v33 = BYTE6(v30);
      v34 = a4;
      v35 = a3;
      v36 = v81;
LABEL_30:
      v37 = a7;
      goto LABEL_31;
    }

LABEL_28:
    v36 = v81;
    LODWORD(v33) = HIDWORD(v81) - v81;
    if (__OFSUB__(HIDWORD(v81), v81))
    {
      __break(1u);
      goto LABEL_95;
    }

    v33 = v33;
    v34 = a4;
    v35 = a3;
    goto LABEL_30;
  }

  v34 = a4;
  v35 = a3;
  v32 = v16;
  v37 = a7;
  v36 = v81;
  if (v31 != 2)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v39 = *(v81 + 16);
  v38 = *(v81 + 24);
  v20 = __OFSUB__(v38, v39);
  v33 = v38 - v39;
  if (v20)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_31:
  if (v33 != 114)
  {
    goto LABEL_103;
  }

  v40 = v34 >> 62;
  if ((v34 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v34);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v41) = HIDWORD(v35) - v35;
    if (!__OFSUB__(HIDWORD(v35), v35))
    {
      v41 = v41;
      goto LABEL_41;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v40 != 2)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v43 = *(v35 + 16);
  v42 = *(v35 + 24);
  v20 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v20)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v41 != 32)
  {
    goto LABEL_104;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      v44 = BYTE6(v32);
LABEL_51:
      v46 = a5;
      v45 = a6;
      v48 = v74;
      v47 = v75;
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v46 = a5;
  v45 = a6;
  v48 = v74;
  v47 = v75;
  if (v14 != 2)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v50 = *(v37 + 16);
  v49 = *(v37 + 24);
  v20 = __OFSUB__(v49, v50);
  v44 = v49 - v50;
  if (v20)
  {
    __break(1u);
LABEL_49:
    LODWORD(v44) = HIDWORD(v37) - v37;
    if (!__OFSUB__(HIDWORD(v37), v37))
    {
      v44 = v44;
      goto LABEL_51;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_52:
  if (v44 != 100)
  {
    goto LABEL_105;
  }

  v51 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE6(v48);
      goto LABEL_62;
    }

LABEL_60:
    LODWORD(v52) = HIDWORD(v47) - v47;
    if (!__OFSUB__(HIDWORD(v47), v47))
    {
      v52 = v52;
      goto LABEL_62;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v51 != 2)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v54 = *(v47 + 16);
  v53 = *(v47 + 24);
  v20 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v20)
  {
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  if (v52 != 1)
  {
    goto LABEL_106;
  }

  v55 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v55)
    {
      v56 = BYTE6(v45);
      goto LABEL_72;
    }

LABEL_70:
    LODWORD(v56) = HIDWORD(v46) - v46;
    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      v56 = v56;
      goto LABEL_72;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v55 != 2)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v58 = *(v46 + 16);
  v57 = *(v46 + 24);
  v20 = __OFSUB__(v57, v58);
  v56 = v57 - v58;
  if (v20)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_72:
  if (v56 != 60)
  {
    goto LABEL_107;
  }

  v59 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v59)
    {
      v60 = BYTE6(v28);
      goto LABEL_82;
    }

LABEL_80:
    LODWORD(v60) = HIDWORD(v26) - v26;
    if (!__OFSUB__(HIDWORD(v26), v26))
    {
      v60 = v60;
      goto LABEL_82;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v59 != 2)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v62 = *(v26 + 16);
  v61 = *(v26 + 24);
  v20 = __OFSUB__(v61, v62);
  v60 = v61 - v62;
  if (v20)
  {
    __break(1u);
    goto LABEL_80;
  }

LABEL_82:
  if (v60 != 8)
  {
    goto LABEL_108;
  }

  v63 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v27);
      goto LABEL_92;
    }

LABEL_90:
    LODWORD(v64) = HIDWORD(v29) - v29;
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v64 = v64;
      goto LABEL_92;
    }

    goto LABEL_100;
  }

  if (v63 != 2)
  {
    goto LABEL_109;
  }

  v66 = *(v29 + 16);
  v65 = *(v29 + 24);
  v20 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v20)
  {
    __break(1u);
    goto LABEL_90;
  }

LABEL_92:
  if (v64 == 24)
  {
    *&v82 = v36;
    *(&v82 + 1) = v30;
    *&v83 = v35;
    *(&v83 + 1) = v34;
    *&v84 = v46;
    *(&v84 + 1) = v45;
    *&v85 = v37;
    *(&v85 + 1) = v32;
    *&v86 = v47;
    *(&v86 + 1) = v48;
    *&v87 = v26;
    *(&v87 + 1) = v28;
    *&v88 = v29;
    *(&v88 + 1) = v27;
    v67 = v34;
    sub_100A22818(&v82);
    sub_10002E98C(a10, a11);
    sub_10002E98C(a12, a13);
    sub_100017D5C(v36, v30);
    sub_100017D5C(v35, v67);
    sub_100017D5C(v46, v45);
    result = sub_100017D5C(v37, v32);
    v68 = v93;
    *(a9 + 160) = v92;
    *(a9 + 176) = v68;
    *(a9 + 192) = v94;
    v69 = v89;
    *(a9 + 96) = v88;
    *(a9 + 112) = v69;
    v70 = v91;
    *(a9 + 128) = v90;
    *(a9 + 144) = v70;
    v71 = v85;
    *(a9 + 32) = v84;
    *(a9 + 48) = v71;
    v72 = v87;
    *(a9 + 64) = v86;
    *(a9 + 80) = v72;
    v73 = v83;
    *a9 = v82;
    *(a9 + 16) = v73;
    return result;
  }

LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_10104CD0C(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 58) & 0xC | (*(a1 + 176) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10104CD38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFF5 && *(a1 + 200))
  {
    return (*a1 + 262134);
  }

  if ((((((*(a1 + 192) >> 44) & 0x30000 | (*(a1 + 176) >> 46) & 0xC000) >> 14) & 0xFFFC000F | (16 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 95) & 0x30 | (*(a1 + 104) >> 54) & 0xC0 | (*(a1 + 120) >> 52) & 0x300 | (*(a1 + 136) >> 50) & 0xC00 | *(a1 + 158) & 0x3000))) ^ 0x3FFFF) >= 0x3FFF5)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 192) >> 44) & 0x30000 | (*(a1 + 176) >> 46) & 0xC000) >> 14) & 0xFFFC000F | (16 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 95) & 0x30 | (*(a1 + 104) >> 54) & 0xC0 | (*(a1 + 120) >> 52) & 0x300 | (*(a1 + 136) >> 50) & 0xC00 | *(a1 + 158) & 0x3000))) ^ 0x3FFFF;
  }

  return (v3 + 1);
}

uint64_t sub_10104CE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFF6)
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
    *result = a2 - 262134;
    if (a3 > 0x3FFF5)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFF5)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 4) & 0x3FFF) - (a2 << 14);
      *result = 0;
      *(result + 8) = ((-a2 >> 4) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 56) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 54) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 52) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 50) & 0x3000000000000000;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 48) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 46) & 0x3000000000000000;
      *(result + 184) = 0;
      *(result + 192) = (v3 << 44) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_10104CF08(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 176) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    v9 = *(result + 192) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 88) = v3;
    *(result + 104) = v4;
    *(result + 120) = v5;
    *(result + 136) = v6;
    *(result + 152) = v7;
    *(result + 176) = v8;
    *(result + 192) = v9;
  }

  else
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = xmmword_10139BF70;
    *(result + 192) = 0x2000000000000000;
  }

  return result;
}

id sub_10104CFE4(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_lock;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for SharedPairingAgent();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v18, "init");
  v9 = qword_101695518;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177CEA8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543618;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a2 & 1;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "PairingAgent init %{public}@ acceptPeripheralEvents %{BOOL}d", v14, 0x12u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
  }

  return v10;
}

id sub_10104D1C8()
{
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CEA8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "PairingAgent deinit %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for SharedPairingAgent();
  return objc_msgSendSuper2(&v9, "dealloc");
}

void *sub_10104D3A8(int a1, void *a2)
{
  LODWORD(v4) = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177CEA8);
  v10 = a2;
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v4;
    v4 = v14;
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v4 = 136446466;
    v16 = [*&v10[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v6;
    v20 = v19;
    (*(v18 + 8))(v8, v5);
    v21 = sub_1000136BC(v17, v20, &v27);

    *(v4 + 4) = v21;
    *(v4 + 12) = 2114;
    *(v4 + 14) = v11;
    *v15 = v11;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "PairingAgent: startPairing %{public}s. %{public}@.", v4, 0x16u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);

    LOBYTE(v4) = v26;
  }

  __chkstk_darwin(v23);
  *(&v25 - 32) = v4 & 1;
  *(&v25 - 3) = v11;
  *(&v25 - 2) = v10;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v27;
}

uint64_t sub_10104D714@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a4;
  v65 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchTime();
  v58 = *(v66 - 1);
  v9 = __chkstk_darwin(v66);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v51 - v12;
  v56 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v56 - 8);
  __chkstk_darwin(v56);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  if ((a1 & 1) == 0)
  {
    v37 = *(a2 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject);
    [v37 setDelegate:a2];
    v38 = *&v65[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v39 = [v38 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
    swift_beginAccess();
    v41 = *(a2 + v40);
    if (*(v41 + 16))
    {

      v42 = sub_1000210EC(v22);
      if (v43)
      {
        v44 = *(*(v41 + 56) + 8 * v42);
        v45 = *(v17 + 8);

        v45(v22, v16);

        v69 = v44;
        sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
        sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748, &protocol conformance descriptor for PassthroughSubject<A, B>);
        v36 = Publisher.eraseToAnyPublisher()();
        goto LABEL_8;
      }
    }

    v66 = v37;
    v65 = *(v17 + 8);
    (v65)(v22, v16);
    sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    swift_allocObject();
    v46 = v38;
    v47 = PassthroughSubject.init()();
    v48 = [v46 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(a2 + v40);
    *(a2 + v40) = 0x8000000000000000;
    sub_101002590(v47, v20, isUniquelyReferenced_nonNull_native);
    (v65)(v20, v16);
    *(a2 + v40) = v70;
    swift_endAccess();
    [v66 pairPeer:v46];
    v69 = v47;
    sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v36 = Publisher.eraseToAnyPublisher()();
    goto LABEL_8;
  }

  v55 = sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
  swift_allocObject();
  v23 = PassthroughSubject.init()();
  v53 = v11;
  v24 = v23;
  v25 = [*&v65[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(a2 + v26);
  *(a2 + v26) = 0x8000000000000000;
  sub_101002590(v24, v20, v27);
  (*(v17 + 8))(v20, v16);
  *(a2 + v26) = v69;
  swift_endAccess();
  sub_1000BC488();
  v28 = v56;
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v56);
  v54 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v28);
  v29 = v53;
  static DispatchTime.now()();
  v30 = v57;
  + infix(_:_:)();
  v65 = *(v58 + 8);
  (v65)(v29, v66);
  aBlock[4] = j___s7Combine18PassthroughSubjectC4sendyyxF;
  aBlock[5] = v24;
  v52 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661868;
  v31 = _Block_copy(aBlock);

  v32 = v59;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_10105032C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v33 = v61;
  v34 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v54;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v63 + 8))(v33, v34);
  (*(v60 + 8))(v32, v62);
  (v65)(v30, v66);

  aBlock[0] = v52;
  sub_1000041A4(&qword_1016C4528, &unk_1016C4508, &qword_1013FB748, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v36 = Publisher.eraseToAnyPublisher()();
LABEL_8:

  *v67 = v36;
  return result;
}

uint64_t sub_10104E044(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177CEA8);
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315394;
    v13 = [*&v8[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    v18 = v21;
    *v21 = v9;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "PairingAgent: unpair %s. %{public}@", v12, 0x16u);
    sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v22);
  }

  __chkstk_darwin([*&v9[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] unpairPeer:*&v8[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject]]);
  *(&v21 - 2) = v9;
  *(&v21 - 1) = v8;
  sub_1000BC4D4(&qword_1016C4518, &qword_1013FB758);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_10104E3C8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a2 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v10 = sub_1007AA1D4(v8);
  (*(v6 + 8))(v8, v5);
  *a3 = v10;
  return swift_endAccess();
}

void sub_10104E568(char *a1, void *a2, void (*a3)(_BYTE *, uint64_t))
{
  v57 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v50[-v10];
  v12 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();
  v13 = *&a1[v12];

  v14 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(*&a1[v12] + 16))
  {

    sub_1000210EC(v11);
    if (v15)
    {
      v56 = v13;
      v16 = *(v6 + 8);

      v55 = v5;
      v16(v11, v5);

      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177CEA8);
      v18 = a2;
      v19 = a1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v53 = v20;
        v23 = v22;
        v52 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58[0] = v54;
        *v23 = 136315650;
        *(v23 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101378CB0, v58);
        *(v23 + 12) = 2082;
        v24 = [v18 identifier];
        v51 = v21;
        v25 = v24;
        v26 = v9;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v27 = v55;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v16(v26, v27);
        v31 = sub_1000136BC(v28, v30, v58);

        *(v23 + 14) = v31;
        *(v23 + 22) = 2114;
        *(v23 + 24) = v19;
        v32 = v52;
        *v52 = v19;
        v33 = v19;
        v34 = v53;
        _os_log_impl(&_mh_execute_header, v53, v51, "%s: %{public}s. Disabling pairing agent %{public}@", v23, 0x20u);
        sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();
      }

      else
      {
      }

      [*&v19[OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject] setDelegate:0];
      if (v57)
      {
        v58[0] = v57;
        v59 = 7;
        swift_errorRetain();
        PassthroughSubject.send(completion:)();

        sub_10000B3A8(v58, &unk_1016B1CB0, &qword_1013FB750);
      }

      else
      {
        PassthroughSubject.send(_:)();
      }

      return;
    }
  }

  v35 = v5;
  v57 = *(v6 + 8);
  v57(v11, v5);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_10177CEA8);

  v37 = a2;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58[0] = v56;
    *v40 = 136315650;
    *(v40 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101378CB0, v58);
    *(v40 + 12) = 2080;
    v41 = [v37 identifier];
    LODWORD(v55) = v39;
    v42 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v57(v42, v35);
    v46 = sub_1000136BC(v43, v45, v58);

    *(v40 + 14) = v46;
    *(v40 + 22) = 2082;
    sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    sub_10105032C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = Dictionary.Keys.description.getter();
    v49 = sub_1000136BC(v47, v48, v58);

    *(v40 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v38, v55, "%s: No pairing subject for %s. Peers %{public}s.", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10104EDAC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_pairingSubjects;
  swift_beginAccess();

  v11 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(*(a1 + v10) + 16))
  {

    sub_1000210EC(v9);
    if (v12)
    {
      v13 = *(v7 + 8);

      v13(v9, v6);

      v14 = *(a1 + OBJC_IVAR____TtC12searchpartyd18SharedPairingAgent_underlyingObject);
      sub_10090B2F0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 respondToPairingRequest:a2 type:a3 accept:1 data:isa];

      return;
    }
  }

  (*(v7 + 8))(v9, v6);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177CEA8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    sub_1000BC4D4(&unk_1016C4508, &qword_1013FB748);
    sub_10105032C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = Dictionary.Keys.description.getter();
    v23 = sub_1000136BC(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "peerDidRequestPairing: Identifier mismatch. Skip pairing request. Peers %{public}s.", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {
  }
}

void sub_10104F1E0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (a2)
    {
      v9 = a1;
      swift_errorRetain();
      if (qword_101695518 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_10177CEA8);
      v11 = v9;
      swift_errorRetain();
      v12 = v2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v15 = 136315906;
        *(v15 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v54);
        *(v15 + 12) = 2082;
        v17 = [v11 identifier];
        v52 = v14;
        v18 = v17;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v6;
        v22 = v21;
        (*(v20 + 8))(v8, v5);
        v23 = sub_1000136BC(v19, v22, &v54);

        *(v15 + 14) = v23;
        *(v15 + 22) = 2114;
        *(v15 + 24) = v12;
        *v16 = v12;
        *(v15 + 32) = 2114;
        swift_errorRetain();
        v24 = v12;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 34) = v25;
        v16[1] = v25;
        _os_log_impl(&_mh_execute_header, v13, v52, "%s %{public}s. %{public}@. Error: %{public}@", v15, 0x2Au);
        sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      __chkstk_darwin(v26);
      *&v51[-32] = v12;
      *&v51[-24] = v11;
      *&v51[-16] = a2;
      swift_errorRetain();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    else
    {
      v31 = qword_101695518;
      v32 = a1;
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177CEA8);
      v34 = v32;
      v35 = v2;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v38 = 136315650;
        *(v38 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v54);
        *(v38 + 12) = 2082;
        v40 = [v34 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v6;
        v44 = v43;
        (*(v42 + 8))(v8, v5);
        v45 = sub_1000136BC(v41, v44, &v54);

        *(v38 + 14) = v45;
        *(v38 + 22) = 2114;
        *(v38 + 24) = v35;
        *v39 = v35;
        v46 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s error is expected from BT callback but it is nil! %{public}s. %{public}@.", v38, 0x20u);
        sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();
      }

      sub_100101B58();
      v47 = swift_allocError();
      *v48 = 8;
      *(v48 + 8) = 0u;
      *(v48 + 24) = 0u;
      *(v48 + 40) = 11;
      v49 = __chkstk_darwin(v47);
      *&v51[-32] = v35;
      *&v51[-24] = v34;
      *&v51[-16] = v49;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }
  }

  else
  {
    if (qword_101695518 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177CEA8);
    v53 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000136BC(0xD000000000000033, 0x8000000101378CE0, &v54);
      _os_log_impl(&_mh_execute_header, v53, v28, "%s peer cannot be nil!", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {
      v50 = v53;
    }
  }
}

void sub_10104FA0C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177CEA8);
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v27 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v12 = 136315650;
    *(v12 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101378C80, &v28);
    *(v12 + 12) = 2082;
    if (a1)
    {

      v14 = [v8 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (v27[1].isa)(v6, v3);
      v18 = sub_1000136BC(v15, v17, &v28);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2114;
      *(v12 + 24) = v9;
      *v13 = v9;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s %{public}s. %{public}@", v12, 0x20u);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

LABEL_7:
      __chkstk_darwin(v20);
      *(&v26 - 4) = v9;
      *(&v26 - 3) = v8;
      *(&v26 - 2) = 0;
      v21 = v8;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v27 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101378C80, &v28);
      _os_log_impl(&_mh_execute_header, v27, v22, "%s peer cannot be nil!", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {
      v25 = v27;
    }
  }
}

void sub_10104FEA8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695518 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CEA8);
  v9 = a1;
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v28 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v13 = 136446466;
    if (a1)
    {

      v15 = [v9 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10105032C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (v29[1].isa)(v7, v5);
      v19 = sub_1000136BC(v16, v18, &v30);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2114;
      *(v13 + 14) = v10;
      *v14 = v10;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "peerDidRequestPairing: %{public}s. %{public}@", v13, 0x16u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v27);

      a2 = v28;
LABEL_7:
      __chkstk_darwin(v21);
      *(&v26 - 4) = v10;
      *(&v26 - 3) = v9;
      *(&v26 - 2) = a2;
      v22 = v9;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v29 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v29, v23, "peerDidRequestPairing: peer cannot be nil!", v24, 2u);
    }

    v25 = v29;
  }
}

uint64_t sub_10105032C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10105039C(uint64_t a1)
{
  *(a1 + 8) = sub_1010503CC();
  result = sub_10030FC2C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010503CC()
{
  result = qword_1016C4530;
  if (!qword_1016C4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4530);
  }

  return result;
}

uint64_t sub_101050420(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C4560, &qword_1013FB980);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_1010513F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_101051498();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    type metadata accessor for SPSimpleBeaconProperty(0);
    sub_1010514EC(&qword_1016C4570, type metadata accessor for SPSimpleBeaconProperty, &protocol conformance descriptor for SPSimpleBeaconProperty);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1010505F0()
{
  if (*v0)
  {
    return 0x6F72506863746566;
  }

  else
  {
    return 0x6542656C706D6973;
  }
}

uint64_t sub_101050640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6542656C706D6973 && a2 == 0xEC0000006E6F6361;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F72506863746566 && a2 == 0xEF73656974726570)
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

uint64_t sub_101050728(uint64_t a1)
{
  v2 = sub_1010513F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101050764(uint64_t a1)
{
  v2 = sub_1010513F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010507A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1010511D4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_1010507E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = [v5 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_10105092C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_101050A60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  Hasher.init(_seed:)();
  v7 = [v6 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010514EC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, v2);
  return Hasher._finalize()();
}

uint64_t sub_101050BB0(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *a2;
  v12 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v11 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v13) = static UUID.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

unint64_t sub_101050E3C()
{
  result = qword_1016C4538;
  if (!qword_1016C4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4538);
  }

  return result;
}

void *sub_101050E90(uint64_t a1)
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void *sub_101050F6C(void *a1, void **a2, void *a3)
{
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    *a3 = v3;
  }

  else
  {
    sub_1000035D0(v11, v11[3]);
    sub_1000E307C();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100008BB8(0, &qword_1016AC5D8, NSKeyedUnarchiver_ptr);
    sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
    v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v8 = *a2;
    *a2 = v7;

    sub_100016590(v9, v10);
    return sub_100007BAC(v11);
  }

  return result;
}

uint64_t sub_1010510C8(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = sub_101050E90(a2);
  if (!v2)
  {
    v7 = v4;
    v8 = v5;
    sub_10015049C(v9, v9[3]);
    sub_1000E3190();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100016590(v7, v8);
  }

  return sub_100007BAC(v9);
}

void *sub_10105118C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10105165C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1010511D4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C4540, &qword_1013FB978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1010513F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v8) = 0;
  sub_101051444();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  type metadata accessor for SPSimpleBeaconProperty(0);
  HIBYTE(v8) = 1;
  sub_1010514EC(&qword_1016C4558, type metadata accessor for SPSimpleBeaconProperty, &protocol conformance descriptor for SPSimpleBeaconProperty);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_1010513F0()
{
  result = qword_1016C4548;
  if (!qword_1016C4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4548);
  }

  return result;
}

unint64_t sub_101051444()
{
  result = qword_1016C4550;
  if (!qword_1016C4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4550);
  }

  return result;
}

unint64_t sub_101051498()
{
  result = qword_1016C4568;
  if (!qword_1016C4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4568);
  }

  return result;
}

uint64_t sub_1010514EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_101051558()
{
  result = qword_1016C4578;
  if (!qword_1016C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4578);
  }

  return result;
}

unint64_t sub_1010515B0()
{
  result = qword_1016C4580;
  if (!qword_1016C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4580);
  }

  return result;
}

unint64_t sub_101051608()
{
  result = qword_1016C4588;
  if (!qword_1016C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4588);
  }

  return result;
}

void *sub_10105165C(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_101050F6C(a1, &v9, &v8);
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    v3 = v9;
    if (v9)
    {
      sub_100007BAC(a1);
      return v3;
    }

    v5 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v6;
    v3 = sub_1000035D0(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v5 - 8) + 104))(v7, enum case for DecodingError.dataCorrupted(_:), v5);
    swift_willThrow();
  }

  sub_100007BAC(a1);
  return v3;
}

void *sub_1010517B8(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v10[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = _swiftEmptyDictionarySingleton;
  v8 = v11;
  v1[5] = _swiftEmptyDictionarySingleton;
  v1[6] = v8;
  return v1;
}

uint64_t sub_101051A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v32 = a2;
  v33 = a3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v35 = *(a2 + 24);
  v18 = *(v12 + 16);
  v18(&v31 - v16, a5, v11);
  v18(v15, a6, v11);
  v19 = *(v12 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v19 + v21 + 8) & ~v19;
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 16) = v33;
  *(v23 + 24) = v24;
  v25 = *(v12 + 32);
  v25(v23 + v20, v17, v11);
  *(v23 + v21) = v32;
  v25(v23 + v22, v15, v11);
  aBlock[4] = sub_101057A14;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661CB0;
  v26 = _Block_copy(aBlock);

  v27 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v28 = v36;
  v29 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v40 + 8))(v28, v29);
  (*(v37 + 8))(v27, v39);
}

uint64_t sub_101051E64(char *a1, uint64_t a2, char *a3, uint64_t a4, char *a5)
{
  v77 = a1;
  v78 = a4;
  v76 = a3;
  v7 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v7 - 8);
  v68 = v61 - v8;
  v9 = type metadata accessor for Date();
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v64 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v67 = *(updated - 8);
  v11 = __chkstk_darwin(updated);
  v70 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = v61 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v72 = (v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v17 = __chkstk_darwin(v16 - 8);
  v75 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = v61 - v19;
  v20 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  __chkstk_darwin(v20 - 8);
  v22 = v61 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v24 + 16);
  v32(&v31[*(v29 + 20)], v76, v23);
  *v31 = v77;
  *(v31 + 1) = a2;
  v63 = v23;
  v61[1] = v24 + 16;
  v32(v26, a5, v23);
  v76 = v31;
  sub_10105772C(v31, v22, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
  (*(v28 + 56))(v22, 0, 1, v27);
  v33 = v78;
  swift_beginAccess();
  v34 = v75;

  v62 = v26;
  sub_1001E20F8(v22, v26);
  swift_endAccess();
  v35 = v79;
  URL.init(string:)();
  v36 = sub_101053FD4();
  v77 = a5;
  v37.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_1000D2A70(v35, v34, &unk_101696AC0, &qword_101390A60);
  v38 = type metadata accessor for URL();
  v39 = *(v38 - 8);
  result = (*(v39 + 48))(v34, 1, v38);
  if (result != 1)
  {
    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    (*(v39 + 8))(v34, v38);
    [v36 updateFirmwareForDevice:v37.super.isa withAssetURL:v43];

    v44 = *(v33 + 24);
    v45 = v72;
    v46 = v73;
    *v72 = v44;
    v47 = v74;
    (*(v46 + 104))(v45, enum case for DispatchPredicate.onQueue(_:), v74);
    v48 = v44;
    v49 = _dispatchPreconditionTest(_:)();
    (*(v46 + 8))(v45, v47);
    if (v49)
    {
      v47 = v69;
      v50 = v77;
      sub_101053BF8(v77, v69);
      v51 = v64;
      static Date.trustedNow.getter(v64);
      v52 = updated;
      (*(v65 + 40))(v47 + *(updated + 24), v51, v66);
      *(v47 + *(v52 + 20)) = 2;
      v53 = (v47 + *(v52 + 32));

      *v53 = 0;
      v53[1] = 0;
      v53[2] = 0;
      v54 = v62;
      v32(v62, v50, v63);
      v55 = v68;
      sub_10105772C(v47, v68, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      (*(v67 + 56))(v55, 0, 1, v52);
      swift_beginAccess();
      sub_1001E1E88(v55, v54);
      swift_endAccess();

      sub_100A8306C(0x10u);

      v49 = static os_log_type_t.default.getter();
      if (qword_1016950B8 == -1)
      {
LABEL_4:
        v56 = qword_10177C400;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_101385D80;
        swift_beginAccess();
        sub_10105772C(v47, v70, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
        v58 = String.init<A>(describing:)();
        v60 = v59;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = sub_100008C00();
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v56, "#Accessory - Updated %@", 23, 2, v57);

        sub_10000B3A8(v79, &unk_101696AC0, &qword_101390A60);
        sub_1010578B4(v76, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
        return sub_1010578B4(v47, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1010526F0(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1))
{
  v127 = a5;
  v122 = a4;
  v126 = a3;
  LODWORD(v125) = a2;
  v130 = a1;
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v128 = *(updated - 1);
  __chkstk_darwin(updated);
  v129 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DispatchTime();
  v116 = *(v117 - 8);
  v8 = __chkstk_darwin(v117);
  v114 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v115 = v112 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v11 - 8);
  v13 = v112 - v12;
  *&v121 = type metadata accessor for OwnedBeaconRecord(0);
  v123 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v113 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v15;
  __chkstk_darwin(v14);
  v119 = (v112 - v16);
  v17 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v17 - 8);
  v124 = v112 - v18;
  v19 = type metadata accessor for UUID();
  v132 = *(v19 - 8);
  v133 = v19;
  __chkstk_darwin(v19);
  v112[1] = v20;
  v131 = v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 1);
  __chkstk_darwin(v25);
  v28 = v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v5 + 24);
  *v28 = v29;
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v28, v25);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v120 = v13;
  v134 = swift_allocBox();
  v28 = v32;
  v33 = v130;
  v34 = v5;
  sub_101053BF8(v130, v32);
  static Date.trustedNow.getter(v24);
  (*(v22 + 40))(&v28[updated[6]], v24, v21);
  v35 = v125;
  v28[updated[5]] = v125;
  if (v126)
  {
    swift_getErrorValue();
    swift_errorRetain();
    v36 = Error.domain.getter();
    v38 = v37;
    swift_getErrorValue();
    v39 = Error.code.getter();

    v40 = &v28[updated[8]];
    *v40 = v36;
    v40[1] = v38;
    v40[2] = v39;
  }

  else
  {
    v41 = &v28[updated[8]];
    *(v41 + 1) = 0;
    *(v41 + 2) = 0;
    *v41 = 0;
  }

  v42 = v127;
  if (v127)
  {
    v43 = &v28[updated[7]];
    *v43 = v122;
    v43[1] = v42;
  }

  v44 = v131;
  v127 = *(v132 + 16);
  (v127)(v131, v33, v133);
  v45 = v124;
  sub_10105772C(v28, v124, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  (*(v128 + 7))(v45, 0, 1, updated);
  swift_beginAccess();
  sub_1001E1E88(v45, v44);
  swift_endAccess();
  v46 = v35;
  v25 = &type metadata for String;
  v47 = v34;
  v13 = "v32@0:8@NISession16q24" + 15;
  v48 = &qword_101695000;
  v31 = 0x10177C000;
  v128 = updated;
  if (v46 != 3)
  {

    sub_100A8306C(0x10u);

    goto LABEL_19;
  }

  v49 = static os_log_type_t.default.getter();
  v126 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10138BBE0;
  v51 = &v28[updated[7]];
  v52 = *(v51 + 1);
  v135[0] = *v51;
  v135[1] = v52;

  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  v53 = String.init<A>(describing:)();
  v55 = v54;
  *(v50 + 56) = &type metadata for String;
  v56 = sub_100008C00();
  *(v50 + 64) = v56;
  *(v50 + 32) = v53;
  *(v50 + 40) = v55;
  v57 = UUID.uuidString.getter();
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v56;
  *(v50 + 72) = v57;
  *(v50 + 80) = v58;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v59 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v59, "#Accessory - successful fw update - attempting to modify systemVersion on beacon record to %@ for %@", 100, 2, v50);

  sub_100025020(v33, v135);

  v60 = v123;
  v61 = v123 + 56;
  if (!v135[3])
  {
    sub_10000B3A8(v135, &qword_101696920, &unk_10138B200);
    v62 = v120;
    (*v61)(v120, 1, 1, v121);
    v48 = &qword_101695000;
    goto LABEL_18;
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v62 = v120;
  v63 = v121;
  v64 = swift_dynamicCast();
  (*(v60 + 7))(v62, v64 ^ 1u, 1, v63);
  v65 = (*(v60 + 6))(v62, 1, v63);
  v48 = &qword_101695000;
  if (v65 == 1)
  {
LABEL_18:
    sub_10000B3A8(v62, &unk_1016A9A20, &qword_10138B280);
    v13 = "ion16q24";
    v31 = &qword_10177BFF8[1];
    goto LABEL_19;
  }

  v122 = v56;
  sub_1010575DC(v62, v119, type metadata accessor for OwnedBeaconRecord);
  *&v121 = dispatch_group_create();
  dispatch_group_enter(v121);
  v124 = *(v47 + 48);
  v66 = v131;
  v67 = v133;
  (v127)(v131, v33, v133);
  v68 = v132;
  v69 = v33;
  v70 = (*(v132 + 80) + 24) & ~*(v132 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v134;
  v72 = *(v68 + 32);
  v125 = v71;
  v72(v71 + v70, v66, v67);
  (v127)(v66, v69, v67);
  v73 = swift_allocObject();
  v74 = v121;
  *(v73 + 16) = v121;
  v132 = v73;
  v72(v73 + v70, v66, v67);

  v133 = v74;
  v75 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v76 = qword_10177C380;
  v77 = swift_allocObject();
  v121 = xmmword_101385D80;
  *(v77 + 16) = xmmword_101385D80;
  v78 = v122;
  *(v77 + 56) = &type metadata for String;
  *(v77 + 64) = v78;
  *(v77 + 32) = 0x65736C6166;
  *(v77 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v76, "Modify record. Disk First? (%@)", 31, 2, v77);

  v79 = objc_autoreleasePoolPush();
  v80 = v119;
  sub_101121B40(v119);
  v82 = v81;
  v131 = v81;
  objc_autoreleasePoolPop(v79);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v127 = type metadata accessor for OwnedBeaconRecord;
  v83 = v113;
  sub_10105772C(v80, v113, type metadata accessor for OwnedBeaconRecord);
  v84 = *(v123 + 80);
  v85 = swift_allocObject();
  v86 = v125;
  *(v85 + 16) = sub_101057644;
  *(v85 + 24) = v86;
  v87 = v80;
  v123 = type metadata accessor for OwnedBeaconRecord;
  sub_1010575DC(v83, v85 + ((v84 + 32) & ~v84), type metadata accessor for OwnedBeaconRecord);

  sub_100FDCA40(v82, sub_101057794, v85);

  v88 = swift_allocObject();
  v89 = v132;
  *(v88 + 16) = sub_1010576B8;
  *(v88 + 24) = v89;

  Future.addFailure(block:)();

  sub_10105772C(v87, v83, v127);
  v90 = (v84 + 16) & ~v84;
  v91 = (v118 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  sub_1010575DC(v83, v92 + v90, v123);
  *(v92 + v91) = v124;
  v93 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v93 = sub_1010576B8;
  v93[1] = v89;

  Future.addSuccess(block:)();

  v94 = v114;
  static DispatchTime.now()();
  v95 = v115;
  + infix(_:_:)();
  v96 = *(v116 + 8);
  v97 = v117;
  v96(v94, v117);
  v98 = v133;
  OS_dispatch_group.wait(timeout:)();
  v96(v95, v97);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v99 = static os_log_type_t.error.getter();
    v48 = &qword_101695000;
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v100 = qword_10177C400;
    v101 = swift_allocObject();
    *(v101 + 16) = v121;
    v102 = UUID.uuidString.getter();
    v25 = &type metadata for String;
    v103 = v122;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = v103;
    *(v101 + 32) = v102;
    *(v101 + 40) = v104;
    v105 = v100;
    v31 = 0x10177C000;
    os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, v105, "#Accessory - timed out waiting to update sys ver to cloud for %@", 64, 2, v101);

    sub_1010578B4(v119, type metadata accessor for OwnedBeaconRecord);
    v13 = "v32@0:8@NISession16q24" + 15;
  }

  else
  {
    sub_1010578B4(v119, type metadata accessor for OwnedBeaconRecord);

    v25 = &type metadata for String;
    v13 = "v32@0:8@NISession16q24" + 15;
    v31 = 0x10177C000;
    v48 = &qword_101695000;
  }

LABEL_19:
  v5 = static os_log_type_t.default.getter();
  if (v48[23] != -1)
  {
LABEL_23:
    swift_once();
  }

  v106 = *(v31 + 1024);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v107 = swift_allocObject();
  *(v107 + 16) = *(v13 + 216);
  swift_beginAccess();
  sub_10105772C(v28, v129, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v108 = String.init<A>(describing:)();
  v110 = v109;
  *(v107 + 56) = v25;
  *(v107 + 64) = sub_100008C00();
  *(v107 + 32) = v108;
  *(v107 + 40) = v110;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v106, "#Accessory - Updated %@", 23, 2, v107);
}

uint64_t sub_101053740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v41 = *(updated - 8);
  v5 = __chkstk_darwin(updated);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v41 - v7;
  v8 = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Date();
  v11 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v13);
  v45 = a2;
  v46 = SPBeaconTaskNameAccessoryFirmwareUpdate;
  v47 = a1;
  sub_101053BF8(a2, v10);
  v14 = v10[v8[5]];
  switch(v14)
  {
    case 1:
      v21 = &v10[v8[8]];
      if (*(v21 + 1))
      {
        v22 = *(v21 + 2);
        v23 = objc_allocWithZone(NSError);
        v24 = String._bridgeToObjectiveC()();
        v19 = [v23 initWithDomain:v24 code:v22 userInfo:{0, v41}];
      }

      else
      {
        v19 = 0;
      }

      v20 = 3;
      break;
    case 2:
      v20 = 0;
      v19 = 0;
      break;
    case 4:
      v15 = &v10[v8[8]];
      if (*(v15 + 1))
      {
        v16 = *(v15 + 2);
        v17 = objc_allocWithZone(NSError);
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 initWithDomain:v18 code:v16 userInfo:{0, v41}];
      }

      else
      {
        v19 = 0;
      }

      v20 = 1;
      break;
    default:
      v19 = 0;
      v20 = 2;
      break;
  }

  v25 = *(v11 + 8);
  v26 = v49;
  v25(v13, v49);
  (*(v11 + 16))(v13, &v10[v8[6]], v26);
  swift_errorRetain();
  v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v19)
  {
    v28 = _convertErrorToNSError(_:)();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(SPBeaconTaskInformation);
  v30 = [v29 initWithName:v46 lastUpdated:v27.super.isa error:v28 state:v20];

  v31 = v47;
  swift_beginAccess();
  v32 = *(v31 + 32);
  v33 = *(v32 + 16);

  if (v33 && (v34 = sub_1000210EC(v45), (v35 & 1) != 0))
  {
    v36 = v42;
    sub_10105772C(*(v32 + 56) + *(v41 + 72) * v34, v42, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

    v37 = v36;
    v38 = v43;
    sub_1010575DC(v37, v43, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v30 setCommandIdentifier:isa];

    sub_1010578B4(v38, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
  }

  else
  {
  }

  v25(v13, v49);
  result = sub_1010578B4(v10, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  *v48 = v30;
  return result;
}

uint64_t sub_101053BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a1;
  v5 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v5 - 8);
  v33 = &v31 - v6;
  v31 = type metadata accessor for UUID();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v10 = *(updated - 1);
  __chkstk_darwin(updated);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + 24);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    swift_beginAccess();
    v20 = *(v3 + 40);
    v21 = v34;
    if (*(v20 + 16))
    {

      v22 = sub_1000210EC(v21);
      if (v23)
      {
        sub_10105772C(*(v20 + 56) + *(v10 + 72) * v22, v12, type metadata accessor for AccessoryFirmwareUpdateStateInfo);

        return sub_1010575DC(v12, a2, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
      }
    }

    v24 = *(v7 + 16);
    v25 = v31;
    v24(a2, v21, v31);
    static Date.trustedNow.getter(a2 + updated[6]);
    *(a2 + updated[5]) = 0;
    v26 = (a2 + updated[7]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (a2 + updated[8]);
    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
    v28 = v32;
    v24(v32, v21, v25);
    v29 = a2;
    v30 = v33;
    sub_10105772C(v29, v33, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    (*(v10 + 56))(v30, 0, 1, updated);
    swift_beginAccess();
    sub_1001E1E88(v30, v28);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_101053FD4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = *(v0 + 16);
    if (v8)
    {
      v9 = *(v0 + 16);
    }

    else
    {
      v10 = [objc_allocWithZone(CLFindMyAccessoryFirmwareUpdateManager) initWithDelegate:v0 delegateQueue:0];
      v11 = *(v0 + 16);
      *(v0 + 16) = v10;
      v9 = v10;

      v8 = 0;
    }

    v12 = v8;
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10105412C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[3];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_beginAccess();
    if (!*(v0[4] + 16))
    {
      v7 = v0[2];
      v0[2] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_101054264()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateCommandInfo(uint64_t a1)
{
  result = qword_1016C4790;
  if (!qword_1016C4790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1010545CC(uint64_t a1)
{
  sub_101054650(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_101054650(uint64_t a1)
{
  if (!qword_1016C47A0)
  {
    sub_1000BC580(&qword_10169F020, &qword_10139FE08);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C47A0);
    }
  }
}

uint64_t sub_1010546B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 24);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = (v16 + v15);
  v18 = v25;
  *v17 = v24;
  v17[1] = v18;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_101057AB4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661D00;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v31 + 8))(v20, v21);
  (*(v28 + 8))(v9, v30);
}

void sub_101054A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v43 = a4;
  v37 = a3;
  v41 = a2;
  v6 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v6 - 8);
  v44 = &v36 - v7;
  v8 = type metadata accessor for UUID();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Date();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v14 = *(updated - 1);
  v15 = __chkstk_darwin(updated);
  v45 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a1 + 24);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  v25 = v41;
  sub_101053BF8(v41, v18);
  static Date.trustedNow.getter(v12);
  (*(v10 + 40))(&v18[updated[6]], v12, v38);
  v18[updated[5]] = 4;
  v26 = &v18[updated[8]];

  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  v27 = v43;
  if (v43)
  {
    v28 = &v18[updated[7]];

    *v28 = v37;
    v28[1] = v27;
  }

  v29 = v42;
  (*(v39 + 16))(v42, v25, v40);
  v30 = v44;
  sub_10105772C(v18, v44, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  (*(v14 + 56))(v30, 0, 1, updated);
  swift_beginAccess();
  sub_1001E1E88(v30, v29);
  swift_endAccess();

  sub_100A8306C(0x10u);

  v22 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v31 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  swift_beginAccess();
  sub_10105772C(v18, v45, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100008C00();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v31, "#Accessory - Updated %@", 23, 2, v32);

  sub_1010578B4(v18, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  Transaction.capture()();
}

uint64_t sub_101054FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 24);
  (*(v10 + 16))(v12, a3, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = v20;
  aBlock[4] = sub_101057914;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661C10;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v25 + 8))(v6, v17);
  (*(v22 + 8))(v8, v24);
}

void sub_1010553AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  __chkstk_darwin(v5 - 8);
  v48 = &v38 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(updated - 8);
  v18 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - v20;
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  v49 = a2;
  sub_1010526F0(a2, 3, 0, 0, 0);
  swift_beginAccess();
  v24 = *(a1 + 32);
  if (*(v24 + 16))
  {

    v25 = sub_1000210EC(v49);
    if (v26)
    {
      v27 = *(v24 + 56);
      v39 = v15;
      v28 = v27 + *(v15 + 72) * v25;
      v38 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo;
      sub_10105772C(v28, v21, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

      v41 = v23;
      sub_1010575DC(v21, v23, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v40 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      v29 = v38;
      sub_10105772C(v23, v18, v38);
      v30 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v31 = swift_allocObject();
      sub_1010575DC(v18, v31 + v30, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      aBlock[4] = sub_1010579A4;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101661C60;
      v32 = _Block_copy(aBlock);
      v33 = v42;
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v34 = v44;
      v35 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v36 = v40;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v46 + 8))(v34, v35);
      (*(v43 + 8))(v33, v45);

      swift_beginAccess();
      v37 = v48;
      sub_1007AA200(v49, v48);
      sub_10000B3A8(v37, &qword_1016998E8, &qword_101392038);
      swift_endAccess();
      sub_10105412C();
      sub_1010578B4(v41, v29);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

uint64_t sub_1010559C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 24);
  (*(v10 + 16))(v12, a3, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v10 + 32))(v15 + v13, v12, v9);
  v16 = v22;
  *(v15 + v14) = v23;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = sub_1010574B4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661AA8;
  v17 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v18 = v25;
  v19 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v29 + 8))(v18, v19);
  (*(v26 + 8))(v8, v28);
}

void sub_101055D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v93 = a3;
  v94 = a2;
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS.QoSClass();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v73 = *(updated - 8);
  v9 = __chkstk_darwin(updated - 8);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v72 = &v71 - v12;
  v74 = v13;
  __chkstk_darwin(v11);
  v79 = &v71 - v14;
  v15 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v15 - 8);
  v90 = &v71 - v16;
  v88 = type metadata accessor for UUID();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v86 = *(v22 - 1);
  v23 = __chkstk_darwin(v22);
  v91 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1;
  v32 = *(a1 + 24);
  *v30 = v32;
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  v34 = _dispatchPreconditionTest(_:)();
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v30, v27);
  if (v34)
  {
    v37 = v94;
    v34 = v31;
    sub_101053BF8(v94, v26);
    static Date.trustedNow.getter(v21);
    (*(v19 + 40))(&v26[v22[6]], v21, v18);
    v26[v22[5]] = 4;
    if (v93)
    {
      swift_getErrorValue();
      v38 = v37;
      swift_errorRetain();
      v39 = Error.domain.getter();
      v41 = v40;
      swift_getErrorValue();
      v42 = Error.code.getter();

      v43 = &v26[v22[8]];

      *v43 = v39;
      v43[1] = v41;
      v37 = v38;
      v43[2] = v42;
    }

    else
    {
      v44 = &v26[v22[8]];

      *v44 = 0;
      *(v44 + 1) = 0;
      *(v44 + 2) = 0;
    }

    v45 = v89;
    (*(v87 + 16))(v89, v37, v88);
    v46 = v90;
    sub_10105772C(v26, v90, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    (*(v86 + 56))(v46, 0, 1, v22);
    swift_beginAccess();
    sub_1001E1E88(v46, v45);
    swift_endAccess();

    sub_100A8306C(0x10u);

    v35 = static os_log_type_t.default.getter();
    if (qword_1016950B8 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v47 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_101385D80;
  swift_beginAccess();
  sub_10105772C(v26, v91, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  v49 = String.init<A>(describing:)();
  v51 = v50;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_100008C00();
  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v47, "#Accessory - Updated %@", 23, 2, v48);

  sub_1010578B4(v26, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
  swift_beginAccess();
  v52 = *(v34 + 32);
  if (*(v52 + 16))
  {

    v53 = sub_1000210EC(v94);
    if (v54)
    {
      v55 = v73;
      v56 = v72;
      sub_10105772C(*(v52 + 56) + *(v73 + 72) * v53, v72, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);

      v57 = v56;
      v58 = v79;
      sub_1010575DC(v57, v79, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v59 = v77;
      v60 = v75;
      v61 = v78;
      (*(v77 + 104))(v75, enum case for DispatchQoS.QoSClass.default(_:), v78);
      v62 = static OS_dispatch_queue.global(qos:)();
      (*(v59 + 8))(v60, v61);
      v63 = v76;
      sub_10105772C(v58, v76, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      v64 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v65 = (v74 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      sub_1010575DC(v63, v66 + v64, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
      *(v66 + v65) = v93;
      aBlock[4] = sub_101057550;
      aBlock[5] = v66;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101661AF8;
      v67 = _Block_copy(aBlock);
      swift_errorRetain();
      v68 = v80;
      static DispatchQoS.unspecified.getter();
      v95 = _swiftEmptyArrayStorage;
      sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v69 = v82;
      v70 = v85;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v67);

      (*(v84 + 8))(v69, v70);
      (*(v81 + 8))(v68, v83);
      sub_1010578B4(v58, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

uint64_t sub_101056958(uint64_t (**a1)(uint64_t), uint64_t a2)
{
  if (*a1)
  {
    (*a1)(a2);
  }

  v2 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v3 = qword_10177C400;

  return os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "#Accessory - update failed - called completion with error", 57, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_101056A04(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  v4 = swift_projectBox();
  swift_beginAccess();
  v5 = (v4 + *(updated + 28));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = (a1 + *(type metadata accessor for OwnedBeaconRecord(0) + 60));

    *v8 = v7;
    v8[1] = v6;
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Accessory - failed to update the systemVersion. No version information present.  %@", 84, 2, v12);
  }

  return result;
}

void sub_101056B70(uint64_t a1, NSObject *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v4);
  v6 = (v23 - v5);
  sub_1000D2A70(a1, v23 - v5, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = static os_log_type_t.error.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10138BBE0;
    v11 = UUID.uuidString.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_100008C00();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v23[1] = v7;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "#Accessory - failed to update beacon record with systemVersion for %@ error %@", 78, 2, v10);
  }

  else
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "#Accessory - successfully updated the record with systemVersion for %@", 70, 2, v19);

    sub_10000B3A8(v6, &unk_1016B15A0, &qword_1013A0900);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_101056E3C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v27 - v10;
  v30 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v31 = a2;
  sub_1000D2A70(a2, v11, &qword_1016980D0, &unk_10138F3B0);
  v13 = *(v4 + 48);
  if (v13(v11, 1, v3) == 1)
  {
    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = UUID.uuidString.getter();
    v15 = v16;
    (*(v4 + 8))(v11, v3);
  }

  v33 = v14;
  v34 = v15;
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v12 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v12 + 64) = v20;
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  v33 = v32;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v21 = String.init<A>(describing:)();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v20;
  *(v12 + 72) = v21;
  *(v12 + 80) = v22;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v29, "#Accessory - firmwareUpdate for %@ didFailWithError %@", 54, 2, v12);

  sub_1000D2A70(v31, v9, &qword_1016980D0, &unk_10138F3B0);
  if (v13(v9, 1, v3) == 1)
  {
    return sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  }

  v24 = v28;
  (*(v4 + 32))(v28, v9, v3);
  v25 = type metadata accessor for Transaction();
  __chkstk_darwin(v25);
  v27[-4] = v27[1];
  v27[-3] = v24;
  v27[-2] = v26;
  static Transaction.named<A>(_:with:)();
  return (*(v4 + 8))(v24, v3);
}