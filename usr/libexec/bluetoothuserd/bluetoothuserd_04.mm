void sub_10005F994()
{
  v1 = v0;
  sub_10000A45C(&qword_1000943E8, &qword_100074FC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_10000CB30(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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
}

uint64_t sub_10005FB68()
{
  v1 = (*((swift_isaMask & **(v0[17] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2._countAndFlagsBits = (*(*v1 + 392))();
    String.append(_:)(v2);

    sub_10000A45C(&unk_100093A50, &unk_100073030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100072BE0;
    v0[15] = 1920226159;
    v0[16] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 10;
    *(inited + 80) = 0xE100000000000000;
    v4 = sub_100017EE0(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_10005FD70();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

unint64_t sub_10005FD70()
{
  result = qword_100094148;
  if (!qword_100094148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094148);
  }

  return result;
}

unint64_t sub_10005FDC4()
{
  result = qword_100094170;
  if (!qword_100094170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094170);
  }

  return result;
}

uint64_t sub_10005FE18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10005FE50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = [objc_allocWithZone(CNContactStore) init];
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100072BE0;
  *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v10 + 40) = v11;
  v38 = v10;
  sub_10000A45C(&qword_100094180, &qword_100074290);
  sub_10000A45C(&qword_1000941E8, &qword_100074AD0);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_5;
  }

  sub_10000A45C(&unk_1000941F0, &unk_100074AD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38 = 0;
  v13 = [v9 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v38];

  if (v13)
  {
    v14 = v38;
    v15 = [v13 givenName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

LABEL_5:
    v19 = sub_1000393CC();
    (*(v3 + 16))(v6, v19, v2);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v2;
      v24 = v9;
      v25 = a1;
      v26 = v23;
      v38 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000034B8(v16, v18, &v38);
      _os_log_impl(&_mh_execute_header, v20, v21, "Users first name returned from Bluetoothuserd: (%s)", v22, 0xCu);
      sub_1000036EC(v26);
      a1 = v25;
      v9 = v24;

      (*(v3 + 8))(v6, v37);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v27 = String._bridgeToObjectiveC()();
    (*(a1 + 16))(a1, v27, 0);

    v9 = v27;
    goto LABEL_9;
  }

  v28 = v38;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v29 = sub_1000393CC();
  (*(v3 + 16))(v8, v29, v2);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error trying to access contact store for users first name %@", v32, 0xCu);
    sub_100006CAC(v33, &qword_100093F70, &qword_1000730D0);
  }

  (*(v3 + 8))(v8, v2);
  swift_errorRetain();
  v35 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v35);

LABEL_9:
}

uint64_t sub_100060388(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 72) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  return _swift_task_switch(sub_1000603B0, 0, 0);
}

uint64_t sub_1000603B0()
{
  v1 = *(v0 + 72);
  v2 = v1 != 8;
  v3 = v1 == 8;
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  sub_100003690(*(v0 + 64), v0 + 16);
  sub_1000173C8((2 * v2), v5, v4, v0 + 16);
  sub_100006CAC(v0 + 16, &qword_100092CB8, &qword_100072C40);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1000173C8((2 * v3), v5, v4, v0 + 16);
  sub_100006CAC(v0 + 16, &qword_100092CB8, &qword_100072C40);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_10006049C()
{
  result = qword_100094200;
  if (!qword_100094200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094200);
  }

  return result;
}

void sub_100060524()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(v1);
  }
}

unint64_t sub_1000605B8()
{
  result = qword_100094240;
  if (!qword_100094240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094240);
  }

  return result;
}

uint64_t sub_100060750()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005CC98(v2, v3, v4);
}

uint64_t sub_100060804()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005EAFC(v2, v3, v4);
}

uint64_t sub_1000608C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000615D8;

  return sub_10005EBE4(a1, v4, v5, v6);
}

uint64_t sub_100060990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000615D8;

  return sub_10005EFC8(a1, v4);
}

uint64_t sub_100060A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C038;

  return sub_10005EFC8(a1, v4);
}

uint64_t sub_100060B00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000615D8;

  return sub_10005C2D0(v2, v3, v4, v6, v5);
}

uint64_t sub_100060BC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C038;

  return sub_10005BDC0(v2, v3, v5, v4);
}

uint64_t sub_100060C8C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005B088(v2, v4, v3);
}

uint64_t sub_100060D40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_10005A97C(v2, v3);
}

uint64_t sub_100060DEC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100060E2C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005A2F0(v2, v4, v3);
}

uint64_t sub_100060EE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_100059C1C(v2, v3);
}

uint64_t sub_100060F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100059558(v2, v3, v4);
}

uint64_t sub_100061040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100058594(v2, v3, v4);
}

uint64_t sub_1000610F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100057BA4(v2, v3, v4);
}

uint64_t sub_1000611A8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000611F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_10005733C(v2, v3);
}

uint64_t sub_10006129C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000612E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100056DC8(v2, v3, v4);
}

uint64_t sub_100061398()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100061434()
{
  result = qword_1000943B0;
  if (!qword_1000943B0)
  {
    sub_100004890(255, &qword_1000943A8, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000943B0);
  }

  return result;
}

unint64_t sub_10006149C()
{
  result = qword_1000943C8;
  if (!qword_1000943C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000943C8);
  }

  return result;
}

uint64_t sub_1000614F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    sub_100061434();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100061558(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100061610()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v4 = [v3 Wireless];
    swift_unknownObjectRelease();
    v5 = [v4 BluetoothNearbyDevice];
    swift_unknownObjectRelease();
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void (*sub_1000616E8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100061610();
  return sub_100061730;
}

void sub_100061730(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id sub_100061740()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[4];
  }

  else
  {
    v3 = (*(*v0 + 120))();
    v4 = [v3 source];

    v5 = v0[4];
    v0[4] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void (*sub_1000617E4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100061740();
  return sub_10006182C;
}

void sub_10006182C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

id sub_10006183C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v4 = [v3 Wireless];
    swift_unknownObjectRelease();
    v5 = [v4 BluetoothUseCase];
    swift_unknownObjectRelease();
    v6 = *(v0 + 40);
    *(v0 + 40) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void (*sub_100061914(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10006183C();
  return sub_10006195C;
}

void sub_10006195C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

void (*sub_10006196C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100002764();
  return sub_1000138D4;
}

uint64_t sub_1000619B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v14 = Bool._bridgeToObjectiveC()().super.super.isa;
    LODWORD(v35) = a6;
    v15 = v8;
    v16 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v17 = objc_allocWithZone(BMDeviceBluetoothNearbyDevice);
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 initWithInitiator:isa localIdentifier:v18 starting:v14 useCase:v16];

    v20 = (*(*v12 + 144))();
    [v20 sendEvent:v19];

    v21 = sub_1000021DC();
    (*(v15 + 16))(v10, v21, v7);
    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v15;
      v28 = v27;
      v36 = v27;
      *v25 = 136315394;
      sub_100002834(v35);
      v29 = String.init(cString:)();
      v31 = sub_1000034B8(v29, v30, &v36);
      v35 = v7;
      v32 = v31;

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v26 = v22;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Send nearby device event %s for %@", v25, 0x16u);
      sub_100003738(v26);

      sub_1000036EC(v28);

      return (*(v34 + 8))(v10, v35);
    }

    else
    {

      return (*(v15 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_100061D18()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100061D70()
{
  v0 = swift_allocObject();
  sub_100061DA8();
  return v0;
}

uint64_t sub_100061DA8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_10000A8F8();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return v0;
}

void type metadata accessor for CBUseCase()
{
  if (!qword_100094660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100094660);
    }
  }
}

Swift::Int sub_10006207C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100062100(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10006215C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10008C418, *a1);

  *a2 = v3 != 0;
  return result;
}

void *sub_1000621E8()
{
  type metadata accessor for SystemNotificationManager();
  v0 = swift_allocObject();
  result = sub_100062344();
  qword_100098B48 = v0;
  return result;
}

uint64_t *sub_100062224()
{
  if (qword_100098630 != -1)
  {
    swift_once();
  }

  return &qword_100098B48;
}

double sub_100062274()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1000622AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *sub_100062344()
{
  v1 = v0;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A8F8();
  v13[1] = "dedPHY";
  v13[2] = v7;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[2] = v8;
  v1[3] = _swiftEmptyArrayStorage;
  v1[4] = _swiftEmptyDictionarySingleton;
  v19 = sub_100065900;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10000AC24;
  v18 = &unk_10008C620;
  v9 = _Block_copy(&aBlock);

  xpc_set_event_stream_handler("com.apple.alarm", v8, v9);
  _Block_release(v9);
  v10 = v1[2];
  v19 = sub_100065908;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10000AC24;
  v18 = &unk_10008C648;
  v11 = _Block_copy(&aBlock);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, v11);
  _Block_release(v11);
  return v1;
}

uint64_t sub_1000626EC(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v5 = *(*v2 + 168);

  return v5(a1, a2);
}

xpc_object_t sub_10006275C(uint64_t a1, unint64_t a2, double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000392CC();
  (*(v7 + 16))(v9, v10, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1000034B8(a1, a2, &v18);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v11, v12, "Scheduling alarm: %s for %f", v13, 0x16u);
    sub_1000036EC(v14);
  }

  (*(v7 + 8))(v9, v6);
  result = xpc_dictionary_create(0, 0, 0);
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = 1000000000 * a3;
  if ((a3 * 1000000000) >> 64 == v16 >> 63)
  {
    xpc_dictionary_set_date(result, "Date", v16);
    String.utf8CString.getter();
    swift_unknownObjectRetain();
    xpc_set_event();
    swift_unknownObjectRelease_n();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1000629FC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000392CC();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000034B8(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "Canceling alarm: %s", v11, 0xCu);
    sub_1000036EC(v12);
  }

  (*(v5 + 8))(v7, v4);
  String.utf8CString.getter();
  xpc_set_event();
}

void sub_100062BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012664(a3, v13);
  v14 = (*(v8 + 48))(v13, 2, v7);
  if (v14)
  {
    if (v14 == 1)
    {
      out_token = -1;
      v15 = v3[2];
      v16 = swift_allocObject();
      v16[2] = v3;
      v16[3] = a1;
      v16[4] = a2;
      v32 = sub_100064D24;
      v33 = v16;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_10000C72C;
      v31 = &unk_10008C4F0;
      v17 = _Block_copy(&aBlock);

      v18 = String.utf8CString.getter();
      notify_register_dispatch((v18 + 32), &out_token, v15, v17);

      _Block_release(v17);
      if (!out_token)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v3[4];
        v3[4] = 0x8000000000000000;
        sub_100064FD0(0, a1, a2, isUniquelyReferenced_nonNull_native);
        v3[4] = v26;
        swift_endAccess();
      }
    }

    else
    {
      v20 = [objc_opt_self() defaultCenter];
      v21 = String._bridgeToObjectiveC()();
      v22 = swift_allocObject();
      v22[2] = v3;
      v22[3] = a1;
      v22[4] = a2;
      v32 = sub_100064CD8;
      v33 = v22;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_1000636EC;
      v31 = &unk_10008C4A0;
      v23 = _Block_copy(&aBlock);

      v24 = [v20 addObserverForName:v21 object:v3 queue:0 usingBlock:v23];
      _Block_release(v23);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    (*(*v3 + 160))(a1, a2, v10);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100063014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24[-1] - v12;
  v14 = (*(*a1 + 104))(v11);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v10 + 80);
    v23 = v14;
    v17 = v14 + ((v16 + 32) & ~v16);
    v18 = *(v10 + 72);
    do
    {
      sub_100065160(v17, v13);
      sub_10000FA7C(v13, v24);
      sub_1000654B0(v13);
      v19 = v25;
      v20 = v26;
      sub_1000078C8(v24, v25);
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 56))(v8, 1, 2, v21);
      (*(v20 + 8))(v8, a2, a3, v19, v20);
      sub_1000126C8(v8);
      sub_1000036EC(v24);
      v17 += v18;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_100063254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v46 = a1;
  v6 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v45 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000392CC();
  v47 = v17;
  v48 = v16;
  (*(v17 + 16))(v19, v20, v16);
  v21 = *(v13 + 16);
  v22 = v46;
  v46 = v12;
  v21(v15, v22, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v25;
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v25 = 136315138;
    v43 = v24;
    v26 = Notification.name.getter();
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    (*(v13 + 8))(v15, v46);
    v29 = sub_1000034B8(v41, v28, v50);

    v30 = v42;
    *(v42 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v23, v43, "Local notification received: %s", v30, 0xCu);
    sub_1000036EC(v44);
  }

  else
  {

    (*(v13 + 8))(v15, v46);
  }

  v31 = (*(v47 + 8))(v19, v48);
  v32 = (*(*v49 + 104))(v31);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(v45 + 80);
    v49 = v32;
    v35 = v32 + ((v34 + 32) & ~v34);
    v36 = *(v45 + 72);
    do
    {
      sub_100065160(v35, v11);
      sub_10000FA7C(v11, v50);
      sub_1000654B0(v11);
      v37 = v51;
      v38 = v52;
      sub_1000078C8(v50, v51);
      v39 = type metadata accessor for Date();
      (*(*(v39 - 8) + 56))(v8, 2, 2, v39);
      (*(v38 + 8))(v8, a3, a4, v37, v38);
      sub_1000126C8(v8);
      sub_1000036EC(v50);
      v35 += v36;
      --v33;
    }

    while (v33);
  }
}

uint64_t sub_1000636EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1000637E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(*v2 + 176))();
  swift_beginAccess();
  v6 = v2[4];
  if (*(v6 + 16))
  {

    v7 = sub_1000327AC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 4 * v7);

      notify_cancel(v9);
    }

    else
    {
    }
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v3];
}

const char *sub_1000638D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v16 = String.init(cString:)();
    v18 = v17;
    v19 = sub_1000392CC();
    v20 = *(v12 + 16);
    v38 = v11;
    v20(v14, v19, v11);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v37 = a2;
      v26 = v25;
      v39[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000034B8(v16, v18, v39);
      _os_log_impl(&_mh_execute_header, v21, v22, "On xpc event stream, com.apple.notifyd.matching, notification %s", v24, 0xCu);
      sub_1000036EC(v26);
      a2 = v37;

      v8 = v36;
    }

    v27 = (*(v12 + 8))(v14, v38);
    v28 = (*(*a2 + 104))(v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v8 + 80);
      v38 = v28;
      v31 = v28 + ((v30 + 32) & ~v30);
      v32 = *(v8 + 72);
      do
      {
        sub_100065160(v31, v10);
        sub_10000FA7C(v10, v39);
        sub_1000654B0(v10);
        v33 = v40;
        v34 = v41;
        sub_1000078C8(v39, v40);
        v35 = type metadata accessor for Date();
        (*(*(v35 - 8) + 56))(v6, 1, 2, v35);
        (*(v34 + 8))(v6, v16, v18, v33, v34);
        sub_1000126C8(v6);
        sub_1000036EC(v39);
        v31 += v32;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

const char *sub_100063CAC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v16 = String.init(cString:)();
    v18 = v17;
    v19 = sub_1000392CC();
    v20 = *(v12 + 16);
    v38 = v11;
    v20(v14, v19, v11);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v37 = a2;
      v26 = v25;
      v39[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000034B8(v16, v18, v39);
      _os_log_impl(&_mh_execute_header, v21, v22, "On xpc event stream, com.apple.alarm, notification %s", v24, 0xCu);
      sub_1000036EC(v26);
      a2 = v37;

      v8 = v36;
    }

    v27 = (*(v12 + 8))(v14, v38);
    v28 = (*(*a2 + 104))(v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v8 + 80);
      v38 = v28;
      v31 = v28 + ((v30 + 32) & ~v30);
      v32 = *(v8 + 72);
      do
      {
        sub_100065160(v31, v10);
        sub_10000FA7C(v10, v39);
        sub_1000654B0(v10);
        v33 = v40;
        v34 = v41;
        sub_1000078C8(v39, v40);
        static Date.now.getter();
        v35 = type metadata accessor for Date();
        (*(*(v35 - 8) + 56))(v6, 0, 2, v35);
        (*(v34 + 8))(v6, v16, v18, v33, v34);
        sub_1000126C8(v6);
        sub_1000036EC(v39);
        v31 += v32;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

uint64_t sub_100064090()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100064150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8 - 8];
  sub_10000FA7C(a1, v21);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_10000A45C(&qword_100094868, &qword_100075210);
  Subscription.init(subscriber:unsubscribeBlock:)(v21, sub_100065890, v10, v11, a3);
  sub_100065160(a3, v9);
  v12 = (*(*a2 + 120))(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_100064A9C(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_100064A9C((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  sub_10001219C(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
  return v12(v21, 0);
}

uint64_t sub_100064360(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = v18 - v12;
  v18[1] = *(v1 + 16);
  sub_100065160(a1, v18 - v12);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  sub_10001219C(v13, v15 + v14);
  aBlock[4] = sub_1000651D0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C540;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v19);
}

void *sub_1000646D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_100065160(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_1000654B0(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10001219C(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100065680(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100065680((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10001219C(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1000654B0(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

void (*sub_100064990(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 120))();
  return sub_10000E7CC;
}

void *sub_100064A9C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100094858, &qword_100075208);
  v10 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for SystemNotificationSource(uint64_t a1)
{
  result = qword_100098840;
  if (!qword_100098840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100064CE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_100064D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A45C(&qword_100094870, &unk_100075218);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100064FD0(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100064D30(v16, a4 & 1);
      v11 = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100065518();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_100065160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000651D0()
{
  v1 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 104))();
  v7[2] = v3;
  v5 = sub_1000646D4(sub_10006540C, v7, v4);
  return (*(*v2 + 112))(v5);
}

unint64_t sub_1000652C0()
{
  result = qword_100094668;
  if (!qword_100094668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094668);
  }

  return result;
}

uint64_t sub_100065380(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

BOOL sub_10006540C(uint64_t a1)
{
  sub_10000A45C(&qword_100092E80, qword_100072CF0);
  sub_10000FA34(&qword_100094860, &qword_100092E80, qword_100072CF0, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1000654B0(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100065518()
{
  v1 = v0;
  sub_10000A45C(&qword_100094870, &unk_100075218);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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
}

void *sub_100065680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000656A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000656A0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100094858, &qword_100075208);
  v10 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100065890(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100064360(a1);
  }

  return result;
}

uint64_t sub_100065940()
{
  qword_100098858 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t *Transaction.$current.unsafeMutableAddressor()
{
  if (qword_100098860 != -1)
  {
    swift_once();
  }

  return &static Transaction.$current;
}

uint64_t sub_100065A4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000A45C(a2, a3);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t *Transaction.$currentNSXPCConnection.unsafeMutableAddressor()
{
  if (qword_100098868 != -1)
  {
    swift_once();
  }

  return &static Transaction.$currentNSXPCConnection;
}

double sub_100065B14(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100065B98(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v4;
}

uint64_t static Transaction.asyncTask(name:block:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  sub_10006676C(a1, a2, a3);
  v14 = objc_opt_self();

  v15 = [v14 currentConnection];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = a4;
  v17[7] = a5;
  v18 = v15;

  sub_100066404(0, 0, v12, &unk_100075230, v17);
}

uint64_t sub_100065D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return _swift_task_switch(sub_100065DC4, 0, 0);
}

uint64_t sub_100065DC4()
{
  if (qword_100098860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100065F34;
  v5 = *(v0 + 24);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v5, v0 + 16, &unk_100075338, v2, 0, 0, 0xD000000000000020, 0x800000010007C3D0);
}

uint64_t sub_100065F34()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_100066074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100066098, 0, 0);
}

uint64_t sub_100066098()
{
  if (qword_100098868[0] != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000661E8;
  v3 = *(v0 + 24);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v3, v0 + 16, &unk_100075348, v1, 0, 0, 0xD000000000000020, 0x800000010007C3D0);
}

uint64_t sub_1000661E8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10006631C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10005F0C0;

  return v5();
}

uint64_t sub_100066404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100067B74(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100067BE4(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100067BE4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100067BE4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static Transaction.named<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  sub_10006676C(a1, a2, a3);
  a4(v8);
}

os_activity_scope_state_s *sub_10006676C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v50 - v14;
  v3[3].opaque[0] = 0;
  v3[2].opaque[0] = 0;
  v3[3].opaque[1] = 0;
  v53 = v7;
  v54 = v6;
  v55 = v9;
  v52 = a3;
  v51 = v12;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      while (1)
      {
        *description = static String._fromUTF8Repairing(_:)();
        v58 = v19;

        v20._countAndFlagsBits = 46;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);

        v21 = *description;
        v22 = v58;
        UUID.init()();
        v23 = UUID.uuidString.getter();
        v25 = v24;
        v26 = *(v11 + 8);
        v11 += 8;
        v26(v15, v51);
        *description = v21;
        v58 = v22;

        v27._countAndFlagsBits = v23;
        v27._object = v25;
        String.append(_:)(v27);

        v28 = v58;
        v3[1].opaque[0] = *description;
        v3[1].opaque[1] = v28;
        String.utf8CString.getter();
        v6 = os_transaction_create();

        v3[2].opaque[0] = v6;
        swift_unknownObjectRelease();
        v14 = v52;
        if (v52)
        {
          v14 = a1 >> 32;
          a3 = v53;
          v15 = v54;
          if (!(a1 >> 32))
          {
            v16 = a1 & 0xFFFFF800;
            v17 = 55296;
            if (v16 == 55296)
            {
              goto LABEL_42;
            }

            v16 = a1 >> 16;
            if (a1 >> 16 > 0x10)
            {
              __break(1u);
            }

            else if (a1 <= 0x7F)
            {
              v31 = a1 + 1;
              v6 = v55;
              goto LABEL_20;
            }

            v17 = (a1 & 0x3F) << 8;
            v6 = v55;
            if (a1 < 0x800)
            {
              v31 = (a1 >> 6) + v17 + 33217;
              goto LABEL_20;
            }

            goto LABEL_43;
          }
        }

        else
        {
          a3 = v53;
          v15 = v54;
          v6 = v55;
          if (a1)
          {
            if (qword_100098850 != -1)
            {
              swift_once();
            }

            v29 = qword_100098858;
            v30 = a1;
            goto LABEL_23;
          }

LABEL_30:
          __break(1u);
        }

        __break(1u);
LABEL_32:
        v44 = (a1 & 0x3F) << 8;
        v45 = (a1 >> 6) + v44 + 33217;
        v46 = (v44 | (a1 >> 6) & 0x3F) << 8;
        v47 = (a1 >> 18) + ((v46 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v48 = (a1 >> 12) + v46 + 8487393;
        if (v14)
        {
          v18 = v47;
        }

        else
        {
          v18 = v48;
        }

        if (a1 < 0x800)
        {
          v18 = v45;
        }

LABEL_9:
        *description = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v14 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = a1 & 0xFFFFF800;
  v17 = 55296;
  if (v16 != 55296)
  {
    v14 = a1 >> 16;
    if (a1 >> 16 <= 0x10)
    {
      if (a1 > 0x7F)
      {
        goto LABEL_32;
      }

      v18 = a1 + 1;
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  v49 = (v17 | (a1 >> 6) & 0x3F) << 8;
  if (v16)
  {
    v31 = (a1 >> 18) + ((v49 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
  }

  else
  {
    v31 = (a1 >> 12) + v49 + 8487393;
  }

LABEL_20:
  *description = (v31 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v31) & 0x18)));
  if (qword_100098850 != -1)
  {
    swift_once();
  }

  v29 = qword_100098858;
  v30 = description;
LABEL_23:
  v3[2].opaque[1] = _os_activity_create(&_mh_execute_header, v30, v29, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v32 = swift_unknownObjectRetain();
  os_activity_scope_enter(v32, v3 + 3);
  swift_endAccess();
  swift_unknownObjectRelease();
  v33 = sub_100039318();
  (*(a3 + 16))(v6, v33, v15);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 136315138;
    v56 = v37;
    *description = 0x3A4E58545BLL;
    v58 = 0xE500000000000000;
    v38 = v3[1].opaque[0];
    v39 = v3[1].opaque[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 93;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);

    v42 = sub_1000034B8(*description, v58, &v56);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Opened %s", v36, 0xCu);
    sub_1000036EC(v37);

    (*(a3 + 8))(v55, v15);
  }

  else
  {

    (*(a3 + 8))(v6, v15);
  }

  return v3;
}

uint64_t sub_100066D94(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005C038;

  return sub_100065D9C(a1, v8, v9, v4, v5, v7, v6);
}

void *Transaction.deinit()
{
  sub_100066E88();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100066E88()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v6 = sub_100039318();
    (*(v2 + 16))(v5, v6, v1);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v13 = v10;
      v14 = 0x3A4E58545BLL;
      v15 = 0xE500000000000000;
      String.append(_:)(*(v0 + 16));
      v11._countAndFlagsBits = 93;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = sub_1000034B8(v14, v15, &v13);

      *(v9 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Closed %s", v9, 0xCu);
      sub_1000036EC(v10);
    }

    (*(v2 + 8))(v5, v1);
    swift_beginAccess();
    os_activity_scope_leave((v0 + 48));
    swift_endAccess();
    *(v0 + 32) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Transaction.__deallocating_deinit()
{
  sub_100066E88();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_10006719C, 0, 0);
}

uint64_t sub_10006719C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 88);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  sub_10006676C(v3, v2, v4);
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1000672D8;
  v7 = *(v0 + 16);

  return v9(v7, v5);
}

uint64_t sub_1000672D8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100067450;
  }

  else
  {
    v2 = sub_1000673EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000673EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_1000674E4, 0, 0);
}

uint64_t sub_1000674E4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000675BC;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v7, v5, v6, v8, &unk_100075250, v2);
}

uint64_t sub_1000675BC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000676F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000676F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006775C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10005C038;

  return v7(a1);
}

uint64_t sub_100067854(uint64_t a1)
{
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005C038;

  return sub_10006775C(a1, v5, v4);
}

uint64_t Transaction.description.getter()
{
  String.append(_:)(v0[1]);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x3A4E58545BLL;
}

uint64_t sub_100067958()
{
  String.append(_:)((*v0)[1]);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x3A4E58545BLL;
}

__n128 sub_1000679D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000679E4(uint64_t a1, int a2)
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

uint64_t sub_100067A04(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_activity_scope_state_s()
{
  if (!qword_1000949F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000949F0);
    }
  }
}

uint64_t sub_100067A7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100067E50;

  return v6(a1);
}

uint64_t sub_100067B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067BE4(uint64_t a1)
{
  v2 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100067C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000615D8;

  return sub_100067A7C(a1, v4);
}

uint64_t sub_100067D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000615D8;

  return sub_100066074(a1, v4, v5, v6);
}

uint64_t sub_100067DB8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000615D8;

  return sub_10006631C(v3, v2);
}

void sub_100067E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v7 = *(a1 + 48);
  v122 = *(a1 + 32);
  v123 = v7;
  v124 = *(a1 + 64);
  v8 = *(a1 + 16);
  *&v120[80] = *a1;
  v121 = v8;
  v9 = *a2;
  object = *(a2 + 8);
  v11 = *(a2 + 24);
  baseNumber = *(a2 + 16);
  countAndFlagsBits = v9;
  v12 = *(a2 + 40);
  v88 = *(a2 + 32);
  v89 = v11;
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  buildNumber = *(a2 + 56);
  value = v12;
  v84 = *(a2 + 72);
  v85 = v14;
  v15 = type metadata accessor for Logger();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = __chkstk_darwin(v15);
  v80 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v75 = &v72 - v19;
  v82 = *(a3 - 8);
  __chkstk_darwin(v18);
  v94 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v76 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v93 = &v72 - v26;
  __chkstk_darwin(v25);
  v95 = &v72 - v27;
  v28 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v72 - v32;
  v79 = objc_opt_self();
  v92 = [v79 standardUserDefaults];
  if (*(a1 + 8))
  {
    if (object)
    {
LABEL_5:
      sub_100006C44(a1, v120, &qword_100094A18, &qword_100075360);
      *&v120[32] = v122;
      *&v120[48] = v123;
      *&v120[64] = v124;
      *v120 = *&v120[80];
      *&v120[16] = v121;
      v34 = 1;
      v35 = v13;
      goto LABEL_6;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (object)
  {
    goto LABEL_5;
  }

  Transaction.capture()();
  v64._countAndFlagsBits = SystemInfo.buildVersion.getter();
  SystemVersionNumber.init(rawValue:)(&v112, v64);
  object = v112.value.rawValue._object;
  if (v112.value.rawValue._object)
  {
    v73 = a3;
    v74 = v33;
    baseNumber = v112.value.baseNumber;
    countAndFlagsBits = v112.value.rawValue._countAndFlagsBits;
    v88 = v112.value.baseLetter._object;
    v89 = v112.value.baseLetter._countAndFlagsBits;
    buildNumber = v112.value.buildNumber;
    value = v112.value.childType.value;
    v84 = v112.value.suffix.value._object;
    v85 = v112.value.suffix.value._countAndFlagsBits;
    is_nil = v112.value.childType.is_nil;
    v112.is_nil = v112.value.childType.is_nil;
    v65 = String._bridgeToObjectiveC()();
    v66 = [v92 stringForKey:v65];

    if (!v66)
    {
      a3 = v73;
      goto LABEL_13;
    }

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70._countAndFlagsBits = v67;
    v70._object = v69;
    SystemVersionNumber.init(rawValue:)(v120, v70);
    v34 = 0;
    v35 = v112.is_nil;
    a3 = v73;
    v33 = v74;
LABEL_6:
    *&v113 = countAndFlagsBits;
    *(&v113 + 1) = object;
    *&v114 = baseNumber;
    *(&v114 + 1) = v89;
    *&v115 = v88;
    *(&v115 + 1) = value;
    is_nil = v35;
    LOBYTE(v116) = v35;
    *(&v116 + 1) = buildNumber;
    *&v117 = v85;
    *(&v117 + 1) = v84;
    v119[0] = v113;
    v119[1] = v114;
    v119[2] = v115;
    v119[3] = v116;
    v119[4] = v117;
    if (*&v120[8])
    {
      v118[0] = *v120;
      v118[1] = *&v120[16];
      v118[2] = *&v120[32];
      v118[3] = *&v120[48];
      v118[4] = *&v120[64];
      v104 = *&v120[32];
      v105 = *&v120[48];
      v106 = *&v120[64];
      v102 = *v120;
      v103 = *&v120[16];
      v99 = v115;
      v100 = v116;
      v101 = v117;
      v97 = v113;
      v98 = v114;
      sub_100006C44(a2, v96, &qword_100094A18, &qword_100075360);
      sub_10000A4A4(&v113, v96);
      sub_10000A27C();
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = v99;
      v110 = v100;
      v111 = v101;
      v107 = v97;
      v108 = v98;
      sub_10000A4DC(&v107);
      if ((v37 & 1) == 0)
      {
        (*(v81 + 16))(v118, v119, a3);
      }

      sub_100006CAC(v120, &qword_100094A18, &qword_100075360);
      if (v34)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100006C44(a2, v118, &qword_100094A18, &qword_100075360);
      if (v34)
      {
LABEL_10:
        sub_10000A4DC(&v113);
        goto LABEL_14;
      }
    }

    v74 = v33;
LABEL_13:
    *&v107 = countAndFlagsBits;
    *(&v107 + 1) = object;
    *&v108 = baseNumber;
    *(&v108 + 1) = v89;
    *&v109 = v88;
    *(&v109 + 1) = value;
    LOBYTE(v110) = is_nil;
    *(&v110 + 1) = buildNumber;
    *&v111 = v85;
    *(&v111 + 1) = v84;
    v113 = v107;
    v114 = v108;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    SystemVersionNumber.description.getter();
    sub_10000A4DC(&v107);
    v38 = String._bridgeToObjectiveC()();

    v39 = String._bridgeToObjectiveC()();
    [v92 setValue:v38 forKey:v39];

    v33 = v74;
LABEL_14:
    sub_1000689B4(v95);
    v40 = [v79 standardUserDefaults];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 stringForKey:v41];

    if (v42)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();
    }

    else
    {
      (*(v22 + 56))(v33, 1, 1, v21);
    }

    (*(v22 + 16))(v93, v95, v21);
    v43 = v82;
    (*(v82 + 16))(v94, v83, a3);
    sub_100006C44(v33, v31, &qword_100093938, &qword_1000739C8);
    if ((*(v22 + 48))(v31, 1, v21) == 1)
    {
      sub_100006CAC(v31, &qword_100093938, &qword_1000739C8);
      v44 = sub_100039094();
      v46 = v77;
      v45 = v78;
      (*(v77 + 16))(v80, v44, v78);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "No lastLaunchBootSessionUUID on record", v49, 2u);
        v43 = v82;
      }

      (*(v46 + 8))(v80, v45);
      v51 = v93;
      v50 = v94;
      sub_100068E48(v93, v94, a3, v81);

      (*(v43 + 8))(v50, a3);
      v52 = *(v22 + 8);
      v52(v51, v21);
    }

    else
    {
      v53 = v76;
      (*(v22 + 32))();
      sub_1000693D0();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*(v43 + 8))(v94, a3);
        v54 = *(v22 + 8);
        v54(v93, v21);
        v55 = sub_100039094();
        v56 = v77;
        v57 = v78;
        v58 = v75;
        (*(v77 + 16))(v75, v55, v78);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "This is *NOT* the first run since reboot", v61, 2u);

          (*(v56 + 8))(v75, v57);
        }

        else
        {

          (*(v56 + 8))(v58, v57);
        }

        v54(v76, v21);
        v54(v95, v21);
        goto LABEL_31;
      }

      v63 = v93;
      v62 = v94;
      sub_100068E48(v93, v94, a3, v81);

      v52 = *(v22 + 8);
      v52(v53, v21);
      (*(v43 + 8))(v62, a3);
      v52(v63, v21);
    }

    v52(v95, v21);
LABEL_31:
    sub_100006CAC(v33, &qword_100093938, &qword_1000739C8);
    return;
  }

  v71 = v92;
}

uint64_t sub_1000689B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 37;
  v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v12 + 16) = 37;
  *(v12 + 48) = 0u;
  *(v12 + 61) = 0;
  *(v12 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v12 + 32), &v30, 0, 0))
  {
    v12 = v3;
    v16 = errno.getter();
    if (!strerror(v16))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  static String.Encoding.ascii.getter();
  sub_10006905C(v12, v11);
  if (!v13)
  {
    while (1)
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      v18 = String.init(utf8String:)();
      v19 = v17;
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = sub_100039094();
      (*(v12 + 16))(v5, v21, v2);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        if (v19)
        {
          v24 = v18;
        }

        else
        {
          v24 = 0x6E776F6E6B6E55;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315394;
        v27 = sub_1000034B8(v24, v20, &v31);

        *(v25 + 4) = v27;
        *(v25 + 12) = 1024;
        *(v25 + 14) = errno.getter();
        _os_log_impl(&_mh_execute_header, v22, v23, "Error from sysctlbyname: %s(%d", v25, 0x12u);
        sub_1000036EC(v26);
      }

      else
      {
      }

      v28 = *(v12 + 8);
      v12 += 8;
      v28(v5, v2);
    }
  }

  v2 = v13;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v14 = *(v5 - 1);
  if ((*(v14 + 48))(v8, 1, v5) == 1)
  {
    sub_100006CAC(v8, &qword_100093938, &qword_1000739C8);
    goto LABEL_9;
  }

  return (*(v14 + 32))(a1, v8, v5);
}

uint64_t sub_100068E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100039094();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "This is the first run since reboot", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = [objc_opt_self() standardUserDefaults];
  UUID.uuidString.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();
  [v14 setObject:v15 forKey:v16];

  return (*(a4 + 24))(a3, a4);
}

uint64_t sub_10006905C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v8 = static String.Encoding.== infix(_:_:)();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v10 = static String.Encoding.== infix(_:_:)();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v11 = static String.Encoding.== infix(_:_:)();
      v9(v7, v4);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = sub_100069428(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  static String.Encoding.utf8.getter();
  v16 = static String.Encoding.== infix(_:_:)();
  v9(v7, v4);
  if (v16)
  {

LABEL_17:
    v9(a2, v4);
    return v15;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v17 = *(a1 + 16);
    if (v17)
    {
      v7 = 0;
      while (v7[a1 + 32])
      {
        if (v17 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v18 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v7 encoding:String.Encoding.rawValue.getter()];

    if (!v18)
    {
      v9(a2, v4);
      return 0;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v9(a2, v4);

  return v15;
}

uint64_t sub_100069340(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = _set_user_dir_suffix();

  if (!v2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000693D0()
{
  result = qword_100094A10;
  if (!qword_100094A10)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A10);
  }

  return result;
}

uint64_t sub_100069428(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000694B8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*sub_100069524(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000694B8();
  return sub_1000138D4;
}

uint64_t sub_10006956C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for KeyValueStoreManager();
    v1 = sub_1000143A4();
    (*(*v1 + 128))(*(v2 + 16));
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t (*sub_100069614(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10006956C();
  return sub_10006965C;
}

void sub_10006966C()
{
  if (*(v0 + 64) == 1)
  {
    Transaction.capture()();
    *(v0 + 64) = 0;
  }
}

uint64_t (*sub_10006969C(void *a1))(uint64_t result)
{
  *a1 = v1;
  sub_10006966C();
  return sub_1000696DC;
}

id sub_1000696E8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    [v3 setDispatchQueue:*(v0 + 16)];
    v13 = sub_10006DE88;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C888;
    v4 = _Block_copy(&v9);

    [v3 setFirstUnlockHandler:v4];
    _Block_release(v4);
    v13 = sub_10006DE00;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C8B0;
    v5 = _Block_copy(&v9);

    [v3 activateWithCompletion:v5];
    _Block_release(v5);
    v6 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void (*sub_1000698A4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000696E8();
  return sub_1000698EC;
}

void sub_1000698EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
}

id sub_1000698FC()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    [v3 setDispatchQueue:*(v0 + 16)];
    v13 = sub_10006DE84;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C838;
    v4 = _Block_copy(&v9);

    [v3 setPrimaryAppleIDChangedHandler:v4];
    _Block_release(v4);
    v13 = sub_10006DDFC;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C860;
    v5 = _Block_copy(&v9);

    [v3 activateWithCompletion:v5];
    _Block_release(v5);
    v6 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void (*sub_100069AB8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000698FC();
  return sub_100069B00;
}

void sub_100069B00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
}

uint64_t sub_100069B10()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1000327AC(0xD000000000000010, 0x800000010007C930), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  qword_100098B68 = v7;
  qword_100098B70 = v6;
  return result;
}

uint64_t sub_100069BF4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100069C34(a1);
  return v2;
}

uint64_t sub_100069C34(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 99) = 0u;
  v3 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  v4 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler) = 0;
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer) = 0;
  *(v1 + 16) = a1;
  return v1;
}

Swift::UInt64 sub_100069CF4()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UpTicks()();
  v7 = *(v0 + 24);
  v8 = v6 >= v7;
  result = v6 - v7;
  if (v8)
  {
    v10 = UpTicksToSeconds(_:)(result);
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v11._object = 0x800000010007C5A0;
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v11);
    v27._countAndFlagsBits = v10;
    (*(v3 + 104))(v5, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v2);
    sub_10006A07C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v3 + 8))(v5, v2);
    if (IsAppleInternalBuild())
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v12._countAndFlagsBits = 0x20656C707041202CLL;
      v12._object = 0xEC000000203A4449;
      String.append(_:)(v12);
      v26 = *(v0 + 32);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      String.append(_:)(v27);
    }

    v13._countAndFlagsBits = 10;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v14 = (*(*v0 + 440))();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 description];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    *&v26 = v17;
    *(&v26 + 1) = v19;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:)(v27);

    v20._countAndFlagsBits = 10;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v21 = (*(*v1 + 480))();
    if (v21)
    {
      v22 = (*(*v21 + 104))(v21);
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    *&v26 = v22;
    *(&v26 + 1) = v24;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:)(v27);

    v25._countAndFlagsBits = 10;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10006A07C()
{
  result = qword_100094A20;
  if (!qword_100094A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A20);
  }

  return result;
}

uint64_t sub_10006A148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10006DDF4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C810;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_10006A3F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v7 = sub_100039094();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Activate", v10, 2u);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return (*(*a2 + 408))(v11);
}

uint64_t sub_10006A594()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  if (!*(v1 + 24))
  {
    *(v1 + 24) = UpTicks()();
  }

  if (qword_1000988F0 != -1)
  {
    swift_once();
  }

  v28 = v6;
  swift_beginAccess();
  v9 = qword_100098B70;
  if (qword_100098B70)
  {
    v10 = qword_100098B68;

    v11 = sub_100039094();
    v26 = *(v3 + 16);
    v27 = v11;
    v26(v8);

    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = sub_1000034B8(v10, v9, &v29);

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Launching bluetoothuserd (%s)", v16, 0xCu);
      sub_1000036EC(v17);
    }

    else
    {
    }

    v19 = *(v12 + 8);
    v19(v8, v2);
    v20 = v28;
    (v26)(v28, v27, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Activate bluetoothuserd services", v23, 2u);
    }

    v19(v20, v2);
    sub_10006C4B8();
    return notify_post("com.apple.bluetoothuser.daemonStarted");
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006A930()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_10006D7AC;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C768;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006AB84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100039094();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalidate", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_10006ACE8();
}

uint64_t sub_10006ACE8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10006BB6C();
  v10 = (*(*v0 + 440))(v9);
  if (v10)
  {
    v11 = v10;
    (*((swift_isaMask & *v10) + 0x1A0))();
  }

  (*(*v1 + 448))(0);
  v1[4] = 0;
  v1[5] = 0;

  (*(*v1 + 552))(v12);
  if (*(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler))
  {
    os_state_remove_handler();
  }

  v13 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  swift_beginAccess();
  sub_10006DD14(v1 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v14 = &qword_100094A28;
    v15 = &qword_100075390;
    v16 = v4;
  }

  else
  {
    v17 = sub_100017D84(v4, v8);
    (*(*v1 + 288))(v17);
    sub_1000149B8(v8);

    v14 = &qword_100092FA8;
    v15 = &unk_100075380;
    v16 = v8;
  }

  sub_100006CAC(v16, v14, v15);
  v18 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer);
  if (v18)
  {
    v19 = *((swift_isaMask & *v18) + 0xE8);
    v20 = v18;
    v19();
  }

  return sub_10006DBC4();
}

void *sub_10006B01C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_10006B060(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void sub_10006B0F8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - v8;
  v10 = (*(*v0 + 360))(v7);
  v11 = [v10 primaryAppleID];

  if (!v11)
  {
    v18 = (v1 + 40);
    v17 = *(v1 + 40);
    v16 = (v1 + 32);
LABEL_11:
    if (!v17)
    {
      return;
    }

    goto LABEL_14;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = (v1 + 32);
  v18 = (v1 + 40);
  v17 = *(v1 + 40);
  if (!v15)
  {
    goto LABEL_11;
  }

  if (v17)
  {
    if (v13 == *(v1 + 32) && v17 == v15)
    {
      goto LABEL_32;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      return;
    }
  }

  else
  {
  }

LABEL_14:
  v21 = (*(*v1 + 264))(v12);
  v64 = [v21 aa_primaryAppleAccount];

  if (!v64)
  {
    return;
  }

  v22 = [v64 aa_altDSID];
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v64 username];
  if (v27)
  {
    v62 = v3;
    v28 = v27;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v29;

    v30 = (*(*v1 + 440))();
    if (!v30)
    {
LABEL_28:
      *v16 = v61;
      v40 = v63;
      *v18 = v63;

      if (IsAppleInternalBuild())
      {
        v41 = sub_100039094();
        v42 = v62;
        (*(v62 + 16))(v9, v41, v2);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v60 = v26;
          v46 = v40;
          v47 = v45;
          v65 = swift_slowAlloc();
          *v47 = 136315394;
          v48 = sub_1000034B8(v61, v46, &v65);

          *(v47 + 4) = v48;
          *(v47 + 12) = 2080;
          *(v47 + 14) = sub_1000034B8(v24, v60, &v65);
          _os_log_impl(&_mh_execute_header, v43, v44, "Apple Account %s) updated for %s", v47, 0x16u);
          swift_arrayDestroy();

          (*(v62 + 8))(v9, v2);
          v26 = v60;
        }

        else
        {

          (*(v42 + 8))(v9, v2);
        }
      }

      else
      {
        v49 = v26;

        v50 = sub_100039094();
        v51 = v62;
        (*(v62 + 16))(v6, v50, v2);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Apple Account found", v54, 2u);
        }

        (*(v51 + 8))(v6, v2);
        v26 = v49;
      }

      type metadata accessor for CloudPairingManager(0);
      sub_10004DD5C(v24, v26);
      v56 = v55;
      (*((swift_isaMask & *v55) + 0xE0))(*(v1 + 16));
      v57 = *(*v1 + 448);
      v58 = v56;
      v59 = v57(v56);
      (*((swift_isaMask & *v58) + 0x198))(v59);

      return;
    }

    v60 = v2;
    v31 = v24;
    v32 = v26;
    v33 = v30;
    v34 = (*((swift_isaMask & *v30) + 0x130))();
    v36 = v35;

    v26 = v32;
    if (v34 != v31 || v36 != v32)
    {
      v24 = v31;
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v60;
      if (v38)
      {

LABEL_24:
        v39 = v64;

        return;
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

LABEL_32:
}

double sub_10006B84C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10006B884(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t sub_10006B91C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 480))(v4))
  {
  }

  else
  {
    v8 = sub_100039094();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Debug manager started", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    type metadata accessor for DebugManager(0);
    v12 = sub_1000116EC();
    (*(*v12 + 184))();
    v13 = *(*v1 + 488);

    v13(v14);
  }
}

uint64_t sub_10006BB6C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 480))(v3);
  if (result)
  {
    v7 = result;
    v8 = sub_100039094();
    (*(v2 + 16))(v5, v8, v1);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Debug manager stopped", v11, 2u);
    }

    v12 = (*(v2 + 8))(v5, v1);
    (*(*v7 + 192))(v12);
  }

  return result;
}

uint64_t sub_10006BD38(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t sub_10006BDD0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 520))(v4))
  {
  }

  else
  {
    v8 = sub_100039094();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Intelligence manager started", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    type metadata accessor for IntelligenceManager();
    v12 = sub_100061D70();
    return (*(*v1 + 528))(v12);
  }
}

uint64_t sub_10006BFE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 520))(v4))
  {

    v7 = sub_100039094();
    (*(v3 + 16))(v6, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Intelligence manager stopped", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  return (*(*v1 + 528))(0);
}

uint64_t sub_10006C1B8()
{
  v1 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v19 - v5;
  v7 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  swift_beginAccess();
  sub_10006DD14(v0 + v7, v6);
  v8 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = sub_100006CAC(v6, &qword_100094A28, &qword_100075390);
  v12 = *(*v0 + 288);
  v13 = v12(v11);
  v14 = v13;
  if (v10 == 1)
  {
    (*(*v13 + 216))(v13);

    v12(v15);
    v19[3] = type metadata accessor for BluetoothUserDaemon(0);
    v19[4] = &off_10008C7B0;
    v19[0] = v0;

    sub_100014720();

    sub_1000036EC(v19);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_10006DD84(v4, v0 + v7);
    return swift_endAccess();
  }

  else
  {
    v17 = (*(*v0 + 360))();
    v18 = [v17 primaryAppleID];

    if (v18)
    {
    }

    (*(*v14 + 224))(v18 != 0);
  }
}

void sub_10006C4B8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  v15 = v0[112];
  v16 = (*v0 + 336);
  v46 = *v16;
  v17 = v46(v12);
  v18 = [v17 firstUnlocked];

  if (sub_100015134(2, 3u))
  {
    v45 = v8;
    v18 = sub_100016230(2, 3u);
    v19 = sub_100039094();
    (*(v3 + 16))(v14, v19, v2);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = v16;
      *v22 = 67109376;
      *(v22 + 4) = v15;
      *(v22 + 8) = 1024;
      *(v22 + 10) = v18 & 1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cloud Pairing Manager Overridden: %{BOOL}d -> %{BOOL}d", v22, 0xEu);
      v16 = v44;
    }

    (*(v3 + 8))(v14, v2);
    v8 = v45;
  }

  if (v15 != (v18 & 1))
  {
    v23 = sub_100039094();
    (*(v3 + 16))(v11, v23, v2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = v16;
      *v26 = 67109376;
      *(v26 + 4) = v15;
      *(v26 + 8) = 1024;
      *(v26 + 10) = v18 & 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "Cloud Pairing Manager Enabled: %{BOOL}d -> %{BOOL}d", v26, 0xEu);
    }

    (*(v3 + 8))(v11, v2);
    v1[112] = v18 & 1;
  }

  v27 = v1[113];
  v28 = sub_1000159B4(2, 4u, &type metadata for Bool, &v49);
  v29 = v49;
  if (v49 == 2)
  {
    v30 = v46(v28);
    v29 = [v30 firstUnlocked];
  }

  if (v27 != (v29 & 1))
  {
    v31 = sub_100039094();
    (*(v3 + 16))(v8, v31, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109376;
      *(v34 + 4) = v27;
      *(v34 + 8) = 1024;
      *(v34 + 10) = v29 & 1;
      _os_log_impl(&_mh_execute_header, v32, v33, "Debug Manager Enabled: %{BOOL}d -> %{BOOL}d", v34, 0xEu);
    }

    (*(v3 + 8))(v8, v2);
    v1[113] = v29 & 1;
  }

  v35 = v1[114];
  v36 = sub_1000159B4(2, 5u, &type metadata for Bool, &v48);
  v37 = v48;
  if (v48 == 2)
  {
    v38 = v46(v36);
    v37 = [v38 firstUnlocked];
  }

  if (v35 != (v37 & 1))
  {
    v39 = sub_100039094();
    (*(v3 + 16))(v47, v39, v2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109376;
      *(v42 + 4) = v35;
      *(v42 + 8) = 1024;
      *(v42 + 10) = v37 & 1;
      _os_log_impl(&_mh_execute_header, v40, v41, "Intelligence Manager Enabled: %{BOOL}d -> %{BOOL}d", v42, 0xEu);
    }

    (*(v3 + 8))(v47, v2);
    v1[114] = v37 & 1;
  }

  sub_10006CA8C();
}

void sub_10006CA8C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 336))(v4);
  v8 = [v7 firstUnlocked];

  if (v8)
  {
    v9 = *(v1 + 112);
    v10 = sub_10000CBC4();
    v11 = *v10;
    if (v9 == 1)
    {
      v12 = *((swift_isaMask & **v10) + 0xF8);
      v13 = v11;
      v12();

      sub_10006B0F8();
    }

    else
    {
      v18 = *((swift_isaMask & **v10) + 0x100);
      v19 = v11;
      v18();

      v20 = (*(*v1 + 440))();
      if (v20)
      {
        v21 = v20;
        (*((swift_isaMask & *v20) + 0x1A0))();
      }

      (*(*v1 + 448))(0);
      v1[4] = 0;
      v1[5] = 0;
    }

    if (*(v1 + 113) == 1)
    {
      v22 = sub_10006B91C();
    }

    else
    {
      v22 = sub_10006BB6C();
    }

    v23 = *v1;
    if (*(v1 + 114) == 1)
    {
      (*(v23 + 544))(v22);
    }

    else
    {
      (*(v23 + 552))(v22);
    }

    v24 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler;
    if (!*(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler))
    {
      aBlock[4] = sub_10006D95C;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006CEC4;
      aBlock[3] = &unk_10008C7C0;
      v25 = _Block_copy(aBlock);

      v26 = os_state_add_handler();
      _Block_release(v25);
      *(v1 + v24) = v26;
    }

    sub_10006C1B8();
    sub_10006D3E4();
  }

  else
  {
    v14 = sub_100039094();
    (*(v3 + 16))(v6, v14, v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Bluetooth User Daemon waiting for first unlock...", v17, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10006CEC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_10006CF14(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = static SystemVersionNumber.< infix(_:_:)();
  v12 = sub_100039094();
  v13 = *(v5 + 16);
  if (v11)
  {
    v13(v10, v12, v4);
    sub_10000A4A4(a1, v21);
    sub_10000A4A4(a2, v21);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_10000A4DC(a1);
    sub_10000A4DC(a2);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1000034B8(*a1, a1[1], v21);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1000034B8(*a2, a2[1], v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Migrating from %s to %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    v13(v8, v12, v4);
    sub_10000A4A4(a1, v21);
    sub_10000A4A4(a2, v21);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    sub_10000A4DC(a1);
    sub_10000A4DC(a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000034B8(*a1, a1[1], v21);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000034B8(*a2, a2[1], v21);
      _os_log_impl(&_mh_execute_header, v18, v19, "Back-migrating from %s to %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_10006D26C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100039094();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "First launch since boot...", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  byte_100098B60 = 1;
}

void sub_10006D3E4()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer;
  if (!*(v0 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer))
  {
    type metadata accessor for BluetoothUserXPCServer();
    v2 = v0;
    v3 = sub_10005D0A0(*(v0 + 16));
    v4 = *((swift_isaMask & *v3) + 0x78);

    v4(v5);
    v6 = *(v2 + v1);
    *(v2 + v1) = v3;
    v7 = v3;

    (*((swift_isaMask & *v7) + 0xD8))();
  }
}

id *sub_10006D4FC()
{

  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription, &qword_100094A28, &qword_100075390);

  return v0;
}

uint64_t sub_10006D58C()
{
  sub_10006D4FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006D714()
{
  v1 = *v0;
  sub_10006C4B8();
  result = (*(*v1 + 480))();
  if (result)
  {
    sub_100011A2C();
  }

  return result;
}

uint64_t type metadata accessor for BluetoothUserDaemon(uint64_t a1)
{
  result = qword_100098990;
  if (!qword_100098990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006D808(uint64_t a1)
{
  sub_10006D8F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006D8F8(uint64_t a1)
{
  if (!qword_100094A58)
  {
    sub_10000C9B0(&qword_100092FA8, &unk_100075380);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100094A58);
    }
  }
}

void sub_10006D95C()
{
  (*(*v0 + 392))();
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  v18 = 0;
  v3 = [v1 dataWithPropertyList:v2 format:200 options:0 error:&v18];

  v4 = v18;
  if (!v3)
  {
    v10 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v7);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = __OFSUB__(v11, v12);
  v9 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v9 = v9;
  }

LABEL_13:
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_36;
  }

  v14 = calloc(v9 + 200, 1uLL);
  if (!v14)
  {
    sub_1000066CC(v5, v7);
    return;
  }

  *v14 = 1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *(v14 + 1) = BYTE6(v7);
LABEL_32:
    strcpy(v14 + 136, "BluetoothUserDaemon State");
LABEL_34:
    Data.copyBytes(to:count:)();
    sub_1000066CC(v5, v7);
    return;
  }

  LODWORD(v17) = HIDWORD(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = v17;
LABEL_25:
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(v17))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v14 + 1) = v17;
  strcpy(v14 + 136, "BluetoothUserDaemon State");
  if (v8 == 2)
  {
    if (!__OFSUB__(*(v5 + 24), *(v5 + 16)))
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_10006DBC4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100039094();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalidated", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10006DD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006DE04()
{
  v0 = type metadata accessor for BluetoothUserDaemon(0);
  memset(v1, 0, sizeof(v1));
  sub_100067E54(v1, v1, v0, &off_10008C790);
  sub_10006C4B8();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

Swift::String_optional __swiftcall NSScanner.scanCharacter()()
{
  v0 = NSScanner.scanCharacter()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}