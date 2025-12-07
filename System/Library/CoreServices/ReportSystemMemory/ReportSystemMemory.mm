uint64_t sub_100000F00(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 valueForEntitlement:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast() && (v14[15] & 1) != 0)
    {
      v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP18ReportSystemMemory29ReportSystemMemoryXPCProtocol_];
      [a1 setExportedInterface:v8];

      type metadata accessor for XPCService();
      [a1 setExportedObject:swift_allocObject()];
      [a1 resume];

      return 1;
    }
  }

  else
  {
    sub_100002140(v17);
  }

  Logger.init()();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "Client %{public}d is not entitled to connect to ReportSystemMemory", v13, 8u);
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_1000012B4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  if (v11)
  {
    v31 = v11;

    sub_1000021A8(&qword_1000085A0, &qword_100002930);
    sub_1000021A8(&qword_1000085A8, &qword_100002938);
    swift_dynamicCast();
    v14 = v30;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Logger.init()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100001970(0x7263736564206F4ELL, 0xEE006E6F69747069, &v31);
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to represent visibility endowments as a set of NSNumbers: %s", v20, 0xCu);
      sub_1000021F0(v21);
    }

    (*(v7 + 8))(v13, v6);
    v14 = 0;
    if (a2)
    {
LABEL_3:
      v31 = a2;

      sub_1000021A8(&qword_1000085A0, &qword_100002930);
      sub_1000021A8(&qword_1000085A8, &qword_100002938);
      swift_dynamicCast();
      v15 = v30;
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_12:
      v16.super.isa = 0;
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  Logger.init()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100001970(0x7263736564206F4ELL, 0xEE006E6F69747069, &v31);
    _os_log_impl(&_mh_execute_header, v22, v23, "Unable to represent audio assertions as a set of NSNumbers: %s", v24, 0xCu);
    sub_1000021F0(v25);
  }

  (*(v7 + 8))(v10, v6);
  v15 = 0;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_1000017CC();
  sub_100001774();
  v16.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if (v15)
  {
LABEL_5:
    sub_1000017CC();
    sub_100001774();
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;

    goto LABEL_14;
  }

LABEL_13:
  v17.super.isa = 0;
LABEL_14:
  v26 = [objc_allocWithZone(CDJetsamReport) initWithIncidentID:0 visibilityEndowmentState:v16.super.isa audioAssertionState:v17.super.isa];

  [v26 acquireJetsamData];
  if (v26)
  {
    v27 = v26;
    sub_100002024(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v27 saveWithOptions:isa];
  }

  else
  {
    v29 = 0;
  }

  (*(a3 + 16))(a3, v29);
}

unint64_t sub_100001774()
{
  result = qword_100008598;
  if (!qword_100008598)
  {
    sub_1000017CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008598);
  }

  return result;
}

unint64_t sub_1000017CC()
{
  result = qword_100008590;
  if (!qword_100008590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008590);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  qword_100008630 = [objc_allocWithZone(type metadata accessor for XPCServiceDelegate()) init];
  v3 = objc_allocWithZone(NSXPCListener);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithMachServiceName:v4];

  qword_100008638 = v5;
  [v5 setDelegate:qword_100008630];
  [qword_100008638 resume];
  dispatch_main();
}

id sub_100001918(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for XPCServiceDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100001970(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001A3C(v11, 0, 0, 1, a1, a2);
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
    sub_10000223C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000021F0(v11);
  return v7;
}

unint64_t sub_100001A3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001B48(a5, a6);
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

char *sub_100001B48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001B94(a1, a2);
  sub_100001CC4(&off_100004280);
  return v3;
}

char *sub_100001B94(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100001DB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001DB0(v10, 0);
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

uint64_t sub_100001CC4(uint64_t result)
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

  result = sub_100001E24(result, v11, 1, v3);
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

void *sub_100001DB0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000021A8(&qword_1000085B0, &qword_100002940);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021A8(&qword_1000085B0, &qword_100002940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100001F18(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100001F5C(a1, v4);
}

unint64_t sub_100001F5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000231C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100002378(v8);
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

unint64_t sub_100002024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021A8(&qword_1000085B8, &qword_100002948);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000229C(v4, v13);
      result = sub_100001F18(v13);
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
      result = sub_10000230C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100002140(uint64_t a1)
{
  v2 = sub_1000021A8(&qword_100008588, &qword_100002928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000021A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000021F0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000223C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000229C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021A8(&unk_1000085C0, &qword_100002950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000230C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}