void sub_1001C4944(uint64_t a1, uint64_t a2)
{
  sub_100013424();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1001C49B0(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100521760, &qword_10044EBE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100020E0C(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    v12 = (*(v7 + 32))(v9, v5, v6);
    __chkstk_darwin(v12);
    *&v14[-16] = v1;
    *&v14[-8] = v9;
    sub_1001BC5A8(&qword_100521768, &unk_10044EBF0);
    sub_100013378(sub_1001C7B10);
    sub_1001C7C2C(v15[0], v15[1]);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11(v5, 1, 1, v6);
    return sub_1000038A4(v5, &qword_100521760, &qword_10044EBE8);
  }
}

uint64_t sub_1001C4CC4()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(42);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._object = 0x800000010043A370;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3 = (*((swift_isaMask & *v0) + 0x90))();
  if (v3)
  {
    v4 = [v3 description];
    swift_unknownObjectRelease();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1162760014;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x4474757074756F20;
  v9._object = 0xEF3A736563697665;
  String.append(_:)(v9);
  (*((swift_isaMask & *v0) + 0x88))();
  sub_100013424();
  v10 = Array.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 60;
}

void sub_1001C4F38(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1001C4FBC(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529758);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10002C9C8(0xD000000000000015, 0x800000010043A390, &v20);
    *(v9 + 22) = 2080;
    v13 = [a1 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10002C9C8(v14, v16, &v20);

    *(v9 + 24) = v17;
    *(v9 + 32) = 2048;
    *(v9 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] %s %s %ld", v9, 0x2Au);
    swift_arrayDestroy();
  }

  v18 = *((swift_isaMask & *v3) + 0x118);

  return v18();
}

uint64_t sub_1001C5290(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100529758);
  swift_unknownObjectRetain();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315906;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(0xD000000000000015, 0x800000010043A3B0, &v22);
    *(v8 + 22) = 2080;
    v12 = [a1 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, &v22);

    *(v8 + 24) = v16;
    *(v8 + 32) = 2080;
    sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
    v17 = Array.description.getter();
    v19 = sub_10002C9C8(v17, v18, &v22);

    *(v8 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s %s %s", v8, 0x2Au);
    swift_arrayDestroy();
  }

  v20 = *((swift_isaMask & *v3) + 0x118);

  return v20();
}

uint64_t sub_1001C55C0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x800000010043A3D0, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C5804(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD00000000000001ELL, 0x800000010043A3F0, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

void sub_1001C5A48()
{
  v0 = objc_opt_self();
  v1 = [v0 server];
  v2 = [v1 groupSessionServer];

  if (v2)
  {
    v3 = [v2 sessionManager];

    if (v3)
    {
      v4 = [v3 session];

      if (v4)
      {
        if (([v4 isHosted] & 1) != 0 || objc_msgSend(v4, "state") != 3)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_10044EBC0;
          *(v5 + 32) = [objc_allocWithZone(MRAVDistantOutputDevice) initWithGroupSession:v4];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v6 = [v0 server];
  v7 = [v6 externalDeviceServer];

  v8 = [v7 remoteControlService];
  if (v8)
  {
    v9 = [v8 systemGroupSessionService];

    if (v9)
    {
      v11 = (*((swift_isaMask & *v9) + 0x138))();

      if (v11)
      {
        sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10044EBC0;
        *(v12 + 32) = [objc_allocWithZone(MRAVDistantOutputDevice) initWithSystemGroupSession:v11];
      }
    }

    __chkstk_darwin(v10);
    sub_100013378(sub_1001C864C);
    sub_1001C5D58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C5D58()
{
  v2 = 0;
  sub_100013378(sub_1001C9390);
  result = (*((swift_isaMask & *v0) + 0x88))();
  __break(1u);
  return result;
}

void sub_1001C5E68()
{
  swift_getObjectType();
  v1 = [objc_opt_self() server];
  v2 = [v1 groupSessionServer];

  if (v2 && (v3 = [v2 sessionManager], v2, v3))
  {
    v4 = v0;
    [v3 addObserver:v0];
    if (qword_100529750 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100529758);
    v22 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v8 = 136315394;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, &v23);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v22;
      *v9 = v3;
      v14 = v22;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Began observing %@", v8, 0x16u);
      sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v10);
    }

    (*((swift_isaMask & *v4) + 0x118))();
  }

  else
  {
    if (qword_100529750 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529758);
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v16, "[%s] No session manager to call addObserver. Ignoring", v17, 0xCu);
      sub_100026A44(v18);
    }
  }
}

void sub_1001C620C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_opt_self() server];
  v3 = [v2 externalDeviceServer];

  v4 = [v3 remoteControlService];
  if (v4)
  {
    v5 = [v4 systemGroupSessionService];

    if (v5 && (v6 = (*((swift_isaMask & *v5) + 0x138))(), v5, v6))
    {
      [v6 addObserver:v1];
      if (qword_100529750 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100015AFC(v7, qword_100529758);
      v24 = v6;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v10 = 136315394;
        v13 = _typeName(_:qualified:)();
        v15 = sub_10002C9C8(v13, v14, &v25);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2112;
        *(v10 + 14) = v24;
        *v11 = v6;
        v16 = v24;
        _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Began observing %@", v10, 0x16u);
        sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v12);
      }

      (*((swift_isaMask & *v1) + 0x118))();
    }

    else
    {
      if (qword_100529750 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100015AFC(v17, qword_100529758);
      v24 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10002C9C8(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, v18, "[%s] No system session to call addObserver. Ignoring", v19, 0xCu);
        sub_100026A44(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1001C67A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MRDGroupSessionDiscoverySession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001C68C4(uint64_t a1, uint64_t a2)
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

  sub_1001BC5A8(&qword_100521878, &unk_10044EC48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1001C6948(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1001C9508(&qword_1005286C0, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001C69CC(a1, v2);
}

unint64_t sub_1001C69CC(uint64_t a1, uint64_t a2)
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
      sub_1001C9508(&unk_1005286D0, &protocol conformance descriptor for UUID);
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

uint64_t sub_1001C6B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_1001C9508(&qword_1005286C0, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1001C6F3C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1001C9508(&qword_1005286C0, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1001C7244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1001C6948(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1001C74E0();
      goto LABEL_9;
    }

    sub_1001C6B78(v18, a4 & 1);
    v21 = sub_1001C6948(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1001C7420(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1001C7420(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_1001C74E0()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1001C7760(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1001C78BC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_1005218A0, &qword_10044EC60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1001C9578(v9, v5);
      result = sub_1001C6948(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

__n128 sub_1001C7B10@<Q0>(__n128 *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();
  v6 = sub_1001C6948(v3);
  v14 = 0u;
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + v5);
    *(v4 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001C74E0();
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v14 = *(*(v10 + 56) + 16 * v8);
    sub_1001C6F3C(v8, v10);
    *(v4 + v5) = v10;
  }

  swift_endAccess();
  result = v14;
  *a1 = v14;
  return result;
}

uint64_t sub_1001C7C2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C7C3C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000026, 0x800000010043A670, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C7E80(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000024, 0x800000010043A640, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C80C4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000025, 0x800000010043A610, v19);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, v19);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v16);
  sub_100013378(sub_1001C94C4);
  v17 = [a1 addObserver:v2];
  return (*((swift_isaMask & *v2) + 0x118))(v17);
}

uint64_t sub_1001C8388(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000026, 0x800000010043A5E0, v17);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, v17);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  __chkstk_darwin([a1 removeObserver:v2]);
  sub_100013378(sub_1001C9488);
  return (*((swift_isaMask & *v2) + 0x118))();
}

uint64_t sub_1001C864C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__outputDevices) = **(v0 + 24);
}

void sub_1001C8694()
{
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100529758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_10002C9C8(v4, v5, &v7);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_10002C9C8(0xD000000000000021, 0x800000010043A5B0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001C5E68();
}

uint64_t sub_1001C883C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(0xD000000000000020, 0x800000010043A580, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *((swift_isaMask & *v1) + 0x118);

  return v9();
}

void sub_1001C8A1C()
{
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100529758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_10002C9C8(v4, v5, &v7);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_10002C9C8(0xD000000000000021, 0x800000010043A550, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001C620C();
}

uint64_t sub_1001C8BC4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(0xD000000000000020, 0x800000010043A520, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *((swift_isaMask & *v1) + 0x118);

  return v9();
}

uint64_t sub_1001C8DA4(void *a1)
{
  result = [objc_allocWithZone(_MRAVOutputDeviceDescriptorProtobuf) init];
  if (!result)
  {
    goto LABEL_17;
  }

  v4 = result;
  v5 = [a1 localizedSessionName];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v4 setName:v5];

  v6 = [a1 joinToken];
  v7 = [v6 equivalentMediaIdentifier];

  if (!v7)
  {
    v7 = [a1 identifier];
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String._bridgeToObjectiveC()();

  [v4 setUniqueIdentifier:v8];

  [v4 setIsRemoteControllable:1];
  [v4 setTransportType:6];
  v9 = [a1 identifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v4 setAirPlayGroupID:v9];

  v10 = [a1 identifier];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v4 setGroupID:v10];

  [v4 setGroupContainsGroupLeader:1];
  [v4 setIsGroupLeader:1];
  [v4 setIsGroupable:1];
  [v4 setIsDeviceGroupable:1];
  [a1 routeType];
  result = MROutputDeviceTypeFromGroupSessionRoute();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v4 setDeviceType:result];
  [a1 routeType];
  result = MROutputDeviceSubtypeFromGroupSessionRoute();
  if ((result & 0x80000000) != 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  [v4 setDeviceSubType:result];
  [a1 routeType];
  v11 = MRGroupSessionRouteTypeToModelIdentifier();
  if (v11)
  {
    v12 = v11;
    [v4 setModelID:v11];
  }

  v13 = [objc_allocWithZone(MRGroupSessionInfo) initWithGroupSession:a1];
  v14 = [v13 protobuf];

  [v4 setGroupSessionInfo:v14];
  v15 = [v1 initWithDescriptor:v4];

  return v15;
}

id sub_1001C9104(void *a1)
{
  v2 = v1;
  (*((swift_isaMask & *a1) + 0x88))(&v11);
  result = [objc_allocWithZone(_MRAVOutputDeviceDescriptorProtobuf) init];
  if (result)
  {
    v4 = result;
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = String._bridgeToObjectiveC()();
    [v4 setUniqueIdentifier:v6];

    [v4 setIsRemoteControllable:1];
    [v4 setTransportType:7];
    v7 = String._bridgeToObjectiveC()();
    [v4 setAirPlayGroupID:v7];

    v8 = String._bridgeToObjectiveC()();
    [v4 setGroupID:v8];

    [v4 setGroupContainsGroupLeader:1];
    [v4 setIsGroupLeader:1];
    [v4 setIsGroupable:0];
    result = [v4 setIsDeviceGroupable:0];
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      result = [v4 setDeviceType:?];
      if ((v13 & 0x80000000) == 0)
      {
        [v4 setDeviceSubType:?];
        v9 = String._bridgeToObjectiveC()();
        sub_1001C933C(&v11);
        [v4 setModelID:v9];

        v10 = [v2 initWithDescriptor:v4];
        return v10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_5:
    *v2 = v7;
  }

  v11[9] = v1;
  v7 = sub_1001C68C4(v6, 0);
  v8 = sub_1001C7760(v11, v7 + 2, v6, v5);
  v9 = v11[0];

  result = sub_100045960(v9);
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C94C4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001C9508(unint64_t *a1, uint64_t a2)
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

uint64_t sub_1001C9578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005218A0, &qword_10044EC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C9618()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529778);
  sub_100015AFC(v0, qword_100529778);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_1001C985C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NearbySessionsListener();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001C990C()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver);
  }

  else
  {
    v4 = sub_10037B1C0();
    v5 = *v4;
    v6 = *(v0 + v1);
    *(v0 + v1) = *v4;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1001C9974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v53 = &v48 - v6;
  v7 = sub_1001BC5A8(&qword_100521B90, &qword_10044EE28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v52 = sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  v58 = *(v52 - 8);
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v52);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask] = 0;
  v16 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock;
  type metadata accessor for Lock();
  *&v3[v16] = sub_10036C394();
  v17 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements;
  sub_1001BC5A8(&qword_100521BA0, &qword_10044EE38);
  *&v3[v17] = sub_1001D7444(10);
  v18 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions;
  sub_1001BC5A8(&qword_100521BA8, &qword_10044EE40);
  *&v3[v18] = sub_1001D7444(10);
  v19 = v56;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanner] = v57;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] = v19;
  *&v3[v15] = a3;

  v56 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v20 = type metadata accessor for NearbySessionsListenerImplementation();
  v60.receiver = v3;
  v60.super_class = v20;
  v48 = objc_msgSendSuper2(&v60, "init");
  dispatch thunk of NearbyInvitationScanner.$advertisements.getter();
  sub_10000462C(&qword_100521BB0, &qword_100521B90, &qword_10044EE28, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v8 + 8))(v10, v7);
  v21 = type metadata accessor for TaskPriority();
  v22 = *(v21 - 8);
  v49 = *(v22 + 56);
  v50 = v22 + 56;
  v23 = v53;
  v49(v53, 1, 1, v21);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v58;
  v26 = *(v58 + 16);
  v27 = v51;
  v28 = v52;
  v55 = v14;
  v26(v51, v14, v52);
  v29 = v25;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v33 = v29;
  v34 = ObjectType;
  (*(v33 + 32))(v32 + v30, v27, v28);
  *(v32 + v31) = v24;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v35 = v23;
  v36 = v48;
  *&v36[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask] = sub_1001CB290(0, 0, v35, &unk_10044EE50, v32);

  v49(v35, 1, 1, v21);
  v37 = v57;
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v36;
  v38[5] = v37;
  v38[6] = v34;

  sub_1001BF864(0, 0, v35, &unk_10044EE60, v38);

  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100015AFC(v39, qword_100529778);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v59 = v43;
    *v42 = 136315138;
    v44 = _typeName(_:qualified:)();
    v46 = sub_10002C9C8(v44, v45, &v59);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "[%s] Initialize", v42, 0xCu);
    sub_100026A44(v43);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v58 + 8))(v55, v28);
  return v36;
}

uint64_t sub_1001CA014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_1001BC5A8(&qword_100521BB8, &qword_10044EE70);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1001CA0E4, 0, 0);
}

uint64_t sub_1001CA0E4()
{
  type metadata accessor for Lock();
  v0[28] = sub_10036C394();
  v0[15] = &_swiftEmptySetSingleton;
  sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_1001CA1F8;

  return sub_1001CAB04(0, 0);
}

uint64_t sub_1001CA1F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (!v1)
  {

    return _swift_task_switch(sub_1001CA30C, 0, 0);
  }

  return result;
}

uint64_t sub_1001CA30C()
{
  v54 = v0;
  v1 = v0[30];
  if (!v1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
LABEL_5:

    v3 = v0[1];
    goto LABEL_6;
  }

  v2 = v0[31];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v3 = v0[1];
LABEL_6:

    return v3();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    goto LABEL_5;
  }

  v6 = Strong;
  v7 = (v0 + 15);
  v8 = v0 + 16;
  v9 = (v0 + 17);
  if (qword_100529770 == -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    swift_once();
LABEL_11:
    v10 = type metadata accessor for Logger();
    sub_100015AFC(v10, qword_100529778);
    v11 = v6;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    v51 = v8;
    v52 = v11;
    if (os_log_type_enabled(v12, v13))
    {
      v50 = v13;
      v14 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v14 = 136315650;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10002C9C8(v15, v16, v53);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      if (*&v11[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v18 = 0x646F50656D6F48;
      }

      else
      {
        v18 = 7496003;
      }

      if (*&v11[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      v20 = sub_10002C9C8(v18, v19, v53);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2082;
      sub_1001CAE50(v1);
      v21 = Array.description.getter();
      v22 = v9;
      v23 = v7;
      v25 = v24;

      v26 = sub_10002C9C8(v21, v25, v53);
      v7 = v23;
      v9 = v22;

      *(v14 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v12, v50, "[%s(%s)] Advertisements updated: %{public}s", v14, 0x20u);
      swift_arrayDestroy();

      v8 = v51;
    }

    else
    {
    }

    v0[16] = 0;
    v0[17] = 0;
    v27 = swift_task_alloc();
    v27[2] = v8;
    v27[3] = v1;
    v27[4] = v7;
    v27[5] = v9;
    sub_100013378(sub_1001D6A80);

    result = v0[17];
    if (!result)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    if ((result & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for NearbyAdvertisement();
      sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v7 = v0[7];
      v28 = v0[8];
      v6 = v0[9];
      v9 = v0[10];
      v1 = v0[11];
    }

    else
    {
      v29 = -1 << *(result + 32);
      v28 = result + 56;
      v6 = ~v29;
      v30 = -v29;
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v1 = (v31 & *(result + 56));
      v9 = 0;
    }

    v32 = (v6 + 64) >> 6;
    if (v7 < 0)
    {
      break;
    }

LABEL_29:
    v33 = v9;
    v34 = v1;
    v35 = v9;
    if (v1)
    {
LABEL_33:
      v36 = (v34 - 1) & v34;
      v8 = *(*(v7 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      if (v8)
      {
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v1 = 0;
        goto LABEL_40;
      }

      v34 = *(v28 + 8 * v35);
      ++v33;
      if (v34)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  while (1)
  {
    v6 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v37 = __CocoaSet.Iterator.next()();
    if (!v37)
    {
      break;
    }

    v0[21] = v37;
    type metadata accessor for NearbyAdvertisement();
    swift_dynamicCast();
    v8 = v0[20];
    v35 = v9;
    v36 = v1;
    if (!v8)
    {
      break;
    }

LABEL_37:
    v6 = v52;
    sub_1001D2680(v8);

    v9 = v35;
    v1 = v36;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_40:
  result = sub_100045960(v7);
  v38 = *v51;
  if (!*v51)
  {
    goto LABEL_65;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.makeIterator()();
    v1 = type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v38 = v0[2];
    v8 = v0[3];
    v39 = v0[4];
    v7 = v0[5];
    v40 = v0[6];
  }

  else
  {
    v7 = 0;
    v41 = -1 << *(v38 + 32);
    v39 = ~v41;
    v8 = (v38 + 56);
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(v38 + 56);
  }

  v44 = (v39 + 64) >> 6;
  if ((v38 & 0x8000000000000000) == 0)
  {
LABEL_48:
    v45 = v7;
    v46 = v40;
    v9 = v7;
    if (v40)
    {
LABEL_52:
      v47 = (v46 - 1) & v46;
      v1 = *(*(v38 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v46)))));
      if (v1)
      {
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    while (1)
    {
      v9 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_62;
      }

      if (v9 >= v44)
      {
        goto LABEL_58;
      }

      v46 = v8[v9];
      ++v45;
      if (v46)
      {
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v48 = __CocoaSet.Iterator.next()();
    if (!v48)
    {
      break;
    }

    v0[19] = v48;
    type metadata accessor for NearbyAdvertisement();
    swift_dynamicCast();
    v1 = v0[18];
    v9 = v7;
    v47 = v40;
    if (!v1)
    {
      break;
    }

LABEL_56:
    v6 = v52;
    sub_1001D1A4C(v1);

    v7 = v9;
    v40 = v47;
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_58:
  sub_100045960(v38);

  v49 = swift_task_alloc();
  v0[29] = v49;
  *v49 = v0;
  v49[1] = sub_1001CA1F8;

  return sub_1001CAB04(0, 0);
}

uint64_t sub_1001CAB04(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100521BB8, &qword_10044EE70);
  v4 = sub_10000462C(&qword_100521BD8, &qword_100521BB8, &qword_10044EE70, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1001CABFC()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1001CADA8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1001CAD8C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1001CADA8()
{
  v0[3] = v0[7];
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

void sub_1001CAE50(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v35 = _swiftEmptyArrayStorage;
    if (v33)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        sub_1001D5064(v37, v38, v39, v1);
        v12 = v11;
        v13 = NearbyAdvertisement.identifier.getter();
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = v35[2];
        v17 = v35[3];
        if (v18 >= v17 >> 1)
        {
          sub_1000089FC((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        v16[2] = v18 + 1;
        v19 = &v16[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          sub_1001BC5A8(&qword_100521BC8, &qword_10044EE80);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_10000A16C(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_10000A16C(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_1001CB19C(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1001D395C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_1001D3B8C(v5, v6);
LABEL_10:

  return sub_1001D3D6C(a1, v2);
}

uint64_t sub_1001CB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001D6648(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000038A4(v10, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001CB52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001D6648(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000038A4(v10, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = String.utf8CString.getter() + 32;
      sub_100018D7C(0, &qword_100521B68, off_1004B30A8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000038A4(v22[0], &qword_100521B60, &qword_10044F1A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001CB7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001CB818, 0, 0);
}

uint64_t sub_1001CB818()
{
  v18 = v0;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[5] = sub_100015AFC(v2, qword_100529778);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v11 = 0x646F50656D6F48;
    }

    else
    {
      v11 = 7496003;
    }

    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_10002C9C8(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s(%s)] Starting to listen for nearby invitations", v7, 0x16u);
    swift_arrayDestroy();
  }

  v16 = (&async function pointer to dispatch thunk of NearbyInvitationScanner.start() + async function pointer to dispatch thunk of NearbyInvitationScanner.start());
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_1001CBA6C;

  return v16();
}

uint64_t sub_1001CBA6C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001CBD40;
  }

  else
  {
    v2 = sub_1001CBB80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CBB80()
{
  v15 = v0;
  v1 = *(v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v9 = 0x646F50656D6F48;
    }

    else
    {
      v9 = 7496003;
    }

    if (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s(%s)] Started listening for nearby invitations", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001CBD40()
{
  v17 = v0;
  v1 = *(v0 + 16);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    if (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v10 = 0x646F50656D6F48;
    }

    else
    {
      v10 = 7496003;
    }

    if (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = sub_10002C9C8(v10, v11, &v16);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v13;
    *v6 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s(%s)] Failed to start listening for nearby invitations: %{public}@", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

id sub_1001CBF90()
{
  v1 = v0;
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529778);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deinit", v5, 0xCu);
    sub_100026A44(v6);
  }

  v10 = type metadata accessor for NearbySessionsListenerImplementation();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

BOOL sub_1001CC22C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v7[0] = a1;
  v7[1] = a2;
  v4 = *(*v3 + 208);

  v4(&v8, v7);

  v5 = v8;
  if (v8)
  {
  }

  return v5 != 0;
}

uint64_t sub_1001CC330(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = swift_getObjectType();
  sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001CC3DC, 0, 0);
}

uint64_t sub_1001CC3DC()
{
  v98 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v95 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v95;
  *(v3 + 40) = v1;
  type metadata accessor for NearbyAdvertisement();
  sub_100013378(sub_1001D6208);

  v4 = *(v0 + 16);
  *(v0 + 88) = v4;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 64);
  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529778);
  v7 = v4;
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v92 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v11 = 136316162;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, v97);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (*(v92 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v16 = 0x646F50656D6F48;
    }

    else
    {
      v16 = 7496003;
    }

    if (*(v92 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_10002C9C8(v16, v17, v97);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v97);
    *(v11 + 32) = 2082;
    v19 = NearbyAdvertisement.identifier.getter();
    v21 = sub_10002C9C8(v19, v20, v97);

    *(v11 + 34) = v21;
    *(v11 + 42) = 2112;
    *(v11 + 44) = v7;
    *v12 = v7;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s(%s)] %s <%{public}s> - %@", v11, 0x34u);
    sub_1000038A4(v12, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v23 = objc_opt_self();
  v24 = [v23 sharedCenter];
  v25 = [v24 localActiveIdentity];
  *(v0 + 96) = v25;

  if (v25)
  {
    v26 = [v25 displayName];
    if (v26)
    {
      v27 = *(v0 + 64);
      v28 = v26;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v30;
      v93 = v29;

      v31 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest;
      v96 = v27;
      if (*(v27 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest))
      {
        v32 = *(v0 + 64);
        v33 = v7;
        v34 = v32;

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v90 = v36;
          v89 = *(v0 + 64);
          v37 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v37 = 136315906;
          v38 = _typeName(_:qualified:)();
          v40 = sub_10002C9C8(v38, v39, v97);

          *(v37 + 4) = v40;
          *(v37 + 12) = 2080;
          if (*(v89 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
          {
            v41 = 0x646F50656D6F48;
          }

          else
          {
            v41 = 7496003;
          }

          if (*(v89 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
          {
            v42 = 0xE700000000000000;
          }

          else
          {
            v42 = 0xE300000000000000;
          }

          v43 = sub_10002C9C8(v41, v42, v97);

          *(v37 + 14) = v43;
          *(v37 + 22) = 2080;
          *(v37 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v97);
          *(v37 + 32) = 2080;
          v44 = NearbyAdvertisement.identifier.getter();
          v46 = sub_10002C9C8(v44, v45, v97);

          *(v37 + 34) = v46;
          _os_log_impl(&_mh_execute_header, v35, v90, "[%s(%s)] %s <%s> Cancelling pending invitation request", v37, 0x2Au);
          swift_arrayDestroy();
        }

        sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
        sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        Task.cancel()();
      }

      v47 = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) init];
      *(v0 + 104) = v47;
      if (v47)
      {
        v52 = v47;
        v54 = *(v0 + 72);
        v53 = *(v0 + 80);
        v55 = *(v0 + 64);
        v56 = [v25 protobuf];
        [v52 setIdentity:v56];

        v57 = type metadata accessor for TaskPriority();
        (*(*(v57 - 8) + 56))(v53, 1, 1, v57);
        v58 = *&v55[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanner];
        v59 = swift_allocObject();
        v59[2] = 0;
        v59[3] = 0;
        v59[4] = v55;
        v59[5] = v7;
        v59[6] = v93;
        v59[7] = v91;
        v59[8] = v58;
        v59[9] = v52;
        v59[10] = v54;
        v60 = v7;
        v61 = v55;

        v62 = v52;
        v63 = sub_1001CB52C(0, 0, v53, &unk_10044EDA8, v59);
        *(v0 + 112) = v63;
        *(v96 + v31) = v63;

        v64 = swift_task_alloc();
        *(v0 + 120) = v64;
        v65 = sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
        v50 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        *v64 = v0;
        v64[1] = sub_1001CCE88;
        v51 = &protocol self-conformance witness table for Error;
        v47 = (v0 + 40);
        v48 = v63;
        v49 = v65;
      }

      else
      {
        __break(1u);
      }

      return Task.value.getter(v47, v48, v49, v50, v51);
    }
  }

  v66 = *(v0 + 64);
  v67 = v7;
  v68 = v66;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v0 + 64);
    v72 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v72 = 136316162;
    v73 = _typeName(_:qualified:)();
    v75 = sub_10002C9C8(v73, v74, v97);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    if (*(v71 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v76 = 0x646F50656D6F48;
    }

    else
    {
      v76 = 7496003;
    }

    if (*(v71 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v77 = 0xE700000000000000;
    }

    else
    {
      v77 = 0xE300000000000000;
    }

    v78 = sub_10002C9C8(v76, v77, v97);

    *(v72 + 14) = v78;
    *(v72 + 22) = 2080;
    *(v72 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v97);
    *(v72 + 32) = 2080;
    v79 = NearbyAdvertisement.identifier.getter();
    v81 = sub_10002C9C8(v79, v80, v97);

    *(v72 + 34) = v81;
    *(v72 + 42) = 2112;
    v82 = [v23 sharedCenter];
    v83 = [v82 localActiveIdentity];

    *(v72 + 44) = v83;
    *v94 = v83;
    _os_log_impl(&_mh_execute_header, v69, v70, "[%s(%s)] %s <%s> No display name for identity: %@", v72, 0x34u);
    sub_1000038A4(v94, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  type metadata accessor for MRGroupSessionError(0);
  v85 = v84;
  *(v0 + 32) = 4;
  v86 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
  sub_10022CC44(v0 + 32, 0xD000000000000022, 0x800000010043A9C0, 0, v85, v86);
  swift_willThrow();

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_1001CCE88()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1001CD030;
  }

  else
  {
    v2 = sub_1001CCF9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CCF9C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001CD030()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001CD0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v12;
  v8[16] = v13;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a1;
  v8[10] = a4;
  sub_1001D66B8();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD18C, 0, 0);
}

uint64_t sub_1001CD18C()
{
  v38 = v0;
  v1 = v0 + 2;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = type metadata accessor for Logger();
  v0[20] = sub_100015AFC(v4, qword_100529778);
  v5 = v3;
  v6 = v2;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v35 = v0[12];
    v36 = v0[13];
    v9 = v0[11];
    v34 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v10 = 136316162;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v37);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*(v34 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (*(v34 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v37);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, &v37);
    *(v10 + 32) = 2112;
    *(v10 + 34) = v9;
    *v11 = v9;
    *(v10 + 42) = 2080;
    v1 = v0 + 2;
    v18 = v9;
    *(v10 + 44) = sub_10002C9C8(v35, v36, &v37);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] %s Requesting to join advertisement: %@ as %s", v10, 0x34u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v19 = v0[15];
  v20 = kMREventGroupSessionJoinRequestSent;
  v0[6] = sub_1001CDB50;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001CDC04;
  v0[5] = &unk_1004C2058;
  v21 = _Block_copy(v1);
  v22 = v20;
  MRAnalyticsSendEvent();
  _Block_release(v21);

  v23 = [v19 data];
  if (v23)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v0[21] = v25;
  v0[22] = v27;
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_1001CD580;
  v29 = v0[19];
  v30 = v0[13];
  v31 = v0[11];
  v32 = v0[12];

  return NearbyInvitationScanner<>.request(_:displayName:userInfo:)(v29, v31, v32, v30, v25, v27);
}

uint64_t sub_1001CD580(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = sub_1001CDAD0;
  }

  else
  {
    sub_100045968(v3[21], v3[22]);
    v4 = sub_1001CD69C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001CD69C()
{
  v37 = v0;
  v1 = *(v0 + 200);
  static Task<>.checkCancellation()();
  if (v1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    swift_willThrow();

    v2 = *(v0 + 8);
    goto LABEL_19;
  }

  v3 = InvitationRequest<>.Context.userInfo.getter();
  if (v4 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_allocWithZone(_MRGroupSessionJoinResponseProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData:isa];

  if (!v9)
  {
LABEL_8:
    sub_100045968(v5, v6);
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v10 = [v9 joinURL];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [objc_opt_self() tokenForJoinURLString:v10];

  sub_100045968(v5, v6);
LABEL_10:
  v13 = *(v0 + 80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = *(v0 + 192);
    v16 = *(v0 + 80);
    v17 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v17 = 136315906;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, v36);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    if (*(v16 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v21 = 0x646F50656D6F48;
    }

    else
    {
      v21 = 7496003;
    }

    if (*(v16 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_10002C9C8(v21, v22, v36);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v36);
    *(v17 + 32) = 2082;
    *(v0 + 64) = v35;
    type metadata accessor for NearbyGroup();
    sub_1001D5F18(&qword_100521B08, &type metadata accessor for NearbyGroup, &protocol conformance descriptor for NearbyGroup);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = sub_10002C9C8(v24, v25, v36);

    *(v17 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s(%s)] %s Successfully joined NearbyGroup: %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
  }

  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v29 = *(v0 + 136);
  v30 = *(v0 + 72);
  type metadata accessor for MRDNearbyGroup(0);

  v32 = sub_1001E0DB4(v31);
  v33 = [objc_allocWithZone(MRDGroupSessionJoinResponse) initWithNearbyGroup:v32 publicSigningKeyData:0 joinToken:v12];

  (*(v28 + 8))(v27, v29);
  *v30 = v33;

  v2 = *(v0 + 8);
LABEL_19:

  return v2();
}

uint64_t sub_1001CDAD0()
{
  sub_100045968(v0[21], v0[22]);
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_1001CDB50()
{
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = kMREventJoinSessionModeProximity;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  v3 = v1;
  v4 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v4;
}

Class sub_1001CDC04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_1001CDE1C(uint64_t a1, void *aBlock, void *a3)
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
  v8[1] = sub_1001CDEF0;

  return sub_1001CC330(v5, v7);
}

uint64_t sub_1001CDEF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1001CE0AC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();

  return _swift_task_switch(sub_1001CE11C, 0, 0);
}

id sub_1001CE11C()
{
  v111 = v0;
  v1 = [*(v0 + 96) invitationData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v105 = v5;
    v107 = v3;
    *(v0 + 120) = v3;
    *(v0 + 128) = v5;
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = type metadata accessor for Logger();
    *(v0 + 136) = sub_100015AFC(v8, qword_100529778);
    v9 = v6;
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v102 = *(v0 + 104);
      v13 = *(v0 + 96);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v14 = 136315906;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v110);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      if (*(v102 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v19 = 0x646F50656D6F48;
      }

      else
      {
        v19 = 7496003;
      }

      if (*(v102 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      v21 = sub_10002C9C8(v19, v20, &v110);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v110);
      *(v14 + 32) = 2112;
      *(v14 + 34) = v13;
      *v15 = v13;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s(%s)] %s with payload: %@", v14, 0x2Au);
      sub_1000038A4(v15, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v23 = objc_opt_self();
    v24 = [v23 sharedCenter];
    v25 = [v24 localActiveIdentity];
    *(v0 + 144) = v25;

    if (v25)
    {
      v26 = [v25 displayName];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        *(v0 + 152) = v28;
        *(v0 + 160) = v30;
        result = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) init];
        *(v0 + 168) = result;
        if (result)
        {
          v32 = result;
          v33 = [v25 protobuf];
          [v32 setIdentity:v33];

          v34 = [objc_opt_self() currentSettings];
          LOBYTE(v33) = [v34 supportGroupSessionHome];

          if (v33)
          {
            *(v0 + 176) = sub_1001C990C();
            v35 = swift_task_alloc();
            *(v0 + 184) = v35;
            *v35 = v0;
            v35[1] = sub_1001CEEC8;

            return sub_10037CF58();
          }

          else
          {
            v73 = *(v0 + 152);
            v109 = *(v0 + 120);
            type metadata accessor for MRGroupSessionError(0);
            v75 = v74;
            *(v0 + 56) = 12;
            v76 = swift_task_alloc();
            v77 = *(v0 + 160);
            *(v76 + 16) = v109;
            *(v76 + 32) = v73;
            *(v76 + 40) = v77;
            v78 = sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
            v79 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
            sub_10022CD94(v0 + 56, 0xD000000000000022, 0x800000010043A9F0, sub_1001D5D7C, v76, v75, v78, v79);
            v80 = *(v0 + 168);
            v81 = *(v0 + 104);

            v82 = *(v0 + 48);
            *(v0 + 200) = v82;
            v83 = v81;
            v84 = v80;
            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v85, v86))
            {
              v87 = *(v0 + 168);
              v104 = *(v0 + 104);
              v88 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              *v88 = 136315650;
              v89 = _typeName(_:qualified:)();
              v91 = v82;
              v92 = sub_10002C9C8(v89, v90, &v110);

              *(v88 + 4) = v92;
              *(v88 + 12) = 2080;
              if (*(v104 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
              {
                v93 = 0x646F50656D6F48;
              }

              else
              {
                v93 = 7496003;
              }

              if (*(v104 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
              {
                v94 = 0xE700000000000000;
              }

              else
              {
                v94 = 0xE300000000000000;
              }

              v95 = sub_10002C9C8(v93, v94, &v110);

              *(v88 + 14) = v95;
              v82 = v91;
              *(v88 + 22) = 2112;
              *(v88 + 24) = v87;
              *v106 = v87;
              v96 = v87;
              _os_log_impl(&_mh_execute_header, v85, v86, "[%s(%s)] Requesting to join session with inner request: %@", v88, 0x20u);
              sub_1000038A4(v106, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
            }

            v97 = *(v0 + 96);
            *(v0 + 72) = 6;
            v98 = swift_task_alloc();
            *(v0 + 208) = v98;
            v99 = *(v0 + 104);
            *(v98 + 16) = v97;
            *(v98 + 24) = v82;
            *(v98 + 32) = v99;
            v100 = swift_task_alloc();
            *(v0 + 216) = v100;
            v101 = type metadata accessor for NearbyGroup();
            *(v0 + 224) = v101;
            *v100 = v0;
            v100[1] = sub_1001CF58C;
            v113 = v79;

            return sub_10022CEBC(v0 + 64, v0 + 72, 0xD000000000000013, 0x800000010043AA20, &unk_10044ED40, v98, v75, v101);
          }
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v56 = *(v0 + 104);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v103 = *(v0 + 104);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v59 = 136315906;
      v61 = _typeName(_:qualified:)();
      v63 = sub_10002C9C8(v61, v62, &v110);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      if (*(v103 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v64 = 0x646F50656D6F48;
      }

      else
      {
        v64 = 7496003;
      }

      if (*(v103 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v65 = 0xE700000000000000;
      }

      else
      {
        v65 = 0xE300000000000000;
      }

      v66 = sub_10002C9C8(v64, v65, &v110);

      *(v59 + 14) = v66;
      *(v59 + 22) = 2080;
      *(v59 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v110);
      *(v59 + 32) = 2112;
      v67 = [v23 sharedCenter];
      v68 = [v67 localActiveIdentity];

      *(v59 + 34) = v68;
      *v60 = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%s(%s)] %s Can't request to join with no display name. Current identity: %@", v59, 0x2Au);
      sub_1000038A4(v60, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v70 = v69;
    *(v0 + 40) = 4;
    v71 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
    sub_10022CC44(v0 + 40, 0xD000000000000022, 0x800000010043A9C0, 0, v70, v71);
    swift_willThrow();
    sub_1001C4034(v107, v105);
  }

  else
  {
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = type metadata accessor for Logger();
    sub_100015AFC(v38, qword_100529778);
    v39 = v36;
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v108 = *(v0 + 104);
      v43 = *(v0 + 96);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v44 = 136315906;
      v46 = _typeName(_:qualified:)();
      v48 = sub_10002C9C8(v46, v47, &v110);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      if (*(v108 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v49 = 0x646F50656D6F48;
      }

      else
      {
        v49 = 7496003;
      }

      if (*(v108 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v50 = 0xE700000000000000;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_10002C9C8(v49, v50, &v110);

      *(v44 + 14) = v51;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v110);
      *(v44 + 32) = 2114;
      *(v44 + 34) = v43;
      *v45 = v43;
      v52 = v43;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%s(%s)] %s Token does not contain invitation: %{public}@", v44, 0x2Au);
      sub_1000038A4(v45, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v54 = v53;
    *(v0 + 24) = 12;
    v55 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
    sub_10022CC44(v0 + 24, 0xD000000000000021, 0x800000010043A970, 0, v54, v55);
    swift_willThrow();
  }

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1001CEEC8(uint64_t a1)
{
  v2 = *(*v1 + 176);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_1001CEFE4, 0, 0);
}

uint64_t sub_1001CEFE4()
{
  v49 = v0;
  v1 = (v0 + 192);
  *(v0 + 88) = *(v0 + 192);
  v2 = [*(v0 + 96) sharedSecret];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_100008318(&v48, v4, v6);

    v1 = (v0 + 88);
  }

  v7 = *v1;
  v8 = *(*v1 + 16);
  if (v8)
  {
    v9 = sub_1001D37A8(*(*v1 + 16), 0);
    v10 = sub_1001D5264(&v48, v9 + 4, v8, v7);
    sub_100045960(v48);
    if (v10 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_7:
  v11 = *(v0 + 168);
  sub_1001CFA38(v9);

  v12 = objc_allocWithZone(NSMutableArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithArray:isa];

  [v11 setOobKeys:v14];
  v15 = *(v0 + 152);
  v46 = *(v0 + 120);
  type metadata accessor for MRGroupSessionError(0);
  v17 = v16;
  *(v0 + 56) = 12;
  v18 = swift_task_alloc();
  v19 = *(v0 + 160);
  *(v18 + 16) = v46;
  *(v18 + 32) = v15;
  *(v18 + 40) = v19;
  v20 = sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
  v21 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
  sub_10022CD94(v0 + 56, 0xD000000000000022, 0x800000010043A9F0, sub_1001D5D7C, v18, v17, v20, v21);
  v22 = *(v0 + 168);
  v23 = *(v0 + 104);

  v24 = *(v0 + 48);
  *(v0 + 200) = v24;
  v25 = v23;
  v26 = v22;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 168);
    v47 = v24;
    v45 = *(v0 + 104);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v30 = 136315650;
    v32 = _typeName(_:qualified:)();
    v34 = sub_10002C9C8(v32, v33, &v48);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    if (*(v45 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v35 = 0x646F50656D6F48;
    }

    else
    {
      v35 = 7496003;
    }

    if (*(v45 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v36 = 0xE700000000000000;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = sub_10002C9C8(v35, v36, &v48);
    v24 = v47;

    *(v30 + 14) = v37;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v29;
    *v31 = v29;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%s(%s)] Requesting to join session with inner request: %@", v30, 0x20u);
    sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v39 = *(v0 + 96);
  *(v0 + 72) = 6;
  v40 = swift_task_alloc();
  *(v0 + 208) = v40;
  v41 = *(v0 + 104);
  *(v40 + 16) = v39;
  *(v40 + 24) = v24;
  *(v40 + 32) = v41;
  v42 = swift_task_alloc();
  *(v0 + 216) = v42;
  v43 = type metadata accessor for NearbyGroup();
  *(v0 + 224) = v43;
  *v42 = v0;
  v42[1] = sub_1001CF58C;
  v51 = v21;

  return sub_10022CEBC(v0 + 64, v0 + 72, 0xD000000000000013, 0x800000010043AA20, &unk_10044ED40, v40, v17, v43);
}

uint64_t sub_1001CF58C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1001CF9A8;
  }

  else
  {
    v2 = sub_1001CF6B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001CF6B0()
{
  v27 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136315906;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v26);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (*(v5 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v10 = 0x646F50656D6F48;
    }

    else
    {
      v10 = 7496003;
    }

    if (*(v5 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = sub_10002C9C8(v10, v11, &v26);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v26);
    *(v6 + 32) = 2080;
    *(v0 + 80) = v1;
    sub_1001D5F18(&qword_100521B08, &type metadata accessor for NearbyGroup, &protocol conformance descriptor for NearbyGroup);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10002C9C8(v13, v14, &v26);

    *(v6 + 34) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s(%s)] %s Successfully joined NearbyGroup: %s", v6, 0x2Au);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 144);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 96);
  type metadata accessor for MRDNearbyGroup(0);

  v22 = sub_1001E0DB4(v21);
  v23 = [objc_allocWithZone(MRDGroupSessionJoinResponse) initWithNearbyGroup:v22 publicSigningKeyData:0 joinToken:v20];

  sub_1001C4034(v19, v18);
  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_1001CF9A8()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_1001C4034(v3, v2);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_1001CFA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001D382C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001D382C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001C4088(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1001CFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  sub_1001BC5A8(&qword_100521760, &qword_10044EBE8);
  v5[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001CFC4C, 0, 0);
}

uint64_t sub_1001CFC4C()
{
  v1 = [*(v0 + 120) sharedSecret];
  if (v1)
  {

    v2 = &kMREventJoinSessionModeWHAAutoJoin;
  }

  else
  {
    v2 = &kMREventJoinSessionModeQRCode;
  }

  v3 = *v2;
  *(v0 + 200) = *v2;
  v4 = kMREventGroupSessionJoinRequestSent;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v0 + 48) = sub_1001D5F60;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1001CDC04;
  *(v0 + 40) = &unk_1004C1F90;
  v6 = _Block_copy((v0 + 16));
  v7 = v3;
  v8 = v4;

  MRAnalyticsSendEvent();
  _Block_release(v6);

  v11 = (&async function pointer to dispatch thunk of InvitationRequest.requestApproval() + async function pointer to dispatch thunk of InvitationRequest.requestApproval());
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_1001CFDF8;

  return v11();
}

uint64_t sub_1001CFDF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_1001D0894;
  }

  else
  {
    v4 = sub_1001CFF0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

id sub_1001CFF0C()
{
  v66 = v0;
  v1 = v0 + 8;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = v0[17];
  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v3;
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[27];
    v64 = v4;
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v11 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, v65);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = *(v10 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source);
    v1 = v0 + 8;
    if (v16 == 1)
    {
      v17 = 0x646F50656D6F48;
    }

    else
    {
      v17 = 7496003;
    }

    if (v16 == 1)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_10002C9C8(v17, v18, v65);
    v4 = v64;

    *(v11 + 14) = v19;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v9;
    *v12 = v9;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] Got join response: %@", v11, 0x20u);
    sub_1000038A4(v12, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v21 = v0[27];
  v22 = kMREventGroupSessionJoinResponseReceived;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v0[12] = sub_1001D600C;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_1001CDC04;
  v0[11] = &unk_1004C1FE0;
  v24 = _Block_copy(v1);
  v21;
  v25 = v22;

  MRAnalyticsSendEvent();
  _Block_release(v24);

  InvitationJoinResponse.sessionIdentifier.getter();
  if (!v26)
  {
    goto LABEL_14;
  }

  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[19];
  UUID.init(uuidString:)();
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v30 = v0[19];

    sub_1000038A4(v30, &qword_100521760, &qword_10044EBE8);
LABEL_14:
    v31 = v0[27];
    v32 = v0[25];
    sub_1001D60D8();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v34 = v0[17];
    sub_100015AFC(v4, qword_100529778);
    v35 = v34;
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[17];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v39 = 136315650;
      v41 = _typeName(_:qualified:)();
      v43 = sub_10002C9C8(v41, v42, v65);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      if (*(v38 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v44 = 0x646F50656D6F48;
      }

      else
      {
        v44 = 7496003;
      }

      if (*(v38 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v45 = 0xE700000000000000;
      }

      else
      {
        v45 = 0xE300000000000000;
      }

      v46 = sub_10002C9C8(v44, v45, v65);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v47;
      *v40 = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%s(%s)] failed to request access, reason: %@", v39, 0x20u);
      sub_1000038A4(v40, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    swift_willThrow();

    v48 = v0[1];

    return v48();
  }

  v50 = *(v0[21] + 32);
  v50(v0[24], v0[19], v0[20]);
  result = [objc_opt_self() currentSettings];
  if (result)
  {
    v51 = result;
    v53 = v0[23];
    v52 = v0[24];
    v54 = v0[21];
    v55 = v0[20];

    [v51 groupSessionNearbyGroupJoinTimeout];

    v56 = static Duration.seconds(_:)();
    v58 = v57;
    (*(v54 + 16))(v53, v52, v55);
    v59 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v60 = swift_allocObject();
    v0[29] = v60;
    v50(v60 + v59, v53, v55);
    v61 = swift_task_alloc();
    v0[30] = v61;
    v62 = type metadata accessor for NearbyGroup();
    *v61 = v0;
    v61[1] = sub_1001D06A8;
    v63 = v0[14];

    return withTimeout<A>(duration:_:)(v63, v56, v58, &unk_10044ED68, v60, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D06A8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1001D0B3C;
  }

  else
  {
    v2 = sub_1001D07DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001D07DC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  (*(v4 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001D0894()
{
  v19 = v0;

  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529778);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v7 = 136315650;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v12 = 0x646F50656D6F48;
    }

    else
    {
      v12 = 7496003;
    }

    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10002C9C8(v12, v13, v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s(%s)] failed to request access, reason: %@", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001D0B3C()
{
  v23 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  (*(v4 + 8))(v1, v3);
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 136);
  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529778);
  v7 = v5;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v11 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (*(v10 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v16 = 0x646F50656D6F48;
    }

    else
    {
      v16 = 7496003;
    }

    if (*(v10 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_10002C9C8(v16, v17, v22);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s(%s)] failed to request access, reason: %@", v11, 0x20u);
    sub_1000038A4(v12, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001D0E08(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1001BC5A8(&qword_100521760, &qword_10044EBE8);
  v2[9] = swift_task_alloc();
  v4 = sub_1001BC5A8(&qword_100521B28, &qword_10044ED70);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1001BC5A8(&qword_100521B30, &qword_10044ED78);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0FDC, 0, 0);
}

uint64_t sub_1001D0FDC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  type metadata accessor for NearbyGroup();
  v8 = *(v6 + 16);
  v0[16] = v8;
  v0[17] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  static NearbyGroup.groups(service:identifier:)();
  sub_1000038A4(v4, &qword_100521760, &qword_10044EBE8);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1001D1164;
  v10 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v10);
}

uint64_t sub_1001D1164()
{

  return _swift_task_switch(sub_1001D1260, 0, 0);
}

uint64_t sub_1001D1260()
{
  v38 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 128);
    v3 = *(v0 + 64);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100529778);
    v2(v3, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 64);
    if (v9)
    {
      log = v7;
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);
      v36 = *(v0 + 112);
      v16 = *(v0 + 40);
      v35 = *(v0 + 104);
      v17 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v17 = 136315394;
      v32 = v8;
      NearbyGroup.id.getter();
      sub_1001D5F18(&qword_100521B38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v11;
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v15, v16);
      v22 = sub_10002C9C8(v18, v20, v37);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v21(v13, v16);
      v26 = sub_10002C9C8(v23, v25, v37);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v32, "Observed group: %s, waiting for %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v36 + 8))(v33, v35);
    }

    else
    {
      v29 = *(v0 + 40);
      v30 = *(v0 + 48);

      (*(v30 + 8))(v13, v29);
      (*(v10 + 8))(v11, v12);
    }

    **(v0 + 24) = v1;

    v28 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    sub_1001D60D8();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1001D17D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001D1894;

  return sub_1001CE0AC(v6);
}

uint64_t sub_1001D1894(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_1001D1A4C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  p_inst_meths = (&OBJC_PROTOCOL___MRVolumeUIControllable + 24);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v10 = 136315906;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v57);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (*&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v57);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_10002C9C8(0xD000000000000033, 0x800000010043A930, &v57);
    *(v10 + 32) = 2114;
    *(v10 + 34) = v6;
    *v11 = v6;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] %s - %{public}@", v10, 0x2Au);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    p_inst_meths = &OBJC_PROTOCOL___MRVolumeUIControllable.inst_meths;
  }

  sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
  v19 = *(p_inst_meths[322] + v5);
  v20 = v6;
  v21 = sub_1001D2294(v20, v19);
  if (v21)
  {
    v22 = v21;
    __chkstk_darwin(v21);
    sub_100013378(sub_1001D5B84);
    if (v57 == 1)
    {
      v23 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v24);
      sub_100013378(sub_1001D5C60);

      v25 = v5;
      v26 = v22;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v29 = 136315650;
        v31 = _typeName(_:qualified:)();
        v33 = sub_10002C9C8(v31, v32, &v57);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        if (v19 == 1)
        {
          v34 = 0x646F50656D6F48;
        }

        else
        {
          v34 = 7496003;
        }

        if (v19 == 1)
        {
          v35 = 0xE700000000000000;
        }

        else
        {
          v35 = 0xE300000000000000;
        }

        v36 = sub_10002C9C8(v34, v35, &v57);

        *(v29 + 14) = v36;
        *(v29 + 22) = 2114;
        *(v29 + 24) = v26;
        *v30 = v22;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "[%s(%s)] Notifying of discovered session - %{public}@", v29, 0x20u);
        sub_1000038A4(v30, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      if (*&v25[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate])
      {
        [swift_unknownObjectRetain() listener:v25 didDiscoverSession:v26];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v50 = v22;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543362;
        *(v53 + 4) = v50;
        *v54 = v22;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Already notified for session: %{public}@. Ignoring.", v53, 0xCu);
        sub_1000038A4(v54, &qword_100521870, &unk_10044EA70);
      }

      else
      {
      }
    }
  }

  else
  {
    v38 = v5;
    v39 = v20;
    v56 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v41 = 136315906;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10002C9C8(v43, v44, &v57);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      if (v19 == 1)
      {
        v46 = 0x646F50656D6F48;
      }

      else
      {
        v46 = 7496003;
      }

      if (v19 == 1)
      {
        v47 = 0xE700000000000000;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v48 = sub_10002C9C8(v46, v47, &v57);

      *(v41 + 14) = v48;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_10002C9C8(0xD000000000000033, 0x800000010043A930, &v57);
      *(v41 + 32) = 2114;
      *(v41 + 34) = v39;
      *v42 = v39;
      v49 = v39;
      _os_log_impl(&_mh_execute_header, v56, v40, "[%s(%s)] %s Failed to parse advertisement: %{public}@", v41, 0x2Au);
      sub_1000038A4(v42, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1001D2294(void *a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = NearbyAdvertisement.contactID.getter();
  if (v7)
  {
    v8 = sub_1001E56B0(v6, v7);
    if (v9 == 1)
    {
      goto LABEL_4;
    }

    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;

    sub_1001D5738(v12, v13, v14, v15);
    if (!v13)
    {
      goto LABEL_4;
    }

LABEL_9:
    dispatch thunk of NearbyAdvertisement.deviceColor.getter();
    v51 = v5;
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v32 = [(objc_class *)isa stringValue];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v33;
    }

    v34 = NearbyAdvertisement.userInfo.getter();
    if (v35 >> 60 == 15)
    {
      v36 = dispatch thunk of NearbyAdvertisement.deviceModel.getter();
      if (v37)
      {
        v38 = sub_1001D55F8(v36, v37);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v39 = v34;
      v40 = v35;
      v41 = sub_1001D5514(v34, v35);
      v38 = sub_100367638(v41);
      sub_100045968(v39, v40);
    }

    dispatch thunk of NearbyAdvertisement.deviceModel.getter();
    v43 = v42;
    v44 = String._bridgeToObjectiveC()();

    if (v43)
    {
      v45 = String._bridgeToObjectiveC()();

      if (v29)
      {
LABEL_21:
        v46 = String._bridgeToObjectiveC()();

LABEL_24:
        v47 = [objc_allocWithZone(MRGroupSessionHostInfo) initWithRouteType:v38 displayName:v44 modelIdentifier:v45 color:v46];

        v48 = objc_allocWithZone(ObjCClassFromMetadata);
        NearbyAdvertisement.identifier.getter();
        v49 = String._bridgeToObjectiveC()();

        v50 = [v48 initWithIdentifier:v49 hostInfo:v47 source:a2];

        return v50;
      }
    }

    else
    {
      v45 = 0;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    v46 = 0;
    goto LABEL_24;
  }

  NearbyAdvertisement.displayName.getter();
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529778);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52 = v22;
    *v20 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, &v52);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Failed to resolve contact information for advertisement: %@", v20, 0x16u);
    sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v22);
  }

  else
  {
  }

  return 0;
}

void sub_1001D2680(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v9 = 136315906;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v44);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source];
    if (v14 == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (v14 == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v44);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_10002C9C8(0xD00000000000002DLL, 0x800000010043A900, &v44);
    *(v9 + 32) = 2114;
    *(v9 + 34) = v6;
    *v10 = v6;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] %s - %{public}@", v9, 0x2Au);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v19 = NearbyAdvertisement.identifier.getter();
  v21 = v20;
  v44 = 0;
  v42 = __chkstk_darwin(v19);
  sub_100013378(sub_1001D5A24);
  v22 = v44;
  if (v44)
  {
    v23 = v44;
  }

  else
  {
    sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
    v24 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source];
    v25 = sub_1001D2294(v6, v24);
    if (v25)
    {
      v23 = v25;
    }

    else
    {
      NearbyAdvertisement.identifier.getter();
      v26 = [objc_allocWithZone(MRGroupSessionHostInfo) init];
      v27 = objc_allocWithZone(MRDiscoveredGroupSession);
      v28 = String._bridgeToObjectiveC()();

      v23 = [v27 initWithIdentifier:v28 hostInfo:v26 source:v24];
    }
  }

  v29 = v22;

  v30 = v5;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v33 = 136315650;
    v34 = _typeName(_:qualified:)();
    v36 = sub_10002C9C8(v34, v35, v43);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    if (*&v30[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v37 = 0x646F50656D6F48;
    }

    else
    {
      v37 = 7496003;
    }

    if (*&v30[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v38 = 0xE700000000000000;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    v39 = sub_10002C9C8(v37, v38, v43);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2082;
    v40 = sub_10002C9C8(v42, v21, v43);

    *(v33 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%s(%s)] Notifying of lost session - %{public}s", v33, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = *&v30[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate];
  if (v41)
  {
    [v41 listener:v30 didLoseSession:v23];
  }
}

void sub_1001D2C0C(void *a1)
{
  sub_1001BC5A8(&unk_100521AE0, &unk_10044ED20);
  sub_100013378(sub_1001D5958);
  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = v14[1];
  v3 = *(v14[0] + 16);
  v13 = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = sub_1001D37A8(v3, 0);
  v5 = sub_1001D53BC(v14, v4 + 4, v3, v14[0]);
  v6 = v14[0];

  sub_100045960(v6);
  if (v5 == v3)
  {
    a1 = v13;
LABEL_5:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setDiscoveredGroupSessions:isa];

    v8 = *(v2 + 16);
    if (!v8)
    {
LABEL_8:
      v12 = Array._bridgeToObjectiveC()().super.isa;

      [a1 setNotifiedGroupSessions:v12];

      return;
    }

    v9 = sub_1001D37A8(*(v2 + 16), 0);
    v10 = sub_1001D53BC(v14, v9 + 4, v8, v2);
    v11 = v14[0];

    sub_100045960(v11);
    if (v10 == v8)
    {
      a1 = v13;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001D2EB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001D5514(a1, a2);
  sub_1001C4034(a1, a2);
  return v4;
}

Swift::Int sub_1001D2F74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D2FE8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001D303C(uint64_t a1)
{
  v2 = sub_1001D5F18(&qword_100521BF8, type metadata accessor for MRGroupSessionError, &unk_1004507A8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001D30A8(uint64_t a1)
{
  v2 = sub_1001D5F18(&qword_100521BF8, type metadata accessor for MRGroupSessionError, &unk_1004507A8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001D3114(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001D31A0(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001D320C(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001D3278(void *a1, uint64_t a2)
{
  v4 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001D332C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001D33A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1001D3408@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1001D3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError, &unk_1004507E8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001D34BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1001D6648(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

    return v21;
  }

LABEL_8:
  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void *sub_1001D37A8(uint64_t a1, uint64_t a2)
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

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1001D382C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D384C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D384C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&unk_100521B18, &unk_10044ED50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1001D395C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100045960(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1001D43F4(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NearbyAdvertisement();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

Swift::Int sub_1001D3B8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NearbyAdvertisement();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001D457C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_1001D3D6C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = v4 + 7;
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for NearbyAdvertisement();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for NearbyAdvertisement();
  v27 = *(v4[6] + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1001D4A28(v63, v61, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1001D47A4(v57, v61, v4, v7, &v73);
  v59 = v58;

  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_100045960(v53);
  return v4;
}

uint64_t sub_1001D43F4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1001D4C1C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for NearbyAdvertisement();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D4D74();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1001D4EC4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

Swift::Int sub_1001D457C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1001D47A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for NearbyAdvertisement();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1001D4A28(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for NearbyAdvertisement();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int sub_1001D4A28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001D4C1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1001D3B8C(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for NearbyAdvertisement();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1001D4EC4(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001D4D74()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1001D4EC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1001D5064(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for NearbyAdvertisement();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NearbyAdvertisement();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_1001D5264(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001D53BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001D5514(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v3 = result;
    if (result > result >> 32)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
LABEL_20:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, v6))
    {
      goto LABEL_17;
    }

    v7 = (v3 - v6 + v5);
    result = __DataStorage._length.getter();
    if (v7)
    {
      return *v7;
    }

    __break(1u);
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_18:
      __DataStorage._length.getter();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      __DataStorage._length.getter();
      if (v7)
      {
        return *v7;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1001D55F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010043AB00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else
  {
    sub_1001D6868();
    if (StringProtocol.contains<A>(_:)())
    {

      return 8;
    }

    else
    {
      v3 = StringProtocol.contains<A>(_:)();

      if (v3)
      {
        return 11;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1001D5738(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_100045968(a3, a4);
  }
}

unint64_t sub_1001D5788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000698C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1001D588C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001D5958@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(**(v3 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements) + 192);

  v6 = v4(v5);

  *a1 = v6;
  v7 = *(**(v3 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions) + 192);

  v9 = v7(v8);

  a1[1] = v9;
  return result;
}

uint64_t sub_1001D5A24()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements);
  v15 = v3;
  v16 = 0;
  v14 = v1;
  v6 = *(*v5 + 216);

  v6(&v16, &v14);

  v7 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions;
  v8 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v14 = v1;
  v15 = v3;
  v9 = *(*v8 + 208);

  v9(&v16, &v14);

  v10 = *v4;
  *v4 = v16;

  v11 = *(v2 + v7);
  v15 = v3;
  v16 = 0;
  v14 = v1;
  v12 = *(*v11 + 216);

  v12(&v16, &v14);
}

void sub_1001D5B84(BOOL *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v10[0] = v6;
  v10[1] = v8;
  (*(*v4 + 208))(&v11, v10);

  v9 = v11;
  if (v11)
  {
  }

  *a1 = v9 == 0;
}

uint64_t sub_1001D5C60()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements);
  v14 = v4;
  v15 = v3;
  v13 = v2;
  v7 = *(*v6 + 216);

  v8 = v3;
  v7(&v15, &v13);

  v9 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v14 = v4;
  v15 = v5;
  v13 = v2;
  v10 = *(*v9 + 216);

  v11 = v5;
  v10(&v15, &v13);
}

uint64_t sub_1001D5D7C@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = [*(v1 + 48) data];
  if (v6)
  {
    v7 = v6;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);

  sub_1001C3FE0(v5, v4);
  result = InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001D5E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009F30;

  return sub_1001CFB38(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D5F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001D5F60()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  v4 = v1;
  v5 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v5;
}

unint64_t sub_1001D600C()
{
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  InvitationJoinResponse.sessionIdentifier.getter();
  if (v2)
  {
  }

  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v3 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v3;
}

unint64_t sub_1001D60D8()
{
  result = qword_100529790;
  if (!qword_100529790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529790);
  }

  return result;
}

uint64_t sub_1001D612C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F34;

  return sub_1001D0E08(a1, v1 + v5);
}

uint64_t sub_1001D6208@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements];
  v26 = v3;
  v7 = *(*v6 + 208);

  v7(&v28, &v26);

  if (v28)
  {
    *a1 = v28;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v26 = 0xD000000000000026;
    v27 = 0x800000010043AA90;
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    String.append(_:)(v9);
    v11 = v26;
    v10 = v27;
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100015AFC(v12, qword_100529778);
    v13 = v4;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v16 = 136315906;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v26);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      if (*&v13[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v20 = 0x646F50656D6F48;
      }

      else
      {
        v20 = 7496003;
      }

      if (*&v13[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }

      v22 = sub_10002C9C8(v20, v21, &v26);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, &v26);
      *(v16 + 32) = 2082;
      *(v16 + 34) = sub_10002C9C8(v11, v10, &v26);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s(%s)] %s %{public}s", v16, 0x2Au);
      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v24 = v23;
    v28 = 2;
    v25 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError, &unk_100450638);
    sub_10022CC44(&v28, v11, v10, 0, v24, v25);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001D656C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009F30;

  return sub_1001CD0B8(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D6648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001D66B8()
{
  if (!qword_100521B78)
  {
    v0 = type metadata accessor for InvitationRequest<>.Context();
    if (!v1)
    {
      atomic_store(v0, &qword_100521B78);
    }
  }
}

uint64_t sub_1001D6700()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F34;

  return sub_1001D17D0(v2, v3, v4);
}

uint64_t sub_1001D67B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001CDE1C(v2, v3, v4);
}

unint64_t sub_1001D6868()
{
  result = qword_100521B80;
  if (!qword_100521B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521B80);
  }

  return result;
}

uint64_t sub_1001D68BC()
{
  v2 = *(sub_1001BC5A8(&qword_100521B98, &qword_10044EE30) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_1001CA014(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_1001D69D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001CB7F4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1001D6A80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  v6 = sub_1001CB19C(v5, v1);

  *v2 = v6;

  v7 = *v3;

  *v4 = sub_1001CB19C(v1, v7);

  *v3 = v1;
}

uint64_t getEnumTagSinglePayload for NearbySessionsListenerImplementation.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbySessionsListenerImplementation.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001D6EBC()
{
  result = qword_100521C20;
  if (!qword_100521C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521C20);
  }

  return result;
}

unint64_t sub_1001D6FA4()
{
  result = qword_1005297A0[0];
  if (!qword_1005297A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005297A0);
  }

  return result;
}

uint64_t sub_1001D7010(void *a1)
{
  v1 = a1;
  v2 = sub_1001D7044();

  return v2;
}

uint64_t sub_1001D70B4(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1001D8AC4(a1, v6);
  if (!v7)
  {
    sub_100037768(v6);
    goto LABEL_5;
  }

  type metadata accessor for LRUDictionary.Wrapper(0, v2[10], v2[11], v2[12]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_1001D71D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1001D70B4(v8);

  sub_100037768(v8);
  return v6 & 1;
}

id sub_1001D7260()
{
  v1 = type metadata accessor for LRUDictionary.Wrapper(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D73A0(void (*a1)(void, void, void, void), void (*a2)(void))
{
  a1(0, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  sub_100013378(a2);
  return v5;
}

uint64_t sub_1001D7444(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001D7484(a1);
  return v2;
}

void *sub_1001D7484(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[10];
  v6 = v4[11];
  swift_getTupleTypeMetadata2();
  v7 = static Array._allocateUninitialized(_:)();
  v8 = sub_1001D85A4(v7, v5, v6, v4[12]);

  v2[3] = v8;
  v2[4] = [objc_allocWithZone(NSMutableOrderedSet) init];
  type metadata accessor for Lock();
  v2[5] = sub_10036C394();
  v2[2] = a1;
  return v2;
}

uint64_t sub_1001D75F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  swift_beginAccess();

  Dictionary.subscript.getter();

  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a3, v9, v5);
    sub_1001D7E74(a2);
    v11 = 0;
  }

  return (*(v10 + 56))(a3, v11, 1, v5);
}

uint64_t sub_1001D77FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1001D8924();
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1001D78C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *(v16 + 80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v8);
  v14 = &v16 - v13;
  if ([a1[4] count] >= a1[2])
  {
    sub_1001D7F50();
  }

  sub_1001D7E74(a2);
  (*(v12 + 16))(v14, a2, v11);
  (*(v7 + 16))(v10, a3, v6);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

void (*sub_1001D7AF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  v6 = type metadata accessor for Optional();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[13] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v4[14] = v9;
  v10 = *(v5 + 80);
  v4[15] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v4[16] = v11;
  if (&_swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v4[17] = v13;
  (*(v12 + 16))();
  sub_1001D7574();
  return sub_1001D7CCC;
}

void sub_1001D7CCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v9 = *(*a1 + 88);
  if (a2)
  {
    v10 = v2[5];
    (*(v2[12] + 16))(v2[13], v2[14], v2[11]);
    v2[2] = v10;
    v2[3] = v3;
    v2[4] = v7;
    sub_100013378(sub_1001D8B34);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    v2[8] = v2[5];
    v2[9] = v3;
    v2[10] = v5;
    sub_100013378(sub_1001D8B34);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1001D7E74(uint64_t a1)
{
  sub_10036C41C();
  v2 = *(v1 + 32);
  [v2 removeObject:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v3 = *(v1 + 32);
  [v3 insertObject:_bridgeAnythingToObjectiveC<A>(_:)() atIndex:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001D7F50()
{
  v21 = *v0;
  v1 = *(v21 + 88);
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2 - 8);
  v20 = &v20 - v3;
  v4 = *(v21 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = *(v4 - 8);
  v11 = __chkstk_darwin(v7);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_10036C41C();
  if ([v0[4] lastObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001C4088(&v22, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  sub_1001BC5A8(&qword_100522890, &qword_100450610);
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (v16)
  {
    v17(v9, 0, 1, v4);
    (*(v10 + 32))(v15, v9, v4);
    v18 = v0[4];
    [v18 removeObject:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    (*(v10 + 16))(v13, v15, v4);
    (*(*(v1 - 8) + 56))(v20, 1, 1, v1);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    return (*(v10 + 8))(v15, v4);
  }

  else
  {
    v17(v9, 1, 1, v4);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1001D832C()
{

  return v0;
}

uint64_t sub_1001D835C()
{
  sub_1001D832C();

  return swift_deallocClassInstance();
}

unint64_t sub_1001D8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001D83EC(a1, v6, a2, a3);
}

unint64_t sub_1001D83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1001D85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1001D8390(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1001D88A8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t sub_1001D8A18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D8AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100522890, &qword_100450610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1001D8BC4()
{
  if (qword_100529A30 != -1)
  {
    swift_once();
  }

  return &qword_100538350;
}

uint64_t *sub_1001D8C64()
{
  if (qword_100529A40 != -1)
  {
    swift_once();
  }

  return &qword_100538360;
}

uint64_t sub_1001D8CB4()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538368 = result;
  return result;
}

uint64_t *sub_1001D8D1C()
{
  if (qword_100529A48 != -1)
  {
    swift_once();
  }

  return &qword_100538368;
}

uint64_t sub_1001D8D6C()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538370 = result;
  return result;
}

uint64_t *sub_1001D8DD4()
{
  if (qword_100529A50 != -1)
  {
    swift_once();
  }

  return &qword_100538370;
}

uint64_t sub_1001D8E44()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538380 = result;
  return result;
}

uint64_t sub_1001D8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001D8F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001D8FB4()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538398 = result;
  return result;
}

uint64_t *sub_1001D901C()
{
  if (qword_100529A78 != -1)
  {
    swift_once();
  }

  return &qword_100538398;
}

uint64_t sub_1001D9140(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_1001C4098(v8, a2);
  sub_100015AFC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

uint64_t sub_1001D9224(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  sub_1001C4098(v8, a2);
  v9 = sub_100015AFC(v8, a2);
  v10 = [objc_opt_self() currentSettings];
  v11 = [v10 verboseMediaControlLogging];

  if (v11)
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_100015AFC(v12, a4);
    v20 = *(v12 - 8);
    (*(v20 + 16))(v9, v13, v12);
    v14 = *(v20 + 56);
    v15 = v9;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for Logger();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = v9;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_1001D93F0()
{
  result = qword_100521CA0;
  if (!qword_100521CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521CA0);
  }

  return result;
}

id sub_1001D9804(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CryptoUtils();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001D9838(Class *a1, void **a2)
{
  v30 = a2;
  v3 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  Curve25519.Signing.PrivateKey.init()();
  Curve25519.Signing.PrivateKey.publicKey.getter();
  sub_1001D9C8C(v9, v7);
  v10 = *(v4 + 56);
  v11 = Curve25519.Signing.PrivateKey.rawRepresentation.getter();
  v13 = v12;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v11, v13);
  v15 = type metadata accessor for Curve25519.Signing.PrivateKey();
  v16 = *(v15 - 8);
  v28 = *(v16 + 8);
  v29 = v16 + 8;
  v28(v7, v15);
  v17 = *a1;
  *a1 = isa;

  v18 = type metadata accessor for Curve25519.Signing.PublicKey();
  v19 = *(*(v18 - 8) + 8);
  v19(&v7[v10], v18);
  sub_1001D9C8C(v9, v7);
  v20 = *(v4 + 56);
  v21 = Curve25519.Signing.PublicKey.rawRepresentation.getter();
  v23 = v22;
  v24 = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v21, v23);
  v19(&v7[v20], v18);
  v25 = *v30;
  *v30 = v24;

  sub_1001D9CFC(v9);
  return (v28)(v7, v15);
}

unint64_t sub_1001D9A44()
{
  result = qword_100521CA8;
  if (!qword_100521CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521CA8);
  }

  return result;
}

Class sub_1001D9A98(uint64_t a1, unint64_t a2, Class isa, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = a4;
  v12 = type metadata accessor for Curve25519.Signing.PublicKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5;
  v20 = a6;
  sub_1001C3FE0(a5, a6);
  Curve25519.Signing.PublicKey.init<A>(rawRepresentation:)();
  if (!v6)
  {
    sub_1001D9C40();
    v19 = a1;
    v20 = a2;
    v18[0] = isa;
    v18[1] = v21;
    sub_1001D9A44();
    v16 = Curve25519.Signing.PublicKey.isValidSignature<A, B>(_:for:)();
    isa = NSNumber.init(BOOLeanLiteral:)(v16 & 1).super.super.isa;
    (*(v13 + 8))(v15, v12);
  }

  return isa;
}

unint64_t sub_1001D9C40()
{
  result = qword_100521CD8;
  if (!qword_100521CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521CD8);
  }

  return result;
}

uint64_t sub_1001D9C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9CFC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001D9DB0(void *a1)
{
  v2 = [a1 origin];
  v3 = [v1 originClientForOrigin:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 activeNowPlayingClient];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 activePlayerClient];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isPlaying];

      v3 = v5;
      v5 = v7;
    }

    else
    {
      v8 = 0;
    }

    v3 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1001D9EBC()
{
  type metadata accessor for RouteRecommendationSuppressionController();
  v0 = [objc_opt_self() sharedMonitor];
  v5[3] = sub_100018D7C(0, &qword_100521CE8, off_1004B3090);
  v5[4] = &off_1004C2480;
  v5[0] = v0;
  v1 = [objc_opt_self() server];
  v2 = [v1 nowPlayingServer];

  v4[3] = sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v4[4] = &off_1004C2490;
  v4[0] = v2;
  return sub_10034E970(v5, v4);
}

uint64_t sub_1001D9FB4()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529AB8);
  sub_100015AFC(v0, qword_100529AB8);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

uint64_t sub_1001DA060(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001DA0C0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

void sub_1001DA158(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1001DA27C()
{
  sub_1001BC5A8(&qword_100521D08, &unk_10044F120);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id SystemGroupSessionRemoteControlService.__allocating_init(delegate:)(unint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1001DF7D8(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SystemGroupSessionRemoteControlService.init(delegate:)(unint64_t a1)
{
  v1 = sub_1001DF7D8(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1001DA3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a2;
  *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask) = sub_1001BF864(0, 0, v6, &unk_10044F1F0, v9);
}

uint64_t sub_1001DA51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_1001BC5A8(&qword_100521DD0, &qword_10044F1F8);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = sub_1001BC5A8(&qword_100521DD8, &unk_10044F200);
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA708, 0, 0);
}

uint64_t sub_1001DA708()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  type metadata accessor for SystemRemoteControlActivity();
  sub_100004810(&qword_100521DC8, type metadata accessor for SystemRemoteControlActivity, &unk_10044F958);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_10000462C(&qword_100521DE0, &qword_100521DD8, &unk_10044F200, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1001DA88C;
  v6 = v0[25];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 11, v6, v4);
}

uint64_t sub_1001DA88C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1001DAD64;
  }

  else
  {
    v2 = sub_1001DA9A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DA9C4()
{
  v1 = v0[30];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = v0[21];
      v3 = v0[18];
      v17 = v0[20];
      v18 = v0[19];
      v4 = v0[16];
      v5 = v0[15];
      v16 = v0[17];
      v6 = Strong;
      v7 = swift_allocObject();
      v7[2] = v1;
      v7[3] = v6;
      v7[4] = v5;
      v0[6] = sub_1001E0824;
      v0[7] = v7;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003D98;
      v0[5] = &unk_1004C26D0;
      v8 = _Block_copy(v0 + 2);

      v15 = v6;
      static DispatchQoS.unspecified.getter();
      v0[13] = _swiftEmptyArrayStorage;
      sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v8);

      (*(v16 + 8))(v3, v4);
      (*(v17 + 8))(v14, v18);

      v9 = sub_10000462C(&qword_100521DE0, &qword_100521DD8, &unk_10044F200, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
      v10 = swift_task_alloc();
      v0[28] = v10;
      *v10 = v0;
      v10[1] = sub_1001DA88C;
      v11 = v0[25];

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 11, v11, v9);
    }

    (*(v0[26] + 8))(v0[27], v0[25]);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001DAD64()
{
  *(v0 + 96) = *(v0 + 232);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1001DADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100015AFC(v9, qword_100529AB8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24[1] = a2;
    v13 = v12;
    v25 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, &v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    GroupSession.id.getter();
    sub_100004810(&qword_100521B38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_10002C9C8(v17, v19, &v25);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    v24[2] = a1;
    sub_1001BC5A8(&qword_100521DE8, &qword_10044F210);
    sub_10000462C(&qword_100521DF0, &qword_100521DE8, &qword_10044F210, &protocol conformance descriptor for GroupSession<A>);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_10002C9C8(v21, v22, &v25);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s]<%{public}s> Got session: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  sub_1001DCFA0(a1);
  GroupSession.join()();
}

uint64_t sub_1001DB164()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1001DFAEC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C2518;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_1001DB4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = ObjectType;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1001DB770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_1001BC5A8(&qword_100521DA0, &qword_10044F1C0);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity;
  if (!*(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity))
  {
    v60 = v6;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v15 = v14;
    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() localDeviceInfo];
    v17 = [v16 name];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v20;
      v59 = v19;
    }

    else
    {
      v58 = 0xE000000000000000;
      v59 = 0;
    }

    v21 = [v16 identifier];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v24;
      v57 = v23;
    }

    else
    {
      v56 = 0xE000000000000000;
      v57 = 0;
    }

    v61 = v15;
    v62 = a2;
    v25 = [v16 groupUID];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v30 = [v16 modelID];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    sub_1003A0858(v59, v58, v57, v56, v27, v29, 3, 14, v66, v32, v34);

    type metadata accessor for SystemRemoteControlActivity();
    v35 = v61;

    sub_1002132D0(v63, v35, v66);
    v37 = v36;
    *(a1 + v13) = v36;

    v65 = _swiftEmptyArrayStorage;
    sub_10000462C(&qword_100521DA8, &qword_100521DA0, &qword_10044F1C0, &protocol conformance descriptor for GroupActivityAdvertisement<A>.Destinations);
    sub_1001BC5A8(&qword_100521DB0, &qword_10044F1C8);
    sub_10000462C(&qword_100521DB8, &qword_100521DB0, &qword_10044F1C8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v37;
    sub_1001BC5A8(&qword_100521DC0, &qword_10044F1D0);
    swift_allocObject();

    v38 = GroupActivityAdvertisement.init(activity:destinations:)();
    *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement) = v38;

    v39 = type metadata accessor for TaskPriority();
    v40 = v60;
    (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v43 = v62;
    v42 = v63;
    v41[4] = v37;
    v41[5] = v42;
    v41[6] = v35;
    v41[7] = v38;
    v41[8] = v43;

    sub_1001BF864(0, 0, v40, &unk_10044F1E0, v41);

    if (qword_100529AB0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100015AFC(v44, qword_100529AB8);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v47 = 136315650;
      v48 = _typeName(_:qualified:)();
      v50 = v35;
      v51 = sub_10002C9C8(v48, v49, &v65);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = sub_10002C9C8(v63, v50, &v65);

      *(v47 + 14) = v52;
      *(v47 + 22) = 2080;
      v64 = v38;

      v53 = String.init<A>(describing:)();
      v55 = sub_10002C9C8(v53, v54, &v65);

      *(v47 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%s]<%{public}s> Began advertising: %s", v47, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001DBE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = swift_task_alloc();
  v8[7] = v9;
  v10 = type metadata accessor for SystemRemoteControlActivity();
  v11 = sub_100004810(&qword_100521DC8, type metadata accessor for SystemRemoteControlActivity, &unk_10044F958);
  *v9 = v8;
  v9[1] = sub_1001DBF0C;

  return GroupActivity.activate()(v10, v11);
}

uint64_t sub_1001DBF0C(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1001DC390;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_1001DC038;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001DC038()
{
  v14 = v0;
  if ((*(v0 + 88) & 1) == 0)
  {
    if (qword_100529AB0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_100529AB8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 24);
      v4 = *(v0 + 32);
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = _typeName(_:qualified:)();
      v9 = sub_10002C9C8(v7, v8, &v13);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_10002C9C8(v5, v4, &v13);
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s]<%{public}s> Failed to activate activity", v6, 0x16u);
      swift_arrayDestroy();
    }
  }

  v12 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise());
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1001DC25C;

  return v12();
}

uint64_t sub_1001DC25C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001DC638, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001DC390()
{
  v16 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529AB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v13 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v4, v13, &v15);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s]<%{public}s> Failed to activate activity: %@", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise());
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1001DC25C;

  return v14();
}