uint64_t sub_10033B7B4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_10033B9E0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10033B8DC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10033B8DC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully published", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10033B9E0()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to publish keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10033BB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 360) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for TimeBasedKey(0);
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  *(v5 + 128) = swift_task_alloc();
  v9 = type metadata accessor for KeyGenerationBeaconInfo(0);
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = type metadata accessor for BeaconIdentifier(0);
  *(v5 + 168) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v5 + 176) = v10;
  *v10 = v5;
  v10[1] = sub_10033BDF0;

  return daemon.getter();
}

uint64_t sub_10033BDF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[23] = a1;

  v3 = swift_task_alloc();
  v2[24] = v3;
  v4 = type metadata accessor for Daemon();
  v2[25] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[26] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10033BFE4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10033BFE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_10033C6C0;
  }

  else
  {

    *(v4 + 224) = a1;
    v6 = sub_10033C120;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033C120()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10033C200;
  v3 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_10033C200()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_10033C318, v1, 0);
}

uint64_t sub_10033C318()
{

  v0[30] = v0[2];
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_10033C3B8;

  return daemon.getter();
}

uint64_t sub_10033C3B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 256) = a1;

  v5 = swift_task_alloc();
  *(v3 + 264) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_10003A260(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_10033C570;
  v8 = *(v2 + 208);
  v9 = *(v2 + 200);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10033C570(uint64_t a1)
{
  *(*v2 + 272) = a1;

  if (v1)
  {

    v3 = sub_10033C984;
  }

  else
  {

    v3 = sub_10033C774;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033C6C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033C774()
{
  v1 = v0[4];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10033C870;
  v6 = v0[21];
  v7 = v0[16];

  return sub_10098F404(v7, v6);
}

uint64_t sub_10033C870()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10033CE1C;
  }

  else
  {
    v2 = sub_10033CBB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033C984()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_10003A260(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10033CBB0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 152);
  sub_100359DA8(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100359E10(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 360))
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v13 = sub_100A848EC;
        v8 = swift_task_alloc();
        *(v0 + 312) = v8;
        *v8 = v0;
        v9 = sub_10033D23C;
LABEL_12:
        v8[1] = v9;
        v11 = *(v0 + 32);
        v10 = *(v0 + 40);

        return v13(v11, v10, 1);
      }
    }

    else
    {
    }

    v13 = sub_100A83E64;
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v9 = sub_10033D08C;
    goto LABEL_12;
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 48);

  sub_100359E10(v5, type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_10033CEFC, v6, 0);
}

uint64_t sub_10033CE1C()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10033CEFC()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  sub_100358F3C();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10033D08C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10033D3EC, 0, 0);
  }

  else
  {
    v8 = *(v6 + 360);
    v9 = swift_task_alloc();
    *(v6 + 328) = v9;
    *v9 = v7;
    v9[1] = sub_10033D4CC;
    v10 = *(v6 + 32);

    return sub_100731BF4(v10, a1, a2, v8 & 1, 0, 0);
  }
}

uint64_t sub_10033D23C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10033DD58, 0, 0);
  }

  else
  {
    v8 = *(v6 + 360);
    v9 = swift_task_alloc();
    *(v6 + 328) = v9;
    *v9 = v7;
    v9[1] = sub_10033D4CC;
    v10 = *(v6 + 32);

    return sub_100731BF4(v10, a1, a2, v8 & 1, 0, 0);
  }
}

uint64_t sub_10033D3EC()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10033D4CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 336) = a1;
  *(v6 + 344) = a2;
  *(v6 + 352) = v3;

  if (v3)
  {
    v7 = sub_10033DC78;
  }

  else
  {
    *(v6 + 361) = a3;
    v7 = sub_10033D5F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10033D5F8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);

  sub_100359E10(v1, type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_10033D698, v2, 0);
}

uint64_t sub_10033D698()
{
  v44 = v0;
  if (*(v0 + 361) > 1u)
  {
    if (*(v0 + 361) == 2)
    {
      sub_100359088(*(v0 + 336), *(v0 + 344), 2u);
    }

    if (qword_101694688 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  if (*(v0 + 361))
  {
    v1 = *(v0 + 336);
    if (*(v1 + 16))
    {
LABEL_8:
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 24);
      v17 = *(*(v0 + 64) + 80);
      v41 = (v17 + 32) & ~v17;
      (*(v15 + 16))(v12, v1 + v41 + *(*(v0 + 56) + 20), v14);
      DateInterval.start.getter();
      (*(v15 + 8))(v12, v14);
      (*(v10 + 32))(v16, v11, v13);
      v18 = *(v1 + 16);
      if (!v18)
      {

LABEL_30:

        v33 = *(v0 + 8);

        return v33(_swiftEmptyArrayStorage);
      }

      v19 = *(v0 + 64);
      sub_1011244D8(0, v18, 0);
      if (*(v1 + 16))
      {
        v20 = *(v0 + 352);
        v21 = *(v0 + 72);
        v22 = *(v19 + 72);
        sub_100034E04(v1 + v41, v21, type metadata accessor for TimeBasedKey);
        sub_10033DE38(v21, &v43);
        if (v20)
        {
          sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
        }

        sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
        v30 = v43;
        v32 = _swiftEmptyArrayStorage[2];
        v31 = _swiftEmptyArrayStorage[3];
        if (v32 >= v31 >> 1)
        {
          v40 = v43;
          sub_1011244D8((v31 > 1), v32 + 1, 1);
          v30 = v40;
        }

        _swiftEmptyArrayStorage[2] = v32 + 1;
        *&_swiftEmptyArrayStorage[2 * v32 + 4] = v30;
        if (v18 == 1)
        {
LABEL_29:

          goto LABEL_30;
        }

        v34 = v1 + v22 + v41;
        v35 = 1;
        while (v35 < *(v1 + 16))
        {
          v36 = *(v0 + 72);
          sub_100034E04(v34, v36, type metadata accessor for TimeBasedKey);
          sub_10033DE38(v36, &v43);
          sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
          v37 = v43;
          v39 = _swiftEmptyArrayStorage[2];
          v38 = _swiftEmptyArrayStorage[3];
          if (v39 >= v38 >> 1)
          {
            v42 = v43;
            sub_1011244D8((v38 > 1), v39 + 1, 1);
            v37 = v42;
          }

          ++v35;
          _swiftEmptyArrayStorage[2] = v39 + 1;
          *&_swiftEmptyArrayStorage[2 * v39 + 4] = v37;
          v34 += v22;
          if (v18 == v35)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
LABEL_17:
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177AC78);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v1 = *(v0 + 336);
    v2 = qword_101694688;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AC78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    if (v6)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
    }

    sub_100359088(v8, v7, 0);
    if (*(v1 + 16))
    {
      goto LABEL_8;
    }
  }

LABEL_22:
  sub_100358F3C();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10033DC78()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10033DD58()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10033DE38(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for TimeBasedKey(0);
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HashAlgorithm();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v3;
  v10 = PublicKey.advertisement.getter(*(a1 + *(v3 + 24) + 16), *(a1 + *(v3 + 24) + 24));
  v12 = v11;
  (*(v7 + 104))(v9, enum case for HashAlgorithm.sha256(_:), v6);
  v13 = Data.hash(algorithm:)();
  v15 = v14;
  sub_100016590(v10, v12);
  (*(v7 + 8))(v9, v6);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177AC78);
  sub_100034E04(a1, v5, type metadata accessor for TimeBasedKey);
  sub_100017D5C(v13, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_100016590(v13, v15);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    v35 = v31[0];
    *v19 = 136315650;
    v33 = v13;
    v34 = v15;
    sub_10025DB08();
    v20 = RawRepresentable<>.hexString.getter();
    v22 = sub_1000136BC(v20, v21, &v35);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v33 = v13;
    v34 = v15;
    v23 = RawRepresentable<>.base64EncodedString(options:)();
    v25 = sub_1000136BC(v23, v24, &v35);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    type metadata accessor for DateInterval();
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100359E10(v5, type metadata accessor for TimeBasedKey);
    v29 = sub_1000136BC(v26, v28, &v35);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Key hashed: %s, base64: %s, dateInterval: %s.", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100359E10(v5, type metadata accessor for TimeBasedKey);
  }

  v30 = v32;
  *v32 = v13;
  v30[1] = v15;
}

uint64_t sub_10033E248(uint64_t a1)
{
  v2[73] = v1;
  v2[72] = a1;
  v3 = type metadata accessor for NotifyMeRequest.Subscription(0);
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v4 = type metadata accessor for HashAlgorithm();
  v2[79] = v4;
  v2[80] = *(v4 - 8);
  v2[81] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v2[82] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v2[83] = v5;
  v2[84] = *(v5 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v2[89] = swift_task_alloc();
  v2[90] = sub_1000BC4D4(&qword_10169E350, &unk_10139D7B0);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2[108] = v7;
  v2[109] = *(v7 - 8);
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[112] = v8;
  v9 = *(v8 - 8);
  v2[113] = v9;
  v2[114] = *(v9 + 64);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = type metadata accessor for NotifyWhenFoundRecord(0);
  v2[120] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v2[121] = v10;
  v2[122] = *(v10 - 8);
  v2[123] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v2[124] = v11;
  v2[125] = *(v11 - 8);
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();

  return _swift_task_switch(sub_10033E900, v1, 0);
}

uint64_t sub_10033E900()
{
  v26 = v0;
  v1 = *(v0 + 576);
  static Date.trustedNow.getter(*(v0 + 1104));
  v2 = *(v1 + 16);
  *(v0 + 1112) = v2;
  if (v2)
  {
    v3 = *(v0 + 984);
    v4 = *(v0 + 976);
    v5 = *(v0 + 576);
    v6 = *(*(v0 + 968) + 48);
    *(v0 + 1592) = v6;
    v7 = *(v4 + 80);
    *(v0 + 1596) = v7;
    *(v0 + 1120) = *(v4 + 72);
    *(v0 + 1600) = enum case for Feature.FindMy.networkScalingImprovements(_:);
    *(v0 + 1604) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1144) = _swiftEmptyArrayStorage;
    *(v0 + 1136) = 0;
    v8 = *(v0 + 960);
    sub_1000D2A70(v5 + ((v7 + 32) & ~v7), v3, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v3, v0 + 16);
    sub_100359DA8(v3 + v6, v8, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    *(v0 + 1152) = v9;
    *(v0 + 1160) = sub_1000076D4(v9, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 944);
      v13 = *(v0 + 904);
      v14 = *(v0 + 896);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v18);
      (*(*(*(v17 + 8) + 8) + 32))(v18);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      sub_100007BAC((v0 + 56));
      v22 = sub_1000136BC(v19, v21, v25);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "publishKeys for beacon: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }

  else
  {
    (*(*(v0 + 1000) + 8))(*(v0 + 1104), *(v0 + 992));

    v23 = *(v0 + 8);

    return v23(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10033EF80()
{

  v1 = swift_task_alloc();
  *(v0 + 1176) = v1;
  *v1 = v0;
  v1[1] = sub_10033F070;
  v2 = *(v0 + 1168);

  return unsafeBlocking<A>(_:)(v0 + 528, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_10033F070()
{

  return _swift_task_switch(sub_10033F1B4, 0, 0);
}

uint64_t sub_10033F1B4()
{
  v1 = v0[73];
  v0[148] = v0[66];

  return _swift_task_switch(sub_10033F248, v1, 0);
}

uint64_t sub_10033F248()
{
  v1 = sub_101074038(v0[148]);
  v2 = 60 * v1;
  if ((v1 * 60) >> 64 != (60 * v1) >> 63)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v3 = v0[148];
  v0[149] = v2;
  v4 = sub_101074000(v3);
  if ((v4 * 60) >> 64 != (60 * v4) >> 63)
  {
    goto LABEL_7;
  }

  v0[150] = 60 * v4;
  v5 = swift_task_alloc();
  v0[151] = v5;
  *v5 = v0;
  v5[1] = sub_10033F354;

  return daemon.getter();
}

uint64_t sub_10033F354(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[152] = a1;

  v3 = swift_task_alloc();
  v2[153] = v3;
  v4 = type metadata accessor for Daemon();
  v2[154] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[155] = v6;
  v7 = sub_10003A260(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10033F574;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10033F574(uint64_t a1)
{
  v3 = *v2;
  v3[156] = a1;
  v3[157] = v1;

  if (v1)
  {
    v4 = v3[73];

    v5 = sub_1003470C4;
    v6 = v4;
  }

  else
  {
    v7 = v3[73];

    v5 = sub_10033F740;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10033F740()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v1);
  (*(*(*(v2 + 8) + 8) + 32))(v1);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v3);
  (*(v4 + 192))(v3, v4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v5);
  *(v0 + 1631) = (*(v6 + 112))(v5, v6) & 1;
  v7 = swift_task_alloc();
  *(v0 + 1264) = v7;
  *v7 = v0;
  v7[1] = sub_10033F8C4;
  v8 = *(v0 + 936);
  v9 = *(v0 + 856);

  return sub_1010D4938(v9, v8);
}

uint64_t sub_10033F8C4()
{
  v1 = *(*v0 + 1248);

  return _swift_task_switch(sub_10033FA00, v1, 0);
}

uint64_t sub_10033FA00()
{
  v1 = *(v0 + 848);
  sub_1000D2A70(*(v0 + 856), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 936);
    v4 = *(v0 + 904);
    v5 = *(v0 + 896);
    v6 = *(v0 + 872);
    v36 = *(v0 + 864);
    v7 = *(v0 + 848);
    v8 = *(v0 + 840);
    sub_10000B3A8(*(v0 + 856), &qword_10169E358, &qword_101404C50);
    v9 = *(v4 + 8);
    v9(v3, v5);
    sub_10000B3A8(v7, &qword_10169E358, &qword_101404C50);
    (*(v6 + 56))(v8, 1, 1, v36);
  }

  else
  {
    v10 = *(v0 + 936);
    v11 = *(v0 + 904);
    v12 = *(v0 + 896);
    v13 = *(v0 + 856);
    v14 = *(v0 + 848);
    sub_10112FB78(*(v0 + 1631), *(v0 + 840));
    sub_10000B3A8(v13, &qword_10169E358, &qword_101404C50);
    v9 = *(v11 + 8);
    v9(v10, v12);
    sub_100359E10(v14, type metadata accessor for KeySyncSnapshot);
  }

  *(v0 + 1272) = v9;
  v15 = *(v0 + 872);
  v16 = *(v0 + 864);
  v17 = *(v0 + 832);
  sub_1000D2AD8(*(v0 + 840), v17, &unk_1016AF8A0, &unk_10139D7C0);
  v18 = (*(v15 + 48))(v17, 1, v16);
  v19 = *(v0 + 1096);
  v20 = *(v0 + 1088);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  if (v18 == 1)
  {
    sub_10000B3A8(*(v0 + 832), &unk_1016AF8A0, &unk_10139D7C0);
    v23 = *(v21 + 32);
    v23(v20, v19, v22);
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 880);
    v26 = *(v0 + 864);
    v27 = *(v0 + 832);
    (*(v21 + 8))(*(v0 + 1096), *(v0 + 992));
    sub_1000D2AD8(v27, v25, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v25 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = *v25;
    }

    v23 = *(v21 + 32);
    v23(v20, v25 + *(v26 + 36), v22);
  }

  *(v0 + 1280) = v23;
  v28 = *(v0 + 1088);
  v29 = *(v0 + 992);
  v30 = *(v0 + 888);
  v31 = *(v0 + 864);
  v32 = *(v0 + 584);
  v33 = *(v0 + 1000) + 32;
  *v30 = v24;
  v34 = *(v31 + 36);
  *(v0 + 1608) = v34;
  *(v0 + 1288) = v33 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v30 + v34, v28, v29);

  return _swift_task_switch(sub_10033FD5C, v32, 0);
}

uint64_t sub_10033FD5C()
{
  v112 = v0;
  v1 = *(v0 + 1608);
  v108 = *(v0 + 1104);
  v2 = *(v0 + 1080);
  v87 = *(v0 + 1072);
  v90 = *(v0 + 1064);
  v92 = *(v0 + 1056);
  v95 = *(v0 + 1048);
  v100 = *(v0 + 1040);
  v103 = *(v0 + 1032);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 992);
  v5 = *(v0 + 888);
  v6 = *(v0 + 824);
  v7 = *(v0 + 816);
  v8 = *(v0 + 1192);
  v9 = *(v3 + 16);
  *(v0 + 1296) = v9;
  *(v0 + 1304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v5 + v1, v4);
  v10 = *(v3 + 56);
  *(v0 + 1312) = v10;
  *(v0 + 1320) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v6, 1, 1, v4);
  v9(v7, v2, v4);
  v10(v7, 0, 1, v4);
  OS_dispatch_queue.sync<A>(execute:)();
  v85 = v0;
  *(v0 + 96) = *(v0 + 536);
  v11 = (v0 + 96);
  v12 = v8;
  v11[3] = &type metadata for Configuration;
  v11[4] = &off_101616308;
  sub_100884E1C(v11 - 10, v108, v6, v7, 0, v11, v87);
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_100007BAC(v11);
  sub_10003A260(&qword_1016C9070, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v13 = v108;
  }

  else
  {
    v13 = v87;
  }

  v9(v90, v13, v4);
  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = *(v11 - 7);
  v17 = *(v11 - 6);
  sub_1000035D0(v11 - 10, v16);
  v83 = (*(v17 + 112))(v16, v17);
  v18 = *(v11 - 7);
  v19 = *(v11 - 6);
  v82 = v11;
  v109 = v11 - 10;
  sub_1000035D0(v11 - 10, v18);
  v86 = (*(v19 + 112))(v18, v19);
  Date.addingTimeInterval(_:)();
  v9(v95, v87, v4);
  v9(v100, v92, v4);
  DateInterval.init(start:end:)();
  Date.addingTimeInterval(_:)();
  v9(v95, v87, v4);
  v9(v100, v103, v4);
  DateInterval.init(start:end:)();
  if ((v83 & 1) == 0 || v15 <= v12)
  {
    v27 = *(*(v85 + 720) + 48);
    v28 = swift_task_alloc();
    *(v85 + 1352) = v28;
    *v28 = v85;
    if (v86)
    {
      v29 = *(v85 + 736);
      v30 = sub_100342084;
    }

    else
    {
      v29 = *(v85 + 744);
      v30 = sub_1003416B0;
    }

    v28[1] = v30;
    v23 = *(v85 + 800);
    v24 = v29 + v27;
    v25 = (v11 - 10);
    v26 = 0;
    goto LABEL_12;
  }

  if (v86)
  {
    v20 = *(v85 + 760);
    v21 = *(*(v85 + 720) + 48);
    v22 = swift_task_alloc();
    *(v85 + 1328) = v22;
    *v22 = v85;
    v22[1] = sub_100340CDC;
    v23 = *(v85 + 792);
    v24 = v20 + v21;
    v25 = (v11 - 10);
    v26 = 1;
LABEL_12:

    return sub_10033BB7C(v24, v25, v23, v26);
  }

  sub_10001F280((v11 - 10), (v11 + 5));
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v79 = *(v85 + 1272);
    v96 = *(v85 + 1064);
    v98 = *(v85 + 1072);
    v91 = *(v85 + 1032);
    v93 = *(v85 + 1056);
    v34 = *(v85 + 1000);
    v104 = *(v85 + 1080);
    v106 = *(v85 + 960);
    v35 = *(v85 + 944);
    v36 = *(v85 + 896);
    v101 = *(v85 + 888);
    v88 = *(v85 + 800);
    v89 = *(v85 + 992);
    v84 = *(v85 + 792);
    v80 = *(v85 + 768);
    v81 = *(v85 + 776);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v111[0] = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v40 = *(v85 + 160);
    v39 = *(v85 + 168);
    sub_1000035D0(v82 + 5, v40);
    (*(*(*(v39 + 8) + 8) + 32))(v40);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v36;
    v11 = v82;
    v79(v35, v44);
    sub_100007BAC(v82 + 5);
    v45 = sub_1000136BC(v41, v43, v111);

    *(v37 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v32, v33, "Not subscribing beacon: %{private,mask.hash}s", v37, 0x16u);
    sub_100007BAC(v38);

    v46 = *(v81 + 8);
    v46(v84, v80);
    v47 = *(v34 + 8);
    v47(v91, v89);
    v46(v88, v80);
    v47(v93, v89);
    v47(v96, v89);
    v47(v98, v89);
    v47(v104, v89);
    sub_10000B3A8(v101, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v106, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v97 = *(v85 + 1064);
    v99 = *(v85 + 1072);
    v94 = *(v85 + 1056);
    v48 = *(v85 + 1032);
    v49 = *(v85 + 1000);
    v50 = *(v85 + 992);
    v105 = *(v85 + 1080);
    v107 = *(v85 + 960);
    v102 = *(v85 + 888);
    v51 = *(v85 + 800);
    v52 = *(v85 + 792);
    v53 = *(v85 + 776);
    v54 = *(v85 + 768);

    v55 = *(v53 + 8);
    v55(v52, v54);
    v47 = *(v49 + 8);
    v47(v48, v50);
    v55(v51, v54);
    v47(v94, v50);
    v47(v97, v50);
    v47(v99, v50);
    v47(v105, v50);
    sub_10000B3A8(v102, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v107, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC(v11 + 5);
  }

  v56 = *(v85 + 1144);
  v57 = *(v85 + 1128);
  v58 = *(v85 + 1112);
  v59 = *(v85 + 1136) + 1;
  sub_100007BAC(v109);
  if (v59 == v58)
  {
    v47(*(v85 + 1104), *(v85 + 992));

    v60 = *(v85 + 8);

    return v60(v56);
  }

  else
  {
    v61 = v11 - 5;
    v62 = *(v85 + 1136) + 1;
    *(v85 + 1144) = v56;
    *(v85 + 1136) = v62;
    *(v85 + 1128) = v57;
    v63 = *(v85 + 1592);
    v64 = *(v85 + 984);
    v65 = *(v85 + 960);
    sub_1000D2A70(*(v85 + 576) + ((*(v85 + 1596) + 32) & ~*(v85 + 1596)) + *(v85 + 1120) * v62, v64, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v64, v109);
    sub_100359DA8(v64 + v63, v65, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    *(v85 + 1152) = v66;
    *(v85 + 1160) = sub_1000076D4(v66, qword_10177AC78);
    sub_10001F280(v109, (v11 - 5));
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v85 + 944);
      v70 = *(v85 + 904);
      v71 = *(v85 + 896);
      v72 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111[0] = v110;
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      v74 = *(v85 + 80);
      v73 = *(v85 + 88);
      sub_1000035D0(v61, v74);
      (*(*(*(v73 + 8) + 8) + 32))(v74);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (*(v70 + 8))(v69, v71);
      sub_100007BAC(v61);
      v78 = sub_1000136BC(v75, v77, v111);

      *(v72 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v67, v68, "publishKeys for beacon: %{private,mask.hash}s", v72, 0x16u);
      sub_100007BAC(v110);
    }

    else
    {

      sub_100007BAC(v11 - 5);
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v85 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100340CDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1336) = v1;

  if (v1)
  {
    v5 = *(v4 + 584);

    v6 = sub_10034748C;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 584);
    *(v4 + 1344) = a1;
    v6 = sub_100340E58;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100340E58()
{
  v78 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 992);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 720);
  *v5 = *(v0 + 1344);
  sub_1000D2A70(v5, v6, &qword_10169E350, &unk_10139D7B0);

  v1(v2, &v6[*(v7 + 48)], v4);
  sub_1000D2A70(v5, v6, &qword_10169E350, &unk_10139D7B0);
  v8 = *v6;
  v76 = *(v3 + 8);
  v76(&v6[*(v7 + 48)], v4);
  sub_10001F280(v0 + 16, v0 + 216);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v75 = v8;
    v11 = *(v0 + 944);
    v12 = *(v0 + 896);
    log = *(v0 + 1272);
    v72 = *(v0 + 760);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v77 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    sub_1000035D0((v0 + 216), v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = v11;
    v8 = v75;
    (log)(v20, v12);
    sub_100007BAC((v0 + 216));
    v21 = sub_1000136BC(v17, v19, &v77);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscribing secondary keys for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);

    sub_10000B3A8(v72, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v22 = *(v0 + 760);

    sub_10000B3A8(v22, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 216));
  }

  *(v0 + 1424) = _swiftEmptyArrayStorage;
  *(v0 + 1416) = v8;
  *(v0 + 1408) = v76;
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v23);
  (*(*(*(v24 + 8) + 8) + 32))(v23);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 1272);
  v26 = *(v0 + 928);
  v27 = *(v0 + 896);
  v28 = *(v0 + 712);
  v29 = *(v0 + 904) + 8;
  v30 = sub_100035730(v26, sub_100352E10, 0);
  sub_1012BB138(v30, v28);

  *(v0 + 1432) = v29 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v26, v27);
  v31 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v31 - 8) + 48))(v28, 1, v31) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v32 = 1;
  }

  else
  {
    v33 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v33 + *(v31 + 20), *(v0 + 992));
    sub_100359E10(v33, type metadata accessor for BeaconObservation);
    v32 = 0;
  }

  v34 = *(v0 + 1296);
  v35 = *(v0 + 1080);
  v36 = *(v0 + 1024);
  v37 = *(v0 + 1016);
  v38 = *(v0 + 1008);
  v39 = *(v0 + 992);
  v73 = *(v0 + 792);
  loga = *(v0 + 784);
  v40 = *(v0 + 776);
  v41 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v32, 1, v39);
  v34(v37, v35, v39);
  v34(v38, v36, v39);
  (*(v40 + 16))(loga, v73, v41);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 1016);
  v46 = *(v0 + 1008);
  v47 = *(v0 + 992);
  v48 = *(v0 + 784);
  v49 = *(v0 + 776);
  v50 = *(v0 + 768);
  if (v44)
  {
    v67 = *(v0 + 1008);
    v74 = v43;
    v51 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v51 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v68 = v48;
    logb = v42;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v76(v45, v47);
    v55 = sub_1000136BC(v52, v54, &v77);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v76(v67, v47);
    v59 = sub_1000136BC(v56, v58, &v77);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v63 = *(v49 + 8);
    v63(v68, v50);
    v64 = sub_1000136BC(v60, v62, &v77);

    *(v51 + 24) = v64;
    _os_log_impl(&_mh_execute_header, logb, v74, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v51, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v63 = *(v49 + 8);
    v63(v48, v50);
    v76(v46, v47);
    v76(v45, v47);
  }

  *(v0 + 1440) = v63;
  v65 = swift_task_alloc();
  *(v0 + 1448) = v65;
  *v65 = v0;
  v65[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_1003416B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1360) = v1;

  if (v1)
  {
    v5 = *(v4 + 584);

    v6 = sub_100347F74;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 584);
    *(v4 + 1368) = a1;
    v6 = sub_10034182C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10034182C()
{
  v77 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 992);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 720);
  *v6 = *(v0 + 1368);
  sub_1000D2A70(v6, v5, &qword_10169E350, &unk_10139D7B0);

  v1(v2, &v5[*(v7 + 48)], v4);
  sub_1000D2A70(v6, v5, &qword_10169E350, &unk_10139D7B0);
  v8 = *v5;
  v75 = *(v3 + 8);
  v75(&v5[*(v7 + 48)], v4);
  sub_10001F280(v0 + 16, v0 + 416);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 944);
    v12 = *(v0 + 896);
    log = *(v0 + 1272);
    v71 = *(v0 + 744);
    v74 = v8;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v76 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = *(v0 + 440);
    v15 = *(v0 + 448);
    sub_1000035D0((v0 + 416), v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (log)(v11, v12);
    sub_100007BAC((v0 + 416));
    v20 = sub_1000136BC(v17, v19, &v76);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscribing primary keys for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);

    v8 = v74;

    sub_10000B3A8(v71, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v21 = *(v0 + 744);

    sub_10000B3A8(v21, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 416));
  }

  *(v0 + 1424) = v8;
  *(v0 + 1416) = _swiftEmptyArrayStorage;
  *(v0 + 1408) = v75;
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v22);
  (*(*(*(v23 + 8) + 8) + 32))(v22);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 1272);
  v25 = *(v0 + 928);
  v26 = *(v0 + 896);
  v27 = *(v0 + 712);
  v28 = *(v0 + 904) + 8;
  v29 = sub_100035730(v25, sub_100352E10, 0);
  sub_1012BB138(v29, v27);

  *(v0 + 1432) = v28 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v25, v26);
  v30 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v30 - 8) + 48))(v27, 1, v30) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v31 = 1;
  }

  else
  {
    v32 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v32 + *(v30 + 20), *(v0 + 992));
    sub_100359E10(v32, type metadata accessor for BeaconObservation);
    v31 = 0;
  }

  v33 = *(v0 + 1296);
  v34 = *(v0 + 1080);
  v35 = *(v0 + 1024);
  v36 = *(v0 + 1016);
  v37 = *(v0 + 1008);
  v38 = *(v0 + 992);
  v72 = *(v0 + 792);
  loga = *(v0 + 784);
  v39 = *(v0 + 776);
  v40 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v31, 1, v38);
  v33(v36, v34, v38);
  v33(v37, v35, v38);
  (*(v39 + 16))(loga, v72, v40);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 1016);
  v45 = *(v0 + 1008);
  v46 = *(v0 + 992);
  v47 = *(v0 + 784);
  v48 = *(v0 + 776);
  v49 = *(v0 + 768);
  if (v43)
  {
    v66 = *(v0 + 1008);
    v73 = v42;
    v50 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v50 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v67 = v47;
    logb = v41;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v75(v44, v46);
    v54 = sub_1000136BC(v51, v53, &v76);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v75(v66, v46);
    v58 = sub_1000136BC(v55, v57, &v76);

    *(v50 + 14) = v58;
    *(v50 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = *(v48 + 8);
    v62(v67, v49);
    v63 = sub_1000136BC(v59, v61, &v76);

    *(v50 + 24) = v63;
    _os_log_impl(&_mh_execute_header, logb, v73, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v50, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v62 = *(v48 + 8);
    v62(v47, v49);
    v75(v45, v46);
    v75(v44, v46);
  }

  *(v0 + 1440) = v62;
  v64 = swift_task_alloc();
  *(v0 + 1448) = v64;
  *v64 = v0;
  v64[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_100342084(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1376) = v1;

  if (v1)
  {
    v5 = *(v4 + 584);

    return _swift_task_switch(sub_100348A5C, v5, 0);
  }

  else
  {
    v6 = *(v4 + 728);
    v7 = *(v4 + 720);
    **(v4 + 736) = a1;
    v8 = *(v7 + 48);
    v9 = swift_task_alloc();
    *(v4 + 1384) = v9;
    *v9 = v4;
    v9[1] = sub_100342284;
    v10 = *(v4 + 792);

    return sub_10033BB7C(v6 + v8, v4 + 16, v10, 1);
  }
}

uint64_t sub_100342284(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = *(v4 + 584);

    v6 = sub_100349544;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 584);
    *(v4 + 1400) = a1;
    v6 = sub_100342400;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100342400()
{
  v83 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 992);
  v5 = *(v0 + 752);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  *v7 = *(v0 + 1400);
  sub_1000D2A70(v6, v5, &qword_10169E350, &unk_10139D7B0);

  v1(v2, &v5[*(v8 + 48)], v4);
  sub_1000D2A70(v6, v5, &qword_10169E350, &unk_10139D7B0);
  v9 = *v5;
  v10 = *(v3 + 8);
  v10(&v5[*(v8 + 48)], v4);
  sub_1000D2A70(v7, v5, &qword_10169E350, &unk_10139D7B0);
  v11 = *v5;
  v81 = v10;
  v10(&v5[*(v8 + 48)], v4);
  sub_10001F280(v0 + 16, v0 + 456);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 944);
    v15 = *(v0 + 896);
    log = *(v0 + 736);
    v70 = *(v0 + 1272);
    v72 = *(v0 + 728);
    v77 = v11;
    v16 = swift_slowAlloc();
    v80 = v9;
    v17 = swift_slowAlloc();
    v82 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v19 = *(v0 + 480);
    v18 = *(v0 + 488);
    sub_1000035D0((v0 + 456), v19);
    (*(*(*(v18 + 8) + 8) + 32))(v19);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v70(v14, v15);
    sub_100007BAC((v0 + 456));
    v23 = sub_1000136BC(v20, v22, &v82);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Subscribing primary and secondary keys for beacon: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v17);
    v9 = v80;

    v11 = v77;

    sub_10000B3A8(v72, &qword_10169E350, &unk_10139D7B0);
    sub_10000B3A8(log, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);

    sub_10000B3A8(v25, &qword_10169E350, &unk_10139D7B0);
    sub_10000B3A8(v24, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 456));
  }

  *(v0 + 1424) = v9;
  *(v0 + 1416) = v11;
  *(v0 + 1408) = v81;
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v26);
  (*(*(*(v27 + 8) + 8) + 32))(v26);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1272);
  v29 = *(v0 + 928);
  v30 = *(v0 + 896);
  v31 = *(v0 + 712);
  v32 = *(v0 + 904) + 8;
  v33 = sub_100035730(v29, sub_100352E10, 0);
  sub_1012BB138(v33, v31);

  *(v0 + 1432) = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v29, v30);
  v34 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v34 - 8) + 48))(v31, 1, v34) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v35 = 1;
  }

  else
  {
    v36 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v36 + *(v34 + 20), *(v0 + 992));
    sub_100359E10(v36, type metadata accessor for BeaconObservation);
    v35 = 0;
  }

  v37 = *(v0 + 1296);
  v38 = *(v0 + 1080);
  v39 = *(v0 + 1024);
  v40 = *(v0 + 1016);
  v41 = *(v0 + 1008);
  v42 = *(v0 + 992);
  v78 = *(v0 + 792);
  loga = *(v0 + 784);
  v43 = *(v0 + 776);
  v44 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v35, 1, v42);
  v37(v40, v38, v42);
  v37(v41, v39, v42);
  (*(v43 + 16))(loga, v78, v44);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 1016);
  v49 = *(v0 + 1008);
  v50 = *(v0 + 992);
  v51 = *(v0 + 784);
  v52 = *(v0 + 776);
  v53 = *(v0 + 768);
  if (v47)
  {
    v71 = *(v0 + 1008);
    v79 = v46;
    v54 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v54 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v73 = v51;
    logb = v45;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v81(v48, v50);
    v58 = sub_1000136BC(v55, v57, &v82);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v81(v71, v50);
    v62 = sub_1000136BC(v59, v61, &v82);

    *(v54 + 14) = v62;
    *(v54 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v66 = *(v52 + 8);
    v66(v73, v53);
    v67 = sub_1000136BC(v63, v65, &v82);

    *(v54 + 24) = v67;
    _os_log_impl(&_mh_execute_header, logb, v79, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v54, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v66 = *(v52 + 8);
    v66(v51, v53);
    v81(v49, v50);
    v81(v48, v50);
  }

  *(v0 + 1440) = v66;
  v68 = swift_task_alloc();
  *(v0 + 1448) = v68;
  *v68 = v0;
  v68[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_100342CD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[182] = a1;

  v4 = swift_task_alloc();
  v2[183] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[184] = v5;
  v6 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[185] = v6;
  *v4 = v3;
  v4[1] = sub_100342EC4;
  v7 = v2[155];
  v8 = v2[154];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_100342EC4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 584);
  if (v1)
  {

    v7 = sub_1003444C4;
  }

  else
  {

    *(v5 + 1488) = a1;
    v7 = sub_100343060;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100343060()
{
  v1 = v0[186];
  v2 = v0[5];
  v3 = v0[6];
  sub_1000035D0(v0 + 2, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);

  return _swift_task_switch(sub_10034313C, v1, 0);
}

uint64_t sub_10034313C()
{
  v1 = v0[186];
  v2 = v0[115];
  v3 = v0[113];
  v4 = v0[112];
  (*(v3 + 16))(v2, v0[118], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[187] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[188] = v7;
  *v7 = v0;
  v7[1] = sub_1003432D4;
  v8 = v0[88];
  v9 = v0[86];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v6, v9);
}

uint64_t sub_1003432D4()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 944);
  v3 = *(*v0 + 896);
  v4 = *(*v0 + 584);

  v1(v2, v3);

  return _swift_task_switch(sub_1003434BC, v4, 0);
}

uint64_t sub_1003434BC()
{
  v109 = v0;
  v1 = *(v0 + 704);
  if ((*(*(v0 + 672) + 48))(v1, 1, *(v0 + 664)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
LABEL_4:
    v5 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v2 = sub_100D5F668();
  v4 = v3;
  sub_100359E10(v1, type metadata accessor for OwnedBeaconRecord);
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  *(v0 + 512) = v2;
  *(v0 + 520) = v4;
  sub_1002313AC();
  v5 = RawRepresentable<>.hexString.getter();
  v6 = v7;
  sub_100006654(v2, v4);
LABEL_6:
  *(v0 + 1520) = v6;
  *(v0 + 1512) = v5;
  v8 = *(v0 + 1600);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 280) = My;
  *(v0 + 288) = sub_10003A260(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v10 = sub_1000280DC((v0 + 256));
  (*(*(My - 8) + 104))(v10, v8, My);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 256));
  if (v8)
  {
    sub_10001F280(v0 + 16, v0 + 296);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v11 = swift_dynamicCast();
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    if (v11)
    {
      v14 = *(v0 + 696);
      v15 = *(v0 + 680);
      (*(v12 + 56))(v14, 0, 1, *(v0 + 664));
      sub_100359DA8(v14, v15, type metadata accessor for OwnedBeaconRecord);
      v16 = swift_task_alloc();
      *(v0 + 1528) = v16;
      *v16 = v0;
      v16[1] = sub_100345414;

      return daemon.getter();
    }

    v72 = *(v0 + 696);

    (*(v12 + 56))(v72, 1, 1, v13);
    sub_10000B3A8(v72, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 1152), qword_10177CE28);
    sub_10001F280(v0 + 16, v0 + 336);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v0 + 1272);
      v76 = *(v0 + 944);
      v77 = *(v0 + 896);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v108[0] = v79;
      *v78 = 141558275;
      *(v78 + 4) = 1752392040;
      *(v78 + 12) = 2081;
      v81 = *(v0 + 360);
      v80 = *(v0 + 368);
      sub_1000035D0((v0 + 336), v81);
      (*(*(*(v80 + 8) + 8) + 32))(v81);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v75(v76, v77);
      sub_100007BAC((v0 + 336));
      v85 = sub_1000136BC(v82, v84, v108);

      *(v78 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "Not an OwnedBeaconRecord not including the owned device keys %{private,mask.hash}s.", v78, 0x16u);
      sub_100007BAC(v79);
    }

    else
    {

      sub_100007BAC((v0 + 336));
    }
  }

  else
  {
  }

  v87 = *(v0 + 1128);
  v99 = *(v0 + 1424);
  v101 = *(v0 + 1512);
  v103 = *(v0 + 1416);
  v105 = *(v0 + 1520);
  v17 = *(v0 + 1312);
  v18 = *(v0 + 992);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 904);
  v22 = *(v0 + 896);
  v23 = *(v0 + 624);
  v95 = *(v0 + 808);
  v97 = *(v0 + 616);
  v24 = *(v0 + 592);
  (*(v0 + 1296))(v23, *(v0 + 1024), v18);
  v17(v23, 0, 1, v18);
  (*(v21 + 16))(v23 + v24[5], v19 + *(v20 + 20), v22);
  v25 = v24[7];
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v27);
  (*(*(*(v26 + 8) + 8) + 32))(v27);
  (*(v21 + 56))(v23 + v25, 0, 1, v22);
  sub_1000D2A70(v95, v23 + v24[9], &unk_101696900, &unk_10138B1E0);
  *(v23 + v24[6]) = 1;
  *(v23 + v24[8]) = v99;
  v28 = (v23 + v24[10]);
  *v28 = v101;
  v28[1] = v105;
  *(v23 + v24[11]) = v103;
  *(v23 + v24[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v23, v97, type metadata accessor for NotifyMeRequest.Subscription);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 616);
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v108[0] = v34;
    *v33 = 136315138;
    v35 = sub_10040BAA8();
    v37 = v36;
    sub_100359E10(v32, type metadata accessor for NotifyMeRequest.Subscription);
    v38 = sub_1000136BC(v35, v37, v108);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "publishKeys subscription: %s.", v33, 0xCu);
    sub_100007BAC(v34);
  }

  else
  {

    sub_100359E10(v32, type metadata accessor for NotifyMeRequest.Subscription);
  }

  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_100A5CA98(0, v40[2] + 1, 1, v40);
  }

  v42 = v40[2];
  v41 = v40[3];
  v104 = v42 + 1;
  v106 = v42;
  if (v42 >= v41 >> 1)
  {
    v107 = sub_100A5CA98((v41 > 1), v42 + 1, 1, v40);
  }

  else
  {
    v107 = v40;
  }

  v43 = *(v0 + 1440);
  v44 = *(v0 + 1408);
  v96 = *(v0 + 1080);
  v92 = *(v0 + 1064);
  v93 = *(v0 + 1072);
  v91 = *(v0 + 1056);
  v90 = *(v0 + 1032);
  v88 = *(v0 + 1024);
  v45 = *(v0 + 992);
  v100 = *(v0 + 960);
  v94 = *(v0 + 888);
  v46 = *(v0 + 808);
  v89 = *(v0 + 800);
  v47 = *(v0 + 792);
  v48 = *(v0 + 768);
  v49 = *(v0 + 624);
  v102 = *(v0 + 608);
  v98 = *(v0 + 600);

  sub_100359E10(v49, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
  v44(v88, v45);
  v43(v47, v48);
  v44(v90, v45);
  v43(v89, v48);
  v44(v91, v45);
  v44(v92, v45);
  v44(v93, v45);
  v44(v96, v45);
  sub_10000B3A8(v94, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v100, type metadata accessor for NotifyWhenFoundRecord);
  v107[2] = v104;
  sub_100359DA8(v102, v107 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v106, type metadata accessor for NotifyMeRequest.Subscription);
  v50 = *(v0 + 1408);
  v51 = *(v0 + 1112);
  v52 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v52 == v51)
  {
    v50(*(v0 + 1104), *(v0 + 992));

    v53 = *(v0 + 8);

    return v53(v107);
  }

  else
  {
    v54 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v107;
    *(v0 + 1136) = v54;
    *(v0 + 1128) = v87;
    v55 = *(v0 + 1592);
    v56 = *(v0 + 984);
    v57 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v54, v56, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v56, v0 + 16);
    sub_100359DA8(v56 + v55, v57, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    *(v0 + 1152) = v58;
    *(v0 + 1160) = sub_1000076D4(v58, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 944);
      v62 = *(v0 + 904);
      v63 = *(v0 + 896);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v108[0] = v65;
      *v64 = 141558275;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2081;
      v67 = *(v0 + 80);
      v66 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v67);
      (*(*(*(v66 + 8) + 8) + 32))(v67);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v62 + 8))(v61, v63);
      sub_100007BAC((v0 + 56));
      v71 = sub_1000136BC(v68, v70, v108);

      *(v64 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v59, v60, "publishKeys for beacon: %{private,mask.hash}s", v64, 0x16u);
      sub_100007BAC(v65);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_1003444C4()
{
  v102 = v0;
  *(v0 + 1512) = 0u;
  v1 = *(v0 + 1600);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 280) = My;
  *(v0 + 288) = sub_10003A260(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_1000280DC((v0 + 256));
  (*(*(My - 8) + 104))(v3, v1, My);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 256));
  if (v1)
  {
    sub_10001F280(v0 + 16, v0 + 296);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v4 = swift_dynamicCast();
    v5 = *(v0 + 672);
    v6 = *(v0 + 664);
    if (v4)
    {
      v7 = *(v0 + 696);
      v8 = *(v0 + 680);
      (*(v5 + 56))(v7, 0, 1, *(v0 + 664));
      sub_100359DA8(v7, v8, type metadata accessor for OwnedBeaconRecord);
      v9 = swift_task_alloc();
      *(v0 + 1528) = v9;
      *v9 = v0;
      v9[1] = sub_100345414;

      return daemon.getter();
    }

    v65 = *(v0 + 696);

    (*(v5 + 56))(v65, 1, 1, v6);
    sub_10000B3A8(v65, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 1152), qword_10177CE28);
    sub_10001F280(v0 + 16, v0 + 336);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 1272);
      v69 = *(v0 + 944);
      v70 = *(v0 + 896);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v101[0] = v72;
      *v71 = 141558275;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      v74 = *(v0 + 360);
      v73 = *(v0 + 368);
      sub_1000035D0((v0 + 336), v74);
      (*(*(*(v73 + 8) + 8) + 32))(v74);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v68(v69, v70);
      sub_100007BAC((v0 + 336));
      v78 = sub_1000136BC(v75, v77, v101);

      *(v71 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v66, v67, "Not an OwnedBeaconRecord not including the owned device keys %{private,mask.hash}s.", v71, 0x16u);
      sub_100007BAC(v72);
    }

    else
    {

      sub_100007BAC((v0 + 336));
    }
  }

  else
  {
  }

  v80 = *(v0 + 1128);
  v92 = *(v0 + 1424);
  v94 = *(v0 + 1512);
  v96 = *(v0 + 1416);
  v98 = *(v0 + 1520);
  v10 = *(v0 + 1312);
  v11 = *(v0 + 992);
  v12 = *(v0 + 960);
  v13 = *(v0 + 952);
  v14 = *(v0 + 904);
  v15 = *(v0 + 896);
  v16 = *(v0 + 624);
  v88 = *(v0 + 808);
  v90 = *(v0 + 616);
  v17 = *(v0 + 592);
  (*(v0 + 1296))(v16, *(v0 + 1024), v11);
  v10(v16, 0, 1, v11);
  (*(v14 + 16))(v16 + v17[5], v12 + *(v13 + 20), v15);
  v18 = v17[7];
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v20);
  (*(*(*(v19 + 8) + 8) + 32))(v20);
  (*(v14 + 56))(v16 + v18, 0, 1, v15);
  sub_1000D2A70(v88, v16 + v17[9], &unk_101696900, &unk_10138B1E0);
  *(v16 + v17[6]) = 1;
  *(v16 + v17[8]) = v92;
  v21 = (v16 + v17[10]);
  *v21 = v94;
  v21[1] = v98;
  *(v16 + v17[11]) = v96;
  *(v16 + v17[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v16, v90, type metadata accessor for NotifyMeRequest.Subscription);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 616);
  if (v24)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v101[0] = v27;
    *v26 = 136315138;
    v28 = sub_10040BAA8();
    v30 = v29;
    sub_100359E10(v25, type metadata accessor for NotifyMeRequest.Subscription);
    v31 = sub_1000136BC(v28, v30, v101);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "publishKeys subscription: %s.", v26, 0xCu);
    sub_100007BAC(v27);
  }

  else
  {

    sub_100359E10(v25, type metadata accessor for NotifyMeRequest.Subscription);
  }

  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_100A5CA98(0, v33[2] + 1, 1, v33);
  }

  v35 = v33[2];
  v34 = v33[3];
  v97 = v35 + 1;
  v99 = v35;
  if (v35 >= v34 >> 1)
  {
    v100 = sub_100A5CA98((v34 > 1), v35 + 1, 1, v33);
  }

  else
  {
    v100 = v33;
  }

  v36 = *(v0 + 1440);
  v37 = *(v0 + 1408);
  v89 = *(v0 + 1080);
  v85 = *(v0 + 1064);
  v86 = *(v0 + 1072);
  v84 = *(v0 + 1056);
  v83 = *(v0 + 1032);
  v81 = *(v0 + 1024);
  v38 = *(v0 + 992);
  v93 = *(v0 + 960);
  v87 = *(v0 + 888);
  v39 = *(v0 + 808);
  v82 = *(v0 + 800);
  v40 = *(v0 + 792);
  v41 = *(v0 + 768);
  v42 = *(v0 + 624);
  v95 = *(v0 + 608);
  v91 = *(v0 + 600);

  sub_100359E10(v42, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
  v37(v81, v38);
  v36(v40, v41);
  v37(v83, v38);
  v36(v82, v41);
  v37(v84, v38);
  v37(v85, v38);
  v37(v86, v38);
  v37(v89, v38);
  sub_10000B3A8(v87, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v93, type metadata accessor for NotifyWhenFoundRecord);
  v100[2] = v97;
  sub_100359DA8(v95, v100 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v99, type metadata accessor for NotifyMeRequest.Subscription);
  v43 = *(v0 + 1408);
  v44 = *(v0 + 1112);
  v45 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v45 == v44)
  {
    v43(*(v0 + 1104), *(v0 + 992));

    v46 = *(v0 + 8);

    return v46(v100);
  }

  else
  {
    v47 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v100;
    *(v0 + 1136) = v47;
    *(v0 + 1128) = v80;
    v48 = *(v0 + 1592);
    v49 = *(v0 + 984);
    v50 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v47, v49, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v49, v0 + 16);
    sub_100359DA8(v49 + v48, v50, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    *(v0 + 1152) = v51;
    *(v0 + 1160) = sub_1000076D4(v51, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 944);
      v55 = *(v0 + 904);
      v56 = *(v0 + 896);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v101[0] = v58;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      v60 = *(v0 + 80);
      v59 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v60);
      (*(*(*(v59 + 8) + 8) + 32))(v60);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v55 + 8))(v54, v56);
      sub_100007BAC((v0 + 56));
      v64 = sub_1000136BC(v61, v63, v101);

      *(v57 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v52, v53, "publishKeys for beacon: %{private,mask.hash}s", v57, 0x16u);
      sub_100007BAC(v58);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100345414(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[192] = a1;

  v4 = swift_task_alloc();
  v2[193] = v4;
  *v4 = v3;
  v4[1] = sub_1003455D4;
  v5 = v2[185];
  v6 = v2[184];
  v7 = v2[155];
  v8 = v2[154];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1003455D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1552) = v1;

  if (v1)
  {
    v5 = *(v4 + 584);

    v6 = sub_10034A044;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 664);

    *(v4 + 1560) = a1;
    *(v4 + 1612) = *(v8 + 20);
    v6 = sub_100345788;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100345788()
{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 944);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);
  (*(v3 + 16))(v2, *(v0 + 680) + *(v0 + 1612), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 1568) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 1576) = v7;
  v8 = sub_1000BC4D4(&qword_10169E360, &qword_10139D7E0);
  *v7 = v0;
  v7[1] = sub_10034593C;

  return unsafeBlocking<A>(context:_:)(v0 + 544, 0xD000000000000010, 0x800000010134A8C0, sub_100359014, v6, v8);
}

uint64_t sub_10034593C()
{
  v1 = *(*v0 + 1560);

  return _swift_task_switch(sub_100345A9C, v1, 0);
}

uint64_t sub_100345A9C()
{
  v1 = v0[73];

  v0[198] = v0[68];

  return _swift_task_switch(sub_100345B3C, v1, 0);
}

uint64_t sub_100345B3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v165 = v4;
  v5 = v4;
  v6 = v4[198];
  v148 = *(v6 + 16);
  if (v148)
  {
    v7 = 0;
    v8 = v4 + 71;
    v9 = v5[194];
    v151 = v5[141];
    v152 = v5 + 202;
    v140 = v5 + 69;
    v142 = (v5 + 203);
    v10 = (v6 + 56);
    v11 = _swiftEmptyArrayStorage;
    v145 = v5 + 71;
    while (v7 < *(v6 + 16))
    {
      v160 = v7;
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v15 = *(v10 - 1);
      v14 = *v10;
      sub_100017D5C(v12, v13);
      sub_100017D5C(v15, v14);
      sub_100016590(v15, v14);
      v155 = v13;
      v158 = v12;
      sub_100A7A194(v12, v13, 0, 0);
      if (v9)
      {
        v47 = v140;
        goto LABEL_75;
      }

      *v8 = 57;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v16 = __DataStorage.init(length:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
        {
          goto LABEL_88;
        }

        swift_allocObject();
        v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v16 = v17;
      }

      if (!__DataStorage._bytes.getter())
      {
        goto LABEL_95;
      }

      if (__OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_86;
      }

      __DataStorage._length.getter();
      v18 = CCECCryptorExportKey();

      if (v18)
      {
        v48 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v49 = v5[82];
        v50 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_101385D80;
        *(v51 + 56) = &type metadata for Int32;
        *(v51 + 64) = &protocol witness table for Int32;
        *(v51 + 32) = v18;
        os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v50, "Error running CCECCryptorExportKey. Code: %d.", v134);

        CryptoError.init(rawValue:)();
        v52 = type metadata accessor for CryptoError();
        sub_10003A260(&qword_10169C9B8, 255, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        v53 = swift_allocError();
        v55 = v54;
        v56 = *(v52 - 8);
        v57 = *(v56 + 48);
        v58 = v57(v49, 1, v52);
        v59 = v5[82];
        if (v58 == 1)
        {
          (*(v56 + 104))(v55, enum case for CryptoError.unspecifiedError(_:), v52);
          v5 = v163;
          v47 = v140;
          if (v57(v59, 1, v52) != 1)
          {
            sub_10000B3A8(*(v163 + 656), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v56 + 32))(v55, v5[82], v52);
          v5 = v163;
          v47 = v140;
        }

        swift_willThrow();
        v9 = v53;

LABEL_75:
        v122 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v123 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_101385D80;
        *v47 = v9;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v125 = String.init<A>(describing:)();
        v127 = v126;
        *(v124 + 56) = &type metadata for String;
        *(v124 + 64) = sub_100008C00();
        *(v124 + 32) = v125;
        *(v124 + 40) = v127;
        os_log(_:dso:log:_:_:)(v122, &_mh_execute_header, v123, "Error deriving advertisementKey: %@", 35, 2, v124);

        sub_1001BAF88();
        v128 = swift_allocError();
        *v129 = 0;
        swift_willThrow();

LABEL_84:
        _StringGuts.grow(_:)(35);
        v5[62] = 0;
        v5[63] = 0xE000000000000000;
        v133._object = 0x800000010134CB30;
        v133._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v133);
        v5[70] = v128;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v19 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v19 >= 0x39)
      {
        v20 = 57;
      }

      else
      {
        v20 = *v8;
      }

      if (!v19)
      {

        CCECCryptorRelease();
        v21 = 0;
        v60 = 0;
        v22 = 0xC000000000000000;
        goto LABEL_83;
      }

      if (v19 <= 0xE)
      {
        *(v152 + 6) = 0;
        *v152 = 0;
        *(v5 + 1630) = v20;

        v23 = __DataStorage._bytes.getter();
        if (v23)
        {
          v24 = v23;
          v25 = __DataStorage._offset.getter();
          if (__OFSUB__(0, v25))
          {
            goto LABEL_91;
          }

          v26 = (v24 - v25);
          __DataStorage._length.getter();
          if (v26)
          {
            memcpy(v152, v26, v20);
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        v21 = *v152;
        v27 = *v142 | ((*(v142 + 2) | (*(v142 + 6) << 16)) << 32);

        v22 = v151 & 0xF00000000000000 | v27;
        v151 = v22;
      }

      else
      {
        v21 = v20 << 32;
        v22 = v16 | 0x4000000000000000;
      }

      CCECCryptorRelease();
      v28 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v28 != 2)
        {
          v60 = 0;
          goto LABEL_83;
        }

        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v31 = __OFSUB__(v29, v30);
        v32 = v29 - v30;
        if (v31)
        {
          goto LABEL_89;
        }

        if (v32 != 28)
        {
          goto LABEL_49;
        }
      }

      else if (v28)
      {
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_90;
        }

        if (HIDWORD(v21) - v21 != 28)
        {
LABEL_49:
          if (v28 == 2)
          {
            v131 = *(v21 + 16);
            v130 = *(v21 + 24);
            v60 = v130 - v131;
            if (!__OFSUB__(v130, v131))
            {
              goto LABEL_83;
            }

            __break(1u);
          }

          else if (v28 == 1)
          {
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v60 = HIDWORD(v21) - v21;
            goto LABEL_83;
          }

          v60 = BYTE6(v22);
LABEL_83:
          sub_100018350();
          v128 = swift_allocError();
          *v132 = 28;
          *(v132 + 8) = v60;
          *(v132 + 16) = 0;
          swift_willThrow();
          sub_100016590(v21, v22);
          goto LABEL_84;
        }
      }

      else if (BYTE6(v22) != 28)
      {
        goto LABEL_49;
      }

      v33 = v6;
      v34 = *(v5 + 401);
      v35 = v5[81];
      v36 = v5[80];
      v37 = v5;
      v38 = v11;
      v39 = v37[79];
      (*(v36 + 104))(v35, v34, v39);
      v40 = Data.hash(algorithm:)();
      v42 = v41;
      sub_100016590(v21, v22);
      v43 = v39;
      v11 = v38;
      (*(v36 + 8))(v35, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100A5B734(0, *(v38 + 2) + 1, 1, v38);
      }

      v6 = v33;
      v45 = *(v11 + 2);
      v44 = *(v11 + 3);
      v5 = v163;
      if (v45 >= v44 >> 1)
      {
        v11 = sub_100A5B734((v44 > 1), v45 + 1, 1, v11);
      }

      v7 = v160 + 1;
      sub_100016590(v158, v155);
      v9 = 0;
      *(v11 + 2) = v45 + 1;
      v46 = &v11[16 * v45];
      *(v46 + 4) = v40;
      *(v46 + 5) = v42;
      v10 += 4;
      v8 = v145;
      if (v148 == v160 + 1)
      {
        v161 = v11;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  else
  {
    v151 = v4[141];
    v161 = _swiftEmptyArrayStorage;
LABEL_53:
    sub_100359E10(v5[85], type metadata accessor for OwnedBeaconRecord);

    v146 = v5[178];
    v149 = v5[189];
    v153 = v5[177];
    v156 = v5[190];
    v61 = v5[164];
    v62 = v5[162];
    v63 = v5[128];
    v64 = v5[124];
    v65 = v5[120];
    v66 = v5[119];
    v67 = v5[113];
    v68 = *(v163 + 896);
    v69 = *(v163 + 808);
    v70 = *(v163 + 624);
    v143 = *(v163 + 616);
    v71 = *(v163 + 592);
    v62(v70, v63, v64);
    v61(v70, 0, 1, v64);
    (*(v67 + 16))(v70 + v71[5], v65 + *(v66 + 20), v68);
    v72 = v71[7];
    v73 = *(v163 + 40);
    v74 = *(v163 + 48);
    sub_1000035D0((v163 + 16), v73);
    (*(*(*(v74 + 8) + 8) + 32))(v73);
    v75 = v68;
    v11 = v163;
    (*(v67 + 56))(v70 + v72, 0, 1, v75);
    sub_1000D2A70(v69, v70 + v71[9], &unk_101696900, &unk_10138B1E0);
    *(v70 + v71[6]) = 1;
    *(v70 + v71[8]) = v146;
    v76 = (v70 + v71[10]);
    *v76 = v149;
    v76[1] = v156;
    *(v70 + v71[11]) = v153;
    *(v70 + v71[12]) = v161;
    sub_100034E04(v70, v143, type metadata accessor for NotifyMeRequest.Subscription);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v163 + 616);
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v164[0] = v82;
      *v81 = 136315138;
      v83 = sub_10040BAA8();
      v85 = v84;
      sub_100359E10(v80, type metadata accessor for NotifyMeRequest.Subscription);
      v86 = sub_1000136BC(v83, v85, v164);
      v11 = v163;

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "publishKeys subscription: %s.", v81, 0xCu);
      sub_100007BAC(v82);
    }

    else
    {

      sub_100359E10(v80, type metadata accessor for NotifyMeRequest.Subscription);
    }

    sub_100034E04(*(v11 + 78), *(v11 + 76), type metadata accessor for NotifyMeRequest.Subscription);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = *(v11 + 143);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_57;
    }
  }

  a4 = sub_100A5CA98(0, a4[2] + 1, 1, a4);
LABEL_57:
  v89 = a4[2];
  v88 = a4[3];
  v157 = v89 + 1;
  v159 = v89;
  if (v89 >= v88 >> 1)
  {
    v162 = sub_100A5CA98((v88 > 1), v89 + 1, 1, a4);
  }

  else
  {
    v162 = a4;
  }

  v90 = *(v11 + 180);
  v91 = *(v11 + 176);
  v144 = *(v11 + 135);
  v138 = *(v11 + 133);
  v139 = *(v11 + 134);
  v136 = *(v11 + 129);
  v137 = *(v11 + 132);
  v92 = *(v11 + 128);
  v93 = *(v11 + 124);
  v150 = *(v11 + 120);
  v141 = *(v11 + 111);
  v94 = *(v11 + 101);
  v135 = *(v11 + 100);
  v95 = *(v11 + 99);
  v96 = *(v163 + 768);
  v97 = *(v163 + 624);
  v154 = *(v163 + 608);
  v147 = *(v163 + 600);

  sub_100359E10(v97, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v94, &unk_101696900, &unk_10138B1E0);
  v91(v92, v93);
  v90(v95, v96);
  v91(v136, v93);
  v98 = v163;
  v90(v135, v96);
  v91(v137, v93);
  v91(v138, v93);
  v91(v139, v93);
  v91(v144, v93);
  sub_10000B3A8(v141, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v150, type metadata accessor for NotifyWhenFoundRecord);
  v162[2] = v157;
  sub_100359DA8(v154, v162 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v159, type metadata accessor for NotifyMeRequest.Subscription);
  v99 = *(v163 + 1408);
  v100 = *(v163 + 1112);
  v101 = *(v163 + 1136) + 1;
  sub_100007BAC((v163 + 16));
  if (v101 == v100)
  {
    v99(*(v163 + 1104), *(v163 + 992));

    v102 = *(v163 + 8);

    return v102(v162);
  }

  else
  {
    v104 = *(v163 + 1136) + 1;
    *(v163 + 1144) = v162;
    *(v163 + 1136) = v104;
    *(v163 + 1128) = v151;
    v105 = *(v163 + 1592);
    v106 = *(v163 + 984);
    v107 = *(v163 + 960);
    sub_1000D2A70(*(v163 + 576) + ((*(v163 + 1596) + 32) & ~*(v163 + 1596)) + *(v163 + 1120) * v104, v106, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v106, v163 + 16);
    sub_100359DA8(v106 + v105, v107, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    *(v163 + 1152) = v108;
    *(v163 + 1160) = sub_1000076D4(v108, qword_10177AC78);
    sub_10001F280(v163 + 16, v163 + 56);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = *(v163 + 944);
      v112 = *(v163 + 904);
      v113 = *(v163 + 896);
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v164[0] = v115;
      *v114 = 141558275;
      *(v114 + 4) = 1752392040;
      *(v114 + 12) = 2081;
      v116 = *(v163 + 80);
      v117 = *(v163 + 88);
      sub_1000035D0((v163 + 56), v116);
      (*(*(*(v117 + 8) + 8) + 32))(v116);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v119;
      v98 = v163;
      (*(v112 + 8))(v111, v113);
      sub_100007BAC((v163 + 56));
      v121 = sub_1000136BC(v118, v120, v164);

      *(v114 + 14) = v121;
      _os_log_impl(&_mh_execute_header, v109, v110, "publishKeys for beacon: %{private,mask.hash}s", v114, 0x16u);
      sub_100007BAC(v115);
    }

    else
    {

      sub_100007BAC((v163 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v98 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_1003470C4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available!", v4, 2u);
  }

  v5 = v1[138];
  v6 = v1[125];
  v7 = v1[124];
  v8 = v1[120];

  sub_100359E10(v8, type metadata accessor for NotifyWhenFoundRecord);
  (*(v6 + 8))(v5, v7);
  sub_100007BAC(v1 + 2);

  v9 = v1[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_10034748C()
{
  v71 = v0;
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v50 = *(v0 + 1272);
    v60 = *(v0 + 1064);
    v62 = *(v0 + 1072);
    v57 = *(v0 + 1032);
    v58 = *(v0 + 1056);
    v3 = *(v0 + 1000);
    v56 = *(v0 + 992);
    v66 = *(v0 + 1080);
    v68 = *(v0 + 960);
    log = v1;
    v4 = *(v0 + 944);
    v5 = *(v0 + 896);
    v64 = *(v0 + 888);
    v55 = *(v0 + 800);
    v54 = *(v0 + 792);
    v52 = *(v0 + 768);
    v53 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70[0] = v49;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v50(v4, v5);
    sub_100007BAC((v0 + 176));
    v13 = sub_1000136BC(v10, v12, v70);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, log, v2, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v49);

    v15 = *(v53 + 8);
    v15(v54, v52);
    v16 = *(v3 + 8);
    v16(v57, v56);
    v15(v55, v52);
    v16(v58, v56);
    v16(v60, v56);
    v16(v62, v56);
    v16(v66, v56);
    sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v68, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v61 = *(v0 + 1064);
    v63 = *(v0 + 1072);
    v59 = *(v0 + 1056);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v67 = *(v0 + 1080);
    v69 = *(v0 + 960);
    v65 = *(v0 + 888);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);

    v24 = *(v22 + 8);
    v24(v21, v23);
    v16 = *(v18 + 8);
    v16(v17, v19);
    v24(v20, v23);
    v16(v59, v19);
    v16(v61, v19);
    v16(v63, v19);
    v16(v67, v19);
    sub_10000B3A8(v65, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v69, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v25 = *(v0 + 1144);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v28 == v27)
  {
    v16(*(v0 + 1104), *(v0 + 992));

    v29 = *(v0 + 8);

    return v29(v25);
  }

  else
  {
    v31 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v25;
    *(v0 + 1136) = v31;
    *(v0 + 1128) = v26;
    v32 = *(v0 + 1592);
    v33 = *(v0 + 984);
    v34 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v31, v33, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v33, v0 + 16);
    sub_100359DA8(v33 + v32, v34, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    *(v0 + 1152) = v35;
    *(v0 + 1160) = sub_1000076D4(v35, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 944);
      v39 = *(v0 + 904);
      v40 = *(v0 + 896);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v44);
      (*(*(*(v43 + 8) + 8) + 32))(v44);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v39 + 8))(v38, v40);
      sub_100007BAC((v0 + 56));
      v48 = sub_1000136BC(v45, v47, v70);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "publishKeys for beacon: %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100347F74()
{
  v71 = v0;
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v50 = *(v0 + 1272);
    v60 = *(v0 + 1064);
    v62 = *(v0 + 1072);
    v57 = *(v0 + 1032);
    v58 = *(v0 + 1056);
    v3 = *(v0 + 1000);
    v56 = *(v0 + 992);
    v66 = *(v0 + 1080);
    v68 = *(v0 + 960);
    log = v1;
    v4 = *(v0 + 944);
    v5 = *(v0 + 896);
    v64 = *(v0 + 888);
    v55 = *(v0 + 800);
    v54 = *(v0 + 792);
    v52 = *(v0 + 768);
    v53 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70[0] = v49;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v50(v4, v5);
    sub_100007BAC((v0 + 176));
    v13 = sub_1000136BC(v10, v12, v70);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, log, v2, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v49);

    v15 = *(v53 + 8);
    v15(v54, v52);
    v16 = *(v3 + 8);
    v16(v57, v56);
    v15(v55, v52);
    v16(v58, v56);
    v16(v60, v56);
    v16(v62, v56);
    v16(v66, v56);
    sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v68, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v61 = *(v0 + 1064);
    v63 = *(v0 + 1072);
    v59 = *(v0 + 1056);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v67 = *(v0 + 1080);
    v69 = *(v0 + 960);
    v65 = *(v0 + 888);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);

    v24 = *(v22 + 8);
    v24(v21, v23);
    v16 = *(v18 + 8);
    v16(v17, v19);
    v24(v20, v23);
    v16(v59, v19);
    v16(v61, v19);
    v16(v63, v19);
    v16(v67, v19);
    sub_10000B3A8(v65, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v69, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v25 = *(v0 + 1144);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v28 == v27)
  {
    v16(*(v0 + 1104), *(v0 + 992));

    v29 = *(v0 + 8);

    return v29(v25);
  }

  else
  {
    v31 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v25;
    *(v0 + 1136) = v31;
    *(v0 + 1128) = v26;
    v32 = *(v0 + 1592);
    v33 = *(v0 + 984);
    v34 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v31, v33, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v33, v0 + 16);
    sub_100359DA8(v33 + v32, v34, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    *(v0 + 1152) = v35;
    *(v0 + 1160) = sub_1000076D4(v35, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 944);
      v39 = *(v0 + 904);
      v40 = *(v0 + 896);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v44);
      (*(*(*(v43 + 8) + 8) + 32))(v44);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v39 + 8))(v38, v40);
      sub_100007BAC((v0 + 56));
      v48 = sub_1000136BC(v45, v47, v70);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "publishKeys for beacon: %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100348A5C()
{
  v71 = v0;
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v50 = *(v0 + 1272);
    v60 = *(v0 + 1064);
    v62 = *(v0 + 1072);
    v57 = *(v0 + 1032);
    v58 = *(v0 + 1056);
    v3 = *(v0 + 1000);
    v56 = *(v0 + 992);
    v66 = *(v0 + 1080);
    v68 = *(v0 + 960);
    log = v1;
    v4 = *(v0 + 944);
    v5 = *(v0 + 896);
    v64 = *(v0 + 888);
    v55 = *(v0 + 800);
    v54 = *(v0 + 792);
    v52 = *(v0 + 768);
    v53 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70[0] = v49;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v50(v4, v5);
    sub_100007BAC((v0 + 176));
    v13 = sub_1000136BC(v10, v12, v70);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, log, v2, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v49);

    v15 = *(v53 + 8);
    v15(v54, v52);
    v16 = *(v3 + 8);
    v16(v57, v56);
    v15(v55, v52);
    v16(v58, v56);
    v16(v60, v56);
    v16(v62, v56);
    v16(v66, v56);
    sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v68, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v61 = *(v0 + 1064);
    v63 = *(v0 + 1072);
    v59 = *(v0 + 1056);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v67 = *(v0 + 1080);
    v69 = *(v0 + 960);
    v65 = *(v0 + 888);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);

    v24 = *(v22 + 8);
    v24(v21, v23);
    v16 = *(v18 + 8);
    v16(v17, v19);
    v24(v20, v23);
    v16(v59, v19);
    v16(v61, v19);
    v16(v63, v19);
    v16(v67, v19);
    sub_10000B3A8(v65, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v69, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v25 = *(v0 + 1144);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v28 == v27)
  {
    v16(*(v0 + 1104), *(v0 + 992));

    v29 = *(v0 + 8);

    return v29(v25);
  }

  else
  {
    v31 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v25;
    *(v0 + 1136) = v31;
    *(v0 + 1128) = v26;
    v32 = *(v0 + 1592);
    v33 = *(v0 + 984);
    v34 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v31, v33, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v33, v0 + 16);
    sub_100359DA8(v33 + v32, v34, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    *(v0 + 1152) = v35;
    *(v0 + 1160) = sub_1000076D4(v35, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 944);
      v39 = *(v0 + 904);
      v40 = *(v0 + 896);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v44);
      (*(*(*(v43 + 8) + 8) + 32))(v44);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v39 + 8))(v38, v40);
      sub_100007BAC((v0 + 56));
      v48 = sub_1000136BC(v45, v47, v70);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "publishKeys for beacon: %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100349544()
{
  v71 = v0;
  sub_10000B3A8(*(v0 + 736), &qword_10169E350, &unk_10139D7B0);
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v50 = *(v0 + 1272);
    v60 = *(v0 + 1064);
    v62 = *(v0 + 1072);
    v57 = *(v0 + 1032);
    v58 = *(v0 + 1056);
    v3 = *(v0 + 1000);
    v56 = *(v0 + 992);
    v66 = *(v0 + 1080);
    v68 = *(v0 + 960);
    log = v1;
    v4 = *(v0 + 944);
    v5 = *(v0 + 896);
    v64 = *(v0 + 888);
    v55 = *(v0 + 800);
    v54 = *(v0 + 792);
    v52 = *(v0 + 768);
    v53 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70[0] = v49;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v50(v4, v5);
    sub_100007BAC((v0 + 176));
    v13 = sub_1000136BC(v10, v12, v70);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, log, v2, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v49);

    v15 = *(v53 + 8);
    v15(v54, v52);
    v16 = *(v3 + 8);
    v16(v57, v56);
    v15(v55, v52);
    v16(v58, v56);
    v16(v60, v56);
    v16(v62, v56);
    v16(v66, v56);
    sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v68, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v61 = *(v0 + 1064);
    v63 = *(v0 + 1072);
    v59 = *(v0 + 1056);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v67 = *(v0 + 1080);
    v69 = *(v0 + 960);
    v65 = *(v0 + 888);
    v20 = *(v0 + 800);
    v21 = *(v0 + 792);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);

    v24 = *(v22 + 8);
    v24(v21, v23);
    v16 = *(v18 + 8);
    v16(v17, v19);
    v24(v20, v23);
    v16(v59, v19);
    v16(v61, v19);
    v16(v63, v19);
    v16(v67, v19);
    sub_10000B3A8(v65, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v69, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v25 = *(v0 + 1144);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v28 == v27)
  {
    v16(*(v0 + 1104), *(v0 + 992));

    v29 = *(v0 + 8);

    return v29(v25);
  }

  else
  {
    v31 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v25;
    *(v0 + 1136) = v31;
    *(v0 + 1128) = v26;
    v32 = *(v0 + 1592);
    v33 = *(v0 + 984);
    v34 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v31, v33, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v33, v0 + 16);
    sub_100359DA8(v33 + v32, v34, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    *(v0 + 1152) = v35;
    *(v0 + 1160) = sub_1000076D4(v35, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 944);
      v39 = *(v0 + 904);
      v40 = *(v0 + 896);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v44);
      (*(*(*(v43 + 8) + 8) + 32))(v44);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v39 + 8))(v38, v40);
      sub_100007BAC((v0 + 56));
      v48 = sub_1000136BC(v45, v47, v70);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "publishKeys for beacon: %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_10034A044()
{
  v96 = v0;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 1152), qword_10177CE28);
  sub_10001F280(v0 + 16, v0 + 376);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v85 = *(v0 + 1272);
    v3 = *(v0 + 944);
    v4 = *(v0 + 896);
    v93 = *(v0 + 680);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v95[0] = v90;
    *v5 = 141558531;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_1000035D0((v0 + 376), v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v85(v3, v4);
    sub_100007BAC((v0 + 376));
    v12 = sub_1000136BC(v9, v11, v95);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v13;
    *v6 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get ownedDevice keys for %{private,mask.hash}s error: %{public}@.", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v90);

    sub_100359E10(v93, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
    v14 = *(v0 + 680);

    sub_100359E10(v14, type metadata accessor for OwnedBeaconRecord);
    sub_100007BAC((v0 + 376));
  }

  v71 = *(v0 + 1128);
  v83 = *(v0 + 1424);
  v86 = *(v0 + 1512);
  v88 = *(v0 + 1416);
  v91 = *(v0 + 1520);
  v15 = *(v0 + 1312);
  v16 = *(v0 + 992);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 904);
  v20 = *(v0 + 896);
  v21 = *(v0 + 624);
  v79 = *(v0 + 808);
  v81 = *(v0 + 616);
  v22 = *(v0 + 592);
  (*(v0 + 1296))(v21, *(v0 + 1024), v16);
  v15(v21, 0, 1, v16);
  (*(v19 + 16))(v21 + v22[5], v17 + *(v18 + 20), v20);
  v23 = v22[7];
  v25 = *(v0 + 40);
  v24 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v25);
  (*(*(*(v24 + 8) + 8) + 32))(v25);
  (*(v19 + 56))(v21 + v23, 0, 1, v20);
  sub_1000D2A70(v79, v21 + v22[9], &unk_101696900, &unk_10138B1E0);
  *(v21 + v22[6]) = 1;
  *(v21 + v22[8]) = v83;
  v26 = (v21 + v22[10]);
  *v26 = v86;
  v26[1] = v91;
  *(v21 + v22[11]) = v88;
  *(v21 + v22[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v21, v81, type metadata accessor for NotifyMeRequest.Subscription);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 616);
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v95[0] = v32;
    *v31 = 136315138;
    v33 = sub_10040BAA8();
    v35 = v34;
    sub_100359E10(v30, type metadata accessor for NotifyMeRequest.Subscription);
    v36 = sub_1000136BC(v33, v35, v95);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "publishKeys subscription: %s.", v31, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    sub_100359E10(v30, type metadata accessor for NotifyMeRequest.Subscription);
  }

  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_100A5CA98(0, v38[2] + 1, 1, v38);
  }

  v40 = v38[2];
  v39 = v38[3];
  v89 = v40 + 1;
  v92 = v40;
  if (v40 >= v39 >> 1)
  {
    v94 = sub_100A5CA98((v39 > 1), v40 + 1, 1, v38);
  }

  else
  {
    v94 = v38;
  }

  v41 = *(v0 + 1440);
  v42 = *(v0 + 1408);
  v80 = *(v0 + 1080);
  v76 = *(v0 + 1064);
  v77 = *(v0 + 1072);
  v75 = *(v0 + 1056);
  v74 = *(v0 + 1032);
  v72 = *(v0 + 1024);
  v43 = *(v0 + 992);
  v84 = *(v0 + 960);
  v78 = *(v0 + 888);
  v44 = *(v0 + 808);
  v73 = *(v0 + 800);
  v45 = *(v0 + 792);
  v46 = *(v0 + 768);
  v47 = *(v0 + 624);
  v87 = *(v0 + 608);
  v82 = *(v0 + 600);

  sub_100359E10(v47, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
  v42(v72, v43);
  v41(v45, v46);
  v42(v74, v43);
  v41(v73, v46);
  v42(v75, v43);
  v42(v76, v43);
  v42(v77, v43);
  v42(v80, v43);
  sub_10000B3A8(v78, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v84, type metadata accessor for NotifyWhenFoundRecord);
  v94[2] = v89;
  sub_100359DA8(v87, v94 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v92, type metadata accessor for NotifyMeRequest.Subscription);
  v48 = *(v0 + 1408);
  v49 = *(v0 + 1112);
  v50 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v50 == v49)
  {
    v48(*(v0 + 1104), *(v0 + 992));

    v51 = *(v0 + 8);

    return v51(v94);
  }

  else
  {
    v53 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v94;
    *(v0 + 1136) = v53;
    *(v0 + 1128) = v71;
    v54 = *(v0 + 1592);
    v55 = *(v0 + 984);
    v56 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v53, v55, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v55, v0 + 16);
    sub_100359DA8(v55 + v54, v56, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    *(v0 + 1152) = v57;
    *(v0 + 1160) = sub_1000076D4(v57, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 944);
      v61 = *(v0 + 904);
      v62 = *(v0 + 896);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v95[0] = v64;
      *v63 = 141558275;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v66 = *(v0 + 80);
      v65 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v66);
      (*(*(*(v65 + 8) + 8) + 32))(v66);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      (*(v61 + 8))(v60, v62);
      sub_100007BAC((v0 + 56));
      v70 = sub_1000136BC(v67, v69, v95);

      *(v63 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v58, v59, "publishKeys for beacon: %{private,mask.hash}s", v63, 0x16u);
      sub_100007BAC(v64);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_10034AE3C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for FMNAccountType();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for NotifyMeEndpoint(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10034AFF0, v1, 0);
}

uint64_t sub_10034AFF0()
{
  v13 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v1, qword_10177AC78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "publishKeys for beacons: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_10034B1DC;
  v10 = v0[7];

  return sub_10033E248(v10);
}

uint64_t sub_10034B1DC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10034B2F4, v2, 0);
}

uint64_t sub_10034B2F4()
{
  v1 = *(v0[8] + 128);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10034B3B8;
  v3 = v0[24];

  return sub_10040D0B8(v3, v1);
}

uint64_t sub_10034B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;

  return _swift_task_switch(sub_10034B4D4, v5, 0);
}

uint64_t sub_10034B4D4(uint64_t a1)
{
  v2 = v1[26];
  if (v2)
  {
    v4 = v1[27];
    v3 = v1[28];
    v25 = v1[14];
    v5 = v1[12];
    v22 = v1[13];
    v23 = v1[15];
    v6 = v1[10];
    v24 = v1[9];
    v7 = enum case for FMNAccountType.searchParty(_:);
    v8 = *(v1[11] + 104);
    v8(v5, enum case for FMNAccountType.searchParty(_:), v6);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    sub_100017D5C(v4, v3);
    *v23 = sub_1010B32C8(v5);
    v8(v23 + *(v22 + 20), v7, v6);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v9 = type metadata accessor for FMNMockingPreferences();
    (*(*(v9 - 8) + 56))(v24, 1, 1, v9);
    v10 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v11 = swift_allocObject();
    sub_100034E04(v23, v25, type metadata accessor for NotifyMeEndpoint);
    v1[29] = sub_10062050C(v25, v10, v11);
    sub_100359E10(v23, type metadata accessor for NotifyMeEndpoint);
    v1[5] = &type metadata for NotifyMeRequest;
    v1[6] = sub_100358FC0();
    v1[2] = v2;
    v1[3] = v4;
    v1[4] = v3;

    sub_100017D5C(v4, v3);
    v12 = swift_task_alloc();
    v1[30] = v12;
    *v12 = v1;
    v12[1] = sub_10034B894;
    v13 = v1[21];

    return sub_1004E682C(v13, (v1 + 2));
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not create notify me request", v17, 2u);
    }

    v19 = v1[27];
    v18 = v1[28];

    sub_100358F3C();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    sub_100165328(0, v19, v18);

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_10034B894()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);

    v4 = sub_10034C3C0;
  }

  else
  {
    v3 = *(v2 + 64);

    sub_100007BAC((v2 + 16));
    v4 = sub_10034B9C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10034B9C8(uint64_t a1)
{
  v66 = v1;
  v2 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v2 == 500 || v2 == 404)
  {
    (*(v1[17] + 16))(v1[19], v1[21], v1[16]);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[19];
    v20 = v1[16];
    v19 = v1[17];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65[0] = v63;
      *v21 = 136446210;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v60 = v16;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = v25;
      v27 = sub_1000136BC(v22, v24, v65);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v15, v60, "Publish failed: %{public}s", v21, 0xCu);
      sub_100007BAC(v63);
    }

    else
    {

      v28 = *(v19 + 8);
      v28(v18, v20);
      v26 = v28;
    }

    v29 = v1[21];
    v30 = v1[16];
    sub_100358F3C();
    swift_allocError();
    *v31 = 0;
  }

  else
  {
    if (v2 == 200)
    {
      (*(v1[17] + 16))(v1[20], v1[21], v1[16]);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      v5 = os_log_type_enabled(v3, v4);
      v6 = v1[20];
      v7 = v1[16];
      v8 = v1[17];
      if (v5)
      {
        v9 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v65[0] = v62;
        *v9 = 136315138;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;
        v13 = *(v8 + 8);
        v13(v6, v7);
        v14 = sub_1000136BC(v10, v12, v65);

        *(v9 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v3, v4, "Publish success: %s", v9, 0xCu);
        sub_100007BAC(v62);
      }

      else
      {

        v13 = *(v8 + 8);
        v13(v6, v7);
      }

      v1[32] = v13;
      v44 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v46 = v45;
      v1[33] = v44;
      v1[34] = v45;
      v47 = swift_task_alloc();
      v1[35] = v47;
      *v47 = v1;
      v47[1] = sub_10034C140;

      return sub_10035052C(v44, v46);
    }

    (*(v1[17] + 16))(v1[18], v1[21], v1[16]);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v36 = v1[17];
    v35 = v1[18];
    v37 = v1[16];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65[0] = v64;
      *v38 = 136446210;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v61 = v33;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v26 = v42;
      v43 = sub_1000136BC(v39, v41, v65);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v32, v61, "Publish failed: %{public}s", v38, 0xCu);
      sub_100007BAC(v64);
    }

    else
    {

      v49 = *(v36 + 8);
      v49(v35, v37);
      v26 = v49;
    }

    v29 = v1[21];
    v30 = v1[16];
    sub_100358F3C();
    swift_allocError();
    *v50 = 2;
  }

  swift_willThrow();
  v26(v29, v30);
  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138543362;
    swift_errorRetain();
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "Server error publishing keys: %{public}@", v53, 0xCu);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);
  }

  v57 = v1[27];
  v56 = v1[28];
  v58 = v1[26];

  swift_willThrow();
  sub_100165328(v58, v57, v56);
  sub_100165328(v58, v57, v56);

  v59 = v1[1];

  return v59();
}

uint64_t sub_10034C140()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = v2[34];
  v4 = v2[33];
  v5 = v2[8];
  sub_100016590(v4, v3);
  if (v0)
  {
    v6 = sub_10034C5A0;
  }

  else
  {
    v6 = sub_10034C29C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034C29C()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[16];
  sub_100165328(v4, v2, v3);
  sub_100165328(v4, v2, v3);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10034C3C0()
{
  sub_100007BAC(v0 + 2);
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Server error publishing keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];

  swift_willThrow();
  sub_100165328(v8, v7, v6);
  sub_100165328(v8, v7, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034C5A0()
{
  (*(v0 + 256))(*(v0 + 168), *(v0 + 128));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Server error publishing keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);

  swift_willThrow();
  sub_100165328(v8, v7, v6);
  sub_100165328(v8, v7, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10034C794(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for FMNAccountType();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for NotifyMeEndpoint(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for NotifyMeRequest.Subscription(0);
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for StableIdentifier(0);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v2[37] = *(v7 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[43] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v2[44] = found;
  v2[45] = *(found - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_10034CB50, v1, 0);
}

uint64_t sub_10034CB50()
{
  v19 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 384) = sub_1000076D4(v1, qword_10177AC78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unsubscribe for beacons: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 96);
  v10 = *(v9 + 16);
  *(v0 + 392) = v10;
  if (v10)
  {
    v11 = *(v0 + 360);
    v12 = *(v11 + 80);
    *(v0 + 600) = v12;
    v13 = *(v11 + 72);
    *(v0 + 416) = 0;
    *(v0 + 400) = v13;
    *(v0 + 408) = _swiftEmptyArrayStorage;
    sub_100034E04(v9 + ((v12 + 32) & ~v12), *(v0 + 376), type metadata accessor for NotifyWhenFoundRecord);
    v14 = swift_task_alloc();
    *(v0 + 424) = v14;
    *v14 = v0;
    v14[1] = sub_10034CE38;

    return daemon.getter();
  }

  else
  {
    *(v0 + 496) = _swiftEmptyArrayStorage;
    v15 = *(*(v0 + 104) + 128);

    v16 = swift_task_alloc();
    *(v0 + 504) = v16;
    *v16 = v0;
    v16[1] = sub_10034DBF8;

    return sub_10040D0B8(_swiftEmptyArrayStorage, v15);
  }
}

uint64_t sub_10034CE38(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 432) = a1;

  v3 = swift_task_alloc();
  *(v2 + 440) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10034D01C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10034D01C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = sub_10034DA64;
  }

  else
  {
    v7 = *(v4 + 352);

    *(v4 + 456) = a1;
    *(v4 + 604) = *(v7 + 24);
    v6 = sub_10034D164;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034D164()
{
  v1 = *(v0 + 604);
  v2 = *(v0 + 456);
  v3 = *(v0 + 376);
  v4 = *(v0 + 328);
  v5 = *(v0 + 288);
  v6 = *(v0 + 280);
  v7 = *(v5 + 16);
  *(v0 + 464) = v7;
  *(v0 + 472) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3 + v1, v6);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v8, v4, v6);

  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *v10 = v0;
  v10[1] = sub_10034D2D4;
  v12 = *(v0 + 336);
  v11 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100358FA8, v9, v12);
}

uint64_t sub_10034D2D4()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_10034D424, v1, 0);
}

uint64_t sub_10034D424()
{
  v1 = *(v0 + 344);
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v3 = *(v0 + 272);
    v4 = v2[6];
    sub_100034E04(v1 + v4, v3, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100359E10(v3, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload != 1)
    {
      sub_100034E04(v1 + v4, *(v0 + 264), type metadata accessor for StableIdentifier);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      }

      else
      {
        if (v6 != 3)
        {
          v16 = *(v0 + 344);
          sub_100359E10(*(v0 + 264), type metadata accessor for StableIdentifier);
          sub_100359E10(v16, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_12;
        }

        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      }

      v7 = *(v0 + 280);
      v8 = *(v0 + 288);
      v9 = *(v0 + 264);

      (*(v8 + 8))(v9, v7);
    }

    v10 = *(v0 + 344);
    v11 = sub_100314604(*(v10 + v2[16]), *(v10 + v2[17]));
    v13 = v12;
    sub_100359E10(v10, type metadata accessor for OwnedBeaconRecord);
    if (v13 >> 60 != 15)
    {
      *(v0 + 80) = v11;
      *(v0 + 88) = v13;
      sub_1002313AC();
      v14 = RawRepresentable<>.hexString.getter();
      v44 = v15;
      v45 = v14;
      sub_100006654(v11, v13);
      goto LABEL_13;
    }
  }

LABEL_12:
  v44 = 0;
  v45 = 0;
LABEL_13:
  v17 = *(v0 + 464);
  v18 = *(v0 + 376);
  v40 = *(v0 + 352);
  v19 = *(v0 + 280);
  v41 = *(v0 + 288);
  v42 = *(v0 + 604);
  v20 = *(v0 + 248);
  v43 = *(v0 + 240);
  v21 = *(v0 + 224);
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v20, 1, 1, v22);
  v17(v20 + v21[5], v18 + *(v40 + 20), v19);
  v24 = v21[7];
  v17(v20 + v24, v18 + v42, v19);
  (*(v41 + 56))(v20 + v24, 0, 1, v19);
  v23(v20 + v21[9], 1, 1, v22);
  *(v20 + v21[6]) = 0;
  *(v20 + v21[8]) = _swiftEmptyArrayStorage;
  v25 = (v20 + v21[10]);
  *v25 = v45;
  v25[1] = v44;
  *(v20 + v21[11]) = _swiftEmptyArrayStorage;
  *(v20 + v21[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v20, v43, type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_100A5CA98(0, v27[2] + 1, 1, *(v0 + 408));
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_100A5CA98((v28 > 1), v29 + 1, 1, v27);
  }

  v30 = *(v0 + 392);
  v31 = *(v0 + 376);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 416) + 1;
  sub_100359E10(*(v0 + 248), type metadata accessor for NotifyMeRequest.Subscription);
  sub_100359E10(v31, type metadata accessor for NotifyWhenFoundRecord);
  v27[2] = v29 + 1;
  sub_100359DA8(v32, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for NotifyMeRequest.Subscription);
  if (v34 == v30)
  {
    *(v0 + 496) = v27;
    v35 = *(*(v0 + 104) + 128);

    v36 = swift_task_alloc();
    *(v0 + 504) = v36;
    *v36 = v0;
    v36[1] = sub_10034DBF8;

    return sub_10040D0B8(v27, v35);
  }

  else
  {
    v38 = *(v0 + 416) + 1;
    *(v0 + 408) = v27;
    *(v0 + 416) = v38;
    sub_100034E04(*(v0 + 96) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 400) * v38, *(v0 + 376), type metadata accessor for NotifyWhenFoundRecord);
    v39 = swift_task_alloc();
    *(v0 + 424) = v39;
    *v39 = v0;
    v39[1] = sub_10034CE38;

    return daemon.getter();
  }
}

uint64_t sub_10034DA64()
{
  v1 = *(v0 + 376);

  sub_100359E10(v1, type metadata accessor for NotifyWhenFoundRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10034DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = a3;

  return _swift_task_switch(sub_10034DD18, v5, 0);
}

uint64_t sub_10034DD18()
{
  v1 = v0[64];
  if (v1)
  {
    v2 = v0[66];
    v3 = v0[65];
    v24 = v0[20];
    v4 = v0[18];
    v21 = v0[19];
    v22 = v0[21];
    v5 = v0[16];
    v23 = v0[15];
    v6 = enum case for FMNAccountType.searchParty(_:);
    v7 = *(v0[17] + 104);
    v7(v4, enum case for FMNAccountType.searchParty(_:), v5);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    sub_100017D5C(v3, v2);
    *v22 = sub_1010B32C8(v4);
    v7(v22 + *(v21 + 20), v6, v5);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v8 = type metadata accessor for FMNMockingPreferences();
    (*(*(v8 - 8) + 56))(v23, 1, 1, v8);
    v9 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v10 = swift_allocObject();
    sub_100034E04(v22, v24, type metadata accessor for NotifyMeEndpoint);
    v0[67] = sub_10062050C(v24, v9, v10);
    sub_100359E10(v22, type metadata accessor for NotifyMeEndpoint);
    v0[5] = &type metadata for NotifyMeRequest;
    v0[6] = sub_100358FC0();
    v0[2] = v1;
    v0[3] = v3;
    v0[4] = v2;

    sub_100017D5C(v3, v2);
    v11 = swift_task_alloc();
    v0[68] = v11;
    *v11 = v0;
    v11[1] = sub_10034E178;
    v12 = v0[27];

    return sub_1004E682C(v12, (v0 + 2));
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not create notify me request", v16, 2u);
    }

    v17 = v0[66];
    v18 = v0[65];

    sub_100358F3C();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    sub_100165328(0, v18, v17);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10034E178()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);

    v4 = sub_10034F234;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 104);

    sub_100007BAC((v2 + 16));
    v4 = sub_10034E2C0;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10034E2C0(uint64_t a1)
{
  v61 = v1;
  v2 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v2 == 200)
  {
    (*(v1[23] + 16))(v1[26], v1[27], v1[22]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[26];
    v7 = v1[22];
    v8 = v1[23];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v60[0] = v57;
      *v9 = 136315138;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      v13 = *(v8 + 8);
      v13(v6, v7);
      v14 = sub_1000136BC(v10, v12, v60);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unsubscribe success: %s", v9, 0xCu);
      sub_100007BAC(v57);
    }

    else
    {

      v13 = *(v8 + 8);
      v13(v6, v7);
    }

    v1[70] = v13;
    v28 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v30 = v29;
    v1[71] = v28;
    v1[72] = v29;
    v31 = swift_task_alloc();
    v1[73] = v31;
    *v31 = v1;
    v31[1] = sub_10034EAD4;

    return sub_10035052C(v28, v30);
  }

  else
  {
    v15 = v2;

    if (v15 == 500 || v15 == 404)
    {
      (*(v1[23] + 16))(v1[25], v1[27], v1[22]);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v1[25];
      v21 = v1[22];
      v20 = v1[23];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60[0] = v58;
        *v22 = 136446210;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = *(v20 + 8);
        v26(v19, v21);
        v27 = sub_1000136BC(v23, v25, v60);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unsubscribe failed: %{public}s", v22, 0xCu);
        sub_100007BAC(v58);
      }

      else
      {

        v26 = *(v20 + 8);
        v26(v19, v21);
      }

      v33 = v1[27];
      v34 = v1[22];
      sub_100358F3C();
      swift_allocError();
      *v35 = 0;
    }

    else
    {
      (*(v1[23] + 16))(v1[24], v1[27], v1[22]);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = os_log_type_enabled(v36, v37);
      v40 = v1[23];
      v39 = v1[24];
      v41 = v1[22];
      if (v38)
      {
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60[0] = v59;
        *v42 = 136446210;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v26 = *(v40 + 8);
        v26(v39, v41);
        v46 = sub_1000136BC(v43, v45, v60);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unsubscribe failed: %{public}s", v42, 0xCu);
        sub_100007BAC(v59);
      }

      else
      {

        v26 = *(v40 + 8);
        v26(v39, v41);
      }

      v33 = v1[27];
      v34 = v1[22];
      sub_100358F3C();
      swift_allocError();
      *v47 = 2;
    }

    swift_willThrow();
    v26(v33, v34);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Server error unsubscribing: %{public}@", v50, 0xCu);
      sub_10000B3A8(v51, &qword_10169BB30, &unk_10138B3C0);
    }

    v53 = v1[66];
    v54 = v1[65];
    v55 = v1[64];

    swift_willThrow();
    sub_100165328(v55, v54, v53);
    sub_100165328(v55, v54, v53);

    v56 = v1[1];

    return v56();
  }
}

uint64_t sub_10034EAD4()
{
  v2 = *v1;
  v2[74] = v0;

  v3 = v2[72];
  v4 = v2[71];
  if (v0)
  {
    v5 = v2[13];

    sub_100016590(v4, v3);
    v6 = sub_10034F4A8;
  }

  else
  {
    v5 = v2[13];
    sub_100016590(v4, v3);
    v6 = sub_10034EC48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034EC48()
{
  v50 = v0;
  v1 = *(v0 + 392);
  if (v1)
  {
    v2 = *(v0 + 360);
    v47 = *(v0 + 352);
    v3 = *(v0 + 288);
    v4 = *(v0 + 96);
    v49 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v1, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v46 = *(v2 + 72);
    do
    {
      v8 = *(v0 + 368);
      v9 = *(v0 + 312);
      v10 = *(v0 + 280);
      sub_100034E04(v7, v8, type metadata accessor for NotifyWhenFoundRecord);
      (*(v3 + 16))(v9, v8 + *(v47 + 24), v10);
      sub_100359E10(v8, type metadata accessor for NotifyWhenFoundRecord);
      v49 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C((v11 > 1), v12 + 1, 1);
        v6 = v49;
      }

      v13 = *(v0 + 392);
      v14 = *(v0 + 312);
      v15 = *(v0 + 280);
      ++v5;
      v6[2] = v12 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v14, v15);
      v7 += v46;
    }

    while (v5 != v13);

    v17 = v6;
    v18 = v6[2];
    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    if (!v18)
    {
LABEL_15:
      v38 = *(v0 + 528);
      v39 = *(v0 + 520);
      v40 = *(v0 + 512);
      (*(v0 + 560))(*(v0 + 216), *(v0 + 176));

      sub_100165328(v40, v39, v38);
      sub_100165328(v40, v39, v38);

      v41 = *(v0 + 8);

      return v41();
    }
  }

  v19 = 0;
  v45 = *(v0 + 288);
  v44 = (v45 + 8);
  v48 = v17;
  v42 = v18;
  while (v19 < v17[2])
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 304);
    v26 = *(v0 + 280);
    v27 = *(v45 + 16);
    v27(v24, v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v19, v26);
    v27(v25, v24, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 304);
    v32 = *(v0 + 280);
    if (v30)
    {
      v33 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v20 = *v44;
      (*v44)(v31, v32);
      v37 = sub_1000136BC(v34, v36, &v49);
      v18 = v42;

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "Removing beacon %{private,mask.hash}s from pending force publish.", v33, 0x16u);
      sub_100007BAC(v43);
    }

    else
    {

      v20 = *v44;
      (*v44)(v31, v32);
    }

    ++v19;
    v21 = *(v0 + 320);
    v22 = *(v0 + 280);
    v23 = *(v0 + 112);
    swift_beginAccess();
    sub_1010F6584(v21, v23);
    sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();
    result = v20(v21, v22);
    v17 = v48;
    if (v18 == v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10034F234()
{
  sub_100007BAC(v0 + 2);
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Server error unsubscribing: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];

  swift_willThrow();
  sub_100165328(v8, v7, v6);
  sub_100165328(v8, v7, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034F4A8()
{
  (*(v0 + 560))(*(v0 + 216), *(v0 + 176));
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Server error unsubscribing: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);

  swift_willThrow();
  sub_100165328(v8, v7, v6);
  sub_100165328(v8, v7, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10034F730(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v2[17] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v2[18] = found;
  v2[19] = *(found - 8);
  v2[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[21] = v7;
  *v7 = v2;
  v7[1] = sub_10034F978;

  return daemon.getter();
}

uint64_t sub_10034F978(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10034FB5C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10034FB5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100350454;
  }

  else
  {

    *(v4 + 200) = a1;
    v6 = sub_10034FC98;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034FC98()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[26] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10034FDF8;
  v9 = v0[16];
  v8 = v0[17];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v6, v9);
}

uint64_t sub_10034FDF8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10034FF48, v1, 0);
}

void sub_10034FF48()
{
  v40 = v0;
  v1 = v0[17];
  if ((*(v0[19] + 48))(v1, 1, v0[18]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
LABEL_7:
    v6 = 0;
LABEL_8:

    v7 = v0[1];

    v7(v6 & 1);
    return;
  }

  sub_100359DA8(v1, v0[20], type metadata accessor for NotifyWhenFoundRecord);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_100035730(v0[3], sub_100352E48, 0);
  sub_1012BB138(v3, v2);

  v4 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    v5 = v0[20];
    sub_10000B3A8(v0[5], &qword_1016A42E0, &qword_1013B0010);
    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_7;
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];
  v13 = *(v11 + 16);
  v13(v9, v12 + *(v4 + 20), v10);
  sub_100359E10(v12, type metadata accessor for BeaconObservation);
  (*(v11 + 32))(v8, v9, v10);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v14 = v0[11];
  v15 = v0[9];
  v16 = v0[6];
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177AC78);
  v13(v15, v14, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  if (v20)
  {
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v24 = 136315138;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = *(v23 + 8);
    v28(v21, v22);
    v29 = sub_1000136BC(v25, v27, &v39);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "postedLocalNotification lastPosted: %s.", v24, 0xCu);
    sub_100007BAC(v38);
  }

  else
  {

    v28 = *(v23 + 8);
    v28(v21, v22);
  }

  v30 = v0[24];
  v31 = v0[20];
  v32 = v0[8];
  v33 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v31, v32);
  objc_autoreleasePoolPop(v33);
  if (!v30)
  {
    v34 = v0[20];
    v35 = v0[11];
    v36 = v0[8];
    v37 = v0[6];
    v6 = static Date.> infix(_:_:)();
    v28(v36, v37);
    v28(v35, v37);
    sub_100359E10(v34, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_8;
  }
}

uint64_t sub_100350454()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10035052C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[13] = swift_task_alloc();
  v3[14] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v3[15] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v3[16] = found;
  v3[17] = *(found - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v3[23] = *(v6 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for NotifyMeResponseResult(0);
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1003507A4, v2, 0);
}

uint64_t sub_1003507A4()
{
  v41 = v0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 248) = JSONDecoder.init()();
  sub_100358EE8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 48);
  *(v0 + 256) = v1;
  if (qword_101694688 != -1)
  {
LABEL_21:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 264) = sub_1000076D4(v2, qword_10177AC78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40[0] = v6;
    *v5 = 136315138;
    *(v0 + 56) = v1;

    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, v40);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "NotifyMeResponse: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v1 + 16);
  *(v0 + 272) = v10;
  if (!v10)
  {
LABEL_14:

    v34 = *(v0 + 8);

    return v34();
  }

  v11 = 0;
  *(v0 + 464) = *(*(v0 + 216) + 80);
  while (1)
  {
    *(v0 + 280) = v11;
    v14 = *(v0 + 256);
    if (v11 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v15 = *(v0 + 240);
    v16 = *(v0 + 208);
    v1 = *(v0 + 200);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    sub_100034E04(v14 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v11, v15, type metadata accessor for NotifyMeResponseResult);
    v19 = *(v18 + 16);
    *(v0 + 288) = v19;
    *(v0 + 296) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v1, v15, v17);
    if (*(v15 + *(v16 + 20)))
    {
      break;
    }

    v12 = *(v0 + 240);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v13 = v12;
LABEL_7:
    sub_100359E10(v13, type metadata accessor for NotifyMeResponseResult);
    v11 = *(v0 + 280) + 1;
    if (v11 == *(v0 + 272))
    {
      goto LABEL_14;
    }
  }

  if (*(v15 + *(v16 + 20)) == 2)
  {
    sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v1 = *(v0 + 232);
    v23 = *(v0 + 240);
    if (v22)
    {
      v24 = *(v0 + 224);
      v25 = *(v0 + 176);
      v38 = *(v0 + 168);
      v39 = *(v0 + 200);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136446210;
      sub_100034E04(v1, v24, type metadata accessor for NotifyMeResponseResult);
      v28 = String.init<A>(describing:)();
      v37 = v23;
      v30 = v29;
      sub_100359E10(v1, type metadata accessor for NotifyMeResponseResult);
      v1 = sub_1000136BC(v28, v30, v40);

      *(v26 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to process notify request: %{public}s", v26, 0xCu);
      sub_100007BAC(v27);

      (*(v25 + 8))(v39, v38);
      v13 = v37;
    }

    else
    {
      v31 = *(v0 + 200);
      v33 = *(v0 + 168);
      v32 = *(v0 + 176);

      sub_100359E10(v1, type metadata accessor for NotifyMeResponseResult);
      (*(v32 + 8))(v31, v33);
      v13 = v23;
    }

    goto LABEL_7;
  }

  v36 = swift_task_alloc();
  *(v0 + 304) = v36;
  *v36 = v0;
  v36[1] = sub_100350E5C;

  return daemon.getter();
}

uint64_t sub_100350E5C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[39] = a1;

  v3 = swift_task_alloc();
  v2[40] = v3;
  v4 = type metadata accessor for Daemon();
  v2[41] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[42] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[43] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[44] = v7;
  *v3 = v9;
  v3[1] = sub_100351058;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100351058(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 80);
    v6 = sub_100351ABC;
  }

  else
  {

    *(v4 + 368) = a1;
    v6 = sub_100351194;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100351194()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  (*(v0 + 288))(v2, *(v0 + 200), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_1003512E0;
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100358F90, v6, v9);
}

uint64_t sub_1003512E0()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100351430, v1, 0);
}

uint64_t sub_100351430()
{
  v50 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) != 1)
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    sub_100359DA8(v1, v6, type metadata accessor for NotifyWhenFoundRecord);
    sub_100034E04(v6, v7, type metadata accessor for NotifyWhenFoundRecord);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 152);
    if (v10)
    {
      v12 = *(v0 + 144);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      sub_100034E04(v11, v12, type metadata accessor for NotifyWhenFoundRecord);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_100359E10(v11, type metadata accessor for NotifyWhenFoundRecord);
      v18 = sub_1000136BC(v15, v17, &v49);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "Delete notification record (204 response): %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {

      sub_100359E10(v11, type metadata accessor for NotifyWhenFoundRecord);
    }

    v44 = swift_task_alloc();
    *(v0 + 392) = v44;
    *v44 = v0;
    v45 = sub_100351C1C;
LABEL_19:
    v44[1] = v45;

    return daemon.getter();
  }

  v2 = *(v0 + 240);
  (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
  sub_100359E10(v2, type metadata accessor for NotifyMeResponseResult);
  sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
  v3 = *(v0 + 280) + 1;
  if (v3 != *(v0 + 272))
  {
    while (1)
    {
      *(v0 + 280) = v3;
      v21 = *(v0 + 256);
      if (v3 >= *(v21 + 16))
      {
        break;
      }

      v22 = *(v0 + 240);
      v23 = *(v0 + 208);
      v24 = *(v0 + 200);
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);
      sub_100034E04(v21 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v3, v22, type metadata accessor for NotifyMeResponseResult);
      v27 = *(v26 + 16);
      *(v0 + 288) = v27;
      *(v0 + 296) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v27(v24, v22, v25);
      if (*(v22 + *(v23 + 20)))
      {
        if (*(v22 + *(v23 + 20)) != 2)
        {
          v44 = swift_task_alloc();
          *(v0 + 304) = v44;
          *v44 = v0;
          v45 = sub_100350E5C;
          goto LABEL_19;
        }

        sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v0 + 232);
        v32 = *(v0 + 240);
        if (v30)
        {
          v33 = *(v0 + 224);
          v34 = *(v0 + 176);
          v47 = *(v0 + 168);
          v48 = *(v0 + 200);
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v49 = v36;
          *v35 = 136446210;
          sub_100034E04(v31, v33, type metadata accessor for NotifyMeResponseResult);
          v37 = String.init<A>(describing:)();
          v46 = v32;
          v39 = v38;
          sub_100359E10(v31, type metadata accessor for NotifyMeResponseResult);
          v40 = sub_1000136BC(v37, v39, &v49);

          *(v35 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v28, v29, "Failed to process notify request: %{public}s", v35, 0xCu);
          sub_100007BAC(v36);

          (*(v34 + 8))(v48, v47);
          v20 = v46;
        }

        else
        {
          v41 = *(v0 + 200);
          v43 = *(v0 + 168);
          v42 = *(v0 + 176);

          sub_100359E10(v31, type metadata accessor for NotifyMeResponseResult);
          (*(v42 + 8))(v41, v43);
          v20 = v32;
        }
      }

      else
      {
        v19 = *(v0 + 240);
        (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
        v20 = v19;
      }

      sub_100359E10(v20, type metadata accessor for NotifyMeResponseResult);
      v3 = *(v0 + 280) + 1;
      if (v3 == *(v0 + 272))
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    return daemon.getter();
  }

LABEL_3:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100351ABC()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  sub_100359E10(v1, type metadata accessor for NotifyMeResponseResult);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100351C1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[50] = a1;

  v4 = swift_task_alloc();
  v2[51] = v4;
  *v4 = v3;
  v4[1] = sub_100351DA8;
  v5 = v2[44];
  v6 = v2[43];
  v7 = v2[42];
  v8 = v2[41];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100351DA8(uint64_t a1)
{
  v3 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = sub_1003520E4;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100351ED0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100351ED0()
{
  v1 = v0[53];
  v2 = v0[20];
  v3 = v0[13];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359F10, v3);
  v4 = v0[52];
  if (v1)
  {
    v5 = v0[30];
    v6 = v0[25];
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];

    (*(v7 + 8))(v6, v8);
    sub_100359E10(v5, type metadata accessor for NotifyMeResponseResult);
    sub_100359E10(v9, type metadata accessor for NotifyWhenFoundRecord);

    v10 = v0[1];

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_100352264, v4, 0);
  }
}

uint64_t sub_1003520E4()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];

  (*(v4 + 8))(v2, v3);
  sub_100359E10(v1, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10035228C()
{
  v1 = v0[54];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100352384;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100352384()
{
  *(*v1 + 456) = v0;

  if (v0)
  {

    v2 = sub_100352C04;
  }

  else
  {

    v2 = sub_1003524CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003524CC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100352554, v2, 0);
}

uint64_t sub_100352554()
{
  v51 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  sub_1000D2A70(v1, v2, &qword_101698C00, &qword_10138B570);
  LODWORD(v2) = (*(v5 + 48))(v2, 1, v4);

  v7 = *(v0 + 88);
  if (v2 == 1)
  {
    sub_10000B3A8(*(v0 + 88), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v5 + 8))(v7, v4);
  }

  v8 = v6[2];
  swift_unknownObjectRetain();

  if (v8)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_10000B3A8(*(v0 + 96), &qword_101698C00, &qword_10138B570);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_10139D770;
  *(v12 + 24) = v6;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  if (v11 | v9)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v9;
    *(v0 + 40) = v11;
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 200);
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v17 = *(v0 + 160);
  swift_task_create();

  (*(v16 + 8))(v14, v15);
  sub_100359E10(v13, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v17, type metadata accessor for NotifyWhenFoundRecord);
  v18 = *(v0 + 280) + 1;
  if (v18 == *(v0 + 272))
  {
LABEL_10:

    v19 = *(v0 + 8);

    return v19();
  }

  while (1)
  {
    *(v0 + 280) = v18;
    v23 = *(v0 + 256);
    if (v18 >= *(v23 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v26 = *(v0 + 200);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    sub_100034E04(v23 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v18, v24, type metadata accessor for NotifyMeResponseResult);
    v29 = *(v28 + 16);
    *(v0 + 288) = v29;
    *(v0 + 296) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v26, v24, v27);
    if (*(v24 + *(v25 + 20)))
    {
      break;
    }

    v21 = *(v0 + 240);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v22 = v21;
LABEL_15:
    sub_100359E10(v22, type metadata accessor for NotifyMeResponseResult);
    v18 = *(v0 + 280) + 1;
    if (v18 == *(v0 + 272))
    {
      goto LABEL_10;
    }
  }

  if (*(v24 + *(v25 + 20)) == 2)
  {
    sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    if (v32)
    {
      v35 = *(v0 + 224);
      v36 = *(v0 + 176);
      v48 = *(v0 + 168);
      v49 = *(v0 + 200);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136446210;
      sub_100034E04(v33, v35, type metadata accessor for NotifyMeResponseResult);
      v39 = String.init<A>(describing:)();
      v47 = v34;
      v41 = v40;
      sub_100359E10(v33, type metadata accessor for NotifyMeResponseResult);
      v42 = sub_1000136BC(v39, v41, &v50);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to process notify request: %{public}s", v37, 0xCu);
      sub_100007BAC(v38);

      (*(v36 + 8))(v49, v48);
      v22 = v47;
    }

    else
    {
      v43 = *(v0 + 200);
      v45 = *(v0 + 168);
      v44 = *(v0 + 176);

      sub_100359E10(v33, type metadata accessor for NotifyMeResponseResult);
      (*(v44 + 8))(v43, v45);
      v22 = v34;
    }

    goto LABEL_15;
  }

  v46 = swift_task_alloc();
  *(v0 + 304) = v46;
  *v46 = v0;
  v46[1] = sub_100350E5C;

  return daemon.getter();
}

uint64_t sub_100352C20()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100352CA8, v2, 0);
}

uint64_t sub_100352CA8()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];

  (*(v4 + 8))(v2, v3);
  sub_100359E10(v1, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100352E80(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v2[32] = type metadata accessor for NotifyWhenFoundUserNotification(0);
  v2[33] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[34] = swift_task_alloc();
  v2[35] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[36] = swift_task_alloc();
  v3 = type metadata accessor for BeaconObservation(0);
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v2[42] = *(v5 + 64);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_100353090, v1, 0);
}

uint64_t sub_100353090()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[30];
  v5 = *(type metadata accessor for NotifyWhenFoundRecord(0) + 24);
  v6 = *(v3 + 16);
  v0[50] = v6;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_100353170;
  v8 = v0[49];

  return sub_10034F730(v8);
}

uint64_t sub_100353170(char a1)
{
  v4 = *v2;
  *(v4 + 424) = v1;

  v5 = *(v4 + 248);
  if (v1)
  {
    v6 = sub_100355C7C;
  }

  else
  {
    *(v4 + 684) = a1 & 1;
    v6 = sub_1003532B0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003532B0()
{
  v51 = v0;
  if (*(v0 + 684))
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 400);
    v2 = *(v0 + 392);
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AC78);
    v1(v3, v2, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 392);
    v10 = *(v0 + 344);
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    if (v8)
    {
      v48 = *(v0 + 392);
      v13 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_1000136BC(v14, v16, v50);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Already posted local notification for beacon %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v47);

      v17(v48, v12);
    }

    else
    {

      v43 = *(v11 + 8);
      v43(v10, v12);
      v43(v9, v12);
    }

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 312);
    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = qword_10177B2E8;
    (*(v0 + 400))(v19, *(v0 + 392), *(v0 + 320));
    static Date.trustedNow.getter(v19 + *(v21 + 20));
    *(v19 + *(v21 + 24)) = 28;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_100034E04(v19, v24 + v23, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v25 = swift_task_alloc();
    v25[2] = v22;
    v25[3] = v24;
    v25[4] = 0;
    v25[5] = 0;
    static Transaction.named<A>(_:with:)();

    sub_100359E10(v19, type metadata accessor for BeaconObservation);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 400);
    v27 = *(v0 + 384);
    v28 = *(v0 + 392);
    v29 = *(v0 + 320);
    v30 = type metadata accessor for Logger();
    *(v0 + 432) = sub_1000076D4(v30, qword_10177AC78);
    v26(v27, v28, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 384);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = *(v36 + 8);
      v41(v34, v35);
      v42 = sub_1000136BC(v38, v40, v50);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Showing local NWF notification for beacon %{private,mask.hash}s.", v37, 0x16u);
      sub_100007BAC(v49);
    }

    else
    {

      v41 = *(v36 + 8);
      v41(v34, v35);
    }

    *(v0 + 440) = v41;
    v46 = swift_task_alloc();
    *(v0 + 448) = v46;
    *v46 = v0;
    v46[1] = sub_100353940;

    return daemon.getter();
  }
}

uint64_t sub_100353940(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[57] = a1;

  v3 = swift_task_alloc();
  v2[58] = v3;
  v4 = type metadata accessor for Daemon();
  v2[59] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[60] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[61] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[62] = v7;
  *v3 = v9;
  v3[1] = sub_100353B3C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100353B3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = *(v4 + 248);
    v6 = sub_1003542A4;
  }

  else
  {

    *(v4 + 512) = a1;
    v6 = sub_100353C78;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100353C78()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 320);
  (*(v0 + 400))(v2, *(v0 + 392), v4);
  v5 = *(v3 + 80);
  *(v0 + 680) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 520) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 528) = v8;
  *(v0 + 536) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 544) = v9;
  v10 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v9 = v0;
  v9[1] = sub_100353E00;

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v7, v10);
}

uint64_t sub_100353E00()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100353F50, v1, 0);
}

uint64_t sub_100353F50()
{
  v24 = v0;
  if (*(v0 + 128))
  {
    sub_10000A748((v0 + 104), v0 + 64);
    v1 = swift_task_alloc();
    *(v0 + 552) = v1;
    *v1 = v0;
    v1[1] = sub_1003543C4;

    return daemon.getter();
  }

  else
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 392);
    v4 = *(v0 + 352);
    v5 = *(v0 + 320);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    v2(v4, v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 440);
    v10 = *(v0 + 392);
    v11 = *(v0 + 352);
    v12 = *(v0 + 320);
    if (v8)
    {
      v22 = *(v0 + 440);
      v13 = swift_slowAlloc();
      v21 = v10;
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v22(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "No beaconRecord for %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);

      v22(v21, v12);
    }

    else
    {

      v9(v11, v12);
      v9(v10, v12);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1003542A4()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[40];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003543C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[70] = a1;

  v4 = swift_task_alloc();
  v2[71] = v4;
  *v4 = v3;
  v4[1] = sub_100354550;
  v5 = v2[62];
  v6 = v2[61];
  v7 = v2[60];
  v8 = v2[59];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100354550(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = *(v4 + 248);
    v6 = sub_100355094;
  }

  else
  {

    *(v4 + 584) = a1;
    v6 = sub_10035468C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10035468C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 528);
  v3 = *(v0 + 376);
  v4 = *(v0 + 320);
  v5 = (*(v0 + 680) + 24) & ~*(v0 + 680);
  (*(v0 + 400))(v3, *(v0 + 392), v4);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 600) = v7;
  v8 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v7 = v0;
  v7[1] = sub_1003547F8;

  return unsafeBlocking<A>(context:_:)(v0 + 224, 0xD000000000000010, 0x800000010134A8C0, sub_100358E50, v6, v8);
}

uint64_t sub_1003547F8()
{
  v1 = *(*v0 + 584);

  return _swift_task_switch(sub_100354924, v1, 0);
}

uint64_t sub_100354924()
{
  v1 = *(v0 + 248);

  *(v0 + 608) = *(v0 + 224);

  return _swift_task_switch(sub_100354998, v1, 0);
}

uint64_t sub_100354998()
{
  v48 = v0;
  if (!*(v0 + 616))
  {
    (*(v0 + 400))(*(v0 + 360), *(v0 + 392), *(v0 + 320));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 440);
    v30 = *(v0 + 392);
    v31 = *(v0 + 360);
    v32 = *(v0 + 320);
    if (v28)
    {
      v46 = *(v0 + 440);
      v33 = swift_slowAlloc();
      v44 = v30;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v46(v31, v32);
      v38 = sub_1000136BC(v35, v37, &v47);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "Can't construct beacon name for beacon %{private,mask.hash}s.", v33, 0x16u);
      sub_100007BAC(v34);

      v46(v44, v32);
    }

    else
    {

      v29(v31, v32);
      v29(v30, v32);
    }

LABEL_12:
    sub_100007BAC((v0 + 64));

    v40 = *(v0 + 8);

    return v40();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_1000035D0((v0 + 64), v4);
  (*(v5 + 200))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 288);
    sub_10000B3A8(*(v0 + 272), &qword_1016980D0, &unk_10138F3B0);
    v7 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    v10 = *(v0 + 288);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    sub_10001F280(v0 + 64, v12 + v11[8]);
    sub_1000D2A70(v10, v12 + v11[9], &unk_1016AF8B0, &unk_1013A0700);
    *v12 = 24577;
    UUID.init()();
    v13 = (v12 + v11[7]);
    *v13 = v9;
    v13[1] = v8;
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 392);
    v45 = *(v0 + 440);
    v42 = *(v0 + 320);
    v14 = *(v0 + 288);
    v15 = *(v0 + 264);
    *(v0 + 168) = *(v0 + 256);
    *(v0 + 176) = &off_1016700E8;
    v16 = sub_1000280DC((v0 + 144));
    sub_100034E04(v15, v16, type metadata accessor for NotifyWhenFoundUserNotification);
    v17 = objc_allocWithZone(UNUserNotificationCenter);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithBundleIdentifier:v18];

    v20 = sub_10111979C(v16);
    UUID.uuidString.getter();
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();

    v23 = [objc_opt_self() requestWithIdentifier:v22 content:v21 trigger:0 destinations:7];

    sub_10001F280(v0 + 144, v0 + 184);
    v24 = swift_allocObject();
    sub_10000A748((v0 + 184), v24 + 16);
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    *(v0 + 48) = sub_100358EC4;
    *(v0 + 56) = v24;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10077732C;
    *(v0 + 40) = &unk_101618D58;
    v25 = _Block_copy((v0 + 16));

    [v19 addNotificationRequest:v23 withCompletionHandler:v25];

    _Block_release(v25);
    sub_100007BAC((v0 + 144));
    sub_100359E10(v15, type metadata accessor for NotifyWhenFoundUserNotification);
    sub_10000B3A8(v14, &unk_1016AF8B0, &unk_1013A0700);
    v45(v43, v42);
    goto LABEL_12;
  }

  (*(v0 + 528))(*(v0 + 368), *(v0 + 272), *(v0 + 320));
  v39 = swift_task_alloc();
  *(v0 + 624) = v39;
  *v39 = v0;
  v39[1] = sub_1003551BC;

  return daemon.getter();
}

uint64_t sub_100355094()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[40];

  v1(v2, v3);
  sub_100007BAC(v0 + 8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003551BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[79] = a1;

  v4 = swift_task_alloc();
  v2[80] = v4;
  *v4 = v3;
  v4[1] = sub_100355348;
  v5 = v2[62];
  v6 = v2[61];
  v7 = v2[60];
  v8 = v2[59];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100355348(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v5 = *(v4 + 248);
    v6 = sub_100355B30;
  }

  else
  {

    *(v4 + 656) = a1;
    v6 = sub_100355484;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100355484()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 528);
  v3 = *(v0 + 376);
  v4 = *(v0 + 320);
  v5 = (*(v0 + 680) + 24) & ~*(v0 + 680);
  (*(v0 + 400))(v3, *(v0 + 368), v4);
  v6 = swift_allocObject();
  *(v0 + 664) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 672) = v7;
  *v7 = v0;
  v7[1] = sub_1003555D4;
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100358ED0, v6, v9);
}

uint64_t sub_1003555D4()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100355724, v1, 0);
}

uint64_t sub_100355724()
{
  (v0[55])(v0[46], v0[40]);
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  sub_10001F280((v0 + 8), v5 + v4[8]);
  sub_1000D2A70(v3, v5 + v4[9], &unk_1016AF8B0, &unk_1013A0700);
  *v5 = 24577;
  UUID.init()();
  v6 = (v5 + v4[7]);
  *v6 = v2;
  v6[1] = v1;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v22 = v0[49];
  v23 = v0[55];
  v21 = v0[40];
  v7 = v0[36];
  v8 = v0[33];
  v0[21] = v0[32];
  v0[22] = &off_1016700E8;
  v9 = sub_1000280DC(v0 + 18);
  sub_100034E04(v8, v9, type metadata accessor for NotifyWhenFoundUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_10111979C(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  sub_10001F280((v0 + 18), (v0 + 23));
  v17 = swift_allocObject();
  sub_10000A748((v0 + 23), v17 + 16);
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  v0[6] = sub_100358EC4;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10077732C;
  v0[5] = &unk_101618D58;
  v18 = _Block_copy(v0 + 2);

  [v12 addNotificationRequest:v16 withCompletionHandler:v18];

  _Block_release(v18);
  sub_100007BAC(v0 + 18);
  sub_100359E10(v8, type metadata accessor for NotifyWhenFoundUserNotification);
  sub_10000B3A8(v7, &unk_1016AF8B0, &unk_1013A0700);
  v23(v22, v21);
  sub_100007BAC(v0 + 8);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100355B30()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[40];

  v1(v3, v4);
  v1(v2, v4);
  sub_100007BAC(v0 + 8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100355C7C()
{
  (*(v0[41] + 8))(v0[49], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100355D88()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100355ED8, v1, 0);
}

uint64_t sub_100355ED8()
{
  v51 = v0;
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = v0[34];
    v3 = v0[17];
    v4 = v0[13];
    v5 = v0[10];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v50);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No NWF record for beacon %{private,mask.hash}s. No need to publish", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

LABEL_17:

    v47 = v0[1];

    return v47();
  }

  v19 = v0[34];
  v21 = v0[20];
  v20 = v0[21];
  v22 = v0[13];
  v23 = v0[14];
  v24 = v0[10];
  sub_100359DA8(v1, v0[26], type metadata accessor for NotifyWhenFoundRecord);
  v19(v21, v24, v22);
  swift_beginAccess();
  v25 = sub_100DE8BCC(v20, v21);
  v26 = *(v23 + 8);
  v0[38] = v26;
  v0[39] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v22);
  swift_endAccess();
  if ((v25 & 1) == 0)
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v30 = v0[34];
    v31 = v0[18];
    v32 = v0[13];
    v33 = v0[10];
    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177AC78);
    v30(v31, v33, v32);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[26];
    v39 = v0[18];
    v40 = v0[13];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = v38;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v26(v39, v40);
      v45 = sub_1000136BC(v42, v44, &v50);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "Found pending force publish for beacon %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v49);

      v46 = v48;
    }

    else
    {

      v26(v39, v40);
      v46 = v38;
    }

    sub_100359E10(v46, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_17;
  }

  v27 = swift_task_alloc();
  v0[40] = v27;
  *v27 = v0;
  v27[1] = sub_1003564D8;
  v28 = v0[26];

  return sub_100352E80(v28);
}

uint64_t sub_1003564D8()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = v2[11];

    return _swift_task_switch(sub_1003582B4, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[42] = v4;
    *v4 = v2;
    v4[1] = sub_100356644;

    return daemon.getter();
  }
}

uint64_t sub_100356644(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 344) = a1;

  v5 = swift_task_alloc();
  *(v3 + 352) = v5;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v7 = sub_10003A260(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  *v5 = v4;
  v5[1] = sub_1003567FC;
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);

  return ActorServiceDaemon.getService<A>()(v9, MyNetworkPublisherService, v8, v7);
}

uint64_t sub_1003567FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v5 = v3[11];

    return _swift_task_switch(sub_100356B14, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[47] = v6;
    *v6 = v4;
    v6[1] = sub_100356988;

    return sub_1008EDF50(0);
  }
}

uint64_t sub_100356988(void *a1)
{
  v4 = *v2;
  v4[48] = v1;

  if (v1)
  {
    v5 = v4[11];

    return _swift_task_switch(sub_1003583A8, v5, 0);
  }

  else
  {

    v4[49] = 0;
    v6 = swift_task_alloc();
    v4[50] = v6;
    *v6 = v4;
    v6[1] = sub_100356CE0;

    return daemon.getter();
  }
}

uint64_t sub_100356B14()
{
  v1 = v0[46];

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Force publish FMN failed. Error - %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[49] = v1;
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_100356CE0;

  return daemon.getter();
}

uint64_t sub_100356CE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 408) = a1;

  v5 = swift_task_alloc();
  *(v3 + 416) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v7 = sub_10003A260(&qword_101698D50, 255, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v5 = v4;
  v5[1] = sub_100356E98;
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100356E98(uint64_t a1)
{
  v4 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = sub_100357210;
  }

  else
  {

    v6 = sub_100356FD0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100356FD0()
{
  v0[8] = 0xD000000000000013;
  v0[9] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1003570E0;
  v2 = v0[53];

  return (v4)(v0 + 8, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_1003570E0()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 424);

    v4 = sub_100357D2C;
  }

  else
  {
    v3 = *(v2 + 88);

    v4 = sub_100357734;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100357210()
{
  v37 = v0;

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Force publish owned device failed. Error - %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AC78);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Force publish failed, removing pending forece publish.", v9, 2u);
  }

  v10 = *(v0 + 456);
  v11 = *(v0 + 272);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v15 = (v10 + 32) & ~v10;
  v16 = swift_allocObject();
  v11(v16 + v15, v14, v13);
  v11(v12, v16 + v15, v13);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 304);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  if (v19)
  {
    v34 = *(v0 + 304);
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v34(v21, v22);
    v27 = sub_1000136BC(v24, v26, &v36);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Removing beacon %{private,mask.hash}s from pending force publish.", v23, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {

    v20(v21, v22);
  }

  v28 = *(v0 + 304);
  v29 = *(v0 + 208);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  swift_beginAccess();
  sub_1010F6584(v16 + v15, v31);
  sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  sub_100359E10(v29, type metadata accessor for NotifyWhenFoundRecord);
  swift_setDeallocating();
  v28(v16 + v15, v30);
  swift_deallocClassInstance();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100357734(uint64_t a1)
{
  v53 = v1;
  if (*(v1 + 392))
  {
    swift_willThrow();
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177AC78);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Force publish failed, removing pending forece publish.", v5, 2u);
    }

    v6 = *(v1 + 456);
    v7 = *(v1 + 272);
    v8 = *(v1 + 128);
    v9 = *(v1 + 104);
    v10 = *(v1 + 80);

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v11 = (v6 + 32) & ~v6;
    v12 = swift_allocObject();
    v7(v12 + v11, v10, v9);
    v7(v8, v12 + v11, v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 304);
    v17 = *(v1 + 128);
    v18 = *(v1 + 104);
    if (v15)
    {
      v49 = *(v1 + 304);
      v19 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52[0] = v50;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v49(v17, v18);
      v23 = sub_1000136BC(v20, v22, v52);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Removing beacon %{private,mask.hash}s from pending force publish.", v19, 0x16u);
      sub_100007BAC(v50);
    }

    else
    {

      v16(v17, v18);
    }

    v43 = *(v1 + 304);
    v44 = *(v1 + 208);
    v46 = *(v1 + 96);
    v45 = *(v1 + 104);
    swift_beginAccess();
    sub_1010F6584(v12 + v11, v46);
    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();
    sub_100359E10(v44, type metadata accessor for NotifyWhenFoundRecord);
    swift_setDeallocating();
    v43(v12 + v11, v45);
    swift_deallocClassInstance();
  }

  else
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v24 = *(v1 + 272);
    v25 = *(v1 + 152);
    v26 = *(v1 + 104);
    v27 = *(v1 + 80);
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AC78);
    v24(v25, v27, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v1 + 304);
    v33 = *(v1 + 208);
    v34 = *(v1 + 152);
    v35 = *(v1 + 104);
    if (v31)
    {
      v51 = *(v1 + 208);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v32(v34, v35);
      v41 = sub_1000136BC(v38, v40, v52);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "Force publish succeeded for beacon %{private,mask.hash}s.", v36, 0x16u);
      sub_100007BAC(v37);

      v42 = v51;
    }

    else
    {

      v32(v34, v35);
      v42 = v33;
    }

    sub_100359E10(v42, type metadata accessor for NotifyWhenFoundRecord);
  }

  v47 = *(v1 + 8);

  return v47();
}

uint64_t sub_100357D2C()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_100357D98, v1, 0);
}

uint64_t sub_100357D98()
{
  v37 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Force publish owned device failed. Error - %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AC78);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Force publish failed, removing pending forece publish.", v9, 2u);
  }

  v10 = *(v0 + 456);
  v11 = *(v0 + 272);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v15 = (v10 + 32) & ~v10;
  v16 = swift_allocObject();
  v11(v16 + v15, v14, v13);
  v11(v12, v16 + v15, v13);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 304);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  if (v19)
  {
    v34 = *(v0 + 304);
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v34(v21, v22);
    v27 = sub_1000136BC(v24, v26, &v36);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Removing beacon %{private,mask.hash}s from pending force publish.", v23, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {

    v20(v21, v22);
  }

  v28 = *(v0 + 304);
  v29 = *(v0 + 208);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  swift_beginAccess();
  sub_1010F6584(v16 + v15, v31);
  sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  sub_100359E10(v29, type metadata accessor for NotifyWhenFoundRecord);
  swift_setDeallocating();
  v28(v16 + v15, v30);
  swift_deallocClassInstance();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1003582B4()
{
  sub_100359E10(*(v0 + 208), type metadata accessor for NotifyWhenFoundRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003583A8()
{
  v1 = v0[48];

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Force publish FMN failed. Error - %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[49] = v1;
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_100356CE0;

  return daemon.getter();
}

uint64_t sub_100358574()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1003585D4()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000016;
  v0[15] = 0x800000010139D560;
  type metadata accessor for DeviceIdentityUtility(0);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 10;
  v0[16] = v1;
  v0[17] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[18] = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_1003586C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(found, a2);
}

uint64_t sub_100358770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, found, a4);
}

uint64_t sub_100358834(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(found, a2);
}

uint64_t sub_1003588DC()
{
  *(v1 + 16) = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100358978, v0, 0);
}

uint64_t sub_100358978()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v5 = sub_10003A260(&qword_10169E320, v4, type metadata accessor for NotifyWhenFoundManager, &unk_10139D6E0);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_10139D718, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100358AB8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(found, a2);
}

uint64_t sub_100358B60()
{
  type metadata accessor for NotifyWhenFoundManager();
  sub_10003A260(&unk_1016B10A0, v0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100358C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100329BA8(a1, v4, v5, v6);
}

uint64_t sub_100358D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100339C10(a1, v4, v5, v6);
}

uint64_t sub_100358DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BA6C8;

  return sub_100044C20();
}

uint64_t sub_100358E50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73E54(v4, a1);
}

unint64_t sub_100358EE8()
{
  result = qword_10169E330;
  if (!qword_10169E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E330);
  }

  return result;
}

unint64_t sub_100358F3C()
{
  result = qword_10169E338;
  if (!qword_10169E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E338);
  }

  return result;
}

unint64_t sub_100358FC0()
{
  result = qword_10169E340;
  if (!qword_10169E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E340);
  }

  return result;
}

uint64_t sub_100359014@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100E74614(v4, v5, a1);
}

uint64_t sub_100359088(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

uint64_t sub_1003590D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100338E14(a1, a2, v7, v6);
}

uint64_t sub_10035918C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100339390(a1, a2, v2);
}

uint64_t sub_100359234(uint64_t a1)
{
  v1[8] = a1;
  v3 = type metadata accessor for UUID();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v1[11] = *(v4 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10035930C, a1, 0);
}

uint64_t sub_10035930C()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = sub_1000BC4D4(&qword_10169E390, &qword_10139D830);
  *v1 = v0;
  v1[1] = sub_1003593F8;
  v3 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100359D74, v3, v2);
}

uint64_t sub_1003593F8()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100359510, v1, 0);
}

uint64_t sub_100359534()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (v2)
  {
    v3 = v0[10];
    v0[17] = 0;
    if (*(v1 + 16))
    {
      v4 = v0[13];
      v6 = v0[8];
      v5 = v0[9];
      found = type metadata accessor for NotifyWhenFoundRecord(0);
      v8 = (*(*(found - 8) + 80) + 32) & ~*(*(found - 8) + 80);
      v9 = v1 + *(found + 24);
      v10 = *(v3 + 16);
      v0[18] = v10;
      v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v4, v9 + v8, v5);

      return _swift_task_switch(sub_100359744, v6, 0);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_101694688 != -1)
  {
LABEL_13:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AC78);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No Notify when found activity required.", v14, 2u);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_100359744()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  (*(v0 + 144))(v1, *(v0 + 104), v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  *(v6 + 16) = v4;
  (*(v2 + 32))(v6 + v5, v1, v3);

  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1003598A4;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v6, v8);
}

uint64_t sub_1003598A4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100359A18, 0, 0);
}

uint64_t sub_100359A18()
{
  v1 = v0[5];
  if (v1)
  {

    sub_10000B3A8((v0 + 2), &qword_101696920, &unk_10138B200);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177AC78);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = "Notify when found activity updating criteria required.";
LABEL_11:
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, v5, v12, 2u);

LABEL_12:

    v13 = v0[1];

    return v13(v1 != 0);
  }

  v6 = v0[16];
  v7 = v0[17] + 1;
  v8 = sub_10000B3A8((v0 + 2), &qword_101696920, &unk_10138B200);
  if (v7 == v6)
  {

    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177AC78);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = "No Notify when found activity required.";
    goto LABEL_11;
  }

  v0[17] = v7;
  v15 = v0[15];
  if (v7 >= *(v15 + 16))
  {
    __break(1u);
  }

  else
  {
    v16 = v0[13];
    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[8];
    found = type metadata accessor for NotifyWhenFoundRecord(0);
    v21 = v15 + ((*(*(found - 8) + 80) + 32) & ~*(*(found - 8) + 80)) + *(*(found - 8) + 72) * v7;
    v22 = *(found + 24);
    v23 = *(v18 + 16);
    v0[18] = v23;
    v0[19] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v21 + v22, v17);
    v8 = sub_100359744;
    v9 = v19;
    v10 = 0;
  }

  return _swift_task_switch(v8, v9, v10);
}

unint64_t sub_100359D10()
{
  result = qword_10169E388;
  if (!qword_10169E388)
  {
    sub_1000BC580(&qword_10169E380, &unk_1013B8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E388);
  }

  return result;
}

uint64_t sub_100359DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100359E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100359EB0()
{
  result = qword_10169E3A8;
  if (!qword_10169E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E3A8);
  }

  return result;
}

uint64_t sub_100359F48(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return _swift_task_switch(sub_100359F6C, 0, 0);
}

uint64_t sub_100359F6C()
{
  v1 = *(v0 + 80);
  v2 = [objc_opt_self() sharedInstance];
  [v2 isInternalBuild];

  sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
  v3 = *(type metadata accessor for AccessoryMetadata(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  sub_10038B278(v1, v5 + v4, type metadata accessor for AccessoryMetadata);
  if (qword_101694698 != -1)
  {
    swift_once();
  }

  v6 = qword_10177ACA8;

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10035A14C;
  v8 = *(v0 + 128);

  return sub_100ED2090(v5, 0, v8, v6);
}

uint64_t sub_10035A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[12] = a1;

  return _swift_task_switch(sub_10035A254, 0, 0);
}

uint64_t sub_10035A254()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 48) = v1;
    *(v0 + 56) = *(v0 + 32);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v0 + 48;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    v5 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    *v4 = v0;
    v4[1] = sub_10035A4DC;
    v6 = *(v0 + 72);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000023, 0x8000000101351660, sub_10038B270, v3, v5);
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "retrieveProductInfo: invalid parameters", v10, 2u);
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10035A4DC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10035A66C;
  }

  else
  {

    v2 = sub_10035A5F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035A5F8()
{
  v1 = v0[7];
  v2 = v0[8];

  sub_100016590(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10035A66C()
{

  v1 = v0[7];
  v2 = v0[8];

  sub_100016590(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10035A6E8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC90);
  sub_1000076D4(v0, qword_10177AC90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10035A760()
{
  type metadata accessor for DeviceIdentityUtility(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v2 = type metadata accessor for Date();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 8;
  qword_10177ACA8 = v0;
  return result;
}

unint64_t sub_10035A818()
{
  v1 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryMetadataManager.Error(0);
  __chkstk_darwin(v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10038B278(v0, v10, type metadata accessor for AccessoryMetadataManager.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        return 0x70707553746F6E2ELL;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        return 0x6176616E5574622ELL;
      }

      else
      {
        return 0x726F43617461642ELL;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      return 0x74756F656D69742ELL;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x676E697373696D2ELL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v21 = 0xD000000000000028;
      v22 = 0x8000000101351B10;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v21;
      (*(v5 + 8))(v7, v4);
      return v14;
    }

    else
    {
      sub_10038BEAC(v10, v3, type metadata accessor for AccessoryMetadata);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v21 = 0xD00000000000001CLL;
      v22 = 0x8000000101351AD0;
      v18._countAndFlagsBits = sub_100230E34();
      String.append(_:)(v18);

      v19 = v21;
      sub_10038B428(v3, type metadata accessor for AccessoryMetadata);
      return v19;
    }
  }

  else
  {
    v16 = *v10;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v21 = 0xD000000000000013;
    v22 = 0x800000010134D700;
    v20[1] = v16;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    return v21;
  }
}

uint64_t sub_10035AD04()
{

  sub_10038B428(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, type metadata accessor for AccessoryMetadataManager.MetadataInfo);

  sub_100006654(*(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer), *(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8));
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise), *(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8));

  return swift_deallocClassInstance();
}

void *sub_10035ADBC(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10038B3E0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[5] = &_swiftEmptySetSingleton;
  v2[6] = _swiftEmptyDictionarySingleton;
  v9 = v13;
  v2[2] = v12;
  v2[3] = v9;
  return v2;
}

uint64_t sub_10035B054()
{
  sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

void sub_10035B0F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v42 = a3;
  v46 = a2;
  v5 = type metadata accessor for MACAddress();
  *&v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169E8D8, &qword_10139DCA0);
  swift_allocObject();
  v43 = PassthroughSubject.init()();
  v13 = swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {

    sub_1007723C0(v46);
    v15 = v14;

    if (v15)
    {
      v16 = v46;
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177AC90);
      v18 = v41;
      (*(v41 + 16))(v7, v16, v5);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v47[0] = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v18;
        v26 = v25;
        (*(v24 + 8))(v7, v5);
        v27 = sub_1000136BC(v23, v26, v47);

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Existing metadata session for %{private,mask.hash}s in progress!", v21, 0x16u);
        sub_100007BAC(v22);
      }

      else
      {

        (*(v18 + 8))(v7, v5);
      }

      goto LABEL_11;
    }
  }

  __chkstk_darwin(v13);
  *(&v41 - 2) = v46;
  *(&v41 - 1) = v28;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v29 = v47[0];
  if (!v47[0])
  {
LABEL_11:
    v47[0] = v43;
    sub_1000041A4(&qword_10169E8E0, &qword_10169E8D8, &qword_10139DCA0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v40 = Publisher.eraseToAnyPublisher()();

    goto LABEL_12;
  }

  v30 = [*(v47[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for AccessoryMetadataManager.MetadataCoordinator(0);
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue) = _swiftEmptyArrayStorage;
  v41 = xmmword_10138BBF0;
  *(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer) = xmmword_10138BBF0;
  v32 = (v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
  *v32 = 0;
  v32[1] = 0;
  v44 = v12;
  v33 = v43;
  *(v31 + 16) = v43;
  v34 = v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
  (*(v9 + 32))(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, v11, v8);
  v35 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  *(v34 + v35[5]) = v41;
  v36 = (v34 + v35[6]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v34 + v35[7];
  *v37 = 0;
  *(v37 + 4) = 1;
  *(v34 + v35[8]) = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_100FFC714(v31, v46, isUniquelyReferenced_nonNull_native);
  *(a1 + 48) = v48;
  swift_endAccess();
  v39 = type metadata accessor for Transaction();
  __chkstk_darwin(v39);
  *(&v41 - 4) = v29;
  *(&v41 - 3) = a1;
  *(&v41 - 2) = v42;
  static Transaction.named<A>(_:with:)();
  v47[0] = v33;
  sub_1000041A4(&qword_10169E8E0, &qword_10169E8D8, &qword_10139DCA0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v40 = Publisher.eraseToAnyPublisher()();

LABEL_12:
  *v45 = v40;
}

uint64_t sub_10035B7E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v8 = v60 - v7;
  v64 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v70 = *(v64 - 8);
  __chkstk_darwin(v64);
  v69 = v60 - v9;
  v74 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = v60 - v10;
  v76 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = v60 - v11;
  v82 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = v60 - v12;
  v85 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = v60 - v13;
  v87 = sub_1000BC4D4(&qword_10169E870, &qword_10139DC58);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v80 = v60 - v14;
  v88 = sub_1000BC4D4(&qword_10169E878, &qword_10139DC60);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = v60 - v15;
  v16 = sub_1000BC4D4(&qword_10169E880, &qword_10139DC68);
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin(v16);
  v89 = v60 - v17;
  v18 = sub_1000BC4D4(&qword_10169E888, &unk_10139DC70);
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v92 = v60 - v19;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AC90);
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "readMetadata peripheral: %@", v24, 0xCu);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
  }

  v68 = Transaction.subscriptionCleaner.getter();
  v65 = a3;
  v27 = sub_10131F050(v21, 0);
  v67 = a1;
  v100 = v27;
  v99 = *(a3 + 32);
  v28 = v99;
  v62 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = *(v62 - 8);
  v63 = *(v29 + 56);
  v98 = v29 + 56;
  v63(v8, 1, 1, v62);
  v61 = v28;
  v30 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v66 = v21;
  v96 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v31 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v95 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v32 = v69;
  v60[2] = v30;
  v60[1] = v31;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v97 = type metadata accessor for Peripheral(0);
  v60[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v71;
  v34 = v64;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v70[1](v32, v34);
  v35 = v61;
  v100 = v61;
  v36 = v62;
  v37 = v63;
  v63(v8, 1, 1, v62);
  v70 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v38 = v73;
  v39 = v74;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

  (*(v72 + 8))(v33, v39);
  static Subscribers.Demand.unlimited.getter();
  v40 = v60[0];
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, v60[0]);
  v41 = v77;
  v42 = v76;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v75 + 8))(v38, v42);
  v100 = v35;
  v37(v8, 1, 1, v36);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v70);
  v43 = v78;
  v44 = v82;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

  (*(v79 + 8))(v41, v44);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, v40);
  v45 = v80;
  v46 = v85;
  Publisher.timeout(_:queue:customError:)();
  (*(v83 + 8))(v43, v46);
  sub_1000041A4(&qword_10169E8C0, &qword_10169E870, &qword_10139DC58, v40);
  v47 = v81;
  v48 = v87;
  Publisher.compactMap<A>(_:)();
  (*(v84 + 8))(v45, v48);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v49 = v88;
  v50 = v89;
  Publishers.CompactMap.map<A>(_:)();
  (*(v86 + 8))(v47, v49);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_10169E8C8, &qword_10169E880, &qword_10139DC68, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v51 = v91;
  v52 = v92;
  Publisher.catch<A>(_:)();
  (*(v90 + 8))(v50, v51);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = v67;
  v54[3] = v53;
  v55 = v66;
  v56 = v68;
  v54[4] = v66;
  v54[5] = v56;
  sub_1000041A4(&qword_10169E8D0, &qword_10169E888, &unk_10139DC70, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v57 = v55;

  swift_unknownObjectRetain();
  v58 = v94;
  Publisher<>.sink(receiveValue:)();

  (*(v93 + 8))(v52, v58);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10035C644@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *a1;
  v29[3] = &type metadata for BAServiceIdentifier;
  v29[4] = &off_10162CAF0;
  LOBYTE(v29[0]) = 1;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v28 = v29;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v27, v14);

  sub_100007BAC(v29);
  if (v15)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for BACharacteristicIdentifier.FindMy;
    *(v16 + 64) = &off_10162CAD0;
    *(v16 + 32) = 2;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v29[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AC90);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v26 = v9;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No FindMy service", v23, 2u);
      v9 = v26;
    }

    v29[0] = v12;
    type metadata accessor for Peripheral(0);
    v24 = v12;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v18;
  return result;
}

uint64_t sub_10035CAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000D2A70(a1, &v37, &unk_1016A6150, &unk_10139DB30);
  if ((v39 & 1) == 0)
  {
    v16 = v37;
    *&v36[8] = &type metadata for BAServiceIdentifier;
    *&v36[16] = &off_10162CAF0;
    LOBYTE(v35) = 1;
    v17 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v18 = swift_beginAccess();
    v19 = *&v16[v17];
    __chkstk_darwin(v18);
    v32 = &v35;

    v20 = sub_1012BBDB4(sub_1001DB3F8, v31, v19);

    sub_100007BAC(&v35);
    if (v20)
    {
      *&v36[8] = &type metadata for BACharacteristicIdentifier.FindMy;
      *&v36[16] = &off_10162CAD0;
      LOBYTE(v35) = 2;
      v21 = swift_beginAccess();
      v22 = *(v20 + 40);
      __chkstk_darwin(v21);
      v32 = &v35;

      v23 = sub_1012BBE10(sub_10038C458, v31, v22);

      sub_100007BAC(&v35);
      if (v23)
      {
        sub_100360CFC(v16, v23);
        sub_10036011C(v16, v23);
      }

      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177AC90);
      v25 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v25, v29, "Missing Paired Owner Characteristic!", v30, 2u);
      }
    }

    else
    {
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177AC90);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No FindMy service", v27, 2u);
      }
    }
  }

  v35 = v37;
  *v36 = *v38;
  *&v36[9] = *&v38[9];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AC90);
  sub_100101AA8(&v35, v34);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136446210;
    v12 = sub_1013181BC();
    v14 = v13;
    sub_100101B04(v34);
    v15 = sub_1000136BC(v12, v14, v33);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "readMetadata failed due to %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100101B04(v34);
  }

  sub_10035FC9C(a4);

  return sub_100101B04(&v35);
}

uint64_t sub_10035CFD8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_1000BC4D4(&qword_10169E840, &unk_101406170);
  swift_allocObject();
  v12[1] = Future.init(_:)();
  sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
  v10 = Publisher.eraseToAnyPublisher()();

  return v10;
}

uint64_t sub_10035D1F0(void (*a1)(char *), void (*a2)(char *), uint64_t a3, void (*a4)(void, void, void, void))
{
  v134 = a4;
  v135 = a2;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v5 - 8);
  v132 = v98 - v6;
  v109 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v108 = *(v109 - 1);
  __chkstk_darwin(v109);
  v107 = v98 - v7;
  v113 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = v98 - v8;
  v115 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = v98 - v9;
  v121 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v118 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = v98 - v10;
  v124 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v117 = v98 - v11;
  v126 = sub_1000BC4D4(&qword_10169E870, &qword_10139DC58);
  v123 = *(v126 - 8);
  __chkstk_darwin(v126);
  v119 = v98 - v12;
  v127 = sub_1000BC4D4(&qword_10169E878, &qword_10139DC60);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v120 = v98 - v13;
  v14 = sub_1000BC4D4(&qword_10169E880, &qword_10139DC68);
  v129 = *(v14 - 8);
  v130 = v14;
  __chkstk_darwin(v14);
  v128 = v98 - v15;
  v16 = sub_1000BC4D4(&qword_10169E888, &unk_10139DC70);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v131 = v98 - v18;
  v19 = type metadata accessor for MACAddress();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v105 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v98 - v23;
  v25 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v25);
  v27 = v98 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a1(v27);
    return sub_10000B3A8(v27, &qword_10169E890, &unk_1013BB590);
  }

  v104 = v25;
  v101 = v17;
  v102 = v16;
  v133 = a1;
  v29 = __chkstk_darwin(Strong);
  v98[-2] = v134;
  v98[-1] = v30;
  v31 = v29;

  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v32 = aBlock[0];
  v106 = v31;
  if (!aBlock[0])
  {
    v87 = v134;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_1000076D4(v88, qword_10177AC90);
    v89 = v105;
    (*(v20 + 16))(v105, v87, v19);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      aBlock[0] = v93;
      *v92 = 141558275;
      *(v92 + 4) = 1752392040;
      *(v92 + 12) = 2081;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      (*(v20 + 8))(v89, v19);
      v97 = sub_1000136BC(v94, v96, aBlock);

      *(v92 + 14) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unable to retrieve peripheral for %{private,mask.hash}s", v92, 0x16u);
      sub_100007BAC(v93);
    }

    else
    {

      (*(v20 + 8))(v89, v19);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v133(v27);

    return sub_10000B3A8(v27, &qword_10169E890, &unk_1013BB590);
  }

  v33 = *(v31 + 32);
  (*(v20 + 16))(v24, v134, v19);
  v34 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  (*(v20 + 32))(v37 + v34, v24, v19);
  v38 = (v37 + v35);
  v39 = v135;
  *v38 = v133;
  v38[1] = v39;
  *(v37 + v36) = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10038C160;
  *(v40 + 24) = v37;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101619680;
  v41 = _Block_copy(aBlock);

  v42 = v32;

  dispatch_sync(v33, v41);
  _Block_release(v41);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (qword_101694690 != -1)
  {
LABEL_17:
    swift_once();
  }

  v100 = v37;
  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177AC90);
  v44 = v42;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = v44;

  if (os_log_type_enabled(v45, v46))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v47;
    *v49 = v32;
    v50 = v47;
    _os_log_impl(&_mh_execute_header, v45, v46, "readMetadataAirTag peripheral: %@", v48, 0xCu);
    sub_10000B3A8(v49, &qword_10169BB30, &unk_10138B3C0);
  }

  v99 = v47;
  v51 = sub_10131F050(v47, 0);

  v136 = *(v31 + 32);
  v52 = v136;
  aBlock[0] = v51;
  v103 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v53 = *(v103 - 8);
  v134 = *(v53 + 56);
  v98[4] = v53 + 56;
  v54 = v132;
  v134(v132, 1, 1, v103);
  v55 = v52;
  v56 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v98[3] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v57 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v104 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v58 = v107;
  v98[2] = v56;
  v98[1] = v57;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v54, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v105 = type metadata accessor for Peripheral(0);
  v98[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v59 = v110;
  v60 = v109;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v108 + 8))(v58, v60);
  v61 = v106;
  aBlock[0] = *(v106 + 32);
  v62 = aBlock[0];
  v134(v54, 1, 1, v103);
  v109 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v63 = v62;
  v64 = v111;
  v65 = v113;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v54, &unk_1016B0FE0, &unk_101391980);

  (*(v112 + 8))(v59, v65);
  static Subscribers.Demand.unlimited.getter();
  v66 = v98[0];
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, v98[0]);
  v67 = v116;
  v68 = v115;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v114 + 8))(v64, v68);
  aBlock[0] = *(v61 + 32);
  v69 = aBlock[0];
  v134(v54, 1, 1, v103);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v109);
  v70 = v69;
  v71 = v117;
  v72 = v121;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v54, &unk_1016B0FE0, &unk_101391980);

  (*(v118 + 8))(v67, v72);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, v66);
  v73 = v119;
  v74 = v124;
  Publisher.timeout(_:queue:customError:)();
  (*(v122 + 8))(v71, v74);
  sub_1000041A4(&qword_10169E8C0, &qword_10169E870, &qword_10139DC58, v66);
  v75 = v120;
  v76 = v126;
  Publisher.compactMap<A>(_:)();
  (*(v123 + 8))(v73, v76);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v77 = v127;
  v78 = v128;
  Publishers.CompactMap.map<A>(_:)();
  (*(v125 + 8))(v75, v77);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_10169E8C8, &qword_10169E880, &qword_10139DC68, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v79 = v130;
  v80 = v131;
  Publisher.catch<A>(_:)();
  (*(v129 + 8))(v78, v79);
  v81 = swift_allocObject();
  v82 = v99;
  v81[2] = v61;
  v81[3] = v82;
  v83 = v135;
  v81[4] = v133;
  v81[5] = v83;
  sub_1000041A4(&qword_10169E8D0, &qword_10169E888, &unk_10139DC70, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v84 = v82;
  v85 = v102;
  Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v80, v85);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10035E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  *&v43 = a3;
  v45 = a2;
  v41 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v41);
  v8 = &v39 - v7;
  v9 = type metadata accessor for MACAddress();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_10169E8D8, &qword_10139DCA0);
  swift_allocObject();
  v44 = PassthroughSubject.init()();
  swift_beginAccess();
  if (*(*(a1 + 48) + 16) && (, sub_1007723C0(v45), v17 = v16, , (v17 & 1) != 0))
  {
    v18 = v45;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177AC90);
    v20 = v40;
    (*(v40 + 16))(v11, v18, v9);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v20;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 8))(v11, v9);
      v29 = sub_1000136BC(v26, v28, v47);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Existing metadata session for %{private,mask.hash}s in progress!", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {

      (*(v20 + 8))(v11, v9);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (v43)(v8);

    return sub_10000B3A8(v8, &qword_10169E890, &unk_1013BB590);
  }

  else
  {
    v30 = [*(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for AccessoryMetadataManager.MetadataCoordinator(0);
    v31 = swift_allocObject();
    *(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue) = _swiftEmptyArrayStorage;
    v43 = xmmword_10138BBF0;
    *(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer) = xmmword_10138BBF0;
    v32 = (v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + 16) = v44;
    v33 = v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
    (*(v13 + 32))(v31 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, v15, v12);
    v34 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
    *(v33 + v34[5]) = v43;
    v35 = (v33 + v34[6]);
    *v35 = 0;
    v35[1] = 0;
    v36 = v33 + v34[7];
    *v36 = 0;
    *(v36 + 4) = 1;
    *(v33 + v34[8]) = 0;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a1 + 48);
    *(a1 + 48) = 0x8000000000000000;
    sub_100FFC714(v31, v45, isUniquelyReferenced_nonNull_native);
    *(a1 + 48) = v46;
    swift_endAccess();
  }
}