unint64_t sub_100EF7330()
{
  v1 = type metadata accessor for LostModeAlertInfo(0);
  __chkstk_darwin(v1 - 8);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  __chkstk_darwin(v4);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10090B2F0(_swiftEmptyArrayStorage);
  sub_100C09D38(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100EF8B28(v6, v3);
    *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v41 + 1) = v18;
    AnyHashable.init<A>(_:)();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = &type metadata for String;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    sub_1001E6224(&v41, &v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v7;
    sub_100FFAB54(&v43, v45, isUniquelyReferenced_nonNull_native);
    sub_100476E48(v45);
    v22 = *&v40[0];
    *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v41 + 1) = v23;
    AnyHashable.init<A>(_:)();
    v24 = sub_100DE3140();
    v42 = sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    *&v41 = v24;
    sub_1001E6224(&v41, &v43);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v22;
    sub_100FFAB54(&v43, v45, v25);
    sub_100476E48(v45);
    sub_100EF8B8C(v3, type metadata accessor for LostModeAlertInfo);
LABEL_6:
    v17 = *&v40[0];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v41 + 1) = v26;
    AnyHashable.init<A>(_:)();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = &type metadata for String;
    *&v41 = v27;
    *(&v41 + 1) = v28;
    sub_1001E6224(&v41, &v43);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v7;
    sub_100FFAB54(&v43, v45, v29);
    sub_100476E48(v45);
    v30 = *&v40[0];
    *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v41 + 1) = v31;
    AnyHashable.init<A>(_:)();
    v32 = sub_10090B2F0(_swiftEmptyArrayStorage);
    v42 = sub_1000BC4D4(&qword_1016BFE50, &unk_1013F17E0);
    *&v41 = v32;
    sub_1001E6224(&v41, &v43);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v30;
    sub_100FFAB54(&v43, v45, v33);
    sub_100476E48(v45);
    goto LABEL_6;
  }

  sub_10000A748(v6, v45);
  *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v43 + 1) = v9;
  AnyHashable.init<A>(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = &type metadata for String;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  sub_1001E6224(&v43, v40);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v46 = v7;
  sub_100FFAB54(v40, &v41, v12);
  sub_100476E48(&v41);
  v13 = v46;
  *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v43 + 1) = v14;
  AnyHashable.init<A>(_:)();
  sub_1000035D0(v45, v45[3]);
  v15 = dispatch thunk of PairingUIInfoType.dictionary.getter();
  v44 = sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  *&v43 = v15;
  sub_1001E6224(&v43, v40);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v46 = v13;
  sub_100FFAB54(v40, &v41, v16);
  sub_100476E48(&v41);
  v17 = v46;
  sub_100007BAC(v45);
LABEL_7:
  *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v43 + 1) = v34;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v35 = sub_100771E5C(v45), (v36 & 1) == 0))
  {
    sub_100476E48(v45);
LABEL_15:
    sub_100EF8AD4();
    swift_allocError();
    swift_willThrow();

    return v17;
  }

  sub_100013894(*(v17 + 56) + 32 * v35, &v41);
  sub_100476E48(v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v37 = v43;

  v38 = HIBYTE(*(&v37 + 1)) & 0xFLL;
  if ((*(&v37 + 1) & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_15;
  }

  return v17;
}

uint64_t sub_100EF78D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BFBB0);
  v1 = sub_1000076D4(v0, qword_1016BFBB0);
  if (qword_101694FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EF799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF79BC, 0, 0);
}

uint64_t sub_100EF79BC()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100EF7B3C;

    return v8(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100EF7B3C()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100EF8C54, 0, 0);
}

uint64_t sub_100EF7CE0(void *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v7 = v4;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  if (qword_101694F98 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016BFBB0);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, a2, v16, 0xCu);
    sub_100288C6C(v17);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v7;
  v21 = v7;
  sub_10025F6E0(0, 0, v11, a4, v20);
}

uint64_t sub_100EF7EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF7F18, 0, 0);
}

uint64_t sub_100EF7F18()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100EF7B3C;

    return v8(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100EF8124(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  if (qword_101694F98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016BFBB0);
  v10 = a1;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2112;
    v15 = v10;
    if (a2)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 14) = v16;
    v14[1] = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Did invalidate handle %@ with error %@", v13, 0x16u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  v20 = v3;
  sub_10025F6E0(0, 0, v8, &unk_1013F17B0, v19);
}

uint64_t sub_100EF83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100EF83C4, 0, 0);
}

uint64_t sub_100EF83C4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 32) + **(v3 + 32));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100EF8544;

    return v8(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100EF8544()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100EF865C, 0, 0);
}

uint64_t sub_100EF875C(uint64_t a1)
{
  result = type metadata accessor for LostModeAlertInfo(319);
  if (v2 <= 0x3F)
  {
    result = sub_100EF87D0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100EF87D0()
{
  result = qword_1016BFE20;
  if (!qword_1016BFE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016BFE20);
  }

  return result;
}

uint64_t sub_100EF8834()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C288);
  sub_1000076D4(v0, qword_10177C288);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100EF88B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100EF83A4(a1, v4, v5, v6);
}

uint64_t sub_100EF896C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EF7EF8(a1, v4, v5, v6);
}

uint64_t sub_100EF8A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EF799C(a1, v4, v5, v6);
}

unint64_t sub_100EF8AD4()
{
  result = qword_1016BFE58;
  if (!qword_1016BFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE58);
  }

  return result;
}

uint64_t sub_100EF8B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeAlertInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EF8B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100EF8C00()
{
  result = qword_1016BFE68;
  if (!qword_1016BFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE68);
  }

  return result;
}

id sub_100EF8CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    v6 = a3();

    if (!v6)
    {
      return 0;
    }

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EF8D38()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  return v1;
}

id sub_100EF8D90@<X0>(uint64_t *a2@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    v5 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      *a2 = v6;
      a2[1] = v8;
      v10 = type metadata accessor for StableIdentifier(0);
      swift_storeEnumTagMultiPayload();
      v11 = *(*(v10 - 8) + 56);
      v12 = a2;
      v13 = 0;
      v14 = v10;
    }

    else
    {

      v15 = static os_log_type_t.error.getter();
      if (qword_101695028 != -1)
      {
        v17 = v15;
        swift_once();
        v15 = v17;
      }

      os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C370, "Local uniqueDeviceID not found.", 31, 2, _swiftEmptyArrayStorage);
      v16 = type metadata accessor for StableIdentifier(0);
      v11 = *(*(v16 - 8) + 56);
      v14 = v16;
      v12 = a2;
      v13 = 1;
    }

    return v11(v12, v13, 1, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EF8F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 37;
  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v8 + 16) = 37;
  *(v8 + 48) = 0u;
  *(v8 + 61) = 0;
  *(v8 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v8 + 32), &v22, 0, 0))
  {
    v13 = errno.getter();
    if (!strerror(v13))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  static String.Encoding.ascii.getter();
  sub_100EF92EC(v8, v7);
  if (!v9)
  {
    while (1)
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      v14 = String.init(utf8String:)();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x6E776F6E6B6E55;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      v18 = static os_log_type_t.error.getter();
      sub_10039722C();
      v19 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10138BBE0;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100008C00();
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v21 = errno.getter();
      *(v20 + 96) = &type metadata for Int32;
      *(v20 + 104) = &protocol witness table for Int32;
      *(v20 + 72) = v21;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Error from sysctlbyname: %@ (%d)", 32, 2, v20);
    }
  }

  UUID.init(uuidString:)();
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1002EA198(v4);
    goto LABEL_9;
  }

  return (*(v11 + 32))(a1, v4, v10);
}

uint64_t sub_100EF92A0()
{
  sub_1000BC4D4(&qword_1016BFE78, &unk_1013F18E0);
  swift_allocObject();
  result = SynchronousCache.init()();
  qword_1016BFE70 = result;
  return result;
}

uint64_t sub_100EF92EC(uint64_t a1, char *a2)
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

  v13 = sub_100EF9700(v12);
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

void sub_100EF95D0(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 environment];

    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v6 + 16))
    {
      sub_100771D58(0x45545F5245444E55, 0xEA00000000005453);
      LOBYTE(v3) = v7;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *a1 = v3 & 1;
}

uint64_t sub_100EF9700(uint64_t result)
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

id sub_100EF9784()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 serialNumber];

  if (v1)
  {
    goto LABEL_4;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v1 = MobileGestalt_copy_serialNumber_obj();

    if (!v1)
    {
      return 0;
    }

LABEL_4:
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EF9844()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    if (v4)
    {
      v5 = static os_log_type_t.default.getter();
      sub_10039722C();
      v6 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "SystemInfo simulating Korea SKU device.", 39, 2, _swiftEmptyArrayStorage);

      return 1;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v9 = MobileGestalt_copy_regionCode_obj();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == 18507 && v12 == 0xE200000000000000)
      {

        return 1;
      }
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EF99F8(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_lowPowerExpressModesSupported_obj();

    if (!v3 || (v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_100514514(v4), , !v5))
    {

      v5 = _swiftEmptyArrayStorage;
    }

    v6 = sub_101129930(v5);

    v7 = sub_10111EACC(0x616873696C61, 0xE600000000000000, v6);
    v8 = v7 & 1;
    if (sub_10111EACC(0x796D2D646E6966, 0xE700000000000000, v6))
    {
      v8 = v7 & 1 | 2;
    }

    v9 = sub_10111EACC(0x727078652D63666ELL, 0xEB00000000737365, v6);

    if (v9)
    {
      return (v8 | 4);
    }

    else
    {
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100EF9B40()
{
  result = qword_1016BFE80;
  if (!qword_1016BFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFE80);
  }

  return result;
}

uint64_t sub_100EF9B94()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2A8);
  sub_1000076D4(v0, qword_10177C2A8);
  return Logger.init(subsystem:category:)();
}

uint64_t SPBluetoothPowerState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 6710895;
    case 2:
      return 0x7265776F50776F6CLL;
    case 1:
      return 28271;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x286E776F6E6B6E75;
}

uint64_t sub_100EF9CE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  result = __chkstk_darwin(v4 - 8);
  v7 = v18 - v6;
  v8 = a1[1];
  if (v8 >> 60 != 15)
  {
    v9 = *a1;
    v10 = objc_opt_self();
    sub_100017D5C(v9, v8);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19[0] = 0;
    v12 = [v10 propertyListWithData:isa options:0 format:0 error:v19];

    if (v12)
    {
      v13 = v19[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
      if (swift_dynamicCast())
      {
        sub_100B994B4(v18[1], v7);
        sub_100006654(v9, v8);
        v14 = type metadata accessor for OfflineFindingInfo(0);
        v15 = 1;
        v16 = (*(*(v14 - 8) + 48))(v7, 1, v14);
        result = sub_10000B3A8(v7, &qword_10169F458, &unk_1013D35E0);
        if (v16 != 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_100006654(v9, v8);
      }
    }

    else
    {
      v17 = v19[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100006654(v9, v8);
    }
  }

  v15 = 0;
LABEL_9:
  *a2 = v15;
  return result;
}

id sub_100EF9F30()
{
  v1 = sub_1000BC4D4(&qword_1016C01B8, &qword_1013F1BC0);
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin(v1);
  v55 = v50 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v53 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v0 + 16) = v8;
  *(v0 + 24) = &_swiftEmptySetSingleton;
  v9 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *(v0 + 32) = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0x412E848000000000, 0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v50[1] = "forceLPEMSupport";
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  v51 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v10 = *(v5 + 104);
  v52 = v5 + 104;
  v54 = v10;
  v10(v7);
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  v50[0] = sub_100F00328(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 88) = 0;
  v54(v7, v51, v53);
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  v11 = v0;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101695180 != -1)
  {
    swift_once();
  }

  v60 = qword_10177C4E8;

  sub_1000BC4D4(&qword_1016C01C0, &qword_1013F1BC8);
  sub_1000041A4(&qword_1016C01C8, &qword_1016C01C0, &qword_1013F1BC8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v12 = v55;
  Publisher.map<A>(_:)();

  sub_1000041A4(&qword_1016C01D0, &qword_1016C01B8, &qword_1013F1BC0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v13 = v57;
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v56 + 8))(v12, v13);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v14;
  sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  *(v0 + 128) = v15;
  *(v0 + 144) = 0;
  v60 = v15;
  sub_1000041A4(&qword_1016C2F40, &qword_1016A1000, &qword_1013F1BD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  *(v0 + 136) = Publisher.eraseToAnyPublisher()();
  My = type metadata accessor for Feature.FindMy();
  v62 = My;
  v17 = sub_100F00328(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v63 = v17;
  v18 = sub_1000280DC(&v60);
  v19 = *(*(My - 8) + 104);
  v19(v18, enum case for Feature.FindMy.baLPEM(_:), My);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100007BAC(&v60);
  if ((v14 & 1) == 0)
  {
    v62 = My;
    v63 = v17;
    v20 = sub_1000280DC(&v60);
    v19(v20, enum case for Feature.FindMy.baPowerOff(_:), My);
    v21 = isFeatureEnabled(_:)();
    sub_100007BAC(&v60);
    if ((v21 & 1) == 0)
    {
      return v11;
    }
  }

  if (sub_100F00234())
  {
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C2A8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "LPEM supported.", v25, 2u);
    }

    v26 = swift_allocObject();
    swift_weakInit();

    sub_100EFB054(sub_100F00370, v26);

    goto LABEL_20;
  }

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177C2A8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v28, v29))
  {
LABEL_19:

LABEL_20:
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C2A8);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 136446210;
      v59 = v43;
      v60 = 60;
      v61 = 0xE100000000000000;
      v58 = v11;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v44, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);

      v45._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = 32;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 62;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);

      v49 = sub_1000136BC(v60, v61, &v59);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Created %{public}s", v42, 0xCu);
      sub_100007BAC(v43);
    }

    return v11;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v60 = v31;
  *v30 = 136315138;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    v34 = MobileGestalt_copy_hwModelStr_obj();

    if (v34)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    v38 = sub_1000136BC(v35, v37, &v60);

    *(v30 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "LPEM not supported [%s].", v30, 0xCu);
    sub_100007BAC(v31);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EFAA18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100EFBD6C();
  }

  return result;
}

uint64_t sub_100EFAA70()
{
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C2A8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v12 = v4;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v5, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
    v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 62;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_1000136BC(60, 0xE100000000000000, &v12);

    *(v3 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: firstLaunchSinceReboot()", v3, 0xCu);
    sub_100007BAC(v4);
  }

  return sub_100EFD964();
}

void sub_100EFAC8C(uint64_t a1)
{
  v2 = v1;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C2A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (a1)
    {
      if (a1 == 2)
      {
        v9 = 0xEC00000065646F4DLL;
        v10 = 0x7265776F50776F6CLL;
      }

      else if (a1 == 1)
      {
        v9 = 0xE200000000000000;
        v10 = 28271;
      }

      else
      {
        v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v11);

        v10 = 0x286E776F6E6B6E75;
        v9 = 0xE800000000000000;
      }
    }

    else
    {
      v9 = 0xE300000000000000;
      v10 = 6710895;
    }

    v12 = sub_1000136BC(v10, v9, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received bluetoothPowerStateUpdate: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  if (*(v2 + 40))
  {

    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_100EFAE94()
{
  v4[3] = &type metadata for KoreaFeatureFlag;
  v4[4] = sub_10013CCC4();
  v0 = isFeatureEnabled(_:)();
  sub_100007BAC(v4);
  if (v0)
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = sub_100EF9844() ^ 1;
  }

  v2 = sub_100F00234() & v1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v2 & v4[0] & 1;
}

uint64_t sub_100EFAF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();
}

uint64_t sub_100EFB054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v5 = __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = static DarwinNotification.currentValue(name:)();
  v24 = v2[4];
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v25;
  sub_101032844(v9);
  sub_100F0017C(v9, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (!*v7)
    {
      sub_100EFF460();
    }

    v7 = v9;
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016B2720, "r\a\a");
  }

  v13 = EnumCaseMultiPayload != 1;
  sub_10000B3A8(v7, &unk_1016B2720, "r\a\a");
  v14 = v11 == 3;
  v15 = v10 == 1;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = [v16 userHasAcknowledgedFindMy];

  v25 = v15;
  sub_1000BC4D4(&qword_1016C0168, &qword_1013F1B68);
  swift_allocObject();
  v3[5] = CurrentValueSubject.init(_:)();

  LOBYTE(v25) = v14;
  sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
  swift_allocObject();
  v3[8] = CurrentValueSubject.init(_:)();

  LOBYTE(v25) = v13;
  swift_allocObject();
  v3[9] = CurrentValueSubject.init(_:)();

  LOBYTE(v25) = v17;
  swift_allocObject();
  v3[14] = CurrentValueSubject.init(_:)();

  LOBYTE(v25) = 0;
  swift_allocObject();
  v3[15] = CurrentValueSubject.init(_:)();

  sub_1000BC4D4(&qword_1016C01A8, &qword_1013F1BB8);
  swift_allocObject();
  v25 = Future.init(_:)();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v15;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 41) = v13;
  *(v19 + 42) = v17;
  v20 = v23;
  *(v19 + 48) = v22;
  *(v19 + 56) = v20;
  sub_1000041A4(&qword_1016C01B0, &qword_1016C01A8, &qword_1013F1BB8, &protocol conformance descriptor for Future<A, B>);

  Publisher.oneshot(_:)();
}

void sub_100EFB47C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, char a7, void (*a8)(void))
{
  v14 = *a1;
  v15 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15)
    {
      if (qword_101694FB0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C2A8);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v66 = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = v24;
        sub_1000BB578(v14, 1);
        v26 = sub_1000136BC(v23, v25, &v66);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "activationLockInfoFuture error: %s", v21, 0xCu);
        sub_100007BAC(v22);
      }

      else
      {

        sub_1000BB578(v14, 1);
      }
    }

    else
    {
      v65 = a8;
      v64 = a7;
      if ([v14 isActivationLocked])
      {
        v27 = 1;
      }

      else
      {
        v28 = [v14 maskedAppleID];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        v27 = v32 != 0;
      }

      sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
      swift_allocObject();
      *(v17 + 48) = CurrentValueSubject.init(_:)();

      LOBYTE(v66) = [v14 isOfflineFindingEnabled];
      swift_allocObject();
      *(v17 + 56) = CurrentValueSubject.init(_:)();

      if (qword_101694FB0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177C2A8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 4) = a3 & 1;
        _os_log_impl(&_mh_execute_header, v34, v35, "initialBluetoothState     : %{BOOL}d", v36, 8u);
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v37, v38, "initialFMIPState          : %{BOOL}d", v39, 8u);
      }

      v40 = v14;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        *(v43 + 4) = [v40 isOfflineFindingEnabled];
        sub_1000BB578(v14, 0);
        _os_log_impl(&_mh_execute_header, v41, v42, "initialOfflineFindingState: %{BOOL}d", v43, 8u);
      }

      else
      {
        sub_1000BB578(v14, 0);
      }

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v67 = v47;
        *v46 = 136446210;
        if (a4)
        {
          if (a4 == 2)
          {
            v48 = 0xEC00000065646F4DLL;
            v49 = 0x7265776F50776F6CLL;
          }

          else if (a4 == 1)
          {
            v48 = 0xE200000000000000;
            v49 = 28271;
          }

          else
          {
            v66 = 0x286E776F6E6B6E75;
            v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v50);

            v49 = 0x286E776F6E6B6E75;
            v48 = 0xE800000000000000;
          }
        }

        else
        {
          v48 = 0xE300000000000000;
          v49 = 6710895;
        }

        v51 = sub_1000136BC(v49, v48, &v67);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "initialBluetoothPowerState: %{public}s", v46, 0xCu);
        sub_100007BAC(v47);
      }

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 67109376;
        *(v54 + 4) = a5 & 1;
        *(v54 + 8) = 1024;
        __chkstk_darwin(v54);
        type metadata accessor for CLAuthorizationStatus(0);
        OS_dispatch_queue.sync<A>(execute:)();
        *(v54 + 10) = v66;

        _os_log_impl(&_mh_execute_header, v52, v53, "initialLocServicesState   : %{BOOL}d [%d]", v54, 0xEu);
      }

      else
      {
      }

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 67109120;
        *(v57 + 4) = a6 & 1;
        _os_log_impl(&_mh_execute_header, v55, v56, "initialNVRAMState         : %{BOOL}d", v57, 8u);
      }

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v64 & 1;
        _os_log_impl(&_mh_execute_header, v58, v59, "initialUserAck            : %{BOOL}d", v60, 8u);
      }

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "suppressLPEM              : false", v63, 2u);
      }

      v65();
    }
  }
}

uint64_t sub_100EFBD6C()
{
  v1 = v0;
  v51 = sub_1000BC4D4(&qword_1016C0120, &qword_1013F1AE0);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v36 - v2;
  v3 = sub_1000BC4D4(&qword_1016C0128, &qword_1013F1AE8);
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v36 - v4;
  v5 = sub_1000BC4D4(&qword_1016C0130, &qword_1013F1AF0);
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v54 = &v36 - v6;
  v7 = sub_1000BC4D4(&qword_1016C0138, &qword_1013F1AF8);
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v36 - v8;
  v39 = sub_1000BC4D4(&qword_1016C0140, &qword_1013F1B00);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v36 - v9;
  v11 = v0[5];
  if (v11 && (v12 = v0[6]) != 0 && (v13 = v0[7]) != 0 && v0[8] && (v14 = v0[8], v0[9]) && (v15 = v0[9], v0[14]) && (v16 = v0[14], v0[15]))
  {
    v17 = v0[15];
    v18 = swift_allocObject();
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = v0;
    v18[5] = v15;
    v42 = v15;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v46 = v17;

    unsafeFromAsyncTask<A>(_:)();

    v19 = v0[4];
    v20 = v12;
    v40 = v12;
    v62 = *(v19 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusPublisher);

    v58 = v11;
    sub_1000BC4D4(&qword_1016C0148, qword_1013F1B18);
    v57 = v13;
    v37 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_1000041A4(&qword_1016C0150, &qword_1016C0148, qword_1013F1B18, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    v47 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_1000041A4(&qword_1016C0158, &qword_1016C0140, &qword_1013F1B00, &protocol conformance descriptor for Publishers.Map<A, B>);

    v21 = v39;
    Publisher<>.sink(receiveValue:)();
    v22 = v14;
    v41 = v14;

    (*(v38 + 8))(v10, v21);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v23 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    v24 = v43;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_1000041A4(&qword_1016C0160, &qword_1016C0138, &qword_1013F1AF8, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);

    v25 = v45;
    Publisher<>.sink(receiveValue:)();

    (*(v44 + 8))(v24, v25);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v62 = v1[13];
    v26 = v42;

    sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
    sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, v37);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v61 = v20;
    v62 = v58;
    v59 = v22;
    v60 = v57;
    sub_1000BC4D4(&qword_1016C0168, &qword_1013F1B68);
    sub_1000BC4D4(&qword_1016B35D8, &qword_1013F1B70);
    sub_1000041A4(&qword_1016C0170, &qword_1016C0168, &qword_1013F1B68, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_1000041A4(&qword_1016C0178, &qword_1016B35D8, &qword_1013F1B70, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v27 = v48;
    Publisher.combineLatest<A, B, C>(_:_:_:)();
    v61 = v16;
    v62 = v26;
    v60 = v46;
    sub_1000041A4(&qword_1016C0180, &qword_1016C0120, &qword_1013F1AE0, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
    v29 = v50;
    v28 = v51;
    Publisher.combineLatest<A, B, C>(_:_:_:)();
    (*(v49 + 8))(v27, v28);
    sub_1000BC4D4(&qword_1016C0188, &unk_1013F1B78);
    sub_1000041A4(&qword_1016C0190, &qword_1016C0128, &qword_1013F1AE8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
    v30 = v53;
    v31 = v54;
    Publisher.map<A>(_:)();
    (*(v52 + 8))(v29, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100EFFF30;
    *(v33 + 24) = v32;
    sub_1000041A4(&qword_1016C0198, &qword_1016C0130, &qword_1013F1AF0, v47);
    v34 = v56;
    Publisher<>.sink(receiveValue:)();

    (*(v55 + 8))(v31, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100EFC81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100EFC8BC, 0, 0);
}

uint64_t sub_100EFC8BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for DarwinNotificationHandler();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v0[7] = v6;
  v8 = swift_allocObject();
  v0[8] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_100EFCA04;

  return static DarwinNotificationHandler.listen(name:handler:)(v5, v7, &unk_1013F1B90, v8);
}

uint64_t sub_100EFCA04(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100EFCB40, 0, 0);
}

uint64_t sub_100EFCB40()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013F1BA0, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100EFCC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[27] = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100EFCD14, 0, 0);
}

uint64_t sub_100EFCD14()
{
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_1000076D4(v1, qword_10177C2A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received fmdLocalActivationLockInfoChanged notification", v4, 2u);
  }

  v5 = [objc_opt_self() sharedInstance];
  v0[31] = v5;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100EFCF08;
  v6 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016C01A0, &unk_1013F1BA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100C70FE4;
  v0[13] = &unk_10165AEE0;
  v0[14] = v6;
  [v5 activationLockInfoFromDeviceWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100EFCF08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100EFD310;
  }

  else
  {
    v2 = sub_100EFD018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EFD018()
{
  v1 = *(v0 + 168);

  if ([v1 isActivationLocked])
  {
    CurrentValueSubject.value.getter();
    if (*(v0 + 264))
    {
      goto LABEL_8;
    }

    LOBYTE(v2) = 1;
    goto LABEL_7;
  }

  v3 = [v1 maskedAppleID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v2 = v7 != 0;
  CurrentValueSubject.value.getter();
  if (*(v0 + 264) != v2)
  {
LABEL_7:
    *(v0 + 265) = v2;
    CurrentValueSubject.send(_:)();
  }

LABEL_8:
  CurrentValueSubject.value.getter();
  v8 = *(v0 + 266);
  if (v8 != [v1 isOfflineFindingEnabled])
  {
    *(v0 + 267) = [v1 isOfflineFindingEnabled];
    CurrentValueSubject.send(_:)();
  }

  v9 = *(v0 + 232);
  v11 = (v0 + 224);
  v10 = *(v0 + 224);
  sub_101032844(v9);
  sub_100F0017C(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (!**v11)
    {
      sub_100EFF460();
    }

    v11 = (v0 + 232);
  }

  else
  {
    sub_10000B3A8(*(v0 + 232), &unk_1016B2720, "r\a\a");
  }

  sub_10000B3A8(*v11, &unk_1016B2720, "r\a\a");

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = EnumCaseMultiPayload != 1;
    *(v15 + 8) = 1024;
    CurrentValueSubject.value.getter();
    *(v15 + 10) = *(v0 + 270);

    _os_log_impl(&_mh_execute_header, v13, v14, "Reloaded NVRAM state %{BOOL}d existing %{BOOL}d", v15, 0xEu);
  }

  else
  {
  }

  CurrentValueSubject.value.getter();
  if ((EnumCaseMultiPayload != 1) != *(v0 + 268))
  {
    *(v0 + 269) = EnumCaseMultiPayload != 1;
    CurrentValueSubject.send(_:)();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100EFD310(uint64_t a1)
{
  v13 = v1;
  v2 = *(v1 + 248);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "activationLockInfoFuture error: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v10 = *(v1 + 8);

  return v10();
}

void sub_100EFD4AC(int *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C2A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "LocServices authorizationStatus changed to %d", v7, 8u);
  }

  *a2 = v3 == 3;
}

uint64_t sub_100EFD5AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  v4 = *(result + 10);
  v5 = *(result + 11);
  v6 = *(result + 12);
  v7 = *(result + 13);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  *(a2 + 10) = v4;
  *(a2 + 11) = v5;
  *(a2 + 12) = v6;
  *(a2 + 13) = v7;
  return result;
}

uint64_t sub_100EFD5E8(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v28 = a6;
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C2A8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v27 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136447746;
    v26 = a7;
    if (a1)
    {
      if (a1 == 2)
      {
        v20 = 0xEC00000065646F4DLL;
        v21 = 0x7265776F50776F6CLL;
      }

      else if (a1 == 1)
      {
        v20 = 0xE200000000000000;
        v21 = 28271;
      }

      else
      {
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v21 = 0x286E776F6E6B6E75;
        v20 = 0xE800000000000000;
      }
    }

    else
    {
      v20 = 0xE300000000000000;
      v21 = 6710895;
    }

    v23 = sub_1000136BC(v21, v20, &v30);

    *(v18 + 4) = v23;
    *(v18 + 12) = 1024;
    *(v18 + 14) = a2 & 1;
    *(v18 + 18) = 1024;
    *(v18 + 20) = a3 & 1;
    *(v18 + 24) = 1024;
    *(v18 + 26) = a4 & 1;
    *(v18 + 30) = 1024;
    a7 = v26;
    *(v18 + 32) = v27 & 1;
    *(v18 + 36) = 1024;
    *(v18 + 38) = v28 & 1;
    *(v18 + 42) = 1024;
    *(v18 + 44) = v26 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "TheftDeterrence state changed: BT: %{public}s FMIP: %{BOOL}d OF: %{BOOL}d locServices: %{BOOL}d NVRAM: %{BOOL}d userACK: %{BOOL}d suppress: %{BOOL}d", v18, 0x30u);
    sub_100007BAC(v19);
  }

  if (a1 != 1)
  {
    v25 = 0;
    if (a1 != 2 || (a2 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (a3)
    {
      if ((a4 & 1) != 0 || (v24 = inPostEraseSetupAssistant(), v24))
      {
        v25 = v27 & (a7 ^ 1);
      }

      else
      {
        v25 = 0;
      }
    }

    goto LABEL_23;
  }

  v25 = 0;
  if (a2)
  {
    goto LABEL_18;
  }

LABEL_23:
  __chkstk_darwin(v24);

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  if (v25 & 1) != 0 && (v28)
  {
    sub_100EFE960();
  }

  else
  {
    sub_100EFE9EC();
  }
}

uint64_t sub_100EFD964()
{
  v7 = [objc_opt_self() sharedHardwareManager];
  sub_100008BB8(0, &qword_1016C0110, NFHardwareManager_ptr);
  deoptionalize<A>(_:)();

  v1 = aBlock[0];
  aBlock[4] = sub_100EFFE30;
  v6 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D488C;
  aBlock[3] = &unk_10165AE18;
  v2 = _Block_copy(aBlock);

  v3 = [v1 startLPEMConfigSession:v2];
  _Block_release(v2);

  return swift_unknownObjectRelease();
}

void sub_100EFDA94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    swift_errorRetain();
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C2A8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v8 = 136315394;
      v81 = 60;
      v82 = 0xE100000000000000;
      v83 = v79;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v10, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = sub_1000136BC(60, 0xE100000000000000, &v83);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2112;
      v16 = _convertErrorToNSError(_:)();
      *(v8 + 14) = v16;
      *v9 = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: startLPEMConfigSession error: %@", v8, 0x16u);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v79);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v17 = qword_101694FB0;
    v18 = a1;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177C2A8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v82 = 0xE100000000000000;
      v83 = v23;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v24, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
      v25._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 62;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = sub_1000136BC(60, 0xE100000000000000, &v83);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: Start LPEMConfigSession", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v82 = 0xE100000000000000;
      v83 = v33;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v34, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
      v35._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 62;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39 = sub_1000136BC(60, 0xE100000000000000, &v83);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: configureHardwareForLPEM()", v32, 0xCu);
      sub_100007BAC(v33);
    }

    v81 = 0;
    v40 = [v18 configureHardwareForLPEMWithError:&v81];
    v41 = v81;
    if (v40)
    {
      if (*(a3 + 48))
      {

        v42 = v41;

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 136315138;
          v81 = 60;
          v82 = 0xE100000000000000;
          v83 = v46;
          type metadata accessor for TheftDeterrenceStateManager();
          sub_100F00328(&qword_1016C0118, v47, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
          v48._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v48);

          v49._countAndFlagsBits = 32;
          v49._object = 0xE100000000000000;
          String.append(_:)(v49);
          v50._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 62;
          v51._object = 0xE100000000000000;
          String.append(_:)(v51);
          v52 = sub_1000136BC(v81, v82, &v83);

          *(v45 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v43, v44, "%s: Triggering state re-evaluation.", v45, 0xCu);
          sub_100007BAC(v46);
        }

        CurrentValueSubject.value.getter();
        LOBYTE(v83) = v81;
        CurrentValueSubject.send(_:)();
      }

      else
      {
        v77 = v81;
      }
    }

    else
    {
      v64 = v81;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = a3;
        v69 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v67 = 136315394;
        v81 = 60;
        v82 = 0xE100000000000000;
        v83 = v78;
        type metadata accessor for TheftDeterrenceStateManager();
        sub_100F00328(&qword_1016C0118, v70, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
        v71._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        String.append(_:)(v71);

        v72._countAndFlagsBits = 32;
        v72._object = 0xE100000000000000;
        String.append(_:)(v72);
        v73._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
        String.append(_:)(v73);

        v74._countAndFlagsBits = 62;
        v74._object = 0xE100000000000000;
        String.append(_:)(v74);
        v75 = sub_1000136BC(v81, v82, &v83);

        *(v67 + 4) = v75;
        *(v67 + 12) = 2112;
        v76 = _convertErrorToNSError(_:)();
        *(v67 + 14) = v76;
        *v69 = v76;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s: configureHardwareForLPEM error: %@", v67, 0x16u);
        sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);
        a3 = v68;

        sub_100007BAC(v78);
      }

      else
      {
      }
    }

    v4 = a1;
  }

  else
  {
    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177C2A8);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136315138;
      v81 = 60;
      v82 = 0xE100000000000000;
      v83 = v57;
      type metadata accessor for TheftDeterrenceStateManager();
      sub_100F00328(&qword_1016C0118, v58, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 32;
      v60._object = 0xE100000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v63 = sub_1000136BC(60, 0xE100000000000000, &v83);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Missing NFLPEMConfigSession!", v56, 0xCu);
      sub_100007BAC(v57);
    }

    v4 = 0;
  }

  sub_100EFE710(v4, a3);
}

void sub_100EFE710(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 endSession];
  }

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C2A8);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v13 = v5;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v6, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
    v7._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 62;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = sub_1000136BC(60, 0xE100000000000000, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s: Stop LPEMConfigSession", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }
}

void sub_100EFE984(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100EFEA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  My = type metadata accessor for Feature.FindMy();
  v12 = My;
  v4 = sub_100F00328(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v13 = v4;
  v5 = sub_1000280DC(v11);
  v6 = *(*(My - 8) + 104);
  v6(v5, enum case for Feature.FindMy.baLPEM(_:), My);
  v7 = isFeatureEnabled(_:)();
  sub_100007BAC(v11);
  if (v7 & 1) != 0 || (v12 = My, v13 = v4, v8 = sub_1000280DC(v11), v6(v8, enum case for Feature.FindMy.baPowerOff(_:), My), v9 = isFeatureEnabled(_:)(), result = sub_100007BAC(v11), (v9))
  {
    type metadata accessor for Transaction();
    return static Transaction.named<A>(_:with:)();
  }

  return result;
}

void sub_100EFEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v12[4] = a4;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100EFE984;
  v12[3] = a5;
  v11 = _Block_copy(v12);

  [v9 sharedHardwareManager:v11];
  _Block_release(v11);
}

uint64_t sub_100EFEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedHardwareManager];
  v26 = v14;
  sub_100008BB8(0, &qword_1016C0110, NFHardwareManager_ptr);
  deoptionalize<A>(_:)();

  v15 = aBlock[0];
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a2;
  v16[4] = v15;
  aBlock[4] = v20;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);

  v18 = v15;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100F00328(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v10, v8);
  (*(v22 + 8))(v13, v23);
}

uint64_t sub_100EFEFB8(uint64_t a1, uint64_t a2, void *a3, char *a4, SEL *a5, char a6)
{
  Transaction.capture()();
  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C2A8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315138;
    v21 = v20;
    type metadata accessor for TheftDeterrenceStateManager();
    sub_100F00328(&qword_1016C0118, v13, type metadata accessor for TheftDeterrenceStateManager, &unk_1013F1A8C);
    v14._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 62;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = sub_1000136BC(60, 0xE100000000000000, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 0xCu);
    sub_100007BAC(v20);
  }

  return PassthroughSubject.send(_:)();
}

void sub_100EFF224(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100407A2C;
  *(v7 + 24) = v4;
  v9[4] = sub_100F0022C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100EFF3D4;
  v9[3] = &unk_10165AF80;
  v8 = _Block_copy(v9);

  [v6 activationLockInfoFromDeviceWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100EFF35C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a2)
  {
    return a3(a1);
  }

  swift_errorRetain();
  (a3)(a2, 1);
}

void sub_100EFF3D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_100EFF460()
{
  v1 = v0;
  if (*(v0 + 88))
  {

    DispatchTimer.cancel()();

    *(v0 + 88) = 0;
  }

  v2 = *(v0 + 80);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DispatchTimer();
  swift_allocObject();
  v3 = v2;
  *(v1 + 88) = DispatchTimer.init(deadline:repeating:leeway:queue:block:)();

  DispatchTimer.resume()();

  if (qword_101694FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C2A8);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;

    sub_1000BC4D4(&qword_1016C0100, &unk_1013F1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Scheduled a retryTimer to fetch offlineFindingInfo from nvram %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }
}

uint64_t sub_100EFF6CC(uint64_t a1)
{
  v1 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v2 = __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_101032844(v6);
    sub_100EFFC58(v6, v4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      sub_10000B3A8(v4, &unk_1016B2720, "r\a\a");
    }

    if (qword_101694FB0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C2A8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v12 = 136315650;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = *(Strong + 72);
      }

      else
      {
        v14 = 0;
      }

      v25[1] = v14;
      sub_1000BC4D4(&qword_1016C0108, &unk_1013F1AD0);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 1024;
      *(v12 + 14) = EnumCaseMultiPayload != 1;
      *(v12 + 18) = 2080;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18 && (v19 = *(v18 + 72), , , v19))
      {
        CurrentValueSubject.value.getter();

        v20 = v26;
      }

      else
      {
        v20 = 2;
      }

      v26 = v20;
      sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, v27);

      *(v12 + 20) = v23;
      _os_log_impl(&_mh_execute_header, v10, v11, "Reloaded NVRAM state after retry timer. Subject %s. New state %{BOOL}d existing %s", v12, 0x1Cu);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v24 = *(result + 72);

      if (v24)
      {
        CurrentValueSubject.value.getter();
        if ((EnumCaseMultiPayload != 1) != v26)
        {
          v26 = EnumCaseMultiPayload != 1;
          CurrentValueSubject.send(_:)();
        }
      }
    }
  }

  return result;
}

id *sub_100EFFAA4()
{

  return v0;
}

uint64_t sub_100EFFB3C()
{
  sub_100EFFAA4();

  return swift_deallocClassInstance();
}

uint64_t sub_100EFFB94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TheftDeterrenceStateManager();
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_100EFFC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EFFE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100EFC81C(a1, v4, v5, v7, v6);
}

uint64_t sub_100EFFF90()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100EFFFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100EFCC64(a1, v4, v5, v7, v6);
}

uint64_t sub_100F0009C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_100F0017C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100F00234()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v0 = qword_10177C218;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2 && (v4 = String._bridgeToObjectiveC()(), v5 = [v0 BOOLForKey:v4], v4, (v5 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return (sub_100EF99F8(v3) >> 1) & 1;
  }
}

uint64_t sub_100F00328(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100F003A4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016C02B8, &qword_1013F1D90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100F01754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_100017D5C(a3, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100F0058C(uint64_t a1)
{
  v2 = sub_100F01754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F005C8(uint64_t a1)
{
  v2 = sub_100F01754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F00604@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100F01508(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100F00654(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72624E72656E776FLL;
    v7 = 0x747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0x65646F4D74736F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C746974;
    v9 = 1954047348;
    if (a1 != 7)
    {
      v9 = 0x6C69616D65;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x646975756162;
    v2 = 0x754E6C6169726573;
    v3 = 0x49746375646F7270;
    if (a1 != 4)
    {
      v3 = 0x6449726F646E6576;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684628325;
    if (a1 != 1)
    {
      v4 = 0x644970696863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100F007C8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C0298, &qword_1013F1D78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100F0146C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100F014C0(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LostModeRequestContent(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100F00B6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F019D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F00B94(uint64_t a1)
{
  v2 = sub_100F0146C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F00BD0(uint64_t a1)
{
  v2 = sub_100F0146C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100F00C24(uint64_t a1)
{
  v49 = type metadata accessor for LostModeRequestContent(0);
  v2 = __chkstk_darwin(v49);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v49 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v10;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v12 = v51;
  v13 = [objc_opt_self() currentDevice];
  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 serverFriendlyDescription];

  if (!v15)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v12;
  sub_100FFACA0(v16, v18, 0xD000000000000011, 0x800000010134EA40, v19);
  v20 = v51;
  Date.init()();
  v21 = Date.epoch.getter();
  (*(v7 + 8))(v9, v6);
  v51 = v21;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  v24 = v23;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v20;
  sub_100FFACA0(v22, v24, 0xD000000000000015, 0x800000010134EA60, v25);
  v26 = v51;
  v51 = 1;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v26;
  sub_100FFACA0(v27, v29, 0xD000000000000013, 0x800000010134EA80, v30);
  v31 = v51;
  v33 = sub_1008D9A78(v32);
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v31;
  sub_100FFACA0(v33, v35, 0x6567412D72657355, 0xEA0000000000746ELL, v36);
  if (qword_101694A30 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177B570);
  sub_100F012C8(a1, v5);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315138;
    sub_100F012C8(v5, v50);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    sub_100F0132C(v5);
    v45 = sub_1000136BC(v42, v44, &v51);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Lost Mode content: %s", v40, 0xCu);
    sub_100007BAC(v41);
  }

  else
  {

    sub_100F0132C(v5);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100F014C0(&qword_1016C01D8, type metadata accessor for LostModeRequestContent, &unk_1013F1CF8);
  v46 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v48 = v47;
  sub_100F0132C(a1);

  sub_100017D5C(v46, v48);

  sub_100016590(v46, v48);
}

uint64_t type metadata accessor for LostModeRequestContent(uint64_t a1)
{
  result = qword_1016C0238;
  if (!qword_1016C0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F012C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRequestContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0132C(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRequestContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100F013C0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100F0146C()
{
  result = qword_1016C02A0;
  if (!qword_1016C02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02A0);
  }

  return result;
}

uint64_t sub_100F014C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100F01508(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C02A8, &unk_1013F1D80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100F01754();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v14 = 0;
    sub_1008DA158(&qword_1016AD848, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_100017D5C(v9, v10);
    sub_100007BAC(a1);

    sub_100016590(v9, v10);
  }

  return v7;
}

unint64_t sub_100F01754()
{
  result = qword_1016C02B0;
  if (!qword_1016C02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02B0);
  }

  return result;
}

unint64_t sub_100F017CC()
{
  result = qword_1016C02C0;
  if (!qword_1016C02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02C0);
  }

  return result;
}

unint64_t sub_100F01824()
{
  result = qword_1016C02C8;
  if (!qword_1016C02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02C8);
  }

  return result;
}

unint64_t sub_100F0187C()
{
  result = qword_1016C02D0;
  if (!qword_1016C02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02D0);
  }

  return result;
}

unint64_t sub_100F018D4()
{
  result = qword_1016C02D8;
  if (!qword_1016C02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02D8);
  }

  return result;
}

unint64_t sub_100F0192C()
{
  result = qword_1016C02E0;
  if (!qword_1016C02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02E0);
  }

  return result;
}

unint64_t sub_100F01984()
{
  result = qword_1016C02E8;
  if (!qword_1016C02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C02E8);
  }

  return result;
}

uint64_t sub_100F019D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646975756162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72624E72656E776FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100F01DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for UnpairEndPoint(0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v5);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for UnpairEndPoint(uint64_t a1)
{
  result = qword_1016C0348;
  if (!qword_1016C0348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for KeyRequestEnvelope(uint64_t a1)
{
  result = qword_1016C03D8;
  if (!qword_1016C03D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F01FE4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F02058(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0410, &qword_1013F2068);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100F02748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[0] = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for KeyRequestEnvelope(0) + 20));
    v10 = *v9;
    v12 = *(v9 + 1);
    v11 = *(v9 + 2);
    v15[0] = v10;
    v16 = v12;
    v17 = v11;
    v14[7] = 1;
    sub_100157F84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F02220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for UUID();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C0420, &qword_1013F2070);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for KeyRequestEnvelope(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100F02748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  v30 = 0;
  sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
  v15 = v29;
  v16 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v33 = 1;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v32;
  v20 = v23;
  v21 = v23 + *(v24 + 20);
  *v21 = v30;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  sub_100F0279C(v20, v25);
  sub_100007BAC(a1);
  return sub_100F02800(v20);
}

uint64_t sub_100F02578()
{
  if (*v0)
  {
    return 0x4449656C707061;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100F025B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100F026A0(uint64_t a1)
{
  v2 = sub_100F02748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F026DC(uint64_t a1)
{
  v2 = sub_100F02748();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F02748()
{
  result = qword_1016C0418;
  if (!qword_1016C0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0418);
  }

  return result;
}

uint64_t sub_100F0279C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyRequestEnvelope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F02800(uint64_t a1)
{
  v2 = type metadata accessor for KeyRequestEnvelope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F02870()
{
  result = qword_1016C0428;
  if (!qword_1016C0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0428);
  }

  return result;
}

unint64_t sub_100F028C8()
{
  result = qword_1016C0430;
  if (!qword_1016C0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0430);
  }

  return result;
}

unint64_t sub_100F02920()
{
  result = qword_1016C0438;
  if (!qword_1016C0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0438);
  }

  return result;
}

uint64_t sub_100F02974()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_1000BC488();
  v10[2] = "nectionMaterialMonitor";
  v12 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v11 = *(v2 + 104);
  v11(v4);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  v10[0] = sub_100F04BD0(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v13;
  *(v14 + 16) = v5;
  (v11)(v4, v12, v6);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v14;
  *(v14 + 24) = v7;
  *(v8 + 32) = &_swiftEmptySetSingleton;
  return v8;
}

uint64_t sub_100F02C90()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2C0);
  sub_1000076D4(v0, qword_10177C2C0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100F02D10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100F02D84(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100F02DD8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CD08, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100F02E4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C2D8);
  v1 = sub_1000076D4(v0, qword_10177C2D8);
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C2C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100F02F14()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = type metadata accessor for LocalFindableConnectionMaterialTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 136);
    *(v0 + 136) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100F02FB0()
{
  v0 = type metadata accessor for XPCServiceDescription();
  v19 = *(v0 - 8);
  v20 = v0;
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MachServiceName();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  MachServiceName.init(_:)();
  (*(v4 + 16))(v7, v9, v3);
  sub_100F02F14();
  if (qword_101694FC8 != -1)
  {
    swift_once();
  }

  v10 = qword_1016C0440;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 interfaceWithProtocol:&OBJC_PROTOCOL___SPLocalFindableConnectionMaterialMonitoringXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  if (qword_101694FC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C2D8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully registered XPC services.", v17, 2u);
  }

  (*(v19 + 8))(v2, v20);
  return (*(v4 + 8))(v9, v3);
}

void *sub_100F03324(void *a1, uint64_t a2, const char *a3)
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C2C0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  return sub_100F03798(v6);
}

void sub_100F0347C()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPLocalFindableConnectionMaterialMonitoringXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C0440 = v2;
}

uint64_t sub_100F034E4(void *a1)
{
  if (!*(v1 + 144))
  {
    type metadata accessor for LocalFindableConnectionMaterialMonitoringSession(0);
    *(swift_allocObject() + 40) = 0;
    v3 = sub_100F02974();
    if (qword_101694FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C2C0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v7 = 136315138;
      v15 = v14;

      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690, &unk_101404F78);
      v8._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 8250;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 62;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);

      v12 = sub_1000136BC(60, 0xE100000000000000, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Created new LocalFindableConnectionMaterialSession: %s", v7, 0xCu);
      sub_100007BAC(v14);
    }

    *(v1 + 144) = v3;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D074(a1);
}

void *sub_100F03798(void *result)
{
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(v2 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100F04BC8;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10165B228;
    v8 = _Block_copy(aBlock);
    swift_retain_n();
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(aBlock[0]) == 1)
      {
        sub_100A54240();

        *(v3 + 144) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100F03968(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100F03988, v1, 0);
}

uint64_t sub_100F03988()
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalFindableConnectionMaterialService.startCharacteristicsMonitoring", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[5];

  sub_100F034E4(v5);
  if (*(v6 + 144))
  {

    sub_100A523D0();
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v0[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961D0, 255, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError, &unk_101389D50);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F03B80()
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccessoryDiscoveryService.stopCharacteristicsMonitoring", v4, 2u);
  }

  v5 = v0[4];

  if (*(v5 + 144))
  {

    sub_100A54240();
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v0[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961D0, 255, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError, &unk_101389D50);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100F03D48(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_100F03E70;

  return daemon.getter();
}

uint64_t sub_100F03E70(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100F04BD0(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F04BD0(&unk_1016AA520, 255, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100F04054;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F04054(uint64_t a1)
{
  v4 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_100F04634;
  }

  else
  {

    v6 = sub_100F0418C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F0418C()
{
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_100F0422C;
  v2 = v0[6];
  v3 = v0[4];

  return sub_100C57B00(v2, v3);
}

uint64_t sub_100F0422C()
{
  v2 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100F045B0;
  }

  else
  {
    v3 = sub_100F04354;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100F04354()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 48))(v1, 1, v0[7]);
  if (v2 == 1)
  {
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F04BD0(&qword_1016961E0, 255, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();

    v3 = v0[2];
  }

  else
  {
    v4 = v0[9];
    sub_100F04B64(v1, v4);
    v3 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
    type metadata accessor for PeripheralConnectionMaterial(0);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 setIrkData:isa];

    v6 = MACAddress.data.getter();
    v8 = v7;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v6, v8);
    [v3 setBtAddressData:v9];

    v10 = MACAddress.bluetoothAddressWithType.getter();
    v12 = v11;
    v13 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v10, v12);
    [v3 setBtAddressWithTypeData:v13];

    sub_100A54698(v4);
  }

  v14 = v0[1];

  return v14(v3, v2 == 1);
}

uint64_t sub_100F045B0()
{

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_100F04634()
{

  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_100F046B8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F0472C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100F047D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100F04898(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100F04960()
{
  sub_100F02FB0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F049C4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LocalFindableConnectionMaterialService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100F04A6C()
{
  type metadata accessor for LocalFindableConnectionMaterialService();
  sub_100F04BD0(&unk_1016B1020, v0, type metadata accessor for LocalFindableConnectionMaterialService, &unk_1013F2240);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100F04B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFindableAccessoryRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F04BD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100F04C64(void *a1)
{
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C2C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "shouldAccept: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_100F04E90();
  v9 = NSXPCConnection.hasEntitlement<A>(_:)();
  if ((v9 & 1) == 0)
  {
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing entitlement: %@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  return v9 & 1;
}

unint64_t sub_100F04E90()
{
  result = qword_1016C05A8;
  if (!qword_1016C05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05A8);
  }

  return result;
}

unint64_t sub_100F04EF8()
{
  result = qword_1016C05B0;
  if (!qword_1016C05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05B0);
  }

  return result;
}

unint64_t sub_100F04F50()
{
  result = qword_1016C05B8;
  if (!qword_1016C05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05B8);
  }

  return result;
}

uint64_t sub_100F04FA8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v9 = sub_1000BC4D4(&qword_1016C07C8, &qword_1013F28A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_100F087E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = a2;
  v19 = a3;
  v20 = a4;
  v21 = 0;
  sub_100EB2098();
  v13 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    v18 = v16;
    v21 = 1;
    sub_1000BC4D4(&qword_1016C07D8, &qword_1013F28A8);
    sub_100F08838();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100F05160(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0850, &qword_1013F28E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100F09064();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_100F088EC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
    LOBYTE(v14) = *(v3 + Item[5]);
    v16 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + Item[6]);
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 2;
    sub_10002E98C(v14, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v14, v15);
    v14 = *(v3 + Item[7]);
    v16 = 3;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1008DA424(&qword_10169C9F8, sub_1000E3190, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + Item[8]);
    v16 = 4;
    sub_1000BC4D4(&qword_1016C0838, &qword_1013F28D8);
    sub_100F090B8(&qword_1016C0858, sub_100F091EC, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F05498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for UUID();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016C0828, &unk_1013F28C8);
  v17 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  __chkstk_darwin(Item);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100F09064();
  v20 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = v10;
  v13 = v17;
  v12 = v18;
  LOBYTE(v22) = 0;
  sub_100F088EC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v11, v14, v4);
  v23 = 1;
  sub_10064666C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + Item[5]) = v22;
  v23 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v11 + Item[6]) = v22;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v23 = 3;
  sub_1008DA424(&qword_10169F5A0, sub_1000E307C, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v11 + Item[7]) = v22;
  sub_1000BC4D4(&qword_1016C0838, &qword_1013F28D8);
  v23 = 4;
  sub_100F090B8(&qword_1016C0840, sub_100F09130, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v20, v21);
  *(v11 + Item[8]) = v22;
  sub_100F09184(v11, v16, type metadata accessor for KeyDropFetchRequest.SharedFetchItem);
  sub_100007BAC(a1);
  return sub_100F0829C(v11, type metadata accessor for KeyDropFetchRequest.SharedFetchItem);
}

uint64_t sub_100F059C0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0818, &qword_1013F28C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100F08F30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[0] = *v3;
  LOBYTE(v12) = 0;
  sub_100EB309C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[0] = *(v3 + 8);
    LOBYTE(v12) = 1;
    sub_100F08FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[0] = *(v3 + 16);
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v11 = 3;
    sub_100F0902C(v3, v10);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F05BE8()
{
  if (*v0)
  {
    return 0x6546646572616873;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_100F05C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6546646572616873 && a2 == 0xEB00000000686374)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100F05D20(uint64_t a1)
{
  v2 = sub_100F087E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F05D5C(uint64_t a1)
{
  v2 = sub_100F087E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F05DBC()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x6F547265626D656DLL;
  v4 = 0x76654464656E776FLL;
  if (v1 != 3)
  {
    v4 = 0x6E75426572616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F05E6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F08988(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F05E94(uint64_t a1)
{
  v2 = sub_100F09064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F05ED0(uint64_t a1)
{
  v2 = sub_100F09064();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F05F3C()
{
  v1 = 0x6E49656C646E7562;
  v2 = 0x7865646E49646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x646E497472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100F05FC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F08B48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F05FF0(uint64_t a1)
{
  v2 = sub_100F08F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0602C(uint64_t a1)
{
  v2 = sub_100F08F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100F06068@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100F08CC0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100F060EC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C07F0, &qword_1013F28B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100F08934();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100F088EC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100F062A8()
{
  if (*v0)
  {
    return 0x6B6F546863746566;
  }

  else
  {
    return 0x64496572616873;
  }
}

uint64_t sub_100F062E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6F546863746566 && a2 == 0xEA00000000006E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100F063CC(uint64_t a1)
{
  v2 = sub_100F08934();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F06408(uint64_t a1)
{
  v2 = sub_100F08934();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0645C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 136) = a4;
  *(v5 + 144) = a5;
  *(v5 + 448) = a2;
  *(v5 + 120) = a1;
  *(v5 + 128) = a3;
  v6 = type metadata accessor for HashAlgorithm();
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  v7 = type metadata accessor for P256.Signing.PublicKey();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v5 + 224) = v9;
  *(v5 + 232) = *(v9 - 8);
  *(v5 + 240) = swift_task_alloc();
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  *(v5 + 248) = Item;
  *(v5 + 256) = *(Item - 8);
  *(v5 + 264) = swift_task_alloc();
  v11 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v5 + 272) = v11;
  *(v5 + 280) = *(v11 - 8);
  *(v5 + 288) = swift_task_alloc();
  v12 = type metadata accessor for KeyDropFetchItem(0);
  *(v5 + 296) = v12;
  *(v5 + 304) = *(v12 - 8);
  *(v5 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F0674C, 0, 0);
}

uint64_t sub_100F0674C()
{
  result = *(v0 + 120);
  v57 = *(result + 16);
  if (v57)
  {
    v2 = 0;
    v3 = *(v0 + 296);
    v51 = *(v0 + 248);
    v52 = *(v0 + 256);
    v4 = *(v0 + 232);
    v56 = *(v0 + 304);
    v55 = result + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v54 = (v4 + 16);
    v49 = (*(v0 + 184) + 8);
    v50 = (*(v0 + 208) + 8);
    v48 = (v4 + 32);
    v5 = _swiftEmptyArrayStorage;
    v59 = v3;
    v53 = *(v0 + 120);
    while (v2 < *(result + 16))
    {
      v6 = *(v0 + 312);
      v61 = v2;
      sub_100F09184(v55 + *(v56 + 72) * v2, v6, type metadata accessor for KeyDropFetchItem);
      v7 = *(v6 + v3[7]);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_1011247DC(0, v8, 0);
        v9 = (v7 + 64);
        do
        {
          v64 = *(v9 - 2);
          v10 = *v9;
          v62 = *(v9 - 1);
          sub_100017D5C(*(v9 - 1), *v9);
          v12 = _swiftEmptyArrayStorage[2];
          v11 = _swiftEmptyArrayStorage[3];
          if (v12 >= v11 >> 1)
          {
            sub_1011247DC((v11 > 1), v12 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v12 + 1;
          v13 = &_swiftEmptyArrayStorage[5 * v12];
          *(v13 + 2) = v64;
          *(v13 + 3) = v62;
          v13[8] = v10;
          v9 += 5;
          --v8;
        }

        while (v8);
        v3 = v59;
      }

      v14 = *(v0 + 312);
      (*v54)(*(v0 + 240), v14, *(v0 + 224));
      v15 = *(v14 + v3[5]);
      v16 = v14 + v3[8];
      v17 = (v16 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
      v18 = *v17;
      v19 = v17[1];
      *(v0 + 88) = *v17;
      *(v0 + 96) = v19;
      sub_100017D5C(v18, v19);
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v20 = *(v0 + 312);
      v65 = v15;
      v21 = *(v0 + 216);
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 176);
      P256.Signing.PrivateKey.publicKey.getter();
      (*v50)(v21, v22);
      v63 = P256.Signing.PublicKey.compressedRepresentation.getter();
      v60 = v25;
      (*v49)(v23, v24);
      v26 = *(v20 + v3[6]);
      v27 = *(v26 + 16);
      if (v27)
      {
        v58 = v5;
        sub_1011244D8(0, v27, 0);
        v28 = (v26 + 40);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;
          sub_100017D5C(v29, *v28);
          v32 = _swiftEmptyArrayStorage[2];
          v31 = _swiftEmptyArrayStorage[3];
          if (v32 >= v31 >> 1)
          {
            sub_1011244D8((v31 > 1), v32 + 1, 1);
          }

          v28 += 2;
          _swiftEmptyArrayStorage[2] = v32 + 1;
          v33 = &_swiftEmptyArrayStorage[2 * v32];
          v33[4] = v29;
          v33[5] = v30;
          --v27;
        }

        while (v27);
        v5 = v58;
        v3 = v59;
      }

      v34 = *(v0 + 264);
      (*v48)(v34, *(v0 + 240), *(v0 + 224));
      *(v34 + v51[5]) = v65;
      v35 = (v34 + v51[6]);
      *v35 = v63;
      v35[1] = v60;
      *(v34 + v51[7]) = _swiftEmptyArrayStorage;
      *(v34 + v51[8]) = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5C87C(0, v5[2] + 1, 1, v5);
      }

      v37 = v5[2];
      v36 = v5[3];
      if (v37 >= v36 >> 1)
      {
        v5 = sub_100A5C87C((v36 > 1), v37 + 1, 1, v5);
      }

      v2 = v61 + 1;
      v38 = *(v0 + 264);
      sub_100F0829C(*(v0 + 312), type metadata accessor for KeyDropFetchItem);
      v5[2] = v37 + 1;
      sub_100F07628(v38, v5 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37);
      result = v53;
      if (v61 + 1 == v57)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_23:
    *(v0 + 320) = v5;
    v39 = *(v0 + 280);
    v40 = *(v0 + 288);
    v41 = *(v0 + 272);
    v43 = *(v0 + 128);
    v42 = *(v0 + 136);
    v44 = *(v0 + 448);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    *(v0 + 328) = JSONEncoder.init()();
    *v40 = sub_100281AE0;
    v40[1] = 0;
    (*(v39 + 104))(v40, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v41);
    dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
    *(v0 + 56) = v44;
    *(v0 + 64) = v43;
    *(v0 + 72) = v42;
    *(v0 + 80) = v5;
    sub_100F0768C();

    v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 336) = 0;
    *(v0 + 344) = v45;
    *(v0 + 352) = v46;

    *(v0 + 360) = sub_100646BE0();
    v47 = swift_task_alloc();
    *(v0 + 368) = v47;
    *v47 = v0;
    v47[1] = sub_100F06E2C;

    return sub_100E9FECC();
  }

  return result;
}

uint64_t sub_100F06E2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100F06F2C, 0, 0);
}

uint64_t sub_100F06F2C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[20];
  v6 = v0[21];
  v0[13] = v2;
  v17 = v5;
  v18 = v0[19];
  v19 = v6;
  v0[14] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v7 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 13));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v10 = v0[14];
  v0[49] = v0[13];
  v0[50] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[51] = v11;
  v0[52] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[53] = v14;
  *v14 = v0;
  v14[1] = sub_100F070FC;
  v15 = v0[18];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_100F070FC(uint64_t a1)
{
  v4 = *v2;
  v4[54] = v1;

  v5 = v4[52];
  v6 = v4[51];
  if (v1)
  {

    sub_100016590(v6, v5);
    v7 = sub_100F073BC;
  }

  else
  {
    v4[55] = a1;
    sub_100016590(v6, v5);
    v7 = sub_100F07270;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F07270()
{
  v12 = v0;
  v1 = v0[55];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[45];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v11);

  sub_100016590(v3, v2);

  v6 = v11;

  v7 = v0[1];
  v8 = v0[43];
  v9 = v0[44];

  return v7(v6, v8, v9);
}

uint64_t sub_100F073BC()
{
  sub_100016590(v0[49], v0[50]);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to generate keydrop fetch attestation header: %{public}@.", v4, 0xCu);
    sub_100288C6C(v5);
  }

  else
  {
  }

  v7 = v0[45];

  v8 = v0[1];
  v9 = v0[43];
  v10 = v0[44];

  return v8(v7, v9, v10);
}

uint64_t sub_100F07628(uint64_t a1, uint64_t a2)
{
  Item = type metadata accessor for KeyDropFetchRequest.SharedFetchItem(0);
  (*(*(Item - 8) + 32))(a2, a1, Item);
  return a2;
}

unint64_t sub_100F0768C()
{
  result = qword_1016C05C0;
  if (!qword_1016C05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C05C0);
  }

  return result;
}

uint64_t sub_100F076E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for HashAlgorithm();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent(0);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F07830, 0, 0);
}

uint64_t sub_100F07830()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[21] = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v9 = type metadata accessor for UUID();
  v0[22] = v9;
  v10 = *(v9 - 8);
  v0[23] = v10;
  (*(v10 + 16))(v3, v8, v9);
  v11 = (v3 + *(v5 + 20));
  *v11 = v7;
  v11[1] = v6;
  sub_100F088EC(&qword_1016C05C8, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent, &unk_1013F2814);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v12;
  v0[26] = v13;
  v0[27] = sub_100646BE0();
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_100F07AE0;

  return sub_100EA06DC();
}

uint64_t sub_100F07AE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_100F07BE0, 0, 0);
}

uint64_t sub_100F07BE0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[14];
  v6 = v0[15];
  v0[7] = v2;
  v17 = v5;
  v18 = v0[13];
  v19 = v6;
  v0[8] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v3;
  v0[3] = v4;
  v7 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v9, (v0 + 7));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v10 = v0[8];
  v0[31] = v0[7];
  v0[32] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[33] = v11;
  v0[34] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_100F07DB0;
  v15 = v0[12];

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_100F07DB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_100F08038;
  }

  else
  {
    v6 = v4[33];
    v7 = v4[34];
    v4[37] = a1;
    sub_100016590(v6, v7);
    v5 = sub_100F07EE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F07EE0()
{
  v16 = v0;
  v1 = v0[37];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  v5 = v0[23];
  v13 = v0[22];
  v14 = v0[17];
  v6 = v0[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v15);

  sub_100016590(v3, v2);

  (*(v5 + 8))(v6, v13);
  sub_100F0829C(v14, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent);
  v8 = v15;

  v9 = v0[1];
  v10 = v0[25];
  v11 = v0[26];

  return v9(v8, v10, v11);
}

uint64_t sub_100F08038()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100016590(v0[33], v0[34]);
  sub_100016590(v1, v2);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177CDD0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[17];
  v10 = v0[9];
  if (v6)
  {
    v19 = v0[22];
    v11 = swift_slowAlloc();
    v20 = v9;
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate keydrop fetch attestation header: %{public}@.", v11, 0xCu);
    sub_100288C6C(v12);
    v9 = v20;

    v8 = v19;
  }

  (*(v7 + 8))(v10, v8);
  sub_100F0829C(v9, type metadata accessor for KeyDropImportedLocationFetchRequest.KeyDropImportedLocationFetchContent);
  v14 = v0[27];

  v15 = v0[1];
  v16 = v0[25];
  v17 = v0[26];

  return v15(v14, v16, v17);
}

uint64_t sub_100F0829C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F08344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F08398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_100F08438(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100F0868C(319, &qword_1016C06C8, &type metadata for HashedAdvertisement, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100F0868C(319, &unk_1016C06D0, &type metadata for KeyDropDecryptionRange, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for KeyDropJoinToken(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100F08564(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100F0868C(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100F0868C(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100F0868C(319, &unk_1016C0778, &type metadata for KeyDropFetchRequest.BundleDecryption, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100F0868C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100F086EC(uint64_t a1)
{
  result = sub_100F08714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100F08714()
{
  result = qword_1016C07B8;
  if (!qword_1016C07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07B8);
  }

  return result;
}

unint64_t sub_100F08768(uint64_t a1)
{
  result = sub_100F08790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100F08790()
{
  result = qword_1016C07C0;
  if (!qword_1016C07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07C0);
  }

  return result;
}

unint64_t sub_100F087E4()
{
  result = qword_1016C07D0;
  if (!qword_1016C07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07D0);
  }

  return result;
}

unint64_t sub_100F08838()
{
  result = qword_1016C07E0;
  if (!qword_1016C07E0)
  {
    sub_1000BC580(&qword_1016C07D8, &qword_1013F28A8);
    sub_100F088EC(&qword_1016C07E8, type metadata accessor for KeyDropFetchRequest.SharedFetchItem, &unk_1013F270C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07E0);
  }

  return result;
}

uint64_t sub_100F088EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100F08934()
{
  result = qword_1016C07F8;
  if (!qword_1016C07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C07F8);
  }

  return result;
}

uint64_t sub_100F08988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F547265626D656DLL && a2 == 0xEB000000006E656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E75426572616873 && a2 == 0xEC00000073656C64)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100F08B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49656C646E7562 && a2 == 0xEB00000000786564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497472617473 && a2 == 0xEA00000000007865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013742F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100F08CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C0800, &qword_1013F28B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100F08F30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v20 = 0;
  sub_100EB3048();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v18;
  v20 = 1;
  sub_100F08F84();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v9;
  v10 = v18;
  v20 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v10;
  v12 = v18;
  v20 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  result = sub_100007BAC(a1);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  return result;
}

unint64_t sub_100F08F30()
{
  result = qword_1016C0808;
  if (!qword_1016C0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0808);
  }

  return result;
}

unint64_t sub_100F08F84()
{
  result = qword_1016C0810;
  if (!qword_1016C0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0810);
  }

  return result;
}

unint64_t sub_100F08FD8()
{
  result = qword_1016C0820;
  if (!qword_1016C0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0820);
  }

  return result;
}

unint64_t sub_100F09064()
{
  result = qword_1016C0830;
  if (!qword_1016C0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0830);
  }

  return result;
}

uint64_t sub_100F090B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C0838, &qword_1013F28D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F09130()
{
  result = qword_1016C0848;
  if (!qword_1016C0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0848);
  }

  return result;
}

uint64_t sub_100F09184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100F091EC()
{
  result = qword_1016C0860;
  if (!qword_1016C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0860);
  }

  return result;
}

unint64_t sub_100F09284()
{
  result = qword_1016C0868;
  if (!qword_1016C0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0868);
  }

  return result;
}

unint64_t sub_100F092DC()
{
  result = qword_1016C0870;
  if (!qword_1016C0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0870);
  }

  return result;
}

unint64_t sub_100F09334()
{
  result = qword_1016C0878;
  if (!qword_1016C0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0878);
  }

  return result;
}

unint64_t sub_100F0938C()
{
  result = qword_1016C0880;
  if (!qword_1016C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0880);
  }

  return result;
}

unint64_t sub_100F093E4()
{
  result = qword_1016C0888;
  if (!qword_1016C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0888);
  }

  return result;
}

unint64_t sub_100F0943C()
{
  result = qword_1016C0890;
  if (!qword_1016C0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0890);
  }

  return result;
}

unint64_t sub_100F09494()
{
  result = qword_1016C0898;
  if (!qword_1016C0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0898);
  }

  return result;
}

unint64_t sub_100F094EC()
{
  result = qword_1016C08A0;
  if (!qword_1016C08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08A0);
  }

  return result;
}

unint64_t sub_100F09544()
{
  result = qword_1016C08A8;
  if (!qword_1016C08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08A8);
  }

  return result;
}

unint64_t sub_100F0959C()
{
  result = qword_1016C08B0;
  if (!qword_1016C08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08B0);
  }

  return result;
}

unint64_t sub_100F095F4()
{
  result = qword_1016C08B8;
  if (!qword_1016C08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08B8);
  }

  return result;
}

unint64_t sub_100F0964C()
{
  result = qword_1016C08C0;
  if (!qword_1016C08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08C0);
  }

  return result;
}

uint64_t sub_100F096C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_100F096EC, v3, 0);
}

uint64_t sub_100F096EC()
{
  v21 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch request", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];

  sub_100017D5C(v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  sub_100016590(v6, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = sub_100646BE8();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1000136BC(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "KeyDropFetchRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];
  v0[5] = &type metadata for KeyDropFetchRequest;
  v0[6] = sub_100F0A038();
  v0[2] = v17;
  v0[3] = v15;
  v0[4] = v16;

  sub_100017D5C(v15, v16);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_100F099B4;

  return sub_100644518((v0 + 2), 4);
}

uint64_t sub_100F099B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 96) = v4;

  if (v4)
  {
    v12 = *(v10 + 80);

    return _swift_task_switch(sub_100F09B3C, v12, 0);
  }

  else
  {
    sub_100007BAC((v10 + 16));
    v13 = *(v11 + 8);

    return v13(a1, a2, a3, a4);
  }
}

uint64_t sub_100F09B3C()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F09BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(sub_100F09BC8, v4, 0);
}

uint64_t sub_100F09BC8()
{
  v22 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Location Fetch request for imported beacon", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];

  sub_100017D5C(v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  sub_100016590(v6, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_100646BE8();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1000136BC(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "KeyDropImportedLocationFetchRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[8];
  v0[5] = &type metadata for KeyDropImportedLocationFetchRequest;
  v0[6] = sub_100F0A08C();
  v0[2] = v17;
  v0[3] = v15;
  v0[4] = v16;

  sub_100017D5C(v15, v16);
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_100F09E98;
  v19 = v0[7];

  return sub_100645144(v19, (v0 + 2), 10);
}

uint64_t sub_100F09E98()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[11];

    return _swift_task_switch(sub_100F09FD4, v3, 0);
  }

  else
  {
    sub_100007BAC(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100F09FD4()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100F0A038()
{
  result = qword_1016C08C8;
  if (!qword_1016C08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08C8);
  }

  return result;
}

unint64_t sub_100F0A08C()
{
  result = qword_1016C08D0;
  if (!qword_1016C08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C08D0);
  }

  return result;
}

uint64_t sub_100F0A0E0(uint64_t a1, char a2, id a3)
{
  [a3 fileDescriptor];
  v7 = sp_key_subsequence_create_from_file_descriptor();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_beaconIdentifier;
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v3 + v9, a1, v10);
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_sequence) = a2 & 1;
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_subsequenceHandle) = v8;
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex) = sp_key_subsequence_map_get_first_index();
    LODWORD(v8) = sp_key_subsequence_map_get_last_index();

    (*(v11 + 8))(a1, v10);
    *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex) = v8;
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a1, v12);

    type metadata accessor for BeaconKeySubsequence(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_100F0A298()
{
  sp_key_subsequence_destroy();
  v1 = OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_beaconIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconKeySubsequence(uint64_t a1)
{
  result = qword_1016C0908;
  if (!qword_1016C0908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F0A398(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

void sub_100F0A450(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1;
  v11 = type metadata accessor for CryptoError();
  v12 = __chkstk_darwin(v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  if (*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex) > v9 || *(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex) < v9)
  {
    sub_100720740();
    v16 = swift_allocError();
    *v17 = 4;
    swift_willThrow();
LABEL_4:
    *a4 = v16;
    return;
  }

  v100 = v15;
  v102 = a5;
  v103 = a3;
  record_for_index = sp_key_subsequence_get_record_for_index();
  v18 = sp_key_record_copy_intermediate_key();
  if (!v18)
  {
    __break(1u);
    goto LABEL_55;
  }

  v19 = v18;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_1004A4714(v20, v22, &aBlock);
  v23 = v5;
  if (v5)
  {
    v16 = v5;
LABEL_23:
    v42 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v43 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    *(v44 + 56) = &type metadata for UInt32;
    *(v44 + 64) = &protocol witness table for UInt32;
    *(v44 + 32) = v9;
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Failed to read intermediate and public keys for index %u", v91);

    swift_willThrow();
    if (!v23)
    {
      sub_100429EA8(v98, v99);
    }

    goto LABEL_4;
  }

  v25 = aBlock;
  v24 = v107;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v26 = __DataStorage.init(length:)();
  v27 = v24 >> 62;
  v101 = v25;
  if (v24 >> 62 == 3)
  {
    goto LABEL_18;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      LODWORD(v28) = HIDWORD(v25) - v25;
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v28 = v28;
        goto LABEL_15;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
LABEL_37:
      v57 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_10138BBE0;
      *(v58 + 56) = &type metadata for UInt32;
      *(v58 + 64) = &protocol witness table for UInt32;
      *(v58 + 32) = v9;
      aBlock = v103;

      sub_1000BC4D4(&qword_1016C09C0, &qword_1013F2D90);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      *(v58 + 96) = &type metadata for String;
      *(v58 + 104) = sub_100008C00();
      *(v58 + 72) = v59;
      *(v58 + 80) = v61;
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v57, "Skipped private encrypted key for index %u. Cryptor: %{public}@", 63, 2, v58);

      v47 = 0;
      v62 = 0xF000000000000000;
      v56 = v98;
      v55 = v99;
      v45 = a4;
      goto LABEL_48;
    }

    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    v31 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v31)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v28 = BYTE6(v24);
  }

LABEL_15:
  if (v28 != 32)
  {
LABEL_18:

    v96 = 0;
    goto LABEL_19;
  }

  v32 = v26;
  sub_100017D5C(v101, v24);

  v33 = sub_100F0B1BC(v101, v24, 0x2000000000, v32 | 0x4000000000000000);
  v96 = 0;
  v25 = v101;

  sub_100016590(v25, v24);
  if (v33)
  {
    v98 = 0;
    v99 = 0xF000000000000000;
    goto LABEL_20;
  }

LABEL_19:
  sub_100017D5C(v25, v24);
  v98 = v25;
  v99 = v24;
LABEL_20:
  v97 = a4;
  v34 = sp_key_record_copy_public_key();
  if (!v34)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v35 = v34;
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v96;
  v40 = sub_10049C0AC(v36, v38);
  v16 = v39;
  if (v39)
  {
    sub_100016590(v101, v24);
    a4 = v97;
    goto LABEL_23;
  }

  v45 = v41;
  v96 = v40;
  sub_100016590(v101, v24);
  if (!record_for_index)
  {
LABEL_35:
    v56 = v98;
    v55 = v99;
    if (!v103)
    {
      v47 = 0;
      v62 = 0xF000000000000000;
      goto LABEL_48;
    }

    a4 = v45;
    v14 = static os_log_type_t.default.getter();
    if (qword_101694A20 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

  v46 = *(record_for_index + 32);
  if (v46 == 1)
  {
    v63 = v45;
    v64 = sp_key_record_copy_private_key();
    if (v64)
    {
      v65 = v64;
      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v47 = sub_10049BD68(v66, v68);
      v56 = v98;
      v55 = v99;
      v45 = v63;
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (v46 != 2)
  {
    goto LABEL_35;
  }

  v47 = v103;
  if (!v103)
  {
    v62 = 0xF000000000000000;
    v56 = v98;
    v55 = v99;
    goto LABEL_48;
  }

  v101 = v45;

  v48 = sp_key_record_copy_private_encrypted_key();
  if (!v48)
  {
    goto LABEL_57;
  }

  v49 = v48;
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    if (v53 != 2)
    {
      goto LABEL_58;
    }

    v54 = *(v50 + 24);
  }

  else if (v53)
  {
    v54 = v50 >> 32;
  }

  else
  {
    v54 = BYTE6(v52);
  }

  if (v54 >= 57)
  {
    v95 = Data._Representation.subscript.getter();
    record_for_index = v69;
    sub_100016590(v50, v52);
    v70 = v103;
    v71 = v103[9];
    v72 = swift_allocObject();
    v72[2] = sub_10088FFBC;
    v72[3] = v70;
    v110 = sub_1000D2FB0;
    v111 = v72;
    aBlock = _NSConcreteStackBlock;
    v107 = 1107296256;
    v108 = sub_10013FE14;
    v109 = &unk_10165B838;
    v73 = _Block_copy(&aBlock);

    dispatch_sync(v71, v73);
    _Block_release(v73);
    LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

    if ((v71 & 1) == 0)
    {
      __chkstk_darwin(v74);
      *(&v91 - 4) = v70;
      v75 = record_for_index;
      *(&v91 - 3) = v95;
      *(&v91 - 2) = v75;
      OS_dispatch_queue.sync<A>(execute:)();
      v76 = aBlock;
      v77 = v107;
      v78 = v96;
      v79 = v101;
      v104 = v96;
      v105 = v101;
      v109 = &type metadata for Data;
      v110 = &protocol witness table for Data;
      v80 = sub_1000035D0(&aBlock, &type metadata for Data);
      v81 = *v80;
      v92 = v80[1];
      v93 = v81;
      sub_100017D5C(v78, v79);
      sub_100017D5C(v78, v79);
      v94 = v76;
      sub_100017D5C(v76, v77);
      sub_100017DB0(v93, v92, &v104);
      sub_100016590(v78, v79);
      sub_100007BAC(&aBlock);
      v88 = sub_10049BD68(v104, v105);
      v90 = v89;
      sub_100016590(v94, v77);

      sub_100016590(v95, record_for_index);
      v62 = v90;
      v47 = v88;
      v56 = v98;
      v55 = v99;
      v45 = v101;
LABEL_49:
      v87 = v102;
      *v102 = v56;
      v87[1] = v55;
      v87[2] = v78;
      v87[3] = v45;
      v87[4] = v47;
      v87[5] = v62;
      return;
    }

    __break(1u);
    swift_once();
    v82 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_10138BBE0;
    *(v83 + 56) = &type metadata for UInt32;
    *(v83 + 64) = &protocol witness table for UInt32;
    *(v83 + 32) = v9;
    aBlock = v72;
    swift_errorRetain();
    v84 = String.init<A>(describing:)();
    v86 = v85;
    *(v83 + 96) = &type metadata for String;
    *(v83 + 104) = sub_100008C00();
    *(v83 + 72) = v84;
    *(v83 + 80) = v86;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v82, "Skipped private encrypted key for index %u. %@", 46, 2, v83);

    v47 = 0;
    v62 = 0xF000000000000000;
    v56 = v98;
    v55 = v99;
    v45 = v101;
LABEL_48:
    v78 = v96;
    goto LABEL_49;
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_100F0B000()
{
  *&v11[8] = 0;
  _StringGuts.grow(_:)(55);
  v1._object = 0x8000000101374450;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A646E65202CLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  *v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6E6575716573202CLL;
  v5._object = 0xEC000000203A6563;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_sequence))
  {
    v6 = 0x61646E6F6365732ELL;
  }

  else
  {
    v6 = 0x7972616D6972702ELL;
  }

  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_sequence))
  {
    v7 = 0xEA00000000007972;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return *&v11[4];
}

uint64_t sub_100F0B1BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100F0B34C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100016590(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100771A28(v13, a3, a4, &v12);
  v10 = v4;
  sub_100016590(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100F0B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100771A28(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_100F0B404()
{
  result = qword_10169C9B8;
  if (!qword_10169C9B8)
  {
    type metadata accessor for CryptoError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169C9B8);
  }

  return result;
}

uint64_t sub_100F0B45C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C0A38, &qword_1013F3130);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100F0CC64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v9 = *(v3 + 32);
  v11[13] = 2;
  v11[12] = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[11] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[9] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[8] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F0B678()
{
  v1 = *v0;
  v2 = 0x657261776D726966;
  v3 = 0x5479726574746162;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6D614E6C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 1)
  {
    v5 = 0x696C696261706163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F0B758@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F0C87C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F0B780(uint64_t a1)
{
  v2 = sub_100F0CC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0B7BC(uint64_t a1)
{
  v2 = sub_100F0CC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0B810(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C09F0, &qword_1013F2EA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100F0C52C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 48);
    v11 = *(v3 + 80);
    v24 = *(v3 + 64);
    v25 = v11;
    v12 = *(v3 + 48);
    v23[0] = *(v3 + 32);
    v23[1] = v12;
    v19 = v10;
    v20 = v24;
    v21 = *(v3 + 80);
    v26 = *(v3 + 96);
    v22 = *(v3 + 96);
    v18 = v23[0];
    v17 = 2;
    sub_100F0C580(v23, v15);
    sub_100F0C5B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15[2] = v20;
    v15[3] = v21;
    v16 = v22;
    v15[1] = v19;
    v15[0] = v18;
    sub_100F0C60C(v15);
    v14 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F0BB00(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C09C8, &qword_1013F2E90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100F0C400();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016C09D8, &qword_1013F2E98);
  sub_100F0C454();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100F0BC5C()
{
  v1 = *v0;
  v2 = 0x7250796D646E6966;
  v3 = 0x657261776D726966;
  v4 = 0x747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0x496B726F7774656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x56746E6572727563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F0BD1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F0CA98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F0BD44(uint64_t a1)
{
  v2 = sub_100F0C52C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0BD80(uint64_t a1)
{
  v2 = sub_100F0C52C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0BDD4(uint64_t a1)
{
  v2 = sub_100F0C400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0BE10(uint64_t a1)
{
  v2 = sub_100F0C400();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100F0BE68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for AirTagVersionNumber();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryMetadata(0);
  v12 = v11;
  v13 = a1 + *(v11 + 44);
  if (*(v13 + 16))
  {
    sub_100235594(a1 + *(v11 + 36), v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100D5DCA0(v6);
      v14 = sub_10098E010();
      v17 = v16;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = AirTagVersionNumber.description.getter();
      v17 = v24;
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v19 = *v13;
    v18 = *(v13 + 8);
    v20 = HIDWORD(*v13);
    v43 = v19;
    v44 = v20;
    v45 = v18;
    sub_100233814();
    v46 = CustomStringConvertible.typeDescription.getter();
    v47 = v21;
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_100B67D6C(v19, v18);
    String.append(_:)(v23);

    v14 = v46;
    v17 = v47;
  }

  v25 = v12[13];
  v26 = (a1 + v12[12]);
  v27 = *v26;
  LOBYTE(v46) = *(v26 + 8);
  if (*(a1 + v25 + 4))
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1010D8C84(*(a1 + v25));
  }

  LOBYTE(v43) = 0;
  v29 = *(a1 + v12[14]);
  if (v29 == 4)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a1 + v12[14]);
  }

  v48 = v29 == 4;
  v31 = v12[7];
  v32 = (a1 + v12[6]);
  v33 = v32[1];
  v34 = (a1 + v31);
  v35 = v34[1];
  *&v15 = *v34;
  v42 = v15;
  *&v15 = *v32;
  v41 = v15;

  sub_1008AFD40(a1);
  v36 = v46;
  v37 = v43;
  v38 = v48;
  *a2 = v14;
  *(a2 + 8) = v17;
  *(a2 + 16) = v27;
  *(a2 + 24) = v36;
  *(a2 + 28) = v28;
  *(a2 + 32) = v37;
  *(a2 + 33) = v30;
  *(a2 + 34) = v38;
  *&v39 = v41;
  result.n128_u64[0] = v42;
  *(&v39 + 1) = v33;
  result.n128_u64[1] = v35;
  *(a2 + 56) = result;
  *(a2 + 40) = v39;
  return result;
}

__n128 sub_100F0C160@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C218;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 isInternalBuild];

  if (v13 && (v14 = String._bridgeToObjectiveC()(), v15 = [v11 stringForKey:v14], v14, v15))
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v39 = *(a1 + *(v8 + 20));
    sub_1002313AC();
    v16 = RawRepresentable<>.hexString.getter();
    v18 = v19;
  }

  v20 = (a1 + *(v8 + 64));
  v21 = *v20;
  v22 = v20[1];
  sub_1008AFCDC(a1, v10);

  sub_100F0BE68(v10, v40);
  if (a3 == 3)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    LOBYTE(v39) = a3;
    sub_1000198E8();
    v25 = FixedWidthInteger.data.getter();
    v38 = v21;
    v26 = a1;
    v27 = v18;
    v28 = v16;
    v29 = a2;
    v31 = v30;
    v23 = Data.hexString.getter();
    v24 = v32;
    v33 = v31;
    a2 = v29;
    v16 = v28;
    v18 = v27;
    a1 = v26;
    v21 = v38;
    sub_100016590(v25, v33);
  }

  sub_1008AFD40(a1);
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v21;
  *(a4 + 24) = v22;
  v34 = v40[3];
  *(a4 + 64) = v40[2];
  *(a4 + 80) = v34;
  v35 = v41;
  result = v40[1];
  *(a4 + 32) = v40[0];
  *(a4 + 48) = result;
  *(a4 + 96) = v35;
  *(a4 + 104) = a2;
  *(a4 + 112) = v23;
  *(a4 + 120) = v24;
  return result;
}

unint64_t sub_100F0C400()
{
  result = qword_1016C09D0;
  if (!qword_1016C09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09D0);
  }

  return result;
}

unint64_t sub_100F0C454()
{
  result = qword_1016C09E0;
  if (!qword_1016C09E0)
  {
    sub_1000BC580(&qword_1016C09D8, &qword_1013F2E98);
    sub_100F0C4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09E0);
  }

  return result;
}

unint64_t sub_100F0C4D8()
{
  result = qword_1016C09E8;
  if (!qword_1016C09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09E8);
  }

  return result;
}

unint64_t sub_100F0C52C()
{
  result = qword_1016C09F8;
  if (!qword_1016C09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C09F8);
  }

  return result;
}

unint64_t sub_100F0C5B8()
{
  result = qword_1016C0A00;
  if (!qword_1016C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A00);
  }

  return result;
}

unint64_t sub_100F0C670()
{
  result = qword_1016C0A08;
  if (!qword_1016C0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A08);
  }

  return result;
}

unint64_t sub_100F0C6C8()
{
  result = qword_1016C0A10;
  if (!qword_1016C0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A10);
  }

  return result;
}

unint64_t sub_100F0C720()
{
  result = qword_1016C0A18;
  if (!qword_1016C0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A18);
  }

  return result;
}

unint64_t sub_100F0C778()
{
  result = qword_1016C0A20;
  if (!qword_1016C0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A20);
  }

  return result;
}

unint64_t sub_100F0C7D0()
{
  result = qword_1016C0A28;
  if (!qword_1016C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A28);
  }

  return result;
}

unint64_t sub_100F0C828()
{
  result = qword_1016C0A30;
  if (!qword_1016C0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A30);
  }

  return result;
}

uint64_t sub_100F0C87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100F0CA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_100F0CC64()
{
  result = qword_1016C0A40;
  if (!qword_1016C0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A40);
  }

  return result;
}

unint64_t sub_100F0CCCC()
{
  result = qword_1016C0A48;
  if (!qword_1016C0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A48);
  }

  return result;
}

unint64_t sub_100F0CD24()
{
  result = qword_1016C0A50;
  if (!qword_1016C0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A50);
  }

  return result;
}

unint64_t sub_100F0CD7C()
{
  result = qword_1016C0A58;
  if (!qword_1016C0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0A58);
  }

  return result;
}

uint64_t sub_100F0CDD0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016C0B20, &qword_1013F33F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100F0D804();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_100017D5C(a3, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100F0CFB8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C0B00, &qword_1013F33E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100F0D564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1008D9E0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AccessoryLostModeRequestContent(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100F0D204(uint64_t a1)
{
  v2 = sub_100F0D804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0D240(uint64_t a1)
{
  v2 = sub_100F0D804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0D27C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100F0D5B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100F0D2CC()
{
  v1 = *v0;
  v2 = 0x6449616E6D66;
  v3 = 0x6C69616D65;
  v4 = 0x6D754E72656E776FLL;
  if (v1 != 4)
  {
    v4 = 0x65646F4D74736F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F0D390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F0DA88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F0D3B8(uint64_t a1)
{
  v2 = sub_100F0D564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0D3F4(uint64_t a1)
{
  v2 = sub_100F0D564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for AccessoryLostModeRequestContent(uint64_t a1)
{
  result = qword_1016C0AB8;
  if (!qword_1016C0AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F0D4CC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100F0D564()
{
  result = qword_1016C0B08;
  if (!qword_1016C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B08);
  }

  return result;
}

uint64_t sub_100F0D5B8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C0B10, &unk_1013F33E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100F0D804();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v14 = 0;
    sub_1008DA158(&qword_1016AD848, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_100017D5C(v9, v10);
    sub_100007BAC(a1);

    sub_100016590(v9, v10);
  }

  return v7;
}

unint64_t sub_100F0D804()
{
  result = qword_1016C0B18;
  if (!qword_1016C0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B18);
  }

  return result;
}

unint64_t sub_100F0D87C()
{
  result = qword_1016C0B28;
  if (!qword_1016C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B28);
  }

  return result;
}

unint64_t sub_100F0D8D4()
{
  result = qword_1016C0B30;
  if (!qword_1016C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B30);
  }

  return result;
}

unint64_t sub_100F0D92C()
{
  result = qword_1016C0B38;
  if (!qword_1016C0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B38);
  }

  return result;
}

unint64_t sub_100F0D984()
{
  result = qword_1016C0B40;
  if (!qword_1016C0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B40);
  }

  return result;
}

unint64_t sub_100F0D9DC()
{
  result = qword_1016C0B48;
  if (!qword_1016C0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B48);
  }

  return result;
}

unint64_t sub_100F0DA34()
{
  result = qword_1016C0B50;
  if (!qword_1016C0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0B50);
  }

  return result;
}

uint64_t sub_100F0DA88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616E6D66 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E72656E776FLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t type metadata accessor for AccessoryPairingLockCheckResponse(uint64_t a1)
{
  result = qword_1016C0BB0;
  if (!qword_1016C0BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F0DCF8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F0DD94(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100F0DE94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100F0E834(*a1);
  *a2 = result;
  return result;
}

void sub_100F0DEC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x5364656573;
  v5 = 0x800000010134A130;
  v6 = 0xD000000000000010;
  v7 = 0xE600000000000000;
  v8 = 0x6449616E6D66;
  if (v2 != 4)
  {
    v8 = 0x704164656B73616DLL;
    v7 = 0xED00006449656C70;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E67;
  v10 = 0x6953726576726573;
  if (v2 != 1)
  {
    v10 = 0x6E656B6F74;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100F0DF8C()
{
  v1 = *v0;
  v2 = 0x5364656573;
  v3 = 0xD000000000000010;
  v4 = 0x6449616E6D66;
  if (v1 != 4)
  {
    v4 = 0x704164656B73616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6953726576726573;
  if (v1 != 1)
  {
    v5 = 0x6E656B6F74;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100F0E050@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100F0E834(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F0E078(uint64_t a1)
{
  v2 = sub_100F0E608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F0E0B4(uint64_t a1)
{
  v2 = sub_100F0E608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F0E0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BC4D4(&qword_1016C0BF8, &qword_1013F3670);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v29 - v6;
  v8 = type metadata accessor for AccessoryPairingLockCheckResponse(0);
  __chkstk_darwin(v8);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v37 = a1;
  sub_1000035D0(a1, v11);
  sub_100F0E608();
  v12 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100007BAC(v37);
  }

  v30 = v5;
  v31 = v3;
  v36 = v8;
  v13 = v10;
  v15 = v33;
  v14 = v34;
  v39 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(&v38 + 1);
  *v10 = v38;
  v10[1] = v16;
  v39 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v15;
  *(v13 + 16) = v38;
  v39 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + 32) = v38;
  LOBYTE(v38) = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v14;
  v20 = v36;
  *(v13 + 48) = v18;
  *(v13 + 56) = v21;
  LOBYTE(v38) = 4;
  sub_100395BEC();
  v23 = v30;
  v22 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29[1] = 0;
  (*(v19 + 32))(v13 + *(v20 + 32), v23, v22);
  LOBYTE(v38) = 5;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  (*(v17 + 8))(v7, v35);
  v27 = (v13 + *(v20 + 36));
  *v27 = v24;
  v27[1] = v26;
  sub_100F0E65C(v13, v32);
  sub_100007BAC(v37);
  return sub_100F0E6C0(v13);
}

unint64_t sub_100F0E608()
{
  result = qword_1016C0C00;
  if (!qword_1016C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C00);
  }

  return result;
}

uint64_t sub_100F0E65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0E6C0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockCheckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F0E730()
{
  result = qword_1016C0C08;
  if (!qword_1016C0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C08);
  }

  return result;
}

unint64_t sub_100F0E788()
{
  result = qword_1016C0C10;
  if (!qword_1016C0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C10);
  }

  return result;
}

unint64_t sub_100F0E7E0()
{
  result = qword_1016C0C18;
  if (!qword_1016C0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0C18);
  }

  return result;
}

unint64_t sub_100F0E834(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C9F8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *sub_100F0E880(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A1488, &qword_1013A5540);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v1[4] = 0;
  sub_1000BC4D4(&qword_1016C0D58, &qword_1013F38A0);
  swift_allocObject();
  v1[5] = PassthroughSubject.init()();
  v1[2] = a1;
  v8 = type metadata accessor for KVOHelperNWDatagramConnection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation] = 0;
  *&v9[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observee] = a1;
  v10 = a1;
  v26 = [v10 connectionState];
  sub_1000BC4D4(&qword_1016C0D60, qword_1013F38A8);
  swift_allocObject();
  v11 = CurrentValueSubject.init(_:)();
  *&v9[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_subject] = v11;
  v26 = v11;
  sub_1000041A4(&qword_1016C0D68, &qword_1016C0D60, qword_1013F38A8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  *&v9[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_publisher] = Publisher.eraseToAnyPublisher()();
  v25.receiver = v9;
  v25.super_class = v8;
  v12 = objc_msgSendSuper2(&v25, "init");
  v26 = *&v12[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observee];
  v13 = v26;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v12;
  v15 = v13;
  v16 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v17 = *&v14[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation];
  *&v14[OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_observation] = v16;

  v2[3] = v14;
  v26 = v2[5];
  sub_1000041A4(&qword_1016C0D70, &qword_1016C0D58, &qword_1013F38A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v2[7] = Publisher.eraseToAnyPublisher()();
  v18 = *(v2[3] + OBJC_IVAR____TtC12searchpartydP33_6037248B8C5D968AAFEBF5992F3E761329KVOHelperNWDatagramConnection_publisher);
  v2[6] = v18;
  v26 = v18;
  swift_retain_n();
  sub_1000BC4D4(&qword_1016A1490, &qword_1013A5548);
  sub_1000041A4(&qword_1016A1498, &qword_1016A1490, &qword_1013A5548, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.first(where:)();

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A14A0, &qword_1016A1488, &qword_1013A5540, &protocol conformance descriptor for Publishers.FirstWhere<A>);
  v19 = v23;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v7, v19);
  v2[4] = v20;

  return v2;
}

uint64_t sub_100F0ECD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100F0FA2C;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100F0F188;
    aBlock[3] = &unk_10165BDD8;
    v5 = _Block_copy(aBlock);

    [v3 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v5];
    _Block_release(v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_100F0EE1C()
{
  [*(v0 + 16) cancel];

  return v0;
}

uint64_t sub_100F0EE74()
{
  sub_100F0EE1C();

  return swift_deallocClassInstance();
}

uint64_t sub_100F0EEA8(void *a1, void **a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177C4F0);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        sub_1001DCF6C();
        swift_allocError();
        *v11 = a2;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&_mh_execute_header, v7, v8, "MessagingDatagramConnection read error: %@", v9, 0xCu);
        sub_100288C6C(v10);
      }

      aBlock = a2;
      swift_errorRetain();
      PassthroughSubject.send(completion:)();
    }

    else if (a1[2])
    {
      v13 = a1[5];
      aBlock = a1[4];
      v19 = v13;
      v14 = result;
      sub_100017D5C(aBlock, v13);
      PassthroughSubject.send(_:)();
      sub_100016590(aBlock, v13);
      v15 = *(v14 + 16);
      v16 = swift_allocObject();
      swift_weakInit();
      v22 = sub_100F0FA4C;
      v23 = v16;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100F0F188;
      v21 = &unk_10165BE00;
      v17 = _Block_copy(&aBlock);

      [v15 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v17];
      _Block_release(v17);
    }
  }

  return result;
}

void sub_100F0F188(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

void sub_100F0F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);

    v12 = v11;

    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    sub_100017D5C(a4, a5);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100407A2C;
    *(v15 + 24) = v9;
    aBlock[4] = sub_100F0FA34;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    aBlock[3] = &unk_10165BE78;
    v16 = _Block_copy(aBlock);

    [v12 writeDatagrams:isa completionHandler:v16];
    _Block_release(v16);
  }

  else
  {
  }
}

uint64_t sub_100F0F3E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  swift_errorRetain();
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C4F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_1001DCF6C();
    swift_allocError();
    *v9 = a1;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "MessagingDatagramConnection send error: %@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_100F0F5D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessagingDatagramConnection();
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

void *sub_100F0F68C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    [v3 connectionState];
    CurrentValueSubject.send(_:)();
  }

  return result;
}

id sub_100F0F750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KVOHelperNWDatagramConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NWConnectionState.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x79646165722ELL;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6C6C65636E61632ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x697261706572702ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x676E69746961772ELL;
  }
}

uint64_t sub_100F0F8DC()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 0x79646165722ELL;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x6C6C65636E61632ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (!v1)
    {
      return 0x64696C61766E692ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x697261706572702ELL;
      }

      return 0x4E574F4E4B4E553CLL;
    }

    return 0x676E69746961772ELL;
  }
}

uint64_t sub_100F0FA50(uint64_t a1, uint64_t a2)
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

uint64_t sub_100F0FB44()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C0D78);
  v1 = sub_1000076D4(v0, qword_1016C0D78);
  if (qword_101694FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C310);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F0FC0C()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1016C0D90 = result;
  return result;
}

uint64_t sub_100F0FC4C()
{
  type metadata accessor for ReferenceClock.IsolationDomain();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1016C0D98 = v0;
  return result;
}

uint64_t sub_100F0FC8C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  qword_1016C0DA0 = v5;
  return result;
}

double sub_100F0FD64()
{
  if (qword_101694FE8 != -1)
  {
    swift_once();
  }

  result = *&qword_1016C0DA0;
  qword_1016C0DC0 = qword_1016C0DA0;
  return result;
}

BOOL sub_100F0FDBC()
{
  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0 = *&v7;
  if ((aBlock & 1) == 0)
  {
    v1 = [objc_opt_self() defaultCenter];
    v10 = sub_100F109D4;
    v11 = 0;
    aBlock = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100F0FA50;
    v9 = &unk_10165BEA0;
    v2 = _Block_copy(&aBlock);

    v3 = [v1 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();
  }

  if (qword_101694FE8 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1016C0DA0;
  if (*&qword_1016C0DA0 >= v0)
  {
    sub_100F10324(0);
  }

  return v4 < v0;
}

double sub_100F0FFAC()
{
  v0 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  sub_100F0FDBC();
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v4 = Current - v8[2];
  if (v4 - v8[3] > 86400.0)
  {
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_10025EDD4(0, 0, v2, &unk_10138B610, v6);
  }

  return v4;
}

double sub_100F1018C@<D0>(void *a1@<X8>)
{
  *a1 = qword_1016C0DB0;
  if (qword_101694FF0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1016C0DC0;
  a1[1] = qword_1016C0DC0;
  return result;
}

uint64_t sub_100F10230()
{
  if (qword_101694FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1016C0D98;

  return _swift_task_switch(sub_100F102C4, v0, 0);
}

uint64_t sub_100F102C4(double a1)
{
  sub_100F10324(1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_100F10324(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_101694FD8 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (LOBYTE(v41[0]) == 1)
  {
LABEL_29:
    if (TMIsAutomaticTimeEnabled())
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (qword_101694FD0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016C0D78);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_26;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41[0] = v10;
      *v9 = 136446210;
      sub_100F0FFAC();
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100B286F8();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      v14 = sub_1000136BC(v11, v13, v41);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "ReferenceClock calibrated: %{public}s delta: 0.0 uncertainty: 0.0", v9, 0xCu);
      sub_100007BAC(v10);

LABEL_25:

LABEL_26:

      return;
    }

    if (qword_101694FD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016C0D78);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Automatic time is DISABLED", v18, 2u);
    }

    *&v19 = COERCE_DOUBLE(sub_100F10AF0());
    if ((v21 & 0x100000000) == 0)
    {
      v22 = v19;
      v23 = v20;
      v40 = v21;
      v24 = *&v19;
      v25 = v20;
      Current = CFAbsoluteTimeGetCurrent();
      if (v25 > 1.0)
      {
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134218240;
          *(v30 + 4) = v23;
          *(v30 + 12) = 1024;
          *(v30 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v28, v29, "TMGMReferenceTime reports high uncertainty: %f (reliability: %d", v30, 0x12u);
        }
      }

      v31 = Current - v24;
      if (qword_101694FD8 != -1)
      {
        v26 = swift_once();
      }

      __chkstk_darwin(v26);
      *(&v39 - 4) = v31;
      *(&v39 - 3) = v23;
      *(&v39 - 2) = v22;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v7 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v32))
      {
        goto LABEL_26;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136446722;
      sub_100F0FFAC();
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_100B286F8();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v3 + 8))(v5, v2);
      v38 = sub_1000136BC(v35, v37, v41);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v31;
      *(v33 + 22) = 2048;
      *(v33 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v7, v32, "ReferenceClock calibrated: %{public}s delta: %f uncertainty: %f", v33, 0x20u);
      sub_100007BAC(v34);

      goto LABEL_25;
    }
  }
}

double sub_100F10954@<D0>(uint64_t a1@<X8>)
{
  v1 = byte_1016C0DA8;
  byte_1016C0DA8 = 1;
  *a1 = v1;
  if (qword_101694FF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1016C0DC0;
  *(a1 + 8) = qword_1016C0DC0;
  return result;
}

void sub_100F109DC()
{
  qword_1016C0DB0 = 0;
  qword_1016C0DB8 = 0;
  if (qword_101694FF0 != -1)
  {
    swift_once();
  }

  qword_1016C0DC0 = CFAbsoluteTimeGetCurrent();
  byte_1016C0DC8 = 0;
}

uint64_t sub_100F10A54()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C310);
  sub_1000076D4(v0, qword_10177C310);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100F10B78()
{
  v1 = v0[3];
  v2 = v0[4];
  qword_1016C0DB0 = v0[2];
  qword_1016C0DB8 = v1;
  if (qword_101694FF0 != -1)
  {
    result = swift_once();
  }

  qword_1016C0DC0 = v2;
  byte_1016C0DC8 = 0;
  return result;
}

uint64_t sub_100F10CC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100F10DC0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100F10DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F10F50, v3, 0);
}

uint64_t sub_100F10F50()
{
  if (*(*(v0 + 104) + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v2, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_1000076D4(v2, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7 = *(v4 + 8);
    v7(v5, v6);
    v7(v3, v6);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v11, qword_10177A978);
    *(v0 + 192) = 0;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7(v9, v10);
    v7(v8, v10);
    v12 = v7;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 176);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v19, qword_10177A960);
    *(v0 + 72) = v18;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v12(v16, v17);
    v12(v15, v17);
    QueryType.filter(_:)();
    v12(v14, v17);
    *(v0 + 40) = v13;
    *(v0 + 48) = &protocol witness table for Table;
    v20 = sub_1000280DC((v0 + 16));
    (*(v31 + 16))(v20, v30, v13);
    sub_10068600C(v0 + 16);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v21 + 8))(v22, v23);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);

    v29 = *(v0 + 8);

    return v29(v28, v27);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100F114D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F1162C, v3, 0);
}

uint64_t sub_100F1162C()
{
  if (*(*(v0 + 104) + 112))
  {
    v1 = qword_101694588;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v2, qword_10177A930);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_1000076D4(v2, qword_10177A948);
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7 = *(v4 + 8);
    v7(v5, v6);
    v7(v3, v6);
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v11, qword_10177A978);
    *(v0 + 192) = 1;
    sub_100028088();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v7(v9, v10);
    v7(v8, v10);
    v12 = v7;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 176);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v19, qword_10177A960);
    *(v0 + 72) = v18;
    sub_100029580();
    == infix<A>(_:_:)();
    && infix(_:_:)();
    v12(v16, v17);
    v12(v15, v17);
    QueryType.filter(_:)();
    v12(v14, v17);
    *(v0 + 40) = v13;
    *(v0 + 48) = &protocol witness table for Table;
    v20 = sub_1000280DC((v0 + 16));
    (*(v31 + 16))(v20, v30, v13);
    sub_10068600C(v0 + 16);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    sub_100007BAC((v0 + 16));
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v21 + 8))(v22, v23);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);

    v29 = *(v0 + 8);

    return v29(v28, v27);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100F11BB0(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *(type metadata accessor for OwnedBeaconRecord(0) + 24);
  sub_100F3A2F8(a1 + v8, v7, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100F3A500(v7, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  sub_100F3A2F8(a1 + v8, v5, type metadata accessor for StableIdentifier);
  v11 = swift_getEnumCaseMultiPayload();
  if (v11 == 2)
  {
    sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    goto LABEL_7;
  }

  if (v11 == 3)
  {
    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_7:

    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5, v12);
    return 1;
  }

  sub_100F3A500(v5, type metadata accessor for StableIdentifier);
  return 0;
}

uint64_t sub_100F11DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), const char *a6)
{
  v10 = (a3)(0, a2);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B810);
  sub_100F3A2F8(a1, v12, a4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100F3A500(v12, a5);
    v21 = sub_1000136BC(v18, v20, &v24);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, a6, v16, 0x16u);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100F3A500(v12, a5);
  }

  return sub_100B040D4();
}

uint64_t sub_100F12038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  type metadata accessor for Endianness();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for StandaloneBeacon(0);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100F122E8, 0, 0);
}

uint64_t sub_100F122E8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[7] = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  v0[35] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[36] = v5;
  v6 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[37] = v6;
  *v5 = v0;
  v5[1] = sub_100F12418;

  return unsafeBlocking<A>(_:)(v0 + 8, sub_100F3A090, v4, v6);
}

uint64_t sub_100F12418()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[8];
  v1[9] = v3;
  v1[38] = v3;
  v4 = swift_task_alloc();
  v1[39] = v4;
  v5 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0, &protocol conformance descriptor for [A]);
  v1[40] = v5;
  *v4 = v2;
  v4[1] = sub_100F125D4;
  v6 = v1[37];

  return Sequence.asyncFilter(_:)(&unk_1013F3AB8, 0, v6, v5);
}

uint64_t sub_100F125D4(uint64_t a1)
{
  *(*v2 + 328) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100F12714, 0, 0);
  }
}

uint64_t sub_100F12714()
{
  v1 = *(v0 + 120);
  v8 = *(v0 + 104);
  *(v0 + 80) = *(v0 + 328);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *(v2 + 16) = v8;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_100F12804;
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 224);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F3AC8, v2, v5, v6, v4);
}

uint64_t sub_100F12804(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 352) = a1;

    return _swift_task_switch(sub_100F12950, 0, 0);
  }
}

uint64_t sub_100F12950()
{
  sub_10039A8F4(v0[44]);
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100F3A180(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[13];
    v6 = swift_allocObject();
    v0[45] = v6;
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v4;

    v7 = swift_task_alloc();
    v0[46] = v7;
    v8 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
    v0[47] = v8;
    *v7 = v0;
    v7[1] = sub_100F12B90;

    return unsafeBlocking<A>(_:)(v0 + 11, sub_100F3A1C8, v6, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_100F13148;

    return daemon.getter();
  }
}

uint64_t sub_100F12B90()
{

  return _swift_task_switch(sub_100F12CA8, 0, 0);
}

uint64_t sub_100F12CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 88);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10 = *(v5 + 248);
    v9 = *(v5 + 256);
    v24 = *(v6 + 16);
    v25 = *(v5 + 88);
    while (v8 < *(v6 + 16))
    {
      v11 = *(v5 + 272);
      v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v13 = *(v9 + 72);
      sub_100F3A2F8(v6 + v12 + v13 * v8, v11, type metadata accessor for SharedBeaconRecord);
      v14 = *(v11 + *(v10 + 44));
      v15 = *(v11 + *(v10 + 48));
      if (v14 == 76 && (v16 = v15 == 8233, v15 = 8233, !v16) || sub_100E0EA64(v14, v15))
      {
        a1 = sub_100F3A500(*(v5 + 272), type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100F3A498(*(v5 + 272), *(v5 + 264), type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10112421C((v17 > 1), v18 + 1, 1);
        }

        v19 = *(v5 + 264);
        _swiftEmptyArrayStorage[2] = v18 + 1;
        a1 = sub_100F3A498(v19, _swiftEmptyArrayStorage + v12 + v18 * v13, type metadata accessor for SharedBeaconRecord);
        v7 = v24;
        v6 = v25;
      }

      if (v7 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    *(v5 + 384) = _swiftEmptyArrayStorage;
    v20 = *(v5 + 120);
    v26 = *(v5 + 104);

    *(v5 + 96) = _swiftEmptyArrayStorage;
    v21 = swift_task_alloc();
    *(v5 + 392) = v21;
    *(v21 + 16) = v26;
    *(v21 + 32) = v20;
    v22 = swift_task_alloc();
    *(v5 + 400) = v22;
    a5 = sub_1000041A4(&qword_1016A78F8, &qword_101697720, &unk_101392640, &protocol conformance descriptor for [A]);
    *v22 = v5;
    v22[1] = sub_100F12F60;
    a3 = *(v5 + 376);
    a4 = *(v5 + 224);
    a1 = &unk_1013F3AE0;
    a2 = v21;
  }

  return Sequence.asyncCompactMap<A>(_:)(a1, a2, a3, a4, a5);
}