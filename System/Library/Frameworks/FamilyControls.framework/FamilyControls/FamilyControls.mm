int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  qword_10006C938 = [objc_allocWithZone(type metadata accessor for Agent()) init];
  if (static Feature.isAuthorizationEnabled.getter())
  {
    qword_10006C940 = 0xD00000000000001DLL;
    *algn_10006C948 = 0x8000000100057A50;
    String.utf8CString.getter();
    v10 = _set_user_dir_suffix();

    if (v10)
    {
      sub_1000218A4(v11, v12, v13);
      sub_100021620(1);
      dispatch_main();
    }

    static Logger.agent.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      v21 = qword_10006C940;
      v22 = *algn_10006C948;

      v23 = sub_100002CB4(v21, v22, &v26);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;
      *(v19 + 14) = errno.getter();
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to initialize sandbox %{public}s: %{darwin.errno}d", v19, 0x12u);
      sub_1000032BC(v20);
    }

    (*(v4 + 8))(v9, v3);
    sub_100021620(0);
    exit(78);
  }

  static Logger.agent.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "The Family Controls feature is not enabled", v16, 2u);
  }

  (*(v4 + 8))(v7, v3);
  sub_100021620(0);
  exit(77);
}

uint64_t sub_1000022E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000235C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000023DC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002420()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000245C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000024B0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

BOOL sub_100002564(void *a1, uint64_t *a2)
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

uint64_t sub_1000025BC(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B828, type metadata accessor for CKError, &unk_100056148);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002628(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B828, type metadata accessor for CKError, &unk_100056148);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002698(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100002704@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002724(void *a1, uint64_t *a2)
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

uint64_t sub_1000027BC(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002828(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002894(void *a1, uint64_t a2)
{
  v4 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000029C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100002A30@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002A5C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002AA4(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B920, type metadata accessor for Key, &unk_1000565AC);
  v3 = sub_1000033D0(&qword_10006B928, type metadata accessor for Key, &unk_100056500);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002BE4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100002C58(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100002CB4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100002CB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002D80(v11, 0, 0, 1, a1, a2);
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
    sub_1000036C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000032BC(v11);
  return v7;
}

unint64_t sub_100002D80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002E8C(a5, a6);
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

char *sub_100002E8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002ED8(a1, a2);
  sub_100003008(&off_100065C00);
  return v3;
}

char *sub_100002ED8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000030F4(v5, 0);
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
        v7 = sub_1000030F4(v10, 0);
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

uint64_t sub_100003008(uint64_t result)
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

  result = sub_100003168(result, v11, 1, v3);
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

void *sub_1000030F4(uint64_t a1, uint64_t a2)
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

  sub_100003720(&qword_10006B8C8, &unk_1000562E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003168(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006B8C8, &unk_1000562E0);
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

_BYTE **sub_10000325C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10000326C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10000328C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000032BC(void *a1)
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

__n128 sub_100003308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003318(uint64_t a1, int a2)
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

uint64_t sub_100003338(uint64_t result, int a2, int a3)
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

uint64_t sub_1000033D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000035E0()
{
  result = qword_10006B850;
  if (!qword_10006B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B850);
  }

  return result;
}

uint64_t sub_1000036C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003720(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1000037E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_10000392C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100003960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000039A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthorizationRecord();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = 0;
  result = sub_10000423C();
  v27 = result;
  v52 = v3;
  v53 = v9;
  v54 = v7;
  v50 = 0;
  v51 = v14;
  v49 = v6;
  v28 = *(result + 16);
  while (v28 != v17)
  {
    if (v17 >= *(v27 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    (*(v11 + 16))(v16, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17++, v10);
    AuthorizationRecord.type.getter();
    v29 = FamilyControlsMember.rawValue.getter();
    v30 = FamilyControlsMember.rawValue.getter();
    result = (*(v11 + 8))(v16, v10);
    if (v29 == v30)
    {
LABEL_18:

      return 1;
    }
  }

  sub_100007504((v52 + 40), *(v52 + 64));
  v31 = v53;
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  v32 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 fileExistsAtPath:v33];

  if (v34)
  {
    v35 = v50;
    v36 = Data.init(contentsOf:options:)();
    if (v35)
    {
      (*(v55 + 8))(v31, v54, v37);

      v39 = v56;
      v38 = v57;
      v40 = v49;
      static Logger.authorization.getter();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v58 = v35;
        v59 = v22;
        *v21 = 136446210;
        swift_errorRetain();
        sub_100003720(&qword_10006BF60, &qword_100056CA0);
        v23 = String.init<A>(describing:)();
        v25 = v40;
        v26 = sub_100002CB4(v23, v24, &v59);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch child authorization status: %{public}s", v21, 0xCu);
        sub_1000032BC(v22);

        (*(v39 + 8))(v25, v38);
      }

      else
      {

        (*(v39 + 8))(v40, v38);
      }

      return 0;
    }

    v47 = v36;
    v48 = v37;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    v52 = v48;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v55 + 8))(v53, v54);
    sub_100007644(v47, v52);

    v41 = v59;
  }

  else
  {
    (*(v55 + 8))(v31, v54);

    v41 = &_swiftEmptyArrayStorage;
  }

  v42 = 0;
  v43 = v41[2];
  v44 = v51;
  while (v43 != v42)
  {
    if (v42 >= v41[2])
    {
      goto LABEL_22;
    }

    (*(v11 + 16))(v44, v41 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v42++, v10);
    AuthorizationRecord.type.getter();
    v45 = FamilyControlsMember.rawValue.getter();
    v46 = FamilyControlsMember.rawValue.getter();
    result = (*(v11 + 8))(v44, v10);
    if (v45 == v46)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

double sub_100004080@<D0>(void *a1@<X0>, void *a4@<X8>)
{
  v21 = a4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  static Logger.agent.getter();
  v12 = [a1 processIdentifier];
  [a1 auditToken];
  v13 = v22;
  v14 = v23[0];
  (*(v6 + 16))(v9, v11, v5);
  v15 = a1;
  sub_1000210F8(v12, v13, *(&v13 + 1), v14, *(&v14 + 1), a1, v9, &v22);
  (*(v6 + 8))(v11, v5);
  v16 = v21;
  v21[3] = &type metadata for ClientIdentity;
  v16[4] = sub_1000079B4();
  v17 = swift_allocObject();
  *v16 = v17;
  v18 = v23[0];
  v17[1] = v22;
  v17[2] = v18;
  result = *(v23 + 9);
  *(v17 + 41) = *(v23 + 9);
  return result;
}

char *sub_10000423C()
{
  v2 = v1;
  v3 = v0;
  v32 = type metadata accessor for URL();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  static Logger.authorization.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v4;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Authorization records", v14, 2u);
    v2 = v1;
    v4 = v30;
  }

  v30 = *(v7 + 8);
  v30(v11, v6);
  sub_100007504((v3 + 40), *(v3 + 64));
  v15 = v33;
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v16 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 fileExistsAtPath:v17];

  if (v18)
  {
    v29 = v6;
    v19 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (*(v4 + 1))(v15, v32);

      return v15;
    }

    v25 = v19;
    v26 = v20;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v4 + 1))(v33, v32);
    sub_100007644(v25, v26);

    v15 = v34;
    v6 = v29;
  }

  else
  {
    (*(v4 + 1))(v15, v32);

    v15 = &_swiftEmptyArrayStorage;
  }

  v21 = v31;
  static Logger.authorization.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Authorization records succeeded", v24, 2u);
  }

  v30(v21, v6);
  return v15;
}

BOOL sub_1000046B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007504((v3 + 40), *(v3 + 64));
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  v10 = [objc_opt_self() defaultManager];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v19[1] = v5;
    v19[2] = v4;
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v7 + 8))(v9, v6);
    sub_100007644(v15, v17);

    v18 = v19[4];
  }

  else
  {
    (*(v7 + 8))(v9, v6);

    v18 = &_swiftEmptyArrayStorage;
  }

  v13 = v18[2];

  return v13 != 0;
}

char *sub_100004AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  __chkstk_darwin(v4);
  v6 = type metadata accessor for AuthorizationStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v26 - v11;
  v13 = type metadata accessor for AuthorizationRecord();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  result = sub_10000423C();
  v26[0] = v3;
  v30 = *(result + 2);
  v31 = result;
  v29 = v14 + 16;
  v28 = enum case for AuthorizationStatus.approved(_:);
  v19 = (v7 + 104);
  v20 = (v7 + 8);
  v26[1] = v14 + 8;
  v27 = v19;
  while (1)
  {
    if (v30 == v17)
    {

      return sub_1000046B0(v23, v24, v25);
    }

    if (v17 >= *(v31 + 2))
    {
      break;
    }

    (*(v14 + 16))(v16, &v31[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v17++], v13);
    AuthorizationRecord.status.getter();
    (*v27)(v10, v28, v6);
    sub_10000DA84(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = *v20;
    (*v20)(v10, v6);
    v21(v12, v6);
    result = (*(v14 + 8))(v16, v13);
    if (v33 == v32)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v88 = a5;
  v89 = a6;
  v98 = a4;
  v96 = a3;
  v100 = a2;
  v11 = type metadata accessor for Logger();
  v92 = *(v11 - 8);
  v93 = v11;
  __chkstk_darwin(v11);
  v94 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v90 = *(v13 - 8);
  v91 = v13;
  __chkstk_darwin(v13);
  v101 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AuthorizationRecord();
  v97 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v78 - v19;
  v21 = type metadata accessor for AuthorizationStatus();
  v103 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v99 = &v78 - v26;
  __chkstk_darwin(v25);
  v102 = &v78 - v27;
  v28 = sub_100003720(&qword_10006BB60, qword_100056698);
  v29 = __chkstk_darwin(v28);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = (&v78 - v32);
  v34 = a1;
  v36 = v35;
  sub_10000D554(v34, &v78 - v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v31 = *v33;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a7(v31);

    return sub_10000D5C4(v31, &qword_10006BB60, qword_100056698);
  }

  else
  {
    v81 = v18;
    v82 = v24;
    v84 = v36;
    v85 = v31;
    v95 = v15;
    v86 = a8;
    v87 = a7;
    v38 = v103;
    v39 = v21;
    v40 = v102;
    (*(v103 + 32))(v102, v33, v39);
    v83 = AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    v41 = *(v38 + 16);
    v41(v99, v40, v39);
    v42 = v96;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003B3DC(v20);
    v83 = v41;
    v80 = v38 + 16;
    v43 = v103;
    v44 = v99;
    (*(v103 + 104))(v99, enum case for AuthorizationStatus.approved(_:), v39);
    sub_10000DA84(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
    v45 = v102;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v46 = *(v43 + 8);
    v103 = v43 + 8;
    v79 = v46;
    v46(v44, v39);
    v47 = v95;
    v48 = v45;
    v49 = v97;
    if (v105[0] == v104)
    {
      v50 = sub_100007504((v98 + 80), *(v98 + 104));
      v51 = AuthorizationRecord.bundleIdentifier.getter();
      sub_10002BE8C(v42, v51, v52, v88, v89, *v50);
    }

    v99 = v20;
    v53 = v94;
    static Logger.authorization.getter();
    v54 = v81;
    (*(v49 + 16))(v81, v100, v47);
    v55 = v82;
    v56 = v39;
    v83(v82, v48, v39);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v101;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105[0] = v100;
      *v61 = 136446466;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v98) = v58;
      v62 = v91;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v90 + 8))(v60, v62);
      v66 = *(v49 + 8);
      v66(v54, v95);
      v67 = sub_100002CB4(v63, v65, v105);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      sub_10000DA84(&unk_10006B9E0, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v79;
      v79(v55, v56);
      v72 = sub_100002CB4(v68, v70, v105);

      *(v61 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v57, v98, "Request authorization for record identifier: %{public}s status: %s", v61, 0x16u);
      swift_arrayDestroy();

      (*(v92 + 8))(v94, v93);
    }

    else
    {

      v73 = v79;
      v79(v55, v39);
      v66 = *(v49 + 8);
      v74 = v54;
      v71 = v73;
      v66(v74, v95);
      (*(v92 + 8))(v53, v93);
    }

    v75 = v87;
    v76 = v85;
    v77 = v102;
    v83(v85, v102, v56);
    swift_storeEnumTagMultiPayload();
    v75(v76);
    sub_10000D5C4(v76, &qword_10006BB60, qword_100056698);
    v66(v99, v95);
    return v71(v77, v56);
  }
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v62 = a2;
  v63 = a5;
  v53 = a4;
  v59 = a3;
  v8 = type metadata accessor for Logger();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthorizationStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = __chkstk_darwin(v14);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = type metadata accessor for AuthorizationRecord();
  v60 = *(v17 - 8);
  v61 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v20);
  v22 = (&v48 - v21);
  sub_10000D554(a1, &v48 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    swift_errorRetain();
    v63(v23, 1);
  }

  else
  {
    v50 = v8;
    v51 = v22;
    v52 = a6;
    AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    (*(v11 + 104))(v13, enum case for AuthorizationStatus.notDetermined(_:), v10);
    AuthorizationRecord.type.getter();
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    v25 = v59;
    sub_10003B3DC(v19);
    v49 = v19;
    v26 = sub_100007504((v25 + 80), *(v25 + 104));
    v27 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v27, v28, *v26);

    if ((sub_100003A18(v29, v30, v31) & 1) == 0)
    {
      v32 = [*sub_100007504((v25 + 80) *(v25 + 104))];
      [v32 setSharingAppleIDs:0];
    }

    v33 = v57;
    static Logger.authorization.getter();
    v35 = v54;
    v34 = v55;
    v36 = v56;
    (*(v55 + 16))(v54, v53, v56);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v34;
      v43 = v41;
      v45 = v44;
      (*(v42 + 8))(v35, v36);
      v46 = sub_100002CB4(v43, v45, &v64);

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Reset authorization for record identifier: %{public}s not determined", v39, 0xCu);
      sub_1000032BC(v40);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    (*(v58 + 8))(v33, v50);
    v47 = v51;
    v63(0, 0);
    (*(v60 + 8))(v49, v61);
    return sub_10000D5C4(v47, &qword_10006BB60, qword_100056698);
  }
}

uint64_t sub_100005F8C(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v110 = a3;
  v111 = a4;
  v96 = a2;
  v99 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for UUID();
  v101 = *(v102 - 8);
  v7 = __chkstk_darwin(v102);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v92 = &v85 - v10;
  v94 = v11;
  __chkstk_darwin(v9);
  v93 = &v85 - v12;
  v105 = type metadata accessor for Logger();
  v100 = *(v105 - 8);
  v13 = __chkstk_darwin(v105);
  v108 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = (&v85 - v15);
  v104 = type metadata accessor for AuthorizationStatus();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v106 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v17 - 8);
  v19 = &v85 - v18;
  v20 = type metadata accessor for AuthorizationRecord();
  v109 = *(v20 - 8);
  v21 = *(v109 + 64);
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v85 - v23;
  v25 = v4;
  sub_10003C47C(a1, v19);
  v26 = v106;
  v86 = v21;
  v87 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v25;
  v27 = v107;
  v28 = v108;
  v90 = a1;
  v91 = v24;
  v29 = v109;
  if ((*(v109 + 48))(v19, 1, v20) == 1)
  {
    sub_10000D5C4(v19, &unk_10006C0F0, &qword_100056690);
    v30 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, enum case for FamilyControlsError.invalidArgument(_:), v30);
    swift_willThrow();
    swift_errorRetain();
    v110(v31, 1);
  }

  v33 = *(v29 + 32);
  v34 = v91;
  v88 = v20;
  v33(v91, v19, v20);
  AuthorizationRecord.status.getter();
  v35 = (*(v103 + 88))(v26, v104);
  if (v35 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v34);
    v36 = v105;
    v37 = v90;
    static Logger.authorization.getter();
    v38 = v101;
    v39 = v93;
    v40 = v102;
    (*(v101 + 16))(v93, v37, v102);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v112[0] = v44;
      *v43 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v38 + 8))(v39, v40);
      v48 = sub_100002CB4(v45, v47, v112);
      v34 = v91;

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Revoked authorization for record identifier: %{public}s already not determined", v43, 0xCu);
      sub_1000032BC(v44);

      (*(v100 + 8))(v27, v105);
    }

    else
    {

      (*(v38 + 8))(v39, v40);
      (*(v100 + 8))(v27, v36);
    }

LABEL_17:
    v84 = v109;
    v110(0, 0);
    return (*(v84 + 8))(v34, v88);
  }

  v49 = v105;
  v50 = v90;
  if (v35 == enum case for AuthorizationStatus.denied(_:))
  {
    sub_10003AEE4(v34);
    v73 = v28;
    static Logger.authorization.getter();
    v74 = v101;
    v75 = v92;
    v76 = v102;
    (*(v101 + 16))(v92, v50, v102);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v112[0] = v107;
      *v79 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v74 + 8))(v75, v76);
      v83 = sub_100002CB4(v80, v82, v112);
      v34 = v91;

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Revoked authorization for record identifier: %{public}s already denied", v79, 0xCu);
      sub_1000032BC(v107);
    }

    else
    {

      (*(v74 + 8))(v75, v76);
    }

    (*(v100 + 8))(v73, v49);
    goto LABEL_17;
  }

  v52 = v89;
  if (v35 == enum case for AuthorizationStatus.approved(_:))
  {
    v105 = sub_100007504(v89, v89[3]);
    v108 = AuthorizationRecord.type.getter();
    v107 = AuthorizationRecord.bundleIdentifier.getter();
    v106 = v53;
    sub_10000D398(v52, v112);
    v54 = v109;
    (*(v109 + 16))(v87, v34, v88);
    v55 = v101;
    v56 = v95;
    v57 = v50;
    v58 = v102;
    (*(v101 + 16))(v95, v57, v102);
    v59 = (*(v54 + 80) + 152) & ~*(v54 + 80);
    v60 = (v86 + *(v55 + 80) + v59) & ~*(v55 + 80);
    v61 = (v94 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v112[7];
    *(v62 + 112) = v112[6];
    *(v62 + 128) = v63;
    *(v62 + 144) = v113;
    v64 = v112[3];
    *(v62 + 48) = v112[2];
    *(v62 + 64) = v64;
    v65 = v112[5];
    *(v62 + 80) = v112[4];
    *(v62 + 96) = v65;
    v66 = v112[1];
    *(v62 + 16) = v112[0];
    *(v62 + 32) = v66;
    v33((v62 + v59), v87, v88);
    (*(v55 + 32))(v62 + v60, v56, v58);
    v67 = (v62 + v61);
    v68 = v111;
    *v67 = v110;
    v67[1] = v68;
    v69 = v98;
    v70 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:);
    if ((v96 & 1) == 0)
    {
      v70 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:);
    }

    v71 = v97;
    v72 = v99;
    (*(v98 + 104))(v97, *v70, v99);

    sub_10000EE84(v71, v107, v106, v108, sub_10000DCE8, v62);

    (*(v69 + 8))(v71, v72);
    return (*(v54 + 8))(v91, v88);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v39 = a4;
  v11 = type metadata accessor for UUID();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v17);
  v19 = (&v37 - v18);
  sub_10000D554(a1, &v37 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    swift_errorRetain();
    a5(v20, 1);
  }

  else
  {
    v37 = a6;
    v38 = a5;
    sub_10003AEE4(a3);
    v22 = sub_100007504((a2 + 80), *(a2 + 104));
    v23 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v23, v24, *v22);

    if ((sub_100003A18(v25, v26, v27) & 1) == 0)
    {
      v28 = [*sub_100007504((a2 + 80) *(a2 + 104))];
      [v28 setSharingAppleIDs:0];
    }

    static Logger.authorization.getter();
    v29 = v40;
    (*(v40 + 16))(v13, v39, v11);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v32 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v13, v11);
      v36 = sub_100002CB4(v33, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Revoked authorization for record identifier: %{public}s not determined", v32, 0xCu);
      sub_1000032BC(v39);
    }

    else
    {

      (*(v29 + 8))(v13, v11);
    }

    (*(v41 + 8))(v16, v42);
    v38(0, 0);
    return sub_10000D5C4(v19, &qword_10006BB60, qword_100056698);
  }
}

uint64_t sub_1000070DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v34 = a1;
  v5 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AuthorizationRecord();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Revoking authorization", v16, 2u);
    v3 = v2;
    v7 = v31;
  }

  (*(v11 + 8))(v13, v10);
  result = sub_10003C47C(v34, v7);
  if (!v3)
  {
    v18 = v33;
    if ((*(v33 + 48))(v7, 1, v8) == 1)
    {
      sub_10000D5C4(v7, &unk_10006C0F0, &qword_100056690);
      v19 = type metadata accessor for FamilyControlsError();
      sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, enum case for FamilyControlsError.invalidArgument(_:), v19);
      return swift_willThrow();
    }

    else
    {
      v21 = v32;
      (*(v18 + 32))(v32, v7, v8);
      sub_10003AEE4(v21);
      v22 = v8;
      v23 = sub_100007504((v4 + 80), *(v4 + 104));
      v24 = AuthorizationRecord.bundleIdentifier.getter();
      sub_10002CB2C(v24, v25, *v23);

      if ((sub_100003A18(v26, v27, v28) & 1) == 0)
      {
        v29 = [*sub_100007504((v4 + 80) *(v4 + 104))];
        [v29 setSharingAppleIDs:0];
      }

      return (*(v18 + 8))(v21, v22);
    }
  }

  return result;
}

void *sub_100007504(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007548()
{
  result = qword_10006B998;
  if (!qword_10006B998)
  {
    sub_1000075FC(&qword_10006B990, &qword_100056680);
    sub_10000DA84(&qword_10006B9A0, &type metadata accessor for AuthorizationRecord, &protocol conformance descriptor for AuthorizationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B998);
  }

  return result;
}

uint64_t sub_1000075FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007644(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100007698(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t *sub_10000771C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10000C798(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

Swift::Int sub_1000077C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003720(&qword_10006B9C8, &qword_100056688);
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

unint64_t sub_1000079B4()
{
  result = qword_10006B9B0;
  if (!qword_10006B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B9B0);
  }

  return result;
}

uint64_t sub_100007A08()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100007A48(uint64_t a1, uint64_t a2, void *a3, char *a4, int a5, void *a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9)
{
  v119 = a5;
  v130 = a4;
  v129 = a3;
  v140 = a9;
  v133 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v133);
  v134 = (&v113 - v14);
  v122 = type metadata accessor for UUID();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AuthorizationRecord();
  v137 = *(v17 - 8);
  v138 = v17;
  v18 = *(v137 + 64);
  v19 = __chkstk_darwin(v17);
  v125 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v115 = &v113 - v21;
  v22 = __chkstk_darwin(v20);
  v114 = &v113 - v23;
  __chkstk_darwin(v22);
  v118 = &v113 - v24;
  v132 = type metadata accessor for Logger();
  v131 = *(v132 - 8);
  v25 = __chkstk_darwin(v132);
  v117 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v116 = &v113 - v28;
  __chkstk_darwin(v27);
  v30 = &v113 - v29;
  v31 = type metadata accessor for AuthorizationStatus();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  *(v35 + 2) = a7;
  *(v35 + 3) = a8;
  v135 = a8;
  v139 = v35;
  *(v35 + 4) = v140;
  v136 = a7;

  AuthorizationRecord.status.getter();
  v123 = v32;
  v36 = *(v32 + 88);
  v124 = v31;
  v37 = v36(v34, v31);
  if (v37 == enum case for AuthorizationStatus.notDetermined(_:))
  {
LABEL_2:
    v38 = sub_100007504(a6 + 10, a6[13]);
    v39 = AuthorizationRecord.bundleIdentifier.getter();
    v41 = v40;
    v42 = *v38;
    v43 = FamilyControlsMember.rawValue.getter();
    if (v43 == FamilyControlsMember.rawValue.getter())
    {
      v44 = sub_10002BD9C(v39, v41, v42);

      if ((v44 & 1) == 0)
      {
        v45 = v117;
        static Logger.authorization.getter();
        v47 = v137;
        v46 = v138;
        v48 = v115;
        (*(v137 + 16))(v115, a2, v138);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *&v141[0] = v130;
          *v51 = 136446210;
          v52 = v120;
          AuthorizationRecord.recordIdentifier.getter();
          sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v53 = v122;
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v55;
          (*(v121 + 8))(v52, v53);
          (*(v47 + 8))(v48, v46);
          v57 = sub_100002CB4(v54, v56, v141);

          *(v51 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v49, v50, "Unable to request authorization for record identifier %{public}s because a different app already enrolled a child", v51, 0xCu);
          sub_1000032BC(v130);

          (*(v131 + 8))(v117, v132);
        }

        else
        {

          (*(v47 + 8))(v48, v46);
          (*(v131 + 8))(v45, v132);
        }

        v108 = type metadata accessor for FamilyControlsError();
        sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v109 = swift_allocError();
        (*(*(v108 - 8) + 104))(v110, enum case for FamilyControlsError.authorizationConflict(_:), v108);
        v111 = v134;
        *v134 = v109;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v135 = sub_100007504(a6, a6[3]);
    v140 = AuthorizationRecord.bundleIdentifier.getter();
    v136 = v74;
    v75 = v137;
    v76 = v138;
    v77 = v125;
    (*(v137 + 16))(v125, a2, v138);
    sub_10000D398(a6, v141);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = (v18 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = a1;
    v82 = (v80 + 143) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    (*(v75 + 32))(v83 + v78, v77, v76);
    *(v83 + v79) = v81;
    v84 = v83 + v80;
    v85 = v141[3];
    *(v84 + 32) = v141[2];
    *(v84 + 48) = v85;
    v86 = v141[1];
    *v84 = v141[0];
    *(v84 + 16) = v86;
    *(v84 + 128) = v142;
    v87 = v141[7];
    *(v84 + 96) = v141[6];
    *(v84 + 112) = v87;
    v88 = v141[5];
    *(v84 + 64) = v141[4];
    *(v84 + 80) = v88;
    v89 = (v83 + v82);
    v90 = v129;
    v91 = v130;
    *v89 = v129;
    v89[1] = v91;
    v92 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
    v93 = v139;
    *v92 = sub_10000DB0C;
    v92[1] = v93;
    sub_10000DA30(v90, v91);

    v94 = v126;
    FamilyControlsAuthenticationUIService.ServiceType.init(member:)();
    sub_10000EE84(v94, v140, v136, v81, sub_10000DCEC, v83);

    (*(v127 + 8))(v94, v128);
  }

  v58 = v37;
  if (v37 == enum case for AuthorizationStatus.denied(_:))
  {
    if (v119)
    {
      goto LABEL_2;
    }

    v59 = v116;
    static Logger.authorization.getter();
    v61 = v137;
    v60 = v138;
    v62 = v114;
    (*(v137 + 16))(v114, a2, v138);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v129 = v65;
      v130 = swift_slowAlloc();
      *&v141[0] = v130;
      *v65 = 136446210;
      v66 = v120;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = v122;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v58;
      v71 = v70;
      (*(v121 + 8))(v66, v67);
      (*(v61 + 8))(v62, v60);
      v72 = sub_100002CB4(v68, v71, v141);
      v58 = v69;

      v73 = v129;
      *(v129 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "Requested authorization for record identifier: %{public}s already denied", v73, 0xCu);
      sub_1000032BC(v130);

      (*(v131 + 8))(v116, v132);
LABEL_20:
      v111 = v134;
      (*(v123 + 104))(v134, v58, v124);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_1000257AC(v111, v136, v135);
      sub_10000D5C4(v111, &qword_10006BB60, qword_100056698);
    }

    (*(v61 + 8))(v62, v60);
    goto LABEL_19;
  }

  if (v37 == enum case for AuthorizationStatus.approved(_:))
  {
    v59 = v30;
    static Logger.authorization.getter();
    v95 = v137;
    v96 = v138;
    v97 = v118;
    (*(v137 + 16))(v118, a2, v138);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v128 = v100;
      v129 = swift_slowAlloc();
      *&v141[0] = v129;
      *v100 = 136446210;
      v130 = v59;
      v101 = v120;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v102 = v122;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      (*(v121 + 8))(v101, v102);
      (*(v95 + 8))(v97, v96);
      v106 = sub_100002CB4(v103, v105, v141);

      v107 = v128;
      *(v128 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v98, v99, "Requested authorization for record identifier: %{public}s already approved", v107, 0xCu);
      sub_1000032BC(v129);

      (*(v131 + 8))(v130, v132);
      goto LABEL_20;
    }

    (*(v95 + 8))(v97, v96);
LABEL_19:
    (*(v131 + 8))(v59, v132);
    goto LABEL_20;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100008914(void *a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v79 = a3;
  v80 = a5;
  v78 = a4;
  v76 = a2;
  v77 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v77);
  v7 = (&v66 - v6);
  v8 = type metadata accessor for AuthorizationStatus();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthorizationRecord();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v70 = &v66 - v18;
  v19 = __chkstk_darwin(v17);
  v71 = &v66 - v20;
  __chkstk_darwin(v19);
  v22 = &v66 - v21;
  static Logger.authorization.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Revoke authorization", v25, 2u);
  }

  v26 = *(v14 + 8);
  v26(v22, v13);
  if (!a1)
  {
    v39 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v37 = swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for FamilyControlsError.invalidArgument(_:), v39);
    swift_willThrow();
    goto LABEL_9;
  }

  v68 = v13;
  v27 = *(v76 + 120);
  v28 = a1;
  v27(v81);
  v29 = sub_100007504(v81, v82);
  v30 = v29[2];
  if (!v30 || (v31 = v29[1], v32 = sub_100007504(v81, v82), (v33 = v32[4]) == 0))
  {
    v36 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, enum case for FamilyControlsError.invalidArgument(_:), v36);
    swift_willThrow();

    sub_1000032BC(v81);
LABEL_9:
    *v7 = v37;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100025B60(v7, v79, v78, v80);

    return sub_10000D5C4(v7, &qword_10006BB60, qword_100056698);
  }

  v66 = v11;
  v67 = v7;
  v34 = v32[3];

  v35 = v75;
  sub_10003BCF4(v31, v30, v34, v33, v75);

  sub_1000032BC(v81);
  AuthorizationRecord.status.getter();
  v42 = (*(v73 + 88))(v10, v74);
  v43 = v42;
  v44 = v35;
  if (v42 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v35);
    v45 = v67;
    v46 = v68;
    v47 = v70;
    static Logger.authorization.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_20;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Revoked authorization already not determined";
    goto LABEL_19;
  }

  v45 = v67;
  v46 = v68;
  if (v42 == enum case for AuthorizationStatus.denied(_:))
  {
    v47 = v71;
    static Logger.authorization.getter();
    v48 = Logger.logObject.getter();
    LOBYTE(v49) = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {
LABEL_20:

      v26(v47, v46);
      (*(v73 + 104))(v45, v43, v74);
      swift_storeEnumTagMultiPayload();
      sub_100025B60(v45, v79, v78, v80);
      sub_10000D5C4(v45, &qword_10006BB60, qword_100056698);
      return (*(v72 + 8))(v44, v66);
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Revoked authorization already denied";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v48, v49, v51, v50, 2u);

    goto LABEL_20;
  }

  LODWORD(v71) = enum case for AuthorizationStatus.notDetermined(_:);
  if (v42 == enum case for AuthorizationStatus.approved(_:))
  {
    v52 = v76;
    sub_10003AEE4(v44);
    v53 = sub_100007504((v52 + 80), *(v52 + 104));
    v54 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v54, v55, *v53);

    v59 = sub_100003A18(v56, v57, v58);
    v60 = v66;
    if ((v59 & 1) == 0)
    {
      v61 = [*sub_100007504((v52 + 80) *(v52 + 104))];
      [v61 setSharingAppleIDs:0];
    }

    v62 = v69;
    static Logger.authorization.getter();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Revoked authorization not determined", v65, 2u);
    }

    v26(v62, v46);
    (*(v73 + 104))(v45, v71, v74);
    swift_storeEnumTagMultiPayload();
    sub_100025B60(v45, v79, v78, v80);
    sub_10000D5C4(v45, &qword_10006BB60, qword_100056698);
    return (*(v72 + 8))(v75, v60);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000092B8(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v162 = a6;
  v161 = a4;
  v144 = a3;
  v143 = a2;
  v156 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v156);
  v157 = (&v134 - v10);
  v146 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for AuthorizationStatus();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v13 - 8);
  v158 = (&v134 - v14);
  v160 = type metadata accessor for AuthorizationRecord();
  v154 = *(v160 - 8);
  v15 = __chkstk_darwin(v160);
  v141 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v136 = &v134 - v18;
  v19 = __chkstk_darwin(v17);
  v147 = &v134 - v20;
  v140 = v21;
  __chkstk_darwin(v19);
  v153 = &v134 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v138 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v134 - v27;
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v137 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v149 = &v134 - v34;
  __chkstk_darwin(v33);
  v36 = &v134 - v35;
  v163 = a5;

  v164 = a7;

  static Logger.authorization.getter();
  v37 = *(v24 + 16);
  v159 = a1;
  v38 = v23;
  v37(v28, a1, v23);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v148 = v29;
  v139 = v24;
  v155 = v30;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *&v165[0] = v135;
    *v42 = 136446210;
    sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v24 + 8);
    (v46)(v28, v38);
    v47 = sub_100002CB4(v43, v45, v165);
    v48 = v163;
    v49 = v164;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Request authorization for record identifier: %{public}s", v42, 0xCu);
    sub_1000032BC(v135);

    v50 = v155[1];
    v50(v36, v29);
  }

  else
  {

    v46 = *(v24 + 8);
    (v46)(v28, v23);
    v50 = v30[1];
    v50(v36, v29);
    v48 = v163;
    v49 = v164;
  }

  v51 = v161;
  v52 = v158;
  sub_10003C47C(v159, v158);
  v53 = v154;
  if ((*(v154 + 48))(v52, 1, v160) == 1)
  {
    sub_10000D5C4(v52, &unk_10006C0F0, &qword_100056690);
    v54 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, enum case for FamilyControlsError.invalidArgument(_:), v54);
    swift_willThrow();
    v57 = v157;
    *v157 = v55;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100026C48(v57, v48, v162);

    sub_10000D5C4(v57, &qword_10006BB60, qword_100056698);
LABEL_6:
  }

  v135 = v38;
  v59 = v153;
  v158 = *(v53 + 32);
  (v158)(v153, v52, v160);
  v60 = v49;
  v61 = AuthorizationRecord.type.getter();
  v62 = swift_allocObject();
  v63 = v162;
  *(v62 + 2) = v48;
  *(v62 + 3) = v63;
  *(v62 + 4) = v60;
  swift_retain_n();
  swift_retain_n();
  v64 = v150;
  AuthorizationRecord.status.getter();
  v65 = (*(v151 + 88))(v64, v152);
  v159 = v62;
  if (v65 == enum case for AuthorizationStatus.notDetermined(_:) || (v66 = v65, v65 == enum case for AuthorizationStatus.denied(_:)))
  {
    v83 = sub_100007504(v51 + 10, v51[13]);
    v84 = AuthorizationRecord.bundleIdentifier.getter();
    v86 = v85;
    v87 = *v83;
    v88 = FamilyControlsMember.rawValue.getter();
    if (v88 == FamilyControlsMember.rawValue.getter())
    {
      v89 = sub_10002BD9C(v84, v86, v87);

      if ((v89 & 1) == 0)
      {
        v90 = v137;
        static Logger.authorization.getter();
        v91 = v136;
        (*(v53 + 16))(v136, v59, v160);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v161 = v46;
          v95 = v94;
          v96 = swift_slowAlloc();
          *&v165[0] = v96;
          *v95 = 136446210;
          v97 = v138;
          AuthorizationRecord.recordIdentifier.getter();
          sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v98 = v135;
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v91;
          v102 = v101;
          (v161)(v97, v98);
          v79 = *(v154 + 8);
          v79(v100, v160);
          v103 = sub_100002CB4(v99, v102, v165);

          *(v95 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v92, v93, "Unable to request authorization for record identifier %{public}s because a different app already enrolled a child", v95, 0xCu);
          sub_1000032BC(v96);

          v104 = v137;
        }

        else
        {

          v79 = *(v53 + 8);
          v79(v91, v160);
          v104 = v90;
        }

        v50(v104, v148);
        v129 = v163;
        v130 = type metadata accessor for FamilyControlsError();
        sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v131 = swift_allocError();
        (*(*(v130 - 8) + 104))(v132, enum case for FamilyControlsError.authorizationConflict(_:), v130);
        v133 = v157;
        *v157 = v131;
        swift_storeEnumTagMultiPayload();
        sub_100026C48(v133, v129, v162);
        v128 = v133;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v105 = v161;
    v155 = sub_100007504(v161, v161[3]);
    v157 = AuthorizationRecord.bundleIdentifier.getter();
    v156 = v106;
    v108 = *(v53 + 16);
    v107 = v53 + 16;
    v109 = v141;
    v108(v141, v59, v160);
    v162 = v107;
    sub_10000D398(v105, v165);
    v110 = (*(v107 + 64) + 16) & ~*(v107 + 64);
    v111 = (v140 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v112 + 143) & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    (v158)(v114 + v110, v109, v160);
    *(v114 + v111) = v61;
    v115 = v114 + v112;
    v116 = v165[3];
    *(v115 + 32) = v165[2];
    *(v115 + 48) = v116;
    v117 = v165[1];
    *v115 = v165[0];
    *(v115 + 16) = v117;
    *(v115 + 128) = v166;
    v118 = v165[7];
    *(v115 + 96) = v165[6];
    *(v115 + 112) = v118;
    v119 = v165[5];
    *(v115 + 64) = v165[4];
    *(v115 + 80) = v119;
    v120 = (v114 + v113);
    v121 = v143;
    v122 = v144;
    *v120 = v143;
    v120[1] = v122;
    v123 = (v114 + ((v113 + 23) & 0xFFFFFFFFFFFFFFF8));
    v124 = v159;
    *v123 = sub_10000DA1C;
    v123[1] = v124;
    sub_10000DA30(v121, v122);

    v125 = v142;
    FamilyControlsAuthenticationUIService.ServiceType.init(member:)();
    sub_10000EE84(v125, v157, v156, v61, sub_10000DA2C, v114);

    (*(v145 + 8))(v125, v146);

    (*(v162 - 1))(v153, v160);
    goto LABEL_6;
  }

  v161 = v46;
  if (v65 == enum case for AuthorizationStatus.approved(_:))
  {
    v67 = v149;
    static Logger.authorization.getter();
    v68 = v147;
    v69 = v160;
    (*(v53 + 16))(v147, v59, v160);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v150 = v72;
      v158 = swift_slowAlloc();
      *&v165[0] = v158;
      *v72 = 136446210;
      v73 = v138;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v74 = v68;
      v75 = v135;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      (v161)(v73, v75);
      v79 = *(v154 + 8);
      v79(v74, v69);
      v80 = sub_100002CB4(v76, v78, v165);
      v48 = v163;

      v81 = v150;
      *(v150 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v70, v71, "Requested authorization for record identifier: %{public}s already approved", v81, 0xCu);
      sub_1000032BC(v158);

      v82 = v149;
    }

    else
    {

      v126 = v68;
      v79 = *(v53 + 8);
      v79(v126, v69);
      v82 = v67;
    }

    v50(v82, v148);
    v127 = v157;
    (*(v151 + 104))(v157, v66, v152);
    swift_storeEnumTagMultiPayload();
    sub_100026C48(v127, v48, v162);
    v128 = v127;
LABEL_20:
    sub_10000D5C4(v128, &qword_10006BB60, qword_100056698);

    v79(v153, v160);
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000A4E4(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), char *a5)
{
  v168 = a2;
  v148 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AuthorizationStatus();
  v160 = *(v161 - 8);
  v10 = __chkstk_darwin(v161);
  v145 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v139 - v12;
  v13 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v13 - 8);
  v166 = &v139 - v14;
  v164 = type metadata accessor for AuthorizationRecord();
  v15 = *(v164 - 8);
  v16 = __chkstk_darwin(v164);
  v149 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v144 = &v139 - v19;
  v143 = v20;
  __chkstk_darwin(v18);
  v163 = &v139 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v140 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v155 = &v139 - v27;
  v28 = __chkstk_darwin(v26);
  v150 = &v139 - v29;
  v142 = v30;
  __chkstk_darwin(v28);
  v32 = &v139 - v31;
  v167 = type metadata accessor for Logger();
  v169 = *(v167 - 8);
  v33 = __chkstk_darwin(v167);
  v141 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v151 = &v139 - v36;
  __chkstk_darwin(v35);
  v38 = &v139 - v37;
  v39 = swift_allocObject();
  v39[2] = a3;
  v39[3] = a4;
  v165 = a4;
  v39[4] = a5;
  v154 = a3;

  static Logger.authorization.getter();
  v170 = a1;
  v171 = v23;
  v40 = *(v23 + 16);
  v157 = v23 + 16;
  v156 = v40;
  v40(v32, a1, v22);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v159 = v22;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v162 = v15;
    v45 = v44;
    *&v172[0] = swift_slowAlloc();
    v46 = a5;
    v47 = *&v172[0];
    *v45 = 136446210;
    sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v22;
    v50 = v39;
    v51 = v46;
    v53 = v52;
    v153 = *(v171 + 8);
    v153(v32, v49);
    v54 = sub_100002CB4(v48, v53, v172);
    v55 = v51;
    v39 = v50;

    *(v45 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Reset authorization for record identifier: %{public}s", v45, 0xCu);
    sub_1000032BC(v47);

    v15 = v162;

    v56 = v167;
    v152 = *(v169 + 8);
    v152(v38, v167);
  }

  else
  {

    v153 = *(v171 + 8);
    v153(v32, v22);
    v56 = v167;
    v152 = *(v169 + 8);
    v152(v38, v167);
    v55 = a5;
  }

  v57 = v166;
  sub_10003C47C(v170, v166);
  v58 = v164;
  if ((*(v15 + 48))(v57, 1, v164) == 1)
  {
    sub_10000D5C4(v57, &unk_10006C0F0, &qword_100056690);
    v59 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v60 = swift_allocError();
    (*(*(v59 - 8) + 104))(v61, enum case for FamilyControlsError.invalidArgument(_:), v59);
    swift_willThrow();
    swift_errorRetain();
    v165(v60);
  }

  v162 = v15;
  v63 = *(v15 + 32);
  v63(v163, v57, v58);
  v64 = v158;
  AuthorizationRecord.status.getter();
  v65 = (*(v160 + 88))(v64, v161);
  v66 = enum case for AuthorizationStatus.notDetermined(_:);
  if (v65 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    v166 = v55;
    v67 = v151;
    static Logger.authorization.getter();
    v68 = v150;
    v69 = v159;
    v156(v150, v170, v159);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v67;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v139 = v39;
      v75 = v74;
      *&v172[0] = v74;
      *v73 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v68;
      v78 = v56;
      v80 = v79;
      v153(v77, v69);
      v81 = sub_100002CB4(v76, v80, v172);

      *(v73 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "Reset authorization for record identifier: %{public}s already not determined", v73, 0xCu);
      sub_1000032BC(v75);

      v82 = v72;
      v83 = v78;
    }

    else
    {

      v153(v68, v69);
      v82 = v67;
      v83 = v56;
    }

    v85 = (v152)(v82, v83);
    v86 = v162;
    v89 = sub_100004AE4(v85, v87, v88);
    if ((v89 & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        v89 = swift_once();
      }

      sub_100048C54(v89, v90, v91);
    }

    v165(0);
    (*(v86 + 8))(v163, v164);
  }

  v139 = v39;
  if (v65 == enum case for AuthorizationStatus.denied(_:))
  {
    v166 = v55;
    AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    (*(v160 + 104))(v145, v66, v161);
    AuthorizationRecord.type.getter();
    v84 = v149;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003B3DC(v84);
    v116 = v141;
    static Logger.authorization.getter();
    v117 = v140;
    v118 = v159;
    v156(v140, v170, v159);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v162;
    if (v121)
    {
      v123 = v116;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v172[0] = v125;
      *v124 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v127;
      v153(v117, v118);
      v129 = sub_100002CB4(v126, v128, v172);

      *(v124 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v119, v120, "Reset authorization for record identifier: %{public}s not determined", v124, 0xCu);
      sub_1000032BC(v125);
      v84 = v149;

      v130 = v123;
    }

    else
    {

      v153(v117, v118);
      v130 = v116;
    }

    v131 = (v152)(v130, v167);
    v132 = v164;
    v135 = sub_100004AE4(v131, v133, v134);
    if ((v135 & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        v135 = swift_once();
      }

      sub_100048C54(v135, v136, v137);
    }

    v165(0);
    v138 = *(v122 + 8);
    v138(v84, v132);
    v138(v163, v132);
  }

  v92 = v58;
  v93 = v168;
  if (v65 == enum case for AuthorizationStatus.approved(_:))
  {
    v165 = sub_100007504(v168, v168[3]);
    v94 = v163;
    v169 = AuthorizationRecord.type.getter();
    v95 = v94;
    v167 = AuthorizationRecord.bundleIdentifier.getter();
    v166 = v96;
    v97 = v162;
    v98 = v144;
    v99 = v92;
    (*(v162 + 16))(v144, v95, v92);
    sub_10000D398(v93, v172);
    v156(v155, v170, v159);
    v100 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v101 = (v143 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = v171;
    v103 = (*(v171 + 80) + v101 + 136) & ~*(v171 + 80);
    v104 = (v142 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    v63((v105 + v100), v98, v99);
    v106 = v105 + v101;
    v107 = v172[7];
    *(v106 + 96) = v172[6];
    *(v106 + 112) = v107;
    *(v106 + 128) = v173;
    v108 = v172[3];
    *(v106 + 32) = v172[2];
    *(v106 + 48) = v108;
    v109 = v172[5];
    *(v106 + 64) = v172[4];
    *(v106 + 80) = v109;
    v110 = v172[1];
    *v106 = v172[0];
    *(v106 + 16) = v110;
    (*(v102 + 32))(v105 + v103, v155, v159);
    v111 = (v105 + v104);
    v112 = v139;
    *v111 = sub_10000D388;
    v111[1] = v112;
    v113 = v147;
    v114 = v146;
    v115 = v148;
    (*(v147 + 104))(v146, enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:), v148);

    sub_10000EE84(v114, v167, v166, v169, sub_10000D904, v105);

    (*(v113 + 8))(v114, v115);
    (*(v162 + 8))(v163, v164);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B7C8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t *), uint64_t a7, uint64_t a8, char *a9, void (*a10)(uint64_t *))
{
  v112 = a8;
  v116 = a2;
  v130 = a1;
  v122 = type metadata accessor for Logger();
  v118 = *(v122 - 8);
  v14 = __chkstk_darwin(v122);
  v109 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v117 = &v102 - v16;
  v115 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for UUID();
  v119 = *(v120 - 8);
  v18 = *(v119 + 64);
  v19 = __chkstk_darwin(v120);
  v108 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v110 = &v102 - v21;
  __chkstk_darwin(v20);
  v111 = &v102 - v22;
  v121 = type metadata accessor for AuthorizationStatus();
  v125 = *(v121 - 8);
  __chkstk_darwin(v121);
  v124 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v24 - 8);
  v26 = &v102 - v25;
  v126 = type metadata accessor for AuthorizationRecord();
  v123 = *(v126 - 8);
  v27 = *(v123 + 64);
  v28 = __chkstk_darwin(v126);
  __chkstk_darwin(v28);
  v30 = &v102 - v29;
  v31 = swift_allocObject();
  *(v31 + 2) = a4;
  *(v31 + 3) = a5;
  v127 = a5;
  v129 = v31;
  *(v31 + 4) = a6;
  v32 = a4;
  v128 = a6;

  sub_10003C47C(v130, v26);
  v33 = v124;
  v34 = v125;
  v104 = v27;
  v105 = v18;
  v106 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v107 = v32;
  v36 = v30;
  v37 = v123;
  v38 = v126;
  if ((*(v123 + 48))(v26, 1, v126) == 1)
  {
    sub_10000D5C4(v26, &unk_10006C0F0, &qword_100056690);
    v39 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v40 = swift_allocError();
    (*(*(v39 - 8) + 104))(v41, enum case for FamilyControlsError.invalidArgument(_:), v39);
    swift_willThrow();
    swift_errorRetain();
    v127(v40);
  }

  v42 = v38;
  v43 = *(v37 + 32);
  (v43)(v30, v26, v42);
  AuthorizationRecord.status.getter();
  v44 = (*(v34 + 88))(v33, v121);
  if (v44 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v30);
    v45 = v122;
    v46 = v30;
    v47 = v117;
    static Logger.authorization.getter();
    v48 = v119;
    v49 = v110;
    v50 = v120;
    (*(v119 + 16))(v110, v130, v120);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v131[0] = v54;
      *v53 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v50;
      v58 = v57;
      (*(v48 + 8))(v49, v56);
      v59 = sub_100002CB4(v55, v58, v131);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Revoked authorization for record identifier: %{public}s already not determined", v53, 0xCu);
      sub_1000032BC(v54);

      v60 = (v118[1])(v117, v122);
    }

    else
    {

      (*(v48 + 8))(v49, v50);
      v60 = (v118[1])(v47, v45);
    }

LABEL_17:
    v99 = sub_100004AE4(v60, v61, v62);
    if ((v99 & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        v99 = swift_once();
      }

      sub_100048C54(v99, v100, v101);
    }

    v127(0);
    (*(v37 + 8))(v46, v126);
  }

  v63 = v122;
  if (v44 == enum case for AuthorizationStatus.denied(_:))
  {
    v46 = v30;
    sub_10003AEE4(v30);
    v87 = v109;
    static Logger.authorization.getter();
    v88 = v119;
    v89 = v108;
    v90 = v120;
    (*(v119 + 16))(v108, v130, v120);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v131[0] = v130;
      *v93 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v90;
      v97 = v96;
      (*(v88 + 8))(v89, v95);
      v98 = sub_100002CB4(v94, v97, v131);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Revoked authorization for record identifier: %{public}s already denied", v93, 0xCu);
      sub_1000032BC(v130);

      v60 = (v118[1])(v109, v63);
    }

    else
    {

      (*(v88 + 8))(v89, v90);
      v60 = (v118[1])(v87, v63);
    }

    goto LABEL_17;
  }

  v127 = v43;
  if (v44 == enum case for AuthorizationStatus.approved(_:))
  {
    v65 = v37;
    v128 = a10;
    v124 = a9;
    v118 = sub_100007504(v35, v35[3]);
    v125 = AuthorizationRecord.type.getter();
    v103 = v30;
    v122 = AuthorizationRecord.bundleIdentifier.getter();
    v121 = v66;
    sub_10000D398(v35, v131);
    v67 = v106;
    (*(v37 + 16))(v106, v36, v126);
    v68 = v119;
    v69 = v111;
    v70 = v120;
    (*(v119 + 16))(v111, v130, v120);
    v71 = (*(v65 + 80) + 152) & ~*(v65 + 80);
    v72 = (v104 + *(v68 + 80) + v71) & ~*(v68 + 80);
    v73 = (v105 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    v75 = v131[7];
    *(v74 + 112) = v131[6];
    *(v74 + 128) = v75;
    *(v74 + 144) = v132;
    v76 = v131[3];
    *(v74 + 48) = v131[2];
    *(v74 + 64) = v76;
    v77 = v131[5];
    *(v74 + 80) = v131[4];
    *(v74 + 96) = v77;
    v78 = v131[1];
    *(v74 + 16) = v131[0];
    *(v74 + 32) = v78;
    v79 = v67;
    v80 = v126;
    (v127)(v74 + v71, v79, v126);
    (*(v68 + 32))(v74 + v72, v69, v70);
    v81 = (v74 + v73);
    v82 = v129;
    *v81 = v124;
    v81[1] = v82;
    v83 = v114;
    v84 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:);
    if ((v116 & 1) == 0)
    {
      v84 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:);
    }

    v85 = v113;
    v86 = v115;
    (*(v114 + 104))(v113, *v84, v115);

    sub_10000EE84(v85, v122, v121, v125, v128, v74);

    (*(v83 + 8))(v85, v86);
    (*(v65 + 8))(v103, v80);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Request internal authorization", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_10003B998(a1);
  v13 = sub_100007504((a2 + 80), *(a2 + 104));
  sub_10002C81C(a1, 0xD000000000000014, 0x8000000100057A70, *v13);
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  sub_100047AE4(1, 1);
  return a3(0);
}

void sub_10000C798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = [v15 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == a4 && v20 == a5)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

LABEL_20:
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_23:

        sub_1000077C0(a1, v24, v26, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Int sub_10000C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v32 = v9;
    v33 = v4;
    v31[1] = v31;
    __chkstk_darwin(v11);
    v34 = v31 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v10);
    v35 = 0;
    v36 = v6;
    v10 = 0;
    v9 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v38 = a3;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v4 = v16 | (v10 << 6);
      v19 = *(*(v6 + 48) + 8 * v4);
      v20 = [v19 bundleIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        a3 = v38;
        if (v22 == v37 && v24 == v38)
        {

          v6 = v36;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v36;
          if ((v26 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {

        a3 = v38;
LABEL_21:
        *&v34[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_24:
          v28 = sub_1000077C0(v34, v32, v35, v6);

          return v28;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_24;
      }

      v18 = *(v9 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();

  v28 = sub_10000771C(v30, v9, v6, v37, a3);

  return v28;
}

Swift::Int sub_10000CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000C958(a1, a2, a3);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_10000D33C();
    while (1)
    {
      swift_dynamicCast();
      v11 = [v23 bundleIdentifier];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

LABEL_7:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_26;
      }
    }

    v18 = *(&_swiftEmptySetSingleton + 2);
    if (*(&_swiftEmptySetSingleton + 3) <= v18)
    {
      sub_100035B98(v18 + 1);
    }

    result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
    v6 = &_swiftEmptySetSingleton + 56;
    v7 = -1 << *(&_swiftEmptySetSingleton + 32);
    v8 = result & ~v7;
    v9 = v8 >> 6;
    if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
    {
      v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = 0;
      v20 = (63 - v7) >> 6;
      do
      {
        if (++v9 == v20 && (v19 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v21 = v9 == v20;
        if (v9 == v20)
        {
          v9 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v9];
      }

      while (v22 == -1);
      v10 = __clz(__rbit64(~v22)) + (v9 << 6);
    }

    *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v23;
    ++*(&_swiftEmptySetSingleton + 2);
    goto LABEL_7;
  }

LABEL_26:

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10000CEC0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v34 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Revoke internal authorization", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  sub_100007504(a1 + 5, a1[8]);
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  sub_10003CB70(&_swiftEmptyArrayStorage, v8);
  (*(v6 + 8))(v8, v5);
  v16 = sub_100007504(a1 + 10, a1[13]);
  v17 = *v16;
  v18 = [*v16 deviceActivity];
  v19 = [v18 allowedClients];

  if (v19)
  {
    sub_10000D33C();
    sub_10000DA84(&qword_10006B9C0, sub_10000D33C, &protocol conformance descriptor for NSObject);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v17 deviceActivity];
  if (v20)
  {
    sub_10000CC54(v20, 0xD000000000000014, 0x8000000100057A70);
    sub_10000D33C();
    sub_10000DA84(&qword_10006B9C0, sub_10000D33C, &protocol conformance descriptor for NSObject);
    v22.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  [v21 setAllowedClients:v22.super.isa];

  v26 = sub_100003A18(v23, v24, v25);
  if ((v26 & 1) == 0)
  {
    v29 = [*sub_100007504(a1 + 10 a1[13])];
    [v29 setSharingAppleIDs:0];
  }

  v30 = sub_100004AE4(v26, v27, v28);
  if ((v30 & 1) == 0)
  {
    if (qword_10006B7F0 != -1)
    {
      v30 = swift_once();
    }

    sub_100048C54(v30, v31, v32);
  }

  return v36(0);
}

unint64_t sub_10000D33C()
{
  result = qword_10006B9B8;
  if (!qword_10006B9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006B9B8);
  }

  return result;
}

uint64_t sub_10000D3D4()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000032BC(v0 + 2);
  sub_1000032BC(v0 + 7);
  sub_1000032BC(v0 + 12);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D5C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003720(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D62C(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 152) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100006C78(a1, v1 + 16, v1 + v4, (v1 + v7), v9, v10);
}

uint64_t sub_10000D734()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D774()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 136) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1000032BC((v0 + v5));
  sub_1000032BC((v0 + v5 + 40));
  sub_1000032BC((v0 + v5 + 80));

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D904(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 136) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100005944(a1, v1 + v4, v1 + v5, v1 + v7, v9, v10);
}

uint64_t sub_10000DA30(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000DA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DACC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DB18()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 143) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  sub_1000032BC(v7);
  sub_1000032BC(v7 + 5);
  sub_1000032BC(v7 + 10);

  sub_100007644(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10000DC08(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 143) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100004F8C(a1, v1 + v4, v8, v1 + v6, v9, v10, v12, v13);
}

uint64_t sub_10000DCF0()
{
  v1 = [*v0 receivedInvitations];
  sub_10000E20C();
  sub_10000E258();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_10000DD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100003720(&qword_10006BA50, &qword_100056770);
  __chkstk_darwin(v12 - 8);
  v14 = aBlock - v13;
  sub_10000E19C(a2, aBlock - v13);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  isa = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v14, v15);
  }

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_100066168;
    a4 = _Block_copy(aBlock);
  }

  [v6 sendInvitationToDestination:a1 expirationDate:isa context:a3 serverAcknowledgedBlock:a4];
  _Block_release(a4);
}

void sub_10000DF48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100012D58;
    v9[3] = &unk_100066140;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v7 acceptInvitation:a1 withContext:a2 serverAcknowledgedBlock:v8];
  _Block_release(v8);
}

void sub_10000E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100012D58;
    v7[3] = &unk_100066118;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 declineInvitation:a1 serverAcknowledgedBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10000E184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BA50, &qword_100056770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E20C()
{
  result = qword_10006BA58;
  if (!qword_10006BA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006BA58);
  }

  return result;
}

unint64_t sub_10000E258()
{
  result = qword_10006BA60;
  if (!qword_10006BA60)
  {
    sub_10000E20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BA60);
  }

  return result;
}

uint64_t sub_10000E2C0()
{
  error = 0;
  v1 = SecTaskCopySigningIdentifier(v0, &error);
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    if (error)
    {
    }
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136446210;
      swift_beginAccess();
      sub_100003720(&qword_10006BAD0, &qword_100056778);
      v8 = String.init<A>(describing:)();
      v10 = sub_100002CB4(v8, v9, v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to extract bundle identifier from SecTask: %{public}s", v6, 0xCu);
      sub_1000032BC(v7);
    }

    swift_beginAccess();
    if (error)
    {
    }

    return 0;
  }

  return v3;
}

id sub_10000E4A8@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  *a1 = result;
  return result;
}

id sub_10000E510(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSString a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = a3;
  if (a1)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14.super.isa = 0;
  if (a3)
  {
LABEL_3:
    v13 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  if (a7)
  {
    v17[4] = a7;
    v17[5] = a8;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10000E668;
    v17[3] = &unk_100066190;
    a7 = _Block_copy(v17);
  }

  v15 = [v8 refreshIDStatusForDestinations:v14.super.isa service:v13 listenerID:a5 queue:a6 completionBlock:a7];
  _Block_release(a7);

  return v15;
}

uint64_t sub_10000E668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_10000E6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E710(int a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v3 = 0xD000000000000010;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = os_variant_allows_internal_security_policies();
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 BOOLForKey:v12];

    if (v13)
    {

      v14 = 1;
    }

    else
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = [v11 BOOLForKey:v15];

      v17 = String._bridgeToObjectiveC()();
      v14 = [v11 BOOLForKey:v17];

      if (v32)
      {
        if (v32 != 1)
        {
          v14 &= v16;
        }
      }

      else
      {
        v14 = v16;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  static Logger.permissions.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v31 = v4;
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v20 = 136315650;
    HIDWORD(v30) = v8;
    if (v8)
    {
      v21 = 0;
    }

    else
    {
      v21 = 1953459744;
    }

    if (v8)
    {
      v22 = 0xE000000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    v23 = sub_100002CB4(v21, v22, &v33);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    if (v32)
    {
      if (v32 == 1)
      {
        v3 = 0x6E614D4D444D6F6ELL;
      }

      else
      {
        v3 = 7105633;
      }

      if (v32 == 1)
      {
        v24 = 0xEF746E656D656761;
      }

      else
      {
        v24 = 0xE300000000000000;
      }
    }

    else
    {
      v24 = 0x8000000100057BA0;
    }

    v25 = sub_100002CB4(v3, v24, &v33);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    if (v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = 1953459744;
    }

    if (v14)
    {
      v27 = 0xE000000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    v28 = sub_100002CB4(v26, v27, &v33);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "This device is%s internal and the permission requirement %s is%s overridden.", v20, 0x20u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v31);
    v8 = HIDWORD(v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v8 & v14;
}

char *sub_10000EB18()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener;
  *&v0[v7] = [objc_opt_self() anonymousListener];
  v18 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue;
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000112FC(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_100011344();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v0[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = &v0[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
  v10 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v11 = type metadata accessor for AuthorizationAuthenticator(0);
  v20.receiver = v1;
  v20.super_class = v11;
  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener;
  v14 = *&v12[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener];
  v15 = v12;
  [v14 setDelegate:v15];
  [*&v12[v13] resume];

  return v15;
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v31 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v31);
  v10 = (&v26 - v9);
  v30 = type metadata accessor for Logger();
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v14 = *&v6[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = a5;
  v32 = a5;
  v15[4] = a6;
  v15[5] = &v34;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100011280;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000113B8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000219B4;
  aBlock[3] = &unk_100066310;
  v17 = _Block_copy(aBlock);
  v18 = v6;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    if (v34 == 1)
    {
      sub_10000F260(v26, v27, v28, v29);
    }

    else
    {
      static Logger.authentication.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Already prompting for authorization. Rejecting new request.", v22, 2u);
      }

      (*(v11 + 8))(v13, v30);
      v23 = type metadata accessor for FamilyControlsError();
      sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      v24 = swift_allocError();
      (*(*(v23 - 8) + 104))(v25, enum case for FamilyControlsError.authorizationConflict(_:), v23);
      *v10 = v24;
      swift_storeEnumTagMultiPayload();
      v32(v10);
      sub_10000D5C4(v10, &qword_10006BB60, qword_100056698);
    }
  }

  return result;
}

void sub_10000F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithServiceName:v8 viewControllerClassName:v9];

  v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v12 = [*(v4 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener) endpoint];
  v13 = [v12 _endpoint];

  [v11 setXpcEndpoint:v13];
  swift_unknownObjectRelease();
  sub_100003720(&qword_10006BC58, &unk_1000568B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056810;
  type metadata accessor for FamilyControlsAuthenticationUIService();
  *(inited + 32) = static FamilyControlsAuthenticationUIService.ServiceTypeKey.getter();
  *(inited + 40) = v15;
  v16 = FamilyControlsAuthenticationUIService.ServiceType.rawValue.getter();
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v16;
  *(inited + 80) = static FamilyControlsAuthenticationUIService.ServiceBundleIdentifierKey.getter();
  *(inited + 88) = v17;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  *(inited + 128) = static FamilyControlsAuthenticationUIService.ServiceMemberKey.getter();
  *(inited + 136) = v18;
  v19 = FamilyControlsMember.rawValue.getter();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v19;
  v20 = sub_100041CC4(inited);
  swift_setDeallocating();
  sub_100003720(&unk_10006BC60, &unk_100056CE0);
  swift_arrayDestroy();
  sub_100014820(v20);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setUserInfo:isa];

  v22 = [objc_opt_self() newHandleWithDefinition:v10 configurationContext:v11];
  v23 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v22 registerObserver:v24];
  [v22 activateWithContext:v23];
}

id sub_10000F554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationAuthenticator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AuthorizationAuthenticator(uint64_t a1)
{
  result = qword_10006BB48;
  if (!qword_10006BB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F654(uint64_t a1)
{
  sub_10000F700(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000F700(uint64_t a1)
{
  if (!qword_10006BB58)
  {
    sub_1000075FC(&qword_10006BB60, qword_100056698);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10006BB58);
    }
  }
}

uint64_t sub_10000F7BC(void *a1)
{
  v65 = sub_100003720(&qword_10006BB60, qword_100056698);
  v2 = *(v65 - 8);
  v3 = __chkstk_darwin(v65);
  v59 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = &v58 - v5;
  v7 = sub_100003720(&unk_10006BC30, &qword_100056898);
  v8 = __chkstk_darwin(v7 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v58 = &v58 - v17;
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  static Logger.authentication.getter();
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v64 = v2;
    v24 = v6;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    v28 = v23;
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    *(v28 + 4) = v20;
    *v29 = v20;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Did deactivate service: %{public}@", v28, 0xCu);
    sub_10000D5C4(v29, &qword_10006BC50, &qword_1000568A8);

    v11 = v27;
    v12 = v26;
    v13 = v25;
    v6 = v24;
    v2 = v64;
  }

  v62 = *(v13 + 8);
  v62(v19, v12);
  v67 = 0;
  v68 = 0;
  (*(v2 + 56))(v11, 1, 1, v65);
  v31 = v63;
  v32 = *&v63[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v33 = swift_allocObject();
  v33[2] = &v67;
  v33[3] = v31;
  v64 = v11;
  v33[4] = v11;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_100011134;
  *(v34 + 24) = v33;
  aBlock[4] = sub_1000113B8;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000219B4;
  aBlock[3] = &unk_100066298;
  v35 = _Block_copy(aBlock);
  v36 = v31;

  dispatch_sync(v32, v35);
  _Block_release(v35);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    v38 = v2;
    v39 = v67;
    if (v67)
    {
      v40 = v12;
      v41 = v68;
      v42 = v64;
      v43 = v61;
      sub_100011150(v64, v61);
      if ((*(v38 + 48))(v43, 1, v65) == 1)
      {

        sub_10000D5C4(v43, &unk_10006BC30, &qword_100056898);
        v44 = v58;
        static Logger.authentication.getter();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Service deactivated without returning a response. Treating it as a cancel.", v47, 2u);
          v42 = v64;
        }

        v62(v44, v40);
        v48 = type metadata accessor for FamilyControlsError();
        sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
        v49 = swift_allocError();
        (*(*(v48 - 8) + 104))(v50, enum case for FamilyControlsError.authorizationCanceled(_:), v48);
        v51 = v59;
        *v59 = v49;
        swift_storeEnumTagMultiPayload();
        v39(v51);
        sub_100011140(v39, v41);
        v52 = v51;
      }

      else
      {
        sub_1000111C0(v43, v6);

        v39(v6);
        sub_100011140(v39, v41);
        v52 = v6;
      }

      sub_10000D5C4(v52, &qword_10006BB60, qword_100056698);
    }

    else
    {
      v53 = v60;
      static Logger.authentication.getter();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      v56 = os_log_type_enabled(v54, v55);
      v42 = v64;
      if (v56)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Missing authentication request completion handler", v57, 2u);
      }

      v62(v53, v12);
    }

    sub_10000D5C4(v42, &unk_10006BC30, &qword_100056898);
    sub_100011140(v67, v68);
  }

  return result;
}

uint64_t sub_10000FF38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003720(&unk_10006BC30, &qword_100056898);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7];
  v9 = (a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  v10 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  v11 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler + 8);
  v12 = *a1;
  v13 = a1[1];
  *a1 = v10;
  a1[1] = v11;
  sub_100011230(v10, v11);
  sub_100011140(v12, v13);
  v14 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
  swift_beginAccess();
  sub_100011150(a2 + v14, v8);
  sub_100010CC4(v8, a3);
  v15 = *v9;
  v16 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_100011140(v15, v16);
  v17 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  swift_beginAccess();
  sub_100010CC4(v8, a2 + v14);
  return swift_endAccess();
}

uint64_t sub_100010184(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  sub_1000112B4(0, &qword_10006BC40, NSObject_ptr);
  v13 = static NSObject.== infix(_:_:)();
  if (v13)
  {
    static Logger.authentication.getter();
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = [v14 processIdentifier];

      _os_log_impl(&_mh_execute_header, v15, v16, "Received connection from process %d", v17, 8u);
    }

    else
    {

      v15 = v14;
    }

    (*(v7 + 8))(v12, v6);
    type metadata accessor for FamilyControlsAuthenticationUIService();
    v21 = static FamilyControlsAuthenticationUIService.agentInterface.getter();
    [v14 setExportedInterface:v21];

    [v14 setExportedObject:v4];
    [v14 resume];
  }

  else
  {
    static Logger.authentication.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received connection for unknown listener", v20, 2u);
    }

    (*(v7 + 8))(v10, v6);
  }

  return v13 & 1;
}

uint64_t sub_1000104B0(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a2;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100010C88;
  *(v7 + 24) = v6;
  v13[4] = sub_100010CA4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000219B4;
  v13[3] = &unk_100066220;
  v8 = _Block_copy(v13);
  v9 = v2;
  swift_errorRetain();
  v10 = a1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010624(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = sub_100003720(&qword_10006BC28, &qword_100056890);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for AuthorizationStatus();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003720(&unk_10006BC30, &qword_100056898);
  __chkstk_darwin(v19 - 8);
  v21 = (&v37 - v20);
  v39 = a1;
  if (*(a1 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler))
  {
    if (a2)
    {
      *v21 = a2;
      v22 = sub_100003720(&qword_10006BB60, qword_100056698);
      swift_storeEnumTagMultiPayload();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      v23 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
      v24 = v39;
      swift_beginAccess();
      swift_errorRetain();
LABEL_15:
      sub_100010CC4(v21, v24 + v23);
      return swift_endAccess();
    }

    if (a3)
    {
      [a3 integerValue];
      AuthorizationStatus.init(rawValue:)();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        v36 = *(v16 + 32);
        v36(v18, v14, v15);
        v36(v21, v18, v15);
        v35 = sub_100003720(&qword_10006BB60, qword_100056698);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        (*(*(v35 - 8) + 56))(v21, 0, 1, v35);
        v23 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
        v24 = v39;
        swift_beginAccess();
        goto LABEL_15;
      }

      sub_10000D5C4(v14, &qword_10006BC28, &qword_100056890);
    }

    static Logger.authentication.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown authentication UI results. Treating it as a cancel.", v31, 2u);
    }

    (*(v37 + 8))(v11, v38);
    v32 = type metadata accessor for FamilyControlsError();
    sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, enum case for FamilyControlsError.authorizationCanceled(_:), v32);
    *v21 = v33;
    v35 = sub_100003720(&qword_10006BB60, qword_100056698);
    goto LABEL_14;
  }

  static Logger.authentication.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Request completion handler is missing. Ignoring response.", v27, 2u);
  }

  return (*(v37 + 8))(v9, v38);
}

uint64_t sub_100010C40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006BC30, &qword_100056898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010D34(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authentication.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did activate service: %{public}@", v11, 0xCu);
    sub_10000D5C4(v12, &qword_10006BC50, &qword_1000568A8);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100010ECC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authentication.getter();
  v9 = a1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = a2;
    v21 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = v9;
    swift_errorRetain();
    sub_100003720(&qword_10006BC48, &qword_1000568A0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100002CB4(v16, v17, &v21);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did invalidate service: %{public}@ with error: %{public}s", v12, 0x16u);
    sub_10000D5C4(v13, &qword_10006BC50, &qword_1000568A8);

    sub_1000032BC(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000110FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011140(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006BC30, &qword_100056898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000111C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011230(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011240()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011280()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  if (!*v1)
  {
    v2 = v0[4];
    v3 = v0[5];
    *v1 = v0[3];
    v1[1] = v2;
    *v3 = 1;
  }

  return result;
}

uint64_t sub_1000112B4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000112FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100011344()
{
  result = qword_10006BC80;
  if (!qword_10006BC80)
  {
    sub_1000075FC(&qword_10006BC78, qword_1000568C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BC80);
  }

  return result;
}

Swift::Int sub_100011400()
{
  Hasher.init()();
  v1 = LabelSlotType.rawValue.getter();
  Hasher._combine(_:)(v1);

  String.hash(into:)();

  v2 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  return Hasher.finalize()();
}

CGImageRef sub_1000117C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 scale];
  v9 = v8;
  result = [a1 size];
  v13 = v9 * v12;
  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 * v11;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = v13;
  v16 = v14;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = sub_100012950(v15, v16, DeviceRGB);

  if (!v18)
  {
    return 0;
  }

  v19 = v16;
  v20 = v15;
  v21 = v18;
  CGContextSetInterpolationQuality(v21, kCGInterpolationHigh);
  [a1 continuousCornerRadius];
  v23 = v22;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v20;
  v27.size.height = v16;
  v24 = CGPathCreateWithRoundedRect(v27, v23, v23, 0);
  CGContextAddPath(v21, v24);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.clip(using:)();
  (*(v5 + 8))(v7, v4);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v20;
  v28.size.height = v19;
  CGContextRef.draw(_:in:byTiling:)(v2, v28, 0);
  Image = CGBitmapContextCreateImage(v21);

  return Image;
}

id sub_100011B30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100011BB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011C2C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100011C70()
{
  v1 = 0xD000000000000041;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000045;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000022;
  }
}

BOOL sub_100011D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
  v5 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
  v6 = *(v4 + 24) == *(v5 + 24) && *(v4 + 32) == *(v5 + 32);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v7 = LabelSlotType.rawValue.getter(), v7 == LabelSlotType.rawValue.getter()))
  {
    return *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width) == *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011DD8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_tag] = a1;
  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_style] = a2;
  v4 = a1;
  v5 = a2;
  result = [v5 preferredContentSizeCategory];
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontLabel, ((result - 3) * 0.1 + 1.0) * 20.0, 0);
  v8 = [v5 userInterfaceStyle];
  v9 = objc_opt_self();
  v10 = &selRef_blackColor;
  if (v8)
  {
    v10 = &selRef_whiteColor;
  }

  v11 = [v9 *v10];
  v12 = [v11 CGColor];

  sub_100003720(&qword_10006BE10, &qword_100056A68);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100056900;
  *(result + 32) = NSFontAttributeName;
  if (!UIFontForLanguage)
  {
    goto LABEL_10;
  }

  v13 = result;
  type metadata accessor for CTFont(0);
  v13[5] = UIFontForLanguage;
  v13[8] = v14;
  v13[9] = NSForegroundColorAttributeName;
  type metadata accessor for CGColor(0);
  v13[13] = v15;
  v13[10] = v12;
  v16 = NSFontAttributeName;
  v17 = UIFontForLanguage;
  v18 = NSForegroundColorAttributeName;
  v19 = v12;
  sub_100041DF4(v13);
  swift_setDeallocating();
  sub_100003720(&unk_10006BE18, &unk_100056A70);
  swift_arrayDestroy();
  if (*&v4[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width] <= 0.0)
  {
    v20 = NAN;
  }

  else
  {
    v20 = *&v4[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100012978();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [objc_allocWithZone(UISTextLineDrawing) initWithString:v21 attributes:isa lineBreakMode:4 textAlignment:4 width:v20 scale:{objc_msgSend(v5, "displayScale")}];

  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_title] = v23;
  v24 = v23;
  [v24 drawingSize];
  v26 = v25;
  v28 = v27;

  v29 = &v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_drawingSize];
  *v29 = v26;
  *(v29 + 1) = v28;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TextDrawing();
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t sub_10001212C(void *a1, uint64_t a2)
{
  sub_1000036C4(a2, v14);
  type metadata accessor for LabelSlotTag();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = *&v13[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem];
  if (*(v3 + 16) && *(v3 + 16) != 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = v14[0];
      v5 = v14[1];

      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  v8 = LabelSlotType.rawValue.getter();
  if (v8 == LabelSlotType.rawValue.getter())
  {
LABEL_11:

    return 0;
  }

  v10 = objc_allocWithZone(type metadata accessor for TextDrawing());
  v11 = a1;
  v12 = sub_100011DD8(v13, v11);

  return v12;
}

CGImageRef sub_1000122F8(void *a1)
{
  v3 = sub_100003720(&qword_10006BE08, &qword_100056988);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabelSlotTag();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v45 = v5;
    v16 = a1;
    v17 = LabelSlotType.rawValue.getter();
    if (v17 != LabelSlotType.rawValue.getter())
    {

      return 0;
    }

    v44 = v9;
    v18 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
    v19 = v1 + OBJC_IVAR____TtC19FamilyControlsAgent20FamilyActivityDrawer__displayScale;
    v20 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent20FamilyActivityDrawer__displayScale);
    if (*(v19 + 8) == 1)
    {
      v21 = *&v20;
    }

    else
    {
      swift_retain_n();
      static os_log_type_t.fault.getter();
      v43 = v7;
      v22 = static Log.runtimeIssuesLog.getter();
      v7 = v43;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100012934(v20, 0);
      (*(v11 + 8))(v13, v10);
      sub_100012934(v20, 0);
      v21 = v47;
    }

    [v18 setScale:v21];
    v23 = *(v15 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
    if (*(v23 + 16))
    {
      if (*(v23 + 16) == 1)
      {

        v24 = String._bridgeToObjectiveC()();

        v27.super.isa = sub_10003E9A4(v24, v25, v26).super.isa;
      }

      else
      {
        v24 = String._bridgeToObjectiveC()();
        v27.super.isa = [objc_opt_self() imageNamed:v24];
      }

      v29 = [(objc_class *)v27.super.isa CGImage];
    }

    else
    {
      v43 = *(v23 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v46 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v45;
        static Published.subscript.getter();

        if ((*(v7 + 48))(v28, 1, v6) == 1)
        {
          sub_10000D5C4(v28, &qword_10006BE08, &qword_100056988);
        }

        else
        {
          v30 = v44;
          (*(v7 + 32))(v44, v28, v6);
          URL._bridgeToObjectiveC()(v31);
          v33 = v32;
          v34 = CGImageSourceCreateWithURL(v32, 0);

          if (v34)
          {
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v34, 0, 0);
            if (ImageAtIndex)
            {
              v36 = ImageAtIndex;
              v37 = sub_1000117C0(v18);

              (*(v7 + 8))(v44, v6);
              if (v37)
              {

                return v37;
              }
            }

            else
            {
              (*(v7 + 8))(v44, v6);
            }
          }

          else
          {
            (*(v7 + 8))(v30, v6);
          }
        }
      }

      v38 = objc_allocWithZone(ISIcon);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithBundleIdentifier:v39];

      v41 = [v40 prepareImageForDescriptor:v18];
      v29 = [v41 CGImage];
    }

    return v29;
  }

  return result;
}

uint64_t sub_100012934(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100012978()
{
  result = qword_10006B920;
  if (!qword_10006B920)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B920);
  }

  return result;
}

uint64_t sub_1000129D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BE28, qword_100056F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityItem.ActivityItemType(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityItem.ActivityItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012BB4()
{
  result = qword_10006BE30;
  if (!qword_10006BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BE30);
  }

  return result;
}

unint64_t sub_100012C0C()
{
  result = qword_10006BE38;
  if (!qword_10006BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BE38);
  }

  return result;
}

id sub_100012C60@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100012C9C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012D58;
  v5[3] = &unk_100066410;
  v2 = _Block_copy(v5);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  [ObjCClassFromMetadata synchronizeUsageWithCompletionHandler:v2];
  _Block_release(v2);
}

void sub_100012D58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100012DC4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012EA0;
  v12[3] = &unk_1000663E8;
  v10 = _Block_copy(v12);

  [v8 fetchReportsDuringInterval:isa partitionInterval:v10 completionHandler:a1];
  _Block_release(v10);
}

uint64_t sub_100012EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_100012FC8();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_100003720(&qword_10006BE48, &qword_100056BD8);
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    sub_100012FC8();
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_100012FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012FC8()
{
  result = qword_10006BE40;
  if (!qword_10006BE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006BE40);
  }

  return result;
}

id sub_10001301C()
{
  result = [objc_opt_self() mainBundle];
  qword_10006BE50 = result;
  return result;
}

uint64_t sub_100013058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100003720(&qword_10006BE58, &qword_100056BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_10006B770 != -1)
  {
    swift_once();
  }

  v6 = qword_10006BE50;
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale.autoupdatingCurrent.getter();
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = String.init(format:locale:arguments:)();

  sub_10001320C(v5);
  return v11;
}

uint64_t sub_10001320C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BE58, &qword_100056BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001329C(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v5 = qword_10006C9D8;
  v6 = [v5 *a2];

  *a3 = v6;
}

Class sub_100013370()
{
  v25 = type metadata accessor for UsageItemRecord.UsageType();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  v3 = UsageItemRecord.recordName.getter();
  v5 = v4;
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v6 = qword_10006C960;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  isa = CKRecordID.init(recordName:zoneID:)(v7, v6).super.isa;
  sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
  v24.super.isa = isa;
  v9._countAndFlagsBits = 0x7974697669746361;
  v9._object = 0xE800000000000000;
  v10 = CKRecord.init(recordType:recordID:)(v9, v24).super.isa;
  v11 = [(objc_class *)v10 encryptedValues];
  swift_getObjectType();
  v12 = UsageItemRecord.category.getter();
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v26 = v12;
  v27 = v13;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v14 = [(objc_class *)v10 encryptedValues];
  swift_getObjectType();
  v15 = UsageItemRecord.identifier.getter();
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v26 = v15;
  v27 = v16;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v17 = [(objc_class *)v10 encryptedValues];
  swift_getObjectType();
  UsageItemRecord.totalUsage.getter();
  v28 = &type metadata for Double;
  v29 = &protocol witness table for Double;
  v26 = v18;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  [(objc_class *)v10 encryptedValues];
  swift_getObjectType();
  UsageItemRecord.type.getter();
  v19 = UsageItemRecord.UsageType.rawValue.getter();
  v21 = v20;
  (*(v0 + 8))(v2, v25);
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v26 = v19;
  v27 = v21;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1000136C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UsageItemRecord.Source();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003720(&unk_10006BEA0, &unk_100056C20);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = type metadata accessor for UsageItemRecord.UsageType();
  v42 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  v15 = [a1 encryptedValues];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 objectForKeyedSubscript:v16];

  if (!v17 || (v45 = v17, sub_100003720(&qword_10006BE98, &qword_100056C18), (swift_dynamicCast() & 1) == 0))
  {
    swift_unknownObjectRelease();

    v29 = 1;
    goto LABEL_16;
  }

  v38 = a2;
  v35[3] = v43;
  v36 = v9;
  v18 = v44;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v15 objectForKeyedSubscript:v19];

  if (!v20 || (v37 = v18, v45 = v20, (swift_dynamicCast() & 1) == 0))
  {
    swift_unknownObjectRelease();

LABEL_15:

    v29 = 1;
    a2 = v38;
    goto LABEL_16;
  }

  v21 = v44;
  v35[2] = v43;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v15 objectForKeyedSubscript:v22];

  if (!v23 || (v43 = v23, (swift_dynamicCast() & 1) == 0) || (v24 = String._bridgeToObjectiveC()(), v25 = [v15 objectForKeyedSubscript:v24], v24, !v25))
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v45 = v25;
  v26 = swift_dynamicCast();
  a2 = v38;
  if (v26)
  {
    v35[1] = v21;
    UsageItemRecord.UsageType.init(rawValue:)();
    v27 = v42;
    v28 = v36;
    if ((*(v42 + 48))(v8, 1, v36) == 1)
    {
      swift_unknownObjectRelease();

      sub_10000D5C4(v8, &unk_10006BEA0, &unk_100056C20);
      v29 = 1;
    }

    else
    {
      (*(v27 + 32))(v14, v8, v28);
      v32 = v27;
      v33 = [a1 recordID];
      v34 = [v33 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v38;
      (*(v32 + 16))(v12, v14, v28);
      (*(v40 + 104))(v39, enum case for UsageItemRecord.Source.remote(_:), v41);
      UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
      swift_unknownObjectRelease();

      (*(v32 + 8))(v14, v36);
      v29 = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    v29 = 1;
  }

LABEL_16:
  v30 = type metadata accessor for UsageItemRecord();
  return (*(*(v30 - 8) + 56))(a2, v29, 1, v30);
}

uint64_t UsageStore.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100003720(&qword_10006BE60, &qword_100056BE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_100003720(&qword_10006BE68, &qword_100056BF0);
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v20 = a1;
  UsageStore.first(where:)();
  v10 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_10000D5C4(v6, &qword_10006BE60, &qword_100056BE8);
    v11 = type metadata accessor for UsageItemRecord();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    v13 = *(v6 + 1);
    v14 = *(v10 + 48);
    v15 = *(v7 + 48);
    *v9 = *v6;
    *(v9 + 1) = v13;
    v16 = type metadata accessor for UsageItemRecord();
    v17 = *(v16 - 8);
    v18 = *(v17 + 32);
    v18(&v9[v15], &v6[v14], v16);

    v18(a2, &v9[*(v7 + 48)], v16);
    return (*(v17 + 56))(a2, 0, 1, v16);
  }
}

uint64_t sub_100013F1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = UsageItemRecord.recordName.getter();
  v7 = v6;
  v8 = [a4 recordName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

void UsageStore.subscript.setter(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UsageItemRecord();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v19 - v13;
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  sub_10001428C(a1, &v19 - v15);
  v17 = *(v5 + 48);
  if (v17(v16, 1, v4) == 1)
  {
    sub_10000D5C4(v16, &qword_10006BE78, &qword_100056C00);
    UsageStore.subscript.getter(a2, v14);
    if (v17(v14, 1, v4))
    {
      sub_10000D5C4(v14, &qword_10006BE78, &qword_100056C00);
      sub_10000D5C4(a1, &qword_10006BE78, &qword_100056C00);

      return;
    }

    v18 = a2;
    (*(v5 + 16))(v7, v14, v4);
    sub_10000D5C4(v14, &qword_10006BE78, &qword_100056C00);
    v16 = v7;
  }

  else
  {
    v18 = a2;
  }

  UsageItemRecord.identifier.getter();
  (*(v5 + 8))(v16, v4);
  sub_10001428C(a1, v11);
  UsageStore.subscript.setter();

  sub_10000D5C4(a1, &qword_10006BE78, &qword_100056C00);
}

uint64_t sub_10001428C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UsageStore.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v5 = *(*(sub_100003720(&qword_10006BE78, &qword_100056C00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v5);
    v6 = malloc(v5);
  }

  a1[3] = v6;
  UsageStore.subscript.getter(a2, v6);
  return sub_1000143C0;
}

void sub_1000143C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  if (a2)
  {
    sub_10001428C(*(a1 + 24), v2);
    UsageStore.subscript.setter(v2, v4);
    sub_10000D5C4(v3, &qword_10006BE78, &qword_100056C00);
  }

  else
  {
    UsageStore.subscript.setter(v3, v4);
  }

  free(v3);

  free(v2);
}

CKRecordZoneID sub_100014480(uint64_t a1, uint64_t a2, void *a3, CKRecordZoneID *a4)
{
  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  v7._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7._object = v8;
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v9, v7).super.isa;
  a4->super.isa = result.super.isa;
  return result;
}

id sub_100014524(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = [objc_allocWithZone(CKRecordZone) initWithZoneID:*a3];
  result = [v6 setCapabilities:8];
  *a4 = v6;
  return result;
}

CKRecordID sub_1000145A0()
{
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  if (qword_10006B798 != -1)
  {
    swift_once();
  }

  v0 = qword_10006C970;
  v1._object = 0x80000001000581B0;
  v1._countAndFlagsBits = 0xD000000000000010;
  result.super.isa = CKRecordID.init(recordName:zoneID:)(v1, v0).super.isa;
  qword_10006C980 = result.super.isa;
  return result;
}

uint64_t sub_10001463C()
{
  v1 = [v0 encryptedValues];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKeyedSubscript:v2];
  swift_unknownObjectRelease();

  if (!v3)
  {
    return 0;
  }

  sub_100003720(&qword_10006BE98, &qword_100056C18);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Class sub_10001471C(uint64_t a1, unint64_t a2)
{
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v4 = qword_10006C980;
  v5._object = 0x80000001000581B0;
  v5._countAndFlagsBits = 0xD000000000000010;
  isa = CKRecord.init(recordType:recordID:)(v5, v4).super.isa;
  v7 = [(objc_class *)isa encryptedValues];
  swift_getObjectType();
  sub_10000DA30(a1, a2);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return isa;
}

Swift::Int sub_100014820(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003720(&qword_10006BF98, &qword_100057570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000036C4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001DE0C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001DE0C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001DE0C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001DE0C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

NSString sub_100014AE8()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C988 = result;
  return result;
}

void sub_100014B24(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = type metadata accessor for Logger();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v57 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  sub_100007504(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000112B4(0, &qword_10006BA58, IDSReceivedInvitation_ptr);
    sub_10000E258();
    Set.Iterator.init(_cocoa:)();
    v10 = v59[1];
    v11 = v59[2];
    v12 = v59[3];
    v13 = v59[4];
    v14 = v59[5];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v8 + 32);
    v11 = v8 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v8 + 56);
  }

  v45[1] = v12;
  v18 = (v12 + 64) >> 6;
  v53 = (v4 + 8);
  *&v9 = 136446210;
  v46 = v9;
  v56 = v18;
  v47 = v11;
  v48 = v10;
  while (v10 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26 || (v58 = v26, sub_1000112B4(0, &qword_10006BA58, IDSReceivedInvitation_ptr), swift_dynamicCast(), v25 = v59[0], v23 = v13, v24 = v14, !v59[0]))
    {
LABEL_21:
      sub_10001D648(v10);
      return;
    }

LABEL_19:
    static Logger.syncEngine.getter();
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v49 = v30;
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v30 = v46;
      v31 = v27;
      v50 = v29;
      v32 = v31;
      v33 = [v31 description];
      v52 = v24;
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v57;
      v39 = v53;
      v40 = v35;
      v41 = v55;
      v11 = v47;
      v42 = sub_100002CB4(v40, v37, v59);
      v10 = v48;

      v43 = v49;
      *(v49 + 1) = v42;
      _os_log_impl(&_mh_execute_header, v28, v50, "Handling pending invitation: %{public}s", v43, 0xCu);
      sub_1000032BC(v51);

      v44 = v38;
      v24 = v52;
      (*v39)(v44, v41);
    }

    else
    {

      (*v53)(v57, v55);
    }

    sub_100014F50(v27, v19, v20);

    v13 = v23;
    v14 = v24;
    v18 = v56;
  }

  v21 = v13;
  v22 = v14;
  v23 = v13;
  if (v14)
  {
LABEL_15:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v10 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      goto LABEL_21;
    }

    v22 = *(v11 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100014F50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v105 - v10;
  __chkstk_darwin(v9);
  v13 = &v105 - v12;
  v14 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v105 - v18;
  v108 = type metadata accessor for URL();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 context];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    *&v111 = v4;
    v112 = a1;
    v113 = v21;
    v24 = [v22 schemaIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == 0xD00000000000002CLL && 0x8000000100058310 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v28 = [v23 dictionary];
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v29 + 16) || (v30 = sub_100041270(0x6974617469766E69, 0xEE00617461446E6FLL), (v31 & 1) == 0))
      {

        v39 = v112;
        v33 = v111;
        goto LABEL_17;
      }

      sub_1000036C4(*(v29 + 56) + 32 * v30, v115);

      v32 = swift_dynamicCast();
      v33 = v111;
      if ((v32 & 1) == 0)
      {
        v39 = v112;
        goto LABEL_17;
      }

      v106 = v115[5];
      v107 = v115[6];
      v34 = [v23 dictionary];
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v35 + 16) || (v36 = sub_100041270(0xD000000000000018, 0x8000000100058380), (v37 & 1) == 0))
      {
        sub_100007644(v106, v107);

        v39 = v112;
        goto LABEL_17;
      }

      sub_1000036C4(*(v35 + 56) + 32 * v36, v115);

      v38 = swift_dynamicCast();
      v39 = v112;
      if ((v38 & 1) == 0)
      {
        sub_100007644(v106, v107);
        goto LABEL_17;
      }

      URL.init(string:)();

      v40 = v110;
      v41 = *(v110 + 48);
      v42 = v108;
      if (v41(v19, 1, v108) == 1)
      {
        sub_100007644(v106, v107);
        sub_10000D5C4(v19, &qword_10006BE08, &qword_100056988);
LABEL_17:
        static Logger.syncEngine.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        v51 = os_log_type_enabled(v49, v50);
        v52 = v114;
        if (v51)
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Failed to extract share metadata from invitation. Declining the invitation.", v53, 2u);
        }

        (*(v5 + 8))(v13, v33);
        v54 = *&v52[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24];
        v55 = *&v52[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32];
        sub_100007504(&v52[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager], v54);
        (*(v55 + 48))(v39, sub_10001C34C, 0, v54, v55);
        return swift_unknownObjectRelease();
      }

      v70 = v109;
      (*(v40 + 32))(v109, v19, v42);
      v71 = *(v40 + 16);
      v71(v17, v70, v42);
      (*(v40 + 56))(v17, 0, 1, v42);
      sub_10000DA30(v106, v107);
      v72 = v42;
      v73.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v41(v17, 1, v72) == 1)
      {
        v75 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v74);
        v75 = v76;
        (*(v40 + 8))(v17, v72);
      }

      v77 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v73.super.isa shareURL:v75];

      sub_100007644(v106, v107);
      sub_100003720(&qword_10006BFE8, &qword_100056D28);
      v78 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v79 = swift_allocObject();
      v111 = xmmword_100056C30;
      *(v79 + 16) = xmmword_100056C30;
      v80 = v79 + v78;
      v81 = v109;
      v71(v80, v109, v72);
      sub_100003720(&qword_10006BFF0, &qword_100056D30);
      v82 = v72;
      v83 = (sub_100003720(&qword_10006BFF8, &qword_100056D38) - 8);
      v84 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
      v85 = swift_allocObject();
      v86 = v71;
      v87 = v85;
      *(v85 + 16) = v111;
      v88 = v85 + v84;
      v89 = v83[14];
      v86(v88, v81, v82);
      *(v88 + v89) = v77;
      v90 = v77;
      sub_100041F1C(v87);
      swift_setDeallocating();
      sub_10000D5C4(v88, &qword_10006BFF8, &qword_100056D38);
      swift_deallocClassInstance();
      v91 = objc_allocWithZone(CKFetchShareMetadataOperation);
      v92 = v82;
      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_1000112B4(0, &qword_10006C000, CKDeviceToDeviceShareInvitationToken_ptr);
      sub_10001FEF8(&qword_10006C008, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v94 = Dictionary._bridgeToObjectiveC()().super.isa;

      v95 = [v91 initWithShareURLs:isa invitationTokensByShareURL:v94];

      [v95 setQualityOfService:25];
      v96 = swift_allocObject();
      v97 = v114;
      v98 = v112;
      *(v96 + 16) = v114;
      *(v96 + 24) = v98;
      v99 = v97;
      v100 = v98;
      CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
      v101 = *&v99[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
      v102 = *&v99[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
      sub_100007504(&v99[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container], v101);
      v115[3] = sub_1000112B4(0, &qword_10006C010, CKFetchShareMetadataOperation_ptr);
      v115[4] = &off_100067378;
      v115[0] = v95;
      v103 = *(v102 + 8);
      v104 = v95;
      v103(v115, v101, v102);

      swift_unknownObjectRelease();
      sub_100007644(v106, v107);
      (*(v110 + 8))(v109, v92);
      return sub_1000032BC(v115);
    }

    else if (v25 == 0xD000000000000033 && 0x8000000100058340 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v56 = v114;
      v57 = *&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 24];
      v58 = *&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 32];
      sub_100007504(&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database], v57);
      if (qword_10006B7A0 != -1)
      {
        swift_once();
      }

      v59 = qword_10006C978;
      v60 = swift_allocObject();
      v61 = v112;
      *(v60 + 16) = v56;
      *(v60 + 24) = v61;
      v62 = *(v58 + 16);
      v63 = v56;
      v64 = v61;
      v62(v59, sub_10001FF80, v60, v57, v58);

      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.syncEngine.getter();

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v115[0] = v68;
        *v67 = 136446210;
        v69 = sub_100002CB4(v25, v27, v115);

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v65, v66, "Received invitation using unknown schema: %{public}s", v67, 0xCu);
        sub_1000032BC(v68);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v5 + 8))(v11, v111);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    static Logger.syncEngine.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to extract context from invitation. Declining the invitation.", v45, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v46 = *&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24];
    v47 = *&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32];
    sub_100007504(&v114[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager], v46);
    return (*(v47 + 48))(a1, sub_10001C34C, 0, v46, v47);
  }
}

id sub_100015CA4()
{
  v2.receiver = v0;
  v2.super_class = _s18SharingCoordinatorCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015D68(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_10001C6F0(v4, v5);
    }
  }

  else if ((v6 & 1) == 0 && *&v4 == *&v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100015DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v114 = a2;
  v129 = a1;
  v121 = type metadata accessor for DispatchWorkItemFlags();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchQoS();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Logger();
  v6 = *(v137 - 8);
  v7 = __chkstk_darwin(v137);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v127 = &v114 - v11;
  v12 = __chkstk_darwin(v10);
  v135 = &v114 - v13;
  __chkstk_darwin(v12);
  v139 = &v114 - v14;
  v128 = v3;
  v15 = &v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  v16 = *&v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  v17 = *(v15 + 1);
  v18 = *(v17 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v114 - v22;
  v18(v16, v17);
  v24 = *(AssociatedTypeWitness - 1);
  if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v23, v20);
    static Logger.syncEngine.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create an IDS status fetcher", v27, 2u);
    }

    return (*(v6 + 8))(v9, v137);
  }

  v143 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = sub_10001C8A8(&aBlock);
  (*(v24 + 32))(v29, v23, AssociatedTypeWitness);
  sub_10001D888(&aBlock, &v149);
  v133 = dispatch_group_create();
  v30 = v129;
  v31 = v129 + 64;
  v32 = 1 << *(v129 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v129 + 64);
  v125 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  v35 = (v32 + 63) >> 6;
  v136 = (v6 + 8);
  v122 = "FamilyControlsAgent";

  v36 = 0;
  *&v37 = 136446210;
  v134 = v37;
  v38 = v139;
  v124 = v31;
  v123 = v35;
  while (1)
  {
    if (!v34)
    {
      do
      {
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_55;
        }

        if (v39 >= v35)
        {

          v106 = swift_allocObject();
          v107 = v114;
          v108 = v115;
          *(v106 + 16) = v114;
          *(v106 + 24) = v108;
          AssociatedConformanceWitness = sub_10001D6EC;
          v145 = v106;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v142 = sub_100017E50;
          v143 = &unk_1000664B0;
          v109 = _Block_copy(&aBlock);
          sub_100011230(v107, v108);
          v110 = v116;
          static DispatchQoS.unspecified.getter();
          v148 = &_swiftEmptyArrayStorage;
          sub_10001FEF8(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100003720(&qword_10006C0E0, &unk_100056C80);
          sub_10001D738();
          v111 = v118;
          v112 = v121;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v113 = v133;
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v109);

          (*(v120 + 8))(v111, v112);
          (*(v117 + 8))(v110, v119);

          return sub_1000032BC(&v149);
        }

        v34 = *(v31 + 8 * v39);
        ++v36;
      }

      while (!v34);
      v36 = v39;
    }

    v132 = v34;
    v131 = v36;
    v40 = (v36 << 9) | (8 * __clz(__rbit64(v34)));
    v41 = *(*(v30 + 56) + v40);
    v42 = *(v41 + 16);
    v130 = *(*(v30 + 48) + v40);

    if (v42)
    {
      break;
    }

    v45 = &_swiftEmptyDictionarySingleton;
LABEL_45:

    dispatch_group_enter(v133);
    v86 = v151;
    v138 = v150;
    v140 = sub_100007504(&v149, v150);
    v87 = v45[2];
    if (v87)
    {
      v88 = sub_10001CEBC(v45[2], 0);
      v89 = sub_10001D4F0(&aBlock, v88 + 4, v87, v45);
      v90 = aBlock;

      sub_10001D648(v90);
      if (v89 != v87)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v88 = &_swiftEmptyArrayStorage;
    }

    v91 = sub_100016C98(v88);

    v92 = static FamilyControlsService.nameIDS.getter();
    v94 = v93;
    v95 = v128;
    v96 = *&v128[v125];
    v97 = swift_allocObject();
    v97[2] = v45;
    v98 = v133;
    v97[3] = v133;
    v97[4] = v95;
    v99 = v130;
    v97[5] = v130;
    v100 = *(v86 + 32);
    v130 = v99;
    v126 = v98;
    v101 = v95;
    LOBYTE(v92) = v100(v91, v92, v94, 0xD00000000000002BLL, v122 | 0x8000000000000000, v96, sub_10001D6A0, v97, v138, v86);

    v30 = v129;
    v31 = v124;
    v35 = v123;
    v102 = v132;
    if ((v92 & 1) == 0)
    {
      static Logger.syncEngine.getter();
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Failed to refresh IDS ID status for family members", v105, 2u);
      }

      (*v136)(v127, v137);
      dispatch_group_leave(v126);
    }

    v34 = (v102 - 1) & v102;

    v38 = v139;
    v36 = v131;
  }

  v43 = 0;
  v44 = v41 + 32;
  v45 = &_swiftEmptyDictionarySingleton;
  v138 = v41;
  v140 = v42;
  while (v43 < *(v41 + 16))
  {
    sub_10001D958(v44, &aBlock);
    sub_100007504(&aBlock, v143);
    if (dispatch thunk of FamilyMemberable.isMe.getter())
    {
      goto LABEL_20;
    }

    sub_100007504(&aBlock, v143);
    v47 = dispatch thunk of FamilyMemberable.appleID.getter();
    if (!v48)
    {
      static Logger.syncEngine.getter();
      sub_10001D958(&aBlock, &v148);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v147 = v69;
        *v68 = v134;
        sub_10001D958(&v148, v146);
        sub_100003720(&qword_10006BF18, &unk_100056F90);
        v70 = v45;
        v71 = String.init<A>(describing:)();
        v73 = v72;
        sub_1000032BC(&v148);
        v74 = sub_100002CB4(v71, v73, &v147);
        v38 = v139;

        *(v68 + 4) = v74;
        v45 = v70;
        v41 = v138;
        _os_log_impl(&_mh_execute_header, v66, v67, "Failed to share zone with family member because they do not have an Apple ID: %{public}s", v68, 0xCu);
        sub_1000032BC(v69);
      }

      else
      {

        sub_1000032BC(&v148);
      }

      (*v136)(v38, v137);
      goto LABEL_19;
    }

    v49 = v47;
    v50 = v48;
    v51 = String._bridgeToObjectiveC()();
    v52 = IDSCopyIDForEmailAddress();

    if (!v52)
    {
      static Logger.syncEngine.getter();

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = v45;
        v79 = swift_slowAlloc();
        v148 = v79;
        *v77 = v134;
        v80 = sub_100002CB4(v49, v50, &v148);

        *(v77 + 4) = v80;
        v38 = v139;
        _os_log_impl(&_mh_execute_header, v75, v76, "Failed to get IDS destination for %{public}s", v77, 0xCu);
        sub_1000032BC(v79);
        v45 = v78;
        v41 = v138;

        v42 = v140;
      }

      else
      {
      }

      (*v136)(v135, v137);
      goto LABEL_20;
    }

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v56;
    v59 = sub_100041270(v53, v55);
    v60 = v56[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_56;
    }

    v63 = v58;
    if (v56[3] >= v62)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v148;
        if ((v58 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10001D378();
        v45 = v148;
        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_10001D0B8(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_100041270(v53, v55);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_59;
      }

      v59 = v64;
      v45 = v148;
      if ((v63 & 1) == 0)
      {
LABEL_36:
        v45[(v59 >> 6) + 8] |= 1 << v59;
        v81 = (v45[6] + 16 * v59);
        *v81 = v53;
        v81[1] = v55;
        v82 = (v45[7] + 16 * v59);
        *v82 = v49;
        v82[1] = v50;
        v83 = v45[2];
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        if (v84)
        {
          goto LABEL_57;
        }

        v45[2] = v85;
        goto LABEL_18;
      }
    }

    v46 = (v45[7] + 16 * v59);
    *v46 = v49;
    v46[1] = v50;

LABEL_18:
    v38 = v139;
    v41 = v138;
LABEL_19:
    v42 = v140;
LABEL_20:
    v43 = (v43 + 1);
    sub_1000032BC(&aBlock);
    v44 += 40;
    if (v42 == v43)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t *sub_100016C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100034A3C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100034A3C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10001DE0C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100016D98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100034A5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100034A5C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
        v16 = &off_100067470;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10001D888(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_100034A5C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
        v16 = &off_100067470;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10001D888(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100016F78(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v69 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v61 - v14;
  v76 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    sub_100017680(a1);
    if (v16)
    {
      v62 = a5;
      v63 = a4;
      v18 = v16;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = __CocoaDictionary.makeIterator()();
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v18 = v19 | 0x8000000000000000;
      }

      else
      {
        v27 = -1 << *(v16 + 32);
        v20 = v16 + 64;
        v28 = ~v27;
        v29 = -v27;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v22 = v30 & *(v16 + 64);
        v21 = v28;
      }

      v31 = v69;
      v64 = a3;
      v32 = 0;
      v61[1] = v21;
      v33 = (v21 + 64) >> 6;
      v68 = (v11 + 8);
      v65 = &_swiftEmptyArrayStorage;
      *&v17 = 138543362;
      v66 = v17;
      v70 = v33;
      v67 = v20;
LABEL_15:
      v34 = v32;
      for (i = v22; ; i = v71)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          v47 = __CocoaDictionary.Iterator.next()();
          if (!v47)
          {
            goto LABEL_42;
          }

          v49 = v48;
          v73 = v47;
          sub_1000112B4(0, &qword_10006BF40, NSString_ptr);
          swift_dynamicCast();
          v46 = v74;
          v73 = v49;
          sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
          swift_dynamicCast();
          v71 = i;
          v72 = v74;
          v32 = v34;
          if (!v46)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v42 = v34;
          v43 = i;
          v32 = v34;
          if (!i)
          {
            while (1)
            {
              v32 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                break;
              }

              if (v32 >= v33)
              {
                goto LABEL_42;
              }

              v43 = *(v20 + 8 * v32);
              ++v42;
              if (v43)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
            return;
          }

LABEL_24:
          v71 = (v43 - 1) & v43;
          v44 = (v32 << 9) | (8 * __clz(__rbit64(v43)));
          v45 = *(*(v18 + 56) + v44);
          v46 = *(*(v18 + 48) + v44);
          v72 = v45;
          if (!v46)
          {
LABEL_42:
            sub_10001D648(v18);
            a3 = v64;
            a5 = v62;
            v26 = v65;
            if (!(v65 >> 62))
            {
              goto LABEL_8;
            }

LABEL_43:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_44;
            }

LABEL_9:
            sub_100017B74(a5, v26, a3);

            return;
          }
        }

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(a2 + 16))
        {
          break;
        }

        sub_100041270(v50, v51);
        v53 = v52;

        if ((v53 & 1) == 0)
        {
          goto LABEL_37;
        }

        if ([v72 integerValue] == 1)
        {
          v59 = objc_allocWithZone(CKUserIdentityLookupInfo);
          v60 = String._bridgeToObjectiveC()();

          [v59 initWithEmailAddress:v60];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v65 = v76;
          v33 = v70;
          v22 = v71;
          goto LABEL_15;
        }

        v54 = [objc_opt_self() defaultCenter];
        if (qword_10006B7B0 != -1)
        {
          swift_once();
        }

        v55 = qword_10006C988;
        if (qword_10006B7E8 != -1)
        {
          swift_once();
        }

        v74 = qword_10006C9C0;
        v75 = 0;
        [v54 postNotificationName:v55 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
LABEL_18:
        v34 = v32;
        v33 = v70;
      }

LABEL_37:
      static Logger.syncEngine.getter();
      v56 = v46;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v36 = v18;
        v37 = a2;
        v38 = v10;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = v66;
        *(v39 + 4) = v56;
        *v40 = v46;
        v41 = v56;
        _os_log_impl(&_mh_execute_header, v57, v58, "Failed to get Apple ID for %{public}@", v39, 0xCu);
        sub_10000D5C4(v40, &qword_10006BC50, &qword_1000568A8);
        v31 = v69;

        v10 = v38;
        a2 = v37;
        v18 = v36;
        v20 = v67;
      }

      else
      {
        v41 = v57;
        v57 = v56;
      }

      (*v68)(v31, v10);
      goto LABEL_18;
    }
  }

  static Logger.syncEngine.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get IDS status for family members", v25, 2u);
  }

  (*(v11 + 8))(v15, v10);
  v26 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_43;
  }

LABEL_8:
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_44:

  dispatch_group_leave(a3);
}

void sub_100017680(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003720(&qword_10006BF50, &qword_100056C90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = sub_1000112B4(0, &qword_10006BF40, NSString_ptr);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v26)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v33);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7)) | (v33 << 6);
          sub_10001D79C(*(a1 + 48) + 40 * v34, &v48);
          sub_1000036C4(*(a1 + 56) + 32 * v34, &v50 + 8);
          v45 = v50;
          v46 = v51;
          v47 = v52;
          v43 = v48;
          v44 = v49;
          v35.isa = AnyHashable._bridgeToObjectiveC()().isa;
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          sub_1000036C4(&v45 + 8, v42);
          sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
          sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_46;
          }

          v7 &= v7 - 1;
          v38 = sub_100041494(v37);
          if (v39)
          {
            v28 = v2[6];
            v29 = *(v28 + 8 * v38);
            *(v28 + 8 * v38) = v37;
            v30 = v38;

            v31 = v2[7];
            v32 = *(v31 + 8 * v30);
            *(v31 + 8 * v30) = v41;

            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v40 = v2[2];
            if (v40 >= v2[3])
            {
              goto LABEL_50;
            }

            *(v2 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
            *(v2[6] + 8 * v38) = v37;
            *(v2[7] + 8 * v38) = v41;
            v2[2] = v40 + 1;
            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v33 = v27;
        }

LABEL_44:
        sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
LABEL_46:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      sub_10001D79C(*(a1 + 48) + 40 * v14, &v48);
      sub_1000036C4(*(a1 + 56) + 32 * v14, &v50 + 8);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      v43 = v48;
      v44 = v49;
      v15.isa = AnyHashable._bridgeToObjectiveC()().isa;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {

        goto LABEL_44;
      }

      v17 = v16;
      sub_1000036C4(&v45 + 8, v42);
      sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
      sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_46;
      }

      v18 = NSObject._rawHashValue(seed:)(v2[5]);
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*&v10[8 * (v20 >> 6)]) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *&v10[8 * v21];
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_48;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*&v10[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v17;
      *(v2[7] + 8 * v12) = v41;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_100017B74(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing + 8];
  v8 = *(v7 + 32);
  v41[3] = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing];
  v41[4] = v7;
  sub_10001C8A8(v41);
  v9 = a1;
  v8();
  v11 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching + 8];
  v12 = *(v11 + 16);
  v39 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching];
  v10 = v39;
  v40 = v11;
  sub_10001C8A8(v38);

  v12(v13, v10, v11);
  v14 = v39;
  v15 = v40;
  sub_10001D7F8(v38, v39);
  (*(*(v15 + 8) + 16))(25, v14);
  sub_10001D958(v41, &v35);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  sub_10001D888(&v35, v16 + 24);
  v17 = v39;
  v18 = v40;
  sub_10001D7F8(v38, v39);
  v19 = *(v18 + 32);
  v20 = v9;
  v19(sub_10001D8A0, v16, v17, v18);
  sub_10001D958(v41, &v35);
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_10001D888(&v35, v21 + 24);
  *(v21 + 64) = a3;
  v22 = v39;
  v23 = v40;
  sub_10001D7F8(v38, v39);
  v24 = *(v23 + 56);
  v25 = v4;
  v26 = a3;
  v24(sub_10001D8F4, v21, v22, v23);
  v27 = &v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container];
  v28 = *&v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
  v29 = *&v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
  sub_100007504(v27, v28);
  v30 = v39;
  v31 = v40;
  v32 = sub_100007504(v38, v39);
  v36 = v30;
  v37 = *(v31 + 8);
  v33 = sub_10001C8A8(&v35);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  (*(v29 + 8))(&v35, v28, v29);
  sub_1000032BC(&v35);
  sub_1000032BC(v38);
  return sub_1000032BC(v41);
}

uint64_t sub_100017E50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100017E94(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v47[-v11];
  v13 = a1[3];
  v14 = a1[4];
  sub_100007504(a1, v13);
  (*(v14 + 56))(v54, v13, v14);
  v15 = [*sub_100007504(v54 v54[3])];
  if (v15 && (v16 = v15, v17 = [v15 emailAddress], v16, v17))
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_1000032BC(v54);
    static Logger.syncEngine.getter();
    v21 = a2;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = v18;
      v25 = v24;
      v50 = swift_slowAlloc();
      v54[0] = v50;
      *v25 = 136446466;
      v26 = [v21 zoneName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v6;
      v28 = v27;
      v48 = v23;
      v29 = a3;
      v31 = v30;

      v32 = sub_100002CB4(v28, v31, v54);
      a3 = v29;

      *(v25 + 4) = v32;
      *(v25 + 12) = 2082;
      v33 = sub_100002CB4(v49, v20, v54);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v48, "Sharing %{public}s with family member: %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v12, v51);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v44 = a3;
    v45 = a3[3];
    v46 = a3[4];
    sub_100007504(v44, v45);
    return (*(v46 + 40))(a1, v45, v46);
  }

  else
  {
    sub_1000032BC(v54);
    static Logger.syncEngine.getter();
    sub_10001D958(a1, v54);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136446210;
      sub_10001D958(v54, v52);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v38 = v6;
      v39 = String.init<A>(describing:)();
      v41 = v40;
      sub_1000032BC(v54);
      v42 = sub_100002CB4(v39, v41, &v53);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to share zone with participant because they do not have an email: %{public}s", v36, 0xCu);
      sub_1000032BC(v37);

      return (*(v7 + 8))(v10, v38);
    }

    else
    {

      sub_1000032BC(v54);
      return (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_100018340(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v27 = a3;
      v18 = v17;
      v29 = a1;
      v30 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v26 = v8;
      v21 = a4;
      v22 = sub_100002CB4(v19, v20, &v30);

      *(v16 + 4) = v22;
      a4 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to fetch participants: %{public}s", v16, 0xCu);
      sub_1000032BC(v18);
      a3 = v27;

      (*(v9 + 8))(v12, v26);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v23 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v24 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v30 = qword_10006C9B8;
    v31 = 0;
    [v23 postNotificationName:v24 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  return sub_100018648(a3, a4, v10);
}

uint64_t sub_100018648(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  sub_10001D958(a1, v59);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v55 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v54 = a2;
    v16 = v15;
    *&v56 = v15;
    *v14 = 136446210;
    v53 = v7;
    v18 = v60;
    v17 = v61;
    sub_100007504(v59, v60);
    v19 = (*(*(v17 + 8) + 8))(v18);
    v20 = [v19 zoneID];

    v21 = [v20 zoneName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    sub_1000032BC(v59);
    v25 = sub_100002CB4(v22, v24, &v56);

    *(v14 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Saving share record for: %{public}s", v14, 0xCu);
    sub_1000032BC(v16);
    a2 = v54;

    v4 = v55;

    (*(v8 + 8))(v10, v53);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    sub_1000032BC(v59);
  }

  v26 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying + 8];
  v28 = *(v26 + 16);
  v60 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying];
  v27 = v60;
  v61 = v26;
  sub_10001C8A8(v59);
  v28(v27, v26);
  v29 = v60;
  v30 = v61;
  sub_10001D7F8(v59, v60);
  (*(*(v30 + 8) + 16))(25, v29);
  sub_100003720(&qword_10006BF68, &qword_100056CA8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100056C30;
  v32 = a1[3];
  v33 = a1[4];
  v34 = sub_100007504(a1, v32);
  *(v31 + 56) = v32;
  *(v31 + 64) = *(v33 + 8);
  v35 = sub_10001C8A8((v31 + 32));
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v60;
  v37 = v61;
  sub_10001D7F8(v59, v60);
  (*(v37 + 56))(v31, v36, v37);
  sub_10001D958(a1, &v56);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = v4;
  sub_10001D888(&v56, v38 + 32);
  v39 = v60;
  v40 = v61;
  sub_10001D7F8(v59, v60);
  v41 = *(v40 + 32);
  v42 = a2;
  v43 = v4;
  v41(sub_10001D94C, v38, v39, v40);
  v44 = &v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database];
  v45 = *&v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 24];
  v46 = *&v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 32];
  sub_100007504(v44, v45);
  v47 = v60;
  v48 = v61;
  v49 = sub_100007504(v59, v60);
  v57 = v47;
  v58 = *(v48 + 8);
  v50 = sub_10001C8A8(&v56);
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  (*(*(v46 + 8) + 8))(&v56, v45);
  sub_1000032BC(&v56);
  return sub_1000032BC(v59);
}

uint64_t sub_100018B20(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DD64(a2, v42, &qword_10006BF70, &qword_100056CB0);
  if (v43)
  {
    sub_10001A1C4(*&v42[0], a5, a3);
  }

  else
  {
    sub_10001D888(v42, v41);
    sub_10001D958(v41, v34);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_100003720(&qword_10006BF80, &qword_100056CC0);
    if (swift_dynamicCast())
    {
      sub_10001D888(v32, &v37);
      v13 = v39;
      v14 = v40;
      sub_100007504(&v37, v39);
      v15 = (*(v14 + 16))(v13, v14);
      v16 = *(v15 + 16);
      if (v16)
      {
        v31[1] = v15;
        v17 = v15 + 32;
        do
        {
          sub_10001D958(v17, v34);
          v18 = v35;
          v19 = v36;
          sub_100007504(v34, v35);
          if ((*(v19 + 8))(v18, v19) != 2)
          {
            dispatch_group_enter(a3);
            sub_10001D958(&v37, v32);
            sub_100019008(v34, v32, 0xD00000000000002CLL, 0x8000000100058310, a3);
            sub_10000D5C4(v32, &qword_10006BF88, &qword_100056CC8);
          }

          sub_1000032BC(v34);
          v17 += 40;
          --v16;
        }

        while (v16);
      }

      dispatch_group_leave(a3);
      sub_1000032BC(v41);
      v28 = &v37;
    }

    else
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_10000D5C4(v32, &qword_10006BF88, &qword_100056CC8);
      static Logger.syncEngine.getter();
      sub_10001D958(v41, &v37);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v32[0] = v23;
        *v22 = 136446210;
        sub_10001D958(&v37, v34);
        v24 = String.init<A>(describing:)();
        v26 = v25;
        sub_1000032BC(&v37);
        v27 = sub_100002CB4(v24, v26, v32);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "Saved record does not conform to CloudSharing: %{public}s", v22, 0xCu);
        sub_1000032BC(v23);
      }

      else
      {

        sub_1000032BC(&v37);
      }

      (*(v9 + 8))(v11, v8);
      v29 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B0 != -1)
      {
        swift_once();
      }

      v30 = qword_10006C988;
      if (qword_10006B7E0 != -1)
      {
        swift_once();
      }

      v37 = qword_10006C9B8;
      v38 = 0;
      [v29 postNotificationName:v30 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      dispatch_group_leave(a3);
      v28 = v41;
    }

    return sub_1000032BC(v28);
  }
}

void sub_100019008(void *a1, uint64_t a2, NSString a3, uint64_t a4, NSObject *a5)
{
  v149 = a5;
  v148 = a4;
  v145 = a3;
  v142 = a2;
  v7 = sub_100003720(&qword_10006BA50, &qword_100056770);
  __chkstk_darwin(v7 - 8);
  v140 = &v134 - v8;
  v9 = sub_100003720(&qword_10006BE08, &qword_100056988);
  __chkstk_darwin(v9 - 8);
  v139 = (&v134 - v10);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v137 = (&v134 - v17);
  v18 = __chkstk_darwin(v16);
  v144 = &v134 - v19;
  __chkstk_darwin(v18);
  v21 = &v134 - v20;
  v22 = a1[3];
  v23 = a1[4];
  sub_100007504(a1, v22);
  (*(v23 + 56))(&v152, v22, v23);
  v24 = [*sub_100007504(&v152 v154)];
  sub_1000032BC(&v152);
  if (!v24)
  {
LABEL_31:
    static Logger.syncEngine.getter();
    sub_10001D958(a1, &v152);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = v12;
      v97 = swift_slowAlloc();
      v151 = v97;
      *v95 = 136446210;
      sub_10001D958(&v152, v150);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v98 = String.init<A>(describing:)();
      v99 = v11;
      v101 = v100;
      sub_1000032BC(&v152);
      v102 = sub_100002CB4(v98, v101, &v151);

      *(v95 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Failed to create invitation for: %{public}s", v95, 0xCu);
      sub_1000032BC(v97);

      (*(v96 + 8))(v15, v99);
    }

    else
    {

      sub_1000032BC(&v152);
      (*(v12 + 8))(v15, v11);
    }

    v103 = v149;
    v104 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v105 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v152 = qword_10006C9B8;
    v153 = 0;
    [v104 postNotificationName:v105 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v103);
    return;
  }

  v147 = a1;
  v25 = [v24 emailAddress];
  v141 = v5;
  if (v25)
  {
    v26 = v149;
    goto LABEL_5;
  }

  v25 = [v24 phoneNumber];
  v26 = v149;
  if (!v25)
  {

    a1 = v147;
    goto LABEL_31;
  }

LABEL_5:
  v27 = v25;
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146 = v28;

  static Logger.syncEngine.getter();
  sub_10001D958(v147, &v152);
  v29 = v148;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v138 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v151 = v136;
    *v33 = 136446466;
    v34 = v145;
    *(v33 + 4) = sub_100002CB4(v145, v29, &v151);
    *(v33 + 12) = 2082;
    sub_10001D958(&v152, v150);
    sub_100003720(&qword_10006BF90, &unk_100056CD0);
    v35 = v26;
    v36 = String.init<A>(describing:)();
    v37 = v12;
    v38 = v11;
    v40 = v39;
    sub_1000032BC(&v152);
    v41 = sub_100002CB4(v36, v40, &v151);
    v11 = v38;

    *(v33 + 14) = v41;
    v26 = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "Sending %{public}s to participant: %{public}s", v33, 0x16u);
    swift_arrayDestroy();

    v42 = *(v37 + 8);
    v42(v21, v38);
  }

  else
  {

    sub_1000032BC(&v152);
    v42 = *(v12 + 8);
    v42(v21, v11);
    v34 = v145;
  }

  v43 = v141;
  v44 = String._bridgeToObjectiveC()();
  v45 = v148;
  if (v34 == 0xD00000000000002CLL && 0x8000000100058310 == v148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v137 = v42;
    v145 = v44;
    v46 = v147;
    v47 = v147[3];
    v48 = v147[4];
    sub_100007504(v147, v47);
    v49 = (*(v48 + 16))(v47, v48);
    if (v49)
    {
      v50 = v11;
      v51 = v49;
      v52 = [v49 sharingInvitationData];

      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      sub_10001DD64(v142, &v152, &qword_10006BF88, &qword_100056CC8);
      v56 = v154;
      if (v154)
      {
        v57 = v155;
        sub_100007504(&v152, v154);
        v58 = v139;
        (*(v57 + 24))(v56, v57);
        v59 = type metadata accessor for URL();
        v60 = *(v59 - 8);
        if ((*(v60 + 48))(v58, 1, v59) != 1)
        {
          v106 = URL.absoluteString.getter();
          v108 = v107;
          (*(v60 + 8))(v58, v59);
          sub_1000032BC(&v152);
          sub_100003720(&qword_10006BC58, &unk_1000568B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100056900;
          strcpy((inited + 32), "invitationData");
          *(inited + 47) = -18;
          *(inited + 48) = v53;
          v136 = v53;
          *(inited + 56) = v55;
          v135 = v55;
          *(inited + 72) = &type metadata for Data;
          *(inited + 80) = 0xD000000000000018;
          *(inited + 120) = &type metadata for String;
          *(inited + 88) = 0x8000000100058380;
          *(inited + 96) = v106;
          *(inited + 104) = v108;
          sub_10000DA30(v53, v55);
          v110 = sub_100041CC4(inited);
          swift_setDeallocating();
          sub_100003720(&unk_10006BC60, &unk_100056CE0);
          swift_arrayDestroy();
          sub_100014820(v110);

          v111 = objc_allocWithZone(IDSDictionaryInvitationContext);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v113 = String._bridgeToObjectiveC()();
          v114 = [v111 initWithDictionary:isa schema:v113];

          v115 = *(v141 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
          v116 = *(v141 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
          sub_100007504((v141 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v115);
          v117 = v140;
          static Date.distantFuture.getter();
          v118 = type metadata accessor for Date();
          (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
          v119 = swift_allocObject();
          v120 = v146;
          v119[2] = v143;
          v119[3] = v120;
          v121 = v149;
          v119[4] = v149;
          v122 = *(v116 + 32);
          v123 = v114;
          v124 = v121;
          v125 = v145;
          v122(v145, v117, v123, sub_100020C8C, v119, v115, v116);

          sub_100007644(v136, v135);
          sub_10000D5C4(v117, &qword_10006BA50, &qword_100056770);
          return;
        }

        sub_100007644(v53, v55);
        sub_1000032BC(&v152);
        v61 = &qword_10006BE08;
        v62 = &qword_100056988;
        v63 = v58;
      }

      else
      {

        sub_100007644(v53, v55);
        v61 = &qword_10006BF88;
        v62 = &qword_100056CC8;
        v63 = &v152;
      }

      sub_10000D5C4(v63, v61, v62);
      v26 = v149;
      v11 = v50;
      v46 = v147;
    }

    else
    {
    }

    v78 = v144;
    static Logger.syncEngine.getter();
    sub_10001D958(v46, &v152);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v151 = v82;
      *v81 = 136446210;
      sub_10001D958(&v152, v150);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v83 = String.init<A>(describing:)();
      v84 = v11;
      v86 = v85;
      sub_1000032BC(&v152);
      v87 = sub_100002CB4(v83, v86, &v151);

      *(v81 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "Failed to create share invitation for: %{public}s", v81, 0xCu);
      sub_1000032BC(v82);

      v88 = v78;
      v89 = v84;
    }

    else
    {

      sub_1000032BC(&v152);
      v88 = v78;
      v89 = v11;
    }

    v137(v88, v89);
    v90 = v145;
    v91 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v92 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v152 = qword_10006C9B8;
    v153 = 0;
    [v91 postNotificationName:v92 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v26);
  }

  else if (v34 == 0xD000000000000033 && 0x8000000100058340 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100042104(&_swiftEmptyArrayStorage);
    v64 = objc_allocWithZone(IDSDictionaryInvitationContext);
    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    v66 = String._bridgeToObjectiveC()();
    v67 = [v64 initWithDictionary:v65 schema:v66];

    v68 = *(v43 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v69 = *(v43 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((v43 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v68);
    v70 = v140;
    static Date.distantFuture.getter();
    v71 = type metadata accessor for Date();
    (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
    v72 = v44;
    v73 = swift_allocObject();
    v74 = v146;
    v73[2] = v143;
    v73[3] = v74;
    v73[4] = v26;
    v75 = *(v69 + 32);
    v76 = v26;
    v77 = v67;
    v75(v72, v70, v77, sub_10001DD44, v73, v68, v69);

    sub_10000D5C4(v70, &qword_10006BA50, &qword_100056770);
  }

  else
  {
    v126 = v42;

    v127 = v137;
    static Logger.syncEngine.getter();

    v128 = v45;
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v152 = v132;
      *v131 = 136446210;
      *(v131 + 4) = sub_100002CB4(v145, v128, &v152);
      _os_log_impl(&_mh_execute_header, v129, v130, "Tried to send invitation using unknown schema: %{public}s", v131, 0xCu);
      sub_1000032BC(v132);

      v133 = v137;
    }

    else
    {

      v133 = v127;
    }

    v126(v133, v11);
    dispatch_group_leave(v26);
  }
}

void sub_10001A1C4(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v82 - v11;
  *&v90 = a1;
  swift_errorRetain();
  sub_100003720(&qword_10006BF60, &qword_100056CA0);
  sub_100003720(&qword_10006BFA0, &qword_100056CF0);
  if (swift_dynamicCast())
  {
    sub_10001D888(&v94, &v97);
  }

  else
  {
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v89[0] = a1;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    v13 = v12;
    if (swift_dynamicCast())
    {
      v14 = v93;
      v15 = sub_10001FEF8(&unk_10006BFB0, type metadata accessor for CKError, &unk_1000577E0);
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v14 = 0;
      *(&v97 + 1) = 0;
      v98 = 0;
    }

    v99 = v13;
    v100 = v15;
    *&v97 = v14;
    if (*(&v95 + 1))
    {
      sub_10000D5C4(&v94, &qword_10006BFA8, &qword_100056CF8);
    }
  }

  if (!v99)
  {
    sub_10000D5C4(&v97, &qword_10006BFA8, &qword_100056CF8);
    sub_10001FC44(a1, a3, v25);
    return;
  }

  v87 = v7;
  sub_10001D888(&v97, v101);
  sub_100007504(v101, v102);
  v16 = *(sub_10001FEF8(&unk_10006BFB0, type metadata accessor for CKError, &unk_1000577E0) + 48);
  type metadata accessor for CKError(0);
  v17 = v16();
  if (v17 != 14)
  {
    if (v17 == 26)
    {
      v27 = a2[3];
      v26 = a2[4];
      sub_100007504(a2, v27);
      v28 = (*(*(v26 + 8) + 8))(v27);
      v29 = [v28 zoneID];

      static Logger.syncEngine.getter();
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v97 = v34;
        *v33 = 136446210;
        v35 = [v30 zoneName];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v6;
        v38 = v37;

        v39 = sub_100002CB4(v36, v38, &v97);

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s was not found, posting zone deletion notification.", v33, 0xCu);
        sub_1000032BC(v34);

        (*(v87 + 8))(v10, v86);
      }

      else
      {

        (*(v87 + 8))(v10, v6);
      }

      v46 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B8 != -1)
      {
        swift_once();
      }

      [v46 postNotificationName:qword_10006C990 object:v30];

      dispatch_group_leave(a3);
      goto LABEL_38;
    }

    if (v17 == 33)
    {
      v18 = a2[3];
      v19 = a2[4];
      sub_100007504(a2, v18);
      v20 = (*(v19 + 16))(v18, v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v88 = v20;
        v22 = v20 + 32;
        do
        {
          sub_10001D958(v22, &v97);
          v23 = v99;
          v24 = v100;
          sub_100007504(&v97, v99);
          if ((*(v24 + 8))(v23, v24) != 2)
          {
            dispatch_group_enter(a3);
            v96 = 0;
            v94 = 0u;
            v95 = 0u;
            sub_100019008(&v97, &v94, 0xD000000000000033, 0x8000000100058340, a3);
            sub_10000D5C4(&v94, &qword_10006BF88, &qword_100056CC8);
          }

          sub_1000032BC(&v97);
          v22 += 40;
          --v21;
        }

        while (v21);
      }

      dispatch_group_leave(a3);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v86 = v6;
  sub_100007504(v101, v102);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = type metadata accessor for Optional();
  v85 = &v82;
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = (&v82 - v43);
  *v44 = related decl 'e' for CKErrorCode.serverRecord.getter();
  v45 = *(AssociatedTypeWitness - 8);
  if ((*(v45 + 48))(v44, 1, AssociatedTypeWitness) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
  }

  else
  {
    *(&v91 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = sub_10001C8A8(&v90);
    (*(v45 + 32))(v47, v44, AssociatedTypeWitness);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_100003720(&qword_10006BF80, &qword_100056CC0);
    if (swift_dynamicCast())
    {
      if (*(&v95 + 1))
      {
        sub_10001D888(&v94, &v97);
        v48 = v103;
        sub_100007504(v101, v102);
        v84 = v48;
        v49 = swift_getAssociatedTypeWitness();
        v50 = type metadata accessor for Optional();
        v85 = &v82;
        v83 = v50;
        v51 = *(v50 - 8);
        __chkstk_darwin(v50);
        v53 = (&v82 - v52);
        *v53 = related decl 'e' for CKErrorCode.clientRecord.getter();
        v54 = *(v49 - 8);
        if ((*(v54 + 48))(v53, 1, v49) == 1)
        {
          sub_1000032BC(&v97);
          (*(v51 + 8))(v53, v83);
          v90 = 0u;
          v91 = 0u;
          AssociatedConformanceWitness = 0;
        }

        else
        {
          v89[3] = v49;
          v89[4] = swift_getAssociatedConformanceWitness();
          v65 = sub_10001C8A8(v89);
          (*(v54 + 32))(v65, v53, v49);
          if (swift_dynamicCast())
          {
            if (*(&v91 + 1))
            {
              sub_10001D888(&v90, &v94);
              v66 = v88;
              static Logger.syncEngine.getter();
              sub_10001D958(&v97, &v90);
              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v89[0] = v70;
                *v69 = 136446210;
                v72 = *(&v91 + 1);
                v71 = AssociatedConformanceWitness;
                sub_100007504(&v90, *(&v91 + 1));
                v73 = (*(*(v71 + 8) + 8))(v72);
                v74 = [v73 zoneID];

                v75 = [v74 zoneName];
                v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v78 = v77;

                sub_1000032BC(&v90);
                v79 = sub_100002CB4(v76, v78, v89);

                *(v69 + 4) = v79;
                _os_log_impl(&_mh_execute_header, v67, v68, "Updating share for: %{public}s", v69, 0xCu);
                sub_1000032BC(v70);

                (*(v87 + 8))(v66, v86);
              }

              else
              {

                (*(v87 + 8))(v66, v86);
                sub_1000032BC(&v90);
              }

              if (sub_10001E0F8(&v97, &v94, v80))
              {
                sub_100018648(&v97, a3, v81);
              }

              else
              {
                dispatch_group_leave(a3);
              }

              sub_1000032BC(&v94);
              sub_1000032BC(&v97);
              goto LABEL_38;
            }
          }

          else
          {
            AssociatedConformanceWitness = 0;
            v90 = 0u;
            v91 = 0u;
          }

          sub_1000032BC(&v97);
        }

        v55 = &v90;
        goto LABEL_33;
      }
    }

    else
    {
      v96 = 0;
      v94 = 0u;
      v95 = 0u;
    }
  }

  v55 = &v94;
LABEL_33:
  sub_10000D5C4(v55, &qword_10006BF88, &qword_100056CC8);
LABEL_34:
  v56 = v102;
  v57 = sub_100007504(v101, v102);
  v58 = *(v56 - 8);
  __chkstk_darwin(v57);
  v60 = &v82 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v60);
  sub_10001FEF8(&qword_10006B820, type metadata accessor for CKError, &unk_10005629C);
  v61 = _getErrorEmbeddedNSError<A>(_:)();
  if (v61)
  {
    v62 = v61;
    (*(v58 + 8))(v60, v56);
  }

  else
  {
    v62 = swift_allocError();
    (*(v58 + 32))(v64, v60, v56);
  }

  sub_10001FC44(v62, a3, v63);

LABEL_38:
  sub_1000032BC(v101);
}

void sub_10001AF88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  if (a2)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = a5;
      v30 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_100002CB4(a3, a4, &v30);
      *(v18 + 12) = 2082;
      v29[1] = a2;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100002CB4(v20, v21, &v30);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to send invitation to %{public}s: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      a5 = v29[0];
    }

    (*(v10 + 8))(v15, v9);
    v23 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v24 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v30 = qword_10006C9B8;
    v31 = 0;
    [v23 postNotificationName:v24 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.syncEngine.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100002CB4(a3, a4, &v30);
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully sent invitation to %{public}s", v27, 0xCu);
      sub_1000032BC(v28);
    }

    (*(v10 + 8))(v13, v9);
  }

  dispatch_group_leave(a5);
}

uint64_t sub_10001B408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  if (v7)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = a5;
      v33 = a2;
      v20 = v19;
      v34 = v19;
      *v18 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100002CB4(v21, v22, &v34);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch share metadata: %{public}s", v18, 0xCu);
      sub_1000032BC(v20);
      a5 = v32;
    }

    (*(v10 + 8))(v13, v9);
    v24 = (a4 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager);
    v25 = *(a4 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v26 = v24[4];
    sub_100007504(v24, v25);
    return (*(v26 + 48))(a5, sub_10001C34C, 0, v25, v26);
  }

  else
  {
    static Logger.syncEngine.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully fetched share metadata", v30, 2u);
    }

    (*(v10 + 8))(v15, v9);
    return sub_10001B710(a2, a5);
  }
}

uint64_t sub_10001B710(void *a1, void *a2)
{
  sub_100003720(&qword_10006C018, &qword_100056D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100056C40;
  *(v5 + 32) = a1;
  v6 = objc_allocWithZone(CKAcceptSharesOperation);
  sub_1000112B4(0, &qword_10006C020, CKShareMetadata_ptr);
  v7 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithShareMetadatas:isa];

  [v9 setQualityOfService:25];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a2;
  v11 = v2;
  v12 = a2;
  CKAcceptSharesOperation.acceptSharesResultBlock.setter();
  v13 = *&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
  v14 = *&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
  sub_100007504(&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container], v13);
  v18[3] = sub_1000112B4(0, &qword_10006C028, CKAcceptSharesOperation_ptr);
  v18[4] = &off_100067378;
  v18[0] = v9;
  v15 = *(v14 + 8);
  v16 = v9;
  v15(v18, v13, v14);

  return sub_1000032BC(v18);
}

uint64_t sub_10001B8C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a2)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v34 = a4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v33 = a3;
      v19 = v18;
      v35 = a2;
      v36 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100002CB4(v20, v21, &v36);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save authorization zone: %{public}s", v17, 0xCu);
      sub_1000032BC(v19);
      a3 = v33;

      a4 = v34;
    }

    (*(v8 + 8))(v11, v7);
    v23 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v24 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v23);
    (*(v24 + 48))(a4, sub_10001C34C, 0, v23, v24);
  }

  else
  {
    static Logger.syncEngine.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully saved authorization zone", v28, 2u);
    }

    (*(v8 + 8))(v13, v7);
    v29 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v30 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v29);
    v31 = [a4 context];
    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    (*(v30 + 40))(a4, v31, sub_100020C9C, v32, v29, v30);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001BC68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  if (v6)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v35 = a1;
      v36 = v19;
      *v18 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100002CB4(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to accept share: %{public}s", v18, 0xCu);
      sub_1000032BC(v19);

      a3 = v34;
    }

    (*(v9 + 8))(v12, v8);
    v23 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v24 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v23);
    return (*(v24 + 48))(a4, sub_10001C34C, 0, v23, v24);
  }

  else
  {
    static Logger.syncEngine.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully accepted share", v28, 2u);
    }

    (*(v9 + 8))(v14, v8);
    v29 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v30 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v29);
    v31 = [a4 context];
    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    (*(v30 + 40))(a4, v31, sub_10001FFF0, v32, v29, v30);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001C000(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = a1;
      v36 = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v16 = String.init<A>(describing:)();
      v18 = sub_100002CB4(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to accept invitation: %{public}s", v14, 0xCu);
      sub_1000032BC(v15);
    }

    else
    {
    }

    v31 = *(v6 + 8);
    v32 = v11;
  }

  else
  {
    static Logger.syncEngine.getter();
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446210;
      v24 = v19;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v5;
      v28 = v27;

      v29 = sub_100002CB4(v26, v28, &v36);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully accepted invitation %{public}s", v22, 0xCu);
      sub_1000032BC(v23);

      return (*(v6 + 8))(v9, v34);
    }

    v31 = *(v6 + 8);
    v32 = v9;
  }

  return v31(v32, v5);
}

uint64_t sub_10001C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = a1;
      v23 = v14;
      *v13 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v15 = String.init<A>(describing:)();
      v17 = sub_100002CB4(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to decline invitation: %{public}s", v13, 0xCu);
      sub_1000032BC(v14);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    static Logger.syncEngine.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully declined invitation", v20, 2u);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_10001C6F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_10001C8A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *sub_10001C90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006BFC8, &qword_100056D08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}