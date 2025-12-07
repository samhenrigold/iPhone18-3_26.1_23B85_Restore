uint64_t sub_100DD50F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_100DD5194;

  return sub_100DD546C(a5);
}

uint64_t sub_100DD5194()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100DD52C8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100DD52C8()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed saveProductInfoRecord: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100DD546C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = *(type metadata accessor for BeaconProductInfoRecord(0) - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for AccessoryProductInfo(0);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100DD5638, v1, 0);
}

uint64_t sub_100DD5638()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = *(v0[6] + 160);
  v5 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v4 + v5, v3, &qword_101697268, &qword_101394FE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[14], &qword_101697268, &qword_101394FE0);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing product info!", v9, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v10 = xmmword_1013E84D0;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[17];
    v14 = v0[18];
    v15 = v0[13];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];
    v19 = v0[5];
    sub_100DD921C(v0[14], v14, type metadata accessor for AccessoryProductInfo);
    sub_100DD9284(v14, v13, type metadata accessor for AccessoryProductInfo);
    (*(v17 + 16))(v16, v19, v18);
    sub_10083B3C8(v13, v16, v15);
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_100DD594C;

    return daemon.getter();
  }
}

uint64_t sub_100DD594C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100DD5B28;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DD5B28(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 48);

    v5 = sub_100DD607C;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_100DD5C80;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_100DD5C80()
{
  v1 = v0[22];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  sub_100DD9284(v0[13], v2, type metadata accessor for BeaconProductInfoRecord);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[23] = v7;
  *(v7 + 16) = v1;
  sub_100DD921C(v2, v7 + v5, type metadata accessor for BeaconProductInfoRecord);
  v8 = (v7 + v6);
  *v8 = sub_100DD885C;
  v8[1] = 0;

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_100DD5E00;

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100DD9D2C, v7, &type metadata for () + 1);
}

uint64_t sub_100DD5E00()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_100DD5F2C, v1, 0);
}

uint64_t sub_100DD5F2C()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100DD5F98, v1, 0);
}

uint64_t sub_100DD5F98()
{
  v1 = v0[18];
  sub_100DD92EC(v0[13], type metadata accessor for BeaconProductInfoRecord);
  sub_100DD92EC(v1, type metadata accessor for AccessoryProductInfo);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100DD607C()
{
  v1 = v0[18];
  v2 = v0[13];
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84B0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v2, type metadata accessor for BeaconProductInfoRecord);
  sub_100DD92EC(v1, type metadata accessor for AccessoryProductInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DD61A4(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = a2;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_100DD62C8;

  return sub_100DC1228(a2, a3);
}

uint64_t sub_100DD62C8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100DD665C;
  }

  else
  {
    v2 = sub_100DD63DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DD63DC()
{
  v20 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v19);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s succeeded for %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DD665C()
{
  v24 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, v23);
    *(v11 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, v23);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s failed for %{public}s. Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];

    (*(v19 + 8))(v18, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100DD6964()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100DD61A4(v4, v0 + v3, v5);
}

uint64_t sub_100DD6A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DD6AEC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[21] = v4;
  *v4 = v3;
  v4[1] = sub_100DD6BF4;

  return daemon.getter();
}

uint64_t sub_100DD6BF4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DD6DD0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DD6DD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_100DD7A48;
  }

  else
  {

    v5 = sub_100DD6F10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD6F10()
{
  *(v0 + 96) = *(v0 + 112);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
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
      _os_log_impl(&_mh_execute_header, v2, v3, "Invalid serial number.", v4, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v5 = xmmword_10139D9A0;
    *(v5 + 16) = 3;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 192);
    *(v0 + 208) = Data.trimmed.getter();
    *(v0 + 216) = v9;

    return _swift_task_switch(sub_100DD70F8, v8, 0);
  }
}

uint64_t sub_100DD70F8()
{
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_100DD7194;
  v3 = v0[26];
  v2 = v0[27];

  return sub_100C580A0(v3, v2);
}

uint64_t sub_100DD7194(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_100DD7648;
  }

  else
  {
    v6 = sub_100DD72C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD72C8()
{
  v26 = v0;
  v1 = v0[29];
  if (!*(v1 + 16))
  {

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v10 = v0[14];
    v9 = v0[15];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016BB490);
    sub_100017D5C(v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100016590(v10, v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = Data.description.getter();
      v18 = sub_1000136BC(v16, v17, &v25);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing record for %{private,mask.hash}s!", v14, 0x16u);
      sub_100007BAC(v15);
    }

    v20 = v0[26];
    v19 = v0[27];
    sub_100500BC4();
    swift_allocError();
    *v21 = xmmword_1013AC380;
    *(v21 + 16) = 3;
    swift_willThrow();
    sub_100016590(v20, v19);

    goto LABEL_9;
  }

  v2 = v0[30];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = *(v0[17] + 80);
  sub_100DD9284(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for LocalFindableAccessoryRecord);

  sub_100DD921C(v3, v4, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v4, v5, type metadata accessor for LocalFindableAccessoryRecord);
  sub_1004FFC10(v5, (v0 + 2));
  if (v2)
  {
    v8 = v0[26];
    v7 = v0[27];
    sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

    sub_100016590(v8, v7);
LABEL_9:

    v22 = v0[1];

    return v22();
  }

  v24 = swift_task_alloc();
  v0[31] = v24;
  *v24 = v0;
  v24[1] = sub_100DD76E0;

  return sub_1004FA514((v0 + 2));
}

uint64_t sub_100DD7648()
{
  v1 = v0[26];
  v2 = v0[27];

  sub_100016590(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DD76E0()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {
    v3 = v2[16];
    sub_100DD8CC4((v2 + 2));

    return _swift_task_switch(sub_100DD7AD0, v3, 0);
  }

  else
  {
    sub_100DD8CC4((v2 + 2));
    v4 = swift_task_alloc();
    v2[33] = v4;
    *v4 = v2;
    v4[1] = sub_100DD7868;
    v5 = v2[20];

    return sub_100DD7F30(v5);
  }
}

uint64_t sub_100DD7868()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100DD7B84;
  }

  else
  {
    v4 = sub_100DD7994;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD7994()
{
  sub_100016590(v0[26], v0[27]);

  sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100DD7A48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DD7AD0()
{
  v1 = v0[20];
  sub_100016590(v0[26], v0[27]);

  sub_100DD92EC(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100DD7B84()
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

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[26];
  v5 = v0[27];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to unregister device: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100016590(v6, v5);
  }

  else
  {

    sub_100016590(v6, v5);
  }

  sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD7DA0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138FB50);
  *v4 = v2;
  v4[1] = sub_100014650;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v5, v6);
}

uint64_t sub_100DD7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014744;

  return sub_100DB7E38(a3);
}

uint64_t sub_100DD7F30(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100DD7F50, v1, 0);
}

uint64_t sub_100DD7F50()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v1[18];
  v26 = [objc_opt_self() sharedInstance];
  v1[20] = v26;
  v4 = objc_allocWithZone(FMDLocalFindableAccessory);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithIdentifier:isa name:v6 connected:0];
  v1[21] = v7;

  v8 = String._bridgeToObjectiveC()();

  [v7 setSerialNumber:v8];

  v9 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v10 = (v3 + v9[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    v12 = *v10;
    v1[10] = *v10;
    v1[11] = v11;
    sub_100017D5C(v12, v11);
    sub_100DD8D18();
    RawRepresentable<>.hexString.getter();
    v13 = String._bridgeToObjectiveC()();

    [v7 setAlternateSerialNumber:v13];

    sub_100006654(v12, v11);
  }

  v14 = v1[18];
  type metadata accessor for PeripheralConnectionMaterial(0);
  v15 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setIrkData:v15];

  MACAddress.bluetoothAddress.getter();
  v16 = String._bridgeToObjectiveC()();

  [v7 setBtAddress:v16];

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v14 + v9[10]);
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  String.init(format:_:)();
  v19 = String._bridgeToObjectiveC()();

  [v7 setVendorId:v19];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = *(v14 + v9[11]);
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  *(v20 + 32) = v21;
  String.init(format:_:)();
  v22 = String._bridgeToObjectiveC()();

  [v7 setProductId:v22];

  v23 = UUID._bridgeToObjectiveC()().super.isa;
  [v7 setBaUUID:v23];

  v1[2] = v1;
  v1[3] = sub_100DD8384;
  v24 = swift_continuation_init();
  v1[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100DDDDE4;
  v1[13] = &unk_101650B48;
  v1[14] = v24;
  [v26 didRemoveLocalFindableAccessory:v7 completion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100DD8384()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_100DD850C;
  }

  else
  {
    v4 = sub_100DD84A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DD84A4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DD850C(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100DD8584(uint64_t a1, void *a2)
{
  v3 = sub_1000035D0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100DD8630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100DD7DA0(a1, v4);
}

uint64_t sub_100DD86CC(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DD7E94(a1, v6, v1 + v5);
}

uint64_t sub_100DD87BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100BAF6A4;

  return sub_100DDABD0(a2, a3);
}

void sub_100DD885C(uint64_t a1)
{
  v2 = type metadata accessor for BeaconProductInfoRecord(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  sub_1000D2A70(a1, &v26 - v9, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016BB490);
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
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save BeaconProductInfoRecord %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    sub_100DD921C(v10, v7, type metadata accessor for BeaconProductInfoRecord);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016BB490);
    sub_100DD9284(v7, v5, type metadata accessor for BeaconProductInfoRecord);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100DD92EC(v5, type metadata accessor for BeaconProductInfoRecord);
      v25 = sub_1000136BC(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully saved BeaconProductInfoRecord %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100DD92EC(v5, type metadata accessor for BeaconProductInfoRecord);
    }

    sub_100DD92EC(v7, type metadata accessor for BeaconProductInfoRecord);
  }
}

unint64_t sub_100DD8D18()
{
  result = qword_1016BB868;
  if (!qword_1016BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB868);
  }

  return result;
}

uint64_t sub_100DD8D78()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100D97B2C(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DD8EFC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DA7C50(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DD9088(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100D980A8(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DD921C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DD9284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DD92EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100DD934C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DCBA08(a1, v1);
}

unint64_t sub_100DD9498()
{
  result = qword_1016BB878;
  if (!qword_1016BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB878);
  }

  return result;
}

uint64_t sub_100DD94EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DCE8DC(a1, v5, v4);
}

unint64_t sub_100DD9598()
{
  result = qword_1016BB888;
  if (!qword_1016BB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB888);
  }

  return result;
}

uint64_t sub_100DD95EC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v22 = (a18 >> 59) & 6 | ((a16 & 0x2000000000000000) != 0);
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
      {
        return result;
      }

      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      sub_100016590(a7, a8);
      sub_100016590(a9, a10);
      sub_100016590(a11, a12);
      sub_100016590(a13, a14);
      sub_100016590(a15, a16 & 0xDFFFFFFFFFFFFFFFLL);
      v25 = a18 & 0xCFFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v22 == 2)
  {
LABEL_8:
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    a17 = a5;
    v25 = a6;
    goto LABEL_9;
  }

  if (v22 != 3)
  {
    return result;
  }

  sub_100016590(result, a2);
  a17 = a3;
  v25 = a4;
LABEL_9:

  return sub_100016590(a17, v25);
}

uint64_t sub_100DD976C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DCC134(a1, v5, v4);
}

uint64_t sub_100DD9818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100DCC228(a1, v4, v5, v6, v7);
}

uint64_t sub_100DD993C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100DD9954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100DC0BC8(a1, v4);
}

uint64_t sub_100DD9A00(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 72);
  v3 = *(a1 + 88);
  v4 = *(a1 + 110);
  v5 = *(a1 + 120);
  v6 = (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v1 >> 54) & 0xC0 | (v2 >> 52) & 0x300 | (v3 >> 50) & 0xC00 | v4 & 0x3000 | (v5 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v1 >> 54) & 0xC0 | (v2 >> 52) & 0x300 | (v3 >> 50) & 0xC00 | v4 & 0x3000 | (v5 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15);
  v7 = v6 ^ 0x3FFFF;
  v8 = 0x40000 - v6;
  if (v7 >= 0x3FFFB)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100DD9AA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100DD3964(a1, v4);
}

uint64_t sub_100DD9B54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DD4A3C(a1, v5, v4);
}

uint64_t sub_100DD9BFC(uint64_t a1)
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

  return sub_100DD50F4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100DD9D2C()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_100D76090(v0 + v2, *v3, v3[1]);
}

uint64_t sub_100DD9DC4()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016B5490, &unk_1013D67E0, sub_1009F1840, type metadata accessor for BeaconProductInfoRecord);
}

uint64_t sub_100DD9E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100DD9EA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100DD92EC(a1, type metadata accessor for LocalFindableAccessoryRecord);
  return sub_100DD9284(v3, a1, type metadata accessor for LocalFindableAccessoryRecord);
}

uint64_t sub_100DD9F00(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 2)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100016590(result, a2);
}

uint64_t sub_100DD9F1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DC9230(a1, v5, v4);
}

unint64_t sub_100DD9FC8(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, unint64_t))
{
  v7 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v12 = a3;
      v11 = a4;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v11 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      v12 = a4;
    }

    return v15(v12, v11);
  }

  else if (v7 == 6 || v7 == 7 || v7 == 9)
  {
    v8 = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return (a7)(result, v8, a3, a4);
  }

  return result;
}

uint64_t sub_100DDA0C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DC868C(a1, v1);
}

uint64_t sub_100DDA164(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DC8D64(a1, v1);
}

unint64_t sub_100DDA200()
{
  result = qword_1016BB8B8;
  if (!qword_1016BB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB8B8);
  }

  return result;
}

uint64_t sub_100DDA254(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DC9230(a1, v5, v4);
}

unint64_t sub_100DDA300()
{
  result = qword_1016BB8C0;
  if (!qword_1016BB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB8C0);
  }

  return result;
}

uint64_t sub_100DDA354()
{
  v1 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016A9590, &unk_1013BB520, sub_1009F1D18, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100DDA41C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D9686C(a1, v1);
}

uint64_t sub_100DDA4B8(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BA6C8;

  return sub_100D96C00(a1);
}

uint64_t sub_100DDA550(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalFindablePreferences(0) - 8);
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

  return sub_100D93378(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100DDA6E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100D9235C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_100DDA848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100D8776C(a1, v4, v5);
}

uint64_t sub_100DDA8FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D8D630(a1, v1);
}

uint64_t sub_100DDA998()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100DC411C(v4, v0 + v3);
}

uint64_t sub_100DDAAAC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100DC80CC(a1, a2 & 1, v2 + v7);
}

uint64_t sub_100DDABD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DDAD04, 0, 0);
}

uint64_t sub_100DDAD04()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(v3 + 16);
  v0[11] = v7;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v4, v2);
  sub_101123D4C(0, 1, 0);
  v7(v1, v6 + v5, v2);

  Identifier.id.getter();
  v8 = *(v3 + 8);
  v0[13] = v8;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  if (v10 >= v9 >> 1)
  {
    sub_101123D4C((v9 > 1), v10 + 1, 1);
  }

  v0[15] = _swiftEmptyArrayStorage;
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  _swiftEmptyArrayStorage[2] = v10 + 1;
  (*(v12 + 32))(_swiftEmptyArrayStorage + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11, v13);
  v14 = type metadata accessor for CentralManager();
  v15 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_100DDAF68;

  return dispatch thunk of CentralManagerProtocol.retrievePeripherals(identifiers:)(_swiftEmptyArrayStorage, v14, v15);
}

uint64_t sub_100DDAF68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_100DDB3D8;
  }

  else
  {

    v4 = sub_100DDB084;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DDB084()
{
  v25 = v0;
  v1 = v0[17];
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
      v2 = *(v0[17] + 32);

LABEL_6:

      v3 = v0[1];

      return v3(v2);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_101694EA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016BB490);
  v5(v6, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[6];
  v15 = v0[4];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v13(v14, v15);
    v21 = sub_1000136BC(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Missing peripheral for %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    v13(v14, v15);
  }

  sub_100500BC4();
  swift_allocError();
  *v22 = xmmword_1013E84C0;
  *(v22 + 16) = 3;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_100DDB3D8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100DDB460()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100017D5C(v5, v6);
      type metadata accessor for UUID();
      type metadata accessor for Date();
      sub_100D97688(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100D97688(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100D97688(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_100D97688(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v3 = Dictionary<>.init(dataRepresentation:)();
      sub_100016590(v5, v6);
      return v3;
    }
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_10090B740(_swiftEmptyArrayStorage);
}

unint64_t sub_100DDB824()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100017D5C(v5, v6);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100D97688(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v3 = Dictionary<>.init(dataRepresentation:)();
      sub_100016590(v5, v6);
      return v3;
    }
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_10090B960(_swiftEmptyArrayStorage);
}

void sub_100DDBB80(uint64_t a1, uint64_t a2)
{
  sub_100DDB824();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFE858(a1, a2, isUniquelyReferenced_nonNull_native);
  v5 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for UUID();
  sub_100D97688(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100D97688(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6 = Dictionary<>.dataRepresentation.getter();
  v8 = v7;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v6, v8);
  v10 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v10];
}

void sub_100DDBD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  (*(v5 + 16))(v13, a1, v4);
  (*(v5 + 56))(v13, 0, 1, v4);
  v27 = sub_100DDB460();
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    sub_1001E51EC(v11);
    sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    v18 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v18;
    sub_100FFD694(v7, v17, isUniquelyReferenced_nonNull_native);
    (*(v15 + 8))(v17, v14);
    v27 = v26;
  }

  v20 = [objc_opt_self() standardUserDefaults];
  sub_100D97688(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100D97688(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100D97688(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100D97688(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = Dictionary<>.dataRepresentation.getter();
  v23 = v22;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v21, v23);
  v25 = String._bridgeToObjectiveC()();
  [v20 setObject:isa forKey:v25];
}

uint64_t sub_100DDC1F0()
{
  v2 = *(type metadata accessor for DeviceEvent(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100D81514(v4, v0 + v3);
}

uint64_t sub_100DDC2C8()
{
  v1 = *(sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100E724EC(v5, v0 + v2, v6);
}

uint64_t sub_100DDC3AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D78F7C();
}

uint64_t sub_100DDC448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7900C();
}

uint64_t sub_100DDC4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7909C();
}

uint64_t sub_100DDC580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7A2EC();
}

uint64_t sub_100DDC61C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7BDE0();
}

uint64_t sub_100DDC6B8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DB7A18(a1, v6, v1 + v5);
}

uint64_t sub_100DDC79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DB9970(a1, v4, v5, v6);
}

uint64_t sub_100DDC85C()
{
  v1 = *(type metadata accessor for AccessoryMetadataRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016B4280, ",W\t", sub_1009F1F84, type metadata accessor for AccessoryMetadataRecord);
}

uint64_t sub_100DDC97C()
{
  v2 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100DB4E98(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DDCB00(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DB7328(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDCC8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DB53C4(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DDCE78()
{
  v2 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100DAE4AC(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DDCFFC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DB3D24(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDD188(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1000BC4D4(a1, a2);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = sub_1000BC4D4(a3, a4);
  v12 = *(v11 - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v8 + 8))(v4 + v9, v7);
  (*(v12 + 8))(v4 + v13, v11);

  return _swift_deallocObject(v4, v14 + 8);
}

uint64_t sub_100DDD2EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DAE8F0(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DDD48C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014650;

  return sub_100DA8804(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_100DDD634()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100DA8F08(v0 + v3, v7, v0 + v6);
}

uint64_t sub_100DDD7C8(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1000BC4D4(a1, a2);
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v2 + v7, v5);
  (*(v10 + 8))(v2 + v11, v9);

  return _swift_deallocObject(v2, v12 + 8);
}

uint64_t sub_100DDD934(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100DAD850(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDDAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1011E0F10(a1, v4, v5, v6);
}

uint64_t sub_100DDDB74(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DD87BC(a1, v6, v1 + v5);
}

uint64_t sub_100DDDCA8()
{
  v1 = *(type metadata accessor for PairingErrorRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_10169A760, &unk_101393E60, sub_1009F1AAC, type metadata accessor for PairingErrorRecord);
}

uint64_t sub_100DDDD70(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_100DDDDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = v6 - 8;
  v23 = *(v6 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  (*(v12 + 16))(v14 + v13, a1 + *(v7 + 28), v11);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = v10;
  sub_1009C99C0(v14, sub_100DE07A4, v15);

  OS_dispatch_group.wait()();
  sub_100DE05E8(a1, v9, type metadata accessor for SharedBeaconRecord);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_10002AD7C(v9, v19 + v17, type metadata accessor for SharedBeaconRecord);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = v24;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;

  sub_100AAB488(a1, sub_100DE0650, v19);
}

uint64_t sub_100DDE094()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  __chkstk_darwin(v11);
  v15 = (&v27 - v14);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v16 = v29;
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v16, v15);

  v18 = type metadata accessor for OwnedBeaconRecord(0);
  (*(v3 + 16))(v13, v1 + *(v18 + 20), v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v19 = *(v5 + 48);
  sub_100015794(v15, v7);
  sub_100015794(v13, &v7[v19]);
  v20 = *(v3 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v22 = v28;
    sub_100015794(v7, v28);
    if (v20(&v7[v19], 1, v2) != 1)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v7[v19], v2);
      sub_100003FF4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = v22;
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v3 + 8);
      v25(v23, v2);
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
      v25(v24, v2);
      sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
      return v21 & 1;
    }

    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    (*(v3 + 8))(v22, v2);
    goto LABEL_8;
  }

  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
  if (v20(&v7[v19], 1, v2) != 1)
  {
LABEL_8:
    sub_10000B3A8(v7, &qword_1016AF880, &unk_10138CE20);
    v21 = 0;
    return v21 & 1;
  }

  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100DDE55C(uint64_t a1, int a2, int a3)
{
  v70 = a2;
  v71 = a3;
  v76 = a1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v73 = type metadata accessor for OwnedBeaconRecord(0);
  v67 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = v7;
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v3;
  v19 = *(v3 + 72);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.notOnQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v63 = v6;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v74 = (v21 + 16);
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    v65 = v23;
    v75 = v22;
    v66 = v21;

    v18 = static os_log_type_t.default.getter();
    if (qword_101695038 == -1)
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
  v24 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  v64 = xmmword_101385D80;
  *(v25 + 16) = xmmword_101385D80;
  v26 = *(v73 + 20);
  v27 = type metadata accessor for UUID();
  sub_100003FF4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v73 = v26;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100008C00();
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v24, "Unpair owned beacon: %@", 23, 2, v25);

  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100003FF4(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v31 = *(v9 + 8);
  v31(v12, v8);
  v31(v14, v8);
  if (v78 == v77)
  {
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v24, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    v33 = swift_allocError();
    *v34 = 0;
    v35 = v74;
    swift_beginAccess();
    *v35 = v33;
    swift_errorRetain();

    dispatch_group_leave(v75);
  }

  v36 = dispatch_group_create();
  dispatch_group_enter(v36);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v37 = *(v27 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v64;
  v40 = v76;
  (*(v37 + 16))(v39 + v38, v76 + v73, v27);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v42 = v36;
  v43 = v72;
  sub_1009C99C0(v39, sub_100407BC0, v41);

  OS_dispatch_group.wait()();
  v44 = v69;
  sub_100DE05E8(v40, v69, type metadata accessor for OwnedBeaconRecord);
  v45 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v46 = (v68 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_10002AD7C(v44, v47 + v45, type metadata accessor for OwnedBeaconRecord);
  v48 = (v47 + v46);
  v49 = v65;
  *v48 = sub_100DE0790;
  v48[1] = v49;
  v50 = v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v50 = v43;
  *(v50 + 8) = v70 & 1;
  *(v50 + 9) = v71 & 1;

  sub_100AAA40C(v40, sub_10040AE98, v47);

  v51 = v75;
  OS_dispatch_group.wait()();
  v52 = v74;
  swift_beginAccess();
  if (*v52 || (v53 = sub_100D5F668(), v54 >> 60 == 15) || (v55 = v53, v56 = v54, v57 = sub_100DE6748(v53, v54), sub_100006654(v55, v56), !v57))
  {
  }

  else
  {
    v58 = type metadata accessor for Date();
    v59 = v63;
    (*(*(v58 - 8) + 56))(v63, 1, 1, v58);
    sub_100466E88(v40 + v73, v59);

    sub_10000B3A8(v59, &unk_101696900, &unk_10138B1E0);
  }

  v60 = *(v66 + 16);
  swift_errorRetain();

  return v60;
}

void sub_100DDEDC8(uint64_t a1, NSObject *a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a2);
}

uint64_t sub_100DDEE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v41 = a6;
  v42 = a7;
  v47 = a4;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconRecord(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = a3;
    swift_errorRetain();
    v20 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10138BBE0;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v27 = String.init<A>(describing:)();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v26;
    *(v22 + 72) = v27;
    *(v22 + 80) = v28;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Error unpairing OwnedBeaconRecord %@: %@", 40, 2, v22);

    swift_errorRetain();
    (v46)(a1);
  }

  else
  {
    v30 = a2;
    v31 = a5;
    v40 = *(a5 + 72);
    sub_100DE05E8(v30, &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v32 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v33 = v32 + v18;
    v34 = (v32 + v18 + 9) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    sub_10002AD7C(v19, v35 + v32, type metadata accessor for OwnedBeaconRecord);
    v36 = (v35 + v33);
    *v36 = v41 & 1;
    v36[1] = v42 & 1;
    v37 = (v35 + v34);
    *v37 = a3;
    v37[1] = v47;
    aBlock[4] = sub_100DDFB4C;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016512B8;
    v38 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v39 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);
    (*(v46 + 8))(v12, v39);
    (*(v44 + 8))(v15, v45);
  }
}

uint64_t sub_100DDF340(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v58 = a6;
  LODWORD(v56) = a4;
  LODWORD(v55) = a3;
  v8 = type metadata accessor for DispatchQoS();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v48 - v13;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v54 - 8);
  __chkstk_darwin(v54);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  v69 = v21;
  v70 = sub_100003FF4(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v22 = sub_1000280DC(aBlock);
  v23 = a2;
  sub_100DE05E8(a2, v22, type metadata accessor for OwnedBeaconRecord);
  v25 = v69;
  v24 = v70;
  sub_1000035D0(aBlock, v69);
  (*(*(*(v24 + 8) + 8) + 32))(v25);
  v26 = type metadata accessor for Transaction();
  v62 = v20;
  v63 = a1;
  v64 = aBlock;
  v65 = v55;
  v66 = v56;
  v55 = v26;
  static Transaction.named<A>(_:with:)();
  v50 = v18;
  v27 = *(v18 + 8);
  v51 = v17;
  v27(v20, v17);
  sub_100007BAC(aBlock);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v28 = qword_10177B2E8;
  v29 = v23 + v21[5];
  v30 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v30);
  *(&v48 - 4) = v28;
  *(&v48 - 3) = v29;
  *(&v48 - 2) = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  *(&v48 - 1) = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v31 = *(v14 + 8);
  v56 = v16;
  v32 = v54;
  v31(v16, v54);
  v33 = v32;
  if (sub_100DDE094())
  {
    v49 = v31;
    v34 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v35 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100008C00();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Deleted current self-beacon OwnedBeaconRecord %@", 48, 2, v36);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v40 = v53;
    (*(v50 + 56))(v53, 1, 1, v51);
    sub_1000034A4();
    v41 = v52;
    sub_100015794(v40, v52);
    sub_100EEAE98(v41);

    sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
    v31 = v49;
  }

  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(4u);
  static Transaction.named<A>(_:with:)();
  sub_100A907FC();
  sub_100A83364(0);
  v42 = swift_allocObject();
  v43 = v58;
  *(v42 + 16) = v57;
  *(v42 + 24) = v43;
  v70 = sub_10041ABC0;
  v71 = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v69 = &unk_101651308;
  v44 = _Block_copy(aBlock);

  v45 = v59;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v46 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  v31(v46, v33);
  (*(v60 + 8))(v45, v61);
}

uint64_t sub_100DDFB4C()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_100DDF340(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_100DDFBEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5)
{
  v36 = a5;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    swift_errorRetain();
    v18 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138BBE0;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v25 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Error unpairing SharedBeaconRecord %@: %@", 41, 2, v20);

    swift_errorRetain();
    v39(a1);
  }

  else
  {
    v28 = v36;
    v35[1] = *(v36 + 72);
    sub_100DE05E8(a2, v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v29 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    sub_10002AD7C(v17, v31 + v29, type metadata accessor for SharedBeaconRecord);
    v32 = (v31 + v30);
    *v32 = a3;
    v32[1] = a4;
    aBlock[4] = sub_100DE06FC;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016513A8;
    v33 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v34 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v40 + 1))(v10, v34);
    (*(v38 + 8))(v13, v39);
  }
}

uint64_t sub_100DE00C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SharedBeaconRecord(0);
  v37 = sub_100003FF4(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v13 = sub_1000280DC(aBlock);
  sub_100DE05E8(a2, v13, type metadata accessor for SharedBeaconRecord);
  v15 = v36;
  v14 = v37;
  sub_1000035D0(aBlock, v36);
  (*(*(*(v14 + 8) + 8) + 32))(v15);
  type metadata accessor for Transaction();
  v30 = v12;
  v31 = a1;
  v32 = aBlock;
  v33 = 257;
  static Transaction.named<A>(_:with:)();
  (*(v10 + 8))(v12, v9);
  sub_100007BAC(aBlock);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(4u);
  static Transaction.named<A>(_:with:)();
  v16 = swift_allocObject();
  v17 = v25;
  *(v16 + 16) = v24;
  *(v16 + 24) = v17;
  v37 = sub_100470308;
  v38 = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v36 = &unk_1016513F8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v19 = v23;
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v29 + 8))(v19, v20);
  (*(v26 + 8))(v8, v28);
}

uint64_t sub_100DE0590(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 448))(v1, v2);
}

uint64_t sub_100DE05E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DE0650(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_100DDFBEC(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_100DE06FC()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100DE00C0(v3, v0 + v2, v5, v6);
}

uint64_t type metadata accessor for BeaconNamingRecord(uint64_t a1)
{
  result = qword_1016BB998;
  if (!qword_1016BB998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100DE0828(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DE08D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  v74 = type metadata accessor for UUID();
  v9 = *(v74 - 8);
  v10 = __chkstk_darwin(v74);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v59 - v13;
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001013E8E10 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      sub_100DE27B4();
      swift_allocError();
      *v38 = 0;
      goto LABEL_16;
    }
  }

  v70 = a2;
  v71 = v12;
  v16 = [a1 recordID];
  v17 = [v16 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v18 = *(v9 + 6);
  v19 = v74;
  if (v18(v8, 1, v74) == 1)
  {
    sub_1002EA198(v8);
    sub_100DE27B4();
    swift_allocError();
    *v20 = 1;
LABEL_16:
    swift_willThrow();

    return;
  }

  v69 = v9;
  v67 = *(v9 + 4);
  v68 = v9 + 32;
  v67(v73, v8, v19);
  v21 = [a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 objectForKeyedSubscript:v22];

  if (!v23)
  {
    goto LABEL_18;
  }

  v77 = v23;
  sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v63 = v75;
  v24 = v21;
  v25 = v76;
  v26 = String._bridgeToObjectiveC()();
  v65 = v24;
  v27 = [v24 objectForKeyedSubscript:v26];

  if (!v27 || (v64 = v25, v75 = v27, (swift_dynamicCast() & 1) == 0) || (v62 = v77, v28 = String._bridgeToObjectiveC()(), v29 = [v65 objectForKeyedSubscript:v28], v28, !v29) || (v77 = v29, (swift_dynamicCast() & 1) == 0))
  {

    v19 = v74;
LABEL_18:
    v39 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    *(v40 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v40 + 64) = sub_10013A2D8();
    *(v40 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v41 = a1;
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v42, "Invalid BeaconNamingRecord - %@", 31, 2, v40);

    sub_100DE27B4();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();

    goto LABEL_19;
  }

  v31 = v75;
  v30 = v76;
  v32 = v72;
  UUID.init(uuidString:)();

  v19 = v74;
  if (v18(v32, 1, v74) == 1)
  {

    sub_1002EA198(v32);
    v33 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    *(v34 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v34 + 64) = sub_10013A2D8();
    *(v34 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v35 = a1;
    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v36, "Invalid BeaconNamingRecord - %@", 31, 2, v34);

    sub_100DE27B4();
    swift_allocError();
    *v37 = 2;
    swift_willThrow();

LABEL_19:
    swift_unknownObjectRelease();
    v69[1](v73, v19);
    return;
  }

  v64 = type metadata accessor for BeaconNamingRecord(0);
  v44 = v70;
  v69 = (v70 + *(v64 + 36));
  v67(v71, v32, v19);
  v72 = v30;
  CKRecordKeyValueSetting.subscript.getter();
  ObjectType = v75;
  v63 = v76;
  v60 = objc_autoreleasePoolPush();
  v45 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v61 = v31;
  v46 = v45;
  [a1 encodeSystemFieldsWithCoder:v45];
  [v46 finishEncoding];
  v47 = v19;
  v48 = [v46 encodedData];
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  objc_autoreleasePoolPop(v60);
  swift_unknownObjectRelease();

  *v44 = v49;
  v44[1] = v51;
  v52 = v64;
  v53 = v67;
  v67(v44 + *(v64 + 20), v73, v47);
  v53(v44 + v52[6], v71, v47);
  v54 = v61;
  *(v44 + v52[7]) = v62;
  v55 = (v44 + v52[8]);
  v56 = v72;
  *v55 = v54;
  v55[1] = v56;
  v57 = v69;
  v58 = v63;
  *v69 = ObjectType;
  v57[1] = v58;
}

void sub_100DE1148(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177C0C0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v6 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  (*(v3 + 16))(v5, a1, v2);
  sub_100DE2714(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = UUID.uuidString.getter();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v14, "returning baseUrl %@ for %@", 27, 2, v7);
}

uint64_t sub_100DE13B8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C0C0);
  sub_1000076D4(v0, qword_10177C0C0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

Swift::Int sub_100DE1514()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v1 = type metadata accessor for BeaconNamingRecord(0);
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 28)));
  String.hash(into:)();
  if (*(v0 + *(v1 + 36) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

unint64_t sub_100DE1650()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6449656C6F72;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x696A6F6D65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100DE1708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100DE2B9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100DE1730(uint64_t a1)
{
  v2 = sub_100DE2808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE176C(uint64_t a1)
{
  v2 = sub_100DE2808();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE17AC(uint64_t a1, int *a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[7]));
  String.hash(into:)();
  if (*(v2 + a2[9] + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100DE18E0(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[7]));
  String.hash(into:)();
  if (*(v2 + a2[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100DE1A5C(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for BeaconNamingRecord(0);
  v4 = UUID.uuidString.getter();
  if (!v18)
  {

    goto LABEL_9;
  }

  if (v17 == v4 && v18 == v5)
  {

    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_9:
    v17 = UUID.uuidString.getter();
    v18 = v8;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v18 & 1) != 0 || v17 != *(v1 + v3[7]))
  {
    v17 = *(v1 + v3[7]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v9 = (v1 + v3[8]);
  v11 = *v9;
  v10 = v9[1];
  if (!v18)
  {
    goto LABEL_19;
  }

  if (v17 == v11 && v18 == v10)
  {

    goto LABEL_20;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_19:
    v17 = v11;
    v18 = v10;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_20:
  CKRecordKeyValueSetting.subscript.getter();
  v13 = (v2 + v3[9]);
  v14 = v13[1];
  if (!v18)
  {
    if (!v14)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_29;
  }

  if (!v14)
  {

LABEL_29:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v17 == *v13 && v18 == v14)
  {
    swift_unknownObjectRelease();
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_29;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100DE1DE4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BBA20, &qword_1013E8F40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100DE2808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_100017D5C(v11, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v11, v12);
  }

  else
  {
    sub_100016590(v11, v12);
    type metadata accessor for BeaconNamingRecord(0);
    LOBYTE(v11) = 1;
    type metadata accessor for UUID();
    sub_100DE2714(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100DE209C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_1000BC4D4(&qword_1016BBA10, &qword_1013E8F38);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v39 = a1;
  sub_1000035D0(a1, v15);
  sub_100DE2808();
  v16 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(v39);
  }

  v41 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v14 = v40;
  LOBYTE(v40) = 1;
  sub_100DE2714(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = v8;
  v18 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v12;
  v19 = v17;
  v20 = *(v34 + 32);
  v20(&v14[*(v12 + 20)], v19, v18);
  LOBYTE(v40) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v14;
  v20(&v14[*(v32 + 24)], v6, v18);
  LOBYTE(v40) = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v32;
  *&v14[*(v32 + 28)] = v21;
  LOBYTE(v40) = 4;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = &v14[*(v22 + 32)];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v40) = 5;
  v26 = v22;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  v30 = &v14[*(v26 + 36)];
  (*(v36 + 8))(v11, v37);
  *v30 = v27;
  v30[1] = v29;
  sub_100DE285C(v14, v33);
  sub_100007BAC(v39);
  return sub_100DE28C0(v14);
}

void sub_100DE2600(uint64_t a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  sub_100DE1148(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100DE2690(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2714(&unk_1016BB9F0, type metadata accessor for BeaconNamingRecord, &unk_1013E8ED4);
  result = sub_100DE2714(&qword_1016B1528, type metadata accessor for BeaconNamingRecord, &unk_1013E8EAC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100DE2714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100DE275C(uint64_t a1)
{
  result = sub_100DE2714(&qword_1016B1520, type metadata accessor for BeaconNamingRecord, &unk_1013E8EFC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100DE27B4()
{
  result = qword_1016BBA00;
  if (!qword_1016BBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA00);
  }

  return result;
}

unint64_t sub_100DE2808()
{
  result = qword_1016BBA18;
  if (!qword_1016BBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA18);
  }

  return result;
}

uint64_t sub_100DE285C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconNamingRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DE28C0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100DE291C(uint64_t a1, uint64_t a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = type metadata accessor for BeaconNamingRecord(0);
    if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      v5 = v4[8];
      v6 = *(a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v6 == *v8 && v7 == v8[1];
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = v4[9];
        v11 = (a1 + v10);
        v12 = *(a1 + v10 + 8);
        v13 = (a2 + v10);
        v14 = v13[1];
        if (v12)
        {
          if (v14)
          {
            v15 = *v11 == *v13 && v12 == v14;
            if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v14)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_100DE2A40()
{
  result = qword_1016BBA30;
  if (!qword_1016BBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA30);
  }

  return result;
}

unint64_t sub_100DE2A98()
{
  result = qword_1016BBA38;
  if (!qword_1016BBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA38);
  }

  return result;
}

unint64_t sub_100DE2AF0()
{
  result = qword_1016BBA40;
  if (!qword_1016BBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA40);
  }

  return result;
}

unint64_t sub_100DE2B48()
{
  result = qword_1016BBA48;
  if (!qword_1016BBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA48);
  }

  return result;
}

uint64_t sub_100DE2B9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101348340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100DE2DD4()
{
  result = qword_1016BBAF8;
  if (!qword_1016BBAF8)
  {
    type metadata accessor for EmptyPairingPolicyVerifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBAF8);
  }

  return result;
}

uint64_t sub_100DE2E38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v10, v10[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v10);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_100007BAC(v10);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
  }

  return result;
}

unint64_t sub_100DE2EFC(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2F2C();
  result = sub_10030FD28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE2F2C()
{
  result = qword_1016BBB00;
  if (!qword_1016BBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB00);
  }

  return result;
}

uint64_t sub_100DE2F90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100DE3040(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_100DE2FBC(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2FEC();
  result = sub_10064D574();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE2FEC()
{
  result = qword_1016BBB08;
  if (!qword_1016BBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB08);
  }

  return result;
}

uint64_t sub_100DE3040(void *a1)
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
  if (v7 == 60)
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

unint64_t sub_100DE3140()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_10090403C(_swiftEmptyArrayStorage);
  v44 = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = type metadata accessor for LostModeAlertInfo(0);
  v10 = (v1 + v9[5]);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v43 = &type metadata for String;
    *&v42 = v12;
    *(&v42 + 1) = v11;
    sub_1001E6224(&v42, v41);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v5;
    sub_100FFB368(v41, v6, v8, isUniquelyReferenced_nonNull_native);

    v44 = v40;
  }

  else
  {
    sub_1001E4C5C(v6, v8, &v42);

    sub_10000B3A8(&v42, &unk_1016A0B10, &qword_10139BF40);
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v14;
  v17 = v15;
  v18 = (v1 + v9[6]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v43 = &type metadata for String;
    *&v42 = v20;
    *(&v42 + 1) = v19;
    sub_1001E6224(&v42, v41);

    v21 = v44;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    sub_100FFB368(v41, v16, v17, v22);

    v44 = v40;
  }

  else
  {
    sub_1001E4C5C(v14, v15, &v42);

    sub_10000B3A8(&v42, &unk_1016A0B10, &qword_10139BF40);
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  sub_1000D5660(v1, v4);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v4, 1, v26) == 1)
  {
    sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
    sub_1001E4C5C(v23, v25, &v42);

    sub_10000B3A8(&v42, &unk_1016A0B10, &qword_10139BF40);
  }

  else
  {
    v28 = URL.absoluteString.getter();
    v43 = &type metadata for String;
    *&v42 = v28;
    *(&v42 + 1) = v29;
    (*(v27 + 8))(v4, v26);
    sub_1001E6224(&v42, v41);
    v30 = v44;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v30;
    sub_100FFB368(v41, v23, v25, v31);

    v44 = v40;
  }

  if ((*(v1 + v9[7]) & 1) == 0)
  {
    return v44;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = &type metadata for String;
  *&v42 = v35;
  *(&v42 + 1) = v36;
  sub_1001E6224(&v42, v41);
  v37 = v44;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v37;
  sub_100FFB368(v41, v32, v34, v38);

  return v40;
}

uint64_t sub_100DE3528@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *a1;
  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v6 = v5[12];
    v7 = &a1[v5[16]];
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = &a1[v5[20]];
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v14 = v13[7];
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 32))(a2 + v14, &a1[v6], v15);
    v17 = 0;
    v18 = xmmword_10138BBF0;
    v19 = 0xF000000000000000;
    v20 = v31;
  }

  else
  {
    v29 = *(a1 + 1);
    v30 = *(a1 + 2);
    v21 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
    v22 = v21[20];
    v23 = &a1[v21[24]];
    v8 = *v23;
    v9 = *(v23 + 1);
    v24 = &a1[v21[28]];
    v11 = *v24;
    v12 = *(v24 + 1);
    v13 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v25 = v13[7];
    v26 = type metadata accessor for UUID();
    result = (*(*(v26 - 8) + 32))(a2 + v25, &a1[v22], v26);
    v19 = *(&v31 + 1);
    v17 = v31;
    v18 = v29;
    v20 = v30;
  }

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v20;
  v27 = (a2 + v13[8]);
  *v27 = v8;
  v27[1] = v9;
  v28 = (a2 + v13[9]);
  *v28 = v11;
  v28[1] = v12;
  return result;
}

uint64_t sub_100DE36E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016BBCA8, &qword_1013E9668);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100DE4DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_100017D5C(a3, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100DE38C8(uint64_t a1)
{
  v2 = sub_100DE4DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE3904(uint64_t a1)
{
  v2 = sub_100DE4DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100DE3940@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100DE4B88(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100DE3990(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBCB0, &qword_1013E9670);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100DE4E28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_10002E98C(v15, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100006654(v15, v16);
  }

  else
  {
    sub_100006654(v15, v16);
    v10 = v3[3];
    v15 = v3[2];
    v16 = v10;
    v14 = 1;
    sub_10002E98C(v15, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v15, v16);
    v12 = v3[5];
    v15 = v3[4];
    v16 = v12;
    v14 = 2;
    sub_100017D5C(v15, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
    type metadata accessor for AirPodsLostModeContent.Device(0);
    LOBYTE(v15) = 3;
    type metadata accessor for UUID();
    sub_100DE4E7C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100DE3C70(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBC70, &qword_1013E9648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100DE4A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 72);
    v10[15] = 5;
    sub_1000BC4D4(&qword_1016BBC80, &qword_1013E9650);
    sub_100DE4AD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100DE3EC4(uint64_t a1)
{
  v2 = sub_100DE4E28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE3F00(uint64_t a1)
{
  v2 = sub_100DE4E28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100DE3F54()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6D754E72656E776FLL;
  v4 = 0x65646F4D74736F6CLL;
  if (v1 != 4)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
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

uint64_t sub_100DE401C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100DE520C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100DE4044(uint64_t a1)
{
  v2 = sub_100DE4A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE4080(uint64_t a1)
{
  v2 = sub_100DE4A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE40D4(__int128 *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = v6;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v8 = v39;
  v9 = [objc_opt_self() currentDevice];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 serverFriendlyDescription];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v8;
      sub_100FFACA0(v12, v14, 0xD000000000000011, 0x800000010134EA40, v15);
      v16 = v39;
      Date.init()();
      v17 = Date.epoch.getter();
      (*(v3 + 8))(v5, v2);
      *&v39 = v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v16;
      sub_100FFACA0(v18, v20, 0xD000000000000015, 0x800000010134EA60, v21);
      v22 = v39;
      *&v39 = 1;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v22;
      sub_100FFACA0(v23, v25, 0xD000000000000013, 0x800000010134EA80, v26);
      v27 = v39;
      v29 = sub_1008D9A78(v28);
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v27;
      sub_100FFACA0(v29, v31, 0x6567412D72657355, 0xEA0000000000746ELL, v32);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v33 = a1[3];
      v41 = a1[2];
      v42 = v33;
      v43 = a1[4];
      v34 = a1[1];
      v39 = *a1;
      v40 = v34;
      sub_100DE4544();
      v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v37 = v36;

      sub_1008B5458(a1);

      sub_100017D5C(v35, v37);

      sub_100016590(v35, v37);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100DE4544()
{
  result = qword_1016BBB10;
  if (!qword_1016BBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB10);
  }

  return result;
}

uint64_t sub_100DE45E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100DE4630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100DE46BC(uint64_t a1)
{
  sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100DE4784(uint64_t a1)
{
  sub_100DE47F8(319);
  if (v1 <= 0x3F)
  {
    sub_100DE4964(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100DE47F8(uint64_t a1)
{
  if (!qword_1016BBC38)
  {
    __chkstk_darwin(a1);
    sub_1000BC580(&qword_1016A40E0, &unk_101396F30);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A0AC0, &unk_1013926A0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016BBC38);
    }
  }
}

void sub_100DE4964(uint64_t a1)
{
  if (!qword_1016BBC40)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016BBC40);
    }
  }
}

unint64_t sub_100DE4A80()
{
  result = qword_1016BBC78;
  if (!qword_1016BBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBC78);
  }

  return result;
}

unint64_t sub_100DE4AD4()
{
  result = qword_1016BBC88;
  if (!qword_1016BBC88)
  {
    sub_1000BC580(&qword_1016BBC80, &qword_1013E9650);
    sub_100DE4E7C(&qword_1016BBC90, type metadata accessor for AirPodsLostModeContent.Device, &unk_1013E9550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBC88);
  }

  return result;
}

uint64_t sub_100DE4B88(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BBC98, &unk_1013E9658);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100DE4DD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v14 = 0;
    sub_1008DA158(&qword_1016AD848, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_100017D5C(v9, v10);
    sub_100007BAC(a1);

    sub_100016590(v9, v10);
  }

  return v7;
}

unint64_t sub_100DE4DD4()
{
  result = qword_1016BBCA0;
  if (!qword_1016BBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCA0);
  }

  return result;
}

unint64_t sub_100DE4E28()
{
  result = qword_1016BBCB8;
  if (!qword_1016BBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCB8);
  }

  return result;
}

uint64_t sub_100DE4E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100DE4EF8()
{
  result = qword_1016BBCC0;
  if (!qword_1016BBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCC0);
  }

  return result;
}

unint64_t sub_100DE4F50()
{
  result = qword_1016BBCC8;
  if (!qword_1016BBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCC8);
  }

  return result;
}

unint64_t sub_100DE4FA8()
{
  result = qword_1016BBCD0;
  if (!qword_1016BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCD0);
  }

  return result;
}

unint64_t sub_100DE5000()
{
  result = qword_1016BBCD8;
  if (!qword_1016BBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCD8);
  }

  return result;
}

unint64_t sub_100DE5058()
{
  result = qword_1016BBCE0;
  if (!qword_1016BBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCE0);
  }

  return result;
}

unint64_t sub_100DE50B0()
{
  result = qword_1016BBCE8;
  if (!qword_1016BBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCE8);
  }

  return result;
}

unint64_t sub_100DE5108()
{
  result = qword_1016BBCF0;
  if (!qword_1016BBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCF0);
  }

  return result;
}

unint64_t sub_100DE5160()
{
  result = qword_1016BBCF8;
  if (!qword_1016BBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCF8);
  }

  return result;
}

unint64_t sub_100DE51B8()
{
  result = qword_1016BBD00;
  if (!qword_1016BBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBD00);
  }

  return result;
}

uint64_t sub_100DE520C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E72656E776FLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_100DE5414@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100DE55EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100DE5458@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 32)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 113)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 32)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = a4;
    a7[4] = a5;
    a7[5] = a6;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_100DE5568(uint64_t a1)
{
  *(a1 + 8) = sub_100DE5598();
  result = sub_10027FD5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE5598()
{
  result = qword_1016BBD08;
  if (!qword_1016BBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBD08);
  }

  return result;
}

uint64_t sub_100DE55EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v15, v16);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v15);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v15, v16);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v18 = v10;
    sub_10015049C(v15, v16);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_100DE5458(v7, v8, v9, v18, v11, v12, v17);
    sub_100007BAC(v15);
    result = sub_100007BAC(a1);
    v14 = v17[1];
    *a2 = v17[0];
    a2[1] = v14;
    a2[2] = v17[2];
  }

  return result;
}

uint64_t sub_100DE576C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBDC0, &qword_1013E9C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100DE6310();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for FamilyCryptoKeysV1(0);
    LOBYTE(v14) = 1;
    type metadata accessor for DateInterval();
    sub_1008D8DD0(&qword_1016AD758, &protocol conformance descriptor for DateInterval);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100029784(v14, v11);
    sub_100DE6478();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001E524(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100DE5968@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for DateInterval();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016BBDA8, &qword_1013E9C08);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for FamilyCryptoKeysV1(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_100DE6310();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = a1;
  v13 = v24;
  v12 = v25;
  v14 = v26;
  LOBYTE(v28) = 0;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v11;
  *v11 = v15;
  LOBYTE(v28) = 1;
  sub_1008D8DD0(&qword_1016AD748, &protocol conformance descriptor for DateInterval);
  v16 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v12 + 32);
  v18 = v21;
  v20 = *(v9 + 20);
  v17(v21 + v20, v16, v14);
  v29 = 2;
  sub_100DE6364();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v27);
  *(v18 + *(v9 + 24)) = v28;
  sub_100DE63B8(v18, v23);
  sub_100007BAC(v22);
  return sub_100DE641C(v18);
}

uint64_t sub_100DE5CE4(char *a1, char *a2)
{
  if (qword_1013E9D68[*a1] == qword_1013E9D68[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100DE5D4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100DE5DA8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100DE5DE8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100DE5E40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100DE65E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100DE5EA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100DE65E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100DE5ECC(uint64_t a1)
{
  v2 = sub_100DE6310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE5F08(uint64_t a1)
{
  v2 = sub_100DE6310();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE5F74(unint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FamilyCryptoKeysV1(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v7 = v5 & 0xDFFFFFFFFFFFFFFFLL;
    sub_100017D5C(*v3, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v4, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v4, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_10002EA98(57, v4, v5 & 0xDFFFFFFFFFFFFFFFLL, v17);
    sub_100496F68(v17[0], v17[1], &v18);
    v8 = v19;
    if (v19 >> 60 == 15)
    {
      goto LABEL_10;
    }

    v9 = v18;
    sub_10001E524(v4, v5);
    v6 = v4;
    v4 = v9;
    v5 = v8;
  }

  else
  {
    sub_100017D5C(*v3, v3[1]);
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  v10 = __DataStorage.init(length:)();
  v18 = 0x2000000000;
  v19 = v10;
  sub_1007765FC(&v18, 0);
  v11 = HIDWORD(v18) - v18;
  if (__OFSUB__(HIDWORD(v18), v18))
  {
    __break(1u);
  }

  else
  {
    v12 = v19;
    if (v11 == 32)
    {
      *a1 = v18 | (HIDWORD(v18) << 32);
      a1[1] = v12 | 0x4000000000000000;
      a1[2] = v4;
      a1[3] = v5;
      a1[4] = v6;
      a1[5] = v7;
      return;
    }
  }

  v13 = v11;
  sub_100018350();
  v14 = swift_allocError();
  *v15 = 32;
  *(v15 + 8) = v13;
  *(v15 + 16) = 0;
  swift_willThrow();

  sub_100006654(v6, v7);
  sub_100016590(v4, v5);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v16._countAndFlagsBits = 0xD00000000000003CLL;
  v16._object = 0x80000001013714C0;
  String.append(_:)(v16);
  v17[0] = v14;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
LABEL_10:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FamilyCryptoKeysV1(uint64_t a1)
{
  result = qword_1016BBD68;
  if (!qword_1016BBD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100DE628C(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100DE6310()
{
  result = qword_1016BBDB0;
  if (!qword_1016BBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDB0);
  }

  return result;
}

unint64_t sub_100DE6364()
{
  result = qword_1016BBDB8;
  if (!qword_1016BBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDB8);
  }

  return result;
}

uint64_t sub_100DE63B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCryptoKeysV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DE641C(uint64_t a1)
{
  v2 = type metadata accessor for FamilyCryptoKeysV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100DE6478()
{
  result = qword_1016BBDC8;
  if (!qword_1016BBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDC8);
  }

  return result;
}

unint64_t sub_100DE64E0()
{
  result = qword_1016BBDD0;
  if (!qword_1016BBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDD0);
  }

  return result;
}

unint64_t sub_100DE6538()
{
  result = qword_1016BBDD8;
  if (!qword_1016BBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDD8);
  }

  return result;
}

unint64_t sub_100DE6590()
{
  result = qword_1016BBDE0;
  if (!qword_1016BBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDE0);
  }

  return result;
}

unint64_t sub_100DE65E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AD38, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100DE6630(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v5 = sub_101129A64(&off_101608E58);
  if (sub_100313A28(a1, a2) == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v10)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }

    v7 = sub_10111F5D4(v6, v5);
  }

  else
  {

    return 0;
  }

  return v7;
}

BOOL sub_100DE6748(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v11 = sub_101129A64(&off_101608360);
  sub_100DEFA08(&v10, 8216, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(&v10, 8220, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(&v10, 8233, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  v5 = sub_100313A28(a1, a2);
  v6 = v11;
  if (v5 == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (BYTE4(v10))
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }

    v8 = sub_10111F5D4(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100DE6918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for Endianness();
  __chkstk_darwin(v10 - 8);
  v17 = a4(a3);
  sub_100DEFA08(&v16, a5, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  v11 = sub_100313A28(a1, a2);
  v12 = v17;
  if (v11 == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (BYTE4(v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    v14 = sub_10111F5D4(v13, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_100DE6A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v7;
  v8 = sub_1000BC4D4(&unk_1016BC140, &qword_1013E9EB8);
  v9 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = &v45 - v11;
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_1000D2AD8(v30, v48, &unk_1016BC140, &qword_1013E9EB8);
    v32 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, &v31[v35], v4);
    v37 = sub_100771D14(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_1000097BC(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE6F58(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for FeatureSupportMatrix(0);
  v61 = *(v57 - 8);
  v4 = __chkstk_darwin(v57);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v9 = (&v52 - v8);
  __chkstk_darwin(v7);
  v58 = &v52 - v10;
  v11 = sub_1000BC4D4(&qword_1016BBF10, &qword_1013E9DF0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v60 = &v52 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = v14;
  v56 = a2;
  v17 = 0;
  v18 = *(a1 + 64);
  v53 = a1 + 64;
  v54 = a1;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = v22;
    v59 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = *(*(a1 + 48) + v24);
    v30 = v58;
    sub_100E0ED24(*(a1 + 56) + *(v61 + 72) * v24, v58, type metadata accessor for FeatureSupportMatrix);
    v31 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
    v32 = *(v31 + 48);
    v33 = v55;
    *v55 = v29;
    v34 = v30;
    v14 = v33;
    sub_100E0ECBC(v34, &v33[v32], type metadata accessor for FeatureSupportMatrix);
    (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
    v22 = v23;
LABEL_17:
    v35 = v60;
    sub_1000D2AD8(v14, v60, &qword_1016BBF10, &qword_1013E9DF0);
    v36 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v40 = *v35;
    sub_100E0ECBC(&v35[v39], v9, type metadata accessor for FeatureSupportMatrix);
    v41 = v56;
    v42 = sub_100771D84(v40);
    if ((v43 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_100E0ED24(*(v41 + 56) + *(v61 + 72) * v42, v6, type metadata accessor for FeatureSupportMatrix);
    if (*v6 != *v9 || (sub_100DE764C(v6[1], v9[1]) & 1) == 0)
    {
LABEL_36:
      sub_100E0EC5C(v6, type metadata accessor for FeatureSupportMatrix);
LABEL_37:
      sub_100E0EC5C(v9, type metadata accessor for FeatureSupportMatrix);
      return 0;
    }

    v44 = v6[2];
    v45 = v9[2];
    if (v44)
    {
      if (!v45)
      {
        goto LABEL_36;
      }

      v46 = sub_100DE764C(v44, v45);

      if ((v46 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v45)
    {
      goto LABEL_36;
    }

    if ((sub_100DE7780(v6[3], v9[3]) & 1) == 0)
    {
      goto LABEL_36;
    }

    v47 = v6[4];
    v48 = v9[4];
    if (v47)
    {
      if (!v48)
      {
        goto LABEL_36;
      }

      v49 = sub_100DE7780(v47, v48);

      if ((v49 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v48)
    {
      goto LABEL_36;
    }

    sub_10088D764();
    sub_10090C518();
    v50 = static CustomCodableKeyDictionary<>.== infix(_:_:)();
    sub_100E0EC5C(v6, type metadata accessor for FeatureSupportMatrix);
    result = sub_100E0EC5C(v9, type metadata accessor for FeatureSupportMatrix);
    a1 = v54;
    v21 = v59;
    if ((v50 & 1) == 0)
    {
      return v38;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v51 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
      (*(*(v51 - 8) + 56))(v14, 1, 1, v51);
      v59 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v28 = *(v53 + 8 * v27);
    ++v17;
    if (v28)
    {
      v23 = v22;
      v59 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7510(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100771D58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE764C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100771D58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemVersionNumber();
  v61 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v50 - v8;
  v9 = sub_1000BC4D4(&qword_1016BBF30, &qword_1013E9E00);
  v10 = __chkstk_darwin(v9 - 8);
  result = __chkstk_darwin(v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1000D2AD8(v20, v54, &qword_1016BBF30, &qword_1013E9E00);
    v34 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_100771D58(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1000097BC(&unk_1016BBF40, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v68 = type metadata accessor for UUID();
  v60 = *(v68 - 8);
  v12 = __chkstk_darwin(v68);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v53 - v14;
  v63 = a3;
  v64 = a4;
  v15 = sub_1000BC4D4(a3, a4);
  v16 = __chkstk_darwin(v15 - 8);
  result = __chkstk_darwin(v16);
  v65 = &v53 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = v18;
  v20 = 0;
  v56 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v54 = v22;
  v55 = v60 + 16;
  v66 = (v60 + 32);
  v57 = v27;
  v58 = (v60 + 8);
  while (v26)
  {
    v67 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v35 = v56;
    v37 = v59;
    v36 = v60;
    v38 = v68;
    (*(v60 + 16))(v59, *(v56 + 48) + *(v60 + 72) * v28, v68);
    LOBYTE(v35) = *(*(v35 + 56) + v28);
    v39 = sub_1000BC4D4(a5, a6);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v31 = v62;
    v41(v62, v37, v38);
    *(v31 + v40) = v35;
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    v32 = v65;
LABEL_17:
    sub_1000D2AD8(v31, v32, v63, v64);
    v42 = sub_1000BC4D4(a5, a6);
    v43 = (*(*(v42 - 8) + 48))(v32, 1, v42);
    v44 = v43 == 1;
    if (v43 != 1)
    {
      v45 = *(v42 + 48);
      v46 = v61;
      v47 = v68;
      (*v66)(v61, v32, v68);
      v48 = *(v32 + v45);
      v49 = sub_1000210EC(v46);
      v51 = v50;
      result = (*v58)(v46, v47);
      if (v51)
      {
        v27 = v57;
        v26 = v67;
        if (*(*(a2 + 56) + v49) == v48)
        {
          continue;
        }
      }
    }

    return v44;
  }

  if (v27 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  v31 = v62;
  v32 = v65;
  while (1)
  {
    v33 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v33 >= v27)
    {
      v52 = sub_1000BC4D4(a5, a6);
      (*(*(v52 - 8) + 56))(v31, 1, 1, v52);
      v67 = 0;
      v20 = v30;
      goto LABEL_17;
    }

    v34 = *(v54 + 8 * v33);
    ++v20;
    if (v34)
    {
      v67 = (v34 - 1) & v34;
      v28 = __clz(__rbit64(v34)) | (v33 << 6);
      v20 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE8118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v52 - v9;
  v10 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v11);
  v58 = (&v52 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v55 = a1;
  v56 = v5;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v53 = (v20 + 63) >> 6;
  v54 = v18;
  v23 = &qword_1016A4190;
  v24 = &unk_1013A3550;
  v57 = v8;
  while (v22)
  {
    v60 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_16:
    v30 = (*(v55 + 48) + 16 * v25);
    v31 = *v30;
    v32 = v30[1];
    v33 = v61;
    sub_100E0ED24(*(v55 + 56) + *(v5 + 72) * v25, v61, type metadata accessor for OwnedBeaconGroup.PairingState);
    v34 = sub_1000BC4D4(v23, v24);
    v35 = *(v34 + 48);
    *v13 = v31;
    v13[1] = v32;
    sub_100E0ECBC(v33, v13 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
    sub_100017D5C(v31, v32);
LABEL_17:
    v36 = v58;
    sub_1000D2AD8(v13, v58, &unk_1016BBEA0, &unk_101395A80);
    v37 = sub_1000BC4D4(v23, v24);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v59 = v38 == 1;
    if (v38 == 1)
    {
      return v59;
    }

    v39 = v24;
    v40 = v23;
    v41 = v13;
    v42 = *v36;
    v43 = v36[1];
    v44 = v57;
    sub_100E0ECBC(v36 + *(v37 + 48), v57, type metadata accessor for OwnedBeaconGroup.PairingState);
    v45 = sub_100771E30(v42, v43);
    v47 = v46;
    sub_100016590(v42, v43);
    if ((v47 & 1) == 0)
    {
      sub_100E0EC5C(v44, type metadata accessor for OwnedBeaconGroup.PairingState);
      return 0;
    }

    v5 = v56;
    v48 = *(a2 + 56) + *(v56 + 72) * v45;
    v49 = v61;
    sub_100E0ED24(v48, v61, type metadata accessor for OwnedBeaconGroup.PairingState);
    v50 = sub_10051D0F4(v49, v44);
    sub_100E0EC5C(v49, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100E0EC5C(v44, type metadata accessor for OwnedBeaconGroup.PairingState);
    v13 = v41;
    v23 = v40;
    v24 = v39;
    v22 = v60;
    if ((v50 & 1) == 0)
    {
      return v59;
    }
  }

  if (v53 <= v16 + 1)
  {
    v26 = v16 + 1;
  }

  else
  {
    v26 = v53;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v53)
    {
      v51 = sub_1000BC4D4(v23, v24);
      (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
      v60 = 0;
      v16 = v27;
      goto LABEL_17;
    }

    v29 = *(v54 + 8 * v28);
    ++v16;
    if (v29)
    {
      v60 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_100DE85BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v73 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_1000BC4D4(&qword_1016A5A20, &qword_1013B3550);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = a1;
    v61 = a2;
    v18 = 0;
    v19 = *(a1 + 64);
    v58 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v64 = v15;
    v65 = (v73 + 32);
    v71 = v11;
    v72 = (v73 + 8);
    v63 = &v56 - v16;
    v59 = v23;
    v70 = v73 + 16;
    v57 = v9;
    while (v22)
    {
      v24 = v9;
      v62 = (v22 - 1) & v22;
      v25 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_17:
      v30 = v60;
      v31 = v73;
      (*(v73 + 16))(v11, *(v60 + 48) + *(v73 + 72) * v25, v4);
      v32 = *(*(v30 + 56) + 8 * v25);
      v33 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
      v34 = *(v33 + 48);
      v35 = *(v31 + 32);
      v36 = v64;
      v35(v64, v11, v4);
      *&v36[v34] = v32;
      v15 = v36;
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

      v17 = v63;
      v9 = v24;
LABEL_18:
      sub_1000D2AD8(v15, v17, &qword_1016A5A20, &qword_1013B3550);
      v37 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
      if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
      {
        return;
      }

      v38 = *(v37 + 48);
      (*v65)(v9, v17, v4);
      v39 = *&v17[v38];
      v40 = v61;
      v41 = sub_1000210EC(v9);
      v43 = v42;
      v44 = *v72;
      (*v72)(v9, v4);
      if ((v43 & 1) == 0 || (v45 = *(*(v40 + 56) + 8 * v41), v46 = *(v45 + 16), v46 != *(v39 + 16)))
      {
LABEL_32:

        return;
      }

      if (v46 && v45 != v39)
      {
        v47 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v67 = v45 + v47;
        v68 = v39;
        v66 = v39 + v47;

        v48 = 0;
        while (v48 < *(v45 + 16))
        {
          v49 = *(v73 + 72) * v48;
          v50 = *(v73 + 16);
          v51 = v71;
          v50(v71, v67 + v49, v4);
          if (v48 >= *(v68 + 16))
          {
            goto LABEL_36;
          }

          v52 = v66 + v49;
          v53 = v69;
          v50(v69, v52, v4);
          sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v54 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44(v53, v4);
          v44(v51, v4);
          if ((v54 & 1) == 0)
          {

            goto LABEL_32;
          }

          if (v46 == ++v48)
          {

            v9 = v57;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

LABEL_6:

      v11 = v71;
      v17 = v63;
      v15 = v64;
      v23 = v59;
      v22 = v62;
    }

    if (v23 <= v18 + 1)
    {
      v26 = v18 + 1;
    }

    else
    {
      v26 = v23;
    }

    v27 = v26 - 1;
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        v55 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
        (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
        v62 = 0;
        v18 = v27;
        goto LABEL_18;
      }

      v29 = *(v58 + 8 * v28);
      ++v18;
      if (v29)
      {
        v24 = v9;
        v62 = (v29 - 1) & v29;
        v25 = __clz(__rbit64(v29)) | (v28 << 6);
        v18 = v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_100DE8BCC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100DFBAD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100DE8EAC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F1494(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF32B8(v17 + 1);
    }

    sub_1010F4000(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100DFBD98(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DE9178(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_10076EE68(v34, a2);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v32 = ~v6;
    v8 = 0xEB00000000726577;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v9 <= 3)
      {
        if (v9 == 2)
        {
          v12 = 0x65776F5068676968;
        }

        else
        {
          v12 = 0x4F7265776F506E6FLL;
        }

        if (v9 == 2)
        {
          v13 = 0xE900000000000072;
        }

        else
        {
          v13 = 0xED0000694669576ELL;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0x6F506D756964656DLL;
        }

        else
        {
          v14 = 0x7265776F50776F6CLL;
        }

        if (*(*(v4 + 48) + v7))
        {
          v15 = v8;
        }

        else
        {
          v15 = 0xE800000000000000;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v10 = v14;
        }

        else
        {
          v10 = v12;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }
      }

      else if (*(*(v4 + 48) + v7) <= 5u)
      {
        if (v9 == 4)
        {
          v10 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v10 = 0x7265747461426E6FLL;
        }

        if (v9 == 4)
        {
          v11 = 0xED00006C6C65436ELL;
        }

        else
        {
          v11 = 0xEF694669576E4F79;
        }
      }

      else if (v9 == 6)
      {
        v10 = 0x7265747461426E6FLL;
        v11 = 0xEF6C6C65436E4F79;
      }

      else if (v9 == 7)
      {
        v10 = 0x6F696E61706D6F63;
        v11 = 0xEF79627261654E6ELL;
      }

      else
      {
        v10 = 0x6857796669746F6ELL;
        v11 = 0xEF646E756F466E65;
      }

      v16 = 0x6F696E61706D6F63;
      if (a2 != 7)
      {
        v16 = 0x6857796669746F6ELL;
      }

      v17 = 0xEF79627261654E6ELL;
      if (a2 != 7)
      {
        v17 = 0xEF646E756F466E65;
      }

      if (a2 == 6)
      {
        v16 = 0x7265747461426E6FLL;
        v17 = 0xEF6C6C65436E4F79;
      }

      if (a2 == 4)
      {
        v18 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v18 = 0x7265747461426E6FLL;
      }

      v19 = 0xEF694669576E4F79;
      if (a2 == 4)
      {
        v19 = 0xED00006C6C65436ELL;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a2 == 2)
      {
        v20 = 0x65776F5068676968;
      }

      else
      {
        v20 = 0x4F7265776F506E6FLL;
      }

      if (a2 == 2)
      {
        v21 = 0xE900000000000072;
      }

      else
      {
        v21 = 0xED0000694669576ELL;
      }

      if (a2)
      {
        v22 = 0x6F506D756964656DLL;
      }

      else
      {
        v22 = 0x7265776F50776F6CLL;
      }

      if (a2)
      {
        v23 = v8;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a2 <= 3u ? v20 : v16;
      v25 = a2 <= 3u ? v21 : v17;
      if (v10 == v24 && v11 == v25)
      {
        break;
      }

      v26 = v8;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_73;
      }

      v7 = (v33 + 1) & v32;
      v8 = v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_73:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_71:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *v30;
    sub_100DFBF94(a2, v7, isUniquelyReferenced_nonNull_native);
    *v30 = v34[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DE9538(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100DFC3AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100DE9688(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100017D5C(a2, a3);
    sub_100DFC52C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100017D5C(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100017D5C(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100017D5C(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_100771A28(v32, a2, v44, v50);
    sub_100016590(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100017D5C(v18, v17);
LABEL_60:
  sub_100771A28(v50, a2, a3, &v49);
  sub_100016590(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_100016590(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100017D5C(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_100DE9B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1011D8230(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100E0ED24(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SharedBeaconRecord);
      v15 = sub_1011DB3D8(v8, a2);
      sub_100E0EC5C(v8, type metadata accessor for SharedBeaconRecord);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100E0EC5C(a2, type metadata accessor for SharedBeaconRecord);
    sub_100E0ED24(*(v9 + 48) + v14 * v12, v19, type metadata accessor for SharedBeaconRecord);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100E0ED24(a2, v8, type metadata accessor for SharedBeaconRecord);
    v20[0] = *v3;
    sub_100DFCB14(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100E0ECBC(a2, v17, type metadata accessor for SharedBeaconRecord);
    return 1;
  }
}

uint64_t sub_100DE9DC0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100DFCD90(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DE9EA8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for BeaconNamingRecord(0);
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v61 - v11);
  v72 = *v2;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v13 = v6[5];
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v70 = v13;
  dispatch thunk of Hashable.hash(into:)();
  v77 = v6[6];
  dispatch thunk of Hashable.hash(into:)();
  v71 = *(a2 + v6[7]);
  Hasher._combine(_:)(v71);
  v14 = (a2 + v6[8]);
  v15 = v14[1];
  v69 = *v14;
  v68 = v15;
  String.hash(into:)();
  v16 = (a2 + v6[9]);
  v17 = *v16;
  v18 = v16[1];
  v65 = a1;
  v64 = v3;
  v63 = v12;
  if (v18)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = Hasher._finalize()();
  v20 = v72;
  v21 = -1 << *(v72 + 32);
  v22 = v19 & ~v21;
  v76 = v72 + 56;
  if ((*(v72 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v66 = v18;
    v62 = v17;
    v82 = ~v21;
    v23 = *a2;
    v24 = a2[1];
    v83 = *(v7 + 72);
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24 == 0xC000000000000000;
    }

    v26 = !v25;
    v81 = v26;
    v27 = v24 >> 62;
    v78 = 0;
    v79 = v23;
    v28 = HIDWORD(v23) - v23;
    v29 = __OFSUB__(HIDWORD(v23), v23);
    v75 = v29;
    v74 = v28;
    v73 = v24;
    v80 = BYTE6(v24);
    v67 = a2;
    v30 = v76;
    while (1)
    {
      v31 = v83 * v22;
      sub_100E0ED24(*(v20 + 48) + v83 * v22, v10, type metadata accessor for BeaconNamingRecord);
      v32 = *v10;
      v33 = v10[1];
      v34 = v33 >> 62;
      if (v33 >> 62 == 3)
      {
        break;
      }

      if (v34 > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_39;
        }

        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        v41 = __OFSUB__(v39, v40);
        v38 = v39 - v40;
        if (v41)
        {
          goto LABEL_82;
        }

        if (v27 > 1)
        {
          goto LABEL_40;
        }
      }

      else if (v34)
      {
        LODWORD(v38) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_83;
        }

        v38 = v38;
        if (v27 > 1)
        {
LABEL_40:
          if (v27 != 2)
          {
            if (v38)
            {
              goto LABEL_16;
            }

            goto LABEL_64;
          }

          v44 = *(v79 + 16);
          v43 = *(v79 + 24);
          v41 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          if (v41)
          {
            goto LABEL_81;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v38 = BYTE6(v33);
        if (v27 > 1)
        {
          goto LABEL_40;
        }
      }

LABEL_36:
      v42 = v80;
      if (v27)
      {
        v42 = v74;
        if (v75)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }
      }

LABEL_42:
      if (v38 != v42)
      {
        goto LABEL_16;
      }

      if (v38 < 1)
      {
        goto LABEL_64;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v46 = *(v32 + 16);
          v45 = *(v32 + 24);
          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v48 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v48))
            {
              goto LABEL_86;
            }

            v47 += v46 - v48;
          }

          if (__OFSUB__(v45, v46))
          {
            goto LABEL_85;
          }

LABEL_60:
          __DataStorage._length.getter();
          v51 = v78;
          sub_100771A28(v47, v79, v73, v85);
          v78 = v51;
          a2 = v67;
          v20 = v72;
          v30 = v76;
          if ((v85[0] & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_64;
        }

        *&v85[6] = 0;
        *v85 = 0;
      }

      else
      {
        if (v34)
        {
          v49 = v32;
          if (v32 >> 32 < v32)
          {
            goto LABEL_84;
          }

          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v50 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v50))
            {
              goto LABEL_87;
            }

            v47 += v49 - v50;
          }

          goto LABEL_60;
        }

        *v85 = *v10;
        *&v85[8] = v33;
        v85[10] = BYTE2(v33);
        v85[11] = BYTE3(v33);
        v85[12] = BYTE4(v33);
        v85[13] = BYTE5(v33);
      }

      v52 = v78;
      sub_100771A28(v85, v79, v73, &v84);
      v78 = v52;
      v30 = v76;
      if (!v84)
      {
        goto LABEL_16;
      }

LABEL_64:
      if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v10 + v6[7]) == v71)
      {
        v53 = (v10 + v6[8]);
        v54 = *v53 == v69 && v53[1] == v68;
        if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v55 = (v10 + v6[9]);
          v56 = v55[1];
          if (v56)
          {
            if (v66 && (*v55 == v62 && v56 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
LABEL_79:
              sub_100E0EC5C(v10, type metadata accessor for BeaconNamingRecord);
              sub_100E0EC5C(a2, type metadata accessor for BeaconNamingRecord);
              sub_100E0ED24(*(v20 + 48) + v31, v65, type metadata accessor for BeaconNamingRecord);
              return 0;
            }
          }

          else if (!v66)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_16:
      sub_100E0EC5C(v10, type metadata accessor for BeaconNamingRecord);
      v22 = (v22 + 1) & v82;
      if (((*(v30 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    if (v32)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33 == 0xC000000000000000;
    }

    v37 = !v35 || v27 < 3;
    if (((v37 | v81) & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_39:
    v38 = 0;
    if (v27 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_80:
  v58 = v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v63;
  sub_100E0ED24(a2, v63, type metadata accessor for BeaconNamingRecord);
  *v85 = *v58;
  sub_100DFCEC8(v60, v22, isUniquelyReferenced_nonNull_native);
  *v58 = *v85;
  sub_100E0ECBC(a2, v65, type metadata accessor for BeaconNamingRecord);
  return 1;
}

uint64_t sub_100DEA678(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F16CC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016C7C70, &unk_1014060A0);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7C70, &unk_1014060A0, &unk_1016BBE80, SPBeaconShare_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100DEA8E0(uint64_t a1, Swift::Int a2, uint64_t a3, int a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a4 & 1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v15 ^ a4) & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v20 = *(v8 + 48) + 24 * v11;
    v22 = *v20;
    v21 = *(v20 + 8);
    LOBYTE(v20) = *(v20 + 16);
    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v20;

    return 0;
  }

  else
  {
LABEL_11:
    v17 = a4 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;

    sub_100DFD698(a2, a3, v17, v11, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v17;
    return 1;
  }
}

uint64_t sub_100DEAA7C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F18BC(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF4924(v17 + 1);
    }

    sub_1010F401C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100DFD854(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DEAD2C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100017D5C(a2, a3);
    sub_100DFDA50(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100017D5C(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100017D5C(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100017D5C(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_100771A28(v32, a2, v44, v50);
    sub_100016590(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100017D5C(v18, v17);
LABEL_60:
  sub_100771A28(v50, a2, a3, &v49);
  sub_100016590(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_100016590(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100017D5C(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_100DEB1D0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F1AF4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BBED0, &qword_1013E9DD8);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBED0, &qword_1013E9DD8, &qword_1016996A0, FAFamilyMember_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100DEB438(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = (v13 + 24 * v11);
      if (*v14 == a2)
      {
        v15 = *(v14 + 1) == a3 && *(v14 + 2) == a4;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v16 = *(v8 + 48) + 24 * v11;
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    *a1 = *v16;
    *(a1 + 8) = v18;
    *(a1 + 16) = v17;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;

    sub_100DFE058(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_100DEB610(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1012C5AB0(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_80:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_100DFE850(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
    result = 1;
    goto LABEL_83;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0xD000000000000015;
        v10 = 0x8000000101347FF0;
        break;
      case 2:
        v11 = 0xD000000000000016;
        v10 = 0x8000000101348010;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x657461636F6CLL;
        break;
      case 4:
        v10 = 0xEC000000676E6972;
        v11 = 0x6168537472617473;
        break;
      case 5:
        v11 = 0x72616853706F7473;
        goto LABEL_18;
      case 6:
        v13 = 2036427888;
        goto LABEL_22;
      case 7:
        v13 = 1886352499;
LABEL_22:
        v11 = v13 | 0x6E756F5300000000;
        v10 = 0xE900000000000064;
        break;
      case 8:
        v11 = 0x61654C6E69676562;
        v10 = 0xED0000676E696873;
        break;
      case 9:
        v11 = 0x687361654C646E65;
LABEL_18:
        v10 = 0xEB00000000676E69;
        break;
      case 0xA:
        v11 = 0x4654426E69676562;
        v10 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v11 = 0x6E69465442646E65;
        v12 = 1735289188;
        goto LABEL_29;
      case 0xC:
        v10 = 0xEC000000676E6967;
        v11 = 0x6E61526E69676562;
        break;
      case 0xD:
        v11 = 0x69676E6152646E65;
        v10 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v11 = 0x6F4C656C62616E65;
        v10 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v11 = 0x4C656C6261736964;
        v10 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v10 = 0xE600000000000000;
        v11 = 0x656D616E6572;
        break;
      case 0x11:
        v11 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v10 = 0xEA00000000007463;
        v11 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v11 = 0xD000000000000017;
        v10 = 0x80000001013480F0;
        break;
      case 0x14:
        v10 = 0xE600000000000000;
        v11 = 0x726961706E75;
        break;
      case 0x15:
        v11 = 0x65746167656C6564;
        v10 = 0xEE00657261685364;
        break;
      case 0x16:
        v11 = 0xD000000000000013;
        v10 = 0x8000000101348120;
        break;
      case 0x17:
        v11 = 0x6F69736963657270;
        v12 = 1481004654;
LABEL_29:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    switch(a2)
    {
      case 1:
        v14 = 0x8000000101347FF0;
        if (v11 == 0xD000000000000015)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      case 2:
        v14 = 0x8000000101348010;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 3:
        v14 = 0xE600000000000000;
        if (v11 != 0x657461636F6CLL)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 4:
        v14 = 0xEC000000676E6972;
        if (v11 != 0x6168537472617473)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 5:
        v20 = 0x72616853706F7473;
        goto LABEL_54;
      case 6:
        v21 = 2036427888;
        goto LABEL_60;
      case 7:
        v21 = 1886352499;
LABEL_60:
        v14 = 0xE900000000000064;
        if (v11 != (v21 | 0x6E756F5300000000))
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 8:
        v14 = 0xED0000676E696873;
        if (v11 != 0x61654C6E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 9:
        v20 = 0x687361654C646E65;
LABEL_54:
        v14 = 0xEB00000000676E69;
        if (v11 != v20)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 10:
        v16 = 0x4654426E69676562;
        v17 = 0x676E69646E69;
        goto LABEL_65;
      case 11:
        v18 = 0x6E69465442646E65;
        v19 = 1735289188;
        goto LABEL_78;
      case 12:
        v14 = 0xEC000000676E6967;
        if (v11 != 0x6E61526E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 13:
        v14 = 0xEA0000000000676ELL;
        if (v11 != 0x69676E6152646E65)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 14:
        v16 = 0x6F4C656C62616E65;
        v17 = 0x65646F4D7473;
        goto LABEL_65;
      case 15:
        v14 = 0xEF65646F4D74736FLL;
        if (v11 != 0x4C656C6261736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 16:
        v14 = 0xE600000000000000;
        if (v11 != 0x656D616E6572)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 17:
        if (v11 != 0x7463656E6E6F63)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 18:
        v14 = 0xEA00000000007463;
        if (v11 != 0x656E6E6F63736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 19:
        v15 = 0xD000000000000017;
        v14 = 0x80000001013480F0;
        goto LABEL_72;
      case 20:
        v14 = 0xE600000000000000;
        if (v11 != 0x726961706E75)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 21:
        v16 = 0x65746167656C6564;
        v17 = 0x657261685364;
LABEL_65:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v16)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 22:
        v14 = 0x8000000101348120;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 23:
        v18 = 0x6F69736963657270;
        v19 = 1481004654;
LABEL_78:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v18)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      default:
LABEL_72:
        if (v11 != v15)
        {
          goto LABEL_74;
        }

LABEL_73:
        if (v10 != v14)
        {
LABEL_74:
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_82;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_80;
          }

          continue;
        }

LABEL_82:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_83:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_100DEBD80(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F1CE4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016C7F40, &unk_101406220);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7F40, &unk_101406220, &unk_1016B1680, SPSafeLocation_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100DEBFE8(_BYTE *a1, int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(v5 + 48);
    while (*(v10 + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v13 = (v10 + 4 * v8);
    v14 = v13[1];
    v15 = v13[2];
    LOBYTE(v13) = v13[3];
    *a1 = a2;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v13;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100DFF01C(a2 & 0x10101FF, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
    *a1 = a2;
    a1[1] = BYTE1(a2) & 1;
    a1[2] = BYTE2(a2) & 1;
    a1[3] = HIBYTE(a2) & 1;
    return 1;
  }

  return result;
}

uint64_t sub_100DEC12C(uint64_t a1, uint64_t *a2)
{
  v55 = a1;
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v53 = (&v51 - v9);
  v54 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v11 = v4[5];
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v59 = v11;
  dispatch thunk of Hashable.hash(into:)();
  v65 = v4[6];
  dispatch thunk of Hashable.hash(into:)();
  v60 = *(a2 + v4[7]);
  Hasher._combine(_:)(v60);
  v56 = *(a2 + v4[8]);
  sub_100E1168C(v73, v56);
  v52 = *(a2 + v4[9]);
  Hasher._combine(_:)(v52);
  v12 = Hasher._finalize()();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = v10;
    v70 = ~v14;
    v17 = *a2;
    v18 = a2[1];
    if (*a2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 == 0xC000000000000000;
    }

    v20 = !v19;
    v69 = v20;
    v71 = *(v5 + 72);
    v21 = v18 >> 62;
    v66 = 0;
    v67 = v17;
    v22 = HIDWORD(v17) - v17;
    v23 = __OFSUB__(HIDWORD(v17), v17);
    v64 = v23;
    v63 = v22;
    v61 = v18;
    v68 = BYTE6(v18);
    v58 = a2;
    v57 = v16;
    v62 = v13;
    while (1)
    {
      v24 = v71 * v15;
      sub_100E0ED24(*(v16 + 48) + v71 * v15, v8, type metadata accessor for OwnerSharingCircle);
      v25 = *v8;
      v26 = v8[1];
      v27 = v26 >> 62;
      if (v26 >> 62 != 3)
      {
        break;
      }

      if (v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26 == 0xC000000000000000;
      }

      v30 = !v28 || v21 < 3;
      if ((v30 | v69))
      {
        goto LABEL_36;
      }

LABEL_61:
      if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v8 + v4[7]) == v60 && (sub_100DE7CD8(*(v8 + v4[8]), v56, &unk_1016BC360, &qword_10139CBE0, &qword_1016BBEE0, &unk_10139CBF0) & 1) != 0 && *(v8 + v4[9]) == v52)
      {
        sub_100E0EC5C(v8, type metadata accessor for OwnerSharingCircle);
        sub_100E0EC5C(a2, type metadata accessor for OwnerSharingCircle);
        sub_100E0ED24(*(v16 + 48) + v24, v55, type metadata accessor for OwnerSharingCircle);
        return 0;
      }

LABEL_13:
      sub_100E0EC5C(v8, type metadata accessor for OwnerSharingCircle);
      v15 = (v15 + 1) & v70;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          goto LABEL_70;
        }

        if (v21 > 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_36:
        v31 = 0;
        if (v21 > 1)
        {
LABEL_37:
          if (v21 != 2)
          {
            if (v31)
            {
              goto LABEL_13;
            }

            goto LABEL_61;
          }

          v37 = *(v67 + 16);
          v36 = *(v67 + 24);
          v34 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v34)
          {
            goto LABEL_68;
          }

LABEL_39:
          if (v31 != v35)
          {
            goto LABEL_13;
          }

          if (v31 < 1)
          {
            goto LABEL_61;
          }

          if (v27 > 1)
          {
            if (v27 != 2)
            {
              *&v73[6] = 0;
              *v73 = 0;
              goto LABEL_59;
            }

            v39 = *(v25 + 16);
            v38 = *(v25 + 24);
            v40 = __DataStorage._bytes.getter();
            if (v40)
            {
              v41 = __DataStorage._offset.getter();
              if (__OFSUB__(v39, v41))
              {
                goto LABEL_73;
              }

              v40 += v39 - v41;
            }

            if (__OFSUB__(v38, v39))
            {
              goto LABEL_72;
            }
          }

          else
          {
            if (!v27)
            {
              *v73 = *v8;
              *&v73[8] = v26;
              v73[10] = BYTE2(v26);
              v73[11] = BYTE3(v26);
              v73[12] = BYTE4(v26);
              v73[13] = BYTE5(v26);
LABEL_59:
              v46 = v66;
              sub_100771A28(v73, v67, v61, &v72);
              v66 = v46;
              v45 = v72;
LABEL_60:
              v13 = v62;
              if ((v45 & 1) == 0)
              {
                goto LABEL_13;
              }

              goto LABEL_61;
            }

            v42 = v25;
            if (v25 >> 32 < v25)
            {
              goto LABEL_71;
            }

            v40 = __DataStorage._bytes.getter();
            if (v40)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v42, v43))
              {
                goto LABEL_74;
              }

              v40 += v42 - v43;
            }
          }

          __DataStorage._length.getter();
          v44 = v66;
          sub_100771A28(v40, v67, v61, v73);
          v66 = v44;
          v45 = v73[0];
          a2 = v58;
          v16 = v57;
          goto LABEL_60;
        }
      }
    }

    else if (v27)
    {
      LODWORD(v31) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_69;
      }

      v31 = v31;
      if (v21 > 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = BYTE6(v26);
      if (v21 > 1)
      {
        goto LABEL_37;
      }
    }

    v35 = v68;
    if (v21)
    {
      v35 = v63;
      if (v64)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }
    }

    goto LABEL_39;
  }

LABEL_67:
  v48 = v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v53;
  sub_100E0ED24(a2, v53, type metadata accessor for OwnerSharingCircle);
  *v73 = *v48;
  sub_100DFF188(v50, v15, isUniquelyReferenced_nonNull_native);
  *v48 = *v73;
  sub_100E0ECBC(a2, v55, type metadata accessor for OwnerSharingCircle);
  return 1;
}

uint64_t sub_100DEC848(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F1ED4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BBFF0, &unk_1013B35C0);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBFF0, &unk_1013B35C0, &qword_101698D00, SPHandle_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100DECAB0(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_10125403C(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_100DFF898(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
    goto LABEL_66;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE700000000000000;
    v11 = 0x7972616D697270;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE900000000000079;
        v11 = 0x7261646E6F636573;
        break;
      case 2:
        v11 = 0xD000000000000019;
        v10 = 0x8000000101348160;
        break;
      case 3:
        v11 = 0xD00000000000001BLL;
        v10 = 0x8000000101348180;
        break;
      case 4:
        v11 = 0x646E7542646C6977;
        v10 = 0xEA0000000000656CLL;
        break;
      case 5:
        v11 = 0x417972616D697270;
        v10 = 0xEE00737365726464;
        break;
      case 6:
        v11 = 0xD000000000000010;
        v10 = 0x80000001013481C0;
        break;
      case 7:
        v11 = 0xD000000000000012;
        v10 = 0x80000001013475D0;
        break;
      case 8:
        v11 = 0xD000000000000011;
        v10 = 0x80000001013475F0;
        break;
      case 9:
        v11 = 0x697463656E6E6F63;
        v10 = 0xED000079654B6E6FLL;
        break;
      case 0xA:
        v11 = 0x656E774F7261656ELL;
        v10 = 0xEC00000079654B72;
        break;
      case 0xB:
        v11 = 0x656B6F546E696F6ALL;
        v10 = 0xE90000000000006ELL;
        break;
      case 0xC:
        v11 = 0xD000000000000015;
        v10 = 0x80000001013481F0;
        break;
      case 0xD:
        v11 = 0xD000000000000010;
        v10 = 0x8000000101348210;
        break;
      case 0xE:
        v11 = 0x7461636F4C626577;
        v10 = 0xEE0079654B6E6F69;
        break;
      case 0xF:
        v11 = 0x646174654D626577;
        v10 = 0xEB00000000617461;
        break;
      case 0x10:
        v11 = 0x6D65744974736F6CLL;
        v10 = 0xED00007365746144;
        break;
      case 0x11:
        v11 = 0xD000000000000014;
        v10 = 0x8000000101348240;
        break;
      case 0x12:
        v11 = 0xD000000000000016;
        v10 = 0x8000000101348260;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x7972616D697270;
    switch(a2)
    {
      case 1:
        v12 = 0xE900000000000079;
        if (v11 == 0x7261646E6F636573)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      case 2:
        v12 = 0x8000000101348160;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 3:
        v12 = 0x8000000101348180;
        if (v11 != 0xD00000000000001BLL)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 4:
        v12 = 0xEA0000000000656CLL;
        if (v11 != 0x646E7542646C6977)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 5:
        v16 = 0x417972616D697270;
        v17 = 0x737365726464;
        goto LABEL_47;
      case 6:
        v12 = 0x80000001013481C0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 7:
        v12 = 0x80000001013475D0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 8:
        v12 = 0x80000001013475F0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 9:
        v14 = 0x697463656E6E6F63;
        v15 = 0x79654B6E6FLL;
        goto LABEL_34;
      case 10:
        v13 = 0x656E774F7261656ELL;
        v12 = 0xEC00000079654B72;
        goto LABEL_56;
      case 11:
        v12 = 0xE90000000000006ELL;
        if (v11 != 0x656B6F546E696F6ALL)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 12:
        v12 = 0x80000001013481F0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 13:
        v12 = 0x8000000101348210;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 14:
        v16 = 0x7461636F4C626577;
        v17 = 0x79654B6E6F69;
LABEL_47:
        v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v16)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 15:
        v12 = 0xEB00000000617461;
        if (v11 != 0x646174654D626577)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 16:
        v14 = 0x6D65744974736F6CLL;
        v15 = 0x7365746144;
LABEL_34:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v14)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 17:
        v12 = 0x8000000101348240;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 18:
        v12 = 0x8000000101348260;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      default:
LABEL_56:
        if (v11 != v13)
        {
          goto LABEL_58;
        }

LABEL_57:
        if (v10 != v12)
        {
LABEL_58:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_65;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_63;
          }

          continue;
        }

LABEL_65:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_66:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_100DED164(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000097BC(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100DFFF80(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100DED444(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100E00248(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100DED594(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = a3 >> 60;
  v53 = v3;
  if (a3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_74:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v57 = *v53;
    sub_10002E98C(a2, a3);
    sub_100E003C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v53 = *v57;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v54 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v51 = v16;
  v52 = v12;
  v55 = 0;
  while (1)
  {
    v17 = (*(v7 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    if (v18 >> 60 == 15)
    {
      if (v8 > 0xE)
      {
        sub_10002E98C(v19, v18);
        v46 = v19;
        v47 = v18;
        goto LABEL_78;
      }

      goto LABEL_19;
    }

    if (v8 <= 0xE)
    {
      break;
    }

LABEL_19:
    sub_10002E98C(a2, a3);
    sub_10002E98C(v19, v18);
    sub_100429EA8(v19, v18);
    v20 = a2;
    v21 = a3;
LABEL_20:
    sub_100429EA8(v20, v21);
LABEL_21:
    v11 = (v11 + 1) & v12;
    v15 = a3 >> 62;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v22 = v18 >> 62;
  if (v18 >> 62 == 3)
  {
    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = v18 == 0xC000000000000000;
    }

    v25 = !v23 || v15 < 3;
    if (((v25 | v54) & 1) == 0)
    {
      sub_10002E98C(0, 0xC000000000000000);
      sub_10002E98C(0, 0xC000000000000000);
      sub_100429EA8(0, 0xC000000000000000);
      v19 = 0;
      goto LABEL_76;
    }

LABEL_45:
    v26 = 0;
    if (v15 > 1)
    {
      goto LABEL_46;
    }

LABEL_42:
    v30 = BYTE6(a3);
    if (v15)
    {
      v30 = HIDWORD(a2) - a2;
      if (v51)
      {
        goto LABEL_80;
      }
    }

LABEL_48:
    if (v26 == v30)
    {
      if (v26 < 1)
      {
        goto LABEL_75;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&v57[6] = 0;
          *v57 = 0;
          sub_10002E98C(v19, v18);
          sub_10002E98C(a2, a3);
          sub_10002E98C(v19, v18);
          goto LABEL_72;
        }

        v33 = *(v19 + 16);
        v49 = *(v19 + 24);
        v50 = a1;
        sub_10002E98C(v19, v18);
        sub_10002E98C(a2, a3);
        sub_10002E98C(v19, v18);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v35))
          {
            goto LABEL_85;
          }

          v34 += v33 - v35;
        }

        if (__OFSUB__(v49, v33))
        {
          goto LABEL_84;
        }

        __DataStorage._length.getter();
        v36 = v34;
        v37 = a2;
        v38 = a3;
        v39 = v55;
      }

      else
      {
        if (!v22)
        {
          *v57 = v19;
          *&v57[8] = v18;
          v57[10] = BYTE2(v18);
          v57[11] = BYTE3(v18);
          v57[12] = BYTE4(v18);
          v57[13] = BYTE5(v18);
          sub_10002E98C(v19, v18);
          sub_10002E98C(a2, a3);
          sub_10002E98C(v19, v18);
LABEL_72:
          v39 = v55;
          sub_100771A28(v57, a2, a3, &v56);
          sub_100429EA8(v19, v18);
          sub_100429EA8(a2, a3);
          v43 = v56;
          sub_100429EA8(v19, v18);
          if (v43)
          {
            goto LABEL_77;
          }

LABEL_73:
          v55 = v39;
          v12 = v52;
          v8 = a3 >> 60;
          goto LABEL_21;
        }

        v50 = a1;
        if (v19 >> 32 < v19)
        {
          goto LABEL_83;
        }

        sub_10002E98C(v19, v18);
        sub_10002E98C(a2, a3);
        sub_10002E98C(v19, v18);
        v40 = __DataStorage._bytes.getter();
        if (v40)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v19, v41))
          {
            goto LABEL_86;
          }

          v40 += v19 - v41;
        }

        v39 = v55;
        __DataStorage._length.getter();
        v36 = v40;
        v37 = a2;
        v38 = a3;
      }

      sub_100771A28(v36, v37, v38, v57);
      sub_100429EA8(v19, v18);
      sub_100429EA8(a2, a3);
      v42 = v57[0];
      sub_100429EA8(v19, v18);
      a1 = v50;
      if (v42)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

LABEL_54:
    sub_10002E98C(a2, a3);
    sub_10002E98C(v19, v18);
    sub_100429EA8(a2, a3);
    v20 = v19;
    v21 = v18;
    goto LABEL_20;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      LODWORD(v26) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_81;
      }

      v26 = v26;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v26 = BYTE6(v18);
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_42;
  }

  if (v22 != 2)
  {
    goto LABEL_45;
  }

  v28 = *(v19 + 16);
  v27 = *(v19 + 24);
  v29 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v29)
  {
    goto LABEL_82;
  }

  if (v15 <= 1)
  {
    goto LABEL_42;
  }

LABEL_46:
  if (v15 == 2)
  {
    v32 = *(a2 + 16);
    v31 = *(a2 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v26)
  {
    goto LABEL_54;
  }

LABEL_75:
  sub_10002E98C(a2, a3);
  sub_10002E98C(v19, v18);
  sub_100429EA8(a2, a3);
LABEL_76:
  sub_100429EA8(v19, v18);
LABEL_77:
  v46 = a2;
  v47 = a3;
LABEL_78:
  sub_100429EA8(v46, v47);
  v48 = *(*(v7 + 48) + 16 * v11);
  *a1 = v48;
  sub_10002E98C(v48, *(&v48 + 1));
  return 0;
}