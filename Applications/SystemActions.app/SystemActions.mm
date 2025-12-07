int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_100002504(&qword_10000C648, &qword_1000037D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100003760;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x7075206D2769;
  *(v4 + 40) = 0xE600000000000000;
  print(_:separator:terminator:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.utf8CString.getter();

  _set_user_dir_suffix();

  v5 = [objc_allocWithZone(type metadata accessor for Server()) init];
  sub_100001694();
  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

id sub_100001694()
{
  result = *(v0 + OBJC_IVAR____TtC13SystemActions6Server_listener);
  if (result)
  {
    return [result activate];
  }

  __break(1u);
  return result;
}

char *sub_1000016B4()
{
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003070();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100003084();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100003084();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100003084();
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_listener] = 0;
  sub_100002F58(0, &qword_10000C5C0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_100002E64(&qword_10000C5C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002504(&qword_10000C5D0, &unk_1000037C0);
  sub_100002EAC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_serviceQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_runners] = &_swiftEmptyDictionarySingleton;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v18, "init");
  sub_100002F58(0, &qword_10000C5E0, BSServiceConnectionListener_ptr);
  v17 = v9;
  v10 = v9;
  v11 = sub_100001988(sub_100002F98, v16);
  v12 = *&v10[OBJC_IVAR____TtC13SystemActions6Server_listener];
  *&v10[OBJC_IVAR____TtC13SystemActions6Server_listener] = v11;

  return v10;
}

id sub_100001988(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_10000306C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100003068;
  v9[3] = &unk_1000084C8;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_100001ADC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001B94(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for Logger();
  sub_100003070();
  v55 = v6;
  v56 = v5;
  v7 = __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v50 - v10;
  type metadata accessor for UUID();
  sub_100003070();
  v53 = v12;
  v54 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v11);
  v16 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = sub_100002504(&qword_10000C530, &qword_1000037A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v50 - v20;
  v22 = a2;
  RunnerConnection.Policy.Client.init(client:)();
  v23 = type metadata accessor for RunnerConnection.Policy.Client();
  v24 = sub_10000254C(v21, 1, v23);
  sub_100002574(v21, &qword_10000C530, &qword_1000037A0);
  if (v24 == 1)
  {
    static WFLog.subscript.getter();
    v25 = v22;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Client is not entitled as a trusted client: %@", v28, 0xCu);
      sub_100002574(v29, &qword_10000C538, &unk_1000037A8);
    }

    (*(v55 + 8))(v9, v56);
    return [v25 invalidate];
  }

  else
  {
    UUID.init()();
    v32 = [objc_allocWithZone(WFBackgroundShortcutRunner) initWithProcessPolicy:1];
    v33 = OBJC_IVAR____TtC13SystemActions6Server_runners;
    swift_beginAccess();
    v34 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *&v3[v33];
    sub_10000266C(v34, v18, isUniquelyReferenced_nonNull_native);
    *&v3[v33] = v58;
    swift_endAccess();
    v36 = v53;
    v37 = *(v53 + 16);
    v51 = v18;
    v38 = v18;
    v39 = v54;
    v37(v16, v38, v54);
    v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v3;
    *(v41 + 24) = v34;
    (*(v36 + 32))(v41 + v40, v16, v39);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1000028EC;
    *(v42 + 24) = v41;
    aBlock[4] = sub_100002960;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003068;
    aBlock[3] = &unk_100008428;
    v43 = _Block_copy(aBlock);
    v44 = v34;
    v45 = v3;

    [v22 configureConnection:v43];
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
    }

    else
    {
      [v22 activate];
      v46 = v52;
      static WFLog.subscript.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = CACurrentMediaTime();
        _os_log_impl(&_mh_execute_header, v47, v48, "[Performance] Connection came in: %f", v49, 0xCu);
      }

      (*(v55 + 8))(v46, v56);
      (*(v36 + 8))(v51, v39);
    }
  }

  return result;
}

void sub_100002168(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  sub_100003070();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC13SystemActions6Server_serviceQueue]];
  v14 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v14];

  type metadata accessor for RunnerConnection();
  v15 = static RunnerConnection.bsServiceInterface.getter();
  [a1 setInterface:v15];

  [a1 setInterfaceTarget:a3];
  (*(v10 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v10 + 32))(v17 + v16, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100002A58;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000023B4;
  aBlock[3] = &unk_100008478;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [a1 setInvalidationHandler:v18];
  _Block_release(v18);
}

void sub_1000023B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100002420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002504(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002574(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000025D4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100002E64(&qword_10000C5B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100002CA8(a1, v2);
}

void sub_10000266C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1000025D4(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_100002504(&qword_10000C5A0, &qword_1000037B8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_1000025D4(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v18);
    *(v23 + 8 * v18) = a1;
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_100002BF0(v18, v11, a1, v22);
  }
}

uint64_t sub_10000282C()
{
  v1 = type metadata accessor for UUID();
  sub_100003070();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_1000028EC(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_100002168(a1, v4, v5, v6);
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000029A0()
{
  v1 = type metadata accessor for UUID();
  sub_100003070();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100002A58()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OBJC_IVAR____TtC13SystemActions6Server_runners;
  swift_beginAccess();
  v6 = sub_1000025D4(v0 + v3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + v5);
    v10 = v13[3];
    sub_100002504(&qword_10000C5A0, &qword_1000037B8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    (*(v2 + 8))(v13[6] + *(v2 + 72) * v8, v1);
    v11 = *(v13[7] + 8 * v8);
    sub_100002F58(0, &qword_10000C5A8, WFBackgroundShortcutRunner_ptr);
    sub_100002E64(&qword_10000C5B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *(v4 + v5) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_100002BF0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_100002CA8(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100002E64(&qword_10000C5B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100002E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100002EAC()
{
  result = qword_10000C5D8;
  if (!qword_10000C5D8)
  {
    sub_100002F10(&qword_10000C5D0, &unk_1000037C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D8);
  }

  return result;
}

uint64_t sub_100002F10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002F58(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_100002F98(void *a1)
{
  v3 = *(v1 + 16);
  static RunnerConnection.ServiceSpec.SystemRunner.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static RunnerConnection.ServiceSpec.SystemRunner.serviceIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:v3];
}