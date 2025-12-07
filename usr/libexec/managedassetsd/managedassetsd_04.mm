uint64_t sub_1000A3658()
{
  sub_100066C80(*(v0 + 320), &qword_100128808, &unk_1000E6C50);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A3774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A387C()
{
  v1 = *(v0 + 320);

  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);

  v2 = *(v0 + 8);

  return v2();
}

_BYTE *sub_1000A39A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005F5CC(&qword_100128C28, &qword_1000E7368);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1000AF7F4(&v27[8], v25);
    sub_1000AF7F4(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << v1[32];
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v6[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v6[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v6[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v14;
    result = sub_1000AF7F4(v27, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000A3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  v5 = type metadata accessor for Date();
  v4[62] = v5;
  v4[63] = *(v5 - 8);
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3D40, v3, 0);
}

uint64_t sub_1000A3D40(uint64_t a1)
{
  v61 = v1;
  v3 = v1[58];
  v2 = v1[59];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    sub_1000B9568();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_100092A98();
    swift_allocError();
    *v20 = v15;
    *(v20 + 8) = v17;
    *(v20 + 16) = v19;
LABEL_6:
    swift_willThrow();

    v21 = v1[1];
    goto LABEL_7;
  }

  v6 = v1[63];
  v5 = v1[64];
  v8 = v1[61];
  v7 = v1[62];
  v9 = v1[60];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  (*(v6 + 8))(v5, v7);
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6BF0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7079547465737361;
  *(inited + 56) = v2;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v9;
  *(inited + 120) = &type metadata for UInt;
  *(inited + 128) = 0x74617453636E7973;
  *(inited + 136) = 0xE900000000000065;

  *(inited + 144) = sub_1000C1778(10);
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0x6144636E79536B63;
  *(inited + 184) = 0xEA00000000006574;
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v11;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v13 = (*(*v8 + 344))(v3, v2);
  if ((v13 & 1) == 0)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100066000(v33, qword_10012A3A8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = v37;
      *v36 = 136315138;
      v38 = Dictionary.description.getter();
      v40 = sub_100065658(v38, v39, &v60);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Adding to be deleted AssetRecord: %s to local cache", v36, 0xCu);
      sub_10005D588(v37);
    }

    v41 = (*(*v1[61] + 352))();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v1[56] = 0;
    v43 = [v41 putDictionay:isa attributes:0 error:v1 + 56];

    v44 = v1[56];
    if (v43)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100066000(v23, qword_10012A3A8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60 = v27;
    *v26 = 136315138;
    v28 = Dictionary.description.getter();
    v30 = v29;

    v31 = sub_100065658(v28, v30, &v60);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Update to be deleted AssetRecord: %s in local cache", v26, 0xCu);
    sub_10005D588(v27);
  }

  else
  {
  }

  v46 = (*(*v1[61] + 352))(v32);
  v48 = v1[58];
  v47 = v1[59];
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1000E61E0;
  *(v49 + 32) = 0x614E64726F636572;
  *(v49 + 72) = &type metadata for String;
  *(v49 + 40) = 0xEA0000000000656DLL;
  *(v49 + 48) = v48;
  *(v49 + 56) = v47;

  sub_1000AF988(v49);
  swift_setDeallocating();
  sub_100066C80(v49 + 32, &qword_100129070, &qword_1000E7440);
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1000E6C00;
  *(v51 + 32) = 0x74617453636E7973;
  *(v51 + 40) = 0xE900000000000065;
  *(v51 + 48) = sub_1000C1778(10);
  *(v51 + 72) = &type metadata for Int;
  *(v51 + 80) = 0x6144636E79536B63;
  *(v51 + 88) = 0xEA00000000006574;
  *(v51 + 120) = &type metadata for Double;
  *(v51 + 96) = v11;
  sub_1000AF988(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = Dictionary._bridgeToObjectiveC()().super.isa;

  v1[57] = 0;
  v53 = [v46 updateFor:v50 value:v52 attributes:0 error:v1 + 57];

  v44 = v1[57];
  if ((v53 & 1) == 0)
  {
LABEL_20:
    v45 = v44;
    _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

LABEL_23:
  v54 = (*(*v1[61] + 184))(v44);
  v1[65] = v54;
  if (v54)
  {
    v56 = v1[58];
    v55 = v1[59];
    sub_10005F5CC(&unk_100129340, &unk_1000E8020);
    v57 = swift_allocObject();
    v1[66] = v57;
    *(v57 + 16) = xmmword_1000E61E0;
    *(v57 + 32) = v56;
    *(v57 + 40) = v55;

    v58 = swift_task_alloc();
    v1[67] = v58;
    *v58 = v1;
    v58[1] = sub_1000A46A0;
    v59 = v1[60];

    return sub_10007D9B8(v57, v59);
  }

  v21 = v1[1];
LABEL_7:

  return v21();
}

uint64_t sub_1000A46A0()
{
  v2 = *v1;
  v2[68] = v0;

  if (v0)
  {
    v3 = v2[61];

    return _swift_task_switch(sub_1000A4844, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000A4844()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000A48E8(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 352))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = 0;
    v10 = [v7 deleteFor:isa attributes:0 error:&v12];

    if (v10)
    {
      return v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1000A4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MACloudMAAsset(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 352))(v10);
  if (!v4)
  {
    v14 = result;
    v26 = a3;
    v27 = v9;
    v28 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = 0;
    v17 = [v14 queryDictionaryFor:isa attributes:0 error:&v29];

    v18 = v29;
    if (v17)
    {
      v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v18;

      if (*(v19 + 16))
      {
        v21 = v28;
        (*(*v3 + 272))(v19);

        v22 = v27;
        if (!v21)
        {
          v23 = v26;
          sub_1000AFAB8(v12, v26);
          return (*(v22 + 56))(v23, 0, 1, v8);
        }
      }

      else
      {
        (*(v27 + 56))(v26, 1, 1, v8);
      }
    }

    else
    {
      v24 = v29;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000A4E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v40 = a1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_1000AF988(_swiftEmptyArrayStorage);
  v16 = type metadata accessor for MACloudMAAsset(0);
  v17 = (a3 + v16[27]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v50 = &type metadata for String;
    *&v49 = v19;
    *(&v49 + 1) = v18;
    sub_1000AF7F4(&v49, v48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x676154456B63, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v47;
  }

  v21 = v16[28];
  v43 = a3;
  sub_1000939A8(a3 + v21, v8, &qword_1001287D0, &qword_1000E6C30);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    v23 = v10;
    sub_100066C80(v8, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = &type metadata for Double;
    *&v49 = v24;
    sub_1000AF7F4(&v49, v48);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x6574616572436B63, 0xED00006574614464, v25);
    v23 = v10;
    (*(v10 + 8))(v14, v9);
    v15 = v47;
  }

  v26 = v44;
  sub_1000939A8(v43 + v16[29], v44, &qword_1001287D0, &qword_1000E6C30);
  if (v22(v26, 1, v9) == 1)
  {
    v27 = sub_100066C80(v26, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v28 = v42;
    (*(v23 + 32))(v42, v26, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = &type metadata for Double;
    *&v49 = v29;
    sub_1000AF7F4(&v49, v48);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x696669646F4D6B63, 0xEE00657461446465, v30);
    v27 = (*(v23 + 8))(v28, v9);
  }

  v31 = v46;
  v32 = (*(*v45 + 352))(v27);
  if (v31)
  {
  }

  v34 = v32;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v40;
  *(inited + 56) = v41;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v49 = 0;
  v38 = [v34 updateFor:isa value:v37 attributes:0 error:&v49];

  if (v38)
  {
    return v49;
  }

  v39 = v49;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL sub_1000A541C(uint64_t a1, uint64_t a2)
{
  v6 = (*(*v2 + 352))();
  if (!v3)
  {
    v8 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    v20 = 0;
    v21 = 0;
    v12 = [v8 queryForColumn:isa column:v11 attributes:0 values:&v21 error:&v20];

    v13 = v21;
    v14 = v20;
    if (v12)
    {
      if (v13)
      {
        v15 = v13;
        v16 = [v15 count];

        return v16 > 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v14;
      v18 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1000A5688()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000A56E0()
{
  sub_1000A5688();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000A570C()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_1000A579C, v0, 0);
}

uint64_t sub_1000A579C()
{
  v1 = (*(**(v0 + 24) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v9 = *(v0 + 8);
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1000A593C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A595C, v1, 0);
}

uint64_t sub_1000A595C()
{
  v1 = *(**(v0 + 24) + 192);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A59E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A5A0C, v2, 0);
}

uint64_t sub_1000A5A0C()
{
  v22 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012A3A8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v20 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = (*(*v5 + 208))();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_100065658(v8, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (v20)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v1;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_100065658(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update account identifier from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[3];
  v16 = v0[2];
  v17 = *(*v0[4] + 216);

  v17(v16, v15);
  v18 = v0[1];

  return v18();
}

uint64_t sub_1000A5C78()
{
  *(v1 + 360) = v0;

  return _swift_task_switch(sub_1000A5D08, v0, 0);
}

uint64_t sub_1000A5D08()
{
  v1 = v0[45];
  v2 = *(*v1 + 208);
  v3 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x77F3000000000000;
  v0[46] = v2;
  v0[47] = v3;
  v2();
  if (v4)
  {
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100066000(v10, qword_10012A3A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v13, 2u);
    }

    v14 = v0[45];

    v15 = (*(*v14 + 184))();
    v0[48] = v15;
    if (v15)
    {
      v68 = (*(*v15 + 216) + **(*v15 + 216));
      v16 = swift_task_alloc();
      v0[49] = v16;
      *v16 = v0;
      v16[1] = sub_1000A6720;
      v17 = v68;

      return v17();
    }

    v5 = (*(*v0[45] + 216))(0, 0);
  }

  v6 = (v0[46])(v5);
  if (!v7)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_10012A3A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "account identifier is unknown for querying cloud assets size", v22, 2u);
    }

    sub_1000B9568();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_100092A98();
    swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v26;
    *(v29 + 16) = v28;
    goto LABEL_18;
  }

  v8 = v6;
  v9 = v7;
  v70 = (*(*v0[45] + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v8;
  v67 = v8;
  *(inited + 56) = v9;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1000E61E0;
  *(v32 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v32 + 40) = v33;
  *(v32 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v32 + 48) = &off_1001177D0;
  sub_1000AF988(v32);
  swift_setDeallocating();
  sub_100066C80(v32 + 32, &qword_100129070, &qword_1000E7440);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v35 = [v70 queryRowDictionariesFor:isa attributes:v34 error:v0 + 42];

  v36 = v0[42];
  if (!v35)
  {
    v61 = v36;

    _convertNSErrorToError(_:)();

LABEL_18:
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v36;

  v39 = *(v37 + 16);
  if (v39)
  {
    v69 = 0;
    v40 = v37 + 32;
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      v41 = *v40;
      if (*(*v40 + 16))
      {

        v42 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v43)
        {
          sub_100066130(*(v41 + 56) + 32 * v42, (v0 + 22));
          if (swift_dynamicCast())
          {
            v44 = v0[39];
            if (*(v41 + 16))
            {
              v45 = v0[38];
              v46 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
              if (v47 & 1) != 0 && (sub_100066130(*(v41 + 56) + 32 * v46, (v0 + 26)), (swift_dynamicCast()) && *(v41 + 16) && (v66 = v0[43], v48 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v49) && (sub_100066130(*(v41 + 56) + 32 * v48, (v0 + 30)), (swift_dynamicCast()) && (v64 = v0[44], v64 >= sub_1000C1778(2)) && v64 < sub_1000C1778(4))
              {
                v50 = __OFADD__(v69, v66);
                v69 += v66;
                if (v50)
                {
                  __break(1u);
                }

                if (*(v41 + 16) && (v51 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64), (v52 & 1) != 0))
                {
                  sub_100066130(*(v41 + 56) + 32 * v51, (v0 + 34));

                  v53 = swift_dynamicCast();
                  if (v53)
                  {
                    v54 = v0[40];
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (v53)
                  {
                    v55 = v0[41];
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v63 = v55;
                }

                else
                {

                  v54 = 0;
                  v63 = 0;
                }

                v65 = v54;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v71 = sub_1000AE184(0, v71[2] + 1, 1, v71);
                }

                v57 = v71[2];
                v56 = v71[3];
                v58 = v57 + 1;
                if (v57 >= v56 >> 1)
                {
                  v60 = sub_1000AE184((v56 > 1), v57 + 1, 1, v71);
                  v58 = v57 + 1;
                  v71 = v60;
                }

                v71[2] = v58;
                v59 = &v71[5 * v57];
                v59[4] = v45;
                v59[5] = v44;
                v59[6] = v65;
                v59[7] = v63;
                v59[8] = v66;
              }

              else
              {
              }

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:
      v40 += 8;
      if (!--v39)
      {
        goto LABEL_58;
      }
    }
  }

  v69 = 0;
  v71 = _swiftEmptyArrayStorage;
LABEL_58:

  v62 = v0[1];

  return v62(v67, v9, v69, v71);
}

uint64_t sub_1000A6720(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v7 = v6[45];
    v8 = sub_1000A7080;
  }

  else
  {
    v9 = v6[45];

    v6[51] = a2;
    v6[52] = a1;
    v8 = sub_1000A68A8;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000A68A8()
{
  v1 = *(v0 + 400);
  v2 = (*(**(v0 + 360) + 216))(*(v0 + 416), *(v0 + 408));
  v3 = (*(v0 + 368))(v2);
  if (!v4)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_10012A3A8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "account identifier is unknown for querying cloud assets size", v11, 2u);
    }

    sub_1000B9568();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_100092A98();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    goto LABEL_9;
  }

  v5 = v3;
  v6 = v4;
  v7 = (*(**(v0 + 360) + 352))();
  if (v1)
  {

LABEL_10:
    v19 = *(v0 + 8);

    return v19();
  }

  v60 = v7;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v5;
  v58 = v5;
  *(inited + 56) = v6;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1000E61E0;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  *(v23 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v23 + 48) = &off_1001177D0;
  sub_1000AF988(v23);
  swift_setDeallocating();
  sub_100066C80(v23 + 32, &qword_100129070, &qword_1000E7440);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 336) = 0;
  v26 = [v60 queryRowDictionariesFor:isa attributes:v25 error:v0 + 336];

  v27 = *(v0 + 336);
  if (!v26)
  {
    v52 = v27;

    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v27;

  v30 = *(v28 + 16);
  if (v30)
  {
    v59 = 0;
    v31 = v28 + 32;
    v61 = _swiftEmptyArrayStorage;
    while (1)
    {
      v32 = *v31;
      if (*(*v31 + 16))
      {

        v33 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v34)
        {
          sub_100066130(*(v32 + 56) + 32 * v33, v0 + 176);
          if (swift_dynamicCast())
          {
            v35 = *(v0 + 312);
            if (*(v32 + 16))
            {
              v36 = *(v0 + 304);
              v37 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
              if (v38 & 1) != 0 && (sub_100066130(*(v32 + 56) + 32 * v37, v0 + 208), (swift_dynamicCast()) && *(v32 + 16) && (v57 = *(v0 + 344), v39 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v40) && (sub_100066130(*(v32 + 56) + 32 * v39, v0 + 240), (swift_dynamicCast()) && (v55 = *(v0 + 352), v55 >= sub_1000C1778(2)) && v55 < sub_1000C1778(4))
              {
                v41 = __OFADD__(v59, v57);
                v59 += v57;
                if (v41)
                {
                  __break(1u);
                }

                if (*(v32 + 16) && (v42 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64), (v43 & 1) != 0))
                {
                  sub_100066130(*(v32 + 56) + 32 * v42, v0 + 272);

                  v44 = swift_dynamicCast();
                  if (v44)
                  {
                    v45 = *(v0 + 320);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (v44)
                  {
                    v46 = *(v0 + 328);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v54 = v46;
                }

                else
                {

                  v45 = 0;
                  v54 = 0;
                }

                v56 = v45;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = sub_1000AE184(0, v61[2] + 1, 1, v61);
                }

                v48 = v61[2];
                v47 = v61[3];
                v49 = v48 + 1;
                if (v48 >= v47 >> 1)
                {
                  v51 = sub_1000AE184((v47 > 1), v48 + 1, 1, v61);
                  v49 = v48 + 1;
                  v61 = v51;
                }

                v61[2] = v49;
                v50 = &v61[5 * v48];
                v50[4] = v36;
                v50[5] = v35;
                v50[6] = v56;
                v50[7] = v54;
                v50[8] = v57;
              }

              else
              {
              }

              goto LABEL_18;
            }
          }
        }
      }

LABEL_18:
      v31 += 8;
      if (!--v30)
      {
        goto LABEL_49;
      }
    }
  }

  v59 = 0;
  v61 = _swiftEmptyArrayStorage;
LABEL_49:

  v53 = *(v0 + 8);

  return v53(v58, v6, v59, v61);
}

uint64_t sub_1000A7080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A71B0, v3, 0);
}

uint64_t sub_1000A71B0()
{
  v20 = v0;
  (*(**(v0 + 40) + 328))(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);
  v2 = type metadata accessor for MACloudMAAsset(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100066000(v3, qword_10012A3A8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100065658(v7, v6, &v19);
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to fetch local asset for recordName: %s", v8, 0xCu);
      sub_10005D588(v9);
    }

    sub_1000B9568();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_100092A98();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  else
  {
    sub_1000AFAB8(v1, *(v0 + 16));

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1000A7444(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000A74D4, v1, 0);
}

uint64_t sub_1000A74D4()
{
  v42 = v0;
  v1 = [*(v0 + 24) recordID];
  v2 = [v1 recordName];

  v3 = v2;
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = [*(v4 + 112) tempSyncUpAssetPath:v3];

  v9 = v8;
  v10 = v8;
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = objc_opt_self();
  v15 = v8;
  v16 = [v14 defaultManager];
  LODWORD(v14) = [v16 fileExistsAtPath:v10];

  if (v14)
  {
    v40 = v5;
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_10012A3A8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v39 = v11;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100065658(v40, v7, &v41);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100065658(v11, v13, &v41);
      _os_log_impl(&_mh_execute_header, v18, v19, "Upload completed for %s, deleting tmp file: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    *(v0 + 16) = 0;
    v21 = [v16 removeItemAtPath:v9 error:v0 + 16];

    v22 = *(v0 + 16);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v24 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v27 = 136315394;
        v30 = sub_100065658(v39, v13, &v41);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2112;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v31;
        *v28 = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Error deleting syncup temp file %s: %@", v27, 0x16u);
        sub_100066C80(v28, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v29);
      }

      else
      {
      }
    }

    v5 = v40;
  }

  else
  {
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100066000(v32, qword_10012A3A8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100065658(v5, v7, &v41);
    _os_log_impl(&_mh_execute_header, v33, v34, "Upload completed for %s, upload local sync state to uploaded", v35, 0xCu);
    sub_10005D588(v36);
  }

  sub_1000A7B30(v5, v7, *(v0 + 24));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1000A7B30(uint64_t a1, uint64_t a2, void *a3)
{
  v113 = a3;
  v110 = a1;
  v5 = sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  __chkstk_darwin(v5 - 8);
  v109 = &v103 - v6;
  v108 = type metadata accessor for MACloudMAAsset(0);
  v107 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v103 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v112 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &v103 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v103 - v19;
  v21 = *(*v3 + 208);
  v114 = v3;
  v22 = v21(v18);
  if (!v23)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100066000(v61, qword_10012A3A8);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "account identifier is unknown for uploading status", v64, 2u);
    }

    goto LABEL_23;
  }

  v24 = v22;
  v25 = v23;
  v104 = v9;
  v106 = a2;
  v105 = v11;
  v26 = sub_1000AF988(_swiftEmptyArrayStorage);
  v27 = sub_1000C1778(2);
  v119 = &type metadata for Int;
  *&v118 = v27;
  sub_1000AF7F4(&v118, v117);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116 = v26;
  sub_1000AEE80(v117, 0x74617453636E7973, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v29 = v116;
  v30 = [objc_allocWithZone(NSNull) init];
  v119 = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *&v118 = v30;
  sub_1000AF7F4(&v118, v117);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v29;
  sub_1000AEE80(v117, 0xD000000000000012, 0x80000001000F1250, v31);
  v32 = v116;
  v119 = &type metadata for String;
  *&v118 = v24;
  *(&v118 + 1) = v25;
  sub_1000AF7F4(&v118, v117);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v32;
  sub_1000AEE80(v117, 0x634164726F636572, 0xED0000746E756F63, v33);
  v34 = v116;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v36 = v35;
  v37 = *(v13 + 8);
  v37(v20, v12);
  v119 = &type metadata for Double;
  *&v118 = v36;
  sub_1000AF7F4(&v118, v117);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v116 = v34;
  sub_1000AEE80(v117, 0x6144636E79536B63, 0xEA00000000006574, v38);
  v39 = v116;
  v40 = v113;
  v41 = [v113 etag];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v119 = &type metadata for String;
    *&v118 = v43;
    *(&v118 + 1) = v45;
    sub_1000AF7F4(&v118, v117);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v39;
    sub_1000AEE80(v117, 0x676154456B63, 0xE600000000000000, v46);
    v39 = v116;
  }

  v47 = [v40 creationDate];
  if (v47)
  {
    v48 = v111;
    v49 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v50;
    sub_1000AF7F4(&v118, v117);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v39;
    sub_1000AEE80(v117, 0x6574616572436B63, 0xED00006574614464, v51);
    v37(v48, v12);
    v39 = v116;
  }

  v52 = [v40 modificationDate];
  if (v52)
  {
    v53 = v112;
    v54 = v52;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v119 = &type metadata for Double;
    *&v118 = v55;
    sub_1000AF7F4(&v118, v117);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v39;
    sub_1000AEE80(v117, 0x696669646F4D6B63, 0xEE00657461446465, v56);
    v37(v53, v12);
  }

  v57 = v114;
  v58 = v115;
  v59 = (*(*v114 + 352))();
  if (v58)
  {
  }

  v65 = v59;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v110;
  *(inited + 56) = v106;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v118 = 0;
  v69 = [v65 updateFor:isa value:v68 attributes:0 error:&v118];

  if (!v69)
  {
    v74 = v118;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v70 = *(*v57 + 328);
  v71 = v118;
  v72 = v109;
  v73 = v110;
  v70(v110, v106);
  if ((*(v107 + 48))(v72, 1, v108) == 1)
  {
    sub_100066C80(v72, &qword_100128808, &unk_1000E6C50);
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100066000(v75, qword_10012A3A8);
    v76 = v106;

    v62 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v118 = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_100065658(v73, v76, &v118);
      _os_log_impl(&_mh_execute_header, v62, v77, "Failed to fetch local record for synced up record %s", v78, 0xCu);
      sub_10005D588(v79);
    }

LABEL_23:

    sub_1000B9568();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    sub_100092A98();
    swift_allocError();
    *v86 = v81;
    *(v86 + 8) = v83;
    *(v86 + 16) = v85;
    return swift_willThrow();
  }

  v87 = v105;
  sub_1000AFAB8(v72, v105);
  v88 = v57[15];
  v89 = sub_1000970C0();
  LODWORD(v88) = [v88 didSyncUpAsset:v89];

  if (v88)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100066000(v90, qword_10012A3A8);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v91, v92))
    {
      goto LABEL_35;
    }

    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "Delegate notified synced up asset in cloud", v93, 2u);
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_100066000(v94, qword_10012A3A8);
    v95 = v104;
    sub_1000AF858(v87, v104);
    v91 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v91, v96))
    {

      sub_1000AF8BC(v95);
      return sub_1000AF8BC(v87);
    }

    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v118 = v98;
    *v97 = 136315138;
    v99 = sub_100095824();
    v101 = v100;
    sub_1000AF8BC(v95);
    v102 = sub_100065658(v99, v101, &v118);

    *(v97 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v91, v96, "Delegate failed to process didSyncUp for %s", v97, 0xCu);
    sub_10005D588(v98);
  }

LABEL_35:

  return sub_1000AF8BC(v87);
}

uint64_t sub_1000A882C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A884C, v1, 0);
}

uint64_t sub_1000A884C()
{
  v21 = v0;
  v1 = [*(v0 + 16) recordName];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012A3A8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100065658(v2, v4, v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deletion completed in cloud for %s, deleting local cache", v8, 0xCu);
    sub_10005D588(v9);
  }

  (*(**(v0 + 24) + 320))(v2, v4);
  v10 = [*(*(v0 + 24) + 120) didSyncUpAssetDelete:v1];

  if (v10)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_13:

      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Delegate notified deletion synced up in cloud", v13, 2u);
LABEL_12:

    goto LABEL_13;
  }

  v11 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315138;
    v17 = sub_100065658(v2, v4, v20);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v14, "Delegate failed to process didSyncUpAssetDelete for recordName: %s", v15, 0xCu);
    sub_10005D588(v16);

    goto LABEL_12;
  }

LABEL_15:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000A8BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A8C18, v2, 0);
}

uint64_t sub_1000A8C18()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) recordName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteAsset:v2 error:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000A8CE8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000A8D78, v1, 0);
}

uint64_t sub_1000A8D78()
{
  v48 = v0;
  v1 = *(v0 + 32);
  v2 = (*(*v1 + 232))();
  (*(*v1 + 240))(0);
  if (v2)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 24);
    v4 = type metadata accessor for Logger();
    sub_100066000(v4, qword_10012A3A8);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v47 = v10;
      *v9 = 136315138;
      v11 = [v8 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100065658(v12, v14, &v47);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting Manatee Identity Recovery by re-uploading local records for %s", v9, 0xCu);
      sub_10005D588(v10);
    }

    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012A3A8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100065658(0xD000000000000011, 0x80000001000F1080, &v47);
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete all local records cached in %s after zone deleted", v20, 0xCu);
    sub_10005D588(v21);
  }

  v22 = (*(**(v0 + 32) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v24 = [v22 deleteFor:isa attributes:0 error:v0 + 16];

  v25 = *(v0 + 16);
  if (!v24)
  {
    v34 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = *(v0 + 8);
    goto LABEL_19;
  }

  v26 = *(v0 + 24);
  v27 = *(*(v0 + 32) + 120);
  v28 = v25;
  v29 = [v26 zoneName];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = [v27 didReceiveZoneDelete:v29 reason:v16];

  if (v30)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Delegate notified zone deleted in cloud", v33, 2u);
LABEL_24:
    }
  }

  else
  {
    v37 = *(v0 + 24);
    v31 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v38))
    {
      v39 = *(v0 + 24);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315138;
      v42 = [v39 zoneName];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_100065658(v43, v45, &v47);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v31, v38, "Delegate failed to process didReceiveZoneDelete for zoneName: %s", v40, 0xCu);
      sub_10005D588(v41);

      goto LABEL_24;
    }
  }

  v35 = *(v0 + 8);
LABEL_19:

  return v35();
}

uint64_t sub_1000A9398(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A93BC, v2, 0);
}

uint64_t sub_1000A93BC()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) zoneName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteZone:v2 error:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000A948C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MACloudMAAsset(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000A9664, v2, 0);
}

uint64_t sub_1000A9664()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*(*v1 + 328))(v4, v6);
  v58 = v4;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 32);
  v11 = *(*v10 + 26);
  v12 = *(v0 + 24);
  v13 = v11();
  v15 = v14;
  sub_1000939A8(v7, v8, &qword_100128808, &unk_1000E6C50);
  sub_1000993E8(v12, v13, v15, v8, v10[14], v9);
  v17 = *(v0 + 128);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  sub_1000939A8(*(v0 + 144), v17, &qword_100128808, &unk_1000E6C50);
  v20 = *(v19 + 48);
  v21 = v20(v17, 1, v18);
  v22 = v21;
  v23 = *(v0 + 128);
  if (v22 == 1)
  {
    sub_100066C80(v23, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v24 = *(v0 + 112);
    sub_1000AFAB8(v23, *(v0 + 104));
    if (sub_1000951B4(v24, 1))
    {
      v25 = *(v0 + 144);
      v27 = *(v0 + 104);
      v26 = *(v0 + 112);
      v28 = *(v0 + 24);
      sub_100097C44();
      sub_1000A7B30(v58, v6, v28);

      sub_1000AF8BC(v27);
      sub_1000AF8BC(v26);
      sub_100066C80(v25, &qword_100128808, &unk_1000E6C50);
      v59 = 0;
      goto LABEL_15;
    }

    sub_1000AF8BC(*(v0 + 104));
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 88);
  sub_1000939A8(*(v0 + 144), v29, &qword_100128808, &unk_1000E6C50);
  v31 = v20(v29, 1, v30);
  v32 = *(v0 + 120);
  if (v31 == 1)
  {
    v33 = *(v0 + 56);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    sub_100066C80(v32, &qword_100128808, &unk_1000E6C50);
    (*(v34 + 56))(v35, 1, 1, v33);
LABEL_13:
    sub_100066C80(*(v0 + 48), &qword_1001287D0, &qword_1000E6C30);
LABEL_14:
    v42 = *(v0 + 144);
    v43 = *(v0 + 112);
    v44 = *(v0 + 32);
    sub_100097C44();
    (*(*v44 + 336))(v58, v6, v43);

    sub_1000AF8BC(v43);
    sub_100066C80(v42, &qword_100128808, &unk_1000E6C50);
    v59 = 1;
LABEL_15:

    v45 = *(v0 + 8);

    return v45(v59);
  }

  v36 = *(v0 + 88);
  v37 = *(v0 + 56);
  v38 = *(v0 + 64);
  v39 = *(v0 + 48);
  v40 = *(v0 + 120);
  sub_1000939A8(v32 + *(v36 + 72), v39, &qword_1001287D0, &qword_1000E6C30);
  sub_1000AF8BC(v40);
  v41 = *(v38 + 48);
  if (v41(v39, 1, v37) == 1)
  {
    goto LABEL_13;
  }

  v46 = *(v0 + 112);
  v47 = *(v0 + 56);
  v48 = *(v0 + 40);
  v49 = *(*(v0 + 64) + 32);
  v49(*(v0 + 80), *(v0 + 48), v47);
  sub_1000939A8(v46 + *(v36 + 72), v48, &qword_1001287D0, &qword_1000E6C30);
  if (v41(v48, 1, v47) == 1)
  {
    v50 = *(v0 + 40);
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    sub_100066C80(v50, &qword_1001287D0, &qword_1000E6C30);
    goto LABEL_14;
  }

  v49(*(v0 + 72), *(v0 + 40), *(v0 + 56));
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v55 = *(v0 + 80);
    v56 = *(v0 + 56);
    v57 = *(*(v0 + 64) + 8);
    v57(*(v0 + 72), v56);
    v57(v55, v56);
    goto LABEL_14;
  }

  v51 = *(v0 + 32);

  v60 = (*(*v51 + 280) + **(*v51 + 280));
  v52 = swift_task_alloc();
  *(v0 + 152) = v52;
  *v52 = v0;
  v52[1] = sub_1000A9DA8;
  v53 = *(v0 + 144);
  v54 = *(v0 + 112);

  return v60(v54, v53);
}

uint64_t sub_1000A9DA8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1000AA00C;
  }

  else
  {
    v4 = sub_1000A9ED4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000A9ED4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000AF8BC(v2);
  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000AA00C()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000AF8BC(v2);
  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000AA14C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v2[37] = swift_task_alloc();
  v3 = type metadata accessor for MACloudMAAsset(0);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000AA270, v1, 0);
}

uint64_t sub_1000AA270()
{
  v43 = v0;
  v1 = [*(v0 + 280) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012A3A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v42);
    _os_log_impl(&_mh_execute_header, v7, v8, "removing ETag for unknown item recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 288) + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  v41 = v3;
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(8);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  *(v14 + 96) = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 128) = 0x676154456B63;
  *(v14 + 136) = 0xE600000000000000;
  v15 = [objc_allocWithZone(NSNull) init];
  *(v14 + 168) = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *(v14 + 144) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 272) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 272];

  v17 = *(v0 + 272);
  if (!inited)
  {
    v27 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v28 = *(v0 + 8);
    v29 = 0;
    goto LABEL_10;
  }

  v18 = *(**(v0 + 288) + 328);
  v19 = v17;
  v18(v41, v5);
  v20 = *(v0 + 304);
  v21 = *(v0 + 296);
  if ((*(*(v0 + 312) + 48))(v21, 1, v20) == 1)
  {
    sub_100066C80(v21, &qword_100128808, &unk_1000E6C50);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315138;
      v26 = sub_100065658(v41, v5, &v42);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "failed to fetch local asset for recordName: %s for unknown item error", v24, 0xCu);
      sub_10005D588(v25);
    }

    else
    {
    }

LABEL_20:
    v40 = 0;
    goto LABEL_21;
  }

  v31 = *(v0 + 320);
  sub_1000AFAB8(v21, v31);
  if (*(v31 + *(v20 + 108) + 8))
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 320);
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      v38 = sub_100065658(v41, v5, &v42);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to delete ckETag for recordName: %s for unknown item error", v36, 0xCu);
      sub_10005D588(v37);
    }

    else
    {
    }

    sub_1000AF8BC(v35);
    goto LABEL_20;
  }

  v39 = *(v0 + 320);

  sub_1000AF8BC(v39);
  v40 = 1;
LABEL_21:

  v28 = *(v0 + 8);
  v29 = v40;
LABEL_10:

  return v28(v29);
}

uint64_t sub_1000AAA2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return sub_1000AFC14(a1);
}

uint64_t sub_1000AAAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudMAAsset(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000AABDC, v1, 0);
}

uint64_t sub_1000AABDC()
{
  v34 = v0;
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*(*v1 + 328))(v4, v6);
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100066000(v7, qword_10012A3A8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_100065658(v4, v6, v33);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    v14 = (*(*v10 + 208))(v13);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = sub_100065658(v14, v16, v33);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "recordSyncedDown from cloud recordName: %s, accountIdentifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = *(v0 + 48);
  v21 = *(v0 + 24);
  v22 = *(*v21 + 26);
  v23 = *(v0 + 16);
  v24 = v22();
  v26 = v25;
  sub_1000939A8(v18, v19, &qword_100128808, &unk_1000E6C50);
  sub_1000993E8(v23, v24, v26, v19, v21[14], v20);
  v27 = *(**(v0 + 24) + 280);
  v32 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 72) = v28;
  *v28 = v0;
  v28[1] = sub_1000AB098;
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);

  return v32(v30, v29);
}

uint64_t sub_1000AB098()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1000AB268;
  }

  else
  {
    v4 = sub_1000AB1C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000AB1C4()
{
  v1 = v0[8];
  sub_1000AF8BC(v0[6]);
  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000AB268()
{
  sub_1000AF8BC(v0[6]);
  sub_100066C80(v0[8], &qword_100128808, &unk_1000E6C50);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000AB30C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000AB32C, v1, 0);
}

uint64_t sub_1000AB32C()
{
  v19 = v0;
  v1 = [*(v0 + 16) recordName];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012A3A8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100065658(v2, v4, v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleted from cloud for %s, deleting local cache", v8, 0xCu);
    sub_10005D588(v9);
  }

  v10 = [*(*(v0 + 24) + 120) didReceiveAssetDelete:v1 assetType:0 assetHandle:0];
  if (v10)
  {
    (*(**(v0 + 24) + 320))(v2, v4);
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315138;
      v15 = sub_100065658(v2, v4, v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Delegate failed to process didReceiveAssetDelete for recordName: %s", v13, 0xCu);
      sub_10005D588(v14);
    }

    else
    {
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000AB664(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB774, v2, 0);
}

uint64_t sub_1000AB774()
{
  v120 = v0;
  v1 = (*(**(v0 + 40) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (!v3)
  {
    v35 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v36 = *(v0 + 8);
    goto LABEL_13;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  v8(v5, *(v0 + 32), v6);
  v9 = (*(v7 + 88))(v5, v6);
  if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v10 = qword_10012A3A0;
    v11 = v4;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012A3A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Zone was deleted in the cloud, perform local clean up", v15, 2u);
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    v18 = *(v16 + 120);
    v19 = [v17 zoneName];
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = *(v0 + 24);
    v21 = [v18 didReceiveZoneDelete:v19 reason:1];

    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = *(v0 + 24);
    if (v21)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v26 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v29 = [v26 zoneName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_100065658(v30, v32, &v119);

        *(v27 + 4) = v33;
        v34 = "Delegate notified zone delete sync down %s";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v23, v25, v34, v27, 0xCu);
        sub_10005D588(v28);
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v58 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v59 = [v58 zoneName];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = sub_100065658(v60, v62, &v119);

        *(v27 + 4) = v63;
        v34 = "Delegate failed to ack zone delete sync down %s";
        goto LABEL_46;
      }
    }
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v38 = qword_10012A3A0;
    v39 = v4;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100066000(v40, qword_10012A3A8);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Zone was purged by the user, perform local clean up", v43, 2u);
    }

    v44 = *(v0 + 40);
    v45 = *(v0 + 24);

    v46 = *(v44 + 120);
    v47 = [v45 zoneName];
    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    v48 = *(v0 + 24);
    v49 = [v46 didReceiveZoneDelete:v47 reason:3];

    v50 = v48;
    v23 = Logger.logObject.getter();
    v51 = *(v0 + 24);
    if (v49)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v52 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v53 = [v52 zoneName];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = sub_100065658(v54, v56, &v119);

        *(v27 + 4) = v57;
        v34 = "Delegate notified zone purge sync down %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v86 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v87 = [v86 zoneName];
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        v91 = sub_100065658(v88, v90, &v119);

        *(v27 + 4) = v91;
        v34 = "Delegate failed to ack zone purge sync down %s";
        goto LABEL_46;
      }
    }
  }

  else
  {
    v64 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    v65 = qword_10012A3A0;
    v66 = v9;
    v67 = v4;
    if (v66 != v64)
    {
      if (v65 != -1)
      {
        swift_once();
      }

      v92 = *(v0 + 72);
      v93 = *(v0 + 48);
      v94 = *(v0 + 32);
      v95 = type metadata accessor for Logger();
      sub_100066000(v95, qword_10012A3A8);
      v8(v92, v94, v93);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 72);
      if (v98)
      {
        v118 = v97;
        v100 = *(v0 + 56);
        v101 = *(v0 + 64);
        v102 = *(v0 + 48);
        v103 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v119 = v117;
        *v103 = 136315138;
        v8(v101, v99, v102);
        v104 = String.init<A>(describing:)();
        v106 = v105;
        v107 = *(v100 + 8);
        v107(v99, v102);
        v108 = sub_100065658(v104, v106, &v119);

        *(v103 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v96, v118, "Unhandled zone deletion reason: %s, skip local clean up", v103, 0xCu);
        sub_10005D588(v117);
      }

      else
      {
        v115 = *(v0 + 48);
        v116 = *(v0 + 56);

        v107 = *(v116 + 8);
        v107(v99, v115);
      }

      v107(*(v0 + 80), *(v0 + 48));
      goto LABEL_48;
    }

    if (v65 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100066000(v68, qword_10012A3A8);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Zone was deleted because of encryptedDataReset, skip local clean up, trying to re-upload local records", v71, 2u);
    }

    v72 = *(v0 + 40);
    v73 = *(v0 + 24);

    v74 = *(v72 + 120);
    v75 = [v73 zoneName];
    if (!v75)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = String._bridgeToObjectiveC()();
    }

    v76 = *(v0 + 24);
    v77 = [v74 didReceiveZoneDelete:v75 reason:2];

    v78 = v76;
    v23 = Logger.logObject.getter();
    v79 = *(v0 + 24);
    if (v77)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v80 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v81 = [v80 zoneName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85 = sub_100065658(v82, v84, &v119);

        *(v27 + 4) = v85;
        v34 = "Delegate notified zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v109 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v110 = [v109 zoneName];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        v114 = sub_100065658(v111, v113, &v119);

        *(v27 + 4) = v114;
        v34 = "Delegate failed to ack zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }
  }

LABEL_48:

  v36 = *(v0 + 8);
LABEL_13:

  return v36();
}

uint64_t sub_1000AC378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for MACloudMAAsset(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000AC470, v1, 0);
}

uint64_t sub_1000AC470()
{
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012A3A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting createCKRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v10 = v0[3];
  v11 = v0[2];

  v12 = [v11 recordName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(*v10 + 328))(v13, v15);
  v16 = v0[5];
  v17 = v0[6];
  v18 = v0[4];

  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100066C80(v0[4], &qword_100128808, &unk_1000E6C50);
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v22 = v0[2];
  sub_1000AFAB8(v0[4], v0[7]);
  sub_100092C8C(0, &unk_100129090, CKRecord_ptr);
  v23 = v22;
  v24._countAndFlagsBits = 0x537465737341414DLL;
  v24._object = 0xEC00000065726F74;
  v25.super.isa = CKRecord.init(recordType:recordID:)(v24, v23).super.isa;
  if ((sub_100098440(v25.super.isa) & 1) == 0)
  {
    sub_1000AF8BC(v0[7]);

    goto LABEL_7;
  }

  v19 = v25.super.isa;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v19;
    *v29 = v19;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v26, v27, "fetchLocalRecord returns %@ to upload to cloud", v28, 0xCu);
    sub_100066C80(v29, &qword_1001287F0, &qword_1000E6C40);
  }

  sub_1000AF8BC(v0[7]);
LABEL_8:

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1000AC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 72) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return _swift_task_switch(sub_1000AC890, v5, 0);
}

uint64_t sub_1000AC890()
{
  v21 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012A3A8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;

    sub_10005F5CC(&qword_100128890, &qword_1000E6D60);
    v7 = String.init<A>(describing:)();
    v9 = sub_100065658(v7, v8, &v20);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v0 + 16) = v18;
    *(v0 + 24) = v19;

    v10 = String.init<A>(describing:)();
    v12 = sub_100065658(v10, v11, &v20);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "handleAccountChange signInUser=%s, signOutUser=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(*(v0 + 64) + 120);
  if (*(v0 + 40))
  {
    v14 = String._bridgeToObjectiveC()();
    if (*(v0 + 56))
    {
LABEL_7:
      v15 = String._bridgeToObjectiveC()();
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    if (*(v0 + 56))
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_10:
  [v13 accountChangedWithSigninUser:v14 signoutUser:v15 accountSwitch:{*(v0 + 72), v18, v19, v20}];

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000ACB34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000ACB58, v1, 0);
}

uint64_t sub_1000ACB58()
{
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012A3A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set inManateeIdentityRecovery=%{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  (*(*v6 + 240))(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000ACD7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return sub_1000AC378(a1);
}

uint64_t sub_1000ACE10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A7444(a1);
}

uint64_t sub_1000ACEA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A882C(a1);
}

uint64_t sub_1000ACF38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A8CE8(a1);
}

uint64_t sub_1000ACFCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000B0D60;

  return sub_1000A948C(a1, a2);
}

uint64_t sub_1000AD070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000AD104;

  return sub_1000AA14C(a1);
}

uint64_t sub_1000AD104(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1000AD20C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000AFC14(a1);
}

uint64_t sub_1000AD2B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000AAAD8(a1);
}

uint64_t sub_1000AD34C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000AB30C(a1);
}

uint64_t sub_1000AD3E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000AB664(a1, a2);
}

uint64_t sub_1000AD484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MACloudAssetLocalStore();
  *v8 = v4;
  v8[1] = sub_1000AD548;

  return sub_1000C2394(a1, a2, v9, a4);
}

uint64_t sub_1000AD548(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1000AD658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100067294;

  return sub_1000AC864(a1, a2, a3, a4, a5);
}

uint64_t sub_1000AD71C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_1000A59E8(a1, a2);
}

uint64_t sub_1000AD7C0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000ACB34(a1);
}

uint64_t sub_1000AD854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067294;

  return sub_1000A570C();
}

uint64_t sub_1000AD8F8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000AD970(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000AD9F0@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000ADA3C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000ADA68(uint64_t a1)
{
  v2 = sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey, &unk_1000E7310);
  v3 = sub_1000AF620(&qword_100128C10, 255, type metadata accessor for FileAttributeKey, &unk_1000E710C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000ADB2C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000ADB74(uint64_t a1)
{
  v2 = sub_1000AF620(&qword_100128C00, 255, type metadata accessor for FileProtectionType, &unk_1000E7280);
  v3 = sub_1000AF620(&qword_100128C08, 255, type metadata accessor for FileProtectionType, &unk_1000E7220);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000ADC38()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000ADC74(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000ADCC8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000ADD3C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000ADDC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000ADFF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000AF400(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10005F358(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000ADDC4(v13, a3, a4, &v12);
  v10 = v4;
  sub_10005F358(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_1000AE184(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&qword_100128C18, &qword_1000E7358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005F5CC(&qword_100128C20, &qword_1000E7360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000AE2CC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000AE3A4(a1, v2);
}

unint64_t sub_1000AE360(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000AE4A8(a1, v4);
}

unint64_t sub_1000AE3A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000AE4A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000B0CD8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000AF804(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_1000AE570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100065A98(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000AF25C();
      v10 = v12;
    }

    sub_1000AF7F4((*(v10 + 56) + 32 * v8), a3);
    sub_1000AEB84(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int sub_1000AE614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000AF7F4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000B0CD8(v23, &v36);
        sub_100066130(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000AF7F4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1000AE8CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000AF7F4(v24, v34);
      }

      else
      {
        sub_100066130(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000AF7F4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000AEB84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1000AED34(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000AE360(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000AF0B8();
      goto LABEL_7;
    }

    sub_1000AE614(v13, a3 & 1);
    v19 = sub_1000AE360(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000B0CD8(a2, v21);
      return sub_1000AEFD0(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10005D588(v17);

  return sub_1000AF7F4(a1, v17);
}

_OWORD *sub_1000AEE80(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100065A98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000AF25C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000AE8CC(v16, a4 & 1);
    v11 = sub_100065A98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10005D588(v22);

    return sub_1000AF7F4(a1, v22);
  }

  else
  {
    sub_1000AF04C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000AEFD0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000AF7F4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1000AF04C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000AF7F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000AF0B8()
{
  v1 = v0;
  sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000B0CD8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100066130(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000AF7F4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000AF25C()
{
  v1 = v0;
  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100066130(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000AF7F4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000AF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000ADDC4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1000AF4B8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10005F304(a3, a4);
          return sub_1000ADFF4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000AF620(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1000AF6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000939A8(v4, v13, &qword_100128C48, &qword_1000E7388);
      result = sub_1000AE360(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000AF7F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000AF7F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000AF858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudMAAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF8BC(uint64_t a1)
{
  v2 = type metadata accessor for MACloudMAAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AF988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000939A8(v4, &v13, &qword_100129070, &qword_1000E7440);
      v5 = v13;
      v6 = v14;
      result = sub_100065A98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000AF7F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000AFAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudMAAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AFB1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C30, &qword_1000E7370);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000AE2CC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000AFC14(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v2[31] = swift_task_alloc();
  v3 = type metadata accessor for MACloudMAAsset(0);
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000AFD58, v1, 0);
}

uint64_t sub_1000AFD58()
{
  v63 = v0;
  v1 = [*(v0 + 232) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012A3A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v62);
    _os_log_impl(&_mh_execute_header, v7, v8, "Mark quota exceeded for recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 240) + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6C00;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(9);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  v15 = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 96) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 224) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 224];

  v17 = *(v0 + 224);
  if (!inited)
  {
    v26 = v17;

    _convertNSErrorToError(_:)();

LABEL_10:
    swift_willThrow();

    v27 = *(v0 + 8);
    goto LABEL_11;
  }

  v18 = *(**(v0 + 240) + 328);
  v19 = v17;
  v18(v3, v5);
  v20 = *(v0 + 248);
  if ((*(*(v0 + 264) + 48))(v20, 1, *(v0 + 256)) == 1)
  {
    sub_100066C80(v20, &qword_100128808, &unk_1000E6C50);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v62 = v24;
      *v23 = 136315138;
      v25 = sub_100065658(v3, v5, &v62);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "failed to fetch local asset for recordName: %s for quota exceeded error", v23, 0xCu);
      sub_10005D588(v24);
    }

    else
    {
    }

    sub_1000B9568();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_100092A98();
    swift_allocError();
    *v53 = v48;
    *(v53 + 8) = v50;
    *(v53 + 16) = v52;
    goto LABEL_10;
  }

  v29 = *(v0 + 288);
  v30 = *(v0 + 240);

  sub_1000AFAB8(v20, v29);
  v31 = *(v30 + 120);
  v32 = sub_1000970C0();
  sub_1000B9568();
  v36 = sub_1000B6504(v33, v34, v35);

  v37 = _convertErrorToNSError(_:)();

  LODWORD(v31) = [v31 failedToUploadAsset:v32 error:v37];
  v38 = *(v0 + 288);
  if (!v31)
  {
    sub_1000AF858(v38, *(v0 + 272));
    v39 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v39, v54);
    v43 = *(v0 + 288);
    v42 = *(v0 + 272);
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v56 = 136315138;
      v58 = sub_100095824();
      v60 = v59;
      sub_1000AF8BC(v42);
      v61 = sub_100065658(v58, v60, &v62);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v39, v54, "Delegate failed to process failed to upload asset %s", v56, 0xCu);
      sub_10005D588(v57);
      goto LABEL_21;
    }

LABEL_22:

    sub_1000AF8BC(v42);
    goto LABEL_23;
  }

  sub_1000AF858(v38, *(v0 + 280));
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 280);
  v43 = *(v0 + 288);
  if (!v41)
  {
    goto LABEL_22;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *v44 = 138412290;
  v46 = sub_1000970C0();
  sub_1000AF8BC(v42);
  *(v44 + 4) = v46;
  *v45 = v46;
  _os_log_impl(&_mh_execute_header, v39, v40, "Delegate processed failed to upload asset %@", v44, 0xCu);
  sub_100066C80(v45, &qword_1001287F0, &qword_1000E6C40);
LABEL_21:

LABEL_23:
  sub_1000AF8BC(v43);

  v27 = *(v0 + 8);
LABEL_11:

  return v27();
}

uint64_t sub_1000B0630(uint64_t a1)
{
  result = sub_1000AF620(&qword_100128898, 255, type metadata accessor for MACloudMAAsset, &unk_1000E6D8C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B068C(uint64_t a1, uint64_t a2)
{
  result = sub_1000AF620(&qword_1001288A0, a2, type metadata accessor for MACloudAssetLocalStore, &unk_1000E6DB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B07EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B089C(uint64_t a1)
{
  sub_1000B0AC0(319, &qword_100128900, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000B0AC0(319, &qword_100128908, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MASDAssetType(319);
      if (v3 <= 0x3F)
      {
        sub_1000B0A40(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MASDProfileType(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000B0A40(uint64_t a1)
{
  if (!qword_100128910)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100128910);
    }
  }
}

void sub_1000B0AC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000B0D64()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012ADD8);
  sub_100066000(v0, qword_10012ADD8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0x617453737953414DLL, 0xEF65726F74536574);
}

uint64_t sub_1000B0E10(void *a1)
{
  v2 = swift_allocObject();
  sub_1000B0E50(a1);
  return v2;
}

uint64_t sub_1000B0E50(void *a1)
{
  swift_defaultActor_initialize();
  type metadata accessor for MAKVStoreBase();
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E6BE0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E6BE0;
  *(v4 + 32) = 7955819;
  *(v4 + 40) = 0xE300000000000000;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 3;
  *(v4 + 120) = &type metadata for UInt;
  *(v4 + 88) = &type metadata for UInt;
  *(v4 + 96) = 1;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BE0;
  *(v5 + 32) = 7102838;
  *(v5 + 40) = 0xE300000000000000;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = 4;
  *(v5 + 120) = &type metadata for Int;
  *(v5 + 88) = &type metadata for UInt;
  *(v5 + 96) = 0;
  *(v3 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 40) = v7;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 2;
  *(v6 + 120) = &type metadata for Int;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 0;
  *(v3 + 48) = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a1;
  v12 = sub_1000C450C(0x617453737953414DLL, 0xEA00000000006574, v3, v11, v8, v10, 0, 0, 1, 1);
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  return v1;
}

void *sub_1000B102C()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0x7453636E79536B63;
    *(inited + 56) = 0xEB00000000657461;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v15[0] = 0;
    v7 = [v3 queryDictionaryFor:isa attributes:0 error:v15];

    v8 = v15[0];
    if (v7)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v8;

      if (*(v9 + 16) && (v11 = sub_100065A98(7102838, 0xE300000000000000), (v12 & 1) != 0))
      {
        sub_100066130(*(v9 + 56) + 32 * v11, v15);

        if (swift_dynamicCast())
        {
          return v14;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v13 = v15[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000B1294(uint64_t a1, unint64_t a2)
{
  result = (*(*v2 + 200))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E6BE0;
    *(inited + 32) = 7955819;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0x7453636E79536B63;
    *(inited + 56) = 0xEB00000000657461;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 7102838;
    *(inited + 120) = &type metadata for Data;
    *(inited + 88) = 0xE300000000000000;
    *(inited + 96) = a1;
    *(inited + 104) = a2;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v9;
    type metadata accessor for MAKVStoreBase();
    sub_10005F304(a1, a2);
    v10 = sub_1000C4DCC();
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v10;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_10005F5CC(&qword_100129070, &qword_1000E7440);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = 0;
    v12 = [v7 putDictionay:isa attributes:0 error:&v14];

    if (v12)
    {
      return v14;
    }

    else
    {
      v13 = v14;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B14E8(uint64_t a1)
{
  __src = a1;
  v3 = sub_10005EB70(&__src, v18);
  v5 = v4 & 0xFFFFFFFFFFFFFFLL;
  v6 = (*(*v1 + 200))();
  if (!v2)
  {
    v7 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_1000E6BE0;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000F13D0;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 7102838;
    *(inited + 120) = &type metadata for Data;
    *(inited + 88) = 0xE300000000000000;
    *(inited + 96) = v3;
    *(inited + 104) = v5;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v9;
    type metadata accessor for MAKVStoreBase();
    sub_10005F304(v3, v5);
    v10 = sub_1000C4DCC();
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v10;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_10005F5CC(&qword_100129070, &qword_1000E7440);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = 0;
    v12 = [v7 putDictionay:isa attributes:0 error:&v16];

    if (v12)
    {
      v13 = v16;
    }

    else
    {
      v14 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return sub_10005F358(v3, v5);
}

uint64_t sub_1000B1744()
{
  v3 = (*(*v1 + 200))();
  if (v2)
  {
    return v0;
  }

  v4 = v3;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 7955819;
  v6 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000001000F13D0;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(v6, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28[0] = 0;
  v8 = [v4 queryDictionaryFor:isa attributes:0 error:v28];

  v9 = v28[0];
  if (!v8)
  {
    v16 = v28[0];
    v0 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return v0;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v9;

  if (!*(v10 + 16) || (v12 = sub_100065A98(7102838, 0xE300000000000000), (v13 & 1) == 0))
  {

    return 0;
  }

  sub_100066130(*(v10 + 56) + 32 * v12, v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v0 = v26;
  v14 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v14)
    {
      sub_10005F358(v26, v27);
      sub_10005F358(v26, v27);
      return v0;
    }

    goto LABEL_18;
  }

  if (v14 != 2)
  {
    sub_10005F358(v26, v27);
    sub_10005F358(v26, v27);
    return 0;
  }

  v17 = *(v26 + 16);

  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_28;
  }

  v19 = v18;
  v20 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v20))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v21 = (v17 - v20 + v19);
  __DataStorage._length.getter();
  if (v21)
  {
LABEL_22:
    v25 = *v21;
    sub_10005F358(v26, v27);
    sub_10005F358(v26, v27);
    return v25;
  }

  __break(1u);
LABEL_18:
  if (v26 > v26 >> 32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_28:
    result = __DataStorage._length.getter();
    goto LABEL_29;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v26, v24))
  {
    goto LABEL_26;
  }

  v21 = (v26 - v24 + v23);
  result = __DataStorage._length.getter();
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_1000B1AC0()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000F13D0;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = 0;
    LODWORD(v5) = [v3 deleteFor:isa attributes:0 error:&v8];

    if (v5)
    {
      return v8;
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_1000B1C8C()
{
  v1 = (*(*v0 + 200))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 7955819;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0x7453636E79536B63;
  *(inited + 56) = 0xEB00000000657461;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(v3, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14[0] = 0;
  LODWORD(v3) = [v1 deleteFor:isa attributes:0 error:v14];

  v5 = v14[0];
  if (v3)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10012ADD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_10012ADD8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to delete/reset SyncState, error: %@", v11, 0xCu);
      sub_100066C80(v12, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {
    }
  }
}

char *sub_1000B1FB0()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 200))(v3);
  if (!v1)
  {
    v8 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v10 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000001000F13F0;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v10, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v22[0] = 0;
    v12 = [v8 queryDictionaryFor:isa attributes:0 error:v22];

    v13 = *&v22[0];
    if (v12)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v13;

      if (*(v14 + 16) && (v16 = sub_100065A98(7102838, 0xE300000000000000), (v17 & 1) != 0))
      {
        sub_100066130(*(v14 + 56) + 32 * v16, v21);

        sub_1000AF7F4(v21, v22);
        swift_dynamicCast();
        v18 = v20[1];
        v19 = v20[2];
        static String.Encoding.ascii.getter();
        v5 = String.init(data:encoding:)();
        sub_10005F358(v18, v19);
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v5 = *&v22[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1000B2294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.ascii.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  if (v10 >> 60 != 15)
  {
    v12 = (*(*v2 + 200))(result);
    if (!v3)
    {
      v13 = v12;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 32) = 7955819;
      *(inited + 16) = xmmword_1000E6BE0;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0xD000000000000010;
      *(inited + 56) = 0x80000001000F13F0;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7102838;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = v8;
      *(inited + 104) = v10;
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v15;
      type metadata accessor for MAKVStoreBase();
      sub_10005F304(v8, v10);
      v16 = sub_1000C4DCC();
      *(inited + 168) = &type metadata for Double;
      *(inited + 144) = v16;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = 0;
      v18 = [v13 putDictionay:isa attributes:0 error:&v21];

      if (v18)
      {
        v19 = v21;
      }

      else
      {
        v20 = v21;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    return sub_10005F69C(v8, v10);
  }

  return result;
}

uint64_t sub_1000B25A4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  result = (*(*v1 + 200))(v5);
  if (!v2)
  {
    v9 = result;
    v33 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v11 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    strcpy((inited + 48), "lastPurgedDate");
    *(inited + 63) = -18;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v11, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36[0] = 0;
    v13 = [v9 queryDictionaryFor:isa attributes:0 error:v36];

    v14 = v36[0];
    if (v13)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      v17 = type metadata accessor for Date();
      v18 = *(*(v17 - 8) + 56);
      v18(a1, 1, 1, v17);
      if (*(v15 + 16) && (v19 = sub_100065A98(7102838, 0xE300000000000000), (v20 & 1) != 0))
      {
        sub_100066130(*(v15 + 56) + 32 * v19, v36);

        result = swift_dynamicCast();
        if (result)
        {
          v22 = v34;
          v21 = v35;
          v23 = v35 >> 62;
          if ((v35 >> 62) <= 1)
          {
            if (!v23)
            {
              goto LABEL_22;
            }

            if (v34 <= v34 >> 32)
            {
              v32 = __DataStorage._bytes.getter();
              if (v32)
              {
                v29 = __DataStorage._offset.getter();
                if (!__OFSUB__(v22, v29))
                {
                  v30 = v22 - v29 + v32;
                  result = __DataStorage._length.getter();
                  if (v30)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_29;
                }

LABEL_25:
                __break(1u);
              }

LABEL_28:
              result = __DataStorage._length.getter();
              __break(1u);
LABEL_29:
              __break(1u);
              return result;
            }

            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          if (v23 == 2)
          {
            v32 = *(v34 + 16);
            v25 = __DataStorage._bytes.getter();
            if (!v25)
            {
              __DataStorage._length.getter();
              goto LABEL_27;
            }

            v26 = v25;
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v27))
            {
              goto LABEL_24;
            }

            v28 = v32 - v27 + v26;
            __DataStorage._length.getter();
            if (!v28)
            {
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

LABEL_22:
          Date.init(timeIntervalSinceReferenceDate:)();
          sub_10005F358(v22, v21);
          sub_100066C80(a1, &qword_1001287D0, &qword_1000E6C30);
          v18(v7, 0, 1, v17);
          return sub_1000B3024(v7, a1);
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v36[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B29C0()
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v6;
  v7 = sub_1000B2CE0(&v21, v22);
  v9 = v8;
  v10 = (*(*v0 + 200))();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);
    return sub_10005F358(v7, v9);
  }

  v11 = v10;
  v20 = v2;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 7955819;
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 40) = 0xE300000000000000;
  strcpy((inited + 48), "lastPurgedDate");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 7102838;
  *(inited + 120) = &type metadata for Data;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v7;
  *(inited + 104) = v9;
  sub_10005F304(v7, v9);
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = 0;
  v14 = [v11 putDictionay:isa attributes:0 error:&v21];

  if (v14)
  {
    v15 = *(v3 + 8);
    v16 = v21;
    v15(v5, v20);
    return sub_10005F358(v7, v9);
  }

  v18 = v21;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10005F358(v7, v9);
  return (*(v3 + 8))(v5, v20);
}

uint64_t sub_1000B2CE0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10005E340(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10005EB70(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10005EC28(v3, v4);
    }

    else
    {
      v6 = sub_10005ECA4(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10005D588(v8);
  return v6;
}

id sub_1000B2D9C()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    strcpy((inited + 48), "lastPurgedDate");
    *(inited + 63) = -18;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = 0;
    LODWORD(v5) = [v3 deleteFor:isa attributes:0 error:&v8];

    if (v5)
    {
      return v8;
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B2FB4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B2FE4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B3024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B30B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3128()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012AE78);
  sub_100066000(v0, qword_10012AE78);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000012, 0x80000001000E7590);
}

id MACloudSyncManager.__allocating_init(storage:delegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1000BF9E4(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

id MACloudSyncManager.init(storage:delegate:)(void *a1, uint64_t a2)
{
  v3 = sub_1000BF9E4(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

unint64_t variable initialization expression of MACloudSyncManager.assetsNotToBeSynced()
{
  sub_10005F5CC(&qword_100128DD0, &qword_1000E7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 32) = 100;
  v1 = sub_1000BF6D4(&off_100117BE0);
  sub_10005F5CC(&qword_100128DD8, &qword_1000E7408);
  swift_arrayDestroy();
  *(inited + 40) = v1;
  *(inited + 48) = 125;
  v2 = sub_1000BF6D4(&off_100117C30);
  sub_100066C80(&unk_100117C50, &qword_100128DD8, &qword_1000E7408);
  *(inited + 56) = v2;
  v3 = sub_1000BF7D8(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128DE0, &qword_1000E7410);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1000B33CC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase);
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000B3480;

  return sub_1000A593C(v1);
}

uint64_t sub_1000B3480()
{

  return _swift_task_switch(sub_1000B357C, 0, 0);
}

uint64_t sub_1000B357C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000B3624;
  v2 = *(v0 + 24);

  return sub_1000D21B0(v2);
}

uint64_t sub_1000B3624()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v6 = *v0;

  v5 = (*(*v2 + 240) + **(*v2 + 240));
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v6;
  v3[1] = sub_1000B37F8;

  return v5(0, 0);
}

uint64_t sub_1000B37F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000B3A60(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B3AD8, 0, 0);
}

uint64_t sub_1000B3AD8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase;
  v0[4] = OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000B3B8C;

  return sub_1000A593C(v3);
}

uint64_t sub_1000B3B8C()
{

  return _swift_task_switch(sub_1000B3C88, 0, 0);
}

uint64_t sub_1000B3C88()
{
  v1 = *(v0[2] + v0[4]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000B3D34;

  return sub_1000D21B0(v1);
}

uint64_t sub_1000B3D34()
{

  return _swift_task_switch(sub_1000B3E30, 0, 0);
}

uint64_t sub_1000B3E30()
{
  v1 = *(v0[2] + v0[4]);
  v4 = (*(*v1 + 240) + **(*v1 + 240));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000B3F54;

  return v4(0, 0);
}

uint64_t sub_1000B3F54()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000B40AC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1000B40AC()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B416C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000B4264;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001000F14F0, sub_1000BFD34, v2, &type metadata for Bool);
}

uint64_t sub_1000B4264()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1000B439C;
  }

  else
  {

    v2 = sub_1000B4380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B439C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000B4404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase);
  (*(v5 + 16))(&v12 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  (*(*v8 + 408))(sub_1000C12C8, v10);
}

uint64_t sub_1000B46FC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B4774, 0, 0);
}

uint64_t sub_1000B4774()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1000B486C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000001BLL, 0x80000001000F14F0, sub_1000C1494, v2, &type metadata for Bool);
}

uint64_t sub_1000B486C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000B4A08;
  }

  else
  {

    v2 = sub_1000B4988;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B4988()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 56), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B4A08()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MACloudSyncManager.saveUserOptions(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000B4AD8, 0, 0);
}

uint64_t sub_1000B4AD8()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[4] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x84AE000000000000;
  v0[5] = *(*v1 + 128);
  v0[6] = v2;

  return _swift_task_switch(sub_1000B4B78, v1, 0);
}

uint64_t sub_1000B4B78()
{
  (*(v0 + 40))(*(v0 + 16));
  *(v0 + 56) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B4C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B4E24(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_1000B4EA0, 0, 0);
}

uint64_t sub_1000B4EA0()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[5] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x84AE000000000000;
  v0[6] = *(*v1 + 128);
  v0[7] = v2;

  return _swift_task_switch(sub_1000B4F40, v1, 0);
}

uint64_t sub_1000B4F40()
{
  (*(v0 + 48))(*(v0 + 16));
  *(v0 + 64) = 0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B5024()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B50EC()
{
  v1 = *(*(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[3] = v1;
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xD582000000000000;
  v0[4] = *(*v1 + 136);
  v0[5] = v2;

  return _swift_task_switch(sub_1000B518C, v1, 0);
}

uint64_t sub_1000B518C()
{
  v1 = (*(v0 + 32))();
  *(v0 + 48) = 0;
  v2 = v1;
  v4 = v3;

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1000B525C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B5434(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B54AC, 0, 0);
}

uint64_t sub_1000B54AC()
{
  v1 = *(*(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[4] = v1;
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xD582000000000000;
  v0[5] = *(*v1 + 136);
  v0[6] = v2;

  return _swift_task_switch(sub_1000B554C, v1, 0);
}

uint64_t sub_1000B554C()
{
  v1 = (*(v0 + 40))();
  *(v0 + 56) = 0;
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  (*(v5 + 16))(v5, v7, 0);
  _Block_release(*(v0 + 24));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000B5648()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MACloudSyncManager.ReinitiateSyncEngineIfNecessary(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 152) = a1;
  sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  *(v2 + 24) = swift_task_alloc();
  v3 = type metadata accessor for Date();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000B5808, 0, 0);
}

uint64_t sub_1000B5808()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore);
  v0[9] = v1;
  v2 = (*v1 + 176) & 0xFFFFFFFFFFFFLL | 0xF1F2000000000000;
  v0[10] = *(*v1 + 176);
  v0[11] = v2;
  return _swift_task_switch(sub_1000B5850, v1, 0);
}

uint64_t sub_1000B5850()
{
  (*(v0 + 80))();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1000B58E4, 0, 0);
}

uint64_t sub_1000B58E4()
{
  v42 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100066C80(v3, &qword_1001287D0, &qword_1000E6C30);
LABEL_3:

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v2 + 32))(*(v0 + 64), v3, v1);
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = type metadata accessor for Logger();
  sub_100066000(v10, qword_10012AE78);
  (*(v8 + 16))(v7, v6, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 56);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  if (v13)
  {
    v39 = *(v0 + 152);
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v17 = 136315394;
    sub_1000BFEC0(&qword_100128E08, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v37 = v12;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_100065658(v18, v20, &v41);

    *(v17 + 4) = v22;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v11, v37, "lastPurgedMark = %s, flag checkTimeStamp = %{BOOL}d", v17, 0x12u);
    sub_10005D588(v38);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  *(v0 + 104) = v21;
  if (*(v0 + 152) == 1)
  {
    v23 = *(v0 + 48);
    v24 = *(v0 + 32);
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    v21(v23, v24);
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v26 - v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "purged marked %f secs before", v31, 0xCu);
    }

    if (v28 < 3600.0)
    {
      (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
      goto LABEL_3;
    }
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "ReinitiateSyncEngineIfNecessary called.", v34, 2u);
  }

  v35 = *(v0 + 16);

  v40 = (*(**(v35 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 272) + **(**(v35 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 272));
  v36 = swift_task_alloc();
  *(v0 + 112) = v36;
  *v36 = v0;
  v36[1] = sub_1000B5E68;

  return v40();
}

uint64_t sub_1000B5E68()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000B6198;
    v4 = 0;
  }

  else
  {
    v4 = v2[9];
    v5 = (*v4 + 192) & 0xFFFFFFFFFFFFLL | 0xA5F3000000000000;
    v2[16] = *(*v4 + 192);
    v2[17] = v5;
    v3 = sub_1000B5FA0;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1000B5FA0()
{
  v1 = *(v0 + 120);
  (*(v0 + 128))();
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = sub_1000B6274;
  }

  else
  {
    v2 = sub_1000B6030;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B6030()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B60D8()
{
  sub_1000BFD3C(*(v0 + 96));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B6198()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
  sub_1000BFD3C(*(v0 + 120));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B6274()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
  sub_1000BFD3C(*(v0 + 144));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

id MACloudSyncManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MACloudSyncManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MACloudSyncManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000B6504(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 28)
  {
    v5 = -20602;
  }

  else
  {
    v5 = a1 - 22000;
  }

  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  v8 = objc_allocWithZone(NSError);
  v9 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithDomain:v9 code:v5 userInfo:isa];

  return v11;
}

id sub_1000B6674(char a1, uint64_t a2, void *a3)
{
  v6 = MACryptoError.ErrorCode.rawValue.getter(a1);
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v9 = MACryptoError.description.getter(a1, a2, a3);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  v11 = objc_allocWithZone(NSError);
  v12 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithDomain:v12 code:v6 userInfo:isa];

  return v14;
}

uint64_t sub_1000B6800()
{
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting to delete all cloud sync states", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000B695C;

  return sub_1000A570C();
}

uint64_t sub_1000B695C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1000B6C44;
  }

  else
  {
    v2 = sub_1000B6A70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B6A70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6B10;

  return sub_1000D1F80();
}

uint64_t sub_1000B6B10()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000B6CC8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000B6C44()
{
  sub_1000BFD3C(*(v0 + 32));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B6CC8()
{
  sub_1000BFD3C(*(v0 + 48));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B6EC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B6F68;

  return MACloudSyncManager.resetCloudSyncState()();
}

uint64_t sub_1000B6F68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000B710C()
{
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_1000B71AC;

  return sub_1000A5C78();
}

uint64_t sub_1000B71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[24] = v5;
  v6[25] = a1;
  v6[26] = a2;
  v6[27] = a3;
  v6[28] = a4;
  v6[29] = v4;
  v6[40] = a4;
  v6[41] = v4;

  if (v4)
  {
    v7 = sub_1000B7790;
  }

  else
  {
    v7 = sub_1000B72CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

unint64_t sub_1000B72CC()
{
  v1 = *(v0 + 320);
  v50 = *(v1 + 16);
  if (v50)
  {
    result = sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 64);
    v49 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_34;
      }

      v51 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 4);
      v10 = *(v5 - 3);
      *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 56) = v11;
      *(v0 + 88) = &type metadata for String;
      *(v0 + 64) = v9;
      *(v0 + 72) = v10;
      *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 104) = v12;
      *(v0 + 136) = &type metadata for Int;
      *(v0 + 112) = v8;
      v13 = static _DictionaryStorage.allocate(capacity:)();

      swift_bridgeObjectRetain_n();
      sub_1000939A8(v0 + 48, v0 + 144, &qword_100129070, &qword_1000E7440);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      result = sub_100065A98(v14, v15);
      if (v16)
      {
        goto LABEL_32;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v13[6] + 16 * result);
      *v17 = v14;
      v17[1] = v15;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v18 = v13[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v20;
      sub_1000939A8(v0 + 96, v0 + 144, &qword_100129070, &qword_1000E7440);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      result = sub_100065A98(v21, v22);
      if (v23)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v13[6] + 16 * result);
      *v24 = v21;
      v24[1] = v22;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v25 = v13[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v26;

      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();

      if (v6)
      {
        break;
      }

LABEL_19:
      v4 = v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BF34C(0, v51[2] + 1, 1, v51);
        v4 = result;
      }

      v44 = v4[2];
      v43 = v4[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_1000BF34C((v43 > 1), v44 + 1, 1, v4);
        v4 = result;
      }

      ++v3;
      v4[2] = v44 + 1;
      v4[v44 + 4] = v13;
      v5 += 5;
      v1 = v49;
      if (v50 == v3)
      {
        goto LABEL_26;
      }
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    sub_1000AF7F4((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100065A98(v27, v29);
    v32 = v13[2];
    v33 = (v31 & 1) == 0;
    v19 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v19)
    {
      goto LABEL_35;
    }

    v35 = v31;
    if (v13[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = result;
        sub_1000AF25C();
        result = v39;
        if (v35)
        {
LABEL_15:
          v37 = result;

          v38 = (v13[7] + 32 * v37);
          sub_10005D588(v38);
          sub_1000AF7F4((v0 + 272), v38);
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1000AE8CC(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100065A98(v27, v29);
      if ((v35 & 1) != (v36 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    if (v35)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13[(result >> 6) + 8] |= 1 << result;
    v40 = (v13[6] + 16 * result);
    *v40 = v27;
    v40[1] = v29;
    result = sub_1000AF7F4((v0 + 272), (v13[7] + 32 * result));
    v41 = v13[2];
    v19 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v19)
    {
      goto LABEL_36;
    }

    v13[2] = v42;
    goto LABEL_19;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_26:

  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  v47 = *(v0 + 216);
  v48 = *(v0 + 8);

  return v48(v45, v46, v47, v4);
}

uint64_t sub_1000B7790()
{
  sub_1000BFD3C(*(v0 + 328));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B7988(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B7A30;

  return MACloudSyncManager.queryCloudAssetsSize()();
}

uint64_t sub_1000B7A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = *v5;

  v10 = *(v7 + 24);
  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, 0, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v10)[2](v10, v12, a3, isa, 0);

    _Block_release(v10);
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1000B7C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_1000B7CFC;

  return sub_1000D24EC();
}

uint64_t sub_1000B7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[24] = v5;
  v6[25] = a1;
  v6[26] = a2;
  v6[27] = a3;
  v6[28] = a4;
  v6[29] = v4;
  v6[40] = a4;
  v6[41] = v4;

  if (v4)
  {
    v7 = sub_1000C13D8;
  }

  else
  {
    v7 = sub_1000B7E1C;
  }

  return _swift_task_switch(v7, 0, 0);
}

unint64_t sub_1000B7E1C()
{
  v1 = *(v0 + 320);
  v50 = *(v1 + 16);
  if (v50)
  {
    result = sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 64);
    v49 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_34;
      }

      v51 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 4);
      v10 = *(v5 - 3);
      *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 56) = v11;
      *(v0 + 88) = &type metadata for String;
      *(v0 + 64) = v9;
      *(v0 + 72) = v10;
      *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 104) = v12;
      *(v0 + 136) = &type metadata for Int;
      *(v0 + 112) = v8;
      v13 = static _DictionaryStorage.allocate(capacity:)();

      swift_bridgeObjectRetain_n();
      sub_1000939A8(v0 + 48, v0 + 144, &qword_100129070, &qword_1000E7440);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      result = sub_100065A98(v14, v15);
      if (v16)
      {
        goto LABEL_32;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v13[6] + 16 * result);
      *v17 = v14;
      v17[1] = v15;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v18 = v13[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v20;
      sub_1000939A8(v0 + 96, v0 + 144, &qword_100129070, &qword_1000E7440);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      result = sub_100065A98(v21, v22);
      if (v23)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v13[6] + 16 * result);
      *v24 = v21;
      v24[1] = v22;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v25 = v13[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v26;

      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();

      if (v6)
      {
        break;
      }

LABEL_19:
      v4 = v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BF34C(0, v51[2] + 1, 1, v51);
        v4 = result;
      }

      v44 = v4[2];
      v43 = v4[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_1000BF34C((v43 > 1), v44 + 1, 1, v4);
        v4 = result;
      }

      ++v3;
      v4[2] = v44 + 1;
      v4[v44 + 4] = v13;
      v5 += 5;
      v1 = v49;
      if (v50 == v3)
      {
        goto LABEL_26;
      }
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    sub_1000AF7F4((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100065A98(v27, v29);
    v32 = v13[2];
    v33 = (v31 & 1) == 0;
    v19 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v19)
    {
      goto LABEL_35;
    }

    v35 = v31;
    if (v13[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = result;
        sub_1000AF25C();
        result = v39;
        if (v35)
        {
LABEL_15:
          v37 = result;

          v38 = (v13[7] + 32 * v37);
          sub_10005D588(v38);
          sub_1000AF7F4((v0 + 272), v38);
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1000AE8CC(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100065A98(v27, v29);
      if ((v35 & 1) != (v36 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    if (v35)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13[(result >> 6) + 8] |= 1 << result;
    v40 = (v13[6] + 16 * result);
    *v40 = v27;
    v40[1] = v29;
    result = sub_1000AF7F4((v0 + 272), (v13[7] + 32 * result));
    v41 = v13[2];
    v19 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v19)
    {
      goto LABEL_36;
    }

    v13[2] = v42;
    goto LABEL_19;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_26:

  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  v47 = *(v0 + 216);
  v48 = *(v0 + 8);

  return v48(v45, v46, v47, v4);
}

uint64_t sub_1000B8454(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000C13D0;

  return MACloudSyncManager.queryCloudKVDataSize()();
}

uint64_t MACloudSyncManager.queryCloudAsset(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MACloudMAAsset(0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8590, 0, 0);
}

uint64_t sub_1000B8590()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1000B863C;
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  return sub_1000A7110(v2, v3, v4);
}

uint64_t sub_1000B863C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000B87E0;
  }

  else
  {
    v2 = sub_1000B8750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B8750()
{
  v1 = *(v0 + 40);
  v2 = sub_1000970C0();
  sub_1000BFE60(v1, type metadata accessor for MACloudMAAsset);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000B87E0()
{
  sub_1000BFD3C(*(v0 + 56));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B8A00(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  type metadata accessor for MACloudMAAsset(0);
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);
  v3[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[6] = v6;
  v7 = a3;

  return _swift_task_switch(sub_1000B8AC4, 0, 0);
}

uint64_t sub_1000B8AC4()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000B8B70;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1000A7110(v4, v2, v3);
}

uint64_t sub_1000B8B70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000B8D5C;
  }

  else
  {
    v2 = sub_1000B8CA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B8CA0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1000970C0();

  sub_1000BFE60(v2, type metadata accessor for MACloudMAAsset);
  (v1)[2](v1, v4, 0);
  _Block_release(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B8D5C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_1000BFD3C(v0[8]);
  swift_willThrow();

  v4 = _convertErrorToNSError(_:)();
  (v1)[2](v1, 0, v4);

  _Block_release(v1);

  v5 = v0[1];

  return v5();
}

uint64_t MACloudSyncManager.queryCloudKVData(withRecordName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MACloudKVSRecord(0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8EEC, 0, 0);
}

uint64_t sub_1000B8EEC()
{
  v1 = v0;
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_1000B8FCC;
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[10];

  return sub_1000D38EC(v3, v4, v5);
}

uint64_t sub_1000B8FCC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000B94A8;
  }

  else
  {
    v2 = sub_1000B910C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B910C()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2 >> 60 == 15)
  {
LABEL_5:
    if (qword_10012AE70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_10012AE78);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serialized KVSRecord stored in local store", v22, 2u);
    }

    v23 = v0[12];

    sub_100092A98();
    v24 = swift_allocError();
    *v25 = 29;
    *(v25 + 8) = 0xD000000000000025;
    *(v25 + 16) = 0x80000001000F1540;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = *(v1 + 112);
  v4 = objc_opt_self();
  sub_10005F304(v3, v2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = 0;
  v6 = [v4 propertyListWithData:isa options:0 format:0 error:v0 + 6];

  v7 = v0[6];
  if (v6)
  {
    v8 = v7;
    _bridgeAnyObjectToAny(_:)();
    sub_10005F69C(v3, v2);
    swift_unknownObjectRelease();
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    if (swift_dynamicCast())
    {
      v9 = v0[12];
      v10 = v0[8];
      v12 = *v9;
      v11 = v9[1];
      v13 = v9[4];
      v15 = v9[7];
      v14 = v9[8];
      v17 = v9[9];
      v16 = v9[10];
      v28 = v9[11];
      v29 = v0[7];

      sub_1000BFE60(v9, type metadata accessor for MACloudKVSRecord);

      *v10 = v12;
      v10[1] = v11;
      v10[2] = v13;
      v10[3] = v15;
      v10[4] = v14;
      v10[5] = v17;
      v10[6] = v16;
      v10[7] = v28;
      v10[8] = v29;
      v18 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v23 = v0[12];
  v26 = v7;
  v24 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10005F69C(v3, v2);
LABEL_11:
  sub_1000BFE60(v23, type metadata accessor for MACloudKVSRecord);
  sub_1000BFD3C(v24);
  swift_willThrow();

  v18 = v0[1];
LABEL_12:

  return v18();
}

uint64_t sub_1000B94A8()
{
  sub_1000BFD3C(*(v0 + 112));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B9AEC(uint64_t a1, void *aBlock, void *a3)
{
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[13] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[14] = v8;
  *v8 = v3;
  v8[1] = sub_1000B9BC8;

  return MACloudSyncManager.queryCloudKVData(withRecordName:)((v3 + 2), v5, v7);
}

uint64_t sub_1000B9BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v14 = *(*v1 + 32);
  v13 = *(*v1 + 72);

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = _convertErrorToNSError(_:)();

    (v5)[2](v5, 0, 0, 0, 0, 0, 0, v6);

    _Block_release(v5);
  }

  else
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (v5)[2](v5, v7, v14, v8, v9, v13, isa, 0);

    _Block_release(v5);
  }

  v11 = *(v4 + 8);

  return v11();
}

uint64_t sub_1000B9F30()
{
  v3 = (*(**(*(v0 + 48) + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 208) + **(**(*(v0 + 48) + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 208));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1000BA050;

  return v3();
}

uint64_t sub_1000BA050(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_1000BA27C;
  }

  else
  {
    v5 = sub_1000BA16C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BA16C()
{
  if (v0[8])
  {
    v1 = v0[3];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    sub_100092A98();
    v4 = swift_allocError();
    *v5 = 25;
    *(v5 + 8) = 0xD000000000000011;
    *(v5 + 16) = 0x80000001000F1920;
    swift_willThrow();
    sub_1000BFD3C(v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000BA27C()
{
  sub_1000BFD3C(*(v0 + 72));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BA474(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000BA51C;

  return MACloudSyncManager.fetchSigninUser()();
}

uint64_t sub_1000BA51C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

Swift::Bool __swiftcall MACloudSyncManager.cloudSyncEnabled(for:)(__C::MASDAssetType a1)
{
  sub_1000C5D18(a1.rawValue);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t MACloudSyncManager.saveAsset(toCloud:options:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for MACloudMAAsset(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA81C, 0, 0);
}

uint64_t sub_1000BA81C()
{
  v106 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012AE78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v6;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "Going to save asset %@ options: %lu to cloud if applicable", v8, 0x16u);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = *(v0 + 48);

  v12 = [v11 assetMetadata];
  v13 = [v12 type];

  sub_1000C5D18(v13);
  v14 = *(v0 + 48);
  if (!v15)
  {
    v44 = v14;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 48);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v104 = v49;
      *v48 = 136315138;
      v50 = [v47 assetMetadata];
      v51 = [v50 type];

      *(v0 + 32) = v51;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = sub_100065658(v52, v53, &v104);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Uploading asset %s is not supported on this platform", v48, 0xCu);
      sub_10005D588(v49);
    }

    goto LABEL_18;
  }

  v16 = [v14 assetOwner];
  v17 = [v16 profileType];

  sub_1000BFF08(v17, &off_100117C90, 0xD00000000000001BLL, 0x80000001000F1940);
  v18 = *(v0 + 48);
  v19 = [v18 assetMetadata];
  v20 = [v19 type];

  v21 = [v18 assetMetadata];
  v22 = [v21 label];

  if (v22)
  {
    v23 = *(v0 + 64);
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *(v23 + OBJC_IVAR____TtC6server18MACloudSyncManager_assetsNotToBeSynced);
    if (*(v26 + 16))
    {
      v27 = sub_1000BF480(v20);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *v32 = 136315650;
          *(v32 + 4) = sub_100065658(v102, v25, &v104);
          *(v32 + 12) = 2080;
          *(v0 + 40) = v20;
          type metadata accessor for MASDAssetType(0);
          sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = sub_100065658(v33, v34, &v104);

          *(v32 + 14) = v35;
          *(v32 + 22) = 2080;
          sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
          v36 = Dictionary.description.getter();
          v38 = sub_100065658(v36, v37, &v104);

          *(v32 + 24) = v38;
          _os_log_impl(&_mh_execute_header, v30, v31, "asset label %s with type %s with excludedLabels %s", v32, 0x20u);
          swift_arrayDestroy();
        }

        if (*(v29 + 16))
        {
          v39 = sub_100065A98(0x7463617865, 0xE500000000000000);
          if (v40)
          {
            v41 = *(*(v29 + 56) + 8 * v39);
            *(v0 + 16) = v102;
            *(v0 + 24) = v25;
            v42 = swift_task_alloc();
            *(v42 + 16) = v0 + 16;

            v43 = sub_1000BF628(sub_1000C0038, v42, v41);

            if (v43)
            {
LABEL_25:

              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v104 = v70;
                *v69 = 136315138;
                v71 = sub_100065658(v102, v25, &v104);

                *(v69 + 4) = v71;
                _os_log_impl(&_mh_execute_header, v67, v68, "Uploading asset %s is not supported", v69, 0xCu);
                sub_10005D588(v70);
              }

              else
              {
              }

LABEL_18:

              v55 = *(v0 + 8);
LABEL_35:

              return v55();
            }
          }

          if (*(v29 + 16))
          {
            v56 = sub_100065A98(0x786966657270, 0xE600000000000000);
            if (v57)
            {
              v58 = *(*(v29 + 56) + 8 * v56);

              v60 = (v58 + 40);
              v61 = -*(v58 + 16);
              v62 = -1;
              while (v61 + v62 != -1)
              {
                if (++v62 >= *(v58 + 16))
                {
                  __break(1u);
                  return result;
                }

                v63 = v60 + 2;
                v65 = *(v60 - 1);
                v64 = *v60;

                v66._countAndFlagsBits = v65;
                v66._object = v64;
                LOBYTE(v65) = String.hasPrefix(_:)(v66);

                v60 = v63;
                if (v65)
                {
                  goto LABEL_25;
                }
              }
            }
          }
        }
      }
    }
  }

  v72 = *(v0 + 80);
  v73 = *(v0 + 88);
  v74 = *(v0 + 72);
  sub_100096120(*(v0 + 48), *(*(v0 + 64) + OBJC_IVAR____TtC6server18MACloudSyncManager_storage), v74);
  if ((*(v73 + 48))(v74, 1, v72) == 1)
  {
    v75 = *(v0 + 48);
    sub_100066C80(*(v0 + 72), &qword_100128808, &unk_1000E6C50);
    v76 = v75;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = *(v0 + 48);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v104 = v81;
      *v80 = 136315138;
      v82 = [v79 assetHandle];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_100065658(v83, v85, &v104);

      *(v80 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "Failed to convert asset %s", v80, 0xCu);
      sub_10005D588(v81);
    }

    v87 = *(v0 + 48);
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v104 = 0xD000000000000018;
    v105 = 0x80000001000F1960;
    v88 = [v87 assetHandle];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92._countAndFlagsBits = v89;
    v92._object = v91;
    String.append(_:)(v92);

    v93._object = 0x80000001000F1980;
    v93._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v93);
    v94 = v104;
    v95 = v105;
    sub_100092A98();
    v96 = swift_allocError();
    *v97 = 17;
    *(v97 + 8) = v94;
    *(v97 + 16) = v95;
    swift_willThrow();
    sub_1000BFD3C(v96);
    swift_willThrow();

    v55 = *(v0 + 8);
    goto LABEL_35;
  }

  v98 = *(v0 + 64);
  sub_1000AFAB8(*(v0 + 72), *(v0 + 96));
  v103 = (*(**(v98 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 304) + **(**(v98 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 304));
  v99 = swift_task_alloc();
  *(v0 + 104) = v99;
  *v99 = v0;
  v99[1] = sub_1000BB428;
  v100 = *(v0 + 96);
  v101 = *(v0 + 56);

  return v103(v100, v101);
}

uint64_t sub_1000BB428()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000BB5C8;
  }

  else
  {
    v2 = sub_1000BB53C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BB53C()
{
  sub_1000BFE60(*(v0 + 96), type metadata accessor for MACloudMAAsset);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BB5C8()
{
  sub_1000BFE60(v0[12], type metadata accessor for MACloudMAAsset);
  sub_1000BFD3C(v0[14]);
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BB814(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000BB8E0;

  return MACloudSyncManager.saveAsset(toCloud:options:)(v8, a2);
}

uint64_t sub_1000BB8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t MACloudSyncManager.localAssetCleanup(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BBAA0, 0, 0);
}

uint64_t sub_1000BBAA0()
{
  v12 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100065658(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting asset locally recordName %s", v6, 0xCu);
    sub_10005D588(v7);
  }

  v8 = *(v0[4] + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v0[5] = v8;
  v9 = *v8 + 320;
  v0[6] = *v9;
  v0[7] = v9 & 0xFFFFFFFFFFFFLL | 0x6DB2000000000000;

  return _swift_task_switch(sub_1000BBC60, v8, 0);
}

uint64_t sub_1000BBC60()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  *(v0 + 64) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BBEA4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000C13CC;

  return MACloudSyncManager.localAssetCleanup(withRecordName:)(v5, v7);
}

uint64_t MACloudSyncManager.localKVSCleanup(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BBF9C, 0, 0);
}

uint64_t sub_1000BBF9C()
{
  v12 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100065658(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting KVSData locally recordName%s", v6, 0xCu);
    sub_10005D588(v7);
  }

  v8 = *(v0[4] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v0[5] = v8;
  v9 = *v8 + 296;
  v0[6] = *v9;
  v0[7] = v9 & 0xFFFFFFFFFFFFLL | 0x22F3000000000000;

  return _swift_task_switch(sub_1000BC15C, v8, 0);
}

uint64_t sub_1000BC15C()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  *(v0 + 64) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BC218()
{
  sub_1000BFD3C(*(v0 + 64));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BC424(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000BC4F8;

  return MACloudSyncManager.localKVSCleanup(withRecordName:)(v5, v7);
}

uint64_t sub_1000BC4F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t MACloudSyncManager.deleteAssetInCloud(withRecordName:assetType:profileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1000BC6C0, 0, 0);
}

uint64_t sub_1000BC6C0()
{
  v29 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100065658(v6, v4, v28);
    *(v7 + 12) = 2080;
    v0[3] = v5;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_100065658(v8, v9, v28);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting asset recordName %s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000BFF08(v0[7], &off_100117CB8, 0xD000000000000039, 0x80000001000F19A0);
  sub_1000C5D18(v0[6]);
  if (v12)
  {
    v13 = v0[8];

    v27 = (*(**(v13 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 312) + **(**(v13 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore) + 312));
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_1000BCB94;
    v15 = v0[5];
    v16 = v0[6];
    v17 = v0[4];

    return v27(v17, v15, v16);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[6];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      v0[2] = v20;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_100065658(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Deleting asset %s is not supported on this platform", v21, 0xCu);
      sub_10005D588(v22);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1000BCB94()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BCCC8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000BCCC8()
{
  sub_1000BFD3C(*(v0 + 80));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BCEE8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_1000C13CC;

  return MACloudSyncManager.deleteAssetInCloud(withRecordName:assetType:profileType:)(v9, v11, a2, a3);
}

uint64_t MACloudSyncManager.saveKVSDataToCloud(withRecordHandle:assetType:storeName:storeGroup:profileType:data:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v13;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v12;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  type metadata accessor for MACloudKVSRecord(0);
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD080, 0, 0);
}

uint64_t sub_1000BD080()
{
  v60 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v55 = v0[12];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v8 = 134219010;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100065658(v7, v5, &v58);
    *(v8 + 22) = 2080;
    v0[4] = v6;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100065658(v9, v10, &v58);

    *(v8 + 24) = v11;
    *(v8 + 32) = 2080;
    v12 = Dictionary.Keys.description.getter();
    v14 = sub_100065658(v12, v13, &v58);

    *(v8 + 34) = v14;
    *(v8 + 42) = 2048;
    *(v8 + 44) = v55;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving KVSData (options: %lu) %s %s %s %lu", v8, 0x34u);
    swift_arrayDestroy();
  }

  sub_1000C5D18(v0[7]);
  if (v15)
  {
    v16 = v0[12];

    sub_1000BFF08(v16, &off_100117CE0, 0xD00000000000005DLL, 0x80000001000F1A00);
    v17 = v0[16];
    v18 = v0[13];
    v19 = v0[11];
    v53 = v0[10];
    v56 = v0[12];
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[5];

    sub_1000C98D4(v24, v22, v23, v21, v20, v53, v19, v56, v17, v18);
    v57 = (*(**(v0[15] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 272) + **(**(v0[15] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 272));
    v48 = swift_task_alloc();
    v0[17] = v48;
    *v48 = v0;
    v48[1] = sub_1000BD834;
    v49 = v0[16];
    v50 = v0[14];

    return v57(v49, v50);
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v54 = v0[11];
      v27 = v0[8];
      v51 = v0[9];
      v52 = v0[10];
      v28 = v0[6];
      v29 = v0[7];
      v30 = v0[5];
      v31 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v31 = 136316162;
      *(v31 + 4) = sub_100065658(v30, v28, &v58);
      *(v31 + 12) = 2080;
      v0[3] = v29;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = sub_100065658(v32, v33, &v58);

      *(v31 + 14) = v34;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_100065658(v27, v51, &v58);
      *(v31 + 32) = 2080;
      *(v31 + 34) = sub_100065658(v52, v54, &v58);
      *(v31 + 42) = 2080;
      v35 = Dictionary.description.getter();
      v37 = sub_100065658(v35, v36, &v58);

      *(v31 + 44) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Uploading KVSData %s %s %s %s %s is not supported on this platform", v31, 0x34u);
      swift_arrayDestroy();
    }

    v38 = v0[7];
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v39._object = 0x80000001000F19E0;
    v39._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v39);
    v0[2] = v38;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 0xD000000000000022;
    v41._object = 0x80000001000F0E80;
    String.append(_:)(v41);
    v42 = v58;
    v43 = v59;
    sub_100092A98();
    v44 = swift_allocError();
    *v45 = 15;
    *(v45 + 8) = v42;
    *(v45 + 16) = v43;
    swift_willThrow();
    sub_1000BFD3C(v44);
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_1000BD834()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000BD9CC;
  }

  else
  {
    v2 = sub_1000BD948;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BD948()
{
  sub_1000BFE60(*(v0 + 128), type metadata accessor for MACloudKVSRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BD9CC()
{
  sub_1000BFE60(v0[16], type metadata accessor for MACloudKVSRecord);
  sub_1000BFD3C(v0[18]);
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BDC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *aBlock, void *a9)
{
  v9[2] = a9;
  v9[3] = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v9[4] = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v9[5] = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v9[6] = v17;
  v9[7] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a9;
  v19 = swift_task_alloc();
  v9[8] = v19;
  *v19 = v9;
  v19[1] = sub_1000BDDC4;

  return MACloudSyncManager.saveKVSDataToCloud(withRecordHandle:assetType:storeName:storeGroup:profileType:data:options:)(v10, v12, a2, v13, v15, v16, v18, a5);
}

uint64_t sub_1000BDDC4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t MACloudSyncManager.deleteKVSDataInCloud(withRecordHandles:assetType:storeName:storeGroup:profileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return _swift_task_switch(sub_1000BDFF4, 0, 0);
}

uint64_t sub_1000BDFF4()
{
  v49 = v0;
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = Array.description.getter();
    v8 = sub_100065658(v6, v7, &v47);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v0[4] = v4;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100065658(v9, v10, &v47);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting KVSData %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000C5D18(v0[6]);
  if (v12)
  {
    v13 = v0[11];

    sub_1000BFF08(v13, &off_100117D10, 0xD000000000000053, 0x80000001000F1A80);
    v45 = (*(**(v0[12] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 288) + **(**(v0[12] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore) + 288));
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1000BE690;
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v21 = v0[5];

    return v45(v21, v19, v20, v17, v18, v15, v16);
  }

  else
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v44 = v0[9];
      v46 = v0[10];
      v25 = v0[7];
      v43 = v0[8];
      v26 = v0[6];
      v27 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v27 = 136315906;
      v28 = Array.description.getter();
      v30 = sub_100065658(v28, v29, &v47);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v0[3] = v26;
      type metadata accessor for MASDAssetType(0);
      sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = sub_100065658(v31, v32, &v47);

      *(v27 + 14) = v33;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_100065658(v25, v43, &v47);
      *(v27 + 32) = 2080;
      *(v27 + 34) = sub_100065658(v44, v46, &v47);
      _os_log_impl(&_mh_execute_header, v23, v24, "Deleting KVSData %s %s %s %s is not supported on this platform", v27, 0x2Au);
      swift_arrayDestroy();
    }

    v34 = v0[6];
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v35._object = 0x80000001000F1A60;
    v35._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v35);
    v0[2] = v34;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_1001284E0, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0xD000000000000022;
    v37._object = 0x80000001000F0E80;
    String.append(_:)(v37);
    v38 = v47;
    v39 = v48;
    sub_100092A98();
    v40 = swift_allocError();
    *v41 = 15;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    swift_willThrow();
    sub_1000BFD3C(v40);
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_1000BE690()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BE7C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000BE7C4()
{
  sub_1000BFD3C(*(v0 + 112));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BEA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[4] = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v7[5] = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v7[6] = v16;
  a7;
  v18 = swift_task_alloc();
  v7[7] = v18;
  *v18 = v7;
  v18[1] = sub_1000BEB40;

  return MACloudSyncManager.deleteKVSDataInCloud(withRecordHandles:assetType:storeName:storeGroup:profileType:)(v11, a2, v12, v14, v15, v17, a5);
}

uint64_t sub_1000BEB40()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000BED40()
{
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all data in the cloud", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000BEE9C;

  return sub_10007E564();
}

uint64_t sub_1000BEE9C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000C13E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000BF144(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000C1490;

  return MACloudSyncManager.deleteAllInCloud()();
}

Swift::Int sub_1000BF1FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 22000);
  return Hasher._finalize()();
}

Swift::Int sub_1000BF27C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 - 22000);
  return Hasher._finalize()();
}

uint64_t sub_1000BF2C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C0090(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF304(uint64_t a1)
{
  v1 = -2;
  if (a1 != 999)
  {
    v1 = a1;
  }

  if (a1 == 100)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000BF320(uint64_t a1)
{
  v1 = 999;
  if (a1 != -2)
  {
    v1 = a1;
  }

  if (a1 == -1)
  {
    return 100;
  }

  else
  {
    return v1;
  }
}

void *sub_1000BF34C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&qword_100128E60, &unk_1000E7890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000BF480(uint64_t a1)
{
  type metadata accessor for MASDAssetType(0);
  sub_1000BFEC0(&qword_100128E50, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000BF52C(a1, v2);
}

unint64_t sub_1000BF52C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MASDAssetType(0);
    sub_1000BFEC0(&qword_100128E58, type metadata accessor for MASDAssetType, &unk_1000E6FD8);
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000BF628(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_1000BF6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128E78, &qword_1000E78B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100065A98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000BF7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128E70, &qword_1000E78B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1000BF480(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000BF8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128EA0, &unk_1000E78D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_100065A98(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}