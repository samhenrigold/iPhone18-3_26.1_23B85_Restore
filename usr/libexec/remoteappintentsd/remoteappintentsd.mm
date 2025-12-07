int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for RemoteAppIntentsDaemon();
  v3 = swift_allocObject();
  sub_10000146C();
  qword_10000CCB8 = v3;
  return 0;
}

void *sub_10000146C()
{
  v1 = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0xD000000000000010;
  v0[5] = 0x8000000100004500;
  v0[6] = &_swiftEmptyArrayStorage;
  if (qword_10000C748 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000016B0(v2, qword_10000CCC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100002CEC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: hello, world.", v5, 0xCu);
    sub_1000016E8(v6);
  }

  if (qword_10000C740 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100001644()
{

  return v0;
}

uint64_t sub_10000167C()
{
  sub_100001644();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000016B0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000016E8(void *a1)
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

uint64_t sub_100001734(uint64_t a1, void *a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a2 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast() && (v13 & 1) != 0)
    {
      v5 = LNAppNotificationEventListenerXPCInterface();
      [a2 setExportedInterface:v5];

      type metadata accessor for AppNotificationEventRegistry();
      [a2 setExportedObject:static AppNotificationEventRegistry.shared.getter()];

      [a2 resume];
      return 1;
    }
  }

  else
  {
    sub_100001AE0(v16);
  }

  if (qword_10000C748 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000016B0(v7, qword_10000CCC8);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v16[0] = v12;
    *v11 = 67109378;
    *(v11 + 4) = [v8 processIdentifier];

    *(v11 + 8) = 2080;
    *(v11 + 10) = sub_100002CEC(0xD00000000000002CLL, 0x8000000100004580, v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "Process with PID %d attempting access to app event registry - requires entitlement: %s", v11, 0x12u);
    sub_1000016E8(v12);
  }

  else
  {
  }

  return 0;
}

id sub_100001A24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001A80()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001AE0(uint64_t a1)
{
  v2 = sub_100001B48(&qword_10000C9B8, &qword_1000042A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001B48(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001BC8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100001C2C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100001C70()
{

  sub_100001DF4(v0 + 40);
  return v0;
}

uint64_t sub_100001CA0()
{
  sub_100001C70();

  return _swift_deallocClassInstance(v0, 49, 7);
}

char *sub_100001CF8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100001B48(&qword_10000CA70, &qword_1000042F0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100001D28(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100001D3C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100001D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteAppIntentsListener.State.Step(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteAppIntentsListener.State.Step(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100001F88);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100001FD8()
{
  result = qword_10000CA78;
  if (!qword_10000CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA78);
  }

  return result;
}

uint64_t sub_10000202C()
{
  type metadata accessor for RemoteAppIntentsListenerManager(0);
  v0 = swift_allocObject();
  result = sub_100002298();
  qword_10000CCC0 = v0;
  return result;
}

uint64_t sub_10000206C()
{
  sub_1000038DC(v0 + 24, &qword_10000CBE8, &qword_100004448);
  sub_1000038DC(v0 + 40, &unk_10000CBF0, &unk_100004450);
  v1 = OBJC_IVAR____TtC17remoteappintentsd31RemoteAppIntentsListenerManager_service;
  type metadata accessor for NWListener.Service();
  sub_1000039A0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000020F0()
{
  sub_10000206C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RemoteAppIntentsListenerManager(uint64_t a1)
{
  result = qword_10000CAB0;
  if (!qword_10000CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000219C(uint64_t a1)
{
  result = type metadata accessor for NWListener.Service();
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

char *sub_100002238()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100001B48(&qword_10000CB48, &unk_1000043E8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100002268()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100001B48(&qword_10000CBB0, qword_1000043F8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100002298()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_100001B48(&qword_10000CBD0, &qword_100004440);
  sub_100003620(&qword_10000CBD8, &protocol conformance descriptor for UUID);
  v1 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  type metadata accessor for RemoteAppIntentsActor();
  static RemoteAppIntentsActor.serviceName.getter();
  NWListener.Service.init(applicationService:)();
  return v0;
}

void sub_100002358(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100003954();
  v35 = v5;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActorTransactionOperation();
  sub_100003954();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000C748 != -1)
  {
    sub_100003968(&qword_10000C748);
  }

  v15 = type metadata accessor for Logger();
  sub_1000016B0(v15, qword_10000CCC8);
  (*(v11 + 16))(v14, a1, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v4;
    v19 = v18;
    v32 = swift_slowAlloc();
    v33 = a1;
    v36[0] = v32;
    *v19 = 136315394;
    v20 = static Instrumentation.currentActivityId.getter();
    v22 = sub_100002CEC(v20, v21, v36);
    v34 = v1;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    ActorTransactionOperation.id.getter();
    sub_100003930(&qword_10000CBB8);
    v24 = v31;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v35 + 8))(v8, v24);
    (*(v11 + 8))(v14, v9);
    v28 = sub_100002CEC(v25, v27, v36);

    *(v19 + 14) = v28;
    v2 = v34;
    _os_log_impl(&_mh_execute_header, v16, v17, "%sLong running operation %s will start, requesting transaction", v19, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    sub_100003988(v29);
    sub_100003988(v19);
  }

  else
  {

    (*(v11 + 8))(v14, v9);
  }

  os_unfair_lock_lock((v2 + 32));
  sub_100002678((v2 + 40));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_100002678(unint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  ActorTransactionOperation.id.getter();
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v16 = 0xD000000000000012;
  v17 = 0x8000000100004680;
  v9._countAndFlagsBits = ActorTransactionOperation.name.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  ActorTransactionOperation.id.getter();
  sub_100003620(&qword_10000CBB8, &protocol conformance descriptor for UUID);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12 = *(v3 + 8);
  v12(v6, v2);
  String.utf8CString.getter();

  v13 = os_transaction_create();

  if (v13)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_100003664(v13, v8, isUniquelyReferenced_nonNull_native);
    *a1 = v16;
  }

  else
  {
    sub_100003488(v8);
    swift_unknownObjectRelease();
  }

  return (v12)(v8, v2);
}

void sub_1000028BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100003954();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  if (qword_10000C748 != -1)
  {
    sub_100003968(&qword_10000C748);
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000016B0(v13, qword_10000CCC8);
  v15 = *(v6 + 16);
  v52 = a1;
  v49 = v15;
  v15(v12, a1, v4);
  v50 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v51 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v48 = v10;
    v21 = v20;
    v53 = v20;
    *v19 = 136315394;
    v22 = static Instrumentation.currentActivityId.getter();
    v24 = sub_100002CEC(v22, v23, &v53);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_100003930(&qword_10000CBB8);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = sub_1000039B4();
    v29(v28);
    v30 = sub_100002CEC(v25, v27, &v53);

    *(v19 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "%sLong running operation %s completed, released transaction", v19, 0x16u);
    swift_arrayDestroy();
    v31 = v21;
    v10 = v48;
    sub_100003988(v31);
    sub_100003988(v19);
  }

  else
  {

    v32 = sub_1000039B4();
    v33(v32);
  }

  os_unfair_lock_lock(v2 + 8);
  v34 = v52;
  v35 = sub_100003488(v52);
  os_unfair_lock_unlock(v2 + 8);
  if (v35)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v49(v10, v34, v4);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v10;
      v40 = swift_slowAlloc();
      v53 = v40;
      *v38 = 136315394;
      v41 = static Instrumentation.currentActivityId.getter();
      v43 = sub_100002CEC(v41, v42, &v53);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      sub_100003930(&qword_10000CBB8);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (v12)(v39, v4);
      v47 = sub_100002CEC(v44, v46, &v53);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "%sNo transaction found for operation %s", v38, 0x16u);
      swift_arrayDestroy();
      sub_100003988(v40);
      sub_100003988(v38);
    }

    else
    {

      (v12)(v10, v4);
    }
  }
}

unint64_t sub_100002CEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002DB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000035C0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000016E8(v11);
  return v7;
}

unint64_t sub_100002DB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002EB0(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100002EB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002EFC(a1, a2);
  sub_100003014(&off_100008408);
  return v3;
}

char *sub_100002EFC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000030F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100003014(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100003168(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000030F8(uint64_t a1, uint64_t a2)
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

  sub_100001B48(&qword_10000CBC0, &qword_100004430);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    sub_100001B48(&qword_10000CBC0, &qword_100004430);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_10000325C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100003620(&qword_10000CBD8, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000032E0(a1, v2);
}

unint64_t sub_1000032E0(uint64_t a1, uint64_t a2)
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
    sub_100003620(&qword_10000CBE0, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100003488(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000325C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_100001B48(&qword_10000CBC8, &qword_100004438);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  sub_100001B48(&qword_10000CBD0, &qword_100004440);
  sub_100003620(&qword_10000CBD8, &protocol conformance descriptor for UUID);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

uint64_t sub_1000035C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003620(unint64_t *a1, uint64_t a2)
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

uint64_t sub_100003664(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_10000325C(a2);
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
  sub_100001B48(&qword_10000CBC8, &qword_100004438);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_10000325C(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    *(v22[7] + 8 * v18) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_100003824(v18, v11, a1, v22);
  }
}

uint64_t sub_100003824(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_1000038DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100001B48(a2, a3);
  sub_1000039A0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100003930(unint64_t *a1)
{

  return sub_100003620(a1, &protocol conformance descriptor for UUID);
}

uint64_t sub_100003968(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100003988(uint64_t a1)
{
}

uint64_t sub_1000039C8()
{
  sub_100003A78(v0 + 24);

  return v0;
}

uint64_t sub_1000039F0()
{
  sub_1000039C8();

  return _swift_deallocClassInstance(v0, 40, 7);
}

char *sub_100003A48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100001B48(&qword_10000CCA8, &qword_100004488);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100003A78(uint64_t a1)
{
  v2 = sub_100001B48(&qword_10000CCB0, &qword_100004490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AE0()
{
  v0 = type metadata accessor for Logger();
  sub_100003B54(v0, qword_10000CCC8);
  sub_1000016B0(v0, qword_10000CCC8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100003B54(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}