unint64_t sub_1003C5070()
{
  result = qword_1006A8F10;
  if (!qword_1006A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InjectionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C51D0(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1003C5204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003C5588();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1003C5258@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003C51D0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003C528C(uint64_t a1)
{
  v2 = sub_1003C5588();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1003C52C8(uint64_t a1)
{
  v2 = sub_1003C5588();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1003C5324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003C5588();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

unint64_t sub_1003C53C0()
{
  result = qword_1006A8F78;
  if (!qword_1006A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F78);
  }

  return result;
}

unint64_t sub_1003C542C()
{
  result = qword_1006A8F80;
  if (!qword_1006A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F80);
  }

  return result;
}

unint64_t sub_1003C5484()
{
  result = qword_1006A8F88;
  if (!qword_1006A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F88);
  }

  return result;
}

unint64_t sub_1003C54DC()
{
  result = qword_1006A8F90;
  if (!qword_1006A8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F90);
  }

  return result;
}

unint64_t sub_1003C5534()
{
  result = qword_1006A8F98;
  if (!qword_1006A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8F98);
  }

  return result;
}

unint64_t sub_1003C5588()
{
  result = qword_1006A8FA0;
  if (!qword_1006A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8FA0);
  }

  return result;
}

void sub_1003C55DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA610);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Begin observing AVAudioClient mute state change", v7, 2u);
      sub_100005F40(v7);
    }

    v13[4] = a1;
    v13[5] = a2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1003C57F4;
    v13[3] = &unk_10062CED0;
    v8 = _Block_copy(v13);
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA610);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Removing observer for AVAudioClient mute state change", v12, 2u);
      sub_100005F40(v12);

      sub_1000115CC(0, a2);
    }

    else
    {
    }

    v8 = 0;
  }

  [objc_opt_self() setMuteStateChangedHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1003C57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void *sub_1003C5878()
{
  v1 = type metadata accessor for AVAudioClientMuteStateHandlerProvider();
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = 0;
  v0[6] = 0;
  v2 = swift_allocObject();
  v0[10] = v1;
  v0[11] = &off_10062CEC0;
  v0[7] = v2;
  v0[4] = 2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = v0[5];
  v5 = v0[6];
  v0[5] = sub_1003C5E18;
  v0[6] = v3;

  sub_1000051F8(v4, v5);

  return v0;
}

uint64_t sub_1003C592C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1 & 1;
      *(v9 + 8) = 2080;
      type metadata accessor for AVCAudioClientMuteReason(0);
      v11 = String.init<A>(reflecting:)();
      v13 = sub_10002741C(v11, v12, &v15);

      *(v9 + 10) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Handling avAudioClientMuteStateChanged %{BOOL}d with muteReason %s", v9, 0x12u);
      sub_100009B7C(v10);
    }

    v14 = sub_1003C5BF4(a2);
    sub_1003C5B84(a1 & 1, v14);
  }

  return result;
}

uint64_t sub_1003C5AEC()
{
  sub_100009AB0(v0 + 56, v4);
  sub_100009B14(v4, v4[3]);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1000115CC(v1, v2);
  sub_1003C55DC(v1, v2);
  sub_1000051F8(v1, v2);
  return sub_100009B7C(v4);
}

uint64_t sub_1003C5B84(uint64_t result, char a2)
{
  if (*(v2 + 16))
  {
    v4 = result;
    swift_unknownObjectRetain();
    sub_1003C6BAC(v4 & 1, a2 & 1, 2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C5BF4(uint64_t result)
{
  if (result != 1)
  {
    v11[7] = v1;
    v11[8] = v2;
    if (result)
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720(&qword_1006A0B30);
      }

      v3 = type metadata accessor for Logger();
      sub_10000AF9C(v3, qword_1006BA610);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11[0] = v7;
        *v6 = 136315138;
        type metadata accessor for AVCAudioClientMuteReason(0);
        v8 = String.init<A>(reflecting:)();
        v10 = sub_10002741C(v8, v9, v11);

        *(v6 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v4, v5, "Unknown AVCAudioClientMuteReason %s defaulting to MuteProvenance.clientInitiated", v6, 0xCu);
        sub_100009B7C(v7);
        sub_100005F40(v7);
        sub_100005F40(v6);
      }
    }

    return 0;
  }

  return result;
}

uint64_t *sub_1003C5D3C()
{
  swift_unknownObjectRelease();
  sub_1000051F8(v0[5], v0[6]);
  sub_100009B7C(v0 + 7);
  return v0;
}

uint64_t sub_1003C5D6C()
{
  sub_1003C5D3C();

  return _swift_deallocClassInstance(v0, 96, 7);
}

id sub_1003C5E20(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_1002A2154(0xD000000000000017, 0x8000000100572870);
  if (!v4)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringForKey:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0x8000000100572890;
    v8 = 0xD00000000000004BLL;
  }

  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat];
  *v12 = v8;
  v12[1] = v10;
  v15.receiver = v11;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithQueue:", a1);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_1003C5FC8(void *a1)
{
  v3 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  result = [a1 remoteMember];
  if (result)
  {
    v7 = result;
    v8 = [result handle];

    v9 = [v8 value];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v17[2] = v10;
    v17[3] = v12;
    v13 = *(v1 + OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat + 8);
    v17[0] = *(v1 + OBJC_IVAR___CSDDemoModeCallFilter_regexAllowedHandleFormat);
    v17[1] = v13;
    v14 = type metadata accessor for Locale();
    sub_10000AF74(v5, 1, 1, v14);
    sub_10001E364();

    StringProtocol.range<A>(of:options:range:locale:)();
    v16 = v15;
    sub_1003C620C(v5);

    if (v16)
    {
      [a1 setFilteredOutReason:9];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003C620C(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1003C6274(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v5 = type metadata accessor for AVAudioSessionProvider();
  v15[3] = v5;
  v15[4] = &off_1006275B0;
  v15[0] = swift_allocObject();
  type metadata accessor for AudioStateObserverFactory();
  v6 = swift_allocObject();
  v7 = sub_10001BDB8(v15, v5);
  __chkstk_darwin(v7);
  v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v6[5] = v5;
  v6[6] = &off_1006275B0;
  v6[2] = v11;
  sub_100009B7C(v15);
  v12 = sub_1003C6D7C(a1, a2, v4, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

char *sub_1003C643C(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v19 = *&result[OBJC_IVAR___CSDAudioStateHandler_queue];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a3;
    *(v16 + 32) = a2 & 1;
    *(v16 + 33) = v20 & 1;
    aBlock[4] = sub_1003C7134;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CFF8;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  return result;
}

void sub_1003C6700(char *a1, NSObject *a2, char a3, char a4)
{
  v6 = OBJC_IVAR___CSDAudioStateHandler_currentCall;
  v7 = *&a1[OBJC_IVAR___CSDAudioStateHandler_currentCall];
  if (!v7)
  {
LABEL_10:
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000AF9C(v20, qword_1006BA610);
    v21 = a1;
    v42 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v22))
    {
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v23 = 136315650;
      type metadata accessor for CSDAudioInterruptionProviderType(0);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_10002741C(v24, v25, &v43);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = *&a1[v6];
      if (v27)
      {
        [v27 audioInterruptionProviderType];
        v28 = String.init<A>(reflecting:)();
        v30 = v29;
      }

      else
      {
        v30 = 0xE300000000000000;
        v28 = 7104878;
      }

      v35 = sub_10002741C(v28, v30, &v43);

      *(v23 + 14) = v35;
      *(v23 + 22) = 2080;
      v36 = *&a1[v6];
      v37 = v36;
      v38 = sub_100291454(v36);
      v40 = v39;

      v41 = sub_10002741C(v38, v40, &v43);

      *(v23 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v42, v22, "Mute state changed handler invoked for %s despite frontmost call not being configured for %s: %s", v23, 0x20u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_20;
  }

  v42 = v7;
  if ([v42 audioInterruptionProviderType]!= a2)
  {

    goto LABEL_10;
  }

  if (a3)
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA610);
    v11 = v42;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43 = v15;
      *v14 = 67109378;
      *(v14 + 4) = a4 & 1;
      *(v14 + 8) = 2080;
      sub_100024570();
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = sub_10002741C(v17, v18, &v43);

      *(v14 + 10) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Mute state changed handler invoked, performing setUplinkMuted %{BOOL}d for call: %s", v14, 0x12u);
      sub_100009B7C(v15);
    }

    [*&a1[OBJC_IVAR___CSDAudioStateHandler_delegate] performSetUplinkMuted:a4 & 1 forCall:v11 userInitiated:0];
    return;
  }

  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA610);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Mute state changed handler invoked but muteReason was clientInitiated: muteReason should already be set on call", v34, 2u);
  }

LABEL_20:
}

uint64_t sub_1003C6BAC(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler);
  if (v4)
  {
    v7 = result;
    v8 = *(v3 + OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler + 8);

    v4(v7 & 1, a2 & 1, a3);

    return sub_1000051F8(v4, v8);
  }

  return result;
}

id sub_1003C6C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioStateHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003C6D7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = type metadata accessor for AudioStateObserverFactory();
  v18 = &off_10062C320;
  v16[0] = a4;
  v8 = objc_allocWithZone(type metadata accessor for AudioStateHandler());
  v9 = sub_10001BDB8(v16, v17);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1003C6EA4(a1, a2, a3, *v11, v8);
  sub_100009B7C(v16);
  return v13;
}

char *sub_1003C6EA4(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v27[3] = type metadata accessor for AudioStateObserverFactory();
  v27[4] = &off_10062C320;
  v27[0] = a4;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_currentCall] = 0;
  v10 = &a5[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a5[OBJC_IVAR___CSDAudioStateHandler_audioStateObserver];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_queue] = a1;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_delegate] = a2;
  *&a5[OBJC_IVAR___CSDAudioStateHandler_callCenterObserver] = a3;
  sub_100009AB0(v27, &a5[OBJC_IVAR___CSDAudioStateHandler_factory]);
  v26.receiver = a5;
  v26.super_class = type metadata accessor for AudioStateHandler();
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = objc_msgSendSuper2(&v26, "init");
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  v17 = *&v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler];
  v18 = *&v14[OBJC_IVAR___CSDAudioStateHandler_muteStateChangedHandler + 8];
  *v16 = sub_1003C7128;
  v16[1] = v15;
  v19 = v14;

  sub_1000051F8(v17, v18);

  v20 = OBJC_IVAR___CSDAudioStateHandler_callCenterObserver;
  result = *&v19[OBJC_IVAR___CSDAudioStateHandler_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:-2147483647];
    v22 = *&v19[v20];
    if (v22)
    {
      swift_unknownObjectRetain();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      aBlock[4] = sub_10002FE20;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100028100;
      aBlock[3] = &unk_10062CF58;
      v24 = _Block_copy(aBlock);

      [v22 setCallChanged:v24];
      _Block_release(v24);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100009B7C(v27);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003C71A8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = sub_1003C7950(v2, v3, v1, &selRef_cellularDataEnabledForBundleId_);

    return (v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C721C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TinCanIDSProviderDelegateCapabilities();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1003C72C4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = TUPreferredFaceTimeBundleIdentifier();
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    LOBYTE(v2) = sub_1003C7950(v3, v5, v1, &selRef_wifiAllowedForBundleId_);
    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C736C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v27 = v2;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v26 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for IDSProviderDelegateCapabilities();
  v20 = objc_msgSendSuper2(&v29, "init");
  sub_1002A8914();
  (*(v15 + 104))(v19, enum case for DispatchQoS.QoSClass.background(_:), v13);
  v21 = v20;
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v19, v13);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1003C7948;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D138;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v27 + 8))(v6, v1);
  (*(v8 + 8))(v12, v26);

  return v21;
}

void sub_1003C76B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1003C72C4();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    (*((swift_isaMask & *v3) + 0x68))();
  }
}

id sub_1003C7870(void *a1, SEL *a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4 = result;
    v5 = [result *a2];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C78EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003C7950(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 *a4];

  return v7;
}

id sub_1003C79AC()
{
  swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = sub_1003C7A28(result);
    swift_deallocPartialClassInstance();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003C7A28(void *a1)
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B81C(_swiftEmptyArrayStorage);
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  v5 = objc_allocWithZone(v1);
  *&v5[OBJC_IVAR___CSDConversationInvitationResolver_deviceInvitationPreferences] = v4;
  v8.receiver = v5;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

uint64_t sub_1003C7ADC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a3)
  {
    v8 = *(a2 + 16);
    v9 = (a2 + 32);
    v10 = a3;
    v11 = v8 + 1;
    while (--v11)
    {
      v12 = v9 + 2;
      v13 = *v9;

      sub_1003C833C(v10, v13);
      v15 = v14;

      v9 = v12;
      if (v15)
      {
        goto LABEL_7;
      }
    }

    sub_1003C80A8(*(v4 + OBJC_IVAR___CSDConversationInvitationResolver_deviceInvitationPreferences), 0, v10, a1);
    if (v16 == 2)
    {
LABEL_7:
      v17 = (a2 + 40);
      v18 = v8 + 1;
      while (--v18)
      {
        v19 = v17 + 16;
        v20 = *v17;

        sub_1003C80A8(v21, v20, v10, a1);
        v23 = v22;
        v24 = v22;

        v17 = v19;
        if (v24 != 2)
        {
          goto LABEL_13;
        }
      }

      return a4 & 1;
    }

    v23 = v16;
LABEL_13:

    a4 = v23;
  }

  return a4 & 1;
}

uint64_t sub_1003C7C74(void *a1, void *a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v7 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 32) = v8;
  *(inited + 40) = 0;
  LOBYTE(a2) = sub_1003C7ADC(a3, inited, a2, 1);
  swift_setDeallocating();
  sub_1002F5D1C();
  return a2 & 1;
}

uint64_t sub_1003C7DC0(void *a1, void *a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = a3;
  *(inited + 40) = 1;

  v7 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 48) = v8;
  *(inited + 56) = 0;
  LOBYTE(a2) = sub_1003C7ADC(4, inited, a2, 1);
  swift_setDeallocating();
  sub_1002F5D1C();
  return a2 & 1;
}

BOOL sub_1003C7F60(void *a1, void *a2)
{
  sub_10026D814(&qword_1006A92E0, &unk_100585450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v5 = [a1 invitationPreferences];
  sub_1003C8570();
  sub_1003C85B4();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 32) = v6;
  *(inited + 40) = 0;
  LOBYTE(a2) = sub_1003C7ADC(8, inited, a2, 0);
  swift_setDeallocating();
  sub_1002F5D1C();
  return (a2 & 1) == 0;
}

void sub_1003C80A8(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003C8570();
    sub_1003C85B4();
    Set.Iterator.init(_cocoa:)();
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1003C8570(), swift_dynamicCast(), (v14 = v20) == 0))
      {
LABEL_20:
        sub_100022DDC(v4);
        return;
      }

      goto LABEL_16;
    }

    v12 = v7;
    v13 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v8 = (v13 - 1) & v13;
    v14 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_16:
    v15 = [v14 handleType];
    if (v15 == [a3 type])
    {
      if ([v14 notificationStyles])
      {
        sub_100022DDC(v4);

        return;
      }

      v16 = [v14 notificationStyles];

      if ((a4 & ~v16) == 0 || (a2 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v13 = *(v5 + 8 * v7);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003C833C(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003C8570();
    sub_1003C85B4();
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
    v15 = v41;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v12 = a2 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v14 = 0;
  }

  v34 = v13;
  v19 = (v13 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v14;
  v21 = v15;
  v22 = v14;
  if (v15)
  {
LABEL_12:
    v23 = (v21 - 1) & v21;
    v4 = *(*(v2 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    v24 = v4;
    if (v4)
    {
      while (1)
      {
        v25 = [v24 handleType];
        if (v25 == [a1 type])
        {
          break;
        }

        v14 = v22;
        v15 = v23;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v4 = __CocoaSet.Iterator.next()();
        if (v4)
        {
          v35 = v4;
          sub_1003C8570();
          v4 = swift_dynamicCast();
          v24 = v36;
          v22 = v14;
          v23 = v15;
          if (v36)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v26 = [v24 notificationStyles];
      sub_100008758(v26, v27, v28, v29, v30, v31, v32, v33, v34);
    }

    else
    {
LABEL_19:
      sub_100008758(v4, v5, v6, v7, v8, v9, v10, v11, v34);
    }
  }

  else
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_19;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1003C8570()
{
  result = qword_1006A2680;
  if (!qword_1006A2680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2680);
  }

  return result;
}

unint64_t sub_1003C85B4()
{
  result = qword_1006A2688;
  if (!qword_1006A2688)
  {
    sub_1003C8570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2688);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationInvitationResolver.InvitationPreferencesPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003C86EC()
{
  result = qword_1006A92E8;
  if (!qword_1006A92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A92E8);
  }

  return result;
}

void sub_1003C8740(uint64_t a1, void *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession();
    sub_10000F030(&qword_1006A4890, &type metadata accessor for ActivitySession, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
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

  v10 = _swiftEmptyArrayStorage;
  if (v2 < 0)
  {
    goto LABEL_14;
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

LABEL_12:
    v34 = (v12 - 1) & v12;
    v14 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v14)
    {
LABEL_31:
      sub_10031E890(v2);

      return;
    }

    while (1)
    {
      v16 = dispatch thunk of ActivitySession.activity.getter();
      v17 = [v16 isStaticActivity];

      if (v17)
      {
        v26 = 0u;
        v27 = 0u;
      }

      else
      {
        v18 = [objc_opt_self() activitySessionWithCSDConversationActivitySession:v14 fromConversation:a2 forStorage:1];
        v19 = dispatch thunk of ActivitySession.activity.getter();
        v20 = [v19 originator];

        if (!v20)
        {
          v21 = [v18 activity];
          if (!v21)
          {
            goto LABEL_33;
          }

          v20 = v21;
          [v21 setOriginatorHandle:0];
        }

        *(&v27 + 1) = sub_100006AF0(0, &qword_1006A9340, off_100616658);
        *&v26 = v18;
      }

      if (*(&v27 + 1))
      {
        sub_10003EBF0(&v26, v28);
        sub_10003EBF0(v28, &v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004705AC();
          v10 = v23;
        }

        v22 = v10[2];
        if (v22 >= v10[3] >> 1)
        {
          sub_1004705AC();
          v10 = v24;
        }

        v10[2] = v22 + 1;
        sub_10003EBF0(&v26, &v10[4 * v22 + 4]);
      }

      else
      {
        sub_1000099A4(&v26, &unk_1006A2D10, &unk_10057D940);
      }

      v5 = v13;
      v6 = v34;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        *&v26 = v15;
        type metadata accessor for ActivitySession();
        swift_dynamicCast();
        v14 = *&v28[0];
        v13 = v5;
        v34 = v6;
        if (*&v28[0])
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1003C8AD4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A4530, off_100616608);
    sub_10000CE3C(&qword_1006A5668, &qword_1006A4530, off_100616608);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_25:
      sub_10031E890(v1);
      return;
    }

    while (1)
    {
      v16 = [objc_opt_self() participantWithCSDConversationParticipant:v14];
      v21 = sub_100006AF0(0, &qword_1006A9338, off_100616678);
      *&v20 = v16;

      if (v21)
      {
        sub_10003EBF0(&v20, v22);
        sub_10003EBF0(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004705AC();
          v9 = v18;
        }

        v17 = v9[2];
        if (v17 >= v9[3] >> 1)
        {
          sub_1004705AC();
          v9 = v19;
        }

        v9[2] = v17 + 1;
        sub_10003EBF0(&v20, &v9[4 * v17 + 4]);
      }

      else
      {
        sub_1000099A4(&v20, &unk_1006A2D10, &unk_10057D940);
      }

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        *&v20 = v15;
        sub_100006AF0(0, &qword_1006A4530, off_100616608);
        swift_dynamicCast();
        v14 = *&v22[0];
        v12 = v4;
        v13 = v5;
        if (*&v22[0])
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003C8DD0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_25:
      sub_10031E890(v1);
      return;
    }

    while (1)
    {
      v16 = [objc_opt_self() memberWithTUConversationMember:v14];
      v21 = sub_100006AF0(0, &qword_1006A21E8, off_100616670);
      *&v20 = v16;

      if (v21)
      {
        sub_10003EBF0(&v20, v22);
        sub_10003EBF0(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004705AC();
          v9 = v18;
        }

        v17 = v9[2];
        if (v17 >= v9[3] >> 1)
        {
          sub_1004705AC();
          v9 = v19;
        }

        v9[2] = v17 + 1;
        sub_10003EBF0(&v20, &v9[4 * v17 + 4]);
      }

      else
      {
        sub_1000099A4(&v20, &unk_1006A2D10, &unk_10057D940);
      }

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        *&v20 = v15;
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v14 = *&v22[0];
        v12 = v4;
        v13 = v5;
        if (*&v22[0])
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003C90CC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_27:
      sub_10031E890(v1);
      return;
    }

    while (1)
    {
      v16 = [objc_opt_self() memberWithTUConversationMember:v14];
      if ([v14 validationSource] == 1)
      {
        [v16 setValidationSource:1];
      }

      v21 = sub_100006AF0(0, &qword_1006A21E8, off_100616670);
      *&v20 = v16;

      if (v21)
      {
        sub_10003EBF0(&v20, v22);
        sub_10003EBF0(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004705AC();
          v9 = v18;
        }

        v17 = v9[2];
        if (v17 >= v9[3] >> 1)
        {
          sub_1004705AC();
          v9 = v19;
        }

        v9[2] = v17 + 1;
        sub_10003EBF0(&v20, &v9[4 * v17 + 4]);
      }

      else
      {
        sub_1000099A4(&v20, &unk_1006A2D10, &unk_10057D940);
      }

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        *&v20 = v15;
        sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
        swift_dynamicCast();
        v14 = *&v22[0];
        v12 = v4;
        v13 = v5;
        if (*&v22[0])
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003C93F4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v25;
    v2 = v26;
    v4 = v27;
    v3 = v28;
    v5 = v29;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v3;
    v11 = v5;
    v12 = v3;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_28:
      sub_10031E890(v1);
      return;
    }

    while (1)
    {
      v16 = [objc_opt_self() handleWithTUHandle:v14];
      if (v16)
      {
        v17 = v16;
        v24 = sub_100006AF0(0, &qword_1006AA800, off_100616680);
        *&v23 = v17;
        sub_10003EBF0(&v23, &v21);
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      if (*(&v22 + 1))
      {
        sub_10003EBF0(&v21, &v23);
        sub_10003EBF0(&v23, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004705AC();
          v9 = v19;
        }

        v18 = v9[2];
        if (v18 >= v9[3] >> 1)
        {
          sub_1004705AC();
          v9 = v20;
        }

        v9[2] = v18 + 1;
        sub_10003EBF0(&v21, &v9[4 * v18 + 4]);
      }

      else
      {
        sub_1000099A4(&v21, &unk_1006A2D10, &unk_10057D940);
      }

      v3 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        *&v21 = v15;
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        v14 = v23;
        v12 = v3;
        v13 = v5;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003C970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1003C9798()
{
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10000F9FC();
  strcpy(v12, "conversation-");
  HIWORD(v12[1]) = -4864;
  v6 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v4 + 8))(v1, v2);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return v12[0];
}

void sub_1003C98BC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v89 - v8;
  v10 = type metadata accessor for UUID();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v17)
  {
    v89 = v17;
    v90 = v1;
    v18 = v17;
    v19 = [v3 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = UUID.uuidString.getter();
    v22 = v21;
    v23 = *(v12 + 8);
    v23(v16, v10);
    sub_1003CE928(v20, v22, v18, &selRef_setUUIDString_);
    v24 = [v3 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = UUID.uuidString.getter();
    v27 = v26;
    v23(v16, v10);
    sub_1003CE928(v25, v27, v18, &selRef_setGroupUUIDString_);
    v28 = [v3 messagesGroupUUID];
    if (v28)
    {
      v29 = v28;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    sub_10000AF74(v7, v30, 1, v10);
    sub_100286068(v7, v9);
    if (sub_100015468(v9, 1, v10) == 1)
    {
      sub_1000099A4(v9, &unk_1006A3DD0, &unk_10057C9D0);
      v31 = 0;
    }

    else
    {
      UUID.uuidString.getter();
      v23(v9, v10);
      v31 = String._bridgeToObjectiveC()();
    }

    [v18 setMessagesGroupUUIDString:v31];

    sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
    v32 = [v3 activitySessions];
    type metadata accessor for ActivitySession();
    sub_10000F030(&qword_1006A4890, &type metadata accessor for ActivitySession, &protocol conformance descriptor for NSObject);
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v3;
    sub_1003C8740(v33, v34);

    v35 = sub_1003EF6B0();
    [v18 setActivitySessions:v35];

    v36 = [v34 stagedActivitySession];
    if (v36)
    {
      v37 = v36;
      v38 = [objc_opt_self() activitySessionWithTUConversationActivitySession:v36 fromConversation:v34 forStorage:1];
      [v18 setStagedActivitySession:v38];
    }

    v39 = [v34 avMode];
    if (v39 >> 31)
    {
      __break(1u);
    }

    else
    {
      [v18 setAvMode:v39];
      v40 = [v34 localMember];
      v41 = [objc_opt_self() memberWithTUConversationMember:v40];

      [v18 setLocalMember:v41];
      [v18 setLocallyCreated:{objc_msgSend(v34, "isLocallyCreated")}];
      v42 = [v34 initiator];
      v43 = [objc_opt_self() handleWithTUHandle:v42];

      [v18 setInitiator:v43];
      v44 = [v34 activeRemoteParticipants];
      sub_100007DD4();
      sub_100006AF0(v45, v46, v47);
      sub_100007DD4();
      v51 = sub_10000CE3C(v48, v49, v50);
      v52 = sub_100015B50(v51);

      sub_1003C8AD4(v52);

      v53 = sub_1003EF6B0();
      [v18 setActiveRemoteParticipants:v53];

      v54 = [v34 activeLightweightParticipants];
      v55 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C8AD4(v55);

      v56 = sub_1003EF6B0();
      [v18 setActiveLightweightParticipants:v56];

      v57 = [v34 remoteMembers];
      sub_100007DD4();
      sub_100006AF0(v58, v59, v60);
      sub_100007DD4();
      v64 = sub_10000CE3C(v61, v62, v63);
      v65 = sub_100015B50(v64);

      sub_1003C8DD0(v65);

      v66 = sub_1003EF6B0();
      [v18 setRemoteMembers:v66];

      v67 = [v34 lightweightMembers];
      v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C90CC(v68);

      v69 = sub_1003EF6B0();
      [v18 setLightweightMembers:v69];

      v70 = [v34 otherInvitedHandles];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
      v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003C93F4(v71);

      v72 = sub_1003EF6B0();
      [v18 setOtherInvitedHandles:v72];

      v73 = [v34 report];
      v74 = [objc_allocWithZone(CSDMessagingConversationReport) initWithTUConversationReport:v73];

      [v18 setReportData:v74];
      v75 = [v34 link];
      if (v75)
      {
        v76 = v75;
        v77 = [objc_opt_self() linkWithTUConversationLink:v75 includeGroupUUID:1];
        [v18 setLink:v77];
      }

      v78 = [v34 provider];
      v79 = [v78 identifier];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      sub_1003CE928(v80, v82, v18, &selRef_setConversationProviderIdentifier_);
      if ([v18 hasUUIDString] && objc_msgSend(v18, "hasGroupUUIDString") && objc_msgSend(v18, "hasLocalMember") && objc_msgSend(v18, "hasInitiator"))
      {

        goto LABEL_21;
      }

      if (qword_1006A0AA0 == -1)
      {
LABEL_20:
        v83 = qword_1006BA380;
        v84 = static os_log_type_t.error.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_10057D690;
        v91 = v18;
        v86 = sub_10031E8A0(&v91, v90);
        v88 = v87;
        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_100009D88();
        *(v85 + 32) = v86;
        *(v85 + 40) = v88;
        os_log(_:dso:log:type:_:)("Missing fields on conversation from cache %@. Returning a nil conversation.", 75, 2, &_mh_execute_header, v83, v84, v85);

        goto LABEL_21;
      }
    }

    sub_100008134(&qword_1006A0AA0);
    goto LABEL_20;
  }

LABEL_21:
  sub_100005EDC();
}

char *sub_1003CA2DC(void *a1, void *a2, char *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &a3[OBJC_IVAR___CSDConversationPersistenceController_storage];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&a3[OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver] = 0;
  *&a3[OBJC_IVAR___CSDConversationPersistenceController_queue] = a1;
  sub_100006AF0(0, &qword_1006A2E88, NSUserDefaults_ptr);
  v13 = a1;
  sub_1002A1E7C(aBlock);
  swift_beginAccess();
  sub_100326B84(aBlock, v12);
  swift_endAccess();
  v14 = type metadata accessor for ConversationPersistenceController();
  v32.receiver = a3;
  v32.super_class = v14;
  v15 = objc_msgSendSuper2(&v32, "init");
  v16 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(v15 + v16, aBlock, &qword_1006A5868, &unk_1005805F0);
  if (v29)
  {

    sub_1000099A4(aBlock, &qword_1006A5868, &unk_1005805F0);
  }

  else
  {
    sub_1000099A4(aBlock, &qword_1006A5868, &unk_1005805F0);
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = v13;
    v17[4] = v15;
    v17[5] = sub_1003250F0;
    v17[6] = 0;
    v30 = sub_1003CE9F8;
    v31 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    v29 = &unk_10062D380;
    v18 = _Block_copy(aBlock);
    v19 = a2;
    v20 = v15;
    v21 = v13;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10000F030(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v26 + 8))(v8, v6);
    (*(v24 + 8))(v11, v25);
  }

  return v15;
}

void sub_1003CA6CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:a2];
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v15[4] = sub_1003CEA08;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100004CEC;
  v15[3] = &unk_10062D3F8;
  v12 = _Block_copy(v15);
  v13 = a1;

  [v9 performBlockAfterFirstUnlock:v12];
  _Block_release(v12);
  v14 = *(a3 + OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver);
  *(a3 + OBJC_IVAR___CSDConversationPersistenceController_lockStateObserver) = v9;
}

void sub_1003CA82C(uint64_t a1, void (*a2)(void *__return_ptr))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2(v6);
    v5 = OBJC_IVAR___CSDConversationPersistenceController_storage;
    swift_beginAccess();
    sub_100326B84(v6, v4 + v5);
    swift_endAccess();
  }
}

char *sub_1003CA8C8(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConversationPersistenceController());
  v3 = sub_1003CA2DC(a1, 0, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1003CA974(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42[-1] - v9;
  result = TUSimulatedModeEnabled();
  if ((result & 1) == 0)
  {
    result = [a1 isFromStorage];
    if ((result & 1) == 0)
    {
      v12 = [a1 remoteMembers];
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_10001E550();

      if (v13 >= 2)
      {
        sub_100006AF0(0, &qword_1006A9330, off_100616650);
        v14 = a1;
        sub_1003C98BC();
        if (v15)
        {
          v16 = v15;
          if (qword_1006A0AA0 != -1)
          {
            swift_once();
          }

          v17 = qword_1006BA380;
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_10057D690;
          v19 = [v14 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 16))(v8, v10, v4);
          v20 = String.init<A>(reflecting:)();
          v22 = v21;
          (*(v5 + 8))(v10, v4);
          *(v18 + 56) = &type metadata for String;
          *(v18 + 64) = sub_100009D88();
          *(v18 + 32) = v20;
          *(v18 + 40) = v22;
          v23 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Caching conversation with UUID: %@", 34, 2, &_mh_execute_header, v17, v23, v18);

          v24 = OBJC_IVAR___CSDConversationPersistenceController_storage;
          swift_beginAccess();
          sub_100335188(a2 + v24, v46, &qword_1006A5868, &unk_1005805F0);
          if (v47)
          {
            sub_100009AB0(v46, v43);
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
            v25 = v44;
            v26 = v45;
            sub_100009B14(v43, v44);
            v27 = sub_1003F7B24(v16);
            if (v28 >> 60 == 15)
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v42[2] = 0;
            }

            else
            {
              v29 = &type metadata for Data;
            }

            v42[0] = v27;
            v42[1] = v28;
            v42[3] = v29;
            v37 = sub_1003C9798();
            (*(v26 + 8))(v42, v37, v38, v25, v26);

            sub_1000099A4(v42, &unk_1006A2D10, &unk_10057D940);
            sub_100009B7C(v43);
          }

          else
          {
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
          }

          sub_1003C9798();
          sub_1003CD89C();

          sub_100335188(a2 + v24, v46, &qword_1006A5868, &unk_1005805F0);
          if (v47)
          {
            sub_100009AB0(v46, v43);
            sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
            v39 = v44;
            v40 = v45;
            sub_100009B14(v43, v44);
            (*(v40 + 24))(v39, v40);

            return sub_100009B7C(v43);
          }

          else
          {

            return sub_1000099A4(v46, &qword_1006A5868, &unk_1005805F0);
          }
        }

        else
        {
          if (qword_1006A0AA0 != -1)
          {
            swift_once();
          }

          v30 = qword_1006BA380;
          v31 = static os_log_type_t.error.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_10057D690;
          v33 = [v14 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 16))(v8, v10, v4);
          v34 = String.init<A>(reflecting:)();
          v36 = v35;
          (*(v5 + 8))(v10, v4);
          *(v32 + 56) = &type metadata for String;
          *(v32 + 64) = sub_100009D88();
          *(v32 + 32) = v34;
          *(v32 + 40) = v36;
          os_log(_:dso:log:type:_:)("Error creating CSDMessagingConversation to cache from conversation with UUID: %@.", 81, 2, &_mh_execute_header, v30, v31, v32);
        }
      }
    }
  }

  return result;
}

void sub_1003CB008()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v25 = sub_100007CD8();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v0;
  v26[4] = v5;
  v26[5] = v18;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v19;
  v26[3] = v3;
  v20 = _Block_copy(v26);
  v21 = v7;
  v22 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v23, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v10 + 8))(v1, v8);
  (*(v13 + 8))(v17, v25);

  sub_100005EDC();
}

uint64_t sub_1003CB20C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v13 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v8, v10, v4);
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  (*(v5 + 8))(v10, v4);
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009D88();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Removing conversation with UUID: %@ from cache.", 47, 2, &_mh_execute_header, v11, v17, v12);

  v18 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(a2 + v18, v30, &qword_1006A5868, &unk_1005805F0);
  if (v31)
  {
    sub_100009AB0(v30, v27);
    sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
    v19 = v28;
    v20 = v29;
    sub_100009B14(v27, v28);
    memset(v26, 0, sizeof(v26));
    v21 = sub_1003C9798();
    (*(v20 + 8))(v26, v21, v22, v19, v20);

    sub_1000099A4(v26, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v27);
  }

  else
  {
    sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  }

  sub_1003C9798();
  sub_1003CDCF4();

  sub_100335188(a2 + v18, v30, &qword_1006A5868, &unk_1005805F0);
  if (!v31)
  {
    return sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100009AB0(v30, v27);
  sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  v23 = v28;
  v24 = v29;
  sub_100009B14(v27, v28);
  (*(v24 + 24))(v23, v24);
  return sub_100009B7C(v27);
}

void sub_1003CB638()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v6 = sub_100007CD8();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v19[4] = sub_1003CE9A0;
  v19[5] = v13;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v19[2] = v14;
  v19[3] = &unk_10062D268;
  v15 = _Block_copy(v19);
  v16 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v1, v2);
  (*(v8 + 8))(v12, v6);

  sub_100005EDC();
}

uint64_t sub_1003CB840(uint64_t a1)
{
  v2 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  v25 = v2;
  sub_100335188(a1 + v2, v30, &qword_1006A5868, &unk_1005805F0);
  if (!v31)
  {
    return sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100009AB0(v30, v27);
  sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
  v3 = v28;
  v4 = v29;
  sub_100009B14(v27, v28);
  v5 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  (*(v4 + 16))(v26, v5, 0xD00000000000001ALL, 0x8000000100572B30, v5, v3, v4);
  v6 = *&v26[0];
  result = sub_100009B7C(v27);
  if (v6)
  {
    v8 = 0;
    v23 = a1;
    v24 = *(v6 + 16);
    v9 = &qword_1006A5868;
    v10 = &unk_1005805F0;
    v11 = (v6 + 40);
    while (v24 != v8)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = *(v11 - 1);
      v13 = *v11;
      sub_100335188(a1 + v25, v30, v9, v10);
      if (v31)
      {
        sub_100009AB0(v30, v27);

        sub_1000099A4(v30, v9, v10);
        v14 = v6;
        v15 = v10;
        v16 = v9;
        v18 = v28;
        v17 = v29;
        sub_100009B14(v27, v28);
        memset(v26, 0, sizeof(v26));
        v19 = *(v17 + 8);
        v20 = v17;
        v9 = v16;
        v10 = v15;
        v6 = v14;
        a1 = v23;
        v19(v26, v12, v13, v18, v20);
        sub_1000099A4(v26, &unk_1006A2D10, &unk_10057D940);
        sub_100009B7C(v27);
      }

      else
      {

        sub_1000099A4(v30, v9, v10);
      }

      sub_1003CDCF4();

      v11 += 2;
      ++v8;
    }

    sub_100335188(a1 + v25, v30, &qword_1006A5868, &unk_1005805F0);
    if (!v31)
    {
      return sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
    }

    sub_100009AB0(v30, v27);
    sub_1000099A4(v30, &qword_1006A5868, &unk_1005805F0);
    v21 = v28;
    v22 = v29;
    sub_100009B14(v27, v28);
    (*(v22 + 24))(v21, v22);
    return sub_100009B7C(v27);
  }

  return result;
}

void sub_1003CBBA0()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v10 = sub_100007CD8();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = swift_allocObject();
  v17[2] = v0;
  v17[3] = v5;
  v17[4] = v3;
  v23[4] = sub_1003CE994;
  v23[5] = v17;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v18;
  v23[3] = &unk_10062D218;
  v19 = _Block_copy(v23);
  v20 = v0;

  static DispatchQoS.unspecified.getter();
  sub_1000104C0();
  sub_10000F030(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v8 + 8))(v1, v6);
  (*(v12 + 8))(v16, v10);

  sub_100005EDC();
}

void sub_1003CBDBC(uint64_t a1, void (*a2)(_BYTE *, _BYTE *, _BYTE *, void, id, id, void *, void *, void *, unint64_t, id, id *, void *, uint64_t, uint64_t, id *, uint64_t, _BOOL8), uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = __chkstk_darwin(v6 - 8);
  v166 = &v146[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v167 = &v146[-v10];
  __chkstk_darwin(v9);
  v169 = &v146[-v11];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v168 = &v146[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v170 = &v146[-v16];
  sub_1003CE0A8();
  v17 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  v178 = v17;
  sub_100335188(a1 + v17, &v184, &qword_1006A5868, &unk_1005805F0);
  if (!v186)
  {
    sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
    return;
  }

  v165 = a2;
  sub_100009AB0(&v184, &v181);
  sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
  v18 = v182;
  v19 = v183;
  sub_100009B14(&v181, v182);
  v20 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  (*(v19 + 16))(&v179, v20, 0xD00000000000001ALL, 0x8000000100572B30, v20, v18, v19);
  v21 = v179;
  sub_100009B7C(&v181);
  if (!v21)
  {
    return;
  }

  v177 = *(v21 + 16);
  if (!v177)
  {
LABEL_145:

    return;
  }

  v162 = a3;
  v22 = 0;
  v176 = v21 + 32;
  v164 = (v13 + 32);
  v163 = (v13 + 8);
  v174 = xmmword_10057D690;
  v175 = v21;
  v173 = v12;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    v23 = (v176 + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    sub_100335188(a1 + v178, &v184, &qword_1006A5868, &unk_1005805F0);
    if (v186)
    {
      break;
    }

    sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
LABEL_17:
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v39 = qword_1006BA380;
    v40 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v41 = swift_allocObject();
    *(v41 + 16) = v174;
    v184 = v24;
    v185 = v25;
    v42 = String.init<A>(reflecting:)();
    v44 = v43;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100009D88();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    os_log(_:dso:log:type:_:)("Expected an active conversation for key %@ but found nothing. Cleaning up cached conversation.", 94, 2, &_mh_execute_header, v39, v40, v41);

LABEL_20:
    v21 = v175;
LABEL_54:
    if (++v22 == v177)
    {
      goto LABEL_145;
    }
  }

  sub_100009AB0(&v184, &v181);

  sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
  v26 = v182;
  v27 = v183;
  sub_100009B14(&v181, v182);
  v28 = *(v27 + 16);
  v29 = v27;
  v30 = v173;
  v28(&v179, &type metadata for Data, v24, v25, &type metadata for Data, v26, v29);
  v31 = v179;
  sub_100009B7C(&v181);
  if (*(&v31 + 1) >> 60 == 15)
  {
    goto LABEL_17;
  }

  v32 = objc_allocWithZone(CSDMessagingConversation);
  sub_100290AC4(v31, *(&v31 + 1));
  v171 = v31;
  v33 = sub_100290A00(v31, *(&v31 + 1));
  v172 = *(&v31 + 1);
  if (!v33)
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v45 = qword_1006BA380;
    v46 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v47 = swift_allocObject();
    *(v47 + 16) = v174;
    v184 = v24;
    v185 = v25;

    v48 = String.init<A>(reflecting:)();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100009D88();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    os_log(_:dso:log:type:_:)("Cannot create CSDMessagingConversation from data in cache for key: %@. Cleaning up cached conversation", 102, 2, &_mh_execute_header, v45, v46, v47);

    sub_100335188(a1 + v178, &v184, &qword_1006A5868, &unk_1005805F0);
    if (v186)
    {
      sub_100009AB0(&v184, &v181);
      sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
      v51 = v182;
      v52 = v183;
      sub_100009B14(&v181, v182);
      v179 = 0u;
      v180 = 0u;
      (*(v52 + 8))(&v179, v24, v25, v51, v52);
      sub_1000099A4(&v179, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(&v181);
    }

    else
    {
      sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
    }

    v21 = v175;
    v53 = v171;
    sub_1003CDCF4();
    v54 = v53;
    goto LABEL_53;
  }

  v34 = v33;
  if (![v33 hasUUIDString] || !objc_msgSend(v34, "hasGroupUUIDString") || !objc_msgSend(v34, "hasLocalMember") || !objc_msgSend(v34, "hasInitiator"))
  {
    goto LABEL_47;
  }

  sub_10001B8C8(v34, &selRef_uUIDString);
  if (!v35)
  {
    goto LABEL_160;
  }

  v36 = v169;
  UUID.init(uuidString:)();
  v37 = v36;

  if (sub_100015468(v36, 1, v30) == 1)
  {
    v38 = v36;
    goto LABEL_30;
  }

  v55 = *v164;
  (*v164)(v170, v37, v30);
  sub_10001B8C8(v34, &selRef_groupUUIDString);
  if (!v56)
  {
    goto LABEL_161;
  }

  v57 = v167;
  UUID.init(uuidString:)();

  if (sub_100015468(v57, 1, v30) == 1)
  {
    (*v163)(v170, v30);
    v38 = v57;
LABEL_30:
    sub_1000099A4(v38, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_47:
    v72 = a1;
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v73 = qword_1006BA380;
    v74 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v75 = swift_allocObject();
    *(v75 + 16) = v174;
    v184 = v34;
    sub_100006AF0(0, &qword_1006A9330, off_100616650);
    v76 = v34;
    v77 = String.init<A>(reflecting:)();
    v79 = v78;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = sub_100009D88();
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    os_log(_:dso:log:type:_:)("Missing fields on conversation from cache %@. Cleaning up cached conversation.", 78, 2, &_mh_execute_header, v73, v74, v75);

    a1 = v72;
    sub_100335188(v72 + v178, &v184, &qword_1006A5868, &unk_1005805F0);
    if (v186)
    {
      sub_100009AB0(&v184, &v181);
      sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
      v80 = v182;
      v81 = v183;
      sub_100009B14(&v181, v182);
      v179 = 0u;
      v180 = 0u;
      (*(v81 + 8))(&v179, v24, v25, v80, v81);
      sub_1000099A4(&v179, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(&v181);
    }

    else
    {
      sub_1000099A4(&v184, &qword_1006A5868, &unk_1005805F0);
    }

    v21 = v175;
    sub_1003CDCF4();

    v54 = v171;
LABEL_53:
    sub_100290B6C(v54, v172);

    goto LABEL_54;
  }

  v55(v168, v57, v30);
  v58 = [v34 localMember];
  if (!v58)
  {
    goto LABEL_162;
  }

  v59 = v58;
  v60 = [v58 tuConversationMember];

  if (!v60)
  {
LABEL_46:
    v71 = *v163;
    (*v163)(v168, v30);
    v71(v170, v30);
    goto LABEL_47;
  }

  v61 = [v34 initiator];
  if (!v61)
  {
    goto LABEL_163;
  }

  v62 = v61;
  v63 = [v61 tuHandle];

  v155 = v63;
  if (!v63)
  {
LABEL_45:

    goto LABEL_46;
  }

  v64 = [v34 remoteMembers];
  if (!v64 || (v65 = v64, v184 = 0, sub_100006AF0(0, &qword_1006A21E8, off_100616670), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v65, (v161 = v184) == 0))
  {
LABEL_44:

    goto LABEL_45;
  }

  v66 = [v34 activeRemoteParticipants];
  if (!v66 || (v67 = v66, v184 = 0, v160 = sub_100006AF0(0, &qword_1006A9338, off_100616678), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v67, (v158 = v184) == 0))
  {

    goto LABEL_44;
  }

  v68 = [v34 lightweightMembers];
  if (v68)
  {
    v69 = v68;
    v184 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v70 = v184;
    if (!v184)
    {
      v70 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  v159 = v70;
  v82 = [v34 activeLightweightParticipants];
  if (v82)
  {
    v83 = v82;
    v184 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v84 = v184;
    if (!v184)
    {
      v84 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  v156 = v84;
  sub_10001B8C8(v34, &selRef_messagesGroupUUIDString);
  v151 = v60;
  if (v85)
  {

    sub_10001B8C8(v34, &selRef_messagesGroupUUIDString);
    if (!v86)
    {
      goto LABEL_164;
    }

    UUID.init(uuidString:)();
  }

  else
  {
    sub_10000AF74(v166, 1, 1, v30);
  }

  v147 = [v34 locallyCreated];
  v184 = _swiftEmptyArrayStorage;
  v87 = v161;
  v160 = sub_10000B6F4(v161);
  v88 = 0;
  v157 = v87 & 0xC000000000000001;
  v89 = v87 & 0xFFFFFFFFFFFFFF8;
  v154 = _swiftEmptyArrayStorage;
  while (v160 != v88)
  {
    if (v157)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v88 >= *(v89 + 16))
      {
        goto LABEL_149;
      }

      v90 = v161[v88 + 4];
    }

    v91 = (v88 + 1);
    if (__OFADD__(v88, 1))
    {
      goto LABEL_150;
    }

    v92 = v90;
    v93 = [v90 tuConversationMember];

    ++v88;
    if (v93)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v154 = v184;
      v88 = v91;
    }
  }

  v184 = _swiftEmptyArrayStorage;
  v94 = v159;
  v160 = sub_10000B6F4(v159);
  v95 = 0;
  v157 = v94 & 0xC000000000000001;
  v96 = v94 & 0xFFFFFFFFFFFFFF8;
  v153 = _swiftEmptyArrayStorage;
  while (v160 != v95)
  {
    if (v157)
    {
      v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v95 >= *(v96 + 16))
      {
        goto LABEL_151;
      }

      v97 = v159[v95 + 4];
    }

    v98 = v97;
    v99 = (v95 + 1);
    if (__OFADD__(v95, 1))
    {
      goto LABEL_152;
    }

    v100 = [v97 tuConversationMember];
    if ([v98 hasValidationSource] && objc_msgSend(v98, "validationSource") == 1)
    {
      if (!v100)
      {

LABEL_88:
        ++v95;
        continue;
      }

      v101 = v100;
      [v101 setValidationSource:1];
    }

    else
    {

      if (!v100)
      {
        goto LABEL_88;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v153 = v184;
    v95 = v99;
  }

  v148 = a1;
  v184 = _swiftEmptyArrayStorage;
  v102 = v158;
  v103 = sub_10000B6F4(v158);
  v104 = 0;
  v160 = (v102 & 0xC000000000000001);
  v105 = v102 & 0xFFFFFFFFFFFFFF8;
  v150 = _swiftEmptyArrayStorage;
  while (v103 != v104)
  {
    if (v160)
    {
      v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v104 >= *(v105 + 16))
      {
        goto LABEL_154;
      }

      v106 = v158[v104 + 4];
    }

    v107 = v106;
    v108 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      goto LABEL_153;
    }

    v109 = [v106 csdConversationParticipant];

    ++v104;
    if (v109)
    {
      v157 = v109;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v150 = v184;
      v104 = v108;
    }
  }

  v184 = _swiftEmptyArrayStorage;
  v110 = v156;
  v111 = sub_10000B6F4(v156);
  v112 = 0;
  v160 = (v110 & 0xC000000000000001);
  v113 = v110 & 0xFFFFFFFFFFFFFF8;
  v149 = _swiftEmptyArrayStorage;
  while (v111 != v112)
  {
    if (v160)
    {
      v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v112 >= *(v113 + 16))
      {
        goto LABEL_155;
      }

      v114 = v156[v112 + 4];
    }

    v115 = v114;
    v116 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_156;
    }

    v117 = [v114 csdConversationParticipant];

    ++v112;
    if (v117)
    {
      v157 = v117;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v149 = v184;
      v112 = v116;
    }
  }

  v118 = [v34 otherInvitedHandles];
  a1 = v148;
  if (v118 && (v119 = v118, v184 = 0, sub_100006AF0(0, &qword_1006AA800, off_100616680), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v119, (v120 = v184) != 0))
  {
    v184 = _swiftEmptyArrayStorage;
    v160 = sub_10000B6F4(v120);
    v121 = 0;
    v157 = v120 & 0xC000000000000001;
    v122 = v120;
    v123 = v120 & 0xFFFFFFFFFFFFFF8;
    v152 = _swiftEmptyArrayStorage;
    while (v160 != v121)
    {
      if (v157)
      {
        v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v121 >= *(v123 + 16))
        {
          goto LABEL_158;
        }

        v124 = *(v122 + 8 * v121 + 32);
      }

      v125 = (v121 + 1);
      if (__OFADD__(v121, 1))
      {
        goto LABEL_157;
      }

      v126 = v124;
      v127 = [v124 tuHandle];

      ++v121;
      if (v127)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v152 = v184;
        v121 = v125;
      }
    }

    a1 = v148;
    v128 = v152;
  }

  else
  {
    v128 = _swiftEmptyArrayStorage;
  }

  if (![v34 hasReportData])
  {

    v161 = [objc_allocWithZone(TUConversationReport) init];
LABEL_135:
    v160 = [v34 tuConversationLink];
    v131 = [v34 activitySessions];
    if (v131)
    {
      v132 = v131;
      v184 = 0;
      sub_100006AF0(0, &qword_1006A9340, off_100616658);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v184)
      {
        v133 = v184;
      }

      else
      {
        v133 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v133 = _swiftEmptyArrayStorage;
    }

    v134 = sub_10001B8C8(v34, &selRef_conversationProviderIdentifier);
    v136 = v135;
    v137 = [v34 hasAvMode];
    v152 = v128;
    if (v137)
    {
      v138 = [v34 avMode];
      if ((v138 & 0x80000000) != 0)
      {
        goto LABEL_159;
      }

      v139 = v136;
      v140 = v138;
    }

    else
    {
      v139 = v136;
      v140 = 2;
    }

    v184 = v150;
    sub_100414310(v149);
    v141 = v184;
    v157 = v184;
    v158 = [v34 stagedActivitySession];
    v144 = v140;
    v145 = v140 == 0;
    v159 = v139;
    v142 = v155;
    v165(v170, v168, v166, v147, v151, v155, v154, v153, v152, v141, v160, v161, v133, v134, v139, v158, v144, v145);

    sub_100290B6C(v171, v172);
    sub_1000099A4(v166, &unk_1006A3DD0, &unk_10057C9D0);
    v143 = *v163;
    (*v163)(v168, v30);
    v143(v170, v30);
    goto LABEL_20;
  }

  v129 = [v34 reportData];
  if (v129)
  {
    v130 = v129;

    v161 = [v130 tuConversationReport];

    goto LABEL_135;
  }

LABEL_165:
  __break(1u);
}

void sub_1003CD5DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v44 = a5;
  v45 = a6;
  v42 = a4;
  v43 = a19;
  v38 = a13;
  v39 = a15;
  v37 = a10;
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v33 - v21;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = UUID._bridgeToObjectiveC()().super.isa;
  sub_100335188(a3, v22, &unk_1006A3DD0, &unk_10057C9D0);
  v23 = type metadata accessor for UUID();
  v24 = 0;
  if (sub_100015468(v22, 1, v23) != 1)
  {
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  v34 = a16;
  v35 = a12;
  v36 = a11;
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v26.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A4530, off_100616608);
  v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100006AF0(0, &qword_1006A9340, off_100616658);
  v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v39)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v32 = v40;
  v31 = isa;
  (*(v43 + 16))(v43, isa, v40, v24, v42 & 1, v44, v45, v25.super.isa, v26.super.isa, v27.super.isa, v28.super.isa, v36, v35, v29.super.isa, v30, v34, a17, a18);
}

void sub_1003CD89C()
{
  sub_100005EF4();
  v4 = sub_100016384();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10000F9FC();
  v6 = *(v0 + OBJC_IVAR___CSDConversationPersistenceController_queue);
  *v1 = v6;
  v7 = sub_1000114A8();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100015E10();
  v11(v10);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_100008134(&qword_1006A0AA0);
    goto LABEL_9;
  }

  v12 = sub_10000D4DC();
  sub_100017DEC(v12, v13, &qword_1006A5868, &unk_1005805F0);
  if (v33)
  {
    sub_100009AB0(&v31, v29);
    sub_1000099A4(&v31, &qword_1006A5868, &unk_1005805F0);
    sub_100009B14(v29, v30);
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100017318();
    v14();
    v4 = v28[0];
    sub_100009B7C(v29);
    if (v28[0])
    {

      goto LABEL_7;
    }
  }

  else
  {
    sub_1000099A4(&v31, &qword_1006A5868, &unk_1005805F0);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_7:
  v31 = v3;
  v32 = v2;
  __chkstk_darwin(v15);
  v16 = sub_100013094();

  if (v16)
  {
    goto LABEL_14;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v19 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D690;
  v31 = v3;
  v32 = v2;

  v21 = String.init<A>(reflecting:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100009D88();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v24 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Adding active conversation with cache key: %@", 45, 2, &_mh_execute_header, v19, v24, v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100017840();
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v25 = v4[2];
  if (v25 >= v4[3] >> 1)
  {
    sub_100017840();
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v4[2] = v25 + 1;
  v26 = &v4[2 * v25];
  v26[4] = v3;
  v26[5] = v2;
LABEL_14:
  sub_100017DEC(isUniquelyReferenced_nonNull_native, v18, &qword_1006A5868, &unk_1005805F0);
  if (v33)
  {
    sub_100009AB0(&v31, v29);
    sub_1000099A4(&v31, &qword_1006A5868, &unk_1005805F0);
    sub_100009B14(v29, v30);
    v28[3] = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v28[0] = v4;
    sub_100017318();
    v27();
    sub_1000099A4(v28, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v29);
  }

  else
  {

    sub_1000099A4(&v31, &qword_1006A5868, &unk_1005805F0);
  }

  sub_100005EDC();
}

void sub_1003CDCF4()
{
  sub_100005EF4();
  v4 = sub_100016384();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10000F9FC();
  v6 = *(v0 + OBJC_IVAR___CSDConversationPersistenceController_queue);
  *v1 = v6;
  v7 = sub_1000114A8();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100015E10();
  v11(v10);
  if (v6)
  {
    v12 = sub_10000D4DC();
    sub_100017DEC(v12, v13, &qword_1006A5868, &unk_1005805F0);
    if (!v33)
    {
      goto LABEL_13;
    }

    sub_100009AB0(v32, v30);
    sub_1000099A4(v32, &qword_1006A5868, &unk_1005805F0);
    sub_100009B14(v30, v31);
    v1 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100017318();
    v14();
    v4 = v29[0];
    sub_100009B7C(v30);
    if (!v29[0])
    {
LABEL_14:
      sub_100005EDC();
      return;
    }

    v15 = sub_1003C970C(v3, v2, v29[0]);
    if (v16)
    {

      goto LABEL_14;
    }

    v6 = v15;
    if (qword_1006A0AA0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008134(&qword_1006A0AA0);
LABEL_7:
  v17 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057D690;
  v32[0] = v3;
  v32[1] = v2;

  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100009D88();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Removing active conversation with cache key: %@", 47, 2, &_mh_execute_header, v17, v22, v18);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100470D34();
    v4 = v28;
  }

  v23 = *(v4 + 16);
  if (v6 < v23)
  {
    v24 = v23 - 1;
    sub_100060528((v4 + 16 * v6 + 48), v23 - 1 - v6, (v4 + 16 * v6 + 32));
    *(v4 + 16) = v24;

    sub_100017DEC(v25, v26, &qword_1006A5868, &unk_1005805F0);
    if (v33)
    {
      sub_100009AB0(v32, v30);
      sub_1000099A4(v32, &qword_1006A5868, &unk_1005805F0);
      sub_100009B14(v30, v31);
      v29[3] = v1;
      v29[0] = v4;
      sub_100017318();
      v27();
      sub_1000099A4(v29, &unk_1006A2D10, &unk_10057D940);
      sub_100009B7C(v30);
      goto LABEL_14;
    }

LABEL_13:
    sub_1000099A4(v32, &qword_1006A5868, &unk_1005805F0);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1003CE0A8()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_10000F9FC();
  v7 = *&v2[OBJC_IVAR___CSDConversationPersistenceController_queue];
  *v1 = v7;
  v8 = sub_1000114A8();
  v9(v8);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v1, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  swift_beginAccess();
  sub_100335188(&v2[v11], v20, &qword_1006A5868, &unk_1005805F0);
  if (v21)
  {
    sub_100009AB0(v20, v18);
    sub_1000099A4(v20, &qword_1006A5868, &unk_1005805F0);
    sub_100009B14(v18, v19);
    v12 = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100017318();
    v13();
    sub_100009B7C(v18);
    if (!v17[0])
    {
      return;
    }

    v22 = v17[0];
    sub_1003CE568(&v22, v2);
    v15 = *(v22 + 16);
    if (v15 >= v14)
    {
      sub_1003CE48C(v14, v15);
      sub_100335188(&v2[v11], v20, &qword_1006A5868, &unk_1005805F0);
      if (v21)
      {
        sub_100009AB0(v20, v18);
        sub_1000099A4(v20, &qword_1006A5868, &unk_1005805F0);
        sub_100009B14(v18, v19);
        v17[3] = v12;
        v17[0] = v22;
        sub_100017318();
        v16();
        sub_1000099A4(v17, &unk_1006A2D10, &unk_10057D940);
        sub_100009B7C(v18);
        return;
      }

      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_8:
  sub_1000099A4(v20, &qword_1006A5868, &unk_1005805F0);
}

id sub_1003CE3C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationPersistenceController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003CE48C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = (result - a2);
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100420424(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100060528((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1003CE568(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v36 = *(*a1 + 16);
  v4 = OBJC_IVAR___CSDConversationPersistenceController_storage;
  v34 = a2;
  v45 = a2;
  v37 = v4;
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  for (i = &qword_1006A5868; ; i = v10)
  {
    if (v36 == v6)
    {
      v15 = v34;

LABEL_27:
      return;
    }

    v8 = *(v3 + v5 + 32);
    v9 = *(v3 + v5 + 40);
    sub_100335188(&v45[v37], v43, i, &unk_1005805F0);
    if (!v44)
    {
      sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);

      goto LABEL_9;
    }

    sub_100009AB0(v43, v40);

    v10 = i;
    sub_1000099A4(v43, i, &unk_1005805F0);
    v12 = v41;
    v11 = v42;
    sub_100009B14(v40, v41);
    (*(v11 + 16))(&v38, &type metadata for Data, v8, v9, &type metadata for Data, v12, v11);
    v13 = v38;
    v14 = v39;
    sub_100009B7C(v40);
    if (v14 >> 60 == 15)
    {
      break;
    }

    sub_100290B6C(v13, v14);

    ++v6;
    v5 += 16;
  }

LABEL_9:
  v16 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v17 = *(v3 + 16);
      if (v16 == v17)
      {
        v15 = v34;
        goto LABEL_27;
      }

      if (v16 >= v17)
      {
        break;
      }

      v18 = v3 + v5;
      v19 = *(v3 + v5 + 48);
      v20 = *(v3 + v5 + 56);
      sub_100335188(&v45[v37], v43, &qword_1006A5868, &unk_1005805F0);
      if (v44)
      {
        sub_100009AB0(v43, v40);

        sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);
        v21 = v41;
        v22 = v42;
        sub_100009B14(v40, v41);
        (*(v22 + 16))(&v38, &type metadata for Data, v19, v20, &type metadata for Data, v21, v22);
        v23 = v38;
        v24 = v39;
        sub_100009B7C(v40);
        if (v24 >> 60 == 15)
        {
        }

        else
        {
          sub_100290B6C(v23, v24);

          if (v16 != v6)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_29;
            }

            v25 = *(v3 + 16);
            if (v6 >= v25)
            {
              goto LABEL_30;
            }

            if (v16 >= v25)
            {
              goto LABEL_31;
            }

            v26 = (v3 + 32 + 16 * v6);
            v28 = *v26;
            v27 = v26[1];
            v30 = *(v18 + 48);
            v29 = *(v18 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100470D34();
              v3 = v33;
            }

            v31 = v3 + 16 * v6;
            *(v31 + 32) = v30;
            *(v31 + 40) = v29;

            if (v16 >= *(v3 + 16))
            {
              goto LABEL_32;
            }

            v32 = v3 + v5;
            *(v32 + 48) = v28;
            *(v32 + 56) = v27;

            *a1 = v3;
          }

          ++v6;
        }
      }

      else
      {
        sub_1000099A4(v43, &qword_1006A5868, &unk_1005805F0);
      }

      ++v16;
      v5 += 16;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
}

void sub_1003CE928(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_1003CEA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003CED1C(a1);
  v4 = sub_1002F1DF4(v3);
  sub_1003CEA7C(v4);
  v6 = v5;

  return v6 & 1;
}

void sub_1003CEA7C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
    sub_10000CE3C(&qword_1006A3890, &unk_1006A47D0, CXHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v2 = a1 + 56;
    v3 = ~(-1 << *(a1 + 32));
    sub_1000082B4();
    v5 = v6 & v7;

    v4 = 0;
  }

  v8 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_17;
      }

      sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
      swift_dynamicCast();
      v11 = v17;
      if (!v17)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v9 = v4;
    v10 = v5;
    if (!v5)
    {
      break;
    }

LABEL_10:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_14:
    v12 = v1;
    v13 = [v11 value];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 allowCallForDestinationID:v13 providerIdentifier:v15];

    LODWORD(v15) = [v16 isFromBlockList];
    v1 = v12;
    if (v15)
    {
LABEL_17:
      sub_100022DDC(v1);
      return;
    }
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      goto LABEL_17;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1003CED1C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v41;
    v2 = v42;
    v4 = v43;
    v3 = v44;
    v5 = v45;
  }

  else
  {
    v2 = a1 + 56;
    v4 = ~(-1 << *(a1 + 32));
    sub_1000082B4();
    v5 = v6 & v7;

    v3 = 0;
  }

  v36 = v4;
  v8 = (v4 + 64) >> 6;
  v37 = v2;
  v38 = v1;
LABEL_5:
  v9 = v3;
  v10 = v5;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr), swift_dynamicCast(), v14 = v40, v3 = v9, v13 = v10, !v40))
    {
LABEL_29:
      sub_100022DDC(v1);
      return;
    }

LABEL_15:
    v15 = [v14 handles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v16 & 0xC000000000000001;
    v39 = v13;
    if ((v16 & 0xC000000000000001) != 0)
    {
      __CocoaSet.startIndex.getter();
      v18 = __CocoaSet.endIndex.getter();
      v20 = v19;
      sub_10000A148();
      v21 = static __CocoaSet.Index.== infix(_:_:)();
      sub_100010000(v18, v20, 1);
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0;
      v23 = (v16 + 56);
      v24 = 1 << *(v16 + 32);
      v25 = (v24 + 63) >> 6;
      if (v25)
      {
        while (!*v23)
        {
          v22 -= 64;
          --v25;
          ++v23;
          if (!v25)
          {
            goto LABEL_23;
          }
        }

        if (__clz(__rbit64(*v23)) - v24 != v22)
        {
LABEL_24:
          v30 = sub_10000A148();
          sub_10001E580(v30, v31, v17 != 0, v16);
          v29 = v32;
          v33 = sub_10000A148();
          sub_100010000(v33, v34, v17 != 0);
          goto LABEL_25;
        }
      }
    }

LABEL_23:
    v26 = sub_10000A148();
    sub_100010000(v26, v27, v28);
    v29 = 0;
LABEL_25:
    v1 = v38;

    v35 = [objc_opt_self() handleWithTUHandle:v29];

    v9 = v3;
    v5 = v39;
    v10 = v39;
    v8 = (v4 + 64) >> 6;
    v2 = v37;
    if (v35)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_5;
    }
  }

  v11 = v9;
  v12 = v10;
  v3 = v9;
  if (v10)
  {
LABEL_11:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_29;
    }

    v12 = *(v2 + 8 * v3);
    ++v11;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1003CF2FC(uint64_t a1)
{
  sub_1003CF4DC(319, &qword_1006A93E0, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  if (v1 <= 0x3F)
  {
    sub_1003CF530(319, &qword_1006A93E8, &type metadata for CallAnnouncementDescriptor);
    if (v2 <= 0x3F)
    {
      sub_1003CF4DC(319, &qword_1006A93F0, type metadata accessor for RingtoneDescriptor);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SoundDescriptorAction(319);
        if (v4 <= 0x3F)
        {
          sub_1003CF530(319, &qword_1006A93F8, &type metadata for HapticDescriptor);
          if (v5 <= 0x3F)
          {
            sub_1003CF530(319, &qword_1006A9400, &type metadata for HoldMusicDescriptor);
            if (v6 <= 0x3F)
            {
              sub_1003CF530(319, &qword_1006A9408, &type metadata for DisclosureDescriptor);
              if (v7 <= 0x3F)
              {
                sub_1003CF4DC(319, &qword_1006ABE50, type metadata accessor for CallTranslationDisclosureDescriptor);
                if (v8 <= 0x3F)
                {
                  sub_1003CF530(319, &unk_1006A9410, &type metadata for DiscoveryModeDescriptor);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1003CF4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003CF530(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003CF57C(char *a1, char *a2)
{
  v121 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  sub_100008070();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  sub_100006688();
  __chkstk_darwin(v8);
  v119 = (&v109 - v9);
  v120 = sub_10026D814(&unk_1006ABE90, &qword_100585598);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v10);
  v12 = &v109 - v11;
  v125 = type metadata accessor for RingtoneDescriptor(0);
  sub_100008070();
  __chkstk_darwin(v13);
  sub_100007FDC();
  v122 = (v15 - v14);
  sub_10026D814(&qword_1006A61F0, &unk_10057D920);
  sub_100006688();
  __chkstk_darwin(v16);
  v123 = (&v109 - v17);
  v124 = sub_10026D814(&qword_1006A9460, &qword_1005855A0);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v18);
  v126 = &v109 - v19;
  type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  sub_100008070();
  __chkstk_darwin(v20);
  sub_100007FDC();
  v23 = v22 - v21;
  sub_10026D814(&unk_1006A2B60, &qword_100581170);
  sub_100006688();
  __chkstk_darwin(v24);
  v26 = &v109 - v25;
  v27 = sub_10026D814(&qword_1006A9468, &qword_1005855A8);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v28);
  v30 = &v109 - v29;
  memcpy(v131, a1, sizeof(v131));
  memcpy(__dst, a2, 0xA8uLL);
  if ((sub_100400614(v131, __dst) & 1) == 0)
  {
    return 0;
  }

  v115 = v7;
  v116 = v12;
  v31 = type metadata accessor for AudioDescriptor(0);
  v32 = *(v31 + 20);
  v33 = *(v27 + 48);
  v117 = a1;
  v118 = v31;
  sub_100343100(&a1[v32], v30, &unk_1006A2B60, &qword_100581170);
  v34 = &a2[v32];
  v35 = a2;
  sub_100343100(v34, &v30[v33], &unk_1006A2B60, &qword_100581170);
  sub_100009F5C(v30);
  if (v36)
  {
    sub_100009F5C(&v30[v33]);
    if (v36)
    {
      sub_100009A04(v30, &unk_1006A2B60, &qword_100581170);
      goto LABEL_13;
    }

LABEL_10:
    v37 = &qword_1006A9468;
    v38 = &qword_1005855A8;
    v39 = v30;
LABEL_11:
    sub_100009A04(v39, v37, v38);
    return 0;
  }

  sub_100343100(v30, v26, &unk_1006A2B60, &qword_100581170);
  sub_100009F5C(&v30[v33]);
  if (v36)
  {
    sub_100049DC8(v26, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
    goto LABEL_10;
  }

  sub_100047DF0(&v30[v33], v23, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  v40 = static UUID.== infix(_:_:)();
  sub_100049DC8(v23, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  sub_100049DC8(v26, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
  sub_100009A04(v30, &unk_1006A2B60, &qword_100581170);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v41 = v118[6];
  v42 = *&v117[v41];
  v43 = *&v117[v41 + 8];
  v44 = *&v117[v41 + 16];
  v45 = *&v117[v41 + 24];
  v46 = *&v117[v41 + 32];
  v47 = *&v117[v41 + 40];
  v48 = &v35[v41];
  v49 = *v48;
  v50 = *(v48 + 1);
  v51 = *(v48 + 2);
  v52 = *(v48 + 3);
  v53 = *(v48 + 4);
  v54 = *(v48 + 20);
  if (!v43)
  {
    if (!v50)
    {
      v109 = *(v48 + 2);
      v110 = v35;
      v68 = v42;
      v69 = v49;
      v70 = v44;
      sub_10004CB34(v42, 0, v44, v45, v46);
      sub_10004CB34(v69, 0, v109, v52, v53);
      sub_10005081C(v68, 0, v70, v45, v46);
      goto LABEL_21;
    }

LABEL_18:
    v112 = v42;
    v113 = v44;
    v65 = v49;
    v66 = v51;
    v114 = v45;
    v111 = v52;
    sub_10004CB34(v42, v43, v44, v45, v46);
    sub_10004CB34(v65, v50, v66, v52, v53);
    sub_10005081C(v112, v43, v113, v114, v46);
    sub_10005081C(v65, v50, v66, v111, v53);
    return 0;
  }

  if (!v50)
  {
    goto LABEL_18;
  }

  v110 = v35;
  v129[0] = v49;
  v129[1] = v50;
  v129[2] = v51;
  v129[3] = v52;
  v129[4] = v53;
  v130 = v54 & 0x101;
  v127[0] = v42;
  v127[1] = v43;
  v127[2] = v44;
  v127[3] = v45;
  v127[4] = v46;
  v128 = v47 & 0x101;
  v112 = v42;
  v113 = v44;
  v114 = v45;
  sub_10004CB34(v42, v43, v44, v45, v46);
  v55 = sub_100017324();
  sub_10004CB34(v55, v56, v57, v58, v59);
  LODWORD(v109) = sub_1003B6354(v127, v129);
  v60 = sub_100017324();
  sub_10005081C(v60, v61, v62, v63, v64);
  sub_10005081C(v112, v43, v113, v114, v46);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v71 = v117;
  v72 = *(v124 + 48);
  v73 = v126;
  sub_100343100(&v117[v118[7]], v126, &qword_1006A61F0, &unk_10057D920);
  v74 = v110;
  sub_1000114B8();
  if (sub_100015468(v73, 1, v125) == 1)
  {
    sub_100009F5C(v73 + v72);
    if (!v36)
    {
      goto LABEL_28;
    }

    sub_100009A04(v73, &qword_1006A61F0, &unk_10057D920);
  }

  else
  {
    v75 = v123;
    sub_100343100(v73, v123, &qword_1006A61F0, &unk_10057D920);
    sub_100009F5C(v73 + v72);
    if (v36)
    {
      sub_100049DC8(v75, type metadata accessor for RingtoneDescriptor);
LABEL_28:
      v37 = &qword_1006A9460;
      v38 = &qword_1005855A0;
LABEL_29:
      v39 = v73;
      goto LABEL_11;
    }

    v76 = v73 + v72;
    v77 = v122;
    sub_100047DF0(v76, v122, type metadata accessor for RingtoneDescriptor);
    v78 = sub_1003D4814(v75, v77);
    sub_100049DC8(v77, type metadata accessor for RingtoneDescriptor);
    sub_100049DC8(v75, type metadata accessor for RingtoneDescriptor);
    sub_100009A04(v73, &qword_1006A61F0, &unk_10057D920);
    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  v79 = v118;
  if ((sub_10033BC20(&v71[v118[8]], &v74[v118[8]]) & 1) == 0)
  {
    return 0;
  }

  v80 = v79[9];
  v81 = &v71[v80];
  v82 = *&v71[v80 + 8];
  v83 = &v74[v80];
  v84 = *(v83 + 1);
  if (v82)
  {
    if (!v84)
    {
      return 0;
    }

    v85 = *v81;
    v86 = *(v81 + 2);
    v87 = *v83;
    v88 = *(v83 + 2);
    v89 = v88;
    v90 = v84;
    v91 = v85;
    v92 = v88;
    v71 = v117;
    v79 = v118;
    v93 = sub_10039D420(v91, v82, v86, v87, v90, v92);

    if (!v93)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  v94 = v79[10];
  v95 = v71[v94];
  v96 = v74[v94];
  if (v95)
  {
    if (!v96)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v97 = v79[11];
  v98 = *&v71[v97] | ((*&v71[v97 + 4] | (v71[v97 + 6] << 16)) << 32);
  v99 = *&v74[v97] | ((*&v74[v97 + 4] | (v74[v97 + 6] << 16)) << 32);
  v100 = v99 & 0xFF000000000000;
  if ((v98 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v100 != 0x3000000000000)
    {
      return 0;
    }
  }

  else if (v100 == 0x3000000000000 || !sub_10029CDE8(v98 & 0xFF000000000000 | (((v98 >> 40) & 1) << 40) | v98 & 0xFFFFFFFFFFLL, v100 | (((v99 >> 40) & 1) << 40) | v99 & 0xFFFFFFFFFFLL))
  {
    return 0;
  }

  v101 = *(v120 + 48);
  v73 = v116;
  sub_100343100(&v71[v79[12]], v116, &unk_1006A2B50, &unk_1005811A0);
  sub_1000114B8();
  if (sub_100015468(v73, 1, v121) == 1)
  {
    sub_100009F5C(v73 + v101);
    if (!v36)
    {
      goto LABEL_53;
    }

    sub_100009A04(v73, &unk_1006A2B50, &unk_1005811A0);
  }

  else
  {
    v102 = v119;
    sub_100343100(v73, v119, &unk_1006A2B50, &unk_1005811A0);
    sub_100009F5C(v73 + v101);
    if (v36)
    {
      sub_100049DC8(v102, type metadata accessor for CallTranslationDisclosureDescriptor);
LABEL_53:
      v37 = &unk_1006ABE90;
      v38 = &qword_100585598;
      goto LABEL_29;
    }

    v103 = v73 + v101;
    v104 = v115;
    sub_100047DF0(v103, v115, type metadata accessor for CallTranslationDisclosureDescriptor);
    v105 = sub_100449CDC(v102, v104);
    sub_100049DC8(v104, type metadata accessor for CallTranslationDisclosureDescriptor);
    sub_100049DC8(v102, type metadata accessor for CallTranslationDisclosureDescriptor);
    sub_100009A04(v73, &unk_1006A2B50, &unk_1005811A0);
    if ((v105 & 1) == 0)
    {
      return 0;
    }
  }

  v106 = v118[13];
  v107 = v71[v106];
  v108 = v74[v106];
  if (v107)
  {
    if ((v108 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v108)
  {
    return 0;
  }

  return 1;
}

void sub_1003CFFA8()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003D00B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

uint64_t sub_1003D00D4(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler);
    if (v10)
    {
      v11 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler + 8);
      sub_1000115CC(v10, v11);

      v13 = sub_1003B6810(v12, a1);

      if ((v13 & 1) == 0)
      {
        v10(v14);
      }

      return sub_1000051F8(v10, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D0250(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
  *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes) = a1;
  sub_1003D00D4(v2);
}

id sub_1003D0298(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_routesDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1003D030C(char **a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_22:
    sub_100008134(&qword_1006A0AA0);
  }

  v12 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v38 = sub_100016F14();
  *(v13 + 56) = v38;
  v37 = sub_10000F078(&qword_1006A4E10, sub_100016F14, &protocol conformance descriptor for NSObject);
  *(v13 + 64) = v37;
  *(v13 + 32) = a1;
  v41 = a1;
  v14 = static os_log_type_t.default.getter();
  v39 = v12;
  os_log(_:dso:log:type:_:)("route: %@", 9, 2, &_mh_execute_header, v12, v14, v13);

  v40 = v1;
  v36 = OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes;
  v15 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_pairedHostDeviceRoutes);
  v16 = sub_10000B6F4(v15);

  v17 = 0;
  a1 = &selRef_setWindowed_;
  while (1)
  {
    if (v16 == v17)
    {

      v29 = static os_log_type_t.error.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10057D6A0;
      *(v30 + 56) = v38;
      *(v30 + 64) = v37;
      *(v30 + 32) = v41;
      v31 = *(v40 + v36);
      *(v30 + 96) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
      sub_10000A5C0();
      *(v30 + 104) = sub_10001000C(v32, &unk_1006A7B70, &qword_100584DB0, v33);
      *(v30 + 72) = v31;
      v34 = v41;

      os_log(_:dso:log:type:_:)("Could not find route to pick for %@. All paired host device routes: %@", 70, 2, &_mh_execute_header, v39, v29, v30);
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v20 = [v18 uniqueIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [v41 uniqueIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v21 == v25 && v23 == v27)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v17;
    if (v1)
    {
    }
  }
}

uint64_t sub_1003D0718(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v42 = a1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v49 = v4;
  v50 = v3;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v47 = v6 - v5;
  v48 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v46 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v45 = v10 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = (v16 - v15);
  v43 = type metadata accessor for DispatchWallTime();
  sub_100007FEC();
  v19 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v41 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100007FDC();
  v32 = v31 - v30;
  v33 = *(v2 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v31 - v30) = v33;
  (*(v28 + 104))(v31 - v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v41[1] = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v32, v26);
  if (v33)
  {
    static DispatchWallTime.now()();
    *v17 = TUTransferTimeout();
    (*(v13 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v13 + 8))(v17, v11);
    v41[0] = *(v19 + 8);
    v35 = v25;
    v36 = v43;
    (v41[0])(v23, v43);
    aBlock[4] = v42;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062D470;
    v37 = _Block_copy(aBlock);

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_10000F078(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    v39 = v47;
    v40 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v37);
    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
    (v41[0])(v35, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D0CE4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd29PairedHostDeviceRouteProvider_queue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1006A0AA0 != -1)
  {
LABEL_5:
    sub_100008134(&qword_1006A0AA0);
  }

  v12 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  *(v13 + 56) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
  sub_10000A5C0();
  *(v13 + 64) = sub_10001000C(v14, &unk_1006A7B70, &qword_100584DB0, v15);
  *(v13 + 32) = a1;

  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("routes: %@", 10, 2, &_mh_execute_header, v12, v16, v13);

  return sub_1003D0250(v17);
}

id sub_1003D0EC4()
{
  v1 = sub_100432E00(v0);
  if (v2 || (v5 = [v0 localSenderIdentity]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, "handle"), v6, v7) && (v1 = sub_1004450C8(v7), v8))
  {
    v3 = v1;
LABEL_3:
    sub_1002DE970();
    return sub_100389560(2, v3);
  }

  v9 = [v0 localSenderIdentity];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 handle];

    if (v11)
    {
      v12 = [v11 value];

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1003D0FF4()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A94B0);
  v1 = sub_10000AF9C(v0, qword_1006A94B0);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003D10DC()
{
  v1 = sub_1003D1628();
  v0[3] = v1;
  v2 = sub_10000B6F4(v1);
  v3 = IDSServiceNameFaceTimeMulti;
  v0[4] = v2;
  v0[5] = v3;
  v4 = v0[3];
  if (v2)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
      }

      v5 = *(v4 + 32);
    }

    v6 = v0[2];
    v0[6] = v5;
    v0[7] = 1;
    sub_100009B14((v6 + 24), *(v6 + 48));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[8] = v7;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    sub_10000877C(v8);
    v2 = sub_10000A378();

    return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
  }

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_1003D138C(char a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1003D14AC, 0, 0);
}

uint64_t sub_1003D14AC()
{
  v1 = *(v0 + 80);

  if (v1)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);
    if (v3 != *(v0 + 32))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v2 = *(v4 + 8 * v3 + 32);
      }

      *(v0 + 48) = v2;
      if (!__OFADD__(v3, 1))
      {
        v5 = *(v0 + 16);
        *(v0 + 56) = v3 + 1;
        sub_100009B14((v5 + 24), *(v5 + 48));
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 64) = v6;
        v7 = swift_task_alloc();
        *(v0 + 72) = v7;
        *v7 = v0;
        sub_10000877C(v7);
        v2 = sub_10000A378();

        return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return dispatch thunk of SharePlayAvailabilityHelperProvider.isDestinationAvailableForServiceAndCapability(handle:service:capability:)(v2);
    }
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_1003D1628()
{
  v1 = [*(v0 + 16) handle];
  if (v1)
  {
    v2 = v1;
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    result = swift_allocObject();
    *(result + 16) = xmmword_10057CA80;
    *(result + 32) = v2;
  }

  else
  {
    sub_1003D1790();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1003D16D0()
{
  result = sub_1003D0EC4();
  if (!result)
  {
    sub_1003D1790();
    swift_allocError();
    *v1 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1003D172C()
{
  sub_100009B7C((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_1003D1790()
{
  result = qword_1006A9588;
  if (!qword_1006A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharePlayTelephonyIdentityProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003D18C4()
{
  result = qword_1006A9590;
  if (!qword_1006A9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9590);
  }

  return result;
}

id sub_1003D1918()
{
  if (qword_1006A0BC0 != -1)
  {
    sub_10000AA08(&qword_1006A0BC0);
  }

  v1 = qword_1006BA778;

  return v1;
}

NSString sub_1003D1964()
{
  sub_100007CF4();
  result = String._bridgeToObjectiveC()();
  qword_1006BA770 = result;
  return result;
}

NSString sub_1003D1998()
{
  sub_100007CF4();
  result = String._bridgeToObjectiveC()();
  qword_1006BA778 = result;
  return result;
}

id sub_1003D19F4(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for ApplicationInstallationObserver());
  v4 = a1;
  *&v2[OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver] = sub_10037DC0C(v4);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CallRecordingLaunchService();
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id sub_1003D1A78()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver);
  sub_100007CF4();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 applicationRecordWithBundleID:v2];

  return v3;
}

id sub_1003D1AE4()
{
  v0 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_10026D814(&qword_1006A95D0, &qword_100585778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  Dictionary.init(dictionaryLiteral:)();
  sub_1004557B0();
  v4 = v3;

  sub_1003D2CD4(v4, v0);
  return v0;
}

id sub_1003D1BB8()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallRecordingLaunchService_applicationInstallationObserver);
  sub_100007CF4();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 isApplicationInstalledWithBundleID:v2];

  return v3;
}

uint64_t sub_1003D1C1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Notification();
  sub_100008A24();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000E598();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003D2518(v8, a2);
  if (qword_1006A0BB8 != -1)
  {
    swift_once();
  }

  v9 = qword_1006BA770;
  sub_10029E2DC();
  if (v10)
  {
    v10 = sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  }

  sub_100017340(v10);
  sub_10000FEE0();

  return (*(v6 + 8))(v3, v2);
}

uint64_t sub_1003D1D80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Notification();
  sub_100008A24();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000E598();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003D2518(v8, a2);
  if (qword_1006A0BC0 != -1)
  {
    sub_10000AA08(&qword_1006A0BC0);
  }

  v9 = qword_1006BA778;
  sub_10029E670();
  if (v10)
  {
    v10 = sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  }

  sub_100017340(v10);
  sub_10000FEE0();

  return (*(v6 + 8))(v3, v2);
}

void sub_1003D1ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1003D1A78();
  if (v4)
  {
    v5 = v4;
    sub_100006AF0(0, &qword_1006A95C8, NSUserActivity_ptr);

    v6 = sub_1003D22D0();
    if (a3)
    {
      v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v7.super.isa = 0;
    }

    [v6 setUserInfo:v7.super.isa];

    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA640);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      v16 = sub_100291118(a3);
      v18 = sub_10002741C(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Launching notes with user info %s", v14, 0xCu);
      sub_100009B7C(v15);
    }

    v19 = [objc_opt_self() defaultWorkspace];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for CallRecordingLaunchService();
      v21 = v6;
      v22 = v5;
      v23 = sub_1003D1AE4();
      aBlock[4] = sub_1003D2344;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_10062D568;
      v24 = _Block_copy(aBlock);
      [v20 openUserActivity:v21 usingApplicationRecord:v22 configuration:v23 completionHandler:v24];
      _Block_release(v24);

      v25 = [objc_opt_self() defaultCenter];
      isa = Notification._bridgeToObjectiveC()().super.isa;
      [v25 postNotification:isa];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA640);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Could not launch Notes because we don't have the application record", v10, 2u);
    }
  }
}

id sub_1003D22D0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithActivityType:v1];

  return v2;
}

void sub_1003D2344(char a1, uint64_t a2)
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA640);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1002910C8(a2);
    v11 = sub_10002741C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Opened user activity for call recording note success: %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void *sub_1003D2518(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v56 - v7;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = Dictionary.init(dictionaryLiteral:)();
  sub_10000A8EC();
  *&v61 = 0xD000000000000015;
  *(&v61 + 1) = v13;
  AnyHashable.init<A>(_:)();
  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  sub_100035BC0(v11);
  v56 = v6;
  if (v15)
  {
    sub_1000099A4(v11, &unk_1006A3DD0, &unk_10057C9D0);
    v16 = sub_1000067D4();
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v12;
      v20 = *(v12 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);
      sub_1000152AC();
      sub_100006780(v21 + v18 * v22);
      sub_10003EBF0((*(&v62 + 1) + 32 * v18), &v61);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_100006780(v63);
    sub_1000099A4(&v61, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v23 + 32))();
    v24 = sub_10000F7E0();
    sub_10000A3A0(v24);
    sub_100006780(v63);
  }

  sub_10000A8EC();
  *&v61 = 0xD000000000000014;
  *(&v61 + 1) = v25;
  sub_1000104D8();
  v26 = OBJC_IVAR___CSDAudioCallRecordingSession_uuid;
  v27 = sub_100016058();
  v28 = *(*(v14 - 8) + 16);
  v28(v27, a2 + v26, v14);
  v29 = sub_10000F7E0();
  sub_10000A3A0(v29);
  sub_100006780(v63);
  sub_10000A8EC();
  *&v61 = 0xD000000000000014;
  *(&v61 + 1) = v30;
  sub_1000104D8();
  v31 = sub_100016058();
  v28(v31, a2 + v26, v14);
  v32 = sub_10000F7E0();
  sub_10000A3A0(v32);
  v33 = v59;
  sub_100006780(v63);
  sub_10000A8EC();
  *&v61 = 0xD000000000000014;
  *(&v61 + 1) = v34;
  sub_1000104D8();
  v35 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  swift_beginAccess();
  sub_100270E18(a2 + v35, v8);
  type metadata accessor for Date();
  sub_100035BC0(v8);
  if (v15)
  {
    sub_1000099A4(v8, &qword_1006A3C70, &unk_10057EA80);
    v36 = sub_1000067D4();
    v44 = v56;
    if (v37)
    {
      v38 = v36;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v33;
      v40 = v33[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v33 = v60;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v40);
      sub_1000152AC();
      sub_100006780(v41 + v38 * v42);
      sub_10003EBF0((*(&v62 + 1) + 32 * v38), &v61);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_100006780(v63);
    sub_1000099A4(&v61, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v43 + 32))();
    sub_10000F7E0();
    v58 = v33;
    sub_100378C74(v60, v63);
    v33 = v58;
    sub_100006780(v63);
    v44 = v56;
  }

  sub_10000A8EC();
  *&v61 = 0xD000000000000012;
  *(&v61 + 1) = v45;
  AnyHashable.init<A>(_:)();
  v46 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
  swift_beginAccess();
  sub_100270E18(a2 + v46, v44);
  sub_100035BC0(v44);
  if (v15)
  {
    sub_1000099A4(v44, &qword_1006A3C70, &unk_10057EA80);
    v47 = sub_1000067D4();
    if (v48)
    {
      v49 = v47;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v33;
      v51 = v33[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      v33 = v60;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v50, v51);
      sub_1000152AC();
      sub_100006780(v52 + v49 * v53);
      sub_10003EBF0((*(&v62 + 1) + 32 * v49), &v61);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_100006780(v63);
    sub_1000099A4(&v61, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    sub_100016058();
    sub_100018304();
    (*(v54 + 32))();
    sub_10000F7E0();
    v57 = v33;
    sub_100378C74(v60, v63);
    v33 = v57;
    sub_100006780(v63);
  }

  return v33;
}

id sub_1003D2BFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallRecordingLaunchService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003D2CD4(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setFrontBoardOptions:isa];
}

void *sub_1003D2D54()
{
  type metadata accessor for AnsweringMachineRTTHelper();
  swift_allocObject();
  result = sub_1003D2D90();
  qword_1006BA780 = result;
  return result;
}

void *sub_1003D2D90()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B7B0(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v0[6] = 0;
  v0[7] = 0;
  v0[5] = v1;
  return v0;
}

id sub_1003D2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003507C4(a1, v12);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    return sub_1002E1320(v12);
  }

  (*(v14 + 32))(v16, v12, v13);
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v30 = a5;
  v31 = a4;
  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5F8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "RTT sending answering machine URL", v21, 2u);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v22 = result;
    sub_10026D814(&qword_1006A4458, &unk_100588070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057E830;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v24;
    sub_10000AA28();
    *(inited + 96) = v13;
    v25 = sub_1002A1D5C((inited + 72));
    (*(v14 + 16))(v25, v16, v13);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v26;
    sub_10000AA28();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = a2;
    *(inited + 152) = a3;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v27;

    sub_10000AA28();
    *(inited + 240) = &type metadata for String;
    v28 = v30;
    *(inited + 216) = v31;
    *(inited + 224) = v28;

    v29 = Dictionary.init(dictionaryLiteral:)();
    sub_10046F2D0(v29, 0x200000000000, v22);

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RTT sending answering machine text", v11, 2u);
  }

  v12 = [objc_opt_self() sharedInstance];
  if (v12)
  {
    v13 = v12;
    sub_10026D814(&qword_1006A4458, &unk_100588070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057CA70;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A3C4(v15, v16, v17, v18, v19, v20, v21, v22, v15);
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000A3C4(v23, v24, v25, v26, v27, v28, v29, v30, v51);
    v31 = [objc_allocWithZone(NSNumber) initWithInteger:4];
    v32 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    *(inited + 168) = v32;
    *(inited + 144) = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A3C4(v33, v34, v35, v36, v37, v38, v39, v40, v33);
    v41 = [objc_allocWithZone(NSNumber) initWithBool:1];
    *(inited + 240) = v32;
    *(inited + 216) = v41;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A3C4(v42, v43, v44, v45, v46, v47, v48, v49, v42);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = a3;
    *(inited + 296) = a4;

    v50 = Dictionary.init(dictionaryLiteral:)();
    sub_10046F2D0(v50, 0x400000000000, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D33E0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"setupRTTMessageObserverIfNecessary" name:TUCallTTYTypeChangedNotification object:0];

  sub_1003D345C();
}

void sub_1003D345C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v9 = v1;
    if ((([v9 isRTT] & 1) != 0 || objc_msgSend(v9, "isTTY")) && !*(v0 + 32))
    {
      if (qword_1006A0B28 != -1)
      {
        sub_1000080B0(&qword_1006A0B28);
      }

      v2 = type metadata accessor for Logger();
      sub_10000AF9C(v2, qword_1006BA5F8);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "fetching RTT conversation for answering machine", v5, 2u);
      }

      v6 = objc_opt_self();
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1003D4508;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028BAD0;
      aBlock[3] = &unk_10062D630;
      v8 = _Block_copy(aBlock);

      [v6 conversationWithCall:v9 withCallback:v8];
      _Block_release(v8);

      sub_1003D372C();
    }

    else
    {
    }
  }
}

uint64_t sub_1003D3678(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 32);
    *(result + 32) = a1;
    v5 = a1;

    sub_10003A920(0);
  }

  return result;
}

void sub_1003D372C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_weakInit();
      v12[4] = sub_1003D43B8;
      v12[5] = v6;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1003D3E38;
      v12[3] = &unk_10062D5B8;
      v7 = _Block_copy(v12);

      v8 = [v3 callUUID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_1003D433C(v7, v9, v11, v5);
      _Block_release(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D3884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_10000AF74(v12, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a5;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a1;
  v15[8] = a2;
  sub_1002762F0();
}

uint64_t sub_1003D39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D3A5C, v10, v9);
}

uint64_t sub_1003D3A5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 32);
    if (!v3 || (v4 = [v3 lastUtteranceForMe:0]) == 0)
    {

      goto LABEL_21;
    }

    v5 = v4;
    sub_100316A74(v4);
    if (v6)
    {

      result = sub_100316A74(v5);
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = v8;
      v11 = v0[15];
      v13 = v0[13];
      v12 = v0[14];

      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = sub_1003D3DB8(v12, v14, v9, v10);
      v17 = v16;

      if (!v13)
      {

LABEL_21:
        v20 = *(v2 + 32);
        if (!v20)
        {
          goto LABEL_41;
        }

        v21 = v0[15];
        v22 = v21 ? v0[14] : 0;
        v23 = v21 ? v0[15] : 0xE000000000000000;

        v24 = sub_1003D449C(v22, v23, v20);
        if (!v24)
        {
          goto LABEL_41;
        }

        v5 = v24;
        if (!v0[13])
        {
          goto LABEL_40;
        }

        v25 = sub_100316A74(v24);
        if (v26)
        {
          if (v25 == v0[12] && v26 == v0[13])
          {

            goto LABEL_40;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
LABEL_40:

LABEL_41:
            sub_10003A920(0);
            [*(v2 + 56) invalidate];
            v30 = objc_opt_self();
            v0[6] = sub_1003D4500;
            v0[7] = v2;
            v0[2] = _NSConcreteStackBlock;
            v0[3] = 1107296256;
            v0[4] = sub_100024F0C;
            v0[5] = &unk_10062D608;
            v31 = _Block_copy(v0 + 2);

            v32 = [v30 scheduledTimerWithTimeInterval:0 repeats:v31 block:3.0];
            _Block_release(v31);
            v33 = *(v2 + 56);
            *(v2 + 56) = v32;

            goto LABEL_42;
          }
        }

LABEL_38:
        v29 = String._bridgeToObjectiveC()();
        [v5 updateText:v29];

        goto LABEL_40;
      }

      if (v15 == v0[12] && v0[13] == v17)
      {

        goto LABEL_38;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

LABEL_42:
  v34 = v0[1];

  return v34();
}

uint64_t sub_1003D3DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

uint64_t sub_1003D3E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v3)
    {
LABEL_3:
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  v4(v5, v7, v8, v3);
}

void sub_1003D3EEC(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for Utterance();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA5F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RTT sending completed utterance", v11, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003D40EC(v7);
    sub_1003164DC();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  sub_100396898(&v13, v7);
  swift_endAccess();
}

uint64_t sub_1003D40EC(void *a1)
{
  v2 = sub_10026D814(&qword_1006A52E8, &unk_100580050);
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-v3];
  sub_10026D814(&qword_1006A7C38, &qword_1005834E0);
  type metadata accessor for Caption();
  *(swift_allocObject() + 16) = xmmword_10057D690;
  result = sub_100316A74(a1);
  if (v6)
  {
    String.count.getter();

    CaptionRange.init(_:)();
    v7 = type metadata accessor for CaptionRange();
    sub_10000AF74(v4, 0, 1, v7);
    Caption.init(confidence:range:)();
    result = sub_100316A74(a1);
    if (v8)
    {
      v9[12] = 1;
      return Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_1003D42A4()
{
  sub_100060500((v0 + 2));

  return v0;
}

uint64_t sub_1003D42E4()
{
  sub_1003D42A4();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void sub_1003D433C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 registerForUpdates:a1 forCallUID:v6];
}

uint64_t sub_1003D43C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1002DE008;

  return sub_1003D39BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1003D449C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 appendStringFromOtherContactPath:v4];

  return v5;
}

uint64_t sub_1003D4518(uint64_t a1)
{
  sub_1003D45C0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1003D4610(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1003D45C0()
{
  if (!qword_1006A97C0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A97C0);
    }
  }
}

void sub_1003D4610(uint64_t a1)
{
  if (!qword_1006A2DD0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A2DD0);
    }
  }
}

uint64_t sub_1003D4668@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for RingtoneDescriptor(0);
  v10 = v9[5];
  v11 = type metadata accessor for URL();
  sub_10000AF74(a3 + v10, 1, 1, v11);
  v12 = a1;
  v13 = sub_1003B6A08(v12);
  if (v13)
  {
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];

      goto LABEL_6;
    }
  }

  v15 = 0;
  v14 = 0;
LABEL_6:
  *a3 = v15;
  a3[1] = v14;
  v16 = [v12 provider];

  v17 = [v16 ringtoneSoundURL];
  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else
  {

    v18 = 1;
  }

  sub_10000AF74(v8, v18, 1, v11);
  v19 = v9[6];
  v20 = v9[7];
  v21 = (a3 + v19);
  result = sub_1003D4E34(v8, a3 + v10);
  *v21 = 0;
  v21[1] = 0;
  *(a3 + v20) = a2 & 1;
  return result;
}

uint64_t sub_1003D4814(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_10026D814(&qword_1006A97F8, &unk_100585878);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *a1 == *a2 && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v15)
  {
    goto LABEL_19;
  }

  v17 = type metadata accessor for RingtoneDescriptor(0);
  v18 = v17[5];
  v19 = *(v11 + 48);
  sub_1003507C4(a1 + v18, v13);
  sub_1003507C4(a2 + v18, &v13[v19]);
  sub_100009F5C(v13);
  if (!v16)
  {
    sub_1003507C4(v13, v10);
    sub_100009F5C(&v13[v19]);
    if (!v20)
    {
      (*(v5 + 32))(v7, &v13[v19], v4);
      sub_1003D4DDC();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1000099A4(v13, &unk_1006A52C0, &unk_10057D930);
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_1000099A4(v13, &qword_1006A97F8, &unk_100585878);
    goto LABEL_19;
  }

  sub_100009F5C(&v13[v19]);
  if (!v16)
  {
    goto LABEL_18;
  }

  sub_1000099A4(v13, &unk_1006A52C0, &unk_10057D930);
LABEL_22:
  v25 = v17[6];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (v29)
    {
      v30 = *v26 == *v28 && v27 == v29;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v29)
  {
LABEL_31:
    v21 = *(a1 + v17[7]) ^ *(a2 + v17[7]) ^ 1;
    return v21 & 1;
  }

LABEL_19:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_1003D4B40()
{
  sub_10000A3E0();
  _StringGuts.grow(_:)(21);

  sub_10000A8EC();
  v16 = v1;
  v2._countAndFlagsBits = sub_10001E478(*v0, v0[1]);
  String.append(_:)(v2);

  sub_100008384();
  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = v16;
  String.append(_:)(v3);

  sub_10000A3E0();
  _StringGuts.grow(_:)(28);

  sub_10000A8EC();
  v17 = v4;
  v5 = type metadata accessor for RingtoneDescriptor(0);
  v6._countAndFlagsBits = sub_10029142C(v0 + *(v5 + 20));
  String.append(_:)(v6);

  sub_100008384();

  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = v17;
  String.append(_:)(v7);

  sub_10000A3E0();
  _StringGuts.grow(_:)(26);

  sub_10000A8EC();
  v18 = v8;
  v9._countAndFlagsBits = sub_10001E478(*(v0 + *(v5 + 24)), *(v0 + *(v5 + 24) + 8));
  String.append(_:)(v9);

  sub_100008384();

  v10._countAndFlagsBits = 0xD000000000000017;
  v10._object = v18;
  String.append(_:)(v10);

  sub_10000A3E0();
  _StringGuts.grow(_:)(23);

  sub_10000A8EC();
  v19 = v11;
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  sub_100008384();

  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = v19;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);

  return 0xD000000000000013;
}

unint64_t sub_1003D4DDC()
{
  result = qword_1006A9800;
  if (!qword_1006A9800)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9800);
  }

  return result;
}

uint64_t sub_1003D4E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003D4F28(uint64_t a1, char a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___CSDIDSPendingChat_uuid;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v3[OBJC_IVAR___CSDIDSPendingChat_isVideo] = a2;
  *&v3[OBJC_IVAR___CSDIDSPendingChat_handle] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_1003D514C(uint64_t a1)
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

Class sub_1003D5200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003D52F4(a3, v7);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);

  return v8.super.isa;
}

uint64_t sub_1003D52F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1003D53A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___CSDGroupIDSPendingChat_uuid;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR___CSDGroupIDSPendingChat_handle] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_1003D5580(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + *a4);
}

uint64_t sub_1003D5628(uint64_t a1)
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

void sub_1003D56C8(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
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
    v43 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v38 = _swiftEmptyArrayStorage;
    v40 = sub_10001E578();
    v41 = v3;
    v42 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v40;
        v8 = v42;
        v37 = v41;
        v9 = v1;
        sub_1002E96A8(v40, v41, v42, v1);
        v11 = v10;
        v12 = [v10 candidate];
        v13 = [v12 candidateIdentifier];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v38;
        v43 = v38;
        v19 = v38[2];
        v18 = v38[3];
        if (v19 >= v18 >> 1)
        {
          sub_10039A2E0(v18 > 1, v19 + 1, 1);
          v17 = v43;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v38 = v17;
        if (v36)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v25 = v35;
          sub_10026D814(&qword_1006A99A8, &qword_100585920);
          v26 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v26(v39, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v21 = 1 << *(v9 + 32);
          if (v7 >= v21)
          {
            goto LABEL_32;
          }

          v22 = v7 >> 6;
          v23 = *(v34 + 8 * (v7 >> 6));
          if (((v23 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v37)
          {
            goto LABEL_34;
          }

          v24 = v23 & (-2 << (v7 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v25 = v35;
          }

          else
          {
            v27 = v22 << 6;
            v28 = v22 + 1;
            v29 = (v33 + 8 * v22);
            v25 = v35;
            while (v28 < (v21 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_100010000(v7, v37, 0);
                v21 = __clz(__rbit64(v30)) + v27;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v37, 0);
          }

LABEL_27:
          v32 = *(v9 + 36);
          v40 = v21;
          v41 = v32;
          v42 = 0;
        }

        if (v5 == v25)
        {
          sub_100010000(v40, v41, v42);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1003D5A2C()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10000C4C4();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v0;
  v20[4] = sub_1003D856C;
  v20[5] = v11;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v20[2] = v12;
  v20[3] = &unk_10062D8B0;
  v13 = _Block_copy(v20);

  v14 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v15, v16, &unk_10057D6E0, v17);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v8 + 8))(v1, v6);
  v18 = sub_100007C7C();
  v19(v18);

  sub_100005EDC();
}

void sub_1003D5C68()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v12);
  sub_100007FDC();
  sub_10000C4C4();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v7;
  v23[4] = v5;
  v23[5] = v13;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v14;
  v23[3] = v3;
  v15 = _Block_copy(v23);
  v16 = v0;
  v17 = v7;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v18, v19, &unk_10057D6E0, v20);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v10 + 8))(v1, v8);
  v21 = sub_100007C7C();
  v22(v21);

  sub_100005EDC();
}

void sub_1003D5EDC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (![*&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_featureFlags] intelligentRoutingEnabled])
  {
    if (qword_1006A0AA0 == -1)
    {
LABEL_8:
      v10 = qword_1006BA380;
      v11 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("IR FF not enabled", 17, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);
      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession])
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v8 = qword_1006BA380;
    v9 = static os_log_type_t.info.getter();
    os_log(_:dso:log:type:_:)("IR session already running", 26, 2, &_mh_execute_header, v8, v9, _swiftEmptyArrayStorage);
  }

  else
  {
    v12 = [objc_opt_self() tu_defaults];
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 objectForKey:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    aBlock = v34;
    v31 = v35;
    if (*(&v35 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = v29[2];
        v15 = v29[3];
        sub_100006AF0(0, &qword_1006A99C8, NSKeyedUnarchiver_ptr);
        sub_100006AF0(0, &qword_1006A99D0, IRServiceToken_ptr);
        v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v25 = v17;
        if (v17)
        {
          if (qword_1006A0AA0 != -1)
          {
            swift_once();
          }

          v26 = qword_1006BA380;
          v27 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Got token stored on device", 26, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);
          sub_100049B14(v16, v15);
          v28 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken];
          *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken] = v25;
        }

        else
        {
          sub_100049B14(v16, v15);
        }
      }
    }

    else
    {
      sub_10004975C(&aBlock);
    }

    v18 = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken];
    if (v18)
    {
      v19 = v18;
      sub_1003D6AD8(v19);
    }

    else
    {
      v20 = [objc_allocWithZone(IRServiceParameters) initWithServicePackage:0];
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v32 = sub_1003D8558;
      v33 = v22;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v31 = sub_1002A07DC;
      *(&v31 + 1) = &unk_10062D810;
      v23 = _Block_copy(&aBlock);
      v24 = v1;

      [v21 createServiceWithParameters:v20 reply:v23];
      _Block_release(v23);
    }
  }
}

void sub_1003D63E0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v7 = static OS_os_log.default.getter();
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Removing stored token for intelligent routing", 45, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

    v9 = [objc_opt_self() tu_defaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 setValue:0 forKey:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003D65A4(char *a1)
{
  v2 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:*&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue]];
  v3 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver;
  v4 = *&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver];
  *&a1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver] = v2;

  v5 = *&a1[v3];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v10[4] = sub_1003D8550;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100004CEC;
    v10[3] = &unk_10062D7C0;
    v7 = _Block_copy(v10);
    v8 = v5;
    v9 = a1;

    [v8 performBlockAfterFirstUnlock:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1003D66CC(uint64_t a1)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1006BA380;
  v3 = static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)("Call is being placed, device unlock status detected, initializing IR session", 76, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v5 = a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock;
  v6 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock);
  if (v6)
  {
    v7 = *(v5 + 8);

    v6(v8);

    return sub_1000051F8(v6, v7);
  }

  return result;
}

id sub_1003D67BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithCandidateIdentifier:v1];

  return v2;
}

uint64_t sub_1003D6830(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(IRMediaEvent) initWithEventType:a3 eventSubType:0];
  v6 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v7 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  if (v7)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v8 = v7;
    v9 = [a2 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_1003D67BC();
    [v8 addEvent:v5 forCandidate:v10];
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v11 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D6A0;
  v13 = v5;
  v14 = [v13 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v12 + 56) = &type metadata for String;
  v18 = sub_100009D88();
  *(v12 + 64) = v18;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v19 = *(a1 + v6);
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v20 = String.init<A>(describing:)();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v18;
  *(v12 + 72) = v20;
  *(v12 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Firing event %@ to session %@", 29, 2, &_mh_execute_header, v11, v22, v12);
}

uint64_t sub_1003D6AD8(id a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  a1 = [objc_allocWithZone(IRConfiguration) initWithServiceToken:a1];
  [a1 setMode:0];
  v10 = [objc_allocWithZone(IRSession) init];
  v9 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v11 = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession) = v10;

  v12 = *(v1 + v9);
  if (v12)
  {
    [v12 setDelegate:v1];
    v13 = *(v1 + v9);
    if (v13)
    {
      [v13 runWithConfiguration:a1];
    }
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  v27[0] = *(v1 + v9);
  v16 = v27[0];
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v27[0] = String.init<A>(describing:)();
  v27[1] = v17;
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  *(v15 + 56) = &type metadata for String;
  v21 = sub_100009D88();
  *(v15 + 64) = v21;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v27[0] = *(v1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
  v22 = v27[0];
  sub_10026D814(&qword_1006A99D8, &qword_100585938);
  v23 = String.init<A>(describing:)();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v21;
  *(v15 + 72) = v23;
  *(v15 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Starting session %@ with token %@", 33, 2, &_mh_execute_header, v14, v25, v15);
}

uint64_t sub_1003D6DC0(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&a3[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1003D8560;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D860;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;
  v16 = a3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

void sub_1003D707C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v4 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10057D690;
    v25 = a1;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100009D88();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Error while trying to obtain IR service token: %@", 49, 2, &_mh_execute_header, v4, v9, v5);
  }

  else if (a2)
  {
    v12 = objc_opt_self();
    v25 = 0;
    v13 = a2;
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v25];
    v15 = v25;
    if (v14)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [objc_opt_self() tu_defaults];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v21 = String._bridgeToObjectiveC()();
      [v19 setValue:isa forKey:v21];

      sub_100049B14(v16, v18);
    }

    else
    {
      v22 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v23 = *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
    *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken) = a2;
    v24 = v13;

    sub_1003D6AD8(v24);
  }
}

uint64_t sub_1003D7324(void *a1, void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v3 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A9968, IRSession_ptr);
  v5 = a1;
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  type metadata accessor for IRSessionSuspensionReason(0);
  v10 = String.init<A>(reflecting:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("IR session %@ suspended with reason: %@", 39, 2, &_mh_execute_header, v3, v12, v4);
}

uint64_t sub_1003D74D0(void *a1, void *a2, char a3)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v5 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057E830;
  type metadata accessor for IRSessionSuspensionReason(0);
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100009D88();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100006AF0(0, &qword_1006A9968, IRSession_ptr);
  v11 = a1;
  v12 = String.init<A>(reflecting:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = 0x6C6C697473;
  if (a3)
  {
    v14 = 0x65676E6F6C206F6ELL;
  }

  v15 = 0xE500000000000000;
  if (a3)
  {
    v15 = 0xE900000000000072;
  }

  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  *(v6 + 112) = v14;
  *(v6 + 120) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Ended suspension with reason %@ for session %@, Session is %@ suspended.", 72, 2, &_mh_execute_header, v5, v16, v6);
}

void sub_1003D76C4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v26 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v24 = v11;
  v25 = v10;
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10000C4C4();
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v12 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v27[0] = v3;
  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100009D88();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("IR session failed with error: %@, attempting to re-initialize", 61, 2, &_mh_execute_header, v12, v17, v13);

  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v3;
  v27[4] = sub_1003D7DA4;
  v27[5] = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_100004CEC;
  v27[3] = &unk_10062D680;
  v19 = _Block_copy(v27);
  swift_errorRetain();
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v21, v22, &unk_10057D6E0, v23);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v9, v4);
  (*(v24 + 8))(v1, v25);

  sub_100005EDC();
}

void sub_1003D79F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken);
  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken) = 0;

  v4 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession) = 0;

  v5 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount) = v6;
  v7 = [*(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_serverBag) maxIRSessionRetries];
  if ((v6 & 0x8000000000000000) == 0 && v6 >= v7)
  {
    if (qword_1006A0AA0 == -1)
    {
LABEL_5:
      v8 = qword_1006BA380;
      v9 = static os_log_type_t.default.getter();

      os_log(_:dso:log:type:_:)("Not reinitializing IRSession because we have reached the max number of failures", 79, 2, &_mh_execute_header, v8, v9, _swiftEmptyArrayStorage);
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
  if (swift_dynamicCast())
  {
    if ([v17 code] == -12889)
    {
      v10 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock);
      if (v10)
      {
        v11 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8);

        v10(v12);
        sub_1000051F8(v10, v11);
      }
    }
  }

  v13 = a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock;
  v14 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock);
  if (v14)
  {
    v15 = *(v13 + 8);

    v14(v16);
    sub_1000051F8(v14, v15);
  }
}

uint64_t *sub_1003D7DAC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1003D8228(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t *sub_1003D7E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v39 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v33 = v3;
    v31 = &v31;
    __chkstk_darwin(v9);
    v32 = v7;
    v34 = (&v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v7, v34);
    v35 = 0;
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    v37 = xmmword_10057D690;
    v38 = v4;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v7 << 6);
      v18 = *(v4 + 48);
      v36 = v17;
      v19 = qword_1006A0AA0;
      v20 = *(v18 + 8 * v17);
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v22 = swift_allocObject();
      *(v22 + 16) = v37;
      *(v22 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
      *(v22 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908, &protocol conformance descriptor for [A : B]);
      *(v22 + 32) = v39;

      v23 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("IR - didUpdateContext called with contexts: %@", 46, 2, &_mh_execute_header, v21, v23, v22);

      v8 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
      if ([v20 classification] == 2 || objc_msgSend(v20, "classification") == 3)
      {

        v4 = v38;
LABEL_19:
        *(v34 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
        }
      }

      else
      {
        v24 = [v20 classification];

        v4 = v38;
        if (v24 == 4)
        {
          goto LABEL_19;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        sub_1003EB800(v34, v32, v35, v4);
        v27 = v26;
        swift_bridgeObjectRelease_n();
        return v27;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v39;

  v27 = sub_1003D7DAC(v29, v7, v4, v30);

  swift_bridgeObjectRelease_n();
  return v27;
}

void sub_1003D8228(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v23 = v10 | (v4 << 6);
    v13 = qword_1006A0AA0;
    v14 = *(*(a3 + 48) + 8 * v23);
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057D690;
    *(v16 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
    *(v16 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908, &protocol conformance descriptor for [A : B]);
    *(v16 + 32) = a4;

    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("IR - didUpdateContext called with contexts: %@", 46, 2, &_mh_execute_header, v15, v17, v16);

    if ([v14 classification] == 2 || objc_msgSend(v14, "classification") == 3)
    {

LABEL_18:
      *(a1 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v22++, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = [v14 classification];

      if (v18 == 4)
      {
        goto LABEL_18;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      sub_1003EB800(a1, a2, v22, a3);

      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003D84CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setRapportIdentifier:v4];
}

id sub_1003D85E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v7[3] = type metadata accessor for ActivitySessionManager();
  v7[4] = &off_10062D928;
  v7[0] = a1;
  sub_100009AB0(v7, v3 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100009B7C(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_1003D86B8(void *a1)
{
  v1 = a1;
  v2 = [a1 activeRemoteParticipants];
  sub_100006AF0(0, &qword_1006A4530, off_100616608);
  sub_1003D911C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10001E550();
  if (v4)
  {
    v5 = v4;
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v50 = sub_10001E578();
    v51 = v6;
    v52 = v7 & 1;
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v8 = 0;
    v48 = v1;
    while (!__OFADD__(v8++, 1))
    {
      v10 = sub_100008260();
      sub_1002E966C(v10, v11, v52, v3);
      v13 = v12;
      v14 = [v12 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if ((v3 & 0xC000000000000001) != 0)
      {
        if (!v52)
        {
          goto LABEL_50;
        }

        sub_100008260();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&qword_1006A5670, &qword_100580350);
        v19 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v19(v54, 0);
      }

      else
      {
        if (v52)
        {
          goto LABEL_51;
        }

        if (v50 < 0)
        {
          goto LABEL_46;
        }

        v15 = 1 << *(v3 + 32);
        if (v50 >= v15)
        {
          goto LABEL_46;
        }

        v16 = v50 >> 6;
        v17 = *(v3 + 56 + 8 * (v50 >> 6));
        if (((v17 >> v50) & 1) == 0)
        {
          goto LABEL_47;
        }

        if (*(v3 + 36) != v51)
        {
          goto LABEL_48;
        }

        v18 = v17 & (-2 << (v50 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v50 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v16 << 6;
          v21 = v16 + 1;
          v22 = (v3 + 64 + 8 * v16);
          while (v21 < (v15 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              v25 = sub_100008260();
              sub_100010000(v25, v26, 0);
              v15 = __clz(__rbit64(v23)) + v20;
              goto LABEL_22;
            }
          }

          v27 = sub_100008260();
          sub_100010000(v27, v28, 0);
        }

LABEL_22:
        v29 = *(v3 + 36);
        v50 = v15;
        v51 = v29;
        v52 = 0;
      }

      if (v8 == v5)
      {

        sub_100010000(v50, v51, v52);
        v30 = v53;
        v1 = v48;
        goto LABEL_26;
      }
    }
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
LABEL_26:
    v31 = [v1 activitySessions];
    type metadata accessor for ActivitySession();
    sub_1003D9184();
    v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v32 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v34 = v54[0];
      v33 = v54[1];
      v35 = v54[2];
      v36 = v54[3];
      v37 = v54[4];
    }

    else
    {
      v38 = -1 << *(v32 + 32);
      v33 = v32 + 56;
      v35 = ~v38;
      v39 = -v38;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v37 = v40 & *(v32 + 56);

      v36 = 0;
      v34 = v32;
    }

    v41 = (v35 + 64) >> 6;
    if (v34 < 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v42 = v36;
      v43 = v37;
      v44 = v36;
      if (!v37)
      {
        break;
      }

LABEL_37:
      v45 = (v43 - 1) & v43;
      v46 = *(*(v34 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
      if (!v46)
      {
LABEL_43:
        sub_100022DDC(v34);

        return;
      }

      while (1)
      {
        v50 = v46;
        sub_1003D8B94(&v50, v30, v49);

        v36 = v44;
        v37 = v45;
        if ((v34 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_39:
        v47 = __CocoaSet.Iterator.next()();
        if (v47)
        {
          v53 = v47;
          swift_dynamicCast();
          v46 = v50;
          v44 = v36;
          v45 = v37;
          if (v50)
          {
            continue;
          }
        }

        goto LABEL_43;
      }
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
        goto LABEL_43;
      }

      v43 = *(v33 + 8 * v44);
      ++v42;
      if (v43)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_1003D8B94(id *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = dispatch thunk of ActivitySession.activity.getter();
  v14 = [v13 originator];

  if (!v14)
  {
    goto LABEL_14;
  }

  v48 = v12;
  v15 = dispatch thunk of ActivitySession.activity.getter();
  v16 = [v15 metadata];

  if (!v16 || (v17 = [v16 lifetimePolicy], v16, v17 != 1))
  {

LABEL_14:

    return;
  }

  v45 = v3;
  v18 = sub_10000B6F4(a2);
  v19 = 0;
  do
  {
    v20 = v19;
    if (v18 == v19)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v21 = *(a2 + 8 * v19 + 32);
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v23 = [v21 isEqualToHandle:v14];

    v19 = v20 + 1;
  }

  while (!v23);
  if (qword_1006A0B68 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  swift_once();
LABEL_16:
  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006BA6B8);
  v25 = v14;
  v26 = v48;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v44 = v25;
  if (v29)
  {
    v42 = v18 != v20;
    v30 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v30 = 136315906;
    v49 = v25;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v41 = v28;
    v31 = v25;
    v32 = String.init<A>(reflecting:)();
    v34 = sub_10002741C(v32, v33, &v50);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10002741C(v47, v26, &v50);
    *(v30 + 22) = 2080;
    v49 = a2;

    sub_10026D814(&qword_1006A5C30, &unk_1005859A0);
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, &v50);

    *(v30 + 24) = v37;
    *(v30 + 32) = 1024;
    v38 = v41;
    *(v30 + 34) = v42;
    _os_log_impl(&_mh_execute_header, v27, v38, "Originator %s in conversation for activity %s with handles %s? %{BOOL}d", v30, 0x26u);
    swift_arrayDestroy();
  }

  if (v18 == v20)
  {
    v39 = *(v46 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider + 24);
    v40 = *(v46 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider + 32);
    sub_100009B14((v46 + OBJC_IVAR____TtC13callservicesd36CSDActivitySessionParticipantMonitor_topicTerminationRequestProvider), v39);
    (*(v40 + 8))(v47, v26, v39, v40);
  }
}

unint64_t sub_1003D911C()
{
  result = qword_1006A5668;
  if (!qword_1006A5668)
  {
    sub_100006AF0(255, &qword_1006A4530, off_100616608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5668);
  }

  return result;
}

unint64_t sub_1003D9184()
{
  result = qword_1006A4890;
  if (!qword_1006A4890)
  {
    type metadata accessor for ActivitySession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4890);
  }

  return result;
}

uint64_t sub_1003D91DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 32);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = v6;
  sub_100007C2C();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1003DA648;
  *(v14 + 24) = v13;
  v21[4] = sub_1002C7C44;
  v21[5] = v14;
  sub_10000A204();
  sub_1000087A4();
  v21[2] = v15;
  v21[3] = &unk_10062DA88;
  v16 = _Block_copy(v21);
  v17 = a2;
  v18 = a1;
  v19 = a3;

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9344(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a4;
  v11 = type metadata accessor for DispatchTimeInterval();
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v82 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = __chkstk_darwin(v13);
  v93 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v82 - v16;
  v91 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v91);
  v92 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5E0);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = a5;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "LMI decryption failed so caching and triggering link recovery %@", v23, 0xCu);
    sub_1000099A4(v24, &unk_1006A2630, &qword_10057CB40);

    a5 = v22;
  }

  v26 = v19;
  v27 = a2;
  v28 = a3;

  v29 = [v26 value];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  swift_beginAccess();
  v33 = *(a6 + 16);

  v34 = sub_100005E74(v30, v32, v33);

  v84 = v27;
  v83 = v28;
  if (!v34)
  {
    v44 = [v26 value];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    sub_10026D814(&qword_1006A9B40, &unk_100585A80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10057D690;
    *(v48 + 32) = v27;
    *(v48 + 40) = v26;
    v49 = v90;
    *(v48 + 48) = v28;
    *(v48 + 56) = v49;
    *(v48 + 64) = a5;
    swift_beginAccess();
    v50 = v26;
    v51 = v27;
    v52 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(a6 + 16);
    sub_100379D74(v48, v45, v47, isUniquelyReferenced_nonNull_native, v54, v55, v56, v57, v82, v83);
    *(a6 + 16) = v95;

    swift_endAccess();
    v43 = &selRef_unsignedIntValue;
    goto LABEL_11;
  }

  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = a5;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v40 = v34[2];
    v39 = v34[3];
    if (v40 >= v39 >> 1)
    {
      sub_10047066C(v39 > 1, v40 + 1, 1, v34);
      v34 = v81;
    }

    v34[2] = v40 + 1;
    v41 = &v34[5 * v40];
    v41[4] = v36;
    v41[5] = v35;
    v42 = v90;
    v41[6] = v37;
    v41[7] = v42;
    v41[8] = v38;

    v43 = &selRef_unsignedIntValue;
LABEL_11:
    v58 = swift_allocObject();
    *(v58 + 16) = a6;
    *(v58 + 24) = v26;
    aBlock[4] = sub_1003DA658;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062DAD8;
    _Block_copy(aBlock);
    v95 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    v26 = v26;

    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v59 = DispatchWorkItem.init(flags:block:)();

    v60 = [v26 v43[160]];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    swift_beginAccess();
    v64 = *(a6 + 24);

    v65 = sub_1000513D8(v61, v63, v64);

    v36 = v93;
    if (v65)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v34 = [v26 v43[160]];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v66;

    swift_beginAccess();

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(a6 + 24);
    sub_100379D4C(v59, v38, v37, v67, v68, v69, v70, v71, v82, v83);
    *(a6 + 24) = v94;

    swift_endAccess();
    v35 = *(a6 + 32);
    static DispatchTime.now()();
    v72 = [*(a6 + 40) letMeInRequestRecoveryTimeout];
    if ((v72 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    sub_10047066C(0, v34[2] + 1, 1, v34);
    v34 = v80;
  }

  v73 = v82;
  *v82 = v72;
  v75 = v86;
  v74 = v87;
  (*(v86 + 104))(v73, enum case for DispatchTimeInterval.seconds(_:), v87);
  v76 = v85;
  + infix(_:_:)();
  (*(v75 + 8))(v73, v74);
  v77 = v89;
  v78 = *(v88 + 8);
  v78(v36, v89);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v78)(v76, v77);
}

uint64_t sub_1003D9B50(uint64_t a1, void *a2)
{
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5E0);
  v5 = a2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43[0] = v9;
    *v8 = 136315138;
    v10 = [v5 value];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    swift_beginAccess();
    v14 = *(a1 + 16);

    v15 = sub_100005E74(v11, v13, v14);

    v16 = sub_1002915D8(v15);
    v18 = v17;

    v19 = sub_10002741C(v16, v18, v43);

    *(v8 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating LMI link recovery for cached LMI: %s", v8, 0xCu);
    sub_100009B7C(v9);
  }

  v20 = [v5 value];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  swift_beginAccess();
  v24 = *(a1 + 16);

  v25 = sub_100005E74(v21, v23, v24);

  if (v25)
  {

    v27 = [v5 value];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    swift_beginAccess();
    sub_100384304(v28, v30);
    swift_endAccess();

    v31 = [v5 value];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    swift_beginAccess();
    sub_10038420C(v32, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    swift_endAccess();

    swift_beginAccess();
    sub_1003DA5D8(a1 + 48, v43);
    return sub_1000099A4(v43, &qword_1006A67C0, &qword_100581B88);
  }

  return result;
}

uint64_t sub_1003D9ECC(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_100007C2C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  sub_100007C2C();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1003DA5D0;
  *(v5 + 24) = v4;
  v9[4] = sub_1000200A4;
  v9[5] = v5;
  sub_10000A204();
  sub_1000087A4();
  v9[2] = v6;
  v9[3] = &unk_10062DA10;
  v7 = _Block_copy(v9);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1003DA004(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v5 = 0;
    v45 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 pseudonym];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = *(a2 + 16);
      if (*(v13 + 16))
      {

        v14 = sub_100005208(v10, v12);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v13 + 56) + 8 * v14);

          v18 = [v7 pseudonym];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = *(a2 + 24);
          if (*(v22 + 16))
          {

            v23 = sub_100005208(v19, v21);
            v25 = v24;

            if (v25)
            {
              v26 = *(*(v22 + 56) + 8 * v23);

              if (qword_1006A0B20 != -1)
              {
                swift_once();
              }

              v27 = type metadata accessor for Logger();
              sub_10000AF9C(v27, qword_1006BA5E0);
              v28 = Logger.logObject.getter();
              v29 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                *v30 = 0;
                _os_log_impl(&_mh_execute_header, v28, v29, "Acquired link, proceeding to decrypt cached LMI", v30, 2u);
              }

              dispatch thunk of DispatchWorkItem.cancel()();
              v31 = [v7 pseudonym];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              swift_beginAccess();
              sub_100384304(v32, v34);
              swift_endAccess();

              v35 = [v7 pseudonym];
              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v37;

              swift_beginAccess();
              sub_10038420C(v36, v38, v39, v40, v41, v42, v43, v44, v26, v45);
              swift_endAccess();

              sub_1003DA5D8(a2 + 48, v47);
              if (v48)
              {
                sub_100009AB0(v47, v46);
                sub_1000099A4(v47, &qword_1006A67C0, &qword_100581B88);
                sub_100009B14(v46, v46[3]);
                sub_1003685F0(a2, v17);

                sub_100009B7C(v46);
              }

              else
              {

                sub_1000099A4(v47, &qword_1006A67C0, &qword_100581B88);
              }
            }

            else
            {
            }

            i = v45;
            goto LABEL_23;
          }
        }
      }

LABEL_23:
      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_1003DA490()
{

  swift_unknownObjectRelease();
  sub_1000099A4(v0 + 48, &qword_1006A67C0, &qword_100581B88);
  return v0;
}

uint64_t sub_1003DA4E0()
{
  sub_1003DA490();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1003DA538(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003DA578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DA5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A67C0, &qword_100581B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1003DA670()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  NSArray.makeIterator()();
  sub_10000F0C0(&qword_1006A3ED0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v11)
    {
      break;
    }

    sub_10003EBF0(&v10, v9);
    sub_100006A94(v9, v7);
    sub_100006AF0(0, &qword_1006A21E8, off_100616670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
    }

    sub_100009B7C(v9);
    if (v8)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v12;
    }
  }

  (*(v6 + 8))(v2, v0);
  return v3;
}

unint64_t sub_1003DA878(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1003DA888@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DA878(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003DA8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003DDAD8();
  v5 = sub_10036BCAC();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1003DA90C(char a1)
{
  result = 0xD00000000000003BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002FLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000029;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1003DA9AC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1003DD63C([objc_allocWithZone(TUVouchingEnablementImpl) init], a1, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_1003DAA64(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v144 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v142 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = *(a2 + OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_vouchingEnablement);
  _Block_copy(a3);
  if (![v14 isEnabled])
  {
    (*(a3 + 16))(a3, a1);
LABEL_66:

    _Block_release(a3);
    return;
  }

  v131 = v10;
  v132 = v9;
  v15 = sub_1003DD498(a1, &selRef_clientContextData);
  v17 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (v16 >> 60 == 15)
  {
LABEL_62:
    if (qword_1006A0B08 != -1)
    {
LABEL_72:
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_10000AF9C(v101, qword_1006BA598);
    v102 = a1;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = *(v17 + 464);
      *(v105 + 4) = v102;
      *v106 = v102;
      v107 = v102;
      _os_log_impl(&_mh_execute_header, v103, v104, "Unable to identify context from participant update %@.", v105, 0xCu);
      sub_1000099A4(v106, &unk_1006A2630, &qword_10057CB40);
    }

    (*(a3 + 16))(a3, v102);
    goto LABEL_66;
  }

  v136 = v6;
  v130 = v13;
  v18 = v15;
  v19 = v16;
  v20 = objc_allocWithZone(CSDMessagingConversationParticipantDidJoinContext);
  sub_100290AC4(v18, v19);
  v128 = v18;
  v129 = v19;
  v21 = sub_100290A00(v18, v19);
  if (!v21)
  {
LABEL_61:
    sub_100290B6C(v128, v129);
    goto LABEL_62;
  }

  v22 = v21;
  if ((sub_1003DBAA0() & 1) == 0)
  {

    goto LABEL_61;
  }

  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v123 = a3;
  v23 = type metadata accessor for Logger();
  v24 = sub_10000AF9C(v23, qword_1006BA598);
  v25 = v22;
  v134 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v127 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v25;
    *v30 = v22;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting sanitization of %@.", v29, 0xCu);
    sub_1000099A4(v30, &unk_1006A2630, &qword_10057CB40);
    a1 = v127;
  }

  v124 = dispatch_group_create();
  v122 = v25;
  v32 = sub_1003DBCA0();
  v33 = sub_10000B6F4(v32);
  if (!v33)
  {
LABEL_69:
    v145 = *(a2 + OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_completionQueue);
    v108 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v109 = swift_allocObject();
    v110 = v122;
    v109[2] = v108;
    v109[3] = v110;
    v111 = v130;
    v109[4] = sub_1000174A8;
    v109[5] = v111;
    v109[6] = a1;
    v109[7] = v32;
    v151 = sub_1003DD4F8;
    v152 = v109;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_100004CEC;
    v150 = &unk_10062DB78;
    v112 = _Block_copy(&aBlock);
    v113 = v110;

    v114 = a1;
    v115 = v140;
    static DispatchQoS.unspecified.getter();
    v146 = _swiftEmptyArrayStorage;
    sub_10000F0C0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v116 = v142;
    v117 = v132;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v118 = v124;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v112);

    sub_100290B6C(v128, v129);
    (*(v131 + 8))(v116, v117);
    (*(v141 + 8))(v115, v143);

    _Block_release(v123);
    return;
  }

  v35 = v33;
  a3 = 0;
  v120 = OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_voucherManager;
  v145 = v32 & 0xC000000000000001;
  v135 = v32 & 0xFFFFFFFFFFFFFF8;
  v126 = (v7 + 8);
  v119 = &v149;
  *&v34 = 136315138;
  v125 = v34;
  v133 = a2;
  v137 = v33;
  v138 = v32;
  while (1)
  {
    if (v145)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a3 >= *(v135 + 16))
      {
        goto LABEL_71;
      }

      v36 = *(v32 + 8 * a3 + 32);
    }

    v37 = v36;
    v17 = (a3 + 1);
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v38 = [v36 associationVoucher];
    if (!v38 || (v39 = v38, v40 = [v38 tuVoucher], v39, !v40))
    {
      [v37 setAssociationVoucher:0];
      if ([v37 validationSource] == 2)
      {
        [v37 setValidationSource:0];
      }

      goto LABEL_49;
    }

    v41 = [v40 data];
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = objc_allocWithZone(CSDMessagingMemberAssociationClaim);
    v46 = sub_100290A00(v42, v44);
    if (!v46)
    {
      break;
    }

    v139 = v46;
    v47 = sub_1003DD508(v46);
    v49 = v48;
    v50 = [a1 groupUUID];
    v51 = v144;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = UUID.uuidString.getter();
    v54 = v53;
    (*v126)(v51, v136);
    if (!v49)
    {

LABEL_33:
      v60 = v37;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock = v71;
        *v70 = v125;
        v72 = [v60 handle];
        if (!v72)
        {
          goto LABEL_76;
        }

        v73 = sub_1003DD56C(v72);
        if (!v74)
        {
          goto LABEL_75;
        }

        v75 = v73;
        v76 = v74;

        v77 = sub_10002741C(v75, v76, &aBlock);

        *(v70 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v68, v69, "Dropping association voucher for member %s that makes claim for different conversation.", v70, 0xCu);
        sub_100009B7C(v71);

        a1 = v127;
      }

      else
      {
      }

      a2 = v133;
      [v60 setAssociationVoucher:0];
      v89 = [v60 validationSource];
      v35 = v137;
      v32 = v138;
      if (v89 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v47 == v52 && v49 == v54)
    {
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v78 = [v37 tuConversationMember];
    a2 = v133;
    if (!v78)
    {
      goto LABEL_52;
    }

    v79 = v78;
    v80 = [v40 handle];
    v81 = [v79 handle];
    v82 = [v80 isEqualToHandle:v81];

    if (!v82)
    {

LABEL_52:
      v60 = v37;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock = v93;
        *v92 = v125;
        v94 = [v60 handle];
        if (!v94)
        {
          goto LABEL_78;
        }

        v95 = sub_1003DD56C(v94);
        if (!v96)
        {
          goto LABEL_77;
        }

        v97 = v95;
        v98 = v96;

        v99 = sub_10002741C(v97, v98, &aBlock);

        *(v92 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "Dropping association voucher for member %s because the voucher is for a different handle.", v92, 0xCu);
        sub_100009B7C(v93);

        a1 = v127;
        a2 = v133;
      }

      else
      {
      }

      v35 = v137;
      [v60 setAssociationVoucher:0];
      v100 = [v60 validationSource];
      v32 = v138;
      if (v100 != 2)
      {
LABEL_48:

        v37 = v139;
        goto LABEL_49;
      }

LABEL_47:
      [v60 setValidationSource:0];
      goto LABEL_48;
    }

    v83 = v124;
    dispatch_group_enter(v124);
    v121 = *(a2 + v120);
    v84 = swift_allocObject();
    v84[2] = v79;
    v84[3] = v37;
    v84[4] = v83;
    v151 = sub_1003DD5DC;
    v152 = v84;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_1003541FC;
    v150 = &unk_10062DBC8;
    v85 = _Block_copy(&aBlock);
    v86 = v37;
    v37 = v79;
    v87 = v83;

    [v121 verify:v40 completion:v85];
    _Block_release(v85);

    a1 = v127;
    v35 = v137;
    v32 = v138;
LABEL_49:

    ++a3;
    if (v17 == v35)
    {
      goto LABEL_69;
    }
  }

  v57 = v37;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v58, v59))
  {

    goto LABEL_42;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  aBlock = v61;
  *v60 = v125;
  v62 = [v57 handle];
  if (!v62)
  {
    goto LABEL_74;
  }

  v63 = sub_1003DD56C(v62);
  if (v64)
  {
    v65 = v63;
    v66 = v64;

    v67 = sub_10002741C(v65, v66, &aBlock);

    *(v60 + 1) = v67;
    _os_log_impl(&_mh_execute_header, v58, v59, "Dropping association voucher for member %s that does not have an association claim as its payload.", v60, 0xCu);
    sub_100009B7C(v61);

    a1 = v127;
    a2 = v133;
LABEL_42:
    [v57 setAssociationVoucher:0];
    v88 = [v57 validationSource];
    v35 = v137;
    v32 = v138;
    if (v88 == 2)
    {
      [v57 setValidationSource:0];
    }

    v37 = v40;
    goto LABEL_49;
  }

  _Block_release(v123);

  __break(1u);
LABEL_74:
  _Block_release(v123);

  __break(1u);
LABEL_75:
  _Block_release(v123);

  __break(1u);
LABEL_76:
  _Block_release(v123);

  __break(1u);
LABEL_77:
  _Block_release(v123);

  __break(1u);
LABEL_78:
  _Block_release(v123);

  __break(1u);
}