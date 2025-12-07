id sub_100001818(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MAGUIApplication();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100001868()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000018A4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000018F8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100001974(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000019EC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001A6C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001AB0(void *a1, uint64_t *a2)
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

uint64_t sub_100001B38@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001B80@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001BAC(uint64_t a1)
{
  v2 = sub_100002F20(&qword_100008208, type metadata accessor for FileAttributeKey, &unk_100003608);
  v3 = sub_100002F20(&qword_100008240, type metadata accessor for FileAttributeKey, &unk_10000355C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100001C68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001D34(v11, 0, 0, 1, a1, a2);
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
    sub_100002D9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002DF8(v11);
  return v7;
}

unint64_t sub_100001D34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001E40(a5, a6);
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

char *sub_100001E40(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001E8C(a1, a2);
  sub_100001FBC(&off_100004468);
  return v3;
}

char *sub_100001E8C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000020A8(v5, 0);
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
        v7 = sub_1000020A8(v10, 0);
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

uint64_t sub_100001FBC(uint64_t result)
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

  result = sub_10000211C(result, v11, 1, v3);
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

void *sub_1000020A8(uint64_t a1, uint64_t a2)
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

  sub_100002C9C(&qword_100008218, &qword_100003488);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000211C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C9C(&qword_100008218, &qword_100003488);
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

unint64_t sub_100002210(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000022A4(a1, v2);
}

unint64_t sub_1000022A4(uint64_t a1, uint64_t a2)
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

void sub_1000023A8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v63[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002C9C(&qword_1000081F8, &qword_100003478);
  __chkstk_darwin(v4 - 8);
  v6 = &v63[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v63[-v12];
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 executablePath];

  if (v15)
  {
    v67 = v1;
    v68 = v0;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v18 = [objc_opt_self() defaultManager];
    v70 = 0;
    v19 = [v18 attributesOfItemAtPath:v15 error:&v70];

    v20 = v70;
    if (v19)
    {
      type metadata accessor for FileAttributeKey();
      sub_100002F20(&qword_100008208, type metadata accessor for FileAttributeKey, &unk_100003608);
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v20;

      if (!*(v21 + 16) || (v23 = sub_100002210(NSFileModificationDate), (v24 & 1) == 0))
      {

        (*(v8 + 56))(v6, 1, 1, v7);
        goto LABEL_8;
      }

      sub_100002D9C(*(v21 + 56) + 32 * v23, &v70);

      v25 = swift_dynamicCast();
      (*(v8 + 56))(v6, v25 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

LABEL_8:
        sub_100002D34(v6);
        goto LABEL_10;
      }

      (*(v8 + 32))(v13, v6, v7);
      sub_100002C9C(&qword_100008210, &qword_100003480);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100003430;
      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v70 = 0x20676E696E6E7552;
      v71 = 0xE900000000000027;
      v65 = objc_opt_self();
      v33 = [v65 processInfo];
      v34 = [v33 processName];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0x27206D6F72662027;
      v39._object = 0xE800000000000000;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v69;
      v40._object = v17;
      String.append(_:)(v40);
      v41._object = 0x80000001000036A0;
      v41._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v41);
      v42 = Date.formatted()();
      String.append(_:)(v42);

      v43 = v70;
      v44 = v71;
      v45 = v66;
      *(v66 + 56) = &type metadata for String;
      *(v45 + 32) = v43;
      *(v45 + 40) = v44;
      print(_:separator:terminator:)();

      static AXLog.magdefault.getter();
      (*(v8 + 16))(v11, v13, v7);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v70 = v66;
        *v48 = 136315650;
        v49 = [v65 processInfo];
        v65 = v46;
        v50 = v49;
        v51 = [v49 processName];
        v64 = v47;
        v52 = v51;

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_100001C68(v53, v55, &v70);

        *(v48 + 4) = v56;
        *(v48 + 12) = 2080;
        v57 = sub_100001C68(v69, v17, &v70);

        *(v48 + 14) = v57;
        *(v48 + 22) = 2080;
        v58 = Date.formatted()();
        v59 = *(v8 + 8);
        v59(v11, v7);
        v60 = sub_100001C68(v58._countAndFlagsBits, v58._object, &v70);

        *(v48 + 24) = v60;
        v61 = v65;
        _os_log_impl(&_mh_execute_header, v65, v64, "Running '%s' from '%s' Last Modified: %s", v48, 0x20u);
        swift_arrayDestroy();

        (*(v67 + 8))(v3, v68);
        v59(v13, v7);
      }

      else
      {

        v62 = *(v8 + 8);
        v62(v11, v7);
        (*(v67 + 8))(v3, v68);
        v62(v13, v7);
      }
    }

    else
    {
      v26 = v70;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

LABEL_10:
  type metadata accessor for MagnifierShortcuts();
  sub_100002F20(&qword_100008200, &type metadata accessor for MagnifierShortcuts, &protocol conformance descriptor for MagnifierShortcuts);
  static AppShortcutsProvider.updateAppShortcutParameters()();
  v27 = static CommandLine.argc.getter();
  v28 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for MAGUIApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MagnifierApplicationDelegate();
  v31 = swift_getObjCClassFromMetadata();
  v32 = NSStringFromClass(v31);
  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v27, v28, v30, v32);
}

uint64_t sub_100002C9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_100008220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008220);
    }
  }
}

uint64_t sub_100002D34(uint64_t a1)
{
  v2 = sub_100002C9C(&qword_1000081F8, &qword_100003478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002DF8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall Date.formatted()()
{
  v0 = Date.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}