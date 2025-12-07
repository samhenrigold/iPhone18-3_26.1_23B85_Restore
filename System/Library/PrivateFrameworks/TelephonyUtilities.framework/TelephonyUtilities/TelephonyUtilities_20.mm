uint64_t sub_10036E814(void *a1, void *a2)
{
  v4 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
  v5 = objc_allocWithZone(v4);
  *&v5[*((swift_isaMask & *v5) + 0x68)] = a1;
  v12.receiver = v5;
  v12.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = [a2 objectForKey:{v7, v12.receiver, v12.super_class}];

  if (!v8)
  {
    return 0;
  }

  v9 = v8 + *((swift_isaMask & *v8) + 0x68);
  v10 = *v9;
  sub_1003701A0(*v9, v9[8]);

  return v10;
}

void sub_10036E920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xFF)
  {
    v16 = *v3;
    v17 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
    v18 = objc_allocWithZone(v17);
    *&v18[*((swift_isaMask & *v18) + 0x68)] = a3;
    v21.receiver = v18;
    v21.super_class = v17;
    v15 = objc_msgSendSuper2(&v21, "init");
    [v16 removeObjectForKey:v15];
  }

  else
  {
    v5 = a2;
    v7 = *v3;
    v8 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
    v9 = objc_allocWithZone(v8);
    v10 = v9 + *((swift_isaMask & *v9) + 0x68);
    *v10 = a1;
    v10[8] = v5 & 1;
    v11 = sub_1003701A0(a1, v5 & 1);
    v20.receiver = v9;
    v20.super_class = v8;
    v12 = objc_msgSendSuper2(&v20, "init", v11);
    v13 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
    v14 = objc_allocWithZone(v13);
    *&v14[*((swift_isaMask & *v14) + 0x68)] = a3;
    v19.receiver = v14;
    v19.super_class = v13;
    v15 = objc_msgSendSuper2(&v19, "init");
    [v7 setObject:v12 forKey:v15];
    sub_1003701AC(a1, v5);
  }
}

id sub_10036EAE0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithPrefixedURI:v1];

  return v2;
}

uint64_t sub_10036EB54(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA580);
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = a3;
      v14 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v14 = v9;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully verified %@.", v12, 0xCu);
      sub_100009A5C(v14, &unk_1006A2630, &qword_10057CB40);
      a3 = v13;

LABEL_10:
    }
  }

  else
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA580);
    v17 = a3;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v39 = a3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = a2;
      v42[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2080;
      v22 = v17;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v23 = String.init<A>(describing:)();
      v25 = sub_10002741C(v23, v24, v42);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v18, "Failed to verify %@ with error %s", v19, 0x16u);
      sub_100009A5C(v20, &unk_1006A2630, &qword_10057CB40);
      a3 = v39;

      sub_100009B7C(v21);

      goto LABEL_10;
    }
  }

  v26 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  swift_beginAccess();
  v27 = sub_10036E814(a3, *(a4 + v26));
  if (v28 == -1 || (v29 = v28, (v28 & 1) == 0))
  {
    swift_endAccess();
  }

  else
  {
    v30 = v27;
    swift_endAccess();
    v31 = *(v30 + 16);
    if (v31)
    {
      v40 = a3;
      v38 = v7;
      v32 = v7 & 1;
      v33 = v30 + 40;
      do
      {
        v34 = *(v33 - 8);
        LOBYTE(v41) = v32;
        v42[0] = a2;

        v34(&v41, v42);

        v33 += 16;
        --v31;
      }

      while (v31);
      sub_1003701AC(v30, v29);
      v7 = v38;
      a3 = v40;
    }

    else
    {
      sub_1003701AC(v30, v29);
    }
  }

  swift_beginAccess();
  v35 = a3;
  if (a2)
  {
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  sub_10036E920((a2 == 0) & v7, v36, v35);
  return swift_endAccess();
}

uint64_t sub_10036EF48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1003701D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062A168;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_10036F228(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(a2 & 1, a3);
    sub_1000051F8(v6, v7);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v8, v9);
}

uint64_t sub_10036F2D0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1003700EC();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, v4);
    sub_1000051F8(v2, v3);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v6, v7);
}

uint64_t sub_10036F504(void *a1)
{
  v1 = a1;
  v2 = sub_10036F538();

  return v2;
}

uint64_t sub_10036F5A8(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1002A21FC(a1, v6);
  if (!v7)
  {
    sub_100009A5C(v6, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_5;
  }

  type metadata accessor for CountLimitCache.WrappedKey(0, v2[10], v2[11], v2[12]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v3 & 1;
}

uint64_t sub_10036F6DC(void *a1, uint64_t a2, uint64_t a3)
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

  v6 = sub_10036F5A8(v8);

  sub_100009A5C(v8, &unk_1006A2D10, &unk_10057D940);
  return v6 & 1;
}

id sub_10036F8A0(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10036F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1003541FC;
  v17[3] = &unk_10062A2D0;
  v15 = _Block_copy(v17);

  [v8 verifySignedData:isa matchesExpectedData:v14 withTokenURI:a5 forAlgorithm:a6 completion:v15];
  _Block_release(v15);
}

uint64_t sub_10036FADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10036FBB0;
  v12[3] = &unk_10062A2A8;
  v10 = _Block_copy(v12);

  [v5 signData:isa withAlgorithm:a3 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10036FBB0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100290B6C(v4, v8);
}

uint64_t sub_10036FC5C()
{
  result = sub_1003702A4(v0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VoucherManagerImpl(uint64_t a1)
{
  result = qword_1006A6888;
  if (!qword_1006A6888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10036FD00(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_10036FDB4(uint64_t a1)
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

uint64_t sub_10036FE60(uint64_t a1)
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

uint64_t sub_10036FF18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10036FF58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10036FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_10037000C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v14 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = [v8 initWithHandle:a1 tokenPrefixedURI:v14 data:isa encryptedData:v16];

  sub_100049B14(a6, a7);
  sub_100049B14(a4, a5);

  return v17;
}

unint64_t sub_1003700EC()
{
  result = qword_1006A6A18;
  if (!qword_1006A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A18);
  }

  return result;
}

double sub_100370188(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003701A0(result, a2 & 1);
  }

  return v2;
}

double sub_1003701A0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003701AC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003701C4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003701C4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003701E8()
{
  if (*(v0 + 16))
  {
  }

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_100370250()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_1003702A4(void *a1)
{
  v1 = [a1 pushToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100370308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v29 = a4;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v33[3] = sub_100006AF0(0, &qword_1006A6A30, IDSService_ptr);
  v33[4] = &off_100629E00;
  v33[0] = a1;
  v32[3] = sub_100006AF0(0, &qword_1006A6A38, IDSPushHandler_ptr);
  v32[4] = &off_100629E18;
  v32[0] = a2;
  v12 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  v13 = [objc_allocWithZone(NSCache) init];
  [v13 setCountLimit:32];
  *&a5[v12] = v13;
  if (qword_1006A0B00 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA580);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initializing VoucherManager.", v17, 2u);
  }

  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100009AB0(v33, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsService]);
  sub_100009AB0(v32, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler]);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement] = v27;
  v18 = OBJC_IVAR___CSDVoucherManagerImpl_timeout;
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  v21 = v29;
  (*(v20 + 16))(&a5[v18], v29, v19);
  v30.receiver = a5;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, "init");
  (*(v20 + 8))(v21, v19);
  sub_100009B7C(v32);
  sub_100009B7C(v33);
  return v22;
}

unint64_t sub_1003707C8()
{
  result = qword_1006A6A40;
  if (!qword_1006A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A40);
  }

  return result;
}

unint64_t sub_100370820()
{
  result = qword_1006A6A48;
  if (!qword_1006A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A48);
  }

  return result;
}

unint64_t sub_100370878()
{
  result = qword_1006A6A50;
  if (!qword_1006A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A50);
  }

  return result;
}

unint64_t sub_1003708D0()
{
  result = qword_1006A6A58;
  if (!qword_1006A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A58);
  }

  return result;
}

unint64_t sub_100370924()
{
  result = qword_1006A6A60;
  if (!qword_1006A6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A60);
  }

  return result;
}

uint64_t (*sub_1003709A0(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(*(v1 + 66));
  }

  return result;
}

uint64_t sub_1003709D4()
{
  v1 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 67, 7);
}

id sub_100370A5C()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_100007FDC();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_100370CBC(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id sub_100370CBC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_activeDescriptor];
  *v4 = 0u;
  v4[1] = 0u;
  *(v4 + 26) = 0u;
  v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_isAvailable] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id FTServerBag.isMomentsDisabled.getter()
{
  if (sub_10029D240(0xD000000000000010, 0x800000010056E710, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_10004975C(v7);
    return 0;
  }

  v1 = sub_1000496D4();
  if ((sub_100008560(v1) & 1) == 0)
  {
    return 0;
  }

  v2 = [v4 BOOLValue];

  return v2;
}

double FTServerBag.momentsRequestTimeout.getter()
{
  if (sub_10029D240(0xD000000000000017, 0x800000010056E730, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10004975C(v8);
    return 300.0;
  }

  v1 = sub_1000496D4();
  if ((sub_100008560(v1) & 1) == 0)
  {
    return 300.0;
  }

  [v5 doubleValue];
  v3 = v2;

  return v3;
}

uint64_t sub_100371074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xEA0000000000734DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65766974616C6572 && a2 == 0xED00007472617453;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65766974616C6572 && a2 == 0xEB00000000646E45;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000010056E7F0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x800000010056E810 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000010056E830 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D69547075746573 && a2 == 0xEB00000000734D65;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000010056E850 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79616C6572 && a2 == 0xE500000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000010056E880 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x800000010056E8A0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x800000010056E8C0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x800000010056E8E0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000010056E900 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6D754E6E774F7369 && a2 == 0xEB00000000726562;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7265766E6F437369 && a2 == 0xEE006E6F69746173;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6F4D79627261656ELL && a2 == 0xEA00000000006564;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 4475203 && a2 == 0xE300000000000000;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x6B6E694C6D6F7266 && a2 == 0xE800000000000000;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000013 && 0x800000010056E950 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000010056E970 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x64656E7275746572 && a2 == 0xEC0000006C6C6143;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65736162656D6974 && a2 == 0xE800000000000000;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x4873417472617473 && a2 == 0xEE0066666F646E61;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6F54657544646E65 && a2 == 0xEF66666F646E6148;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x800000010056E9C0 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x7553697269537369 && a2 == 0xEF64657473656767;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x436E776F6E4B7369 && a2 == 0xEE00746361746E6FLL;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000013 && 0x800000010056EA00 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000012 && 0x800000010056EA20 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x666E6F436B6E756ALL && a2 == 0xEE0065636E656469;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000016 && 0x800000010056EA50 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x436E776F6E4B7369 && a2 == 0xED000072656C6C61;
                                                                          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x726F635372657375 && a2 == 0xE900000000000065;
                                                                            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x436465646E617262 && a2 == 0xEB000000006C6C61;
                                                                              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000014 && 0x800000010056EA90 == a2;
                                                                                if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000014 && 0x800000010056EAB0 == a2;
                                                                                  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000012 && 0x800000010056EAD0 == a2;
                                                                                    if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000013 && 0x800000010056EAF0 == a2;
                                                                                      if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000011 && 0x800000010056EB10 == a2;
                                                                                        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0x756F526F69647561 && a2 == 0xEA00000000006574;
                                                                                          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x737572546D6D6F63 && a2 == 0xEE0065726F635374;
                                                                                            if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000011 && 0x800000010056EB40 == a2;
                                                                                              if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else if (a1 == 0x556C616963657073 && a2 == 0xEE006E776F6E6B6ELL)
                                                                                              {

                                                                                                return 47;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                if (v53)
                                                                                                {
                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  return 48;
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100371EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100371074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100371EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100371EA0();
  *a1 = result;
  return result;
}

uint64_t sub_100371F18(uint64_t a1)
{
  v2 = sub_1000544C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100371F54(uint64_t a1)
{
  v2 = sub_1000544C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100371F98(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1003720E8(uint64_t a1)
{
  result = sub_100054AF0(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo, &unk_100582400);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100372140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10026D814(a3, a4);
  sub_100008070();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1003721B4()
{
  result = qword_1006A6D78;
  if (!qword_1006A6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D78);
  }

  return result;
}

unint64_t sub_10037220C()
{
  result = qword_1006A6D80;
  if (!qword_1006A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D80);
  }

  return result;
}

unint64_t sub_100372264()
{
  result = qword_1006A6D88;
  if (!qword_1006A6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D88);
  }

  return result;
}

uint64_t sub_1003722B8()
{
  sub_10005104C(v0);
  if (!v1)
  {
    v2 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

uint64_t sub_1003723CC(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_100372414()
{
  v1 = OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags;
  result = [*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags) expanseEnabled];
  if (result)
  {
    return [*(v0 + v1) supportsScreenSharing];
  }

  return result;
}

void *sub_10037254C()
{
  v1 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale);
  v2 = v1;
  return v1;
}

void sub_1003725D8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale);
  *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale) = a1;
  v3 = a1;

  sub_100372630();
}

void sub_100372630()
{
  if (*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      ScreenSharingActivityManager.broadcastAttributes(_:)();
    }

    else
    {
      v4 = qword_1006A0B18;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000AF9C(v5, qword_1006BA5C8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Could not cast to TUCallScreenShareAttributes", v8, 2u);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1006A0B18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA5C8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "No latest remote attributes", v3, 2u);
    }
  }
}

void ScreenSharingActivityManager.broadcastAttributes(_:)()
{
  sub_100005EF4();
  sub_10000691C();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_100007FDC();
  sub_100007654();
  v20 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  sub_100006890();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0;
  v21[4] = sub_100374D2C;
  v21[5] = v9;
  sub_100009FE4();
  v21[1] = 1107296256;
  sub_10000A600();
  v21[2] = v10;
  v21[3] = &unk_10062A4F0;
  v11 = _Block_copy(v21);

  v12 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100015244();
  sub_10000EF60(v13, 255, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  v17 = sub_10037AB64(v15, &unk_1006A2960, &unk_10057D6E0, v16);
  sub_100006E34(v17);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v18 = sub_10000FE14();
  v19(v18);
  (*(v3 + 8))(v7, v20);

  sub_100005EDC();
}

void sub_100372B38(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled);
  *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled) = a1;
  sub_100372B50(v2);
}

void sub_100372B50(char a1)
{
  if (*(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled) != (a1 & 1))
  {
    if (qword_1006A0B18 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA5C8);
    v3 = v1;
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10002741C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "presenterOverlayEnabled changed to %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    else
    {
    }
  }
}

void sub_100372CF8()
{
  sub_100005EF4();
  v21 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v19 = v3;
  v20 = v2;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100008070();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v8 = type metadata accessor for DispatchQoS();
  v9 = sub_100007BF0(v8);
  __chkstk_darwin(v9);
  sub_100007FDC();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_subscriptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_messenger] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_observer] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_session] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale] = 0;
  v0[OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled] = 0;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000EF60(&qword_1006A0CB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10037AB64(v10, &qword_1006A31B0, &unk_10057E920, v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v19 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags] = v21;
  v12 = v21;
  static OS_dispatch_queue.main.getter();
  sub_10000691C();
  v13 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_carPlayObserver] = CPCarPlayObserver.init(queue:)();
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v23, "init");
  v15 = *&v14[OBJC_IVAR___CSDScreenSharingActivityManager_carPlayObserver];
  sub_10000EF60(&qword_1006A6F80, v16, type metadata accessor for ScreenSharingActivityManager, &protocol conformance descriptor for ScreenSharingActivityManager);
  v17 = v14;
  v18 = v15;
  sub_100006B30();
  dispatch thunk of CPCarPlayObserver.delegate.setter();

  ScreenSharingActivityManager.startObservingSessions()();
  sub_100005EDC();
}

Swift::Void __swiftcall ScreenSharingActivityManager.startObservingSessions()()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v0);
  sub_100007FDC();
  sub_100007654();
  v1 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  if (sub_100372414())
  {
    sub_100006890();
    v17 = v1;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18[4] = sub_100374D34;
    v18[5] = v8;
    sub_100009FE4();
    v18[1] = 1107296256;
    sub_10000A600();
    v18[2] = v9;
    v18[3] = &unk_10062A518;
    v10 = _Block_copy(v18);

    static DispatchQoS.unspecified.getter();
    sub_100015244();
    sub_10000EF60(v11, 255, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10037AB64(v13, &unk_1006A2960, &unk_10057D6E0, v14);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    v15 = sub_10000FE14();
    v16(v15);
    (*(v3 + 8))(v7, v17);
  }

  sub_100005EDC();
}

void sub_100373328(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10037337C();
  }
}

void sub_10037337C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A7090, &qword_100582850);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v13 = OBJC_IVAR___CSDScreenSharingActivityManager_observer;
    if (!*(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_observer) && (sub_100372414() & 1) != 0)
    {
      sub_10037AAD0();
      v14 = v11;
      GroupSessionObserver.init(for:queue:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10037AB64(&qword_1006A7098, &qword_1006A7090, &qword_100582850, &protocol conformance descriptor for GroupSessionObserver<A>);
      v15 = Publisher<>.sink(receiveValue:)();

      (*(v3 + 8))(v5, v2);
      *(v1 + v13) = v15;

      v17 = sub_100004778(v16);
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Started observer for screen sharing activity sessions", 53, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    __break(1u);
  }
}

void ScreenSharingActivityManager.startActivitySession(onConversationWithUUID:for:with:)()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v105 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v94 = v8;
  v95 = v7;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v92 = v10 - v9;
  v93 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v91 = v11;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v90 = v14 - v13;
  v15 = sub_10026D814(&qword_1006A6DA0, &qword_100584E60);
  sub_100007BF0(v15);
  sub_100006688();
  __chkstk_darwin(v16);
  v99 = &v86 - v17;
  v104 = type metadata accessor for UUID();
  sub_100007FEC();
  v19 = v18;
  __chkstk_darwin(v20);
  v103 = v21;
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10026D814(&qword_1006A6DA8, &qword_100582570);
  sub_100007FEC();
  v96 = v24;
  sub_100006688();
  __chkstk_darwin(v25);
  v27 = &v86 - v26;
  sub_10026D814(&qword_1006A6DB0, &qword_100582578);
  sub_100007FEC();
  v97 = v29;
  v98 = v28;
  sub_100006688();
  __chkstk_darwin(v30);
  v32 = &v86 - v31;
  sub_10026D814(&qword_1006A6DB8, &qword_100582580);
  sub_100007FEC();
  v101 = v34;
  v102 = v33;
  sub_100006688();
  __chkstk_darwin(v35);
  v100 = &v86 - v36;
  if (sub_100372414())
  {
    v88 = v3;
    v89 = v5;
    ScreenSharingActivityManager.startObservingSessions()();
    v37 = OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags;
    if (([*&v0[OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags] sharePlayInCallsEnabled] & 1) != 0 || objc_msgSend(*&v0[v37], "nearbyFaceTimeEnabled"))
    {
      type metadata accessor for ConversationManagerClient();
      v38 = static ConversationManagerClient.shared.getter();
      v39 = ConversationManagerClient.onActivitySessionsChanged.getter();

      v107[0] = v39;
      v40 = *(v19 + 16);
      v94 = v19 + 16;
      v95 = v40;
      v92 = v23;
      v87 = v22;
      v41 = v104;
      v40(v22, v105, v104);
      v42 = *(v19 + 80);
      v43 = swift_allocObject();
      v93 = *(v19 + 32);
      v93(v43 + ((v42 + 16) & ~v42), v22, v41);
      sub_10026D814(&qword_1006A6DC8, &unk_100582588);
      v86 = v1;
      sub_10037AB64(&qword_1006A6DD0, &qword_1006A6DC8, &unk_100582588, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.map<A>(_:)();

      sub_10037AB64(&unk_1006A6DD8, &qword_1006A6DA8, &qword_100582570, &protocol conformance descriptor for Publishers.Map<A, B>);
      v44 = v92;
      Publisher<>.removeDuplicates()();
      (*(v96 + 8))(v27, v44);
      v107[0] = *&v1[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
      v45 = v107[0];
      v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v47 = v99;
      sub_10000AF74(v99, 1, 1, v46);
      sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
      sub_10037AB64(&qword_1006A6DE8, &qword_1006A6DB0, &qword_100582578, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
      sub_100378020();
      v48 = v45;
      v49 = v98;
      Publisher.receive<A>(on:options:)();
      sub_10037B1A4(v47, &qword_1006A6DA0);

      (*(v97 + 8))(v32, v49);
      sub_100006890();
      v50 = swift_allocObject();
      v51 = v86;
      swift_unknownObjectWeakInit();
      v52 = v87;
      v53 = v104;
      v95(v87, v105, v104);
      v54 = (v42 + 48) & ~v42;
      v55 = swift_allocObject();
      v55[2] = v50;
      v55[3] = v51;
      v56 = v51;
      v57 = v88;
      v58 = v89;
      v55[4] = v88;
      v55[5] = v58;
      v93(v55 + v54, v52, v53);
      sub_10037AB64(&qword_1006A6DF8, &qword_1006A6DB8, &qword_100582580, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v59 = v56;
      v60 = v57;
      v61 = v58;
      v62 = Publisher<>.sink(receiveValue:)();

      v63 = sub_10000FC44();
      v64(v63);
      *&v59[OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver] = v62;
    }

    else
    {
      sub_100006890();
      v70 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v71 = swift_allocObject();
      v71[2] = v70;
      v71[3] = v0;
      v72 = v88;
      v73 = v89;
      v71[4] = v88;
      v71[5] = v73;
      v107[4] = sub_100377F98;
      v107[5] = v71;
      v107[0] = _NSConcreteStackBlock;
      v107[1] = 1107296256;
      sub_10000A600();
      v107[2] = v74;
      v107[3] = &unk_10062A568;
      v75 = _Block_copy(v107);
      v76 = v72;
      v77 = v73;

      v78 = v1;
      v79 = v90;
      static DispatchQoS.unspecified.getter();
      v106 = _swiftEmptyArrayStorage;
      sub_100015244();
      sub_10000EF60(v80, 255, v81, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100008434();
      sub_10037AB64(v82, &unk_1006A2960, &unk_10057D6E0, v83);
      v84 = v92;
      v85 = v95;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v75);
      (*(v94 + 8))(v84, v85);
      (*(v91 + 8))(v79, v93);
    }

    sub_100005EDC();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC(&qword_1006A0AF8);
    }

    v65 = type metadata accessor for Logger();
    sub_10000AF9C(v65, qword_1006BA568);
    v105 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v105, v66, "Attempted to start screen sharing with unsupported configuration.", v67, 2u);
    }

    sub_100005EDC();
  }
}

uint64_t sub_1003740A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes) = a3;
  v7 = a3;
  v8 = swift_unknownObjectRelease();
  if (a3)
  {
    v8 = [objc_allocWithZone(type metadata accessor for CodableRemoteScreenShareAttributes()) initWithAttributes:v7];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100004778(v8);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  v12 = a4;
  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  *(v11 + 56) = &type metadata for String;
  v16 = sub_100009D88();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v17 = sub_100291490(v9);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  v19 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Starting screen sharing activity for handle %@ with initial attributes %@", 73, 2, &_mh_execute_header, v10, v19, v11);

  sub_1003722B8();
  sub_10037AAD0();
  GroupActivity.activate(onConversationWithUUID:)();

  *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver) = 0;
}

void sub_10037426C(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  sub_10045E400(sub_10037AB24, v6, v4);
  *a3 = v5 & 1;
}

unint64_t sub_1003742CC(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [v7 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) != 0 && [v7 state] == 3)
  {
    return ([v7 capabilities] >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_100374418(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (v14)
    {
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 16))(v13, a6, v16);
      sub_10000AF74(v13, 0, 1, v16);
      sub_1003740A0(v13, a3, a4, a5);
      sub_10037B1A4(v13, &unk_1006A3DD0);
    }
  }
}

void *sub_100374564(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v11 = type metadata accessor for UUID();
    sub_10000AF74(v9, 1, 1, v11);
    sub_1003740A0(v9, a2, a3, a4);
    return sub_10037B1A4(v9, &unk_1006A3DD0);
  }

  return result;
}

Swift::Void __swiftcall ScreenSharingActivityManager.stopActivitySession()()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v0);
  sub_100007FDC();
  sub_100007654();
  v17 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  sub_100006890();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_1003780FC;
  v18[5] = v7;
  sub_100009FE4();
  v18[1] = 1107296256;
  sub_10000A600();
  v18[2] = v8;
  v18[3] = &unk_10062A5E0;
  v9 = _Block_copy(v18);

  static DispatchQoS.unspecified.getter();
  sub_100015244();
  sub_10000EF60(v10, 255, v11, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  v14 = sub_10037AB64(v12, &unk_1006A2960, &unk_10057D6E0, v13);
  sub_100006E34(v14);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v15 = sub_10000FE14();
  v16(v15);
  (*(v2 + 8))(v6, v17);

  sub_100005EDC();
}

void sub_1003749C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100374A18(0);
  }
}

uint64_t sub_100374A18(char a1)
{
  v3 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_100007654();
  v8 = *(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v2 = v8;
  (*(v6 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v2, v4);
  if (v8)
  {
    if (*(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
    {

      if (GroupSession.isLocallyInitiated.getter())
      {
        sub_100375384();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100374B9C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Participants();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a2 style] && (sub_100372414() & 1) != 0)
    {
      *&v8[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes] = a2;
      swift_unknownObjectRelease();
      v9 = [objc_allocWithZone(type metadata accessor for CodableRemoteScreenShareAttributes()) initWithAttributes:a2];
      (*(v4 + 104))(v6, enum case for Participants.all(_:), v3);
      sub_100374D3C(v9, v6);

      (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }
}

uint64_t sub_100374D3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v59 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v49 - v9;
  v10 = type metadata accessor for Participants();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - v19;
  if (*(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {
    v54 = v6;

    if (GroupSession.isLocallyInitiated.getter())
    {
      v53 = a2;
      GroupSession.state.getter();
      (*(v14 + 104))(v17, enum case for GroupSession.State.joined<A>(_:), v13);
      sub_10037AAD0();
      v21 = static GroupSession.State.== infix(_:_:)();
      v22 = *(v14 + 8);
      v22(v17, v13);
      v22(v20, v13);
      if (v21)
      {
        if (*(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger))
        {
          v52 = *(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger);

          v50 = sub_100004778(v23);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_10057E830;
          v60 = a1;
          v51 = type metadata accessor for CodableRemoteScreenShareAttributes();
          v25 = a1;
          v26 = String.init<A>(reflecting:)();
          v28 = v27;
          *(v24 + 56) = &type metadata for String;
          v29 = sub_100009D88();
          *(v24 + 64) = v29;
          *(v24 + 32) = v26;
          *(v24 + 40) = v28;
          (*(v55 + 16))(v12, v53, v56);
          v30 = String.init<A>(reflecting:)();
          *(v24 + 96) = &type metadata for String;
          *(v24 + 104) = v29;
          *(v24 + 72) = v30;
          *(v24 + 80) = v31;
          v32 = v58;
          GroupSession.id.getter();
          v33 = v59;
          v34 = v54;
          (*(v59 + 16))(v57, v32, v54);
          v35 = String.init<A>(reflecting:)();
          v37 = v36;
          (*(v33 + 8))(v32, v34);
          *(v24 + 136) = &type metadata for String;
          *(v24 + 144) = v29;
          *(v24 + 112) = v35;
          *(v24 + 120) = v37;
          v38 = static os_log_type_t.default.getter();
          v39 = v50;
          os_log(_:dso:log:type:_:)("Sending remote attributes %@ to %@ (screen sharing activity session id: %@)", 75, 2, &_mh_execute_header, v50, v38, v24);

          v60 = v25;
          *(swift_allocObject() + 16) = v25;
          sub_10000EF60(&qword_1006A70C0, 255, type metadata accessor for CodableRemoteScreenShareAttributes, &unk_100583EE0);
          sub_10000EF60(&qword_1006A70C8, 255, type metadata accessor for CodableRemoteScreenShareAttributes, &unk_100583EB8);
          v40 = v25;
          GroupSessionMessenger.send<A>(_:to:completion:)();
        }
      }
    }
  }

  v42 = sub_100004778(v18);
  v43 = static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10057D690;
  v60 = a1;
  type metadata accessor for CodableRemoteScreenShareAttributes();
  v45 = a1;
  v46 = String.init<A>(reflecting:)();
  v48 = v47;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = sub_100009D88();
  *(v44 + 32) = v46;
  *(v44 + 40) = v48;
  os_log(_:dso:log:type:_:)("Unable to send updated attributes %@ over screen sharing activity", 65, 2, &_mh_execute_header, v42, v43, v44);
}

void sub_100375384()
{
  sub_100005EF4();
  v2 = v0;
  v41 = v3;
  sub_100022068();
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *(v18 - v17) = v20;
  (*(v15 + 104))(v18 - v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v13);
  if (v20)
  {
    if (GroupSession.isLocallyInitiated.getter())
    {
      v22 = sub_100372414();
      if (v22)
      {
        v23 = sub_100004778(v22);
        v24 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v25 = sub_100009F00(v24);
        v40 = xmmword_10057D690;
        *(v25 + 16) = xmmword_10057D690;
        GroupSession.id.getter();
        (*(v6 + 16))(v10, v12, v4);
        v26 = String.init<A>(reflecting:)();
        v28 = v27;
        (*(v6 + 8))(v12, v4);
        *(v25 + 56) = &type metadata for String;
        v29 = sub_100009D88();
        *(v25 + 64) = v29;
        *(v25 + 32) = v26;
        *(v25 + 40) = v28;
        v30 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("End screen sharing activity session (id: %@)", 44, 2, &_mh_execute_header, v23, v30, v25);

        GroupSession.end()();
        *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes) = 0;
        swift_unknownObjectRelease();
        *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session) = 0;

        *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger) = 0;

        if (v41)
        {
          v32 = sub_100004778(v31);
          v33 = sub_100009F00(v24);
          *(v33 + 16) = v40;
          v42 = v1;

          sub_10026D814(&qword_1006A7050, &unk_100582820);
          v34 = String.init<A>(reflecting:)();
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = v29;
          *(v33 + 32) = v34;
          *(v33 + 40) = v35;
          v36 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Screen sharing activity manager notifying delegate of session %@ ending", 71, 2, &_mh_execute_header, v32, v36, v33);

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v38 = Strong;
            sub_10037AA7C();
            swift_allocError();
            v39 = _convertErrorToNSError(_:)();

            [v38 screenSharingActivityManager:v2 invalidatedSessionWithReason:v39 wasLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];

            swift_unknownObjectRelease();
          }
        }
      }
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100375770()
{
  v1 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_10026D814(&qword_1006A7070, &qword_100582838);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_10026D814(&qword_1006A7078, &unk_100582840);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  if (*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {

    GroupSession.state.getter();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_10000AF74(v16, v17, 1, v1);
  (*(v2 + 104))(v14, enum case for GroupSession.State.joined<A>(_:), v1);
  sub_10000AF74(v14, 0, 1, v1);
  v18 = *(v5 + 48);
  sub_10037B1F8(v16, v7, &qword_1006A7078);
  sub_10037B1F8(v14, &v7[v18], &qword_1006A7078);
  if (sub_100015468(v7, 1, v1) != 1)
  {
    sub_10037B1F8(v7, v11, &qword_1006A7078);
    if (sub_100015468(&v7[v18], 1, v1) != 1)
    {
      (*(v2 + 32))(v4, &v7[v18], v1);
      sub_10037AB64(&qword_1006A7080, &qword_1006A7068, &qword_100582830, &protocol conformance descriptor for GroupSession<A>.State);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v2 + 8);
      v20(v4, v1);
      sub_10037B1A4(v14, &qword_1006A7078);
      sub_10037B1A4(v16, &qword_1006A7078);
      v20(v11, v1);
      sub_10037B1A4(v7, &qword_1006A7078);
      return v19 & 1;
    }

    sub_10037B1A4(v14, &qword_1006A7078);
    sub_10037B1A4(v16, &qword_1006A7078);
    (*(v2 + 8))(v11, v1);
    goto LABEL_9;
  }

  sub_10037B1A4(v14, &qword_1006A7078);
  sub_10037B1A4(v16, &qword_1006A7078);
  if (sub_100015468(&v7[v18], 1, v1) != 1)
  {
LABEL_9:
    sub_10037B1A4(v7, &qword_1006A7070);
    v19 = 0;
    return v19 & 1;
  }

  sub_10037B1A4(v7, &qword_1006A7078);
  v19 = 1;
  return v19 & 1;
}

void sub_100375BB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100375C0C(v2);
  }
}

void sub_100375C0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A70A0, &qword_100582858);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - v6;
  v8 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  __chkstk_darwin(v8 - 8);
  v53 = &v51 - v9;
  v10 = sub_10026D814(&qword_1006A70B0, &qword_100582868);
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v54 = v7;
    v55 = v5;
    v56 = v4;
    v20 = sub_100004778(v19);
    v52 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    v51 = xmmword_10057D6A0;
    *(v21 + 16) = xmmword_10057D6A0;
    *&v61 = a1;

    sub_10026D814(&qword_1006A7050, &unk_100582820);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    v25 = sub_100009D88();
    *(v21 + 64) = v25;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    GroupSession.activity.getter();
    v59 = v61;
    v60 = v62;
    v26 = String.init<A>(reflecting:)();
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v25;
    *(v21 + 72) = v26;
    *(v21 + 80) = v27;
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received new screen sharing activity session %@ with activity %@", 64, 2, &_mh_execute_header, v20, v28, v21);

    v29 = GroupSession.isLocallyInitiated.getter();
    if ((v29 & 1) != 0 && !*(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
    {
      v44 = sub_100004778(v29);
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      *&v61 = a1;

      v46 = String.init<A>(reflecting:)();
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = v25;
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      GroupSession.activity.getter();
      v59 = v61;
      v60 = v62;
      v48 = String.init<A>(reflecting:)();
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v25;
      *(v45 + 72) = v48;
      *(v45 + 80) = v49;
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending local screen sharing session since no active screen share attributes", 75, 2, &_mh_execute_header, v44, v50, v45);

      GroupSession.end()();
    }

    else
    {
      GroupSession.$state.getter();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = a1;
      sub_10037AB64(&qword_1006A70B8, &qword_1006A70B0, &qword_100582868, &protocol conformance descriptor for Published<A>.Publisher);

      v32 = v58;
      Publisher<>.sink(receiveValue:)();

      (*(v57 + 8))(v12, v32);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      GroupSession.activity.getter();
      v33 = v62;

      if (v33)
      {
        v34 = [objc_allocWithZone(TUCallScreenShareAttributes) initWithAttributes:v33];
        v35 = type metadata accessor for GroupSessionMessenger.MessageContext();
        v36 = v53;
        sub_10000AF74(v53, 1, 1, v35);
        sub_10037ABA8(v34, v36, a1, v2);

        sub_10037B1A4(v36, &qword_1006A6018);
      }

      v38 = v54;
      v37 = v55;
      type metadata accessor for GroupSessionMessenger();
      swift_allocObject();

      v39 = GroupSessionMessenger.init<A>(session:)();
      GroupSession.join()();
      type metadata accessor for CodableRemoteScreenShareAttributes();
      sub_10000EF60(&qword_1006A70C0, 255, type metadata accessor for CodableRemoteScreenShareAttributes, &unk_100583EE0);
      sub_10000EF60(&qword_1006A70C8, 255, type metadata accessor for CodableRemoteScreenShareAttributes, &unk_100583EB8);
      GroupSessionMessenger.receive<A>(_:)();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = a1;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_10037AB54;
      *(v42 + 24) = v41;
      sub_10037AB64(&qword_1006A70D0, &unk_1006A70A0, &qword_100582858, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);

      v43 = v56;
      Publisher<>.sink(receiveValue:)();

      (*(v37 + 8))(v38, v43);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session) = a1;

      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger) = v39;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100376424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100376494(a1, a3);
  }
}

uint64_t sub_100376494(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = type metadata accessor for UUID();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = __chkstk_darwin(v4);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v69 - v7;
  v9 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v2;
  v19 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = *(v10 + 16);
    v22(v14, a1, v9);
    v23 = (*(v10 + 88))(v14, v9);
    if (v23 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v24 = (*(v10 + 96))(v14, v9);
      v25 = *v14;
      v26 = sub_100004778(v24);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10057D6A0;
      GroupSession.id.getter();
      v29 = v74;
      v28 = v75;
      (*(v74 + 16))(v76, v8, v75);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      (*(v29 + 8))(v8, v28);
      *(v27 + 56) = &type metadata for String;
      v33 = sub_100009D88();
      *(v27 + 64) = v33;
      *(v27 + 32) = v30;
      *(v27 + 40) = v32;
      v78 = v25;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v34 = String.init<A>(reflecting:)();
      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = v33;
      *(v27 + 72) = v34;
      *(v27 + 80) = v35;
      v36 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Screen sharing activity session (id: %@) invalidated with reason: %@", 68, 2, &_mh_execute_header, v26, v36, v27);

      v37 = v73;
      sub_100376E78();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        v40 = _convertErrorToNSError(_:)();
        [v39 screenSharingActivityManager:v37 invalidatedSessionWithReason:v40 wasLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v41 = v23;
      if (v23 == enum case for GroupSession.State.waiting<A>(_:))
      {
        v42 = sub_100004778(v23);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_10057D690;
        GroupSession.id.getter();
        v45 = v74;
        v44 = v75;
        (*(v74 + 16))(v76, v8, v75);
        v46 = String.init<A>(reflecting:)();
        v48 = v47;
        (*(v45 + 8))(v8, v44);
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = sub_100009D88();
        *(v43 + 32) = v46;
        *(v43 + 40) = v48;
        v49 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Screen sharing activity session (id: %@) waiting", 48, 2, &_mh_execute_header, v42, v49, v43);
      }

      else
      {
        v50 = enum case for GroupSession.State.joined<A>(_:);
        v71 = sub_100004778(v23);
        if (v41 == v50)
        {
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_10057D690;
          GroupSession.id.getter();
          v53 = v74;
          v52 = v75;
          (*(v74 + 16))(v76, v8, v75);
          v54 = String.init<A>(reflecting:)();
          v56 = v55;
          (*(v53 + 8))(v8, v52);
          *(v51 + 56) = &type metadata for String;
          *(v51 + 64) = sub_100009D88();
          *(v51 + 32) = v54;
          *(v51 + 40) = v56;
          v57 = static os_log_type_t.default.getter();
          v58 = v71;
          os_log(_:dso:log:type:_:)("Screen sharing activity session (id: %@) joined", 47, 2, &_mh_execute_header, v71, v57, v51);

          result = GroupSession.isLocallyInitiated.getter();
          if (result)
          {
            if (*(v73 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
            {
              objc_opt_self();
              result = swift_dynamicCastObjCClass();
              if (result)
              {
                swift_unknownObjectRetain();
                ScreenSharingActivityManager.broadcastAttributes(_:)();
                return swift_unknownObjectRelease();
              }
            }
          }
        }

        else
        {
          v70 = static os_log_type_t.fault.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_10057D6A0;
          GroupSession.id.getter();
          v60 = v74;
          v61 = v75;
          v62 = *(v74 + 16);
          v69 = a1;
          v62(v76, v8, v75);
          v76 = String.init<A>(reflecting:)();
          v64 = v63;
          (*(v60 + 8))(v8, v61);
          *(v59 + 56) = &type metadata for String;
          v65 = sub_100009D88();
          *(v59 + 64) = v65;
          *(v59 + 32) = v76;
          *(v59 + 40) = v64;
          v22(v72, v69, v9);
          v66 = String.init<A>(reflecting:)();
          *(v59 + 96) = &type metadata for String;
          *(v59 + 104) = v65;
          *(v59 + 72) = v66;
          *(v59 + 80) = v67;
          v68 = v71;
          os_log(_:dso:log:type:_:)("Screen sharing activity session (id: %@) reached unknown state %@", 65, 2, &_mh_execute_header, v71, v70, v59);

          sub_100376E78();
          return (*(v10 + 8))(v14, v9);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100376CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [objc_allocWithZone(TUCallScreenShareAttributes) initWithAttributes:a1];
    v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v13 - 8) + 16))(v9, a2, v13);
    sub_10000AF74(v9, 0, 1, v13);
    sub_10037ABA8(v12, v9, a4, v11);

    return sub_10037B1A4(v9, &qword_1006A6018);
  }

  return result;
}

uint64_t sub_100376E1C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_10026D814(&qword_1006A70E0, &qword_100582878);
  return a2(v4, &a1[*(v5 + 48)]);
}

void sub_100376E78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = GroupSession.isLocallyInitiated.getter();
    if (v14)
    {
      v15 = sub_100004778(v14);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      (*(v2 + 16))(v5, v7, v1);
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      (*(v2 + 8))(v7, v1);
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100009D88();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v20 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Transitioned to non-joined from joined state for locally-initiated screen sharing activity, ending (id: %@)", 107, 2, &_mh_execute_header, v15, v20, v16);

      sub_100375384();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100377134(uint64_t result, void *a2)
{
  if (result)
  {
    swift_getObjectType();
    v3 = swift_errorRetain();
    v4 = sub_100004778(v3);
    v5 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10057D6A0;
    v7 = a2;
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    *(v6 + 56) = &type metadata for String;
    v11 = sub_100009D88();
    *(v6 + 64) = v11;
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v12 = String.init<A>(reflecting:)();
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    os_log(_:dso:log:type:_:)("Failed to send attributes %@ for screen sharing activity with error %@", 70, 2, &_mh_execute_header, v4, v5, v6);
  }

  return result;
}

id sub_1003773A0(uint64_t a1, uint64_t a2)
{
  sub_100022068();
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10037A910();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v6)
  {
    v2 = objc_allocWithZone(TUScreenShareAttributes);
    v3 = v6;
    v4 = [v2 initWithAttributes:v3];
  }

  else
  {

    return 0;
  }

  return v4;
}

Swift::Void __swiftcall ScreenSharingActivityManager.carPlayStartedConnectionAttempt()()
{
  sub_100005EF4();
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_100007654();
  if (sub_100375770())
  {
    v30 = v0;
    Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031E958(0xD00000000000001FLL, 0x800000010056EBC0);
    v6 = String.init(format:_:)();
    v8 = v7;

    v35 = &type metadata for String;
    *&v34 = v6;
    *(&v34 + 1) = v8;
    sub_10003EBF0(&v34, &v33);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100040430();

    v9 = String._bridgeToObjectiveC()();
    v10 = MGGetStringAnswer();

    v31 = v2;
    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE600000000000000;
      v11 = 0x656E6F685069;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031E958(0xD000000000000024, 0x800000010056EBE0);
    v19 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v20 = sub_100009F00(v19);
    *(v20 + 16) = xmmword_10057D690;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100009D88();
    *(v20 + 32) = v11;
    *(v20 + 40) = v13;
    v21 = String.init(format:_:)();
    v23 = v22;

    v35 = &type metadata for String;
    *&v34 = v21;
    *(&v34 + 1) = v23;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = sub_10031E958(0xD000000000000020, 0x800000010056EC10);
    v35 = &type metadata for String;
    *&v34 = v24;
    *(&v34 + 1) = v25;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = sub_10031E958(0x574F4E5F544F4ELL, 0xE700000000000000);
    v35 = &type metadata for String;
    *&v34 = v26;
    *(&v34 + 1) = v27;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
    v28 = static IMUserNotificationCenter.shared.getter();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v4 + 8))(v1, v31);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006890();
    *(swift_allocObject() + 16) = v30;
    v29 = v30;
    IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();

    sub_100005EDC();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC(&qword_1006A0AF8);
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA568);
    v32 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v32, v15, "Screen sharing manager ignoring CarPlay connection attempt since we don't have a joined session", v16, 2u);
    }

    sub_100005EDC();
  }
}

void sub_100377AB8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA568);
    v25 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v25, v13, "Not ending ScreenSharing because user didn't choose to end", v14, 2u);
    }

    v15 = v25;
  }

  else
  {
    v24 = v9;
    v25 = v5;
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA568);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Ending ScreenSharing since user tapped the end button", v19, 2u);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    aBlock[4] = sub_10037AA74;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062A728;
    v21 = _Block_copy(aBlock);
    v22 = a2;
    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_10000EF60(&qword_1006A2CC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10037AB64(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (v25[1].isa)(v7, v4);
    (*(v24 + 8))(v11, v8);
  }
}

void sub_100377F5C()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt()();
}

void sub_100377FA4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  sub_100007BF0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_10037426C(a1, v7, a2);
}

unint64_t sub_100378020()
{
  result = qword_1006A6DF0;
  if (!qword_1006A6DF0)
  {
    sub_100006AF0(255, &qword_1006A31A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6DF0);
  }

  return result;
}

void sub_100378088(unsigned __int8 *a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  sub_100374418(a1, v5, v6, v7, v8, v9);
}

void sub_100378104()
{
  sub_10003D4BC();
  sub_100018270(v3, v4);
  sub_1002DB874();
  sub_100008598();
  if (v5)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TTSAssetProperty(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6E98, &qword_100582678);
  v6 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_10000B8DC();
    sub_1002DB874();
    sub_100035B58();
    if (!v9)
    {
      goto LABEL_14;
    }

    v2 = v8;
  }

  if (v1)
  {
    sub_100009B7C((*(*v0 + 56) + 32 * v2));
    sub_100006B30();
    sub_100035CE8();

    sub_10003EBF0(v10, v11);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_10032783C(v13, v14, v15, v16);
  }
}

void sub_100378214()
{
  sub_10003D4BC();
  v4 = sub_100018270(v2, v3);
  sub_1002DA664(v4);
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&qword_1006A7048, &qword_100582818);
  v10 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = sub_100010088();
    sub_1002DA664(v12);
    sub_10000C758();
    if (!v14)
    {
      goto LABEL_12;
    }

    v8 = v13;
  }

  if (v9)
  {
    v15 = *(*v1 + 56);
    v16 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
    sub_100007BF0(v16);
    sub_10037AA1C(v0, v15 + *(v17 + 72) * v8);
    sub_100035CE8();
  }

  else
  {
    sub_100035CE8();

    sub_100327880(v18, v19, v20, v21);
  }
}

void sub_10037831C(char a1, __int128 *a2)
{
  sub_100052710(a2);
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&qword_1006A7040, &qword_100582810);
  v10 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100052710(a2);
    sub_10000C758();
    if (!v13)
    {
      goto LABEL_11;
    }

    v8 = v12;
  }

  v14 = *v2;
  if (v9)
  {
    *(*(v14 + 56) + v8) = a1 & 1;
  }

  else
  {
    v15 = *a2;
    v17 = a2[1];
    v18 = v15;
    sub_100327908(v8, a2, a1 & 1, v14);
    sub_100052980(&v18, v16);
    sub_100052980(&v17, v16);
  }
}

void sub_10037841C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10003D4BC();
  v11 = v10;
  v14 = sub_10000FE04(v12, v13);
  sub_100005208(v14, v15);
  sub_100008598();
  if (v17)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v16;
  sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
  v19 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20))
  {
    v21 = sub_10000D374();
    sub_100005208(v21, v11);
    sub_100008BC4();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v18)
  {
    v23 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_100007BF0(v23);
    sub_100035CE8();

    sub_10037A7E0(v24, v25);
  }

  else
  {
    sub_10037B364();
    sub_100327948();
    sub_100035CE8();
  }
}

void sub_100378540()
{
  sub_100005EF4();
  sub_10000E798();
  type metadata accessor for Locale();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_10000F714();
  sub_1002DA5A4();
  sub_100008598();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F68, &qword_100582740);
  v3 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4))
  {
    sub_100010088();
    sub_1002DA5A4();
    sub_10000D4BC();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1000079F8();
    sub_100005EDC();
  }

  else
  {
    v7 = sub_100015DCC();
    v8(v7);
    v9 = sub_1000162FC();
    sub_1003279BC(v9, v10, v11, v12);
    sub_100005EDC();
  }
}

void sub_100378670()
{
  sub_10003D4BC();
  sub_100006BD4();
  v4 = v3;
  sub_100005340();
  sub_1002DA6A0();
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&qword_1006A76A0, &qword_100582DB0);
  v10 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_1002DA6A0();
    sub_100008BC4();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v9)
  {
    v14 = (*(*v2 + 56) + 24 * v8);
    *v14 = v1;
    v14[1] = v4;
    v14[2] = v0;

    sub_100035CE8();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10037B364();
    sub_100035CE8();

    sub_1003279D4(v16, v17, v18, v19, v20);
  }
}

void sub_10037876C()
{
  sub_100005EF4();
  sub_10000E798();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_10000F714();
  sub_100021E24();
  sub_100008598();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A7020, &qword_1005827F0);
  v3 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1000079F8();
    sub_100005EDC();

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_100015DCC();
    v8(v7);
    v9 = sub_1000162FC();
    sub_100327A10(v9, v10, v11, v12);
    sub_100005EDC();
  }
}

void sub_100378914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005EF4();
  v15 = v14;
  v16 = type metadata accessor for UUID();
  sub_100007FEC();
  v35 = v17;
  __chkstk_darwin(v18);
  sub_10000F714();
  sub_100021E24();
  sub_100008598();
  if (v19)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A7680, &unk_1005827D0);
  v20 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v20, v21))
  {
    sub_10003EB8C();
    sub_100021E24();
    sub_10000D4BC();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    sub_100005EDC();

    v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    (*(v35 + 16))(v12, v15, v16);
    v31 = sub_1000162FC();
    sub_100327A88(v31, v32, v33, v34);
    sub_100005EDC();
  }
}

void sub_100378A8C()
{
  sub_10000D698();
  sub_100022E10();
  v3 = v2;
  v5 = v4;
  sub_100005340();
  v9 = sub_10000C598(v6, v7, v8);
  sub_100005208(v9, v10);
  sub_100008598();
  if (v13)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_10026D814(&unk_1006A7030, &unk_100582800);
  if (sub_100007D68())
  {
    v16 = sub_100008988();
    sub_100005208(v16, v3);
    sub_100008BC4();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  if (v15)
  {
    v19 = *(*v1 + 56) + 16 * v14;
    v20 = *v19;
    *v19 = v0;
    *(v19 + 8) = v5;

    sub_100006048();
  }

  else
  {
    v23 = sub_100018FA4();
    sub_100327B38(v23, v24, v25, v26, v5, v27);
    sub_100006048();
  }
}

void sub_100378B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FA90(a1, a2);
  sub_100027D50(v4);
  sub_100008598();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&unk_1006A7000, &qword_1005827C8);
  if (!sub_100006928())
  {
    goto LABEL_5;
  }

  v10 = sub_100027D50(v16);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    type metadata accessor for Name(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = v2;
    sub_10000D634();
  }

  else
  {
    sub_100327B74(v8, v16, v2, v12);
    sub_10000D634();

    v15 = v13;
  }
}

void sub_100378C74(uint64_t a1, uint64_t a2)
{
  sub_100018270(a1, a2);
  sub_1000067D4();
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
  v10 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100010088();
    sub_1000067D4();
    sub_10000C758();
    if (!v13)
    {
      goto LABEL_12;
    }

    v8 = v12;
  }

  v14 = *v3;
  if (v9)
  {
    sub_100009B7C((*(v14 + 56) + 32 * v8));
    v15 = sub_100006B30();

    sub_10003EBF0(v15, v16);
  }

  else
  {
    sub_100006724(v4, v17);
    sub_100327BB4(v8, v17, v2, v14);
  }
}

void sub_100378D80()
{
  sub_100005EF4();
  sub_10000F380(v2, v3);
  sub_100022068();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598();
  if (v5)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&unk_1006A7660, &qword_1005827C0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    sub_10000C148();
    *v7 = v0;
    v7[1] = v11;
    sub_100005EDC();
  }

  else
  {
    v9 = sub_10003DBEC();
    v10(v9);
    sub_10000534C();
    sub_100327BF8();
    sub_100005EDC();
  }
}

void sub_100378EF0(uint64_t a1)
{
  sub_1002DA6EC();
  sub_100008598();
  if (v5)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  sub_10026D814(&qword_1006A6FA0, &unk_100582D40);
  if (sub_100006928())
  {
    sub_1002DA6EC();
    sub_100035B58();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  v10 = *v1;
  if (v7)
  {
    v11 = *(v10 + 56);
    v12 = *(v11 + 8 * v6);
    *(v11 + 8 * v6) = a1;
  }

  else
  {

    sub_100327C84(v6, a1, v10);
  }
}

void sub_100378FD4()
{
  sub_10003D4BC();
  sub_100006BD4();
  v3 = v2;
  v5 = sub_10002F66C(v2, v4);
  sub_100005208(v5, v6);
  sub_100008598();
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&unk_1006A6F30, &qword_100582708);
  v12 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = sub_10003EB8C();
    sub_100005208(v14, v0);
    sub_10000C758();
    if (!v16)
    {
      goto LABEL_12;
    }

    v10 = v15;
  }

  if (v11)
  {
    *(*(*v1 + 56) + 8 * v10) = v3;
    sub_100035CE8();
  }

  else
  {
    v17 = sub_10000FC44();
    sub_100012FA0(v17, v18, v0, v3, v19);
    sub_100035CE8();
  }
}

void sub_1003790C0()
{
  sub_10003D4BC();
  v6 = sub_100018270(v4, v5);
  sub_1002DA664(v6);
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&unk_1006A7650, &unk_1005827B0);
  v8 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    v10 = sub_10000B8DC();
    sub_1002DA664(v10);
    sub_100035B58();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_100035CE8();
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327B74(v15, v16, v17, v18);
  }
}

void sub_10037919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10003D4BC();
  v13 = sub_100018270(v11, v12);
  sub_1002DA664(v13);
  sub_100008598();
  if (v14)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&unk_1006A6FE0, &unk_100582D80);
  v15 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    v17 = sub_10000B8DC();
    sub_1002DA664(v17);
    sub_100035B58();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    sub_100035CE8();

    sub_10037A9C0(v19, v20);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327CC0(v22, v23, v24, v25);
  }
}

void sub_100379278()
{
  sub_100005EF4();
  sub_100022E10();
  v2 = v1;
  sub_100005340();
  v6 = sub_10000C598(v3, v4, v5);
  sub_100005208(v6, v7);
  sub_100008598();
  if (v9)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v8;
  sub_10026D814(&unk_1006A7630, &unk_1005827A0);
  v11 = sub_100007D68();
  if (v11)
  {
    v16 = sub_100008988();
    sub_100005208(v16, v2);
    sub_100008BC4();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    sub_100017ECC(v11, v12, v13, v14, v15, *v0);
    sub_100005EDC();
  }

  else
  {
    v19 = sub_10003FB84();
    sub_100327B38(v19, v20, v21, v22, v23, v24);
    sub_100005EDC();
  }
}

void sub_1003793F0()
{
  sub_10003D4BC();
  v3 = v2;
  v6 = sub_10000FE04(v4, v5);
  sub_100005208(v6, v7);
  sub_100008598();
  if (v10)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  sub_10026D814(&unk_1006A6FD0, &qword_100580318);
  v13 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    v15 = sub_10003EB8C();
    sub_100005208(v15, v3);
    sub_100008BC4();
    if (!v17)
    {
      goto LABEL_12;
    }

    v11 = v16;
  }

  if (v12)
  {
    v18 = *(*v1 + 56);
    v19 = type metadata accessor for PendingMembershipInfo(0);
    sub_100007BF0(v19);
    sub_10037AA1C(v0, v18 + *(v20 + 72) * v11);
    sub_100035CE8();
  }

  else
  {
    sub_10037B364();
    sub_100327D1C();
    sub_100035CE8();
  }
}

void sub_100379510()
{
  sub_100005EF4();
  sub_100022E10();
  v3 = v2;
  v5 = v4;
  sub_100005340();
  sub_1002DA664(v6);
  sub_100008598();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&unk_1006A6FC0, &qword_100580940);
  if (!sub_100007D68())
  {
    goto LABEL_5;
  }

  v12 = sub_100008988();
  v13 = sub_1002DA664(v12);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    v15 = *(*v1 + 56) + 24 * v10;
    *v15 = v0;
    *(v15 + 8) = v5;
    *(v15 + 16) = v3 & 1;
    *(v15 + 17) = HIBYTE(v3) & 1;
    sub_100005EDC();
  }

  else
  {
    sub_100005EDC();

    sub_100327D98(v18, v19, v20, v21, v22, v23);
  }
}

void sub_10037962C()
{
  sub_100005EF4();
  sub_10000E798();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000F714();
  sub_100021E24();
  sub_100008598();
  if (v5)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6FB8, &unk_100582780);
  v6 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v9)
    {
      goto LABEL_11;
    }

    v2 = v8;
  }

  if (v3)
  {
    v10 = *(*v1 + 56);
    v11 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_100007BF0(v11);
    sub_10037AA1C(v0, v10 + *(v12 + 72) * v2);
  }

  else
  {
    v13 = sub_100015DCC();
    v14(v13);
    v15 = sub_1000162FC();
    sub_100327DF0(v15, v16, v17, v18);
  }

  sub_100005EDC();
}

void sub_100379774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10003D4BC();
  sub_100018270(v11, v12);
  sub_1002DB874();
  sub_100008598();
  if (v13)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6FB0, &unk_100582D50);
  v14 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    sub_10000B8DC();
    sub_1002DB874();
    sub_100035B58();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    sub_100035CE8();

    sub_10037A964(v17, v18);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327E9C(v20, v21, v22, v23);
  }
}

void sub_100379850()
{
  sub_10003D4BC();
  v4 = v3;
  v6 = v5;
  sub_100007558(v3);
  sub_100008598();
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6FA8, &unk_100582770);
  v8 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    sub_100007558(v4);
    sub_100035B58();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v6;
    sub_100035CE8();
  }

  else
  {
    sub_100035CE8();

    sub_100327EE0(v13, v14, v15, v16);
  }
}

void sub_100379948()
{
  sub_100005EF4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100022068();
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(v9);
  sub_100008070();
  __chkstk_darwin(v10);
  sub_10000F714();
  sub_1002DA824();
  sub_100008598();
  if (v12)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v11;
  sub_10026D814(&qword_1006A6F60, &qword_100582D20);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v0))
  {
    sub_10003EB8C();
    sub_1002DA824();
    sub_10000D4BC();
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    sub_10000C148();
    *v15 = v1;
    v15[1] = v8;
    sub_100005EDC();
  }

  else
  {
    sub_10037A8AC(v6, v2);
    sub_100327F18();
    sub_100005EDC();
  }
}

void sub_100379A84()
{
  sub_100005EF4();
  sub_10000E798();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_10000F714();
  sub_100021E24();
  sub_100008598();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F88, &qword_100582750);
  v3 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_1000079F8();
    sub_100005EDC();
  }

  else
  {
    v7 = sub_100015DCC();
    v8(v7);
    v9 = sub_1000162FC();
    sub_1000261AC(v9);
    sub_100005EDC();
  }
}

void sub_100379BB4()
{
  sub_100005EF4();
  sub_10000F380(v2, v3);
  sub_100022068();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598();
  if (v5)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&qword_1006A6F90, &qword_100582758);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    sub_10000C148();
    *v7 = v0;
    v7[1] = v13;
    sub_100005EDC();

    sub_10034B1B8(v8, v9);
  }

  else
  {
    v11 = sub_10003DBEC();
    v12(v11);
    sub_10000534C();
    sub_100327BF8();
    sub_100005EDC();
  }
}

void sub_100379D9C()
{
  sub_100005EF4();
  sub_10000F380(v1, v2);
  v4 = v3;
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598();
  if (v6)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&qword_1006A6E80, &unk_100582660);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v0)
  {
    sub_10000C148();
    *v8 = v4 & 1;
    *(v8 + 8) = v11;
  }

  else
  {
    v9 = sub_10003DBEC();
    v10(v9);
    sub_10000534C();
    sub_100327FE4();
  }

  sub_100005EDC();
}

void sub_100379EC8()
{
  sub_100005EF4();
  sub_100022E10();
  v2 = v1;
  sub_100005340();
  v6 = sub_10000C598(v3, v4, v5);
  sub_100005208(v6, v7);
  sub_100008598();
  if (v9)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v8;
  sub_10026D814(&unk_1006A6F00, &unk_100582CC0);
  v11 = sub_100007D68();
  if (v11)
  {
    v16 = sub_100008988();
    sub_100005208(v16, v2);
    sub_100008BC4();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    sub_100017ECC(v11, v12, v13, v14, v15, *v0);
    sub_100005EDC();
  }

  else
  {
    v19 = sub_10003FB84();
    sub_100327B38(v19, v20, v21, v22, v23, v24);
    sub_100005EDC();
  }
}

void sub_10037A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000D698();
  v45 = v18;
  v46 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = sub_10000FE04(v30, v28);
  sub_100005208(v31, v32);
  sub_100008598();
  if (v33)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(v23, v21);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v25 & 1, v15))
  {
    sub_100005208(v29, v27);
    sub_10000D4BC();
    if (!v35)
    {
      goto LABEL_14;
    }

    v16 = v34;
  }

  if (v17)
  {
    v45(0);
    sub_100008070();
    sub_100006048();

    v39(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, a11, a12, a13, a14);
  }

  else
  {
    v46(v16, v29, v27, v14, *v15);
    sub_100006048();
  }
}

void sub_10037A16C()
{
  sub_10003D4BC();
  sub_100006BD4();
  v3 = v2;
  v5 = sub_10002F66C(v2, v4);
  sub_100005208(v5, v6);
  sub_100008598();
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&unk_1006A6F10, &unk_100582CE0);
  v12 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = sub_100010088();
    sub_100005208(v14, v0);
    sub_100008BC4();
    if (!v16)
    {
      goto LABEL_12;
    }

    v10 = v15;
  }

  if (v11)
  {
    *(*(*v1 + 56) + v10) = v3 & 1;
    sub_100035CE8();
  }

  else
  {
    v17 = sub_10001AC20();
    sub_100328108(v17, v18, v19, v20, v21);
    sub_100035CE8();
  }
}

void sub_10037A280()
{
  sub_100005EF4();
  sub_100021F50(v3, v4, v5, v6, v7, v8);
  sub_100007FEC();
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598();
  if (v10)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(v1, v0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v2)
  {
    sub_1000276EC();
    sub_100005EDC();
  }

  else
  {
    v13 = sub_10000FC44();
    v14(v13);
    v15 = sub_10000534C();
    v16(v15);
    sub_100005EDC();
  }
}

void sub_10037A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10003D4BC();
  v13 = sub_100018270(v11, v12);
  sub_1002DA664(v13);
  sub_100008598();
  if (v14)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A7580, &unk_1005826E0);
  v15 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    v17 = sub_10000B8DC();
    sub_1002DA664(v17);
    sub_100035B58();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    sub_100035CE8();

    sub_10037A850(v19, v20);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100328138(v22, v23, v24, v25);
  }
}

void sub_10037A4DC(uint64_t a1, uint64_t a2)
{
  sub_10000FA90(a1, a2);
  sub_10003719C();
  sub_100008598();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_10026D814(&qword_1006A6ED8, &qword_1005826B0);
  if (sub_100006928())
  {
    sub_10003719C();
    sub_100035B58();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v3;
  if (v8)
  {
    *(*(v11 + 56) + 8 * v7) = v2;
    sub_10000D634();
  }

  else
  {
    sub_100327B74(v7, v17, v2, v11);
    sub_10000D634();

    v16 = v14;
  }
}

_OWORD *sub_10037A5D8(uint64_t a1, uint64_t a2)
{
  sub_10000FA90(a1, a2);
  sub_1002DA9A4();
  sub_100008598();
  if (v6)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for CFString(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  sub_10026D814(&qword_1006A6EB8, &qword_100582698);
  if (sub_100006928())
  {
    sub_1002DA9A4();
    sub_100035B58();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v3;
  if (v8)
  {
    sub_100009B7C((*(v11 + 56) + 32 * v7));
    sub_100006B30();
    sub_10000D634();

    return sub_10003EBF0(v12, v13);
  }

  else
  {
    sub_10032783C(v7, v18, v2, v11);
    sub_10000D634();

    return v16;
  }
}

void sub_10037A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  sub_100015AD8(v13, v14, v15);
  sub_100008598();
  if (v16)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000C464();
  v17 = sub_100007D68();
  if (v17)
  {
    v21 = sub_100008988();
    sub_100005208(v21, v10);
    sub_100008BC4();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    sub_100007794(v17, v18, v19, v20, *v11);
    sub_100006048();
  }

  else
  {
    v24 = sub_100018FA4();
    a10(v24);
    sub_100006048();
  }
}

uint64_t sub_10037A7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10037A910()
{
  result = qword_1006A6F78;
  if (!qword_1006A6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6F78);
  }

  return result;
}

uint64_t sub_10037AA1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000691C();
  v4(v3);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return a2;
}

unint64_t sub_10037AA7C()
{
  result = qword_1006A7058;
  if (!qword_1006A7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7058);
  }

  return result;
}

unint64_t sub_10037AAD0()
{
  result = qword_1006A7088;
  if (!qword_1006A7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7088);
  }

  return result;
}

uint64_t sub_10037AB64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_10002F66C(0, a2);
    sub_10026DCB4(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10037ABA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v6 = type metadata accessor for UUID();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v61 - v9;
  v10 = type metadata accessor for Participant();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - v14;
  v16 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037B1F8(a2, v15, &qword_1006A6018);
  v20 = sub_100015468(v15, 1, v16);
  v68 = a1;
  if (v20 == 1)
  {
    v21 = sub_10037B1A4(v15, &qword_1006A6018);
    v22 = sub_100004778(v21);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10057D6A0;
    v74 = a1;
    v24 = a1;
    sub_10026D814(&qword_1006A70D8, &qword_100582870);
    v25 = String.init<A>(reflecting:)();
    v27 = v26;
    *(v23 + 56) = &type metadata for String;
    v28 = sub_100009D88();
    v30 = v69;
    v29 = v70;
    v31 = v28;
    *(v23 + 64) = v28;
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    GroupSession.id.getter();
    (*(v30 + 16))(v71, v29, v6);
    v32 = String.init<A>(reflecting:)();
    v33 = v6;
    v34 = v32;
    v36 = v35;
    (*(v30 + 8))(v29, v33);
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v31;
    *(v23 + 72) = v34;
    *(v23 + 80) = v36;
    v37 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received initial remote attributes %@ from screen sharing activity (id: %@)", 75, 2, &_mh_execute_header, v22, v37, v23);
  }

  else
  {
    v63 = v16;
    v64 = v17;
    v38 = *(v17 + 32);
    v61 = v19;
    v39 = v38(v19, v15, v16);
    v62 = sub_100004778(v39);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10057E830;
    v74 = a1;
    v41 = a1;
    sub_10026D814(&qword_1006A70D8, &qword_100582870);
    v42 = String.init<A>(reflecting:)();
    v44 = v43;
    *(v40 + 56) = &type metadata for String;
    v65 = sub_100009D88();
    *(v40 + 64) = v65;
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    GroupSessionMessenger.MessageContext.source.getter();
    v45 = v70;
    Participant.id.getter();
    (*(v66 + 8))(v12, v67);
    v46 = v69;
    v47 = *(v69 + 16);
    v48 = v71;
    v47(v71, v45, v6);
    v49 = String.init<A>(reflecting:)();
    v51 = v50;
    v52 = *(v46 + 8);
    v52(v45, v6);
    v53 = v65;
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v53;
    *(v40 + 72) = v49;
    *(v40 + 80) = v51;
    GroupSession.id.getter();
    v47(v48, v45, v6);
    v54 = String.init<A>(reflecting:)();
    v56 = v55;
    v52(v45, v6);
    v57 = v65;
    *(v40 + 136) = &type metadata for String;
    *(v40 + 144) = v57;
    *(v40 + 112) = v54;
    *(v40 + 120) = v56;
    v58 = static os_log_type_t.default.getter();
    v59 = v62;
    os_log(_:dso:log:type:_:)("Received remote attributes message %@ from sender %@ for screen sharing activity (id: %@)", 89, 2, &_mh_execute_header, v62, v58, v40);

    (*(v64 + 8))(v61, v63);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result screenSharingActivityManager:v73 receivedUpdatedRemoteAttributes:v68 isLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10037B1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002F66C(a1, a2);
  sub_10026D814(v3, v4);
  sub_100008070();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10037B1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C598(a1, a2, a3);
  sub_10026D814(v4, v5);
  sub_100008070();
  v6 = sub_100006B30();
  v7(v6);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingActivityManagerErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10037B308()
{
  result = qword_1006A70E8;
  if (!qword_1006A70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A70E8);
  }

  return result;
}

id sub_10037B374()
{
  result = [objc_allocWithZone(type metadata accessor for CSDAnalyticsManager()) init];
  static CSDAnalyticsManager.sharedInstance = result;
  return result;
}

uint64_t *CSDAnalyticsManager.sharedInstance.unsafeMutableAddressor()
{
  if (qword_1006A0AB8 != -1)
  {
    sub_10000A248(&qword_1006A0AB8);
  }

  return &static CSDAnalyticsManager.sharedInstance;
}

id static CSDAnalyticsManager.sharedInstance.getter()
{
  if (qword_1006A0AB8 != -1)
  {
    sub_10000A248(&qword_1006A0AB8);
  }

  v1 = static CSDAnalyticsManager.sharedInstance;

  return v1;
}

uint64_t CSDAnalyticsManager.setAnalyticsManagerProvider(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_10037B4B4()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider] = 0;
  v18 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v0[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_tuFeatureFlags;
  *&v1[v7] = [objc_allocWithZone(TUFeatureFlags) init];
  v8 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_callDirectoryManager;
  *&v1[v8] = [objc_allocWithZone(CXCallDirectoryExtensionManager) init];
  v9 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_liveLookupManager;
  type metadata accessor for LiveCallerIDLookupManager();
  *&v1[v9] = static LiveCallerIDLookupManager.shared.getter();
  v10 = type metadata accessor for CSDAnalyticsManager();
  v26.receiver = v1;
  v26.super_class = v10;
  v11 = objc_msgSendSuper2(&v26, "init");
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v24 = sub_10037DB6C;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1003EF338;
  v23 = &unk_10062A920;
  v13 = _Block_copy(&aBlock);
  v14 = v11;

  xpc_activity_register("com.apple.telephonyutilities.callservicesd.analytics.daily", XPC_ACTIVITY_CHECK_IN, v13);
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v24 = sub_10037DB74;
  v25 = v15;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1003EF338;
  v23 = &unk_10062A970;
  v16 = _Block_copy(&aBlock);

  xpc_activity_register("com.apple.telephonyutilities.callservicesd.analytics.weekly", XPC_ACTIVITY_CHECK_IN, v16);
  _Block_release(v16);

  return v14;
}

void sub_10037B8C4(_xpc_activity_s *a1, void *a2)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    (*((swift_isaMask & *a2) + 0x98))(a1);
    return;
  }

  if (!state)
  {
    if (qword_1006A0B10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = xpc_activity_copy_criteria(a1);
    v10 = sub_1002914F8(v9);
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_10002741C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "XPC activity checked in. Criteria: %s", v7, 0xCu);
    sub_100009B7C(v8);

LABEL_12:

LABEL_13:

    return;
  }

  if (qword_1006A0B10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA5B0);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v15, "unhandled xpc activity state %ld", v16, 0xCu);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

void sub_10037BBA0(_xpc_activity_s *a1, void *a2)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    (*((swift_isaMask & *a2) + 0xA0))(a1);
    return;
  }

  if (!state)
  {
    if (qword_1006A0B10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = xpc_activity_copy_criteria(a1);
    v10 = sub_1002914F8(v9);
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_10002741C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "XPC activity checked in. Criteria: %s", v7, 0xCu);
    sub_100009B7C(v8);

LABEL_12:

LABEL_13:

    return;
  }

  if (qword_1006A0B10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA5B0);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v15, "unhandled xpc activity state %ld", v16, 0xCu);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10037BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10037BEE8, 0, 0);
}

uint64_t sub_10037BEE8()
{
  v1 = TUCallScreeningActivatable();
  v2 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  if (v1)
  {
    v3 = TUCallScreeningEnabled();
    v4.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v3).super.super.isa;
  }

  else
  {
    v4.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  }

  isa = v4.super.super.isa;
  v6 = v0[4];
  v0[6] = v2;
  v7 = [objc_allocWithZone(NSUserDefaults) init];
  v8 = [v7 silenceUnknownCallersEnabled];

  v9 = NSNumber.init(BOOLeanLiteral:)(v8).super.super.isa;
  v10 = [objc_allocWithZone(CSDCoreTelephonyClient) initWithQueue:*(v6 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_queue) shouldRegisterForECBMNotification:0];
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v6;
  sub_10026D814(&unk_1006A7160, &unk_1005829C8);
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v0[2];
  v13 = v0[3];
  CSDAnalyticsManager.sendFacetimeSettingsDailyEvent(lvmToggleStatus:silenceUnknownCallerStatus:greetingExistsStatus:)(isa, v9, v12, v13);

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_10037C0EC;

  return CSDAnalyticsManager.areCallDirectoryAppsEnabled()();
}

uint64_t sub_10037C0EC()
{
  sub_100006810();
  *(*v0 + 64) = v1;

  return _swift_task_switch(sub_10037C1E8, 0, 0);
}

uint64_t sub_10037C1E8()
{
  sub_1000066BC();
  v1 = *(v0 + 40);
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 64)).super.super.isa;
  CSDAnalyticsManager.areLiveLookupAppsEnabled()();
  v4 = NSNumber.init(BOOLeanLiteral:)(v3 & 1).super.super.isa;
  CSDAnalyticsManager.sendSpamFiltersDailyEvent(callDirectoryAppEnabled:liveLookupAppEnabled:)(isa, v4);

  xpc_activity_set_state(v1, 5);
  v5 = *(v0 + 8);

  return v5();
}

void sub_10037C2B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10037C354(_xpc_activity_s *a1, const char *a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA5B0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  xpc_activity_set_state(a1, 4);
  v14 = type metadata accessor for TaskPriority();
  sub_10000AF74(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v16 = v5;
  swift_unknownObjectRetain();
  sub_1002762F0();
}

uint64_t sub_10037C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10037C520, 0, 0);
}

uint64_t sub_10037C520()
{
  sub_100006810();
  v1 = *(v0 + 24);
  CSDAnalyticsManager.sendDefaultCallingWeeklyEvent()();
  xpc_activity_set_state(v1, 5);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CSDAnalyticsManager.sendFacetimeSettingsDailyEvent(lvmToggleStatus:silenceUnknownCallerStatus:greetingExistsStatus:)(_DWORD *a1, void *a2, void *a3, void *a4)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  *(swift_initStackObject() + 16) = xmmword_10057CA70;
  sub_10000A8EC();
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = v9;
  sub_10000A8EC();
  v10[6] = a1;
  v10[7] = 0xD00000000000001DLL;
  v10[8] = v11;
  v10[9] = a2;
  sub_10000A8EC();
  *(v12 + 80) = 0xD00000000000001BLL;
  *(v12 + 88) = v13;
  sub_10000A8EC();
  v14[12] = a3;
  v14[13] = 0xD00000000000001BLL;
  v14[14] = v15;
  v14[15] = a4;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5B0);
  sub_10000667C();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_100005274();
    v24 = sub_10000681C();
    v32 = v24;
    *a1 = 136315138;
    sub_1000113E4();
    v25 = Dictionary.description.getter();
    v27 = sub_10002741C(v25, v26, &v32);

    *(a1 + 1) = v27;
    sub_100005FCC(&_mh_execute_header, v28, v29, "Logging facetimesettings daily event to core analytics: %s");
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v30 = sub_1004557AC(v20);

  sub_1000517AC(0xD000000000000020, 0x800000010056F5F0, v30);
}

uint64_t CSDAnalyticsManager.sendSpamFiltersDailyEvent(callDirectoryAppEnabled:liveLookupAppEnabled:)(void *a1, void *a2)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  *(swift_initStackObject() + 16) = xmmword_10057D6A0;
  sub_10000A8EC();
  *(v5 + 32) = 0xD00000000000001ALL;
  *(v5 + 40) = v6;
  sub_10000A8EC();
  v7[6] = a1;
  v7[7] = 0xD00000000000001ALL;
  v7[8] = v8;
  v7[9] = a2;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v9 = a1;
  v10 = a2;
  v11 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA5B0);
  sub_10000667C();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    sub_100005274();
    v15 = sub_10000681C();
    v23 = v15;
    *v2 = 136315138;
    sub_1000113E4();
    v16 = Dictionary.description.getter();
    v18 = sub_10002741C(v16, v17, &v23);

    *(v2 + 4) = v18;
    sub_100005FCC(&_mh_execute_header, v19, v20, "Logging spamfilters daily event to core analytics: %s");
    sub_100009B7C(v15);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v21 = sub_1004557AC(v11);

  sub_1000517AC(0xD000000000000029, 0x800000010056F540, v21);
}

void sub_10037C9DC(void *a1@<X0>, uint64_t a2@<X1>, NSNumber *a3@<X8>)
{
  v5 = [a1 subscriptions];
  if (v5)
  {
    v6 = v5;
    sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v8.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v9.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  if (!v7)
  {
    goto LABEL_30;
  }

  if (!*(a2 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider))
  {

LABEL_30:
    a3->super.super.isa = v8.super.super.isa;
    a3[1].super.super.isa = v9.super.super.isa;
    return;
  }

  v27 = a3;
  v29 = *(a2 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider);
  isa = v8.super.super.isa;
  v28 = v9.super.super.isa;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    Set.Iterator.init(_cocoa:)();
    v7 = v31;
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v13 = v35;
  }

  else
  {
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
    swift_unknownObjectRetain();
    v12 = 0;
  }

  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_29:
      sub_100022DDC(v7);
      swift_unknownObjectRelease();
      a3 = v27;
      v8.super.super.isa = isa;
      v9.super.super.isa = v28;
      goto LABEL_30;
    }

LABEL_22:
    sub_1004450D4(v19);
    if (!v20)
    {
      goto LABEL_23;
    }

    if ([v19 slotID] == 1)
    {
      v21 = String._bridgeToObjectiveC()();

      v22 = [v29 hasCustomGreetingFor:v21];

      v23 = NSNumber.init(BOOLeanLiteral:)(v22).super.super.isa;
      isa = v23;
    }

    else
    {
      if ([v19 slotID] == 2)
      {
        v24 = String._bridgeToObjectiveC()();

        v25 = [v29 hasCustomGreetingFor:v24];

        v26 = NSNumber.init(BOOLeanLiteral:)(v25).super.super.isa;
        v28 = v26;
      }

      else
      {
      }

LABEL_23:
    }
  }

  v17 = v12;
  v18 = v13;
  if (v13)
  {
LABEL_18:
    v13 = (v18 - 1) & v18;
    v19 = *(*(v7 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v12 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v18 = *(v10 + 8 * v12);
    ++v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_10037CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12[19] + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_callDirectoryManager);
  v12[2] = v12;
  v12[7] = v12 + 18;
  v12[3] = sub_10037CEDC;
  v14 = swift_continuation_init();
  v12[17] = sub_10026D814(&unk_1006A7148, &qword_1005829C0);
  v12[10] = _NSConcreteStackBlock;
  v12[11] = 1107296256;
  v12[12] = sub_10037D268;
  v12[13] = &unk_10062A8D0;
  v12[14] = v14;
  [v13 extensionsWithCompletionHandler:v12 + 10];

  return _swift_continuation_await(v12 + 2, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_10037CEDC()
{
  sub_100006810();
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10037D100;
  }

  else
  {
    v2 = sub_10037CFE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10037CFE8()
{
  v1 = *(v0 + 144);
  v2 = sub_10000B6F4(v1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = [v5 state];

    v3 = v4 + 1;
  }

  while (v7 != 4);

  v8 = *(v0 + 8);

  v8(v2 != v4);
}

uint64_t sub_10037D100()
{
  sub_1000066BC();
  swift_willThrow();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5B0);
  sub_10000667C();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100005274();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve Call Directory Extensions with error: %@", v4, 0xCu);
    sub_10028CA5C(v5);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_10037D268(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_10046A8DC();
  }

  else
  {
    sub_100006AF0(0, &qword_1006A7158, CXCallDirectoryExtension_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_10046A8E0(v4, v7);
  }
}

void CSDAnalyticsManager.areLiveLookupAppsEnabled()()
{
  v0 = dispatch thunk of LiveCallerIDLookupManager.installedExtensions()();
  v1 = sub_10000B6F4(v0);
  v2 = 0;
  while (1)
  {
    v3 = v2;
    if (v1 == v2)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 isEnabled];

    v2 = v3 + 1;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t CSDAnalyticsManager.defaultCallingCategory()()
{
  v0 = defaultAppRelayTelephonySetting();
  if (!v0)
  {
    v2 = defaultCallingAppLSBundleIdentifier();
    if (v2)
    {
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v4._countAndFlagsBits = 0x6C7070612E6D6F63;
      v4._object = 0xE900000000000065;
      LOBYTE(v3) = String.hasPrefix(_:)(v4);

      return (v3 & 1) == 0;
    }

    if (qword_1006A0B10 != -1)
    {
      sub_1000085AC(&qword_1006A0B10);
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v1 = 2;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to retrieve LS default calling bundle identifier", v12, 2u);

      return v1;
    }

    return 2;
  }

  if (v0 == 1)
  {
    return 3;
  }

  if (v0 != 2)
  {
    if (qword_1006A0B10 != -1)
    {
      sub_1000085AC(&qword_1006A0B10);
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unrecognized default value passed into defaultAppRelayTelephonySetting, reporting error", v8, 2u);

      return 2;
    }

    return 2;
  }

  return 0;
}

uint64_t CSDAnalyticsManager.sendDefaultCallingWeeklyEvent()()
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  sub_10000A8EC();
  *(v2 + 32) = 0xD000000000000018;
  *(v2 + 40) = v3;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:qword_1005829D8[CSDAnalyticsManager.defaultCallingCategory()()]];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  sub_1000113E4();
  v4 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5B0);
  sub_10000667C();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v8 = sub_10000681C();
    v16 = v8;
    *v0 = 136315138;
    sub_1000113E4();
    v9 = Dictionary.description.getter();
    v11 = sub_10002741C(v9, v10, &v16);

    *(v0 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logging default calling weekly event to core analytics: %s");
    sub_100009B7C(v8);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v14 = sub_1004557AC(v4);

  sub_1000517AC(0xD000000000000031, 0x800000010056F4C0, v14);
}

id CSDAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDAnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10037D8C8()
{
  sub_1000066BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000A8CC(v1);

  return sub_10037BEC8(v2, v3, v4, v5, v6);
}

uint64_t sub_10037D96C()
{
  sub_100006810();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10037DA5C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10037DAA4()
{
  sub_1000066BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000A8CC(v1);

  return sub_10037C500(v2, v3, v4, v5, v6);
}

unint64_t sub_10037DB98()
{
  result = qword_1006A7170;
  if (!qword_1006A7170)
  {
    sub_100006AF0(255, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7170);
  }

  return result;
}

id sub_10037DC0C(void *a1)
{
  v3 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
  sub_10037EE3C();
  *&v1[v3] = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR___CSDApplicationInstallationObserver_uninstalledApplicationCache] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___CSDApplicationInstallationObserver_queue] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ApplicationInstallationObserver();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = objc_opt_self();
  v7 = v5;
  result = [v6 defaultWorkspace];
  if (result)
  {
    v9 = result;
    [result addObserver:v7];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10037DD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v3 + OBJC_IVAR___CSDApplicationInstallationObserver_queue);
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v16 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
    swift_beginAccess();
    v17 = *(v3 + v16);

    v18 = sub_100006694();
    v20 = sub_100023E48(v18, v19, v17);

    if (!v20)
    {
      v21 = OBJC_IVAR___CSDApplicationInstallationObserver_uninstalledApplicationCache;
      swift_beginAccess();
      v22 = *(v3 + v21);

      v23 = sub_100006694();
      v25 = sub_1004226B4(v23, v24, v22);

      if (!v25)
      {
        v26 = objc_allocWithZone(LSApplicationRecord);

        v27 = sub_100006694();
        v29 = sub_100428E24(v27, v28, 1);
        v20 = v29;
        if (v29)
        {
          swift_beginAccess();
          v35 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          var88[0] = *(v3 + v16);
          sub_100379CFC(v35, a1, a2, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42);
          *(v3 + v16) = var88[0];
          swift_endAccess();
        }

        else
        {
          swift_beginAccess();

          sub_10001E84C(var88, a1, a2, v30, v31, v32, v33, v34, v41, v42, v43, var88[0], var88[1], var88[2], var88[3], var88[4], var88[5], var88[6], var88[7], var88[8], var88[9], var88[10], var88[11], var88[12], var88[13], var88[14], var88[15], var88[16], var88[17], var88[18]);
          swift_endAccess();

          return 0;
        }
      }
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037E02C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = *(v2 + OBJC_IVAR___CSDApplicationInstallationObserver_queue);
  *(v10 - v9) = v11;
  (*(v7 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = sub_100006694();
  result = v14(v13);
  if (v11)
  {
    v16 = sub_10037DD3C(a1, a2);
    v17 = v16;
    if (v16)
    {
    }

    return v17 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10037E1F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationInstallationObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10037E2AC(void *a1, uint64_t a2)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA568);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44[0] = v8;
      *v7 = 136315138;
      v9 = Array.description.getter();
      v11 = sub_10002741C(v9, v10, v44);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "applicationsDidUninstall: %s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v12 = sub_1004229F4(a1);
    if (!v12)
    {
      osloga = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v27, "Failed to convert notifications' appProxies to LSApplicationProxy", v28, 2u);
      }

      return;
    }

    v13 = v12;
    v14 = sub_10000B6F4(v12);
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v44[0] = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v16 = 0;
    a1 = v44[0];
    v40 = v13;
    oslog = (v13 & 0xC000000000000001);
    v39 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (oslog)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v39 + 16))
        {
          goto LABEL_34;
        }

        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_1002C89F0(v18);
      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = v20;
      v23 = v21;

      v44[0] = a1;
      v25 = a1[2];
      v24 = a1[3];
      if (v25 >= v24 >> 1)
      {
        sub_10039A2E0(v24 > 1, v25 + 1, 1);
        a1 = v44[0];
      }

      a1[2] = v25 + 1;
      v26 = &a1[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v16;
      v13 = v40;
      if (v17 == v15)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_24:
  v29 = a1[2];
  if (v29)
  {
    v30 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
    v31 = a1 + 5;
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      swift_beginAccess();

      v34 = sub_100005208(v32, v33);
      v36 = v35;

      if (v36)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *(a2 + v30);
        *(a2 + v30) = 0x8000000000000000;
        v38 = *(v43 + 24);
        sub_10026D814(&qword_1006A6F70, &qword_100582748);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38);

        sub_10037EE3C();
        _NativeDictionary._delete(at:)();
        *(a2 + v30) = v43;
      }

      swift_endAccess();
      v31 += 2;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_10037E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v27 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = *&v4[OBJC_IVAR___CSDApplicationInstallationObserver_queue];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = a4;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  v24 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v9 + 8))(v13, v7);
  (*(v15 + 8))(v19, v27);
}

void sub_10037E9A4(void *a1, uint64_t a2)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA568);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      v8 = Array.description.getter();
      v10 = sub_10002741C(v8, v9, v34);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "applicationsDidInstall: %s", v6, 0xCu);
      sub_100009B7C(v7);
    }

    v11 = sub_1004229F4(a1);
    if (!v11)
    {
      osloga = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v27, "Failed to convert notifications' appProxies to LSApplicationProxy", v28, 2u);
      }

      return;
    }

    v12 = v11;
    v13 = sub_10000B6F4(v11);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v34[0] = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v13 & ~(v13 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v15 = 0;
    a1 = v34[0];
    oslog = (v12 & 0xC000000000000001);
    v31 = v12 & 0xFFFFFFFFFFFFFF8;
    v16 = v12;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (oslog)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v31 + 16))
        {
          goto LABEL_32;
        }

        v18 = *(v12 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = sub_1002C89F0(v18);
      if (!v21)
      {
        goto LABEL_35;
      }

      v22 = v20;
      v23 = v21;

      v34[0] = a1;
      v25 = a1[2];
      v24 = a1[3];
      if (v25 >= v24 >> 1)
      {
        sub_10039A2E0(v24 > 1, v25 + 1, 1);
        a1 = v34[0];
      }

      a1[2] = v25 + 1;
      v26 = &a1[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v15;
      v12 = v16;
      if (v17 == v14)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_24:
  v29 = a1[2];
  if (v29)
  {
    v30 = a1 + 5;
    do
    {
      swift_beginAccess();

      sub_100428F00();
      swift_endAccess();

      v30 += 2;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_10037EDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  v10 = sub_100006694();
  sub_10037E750(v10, v11, a5, a6);
}

unint64_t sub_10037EE3C()
{
  result = qword_1006A7220;
  if (!qword_1006A7220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7220);
  }

  return result;
}

uint64_t sub_10037EE88()
{

  return _swift_deallocObject(v0);
}

void sub_10037EED0()
{
  sub_100005EF4();
  v72 = v1;
  v73 = v0;
  type metadata accessor for LanguageManager();
  sub_100007FEC();
  v75 = v3;
  v76 = v2;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v74 = v5 - v4;
  v6 = type metadata accessor for DisclosureRequest(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  sub_100007BAC();
  v71 = v8 - v9;
  sub_100006838();
  __chkstk_darwin(v10);
  v70 = &v66 - v11;
  sub_100006838();
  __chkstk_darwin(v12);
  v78 = &v66 - v13;
  sub_100006838();
  __chkstk_darwin(v14);
  v77 = &v66 - v15;
  v16 = type metadata accessor for Locale();
  sub_100007FEC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100007FDC();
  v22 = v21 - v20;
  static Locale.current.getter();
  v23 = Locale.identifier.getter();
  v25 = v24;
  v26 = *(v18 + 8);
  v67 = v16;
  v26(v22, v16);
  v68 = v26;
  v69 = v18 + 8;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v27;

  v28._countAndFlagsBits = 47;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001005613C0;
  String.append(_:)(v29);

  v30._countAndFlagsBits = v23;
  v30._object = v25;
  String.append(_:)(v30);

  v31 = v79;
  v66 = v80;
  static Locale.current.getter();
  v32 = Locale.identifier.getter();
  v34 = v33;
  v26(v22, v16);
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v35;

  v36._countAndFlagsBits = 47;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0xD000000000000013;
  v37._object = 0x80000001005613E0;
  String.append(_:)(v37);

  v38._countAndFlagsBits = v32;
  v38._object = v34;
  String.append(_:)(v38);

  v39 = v79;
  v40 = v80;
  v41 = v77;
  static Locale.current.getter();
  v42 = &v41[v7[11]];
  v42[3] = &type metadata for CallDisclosureFileLocation;
  v42[4] = &off_100631AF0;
  v43 = v66;
  *v42 = v31;
  v42[1] = v43;
  *v41 = 0;
  v44 = &v41[v7[8]];
  *v44 = 0xD000000000000023;
  v44[1] = 0x8000000100564B30;
  v45 = &v41[v7[9]];
  *v45 = 0xD000000000000024;
  v45[1] = 0x8000000100564AD0;
  v46 = &v41[v7[10]];
  *v46 = 0x6E6172546C6C6143;
  v46[1] = 0xEF6E6F6974616C73;
  v41[v7[12]] = 1;
  v47 = v78;
  static Locale.current.getter();
  v48 = &v47[v7[11]];
  v48[3] = &type metadata for CallDisclosureFileLocation;
  v48[4] = &off_100631AF0;
  *v48 = v39;
  v48[1] = v40;
  *v47 = 1;
  v49 = &v47[v7[8]];
  *v49 = 0xD000000000000022;
  v49[1] = 0x8000000100564B60;
  v50 = &v47[v7[9]];
  *v50 = 0xD000000000000023;
  v50[1] = 0x8000000100564AA0;
  v51 = &v47[v7[10]];
  *v51 = 0x6E6172546C6C6143;
  v51[1] = 0xEF6E6F6974616C73;
  v47[v7[12]] = 1;
  sub_1003812B0(v41, v70);
  sub_1003812B0(v47, v71);
  v72 = v72;
  v73 = v73;
  sub_1002E624C();
  type metadata accessor for TranslationDisclosureDataSource(0);
  v52 = swift_allocObject();
  sub_10037F514();
  v53 = v74;
  v54 = v75;
  v55 = v76;
  (*(v75 + 16))(v74, v52 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_languageManager, v76);

  static Locale.current.getter();
  v56 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v70 = v57;
  v71 = v56;
  v59 = v58;
  v61 = v67;
  v60 = v68;
  v68(v22, v67);
  (*(v54 + 8))(v53, v55);
  v62 = *(v52 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_speechAssetManager);

  static Locale.current.getter();
  v63 = Locale.identifier.getter();
  v65 = v64;
  v60(v22, v61);
  v79 = v63;
  v80 = v65;
  v81 = v71;
  v82 = v59;
  v83 = v70;
  sub_100299234();

  sub_1002B66D4(v78);
  sub_1002B66D4(v77);
  sub_100005EDC();
}

void sub_10037F514()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v25 = v5;
  v26 = v4;
  v24 = v6;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DisclosureRequest(0);
  __chkstk_darwin(v11 - 8);
  sub_100007FDC();
  v14 = v13 - v12;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v15 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator;
  type metadata accessor for Locale();
  type metadata accessor for DisclosureGenerator(0);
  sub_1000085CC();
  sub_100381314(v16, v17, &protocol conformance descriptor for Locale);
  *(v1 + v15) = sub_100015B14();
  v18 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator;
  *(v1 + v18) = sub_100015B14();
  v1[2] = v10;
  v1[3] = v8;
  v1[4] = v24;
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_speechAssetManager) = v3;
  sub_1003812B0(v26, v14);
  v19 = v10;
  swift_unknownObjectRetain();
  v20 = v3;
  sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  swift_allocObject();
  swift_allocObject();
  sub_10046C380();
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStartTranslationDisclosureGenerator) = v21;
  sub_1003812B0(v25, v14);
  v22 = v19;
  sub_1002E624C();
  swift_allocObject();
  swift_allocObject();
  sub_10046C380();
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStopTranslationDisclosureGenerator) = v23;
  [*&v20[OBJC_IVAR___CSDSpeechAssetManager_delegates] addObject:v1];

  swift_unknownObjectRelease();
  sub_1002B66D4(v25);
  sub_1002B66D4(v26);
  sub_100005EDC();
}

void sub_10037F794()
{
  sub_100005EF4();
  v56 = v1;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DisclosureRequest(0);
  __chkstk_darwin(v11);
  sub_100007BAC();
  v53 = v12 - v13;
  sub_100006838();
  __chkstk_darwin(v14);
  v54 = &v53 - v15;
  sub_100006838();
  __chkstk_darwin(v16);
  v55 = v0;
  v17 = *(v0 + 16);
  sub_1003812B0(v3, &v53 - v18);
  v19 = v17;
  sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  swift_allocObject();
  type metadata accessor for DisclosureGenerator(0);
  swift_allocObject();
  v20 = v11;
  sub_10046C380();
  static Locale.current.getter();
  sub_1000085CC();
  sub_100381314(v21, v22, &protocol conformance descriptor for Locale);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v10, v4);
  if ((v23 & 1) == 0)
  {
    v24 = (v3 + *(v11 + 28));
    v25 = *v24;
    v26 = v24[1];
    v27 = *v24 == 0xD000000000000024 && 0x8000000100564AD0 == v26;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v28 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator;
      sub_100007D88();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000EA90(isUniquelyReferenced_nonNull_native);
      *(v3 + v28) = v57;
      swift_endAccess();
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v30 = type metadata accessor for Logger();
      sub_10000AF9C(v30, qword_1006BA670);
      v31 = v54;
      sub_1003812B0(v3, v54);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = sub_100005274();
        v35 = sub_100005E84();
        v58[0] = v35;
        *v34 = 136315138;
        v36 = (v31 + *(v20 + 28));
        v37 = *v36;
        v38 = v36[1];

        sub_1002B66D4(v31);
        v39 = sub_10002741C(v37, v38, v58);

        *(v34 + 4) = v39;
        v40 = "add %s to remoteLocaleToStartDisclosureGenerator";
        v41 = v33;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v32, v41, v40, v34, 0xCu);
        sub_100009B7C(v35);
        sub_100005F40(v35);
        sub_100005F40(v34);

        goto LABEL_14;
      }

      v42 = v31;
      goto LABEL_13;
    }

    v43 = v25 == 0xD000000000000023 && 0x8000000100564AA0 == v26;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v44 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator;
      sub_100007D88();

      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000EA90(v45);
      *(v3 + v44) = v57;
      swift_endAccess();
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v46 = type metadata accessor for Logger();
      sub_10000AF9C(v46, qword_1006BA670);
      v47 = v53;
      sub_1003812B0(v3, v53);
      v32 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v48))
      {
        v34 = sub_100005274();
        v35 = sub_100005E84();
        v58[0] = v35;
        *v34 = 136315138;
        v49 = (v47 + *(v20 + 28));
        v50 = *v49;
        v51 = v49[1];

        sub_1002B66D4(v47);
        v52 = sub_10002741C(v50, v51, v58);

        *(v34 + 4) = v52;
        v40 = "add %s to remoteLocaleToStopDisclosureGenerator";
        v41 = v48;
        goto LABEL_11;
      }

      v42 = v47;
LABEL_13:
      sub_1002B66D4(v42);
    }
  }

LABEL_14:
  sub_100005EDC();
}

void sub_10037FC84()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Locale();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA670);
  (*(v4 + 16))(v8, v1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100005274();
    v13 = sub_100005E84();
    v20 = v13;
    *v12 = 136315138;
    sub_1000085CC();
    sub_100381314(v14, v15, &protocol conformance descriptor for Locale);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v4 + 8))(v8, v2);
    v19 = sub_10002741C(v16, v18, &v20);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "locale %s changed- regenerate local disclosures", v12, 0xCu);
    sub_100009B7C(v13);
    sub_100005F40(v13);
    sub_100005F40(v12);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  Locale.identifier.getter();

  sub_10046D004();

  Locale.identifier.getter();

  sub_10046D004();

  sub_100005EDC();
}

uint64_t sub_100380014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA670);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = sub_100035B68();
    v15 = v7;
    *v3 = 136315394;

    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v15);

    *(v3 + 4) = v10;
    *(v3 + 12) = 2080;
    type metadata accessor for TUTranscriptionAvailability(0);
    v11 = String.init<A>(reflecting:)();
    v13 = sub_10002741C(v11, v12, &v15);

    *(v3 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "asset (%s, %s) changed- regenerate local disclosures", v3, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v7);
    sub_100005F40(v3);
  }

  sub_10046D004();

  sub_10046D004();
}

uint64_t sub_100380280()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_languageManager;
  v2 = type metadata accessor for LanguageManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100380340()
{
  sub_100380280();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TranslationDisclosureDataSource(uint64_t a1)
{
  result = qword_1006A7280;
  if (!qword_1006A7280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003803EC(uint64_t a1)
{
  result = type metadata accessor for LanguageManager();
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

uint64_t sub_1003804CC(void *a1)
{
  v2 = (*(v1 + *a1) + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v3 = *v2;
  v4 = v2[1];

  sub_10046BA00(v3, v4);
}

uint64_t sub_100380554@<X0>(char a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  sub_1002DA5A4();
  if ((v9 & 1) == 0)
  {

LABEL_6:
    v13 = 1;
    goto LABEL_9;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v12 = *(v10 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v11 = *(v10 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

  if (a1)
  {
    sub_10046BB1C(v12, v11);
  }

  else
  {
    sub_10046BA00(v12, v11);
  }

  v13 = 0;
LABEL_9:
  v14 = type metadata accessor for URL();
  return sub_10000AF74(a3, v13, 1, v14);
}

void sub_100380660()
{
  sub_100005EF4();
  v41 = v0;
  v2 = v1;
  v3 = type metadata accessor for Locale();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007BAC();
  v9 = v7 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - v12;
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA670);
  v17 = *(v5 + 16);
  v17(v15, v2, v3);
  v17(v13, v2, v3);
  v17(v9, v2, v3);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v2;
    v21 = v20;
    v39 = sub_100005E84();
    v42 = v39;
    *v21 = 136315906;
    sub_1000085CC();
    sub_100381314(v22, v23, &protocol conformance descriptor for Locale);
    v38 = v19;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v18;
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v15, v3);
    v28 = sub_10002741C(v24, v26, &v42);

    *(v21 + 4) = v28;
    *(v21 + 12) = 1024;
    sub_100380A84(v13, 0, &OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator, "checking remote %s start disclosure file exists at: %s, hasEndTone: %{BOOL}d", "remote %s start disclosure file does not exist", v37);
    LOBYTE(v28) = v29;

    v27(v13, v3);
    *(v21 + 14) = v28 & 1;

    *(v21 + 18) = 1024;
    sub_100380A84(v9, 0, &OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator, "checking remote %s stop disclosure file exists at: %s, hasEndTone: %{BOOL}d", "remote %s stop disclosure file does not exist", v37);
    LOBYTE(v28) = v30;

    v27(v9, v3);
    *(v21 + 20) = v28 & 1;

    *(v21 + 24) = 1024;
    v31 = v41;
    *(v21 + 26) = v41 & 1;
    v32 = v37;
    _os_log_impl(&_mh_execute_header, v37, v38, "locale: %s, remote start: %{BOOL}d, remote stop: %{BOOL}d, hasEndTone: %{BOOL}d", v21, 0x1Eu);
    v33 = v39;
    sub_100009B7C(v39);
    sub_100005F40(v33);
    v34 = v21;
    v2 = v40;
    sub_100005F40(v34);
  }

  else
  {

    v35 = *(v5 + 8);
    v35(v9, v3);

    v35(v13, v3);

    v35(v15, v3);
    v31 = v41;
  }

  sub_100380A84(v2, v31 & 1, &OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator, "checking remote %s start disclosure file exists at: %s, hasEndTone: %{BOOL}d", "remote %s start disclosure file does not exist", v37);
  if (v36)
  {
    sub_100380A84(v2, v31 & 1, &OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator, "checking remote %s stop disclosure file exists at: %s, hasEndTone: %{BOOL}d", "remote %s stop disclosure file does not exist", v37);
  }

  sub_100005EDC();
}

void sub_100380A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  sub_100005EF4();
  v7 = v6;
  v89 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for URL();
  sub_100007FEC();
  v92 = v16;
  v93 = v15;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v91 = v18 - v17;
  v94 = type metadata accessor for Locale();
  sub_100007FEC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100007BAC();
  v24 = v22 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v87 - v27;
  __chkstk_darwin(v26);
  v30 = &v87 - v29;
  v31 = *v10;
  swift_beginAccess();
  v90 = v5;
  v32 = *(v5 + v31);

  v33 = sub_1002CB36C(v14, v32);

  if (v33)
  {
    if (v12)
    {
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v34 = type metadata accessor for Logger();
      sub_10000AF9C(v34, qword_1006BA670);
      sub_10000E7B0();
      v35 = v94;
      v36(v30, v14, v94);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        swift_slowAlloc();
        v88 = sub_100035B68();
        v95 = v88;
        *v24 = 136315650;
        sub_1000085CC();
        sub_100381314(v39, v40, &protocol conformance descriptor for Locale);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v20 + 8))(v30, v35);
        sub_10001725C();
        sub_10000C768();
        *(v24 + 4) = v41;
        *(v24 + 12) = 2080;
        v42 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
        v43 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

        v44 = v91;
        sub_10046BB1C(v42, v43);

        sub_1000103C8();
        sub_100381314(v45, v46, &protocol conformance descriptor for URL);
        v47 = v93;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10000FE24();
        v48(v44, v47);
        sub_10001725C();
        sub_10000C768();
        *(v24 + 14) = v42;
        *(v24 + 22) = 1024;
        *(v24 + 24) = 1;
        sub_100016310(&_mh_execute_header, v49, v38);
        v50 = v88;
        swift_arrayDestroy();
        sub_100005F40(v50);
        sub_100005F40(v24);
      }

      else
      {

        (*(v20 + 8))(v30, v35);
        v14 = v92;
        v47 = v93;
        v44 = v91;
      }

      v83 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v84 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);
      swift_unknownObjectRetain();

      sub_10046BB1C(v83, v84);

      sub_100272258();

      swift_unknownObjectRelease();
      (*(v14 + 8))(v44, v47);
    }

    else
    {
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v66 = type metadata accessor for Logger();
      sub_10000AF9C(v66, qword_1006BA670);
      sub_10000E7B0();
      v67 = v94;
      v68(v28, v14, v94);

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        swift_slowAlloc();
        v88 = sub_100035B68();
        v95 = v88;
        *v24 = 136315650;
        sub_1000085CC();
        sub_100381314(v71, v72, &protocol conformance descriptor for Locale);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v20 + 8))(v28, v67);
        sub_10001725C();
        sub_10000C768();
        *(v24 + 4) = v73;
        *(v24 + 12) = 2080;
        v74 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
        v75 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

        v76 = v91;
        sub_10046BA00(v74, v75);

        sub_1000103C8();
        sub_100381314(v77, v78, &protocol conformance descriptor for URL);
        v79 = v93;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10000FE24();
        v80(v76, v79);
        sub_10001725C();
        sub_10000C768();
        *(v24 + 14) = v74;
        *(v24 + 22) = 1024;
        *(v24 + 24) = 0;
        sub_100016310(&_mh_execute_header, v81, v70);
        v82 = v88;
        swift_arrayDestroy();
        sub_100005F40(v82);
        sub_100005F40(v24);
      }

      else
      {

        (*(v20 + 8))(v28, v67);
        v14 = v92;
        v79 = v93;
        v76 = v91;
      }

      v85 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v86 = *(v33 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);
      swift_unknownObjectRetain();

      sub_10046BA00(v85, v86);

      sub_100272258();

      swift_unknownObjectRelease();
      (*(v14 + 8))(v76, v79);
    }
  }

  else
  {
    v51 = v7;
    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v52 = type metadata accessor for Logger();
    sub_10000AF9C(v52, qword_1006BA670);
    sub_10000E7B0();
    v53 = v14;
    v54 = v94;
    v55(v24, v53, v94);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_100005274();
      v59 = sub_100005E84();
      v95 = v59;
      *v58 = 136315138;
      sub_1000085CC();
      sub_100381314(v60, v61, &protocol conformance descriptor for Locale);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v20 + 8))(v24, v54);
      v65 = sub_10002741C(v62, v64, &v95);

      *(v58 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, v51, v58, 0xCu);
      sub_100009B7C(v59);
      sub_100005F40(v59);
      sub_100005F40(v58);
    }

    else
    {

      (*(v20 + 8))(v24, v54);
    }
  }

  sub_100005EDC();
}

uint64_t sub_1003812B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100381314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10038155C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 deviceForFromID:v4];

  return v5;
}

id sub_100381680()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

_BYTE *sub_100381740(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for MediaRemoteStateValidator(uint64_t a1)
{
  result = qword_1006A74E8;
  if (!qword_1006A74E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100381890(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100381904()
{
  sub_100005358();
  if (*(v3 + 24))
  {
    sub_10003EBF0(v3, v24);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_100378104();
    sub_10004A000(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23);
  }

  else
  {
    sub_100009A04(v3, &unk_1006A2D10, &unk_10057D940);
    sub_1000077A4();
    sub_1002DB874();
    if (v12)
    {
      sub_10000FAAC();
      sub_10000A268();
      v13 = sub_10026D814(&qword_1006A6E98, &qword_100582678);
      sub_10000A6F0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
      sub_10001E410();
      sub_10003EBF0((v21 + 32 * v2), v24);
      type metadata accessor for TTSAssetProperty(0);
      sub_100033024(&unk_1006A7550, type metadata accessor for TTSAssetProperty, &unk_10057C870);
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    sub_100009A04(v24, &unk_1006A2D10, &unk_10057D940);
  }
}

void sub_100381A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  sub_100007BF0(v6);
  sub_100006688();
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  if (sub_100015468(a1, 1, v10) == 1)
  {
    sub_100009A04(a1, &qword_1006A76C0, &unk_100582DC0);
    v17 = sub_1002DA664(a2);
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;
      v21 = *(v25 + 24);
      sub_10026D814(&qword_1006A7048, &qword_100582818);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21);
      v22 = v25;
      sub_1003853D4(*(v25 + 56) + *(v12 + 72) * v19, v9, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      _NativeDictionary._delete(at:)();
      v23 = 0;
      *v3 = v22;
    }

    else
    {
      v23 = 1;
    }

    sub_10000AF74(v9, v23, 1, v10);
    sub_100009A04(v9, &qword_1006A76C0, &unk_100582DC0);
  }

  else
  {
    sub_1003853D4(a1, v16, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_100378214();
    *v3 = v25;
  }
}

uint64_t sub_100381C84()
{
  sub_100008994();
  v3 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  sub_100006948();
  sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v5);
  v6 = sub_100007DAC();
  if (sub_100015468(v6, v7, v8) == 1)
  {
    sub_100009F18();
    sub_100009A04(v9, v10, v11);
    v12 = sub_10000F2EC();
    sub_1003836F0(v12, v13, v14);

    sub_100009F18();
    return sub_100009A04(v15, v16, v17);
  }

  else
  {
    sub_1003281EC(v1, v2);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_10000C780();
    sub_10037841C(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);

    *v0 = v29;
  }

  return result;
}

void sub_100381DC0()
{
  sub_100005358();
  if (*(v3 + 8))
  {
    sub_100328314(v3, v35);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_10037919C(v4, v5, v6, v7, v8, v9, v10, v11, v31, v33);
    sub_10004A000(v12, v13, v14, v15, v16, v17, v18, v19, v32, v34);
  }

  else
  {
    sub_100009A04(v3, &unk_1006A7640, &qword_100582D78);
    v20 = sub_1000077A4();
    sub_1002DA664(v20);
    if (v21)
    {
      sub_10000FAAC();
      sub_10000A268();
      v22 = sub_10026D814(&unk_1006A6FE0, &unk_100582D80);
      sub_10000A6F0(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33);
      sub_10001E410();
      sub_100328314(v30 + 16 * v2, v35);
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v35[0] = 0;
      v35[1] = 0;
    }

    sub_100009A04(v35, &unk_1006A7640, &qword_100582D78);
  }
}

uint64_t sub_100381EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v6);
  sub_100006688();
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  sub_100008070();
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  if (sub_100015468(a1, 1, v14) == 1)
  {
    sub_100006844();
    sub_100009A04(v15, v16, v17);
    sub_100383F24(v9);
    type metadata accessor for UUID();
    sub_100008070();
    (*(v18 + 8))(a2);
    sub_100006844();
    return sub_100009A04(v19, v20, v21);
  }

  else
  {
    sub_1003853D4(a1, v13, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_10037962C();
    *v3 = v25;
    type metadata accessor for UUID();
    sub_100008070();
    return (*(v23 + 8))(a2);
  }
}

void sub_100382074()
{
  sub_100005358();
  if (*(v2 + 8))
  {
    sub_100009A04(v2, &qword_1006A5E58, &qword_100580BD0);
    sub_1000077A4();
    v3 = sub_1002DB874();
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100017278();
      sub_10026D814(&qword_1006A6FB0, &unk_100582D50);
      sub_10000EAB8();
      sub_1000076CC();
      sub_10001E410();
      sub_1003282B8(v7 + 8 * v6, &v28);
      sub_100335350();
      sub_100007968();
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v28 = 0;
    }

    v29 = (v5 & 1) == 0;
    sub_100009A04(&v28, &qword_1006A5E58, &qword_100580BD0);
  }

  else
  {
    sub_1003282B8(v2, &v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_100379774(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26);
    sub_10004A000(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }
}

uint64_t sub_10038218C()
{
  sub_100008994();
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  sub_100006948();
  v5 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v9 = sub_100007DAC();
  if (sub_100015468(v9, v10, v5) == 1)
  {
    sub_100009F18();
    sub_100009A04(v11, v12, v13);
    v14 = sub_10000F2EC();
    sub_10038447C(v14, v15, v16, v17, v18, v19, v20, v21, v34, v35);

    sub_100009F18();
    return sub_100009A04(v22, v23, v24);
  }

  else
  {
    (*(v7 + 32))(v2, v1, v5);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_10000C780();
    sub_100379FDC(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40);

    *v0 = v36;
  }

  return result;
}

void sub_1003822F8()
{
  sub_100005358();
  if (*(v2 + 8))
  {
    sub_100009A04(v2, &qword_1006A7588, &qword_100582CB8);
    v3 = sub_1000077A4();
    v4 = sub_1002DA664(v3);
    v6 = v5;
    if (v5)
    {
      v7 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100017278();
      sub_10026D814(&qword_1006A7580, &unk_1005826E0);
      sub_10000EAB8();
      sub_1000076CC();
      sub_10001E410();
      sub_10032825C(v8 + 8 * v7, &v29);
      sub_100007968();
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v29 = 0;
    }

    v30 = (v6 & 1) == 0;
    sub_100009A04(&v29, &qword_1006A7588, &qword_100582CB8);
  }

  else
  {
    sub_10032825C(v2, &v29);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_10037A3B0(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27);
    sub_10004A000(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28);
  }
}

void *sub_100382410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 + 32;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    sub_100009AB0(v3, v17);
    v5 = v4[2];
    if (!v5 || (v4[6 * v5 + 3] & 1) == 0)
    {
      v6 = v18;
      v7 = v19;
      sub_100009B14(v17, v18);
      sub_100382724(v6, v7, &v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470094();
        v4 = v12;
      }

      v8 = v4[2];
      if (v8 >= v4[3] >> 1)
      {
        sub_100470094();
        v4 = v13;
      }

      v4[2] = v8 + 1;
      v9 = &v4[6 * v8];
      v10 = v15;
      v11 = v16[0];
      *(v9 + 57) = *(v16 + 9);
      v9[2] = v10;
      v9[3] = v11;
    }

    sub_100009B7C(v17);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_100382550(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A1964(v4, v18);
      sub_100009AB0(v18, &v15);
      sub_100009B14(&v15, v17);
      swift_getDynamicType();
      sub_100009B7C(&v15);
      sub_10026D814(&unk_1006A76B0, &qword_100582DB8);
      v15 = String.init<A>(describing:)();
      v16 = v5;
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v7);

      v8 = v15;
      v9 = v16;
      sub_1002A19C0(v18);
      v19 = v2;
      v11 = v2[2];
      v10 = v2[3];
      if (v11 >= v10 >> 1)
      {
        sub_10039A2E0(v10 > 1, v11 + 1, 1);
        v2 = v19;
      }

      v2[2] = v11 + 1;
      v12 = &v2[2 * v11];
      v12[4] = v8;
      v12[5] = v9;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  v18[0] = v2;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_100296FEC();
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t sub_100382724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  v6 = sub_1002A1D5C(a3);
  (*(*(a1 - 8) + 16))(v6, v3, a1);
  v7 = sub_10000F2EC();
  result = v8(v7);
  *(a3 + 40) = result & 1;
  return result;
}

BOOL sub_1003827E8(void *a1)
{
  v1 = sub_1002F532C(a1);
  v2 = sub_100384754(v1);

  v3 = v2[2];

  return v3 != 0;
}

uint64_t sub_100382854(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  LOBYTE(v2) = sub_1003833DC(v3, v5);

  if (v2)
  {
    return 1;
  }

  v7 = sub_1002C89F0(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_1003833DC(v7, v8);

  return v9 & 1;
}

BOOL sub_100382928(void *a1)
{
  v3 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  sub_1002C89F0(a1);
  if (!v19)
  {
    return 0;
  }

  [a1 processIdentifier];
  v20 = MRNowPlayingClientCreate();
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  MRMediaRemoteGetLocalOrigin();
  v22 = MRNowPlayingPlayerPathCreate();
  if (!v22)
  {
LABEL_7:
    j__CFRelease(v21);
    return 0;
  }

  v23 = v22;
  v24 = swift_allocObject();
  v40 = v5;
  v25 = v24;
  *(v24 + 16) = 0;
  v39[1] = v24 + 16;
  v26 = dispatch_semaphore_create(0);
  v39[2] = v1;
  v42 = v23;
  v27 = v26;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v18, enum case for DispatchQoS.QoSClass.userInitiated(_:), v12);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v18, v12);
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = v27;
  aBlock[4] = sub_100385324;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100382D30;
  aBlock[3] = &unk_10062ADD8;
  v30 = _Block_copy(aBlock);
  v41 = v25;

  v31 = v27;
  v32 = v42;
  v33 = v31;

  MRMediaRemoteGetPlaybackStateForPlayer();
  _Block_release(v30);

  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v40 + 8);
  v34(v9, v3);
  OS_dispatch_semaphore.wait(timeout:)();
  v34(v11, v3);
  v35 = static DispatchTimeoutResult.== infix(_:_:)();

  if ((v35 & 1) == 0)
  {

    j__CFRelease(v32);
    goto LABEL_7;
  }

  swift_beginAccess();
  v36 = *(v41 + 16);

  v37 = v36 == 1;
  j__CFRelease(v32);
  j__CFRelease(v21);
  return v37;
}

Swift::Int sub_100382CDC(int a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100382D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100382D94()
{
  v1 = v0;
  v2 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  __chkstk_darwin(v2 - 8);
  v73 = &v65 - v3;
  v72 = type metadata accessor for DispatchTime();
  v4 = *(v72 - 8);
  __chkstk_darwin(v72);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = __chkstk_darwin(v7);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  swift_beginAccess();
  v16 = *(v1 + 16);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v70 = (v1 + qword_1006A9F68);
  v21 = (v18 + 63) >> 6;
  v69 = (v4 + 8);
  v22 = v16;

  v23 = 0;
  v68 = _swiftEmptyArrayStorage;
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = *(v74 + 72);
    v27 = v71;
    sub_1003852B0(*(v22 + 56) + v26 * (v25 | (v23 << 6)), v71);
    v28 = sub_1003281EC(v27, v15);
    (*v70)(v28);
    LOBYTE(v27) = static DispatchTime.< infix(_:_:)();
    (*v69)(v6, v72);
    if (v27)
    {
      sub_1003281EC(v15, v66);
      v29 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v29;
      v65 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v29;
      }

      else
      {
        sub_10039A380(0, v29[2] + 1, 1);
        v31 = v77;
      }

      v33 = v31[2];
      v32 = v31[3];
      v34 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        v68 = (v33 + 1);
        sub_10039A380(v32 > 1, v33 + 1, 1);
        v34 = v68;
        v31 = v77;
      }

      v31[2] = v34;
      v35 = *(v74 + 80);
      v68 = v31;
      sub_1003281EC(v66, v31 + ((v35 + 32) & ~v35) + v33 * v26);
      v6 = v65;
    }

    else
    {
      sub_100009A04(v15, &qword_1006A3BF0, &qword_10057DE60);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v36 = v68;
      v37 = v68[2];
      if (v37)
      {
        v77 = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v37, 0);
        v38 = v77;
        v39 = v75;
        v40 = v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v41 = *(v74 + 72);
        v42 = v67;
        do
        {
          sub_1003852B0(v40, v42);
          v43 = (v42 + *(v39 + 44));
          v44 = *v43;
          v45 = v43[1];

          sub_100009A04(v42, &qword_1006A3BF0, &qword_10057DE60);
          v77 = v38;
          v47 = v38[2];
          v46 = v38[3];
          if (v47 >= v46 >> 1)
          {
            sub_10039A2E0(v46 > 1, v47 + 1, 1);
            v42 = v67;
            v38 = v77;
          }

          v38[2] = v47 + 1;
          v48 = &v38[2 * v47];
          v48[4] = v44;
          v48[5] = v45;
          v40 += v41;
          --v37;
          v39 = v75;
        }

        while (v37);
      }

      else
      {

        v38 = _swiftEmptyArrayStorage;
        v39 = v75;
      }

      v49 = 0;
      v50 = v38[2];
      v51 = v38 + 5;
      v52 = v73;
      while (v50 != v49)
      {
        if (v49 >= v38[2])
        {
          goto LABEL_32;
        }

        v54 = *(v51 - 1);
        v53 = *v51;
        swift_beginAccess();

        v55 = sub_100005208(v54, v53);
        if (v56)
        {
          v57 = v55;
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v76 = *(v1 + 16);
          v59 = v76;
          *(v1 + 16) = 0x8000000000000000;
          v60 = *(v59 + 24);
          sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
          v61 = v58;
          v39 = v75;
          v62 = v60;
          v52 = v73;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v62);
          v63 = v76;

          sub_1003281EC(*(v63 + 56) + *(v74 + 72) * v57, v52);
          _NativeDictionary._delete(at:)();
          v64 = 0;
          *(v1 + 16) = v63;
        }

        else
        {
          v64 = 1;
        }

        sub_10000AF74(v52, v64, 1, v39);
        sub_100009A04(v52, &unk_1006A7520, &unk_100582C90);
        swift_endAccess();

        v51 += 2;
        ++v49;
      }

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1003833DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v23[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  v18 = *(v3 + 16);

  v23[1] = a1;
  sub_1002CBAA8(a1, a2, v18, v14);

  if (sub_100015468(v14, 1, v15) == 1)
  {
    sub_100009A04(v14, &unk_1006A7520, &unk_100582C90);
LABEL_5:
    sub_10000AF74(v12, 1, 1, v15);
    swift_beginAccess();

    sub_100381C84();
    swift_endAccess();
    v21 = 0;
    goto LABEL_6;
  }

  v19 = sub_1003281EC(v14, v17);
  (*(v3 + qword_1006A9F68))(v19);
  sub_100033024(&unk_1006A7530, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v23[0] + 8))(v8, v6);
  sub_100009A04(v17, &qword_1006A3BF0, &qword_10057DE60);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = 1;
LABEL_6:
  sub_100382D94();
  return v21;
}

uint64_t sub_1003836F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100005208(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_1003281EC(v10 + *(*(v11 - 8) + 72) * v7, a3);
    _NativeDictionary._delete(at:)();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    v12 = a3;
    v13 = 1;
  }

  return sub_10000AF74(v12, v13, 1, v14);
}

void sub_100383E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v13 = v12;
  v15 = v14;
  sub_1000113F0();
  sub_100021E24();
  if (v16)
  {
    sub_10000FAAC();
    sub_100018288();
    sub_10000EAB8();
    sub_100006BE4();
    v17 = *(a10 + 48);
    v18 = type metadata accessor for UUID();
    sub_100008070();
    (*(v19 + 8))(v17 + *(v19 + 72) * v11, v18);
    sub_10026D814(v15, v13);
    sub_1000085E4();
    sub_100033024(v20, v21, &protocol conformance descriptor for UUID);
    sub_10000609C();
    sub_100009F18();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100006048();
}

uint64_t sub_100383F24@<X0>(uint64_t a1@<X8>)
{
  sub_100021E24();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v1;
    v7 = *(*v1 + 24);
    sub_10026D814(&qword_1006A6FB8, &unk_100582780);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    v8 = *(v16 + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(v16 + 56);
    v11 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_1003853D4(v10 + *(*(v11 - 8) + 72) * v5, a1, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    sub_100033024(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *v1 = v16;
    v12 = a1;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    v12 = a1;
    v13 = 1;
  }

  return sub_10000AF74(v12, v13, 1, v14);
}

void sub_100384234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100010094();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000113F0();
  sub_100005208(v17, v18);
  if (v19)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100017278();
    v22 = *(v21 + 24);
    sub_10026D814(v16, v14);
    sub_10000EAB8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);

    v12(0);
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100008348();
}

uint64_t sub_10038447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D328();
  sub_10000C23C();
  v13 = sub_100005208(v11, v12);
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100021F7C();
    sub_10026D814(&qword_1006A6F28, &qword_100582700);
    sub_10000EAB8();
    sub_1000076CC();

    v16 = *(a10 + 56);
    v17 = type metadata accessor for UUID();
    sub_100008070();
    (*(v18 + 32))(v10, v16 + *(v18 + 72) * v15, v17);
    sub_100007968();
    _NativeDictionary._delete(at:)();
    sub_10000F394();
  }

  else
  {
    type metadata accessor for UUID();
    sub_100008D20();
  }

  sub_10000D634();

  return sub_10000AF74(v19, v20, v21, v22);
}

void sub_10038461C()
{
  sub_100010094();
  sub_10000C23C();
  v4 = sub_1002DA664(v3);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(*v2 + 24);
    sub_10026D814(&qword_1006A7580, &unk_1005826E0);
    sub_10000EAB8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
    sub_10001E410();
    sub_10032825C(v10 + 8 * v7, v0);
    _NativeDictionary._delete(at:)();
    *v2 = v1;
  }

  else
  {
    *v0 = 0;
  }

  *(v0 + 8) = (v6 & 1) == 0;
  sub_100008348();
}

void *sub_100384754(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1003849A4(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v4, v5);
  sub_1003848B8(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1003848B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 4)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384BF8(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1003849A4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003848B8(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_100384A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10002F678();
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006AC080, &qword_100582CF8);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      v35 = a4;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        v19 = *(a4 + 56);
        v20 = (*(a4 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v19 + 8 * v18);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        sub_10000EAC4();
        if (((v26 << v25) & ~*(v13 + 8 * v24)) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v28)
              {
                goto LABEL_31;
              }
            }

            if (v27 == v29)
            {
              v27 = 0;
            }

            if (*(v13 + 8 * v27) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v30) |= v31;
        v33 = (*(v10 + 48) + 16 * v32);
        *v33 = v21;
        v33[1] = v22;
        *(*(v10 + 56) + 8 * v32) = v23;
        sub_100006E60();
        if (v34)
        {
          goto LABEL_32;
        }

        a4 = v35;
        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_100384BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10002F678();
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006A7540, &unk_100582CA8);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        v19 = *(*(a4 + 48) + 4 * v18);
        v20 = *(*(a4 + 56) + 8 * v18);
        static Hasher._hash(seed:bytes:count:)();
        sub_10000EAC4();
        if (((v23 << v22) & ~*(v13 + 8 * v21)) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v25)
              {
                goto LABEL_31;
              }
            }

            if (v24 == v26)
            {
              v24 = 0;
            }

            if (*(v13 + 8 * v24) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v27) |= v28;
        *(v10[6] + 4 * v29) = v19;
        *(v10[7] + 8 * v29) = v20;
        ++v10[2];
        if (__OFSUB__(v4--, 1))
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_100384D9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100027EB4();
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  sub_100007FEC();
  v45 = v9;
  v46 = v8;
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v43 - v13;
  if (a3)
  {
    if (a4[2] == a3)
    {
    }

    else
    {
      sub_10026D814(&unk_1006A75E0, &unk_100582D30);
      v14 = sub_100035CFC();
      v15 = v14;
      if (v4 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v5;
      }

      v17 = 0;
      v18 = v14 + 64;
      v43 = a4;
      v19 = v44;
      while (v16)
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_16:
        v24 = v20 | (v17 << 6);
        v25 = a4[6];
        v48 = *(v45 + 72);
        sub_10037A8AC(v25 + v48 * v24, v19);
        v49 = *(a4[7] + 16 * v24);
        sub_10001600C();
        sub_1003853D4(v19, v12, v26);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1000085E4();
        sub_100033024(&qword_1006A3BE0, v27, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        NSObject.hash(into:)();
        Hasher._finalize()();
        sub_10000EAC4();
        if (((v30 << v29) & ~*(v18 + 8 * v28)) == 0)
        {
          sub_10000E7C0();
          a4 = v43;
          while (1)
          {
            sub_100007A0C();
            if (v37)
            {
              if (v35)
              {
                goto LABEL_30;
              }
            }

            if (v34 == v36)
            {
              v34 = 0;
            }

            if (*(v18 + 8 * v34) != -1)
            {
              sub_10000D4CC();
              v33 = v39 + (v38 << 6);
              goto LABEL_26;
            }
          }
        }

        sub_100008BD4();
        v33 = v31 | v32;
        a4 = v43;
LABEL_26:
        *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        sub_10001600C();
        sub_1003853D4(v12, v40, v41);
        *(*(v15 + 56) + 16 * v33) = v49;
        ++*(v15 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_31;
        }

        v16 = v47;
        if (!a3)
        {
          return;
        }
      }

      v21 = v17;
      while (1)
      {
        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v17 >= v4)
        {
          return;
        }

        ++v21;
        if (v5[v17])
        {
          sub_100007C8C();
          v47 = v23 & v22;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

void sub_1003850B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10002F678();
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006A7590, &qword_100582CF0);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        sub_100006724(*(a4 + 48) + 40 * v18, v34);
        sub_100006A94(*(a4 + 56) + 32 * v18, v33);
        v30 = v34[0];
        v31 = v34[1];
        v32 = v35;
        sub_10003EBF0(v33, v29);
        v19 = AnyHashable._rawHashValue(seed:)(*(v10 + 40)) & ~(-1 << *(v10 + 32));
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v21)
              {
                goto LABEL_31;
              }
            }

            if (v20 == v22)
            {
              v20 = 0;
            }

            if (*(v13 + 8 * v20) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v23) |= v24;
        v26 = *(v10 + 48) + 40 * v25;
        v27 = v31;
        *v26 = v30;
        *(v26 + 16) = v27;
        *(v26 + 32) = v32;
        sub_10003EBF0(v29, (*(v10 + 56) + 32 * v25));
        sub_100006E60();
        if (v28)
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

uint64_t sub_1003852B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10038532C()
{
  result = qword_1006A75F0;
  if (!qword_1006A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A75F0);
  }

  return result;
}

unint64_t sub_100385380()
{
  result = qword_1006A76A8;
  if (!qword_1006A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76A8);
  }

  return result;
}

uint64_t sub_1003853D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 sub_100385434(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100385448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100385488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038550C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010056F8C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1003855DC(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_100385610(void *a1)
{
  v3 = sub_10026D814(&qword_1006A77A0, &qword_100583000);
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100009B14(a1, a1[3]);
  sub_1003862A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for UUID();
  sub_1003862F8(&qword_1006A77A8, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for RecordResponseMessage(0);
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003857A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = type metadata accessor for UUID();
  sub_100007FEC();
  v19 = v4;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  sub_10026D814(&qword_1006A7788, &qword_100582FF8);
  sub_100007FEC();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for RecordResponseMessage(0);
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  sub_100009B14(a1, a1[3]);
  sub_1003862A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009B7C(a1);
  }

  sub_1003862F8(&qword_1006A7798, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v13, v8, v20);
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = sub_10000A8F8();
  v16(v15);
  *(v13 + *(v10 + 20)) = v14 & 1;
  sub_10033AA94(v13, a2);
  sub_100009B7C(a1);
  return sub_10033AAF8(v13);
}

uint64_t sub_100385A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038550C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100385AB8@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of ConversationCallCoordinationManager.providerType();
  *a1 = result;
  return result;
}

uint64_t sub_100385AE0(uint64_t a1)
{
  v2 = sub_1003862A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100385B1C(uint64_t a1)
{
  v2 = sub_1003862A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100385B88()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006BA440 = result;
  *algn_1006BA448 = v1;
  return result;
}

uint64_t sub_100385BB8()
{
  v0 = type metadata accessor for SceneAssociationBehavior();
  __chkstk_darwin(v0 - 8);
  sub_100007FDC();
  v1 = type metadata accessor for GroupActivityMetadata.ActivityType();
  __chkstk_darwin(v1 - 8);
  sub_100007FDC();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.podcastTogether.getter();
  GroupActivityMetadata.type.setter();
  sub_10031E958(0xD000000000000011, 0x800000010056F8A0);
  GroupActivityMetadata.title.setter();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static SceneAssociationBehavior.none.getter();
  return GroupActivityMetadata.sceneAssociationBehavior.setter();
}