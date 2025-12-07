uint64_t sub_100015D5C(uint64_t a1)
{
  result = sub_100014F18(a1);
  if (!v2)
  {
    v4 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v5 = *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = v5;
    v7 = v5;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v9;

    static Published.subscript.setter();
  }

  return result;
}

void *sub_100016014(void *a1, void *a2, unint64_t *a3, void *a4)
{
  if (a1)
  {
    v5 = a1;
    if (a2)
    {
      sub_100003118(0, a3, a4);
      v6 = v5;
      v7 = a2;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        _StringGuts.grow(_:)(29);
        v10._object = 0x800000010029B140;
        v10._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v10);
        v5 = &protocol witness table for DefaultStringInterpolation;
        _print_unlocked<A, B>(_:_:)();
        v11._countAndFlagsBits = 8236;
        v11._object = 0xE200000000000000;
        String.append(_:)(v11);
        _print_unlocked<A, B>(_:_:)();
        sub_10001618C();
        swift_allocError();
        *v12 = 0;
        *(v12 + 8) = 0xE000000000000000;
        *(v12 + 16) = 10;
        swift_willThrow();
      }
    }

    else
    {
      v9 = a1;
    }
  }

  else
  {
    v8 = a2;
    return a2;
  }

  return v5;
}

unint64_t sub_10001618C()
{
  result = qword_100345300[0];
  if (!qword_100345300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100345300);
  }

  return result;
}

uint64_t sub_1000161E0(uint64_t a1, void *a2)
{
  v25[3] = sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  v25[4] = &off_10030F7E0;
  v25[0] = a2;
  sub_10007E790(v25, v24);
  v4 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v25, v23);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v20, v24);
      sub_10007E790(v24, v23);
      v11 = sub_1001AC2F8(v23);
      sub_1000097E8(v23, &unk_10034B540, qword_100270E60);
      v12 = v24;
LABEL_6:
      sub_10000903C(v12);
      goto LABEL_7;
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1000097E8(&v20, &unk_10034B540, qword_100270E60);
    sub_10007E790(v25, v24);
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    if (swift_dynamicCast())
    {
      v5 = v23[0];
      sub_100008574();
      goto LABEL_3;
    }

    sub_10007E790(v25, v24);
    sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
    if (swift_dynamicCast())
    {
      v14 = v23[0];
      v11 = sub_1000102F8(v23[0]);

      goto LABEL_7;
    }

    sub_10007E790(v25, v23);
    sub_100035D04(&qword_10033FA48, &qword_100276818);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v20, v24);
      sub_10007E790(v24, v23);
      sub_100009848(v23, &v18, &qword_10033FA50, &qword_100276820);
      if (v19)
      {
        sub_10000E754(&v18, &v20);
        v15 = *(&v21 + 1);
        v16 = v22;
        sub_10000EBC0(&v20, *(&v21 + 1));
        v11 = (*(*(v16 + 8) + 16))(a1, v15);
        sub_1000097E8(v23, &qword_10033FA50, &qword_100276820);
        sub_10000903C(v24);
        v12 = &v20;
        goto LABEL_6;
      }

      sub_1000097E8(v23, &qword_10033FA50, &qword_100276820);
      sub_10000903C(v24);
      v17 = &v18;
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v17 = &v20;
    }

    sub_1000097E8(v17, &qword_10033FA50, &qword_100276820);
    v11 = 0;
    goto LABEL_7;
  }

  v5 = v23[0];
  v6 = sub_10000F0CC();
LABEL_3:
  v7 = v6;
  v8 = sub_10000F0CC();
  v9 = sub_1000089FC(v8, v7);

  v10 = *(v9 + 16);

  v11 = v10 != 0;
LABEL_7:
  sub_10000903C(v25);
  return v11 & 1;
}

unint64_t sub_100016594(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (a2)
    {

      if ((sub_100255034(v4, a2) & 1) == 0)
      {
        _StringGuts.grow(_:)(29);
        v5._object = 0x800000010029B140;
        v5._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v5);
        sub_100035D04(&qword_10033FA58, &unk_100276828);
        _print_unlocked<A, B>(_:_:)();
        v6._countAndFlagsBits = 8236;
        v6._object = 0xE200000000000000;
        String.append(_:)(v6);
        _print_unlocked<A, B>(_:_:)();
        sub_10001618C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0xE000000000000000;
        *(v7 + 16) = 10;
        swift_willThrow();
      }
    }

    else
    {
    }
  }

  else
  {

    return a2;
  }

  return v3;
}

uint64_t sub_100016708()
{
  sub_100016760();

  return swift_deallocClassInstance();
}

uint64_t sub_100016760()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v2 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v4 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v6 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);

  v7(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice, v6);

  return v0;
}

void sub_10001693C(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v31 = v2 & 0xC000000000000001;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = i;
    v26 = v2;
    while (1)
    {
      if (v31)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        sub_10000B584(8, v11, v13);

        sub_100016B8C([v7 type]);
        v29 = String.init(cString:)();
        v30 = v14;
        v15._countAndFlagsBits = 10272;
        v15._object = 0xE200000000000000;
        String.append(_:)(v15);
        v16 = static String._fromSubstring(_:)();
        v18 = v17;

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 41;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);
        v21 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_100009088(0, *(v21 + 2) + 1, 1, v21);
          *a2 = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_100009088((v23 > 1), v24 + 1, 1, v21);
          *a2 = v21;
        }

        *(v21 + 2) = v24 + 1;
        v5 = &v21[16 * v24];
        *(v5 + 4) = v29;
        *(v5 + 5) = v30;
        i = v25;
        v2 = v26;
      }

      ++v4;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

const char *sub_100016B8C(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "?";
  }

  else
  {
    return (&off_100305948)[a1];
  }
}

const char *sub_100016BB0(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "?";
  }

  else
  {
    return off_1003103E0[a1];
  }
}

char *sub_100016BD4(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x796C696D6166;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 1701670760;
    *(v8 + 5) = 0xE400000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x64756F6C4369;
    *(v11 + 5) = 0xE600000000000000;
  }

  return v2;
}

BOOL sub_100016D70(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, void *))
{
  sub_100009848(a1, v15, a2, a3);
  if (v15[3])
  {
    a4(v15, v16);
    v8 = v17;
    v7 = v18;
    sub_10000EBC0(v16, v17);
    v9 = (*(*(v7 + 8) + 8))(v8);
    v10 = sub_10000F0CC();
    v11 = sub_1000089FC(v10, v9);

    v12 = *(v11 + 16);

    v13 = v12 != 0;
    sub_10000903C(v16);
  }

  else
  {
    sub_1000097E8(v15, a2, a3);
    return 0;
  }

  return v13;
}

void sub_100016F18(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100344040);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v30 = v8;
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = sub_100017494(0xD000000000000014, 0x800000010029FF40, aBlock);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v17 = sub_1000092A0(v15, v16);
    v19 = sub_100017494(v17, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: device=%s", v13, 0x16u);
    swift_arrayDestroy();
    v8 = v30;

    v3 = v31;
  }

  if (sub_1000176C8(v20, v21))
  {
    v22 = *(v1 + 128);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1;
    aBlock[4] = sub_100018EF8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100307CD0;
    v25 = _Block_copy(aBlock);

    v26 = v22;

    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (v34[1].isa)(v5, v3);
    (*(v32 + 8))(v8, v33);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v34, v27, "Should not suppress", v28, 2u);
    }

    v29 = v34;
  }
}

uint64_t sub_100017454()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100017494(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017560(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001766C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000903C(v11);
  return v7;
}

unint64_t sub_100017560(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001B518(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10001766C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL sub_1000176C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100010FF4(a1, a2);
  if ((v2 & 8) != 0)
  {
    return 1;
  }

  if (qword_100339130 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  if (*(off_10034A1A8 + 24) != 1)
  {
    return 0;
  }

  v3 = v2;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10038B0B8 + 1536);
  v5 = sub_1000177F8();

  if (v5 == 2)
  {
    v5 = sub_100017C84();
  }

  result = 0;
  if (v3 & 2) != 0 && (v5)
  {

    return sub_100017CB4();
  }

  return result;
}

uint64_t sub_1000177F8()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v34, v33);
  sub_100035D04(&qword_10033C2F8, &qword_100272AF8);
  if (swift_dynamicCast())
  {
    sub_10000903C(v34);

    return v32;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v6 stringForKey:v10];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1001650E4(v12, v14);
      sub_10000903C(v34);
      return v15;
    }

    else
    {
      v16 = String._bridgeToObjectiveC()();
      v17 = [v6 dataForKey:v16];

      if (v17)
      {
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = v0;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v31 = v20;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v33[0] = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_100017494(v5, v4, v33);
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v24, 0xCu);
          sub_10000903C(v25);

          sub_100010708(v18, v31);
        }

        else
        {

          sub_100010708(v18, v20);
        }

        sub_10000903C(v34);
        return *(v21 + *((swift_isaMask & *v21) + 0x60));
      }

      else
      {
        v26 = v0;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v33[0] = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_100017494(v5, v4, v33);
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
          sub_10000903C(v30);
        }

        sub_10000903C(v34);
        return *(v26 + *((swift_isaMask & *v26) + 0x60));
      }
    }
  }
}

BOOL sub_100017CB4()
{
  v0 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v12 - v2;
  v5 = sub_100017E14(v1, v4);
  if (v5)
  {
    return v5 > 2299999;
  }

  v8 = sub_100070C80(0, v6);
  if (!v9)
  {
    return 0;
  }

  v12[2] = v8;
  v12[3] = v9;
  v12[0] = 875443249;
  v12[1] = 0xE400000000000000;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_10001369C();
  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_1000097E8(v3, &qword_10033D440, &unk_1002730B0);

  return v11 < 2;
}

unsigned __int8 *sub_100017E14(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v35)
  {
    return 0;
  }

  v3 = [v35 sourceVersion];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10001369C();
  v5 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {

    v14 = 0;
    v15 = 0;
    goto LABEL_24;
  }

  v8 = v5[4];
  v9 = v5[5];
  if ((v9 ^ v8) < 0x4000)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = v5[6];
  v10 = v5[7];
  result = sub_1000181D4(v5[4], v5[5], v11, v10, 10);
  if ((v13 & 0x100) == 0)
  {
    if ((v13 & 1) == 0)
    {
      v2 = result;
      goto LABEL_12;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v2 = sub_100075E04(v8, v9, v11, v10, 10);
  v17 = v16;

  if (v17)
  {
    goto LABEL_45;
  }

LABEL_12:

  v15 = 10000 * v2;
  if ((v2 * 10000) >> 64 != (10000 * v2) >> 63)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    result = (v2 + 99);
    if (!__OFADD__(v2, 99))
    {
      return result;
    }

    goto LABEL_42;
  }

  if (v7 == 1)
  {
    v14 = 0;
    goto LABEL_24;
  }

  if (v6[2] < 2uLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v18 = v6[8];
  v19 = v6[9];
  if ((v19 ^ v18) < 0x4000)
  {
    goto LABEL_22;
  }

  v21 = v6[10];
  v20 = v6[11];
  result = sub_1000181D4(v6[8], v6[9], v21, v20, 10);
  if ((v22 & 0x100) == 0)
  {
    v23 = result;
    if (v22)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (v23 > 99)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v23 = sub_100075E04(v18, v19, v21, v20, 10);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v23 = 99;
LABEL_23:
  v14 = 100 * v23;
  if ((v23 * 100) >> 64 != (100 * v23) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_24:
  v2 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v7 < 3)
  {

    return v2;
  }

  if (v6[2] < 3uLL)
  {
    goto LABEL_39;
  }

  v26 = v6[12];
  v27 = v6[13];
  v29 = v6[14];
  v28 = v6[15];

  if (!((v27 ^ v26) >> 14))
  {
    goto LABEL_40;
  }

  v30 = sub_1000181D4(v26, v27, v29, v28, 10);
  if ((v31 & 0x100) != 0)
  {
    v30 = sub_100075E04(v26, v27, v29, v28, 10);
  }

  v32 = v30;
  v33 = v31;

  v34 = 99;
  if (!(v33 & 1 | (v32 < 100)))
  {
    v34 = v32;
  }

  result = (v2 + v34);
  if (__OFADD__(v2, v34))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1000181D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000182A0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1000182A0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100164508(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100164508(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100164508(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10001870C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001871C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001872C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001873C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001874C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001875C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001876C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001878C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001879C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001880C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001881C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001882C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001883C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001884C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001885C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001886C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001887C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001888C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001889C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001890C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001891C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001892C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001893C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001894C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001895C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001896C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001898C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001899C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018AB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100018AFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_100018F00(a2);

    if (v5)
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_100344040);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Already suppressed", v9, 2u);
      }

LABEL_15:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C(v10, v11);
    v13 = v12;

    if (v13)
    {
      v14 = *(v4 + 112);
      if (v14)
      {
        v15 = qword_100338FB8;
        v16 = v14;
        if (v15 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003078(v17, qword_100344040);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v29 = v16;
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136315138;
          v23 = sub_1000092A0(v21, v22);
          v25 = sub_100017494(v23, v24, aBlock);

          *(v20 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v18, v19, "Suppressing v1 for %s", v20, 0xCu);
          sub_10000903C(v21);

          v16 = v29;
        }

        v7 = String._bridgeToObjectiveC()();

        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = a2;
        aBlock[4] = sub_1000FBA08;
        aBlock[5] = v27;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_100307D20;
        v28 = _Block_copy(aBlock);

        [v16 suppressDevice:v7 completion:v28];

        _Block_release(v28);

        goto LABEL_15;
      }
    }
  }
}

BOOL sub_100018F00(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = a1;

  swift_getAtKeyPath();

  v7 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v8 = *(v7 + 8);
  if (*(v8 + 16) && (v9 = sub_100019110(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(v7);

  (*(v4 + 8))(v6, v3);
  return v11 != 0;
}

uint64_t sub_100019094@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_100019110(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000191D8(a1, v2);
}

uint64_t sub_100019194(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000191D8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100019194(&qword_10034B5A0, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100019540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1000195AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100019650(v4, a1, a2, 0, 1);
  }

  return result;
}

uint64_t sub_100019650(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = a4;
  BYTE8(v44) = a5 & 1;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v46 = a1;
  v18 = qword_100338FB8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_100344040);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v6;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;

    v25 = sub_100019B4C();
    v37 = v17;
    v26 = v14;
    v27 = v12;
    v28 = a2;
    v30 = v29;

    v31 = sub_100017494(v25, v30, aBlock);
    a2 = v28;
    v12 = v27;
    v14 = v26;
    v17 = v37;

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Handle %s", v22, 0xCu);
    sub_10000903C(v24);
    v6 = v38;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 40) = v44;
  *(v32 + 16) = v6;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 56) = v33;
  *(v32 + 72) = v46;
  aBlock[4] = sub_10001A1F4;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307B90;
  v34 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v41 + 8))(v14, v12);
  (*(v39 + 8))(v17, v40);
}

uint64_t sub_100019B04()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100019B4C()
{
  v1 = v0;
  if (*(v0 + 8))
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    strcpy(v23, " reason=");
    BYTE1(v23[1]) = 0;
    WORD1(v23[1]) = 0;
    HIDWORD(v23[1]) = -402653184;
    v4 = sub_1000FB5B4(*v0);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v2 = v23[0];
    v3 = v23[1];
  }

  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v9 = *(v1 + 32);
  v10 = 0xEC00000072656767;
  v11 = 0x6972746E55646964;
  strcpy(v23, "LegacyEvent ");
  HIWORD(v23[1]) = -5120;
  v12 = 0x696D736944736177;
  v13 = 0xEB00000000646574;
  if (v9 == 6)
  {
    v13 = 0xEC00000064657373;
  }

  else
  {
    v12 = 0x63656C6553736177;
  }

  v14 = 0xEB00000000726574;
  v15 = 0x6E4579627261656ELL;
  if (v9 != 4)
  {
    v15 = 0x784579627261656ELL;
    v14 = 0xEA00000000007469;
  }

  if (v9 <= 5)
  {
    v12 = v15;
    v13 = v14;
  }

  v16 = 0xEE007265746E4565;
  if (v9 != 2)
  {
    v16 = 0xED00007469784565;
  }

  if (v9)
  {
    v11 = 0x676972546C6C6977;
    v10 = 0xEB00000000726567;
  }

  if (v9 > 1)
  {
    v11 = 0x74616964656D6D69;
    v10 = v16;
  }

  if (v9 <= 3)
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  if (v9 <= 3)
  {
    v18 = v10;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 1029990688;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  String.append(_:)(*(v1 + 16));
  v21._countAndFlagsBits = v2;
  v21._object = v3;
  String.append(_:)(v21);

  return v23[0];
}

void sub_100019DC4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v46 = *(a4 + 8);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v47 = *(a4 + 32);
  v11 = (a1[2] + qword_100346AF8);

  os_unfair_lock_lock(v11);

  sub_1000FB764(v12, a2, a3);
  v14 = v13;

  os_unfair_lock_unlock(v11);
  if (v14)
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_100344040);

    sub_10001A204(a4, v48);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    sub_10001A23C(a4);
    if (os_log_type_enabled(v16, v17))
    {
      v44 = v9;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48[0] = v19;
      *v18 = 136315394;
      v21 = sub_1000092A0(v19, v20);
      v23 = v8;
      v24 = v10;
      v25 = sub_100017494(v21, v22, v48);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2080;
      v26 = sub_100019B4C();
      v28 = sub_100017494(v26, v27, v48);

      *(v18 + 14) = v28;
      v10 = v24;
      v8 = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating %s with %s", v18, 0x16u);
      swift_arrayDestroy();

      v9 = v44;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = v8;
    v48[1] = v46 & 1;
    v48[2] = v10;
    v48[3] = v9;
    v49 = v47;

    static Published.subscript.setter();
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v43 = v10;
    v29 = type metadata accessor for Logger();
    sub_100003078(v29, qword_100344040);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v45 = v9;
    v42 = v8;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100017494(a2, a3, v48);
      _os_log_impl(&_mh_execute_header, v30, v31, "No device found for %s - caching the event", v32, 0xCu);
      sub_10000903C(v33);
    }

    v34 = a2;
    v35 = a1[3];
    v36 = a1[4];
    v37 = a1[5];
    v38 = a1[6];
    v39 = a1[7];
    v40 = a1[8];
    v41 = a1[9];
    a1[3] = v42;
    a1[4] = v46 & 1;
    a1[5] = v43;
    a1[6] = v45;
    a1[7] = v47;
    a1[8] = v34;
    a1[9] = a3;

    sub_10001A204(a4, v48);
    sub_1000AEDE0(v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_10001A26C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001A2E0(v4);
  }

  return result;
}

void sub_10001A2E0(uint64_t a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v32 = *(a1 + 32);
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033CBC8);
  sub_100009848(a1, &v34, &qword_10033CCB8, &qword_100272F78);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_1000097E8(a1, &qword_10033CCB8, &qword_100272F78);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD000000000000015, 0x80000001002994D0, &v33);
    *(v11 + 12) = 2080;
    if (*(a1 + 24))
    {
      v34 = v5;
      v35 = v4 & 1;
      v36 = v7;
      v37 = v6;
      v38 = v32;

      v12 = String.init<A>(describing:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100017494(v12, v14, &v33);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: event=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!*(a1 + 24))
  {
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v33) = 0;

    static Published.subscript.setter();
    return;
  }

  v16 = *(a1 + 32);
  if (v16 > 4)
  {
    if (v16 == 5)
    {
      swift_beginAccess();
      v19 = 1;
    }

    else
    {
      if (v16 != 6)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      v19 = 0;
    }
  }

  else
  {
    if (v16)
    {
      if (v16 == 1)
      {
        swift_beginAccess();
        sub_1001682D4(4);
        swift_endAccess();
        v17 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
        if (v17)
        {
          v18 = v17;
          sub_100074E80(v18);
        }
      }

      goto LABEL_21;
    }

    swift_beginAccess();
    v19 = 3;
  }

  sub_1001682D4(v19);
  swift_endAccess();
LABEL_21:
  v20 = sub_10001A794(v16);
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = sub_10001A860(v22);
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_100017494(v28, v30, &v34);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Forwarding %s from legacy event", v25, 0xCu);
      sub_10000903C(v26);
    }

    sub_10001A98C(v22);
  }
}

__n128 sub_10001A77C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A794(unsigned __int8 a1)
{
  v1 = 6;
  v2 = 1;
  if (a1 == 6)
  {
    v2 = 6;
  }

  v3 = 3;
  if (a1 != 4)
  {
    v3 = 8;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 4;
  }

  if (a1 > 1u)
  {
    v1 = a1 == 2;
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

id sub_10001A80C(uint64_t a1)
{
  v1 = 8 * a1 - 8;
  v2 = *(off_100302470 + v1);
  v3 = *(off_100302430 + v1);

  return v2;
}

__CFString *sub_10001A860(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100303638 + a1);
    v2 = *(&off_100303688 + a1);
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001A8C4(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = off_1003050D8[a1];
    v2 = off_100305128[a1];
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001A928(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100313638 + a1);
    v2 = *(&off_100313688 + a1);
  }

  v3 = v1;

  return v2;
}

void sub_10001A98C(unint64_t a1)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002994F0, &v36);
    *(v5 + 12) = 2080;
    v6 = sub_10001A860(a1);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_100017494(v7, v9, &v36);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: type=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_10000DF0C(v11, v12);
      v14 = v13;

      if (!v14)
      {
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          v20 = "### No mediaRouteID?";
          goto LABEL_18;
        }

LABEL_19:
        swift_unknownObjectRelease();

        return;
      }

      if (sub_1000176C8(v15, v16))
      {

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v23 = objc_allocWithZone(PCProximityEvent);
      v24 = String._bridgeToObjectiveC()();

      v25 = [v23 initWithType:1 mediaRemoteID:v24 info:0];

      [v25 setExpectsDisplayContext:1];
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136315138;
        v30 = sub_10001A860(1uLL);
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_100017494(v31, v33, &v36);

        *(v28 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Sending event %s to delegate", v28, 0xCu);
        sub_10000903C(v29);
      }

      sub_10001BD68(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      oslog = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v21, "### No proximityDelegate?", v22, 2u);
      }
    }
  }
}

void sub_10001AEA0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003078(v6, qword_10034DBB8);

  v37 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v10 = 136315394;
    v11 = sub_100017494(0x286D726177657270, 0xEB00000000293A5FLL, v38);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, v38);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: device=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v16 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16) && (, sub_100019110(a1 + v16), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Already prewarming device.", v21, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = sub_10000DF0C(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_10001B7F4();
      v27 = v35;
      OSSignpostID.init(_:)();
      static os_signpost_type_t.begin.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();
      (*(v36 + 8))(v27, v4);
      v28 = (a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
      *v28 = v24;
      v28[1] = v26;

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_10001B874(a1, a1 + v16, isUniquelyReferenced_nonNull_native);
      *(v2 + 40) = v39;
      swift_endAccess();
      sub_10001BB3C(3uLL);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "### No MediaRoute ID", v32, 2u);
      }

      sub_10001618C();
      swift_allocError();
      *v33 = 0xD000000000000010;
      *(v33 + 8) = 0x80000001002A5EA0;
      *(v33 + 16) = 9;
      swift_willThrow();
    }
  }
}

uint64_t sub_10001B43C(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();

    v7 = a4(v10);

    *(v9 + v5) = v7;
  }

  return v7;
}

void *sub_10001B518(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001B564(a1, a2);
  sub_10001B708(&off_1002FFF88);
  return v3;
}

void *sub_10001B564(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001B694(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001B694(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10001B694(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100035D04(&qword_10033DF38, &unk_100280F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10001B708(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100084F54(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10001B7F4()
{
  v0 = UUID.uuid.getter();
  v1 = UUID.uuid.getter() & 0xFF00 | v0;
  v2 = UUID.uuid.getter() & 0xFF0000;
  v3 = v1 | v2 | UUID.uuid.getter() & 0xFF000000;
  v4 = UUID.uuid.getter() & 0xFF00000000;
  v5 = v4 | UUID.uuid.getter() & 0xFF0000000000;
  v6 = v3 | v5 | UUID.uuid.getter() & 0xFF000000000000;
  return v6 | UUID.uuid.getter() & 0xFF00000000000000;
}

uint64_t sub_10001B8A0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_100019110(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v26();
      goto LABEL_7;
    }

    v27();
    v24 = sub_100019110(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_10001BA84(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_10001BA84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10001BB3C(unint64_t a1)
{
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034DBB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = sub_10001A928(a1);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_100017494(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending event %s to MediaRemote", v5, 0xCu);
    sub_10000903C(v6);
  }

  v12 = objc_allocWithZone(PCProximityEvent);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithType:a1 mediaRemoteID:v13 info:0];

  [v14 setExpectsDisplayContext:(a1 < 0xA) & (0x2FAu >> a1)];

  sub_10001BD68(v14);
}

void sub_10001BD68(void *a1)
{
  v2 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003439E8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100017494(0x2865766965636572, 0xEF293A746E657665, &v30);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    *(v8 + 22) = 2080;
    v10 = v2;
    v11 = [v5 mediaRemoteID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100017494(v12, v14, &v30);

    *(v8 + 24) = v15;
    v2 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: event=%@, mediaRouteID=%s", v8, 0x20u);
    sub_1000030B0(v9);

    swift_arrayDestroy();
  }

  if ([v5 eventType] == 1)
  {
    if (*(v2 + 96))
    {
      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v16, "Dropping execute event: migration is already underway", v17, 2u);
      }

      return;
    }

    sub_1000F3574(1);
  }

  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = [v18 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100017494(v24, v26, &v30);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Forwarding event to client %s", v21, 0xCu);
    sub_10000903C(v22);
  }

  v28 = *(v2 + 80);

  [v28 receiveEvent:v18];
}

uint64_t sub_10001C1A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10001C1EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001C260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t PCMediaRemoteDisplayContext.description.getter()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  _StringGuts.grow(_:)(31);

  v65 = 0xD00000000000001DLL;
  v3 = [v0 mediaRemoteID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_10000B584(8, v4, v6);

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x800000010029AD20;
  v11 = [v1 localizedPrimaryAltText];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v65 = 0x3D7972616D697270;
    sub_10000B584(8, v13, v15);

    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_100009088((v20 > 1), v21 + 1, 1, v2);
    }

    *(v2 + 16) = v21 + 1;
    v22 = v2 + 16 * v21;
    *(v22 + 32) = 0x3D7972616D697270;
    *(v22 + 40) = 0xE800000000000000;
  }

  v23 = [v1 localizedSecondaryAltText];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v66 = 0x7261646E6F636573;
    sub_10000B584(8, v25, v27);

    v28 = static String._fromSubstring(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v33 = *(v2 + 16);
    v32 = *(v2 + 24);
    if (v33 >= v32 >> 1)
    {
      v2 = sub_100009088((v32 > 1), v33 + 1, 1, v2);
    }

    *(v2 + 16) = v33 + 1;
    v34 = v2 + 16 * v33;
    *(v34 + 32) = 0x7261646E6F636573;
    *(v34 + 40) = 0xEA00000000003D79;
  }

  v35 = [v1 proxDeviceState];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 playbackState];

    v38 = MRPlaybackState.description.getter(v37);
    v40 = v39;
    _StringGuts.grow(_:)(18);

    v67 = 0xD000000000000010;
    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v43 = *(v2 + 16);
    v42 = *(v2 + 24);
    if (v43 >= v42 >> 1)
    {
      v2 = sub_100009088((v42 > 1), v43 + 1, 1, v2);
    }

    *(v2 + 16) = v43 + 1;
    v44 = v2 + 16 * v43;
    *(v44 + 32) = 0xD000000000000010;
    *(v44 + 40) = 0x800000010029AD40;
  }

  v45 = [v1 selectedDeviceState];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 playbackState];

    v48 = MRPlaybackState.description.getter(v47);
    v50 = v49;
    _StringGuts.grow(_:)(22);

    v68 = 0xD000000000000014;
    v51._countAndFlagsBits = v48;
    v51._object = v50;
    String.append(_:)(v51);

    v53 = *(v2 + 16);
    v52 = *(v2 + 24);
    if (v53 >= v52 >> 1)
    {
      v2 = sub_100009088((v52 > 1), v53 + 1, 1, v2);
    }

    *(v2 + 16) = v53 + 1;
    v54 = v2 + 16 * v53;
    *(v54 + 32) = 0xD000000000000014;
    *(v54 + 40) = 0x800000010029AD60;
  }

  v55 = sub_10001CA90([v1 interactionDirection]);
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59._countAndFlagsBits = v56;
  v59._object = v58;
  String.append(_:)(v59);

  v61 = *(v2 + 16);
  v60 = *(v2 + 24);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_100009088((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 16) = v61 + 1;
  v62 = v2 + 16 * v61;
  *(v62 + 32) = 1030908260;
  *(v62 + 40) = 0xE400000000000000;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v63 = BidirectionalCollection<>.joined(separator:)();

  return v63;
}

uint64_t MRPlaybackState.description.getter(int a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x646573756170;
      }

      goto LABEL_12;
    }

    v2 = 2036427888;
    return v2 | 0x676E6900000000;
  }

  if (a1 == 3)
  {
    return 0x646570706F7473;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
LABEL_12:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return 0x204E574F4E4B4E55;
    }

    v2 = 1801807219;
    return v2 | 0x676E6900000000;
  }

  return 0x7075727265746E69;
}

__CFString *sub_10001CA2C(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100305260 + a1);
    v2 = *(&off_100305278 + a1);
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001CA90(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100305290 + a1);
    v2 = *(&off_1003052A8 + a1);
  }

  v3 = v1;

  return v2;
}

unint64_t sub_10001CAF4()
{
  result = qword_10033D8A0;
  if (!qword_10033D8A0)
  {
    sub_100035D4C(&qword_1003397D0, &qword_1002729A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D8A0);
  }

  return result;
}

uint64_t sub_10001CB60(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001CBC0(v2);
  }

  return result;
}

void sub_10001CBC0(void *a1)
{
  v55 = type metadata accessor for OSSignpostID();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034DBB8);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000023, 0x80000001002A63A0, &v57);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: context=%@", v9, 0x16u);
    sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

    sub_10000903C(v11);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = v6;
  if (v13)
  {
    v54 = v3;
    v15 = [v13 mediaRemoteID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (*(*(v1 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + qword_100346AF8);

    os_unfair_lock_lock(v19);

    sub_1002134C4(v20, v16, v18);
    v22 = v21;

    os_unfair_lock_unlock(v19);

    if (v22)
    {
      v23 = v14;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        v57 = v28;
        *v26 = 136315394;
        v30 = sub_1000092A0(v28, v29);
        v32 = sub_100017494(v30, v31, &v57);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2112;
        *(v26 + 14) = v13;
        *v27 = v13;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "New mrContext for device %s: context=%@", v26, 0x16u);
        sub_1000097E8(v27, &qword_100339940, &unk_100272C50);

        sub_10000903C(v53);
      }

      v34 = v54;
      v35 = v23;
      sub_10001D304(v13);
      sub_100037298(12);
      sub_10001B7F4();
      v36 = v56;
      OSSignpostID.init(_:)();
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v34 + 8))(v36, v55);
      return;
    }

    v43 = v14;
    v56 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 136315138;
      v47 = [v13 mediaRemoteID];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_100017494(v48, v50, &v57);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v56, v44, "### No device for mediaRemoteID: %s", v45, 0xCu);
      sub_10000903C(v46);

      return;
    }
  }

  else
  {
    v56 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v38 = 136315138;
      swift_getObjectType();
      v40 = _typeName(_:qualified:)();
      v42 = sub_100017494(v40, v41, &v57);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v56, v37, "### Unexpected context type: %s", v38, 0xCu);
      sub_10000903C(v39);

      return;
    }
  }

  v52 = v56;
}

uint64_t sub_10001D304(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10001D430();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_10001D398(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v4 = *(v2 + 24);
    sub_100035D04(a1, a2);
    swift_allocObject();
    v5 = v4;
    v3 = CurrentValueSubject.init(_:)();
    *(v2 + 16) = v3;
  }

  return v3;
}

id sub_10001D444@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10001D450(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v3 != 0;
  }

  return result;
}

void sub_10001D52C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 interactionDirection];
    if (v4 == 1)
    {
      v5 = &selRef_selectedDeviceState;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_11;
      }

      v5 = &selRef_proxDeviceState;
    }

    v6 = [v3 *v5];
    if (v6)
    {
      v7 = v6;
      [v6 playbackState];
      if ((MRMediaRemotePlaybackStateIsAdvancing() & 1) != 0 || [v7 playerHasPlayedRecently])
      {
        v3 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v3 response:v7];

        goto LABEL_12;
      }
    }

LABEL_11:
    v3 = 0;
  }

LABEL_12:
  *a2 = v3;
}

unint64_t sub_10001D60C(void **a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(22);

  if (v1)
  {
    sub_100003118(0, &qword_10033D580, PCMediaActivity_ptr);
    v2 = v1;
    v3 = String.init<A>(describing:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  v6 = v5;
  String.append(_:)(*&v3);

  return 0xD000000000000014;
}

uint64_t sub_10001D6D4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = v2;

    sub_1001C0488(v2);
  }

  return result;
}

void *sub_10001D7AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_10001D7D0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_10001D824(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10001D920@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001D94C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10001D9D4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001DA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100036744(a1);

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpringState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_10001DAC4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10001DAD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001DB28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001DB3C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001DB74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DC74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10003A51C(*a1, v2);
  return sub_100038B78(v1, v2);
}

uint64_t sub_10001DD34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10003878C(v1, v2);
}

uint64_t sub_10001DD74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DDB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DE10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DEC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Optional() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v4 + 56) & ~v4;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v0 + v6, 1, v2))
  {
    (*(v10 + 8))(v0 + v6, v2);
  }

  v11 = v4 | v8;
  v12 = (v6 + v5 + v8) & ~v8;
  (*(v7 + 8))(v0 + v12, v1);

  return _swift_deallocObject(v0, v12 + v9, v11 | 7);
}

uint64_t sub_10001E068()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001E0A0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10001E148()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E180()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10001E210(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001E224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E26C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_10001E34C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10001E3E8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001E46C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E4A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10001E4EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_10001E520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001E57C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001E5A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E5DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E650()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E688()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001E7A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E7E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E818()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E858()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E8D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E910()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E94C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E98C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001EA40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001EA5C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40) >= 5uLL)
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001EABC()
{
  if (*(v0 + 24) >= 5uLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EB0C()
{
  v1 = sub_100035D04(&qword_10033E818, qword_100274990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001EBAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EBEC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10001EC28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EC60()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001EC98()
{

  sub_100010708(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 88, 7);
}

unsigned __int8 *sub_10001ECE0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 5)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

__n128 sub_10001ED04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001ED18@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001EE0C8(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001ED44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EDB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EDF8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EE50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EE88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EF34()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001EF70()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0x65756E69746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_10001EFDC@<X0>(uint64_t *a2@<X8>)
{
  result = Substring.distance(from:to:)();
  *a2 = result;
  return result;
}

uint64_t sub_10001F024()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F05C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001F130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F168()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F1A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10001F20C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001F2CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F450@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v6, type metadata accessor for ExperienceEvent);
  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_100097C8C(v6, type metadata accessor for ExperienceEvent);
    goto LABEL_5;
  }

  v8 = *v6;
  if (v8 > 4)
  {
LABEL_5:
    v9 = -258;
    goto LABEL_6;
  }

  v9 = word_100278A1A[v8];
LABEL_6:
  *a2 = v9;
  return result;
}

uint64_t sub_10001F540()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10001F578()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F5B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F678()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F6B0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_10001F790()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F7C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F820()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001F870()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F8B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F8F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F938()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001F9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FA20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA58()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_10001FB38()
{
  v1 = *(type metadata accessor for ViewServiceInput(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = *v5;
      if (*v5 == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {

          v7 = *(type metadata accessor for NearbySharingInteractionDisplayContext(0) + 20);
          v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
          (*(*(v8 - 8) + 8))(v5 + v7, v8);
        }

        goto LABEL_13;
      }

      v9 = *v5;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v10 = type metadata accessor for ActivityDisplayContext(0);
  v11 = v5 + *(v10 + 32);
  type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 2)
  {

    v18 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    v33 = v18;
    v21 = &v11[v18];
    v22 = v19;
    if (!(*(v20 + 48))(v21, 1, v19))
    {
      (*(v20 + 8))(&v11[v33], v22);
    }
  }

  else
  {
    if (v12 == 1)
    {

      v13 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v14 = type metadata accessor for Date();
      v15 = *(v14 - 8);
      v32 = v13;
      v16 = &v11[v13];
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(&v11[v32], v17);
      }
    }

    else if (v12)
    {
      goto LABEL_25;
    }
  }

LABEL_25:
  v23 = v5 + *(v10 + 36);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 != 2)
  {
    if (v24 == 1)
    {

      v25 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v26 = type metadata accessor for Date();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v23[v25], 1, v26))
      {
        (*(v27 + 8))(&v23[v25], v26);
      }
    }

    else if (v24)
    {
      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_13;
  }

  v28 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(&v23[v28], 1, v29))
  {
    (*(v30 + 8))(&v23[v28], v29);
  }

LABEL_13:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001FFA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FFEC()
{
  swift_unknownObjectRelease();

  sub_1000E62A0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 98, 7);
}

uint64_t sub_100020064()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002009C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100020144()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002018C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000201C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020204(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000202B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020360()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020398()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1000204B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillProximitycontrold];
  *a2 = result;
  return result;
}

uint64_t sub_100020500()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000205F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000206B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000206EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002072C()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v21 = *(v3 + 80);
  v4 = *(v3 + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  v20 = *(v5 + 80);
  v6 = (((v21 + 64) & ~v21) + v4 + v20) & ~v20;
  v7 = *(v1 - 8);
  v19 = *(v7 + 80);
  v8 = (v6 + *(v5 + 64) + v19) & ~v19;
  v9 = *(v7 + 64);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for Optional() - 8);
  v12 = *(v11 + 80);
  v17 = v8;
  v13 = (v8 + v9 + v12) & ~v12;
  v18 = *(v11 + 64);

  v14 = *(v3 + 8);
  v14(v0 + ((v21 + 64) & ~v21), AssociatedTypeWitness);
  if (!(*(v3 + 48))(v0 + v6, 1, AssociatedTypeWitness))
  {
    v14(v0 + v6, AssociatedTypeWitness);
  }

  (*(v7 + 8))(v0 + v17, v1);
  v15 = *(v10 - 8);
  if (!(*(v15 + 48))(v0 + v13, 1, v10))
  {
    (*(v15 + 8))(v0 + v13, v10);
  }

  return _swift_deallocObject(v0, v13 + v18, v21 | v20 | v19 | v12 | 7);
}

uint64_t sub_100020A94(void *a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publishers.SetFailureType();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  return swift_getWitnessTable();
}

uint64_t sub_100020C34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_100020C7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100020CB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020CEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020D5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100020DC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100020DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E48()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100020E88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_100020EBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002102C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001044A8(v1, v2);
}

uint64_t sub_100021258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021290()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000212F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021334()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000213AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000213E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021438(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100021494()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000214CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021504()
{

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_10002155C()
{

  return _swift_deallocObject(v0, 337, 7);
}

uint64_t sub_1000215C4()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002162C()
{

  return _swift_deallocObject(v0, 329, 7);
}

uint64_t sub_10002169C()
{

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_1000216F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002172C()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002179C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000217D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002180C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021844()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021888()
{

  sub_100010708(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000218D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002191C@<X0>(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
}

__n128 sub_100021974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100021990()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000219C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100021B58()
{
  v1 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v10 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {

      v7 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v8 = type metadata accessor for Date();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v5 + v7, 1, v8))
      {
        (*(v9 + 8))(v5 + v7, v8);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

__n128 sub_100021DBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100021E14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004AA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100021E78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021EB0()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021FD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022010()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 16))
  {
  }

  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10002218C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000221EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100022200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022238()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100022318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022350()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022394()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000223DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10002240C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022444()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002247C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000224BC()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000225DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022668()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000226A0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100022780()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000228A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022930()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&qword_100348030, qword_1002804F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100022A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100035D04(&qword_100348030, qword_1002804F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_100022B08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 2;
  return result;
}

uint64_t sub_100022B34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 5;
  return result;
}

uint64_t sub_100022B64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

uint64_t sub_100022B94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  *(a3 + 4) = 1;
  return result;
}

uint64_t sub_100022BD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022CC0()
{
  v1 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100022D54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100022DA4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100022DDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022E44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022EB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022EF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022F3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022F78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022FB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022FF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

__n128 sub_100023054(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100023074()
{
  v1 = sub_100035D04(&qword_1003492C0, &unk_100283728);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100023108()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023158()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000231A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000231D8()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000232C0()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
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

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000233D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023410()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023448()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023480()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000234D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023508()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023540()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023580()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000235C8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100023610()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023648()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1000236BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002370C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023744()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023784()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100023864()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002389C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000238D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023910()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023948()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100023A68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return v2;
}

uint64_t sub_100023A84()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100023B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023C20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023C60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023C98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100023DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100023E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDisplayContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = _s8CardInfoOMa(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100023FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDisplayContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = _s8CardInfoOMa(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000240E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ShareableContentType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10002419C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ShareableContentType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100024240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000242AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10002432C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024364()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000243A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000243F0()
{
  v1 = type metadata accessor for ActivityDisplayContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v22 = *(*(v1 - 8) + 64);

  v4 = v0 + v3;

  v5 = v0 + v3 + *(v1 + 32);
  type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v10 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v5 + v10, 1, v11))
      {
        (*(v12 + 8))(v5 + v10, v11);
      }

      break;
    case 1:

      v7 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v8 = type metadata accessor for Date();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v5 + v7, 1, v8))
      {
        (*(v9 + 8))(v5 + v7, v8);
      }

      v3 = (v2 + 24) & ~v2;
      break;
    case 0:

      break;
  }

  v13 = v4 + *(v1 + 36);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 == 2)
  {

    v18 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v13 + v18, 1, v19))
    {
      (*(v20 + 8))(v13 + v18, v19);
    }
  }

  else
  {
    if (v14 == 1)
    {

      v15 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 20);
      v16 = type metadata accessor for Date();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    else if (v14)
    {
      goto LABEL_19;
    }
  }

LABEL_19:

  return _swift_deallocObject(v0, ((v22 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000247AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000247EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024824()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002486C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000248A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100024928()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024960()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100024A88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024AC0()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 16))
  {
  }

  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_100024C3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024C74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024CAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024D64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100024E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_100024E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100024EA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024ED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024F10()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100024FE8()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48) != 1)
  {
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10002504C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025118()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 5uLL)
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100025170()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000251C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100025238()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100025318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025350()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025388()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000254A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002551C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100025570(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NoticeTapAction(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeContent(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100025694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NoticeTapAction(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeContent(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000257C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ShareableContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002586C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ShareableContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100025918()
{
  v1 = 0x65766965636572;
  if (*v0 != 1)
  {
    v1 = 1684956531;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10002596C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000259A4()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1000259DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoticeContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NoticeContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100025B64()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100025BFC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100025C3C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100025C74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025D30()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100025E10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025E48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025ECC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProxControlDemoBridgeServer();
  sub_1002384E0(&qword_10034F8B8, 255, type metadata accessor for ProxControlDemoBridgeServer, &unk_1002747AC);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100025F4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025F84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10002607C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_100026138()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026170()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000261B8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000261F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026230()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026268()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000262A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000262E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100026328(uint64_t a1)
{
  result = sub_100245330(&qword_100350920, type metadata accessor for ExperienceEvent, &unk_100295C64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100026388()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000263C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100035D04(&qword_1003511F8, &unk_100296750);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100026484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100035D04(&qword_1003511F8, &unk_100296750);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100026534()
{
  v1 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100026688()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000266C8()
{
  v1 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000267C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002680C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002689C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100026988()
{
  if (*v0)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 0x746E6573657270;
  }
}

uint64_t sub_1000269BC()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 25705;
  }
}

double sub_100026A54(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double sub_100026A80(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double sub_100026AB8(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double sub_100026AE8(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

__n128 sub_100026B34@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  v23 = 0.0;
  v24 = 0.0;
  sub_100026AB8(&v24, &v23, 1.0, 0.5);
  sub_100027CC8(v9, a4, 0.0, a4, v24, v23);
  sub_100027CC8(&v16, a5, 0.0, a5, v24, v23);
  v10 = v21;
  *(a1 + 192) = v20;
  *(a1 + 208) = v10;
  *(a1 + 224) = v22;
  v11 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v11;
  v12 = v19;
  *(a1 + 160) = v18;
  *(a1 + 176) = v12;
  sub_100027CC8(&v16, a2, 0.0, a2, v24, v23);
  v13 = v21;
  *(a1 + 304) = v20;
  *(a1 + 320) = v13;
  *(a1 + 336) = v22;
  v14 = v17;
  *(a1 + 240) = v16;
  *(a1 + 256) = v14;
  result = v19;
  *(a1 + 272) = v18;
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_100026C54(uint64_t result, double a2)
{
  *(result + 280) = a2;
  *(result + 240) = a2;
  *(result + 248) = 0;
  return result;
}

void sub_100026C64(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 240) = a3;
    *(a1 + 248) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 264) = v7;
    *(a1 + 272) = v5;
    a3 = a2;
  }

  *(a1 + 280) = a3;
}

void sub_100026CD0(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 280) = a2;
  }

  else
  {
    sub_100026C64(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
}

uint64_t sub_100026D24(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void sub_100026D34(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t sub_100026D9C(uint64_t result, double a2)
{
  *(result + 168) = a2;
  *(result + 128) = a2;
  *(result + 136) = 0;
  return result;
}

void sub_100026DAC(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 128) = a2;
    *(a1 + 136) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 152) = v7;
    *(a1 + 160) = v5;
  }

  *(a1 + 168) = a2;
}

double sub_100026E14@<D0>(void *__src@<X0>, double *a2@<X8>, double a3@<D0>)
{
  memcpy(a2, __src, 0x170uLL);
  v6 = *(__src + 6);
  v39 = *(__src + 5);
  v40 = v6;
  v41 = *(__src + 7);
  v7 = *(__src + 2);
  v35 = *(__src + 1);
  v36 = v7;
  v8 = *(__src + 4);
  v37 = *(__src + 3);
  v38 = v8;
  sub_100027DF0(&v35, (a2 + 2), a3);
  v9 = *(a2 + 13);
  v32 = *(a2 + 12);
  v33 = v9;
  v34 = *(a2 + 14);
  v10 = *(a2 + 9);
  v28 = *(a2 + 8);
  v29 = v10;
  v11 = *(a2 + 11);
  v30 = *(a2 + 10);
  v31 = v11;
  sub_100027DF0(&v28, &v35, a3);
  v12 = v40;
  *(a2 + 12) = v39;
  *(a2 + 13) = v12;
  *(a2 + 14) = v41;
  v13 = v36;
  *(a2 + 8) = v35;
  *(a2 + 9) = v13;
  v14 = v38;
  *(a2 + 10) = v37;
  *(a2 + 11) = v14;
  v15 = *(a2 + 20);
  v32 = *(a2 + 19);
  v33 = v15;
  v34 = *(a2 + 21);
  v16 = *(a2 + 16);
  v28 = *(a2 + 15);
  v29 = v16;
  v17 = *(a2 + 18);
  v30 = *(a2 + 17);
  v31 = v17;
  sub_100027DF0(&v28, &v35, a3);
  v18 = v40;
  *(a2 + 19) = v39;
  *(a2 + 20) = v18;
  *(a2 + 21) = v41;
  v19 = v36;
  *(a2 + 15) = v35;
  *(a2 + 16) = v19;
  v20 = v38;
  *(a2 + 17) = v37;
  *(a2 + 18) = v20;
  *&v20 = *a2;
  *&v19 = a2[1];
  v21 = a2[2];
  v22 = a2[16];
  v23 = a2[30];
  v24 = *(a2 + 44);
  v25 = *(a2 + 45);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_100027D28(&v35, *&v20, *&v19, v23, v21, v22);
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v27[4] = v39;
  v27[5] = v40;
  v27[6] = v41;
  v27[0] = v35;
  v27[1] = v36;
  v27[2] = v37;
  v27[3] = v38;
  sub_100027DF0(v27, &v28, a3);
  result = *&v28;
  *a2 = v28;
  return result;
}

__n128 sub_100026FC8@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_100027D28(a2, a1->n128_f64[0], a1->n128_f64[1], a1[15].n128_f64[0], a1[1].n128_f64[0], a1[8].n128_f64[0]);
  result = a1[22];
  a2[3] = result;
  return result;
}

BOOL sub_10002701C(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[44];
  v4 = a1[45];
  v5 = (a1 + 2);
  v6 = *(a1 + 2);
  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  v9 = (a1 + 30);
  v10 = *(a1 + 30);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  sub_100027D28(&v28, v1, v2, v10, v6, v8);
  *&v31 = v3;
  *(&v31 + 1) = v4;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  result = sub_100027CF4(&v21);
  if (result)
  {
    v12 = v9[5];
    v25 = v9[4];
    v26 = v12;
    v27 = v9[6];
    v13 = v9[1];
    v21 = *v9;
    v22 = v13;
    v14 = v9[3];
    v23 = v9[2];
    v24 = v14;
    result = sub_100027CF4(&v21);
    if (result)
    {
      v15 = v5[5];
      v25 = v5[4];
      v26 = v15;
      v27 = v5[6];
      v16 = v5[1];
      v21 = *v5;
      v22 = v16;
      v17 = v5[3];
      v23 = v5[2];
      v24 = v17;
      result = sub_100027CF4(&v21);
      if (result)
      {
        v18 = v7[5];
        v25 = v7[4];
        v26 = v18;
        v27 = v7[6];
        v19 = v7[1];
        v21 = *v7;
        v22 = v19;
        v20 = v7[3];
        v23 = v7[2];
        v24 = v20;
        return sub_100027CF4(&v21);
      }
    }
  }

  return result;
}

double sub_100027160(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double sub_10002719C(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  if (dword_100338D80 <= 50 && (dword_100338D80 != -1 || _LogCategory_Initialize()))
  {
    sub_10025F638();
  }

  if ((_set_user_dir_suffix() & 1) == 0 && dword_100338D80 <= 90 && (dword_100338D80 != -1 || _LogCategory_Initialize()))
  {
    sub_10025F658();
  }

  v5 = NSTemporaryDirectory();
  v6 = UIApplicationMain(a1, a2, @"Application", @"Application");
  objc_autoreleasePoolPop(v4);
  return v6;
}

int64x2_t sub_100027CC8@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

int64x2_t sub_100027D28@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v13 = 0;
  v14 = 0;
  sub_100026AB8(&v14, &v13, a5, a6);
  v11 = v13;
  v10 = v14;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

double sub_100027DB0(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  sub_100026AB8(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void sub_100027DF0(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v27 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v27;
    *(a2 + 96) = *(a1 + 96);
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v33 = v10;
  v34 = v6;
  v32 = v11;
  if (v10 == *(a1 + 64) && v11 == *(a1 + 72))
  {
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v15 = *(a1 + 96);
    v35 = *(a1 + 104);
    v14 = -v12;
  }

  else
  {
    v12 = v11 * 0.5;
    v13 = sqrt(v10);
    v14 = -(v11 * 0.5);
    v15 = sqrt(v13 * v13 - v12 * v12);
    v35 = sqrt(v12 * v12 - v13 * v13);
  }

  v16 = exp(v14 * a3);
  v17 = v16;
  v18 = v5 + v12 * v7;
  if (v12 >= v13)
  {
    if (v12 <= v13)
    {
      v21 = v7 + v18 * a3;
      v26 = v21 * (v16 * v14) + v16 * v18;
      goto LABEL_13;
    }

    v23 = v35 * a3;
    __x = v35 * a3;
    v24 = v18 / v35;
    v31 = cosh(v23);
    v25 = sinh(__x);
    v21 = v24 * v25 + v7 * v31;
    v22 = v35 * (v24 * v31) + v7 * v25 * v35;
  }

  else
  {
    v19 = v18 / v15;
    v20 = __sincos_stret(v15 * a3);
    v21 = v20.__sinval * v19 + v7 * v20.__cosval;
    v22 = v15 * (v20.__cosval * v19) + -(v20.__sinval * v7) * v15;
  }

  v26 = v17 * v14 * v21 + v17 * v22;
LABEL_13:
  *a2 = v34 + v17 * v21;
  *(a2 + 8) = v26;
  *(a2 + 64) = v33;
  *(a2 + 72) = v32;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v35;
}

uint64_t sub_100027FC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100338DF8);
  sub_100003078(v0, qword_100338DF8);
  return Logger.init(subsystem:category:)();
}

void *sub_100028040(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10024D394(_swiftEmptyArrayStorage);
  v1[6] = &_swiftEmptySetSingleton;
  v1[3] = v4;
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  if (qword_100338DF0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100338DF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Init", v8, 2u);
    }

    v2[2] = a1;
    v21 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
    v22[0] = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + 32);

    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v22[0] = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();

    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v22[0] = *(*(a1 + v21) + 48);
    v22[0] = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();

    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v10 = *(a1 + v21);
    __chkstk_darwin(v9);
    type metadata accessor for HandoffDevice(0);
    type metadata accessor for UUID();
    sub_100036094(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v11 = v10 + qword_100346AF8;
    os_unfair_lock_lock((v10 + qword_100346AF8));
    v22[0] = *(v11 + 8);

    swift_getAtKeyPath();

    v12 = v22[5];
    os_unfair_lock_unlock(v11);

    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v14 & 0x4000000000000000) != 0)
    {
LABEL_22:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
LABEL_23:

        return v2;
      }

      goto LABEL_11;
    }

    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_11:
    v18 = 0;
    a1 = v14 & 0xC000000000000001;
    while (a1)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_19;
      }

LABEL_15:
      sub_100028580(v19);

      ++v18;
      if (v20 == v17)
      {
        goto LABEL_23;
      }
    }

    if (v18 >= *(v14 + 16))
    {
      goto LABEL_20;
    }

    v19 = *(v14 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_15;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v14 = sub_100009194(*(v12 + 16), 0);
  v15 = sub_100009A04(v22, (v14 + 32), v13, v12);
  result = sub_100004F98(v22[0]);
  if (v15 == v13)
  {
    if (v14 < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028580(uint64_t a1)
{
  v84 = sub_100035D04(&qword_100339850, &qword_100270358);
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v68 - v2;
  v85 = sub_100035D04(&qword_100339858, &qword_100270360);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v68 - v3;
  v4 = sub_100035D04(&qword_100339860, &qword_100270368);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v68 - v5;
  v76 = sub_100035D04(&qword_100339868, &qword_100270370);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v68 - v6;
  v77 = sub_100035D04(&qword_100339870, &qword_100270378);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v68 - v7;
  v8 = sub_100035D04(&qword_100339878, &qword_100270380);
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = __chkstk_darwin(v8);
  v79 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v68 - v11;
  v12 = sub_100035D04(&unk_100339880, &qword_100270388);
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = __chkstk_darwin(v12);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v68 - v15;
  v16 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_100035D04(&qword_100339890, &qword_100270398);
  v68 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v70 = sub_100035D04(&qword_100339898, &qword_1002703A0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v23 = &v68 - v22;
  v24 = sub_100035D04(&qword_1003398A0, &qword_1002703A8);
  v91 = *(v24 - 8);
  v92 = v24;
  v25 = __chkstk_darwin(v24);
  v71 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v90 = &v68 - v27;
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100003078(v28, qword_100338DF8);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v89 = a1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = sub_100017494(0x3A5F28646E756F66, 0xE900000000000029, &v101);
    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    v35 = sub_1000092A0(v33, v34);
    v37 = sub_100017494(v35, v36, &v101);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: device=%s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v101 = sub_10006E404();
  sub_100035D04(&qword_1003398A8, &unk_1002703B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10026F050;

  CurrentValueSubject.value.getter();
  v39 = v102;
  if (v102 == 6)
  {
    CurrentValueSubject.value.getter();

    v39 = v100;
  }

  else
  {
  }

  *(v38 + 32) = v39;
  sub_100035D04(&qword_1003398B0, &qword_100273280);
  sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v40 = qword_10038B5B8;
  v101 = qword_10038B5B8;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
  sub_100035CB8();
  sub_10000E244(&unk_1003398C0, &qword_100339890, &qword_100270398, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100036094(&qword_10034B420, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
  v42 = v40;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v18, &qword_10034C680, &qword_100270390);

  (*(v68 + 8))(v21, v19);
  v43 = swift_allocObject();
  v44 = v89;
  *(v43 + 16) = v89;
  *(v43 + 24) = 1;
  sub_10000E244(&unk_1003398D0, &qword_100339898, &qword_1002703A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v45 = v90;
  v46 = v70;
  Publisher.map<A>(_:)();

  (*(v69 + 8))(v23, v46);
  v101 = sub_100140E18();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v47 = v93;
  Publisher.map<A>(_:)();

  swift_beginAccess();
  sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  v48 = v72;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_1003398F0, &qword_100339868, &qword_100270370, &protocol conformance descriptor for Published<A>.Publisher);

  v49 = v73;
  v50 = v76;
  Publisher.compactMap<A>(_:)();

  (*(v74 + 8))(v48, v50);
  sub_10000E244(&qword_1003398F8, &qword_100339870, &qword_100270378, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v51 = v96;
  v52 = v77;
  Publisher.prepend(_:)();
  (*(v75 + 8))(v49, v52);
  v77 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v94 + 16))(v78, v47, v95);
  (*(v91 + 16))(v71, v45, v92);
  (*(v97 + 16))(v79, v51, v98);
  v101 = *(v44 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);

  sub_100035D04(&qword_100339900, &unk_1002703D0);
  sub_10000E244(&qword_100339908, &unk_100339880, &qword_100270388, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000E244(&qword_100339910, &qword_1003398A0, &qword_1002703A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000E244(&qword_100339918, &qword_100339878, &qword_100270380, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_10000E244(&qword_100339920, &qword_100339900, &unk_1002703D0, &unk_10027C688);
  v53 = v80;
  v54 = v95;
  v55 = v92;
  v56 = v98;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_10000E244(&qword_100339928, &qword_100339850, &qword_100270358, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v57 = v81;
  v58 = v84;
  Publisher.map<A>(_:)();
  (*(v82 + 8))(v53, v58);
  sub_10000E244(&qword_100339930, &qword_100339858, &qword_100270360, &protocol conformance descriptor for Publishers.Map<A, B>);
  v59 = v85;
  v60 = v86;
  Publisher<>.removeDuplicates()();
  (*(v83 + 8))(v57, v59);
  v61 = swift_allocObject();
  v62 = v99;
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 16) = v44;
  *(v63 + 24) = v61;
  sub_10000E244(&qword_100339938, &qword_100339860, &qword_100270368, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  v64 = v88;
  v65 = Publisher<>.sink(receiveValue:)();

  (*(v87 + 8))(v60, v64);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v62 + 40);
  *(v62 + 40) = 0x8000000000000000;
  sub_10004CE14(v65, v44 + v77, isUniquelyReferenced_nonNull_native);
  *(v62 + 40) = v100;
  swift_endAccess();
  (*(v97 + 8))(v96, v56);
  (*(v94 + 8))(v93, v54);
  return (*(v91 + 8))(v90, v55);
}

uint64_t sub_100029698(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_10002970C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100338DF8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v2;
    v20[0] = v10;
    *v9 = 136315394;
    v11 = sub_100017494(0x293A5F2874736F6CLL, 0xE800000000000000, v20);
    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: device=%s", v9, 0x16u);
    swift_arrayDestroy();
    v2 = v19;
  }

  sub_10002A688(a1);
  v16 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v17 = *(v3 + 16);
  v17(v5, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v2);
  swift_beginAccess();
  sub_1001CF58C(0, v5);
  swift_endAccess();
  v17(v5, a1 + v16, v2);
  swift_beginAccess();
  sub_1001CF58C(0, v5);
  return swift_endAccess();
}

uint64_t sub_1000299CC()
{

  return swift_deallocClassInstance();
}

void sub_100029A24(unsigned __int8 *a1@<X0>, unsigned __int8 a3@<W2>, BOOL *a4@<X8>)
{
  v5 = *a1;
  if (qword_100338DF0 != -1)
  {
    v21 = a3;
    swift_once();
    a3 = v21;
  }

  v6 = a3;
  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100338DF8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    if (v5 == 5)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = String.init<A>(describing:)();
      v16 = v18;
    }

    v19 = sub_100017494(v17, v16, &v22);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s New region: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (v5 == 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = v5;
  }

  *a4 = v20 >= v6;
}

void sub_100029C14(void *a1@<X0>, _BYTE *a3@<X8>)
{
  if (*a1)
  {

    v4 = static UUID.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100338DF8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, &v14);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s New deviceIsInActiveSession: %{BOOL}d", v8, 0x12u);
    sub_10000903C(v9);
  }

  *a3 = v4 & 1;
}

void sub_100029DCC(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 32);
  v6 = 6;
  if (v5 <= 3)
  {
    if (*(a1 + 32) <= 1u)
    {
      if (*(a1 + 32))
      {
        v6 = 4;
      }

      goto LABEL_14;
    }

    if (v5 != 2)
    {
      LOBYTE(v4) = 0;
      goto LABEL_21;
    }

LABEL_12:
    v6 = 1;
    goto LABEL_14;
  }

  if (*(a1 + 32) <= 5u)
  {
    if (v5 == 4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 8;
    }

    goto LABEL_14;
  }

  if (v5 != 6)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100338DF8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v13 = sub_1000092A0(v11, v12);
    v15 = sub_100017494(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_10001A80C(v6);
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100017494(v17, v19, &v21);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s New legacyEvent: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if ((v6 - 2) > 6)
  {
    LOBYTE(v4) = 2;
  }

  else
  {
    v4 = 0x20202010100uLL >> (8 * (v6 - 2));
  }

LABEL_21:
  *a3 = v4;
}

_BYTE *sub_10002A024@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[3] == 1)
  {
    v2 = *result | result[1];
  }

  else
  {
    v2 = result[2];
  }

  *a2 = v2 & 1;
  return result;
}

uint64_t sub_10002A050(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100338DF8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315394;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s New shouldPrewarm: %{BOOL}d", v8, 0x12u);
    sub_10000903C(v9);
  }

  if (v4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    CurrentValueSubject.value.getter();
    v15 = v16;
    if (v16 == 2)
    {
      CurrentValueSubject.value.getter();

      v15 = v17;
    }

    else
    {
    }

    sub_10002A27C(a2, v15 & 1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_10002A688(a2);
  }
}

uint64_t sub_10002A27C(uint64_t a1, char a2)
{
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100338DF8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v8 = 136315650;
    v9 = sub_100017494(0xD000000000000017, 0x8000000100297700, v24);
    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, v24);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: device=%s, needsAssets=%{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  v14 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  if (!*(*(v2 + 24) + 16) || (, sub_100019110(a1 + v14), v16 = v15, result = , (v16 & 1) == 0))
  {
    if (a2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v18 = sub_1000BDC5C();
      v20 = v19;

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18;
      }

      sub_1001FAB30(v21);
    }

    sub_10001B4E0();
    sub_10001AEA0(a1);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_10001B874(a1, a1 + v14, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v23;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10002A688(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100338DF8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v6;
    v23[0] = v11;
    *v10 = 136315394;
    v12 = sub_100017494(0x2866664F6C6F6F63, 0xEB00000000293A5FLL, v23);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v14 = sub_1000092A0(v12, v13);
    v16 = sub_100017494(v14, v15, v23);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: device=%s", v10, 0x16u);
    swift_arrayDestroy();
    v6 = v22;
  }

  result = swift_beginAccess();
  if (*(*(v1 + 24) + 16))
  {
    v18 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;

    sub_100019110(a1 + v18);
    v20 = v19;

    if (v20)
    {
      sub_10001B4E0();
      sub_100208DEC(a1);

      (*(v4 + 16))(v6, a1 + v18, v3);
      swift_beginAccess();
      sub_1001CF5CC(0, v6);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t variable initialization expression of StateMachine2.outputContextSubject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OutputEventContext(255, a2, a3, a4);
  type metadata accessor for PassthroughSubject();
  return PassthroughSubject.__allocating_init()();
}

uint64_t sub_10002A9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  return PassthroughSubject.__allocating_init()();
}

char *sub_10002AA3C(int a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v99[0] = a4;
  v96 = a2;
  v10 = *v6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v93 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v98 = &v82 - v16;
  v17 = __chkstk_darwin(v15);
  v91 = &v82 - v18;
  v19 = __chkstk_darwin(v17);
  v92 = &v82 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v82 - v22;
  __chkstk_darwin(v21);
  v25 = &v82 - v24;

  v26 = *(*v7 + 104);
  v27 = sub_100035D04(&unk_100339810, &qword_1002702E8);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v95 = *(*v7 + 120);
  v7[v95] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v97 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v103 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v12 + 32))(&v7[v30], v25, v11);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_43;
  }

  v32 = *(v12 + 16);
  v87 = v12 + 16;
  v88 = v32;
  v32(v23, &v7[v30], v11);
  v84 = v31;
  v85 = v31;

  v33 = Logger.logObject.getter();
  v34 = v12;
  v35 = static os_log_type_t.default.getter();

  v83 = v35;
  v36 = os_log_type_enabled(v33, v35);
  v90 = v34;
  v86 = a1;
  v89 = v30;
  v94 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v101 = v38;
    *v37 = 136315138;
    v39 = v96;
    *&v103 = v96;
    *(&v103 + 1) = a3;
    v82 = v99[0] & 1;
    LOBYTE(v104) = v99[0] & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v40 = String.init<A>(describing:)();
    v42 = sub_100017494(v40, v41, &v101);
    v43 = v90;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v83, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000903C(v38);

    v44 = v82;

    v45 = *(v43 + 8);
    v45(v23, v94);
  }

  else
  {

    v45 = *(v34 + 8);
    v45(v23, v11);
    v44 = v99[0] & 1;
    v39 = v96;
  }

  v46 = v97;
  *v97 = v39;
  *(v46 + 1) = a3;

  v7[v95] = v44;
  v47 = *&v7[v28];
  *&v7[v28] = v84;
  v48 = v85;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v51 = v45;
  v103 = v101;
  v104 = v102;

  if ((v99[0] & 1) == 0)
  {
    sub_100009848(&v103, &v101, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v60 = v100[0];
    }

    else
    {
      v60 = 2;
    }

    goto LABEL_20;
  }

  v52 = sub_10003667C(&type metadata for Bool, &type metadata for Bool, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (!v52)
  {
    v57 = v92;
    v61 = v94;
    v88(v92, &v7[v89], v94);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v57;
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v62, v63, v66, v65, 2u);

      v46 = v97;
      v51(v64, v61);
      v60 = 2;
      goto LABEL_32;
    }

LABEL_27:

    v51(v57, v61);
    v60 = 2;
    goto LABEL_32;
  }

  v54 = v52;
  v55 = v53;
  sub_100009848(&v103, &v101, &unk_100339680, &qword_100278390);
  if (!*(&v102 + 1))
  {
    sub_1000097E8(&v101, &unk_100339680, &qword_100278390);
    v57 = v93;
LABEL_24:
    v61 = v94;
    v88(v57, &v7[v89], v94);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v57;
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "### Failed to cast as Data";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v56 = swift_dynamicCast();
  v57 = v93;
  if ((v56 & 1) == 0)
  {
    goto LABEL_24;
  }

  v96 = v48;
  v59 = v100[0];
  v58 = v100[1];
  __chkstk_darwin(v56);
  sub_100058D2C(v59, v58, v54, v55);
  sub_100010708(v59, v58);
  if (swift_dynamicCast())
  {
    v60 = v101;
  }

  else
  {
    v60 = 2;
  }

  v48 = v96;
  v46 = v97;
LABEL_20:
  v61 = v94;
LABEL_32:
  v68 = v98;
  v88(v98, &v7[v89], v61);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    *v99 = v51;
    v71 = 7104878;
    v72 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v72 = 136315394;
    v73 = *(v46 + 1);
    if (v73)
    {
      *&v101 = *v46;
      *(&v101 + 1) = v73;

      v74 = String.init<A>(describing:)();
      v76 = v75;
    }

    else
    {
      v76 = 0xE300000000000000;
      v74 = 7104878;
    }

    v77 = sub_100017494(v74, v76, v100);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    if (v60 == 2)
    {
      v78 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v101) = v60 & 1;
      v71 = String.init<A>(describing:)();
      v78 = v79;
    }

    v80 = sub_100017494(v71, v78, v100);

    *(v72 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v69, v70, "Initial %s: %s", v72, 0x16u);
    swift_arrayDestroy();

    (*v99)(v98, v94);
  }

  else
  {

    v51(v68, v61);
  }

  sub_1000097E8(&v103, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v86;
  if (v60 != 2)
  {
    LOBYTE(a1) = v60;
  }

LABEL_43:
  LOBYTE(v103) = a1 & 1;
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v103) = 2;
  sub_100035D04(&qword_100339820, &qword_1002702F8);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

char *sub_10002B8A8(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t a14)
{
  v17 = v14;
  LODWORD(v112) = a4;
  v118 = a13;
  v119 = a14;
  v116 = a1;
  v117 = a12;
  v114 = a2;
  v115 = a11;
  v19 = *v14;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v109 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v111 = &v99 - v25;
  v26 = __chkstk_darwin(v24);
  v108 = &v99 - v27;
  v28 = __chkstk_darwin(v26);
  v110 = (&v99 - v29);
  v30 = __chkstk_darwin(v28);
  v113 = &v99 - v31;
  __chkstk_darwin(v30);
  v33 = &v99 - v32;

  v34 = *(*v17 + 104);
  v35 = sub_100035D04(a7, a8);
  (*(*(v35 - 8) + 56))(&v17[v34], 1, 1, v35);
  v36 = *(*v17 + 112);
  *&v17[v36] = 0;
  v37 = *(*v17 + 120);
  v17[v37] = 2;
  v38 = &v17[*(*v17 + 128)];
  *v38 = 0;
  v38[1] = 0;
  *&v17[*(*v17 + 136)] = 0;
  *&v17[*(*v17 + 152)] = 0;
  *&v123 = v19;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v39 = v21;
  Logger.init(subsystem:category:)();
  v40 = *(*v17 + 144);
  (*(v39 + 32))(&v17[v40], v33, v20);
  if (a3)
  {
    v107 = v37;
    if (qword_100339088 != -1)
    {
      swift_once();
    }

    v41 = v119;
    v43 = v113;
    v42 = v114;
    if (!qword_10038B240)
    {

      goto LABEL_41;
    }

    v44 = qword_10038B240;
    v45 = *(v39 + 16);
    v103 = v40;
    v106 = v39 + 16;
    v105 = v45;
    v45(v113, &v17[v40], v20);
    v102 = v44;
    v101 = v44;

    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v104 = v39;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v121 = v99;
      *v50 = 136315138;
      *&v123 = v42;
      *(&v123 + 1) = a3;
      v100 = v112 & 1;
      LOBYTE(v124) = v112 & 1;

      sub_100035D04(&qword_100339690, &qword_1002701A8);
      v51 = String.init<A>(describing:)();
      v53 = v38;
      v54 = v48;
      v55 = sub_100017494(v51, v52, &v121);
      v42 = v114;

      *(v50 + 4) = v55;
      v41 = v119;
      v56 = v54;
      v38 = v53;
      _os_log_impl(&_mh_execute_header, v47, v56, "Configuring userDefaultsSync: %s", v50, 0xCu);
      sub_10000903C(v99);

      v57 = v104;

      v58 = v113;
      v113 = *(v57 + 8);
      (v113)(v58, v20);
    }

    else
    {

      v113 = *(v39 + 8);
      (v113)(v46, v20);
      v100 = v112 & 1;
      v41 = v119;
    }

    v114 = a9;
    *v38 = v42;
    v38[1] = a3;

    v17[v107] = v100;
    v60 = *&v17[v36];
    *&v17[v36] = v102;
    v61 = v101;

    v62 = String._bridgeToObjectiveC()();

    v63 = [v61 valueForKey:v62];

    if (v63)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v123 = v121;
    v124 = v122;

    v99 = a10;
    if (v112)
    {
      v64 = sub_100035D04(v114, a10);
      v65 = sub_10003667C(v64, v64, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
      v67 = v111;
      if (v65)
      {
        v68 = v65;
        v69 = v66;
        sub_100009848(&v123, &v121, &unk_100339680, &qword_100278390);
        if (*(&v122 + 1))
        {
          v70 = swift_dynamicCast();
          if (v70)
          {
            v112 = v61;
            v110 = v38;
            v72 = v120[0];
            v71 = v120[1];
            __chkstk_darwin(v70);
            sub_100058D2C(v72, v71, v68, v69);
            sub_100010708(v72, v71);
            if (swift_dynamicCast())
            {
              v73 = v121;
            }

            else
            {
              v73 = 0;
            }

            v67 = v111;
            v61 = v112;
            v38 = v110;
LABEL_22:
            v74 = v103;
            goto LABEL_30;
          }
        }

        else
        {
          sub_1000097E8(&v121, &unk_100339680, &qword_100278390);
        }

        v74 = v103;
        v78 = v109;
        v105(v109, &v17[v103], v20);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v112 = v61;
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "### Failed to cast as Data", v81, 2u);
          v61 = v112;
        }

        (v113)(v78, v20);
        v73 = 0;
        v41 = v119;
      }

      else
      {
        v74 = v103;
        v105(v110, &v17[v103], v20);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v112 = v61;
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "### Type not Codable", v77, 2u);
          v61 = v112;
        }

        (v113)(v110, v20);
        v73 = 0;
      }

LABEL_30:
      v105(v67, &v17[v74], v20);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v112 = v61;
        v110 = v20;
        v84 = 7104878;
        v85 = swift_slowAlloc();
        v120[0] = swift_slowAlloc();
        *v85 = 136315394;
        v86 = v38[1];
        v87 = v41;
        if (v86)
        {
          *&v121 = *v38;
          *(&v121 + 1) = v86;

          v88 = String.init<A>(describing:)();
          v90 = v89;
        }

        else
        {
          v90 = 0xE300000000000000;
          v88 = 7104878;
        }

        v93 = sub_100017494(v88, v90, v120);

        *(v85 + 4) = v93;
        *(v85 + 12) = 2080;
        if (v73)
        {
          *&v121 = v73;

          sub_100035D04(v114, v99);
          v84 = String.init<A>(describing:)();
          v95 = v94;
        }

        else
        {
          v95 = 0xE300000000000000;
        }

        v41 = v87;
        v96 = sub_100017494(v84, v95, v120);

        *(v85 + 14) = v96;
        _os_log_impl(&_mh_execute_header, v82, v83, "Initial %s: %s", v85, 0x16u);
        swift_arrayDestroy();

        v91 = v111;
        v92 = v110;
      }

      else
      {

        v91 = v67;
        v92 = v20;
      }

      (v113)(v91, v92);
      sub_1000097E8(&v123, &unk_100339680, &qword_100278390);
      if (v73)
      {

        v59 = v73;
        goto LABEL_42;
      }

LABEL_41:
      v59 = v116;
      goto LABEL_42;
    }

    sub_100009848(&v123, &v121, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(v114, a10);
    if (swift_dynamicCast())
    {
      v73 = v120[0];
    }

    else
    {
      v73 = 0;
    }

    v67 = v111;
    goto LABEL_22;
  }

  v59 = v116;
  v41 = v119;
LABEL_42:
  *&v123 = v59;
  sub_100035D04(v115, v117);
  swift_allocObject();
  *(v17 + 2) = CurrentValueSubject.init(_:)();
  *&v123 = 0;
  sub_100035D04(v118, v41);
  swift_allocObject();
  *(v17 + 3) = CurrentValueSubject.init(_:)();

  return v17;
}

char *sub_10002C620(void *a1, unsigned int a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  LODWORD(v102) = a5;
  v100 = a3;
  v103 = a2;
  v11 = *v7;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v96 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = &v85 - v17;
  v18 = __chkstk_darwin(v16);
  v94 = &v85 - v19;
  v20 = __chkstk_darwin(v18);
  v95 = &v85 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v85 - v23;
  __chkstk_darwin(v22);
  v26 = &v85 - v25;

  v27 = *(*v8 + 104);
  v28 = sub_100035D04(&qword_100339758, &qword_100270270);
  (*(*(v28 - 8) + 56))(&v8[v27], 1, 1, v28);
  v98 = *(*v8 + 112);
  *&v8[v98] = 0;
  v97 = *(*v8 + 120);
  v8[v97] = 2;
  v29 = &v8[*(*v8 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v99 = v29;
  *&v8[*(*v8 + 136)] = 0;
  *&v8[*(*v8 + 152)] = 0;
  *&v108 = v11;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v8 + 144);
  (*(v13 + 32))(&v8[v30], v26, v12);
  if (!a4)
  {
    goto LABEL_8;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

LABEL_8:
    v46 = 0;
    v47 = -2;
    v45 = v103;
    goto LABEL_44;
  }

  v90 = *(v13 + 16);
  v90(v24, &v8[v30], v12);
  v87 = v31;
  v86 = v31;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  LODWORD(v92) = v33;
  v34 = os_log_type_enabled(v32, v33);
  v93 = v13;
  v88 = a1;
  v91 = v30;
  v89 = v13 + 16;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v106 = v85;
    *v35 = 136315138;
    *&v108 = v100;
    *(&v108 + 1) = a4;
    v36 = v102 & 1;
    LOBYTE(v109) = v102 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v37 = String.init<A>(describing:)();
    v39 = sub_100017494(v37, v38, &v106);
    v40 = v36;
    v41 = v100;

    *(v35 + 4) = v39;
    v42 = v12;
    v43 = v93;
    _os_log_impl(&_mh_execute_header, v32, v92, "Configuring userDefaultsSync: %s", v35, 0xCu);
    sub_10000903C(v85);
    v44 = v43;
    v12 = v42;

    v45 = v103;
    a1 = v88;

    v92 = *(v44 + 8);
    v92(v24, v12);
  }

  else
  {

    v92 = *(v13 + 8);
    v92(v24, v12);
    v40 = v102 & 1;
    v41 = v100;
    v45 = v103;
  }

  v48 = v99;
  *v99 = v41;
  *(v48 + 1) = a4;

  v49 = v98;
  v8[v97] = v40;
  v50 = *&v8[v49];
  *&v8[v49] = v87;
  v51 = v86;

  v52 = String._bridgeToObjectiveC()();

  v100 = v51;
  v53 = [v51 valueForKey:v52];

  if (v53)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  v108 = v106;
  v109 = v107;

  if ((v102 & 1) == 0)
  {
    sub_100009848(&v108, &v106, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&qword_100339770, &qword_100270288);
    v62 = swift_dynamicCast();
    if (v62)
    {
      v47 = v105;
    }

    else
    {
      v47 = -2;
    }

    if (v62)
    {
      v46 = v104;
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_31;
  }

  v54 = sub_100035D04(&qword_100339770, &qword_100270288);
  v55 = sub_10003667C(v54, v54, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (v55)
  {
    v57 = v55;
    v58 = v56;
    sub_100009848(&v108, &v106, &unk_100339680, &qword_100278390);
    if (*(&v107 + 1))
    {
      v59 = swift_dynamicCast();
      if (v59)
      {
        v61 = v104;
        v60 = v105;
        __chkstk_darwin(v59);
        sub_100058D2C(v61, v60, v57, v58);
        sub_100010708(v61, v60);
        v84 = swift_dynamicCast();
        if (v84)
        {
          v47 = BYTE8(v106);
        }

        else
        {
          v47 = -2;
        }

        if (v84)
        {
          v46 = v106;
        }

        else
        {
          v46 = 0;
        }

        a1 = v88;
        v70 = v101;
        v48 = v99;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000097E8(&v106, &unk_100339680, &qword_100278390);
    }

    v63 = v96;
    v90(v96, &v8[v91], v12);
    v64 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v64, v68, "### Failed to cast as Data", v69, 2u);

      v67 = v96;
      goto LABEL_30;
    }

LABEL_29:

    v67 = v63;
    goto LABEL_30;
  }

  v63 = v95;
  v90(v95, &v8[v91], v12);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v64, v65))
  {
    goto LABEL_29;
  }

  v66 = swift_slowAlloc();
  *v66 = 0;
  _os_log_impl(&_mh_execute_header, v64, v65, "### Type not Codable", v66, 2u);

  v67 = v95;
LABEL_30:
  v92(v67, v12);
  v46 = 0;
  v47 = -2;
LABEL_31:
  v70 = v101;
LABEL_32:
  v90(v70, &v8[v91], v12);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v102 = v12;
    v73 = 7104878;
    v74 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v74 = 136315394;
    v75 = *(v48 + 1);
    if (v75)
    {
      *&v106 = *v48;
      *(&v106 + 1) = v75;

      v76 = String.init<A>(describing:)();
      v78 = v77;
    }

    else
    {
      v78 = 0xE300000000000000;
      v76 = 7104878;
    }

    v79 = sub_100017494(v76, v78, &v104);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2080;
    if (v47 == 254)
    {
      v80 = 0xE300000000000000;
    }

    else
    {
      *&v106 = v46;
      BYTE8(v106) = v47;
      sub_10003672C(v46, v47);
      sub_100035D04(&qword_100339770, &qword_100270288);
      v73 = String.init<A>(describing:)();
      v80 = v81;
    }

    v82 = sub_100017494(v73, v80, &v104);

    *(v74 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "Initial %s: %s", v74, 0x16u);
    swift_arrayDestroy();

    v92(v101, v102);
    sub_1000097E8(&v108, &unk_100339680, &qword_100278390);
    v45 = v103;
    a1 = v88;
  }

  else
  {

    v92(v70, v12);
    sub_1000097E8(&v108, &unk_100339680, &qword_100278390);
  }

  if (v47 == 254)
  {
    v47 = -2;
  }

  else
  {
    sub_10003672C(v46, v47);
    sub_100036718(a1, v45);
    a1 = v46;
    v45 = v47;
  }

LABEL_44:
  *&v108 = a1;
  BYTE8(v108) = v45;
  sub_100035D04(&qword_100339760, &qword_100270278);
  swift_allocObject();
  *(v8 + 2) = CurrentValueSubject.init(_:)();
  *&v108 = 0;
  BYTE8(v108) = -2;
  sub_100035D04(&qword_100339768, &qword_100270280);
  swift_allocObject();
  *(v8 + 3) = CurrentValueSubject.init(_:)();
  sub_100036704(v46, v47);
  return v8;
}