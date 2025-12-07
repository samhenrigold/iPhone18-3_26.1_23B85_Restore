uint64_t sub_1000EFE34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x736F506863746566;
  }

  if (v2)
  {
    v4 = 0xED00006B63616274;
  }

  else
  {
    v4 = 0x80000001001CAAB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x736F506863746566;
  }

  if (*a2)
  {
    v6 = 0x80000001001CAAB0;
  }

  else
  {
    v6 = 0xED00006B63616274;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000EFEEC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000EFF80(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000F0000(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F0090@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002157B0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000F00F0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001001CAAB0;
  v3 = 0x736F506863746566;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006B63616274;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000F01F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 278) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000F02C0, 0, 0);
}

uint64_t sub_1000F02C0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1000F03C0;
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  return sub_100111770((v0 + 2), sub_1000F1C68, v3, v7, v5, v6);
}

uint64_t sub_1000F03C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000F051C, 0, 0);
  }
}

uint64_t sub_1000F051C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  if (!v3)
  {
    v16 = *(v1 + 136);
    v15 = *(v1 + 144);
    v17 = *(v1 + 128);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    result = (*(v16 + 8))(v15, v17);
    v20 = v19 * 1000.0;
    if (COERCE__INT64(fabs(v19 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 > -1.0)
      {
        if (v20 < 1.84467441e19)
        {
          v21 = *(v1 + 278);
          v23 = *(v1 + 72);
          v22 = *(v1 + 80);
          v24 = v20;
          *(v1 + 248) = 1;
          v25 = v21 & 1;
          v26 = swift_allocObject();
          *(v1 + 224) = v26;
          *(v26 + 16) = 0;
          *(v26 + 24) = *(v1 + 248);
          *(v26 + 25) = *(v1 + 249);
          *(v26 + 28) = *(v1 + 252);
          *(v26 + 32) = v23;
          *(v26 + 40) = v22;
          *(v26 + 48) = v25;
          *(v26 + 49) = *(v1 + 257);
          *(v26 + 52) = *(v1 + 260);
          *(v26 + 56) = 1;
          *(v26 + 64) = v24;

          v27 = swift_task_alloc();
          *(v1 + 232) = v27;
          *v27 = v1;
          v27[1] = sub_1000F1020;
          v28 = *(v1 + 112);
          v29 = *(v1 + 120);
          v30 = *(v1 + 104);
          v31 = sub_1000F1C8C;
          goto LABEL_38;
        }

LABEL_47:
        __break(1u);
        return result;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v44 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);
  v6 = *(v1 + 24);
  if (*(v1 + 278))
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x736F506863746566;
  }

  if (*(v1 + 278))
  {
    v8 = 0x80000001001CAAB0;
  }

  else
  {
    v8 = 0xED00006B63616274;
  }

  if (v5)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0x736F506863746566;
  }

  if (v5)
  {
    v10 = 0x80000001001CAAB0;
  }

  else
  {
    v10 = 0xED00006B63616274;
  }

  if (v7 == v9 && v8 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      sub_10000DAF8(v1 + 16, &qword_10023CEF0, &unk_1001BF6E8);
      sub_1000F18B8();
      swift_allocError();
      swift_willThrow();

      v14 = *(v1 + 8);

      return v14();
    }
  }

  v32 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_42;
  }

  v34 = *(v1 + 136);
  v33 = *(v1 + 144);
  v35 = *(v1 + 128);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v37 = v36;
  result = (*(v34 + 8))(v33, v35);
  v38 = v37 * 1000.0;
  if (COERCE__INT64(fabs(v37 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v38 <= -1.0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v38 >= 1.84467441e19)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = 3;
  if (v5)
  {
    v39 = 10;
  }

  if (v39 < v32)
  {
    v40 = *(v1 + 88);
    sub_10000DAF8(v1 + 16, &qword_10023CEF0, &unk_1001BF6E8);
    v45 = (v40 + *v40);
    v41 = swift_task_alloc();
    *(v1 + 192) = v41;
    *v41 = v1;
    v41[1] = sub_1000F0BDC;

    return v45();
  }

  v42 = v38;
  *(v1 + 256) = v6 & 1;
  v26 = swift_allocObject();
  *(v1 + 168) = v26;
  *(v26 + 16) = v2;
  *(v26 + 24) = *(v1 + 256);
  *(v26 + 25) = *(v1 + 264);
  *(v26 + 28) = *(v1 + 267);
  *(v26 + 32) = v44;
  *(v26 + 40) = v3;
  *(v26 + 48) = v5 & 1;
  *(v26 + 49) = *(v1 + 271);
  *(v26 + 52) = *(v1 + 274);
  *(v26 + 56) = v32;
  *(v26 + 64) = v42;
  v43 = swift_task_alloc();
  *(v1 + 176) = v43;
  *v43 = v1;
  v43[1] = sub_1000F0AA8;
  v28 = *(v1 + 112);
  v29 = *(v1 + 120);
  v30 = *(v1 + 104);
  v31 = sub_1000F190C;
LABEL_38:

  return sub_10010E890(sub_10010E890, v31, v26, v30, v28, v29);
}

uint64_t sub_1000F0AA8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000F11BC;
  }

  else
  {
    v2 = sub_1000F1CA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F0BDC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000F0D28, 0, 0);
  }
}

uint64_t sub_1000F0D28()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[25] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1000F0E20;
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  return sub_10010E890(sub_10010E890, sub_1000F1928, v3, v7, v5, v6);
}

uint64_t sub_1000F0E20()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000F0FBC;
  }

  else
  {
    v2 = sub_1000F0F54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F0F54()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1000F0FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F1020()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1000F1220;
  }

  else
  {
    v2 = sub_1000F1154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F1154()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000F11BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F1220()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000F1284(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE3A8(a2, v4, sub_1000EFA10, type metadata accessor for RetryCountEntity);

  if (!v2)
  {
  }
}

uint64_t sub_1000F1318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return _swift_task_switch(sub_1000F1340, 0, 0);
}

uint64_t sub_1000F1340()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000F1440;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return sub_100111770((v0 + 2), sub_1000F1954, v3, v7, v5, v6);
}

uint64_t sub_1000F1440()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000F1600;
  }

  else
  {
    v2 = sub_1000F1570;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F1570()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[7];
    sub_10000DAF8((v0 + 2), &qword_10023CEF0, &unk_1001BF6E8);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2, v1 == 0);
}

uint64_t sub_1000F1600()
{
  v13 = v0;
  if (qword_100239CD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCA0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10017AD04(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieiving retry count for identifier: %s, error: %@", v6, 0x16u);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0, 1);
}

uint64_t sub_1000F1848()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F1880()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000F18B8()
{
  result = qword_10023CEF8;
  if (!qword_10023CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CEF8);
  }

  return result;
}

double sub_1000F196C@<D0>(uint64_t a1@<X8>)
{
  result = sub_10001BC18(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_1000F19C8()
{
  result = qword_10023CF00;
  if (!qword_10023CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF00);
  }

  return result;
}

uint64_t sub_1000F1A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F1A64()
{
  result = qword_10023CF08;
  if (!qword_10023CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF08);
  }

  return result;
}

unint64_t sub_1000F1AB8()
{
  result = qword_10023CF10;
  if (!qword_10023CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF10);
  }

  return result;
}

unint64_t sub_1000F1B30()
{
  result = qword_10023CF18;
  if (!qword_10023CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF18);
  }

  return result;
}

unint64_t sub_1000F1B84(uint64_t a1)
{
  result = sub_1000F18B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F1BB0()
{
  result = qword_10023CF20;
  if (!qword_10023CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF20);
  }

  return result;
}

unint64_t sub_1000F1C04()
{
  result = qword_10023CF28;
  if (!qword_10023CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF28);
  }

  return result;
}

void sub_1000F1CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = [v2 connection];
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = String._bridgeToObjectiveC()();
  v12(v8, v10, v4);
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = [objc_opt_self() predicateWithProperty:v13 equalToValue:v14];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v10, v4);
  v16 = sub_100085730(v11, v15, _swiftEmptyArrayStorage, 0, 0);

  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v17[1] = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F1F0C(uint64_t a1, char a2)
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = objc_opt_self();
  v6 = [v5 predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  *(inited + 32) = v6;
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 predicateWithProperty:v7 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v8;
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v9 doesNotContainPredicateWithProperty:v10 values:isa];

  *(inited + 48) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v14 = [v17 connection];
  v15 = v13;
  v16 = sub_100085748(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F2234()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100085730(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F23F4(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 value:v8 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v14 = [v3 connection];
  v15 = v13;
  v16 = sub_100085748(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F2740(uint64_t a1, uint64_t (*a2)(id, id, void *, void, void))
{
  v4 = [v2 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = a2(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  if (([v8 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F28B0(uint64_t a1, uint64_t a2)
{
  v3 = [v2 connection];
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100086C40(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

double sub_1000F2AD4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1000BC56C(0, 8);
  v9 = v8;

  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *&result = 1;
    *(a1 + 24) = xmmword_1001BF980;
  }

  else
  {
    v11 = Logger.xpc.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v11, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v12, v13, "Overriding client item ID: %llu", v14, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    return sub_1000B7C6C(v7, a1);
  }

  return result;
}

id sub_1000F2CE4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for XPCBridge();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000F2D3C(uint64_t a1)
{
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    return v5;
  }

  swift_errorRetain();
  if ((swift_dynamicCast() & 1) != 0 && v5 == 4)
  {
    return 6;
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = 8 * (v5 == 3);
    v3 = v5 == 2;
    v4 = 7;
LABEL_13:
    if (v3)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (v5 == 2)
    {
      v2 = 10;
    }

    else
    {
      v2 = 0;
    }

    v3 = v5 == 1;
    v4 = 9;
    goto LABEL_13;
  }

  swift_errorRetain();
  if (!swift_dynamicCast())
  {
    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    if (v5 == 3)
    {
      v2 = 14;
    }

    else
    {
      v2 = 0;
    }

    v3 = v5 == 2;
    v4 = 13;
    goto LABEL_13;
  }

  if (v5)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_1000F2F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (**a9)(void, void))
{
  v47 = a6;
  v43 = a4;
  v44 = a1;
  v46 = a3;
  v45 = a2;
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a9;
  _Block_copy(a9);
  sub_1000F2AD4(v50);
  if (*(&v50[1] + 1) != 1)
  {
    v51[0] = v50[0];
    v51[1] = v50[1];
    v52 = *&v50[2];
    goto LABEL_5;
  }

  v40 = v12;
  sub_10000DAF8(v50, &qword_10023CF98, &unk_1001C3DD0);
  v22 = [objc_opt_self() currentConnection];
  if (v22)
  {
    v23 = v22;
    [v22 auditToken];
    sub_1000B78E0(*&v50[0], *(&v50[0] + 1), *&v50[1], *(&v50[1] + 1), v51);

LABEL_5:
    sub_1000A2558(a5, v20);
    sub_100014ECC(v43, v50);
    sub_1000B6D74(v51, v48);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = v45;
    *(v24 + 32) = v44;
    *(v24 + 40) = v25;
    *(v24 + 48) = v46;
    *(v24 + 56) = v47;
    *(v24 + 64) = a7;
    memcpy((v24 + 72), v50, 0x260uLL);
    v26 = v48[1];
    *(v24 + 680) = v48[0];
    *(v24 + 696) = v26;
    *(v24 + 712) = v49;
    *(v24 + 720) = a8;
    *(v24 + 728) = sub_1000849C4;
    *(v24 + 736) = v21;

    v27 = a8;

    sub_10001267C(0, 0, v20, &unk_1001BF9C8, v24);

    sub_1000D5894(v51);
  }

  sub_1000F341C();
  v29 = swift_allocError();
  swift_willThrow();
  v30 = Logger.xpc.unsafeMutableAddressor();
  (*(v41 + 16))(v17, v30, v42);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received error while getting client: %@", v33, 0xCu);
    sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v41 + 8))(v17, v42);
  *v14 = sub_1000F2D3C(v29);
  swift_storeEnumTagMultiPayload();
  v36 = sub_10017B65C(v14);
  v38 = v37;
  sub_10000DAF8(v14, &qword_10023CF90, &unk_1001BF9B8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (a9)[2](a9, isa);

  sub_10001BABC(v36, v38);
}

uint64_t sub_1000F33E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000F341C()
{
  result = qword_10023CFA0;
  if (!qword_10023CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CFA0);
  }

  return result;
}

uint64_t sub_1000F3470()
{
  swift_unknownObjectRelease();

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));

  sub_10000DB58((v0 + 320));
  sub_10000DB58((v0 + 360));
  sub_10000DB58((v0 + 400));
  sub_10000DB58((v0 + 440));
  sub_10000DB58((v0 + 480));
  sub_10000DB58((v0 + 520));
  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  if (*(v0 + 704))
  {
    sub_10000DB58((v0 + 680));
  }

  return _swift_deallocObject(v0, 744, 7);
}

uint64_t sub_1000F3598(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v13 = *(v1 + 56);
  v11 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD30;

  return sub_1001730F4(a1, v4, v5, v6, v7, v8, v13, v11);
}

unint64_t sub_1000F36C0()
{
  result = qword_10023CFA8;
  if (!qword_10023CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CFA8);
  }

  return result;
}

uint64_t sub_1000F3714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_10000BD30;

  return sub_10009ED94(a3, a4, a5, a6, a7);
}

uint64_t sub_1000F3A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000148B0;

  return sub_10009F9B8(a3, a4, a5);
}

uint64_t sub_1000F3CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000152E0;

  return sub_10009FC48(a3, a4, a5);
}

uint64_t sub_1000F3FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1000F4044;

  return sub_10009FEC8(a4);
}

uint64_t sub_1000F4044(char a1)
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
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_1000F4194, 0, 0);
  }
}

uint64_t sub_1000F4344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000F4FB0;

  return sub_1000A02AC(a3, a4, a5);
}

uint64_t sub_1000F4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000F4FB0;

  return sub_1000A0980(a3, a4);
}

uint64_t sub_1000F4904()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F493C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F4974(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_1000F4600(a1, a2, v7, v6);
}

uint64_t sub_1000F4A24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F4A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v8);
}

uint64_t sub_1000F4B30(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F4344(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_1000F3FA4(a1, a2, a3, v8);
}

uint64_t sub_1000F4CB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F3CE8(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4D78()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F4DB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F3A2C(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4E70()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));
  sub_10001BABC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F4EB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000BD30;

  return sub_1000F3714(a1, a2, v6, v7, v8, v9, v10);
}

_UNKNOWN **sub_1000F4FB4@<X0>(unint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    if (a2)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (sub_1000B86A8())
    {
      (*(v12 + 16))(v14, v4, v11);
      result = &off_1002132D0;
      goto LABEL_12;
    }

LABEL_11:
    Date.addingTimeInterval(_:)();
    result = &off_1002132A0;
LABEL_12:
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result[2] > a1)
    {
      v21 = *(result + a1 + 8);

      arc4random_uniform(v21);
      Date.addingTimeInterval(_:)();
      return (*(v12 + 8))(v14, v11);
    }

    __break(1u);
    return result;
  }

  v16 = Logger.postback.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v16, v7);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Postback sequence index outside of known jitter thresholds", v19, 2u);
  }

  (*(v8 + 8))(v10, v7);
  return (*(v12 + 16))(v23, v4, v11);
}

uint64_t sub_1000F52D8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    v17 = Logger.postback.unsafeMutableAddressor();
    (*(v13 + 16))(v15, v17, v12);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Postback sequence index outside of known window thresholds", v20, 2u);
    }

    (*(v13 + 8))(v15, v12);
    v21 = type metadata accessor for Date();
    return (*(*(v21 - 8) + 16))(a5, v6, v21);
  }

  if (a4)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (sub_1000B86A8())
  {
    v33 = _swiftEmptyArrayStorage;
    sub_100147204(0, 3, 0);
    v23 = 3;
    if (is_mul_ok(3uLL, 0x3CuLL))
    {
      a3 = 180;
      v24 = v33;
      a2 = v33[2];
      v23 = v33[3];
      v12 = a2 + 1;
      if (a2 < v23 >> 1)
      {
        goto LABEL_12;
      }

      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_19:
  v23 = &off_1002166B8;
  if (*(a2 + 16) >= 3uLL)
  {
    v12 = a2;
  }

  else
  {
    v12 = &off_1002166B8;
  }

  a2 = *(v12 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v32 = v6;
    v33 = _swiftEmptyArrayStorage;

    sub_100147204(0, a2, 0);
    v28 = 32;
    v24 = v33;
    do
    {
      v29 = *(v12 + v28);
      v23 = (v29 * 0x15180uLL) >> 64;
      if (!is_mul_ok(v29, 0x15180uLL))
      {
        __break(1u);
        goto LABEL_35;
      }

      v33 = v24;
      v31 = v24[2];
      v30 = v24[3];
      a3 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_100147204((v30 > 1), v31 + 1, 1);
        v24 = v33;
      }

      v24[2] = a3;
      v24[v31 + 4] = 86400 * v29;
      v28 += 8;
      --a2;
    }

    while (a2);
  }

  while ((a1 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_100147204((v23 > 1), v12, 1);
      v24 = v33;
LABEL_12:
      v24[2] = v12;
      v24[a2 + 4] = a3;
      v23 = 6;
      if (is_mul_ok(6uLL, 0x3CuLL))
      {
        a3 = 360;
        v33 = v24;
        v25 = v24[3];
        a2 += 2;
        if (v12 >= v25 >> 1)
        {
          sub_100147204((v25 > 1), a2, 1);
          v24 = v33;
        }

        v24[2] = a2;
        v24[v12 + 4] = 360;
        v23 = 9;
        if (is_mul_ok(9uLL, 0x3CuLL))
        {
          break;
        }
      }

LABEL_35:
      __break(1u);
    }

    a2 = 540;
    v33 = v24;
    v27 = v24[2];
    v26 = v24[3];
    v12 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      sub_100147204((v26 > 1), v27 + 1, 1);
      v24 = v33;
    }

    v24[2] = v12;
    v23 = &v24[v27];
    *(v23 + 32) = 540;
  }

  v23 = v24[2];
  if (v23 <= a1)
  {
    goto LABEL_37;
  }

  return Date.addingTimeInterval(_:)();
}

id sub_1000F596C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, "initWithPropertyValues:onConnection:", isa, v8);

  return v11;
}

id sub_1000F5A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a5(a1, a2);
  return objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a3, a4);
}

id sub_1000F5AD0(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000F5B2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000F5B8C()
{
  result = qword_10023D058;
  if (!qword_10023D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D058);
  }

  return result;
}

unint64_t sub_1000F5BE4()
{
  result = qword_10023D078;
  if (!qword_10023D078)
  {
    type metadata accessor for ImpressionModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D078);
  }

  return result;
}

id sub_1000F5C40()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[112] = 2;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 sharedConnection];
  if (result)
  {
    v6 = result;
    [result registerObserver:v4];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F5DA4(uint64_t a1)
{
  v1 = type metadata accessor for Restrictions();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[112] = 2;
  v8.receiver = v2;
  v8.super_class = v1;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedConnection];
  if (v6)
  {
    v7 = v6;
    [v6 registerObserver:v5];

    qword_10023FD78 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F5E60()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for Restrictions.ValueStore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1000F60BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F60FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD30;

  return sub_1000F5EB4(a1, v4, v5, v6);
}

uint64_t sub_1000F61B0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a4;
  v42 = a3;
  v41 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = v44;
  v23 = v41;
  *(v5 + 16) = v43;
  *(v5 + 24) = v23;
  *(v5 + 32) = v42;
  v24 = *(v12 + 16);
  v41 = v11;
  v24(v14, v22, v11);
  OSSignposter.init(logger:)();
  v25 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter, v21, v15);
  (*(v16 + 16))(v19, v5 + v25, v15);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v19;
  v37 = v5;
  v35 = v16;
  v38 = v12;
  if ((v42 & 1) == 0)
  {
    v29 = v43;
    if (v43)
    {
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v31, v29, "", v30, 2u);

      v5 = v37;
      v12 = v38;
      v16 = v35;
      v19 = v36;
LABEL_10:

      v32 = v40;
      (*(v6 + 16))(v39, v10, v40);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v33 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v12 + 8))(v44, v41);
      (*(v6 + 8))(v10, v32);
      (*(v16 + 8))(v19, v15);
      *(v5 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval) = v33;
      return v5;
    }

    __break(1u);
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v29 = &v45;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000F65C4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter;
  (*(v8 + 16))(v10, v0 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter, v7);
  v32 = *(v0 + 16);
  v31 = *(v0 + 32);
  v12 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval;
  v13 = *(v0 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval);

  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v29 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v16 = v37;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v36 + 8))(v6, v16);
    v25 = *(v8 + 8);
    v25(v10, v7);
    v25((v1 + v11), v7);

    return v1;
  }

  v30 = v13;
  v26[0] = v1;
  v26[1] = v12;
  v27 = v10;
  v28 = v11;
  v17 = v37;
  if ((v31 & 1) == 0)
  {
    v19 = v34;
    v18 = v35;
    v21 = v32;
    v20 = v33;
    if (v32)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v19 + 88))(v20, v18) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v20, v18);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v29, v24, v21, v22, v23, 2u);

      v16 = v17;
      v10 = v27;
      v11 = v28;
      v1 = v26[0];
      goto LABEL_13;
    }

    __break(1u);
  }

  v20 = v33;
  v19 = v34;
  v18 = v35;
  if (v32 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 <= 0x10)
    {
      v21 = &v38;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000F6994()
{
  sub_1000F65C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval(uint64_t a1)
{
  result = qword_10023D160;
  if (!qword_10023D160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F6A40(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
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

unint64_t sub_1000F6AFC()
{
  result = qword_10023D1F8;
  if (!qword_10023D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D1F8);
  }

  return result;
}

Swift::Int sub_1000F6B74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BFEF8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000F6BFC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BFEF8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1000F6C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F6F24(*a1);
  *a2 = result;
  return result;
}

void sub_1000F6C9C(_BYTE *result, uint64_t a2)
{
  if (*result > 1u)
  {
    if (*result != 2)
    {
      return;
    }

    v2 = 0x6C7074656B72616DLL;
    v3 = 0xEE0064695F656361;
  }

  else
  {
    if (!*result)
    {
      sub_1000F6F78(a2);
      return;
    }

    v2 = 0x5F7972746E756F63;
    v3 = 0xEC00000065646F63;
  }

  sub_1000F71DC(a2, v2, v3);
}

unint64_t sub_1000F6D30(void *a1)
{
  a1[1] = sub_1000F6D68();
  a1[2] = sub_1000F6DBC();
  result = sub_1000F6E10();
  a1[3] = result;
  return result;
}

unint64_t sub_1000F6D68()
{
  result = qword_10023D240;
  if (!qword_10023D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D240);
  }

  return result;
}

unint64_t sub_1000F6DBC()
{
  result = qword_10023D248;
  if (!qword_10023D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D248);
  }

  return result;
}

unint64_t sub_1000F6E10()
{
  result = qword_10023D250;
  if (!qword_10023D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D250);
  }

  return result;
}

unint64_t sub_1000F6E68()
{
  result = qword_10023D258;
  if (!qword_10023D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D258);
  }

  return result;
}

unint64_t sub_1000F6EC0()
{
  result = qword_10023D260;
  if (!qword_10023D260)
  {
    sub_10000CCC0(&qword_10023D268, &qword_1001BFE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D260);
  }

  return result;
}

uint64_t sub_1000F6F24(uint64_t result)
{
  if (result > 19000)
  {
    if (result == 19002)
    {
      return 3;
    }

    if (result == 19001)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 19000)
    {
      return 1;
    }
  }

  return 4;
}

void sub_1000F6F78(uint64_t a1)
{
  _StringGuts.grow(_:)(119);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for ConversionHistoryEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._object = 0xED000064695F6E6FLL;
  v11._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x69737265766E6F63;
  v13._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001001CA030;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2020202020200A2CLL;
  v18._object = 0xEA00000000002020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x69737265766E6F63;
  v19._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000018;
  v20._object = 0x80000001001CB550;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v21);
}

void sub_1000F71DC(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(34);

  v6 = [type metadata accessor for ConversionHistoryEntity() databaseTable];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x4C4F432044444120;
  v11._object = 0xEC000000204E4D55;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3B5458455420;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v14);
}

unint64_t sub_1000F7338()
{
  result = qword_10023D270;
  if (!qword_10023D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D270);
  }

  return result;
}

unint64_t sub_1000F7390()
{
  result = qword_10023D278;
  if (!qword_10023D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D278);
  }

  return result;
}

unint64_t sub_1000F73E4(uint64_t a1)
{
  *(a1 + 8) = sub_10003BEE4();
  result = sub_1000F1AB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F7418(unsigned __int8 a1)
{
  v1 = 0x69737265766E6F63;
  v2 = 0x6D6E6F7269766E65;
  if (a1 != 7)
  {
    v2 = 0x636F6C6C615F7369;
  }

  if (a1 == 6)
  {
    v2 = 0x69737265766E6F63;
  }

  v3 = 0x6D617473656D6974;
  if (a1 != 4)
  {
    v3 = 0x6369666974726563;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x5F65746176697270;
  if (a1 != 2)
  {
    v4 = 0x657A696C616E6966;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000F7574(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D2F0, &qword_1001C0078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1000F7390();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = *(v3 + 96);
    v10[8] = 6;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[7] = *(v3 + 97);
    v10[6] = 7;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[5] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000F7840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000ED94(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F7890(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000ED94(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000F78D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7B8C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F7904@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000F7418(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000F794C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7B8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F7984(uint64_t a1)
{
  v2 = sub_1000F7390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F79C0(uint64_t a1)
{
  v2 = sub_1000F7390();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F79FC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000F7BD8(a2, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 95) = *&v8[15];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1000F7A78()
{
  result = qword_10023D2C8;
  if (!qword_10023D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2C8);
  }

  return result;
}

unint64_t sub_1000F7AD0()
{
  result = qword_10023D2D0;
  if (!qword_10023D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2D0);
  }

  return result;
}

unint64_t sub_1000F7B28()
{
  result = qword_10023D2D8;
  if (!qword_10023D2D8)
  {
    sub_10000CCC0(&qword_10023D2E0, &qword_1001C0030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2D8);
  }

  return result;
}

unint64_t sub_1000F7B8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215BF8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F7BD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_10000CDE0(&qword_10023D2E8, &qword_1001C0070);
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v26 - v6;
  v58 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_1000F7390();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  LOBYTE(v43) = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v43) = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v11;
  v12 = v10;
  LOBYTE(v43) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v14;
  v32 = v13;
  LOBYTE(v43) = 4;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v43) = 5;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v15;
  LOBYTE(v43) = 0;
  *&v29 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v29 + 1) = v16;
  LOBYTE(v37) = 6;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v43;
  LOBYTE(v37) = 7;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v43;
  v59 = 8;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v7, v36);
  v27 = v18 & 1;
  *&v37 = 0;
  LODWORD(v36) = v58;
  BYTE8(v37) = v58;
  v38 = v29;
  v19 = *(&v29 + 1);
  *&v39 = v9;
  *(&v39 + 1) = v12;
  *&v40 = v35;
  v20 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v34;
  *(&v41 + 1) = v31;
  *v42 = v30;
  v21 = v33;
  *&v42[8] = v33;
  v42[16] = v17;
  v42[17] = v28;
  v42[18] = v27;
  sub_10001B9B0(&v37, &v43);
  sub_10000DB58(a1);
  v43 = 0;
  v44 = v36;
  v45 = v29;
  v46 = v19;
  v47 = v9;
  v48 = v12;
  v49 = v35;
  v50 = v20;
  v51 = v34;
  v52 = v31;
  v53 = v30;
  v54 = v21;
  v55 = v17;
  v56 = v28;
  v57 = v27;
  result = sub_10003BF38(&v43);
  v23 = *v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v23;
  *(a2 + 95) = *&v42[15];
  v24 = v38;
  *a2 = v37;
  *(a2 + 16) = v24;
  v25 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v25;
  return result;
}

__n128 sub_1000F81CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000F81F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 99))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F8240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F82B4()
{
  result = qword_10023D2F8;
  if (!qword_10023D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2F8);
  }

  return result;
}

uint64_t sub_1000F8314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
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

uint64_t sub_1000F835C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F844C@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100239D30;
  v3 = qword_10023FC50;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_10023FD90;
  v5 = type metadata accessor for SnoutManager(0);
  a1[6] = v5;
  a1[7] = &off_100223858;
  a1[11] = &type metadata for AMSDogBag;
  a1[12] = &off_100222F48;
  *a1 = 0xD000000000000010;
  a1[1] = 0x80000001001CB320;
  a1[2] = v3;
  a1[3] = v4;
  v6 = v3;
  swift_retain_n();
  v7 = v6;
  sub_1000B44B4(a1 + 31);
  a1[39] = &type metadata for LaunchServicesRecordFactory;
  a1[40] = &off_10021CBA8;
  a1[44] = &type metadata for DogTokenClientFactory;
  a1[45] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  a1[49] = type metadata accessor for TaskGreyhound(0);
  a1[50] = &off_1002169F0;
  a1[46] = v8;
  a1[54] = &type metadata for AMSDogBag;
  a1[55] = &off_100222F48;
  a1[59] = &type metadata for CasinoDog;
  a1[60] = &off_1002179A0;
  a1[64] = v5;
  a1[65] = &off_100223858;
  a1[61] = v4;
  a1[13] = 0x74735F6E656B6F74;
  a1[14] = 0xEB0000000065726FLL;
  a1[15] = v7;
  a1[16] = 0xD000000000000010;
  a1[17] = 0x80000001001CB320;
  a1[18] = v7;
  a1[19] = 0xD000000000000012;
  a1[20] = 0x80000001001CB340;
  a1[21] = v7;
  a1[22] = 0xD000000000000014;
  a1[23] = 0x80000001001CB360;
  a1[24] = v7;
  a1[25] = 0xD000000000000018;
  a1[26] = 0x80000001001CB380;
  a1[27] = v7;
  a1[28] = 0x63616274736F6867;
  a1[29] = 0xEF65726F74735F6BLL;
  a1[30] = v7;
  a1[69] = v5;
  a1[70] = &off_100223858;
  a1[66] = v4;
  a1[74] = &type metadata for AMSDogBag;
  a1[75] = &off_100222F48;
}

uint64_t sub_1000F8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for URL();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v6[25] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000F88D0, 0, 0);
}

uint64_t sub_1000F88D0(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = Logger.impression.unsafeMutableAddressor();
  *(v1 + 248) = v5;
  v6 = *(v4 + 16);
  *(v1 + 256) = v6;
  *(v1 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32 = v6;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[ImpressionIntakeService] Process reengagement", v9, 2u);
  }

  v10 = *(v1 + 240);
  v11 = *(v1 + 208);
  v12 = *(v1 + 216);

  v13 = *(v12 + 8);
  *(v1 + 272) = v13;
  v13(v10, v11);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FAAF4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = *(v1 + 32);
  v20 = *(v1 + 40);
  v19 = *(v1 + 48);
  *(v1 + 280) = v16;
  *(v1 + 288) = v19;
  if (v18)
  {

LABEL_10:

    sub_1000B7694(v20, v19, (v1 + 56));
    v22 = swift_task_alloc();
    *(v1 + 296) = v22;
    *v22 = v1;
    v22[1] = sub_1000F8CB8;
    v23 = *(v1 + 200);
    v24 = *(v1 + 104);

    return sub_10002C13C(v23, v17, v16, v24, 1);
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_10;
  }

  v25 = *(v1 + 224);
  v26 = *(v1 + 208);

  v32(v25, v5, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Interaction type must be click", v29, 2u);
  }

  v30 = *(v1 + 224);
  v31 = *(v1 + 208);

  v13(v30, v31);
  sub_1000FAB48();
  swift_allocError();
  swift_willThrow();

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1000F8CB8()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F9918, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[39] = v3;
    *v3 = v2;
    v3[1] = sub_1000F8E44;
    v4 = v2[25];
    v5 = v2[13];

    return sub_10003212C((v2 + 7), v5, v4);
  }
}

uint64_t sub_1000F8E44()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1000F9A04;
  }

  else
  {
    v2 = sub_1000F8F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F8F58()
{
  v44 = v0;
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[12];
  v10 = *(v7 + 56);
  v0[41] = v10;
  v0[42] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v9, 1, 1, v6);
  v1(v3, v2, v4);
  sub_10001B8EC(v8, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[23];
    v13 = v0[24];
    v15 = v0[18];
    v16 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136315138;
    sub_10001B8EC(v13, v14);
    v19 = (*(v16 + 48))(v14, 1, v15);
    v20 = v0[23];
    if (v19 == 1)
    {
      sub_10000DAF8(v0[23], &qword_10023C230, &qword_1001B4FB0);
      v21 = 0xE400000000000000;
      v22 = 1701736302;
    }

    else
    {
      v27 = v0[18];
      v28 = v0[19];
      v22 = URL.absoluteString.getter();
      v21 = v29;
      (*(v28 + 8))(v20, v27);
    }

    v42 = v0[34];
    v30 = v0[29];
    v31 = v0[26];
    sub_10000DAF8(v0[24], &qword_10023C230, &qword_1001B4FB0);
    v32 = sub_10017AD04(v22, v21, &v43);

    *(v17 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reengagement url: %s", v17, 0xCu);
    sub_10000DB58(v18);

    v42(v30, v31);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[29];
    v25 = v0[26];
    v26 = v0[24];

    sub_10000DAF8(v26, &qword_10023C230, &qword_1001B4FB0);
    v23(v24, v25);
  }

  v33 = v0[22];
  v34 = v0[18];
  v35 = v0[19];
  sub_10001B8EC(v0[16], v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_10000DAF8(v0[22], &qword_10023C230, &qword_1001B4FB0);
    v36 = swift_task_alloc();
    v0[48] = v36;
    *v36 = v0;
    v36[1] = sub_1000F9724;
    v37 = v0[25];
    v38 = v0[13];

    return sub_1000D14BC(v38, v37, 0, 1);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[22], v0[18]);
    v40 = swift_task_alloc();
    v0[43] = v40;
    *v40 = v0;
    v40[1] = sub_1000F934C;
    v41 = v0[13];

    return sub_1000D0A04(v41);
  }
}

uint64_t sub_1000F934C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;
  *(v6 + 392) = a2;
  *(v6 + 352) = a1;
  *(v6 + 360) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000F9AF8, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v6 + 368) = v8;
    *v8 = v7;
    v8[1] = sub_1000F94F4;
    v10 = *(v6 + 160);
    v9 = *(v6 + 168);
    v11 = *(v6 + 104);

    return sub_100079540(v9, v10, v11, a1, a2 & 1);
  }
}

uint64_t sub_1000F94F4()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1000F9C24;
  }

  else
  {
    v2 = sub_1000F9608;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F9608()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  (*(*(v0 + 152) + 8))(*(v0 + 160), v3);
  sub_10000DAF8(v4, &qword_10023C230, &qword_1001B4FB0);
  v1(v2, 0, 1, v3);
  sub_100054734(v2, v4);
  v5 = *(v0 + 392);
  v6 = *(v0 + 352);
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_1000F9724;
  v8 = *(v0 + 200);
  v9 = *(v0 + 104);

  return sub_1000D14BC(v9, v8, v6, v5 & 1);
}

uint64_t sub_1000F9724()
{

  return _swift_task_switch(sub_1000F9820, 0, 0);
}

uint64_t sub_1000F9820()
{
  sub_10000DAF8(*(v0 + 200), &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F9918()
{

  sub_1000D5894(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F9A04()
{
  sub_10000DAF8(*(v0 + 200), &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F9AF8()
{
  v1 = v0[25];
  v2 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F9C24()
{
  v1 = v0[25];
  v2 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F9D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9E58, 0, 0);
}

uint64_t sub_1000F9E58()
{
  v35 = v0;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FAAF4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  LODWORD(v6) = *(v0 + 32);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  *(v0 + 168) = v4;
  *(v0 + 176) = v7;
  v9 = Logger.impression.unsafeMutableAddressor();
  (*(v1 + 16))(v2, v9, v3);

  v10 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  v33 = v1;
  v11 = os_log_type_enabled(v10, v1);
  v13 = *(v0 + 152);
  v12 = *(v0 + 160);
  v14 = *(v0 + 144);
  if (v11)
  {
    v31 = v8;
    v15 = swift_slowAlloc();
    v30 = v12;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    v17 = v6 == 0;
    if (v6)
    {
      v18 = 0x6B63696C63;
    }

    else
    {
      v18 = 2003134838;
    }

    v32 = v6;
    v6 = v4;
    v19 = v5;
    if (v17)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v29 = v14;
    v21 = sub_10017AD04(v18, v20, &v34);
    v5 = v19;
    v4 = v6;
    LOBYTE(v6) = v32;

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v33, "[ImpressionIntakeService] Record impression with type: %s", v15, 0xCu);
    sub_10000DB58(v16);

    v8 = v31;

    (*(v13 + 8))(v30, v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  sub_1000B7694(v8, v7, (v0 + 56));
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  if (v6)
  {
    v22[1] = sub_1000FA51C;
    v23 = *(v0 + 128);
    v24 = *(v0 + 96);
    v25 = v5;
    v26 = v4;
    v27 = 1;
  }

  else
  {
    v22[1] = sub_1000FA1D0;
    v23 = *(v0 + 136);
    v24 = *(v0 + 96);
    v25 = v5;
    v26 = v4;
    v27 = 0;
  }

  return sub_10002C13C(v23, v25, v26, v24, v27);
}

uint64_t sub_1000FA1D0()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000FA85C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[25] = v3;
    *v3 = v2;
    v3[1] = sub_1000FA354;
    v4 = v2[17];
    v5 = v2[12];

    return sub_10002CA7C((v2 + 7), v5, v4, 1, 0);
  }
}

uint64_t sub_1000FA354()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000FA8F4;
  }

  else
  {
    v2 = sub_1000FA468;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FA468()
{
  v1 = *(v0 + 136);

  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FA51C()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000FA9A8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[28] = v3;
    *v3 = v2;
    v3[1] = sub_1000FA694;
    v4 = v2[16];
    v5 = v2[12];

    return sub_10003212C((v2 + 7), v5, v4);
  }
}

uint64_t sub_1000FA694()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000FAA40;
  }

  else
  {
    v2 = sub_1000FA7A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FA7A8()
{
  v1 = *(v0 + 128);

  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FA85C()
{

  sub_1000D5894(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FA8F4()
{
  v1 = *(v0 + 136);

  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FA9A8()
{

  sub_1000D5894(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAA40()
{
  v1 = *(v0 + 128);

  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000FAAF4()
{
  result = qword_10023D300;
  if (!qword_10023D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D300);
  }

  return result;
}

unint64_t sub_1000FAB48()
{
  result = qword_10023D308;
  if (!qword_10023D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D308);
  }

  return result;
}

unint64_t sub_1000FABB0()
{
  result = qword_10023D310;
  if (!qword_10023D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D310);
  }

  return result;
}

uint64_t sub_1000FAC14(uint64_t a1)
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion();
  sub_1000FC18C(&qword_10023D330, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion, &protocol conformance descriptor for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion);
  static StreamResource.source()();
  sub_10000DA7C(v2, v2[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v2);
}

uint64_t sub_1000FAE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v35 = a2;
  v36 = a1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v32 - v11;
  v12 = a3(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E61C();
  (*(v18 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v20, v17);
  (*(v13 + 16))(v16, v35, v12);
  v22 = v32;
  v21 = v33;
  (*(v10 + 16))(v32, v36, v33);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = (v14 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = swift_allocObject();
  (*(v13 + 32))(v25 + v23, v16, v12);
  (*(v10 + 32))(v25 + v24, v22, v21);
  aBlock[4] = v39;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = v40;
  v26 = _Block_copy(aBlock);
  v27 = v37;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1000FC18C(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  v29 = v41;
  v28 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v34;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v45 + 8))(v29, v28);
  (*(v43 + 8))(v27, v44);
}

uint64_t sub_1000FB33C(uint64_t a1)
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase();
  sub_1000FC18C(&qword_10023D328, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase, &protocol conformance descriptor for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase);
  static StreamResource.source()();
  sub_10000DA7C(v2, v2[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v2);
}

uint64_t sub_1000FB554(uint64_t a1)
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase();
  sub_1000FC18C(&qword_10023D320, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase, &protocol conformance descriptor for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase);
  static StreamResource.source()();
  sub_10000DA7C(v2, v2[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v2);
}

uint64_t sub_1000FB78C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000FB880;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000019, 0x80000001001CD450, sub_1000FBF98, v2, &type metadata for () + 8);
}

uint64_t sub_1000FB880()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000FB9B4;
  }

  else
  {

    v2 = sub_1000FB99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FB9B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FBA38()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000FBB2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000025, 0x80000001001CD420, sub_1000FBE0C, v2, &type metadata for () + 8);
}

uint64_t sub_1000FBB2C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000FC1E8;
  }

  else
  {

    v2 = sub_1000FC1DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FBC68()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000FBB2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000028, 0x80000001001CD3F0, sub_1000FBD5C, v2, &type metadata for () + 8);
}

uint64_t sub_1000FBDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FBEA4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000CDE0(&qword_10023D318, &unk_1001C0430) - 8);
  v7 = v2 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return a2(v2 + v4, v7);
}

uint64_t sub_1000FC004(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  (*(v3 + 8))(v1 + v5, v2);
  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

uint64_t sub_1000FC18C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FC1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1032))
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

uint64_t sub_1000FC23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 1016) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1032) = 1;
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

    *(result + 1032) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000FC398@<X0>(uint64_t a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedScheduler];
  *(a1 + 192) = &type metadata for ActivityManager;
  *(a1 + 200) = &off_100223E90;
  v6 = swift_allocObject();
  *(a1 + 168) = v6;
  v6[5] = &type metadata for BackgroundSystemTaskScheduler;
  v6[6] = &off_100217910;
  v6[2] = v5;
  *(a1 + 256) = &type metadata for AttributionKitCanineArbiter;
  *(a1 + 264) = &off_1002191C8;
  v7 = qword_100239C90;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FC28;
  v18 = type metadata accessor for TaskGreyhound(0);
  *(a1 + 296) = v18;
  *(a1 + 304) = &off_1002169F0;
  *(a1 + 272) = v9;
  *(a1 + 336) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 344) = &off_10021CBA8;
  *(a1 + 376) = &type metadata for AMSDogBag;
  *(a1 + 384) = &off_100222F48;
  swift_retain_n();
  v10 = [v3 sharedScheduler];
  v21 = &type metadata for ActivityManager;
  v22 = &off_100223E90;
  v11 = swift_allocObject();
  v19[4] = &off_10021CBA8;
  v20[0] = v11;
  v11[5] = &type metadata for BackgroundSystemTaskScheduler;
  v11[6] = &off_100217910;
  v11[2] = v10;
  v19[3] = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v20, v19, a1 + 392);
  *(a1 + 504) = &type metadata for AppStoreDaemonSKANInterop;
  *(a1 + 512) = &off_100222C60;
  sub_1000B42E0((a1 + 520));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v12 = qword_10023FD90;
  v13 = type metadata accessor for SnoutManager(0);
  *(a1 + 584) = v13;
  *(a1 + 592) = &off_100223858;
  *(a1 + 560) = v12;
  strcpy(a1, "postback_store");
  *(a1 + 15) = -18;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0x63616274736F6867;
  *(a1 + 32) = 0xEF65726F74735F6BLL;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0xD000000000000010;
  *(a1 + 56) = 0x80000001001CB320;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0x74735F6E656B6F74;
  *(a1 + 80) = 0xEB0000000065726FLL;
  *(a1 + 88) = v8;
  *(a1 + 96) = 0xD000000000000012;
  *(a1 + 104) = 0x80000001001CB340;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0xD000000000000014;
  *(a1 + 128) = 0x80000001001CB360;
  *(a1 + 136) = v8;
  *(a1 + 144) = 0xD000000000000018;
  *(a1 + 152) = 0x80000001001CB380;
  *(a1 + 160) = v8;
  *(a1 + 208) = 0xD000000000000011;
  *(a1 + 216) = 0x80000001001CB3A0;
  *(a1 + 224) = v8;
  v14 = v8;
  swift_retain_n();
  v15 = v14;
  sub_1000B44B4((a1 + 744));
  *(a1 + 808) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 816) = &off_10021CBA8;
  *(a1 + 848) = &type metadata for DogTokenClientFactory;
  *(a1 + 856) = &off_100219C38;
  *(a1 + 888) = v18;
  *(a1 + 896) = &off_1002169F0;
  *(a1 + 864) = v9;
  *(a1 + 928) = &type metadata for AMSDogBag;
  *(a1 + 936) = &off_100222F48;
  *(a1 + 968) = &type metadata for CasinoDog;
  *(a1 + 976) = &off_1002179A0;
  *(a1 + 1008) = v13;
  *(a1 + 1016) = &off_100223858;
  *(a1 + 984) = v12;
  *(a1 + 600) = 0x74735F6E656B6F74;
  *(a1 + 608) = 0xEB0000000065726FLL;
  *(a1 + 616) = v15;
  *(a1 + 624) = 0xD000000000000010;
  *(a1 + 632) = 0x80000001001CB320;
  *(a1 + 640) = v15;
  *(a1 + 648) = 0xD000000000000012;
  *(a1 + 656) = 0x80000001001CB340;
  *(a1 + 664) = v15;
  *(a1 + 672) = 0xD000000000000014;
  *(a1 + 680) = 0x80000001001CB360;
  *(a1 + 688) = v15;
  *(a1 + 696) = 0xD000000000000018;
  *(a1 + 704) = 0x80000001001CB380;
  *(a1 + 712) = v15;
  *(a1 + 720) = 0x63616274736F6867;
  *(a1 + 728) = 0xEF65726F74735F6BLL;
  *(a1 + 736) = v15;
  v21 = &type metadata for AMSDogBag;
  v22 = &off_100222F48;
  sub_1000C2030(v20, v19);
  v16 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v15, v19, 0);
  result = sub_1000C208C(v20);
  *(a1 + 1024) = v16;
  return result;
}

uint64_t sub_1000FC8B4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FC974, 0, 0);
}

uint64_t sub_1000FC974(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Trying to trigger fetch", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[6] = v12;
  *v12 = v1;
  v12[1] = sub_1000FCAC0;

  return sub_100111D78();
}

uint64_t sub_1000FCAC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FCBD0(uint64_t a1, uint64_t a2)
{
  v3[100] = v2;
  v3[99] = a2;
  v3[98] = a1;
  updated = type metadata accessor for PostbackUpdateData(0);
  v3[101] = updated;
  v5 = *(updated - 8);
  v3[102] = v5;
  v3[103] = *(v5 + 64);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[106] = v6;
  v3[107] = *(v6 - 8);
  v3[108] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[109] = v7;
  v3[110] = *(v7 - 8);
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000FCD70, 0, 0);
}

uint64_t sub_1000FCD70()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FED98();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v2 = *(v0 + 896);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);

  *(v0 + 904) = *(v0 + 616);
  *(v0 + 1008) = *(v0 + 624);
  v5 = *(v0 + 632);
  v6 = *(v0 + 640);
  *(v0 + 912) = v6;
  v7 = *(v0 + 648);
  v8 = *(v0 + 656);
  *(v0 + 920) = v8;
  v9 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 928) = v9;
  v10 = *(v3 + 16);
  *(v0 + 936) = v10;
  *(v0 + 944) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v9, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[Testing service] Updating postback.", v13, 2u);
  }

  v14 = *(v0 + 896);
  v15 = *(v0 + 880);
  v16 = *(v0 + 872);

  v17 = *(v15 + 8);
  *(v0 + 952) = v17;
  v17(v14, v16);

  sub_1000B7694(v7, v8, (v0 + 664));
  sub_1000FEDEC(v0 + 664, v0 + 704);
  v18 = *(v0 + 728);
  if (v18)
  {
    v19 = *(v0 + 736);
    sub_10000DA7C((v0 + 704), *(v0 + 728));
    *(v0 + 960) = (*(v19 + 16))(v18, v19);
    sub_10000DB58((v0 + 704));
    v20 = swift_task_alloc();
    *(v0 + 968) = v20;
    *v20 = v0;
    v20[1] = sub_1000FD0EC;

    return sub_100128E9C(v5, v6);
  }

  else
  {

    sub_10000DAF8(v0 + 704, &qword_10023A7E0, &qword_1001B5850);
    sub_1000D5894(v0 + 664);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1000FD0EC(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 976) = a1;
  *(v4 + 1009) = a2;

  if (v2)
  {
    *(v4 + 1000) = v2;
    v5 = sub_1000FD810;
  }

  else
  {
    v5 = sub_1000FD214;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000FD214(uint64_t a1)
{
  v2 = *(v1 + 904);
  static Date.now.getter();
  if (v2 < 0x40)
  {
    v8 = *(v1 + 1009);
    v9 = *(v1 + 976);
    v33 = *(v1 + 936);
    v10 = *(v1 + 928);
    v11 = *(v1 + 1008);
    v12 = *(v1 + 904);
    v13 = *(v1 + 888);
    v14 = *(v1 + 872);
    v15 = *(v1 + 840);
    v16 = *(v1 + 808);
    (*(*(v1 + 856) + 16))(v15 + *(v16 + 32), *(v1 + 864), *(v1 + 848));
    *v15 = v12;
    *(v15 + 8) = v11;
    *(v15 + 9) = 0;
    *(v15 + 16) = 0;
    v17 = v15 + *(v16 + 36);
    *v17 = v9;
    *(v17 + 8) = v8 & 1;
    v33(v13, v10, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Queueing update postback", v20, 2u);
    }

    v21 = *(v1 + 952);
    v22 = *(v1 + 888);
    v23 = *(v1 + 872);
    v24 = *(v1 + 840);
    v25 = *(v1 + 832);
    v34 = *(v1 + 960);
    v26 = *(v1 + 816);
    v27 = *(v1 + 800);

    v21(v22, v23);
    sub_10003FD38(v27, v1 + 16);
    sub_10003FD94(v24, v25);
    v28 = (*(v26 + 80) + 624) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v1 + 984) = v29;
    memcpy((v29 + 16), (v1 + 16), 0x258uLL);
    *(v29 + 616) = v34;
    sub_10003FFB8(v25, v29 + v28);
    sub_10000DA7C((v27 + 272), *(v27 + 296));
    *(v1 + 768) = sub_10000CDE0(&qword_10023A970, &qword_1001B5EF8);
    *(v1 + 776) = sub_100040104();
    *(v1 + 744) = &unk_1001B5EF0;
    *(v1 + 752) = v29;
    v30 = type metadata accessor for TaskGreyhound(0);

    v31 = swift_task_alloc();
    *(v1 + 992) = v31;
    *v31 = v1;
    v31[1] = sub_1000FD60C;

    return (sub_10000C9BC)(v1 + 744, v30, &off_1002169F0);
  }

  else
  {
    v3 = *(v1 + 864);
    v4 = *(v1 + 856);
    v5 = *(v1 + 848);
    sub_1000401C4();
    v6 = swift_allocError();
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 6;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
    *(v1 + 1000) = v6;

    return _swift_task_switch(sub_1000FD810, 0, 0);
  }
}

uint64_t sub_1000FD60C()
{
  v1 = *v0;

  sub_10000DB58((v1 + 744));

  return _swift_task_switch(sub_1000FD710, 0, 0);
}

uint64_t sub_1000FD710()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  sub_100040168(v4);
  (*(v2 + 8))(v1, v3);
  sub_1000D5894((v0 + 83));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000FD810()
{

  sub_1000D5894(v0 + 664);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FD8D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD990, 0, 0);
}

uint64_t sub_1000FD990(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Testing service] Getting snout stories.", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[6] = v12;
  *v12 = v1;
  v12[1] = sub_1000FDAE4;

  return sub_10016D320();
}

uint64_t sub_1000FDAE4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1000FDC0C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FDCCC, 0, 0);
}

uint64_t sub_1000FDCCC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetch reengagement tokens", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[6] = v12;
  *v12 = v1;
  v12[1] = sub_100027F24;

  return sub_1000D0340();
}

uint64_t sub_1000FDE20(uint64_t a1, uint64_t a2)
{
  v2[79] = a2;
  v2[78] = a1;
  v3 = type metadata accessor for Logger();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(sub_1000FDEFC, 0, 0);
}

uint64_t sub_1000FDEFC(uint64_t a1)
{
  v37 = v1;
  v2 = *(v1 + 672);
  v3 = *(v1 + 648);
  v4 = *(v1 + 640);
  v5 = Logger.postback.unsafeMutableAddressor();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Submit conversion event", v9, 2u);
  }

  v10 = *(v1 + 672);
  v11 = *(v1 + 648);
  v12 = *(v1 + 640);

  v35 = *(v11 + 8);
  v35(v10, v12);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FEC94();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v13 = *(v1 + 640);
  v14 = *(v1 + 664);

  v15 = *(v1 + 128);
  *(v1 + 264) = *(v1 + 112);
  *(v1 + 280) = v15;
  *(v1 + 296) = *(v1 + 144);
  *(v1 + 312) = *(v1 + 160);
  v16 = *(v1 + 64);
  *(v1 + 200) = *(v1 + 48);
  *(v1 + 216) = v16;
  v17 = *(v1 + 96);
  *(v1 + 232) = *(v1 + 80);
  *(v1 + 248) = v17;
  v18 = *(v1 + 32);
  *(v1 + 168) = *(v1 + 16);
  *(v1 + 184) = v18;
  v6(v14, v5, v13);
  sub_1000FECE8(v1 + 168, v1 + 320);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1000FED44(v1 + 168);
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v1 + 664);
  v23 = *(v1 + 640);
  if (v21)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = *(v1 + 280);
    *(v1 + 568) = *(v1 + 264);
    *(v1 + 584) = v26;
    *(v1 + 600) = *(v1 + 296);
    *(v1 + 616) = *(v1 + 312);
    v27 = *(v1 + 216);
    *(v1 + 504) = *(v1 + 200);
    *(v1 + 520) = v27;
    v28 = *(v1 + 248);
    *(v1 + 536) = *(v1 + 232);
    *(v1 + 552) = v28;
    v29 = *(v1 + 184);
    *(v1 + 472) = *(v1 + 168);
    *(v1 + 488) = v29;
    v30 = String.init<A>(describing:)();
    v32 = sub_10017AD04(v30, v31, &v36);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "Conversion event: %s", v24, 0xCu);
    sub_10000DB58(v25);
  }

  else
  {
    sub_1000FED44(v1 + 168);
  }

  v35(v22, v23);

  v33 = *(v1 + 8);

  return v33();
}

uint64_t sub_1000FE3BC(uint64_t a1, uint64_t a2)
{
  v2[58] = a1;
  v2[59] = a2;
  v3 = type metadata accessor for Logger();
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE494, 0, 0);
}

uint64_t sub_1000FE494(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 512);
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = Logger.postback.unsafeMutableAddressor();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Submit purchase event", v9, 2u);
  }

  v10 = *(v1 + 512);
  v11 = *(v1 + 480);
  v12 = *(v1 + 488);

  v33 = *(v12 + 8);
  v33(v10, v11);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FEB90();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v13 = *(v1 + 480);
  v14 = *(v1 + 504);

  v15 = *(v1 + 96);
  *(v1 + 192) = *(v1 + 80);
  *(v1 + 208) = v15;
  *(v1 + 217) = *(v1 + 105);
  v16 = *(v1 + 32);
  *(v1 + 128) = *(v1 + 16);
  *(v1 + 144) = v16;
  v17 = *(v1 + 64);
  *(v1 + 160) = *(v1 + 48);
  *(v1 + 176) = v17;
  v6(v14, v5, v13);
  sub_1000FEBE4(v1 + 128, v1 + 240);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_1000FEC40(v1 + 128);
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v1 + 504);
  v22 = *(v1 + 480);
  if (v20)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    v25 = *(v1 + 208);
    *(v1 + 416) = *(v1 + 192);
    *(v1 + 432) = v25;
    *(v1 + 441) = *(v1 + 217);
    v26 = *(v1 + 144);
    *(v1 + 352) = *(v1 + 128);
    *(v1 + 368) = v26;
    v27 = *(v1 + 176);
    *(v1 + 384) = *(v1 + 160);
    *(v1 + 400) = v27;
    v28 = String.init<A>(describing:)();
    v30 = sub_10017AD04(v28, v29, &v34);

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Purchase event: %s", v23, 0xCu);
    sub_10000DB58(v24);
  }

  else
  {
    sub_1000FEC40(v1 + 128);
  }

  v33(v21, v22);

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_1000FE914(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE9D4, 0, 0);
}

uint64_t sub_1000FE9D4(uint64_t a1)
{
  v21 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v1[5];
    v8 = v1[6];
    v11 = v1[3];
    v10 = v1[4];
    v12 = v1[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10017AD04(v12, v11, &v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "Clear biome for event: %s", v13, 0xCu);
    sub_10000DB58(v14);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v1[5];
    v15 = v1[6];
    v17 = v1[4];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v1[1];

  return v18();
}

unint64_t sub_1000FEB90()
{
  result = qword_10023D338;
  if (!qword_10023D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D338);
  }

  return result;
}

unint64_t sub_1000FEC94()
{
  result = qword_10023D340;
  if (!qword_10023D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D340);
  }

  return result;
}

unint64_t sub_1000FED98()
{
  result = qword_10023D348;
  if (!qword_10023D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D348);
  }

  return result;
}

uint64_t sub_1000FEDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A7E0, &qword_1001B5850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEE5C()
{
  v1 = (type metadata accessor for PostbackUpdateData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 624) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000DB58((v0 + 184));

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));

  v5 = v1[10];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000FF01C()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FF054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  v13[0] = 0x696C702E6F666E49;
  v13[1] = 0xEA00000000007473;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10003E5C8();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1000FF24C()
{
  v1 = [*v0 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000FF2AC()
{
  v1 = [*v0 iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  return v2;
}

uint64_t sub_1000FF2FC()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000FF364()
{
  v1 = [*v0 iTunesMetadata];
  v2 = [v1 distributorInfo];

  v3 = [v2 distributorID];
  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000FF410(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF57C, 0, 0);
}

uint64_t sub_1000FF57C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001B884(*(v0 + 176));
    sub_1000FFE84();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v5 = *(v0 + 144);
    (*(*(v0 + 192) + 32))(*(v0 + 216), *(v0 + 176), *(v0 + 184));
    v27 = v5[1];
    v28 = *v5;
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 88) = v28;
    *(v0 + 104) = v27;
    *(v0 + 120) = v6;
    *(v0 + 128) = v7;
    sub_1000FFED8();
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 224) = v8;
    *(v0 + 232) = v9;
    v10 = *(v0 + 216);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    *&v28 = v8;
    v17 = v9;

    v18 = *(v16 + 16);
    v18(v13, v10, v15);
    v18(v14, v13, v15);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_1000438D8(v28, v17);
    URLRequest.httpBody.setter();
    v19._countAndFlagsBits = 0x2D746E65746E6F43;
    v19._object = 0xEC00000065707954;
    v20.value._object = 0x80000001001CB610;
    v20.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v20, v19);
    v21 = *(v16 + 8);
    *(v0 + 240) = v21;
    *(v0 + 248) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v13, v15);
    v22.value._countAndFlagsBits = sub_1000A2780();
    v23._countAndFlagsBits = 0x6567412D72657355;
    v23._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v22, v23);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    v24 = sub_1000A2858();
    *(v0 + 256) = v24;
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_1000FF924;
    v26 = *(v0 + 168);

    return sub_1000A2B84(v26, v24);
  }
}

uint64_t sub_1000FF924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = a3;
  v5[37] = v3;

  if (v3)
  {
    v6 = sub_1000FFD8C;
  }

  else
  {
    v6 = sub_1000FFA3C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FFA3C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  (*(v3 + 8))(v2, v4);
  if ([v1 statusCode] != 200)
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000DAC0(v13, qword_10023FC88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Token exchange call has failed", v16, 2u);
    }

    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    v31 = *(v0 + 240);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 216);
    v23 = *(v0 + 184);

    sub_1000FFE84();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    sub_10001BABC(v19, v17);
    sub_10001BABC(v21, v20);
    v31(v22, v23);
    goto LABEL_9;
  }

  v5 = *(v0 + 296);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100101D44();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v6 = v5;
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  if (v6)
  {
    (v10)(*(v0 + 216), *(v0 + 184));

    sub_10001BABC(v9, v7);
    sub_10001BABC(v12, v11);
LABEL_9:

    v25 = *(v0 + 8);
    goto LABEL_10;
  }

  v27 = *(v0 + 136);
  v10();

  sub_10001BABC(v9, v7);
  sub_10001BABC(v12, v11);
  *v27 = *(v0 + 16);
  v28 = *(v0 + 32);
  v29 = *(v0 + 48);
  v30 = *(v0 + 64);
  *(v27 + 64) = *(v0 + 80);
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  *(v27 + 16) = v28;

  v25 = *(v0 + 8);
LABEL_10:

  return v25();
}

uint64_t sub_1000FFD8C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);

  (*(v7 + 8))(v6, v8);
  sub_10001BABC(v3, v1);
  v2(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1000FFE84()
{
  result = qword_10023D350;
  if (!qword_10023D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D350);
  }

  return result;
}

unint64_t sub_1000FFED8()
{
  result = qword_10023D358;
  if (!qword_10023D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D358);
  }

  return result;
}

uint64_t sub_1000FFF2C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D370, &qword_1001C09C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100101FBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 24);
    v12 = *(v3 + 40);
    v10[15] = 2;
    sub_100102010();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100100114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_10000CDE0(&qword_10023D418, &qword_1001C0E30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000DA7C(a1, a1[3]);
  sub_100102E44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001002A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D3C8, &qword_1001C09E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001028AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v12 = 0;
  sub_100102A34();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 8);
    v12 = 2;
    sub_10000CDE0(&qword_10023D3A0, &qword_1001C09D8);
    sub_100102A88(&qword_10023D3D8, sub_100102B00, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001004EC(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023D450, &qword_1001C0E50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_1001031FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10010068C(uint64_t a1)
{
  *(v2 + 136) = a1;
  v3 = v1[1];
  *(v2 + 88) = *v1;
  *(v2 + 104) = v3;
  *(v2 + 120) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_10010073C;

  return sub_1000FF410(v2 + 16);
}

uint64_t sub_10010073C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 136);
    *v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    *(v4 + 64) = *(v2 + 80);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_100100864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564692D6D657469;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E692D6E656B6F74;
    v4 = 0xEA00000000006F66;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6582128;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x6564692D6D657469;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E692D6E656B6F74;
    v8 = 0xEA00000000006F66;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6582128;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100100980()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100A2C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100100AC4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100100B6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100102064(*a1);
  *a2 = result;
  return result;
}

void sub_100100B9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564692D6D657469;
  if (v2 != 1)
  {
    v5 = 0x6E692D6E656B6F74;
    v4 = 0xEA00000000006F66;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6582128;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100100C04()
{
  v1 = 0x6564692D6D657469;
  if (*v0 != 1)
  {
    v1 = 0x6E692D6E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6582128;
  }
}

unint64_t sub_100100C68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100102064(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100100C90(uint64_t a1)
{
  v2 = sub_100101FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100100CCC(uint64_t a1)
{
  v2 = sub_100101FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100100D08@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001020FC(a2, v6);
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

uint64_t sub_100100D64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x2D6465646E696C62;
  }

  if (v2)
  {
    v4 = 0xEF746E656D656C65;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x6D617473656D6974;
  }

  else
  {
    v5 = 0x2D6465646E696C62;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xEF746E656D656C65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100100E1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100EB0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100100F30(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100100FCC(uint64_t *a1@<X8>)
{
  v2 = 0x2D6465646E696C62;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xEF746E656D656C65;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10010101C()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x2D6465646E696C62;
  }
}

uint64_t sub_100101074(uint64_t a1)
{
  v2 = sub_100102E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001010B0(uint64_t a1)
{
  v2 = sub_100102E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001010EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100102334(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10010113C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x2D7972746E756F63;
  v4 = 0xEC00000065646F63;
  if (v2 != 1)
  {
    v3 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E692D6E656B6F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006F66;
  }

  v7 = 0x2D7972746E756F63;
  v8 = 0xEC00000065646F63;
  if (*a2 != 1)
  {
    v7 = 0x65722D726F727265;
    v8 = 0xEF7365736E6F7073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E692D6E656B6F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006F66;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100101268()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100101324(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001013CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101484@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001020B0(*a1);
  *a2 = result;
  return result;
}

void sub_1001014B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F66;
  v4 = 0xEC00000065646F63;
  v5 = 0x2D7972746E756F63;
  if (v2 != 1)
  {
    v5 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E692D6E656B6F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10010152C()
{
  v1 = 0x2D7972746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x65722D726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E692D6E656B6F74;
  }
}

unint64_t sub_1001015A0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001020B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001015C8(uint64_t a1)
{
  v2 = sub_1001028AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101604(uint64_t a1)
{
  v2 = sub_1001028AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100101640@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10010250C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1001016AC()
{
  v1 = 0x666F6F7270;
  if (*v0 != 1)
  {
    v1 = 0x6369666974726563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656D656C65;
  }
}

uint64_t sub_10010170C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100102E98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100101734(uint64_t a1)
{
  v2 = sub_1001031FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101770(uint64_t a1)
{
  v2 = sub_1001031FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001017AC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100102FB0(a2, v6);
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

uint64_t sub_100101808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000CDE0(&qword_10023D458, &qword_1001C0E58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000DA7C(a1, a1[3]);
  sub_100103434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10010199C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 0x737574617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 0x737574617473;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100101A3C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100101AB8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100101B20(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100101BA4(uint64_t *a1@<X8>)
{
  v2 = 0x737574617473;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100101BDC()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_100101C1C@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100101C7C(uint64_t a1)
{
  v2 = sub_100103434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101CB8(uint64_t a1)
{
  v2 = sub_100103434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101CF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100103250(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_100101D44()
{
  result = qword_10023D360;
  if (!qword_10023D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D360);
  }

  return result;
}

uint64_t sub_100101DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100101E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100101E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100101EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100101F14(uint64_t a1)
{
  result = sub_10005CBB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100101F3C(uint64_t a1)
{
  result = sub_1000FFE84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100101F68()
{
  result = qword_10023D368;
  if (!qword_10023D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D368);
  }

  return result;
}

unint64_t sub_100101FBC()
{
  result = qword_10023D378;
  if (!qword_10023D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D378);
  }

  return result;
}

unint64_t sub_100102010()
{
  result = qword_10023D380;
  if (!qword_10023D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D380);
  }

  return result;
}

unint64_t sub_100102064(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215B40, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001020B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215CF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001020FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D3B8, &qword_1001C09E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100101FBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v17) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v17) = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 2;
  sub_1001029E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v17;
  v13 = v18;
  result = sub_10000DB58(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_100102334(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023D448, &qword_1001C0E48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100102E44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

uint64_t sub_10010250C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D388, &qword_1001C09D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001028AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v30) = 0;
  sub_100102900();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v35;
  v29 = v36;
  v25 = v37;
  v28 = v38;
  v9 = v39;
  v27 = v40;
  LOBYTE(v35) = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v9;
  v24 = v10;
  sub_10000CDE0(&qword_10023D3A0, &qword_1001C09D8);
  v44[0] = 2;
  sub_100102A88(&qword_10023D3A8, sub_100102954, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v21 = v45;
  v11 = v26;
  v13 = v28;
  v12 = v29;
  *&v30 = v26;
  *(&v30 + 1) = v29;
  v14 = v25;
  *&v31 = v25;
  *(&v31 + 1) = v28;
  v15 = v27;
  *&v32 = v23;
  *(&v32 + 1) = v27;
  v16 = v24;
  *&v33 = v22;
  *(&v33 + 1) = v24;
  v34 = v45;
  sub_1001029A8(&v30, &v35);
  sub_10000DB58(a1);
  v35 = v11;
  v36 = v12;
  v37 = v14;
  v38 = v13;
  v39 = v23;
  v40 = v15;
  v41 = v22;
  v42 = v16;
  v43 = v21;
  result = sub_10005CADC(&v35);
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  *(a2 + 64) = v34;
  v19 = v31;
  *a2 = v30;
  *(a2 + 16) = v19;
  return result;
}

unint64_t sub_1001028AC()
{
  result = qword_10023D390;
  if (!qword_10023D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D390);
  }

  return result;
}

unint64_t sub_100102900()
{
  result = qword_10023D398;
  if (!qword_10023D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D398);
  }

  return result;
}

unint64_t sub_100102954()
{
  result = qword_10023D3B0;
  if (!qword_10023D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3B0);
  }

  return result;
}

unint64_t sub_1001029E0()
{
  result = qword_10023D3C0;
  if (!qword_10023D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3C0);
  }

  return result;
}

unint64_t sub_100102A34()
{
  result = qword_10023D3D0;
  if (!qword_10023D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3D0);
  }

  return result;
}

uint64_t sub_100102A88(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023D3A0, &qword_1001C09D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100102B00()
{
  result = qword_10023D3E0;
  if (!qword_10023D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3E0);
  }

  return result;
}

uint64_t sub_100102B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100102BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100102C38()
{
  result = qword_10023D3E8;
  if (!qword_10023D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3E8);
  }

  return result;
}

unint64_t sub_100102C90()
{
  result = qword_10023D3F0;
  if (!qword_10023D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3F0);
  }

  return result;
}

unint64_t sub_100102CE8()
{
  result = qword_10023D3F8;
  if (!qword_10023D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3F8);
  }

  return result;
}

unint64_t sub_100102D40()
{
  result = qword_10023D400;
  if (!qword_10023D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D400);
  }

  return result;
}

unint64_t sub_100102D98()
{
  result = qword_10023D408;
  if (!qword_10023D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D408);
  }

  return result;
}

unint64_t sub_100102DF0()
{
  result = qword_10023D410;
  if (!qword_10023D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D410);
  }

  return result;
}

unint64_t sub_100102E44()
{
  result = qword_10023D420;
  if (!qword_10023D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D420);
  }

  return result;
}

uint64_t sub_100102E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666F6F7270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100102FB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D428, &qword_1001C0E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1001031FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000DB58(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_1001031FC()
{
  result = qword_10023D430;
  if (!qword_10023D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D430);
  }

  return result;
}

uint64_t sub_100103250(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023D438, &qword_1001C0E40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100103434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

unint64_t sub_100103434()
{
  result = qword_10023D440;
  if (!qword_10023D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D440);
  }

  return result;
}

unint64_t sub_1001034BC()
{
  result = qword_10023D460;
  if (!qword_10023D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D460);
  }

  return result;
}

unint64_t sub_100103514()
{
  result = qword_10023D468;
  if (!qword_10023D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D468);
  }

  return result;
}

unint64_t sub_10010356C()
{
  result = qword_10023D470;
  if (!qword_10023D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D470);
  }

  return result;
}

unint64_t sub_1001035C4()
{
  result = qword_10023D478;
  if (!qword_10023D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D478);
  }

  return result;
}

unint64_t sub_10010361C()
{
  result = qword_10023D480;
  if (!qword_10023D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D480);
  }

  return result;
}

unint64_t sub_100103674()
{
  result = qword_10023D488;
  if (!qword_10023D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D488);
  }

  return result;
}

unint64_t sub_1001036CC()
{
  result = qword_10023D490;
  if (!qword_10023D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D490);
  }

  return result;
}

unint64_t sub_100103724()
{
  result = qword_10023D498;
  if (!qword_10023D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D498);
  }

  return result;
}

unint64_t sub_10010377C()
{
  result = qword_10023D4A0;
  if (!qword_10023D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D4A0);
  }

  return result;
}

void sub_1001037D8(uint64_t a1, uint64_t a2)
{
  v3 = [v2 connection];
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100086F10(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_100103A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v18[11] = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 isNullPredicateWithProperty:v11];

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v14 = [v2 connection];
  v15 = v13;
  v16 = sub_100085138(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  v17 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  v18[2] = a2;
  sub_1000349A0(sub_1001048FC, v18, v16);

  if (v3)
  {
    sub_100104890(a2);
  }
}

void sub_100103CC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = [v3 connection];
  v9 = String._bridgeToObjectiveC()();
  v14[4] = a1;
  v14[5] = a2;

  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() predicateWithProperty:v9 equalToValue:v10];
  swift_unknownObjectRelease();

  v12 = sub_100085138(v8, v11, _swiftEmptyArrayStorage, 0, 0);
  v13 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  v14[2] = a3;
  sub_1000349A0(sub_100104888, v14, v12);

  if (v4)
  {
    sub_100104890(a3);
  }
}

void sub_100103E58()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v20) = 0;
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  Date.timeIntervalSince1970.getter();
  v9 = v8 * 1000.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 predicateWithProperty:v10 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 isNullPredicateWithProperty:v13];

  *(inited + 48) = v14;
  v15 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v16 = [v2 connection];
  v17 = v15;
  v18 = sub_100085138(v16, v15, _swiftEmptyArrayStorage, 0, 0);
  v20 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v18);
  v19[2] = &v20;
  sub_1000349A0(sub_1001048F8, v19, v18);

  if (v1)
  {
  }
}

void sub_100104190()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v20) = 0;
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 isNotNullPredicateWithProperty:v9];

  *(inited + 40) = v10;
  Date.timeIntervalSince1970.getter();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [v6 predicateWithProperty:v13 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 48) = v14;
  v15 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v16 = [v2 connection];
  v17 = v15;
  v18 = sub_100085138(v16, v15, _swiftEmptyArrayStorage, 0, 0);
  v20 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v18);
  v19[2] = &v20;
  sub_1000349A0(sub_100104880, v19, v18);

  if (v1)
  {
  }
}

void *sub_100104524(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, void *, void *))
{
  v9 = [v4 connection];
  v10 = a2();
  v13[2] = &v14;
  v14 = _swiftEmptyArrayStorage;
  a4(a3, v13, v10);

  v11 = v14;
  if (v5)
  {
  }

  return v11;
}

id sub_100104688(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SnoutDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_1001046E0(__n128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[13];
  v41 = a1[12];
  v42 = v5;
  v43 = a1[14];
  v6 = a1[9];
  v37 = a1[8];
  v38 = v6;
  v7 = a1[11];
  v39 = a1[10];
  v40 = v7;
  v8 = a1[5];
  v33 = a1[4];
  v34 = v8;
  v9 = a1[7];
  v35 = a1[6];
  v36 = v9;
  v10 = a1[1];
  v29 = *a1;
  v30 = v10;
  v11 = a1[3];
  v31 = a1[2];
  v32 = v11;
  v12 = *a4;
  sub_100104824(&v29, &v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100088D10(0, *(v12 + 2) + 1, 1, v12);
    *a4 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100088D10((v14 > 1), v15 + 1, 1, v12);
    *a4 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[240 * v15];
  v17 = v29;
  v18 = v31;
  *(v16 + 3) = v30;
  *(v16 + 4) = v18;
  *(v16 + 2) = v17;
  v19 = v32;
  v20 = v33;
  v21 = v35;
  *(v16 + 7) = v34;
  *(v16 + 8) = v21;
  *(v16 + 5) = v19;
  *(v16 + 6) = v20;
  v22 = v36;
  v23 = v37;
  v24 = v39;
  *(v16 + 11) = v38;
  *(v16 + 12) = v24;
  *(v16 + 9) = v22;
  *(v16 + 10) = v23;
  result = v40;
  v26 = v41;
  v27 = v43;
  *(v16 + 15) = v42;
  *(v16 + 16) = v27;
  *(v16 + 13) = result;
  *(v16 + 14) = v26;
  return result;
}

uint64_t sub_100104890(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100104900(uint64_t a1, uint64_t a2)
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

uint64_t sub_10010491C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001049C4(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = [v1 connection];
  v6 = v4;
  v7 = sub_10008692C(v5, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_100104D90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversionTagEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100104DEC()
{
  result = qword_10023D560;
  if (!qword_10023D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D560);
  }

  return result;
}

void sub_100104E40()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100086658(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_1001050C0()
{
  result = qword_10023D5A8;
  if (!qword_10023D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5A8);
  }

  return result;
}

Swift::Int sub_100105138()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001C1570[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001051C0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001C1570[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10010520C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100105470(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10010527C(void *a1)
{
  a1[1] = sub_1001052B4();
  a1[2] = sub_100105308();
  result = sub_10010535C();
  a1[3] = result;
  return result;
}

unint64_t sub_1001052B4()
{
  result = qword_10023D5F0;
  if (!qword_10023D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5F0);
  }

  return result;
}

unint64_t sub_100105308()
{
  result = qword_10023D5F8;
  if (!qword_10023D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5F8);
  }

  return result;
}

unint64_t sub_10010535C()
{
  result = qword_10023D600;
  if (!qword_10023D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D600);
  }

  return result;
}

unint64_t sub_1001053B4()
{
  result = qword_10023D608;
  if (!qword_10023D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D608);
  }

  return result;
}

unint64_t sub_10010540C()
{
  result = qword_10023D610;
  if (!qword_10023D610)
  {
    sub_10000CCC0(&qword_10023D618, &qword_1001C1510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D610);
  }

  return result;
}

uint64_t sub_100105470(uint64_t result)
{
  if (result <= 17999)
  {
    if (!result)
    {
      return result;
    }

    if (result == 17400)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 18400:
        return 4;
      case 18001:
        return 3;
      case 18000:
        return 2;
    }
  }

  return 5;
}

uint64_t sub_1001054D8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(188);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._object = 0x80000001001CA000;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x52454745544E4920;
  v8._object = 0xEA00000000000A2CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001001CA900;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001001CA920;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x656B636F6C5F7369;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA00000000000A2CLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x7265747369676572;
  v15._object = 0xEA00000000006465;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA620;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEA00000000000A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x80000001001CA960;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x52454745544E4920;
  v20._object = 0xEA00000000000A2CLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6D69745F6B636F6CLL;
  v21._object = 0xEE00706D61747365;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x52454745544E4920;
  v22._object = 0xEA00000000000A2CLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x69745F6863746566;
  v23._object = 0xEF706D617473656DLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x52454745544E4920;
  v24._object = 0xEA00000000000A2CLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x63616274736F6867;
  v25._object = 0xEC00000064695F6BLL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xA2C5458455420;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6C7074656B72616DLL;
  v27._object = 0xEE0064695F656361;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x550A2C5458455420;
  v28._object = 0xEE0028455551494ELL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x63616274736F6867;
  v29._object = 0xEC00000064695F6BLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000018;
  v30._object = 0x80000001001CB550;
  String.append(_:)(v30);
  return 0;
}

void sub_100105830(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for GhostbackEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._object = 0xEF657079745F6E6FLL;
  v9._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(37);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x4C4F432044444120;
  v17._object = 0xEC000000204E4D55;
  String.append(_:)(v17);
  v18._object = 0x80000001001CAA20;
  v18._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4E41454C4F4F4220;
  v19._object = 0xE90000000000003BLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v20);

  _StringGuts.grow(_:)(23);

  v21 = [v2 databaseTable];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x205445530ALL;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x69737265766E6F63;
  v27._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 656424224;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x64616F6C6E776F64;
  v29._object = 0xE800000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v31);

  _StringGuts.grow(_:)(20);

  v32 = [v2 databaseTable];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x205445530ALL;
  v37._object = 0xE500000000000000;
  String.append(_:)(v37);
  v38._object = 0x80000001001CAA20;
  v38._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 807419168;
  v39._object = 0xE400000000000000;
  String.append(_:)(v39);
  v40 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v40);
}

void sub_100105C54(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for GhostbackEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(24);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x205445530ALL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D6E6F7269766E65;
  v18._object = 0xEB00000000746E65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 656424224;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x69746375646F7270;
  v20._object = 0xEA00000000006E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 15143;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v22);
}

void sub_100105EC0(uint64_t a1)
{
  _StringGuts.grow(_:)(37);

  v2 = [type metadata accessor for GhostbackEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x4C4F432044444120;
  v7._object = 0xEC000000204E4D55;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x69737265766E6F63;
  v8._object = 0xEE006761745F6E6FLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x52454745544E4920;
  v9._object = 0xE90000000000003BLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v10);
}

void sub_100106018(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_100105830(a2);
    }

    else
    {
      v3 = [type metadata accessor for GhostbackEntity() databaseTable];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_1001054D8(v4, v6);

      v7 = String._bridgeToObjectiveC()();

      sub_1001ACB3C(a2, v7);
    }
  }

  else if (a1 == 2)
  {
    sub_100105C54(a2);
  }

  else if (a1 == 3)
  {
    sub_100105EC0(a2);
  }
}

uint64_t sub_100106118(uint64_t a1)
{
  v2[322] = v1;
  v2[321] = a1;
  v3 = type metadata accessor for Logger();
  v2[323] = v3;
  v2[324] = *(v3 - 8);
  v2[325] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[326] = v4;
  v2[327] = *(v4 - 8);
  v2[328] = swift_task_alloc();
  v2[329] = swift_task_alloc();

  return _swift_task_switch(sub_100106244, 0, 0);
}

uint64_t sub_100106244()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v1[3];
  v0[330] = v3;
  v4 = v1[4];
  v0[331] = v4;
  v5 = v1[5];
  v0[332] = v5;
  v6 = swift_allocObject();
  v0[333] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[334] = v7;
  *v7 = v0;
  v7[1] = sub_100106358;

  return sub_10010F818(sub_10014A92C, v6, v3, v4, v5);
}

uint64_t sub_100106358(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2680) = a1;
  *(v3 + 2688) = v1;

  if (v1)
  {
    v4 = sub_100108838;
  }

  else
  {
    v4 = sub_100106498;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100106498()
{
  v1 = *(v0 + 2680);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1200);
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 144 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v8 = v6[5];
        v9 = v6[6];
        v10 = v6[8];
        *(v0 + 1312) = v6[7];
        *(v0 + 1328) = v10;
        *(v0 + 1280) = v8;
        *(v0 + 1296) = v9;
        *v4 = *v6;
        v11 = v6[1];
        v12 = v6[2];
        v13 = v6[4];
        *(v0 + 1248) = v6[3];
        *(v0 + 1264) = v13;
        *(v0 + 1216) = v11;
        *(v0 + 1232) = v12;
        v3 = v7 + 1;
        if (*(v0 + 1288))
        {
          break;
        }

        v6 += 9;
        ++v7;
        if (v2 == v3)
        {
          goto LABEL_13;
        }
      }

      v42 = v5;
      sub_100070EEC(v0 + 1200, v0 + 1344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100147140(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100147140((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[18 * v15];
      v16[2] = *v4;
      v17 = *(v0 + 1216);
      v18 = *(v0 + 1232);
      v19 = *(v0 + 1264);
      v16[5] = *(v0 + 1248);
      v16[6] = v19;
      v16[3] = v17;
      v16[4] = v18;
      v20 = *(v0 + 1280);
      v21 = *(v0 + 1296);
      v22 = *(v0 + 1328);
      v16[9] = *(v0 + 1312);
      v16[10] = v22;
      v16[7] = v20;
      v16[8] = v21;
      v5 = v42;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
  *(v0 + 2696) = _swiftEmptyArrayStorage;

  v23 = _swiftEmptyArrayStorage[2];
  *(v0 + 2704) = v23;
  if (v23)
  {
    *(v0 + 2712) = 0;
    v24 = *(v0 + 2696);
    if (*(v24 + 16))
    {
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      v27 = *(v24 + 80);
      *(v0 + 1552) = *(v24 + 96);
      v28 = *(v24 + 112);
      v29 = *(v24 + 128);
      v30 = *(v24 + 160);
      *(v0 + 1600) = *(v24 + 144);
      *(v0 + 1616) = v30;
      *(v0 + 1568) = v28;
      *(v0 + 1584) = v29;
      *(v0 + 1536) = v27;
      v31 = *(v24 + 32);
      *(v0 + 1504) = v25;
      *(v0 + 1520) = v26;
      *(v0 + 1488) = v31;
      v32 = *(v0 + 1552);
      *(v0 + 2720) = v32;
      v33 = *(v0 + 1544);
      sub_100070EEC(v0 + 1488, v0 + 1632);

      v34 = swift_task_alloc();
      *(v0 + 2728) = v34;
      *v34 = v0;
      v34[1] = sub_100106808;

      sub_1001260DC(v33, v32, 0);
    }

    else
    {
LABEL_22:
      __break(1u);
    }
  }

  else
  {
    v35 = *(v0 + 2576);
    v36 = *(v0 + 2568);

    v37 = *v35;
    *(v0 + 2744) = *v35;
    v38 = v35[1];
    *(v0 + 2752) = v38;
    v39 = v35[2];
    *(v0 + 2760) = v39;
    v40 = swift_allocObject();
    *(v0 + 2768) = v40;
    *(v40 + 16) = v36;
    v41 = swift_task_alloc();
    *(v0 + 2776) = v41;
    *v41 = v0;
    v41[1] = sub_100106B60;

    sub_10010EF70(sub_10010EF70, sub_10014A958, v40, v37, v38, v39);
  }
}

uint64_t sub_100106808()
{
  v2 = *v1;
  *(*v1 + 2736) = v0;

  if (v0)
  {

    v3 = sub_100108A0C;
  }

  else
  {
    sub_10003BC20(v2 + 1488);

    v3 = sub_100106944;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100106944()
{
  v1 = *(v0 + 2712) + 1;
  if (v1 == *(v0 + 2704))
  {
    v2 = *(v0 + 2576);
    v3 = *(v0 + 2568);

    v4 = *v2;
    *(v0 + 2744) = *v2;
    v5 = v2[1];
    *(v0 + 2752) = v5;
    v6 = v2[2];
    *(v0 + 2760) = v6;
    v7 = swift_allocObject();
    *(v0 + 2768) = v7;
    *(v7 + 16) = v3;
    v8 = swift_task_alloc();
    *(v0 + 2776) = v8;
    *v8 = v0;
    v8[1] = sub_100106B60;

    sub_10010EF70(sub_10010EF70, sub_10014A958, v7, v4, v5, v6);
  }

  else
  {
    *(v0 + 2712) = v1;
    v9 = *(v0 + 2696);
    if (v1 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = (v9 + 144 * v1);
      v11 = v10[3];
      v12 = v10[4];
      v13 = v10[5];
      *(v0 + 1552) = v10[6];
      v14 = v10[7];
      v15 = v10[8];
      v16 = v10[10];
      *(v0 + 1600) = v10[9];
      *(v0 + 1616) = v16;
      *(v0 + 1568) = v14;
      *(v0 + 1584) = v15;
      *(v0 + 1536) = v13;
      v17 = v10[2];
      *(v0 + 1504) = v11;
      *(v0 + 1520) = v12;
      *(v0 + 1488) = v17;
      v18 = *(v0 + 1552);
      *(v0 + 2720) = v18;
      v19 = *(v0 + 1544);
      sub_100070EEC(v0 + 1488, v0 + 1632);

      v20 = swift_task_alloc();
      *(v0 + 2728) = v20;
      *v20 = v0;
      v20[1] = sub_100106808;

      sub_1001260DC(v19, v18, 0);
    }
  }
}

uint64_t sub_100106B60()
{
  *(*v1 + 2784) = v0;

  if (v0)
  {
    v2 = sub_100108BE8;
  }

  else
  {
    v2 = sub_100106C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106C94(uint64_t a1)
{
  v2 = v1[321];
  static Date.now.getter();
  v3 = swift_allocObject();
  v1[349] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v1[350] = v4;
  *v4 = v1;
  v4[1] = sub_100106D88;
  v5 = v1[332];
  v6 = v1[331];
  v7 = v1[330];

  return sub_10010F818(sub_10014A984, v3, v7, v6, v5);
}

uint64_t sub_100106D88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2808) = a1;
  *(v3 + 2816) = v1;

  if (v1)
  {
    v4 = sub_100108DBC;
  }

  else
  {
    v4 = sub_100106EC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100106EC8(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v60 = v8;
  v9 = *(v8 + 2808);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v8 + 1776);
    v13 = v9 + 32;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = (v13 + 144 * v11);
      v16 = v11;
      while (1)
      {
        if (v16 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v17 = v15[5];
        v18 = v15[6];
        v19 = v15[8];
        *(v8 + 1888) = v15[7];
        *(v8 + 1904) = v19;
        *(v8 + 1856) = v17;
        *(v8 + 1872) = v18;
        *v12 = *v15;
        v20 = v15[1];
        v21 = v15[2];
        v22 = v15[4];
        *(v8 + 1824) = v15[3];
        *(v8 + 1840) = v22;
        *(v8 + 1792) = v20;
        *(v8 + 1808) = v21;
        v11 = v16 + 1;
        if (*(v8 + 1864))
        {
          break;
        }

        v15 += 9;
        ++v16;
        if (v10 == v11)
        {
          goto LABEL_15;
        }
      }

      v57 = v13;
      sub_100070EEC(v8 + 1776, v8 + 1920);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100147140(0, v14[2] + 1, 1);
        v14 = v59[0];
      }

      v24 = v14[2];
      v23 = v14[3];
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100147140((v23 > 1), v24 + 1, 1);
        v14 = v59[0];
      }

      v14[2] = v24 + 1;
      v25 = &v14[18 * v24];
      v25[2] = *v12;
      v26 = *(v8 + 1792);
      v27 = *(v8 + 1808);
      v28 = *(v8 + 1840);
      v25[5] = *(v8 + 1824);
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v29 = *(v8 + 1856);
      v30 = *(v8 + 1872);
      v31 = *(v8 + 1904);
      v25[9] = *(v8 + 1888);
      v25[10] = v31;
      v25[7] = v29;
      v25[8] = v30;
      v13 = v57;
    }

    while (v10 - 1 != v16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v8 + 2824) = v14;

  v32 = v14[2];
  *(v8 + 2832) = v32;
  if (v32)
  {
    *(v8 + 2840) = 0;
    v33 = *(v8 + 2824);
    if (*(v33 + 2))
    {
      *(v8 + 2064) = v33[2];
      v34 = v33[6];
      v36 = v33[3];
      v35 = v33[4];
      *(v8 + 2112) = v33[5];
      *(v8 + 2128) = v34;
      *(v8 + 2080) = v36;
      *(v8 + 2096) = v35;
      v37 = v33[10];
      v39 = v33[7];
      v38 = v33[8];
      *(v8 + 2176) = v33[9];
      *(v8 + 2192) = v37;
      *(v8 + 2144) = v39;
      *(v8 + 2160) = v38;
      v40 = swift_allocObject();
      *(v8 + 2848) = v40;
      memmove((v40 + 16), v33 + 2, 0x90uLL);
      swift_beginAccess();
      *(v40 + 67) = 1;
      sub_100070EEC(v8 + 2064, v8 + 2208);
      isUniquelyReferenced_nonNull_native = Date.timeIntervalSince1970.getter();
      v42 = v41 * 1000.0;
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v42 > -1.0)
        {
          if (v42 < 1.84467441e19)
          {
            v43 = *(v8 + 2656);
            v44 = *(v8 + 2648);
            v45 = *(v8 + 2640);
            *(v40 + 136) = v42;
            *(v40 + 144) = 0;
            *(v40 + 90) = 1;
            swift_endAccess();

            *(v8 + 2464) = &type metadata for GhostbackDatabaseStore;
            *(v8 + 2472) = sub_100146E28();
            *(v8 + 2440) = v45;
            *(v8 + 2448) = v44;
            *(v8 + 2456) = v43;

            v46 = v43;
            v47 = swift_task_alloc();
            *(v8 + 2856) = v47;
            v47[2] = v46;
            v47[3] = v8 + 2440;
            v47[4] = sub_10014A9B8;
            v47[5] = v40;
            isUniquelyReferenced_nonNull_native = swift_task_alloc();
            *(v8 + 2864) = isUniquelyReferenced_nonNull_native;
            *isUniquelyReferenced_nonNull_native = v8;
            *(isUniquelyReferenced_nonNull_native + 8) = sub_1001073F0;
            a6 = sub_10014D284;
            a5 = 0x80000001001CD620;
            a8 = &type metadata for () + 8;
            a2 = 0;
            a3 = 0;
            a4 = 0xD00000000000001BLL;
            a7 = v47;

            return withCheckedThrowingContinuation<A>(isolation:function:_:)(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8);
          }

LABEL_30:
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8);
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v48 = *(v8 + 2568);

  v49 = [objc_opt_self() sharedScheduler];
  v58[3] = &type metadata for ActivityManager;
  v58[4] = &off_100223E90;
  v50 = swift_allocObject();
  v58[0] = v50;
  v50[5] = &type metadata for BackgroundSystemTaskScheduler;
  v50[6] = &off_100217910;
  v50[2] = v49;
  v59[3] = &type metadata for LaunchServicesRecordFactory;
  v59[4] = &off_10021CBA8;
  sub_1000B8524(v58, v59, v8 + 2352);
  v51 = swift_allocObject();
  *(v8 + 2880) = v51;
  *(v51 + 16) = v48;
  v52 = swift_task_alloc();
  *(v8 + 2888) = v52;
  *v52 = v8;
  v52[1] = sub_100107B2C;
  v53 = *(v8 + 2760);
  v54 = *(v8 + 2752);
  v55 = *(v8 + 2744);

  return sub_100110084(sub_10014AA0C, v51, v55, v54, v53);
}

uint64_t sub_1001073F0()
{
  v2 = *v1;
  *(*v1 + 2872) = v0;

  if (v0)
  {
    v3 = sub_100107918;
  }

  else
  {
    sub_10000DB58((v2 + 2440));
    v3 = sub_100107534;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100107534()
{
  v39 = v0;
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2832);

  if (v1 + 1 != v2)
  {
    v20 = *(v0 + 2840) + 1;
    *(v0 + 2840) = v20;
    v21 = *(v0 + 2824);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = (v21 + 144 * v20);
      *(v0 + 2064) = v22[2];
      v23 = v22[6];
      v25 = v22[3];
      v24 = v22[4];
      *(v0 + 2112) = v22[5];
      *(v0 + 2128) = v23;
      *(v0 + 2080) = v25;
      *(v0 + 2096) = v24;
      v26 = v22[10];
      v28 = v22[7];
      v27 = v22[8];
      *(v0 + 2176) = v22[9];
      *(v0 + 2192) = v26;
      *(v0 + 2144) = v28;
      *(v0 + 2160) = v27;
      v29 = swift_allocObject();
      *(v0 + 2848) = v29;
      memmove((v29 + 16), v22 + 2, 0x90uLL);
      swift_beginAccess();
      *(v29 + 67) = 1;
      sub_100070EEC(v0 + 2064, v0 + 2208);
      v3 = Date.timeIntervalSince1970.getter();
      v31 = v30 * 1000.0;
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v31 > -1.0)
        {
          if (v31 < 1.84467441e19)
          {
            v32 = *(v0 + 2656);
            v33 = *(v0 + 2648);
            v34 = *(v0 + 2640);
            *(v29 + 136) = v31;
            *(v29 + 144) = 0;
            *(v29 + 90) = 1;
            swift_endAccess();

            *(v0 + 2464) = &type metadata for GhostbackDatabaseStore;
            *(v0 + 2472) = sub_100146E28();
            *(v0 + 2440) = v34;
            *(v0 + 2448) = v33;
            *(v0 + 2456) = v32;

            v35 = v32;
            v36 = swift_task_alloc();
            *(v0 + 2856) = v36;
            v36[2] = v35;
            v36[3] = v0 + 2440;
            v36[4] = sub_10014A9B8;
            v36[5] = v29;
            v3 = swift_task_alloc();
            *(v0 + 2864) = v3;
            *v3 = v0;
            v3[1] = sub_1001073F0;
            v8 = sub_10014D284;
            v7 = 0x80000001001CD620;
            v10 = &type metadata for () + 8;
            v4 = 0;
            v5 = 0;
            v6 = 0xD00000000000001BLL;
            v9 = v36;

            return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
          }

LABEL_15:
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v0 + 2568);

  v12 = [objc_opt_self() sharedScheduler];
  v37[3] = &type metadata for ActivityManager;
  v37[4] = &off_100223E90;
  v13 = swift_allocObject();
  v37[0] = v13;
  v13[5] = &type metadata for BackgroundSystemTaskScheduler;
  v13[6] = &off_100217910;
  v13[2] = v12;
  v38[3] = &type metadata for LaunchServicesRecordFactory;
  v38[4] = &off_10021CBA8;
  sub_1000B8524(v37, v38, v0 + 2352);
  v14 = swift_allocObject();
  *(v0 + 2880) = v14;
  *(v14 + 16) = v11;
  v15 = swift_task_alloc();
  *(v0 + 2888) = v15;
  *v15 = v0;
  v15[1] = sub_100107B2C;
  v16 = *(v0 + 2760);
  v17 = *(v0 + 2752);
  v18 = *(v0 + 2744);

  return sub_100110084(sub_10014AA0C, v14, v18, v17, v16);
}

uint64_t sub_100107918()
{
  v1 = v0[329];
  v2 = v0[327];
  v3 = v0[326];

  sub_10000DB58(v0 + 305);
  (*(v2 + 8))(v1, v3);

  v4 = v0[325];
  v5 = v0[324];
  v6 = v0[323];
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[321];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to lock attribution for app: %llu, error: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);
  }

  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100107B2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2896) = a1;
  *(v3 + 2904) = v1;

  if (v1)
  {
    v4 = sub_100108FAC;
  }

  else
  {
    v4 = sub_100107C6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100107C6C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v9 = *(v8 + 2896);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = (v9 + 32 + 296 * v11);
      v13 = v11;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        a1 = memcpy((v8 + 16), v12, 0x121uLL);
        v11 = v13 + 1;
        if (*(v8 + 224))
        {
          break;
        }

        v12 += 296;
        ++v13;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }

      sub_1000B3B24(v8 + 16, v8 + 312);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100147120(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100147120((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      a1 = memcpy(&_swiftEmptyArrayStorage[37 * v15 + 4], (v8 + 16), 0x121uLL);
    }

    while (v10 - 1 != v13);
  }

LABEL_13:
  *(v8 + 2912) = _swiftEmptyArrayStorage;

  v16 = _swiftEmptyArrayStorage[2];
  *(v8 + 2920) = v16;
  if (v16)
  {
    *(v8 + 2928) = 0;
    v17 = *(v8 + 2912);
    if (*(v17 + 16))
    {
      memcpy((v8 + 608), (v17 + 32), 0x121uLL);
      v18 = *(v8 + 800);
      v19 = *(v8 + 720);
      v20 = swift_allocObject();
      *(v8 + 2936) = v20;
      memmove((v20 + 16), (v17 + 32), 0x121uLL);
      swift_beginAccess();
      *(v20 + 187) = 1;
      sub_1000B3B24(v8 + 608, v8 + 904);
      a1 = Date.timeIntervalSince1970.getter();
      v22 = v21 * 1000.0;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v22 > -1.0)
        {
          if (v22 < 1.84467441e19)
          {
            v23 = *(v8 + 2624);
            v24 = *(v8 + 2616);
            v25 = *(v8 + 2608);
            *(v20 + 280) = v22;
            *(v20 + 288) = 0;
            sub_1000F4FB4(v19, v18, v23);
            Date.timeIntervalSince1970.getter();
            v27 = v26;
            v28 = *(v24 + 8);
            *(v8 + 2944) = v28;
            *(v8 + 2952) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            a1 = v28(v23, v25);
            v29 = v27 * 1000.0;
            if (COERCE__INT64(fabs(v27 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v29 > -1.0)
              {
                if (v29 < 1.84467441e19)
                {
                  v30 = *(v8 + 2760);
                  v31 = *(v8 + 2752);
                  v32 = *(v8 + 2744);
                  *(v20 + 296) = v29;
                  *(v20 + 304) = 0;
                  swift_endAccess();

                  *(v8 + 2504) = &type metadata for PostbackDatabaseStore;
                  *(v8 + 2512) = sub_1001494B0();
                  *(v8 + 2480) = v32;
                  *(v8 + 2488) = v31;
                  *(v8 + 2496) = v30;

                  v33 = v30;
                  v34 = swift_task_alloc();
                  *(v8 + 2960) = v34;
                  v34[2] = v33;
                  v34[3] = v8 + 2480;
                  v34[4] = sub_10014AB00;
                  v34[5] = v20;
                  a1 = swift_task_alloc();
                  *(v8 + 2968) = a1;
                  *a1 = v8;
                  a1[1] = sub_100108128;
                  a6 = sub_10014D288;
                  a5 = 0x80000001001CD620;
                  a8 = &type metadata for () + 8;
                  a2 = 0;
                  a3 = 0;
                  a4 = 0xD00000000000001BLL;
                  a7 = v34;

                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
                }

LABEL_34:
                __break(1u);
                return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v35 = *(v8 + 2632);
  v36 = *(v8 + 2616);
  v37 = *(v8 + 2608);

  sub_10014AA3C(v8 + 2352);
  (*(v36 + 8))(v35, v37);

  v38 = *(v8 + 8);

  return v38();
}

uint64_t sub_100108128()
{
  v2 = *v1;
  *(*v1 + 2976) = v0;

  if (v0)
  {
    v3 = sub_100108624;
  }

  else
  {
    sub_10000DB58((v2 + 2480));
    v3 = sub_10010826C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010826C()
{
  v1 = *(v0 + 2928);
  v2 = *(v0 + 2920);

  if (v1 + 1 != v2)
  {
    v16 = *(v0 + 2928) + 1;
    *(v0 + 2928) = v16;
    v17 = *(v0 + 2912);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = v17 + 296 * v16;
      memcpy((v0 + 608), (v18 + 32), 0x121uLL);
      v19 = *(v0 + 800);
      v20 = *(v0 + 720);
      v21 = swift_allocObject();
      *(v0 + 2936) = v21;
      memmove((v21 + 16), (v18 + 32), 0x121uLL);
      swift_beginAccess();
      *(v21 + 187) = 1;
      sub_1000B3B24(v0 + 608, v0 + 904);
      v3 = Date.timeIntervalSince1970.getter();
      v23 = v22 * 1000.0;
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v23 > -1.0)
        {
          if (v23 < 1.84467441e19)
          {
            v24 = *(v0 + 2624);
            v25 = *(v0 + 2616);
            v26 = *(v0 + 2608);
            *(v21 + 280) = v23;
            *(v21 + 288) = 0;
            sub_1000F4FB4(v20, v19, v24);
            Date.timeIntervalSince1970.getter();
            v28 = v27;
            v29 = *(v25 + 8);
            *(v0 + 2944) = v29;
            *(v0 + 2952) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v3 = v29(v24, v26);
            v30 = v28 * 1000.0;
            if (COERCE__INT64(fabs(v28 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v30 > -1.0)
              {
                if (v30 < 1.84467441e19)
                {
                  v31 = *(v0 + 2760);
                  v32 = *(v0 + 2752);
                  v33 = *(v0 + 2744);
                  *(v21 + 296) = v30;
                  *(v21 + 304) = 0;
                  swift_endAccess();

                  *(v0 + 2504) = &type metadata for PostbackDatabaseStore;
                  *(v0 + 2512) = sub_1001494B0();
                  *(v0 + 2480) = v33;
                  *(v0 + 2488) = v32;
                  *(v0 + 2496) = v31;

                  v34 = v31;
                  v35 = swift_task_alloc();
                  *(v0 + 2960) = v35;
                  v35[2] = v34;
                  v35[3] = v0 + 2480;
                  v35[4] = sub_10014AB00;
                  v35[5] = v21;
                  v3 = swift_task_alloc();
                  *(v0 + 2968) = v3;
                  *v3 = v0;
                  v3[1] = sub_100108128;
                  v8 = sub_10014D288;
                  v7 = 0x80000001001CD620;
                  v10 = &type metadata for () + 8;
                  v4 = 0;
                  v5 = 0;
                  v6 = 0xD00000000000001BLL;
                  v9 = v35;

                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
                }

LABEL_21:
                __break(1u);
                return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v0 + 2632);
  v12 = *(v0 + 2616);
  v13 = *(v0 + 2608);

  sub_10014AA3C(v0 + 2352);
  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100108624()
{
  v1 = v0[368];
  v2 = v0[329];
  v3 = v0[326];

  sub_10000DB58(v0 + 310);
  sub_10014AA3C((v0 + 294));
  v1(v2, v3);

  v4 = v0[325];
  v5 = v0[324];
  v6 = v0[323];
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[321];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to lock attribution for app: %llu, error: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);
  }

  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100108838(uint64_t a1)
{
  v2 = v1[325];
  v3 = v1[324];
  v4 = v1[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v1[325];
  v13 = v1[324];
  v14 = v1[323];

  (*(v13 + 8))(v12, v14);
  swift_willThrow();

  v15 = v1[1];

  return v15();
}

uint64_t sub_100108A0C()
{
  sub_10003BC20((v0 + 186));
  v1 = v0[325];
  v2 = v0[324];
  v3 = v0[323];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[321];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to lock attribution for app: %llu, error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = v0[325];
  v12 = v0[324];
  v13 = v0[323];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100108BE8(uint64_t a1)
{
  v2 = v1[325];
  v3 = v1[324];
  v4 = v1[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v1[325];
  v13 = v1[324];
  v14 = v1[323];

  (*(v13 + 8))(v12, v14);
  swift_willThrow();

  v15 = v1[1];

  return v15();
}

uint64_t sub_100108DBC()
{
  (*(v0[327] + 8))(v0[329], v0[326]);
  v1 = v0[325];
  v2 = v0[324];
  v3 = v0[323];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[321];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to lock attribution for app: %llu, error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = v0[325];
  v12 = v0[324];
  v13 = v0[323];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100108FAC()
{
  v1 = v0[329];
  v2 = v0[327];
  v3 = v0[326];
  sub_10014AA3C((v0 + 294));
  (*(v2 + 8))(v1, v3);
  v4 = v0[325];
  v5 = v0[324];
  v6 = v0[323];
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[321];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to lock attribution for app: %llu, error: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);
  }

  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001091AC(uint64_t a1)
{
  v2[209] = v1;
  v2[208] = a1;
  v3 = type metadata accessor for Logger();
  v2[210] = v3;
  v2[211] = *(v3 - 8);
  v2[212] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[213] = v4;
  v2[214] = *(v4 - 8);
  v2[215] = swift_task_alloc();

  return _swift_task_switch(sub_1001092CC, 0, 0);
}

uint64_t sub_1001092CC()
{
  v1 = *(v0 + 1664);
  v2 = *v1;
  *(v0 + 1728) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 1736) = v3;
  if (!v3)
  {
LABEL_17:

    v38 = *(v0 + 8);

    return v38();
  }

  v4 = 0;
  v75 = (v0 + 1568);
  v76 = (v0 + 1616);
  v78 = (v0 + 305);
  v70 = (v0 + 601);
  v71 = (v0 + 897);
  v74 = (v0 + 1587);
  v77 = (v0 + 1657);
  v72 = (v0 + 1594);
  v73 = (v0 + 1778);
  *(v0 + 1744) = v1[3];
  v87 = (v0 + 1600);
  *(v0 + 1600) = *(v1 + 1);
  *(v0 + 1777) = *(v1 + 32);
  v5 = v1[5];
  *(v0 + 1656) = *(v1 + 48);
  *(v0 + 1648) = v5;
  while (1)
  {
    *(v0 + 1752) = v4;
    memcpy((v0 + 904), (v2 + 264 * v4 + 32), 0x108uLL);
    v6 = *(v0 + 920);
    v7 = *(v0 + 928);
    v8 = *(v0 + 904);
    v9 = *(v0 + 912);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1096);
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1056);
    v85 = *(v0 + 1032);
    v86 = *(v0 + 1048);
    v14 = *(v0 + 1040);
    v84 = *(v0 + 1016);
    v15 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v13;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v87, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v16._countAndFlagsBits = v8;
    v16._object = v9;
    v17 = _findStringSwitchCase(cases:string:)(&off_100213B78, v16);
    if (!v17)
    {
      break;
    }

    if (v17 == 1)
    {
      v83 = v12;
      v18 = 1;
      goto LABEL_7;
    }

    v27 = 0;
LABEL_12:
    v28 = *(v0 + 1696);
    v29 = *(v0 + 1688);
    v30 = *(v0 + 1680);
    sub_10014A8BC(v87);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v31 = v27;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v32 = Logger.postback.unsafeMutableAddressor();
    (*(v29 + 16))(v28, v32, v30);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Adding postback failed: %@", v35, 0xCu);
      sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v4 = *(v0 + 1752) + 1;
    if (v4 == *(v0 + 1736))
    {
      goto LABEL_17;
    }

    v2 = *(v0 + 1728);
  }

  v83 = v12;
  v18 = 0;
LABEL_7:
  v19 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
  if (v19 > 2)
  {
    v27 = 1;
    goto LABEL_12;
  }

  v79 = v19;
  v80 = v18;
  v81 = v10;
  v20 = v7;
  v21 = *(v0 + 952);
  v22 = *(v0 + 960);
  v23 = *(v0 + 1104);
  v24 = *(v0 + 1112);

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  v26 = _findStringSwitchCase(cases:string:)(&off_100213C30, v25);
  if (v26 > 2)
  {
    v27 = 2;
    goto LABEL_12;
  }

  v40 = v26;
  v68 = v21;
  v69 = v6;
  v41 = *(v0 + 1720);
  v42 = *(v0 + 1712);
  v82 = *(v0 + 1704);
  v43 = *(v0 + 1160);
  v66 = *(v0 + 1128);
  v67 = *(v0 + 1152);
  v65 = *(v0 + 1120);
  v63 = *(v0 + 1072);
  v64 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v45 = v44;
  sub_1000BB914(v0 + 904);
  result = (*(v42 + 8))(v41, v82);
  v46 = v45 * 1000.0;
  if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v46 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v47 = *v87;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v70;
  *(v0 + 665) = *v71;
  *(v0 + 714) = *v72;
  *(v0 + 738) = *v73;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v74;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v77;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v78;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v70;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v71;
  *(v0 + 1571) = v47;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v75;
  *(v0 + 801) = *v76;
  *(v0 + 1824) = *(v0 + 1777);
  v48 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v49 = *(v0 + 1816);
  *(v0 + 616) = v49;
  *(v0 + 320) = v49;
  *(v0 + 624) = v84;
  *(v0 + 328) = v84;
  *(v0 + 336) = v15;
  *(v0 + 632) = v15;
  *(v0 + 640) = v85;
  *(v0 + 344) = v85;
  *(v0 + 352) = v14;
  *(v0 + 648) = v14;
  *(v0 + 656) = v86;
  *(v0 + 360) = v86;
  v50 = *(v0 + 1776);
  *(v0 + 664) = v50;
  *(v0 + 368) = v50;
  *(v0 + 672) = v83;
  *(v0 + 376) = v83;
  v51 = v46;
  *(v0 + 608) = 0;
  *(v0 + 680) = v63;
  *(v0 + 688) = v64;
  *(v0 + 696) = v81;
  *(v0 + 704) = v11;
  *(v0 + 712) = v40;
  *(v0 + 713) = v65;
  *(v0 + 720) = v66;
  *(v0 + 728) = 0;
  *(v0 + 384) = v63;
  *(v0 + 392) = v64;
  v52 = *(v0 + 1808);
  *(v0 + 736) = v52;
  *(v0 + 737) = 3;
  *(v0 + 744) = v67;
  *(v0 + 752) = v43;
  *(v0 + 760) = v69;
  *(v0 + 768) = v20;
  *(v0 + 776) = v80;
  *(v0 + 777) = v79;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v81;
  *(v0 + 408) = v11;
  v53 = *(v0 + 1824);
  *(v0 + 800) = v53;
  *(v0 + 824) = v68;
  *(v0 + 832) = v22;
  *(v0 + 840) = v48;
  *(v0 + 848) = v46;
  *(v0 + 856) = 0;
  v54 = *(v0 + 1800);
  *(v0 + 864) = v54;
  *(v0 + 872) = 0;
  *(v0 + 416) = v40;
  v55 = *(v0 + 1784);
  *(v0 + 880) = v55;
  *(v0 + 888) = 0;
  *(v0 + 417) = v65;
  *(v0 + 422) = *(v0 + 1598);
  v56 = *(v0 + 1792);
  *(v0 + 896) = v56;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v72;
  *(v0 + 424) = v66;
  *(v0 + 432) = 0;
  *(v0 + 440) = v52;
  *(v0 + 441) = 3;
  v57 = *v73;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v57;
  *(v0 + 448) = v67;
  *(v0 + 456) = v43;
  *(v0 + 464) = v69;
  *(v0 + 472) = v20;
  *(v0 + 480) = v80;
  *(v0 + 481) = v79;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v58 = *v75;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v58;
  *(v0 + 504) = v53;
  *(v0 + 505) = *v76;
  v59 = *v74;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v59;
  *(v0 + 528) = v68;
  *(v0 + 536) = v22;
  *(v0 + 544) = v48;
  *(v0 + 552) = v51;
  *(v0 + 560) = 0;
  *(v0 + 568) = v54;
  v60 = *v77;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v60;
  *(v0 + 576) = 0;
  *(v0 + 584) = v55;
  v61 = *v78;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v61;
  *(v0 + 592) = 0;
  *(v0 + 600) = v56;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v62 = swift_task_alloc();
  *(v0 + 1760) = v62;
  *v62 = v0;
  v62[1] = sub_100109BC4;

  return sub_100124D0C(v0 + 608);
}

uint64_t sub_100109BC4()
{

  return _swift_task_switch(sub_100109CC0, 0, 0);
}

uint64_t sub_100109CC0()
{
  if (*(*(v0 + 1664) + 33))
  {
    v1 = swift_task_alloc();
    *(v0 + 1768) = v1;
    *v1 = v0;
    v1[1] = sub_10010A630;

    return sub_100125218(v0 + 608);
  }

  sub_10003C04C(v0 + 608);
  v3 = *(v0 + 1752) + 1;
  if (v3 == *(v0 + 1736))
  {
LABEL_6:

    v4 = *(v0 + 8);

    return v4();
  }

  v72 = (v0 + 1568);
  v84 = (v0 + 1600);
  v75 = (v0 + 305);
  v67 = (v0 + 601);
  v71 = (v0 + 1587);
  v73 = (v0 + 1616);
  v74 = (v0 + 1657);
  v68 = (v0 + 897);
  v69 = (v0 + 1594);
  v70 = (v0 + 1778);
  while (1)
  {
    *(v0 + 1752) = v3;
    memcpy((v0 + 904), (*(v0 + 1728) + 264 * v3 + 32), 0x108uLL);
    v5 = *(v0 + 920);
    v6 = *(v0 + 928);
    v7 = *(v0 + 904);
    v8 = *(v0 + 912);
    v9 = *(v0 + 1088);
    v10 = *(v0 + 1096);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v82 = *(v0 + 1032);
    v83 = *(v0 + 1048);
    v13 = *(v0 + 1040);
    v81 = *(v0 + 1016);
    v14 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v12;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v84, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v15._countAndFlagsBits = v7;
    v15._object = v8;
    v16 = _findStringSwitchCase(cases:string:)(&off_100213B78, v15);
    if (v16)
    {
      if (v16 != 1)
      {
        v27 = 0;
        goto LABEL_21;
      }

      v80 = v11;
      v17 = 1;
    }

    else
    {
      v80 = v11;
      v17 = 0;
    }

    v18 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
    if (v18 > 2)
    {
      v27 = 1;
      goto LABEL_21;
    }

    v76 = v18;
    v77 = v17;
    v19 = v9;
    v78 = v5;
    v20 = v6;
    v21 = *(v0 + 952);
    v22 = *(v0 + 1104);
    v23 = *(v0 + 1112);
    v24 = *(v0 + 960);

    v25._countAndFlagsBits = v22;
    v25._object = v23;
    v26 = _findStringSwitchCase(cases:string:)(&off_100213C30, v25);
    if (v26 <= 2)
    {
      break;
    }

    v27 = 2;
LABEL_21:
    v28 = *(v0 + 1696);
    v29 = *(v0 + 1688);
    v30 = *(v0 + 1680);
    sub_10014A8BC(v84);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v31 = v27;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v32 = Logger.postback.unsafeMutableAddressor();
    (*(v29 + 16))(v28, v32, v30);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Adding postback failed: %@", v35, 0xCu);
      sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v3 = *(v0 + 1752) + 1;
    if (v3 == *(v0 + 1736))
    {
      goto LABEL_6;
    }
  }

  v38 = v26;
  v39 = *(v0 + 1720);
  v65 = v21;
  v66 = *(v0 + 1712);
  v79 = *(v0 + 1704);
  v40 = *(v0 + 1160);
  v63 = *(v0 + 1128);
  v64 = *(v0 + 1152);
  v62 = *(v0 + 1120);
  v60 = *(v0 + 1072);
  v61 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v42 = v41;
  sub_1000BB914(v0 + 904);
  result = (*(v66 + 8))(v39, v79);
  v43 = v42 * 1000.0;
  if (COERCE__INT64(fabs(v42 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v43 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v43 >= 1.84467441e19)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v44 = *v84;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v67;
  *(v0 + 665) = *v68;
  *(v0 + 714) = *v69;
  *(v0 + 738) = *v70;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v71;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v74;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v75;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v67;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v68;
  *(v0 + 1571) = v44;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v72;
  *(v0 + 801) = *v73;
  *(v0 + 1824) = *(v0 + 1777);
  v45 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v46 = *(v0 + 1816);
  *(v0 + 616) = v46;
  *(v0 + 320) = v46;
  *(v0 + 624) = v81;
  *(v0 + 328) = v81;
  *(v0 + 336) = v14;
  *(v0 + 632) = v14;
  *(v0 + 640) = v82;
  *(v0 + 344) = v82;
  *(v0 + 352) = v13;
  *(v0 + 648) = v13;
  *(v0 + 656) = v83;
  *(v0 + 360) = v83;
  v47 = *(v0 + 1776);
  *(v0 + 664) = v47;
  *(v0 + 368) = v47;
  *(v0 + 672) = v80;
  *(v0 + 376) = v80;
  v48 = v43;
  *(v0 + 608) = 0;
  *(v0 + 680) = v60;
  *(v0 + 688) = v61;
  *(v0 + 696) = v19;
  *(v0 + 704) = v10;
  *(v0 + 712) = v38;
  *(v0 + 713) = v62;
  *(v0 + 720) = v63;
  *(v0 + 728) = 0;
  *(v0 + 384) = v60;
  *(v0 + 392) = v61;
  v49 = *(v0 + 1808);
  *(v0 + 736) = v49;
  *(v0 + 737) = 3;
  *(v0 + 744) = v64;
  *(v0 + 752) = v40;
  *(v0 + 760) = v78;
  *(v0 + 768) = v20;
  *(v0 + 776) = v77;
  *(v0 + 777) = v76;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v19;
  *(v0 + 408) = v10;
  v50 = *(v0 + 1824);
  *(v0 + 800) = v50;
  *(v0 + 824) = v65;
  *(v0 + 832) = v24;
  *(v0 + 840) = v45;
  *(v0 + 848) = v43;
  *(v0 + 856) = 0;
  v51 = *(v0 + 1800);
  *(v0 + 864) = v51;
  *(v0 + 872) = 0;
  *(v0 + 416) = v38;
  v52 = *(v0 + 1784);
  *(v0 + 880) = v52;
  *(v0 + 888) = 0;
  *(v0 + 417) = v62;
  *(v0 + 422) = *(v0 + 1598);
  v53 = *(v0 + 1792);
  *(v0 + 896) = v53;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v69;
  *(v0 + 424) = v63;
  *(v0 + 432) = 0;
  *(v0 + 440) = v49;
  *(v0 + 441) = 3;
  v54 = *v70;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v54;
  *(v0 + 448) = v64;
  *(v0 + 456) = v40;
  *(v0 + 464) = v78;
  *(v0 + 472) = v20;
  *(v0 + 480) = v77;
  *(v0 + 481) = v76;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v55 = *v72;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v55;
  *(v0 + 504) = v50;
  *(v0 + 505) = *v73;
  v56 = *v71;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v56;
  *(v0 + 528) = v65;
  *(v0 + 536) = v24;
  *(v0 + 544) = v45;
  *(v0 + 552) = v48;
  *(v0 + 560) = 0;
  *(v0 + 568) = v51;
  v57 = *v74;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v57;
  *(v0 + 576) = 0;
  *(v0 + 584) = v52;
  v58 = *v75;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v58;
  *(v0 + 592) = 0;
  *(v0 + 600) = v53;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v59 = swift_task_alloc();
  *(v0 + 1760) = v59;
  *v59 = v0;
  v59[1] = sub_100109BC4;

  return sub_100124D0C(v0 + 608);
}