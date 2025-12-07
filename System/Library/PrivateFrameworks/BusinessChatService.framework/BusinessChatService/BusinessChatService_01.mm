id sub_100018B60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10002DCC8 != -1)
  {
    swift_once();
  }

  sub_100018130();
  return 0;
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_10002E638;
  if (!qword_10002E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018DD8(uint64_t a1)
{
  sub_100002FDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100018EB8()
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003034(v0, qword_10002F838);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Daemon exiting", v2, 2u);
  }
}

uint64_t sub_100018FA0(void *a1)
{
  v2 = v1;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003034(v4, qword_10002F838);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Incoming XPC connection: %@", v8, 0xCu);
    sub_1000035A0(v9, &qword_10002E240, &qword_100020FB0);
  }

  sub_100001DC4(&qword_10002E650, &unk_100020900);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000208B0;
  v12 = sub_10000349C(0, &qword_10002E658, NSArray_ptr);
  *(v11 + 56) = sub_100001DC4(&qword_10002E660, &qword_100020FA0);
  *(v11 + 32) = v12;
  v13 = sub_10000349C(0, &qword_10002E668, BCSBusinessEmailIdentifier_ptr);
  *(v11 + 88) = sub_100001DC4(&qword_10002E670, &qword_100020FA8);
  *(v11 + 64) = v13;
  v14 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithArray:isa];

  sub_10000349C(0, &qword_10002E678, NSObject_ptr);
  sub_100019404();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = objc_opt_self();
  v19 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP17businessservicesd24XPCDaemonServerInterface_];
  [v5 setExportedInterface:v19];

  v20 = [v5 exportedInterface];
  if (v20)
  {
    v21 = v20;
    sub_1000183C0(v17);

    v22 = Set._bridgeToObjectiveC()().super.isa;

    [v21 setClasses:v22 forSelector:"fetchBusinessMetadataForEmails:forClientBundleID:requestId:completion:" argumentIndex:0 ofReply:0];
  }

  else
  {
  }

  [v5 setExportedObject:*(v2 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer)];
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  v28[4] = sub_1000194A4;
  v28[5] = v23;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_100018888;
  v28[3] = &unk_100029650;
  v24 = _Block_copy(v28);
  v25 = v5;

  [v25 setInvalidationHandler:v24];
  _Block_release(v24);
  v26 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL___BCSXPCDaemonBusinessEmailClientInterface];
  [v25 setRemoteObjectInterface:v26];

  [v25 resume];
  return 1;
}

unint64_t sub_100019404()
{
  result = qword_10002E680;
  if (!qword_10002E680)
  {
    sub_10000349C(255, &qword_10002E678, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E680);
  }

  return result;
}

uint64_t sub_10001946C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000194AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000194C4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000194D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100019544(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100019554()
{
  v0 = type metadata accessor for Logger();
  sub_1000195C8(v0, qword_10002F838);
  sub_100003034(v0, qword_10002F838);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000195C8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_10001962C(uint64_t a1)
{
  sub_1000199D4(0, 2, 0);
  if ((a1 - 1) > 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = 0xEB00000000747365;
  v3 = 0x7373656E69737562;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = 0xEE0072656C6C6163;
      goto LABEL_12;
    }

    if (a1 == 4)
    {
      v4 = 0xED00006C69616D65;
      goto LABEL_12;
    }

LABEL_9:
    v5 = 0x7373656E69737562;
    v3 = 0x6573657270626577;
    v4 = 0xEE00746E656D746ELL;
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v5 = 0x7373656E69737562;
    v3 = 0x6767757374616863;
    v4 = 0xEB00000000747365;
    goto LABEL_13;
  }

  if (a1 != 2)
  {
    goto LABEL_9;
  }

  v4 = 0xED0000736B6E696CLL;
LABEL_12:
  v5 = 0x7373656E69737562;
LABEL_13:

  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = &off_10001EF10;
  String.append(_:)(v7);

  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    sub_1000199D4((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = 0xD00000000000001CLL;
  v10[5] = 0x800000010001FB10;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v11 = 0x72656C6C6163;
      goto LABEL_25;
    }

    if (a1 == 4)
    {
      v2 = 0xED00006C69616D65;
      goto LABEL_26;
    }

LABEL_22:
    v5 = 0x6573657270626577;
    v11 = 0x746E656D746ELL;
LABEL_25:
    v2 = (v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
    goto LABEL_26;
  }

  if (a1 == 1)
  {
    v5 = 0x6767757374616863;
    goto LABEL_26;
  }

  if (a1 != 2)
  {
    goto LABEL_22;
  }

  v2 = 0xED0000736B6E696CLL;
LABEL_26:

  v12._countAndFlagsBits = v5;
  v12._object = v2;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = "arOrWifi.megashard";
  String.append(_:)(v13);

  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];
  if (v15 >= v14 >> 1)
  {
    sub_1000199D4((v14 > 1), v15 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15 + 1;
  v16 = &_swiftEmptyArrayStorage[2 * v15];
  v16[4] = 0xD00000000000001CLL;
  v16[5] = 0x800000010001FB10;
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *sub_1000199D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000199F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000199F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DC4(&qword_10002E7C0, &unk_100021110);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100019B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v42 - v13;
  v42[0] = a1;
  v43[0] = a1;
  v43[1] = a2;
  v44 = a2;
  v42[4] = 0x3A7A69623A6E7275;
  v42[5] = 0xE800000000000000;
  v42[2] = 0;
  v42[3] = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:isDirectory:)();

  URL.appendingPathComponent(_:)();
  v15 = *(v9 + 8);
  v15(v12, v8);
  URL.path.getter();
  v15(v14, v8);
  v16 = *(v5 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 fileExistsAtPath:v17];

  if (!v18)
  {

    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003034(v24, qword_10002F838);
    v25 = v44;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43[0] = v18;
      *v28 = 136315138;
      *(v28 + 4) = sub_10000E3FC(v42[0], v25, v43);
      _os_log_impl(&_mh_execute_header, v26, v27, "No cached item found for brand URI: %s", v28, 0xCu);
      sub_100003600(v18);
    }

    goto LABEL_11;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v16 contentsAtPath:v19];

  if (!v20)
  {

LABEL_11:
    sub_10001074C();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
    return v18;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v42[1];
  sub_10001BD54();
  if (v23)
  {
    sub_1000106F8(v18, v22);

    return v18;
  }

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003034(v31, qword_10002F838);
  sub_1000106A4(v18, v22);
  v32 = v44;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v33, v34))
  {
    sub_1000106F8(v18, v22);
LABEL_28:

    return v18;
  }

  v35 = swift_slowAlloc();
  result = swift_slowAlloc();
  v36 = result;
  v43[0] = result;
  *v35 = 134218242;
  v37 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v37 != 2)
    {
      v38 = 0;
      goto LABEL_27;
    }

    v40 = v18[2];
    v39 = v18[3];
    v41 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (!v41)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v37)
  {
    v38 = BYTE6(v22);
LABEL_27:
    *(v35 + 4) = v38;
    sub_1000106F8(v18, v22);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_10000E3FC(v42[0], v32, v43);
    _os_log_impl(&_mh_execute_header, v33, v34, "Found cached item of size %ld for brand URI: %s", v35, 0x16u);
    sub_100003600(v36);

    goto LABEL_28;
  }

  LODWORD(v38) = HIDWORD(v18) - v18;
  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v38 = v38;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A08C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a4;
  v8 = v7;
  v54 = a5;
  v55 = a6;
  v50 = a3;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v49 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchTime();
  v53 = *(v48 - 8);
  v14 = __chkstk_darwin(v48);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v40 - v16;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v57 = a2;
  v64 = 0x3A7A69623A6E7275;
  v65 = 0xE800000000000000;
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v55 = v8;
  v24 = *(v8 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  v26 = v25;
  aBlock = 0;
  LODWORD(v24) = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v24)
  {
    v27 = aBlock;
    v28 = v52;
    Data.write(to:options:)();
    if (!v28)
    {
      sub_100001D78();
      v29 = v40;
      (*(v40 + 104))(v19, enum case for DispatchQoS.QoSClass.background(_:), v17);
      v52 = static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v19, v17);
      v30 = v41;
      static DispatchTime.now()();
      + infix(_:_:)();
      v31 = *(v53 + 8);
      v53 += 8;
      v54 = v31;
      v31(v30, v48);
      v60 = sub_10001C638;
      v61 = v55;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100018888;
      v59 = &unk_100029730;
      v51 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_10001C658(&qword_10002E908, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100001DC4(&qword_10002E910, &unk_100021100);
      sub_10001C6A0();
      v32 = v43;
      v33 = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v34 = v47;
      v36 = v51;
      v35 = v52;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v45 + 8))(v32, v33);
      (*(v42 + 8))(v49, v44);
      v54(v34, v48);
      (*(v21 + 8))(v23, v20);
    }
  }

  else
  {
    v38 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v39 = *(v21 + 8);
  v39(a7, v20);
  return (v39)(v23, v20);
}

uint64_t sub_10001A910(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a1;
  v26[1] = a2;
  v25[3] = 0x3A7A69623A6E7275;
  v25[4] = 0xE800000000000000;
  v25[1] = 0;
  v25[2] = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:)();

  v10 = *(v3 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v10 fileExistsAtPath:v11];

  if (a2)
  {
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v26[0] = 0;
    v15 = [v10 removeItemAtURL:v13 error:v26];

    if (v15)
    {
      v16 = *(v7 + 8);
      v17 = v26[0];
      return v16(v9, v6);
    }

    v24 = v26[0];
    _convertNSErrorToError(_:)();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003034(v19, qword_10002F838);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Trying to remove an item that does not exist", v22, 2u);
    }

    sub_10001074C();
    swift_allocError();
    *v23 = 1;
  }

  swift_willThrow();
  return (*(v7 + 8))(v9, v6);
}

char *sub_10001AC40()
{
  v2 = sub_100001DC4(&qword_10002E900, &qword_1000210F8);
  __chkstk_darwin(v2 - 8);
  v70 = &v53 - v3;
  v72 = type metadata accessor for URL();
  v4 = *(v72 - 8);
  v5 = __chkstk_darwin(v72);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Date();
  v69 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  result = sub_10001B834();
  if (!v1)
  {
    v65 = v13;
    v60 = v7;
    v73 = v16;
    v62 = v10;
    v67 = *(result + 2);
    if (!v67)
    {
    }

    v59 = v0;
    v68 = result;
    Date.init()();
    v61 = v18;
    Date.addingTimeInterval(_:)();
    v20 = v68;
    v21 = 0;
    v58 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager;
    v71 = v4 + 16;
    v66 = (v69 + 6);
    v63 = (v69 + 4);
    v64 = v69 + 1;
    v69 = (v4 + 8);
    v22.n128_u64[0] = 136315138;
    v53 = v22;
    v23 = v62;
    v24 = v72;
    while (1)
    {
      if (v21 >= *(v20 + 2))
      {
        __break(1u);
      }

      v25 = *(v4 + 16);
      v25(v9, &v20[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21], v24);
      URL.path.getter();
      v26 = v70;
      sub_10001B3D4(v70);

      if ((*v66)(v26, 1, v23) == 1)
      {
        break;
      }

      v28 = v65;
      (*v63)(v65, v26, v23);
      v27 = v73;
      if (static Date.< infix(_:_:)())
      {
        v29 = *(&v59->super.isa + v58);
        URL._bridgeToObjectiveC()(v59);
        v31 = v30;
        v74 = 0;
        v32 = [v29 removeItemAtURL:v30 error:&v74];

        v33 = v61;
        if (!v32)
        {
          v50 = v74;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v51 = *v64;
          v52 = v62;
          (*v64)(v65, v62);
          (*v69)(v9, v72);
          v51(v73, v52);
          return (v51)(v33, v52);
        }

        v34 = qword_10002DCD0;
        v35 = v74;
        if (v34 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100003034(v36, qword_10002F838);
        v37 = v60;
        v24 = v72;
        v25(v60, v9, v72);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v54 = v40;
          v56 = swift_slowAlloc();
          v74 = v56;
          *v40 = v53.n128_u32[0];
          v55 = v38;
          v41 = URL.lastPathComponent.getter();
          v43 = v42;
          v57 = *v69;
          v57(v37, v24);
          v44 = sub_10000E3FC(v41, v43, &v74);

          v45 = v54;
          *(v54 + 1) = v44;
          v46 = v55;
          _os_log_impl(&_mh_execute_header, v55, v39, "Deleted unused logo: %s", v45, 0xCu);
          sub_100003600(v56);

          v23 = v62;
          (*v64)(v65, v62);
          v57(v9, v24);
        }

        else
        {

          v47 = *v69;
          (*v69)(v37, v24);
          v23 = v62;
          (*v64)(v65, v62);
          v47(v9, v24);
        }

        goto LABEL_9;
      }

      (*v64)(v28, v23);
      v24 = v72;
      (*v69)(v9, v72);
LABEL_5:
      ++v21;
      v20 = v68;
      if (v67 == v21)
      {

        v48 = v27;
        v49 = *v64;
        (*v64)(v48, v23);
        return (v49)(v61, v23);
      }
    }

    v24 = v72;
    (*v69)(v9, v72);
    sub_1000035A0(v26, &qword_10002E900, &qword_1000210F8);
LABEL_9:
    v27 = v73;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001B3D4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_100001DC4(&qword_10002E900, &qword_1000210F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v11 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  v27[0] = 0;
  v13 = [v11 attributesOfItemAtPath:v12 error:v27];

  v14 = v27[0];
  if (v13)
  {
    v26 = a3;
    type metadata accessor for FileAttributeKey(0);
    sub_10001C658(&qword_10002DDB8, type metadata accessor for FileAttributeKey, &unk_100020860);
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    if (!*(v15 + 16) || (v17 = sub_10000EFC4(NSFileModificationDate), (v18 & 1) == 0))
    {

      (*(v8 + 8))(v10, v7);
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
LABEL_7:
      sub_1000035A0(v6, &qword_10002E900, &qword_1000210F8);
      type metadata accessor for Date();
      return (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
    }

    sub_10001252C(*(v15 + 56) + 32 * v17, v27);
    (*(v8 + 8))(v10, v7);

    v19 = type metadata accessor for Date();
    v20 = swift_dynamicCast();
    v21 = *(v19 - 8);
    v22 = *(v21 + 56);
    v22(v6, v20 ^ 1u, 1, v19);
    if ((*(v21 + 48))(v6, 1, v19) == 1)
    {
      goto LABEL_7;
    }

    v25 = v26;
    (*(v21 + 32))(v26, v6, v19);
    return (v22)(v25, 0, 1, v19);
  }

  else
  {
    v24 = v27[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v8 + 8))(v10, v7);
  }
}

void *sub_10001B834()
{
  v1 = type metadata accessor for URL();
  v50 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v39 - v4;
  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v52 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v52];

  v11 = v52;
  if (v10)
  {
    v49 = v6;
    v40 = v1;
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    v48 = *(v12 + 16);
    if (v48)
    {
      v14 = 0;
      v41 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v47 = v12 + v41;
      v51 = v50 + 16;
      v45 = (v50 + 8);
      v39 = (v50 + 32);
      v0 = _swiftEmptyArrayStorage;
      v15 = v40;
      v44 = v5;
      v46 = v12;
      while (1)
      {
        if (v14 >= *(v12 + 16))
        {
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

        v16 = v0;
        v17 = *(v50 + 72);
        v18 = *(v50 + 16);
        v18(v5, v47 + v17 * v14, v15);
        LOBYTE(v52) = 0;
        URL.path.getter();
        v19 = v5;
        v20 = String._bridgeToObjectiveC()();

        v21 = v49;
        v22 = [v49 fileExistsAtPath:v20 isDirectory:&v52];

        if (v22)
        {
          break;
        }

        (*v45)(v19, v15);
        v12 = v46;
        v5 = v19;
        v0 = v16;
LABEL_5:
        if (v48 == ++v14)
        {
          goto LABEL_31;
        }
      }

      if (v52 != 1)
      {
        v5 = v44;
        v18(v42, v44, v15);
        v0 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_10001C460(0, v16[2] + 1, 1, v16);
        }

        v12 = v46;
        v34 = v0[2];
        v33 = v0[3];
        if (v34 >= v33 >> 1)
        {
          v0 = sub_10001C460((v33 > 1), v34 + 1, 1, v0);
        }

        (*v45)(v5, v15);
        v0[2] = v34 + 1;
        (*v39)(v0 + v41 + v34 * v17, v42, v15);
        goto LABEL_5;
      }

      v23 = v43;
      v24 = sub_10001B834();
      v0 = v16;
      v43 = v23;
      if (v23)
      {
        (*v45)(v44, v15);

        return v0;
      }

      v25 = v24;
      v26 = v24[2];
      v27 = v16[2];
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= v16[3] >> 1)
      {
        if (v25[2])
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v35 = v27 + v26;
        }

        else
        {
          v35 = v27;
        }

        v0 = sub_10001C460(isUniquelyReferenced_nonNull_native, v35, 1, v16);
        if (v25[2])
        {
LABEL_14:
          v15 = v40;
          if ((v0[3] >> 1) - v0[2] < v26)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          v12 = v46;
          v5 = v44;
          if (v26)
          {
            v30 = v0[2];
            v31 = __OFADD__(v30, v26);
            v32 = v30 + v26;
            if (v31)
            {
              goto LABEL_38;
            }

            v0[2] = v32;
          }

LABEL_28:
          (*v45)(v5, v15);
          goto LABEL_5;
        }
      }

      v15 = v40;
      v12 = v46;
      v5 = v44;
      if (v26)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v0 = _swiftEmptyArrayStorage;
LABEL_31:
  }

  else
  {
    v36 = v52;
    v37 = _convertNSErrorToError(_:)();

    v43 = v37;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_10001BD54()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v5 = *(v0 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  sub_100001DC4(&qword_10002E8F0, &unk_1000210E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100020980;
  *(inited + 32) = NSFileModificationDate;
  *(inited + 64) = v1;
  v7 = sub_10000306C((inited + 40));
  (*(v2 + 16))(v7, v4, v1);
  v8 = NSFileModificationDate;
  sub_1000107A0(inited);
  swift_setDeallocating();
  sub_1000035A0(inited + 32, &qword_10002E228, &qword_100020B48);
  type metadata accessor for FileAttributeKey(0);
  sub_10001C658(&qword_10002DDB8, type metadata accessor for FileAttributeKey, &unk_100020860);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = String._bridgeToObjectiveC()();
  v17 = 0;
  v11 = [v5 setAttributes:isa ofItemAtPath:v10 error:&v17];

  if (v11)
  {
    v12 = *(v2 + 8);
    v13 = v17;
    return v12(v4, v1);
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_10001C000()
{
  v1 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_cacheURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for BrandLogoPersistentStore(uint64_t a1)
{
  result = qword_10002E808;
  if (!qword_10002E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C100(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t getEnumTagSinglePayload for BrandLogoFetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrandLogoFetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001C300()
{
  result = qword_10002E8E8;
  if (!qword_10002E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E8E8);
  }

  return result;
}

char *sub_10001C354(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DC4(&qword_10002E7C0, &unk_100021110);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10001C460(void *result, int64_t a2, char a3, void *a4)
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

  sub_100001DC4(&qword_10002E8F8, &qword_1000210F0);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

uint64_t sub_10001C640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001C6A0()
{
  result = qword_10002E918;
  if (!qword_10002E918)
  {
    sub_100001E70(&qword_10002E910, &unk_100021100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E918);
  }

  return result;
}

id sub_10001C704()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_6:
    v11 = v1;
    return v2;
  }

  v3 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1000176AC();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = sub_100017728();

      v9 = [objc_allocWithZone(BCSICloudServerEnvironment) initWithUserDefaults:v6 isInternalInstall:v8 & 1 type:*(v3 + 16)];
      v10 = *(v3 + 32);
      *(v3 + 32) = v9;
      v2 = v9;

      v1 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10001C7CC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = objc_opt_self();
    v4 = sub_10001C704();
    v5 = [v4 containerID];

    v6 = [v3 containerIDForContainerIdentifier:v5 environment:{objc_msgSend(*(v0 + 32), "containerEnvironment")}];
    v7 = *(v0 + 40);
    *(v0 + 40) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_10001C88C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_10001C7CC();
    v4 = [objc_allocWithZone(CKContainer) initWithContainerID:v3];

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_10001C90C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(BCSCoalesceHelper) initWithQOSClass:25];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10001C97C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
LABEL_8:
    v21 = v1;
    return v2;
  }

  v3 = v0;
  v4 = sub_10001C704();
  v5 = sub_10001C88C();
  v6 = [v5 publicCloudDatabase];

  v7 = *(v3 + 48);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v10 = v7;
  v11 = sub_100017768();

  v12 = sub_10001C90C();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v14 = sub_1000178D0();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  v16 = sub_1000178E4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_100017840();

    v19 = [objc_allocWithZone(BCSRemoteFetchCloudKit) initWithEnvironment:v4 database:v6 databaseContainer:v10 queryOperationFactory:v11 coalesceHelper:v12 bloomFilterExtractor:v14 operationGroupFactory:v16 metricFactory:v18];
    v20 = *(v3 + 64);
    *(v3 + 64) = v19;
    v2 = v19;

    v1 = 0;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_10001CB14()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
LABEL_10:
    v26 = v1;
    return v2;
  }

  v3 = v0;
  v4 = *(v0 + 16) - 1;
  if (v4 < 5)
  {
    v5 = qword_100021178[v4];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_10001777C();

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = sub_10001777C();

        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = sub_10001777C();

          v15 = sub_10001C97C();
          v16 = *(v3 + 64);
          v17 = swift_unknownObjectWeakLoadStrong();
          if (v17)
          {
            v18 = v17;
            v19 = v16;
            v20 = sub_1000176AC();

            v21 = swift_unknownObjectWeakLoadStrong();
            if (v21)
            {
              v22 = v21;
              v23 = sub_100017840();

              v24 = [objc_allocWithZone(BCSMegashardFetcher) initWithShardType:v5 configCache:v8 shardCache:v11 shardCacheSkipper:v14 shardInstantiator:v15 megashardRemoteFetcher:v19 userDefaults:v20 metricFactory:v23];
              v25 = *(v3 + 72);
              *(v3 + 72) = v24;
              v2 = v24;

              v1 = 0;
              goto LABEL_10;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10001CD04()
{
  v1 = sub_10001962C(*(v0 + 16));
  v2 = v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 5;
    while (v4 < v2[2])
    {

      v6 = sub_10001CB14();
      v7 = objc_allocWithZone(BCSXPCLaunchEventPrefetchTrigger);
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 initWithActivityName:v8];

      if (!v9)
      {
        goto LABEL_10;
      }

      ++v4;
      [v6 addFetchTrigger:v9];

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_10001CE0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10001CE98(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 16) = a1;
  swift_unknownObjectWeakAssign();
  return v2;
}

void sub_10001D380(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eligibleToRun];
  v5 = ABSLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) activityName];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scheduled background task started for %@", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001D590;
    v15[3] = &unk_100029760;
    v15[4] = *(a1 + 32);
    [v3 setExpirationHandler:v15];
    v8 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001D648;
    v12[3] = &unk_100029788;
    v9 = v3;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    (*(v8 + 16))(v8, v9, 6, v12);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) activityName];
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Scheduled background task is not eligible to run for %@", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }
}

void sub_10001D590(uint64_t a1)
{
  v2 = ABSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) activityName];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Background task %@ expired.", &v4, 0xCu);
  }
}

void sub_10001D648(uint64_t a1)
{
  [*(a1 + 32) setTaskCompleted];
  v2 = ABSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) activityName];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Background task completed for %@", &v4, 0xCu);
  }
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