uint64_t sub_100002030(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v8 = sub_100002094(v7, v6);

  return v8 & 1;
}

uint64_t sub_100002094(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *v3;
  v50[0] = swift_isaMask & *v3;
  v7 = *((swift_isaMask & v6) + 0x50);
  sub_10000518C();
  v50[1] = v8;
  __chkstk_darwin(v9);
  v11 = v50 - v10;
  v53 = type metadata accessor for Logger();
  sub_10000518C();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v7;
  v54 = v7;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  v17 = String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v50[2] = ObjectType;
    v51 = v13;
    if (v22)
    {
      swift_slowAlloc();
      v23 = v16;
      v24 = sub_100003C08();
      v54 = v24;
      *v17 = 136446210;
      v25 = sub_100004924(v19);
      v27 = sub_100004C50(v25, v26, &v54);

      *(v17 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Incoming %{public}s", v17, 0xCu);
      sub_1000034F8(v24);
      v28 = v24;
      v16 = v23;
      sub_1000036AC(v28);
      sub_1000036AC(v17);
    }

    sub_100002794(v11);
    v29 = v52;
    v30 = *(v50[0] + 88);
    (*(v30 + 16))(v19, v52, v30);
    v31 = (*(v30 + 24))(v19, v29, v30);
    v32 = sub_10000386C();
    v33(v32);
    v34 = v19;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    if (v31)
    {
      if (v37)
      {
        swift_slowAlloc();
        v38 = sub_100003C08();
        v54 = v38;
        *v31 = 136446210;
        v39 = sub_100004924(v34);
        v41 = sub_100004C50(v39, v40, &v54);

        *(v31 + 4) = v41;
        sub_100004F98(&_mh_execute_header, v42, v43, "Accepting %{public}s");
        sub_1000034F8(v38);
        sub_1000036AC(v38);
        sub_1000036AC(v31);
      }

      (*(v51 + 8))(v16, v53);
      return 1;
    }

    else
    {
      if (v37)
      {
        swift_slowAlloc();
        v44 = sub_100003C08();
        v54 = v44;
        *v31 = 136446210;
        v45 = sub_100004924(v34);
        v47 = sub_100004C50(v45, v46, &v54);

        *(v31 + 4) = v47;
        sub_100004F98(&_mh_execute_header, v48, v49, "Rejecting %{public}s");
        sub_1000034F8(v44);
        sub_1000036AC(v44);
        sub_1000036AC(v31);
      }

      (*(v51 + 8))(v16, v53);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002688()
{

  return swift_slowAlloc();
}

void sub_1000026A4(void *a1@<X8>)
{
  v2 = *(v1 + 512);
  *a1 = *(v1 + 536);
  a1[1] = v2;
}

uint64_t sub_1000026B8()
{

  return sub_10002EB80(v0, v1);
}

void sub_1000026E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t *sub_100002770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a2 + 8);
  a13 = a1;
  a14 = v15;

  return sub_100013234(&a10);
}

uint64_t sub_100002794@<X0>(uint64_t a1@<X8>)
{
  sub_100002C9C();
  v4 = v3;
  v6 = *(v5 + 80);
  sub_100002C9C();
  v7 = type metadata accessor for Result();
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_100002F80();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v9, v6);
  }

  if (*(v1 + 40) == 1)
  {
    sub_100003354(sub_1000BB634, v1, v4, (&type metadata for () + 1), &off_10018EBD0);
  }

  return swift_willThrow();
}

uint64_t sub_100002968(uint64_t result)
{
  *(result + 16) = *(v2 - 72);
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10000299C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002A28(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002A70(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002ACC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002AEC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002B1C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002B3C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002BA8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002BC8(uint64_t a1)
{

  return swift_once();
}

void sub_100002C04(unint64_t a1@<X8>)
{

  sub_100070514(a1 > 1, v1, 1, v2);
}

id sub_100002C28()
{

  return sub_1000AB530();
}

uint64_t sub_100002C58(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100002C7C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002CBC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002D58(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002D78(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002D98(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002DCC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002E40(uint64_t a1)
{

  return Character.write<A>(to:)();
}

uint64_t sub_100002F00(uint64_t a1)
{

  return swift_once();
}

void sub_100002F80()
{
  sub_100002C9C();
  v2 = v1;
  sub_100002C9C();
  sub_100002C9C();
  v3 = type metadata accessor for Result();
  sub_100003354(sub_100003460, v0, v2, v3, &off_10018EBD0);
}

uint64_t sub_100003048@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = *a1;
  v4 = type metadata accessor for LazyTask.State(0, *(*a1 + 10), *(*a1 + 11), *(*a1 + 12));
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(v3 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v10, a1 + v11, v4);
  v12 = type metadata accessor for Result();
  if (sub_1000032C4(v10, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(v16, v10, v12);
  }

  v13 = v16;
  a1[3]();
  (*(*(v12 - 8) + 16))(v7, v13, v12);
  sub_1000075C4(v7, 0, 1, v12);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v11, v7, v4);
  return swift_endAccess();
}

void sub_1000032EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 8))(a2, a4, a3);
  [v4 unlock];
}

void sub_100003354(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = (*(a5 + 8))(a3, a5);
  [v11 lock];

  a1();
  sub_1000032EC(v6, a3, a4, a5);
}

uint64_t sub_10000347C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1000034B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000034F8(void *a1)
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

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000036AC(uint64_t a1)
{
}

uint64_t sub_1000036F0(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100003748()
{

  return swift_slowAlloc();
}

void sub_100003764()
{
  v1 = 0x655F6E6F736A202CLL;
  v2 = 0xEC00000028686361;

  String.append(_:)(*&v1);
}

uint64_t sub_10000381C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *v1 = *(v2 - 176);

  return Notification.description.getter();
}

unint64_t sub_100003880(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_100108488(a11, a2, sub_1000232F4, a4, a5);
}

uint64_t sub_1000038C4(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2, &protocol conformance descriptor for [A]);
}

void sub_1000038F0()
{
  v1 = 40;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

void sub_10000390C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Row.get<A>(_:)();
}

uint64_t sub_100003934(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = (2 * ((result - 32) / 8)) | 1;
  return result;
}

double sub_100003968()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1000039CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100003A0C()
{
}

uint64_t sub_100003A60(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100003B94()
{

  return sub_1000075C4(v0, 1, 1, v1);
}

uint64_t sub_100003BB4()
{
}

uint64_t sub_100003BD8()
{

  return static _ErrorCodeProtocol.~= infix(_:_:)(v3, v1, v2, v0);
}

uint64_t sub_100003C08()
{

  return swift_slowAlloc();
}

uint64_t sub_100003C24(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_100003C44()
{

  RowIterator.compactMap<A>(_:)();
}

void sub_100003C6C()
{

  v3._countAndFlagsBits = v1 | 4;
  v3._object = (v0 | 0x8000000000000000);
  String.append(_:)(v3);
}

uint64_t sub_100003C88()
{

  return __CocoaSet.count.getter();
}

void sub_100003CC8()
{
  v2 = v0[2] + 1;

  sub_10001A80C(0, v2, 1, v0);
}

uint64_t sub_100003D44(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003D84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForEntitlement:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_100003E9C(v13, &qword_1001992F0, &qword_10014E000);
    goto LABEL_9;
  }

  sub_1000047D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (a3)
  {
    v7 = a3;
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100003E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002EB80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003EFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10002EB80(a2, a3);
  sub_10000482C();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_100003F54(void *a1)
{
  v3 = sub_100004250();
  v4 = sub_1000045F4();
  if (v3)
  {
    if (v4)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70(&qword_100198128);
      }

      v5 = type metadata accessor for Logger();
      sub_10000347C(v5, qword_10019DA38);
      v6 = sub_10006112C(a1);
      v7 = static os_log_type_t.debug.getter();
      if (sub_10001135C(v7))
      {
        v8 = sub_100006418();
        *v8 = 67109120;
        v8[1] = [v1 processIdentifier];

        sub_100007AFC();
        _os_log_impl(v9, v10, v11, v12, v13, 8u);
        sub_100013468();
      }

      else
      {

        v6 = v1;
      }

      v41 = LNTranscriptXPCPrivilegedObservingInterface();
    }

    else
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70(&qword_100198128);
      }

      v23 = type metadata accessor for Logger();
      sub_10000347C(v23, qword_10019DA38);
      v24 = sub_10006112C(a1);
      v25 = static os_log_type_t.debug.getter();
      if (sub_10001135C(v25))
      {
        v26 = sub_100006418();
        *v26 = 67109120;
        v26[1] = [v1 processIdentifier];

        sub_100007AFC();
        _os_log_impl(v27, v28, v29, v30, v31, 8u);
        sub_100013468();
      }

      else
      {

        v24 = v1;
      }

      v41 = LNTranscriptXPCPrivilegedInterface();
    }
  }

  else if (v4)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v14 = type metadata accessor for Logger();
    sub_10000347C(v14, qword_10019DA38);
    v15 = sub_10006112C(a1);
    v16 = static os_log_type_t.debug.getter();
    if (sub_10001135C(v16))
    {
      v17 = sub_100006418();
      *v17 = 67109120;
      v17[1] = [v1 processIdentifier];

      sub_100007AFC();
      _os_log_impl(v18, v19, v20, v21, v22, 8u);
      sub_100013468();
    }

    else
    {

      v15 = v1;
    }

    v41 = LNTranscriptXPCObservingInterface();
  }

  else
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v32 = type metadata accessor for Logger();
    sub_10000347C(v32, qword_10019DA38);
    v33 = sub_10006112C(a1);
    v34 = static os_log_type_t.debug.getter();
    if (sub_10001135C(v34))
    {
      v35 = sub_100006418();
      *v35 = 67109120;
      v35[1] = [v1 processIdentifier];

      sub_100007AFC();
      _os_log_impl(v36, v37, v38, v39, v40, 8u);
      sub_100013468();
    }

    else
    {

      v33 = v1;
    }

    v41 = LNTranscriptXPCInterface();
  }

  return v41;
}

uint64_t sub_100004250()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000025, 0x8000000100154E50, isa);

  return v1 & 1;
}

void sub_1000042F4(void *a1)
{
  swift_getObjectType();
  v2 = [a1 processIdentifier];
  v3 = sub_100003F54(a1);
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v18;
  if (v18)
  {
    v5 = sub_1000034B4(aBlock, v18);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = sub_100004794();
  if (v11)
  {
    v12 = v11;
    [a1 setRemoteObjectInterface:v11];
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v19 = sub_10000C608;
  v20 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v18 = &unk_10018FDF0;
  v16 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1000045AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000045F4()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000024, 0x8000000100154E20, isa);

  return v1 & 1;
}

uint64_t sub_1000046E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_100127828(v31 - 112, v30, v29, a17 & 1, 0, 0, v31 - 152, &a29, &a19, 0, 3uLL, a15, a13, a14);
}

uint64_t sub_100004738@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(LNWeakProxy) initWithValue:v1];
  result = sub_10002EB80(&qword_100198E28, &unk_10014EF50);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id sub_100004794()
{
  if (sub_1000045F4())
  {
    return LNNextActionObserverXPCInterface();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000047D0()
{
  result = qword_100199300;
  if (!qword_100199300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100199300);
  }

  return result;
}

uint64_t sub_100004868(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1000048C4(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x4449000000000000;
  v3 = 0xE800000000000000;

  String.append(_:)(*&v2);
}

uint64_t sub_1000048F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

unint64_t sub_100004924(void *a1)
{
  _StringGuts.grow(_:)(43);

  [a1 processIdentifier];
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x72657320726F6620;
  v4._object = 0xEE00222065636976;
  String.append(_:)(v4);
  v5._countAndFlagsBits = (*(*(v1 + 88) + 8))();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 34;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD000000000000018;
}

unint64_t sub_100004A3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A758(a5, a6);
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

uint64_t sub_100004B3C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000C2A0(a3, a4);
}

uint64_t sub_100004B9C()
{
  v2 = sub_1000034B4(v0, v0[3]);

  return sub_100083CC0(v1, v2);
}

uint64_t sub_100004C0C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100004C24()
{
  sub_1000034F8((v0 - 144));

  return sub_1000034F8((v0 - 104));
}

unint64_t sub_100004C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004A3C(v11, 0, 0, 1, a1, a2);
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
    sub_100004D14(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000034F8(v11);
  return v7;
}

uint64_t sub_100004D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004D70()
{
}

uint64_t sub_100004D8C()
{
}

uint64_t sub_100004DA8(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_100004E38()
{
  *(v1 - 224) = v0;
  *(v1 - 112) = v0 + 32;
  *(v1 - 104) = v0 & 0xFFFFFFFFFFFFFF8;

  return swift_bridgeObjectRetain_n();
}

BOOL sub_100004E68()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100004E88(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  return result;
}

id sub_100004F30()
{

  return sub_1000B2C68(v0, v1, 9006, 0);
}

void sub_100004F98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void *sub_100004FD4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va1, a36);
  va_start(__srca, a36);
  __src = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);
  a32 = a1;

  return memcpy(&__dst, __srca, 0xB0uLL);
}

void sub_100004FF8()
{
  v1 = 44;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_100005014(uint64_t a1)
{
  *(v4 + 4) = a1;
  *(v4 + 12) = 2080;

  return sub_100004C50(v3, v1, (v2 + 88));
}

uint64_t sub_10000503C(uint64_t a1)
{

  return ExpressionType.init(_:)(v2, v1, v3, a1);
}

uint64_t sub_100005090()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000050CC()
{
}

void sub_1000051B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

size_t sub_1000051D8(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_100005200()
{
  sub_1000034F8(v0);
}

uint64_t sub_100005308()
{
}

void sub_10000536C(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[5] = a2;
  v2[6] = a2;
  v2[7] = a2;
  v2[8].n128_u64[0] = 0;
  v2[8].n128_u64[1] = a1;
  v2[9].n128_u64[0] = 0;
  v2[9].n128_u64[1] = 0;
  v2[10].n128_u16[0] = 256;
  v2[10].n128_u64[1] = a1;
}

uint64_t sub_10000538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1000053AC()
{
}

uint64_t sub_1000053F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return dispatch thunk of Encodable.encode(to:)();
}

void sub_100005418()
{
  sub_100018D28();
  ObjectType = swift_getObjectType();
  v2 = [v0 processIdentifier];
  v3 = LNDaemonApplicationXPCInterface();
  [v0 setExportedInterface:v3];

  sub_100005718(v0, aBlock);
  v4 = v14;
  if (v14)
  {
    v5 = sub_1000034B4(aBlock, v14);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [v0 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = ObjectType;
  v15 = sub_10000E540;
  v16 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v14 = &unk_10018E0A0;
  v12 = _Block_copy(aBlock);

  [v0 setInvalidationHandler:v12];
  _Block_release(v12);
}

char *sub_100005660()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019B7B8, &unk_100150CF0);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

char *sub_100005690()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019B978, &qword_100150D78);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_1000056E4()
{

  return swift_slowAlloc();
}

void sub_100005718(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 auditToken];
  v5 = token.val[0];
  v6 = token.val[1];
  v7 = token.val[3];
  v8 = token.val[5];
  v10 = token.val[6];
  v9 = token.val[7];
  v32 = token.val[4];
  v33 = token.val[2];
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v30 = v2;
  v13 = SecTaskCopySigningIdentifier(v11, 0);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  objc_opt_self();
  sub_10001AAC8();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*&token.val[2])
  {
LABEL_9:
    v14 = v12;
LABEL_11:

LABEL_12:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v26 = v6;
  v29 = *&token.val[2];
  v28 = *token.val;
  if (qword_100198220 != -1)
  {
    sub_100002B94();
    swift_once();
  }

  v27 = v5;
  v15 = type metadata accessor for Logger();
  sub_10000347C(v15, qword_10019DD28);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    log = v16;
    v18 = sub_100007764();
    v19 = sub_1000056E4();
    *token.val = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100004C50(v28, v29, &token);
    _os_log_impl(&_mh_execute_header, log, v17, "Created AppShortcutClient with bundleId: %{public}s", v18, 0xCu);
    sub_1000034F8(v19);
    sub_1000036AC(v19);
    sub_1000036AC(v18);
  }

  else
  {
  }

  v20 = v30;
  v21 = *(v30 + 120);

  v31 = [a1 processIdentifier];
  v22 = *(v20 + 112);
  v23 = type metadata accessor for ApplicationServiceInstance(0);
  objc_allocWithZone(v23);

  v24 = sub_100005A00(v27 | (v26 << 32), v33 | (v7 << 32), v32 | (v8 << 32), v10 | (v9 << 32), v28, v29, v21, v31, v22);
  *(a2 + 24) = v23;

  *a2 = v24;
}

uint64_t type metadata accessor for ApplicationServiceInstance(uint64_t a1)
{
  result = qword_10019AC80;
  if (!qword_10019AC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100005A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  UUID.init()();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v19 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken];
    *v19 = a1;
    *(v19 + 1) = a2;
    *(v19 + 2) = a3;
    *(v19 + 3) = a4;
    v20 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_sourceBundleIdentifier];
    *v20 = a5;
    *(v20 + 1) = a6;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource] = a7;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID] = a8;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource] = a9;
    v21 = objc_allocWithZone(LSApplicationExtensionRecord);
    sub_100016628();

    swift_bridgeObjectRetain_n();
    v22 = sub_100005C3C(a5, a6, 1, &selRef_initWithBundleIdentifier_requireValid_error_);
    v23 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
    if (v24)
    {
      v25 = v23;
      v26 = v24;

      a5 = v25;
      a6 = v26;
    }

    else
    {
      v27 = [v22 containingBundleRecord];
      if (v27 && (v28 = v27, v29 = [v27 bundleIdentifier], v28, v29))
      {
        a5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        a6 = v31;
      }

      else
      {
      }
    }

    v32 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier];
    *v32 = a5;
    *(v32 + 1) = a6;
    v35.receiver = v10;
    v35.super_class = ObjectType;
    objc_msgSendSuper2(&v35, "init");
    sub_100016628();

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100005C3C(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v12 = 0;
  v8 = [v4 *a4];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100005D18()
{

  return swift_slowAlloc();
}

uint64_t sub_100005D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_10001A798(&a33, &a17);
}

uint64_t sub_100005D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{

  return sub_10012DAB0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v9 & 0xFFFF00000000FFFFLL | 0x3F203D0000, v10);
}

uint64_t sub_100005DA0()
{
  if (qword_100198228 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

uint64_t sub_100005E1C(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = a1;
  v8 = sub_1000077D8();

  return sub_100006240(v8, v9);
}

uint64_t sub_100005EB0()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_100005F54()
{
  sub_1000070C8();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000208D0;

  return sub_100006004();
}

uint64_t sub_100006004()
{
  sub_1000036A0();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;

  return _swift_task_switch(sub_100006CAC, 0, 0);
}

uint64_t sub_100006094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000BFAC;

  return v7();
}

uint64_t sub_10000617C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100004DC8(v6);
  *v7 = v8;
  v7[1] = sub_10000BEC4;

  return sub_100006094(a1, v3, v4, v5);
}

uint64_t sub_100006240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000075C4(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100151CC0;
  v9[5] = v8;
  sub_100109754(0, 0, v6, &unk_100151CD0, v9);
}

uint64_t sub_100006358()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v3 = sub_1000070A8(v1);

  return v4(v3);
}

uint64_t sub_1000063EC()
{

  return swift_slowAlloc();
}

uint64_t sub_100006418()
{

  return swift_slowAlloc();
}

uint64_t sub_10000643C()
{

  return swift_allocObject();
}

uint64_t sub_10000645C()
{

  return swift_errorRetain();
}

uint64_t sub_100006474()
{

  return swift_errorRetain();
}

uint64_t sub_1000064F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BEC4;

  return sub_1000065B8(v2, v3, v4);
}

uint64_t sub_1000065B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000BEC4;

  return v6();
}

unint64_t sub_1000066A0(char a1)
{

  return sub_1000379A0(v2, a1 & 1, v1);
}

uint64_t sub_100006704(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000067A0()
{
}

void *sub_100006800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char __src)
{

  return memcpy(&__dst, &__src, 0xB0uLL);
}

uint64_t sub_100006860()
{
}

void *sub_1000068AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

void sub_1000068D8(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000010;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_1000068F4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006920()
{
  sub_1000069B8(v1, v0);
}

void sub_100006958()
{
  v1 = 542327072;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000069B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100006A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_10009D608();
}

uint64_t sub_100006A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  return QueryType.filter(_:)(a1, a2, a3, v46, v47, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

void sub_100006AA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100006AC4(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100006B00(unint64_t *a1)
{

  return sub_10010900C(a1, v1, v2);
}

void sub_100006B34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void sub_100006B88(unint64_t a1@<X8>)
{

  sub_10001A80C(a1 > 1, v2, 1, v1);
}

uint64_t *sub_100006BC4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;
  a1[4].n128_u64[0] = *(v3 + 8);
  v5 = a1 + 2;

  return sub_100013234(v5);
}

uint64_t sub_100006BE8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100006C04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100020A58;

  return sub_100005F40();
}

uint64_t sub_100006CAC()
{
  v2 = sub_100007F78();
  v3 = sub_100010DC0(v2, sub_10011D0D0);
  *(v0 + 272) = v3;
  v4 = v3;
  sub_100012BBC(*(v0 + 248), *(v0 + 256), v0 + 144);
  v5 = *(v0 + 152);
  if (v5 && (v6 = *(v0 + 144), *(v0 + 224) = *(v0 + 160), *(v0 + 208) = v6, *(v0 + 216) = v5, sub_10001D368(v0 + 208), *(v0 + 232)))
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 policyWithBundleIdentifier:v8];

    *(v0 + 240) = 0;
    v10 = [v9 connectionWithError:v0 + 240];
    *(v0 + 280) = v10;

    v11 = *(v0 + 240);
    if (v10)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();
      *(v0 + 288) = v13;
      sub_100003EFC(v0 + 224, &unk_100199100, &qword_10014E230);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_1000147CC;
      v14 = swift_continuation_init();
      *(v0 + 136) = sub_10002EB80(&qword_10019AD18, &qword_10014FDC0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100016440;
      *(v0 + 104) = &unk_10018E460;
      *(v0 + 112) = v14;
      [v10 fetchAppShortcutParametersForMangledName:v13 withCompletionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v24 = v11;
    sub_100003EFC(v0 + 224, &unk_100199100, &qword_10014E230);
    _convertNSErrorToError(_:)();
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (sub_100012824())
    {
      sub_100007764();
      sub_10001DD04();
      *v1 = 136315138;
      v17 = sub_10000485C();
      *(v1 + 4) = sub_100004C50(v17, v18, v19);
      sub_1000132C0(&_mh_execute_header, v20, v16, "Unable to find AppShortcutProvider for %s");
      sub_10001AA00();
      sub_100003A0C();
    }

    v21 = sub_1000910C0();
    sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v21);
    *v22 = 2;
  }

  swift_willThrow();

  sub_100003A00();

  return v23();
}

uint64_t sub_100007130(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007174(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007194(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  return v1;
}

uint64_t sub_1000071FC(uint64_t a1)
{

  return swift_once();
}

void sub_10000721C(uint64_t a1)
{
  *(v2 - 88) = *v1;

  sub_100068CEC();
}

uint64_t sub_1000072C4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007314(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007348@<X0>(uint64_t a2@<X8>)
{
  *(v3 + 144) = v2;
  *(v3 + 152) = a2;

  return swift_bridgeObjectRetain_n();
}

void sub_10000739C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100007418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void *sub_100007484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = v3;
  return sub_1000034B4(v2, v2[3]);
}

uint64_t sub_1000074B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000754C()
{

  return sub_10001970C(v0 - 256);
}

void sub_10000756C()
{

  v3._countAndFlagsBits = v0 + 21;
  v3._object = (v1 | 0x8000000000000000);
  String.append(_:)(v3);
}

double sub_100007588()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_100007598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_100013640(v11, &a10);
}

uint64_t sub_1000075EC(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007654(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000BEC8;

  return v6(a1);
}

uint64_t sub_100007764()
{

  return swift_slowAlloc();
}

uint64_t sub_1000077B8()
{
  v3 = (*(v1 + 56) + 16 * v0);
  v4 = *(v2 - 192);
  *v3 = *(v2 - 200);
  v3[1] = v4;
  return *(v2 - 184);
}

void *sub_1000077F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

uint64_t sub_100007874(uint64_t a1)
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000078D0()
{

  return sub_10002EB80(v0, v1);
}

uint64_t sub_100007940()
{
}

void sub_10000795C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100007978(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

unint64_t sub_1000079B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_100004C50(a1, a2, va);
}

uint64_t sub_100007A44(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100007A88(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100007AC0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  *(v36 - 96) = a1;
  *v35 = a35;
  return *(v36 - 120);
}

uint64_t sub_100007B38(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007BD0(uint64_t a1)
{

  return Set.init(minimumCapacity:)();
}

uint64_t sub_100007C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;

  return type metadata accessor for UUID();
}

uint64_t sub_100007C48(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2, &protocol conformance descriptor for Expression<A>);
}

void sub_100007C74()
{
  v1 = 0x617461646174656DLL;
  v2 = 0xE800000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100007CB0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007CD0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007D64(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t sub_100007DB8(uint64_t a1)
{

  return swift_once();
}

id sub_100007E4C()
{

  return sub_1000B2C68(v0, v1, 9010, 0);
}

uint64_t sub_100007E74(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007ED0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007F18(uint64_t a1)
{

  return swift_once();
}

void sub_100007F38(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;
}

uint64_t sub_100007F90(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007FC0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007FFC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000801C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008068()
{
  *(v2 - 144) = v1;
  *(v2 - 136) = v0;
  return v2 - 128;
}

uint64_t sub_1000080E8()
{

  return swift_task_alloc();
}

uint64_t sub_100008120(uint64_t result)
{
  v1[25] = result;
  v1[22] = v2;
  v1[18] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100008144(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008164@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100008170(uint64_t a1)
{

  return swift_once();
}

void sub_100008190()
{
  v3 = 0xD000000000000010;

  v2 = v0 | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000081B0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000081EC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008234(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000082CC(uint64_t a1)
{

  return swift_once();
}

void sub_1000082EC(Swift::String a1)
{

  String.append(_:)(a1);
}

void sub_10000836C(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonRegistryXPCInterface();
  [a1 setExportedInterface:v3];

  sub_10000860C(a1, v4, v5, v6, v7, v8, v9, v10, aBlock, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v11 = v25;
  if (v25)
  {
    v12 = sub_1000034B4(&aBlock, v25);
    v13 = *(v11 - 1);
    v14 = __chkstk_darwin(v12);
    v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    sub_1000034F8(&aBlock);
  }

  else
  {
    v17 = 0;
  }

  [a1 setExportedObject:v17];
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  v26 = sub_100029784;
  v27 = v20;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000C13C;
  v25 = &unk_10018FF58;
  v21 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v21];
  _Block_release(v21);
}

void sub_10000860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Logger();
  sub_100002944();
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  v33 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v34 = sub_10000347C(v27, qword_10019E100);
  (*(v29 + 16))(&a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v27);
  v35 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v36 = (v31 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v29 + 32))(v37 + v35, v33, v27);
  *(v37 + v36) = v24;
  objc_allocWithZone(LNWeakProxy);
  v38 = v24;
  v39 = sub_1000089E4(v20, sub_1000F8390, v37);
  v26[3] = sub_10002EB80(&qword_100198E28, &unk_10014EF50);
  *v26 = v39;
  sub_1000069EC();
}

uint64_t sub_1000087AC()
{
  type metadata accessor for Logger();
  sub_10000482C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100008858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1000034F8(va);
}

void sub_100008874()
{
  *(v0 + 16) = v2;
  v6 = (v0 + 24 * v1);
  v6[4] = v4;
  v6[5] = v5;
  v6[6] = v3;
}

uint64_t sub_1000088C4(uint64_t a1)
{

  return swift_once();
}

id sub_1000088F8(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t sub_100008910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  return Connection.prepareRowIterator(_:)(va);
}

unint64_t sub_100008938(float a1)
{
  *v2 = a1;

  return sub_100004C50(v4, v3, (v1 + 88));
}

uint64_t sub_100008988()
{

  return Connection.init(_:readonly:)(v2, v1, v0);
}

uint64_t sub_1000089C0()
{

  return type metadata accessor for SQLiteEncoder();
}

id sub_1000089E4(void *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000F4FD0;
  v8[3] = &unk_10018EEA8;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithValue:a1 wrapper:v5];

  _Block_release(v5);

  return v6;
}

uint64_t sub_100008AA0(void *a1)
{
  type metadata accessor for RegistryError(0);
  sub_10000482C();
  __chkstk_darwin(v2);
  sub_100002958();
  v5 = v4 - v3;
  if ((sub_100008D64() & 1) == 0)
  {
    v25 = sub_10000B484();
    v7 = v6;
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000347C(v8, qword_10019E100);
    sub_100008840();

    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      sub_100010D80();
      v26 = swift_slowAlloc();
      *v12 = 136315650;
      if (v7)
      {
        v13 = v25;
      }

      else
      {
        v13 = 0x646E7542206C696ELL;
      }

      if (!v7)
      {
        v7 = 0xED0000444920656CLL;
      }

      sub_100004C50(v13, v7, &v26);
      sub_100008840();

      *(v12 + 4) = a1;
      *(v12 + 12) = 1024;
      v14 = [v9 processIdentifier];

      *(v12 + 14) = v14;
      *(v12 + 18) = 2080;
      swift_storeEnumTagMultiPayload();
      sub_100027F58();
      sub_100002714();
      sub_100002CF0();
      sub_100027240(v5, v15);
      v16 = sub_1000077D8();
      sub_100004C50(v16, v17, v18);
      sub_100018D28();

      *(v12 + 20) = v14;
      sub_1000FD674();
      _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {
    }
  }

  [a1 resume];
  return 1;
}

uint64_t sub_100008D64()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000018, 0x80000001001562F0, isa);

  return v1 & 1;
}

uint64_t sub_100008DE4()
{
  if (qword_100198360 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

uint64_t sub_100008E60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008E98(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v4 - 8);
  v76 = &v67 - v5;
  v6 = type metadata accessor for String.Encoding();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v67 - v16;
  __chkstk_darwin(v17);
  v79 = &v67 - v18;
  __chkstk_darwin(v19);
  v80 = &v67 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v22 = objc_opt_self();
  _Block_copy(a2);
  v23 = [v22 currentConnection];
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v23;
  v78 = v21;
  v73 = a1;
  v25 = *&a1[OBJC_IVAR____TtC10LinkDaemon8Registry_store];
  v26 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
  swift_beginAccess();
  sub_100009E90(v25 + v26, v11, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v11, 1, v12) == 1)
  {

    sub_1000FC404(v11, &qword_1001990C0);
LABEL_4:
    type metadata accessor for RegistryError(0);
    sub_1000098AC(&unk_10019ACB8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v27 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v27);

    goto LABEL_7;
  }

  v28 = v13;
  (*(v13 + 32))(v80, v11, v12);
  v29 = v79;
  URL.deletingLastPathComponent()();
  sub_10000A92C(v29, 0);
  static String.Encoding.utf8.getter();
  v30 = String.data(using:allowLossyConversion:)();
  v32 = v31;

  (*(v77 + 8))(v8, v6);
  if (v32 >> 60 == 15)
  {
    type metadata accessor for RegistryError(0);
    sub_1000098AC(&unk_10019ACB8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v33 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v33);

    v34 = *(v28 + 8);
    v34(v79, v12);
    v34(v80, v12);
  }

  else
  {
    v77 = v32;
    if (qword_100198350 != -1)
    {
      swift_once();
    }

    v70 = v30;
    v35 = type metadata accessor for Logger();
    sub_10000347C(v35, qword_10019E100);
    v36 = v74;
    v68 = *(v28 + 16);
    v68(v74, v79, v12);
    v37 = v24;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v72 = v37;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v81 = v67;
      *v41 = 67240450;
      *(v41 + 4) = [v37 processIdentifier];

      *(v41 + 8) = 2080;
      sub_1000098AC(&qword_100198D68);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v45 = *(v28 + 8);
      v71 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = v45;
      (v45)(v36, v12);
      v46 = sub_100004C50(v42, v44, &v81);

      *(v41 + 10) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Granting %{public}d read access to %s", v41, 0x12u);
      sub_1000034F8(v67);
    }

    else
    {

      v47 = *(v28 + 8);
      v71 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = v47;
      (v47)(v36, v12);
    }

    v48 = v12;
    v49 = v73;
    v50 = v75;
    v69 = v48;
    v68(v75, v80, v48);
    v51 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    v52 = v70;
    v53 = v77;
    sub_1000098F0(v70, v77);
    sub_10000AD5C(v50, 1, v52, v53);
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v72;
    v59 = sub_100003D84(v56, v58, 0);

    v60 = type metadata accessor for TaskPriority();
    v61 = v76;
    sub_1000075C4(v76, 1, 1, v60);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v59 & 1;
    *(v62 + 40) = v49;
    *(v62 + 48) = sub_10000D4AC;
    *(v62 + 56) = v78;
    *(v62 + 64) = v55;
    v63 = v49;

    v64 = v55;
    sub_10003A6C0(0, 0, v61, &unk_100151620, v62);

    sub_10000D4DC(v52, v53);

    v65 = v69;
    v66 = v74;
    (v74)(v79, v69);
    v66(v80, v65);
  }

LABEL_7:

  _Block_release(a2);
}

uint64_t sub_100009780()
{
  _Block_release(*(v0 + 16));
  sub_1000FD988();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000097B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100009868(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000098AC(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000098F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_100009948()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_100009960()
{
  *(v0 + 24) = sub_10003306C;

  return swift_continuation_init();
}

uint64_t sub_1000099E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_10001DF8C(va, v10);
}

void sub_100009A70()
{

  sub_1000B5DF0((v2 + 16), (v1 + 32), v3, v0);
}

void sub_100009AA4(uint64_t *a1@<X8>)
{

  sub_100013640(v1, a1);
}

uint64_t sub_100009AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return sub_10001859C(v7, v8, v9, 0, 0xE000000000000000, a6, a7);
}

uint64_t sub_100009B18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100009B70()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v3 = sub_1000070A8(v1);

  return v4(v3);
}

uint64_t sub_100009C34()
{

  return swift_slowAlloc();
}

uint64_t sub_100009C64()
{
}

uint64_t sub_100009CD8()
{
  if (qword_100198130 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

id sub_100009D54()
{
  v0 = [objc_opt_self() currentConnection];
  if (!v0)
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000347C(v1, qword_10019DA38);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No current XPC connection.", v4, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_100009E90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013294(a1, a2, a3, a4);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return v4;
}

uint64_t sub_100009EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002EB80(a3, a4);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return a2;
}

uint64_t sub_100009F38()
{
  sub_1000046C8();
  sub_10002EB80(v1, v2);
  sub_10000482C();
  v3 = sub_1000077D8();
  v4(v3);
  return v0;
}

NSObject *sub_10000A01C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v57 = a1;
  v7 = type metadata accessor for String.Encoding();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for URL();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  if (qword_100198128 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000347C(v17, qword_10019DA38);

  v52 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = v12;
    v50 = v3;
    v56 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v59 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100004C50(v57, a2, &v59);
    _os_log_impl(&_mh_execute_header, v19, v20, "Creating sandbox exception for %s...", v22, 0xCu);
    sub_1000034F8(v23);

    v12 = v49;
    v4 = v50;
    v16 = v56;
  }

  v24 = *(&v5->isa + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  sub_10000AF04(v11);
  if (sub_1000032C4(v11, 1, v12) == 1)
  {
    sub_100003EFC(v11, &qword_1001990C0, &unk_10014E200);
    sub_100060730();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
    return v24;
  }

  (*(v58 + 32))(v16, v11, v12);
  v24 = v5;
  v26 = sub_100009D54();
  if (v4)
  {
LABEL_8:
    (*(v58 + 8))(v16, v12);
    return v24;
  }

  v27 = v26;
  v29 = sub_10000A92C(v16, 0);
  v31 = v30;

  v32 = v53;
  static String.Encoding.utf8.getter();
  v33 = String.data(using:allowLossyConversion:)();
  v35 = v34;
  (*(v54 + 8))(v32, v55);
  if (v35 >> 60 == 15)
  {

    v24 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v24, v36, "Failed to issue sandbox extension: data conversion failed.", v37, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v56 = v16;
  v57 = v33;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    v43 = sub_100004C50(v29, v31, &v59);

    *(v41 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "Sandbox exception token issued: %s", v41, 0xCu);
    sub_1000034F8(v42);
  }

  else
  {
  }

  v44 = v58;
  v45 = v51;
  v46 = v56;
  (*(v58 + 16))(v51, v56, v12);
  v47 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_10000AD5C(v45, 1, v57, v35);
  v24 = v48;
  (*(v44 + 8))(v46, v12);
  return v24;
}

void sub_10000A674(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = sub_10000A01C(a1, a2);
  (a4)[2](a4, v5, 0);

  _Block_release(a4);
}

void *sub_10000A758(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000A814(a1, a2);
  sub_10000AE20(&off_10018B278);
  return v3;
}

void *sub_10000A7A4(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_100198D58, &unk_100152B60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_10000A814(uint64_t a1, unint64_t a2)
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
    result = sub_10000A7A4(v5, 0);
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

        v9 = result + 4;
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

        v9 = v7 + 4;
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

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000A92C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.path.getter();
  [v3 auditToken];
  String.utf8CString.getter();

  v9 = sandbox_extension_issue_file_to_process();

  if (v9)
  {
    v10 = String.init(cString:)();
    free(v9);
  }

  else
  {
    v11 = v3;
    v12 = errno.getter();
    v13 = v12;
    if (v12 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    LODWORD(v41) = v14;
    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000347C(v15, qword_10019E008);
    v16 = v6;
    v17 = *(v6 + 16);
    v18 = v8;
    v19 = v5;
    v17(v8, a1, v5);
    v20 = v11;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v13;
      v39 = v22;
      v24 = v13 == 2;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v25 = 138412802;
      sub_100078B8C();
      swift_allocError();
      *v27 = v41;
      *(v27 + 4) = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      *(v25 + 12) = 2080;
      [v20 auditToken];
      type metadata accessor for audit_token_t(0);
      v29 = String.init<A>(describing:)();
      v31 = sub_100004C50(v29, v30, &v42);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      v32 = URL.path.getter();
      v34 = v33;
      (*(v16 + 8))(v18, v19);
      v35 = sub_100004C50(v32, v34, &v42);

      *(v25 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v21, v39, "Failed to issue sandbox extension: %@. auditToken %s, path %s", v25, 0x20u);
      sub_100003E9C(v26, &unk_10019A260, &unk_10014D030);
      sub_100004DE4();

      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      (*(v16 + 8))(v18, v5);
      v23 = v13;
    }

    v10 = v23 == 2;
    sub_100078B8C();
    swift_allocError();
    *v36 = v41;
    *(v36 + 4) = v10;
    swift_willThrow();
  }

  return v10;
}

void sub_10000AD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000FDCA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  sub_100004F8C();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 initWithURL:v12 readonly:v7 & 1 scope:isa];

  v14 = sub_100004F8C();
  sub_100009B18(v14, v15);
  type metadata accessor for URL();
  sub_10000482C();
  (*(v16 + 8))(v9);
  sub_1000FDC90();
}

uint64_t sub_10000AE20(uint64_t result)
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

    result = sub_10003C820(result, v7, 1, v3);
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

uint64_t sub_10000AF04@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v3 + 16) == 1)
  {
    v12 = qword_10019E598;
    swift_beginAccess();
    sub_100009E90(v3 + v12, v7, &qword_1001990C0, &unk_10014E200);
    if (sub_1000032C4(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      URL.appendingPathComponent(_:)();
      (*(v9 + 8))(v11, v8);
      v18 = 0;
      return sub_1000075C4(a3, v18, 1, v8);
    }

    sub_100003EFC(v7, &qword_1001990C0, &unk_10014E200);
  }

  if (qword_100198128 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000347C(v13, qword_10019DA38);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100004C50(0x3A726F66284C5255, 0xE900000000000029, &v21);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s not executed due to failed initialization - nil directory", v16, 0xCu);
    sub_1000034F8(v17);
  }

  v18 = 1;
  return sub_1000075C4(a3, v18, 1, v8);
}

uint64_t sub_10000B238()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000B274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setBundleIdentifier:v4];
}

uint64_t sub_10000B2D8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000077D8();
}

uint64_t sub_10000B338(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10002EB80(&qword_100199D28, &qword_10014E830);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10014CE90;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v7 == a2)
  {

    v19 = a3;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = a3;

    if ((v9 & 1) == 0)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = sub_10000B5E4(v11, v12);
      v15 = v14;
      v17 = v16;

      if (v15)
      {
        sub_10000EE00(1, 2, 1, v6);
        v6 = v18;
        v18[2] = 2;
        v18[7] = v13;
        v18[8] = v15;
        v18[9] = v17;
      }
    }
  }

  return v6;
}

uint64_t sub_10000B484()
{
  [v0 auditToken];
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000347C(v1, qword_10019E008);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "CPCopyBundleIdentifierAndTeamFromAuditToken returned false", v4, 2u);
      sub_100004DE4();
    }
  }

  return 0;
}

int64_t sub_10000B5E4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v2 + v12, v11, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v11, 1, v5))
  {
    sub_100003EFC(v11, &qword_1001990C0, &unk_10014E200);
    return 0;
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_100003EFC(v11, &qword_1001990C0, &unk_10014E200);
  v14 = URL.path.getter();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v17 == a2)
  {

    goto LABEL_12;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_12:
    sub_100003D44(0, &qword_100199BA8, BMStoreConfig_ptr);
    result = NSPageSize();
    if ((result * 10) >> 64 == (10 * result) >> 63)
    {
      result = sub_10005FE98(v14, v16, 10 * result, 4);
      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100003D44(0, &qword_100199BA8, BMStoreConfig_ptr);
  result = NSPageSize();
  if ((result * 10) >> 64 != (10 * result) >> 63)
  {
    goto LABEL_16;
  }

  result = sub_10000B8DC(v14, v16, 10 * result);
  if (result)
  {
LABEL_14:
    v20 = result;

    return sub_10000B958(a1, a2, v20);
  }

  return result;
}

id sub_10000B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithStoreBasePath:v5 segmentSize:a3];

  return v6;
}

uint64_t sub_10000B958(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_100008254();
  if (!v11)
  {
    goto LABEL_14;
  }

  v57[0] = v56;
  v57[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000BE0C();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v8 + 8))(v10, v7);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v56;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v17 stringByStandardizingPath];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == v16 && v21 == a2)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_10000BE60(a3);
  if (v24)
  {

    goto LABEL_22;
  }

LABEL_14:
  if (qword_100198128 != -1)
  {
    sub_100002A70(&qword_100198128);
  }

  v25 = type metadata accessor for Logger();
  sub_10000347C(v25, qword_10019DA38);
  v26 = a3;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57[0] = v30;
    *v29 = 136315394;
    v31 = sub_10000BE60(v26);
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = v3;
      v33 = 0xE90000000000003ELL;
    }

    v3 = &type metadata for Any;
    v34 = sub_100004C50(v31, v33, v57);

    *(v29 + 4) = v34;
    sub_100008254();
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100004C50(v56, a2, v57);
    sub_10000739C(&_mh_execute_header, v35, v36, "Invalid identifier detected: path:%s identifier:%s");
    swift_arrayDestroy();
    sub_1000036AC(v30);
    sub_1000036AC(v29);
  }

LABEL_22:
  v37 = qword_100198128;
  v38 = a3;

  if (v37 != -1)
  {
    sub_100002A70(&qword_100198128);
  }

  v39 = type metadata accessor for Logger();
  sub_10000347C(v39, qword_10019DA38);
  v40 = v38;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57[0] = v44;
    *v43 = 136446466;
    v45 = sub_100004C50(v56, a2, v57);

    *(v43 + 4) = v45;
    *(v43 + 12) = 2080;
    v46 = sub_10000BE60(v40);
    v48 = v47;

    if (v48)
    {
      v49 = v46;
    }

    else
    {
      v49 = v3;
    }

    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0xE90000000000003ELL;
    }

    v51 = sub_100004C50(v49, v50, v57);

    *(v43 + 14) = v51;
    sub_10000739C(&_mh_execute_header, v52, v53, "Created StreamReference %{public}s at %s");
    swift_arrayDestroy();
    sub_1000036AC(v44);
    sub_1000036AC(v43);
  }

  else
  {
  }

  return v56;
}

unint64_t sub_10000BE0C()
{
  result = qword_1001990C8;
  if (!qword_1001990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001990C8);
  }

  return result;
}

uint64_t sub_10000BE60(void *a1)
{
  v1 = [a1 datastorePath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000BEC8()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100003A00();

  return v3();
}

uint64_t sub_10000BFAC()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100003A00();

  return v3();
}

id sub_10000C0A8(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

unint64_t sub_10000C0DC(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_100004C50(v12, v11, &a10);
}

void sub_10000C124(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{

  sub_100013640(a1, a4);
}

uint64_t sub_10000C13C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000C20C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_10000C2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_10000C380(int a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17[0] = type metadata accessor for Transcript();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      if (qword_100198130 != -1)
      {
        swift_once();
      }

      *(v10 + 10) = sub_100004C50(qword_10019DA50, *algn_10019DA58, v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidated XPC connection from PID %d for service %s", v10, 0x12u);
      sub_1000034F8(v11);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        sub_10000C638(v14);

        v13 = v15;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C638(void *a1)
{
  v3 = v1;
  v5 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v5);
  sub_100003A54();
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  if (qword_100198128 != -1)
  {
    sub_100002A70(&qword_100198128);
  }

  v9 = type metadata accessor for Logger();
  sub_10000347C(v9, qword_10019DA38);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (sub_100010424())
  {
    sub_100007764();
    v13 = sub_100024674();
    *v2 = 138412290;
    *(v2 + 4) = v10;
    *v13 = v10;
    v14 = v10;
    sub_100011AD0(&_mh_execute_header, v15, v12, "invalidatedConnection for %@");
    sub_100003EFC(v13, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_100004D70();
  }

  __chkstk_darwin(v16);
  *(&v33 - 2) = v10;
  sub_10000C99C();
  result = sub_10000B484();
  if (v18)
  {
    v19 = sub_10000B5E4(result, v18);
    v21 = v20;
    v23 = v22;

    if (v21)
    {
      type metadata accessor for TaskPriority();
      sub_100007E2C();
      sub_1000075C4(v24, v25, v26, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v3;
      v28[5] = v19;
      v28[6] = v21;
      v28[7] = v23;
      v29 = v3;
      v30 = sub_10000EE44();
      sub_10003A6C0(v30, v31, v8, v32, v28);
    }
  }

  return result;
}

uint64_t sub_10000C860()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10000C8B0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10000C8E8()
{

  return type metadata accessor for Logger();
}

void sub_10000C93C(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v3 = 0xE700000000000000;

  String.append(_:)(*&v2);
}

uint64_t sub_10000C99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock);

  os_unfair_lock_lock(v1 + 4);
  sub_10000CAE0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10000CA64(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_10000CB18(uint64_t *a1, uint64_t a2)
{
  v41 = a2;
  v44 = sub_10002EB80(&unk_100199BB0, &unk_10014E7A0);
  __chkstk_darwin(v44);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v34 - v6;
  __chkstk_darwin(v7);
  v36 = &v34 - v8;
  v43 = type metadata accessor for UUID();
  __chkstk_darwin(v43);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v34 - v12;
  v37 = a1;
  v13 = *a1;
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  v42 = v11;
  v39 = v11 + 16;
  v45 = v13;

  v20 = 0;
  v38 = v14;
  v21 = v40;
  if (v17)
  {
    while (1)
    {
      v22 = v20;
LABEL_8:
      v23 = __clz(__rbit64(v17)) | (v22 << 6);
      v24 = v45;
      (*(v42 + 16))(v21, *(v45 + 48) + *(v42 + 72) * v23, v43);
      v25 = *(*(v24 + 56) + 8 * v23);
      *(v21 + *(v44 + 48)) = v25;
      sub_10005644C(v21, v4, &unk_100199BB0, &unk_10014E7A0);
      sub_100003D44(0, &qword_100199300, NSObject_ptr);
      v26 = v25;
      if (static NSObject.== infix(_:_:)())
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_100003EFC(v4, &unk_100199BB0, &unk_10014E7A0);
      v20 = v22;
      v14 = v38;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v27 = v36;
    sub_10005644C(v4, v36, &unk_100199BB0, &unk_10014E7A0);

    v28 = v42;
    v29 = *(v42 + 32);
    v30 = v34;
    v31 = v27;
    v32 = v43;
    v29(v34, v31, v43);
    v33 = v35;
    v29(v35, v30, v32);

    return (*(v28 + 8))(v33, v32);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000CEB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CEF0()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = sub_100004DC8(v2);
  *v3 = v4;
  v3[1] = sub_10000BFAC;
  sub_10001298C();
  sub_100003AB4();

  return sub_10000D014(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t sub_10000CFAC()
{
  sub_1000036A0();
  sub_10000D15C();
  sub_100003A00();

  return v0();
}

uint64_t sub_10000D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10000CFAC, 0, 0);
}

uint64_t sub_10000D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_10019C860;
  swift_beginAccess();
  v7 = sub_10000C2A0(a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v6);
    v11 = *(v14 + 24);
    sub_10002EB80(&qword_100199B90, &qword_10014E788);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);

    v12 = *(*(v14 + 56) + 8 * v9);
    sub_10002EB80(&unk_100199B98, &unk_10014E790);
    _NativeDictionary._delete(at:)();
    *(a1 + v6) = v14;
  }

  return swift_endAccess();
}

uint64_t sub_10000D15C()
{
  v1 = *(v0 + qword_10019C868);

  os_unfair_lock_lock(v1 + 4);
  sub_10000CA20();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10000D228(int a1, int a2, int a3, int a4, void *a5)
{
  v8 = sub_100012B48(a1, a2, a3, a4, a5);
  sub_1000046B8();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  v13 = sub_1000077D8();

  return sub_100006240(v13, v14);
}

uint64_t sub_10000D290()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10000D364()
{
  v1[18] = 0;
  v1[19] = 0x4C4C554E20544F4ELL;
  v1[20] = 0xE800000000000000;
  v1[21] = v0;
}

uint64_t sub_10000D384(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10000DFEC;

  return sub_10000D490(v7, v9, a2, v11);
}

uint64_t sub_10000D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10000DD50, 0, 0);
}

uint64_t sub_10000D4DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009B18(result, a2);
  }

  return result;
}

uint64_t sub_10000D500(uint64_t a1)
{
  sub_1000FDBDC();
  sub_100004884();
  sub_1000FD3FC();
  v1 = swift_task_alloc();
  v2 = sub_100004DC8(v1);
  *v2 = v3;
  v2[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000FDC4C();

  return sub_100011BB4(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10000D5D8()
{
  sub_1000036A0();
  if (*(v0 + 64) == 1 && (v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon8Registry_ready), (*(v0 + 48) = v1) != 0))
  {

    v2 = swift_task_alloc();
    v3 = sub_1000FDABC(v2);
    *v3 = v4;
    v3[1] = sub_1000D2E98;
    sub_10001278C();

    return Task<>.value.getter(v5);
  }

  else
  {
    (*(v0 + 24))(*(v0 + 40), 0);
    sub_100003A00();

    return v6();
  }
}

void sub_10000D6E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_1000077D8();
  v5 = v3;
  v4(v2);
}

uint64_t sub_10000D750()
{
  sub_1000070C8();
  if (*(v0[6] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[7] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_10000DE78;
    v2 = sub_10001313C(v0[2]);

    return sub_10000D4B4(v2, v3, v4, v5);
  }

  else
  {
    v7 = sub_1000910C0();
    v8 = sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v7);
    sub_100091D90(v8, v9);
    sub_1000105C0();

    return v10(0);
  }
}

void sub_10000D88C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  if (qword_100198308 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000347C(v11, qword_10019E050);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = a1;
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100004C50(a2, a3, &v35);
    *(v14 + 12) = 2080;
    v34[0] = a4;
    v34[1] = a5;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v15 = String.init<A>(describing:)();
    v17 = sub_100004C50(v15, v16, &v35);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requesting isObserved for %s/%s'", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v32;
  }

  v18 = sub_10000E898(a2, a3, *a1);
  if (!v18)
  {
    goto LABEL_19;
  }

  if (*(v18 + 16))
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a2;
      v25 = v23;
      v34[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100004C50(v24, a3, v34);
      _os_log_impl(&_mh_execute_header, v20, v21, "isObserved true for %s", v22, 0xCu);
      sub_1000034F8(v25);
    }

    goto LABEL_10;
  }

  if (!a5)
  {

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v27 = sub_1000A0E7C(a4, a5, v19);

  if (!v27 || (v28 = *(v27 + 16), , , !v28))
  {
    v26 = 0;
    goto LABEL_20;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100004C50(a2, a3, v34);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100004C50(a4, a5, v34);
    _os_log_impl(&_mh_execute_header, v29, v30, "isObserved true for %s/%s", v31, 0x16u);
    swift_arrayDestroy();
  }

LABEL_10:
  v26 = 1;
LABEL_20:
  *a6 = v26;
}

uint64_t sub_10000DD50()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(*(v0 + 48) + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v4 = swift_task_alloc();
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_10000E878((v3 + 16), &v9);
  os_unfair_lock_unlock((v3 + 24));
  v5 = v9;

  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_10000DE40()
{
  *(v1 + 16) = v4;
  v7 = (v1 + v6 * v5);
  v7[4] = v3;
  v7[5] = v0;
  v7[6] = v2;
}

id sub_10000DE54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

uint64_t sub_10000DE78()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    v9 = sub_10008D924;
  }

  else
  {
    *(v5 + 80) = v3 & 1;
    v9 = sub_10000DF8C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000DF8C()
{
  sub_1000036A0();

  sub_1000105C0();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_10000DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  v12 = v10;
  v14 = v13;
  v15 = *v11;
  v16 = *v11;
  sub_10000298C();
  *v17 = v16;
  v18 = *(v15 + 16);
  *v17 = *v11;

  v19 = *(v15 + 24);

  if (v12)
  {
    _convertErrorToNSError(_:)();
    sub_100091E9C();

    v20 = sub_100011138();
    v21(v20, 0, v14);
  }

  else
  {
    (*(v19 + 16))(v19, v14 & 1, 0);
  }

  _Block_release(*(v16 + 24));
  sub_100091FC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_10000E1A0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_10000E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_10001859C(a1, a2, a3, a4, a5, v6, v5);
}

uint64_t sub_10000E230()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000E278()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10000E2B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10000E2E0(int a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 67109378;
      *(v11 + 4) = a1;
      *(v11 + 8) = 2080;
      if (qword_100198228 != -1)
      {
        swift_once();
      }

      *(v11 + 10) = sub_100004C50(qword_10019DD40, *algn_10019DD48, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidated XPC connection from PID %d for service %s", v11, 0x12u);
      sub_1000034F8(v12);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000E54C()
{
  ObjectType = swift_getObjectType();
  v2 = ObjectType;
  if (qword_100198230 != -1)
  {
    ObjectType = sub_1000088C4(&qword_100198230);
  }

  v3 = qword_10019DD50;
  __chkstk_darwin(ObjectType);

  os_unfair_lock_lock((v3 + 24));
  sub_10000E524((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000E624@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (sub_100045ADC(a3, a4), (v5 & 1) != 0))
  {
    v6 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    sub_10000482C();
    sub_100009F38();
    v7 = a2;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v7 = sub_10001A9BC();
  }

  return sub_1000075C4(v7, v8, v9, v10);
}

BOOL sub_10000E7D4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_10000E80C()
{

  return v0;
}

uint64_t sub_10000E858(uint64_t a1)
{

  return sub_1000075C4(v2, v1, 1, a1);
}

uint64_t sub_10000E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_10000C2A0(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

void sub_10000E934(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonExtensionXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v16;
  if (v16)
  {
    v5 = sub_1000034B4(aBlock, v16);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v17 = sub_100107618;
  v18 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v16 = &unk_10018FFD0;
  v14 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
}

uint64_t sub_10000EBB4()
{
  if (qword_1001983A8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019E328;

  return v0;
}

uint64_t sub_10000ECBC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000ED04(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    sub_1000079A4();
    if (v10 != v11)
    {
      sub_100006A88();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_10002EB80(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || &v17[24 * v12] <= v16)
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10000EE1C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000EE54(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_100004D14(v4, v1 + 752);
}

uint64_t sub_10000EE80()
{

  return Error.localizedDescription.getter();
}

uint64_t sub_10000EEB4()
{

  return sub_100003D84(v0, v1, 0);
}

void sub_10000EED8(uint64_t a1)
{
  v2 = 0xED0000205345434ELL;

  String.append(_:)(*&a1);
}

void sub_10000EF08(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{

  sub_100013640(a1, a4);
}

uint64_t *sub_10000EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v15;
  a10 = v14;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return sub_100013234(&a3);
}

void sub_10000EF48()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t (*sub_10000EF60())(void *a1)
{
  type metadata accessor for UUID();
  sub_100007A70();
  __chkstk_darwin(v4);
  sub_100007DD8();
  __chkstk_darwin(v5);
  sub_1000036DC();
  __chkstk_darwin(v6);
  sub_10001174C();
  if (v7)
  {
    switch([v0 type])
    {
      case 0uLL:

        v8 = [v0 executionUUID];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = sub_1000066CC();
        (v9)(v10);
        (v9)(v2, v3, v1);
        v11 = swift_allocObject();
        v12 = sub_1000050FC(v11);
        (v9)(v12);
        return sub_100039A50;
      case 1uLL:
        v28 = [v0 entityIdentifier];
        if (!v28)
        {
          goto LABEL_12;
        }

        v29 = v28;
        v30 = swift_allocObject();
        *(sub_100002968(v30) + 32) = v29;
        return sub_1000399C8;
      case 2uLL:
        v14 = sub_10000F2A0(v0, &selRef_actionType);
        if (!v15)
        {
          goto LABEL_12;
        }

        v16 = v14;
        v17 = v15;
        v18 = [v0 entityIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = swift_allocObject();
          v21 = sub_100002968(v20);
          v21[4] = v16;
          v21[5] = v17;
          v21[6] = v19;
          return sub_100039958;
        }

        else
        {
          sub_10000709C();
          v34 = swift_allocObject();
          v35 = sub_100002968(v34);
          *(v35 + 32) = v16;
          *(v35 + 40) = v17;
          return sub_10000F494;
        }

      case 3uLL:
        v22 = sub_10000F2A0(v0, &selRef_entityType);
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v22;
        v25 = v23;
        sub_10000709C();
        v26 = swift_allocObject();
        v27 = sub_100002968(v26);
        *(v27 + 32) = v24;
        *(v27 + 40) = v25;
        return sub_100039904;
      default:
LABEL_12:

        break;
    }
  }

  sub_100039858();
  v31 = swift_allocError();
  return sub_100004DA8(v31, v32);
}

uint64_t sub_10000F2A0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10000F32C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 eventBody];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = a3();

  return v6 & 1;
}

uint64_t sub_10000F39C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000F2A0(a1, &selRef_bundleID);
  if (!v11)
  {
    goto LABEL_16;
  }

  if (v10 == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_16:
      v18 = 0;
      return v18 & 1;
    }
  }

  v14 = [a1 resolvedAction];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_10000F4A0(v14);
  if (!v16)
  {
    goto LABEL_16;
  }

  if (v15 == a4 && v16 == a5)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_10000F4A0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000F510(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 1;
  }

  v4 = a1;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_10000F57C(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4, uint64_t *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 eventBody];
  if (result)
  {
    v15 = result;
    if (a2())
    {
      if (a4)
      {
        v16 = [v15 executionUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100010164();
        v17 = *(*a5 + 16);
        sub_10001014C(v17);

        v18 = *a5;
        *(v18 + 16) = v17 + 1;
        (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v13, v9);
      }

      else
      {
      }

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000F294(a1);
  if (!v11)
  {
    goto LABEL_7;
  }

  if (v10 == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_7:
      v14 = 0;
      return v14 & 1;
    }
  }

  v15 = [a1 resolvedAction];
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == a4 && v19 == a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

void sub_10000F828(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  if (*(v6 + 16) == 1)
  {
    sub_100010054(a1, a2, a3);
    v14 = v13;
    v16 = v15;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000347C(v17, qword_10019DA38);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      osloga = a6;
      v20 = swift_slowAlloc();
      v35 = a4;
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      v22 = sub_100004C50(v14, v16, aBlock);
      v23 = a5;
      v24 = v22;

      *(v20 + 4) = v24;
      a5 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Pruning %s", v20, 0xCu);
      sub_1000034F8(v21);
      a4 = v35;

      a6 = osloga;
    }

    else
    {
    }

    v29 = objc_allocWithZone(BMStoreStream);

    v30 = a3;
    v31 = sub_10000FC88(a1, a2, a3, 0);
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    *(v32 + 24) = a6;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10000F564;
    *(v33 + 24) = v32;
    aBlock[4] = sub_1000610B8;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000610C8;
    aBlock[3] = &unk_10018CE88;
    v34 = _Block_copy(aBlock);

    [v31 pruneWithReason:a4 usingPredicateBlock:v34];

    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000347C(v25, qword_10019DA38);
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100004C50(0xD000000000000021, 0x8000000100154E80, aBlock);
      _os_log_impl(&_mh_execute_header, oslog, v26, "%s not executed due to failed initialization - not initialized", v27, 0xCu);
      sub_1000034F8(v28);
    }

    else
    {
    }
  }
}

id sub_10000FC88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

uint64_t (*sub_10000FD10())(void *a1)
{
  type metadata accessor for UUID();
  sub_100007A70();
  __chkstk_darwin(v4);
  sub_100007DD8();
  __chkstk_darwin(v5);
  sub_1000036DC();
  __chkstk_darwin(v6);
  sub_10001174C();
  if (v7)
  {
    switch([v0 type])
    {
      case 0uLL:

        v8 = [v0 executionUUID];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = sub_1000066CC();
        (v9)(v10);
        (v9)(v2, v3, v1);
        v11 = swift_allocObject();
        v12 = sub_1000050FC(v11);
        (v9)(v12);
        return sub_1000398DC;
      case 1uLL:
        v28 = [v0 entityIdentifier];
        if (!v28)
        {
          goto LABEL_12;
        }

        v29 = v28;
        v30 = swift_allocObject();
        *(sub_100002968(v30) + 32) = v29;
        return sub_1000398D0;
      case 2uLL:
        v14 = sub_10000F2A0(v0, &selRef_actionType);
        if (!v15)
        {
          goto LABEL_12;
        }

        v16 = v14;
        v17 = v15;
        v18 = [v0 entityIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = swift_allocObject();
          v21 = sub_100002968(v20);
          v21[4] = v16;
          v21[5] = v17;
          v21[6] = v19;
          return sub_1000398B8;
        }

        else
        {
          sub_10000709C();
          v34 = swift_allocObject();
          v35 = sub_100002968(v34);
          *(v35 + 32) = v16;
          *(v35 + 40) = v17;
          return sub_10000F81C;
        }

      case 3uLL:
        v22 = sub_10000F2A0(v0, &selRef_entityType);
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v22;
        v25 = v23;
        sub_10000709C();
        v26 = swift_allocObject();
        v27 = sub_100002968(v26);
        *(v27 + 32) = v24;
        *(v27 + 40) = v25;
        return sub_1000398AC;
      default:
LABEL_12:

        break;
    }
  }

  sub_100039858();
  v31 = swift_allocError();
  return sub_100004DA8(v31, v32);
}

void sub_100010054(uint64_t a1, uint64_t a2, void *a3)
{

  v4._countAndFlagsBits = 544497952;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5 = sub_10000BE60(a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0x6E776F6E6B6E753CLL;
    v7 = 0xE90000000000003ELL;
  }

  v8 = v7;
  String.append(_:)(*&v5);
}

void *sub_1000100E0(uint64_t a1, uint64_t a2, void *a3, objc_class *a4, objc_class *a5, char a6)
{
  v10 = _swiftEmptyArrayStorage;
  v7[2].isa = a4;
  v7[3].isa = a5;
  v8 = a6;
  v9 = &v10;
  sub_10000F828(a1, a2, a3, 2, sub_10000F56C, v7);
  return v10;
}

void sub_1000101BC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_1000079A4();
    if (v12 != v13)
    {
      sub_100006A88();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100010464(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1000102B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002EB80(a3, a4);
  v8 = a5(0);
  sub_10000D33C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1000103CC()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t *sub_1000103F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v33 + 8);
  a32 = v34;
  a33 = v36;

  return sub_100013234(&a29);
}

BOOL sub_100010424()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100010464(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000C8D4();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_100007828();

      return _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_100007828();

    return _swift_arrayInitWithTakeFrontToBack(v11);
  }

  return result;
}

uint64_t sub_100010520()
{

  sub_10000709C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001055C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000105CC()
{
}

uint64_t sub_1000105E8(uint64_t a1)
{

  return swift_allocError();
}

void sub_10001062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  sub_100013640(v33, &a32);
}

uint64_t *sub_100010670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(v35 + 8);
  a34 = v36;
  a35 = v38;

  return sub_100013234(&a31);
}

void sub_10001068C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

id sub_1000106D0(uint64_t *a1, uint64_t a2)
{
  v54 = a1;
  v3 = type metadata accessor for UUID();
  v55 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002EB80(&qword_10019AD20, &qword_10014D1D8);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v8 - 8);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v53 = &v44 - v14;
  v15 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  __chkstk_darwin(v15 - 8);
  v47 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = objc_opt_self();
  v24 = *(a2 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  v56[0] = *(a2 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  v56[1] = v24;
  result = [v23 if_dataWithAuditToken:v56];
  if (result)
  {
    v26 = result;
    v48 = v5;
    v49 = a2;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = *v54;
    v50 = v27;
    v51 = v29;
    v31 = v27;
    v32 = v22;
    sub_10000E624(v30, v22, v31, v29);
    sub_100009E90(v22, v19, &qword_10019A0B8, &qword_10014EE58);
    v33 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v34 = sub_1000032C4(v19, 1, v33);
    v45 = v33;
    if (v34 == 1)
    {
      sub_100003EFC(v19, &qword_10019A0B8, &qword_10014EE58);
      v35 = 1;
      v36 = v55;
      v37 = v53;
    }

    else
    {

      v36 = v55;
      v37 = v53;
      (*(v55 + 32))(v53, v19, v3);
      v35 = 0;
    }

    sub_1000075C4(v37, v35, 1, v3);
    (*(v36 + 16))(v12, v49 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_identifier, v3);
    sub_1000075C4(v12, 0, 1, v3);
    v38 = *(v48 + 48);
    sub_100009E90(v37, v7, &qword_100199C90, &qword_10014D060);
    sub_100009E90(v12, &v7[v38], &qword_100199C90, &qword_10014D060);
    if (sub_1000032C4(v7, 1, v3) == 1)
    {
      sub_100003EFC(v12, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v37, &qword_100199C90, &qword_10014D060);
      if (sub_1000032C4(&v7[v38], 1, v3) == 1)
      {
        sub_100003EFC(v7, &qword_100199C90, &qword_10014D060);
LABEL_13:
        v43 = v47;
        sub_1000075C4(v47, 1, 1, v45);
        sub_1000666EC(v43, v50, v51);
        return sub_100003EFC(v32, &qword_10019A0B8, &qword_10014EE58);
      }
    }

    else
    {
      v39 = v52;
      sub_100009E90(v7, v52, &qword_100199C90, &qword_10014D060);
      if (sub_1000032C4(&v7[v38], 1, v3) != 1)
      {
        v40 = v55;
        v41 = v46;
        (*(v55 + 32))(v46, &v7[v38], v3);
        sub_100009868(&qword_1001992E0, &type metadata accessor for UUID);
        v53 = v32;
        LODWORD(v49) = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = *(v40 + 8);
        v42(v41, v3);
        sub_100003EFC(v12, &qword_100199C90, &qword_10014D060);
        sub_100003EFC(v37, &qword_100199C90, &qword_10014D060);
        v32 = v53;
        v42(v39, v3);
        sub_100003EFC(v7, &qword_100199C90, &qword_10014D060);
        if (v49)
        {
          goto LABEL_13;
        }

LABEL_11:
        sub_100003EFC(v32, &qword_10019A0B8, &qword_10014EE58);
        return sub_100009B18(v50, v51);
      }

      sub_100003EFC(v12, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v37, &qword_100199C90, &qword_10014D060);
      (*(v55 + 8))(v39, v3);
    }

    sub_100003EFC(v7, &qword_10019AD20, &qword_10014D1D8);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100010D28()
{
}

unint64_t sub_100010D40(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 14) = v9;
  *(v6 + 22) = v7;

  return sub_100004C50(v8, a5, va);
}

uint64_t sub_100010D8C(uint64_t a1)
{

  return sub_100003E9C(a1, v1, v2);
}

void sub_100010DA4()
{
  v1 = 31868;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100010DC0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100018D28();

  v6 = v2(v5, v3);
  if (v7)
  {
    if (*(v3 + 40) == 1)
    {

      a2(v8, v3);
    }

    swift_willThrow();
  }

  return v6;
}

void (*sub_100010E2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v10 = *(a1 + 16);
  [v10 lock];
  v11 = sub_100010F3C(a2, a3, a4, a5);
  if (!v5)
  {
    a4 = v11;
  }

  [v10 unlock];

  return a4;
}

uint64_t sub_100010F3C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v8 = swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10 == 255)
  {
    v19 = a3;
    (*(a1 + 24))(&v17, v8);
    v11 = v17;
    v12 = v18;
    v13 = a2;
    v14 = *(a1 + 48);
    *(a1 + 48) = v17;
    v15 = *(a1 + 56);
    *(a1 + 56) = v12;
    v13(v11, v12);
    v19(v14, v15);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  a4(v9, v10);
  return v11;
}

id sub_100011038(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100011050(result, a2 & 1);
  }

  return result;
}

id sub_100011050(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100011078(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *sub_1000110F0()
{
  v2 = *(v0 + 136);

  return sub_1000034B4((v0 + 112), v2);
}

unint64_t sub_100011118(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_100004C50(v10, v9, va);
}

uint64_t sub_100011184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_100037A2C(va, v20, v21);
}

uint64_t sub_1000111B4(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_100011208(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100011224@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v5;
  v4[8] = v5;
  v4[9] = a4;
  v4[4] = a4;
  v4[5] = result;
  v4[6] = a2;
  v4[7] = a3;
  return result;
}

uint64_t sub_10001124C(uint64_t a1, unint64_t a2)
{

  return sub_1000198BC(34, 0xE100000000000000, a1, a2);
}

void *sub_100011278(void *a1)
{

  return memcpy(a1, v1, 0x68uLL);
}

id sub_100011290(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_1000112AC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100011344()
{

  return swift_slowAlloc();
}

BOOL sub_10001135C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_100011388(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v13 = a1;

  return sub_100004C50(v12, v11, va);
}

uint64_t sub_1000113FC()
{
}

void sub_100011458(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (sub_1000079A4(), v8 == v9))
  {
LABEL_6:
    sub_100006778();
    if (v5)
    {
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      v13 = sub_10001A85C();
      j__malloc_size(v13);
      sub_1000182D0();
      v13[2] = v4;
      v13[3] = v14;
      if (a1)
      {
LABEL_8:
        v15 = sub_1000B6410();
        sub_100071004(v15, v16, v17);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    sub_1000B6498(v10, v11, v12, &type metadata for String);
    goto LABEL_11;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100011548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_100127828(a1, a2, a3, a4, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void sub_100011578(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void *sub_1000115E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char __src)
{

  return memcpy(&__dst, &__src, 0xB0uLL);
}

uint64_t sub_100011600(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10001161C()
{

  return swift_slowAlloc();
}

void sub_100011680(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_1000116A0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_1000116DC(uint64_t a1)
{

  v3 = v1 | 0x8000000000000000;
  String.append(_:)(*&a1);
}

uint64_t sub_100011704()
{
}

uint64_t sub_100011734()
{
  result = v0 + 32;
  *(v1 + 200) = *(v0 + 32);
  return result;
}

uint64_t sub_10001174C()
{

  return sub_10000F294(v0);
}

void sub_1000117C8()
{
  v1 = 0x20200A4D4F52460ALL;
  v2 = 0xEA00000000002020;

  String.append(_:)(*&v1);
}

BOOL sub_1000117F4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

id sub_100011870()
{

  return sub_1000B2C68(v0, v1, 9006, 0);
}

uint64_t sub_1000118AC@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = *(a1 + 8);
  return result;
}

uint64_t sub_100011918@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 152) = v2;
  *(v5 - 144) = v3;
  *(v5 - 136) = v4;
  *(v5 - 128) = result;
  *(v5 - 120) = a2;
  return result;
}

uint64_t sub_100011928(void *a1)
{
  sub_1000034F8(a1);
  sub_1000034F8((v2 - 120));
  return v1;
}

uint64_t sub_100011968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_10013AEE0(a12, a13, a14, 1, v14);
}

uint64_t sub_100011A08()
{

  return swift_slowAlloc();
}

void sub_100011A84()
{
  v1 = 20041;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_100011AD0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100011AF8()
{

  return swift_retain_n();
}

void sub_100011B40()
{

  v3._countAndFlagsBits = v0 | 5;
  v3._object = (v1 | 0x8000000000000000);
  String.append(_:)(v3);
}

uint64_t sub_100011B98(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for Optional();
}

uint64_t sub_100011BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 64) = a4;
  return _swift_task_switch(sub_10000D5D8, 0, 0);
}

void sub_100011BDC(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v21 = &v21 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(v10 - 8);
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_100011F4C();
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (swift_dynamicCast())
  {
    sub_1000075C4(v14, 0, 1, v10);
    (*(v15 + 32))(v18, v14, v10);
    (*(a4 + 48))(v18, a3, a4);
    (*(v15 + 8))(v18, v10);
    v19 = v23;
    v20 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v20 = 1;
    sub_1000075C4(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
    v19 = v23;
  }

  sub_1000075C4(v19, v20, 1, a3);
}

uint64_t sub_100011EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002EB80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011F4C()
{
  sub_1000046C8();
  sub_10002EB80(v2, v3);
  sub_1000073F4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100011FBC()
{
}

uint64_t sub_100012020()
{
}

uint64_t sub_100012038()
{

  return swift_allocObject();
}

uint64_t sub_100012058()
{

  return swift_errorRetain();
}

uint64_t sub_100012074()
{

  return swift_slowAlloc();
}

uint64_t sub_1000120BC()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1000120DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  QueryType.filter(_:)(a1, a2, a3, v46, v47, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100012154()
{

  return swift_setDeallocating();
}

uint64_t sub_100012174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.datatypeValue.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000121C8()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_100012258(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10001D558;

  return sub_100012300();
}

uint64_t sub_100012314()
{
  v32 = v0;
  v1 = *(v0 + 72);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (sub_1000103CC())
  {
    v4 = *(v0 + 72);
    v5 = sub_100007764();
    v6 = sub_1000056E4();
    v31 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004C50(*(v4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(v4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), &v31);
    sub_1000129B0();
    _os_log_impl(v7, v8, v9, v10, v5, 0xCu);
    sub_1000034F8(v6);
    sub_100004D8C();
    sub_1000036AC(v5);
  }

  v11 = sub_100007F78();
  sub_100010DC0(v11, sub_10011D0D0);
  if (sub_100092198())
  {
    sub_100012BBC(*(*(v0 + 72) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 72) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), v0 + 16);

    v12 = *(v0 + 24);
    if (v12)
    {
      *(v0 + 56) = *(v0 + 16);
      *(v0 + 64) = v12;
      sub_10001D368(v0 + 56);
    }

    v29 = sub_1000077D8();

    return v30(v29);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (sub_100091E74(v14))
    {
      v15 = sub_100011344();
      sub_10001043C(v15);
      sub_100012858();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_100004D8C();
    }

    type metadata accessor for RegistryError(0);
    sub_100005258();
    sub_100009868(v21, v22);
    v23 = sub_10001AAC8();
    v25 = sub_100007978(v23, v24);
    sub_1000155FC(v25, v26);
    swift_willThrow();

    sub_100003A00();

    return v27();
  }
}

uint64_t sub_1000125D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

BOOL sub_100012638()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000126D8()
{

  return sub_10013E890(v0, 19);
}

uint64_t sub_1000126F4(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100012738()
{

  return v0;
}

BOOL sub_100012750()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100012770()
{
}

uint64_t sub_1000127B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_100003E9C(va, v30, v31);
}

void sub_1000127CC()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000127E8()
{

  return sub_100011F4C();
}

void sub_100012808()
{
  v1 = 1162561868;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

BOOL sub_100012824()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_10001283C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000128B0()
{
}

void *sub_100012908()
{
  v1 = *(v0 - 168);
  sub_1000034F8(v1);
  return v1;
}

void sub_10001296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  sub_100013640(v17, &a16);
}

uint64_t sub_100012998()
{
}

void *sub_1000129D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va1, a32);
  va_start(__srca, a32);
  __src = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

void sub_1000129F4(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[4] = 42;
  v1[5] = 0xE100000000000000;
}

unint64_t sub_100012A28(float a1)
{
  *v1 = a1;

  return sub_100004C50(v2, v3, (v4 - 72));
}

uint64_t sub_100012A64()
{
  v0[95] = v1;
  v0[81] = 31524;
  v0[82] = 0xE200000000000000;
}

uint64_t sub_100012A8C(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2, v3);
}

uint64_t sub_100012AC4()
{

  return sub_10000C2A0(v0, v1);
}

void sub_100012B18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = v10;
  v14 = v11;

  String.append(_:)(*&v13);
}

void *sub_100012B48(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_100012B70(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_100012BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100012C78(a1, a2, v9);
  if (v3)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v6, v7);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v10;
  }

  return result;
}

uint64_t sub_100012C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (qword_1001983E0 != -1)
  {
    sub_100008170(&qword_1001983E0);
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  if (qword_1001983E8 != -1)
  {
    sub_100002D98(&qword_1001983E8);
  }

  __src[0] = a1;
  v8 = == infix<A>(_:_:)();
  v10 = v9;
  v12 = v11;
  memcpy(v29, __dst, sizeof(v29));
  QueryType.filter(_:)(v8, v10, v12, &type metadata for Table, &protocol witness table for Table, v13, v14, v15, v23, v25, v26, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);

  memcpy(v34, __src, sizeof(v34));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v34, 0xB0uLL);
  v16 = Connection.pluck(_:)(__src);
  v18 = v17;
  result = sub_1000034F8(__src);
  if (!v4)
  {
    if (v16)
    {
      sub_10001D13C(v16, v18, v31);
      v24 = v31[1];
      v27 = v31[0];
      v20 = v32;

      v22 = v24;
      v21 = v27;
    }

    else
    {
      v20 = 0;
      v21 = 0uLL;
      v22 = 0uLL;
    }

    *a4 = v21;
    *(a4 + 16) = v22;
    *(a4 + 32) = v20;
  }

  return result;
}

uint64_t sub_100012E6C()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100012F30()
{

  return swift_beginAccess();
}

uint64_t sub_100012F50(uint64_t a1)
{

  return static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
}

void sub_100012F74(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100012FB0(char a1)
{

  sub_100017D44();
}

uint64_t sub_100013148()
{

  return swift_slowAlloc();
}

uint64_t sub_100013188()
{
}

uint64_t sub_1000131B8@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 176) = *(*(v2 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v1)))) + 8);
}

uint64_t sub_10001320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a4, a3, a4);
}

uint64_t *sub_100013234(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100013294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10002EB80(a3, a4);
}

void sub_1000132C0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100013334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100013398(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
}

uint64_t sub_1000133C4()
{
}

uint64_t sub_100013400(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

void sub_100013448()
{

  sub_10007029C(0, 1, 1, v0);
}

uint64_t sub_100013468()
{
}

uint64_t sub_1000134B0(uint64_t a1)
{

  return Logger.logObject.getter();
}

void sub_1000134D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100013550()
{
}

uint64_t sub_1000135A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  return sub_1000034F8(&a32);
}

__n128 *sub_1000135CC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x4554414C4C4F43;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_100013608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ExpressionType.init<A>(_:)(&a9, v9, v10, v11, a1);
}

void sub_100013640(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = v5[3];
      v9 = v5[4];
      sub_1000034B4(v5, v8);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100013A60();
        v6 = v24;
      }

      v15 = v6[2];
      if (v15 >= v6[3] >> 1)
      {
        sub_100013A60();
        v6 = v25;
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v10;
      v16[5] = v12;
      v17 = *(v14 + 16);
      v18 = v7[2];
      if (__OFADD__(v18, v17))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = v7[3] >> 1, v19 < v18 + v17))
      {
        sub_100013B2C();
        v7 = v20;
        v19 = v20[3] >> 1;
      }

      if (*(v14 + 16))
      {
        if (v19 - v7[2] < v17)
        {
          goto LABEL_23;
        }

        sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = v7[2];
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_24;
          }

          v7[2] = v23;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_22;
        }
      }

      v5 += 5;
      if (!--v4)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0, &protocol conformance descriptor for [A]);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    a4[3] = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    a4[4] = &protocol witness table for Expression<A>;
    *a4 = v26;
    a4[1] = v28;
    a4[2] = v7;
  }
}

uint64_t sub_1000138F4(uint64_t a1)
{
  swift_getWitnessTable();

  return ExpressionType.expression.getter();
}

uint64_t ExpressionType.expression.getter()
{
  sub_100007D40();
  v3 = (*(v2 + 24))();
  (*(v0 + 32))(v1, v0);
  return v3;
}

uint64_t sub_1000139BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

void sub_1000139F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100013A10(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_100013A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_100003E9C(va, v28, v29);
}

void sub_100013A60()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    v7 = sub_10001A85C();
    sub_100011820(v7);
    sub_100011108(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100013B2C()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v7 = swift_allocObject();
    sub_100011820(v7);
    sub_10000DE6C(v8 / 40);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[5 * v2 + 4] <= v3 + 4)
    {
      memmove(v3 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100013C4C()
{
}

void sub_100013CB4()
{
  *(v0 + 16) = v4;
  v6 = (v0 + 24 * v5);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = v1;
}

double sub_100013D10()
{
  *(v0 + 304) = 0;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

void sub_100013DAC()
{
  v2 = (*(v0 + 464) + 200);

  os_unfair_lock_lock(v2);
}

uint64_t sub_100013DDC()
{
}

uint64_t sub_100013E08(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014CE90;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = &protocol witness table for String;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return 63;
}

uint64_t sub_100013E90()
{
}

uint64_t sub_100013EBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013F04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013F58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void RowIterator.compactMap<A>(_:)()
{
  sub_100004DF0();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  v26 = v5;
  v25 = type metadata accessor for Optional();
  sub_10000518C();
  v7 = v6;
  sub_100003A54();
  __chkstk_darwin(v8);
  sub_10001891C();
  sub_10000518C();
  v10 = v9;
  __chkstk_darwin(v11);
  v24 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  Array.init()();
  v22 = (v10 + 16);
  v23 = (v10 + 32);
  v16 = (v10 + 8);
  while (1)
  {
    v17 = Statement.failableNext()();
    if (v18)
    {
      break;
    }

    v19 = v17;
    if (!v17)
    {
      goto LABEL_8;
    }

    v26(v20, v19);

    if (sub_1000032C4(v0, 1, v2) == 1)
    {
      (*(v7 + 8))(v0, v25);
    }

    else
    {
      (*v23)(v15, v0, v2);
      (*v22)(v24, v15, v2);
      type metadata accessor for Array();
      Array.append(_:)();
      (*v16)(v15, v2);
    }
  }

LABEL_8:
  sub_100004674();
}

void *sub_100014224(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000142A0(*(a1 + 16), 0);
  v6 = sub_100021620(v3, v4, v5);
  sub_100014464(v8);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_1000142A0(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v4 = sub_10001A85C();
  j__malloc_size(v4);
  sub_1000182D0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_100014308(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v10 - 8);
  v12 = &v29[-v11];
  v13 = type metadata accessor for LNActionRecord(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for URL();
  sub_1000075C4(a5 + v14, 1, 1, v15);
  *a5 = a1;
  a5[1] = a2;

  sub_100014EE4(a3, a5 + v14);
  v16 = [a4 effectiveBundleIdentifiers];
  v17 = [v16 array];

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = *(v18 + 16);

  if (v19)
  {
  }

  else
  {
    sub_100009EDC(a3, v12, &qword_1001990C0, &unk_10014E200);
    v20 = objc_allocWithZone(LNEffectiveBundleIdentifier);

    v21 = sub_100064EC0(0, a1, a2, v12);
    v30[3] = sub_100003D44(0, &qword_10019A720, LNEffectiveBundleIdentifier_ptr);
    v30[0] = v21;
    v22 = objc_allocWithZone(NSOrderedSet);
    v23 = sub_100064FA0(v30);
    sub_10002EB80(&qword_100199EC0, &unk_10014ECF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = LNActionMetadata._mangledTypeNameForAppIntentsOnly.getter();
    *(inited + 56) = v25;
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [a4 metadataByAddingEffectiveBundleIdentifiers:v23 mangledTypeNameByBundleIdentifier:isa];

    a4 = v27;
  }

  result = sub_100003EFC(a3, &qword_1001990C0, &unk_10014E200);
  *(a5 + *(v13 + 24)) = a4;
  return result;
}

uint64_t sub_100014738(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v9 = a1 + *(a3 + 20);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_1000147CC()
{
  sub_1000036A0();
  sub_1000050EC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = sub_10008781C;
  }

  else
  {
    v5 = sub_1000148FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000148FC()
{
  sub_1000921B0();
  sub_1000036C4();
  v1 = v0[36];
  v2 = v0[24];
  v0[38] = v0[23];
  v0[39] = v2;
  v0[40] = v0[25];

  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_100020660;
  sub_100091D5C();
  sub_10009206C();

  return sub_100016564();
}

uint64_t sub_1000149DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198148 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v16 = v26;
  v15 = v27;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019E400, *algn_10019E408, a1, a2, &type metadata for String, &protocol witness table for String, &v26);
  v24 = v16;
  v25 = v15;
  if (v27)
  {

    URL.init(fileURLWithPath:)();
    swift_bridgeObjectRelease_n();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for URL();
  sub_1000075C4(v14, v17, 1, v18);
  v19 = objc_autoreleasePoolPush();
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v23 = v19;
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  sub_1000075C4(v11, 1, 1, v18);
  v22 = static LNActionMetadata.fromJSON(_:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)();
  sub_100003EFC(v11, &qword_1001990C0, &unk_10014E200);

  objc_autoreleasePoolPop(v23);
  sub_100009EDC(v14, v8, &qword_1001990C0, &unk_10014E200);
  sub_10001446C(v24, v25, v8, v22, a3);
  sub_100003EFC(v14, &qword_1001990C0, &unk_10014E200);
  v20 = type metadata accessor for LNActionRecord(0);
  return sub_1000075C4(a3, 0, 1, v20);
}

BOOL sub_100014E20(int a1, Swift::String a2)
{
  String.append(_:)(a2);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  v3 = String.hasSuffix(_:)(v2);

  return v3;
}

uint64_t type metadata accessor for LNActionRecord(uint64_t a1)
{
  result = qword_100199E80;
  if (!qword_100199E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v8 = v5 + *(a4 + 20);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100014FF4(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v9 = &_swiftEmptyArrayStorage[4];
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      Cursor.subscript.getter(v29, v7, a1);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_10002EB80(&unk_10019B450, &unk_10014ED30);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = (v18 + 40 * v20);
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      v9[4] = v30;
      *v9 = v23;
      *(v9 + 1) = v24;
      v9 += 5;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void Cursor.subscript.getter(uint64_t *__return_ptr a1@<X8>, uint64_t iCol@<X0>, sqlite3_stmt *a3@<X1>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a3, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a3, iCol);
      v7 = &type metadata for Int64;
      v8 = &protocol witness table for Int64;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a3, iCol);
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a3, iCol))
      {
        goto LABEL_14;
      }

      v9 = String.init(cString:)();
      a1[3] = &type metadata for String;
      a1[4] = &protocol witness table for String;
      *a1 = v9;
      a1[1] = v10;
      return;
    case 4:
      v6 = Cursor.subscript.getter(iCol, a3);
      v7 = &type metadata for Blob;
      v8 = &protocol witness table for Blob;
LABEL_9:
      a1[3] = v7;
      a1[4] = v8;
      *a1 = v6;
      return;
    case 5:
      a1[4] = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      return;
    default:
      break;
  }

LABEL_15:
  _StringGuts.grow(_:)(27);

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  sub_100007418("Fatal error", v13, v14, 0xD000000000000019, 0x8000000100159010, "AppIntents_SQLite/Statement.swift");
  __break(1u);
  JUMPOUT(0x1000153BCLL);
}

void Row.get<A>(_:)()
{
  sub_100004DF0();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v32 = v6;
  v33 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for Optional();
  sub_10000518C();
  v31 = v14;
  sub_100003A54();
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v20 = type metadata accessor for Expression(0, v13, v18, v19);
  v36[0] = v12;
  v36[1] = v10;
  v36[2] = v8;
  v23 = type metadata accessor for Expression(0, v4, v21, v22);

  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(v36, v20, v23, WitnessTable, v25);
  Row.get<A>(_:)(v36[3], v36[4], v33, v34, v4, v35, v17);

  if (!v0)
  {
    v27 = v31;
    v26 = v32;
    if (sub_1000032C4(v17, 1, v4) == 1)
    {
      (*(v27 + 8))(v17, v13);
      sub_100133A50();
      swift_allocError();
      *v28 = v12;
      *(v28 + 8) = v10;
      *(v28 + 16) = 0;
      *(v28 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      sub_1000073F4();
      (*(v29 + 32))(v26, v17, v4);
    }
  }

  sub_100004674();
}

uint64_t sub_1000155FC(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  sub_1000073F4();
  v15 = *(v14 + 8);

  return v15(a1, a3);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v2 = *(v0 + 24);

  v4 = sub_1000157D4(v2, v0);
  v5 = 0;
  if (!v1 && v4)
  {
    v6 = Statement.row.getter();
    sub_100014FF4(v6, v7);
  }

  result.value._rawValue = v5;
  result.is_nil = v3;
  return result;
}

BOOL sub_1000157D4(uint64_t a1, uint64_t a2)
{
  sub_100015918();
  if (qword_10019CA08 != -1)
  {
    sub_1000082CC(&qword_10019CA08);
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v5 = sub_100015D94();
  if ((v12 & 1) != 0 || v11 != v5)
  {
    v9 = *(a1 + 104);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v2)
    {
      return v13;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sqlite3_step(*(a2 + 16));
    v7 = v6;
    sub_100015DD4(v6, 0);

    if (!v2)
    {
      return v7 == 100;
    }
  }

  return v8;
}

unint64_t sub_100015918()
{
  result = qword_10019BAF0;
  if (!qword_10019BAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BAF0);
  }

  return result;
}

const char *sub_10001595C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  sub_100002ECC();
  swift_beginAccess();
  v5 = sqlite3_step(*(a1 + 16));
  result = sub_100015DD4(v5, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_1000159C8(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = static Hasher._hash(seed:bytes:count:)();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

void sub_100015A58(void *a1@<X8>)
{
  static Int64.fromDatatypeValue(_:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

void Row.get<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  swift_bridgeObjectRetain_n();
  v48 = a1;
  v14 = sub_100015D3C(a1, a2, a3);
  if ((v15 & 1) == 0)
  {
    v28 = v14;
    swift_bridgeObjectRelease_n();
    v29 = a7;
    v30 = v28;
    v31 = a4;
    v32 = a5;
LABEL_19:
    sub_100011BDC(v30, v31, v32, a6, v29);
    return;
  }

  v41 = a4;
  v42 = a7;
  v46 = a2;

  v43 = a3;
  v17 = sub_100014224(v16);
  v18 = 0;
  v47 = v17[2];
  v19 = v17 + 5;
  v20 = _swiftEmptyArrayStorage;
  v44 = a6;
  v45 = a5;
  while (v47 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = *(v19 - 1);
    v21 = *v19;
    v49[0] = v22;
    v49[1] = v21;

    v51._countAndFlagsBits = v48;
    v51._object = v46;
    if (sub_100014E20(v49, v51))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100011438(0, v20[2] + 1, 1);
        v20 = v50;
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        v27 = sub_100005150(v24);
        sub_100011438(v27, v25 + 1, 1);
        v20 = v50;
      }

      v20[2] = v25 + 1;
      v26 = &v20[2 * v25];
      v26[4] = v22;
      v26[5] = v21;
      a6 = v44;
    }

    else
    {
    }

    v19 += 2;
    ++v18;
  }

  v33 = v20[2];

  if (!v33)
  {

    v20 = sub_1001335F4(v43);
    v39 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v40 = v48;
    *(v40 + 8) = v46;
    *(v40 + 16) = v20;
    *(v40 + 24) = v39;
    swift_willThrow();
    return;
  }

  if (v33 != 1)
  {
    v39 = 2;
    goto LABEL_22;
  }

  if (!v20[2])
  {
    goto LABEL_24;
  }

  v34 = v20[4];
  v35 = v20[5];

  v36 = sub_100015D3C(v34, v35, v43);
  v38 = v37;

  if ((v38 & 1) == 0)
  {

    v29 = v42;
    v30 = v36;
    v31 = v41;
    v32 = v45;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100015D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000C2A0(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015D94()
{
  result = v0;
  if (*(v0 + 120) != 1)
  {
    return *(v0 + 112);
  }

  *(v0 + 112) = v0;
  *(v0 + 120) = 0;
  return result;
}

const char *sub_100015DD4(uint64_t a1, uint64_t a2)
{
  if (qword_10019CA20 != -1)
  {
    swift_once();
  }

  v4 = sub_1000159C8(a1, qword_10019D410);
  if (v4)
  {
    return a1;
  }

  v6 = Connection.handle.getter(v4, v5);
  result = sqlite3_errmsg(v6);
  if (result)
  {
    v8 = String.init(cString:)();
    v10 = v9;
    sub_10002EC1C();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    swift_willThrow();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t Statement.row.getter()
{
  v1 = v0[7];
  if (v1)
  {
    return v1;
  }

  sub_100002ECC();
  result = swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v3 = Statement.columnCount.getter();
    v0[7] = v1;
    v0[8] = v3;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015F0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015F4C()
{
  swift_unknownObjectRelease();

  sub_100009B18(*(v0 + 48), *(v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100015FAC()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BFAC;

  return sub_10001605C(v2, v3, v4);
}

uint64_t sub_10001605C(uint64_t a1, void *aBlock, void *a3)
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
  v8[1] = sub_10010951C;

  return sub_100016130(v5, v7);
}

uint64_t sub_100016130(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return _swift_task_switch(sub_100016154, 0, 0);
}

uint64_t sub_100016154()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1 + 26;
  if (sub_100016334(v1[30], v1[31]))
  {
    v4 = v1 + 2;
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v1[35] = v6;
    v1[2] = v1;
    v1[7] = v3;
    v1[3] = sub_100109204;
    swift_continuation_init();
    v7 = sub_10002EB80(&qword_10019C0F8, &qword_100151CF8);
    sub_100008120(v7);
    v1[19] = 1107296256;
    v8 = &unk_100190130;
  }

  else
  {
    v4 = v1 + 10;
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v1[33] = v6;
    v1[10] = v1;
    v1[15] = v3;
    v1[11] = sub_100109090;
    swift_continuation_init();
    v9 = sub_10002EB80(&qword_10019C0F8, &qword_100151CF8);
    sub_100008120(v9);
    v1[19] = 1107296256;
    v8 = &unk_100190158;
  }

  v1[20] = sub_100109448;
  v1[21] = v8;
  [v5 getConnectionHostInterfaceForBundleIdentifier:v6 completionHandler:v2];

  return _swift_continuation_await(v4);
}

BOOL sub_100016334(uint64_t a1, uint64_t a2)
{
  sub_1000163FC();

  v4 = sub_100016398(a1, a2);
  v5 = v4;
  if (v4)
  {
  }

  return v5 == 0;
}

id sub_100016398(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() daemonRecordWithBundleIdentifier:v2];

  return v3;
}

unint64_t sub_1000163FC()
{
  result = qword_10019C100;
  if (!qword_10019C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C100);
  }

  return result;
}

uint64_t sub_100016440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v7 = a5;

    return sub_100038184();
  }

  else
  {
    sub_100003D44(0, &qword_10019ACF0, LNAutoShortcutSubstitution_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003D44(0, &qword_10019ACF8, LNAppShortcutSpanData_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_100016540(v6, v9, v10, v11);
  }
}

uint64_t sub_100016540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 64) + 40);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  return _swift_continuation_throwingResume();
}

uint64_t sub_100016564()
{
  sub_1000036A0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  sub_10002EB80(&qword_10019AC90, &qword_10014FB80);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for LSLinkBundleRecord(0);
  v1[13] = swift_task_alloc();
  v5 = sub_10001E094();

  return _swift_task_switch(v5, v6, v7);
}

id sub_100016634(void *a1)
{

  return [a1 currentProcess];
}

double sub_100016658()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

uint64_t sub_10001668C()
{
  sub_100027014();
  sub_1000036C4();
  v2 = (v1[10] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
  v1[14] = *v2;
  v1[15] = v2[1];
  v3 = objc_allocWithZone(LSApplicationRecord);
  sub_1000128FC();

  sub_100011B14();
  v1[16] = sub_100005C3C(v4, v5, v6, v7);
  if (v0)
  {
    sub_100021304();

    sub_100003A00();
    sub_100091EFC();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v8 = sub_100007F78();
    v1[17] = sub_100010DC0(v8, sub_10011D0D0);
    v18 = swift_task_alloc();
    v1[18] = v18;
    *v18 = v1;
    v18[1] = sub_10001F7A0;
    sub_100091EFC();

    return sub_1000167F4(v19, v20);
  }
}

uint64_t sub_1000167F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_10001680C()
{
  sub_1000070C8();
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = v1;

  sub_1000FD1B8([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD0C8(v4);
  *v5 = v6;
  v5[1] = sub_10001F054;
  v7 = sub_10000687C();

  return sub_100016920(v7, v8, v9, v10, v11, v12, v13);
}

void sub_1000168DC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100016900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  *(v4 + 16) = v7;

  return sub_10001A798(&v10, v4 + v6 * v5 + 32);
}

uint64_t sub_100016920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = type metadata accessor for RegistryError(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000169CC, 0, 0);
}

uint64_t sub_100016CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_100016CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100004C50(v9, v10, &a9);
}

uint64_t sub_100016D30(uint64_t result)
{
  *(v5 - 96) = result;
  *(v5 - 88) = v4;
  *(v5 - 120) = v3;
  *(v5 - 112) = v2;
  *(v5 - 104) = v1;
  return result;
}

id sub_100016D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

void sub_100016D64()
{

  sub_100011438(0, v0, 0);
}

void sub_100016DF0()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  sub_1000046C8();
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v6);
  sub_100003B7C();
  sub_10001A898();
  if (!v22 || (v7 = [objc_opt_self() currentProcess], v8 = objc_msgSend(v7, "isApplication"), v7, !v8))
  {
    sub_10000E200();
    sub_1000B63F0();
    v3();
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v9 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v10 + 32) = sub_100002C28();
  v11 = objc_allocWithZone(RBSAssertion);
  v12 = sub_10001AB30();
  v15 = sub_1000B2D18(v12, v13, v14);
  v34 = 0;
  if ([v15 acquireWithError:&v34])
  {
    v16 = v34;
    sub_1000B63F0();
    v3();
    sub_10000C0D0();
    if (v1)
    {
      sub_1000B661C(v17);
      goto LABEL_11;
    }

    sub_1000B661C(v17);

LABEL_9:
    sub_1000113FC();
LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v18 = v34;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v19 = [v33 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v22 = v22 && v1 == v21;
  if (v22)
  {
  }

  else
  {
    v23 = sub_100006AC4(v20);

    if ((v23 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v24 = sub_1000B6520(v33);
    v25 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v26 = sub_100011A08();
      sub_10002131C(v26);
      *v5 = 136315138;
      v32 = v25;
      v27 = [v15 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000263E0();
      sub_100017268();
      sub_1000B6604();
      *(v5 + 4) = v27;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v32);
      sub_10001E11C();
      sub_100012770();
    }

    v28 = sub_100018344();
    v29(v28);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v30 = objc_allocWithZone(NSError);
    v31 = sub_100011870();
    sub_100013A10(v31);

    goto LABEL_24;
  }

  __break(1u);
}

void sub_100017244(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 192) = *(v3 + 32);
  *(v2 + 200) = *(v3 + 40);
}

unint64_t sub_100017268()
{

  return sub_100004C50(v0, v1, (v2 - 96));
}

void sub_10001728C(uint64_t *a1@<X8>)
{

  sub_100013640(v1, a1);
}

uint64_t sub_100017580@<X0>(uint64_t a1@<X8>)
{
  if (qword_100198140 != -1)
  {
    sub_100006744();
    swift_once();
  }

  memcpy(__dst, &unk_10019DA70, sizeof(__dst));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(v155, &unk_10019E338, sizeof(v155));
  memcpy(v156, __dst, 0xB0uLL);
  if (qword_100198148 != -1)
  {
    sub_100002A90();
    swift_once();
  }

  v1 = *algn_10019DB28;
  v2 = qword_10019DB30;
  memcpy(__src, __dst, sizeof(__src));
  v105 = qword_10019DB20;
  v3 = sub_100013484();
  QueryType.namespace<A>(_:)(v3, v4, v5, v6, v7, v8, v9, v10, v86, v95, v105, a1, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v147[3] = v17;
  v147[4] = &protocol witness table for Expression<A>;
  v147[0] = v12;
  v147[1] = v14;
  v147[2] = v16;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  sub_100003A98();
  v18 = swift_allocObject();
  v26 = v18;
  *(v18 + 16) = xmmword_10014ECA0;
  if (qword_100198150 != -1)
  {
    sub_100007EAC();
    v18 = swift_once();
  }

  v27 = sub_1000077F8(v18, v19, v20, v21, v22, v23, v24, v25, v87, v96, v106, v116, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11], v147[12], v147[13], v147[14], v147[15], v147[16], v147[17], v147[18], v147[19], v147[20], v147[21], v148, v149, v150, v151, v152, __src[0]);
  sub_100019CFC(v27, v28, v29, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v30, v31, v88, v97, v107, v117, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v26[7] = v17;
  v26[8] = &protocol witness table for Expression<A>;
  v26[4] = v32;
  v26[5] = v33;
  v26[6] = v34;
  if (qword_100198158 != -1)
  {
    sub_100007B0C();
    v32 = swift_once();
  }

  v40 = sub_1000077F8(v32, v33, v34, v35, v36, v37, v38, v39, v89, v98, v108, v118, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11], v147[12], v147[13], v147[14], v147[15], v147[16], v147[17], v147[18], v147[19], v147[20], v147[21], v148, v149, v150, v151, v152, __src[0]);
  sub_100019CFC(v40, v41, v42, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v43, v44, v90, v99, v109, v119, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v26[12] = v17;
  v26[13] = &protocol witness table for Expression<A>;
  v26[9] = v45;
  v26[10] = v46;
  v26[11] = v47;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  v48 = qword_10019E428;
  sub_10002483C(__src);
  v49 = sub_100012014();
  QueryType.namespace<A>(_:)(v49, v50, v48, &type metadata for Table, v51, &protocol witness table for Table, v52, v53, v91, v100, v110, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v26[17] = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v26[18] = &protocol witness table for Expression<A>;
  v26[14] = v55;
  v26[15] = v57;
  v26[16] = v59;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  v60 = qword_10019E400;
  v61 = *algn_10019E408;
  v62 = qword_10019E410;
  sub_10002483C(__src);
  v63 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  QueryType.namespace<A>(_:)(v60, v61, v62, &type metadata for Table, v63, &protocol witness table for Table, v64, v65, v92, v101, v111, v121, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v26[22] = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v26[23] = &protocol witness table for Expression<A>;
  v26[19] = v67;
  v26[20] = v69;
  v26[21] = v71;
  SchemaType.select(_:_:)(v147, v26, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v147);
  memcpy(v156, __src, 0xB0uLL);
  v151 = &type metadata for Table;
  v152 = &protocol witness table for Table;
  sub_100003A98();
  v148 = swift_allocObject();
  sub_10002483C((v148 + 16));
  memcpy(v147, __dst, sizeof(v147));
  sub_1000196B0(v155, &v125);
  QueryType.namespace<A>(_:)(v112, v1, v2, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v72, v73, v93, v102, v112, v122, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  v74 = qword_10019E3E8;
  v75 = unk_10019E3F0;
  v76 = qword_10019E3F8;
  sub_10002483C(v147);
  QueryType.namespace<A>(_:)(v74, v75, v76, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v77, v78, v94, v103, v113, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);
  v79 = == infix<A>(_:_:)();
  v81 = v80;
  v83 = v82;

  v124[3] = &type metadata for Table;
  v124[4] = &protocol witness table for Table;
  sub_100003A98();
  *v124 = swift_allocObject();
  memcpy(v147, v156, sizeof(v147));
  QueryType.join(_:_:on:)(1, &v148, v79, v81, v83, &type metadata for Table, &protocol witness table for Table, v84, &protocol witness table for String, v104, v114, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11]);

  sub_10001970C(v156);
  return sub_1000034F8(&v148);
}

uint64_t sub_100017B24()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

void QueryType.namespace<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_100134208();
  a45 = v47;
  a46 = v48;
  sub_100002764();
  v50 = v49;
  v52 = v51;
  v56 = type metadata accessor for Expression(0, v55, v53, v54);
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  sub_100004F8C();
  v58 = sub_100017FF8();
  sub_100012FB0(v58);
  *(inited + 96) = v56;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v52;
  *(inited + 80) = v50;
  *(inited + 88) = v46;

  sub_100013640(inited, &a27);
  swift_setDeallocating();
  sub_100018898();
  v59 = a30;
  v60 = a31;
  sub_1000034B4(&a27, a30);
  sub_1000126CC();
  a10 = v61(v59, v60);
  a11 = v62;
  a12 = v63;
  v64 = sub_10001317C();
  v66 = sub_10002EB80(v64, v65);
  WitnessTable = swift_getWitnessTable();
  sub_1000111FC();
  v71 = sub_1001340D0(v68, v69, v70, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&a10, v56, v66, WitnessTable, v71);
  sub_1000034F8(&a27);
  sub_100018D9C();
}

void sub_100017D44()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  v9 = sub_1000FDAEC(v3, v8);
  v7(v9);
  v11 = v23;
  v10 = v24;

  sub_100018C3C(v22);
  if (v10)
  {
    if (v4)
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10014E1F0;
      v13 = sub_100004F8C();
      v7(v13);

      sub_100018C3C(v27);
      v14 = sub_100004F8C();
      v7(v14);
      sub_100018C3C(v28);
      sub_100018000();

      v15 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(v12 + 104) = &protocol witness table for Expression<A>;
      *(v12 + 72) = 21313;
      *(v12 + 80) = 0xE200000000000000;
      *(v12 + 88) = _swiftEmptyArrayStorage;
      *(v12 + 96) = v15;
      *(v12 + 136) = v15;
      *(v12 + 144) = &protocol witness table for Expression<A>;
      v16 = sub_100012BA4();
      sub_1000198BC(v16, v17, v11, v10);
      sub_1000064BC();

      *(v12 + 112) = v0;
      *(v12 + 120) = v2;
      *(v12 + 128) = _swiftEmptyArrayStorage;
      sub_10000EF08(v12, v6);
      swift_setDeallocating();
      sub_100018898();
      goto LABEL_8;
    }
  }

  v18 = sub_100004F8C();
  v7(v18);
  v19 = v26;

  sub_100018C3C(v25);
  if (!v19)
  {
    v20 = sub_100004F8C();
    v7(v20);

    sub_100018C3C(v27);
  }

  v21 = sub_100004F8C();
  v7(v21);
  sub_100018C3C(v28);
  sub_10000485C();
  sub_100018000();

LABEL_8:
  sub_1000069EC();
}

uint64_t sub_100018000()
{
  sub_10000C984();
  v3 = v2;
  if (v4)
  {
    v5 = sub_100012BA4();
    v1 = sub_1000198BC(v5, v6, v1, v0);
    v0 = v7;
  }

  else
  {
  }

  v8 = sub_10000485C();
  v9(v8);
  v11 = v21;
  v10 = v22;

  sub_100018C3C(v20);
  if (v10)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v13 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 56) = v13;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v14 = sub_100012BA4();
    v16 = sub_1000198BC(v14, v15, v11, v10);
    v18 = v17;

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 96) = v13;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v1;
    *(inited + 80) = v0;
    *(inited + 88) = _swiftEmptyArrayStorage;
    sub_100013640(inited, v3);
    swift_setDeallocating();
    return sub_100018898();
  }

  else
  {
    result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    v3[4] = &protocol witness table for Expression<A>;
    *v3 = v1;
    v3[1] = v0;
    v3[2] = _swiftEmptyArrayStorage;
    v3[3] = result;
  }

  return result;
}

uint64_t sub_100018194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  sub_100002764();
  v9 = v8;
  v10 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v11 = sub_100004C0C(v10);
  *(v11 + 16) = xmmword_10014CE90;
  sub_10001C4A4(v9, v11 + 32);

  sub_100018274(v12);
  sub_10001D6A8(v7, v11, v6, v6, *(v5 + 8), *(v5 + 8));
}

unint64_t sub_1000182B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = (v4 + a1);
  v7 = *v6;
  v8 = v6[1];

  return sub_100004C50(v7, v8, va);
}

uint64_t sub_1000182E4()
{

  return type metadata accessor for Optional();
}

uint64_t sub_10001830C()
{

  return sub_1000034F8((v0 + 160));
}

void *sub_1000183C0(void *a1)
{

  return memcpy(a1, v1, 0xB0uLL);
}

uint64_t sub_10001840C()
{

  return swift_slowAlloc();
}

void sub_100018470(__n128 a1)
{
  *(v6 - 176) = a1;
  *(v6 - 160) = v3;
  *(v6 - 152) = v4;
  *(v6 - 136) = v2;
  *(v6 - 128) = v1;
  *(v6 - 104) = v5;
}

uint64_t sub_100018484()
{

  return swift_task_create();
}

uint64_t sub_1000184BC(uint64_t a1)
{

  return swift_once();
}

void sub_1000184DC()
{
  v1 = 0x202020200A2820;
  v2 = 0xE700000000000000;

  String.append(_:)(*&v1);
}

double sub_100018530()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_100018554()
{

  return swift_allocObject();
}

uint64_t sub_10001859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v16 = sub_10002EB80(a6, a7);
  v17 = &protocol witness table for Expression<A>;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;

  v11._countAndFlagsBits = 40;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  sub_1000034B4(v15, v16);

  v12._countAndFlagsBits = sub_1000064C8();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  sub_1000034F8(v15);
  return a4;
}

uint64_t sub_100018694()
{
}

void sub_1000186C8()
{

  sub_100018C6C(v0, v2, v1);
}

uint64_t sub_100018714()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_100018748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;
  *v18 = a13;

  return sub_100004C50(v17, v16, &a16);
}

void sub_1000187A0()
{
  v1 = 0x4449656C646E7562;
  v2 = 0xE800000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100018800(uint64_t *a1, uint64_t *a2)
{
  sub_10002EB80(a1, a2);
  swift_arrayDestroy();
  v2 = sub_10000EEA4();

  return _swift_deallocClassInstance(v2);
}

uint64_t sub_100018848(uint64_t *a1, uint64_t *a2)
{
  sub_10002EB80(a1, a2);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v2);
}

void QueryType.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_100134208();
  a45 = v46;
  a46 = v47;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_1000073F4();
  (*(v60 + 16))(v59, v62, v61);
  v63 = sub_100013328();
  v64(v63);
  v65 = a24;
  v66 = sub_1000113CC();
  sub_100018C6C(v66, v67, v68);
  sub_100018C3C(&a13);

  if (v65)
  {
    v69 = sub_1000113CC();
    v57 = && infix(_:_:)(v69);
    v55 = v70;
    v53 = v71;
    v72 = sub_1000113CC();
    sub_100018CD0(v72, v73, v74);
  }

  v75 = (*(v49 + 32))(&a9, v51, v49);
  v77 = v76[10];
  v78 = v76[11];
  v79 = v76[12];
  v76[10] = v57;
  v76[11] = v55;
  v76[12] = v53;
  sub_100018CD0(v77, v78, v79);
  v75(&a9, 0);
  sub_100018D9C();
}

uint64_t sub_100018A98()
{

  return type metadata accessor for Logger();
}

void sub_100018AB0()
{

  sub_100013A60();
}

uint64_t sub_100018AD4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return type metadata accessor for Logger();
}

uint64_t sub_100018B04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 176) = v2;
  *(v5 - 168) = v3;
  *(v5 - 160) = v4;
  *(v5 - 152) = result;
  *(v5 - 144) = a2;
  return result;
}

uint64_t sub_100018B54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100018B6C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

BOOL sub_100018B88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

void sub_100018BE4(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[13].n128_u64[1] = v2;
  v4[14].n128_u64[0] = v3;
  v4[12] = a2;
  v4[13].n128_u64[0] = a1;
}

void sub_100018C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_100018CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_100018D34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

double sub_100018D54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  return result;
}

uint64_t *sub_100018D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 8);
  *(v6 - 80) = a5;
  *(v6 - 72) = v8;

  return sub_100013234((v6 - 104));
}

uint64_t Connection.pluck(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000034B4(a1, v3);
  v5 = a1[3];
  v6 = a1[4];
  sub_1000034B4(a1, v5);
  (*(v6 + 16))(v15, v5, v6);
  sub_100018C3C(v15);
  if (v17)
  {
    v7 = 0;
  }

  else
  {
    v7 = v15[19];
  }

  v8 = v17 | v16;
  v14[3] = v3;
  v14[4] = v4;
  v9 = sub_100013234(v14);
  sub_100018F18(1, 0, v7, v8 & 1, v3, v4, v9);
  sub_100012960();
  Connection.prepareRowIterator(_:)(v10);
  sub_1000034F8(v14);
  if (!v1)
  {
    v11 = Statement.failableNext()();
    if (v12)
    {
    }

    else
    {
      if (v11)
      {
      }
    }
  }

  return sub_10000485C();
}

uint64_t sub_100018F18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = a4 & 1;
  v16 = a2 & 1;
  v15 = (a2 & 1) == 0;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  if (v15)
  {
    v18 = v14;
  }

  else
  {
    a3 = 0;
    v18 = 0;
  }

  v19 = (*(a6 + 32))(v22, a5, a6);
  *(v20 + 144) = v17;
  *(v20 + 152) = a3;
  *(v20 + 160) = v18;
  *(v20 + 161) = v16;
  return v19(v22, 0);
}

uint64_t Connection.prepareRowIterator(_:)(void *a1)
{
  v2 = a1[3];
  sub_1000034B4(a1, v2);
  sub_1000126CC();
  v3(v2);
  v5 = v4;
  sub_100012960();
  Connection.prepare(_:_:)(v6, v7, v8);
  if (v1)
  {
  }

  else
  {
    v2 = Statement.bind(_:)(v5);

    sub_100012960();
    sub_10001B688(v9);
  }

  return v2;
}

void sub_100019114()
{
  sub_100006A04();
  v2 = v1;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014EE00;
  sub_1000192DC(v2, (inited + 32));
  sub_100019B24();
  sub_100019DD8((inited + 112));
  sub_100019EE0((inited + 152));
  sub_10001A0C8();
  sub_10001A36C((inited + 232));
  sub_10001A450((inited + 272));
  v4 = _swiftEmptyArrayStorage;
  for (i = 32; i != 312; i += 40)
  {
    v6 = sub_1000127E8();
    sub_100011950(v6, v7, v8, v9, v10, v11, v12, v13, v38, *(&v38 + 1), v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v43[0], v43[1], v44);
    if (v22)
    {
      sub_10001A798(&v38, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CC8();
        v4 = v35;
      }

      sub_100012144();
      if (v32)
      {
        sub_10001A80C(v31 > 1, v0, 1, v4);
        v4 = v23;
      }

      sub_10001A8FC(v23, v24, v25, v26, v27, v28, v29, v30, v38, *(&v38 + 1), v39, v40, v41, *v42);
    }

    else
    {
      v33 = sub_1000247B8(v14, v15, v16, v17, v18, v19, v20, v21, v38);
      sub_10001A940(v33, v34);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_100009AA4(v43);

  v36 = sub_100002E7C(v43);
  v37(v36);
  sub_100003CB8();
  sub_1000034F8(v43);
  sub_100007D30();
  sub_1000069EC();
}

uint64_t sub_1000192DC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  if (*v2)
  {
    v6 = 0x44205443454C4553;
  }

  else
  {
    v6 = 0x5443454C4553;
  }

  if (*v2)
  {
    v7 = 0xEF54434E49545349;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v8;

  sub_10000C124(v9, (inited + 72));

  *(inited + 136) = v8;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = _swiftEmptyArrayStorage;
  a1(1);
  sub_10000EF08(inited, a2);
  swift_setDeallocating();
  return sub_100018898();
}

uint64_t sub_100019428@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  v13 = *(v4 + 64);
  v14 = sub_100128684();
  a2(v14);

  a3(v4);
  if (v11)
  {
    if (a1)
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014E1F0;
      v16 = sub_100128684();
      a2(v16);

      a3(v4);
      sub_100019760(v10, v9, v13 & 1, (inited + 32));

      v17 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      *(inited + 88) = _swiftEmptyArrayStorage;
      *(inited + 96) = v17;
      *(inited + 136) = v17;
      *(inited + 144) = &protocol witness table for Expression<A>;
      v18 = sub_100012BA4();
      v20 = sub_1000198BC(v18, v19, v12, v11);
      v22 = v21;

      *(inited + 112) = v20;
      *(inited + 120) = v22;
      *(inited + 128) = _swiftEmptyArrayStorage;
      sub_10000EF08(inited, a4);
      swift_setDeallocating();
      return sub_100018848(&qword_10019B238, &unk_100152B50);
    }

    v25 = sub_100128684();
    a2(v25);

    a3(v4);
    v9 = v11;
  }

  else
  {
    v24 = sub_100128684();
    a2(v24);

    a3(v4);

    v12 = v10;
  }

  sub_100019760(v12, v9, v13 & 1, a4);
}

unint64_t sub_100019678(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_100004C50(v10, v11, &a10);
}

uint64_t sub_100019760@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v8 = sub_100012BA4();
    a1 = sub_1000198BC(v8, v9, a1, a2);
    a2 = v10;
  }

  else
  {
  }

  if (*(v4 + 56))
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v12 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 56) = v12;
    *(inited + 64) = &protocol witness table for Expression<A>;
    sub_100012BA4();
    sub_100013DD0();
    *(inited + 32) = sub_1000198BC(v13, v14, v15, v16);
    *(inited + 40) = v17;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 96) = v12;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    *(inited + 88) = _swiftEmptyArrayStorage;
    sub_100013640(inited, a4);
    swift_setDeallocating();
    return sub_100018848(&qword_10019B238, &unk_100152B50);
  }

  else
  {
    result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    a4[4] = &protocol witness table for Expression<A>;
    *a4 = a1;
    a4[1] = a2;
    a4[2] = _swiftEmptyArrayStorage;
    a4[3] = result;
  }

  return result;
}

uint64_t sub_1000198BC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v18 = a3;
  v19 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v20 = 0;
  v21 = v6;

  v7 = 0;
  for (i = 0xE000000000000000; ; i = v17)
  {
    v9 = String.Iterator.next()();
    if (!v9.value._object)
    {
      break;
    }

    v10 = v9.value._countAndFlagsBits == a1 && v9.value._object == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_100002E40(&v16);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    Character.write<A>(to:)();
    v12 = v16;
    v11 = v17;
    v16 = v7;
    v17 = i;

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    String.append(_:)(v13);

    v7 = v16;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_100002E40(&v18);
  v14._countAndFlagsBits = v7;
  v14._object = i;
  String.append(_:)(v14);

  sub_100002E40(&v18);
  return v18;
}