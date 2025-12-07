id sub_1002433B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = type metadata accessor for Logger();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v14 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v3[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v3[OBJC_IVAR____TtC10seserviced10UWBSession_session] prefetchAcwgUrsk:a1];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v16 = v26;
  (*(v5 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v26);
  v17 = v3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    v27 = v3[v14];
    v22 = String.init<A>(describing:)();
    v24 = sub_1002FFA0C(v22, v23, &v28);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "UWB session is in %s, cannot prefetch URSK, disconnecting peer", v20, 0xCu);
    sub_1000752F4(v21);
  }

  (*(v5 + 8))(v7, v16);
  sub_100079E24();
  swift_allocError();
  *v25 = 0;
  return swift_willThrow();
}

void sub_10024374C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 1)
  {
    v18 = [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) acwgEventNotifier];
    [v18 notifyLockStatusChanged:(a1 | (v3 << 8))];

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  (*(v6 + 16))(v8, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Session is invalidated, not notifying lock status change", v17, 2u);
  }

  (*(v6 + 8))(v8, v5);
}

void sub_100243A54(uint64_t a1, Swift::UInt a2)
{
  v44 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    v9 = enum case for DispatchPredicate.onQueue(_:);
    v10 = *(v5 + 104);
    v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v43 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    v12 = *(v5 + 8);
    v5 += 8;
    v11 = v12;
    v12(v7, v4);
    if ((v8 & 1) == 0)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Not running", v28, 2u);
        goto LABEL_29;
      }

LABEL_30:

      return;
    }

    v42 = a2;
    v14 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
    if (!v14)
    {
      break;
    }

    v15 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    if (!sub_1000C6AD0(v42, *(v2 + v15)))
    {
      break;
    }

    v16 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
    swift_beginAccess();
    v41 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v2 + v16);
    *(v2 + v16) = 0x8000000000000000;
    v18 = v2;
    sub_100315054(v44, v42, isUniquelyReferenced_nonNull_native);
    v2 = v46;
    *(v18 + v16) = v46;
    swift_endAccess();
    v19 = 0;
    a2 = 0;
    v20 = 1 << *(v2 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v2 + 64);
    for (i = (v20 + 63) >> 6; v22; a2 |= *(*(v2 + 56) + ((v24 << 9) | (8 * v25))))
    {
      v24 = v19;
LABEL_14:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= i)
      {
        v34 = v43;
        *v7 = v43;
        v10(v7, v9, v4);
        v35 = v34;
        LOBYTE(v34) = _dispatchPreconditionTest(_:)();
        v11(v7, v4);
        if ((v34 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (a2)
        {
          if ((a2 & 2) != 0)
          {
            v36 = 6;
          }

          else
          {
            v36 = 2;
          }
        }

        else
        {
          if ((a2 & 2) == 0)
          {
            v36 = 0;
            if ((a2 & 4) == 0)
            {
              goto LABEL_37;
            }

LABEL_36:
            v36 = v36 | 1;
LABEL_37:
            v38 = v41;
            v39 = [*&v41[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] systemEventNotifier];
            [v39 notifyPassiveAccessIntent:v36];

            return;
          }

          v36 = 4;
        }

        if ((a2 & 4) != 0)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v22 = *(v2 + 64 + 8 * v24);
      ++v19;
      if (v22)
      {
        v19 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v26 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v26, v29))
  {
    goto LABEL_30;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v45[0] = v31;
  *v30 = 136315138;
  v13 = v42;
  if (!v42)
  {
    v32 = 0xE600000000000000;
    v33 = 0x616873696C41;
    goto LABEL_28;
  }

  if (v42 == 1)
  {
    v32 = 0xE400000000000000;
    v33 = 1852799308;
LABEL_28:
    v37 = sub_1002FFA0C(v33, v32, v45);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v29, "UWB is not powered on for %s", v30, 0xCu);
    sub_1000752F4(v31);

LABEL_29:

    goto LABEL_30;
  }

LABEL_42:
  v46 = v13;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_100243F4C()
{
  type metadata accessor for DSKUWB(0);
  swift_allocObject();
  result = sub_10024401C();
  qword_10051B5B0 = result;
  return result;
}

uint64_t sub_100243FB4(uint64_t a1, SEL *a2, unsigned __int8 *a3)
{
  v4 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
  result = swift_unknownObjectRelease();
  *a3 = v4;
  return result;
}

uint64_t sub_10024401C()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_delegates) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_10024CDF0;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CCC38;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002441B0()
{
  swift_beginAccess();

  sub_10023FAC0(v1);
  v3 = v2;

  v25 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v24 = v3;
  sub_100075D50(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x6553657669746361, 0xEE00736E6F697373, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v6 = sub_10023FE3C(v5);

  v7 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v25 = v7;
  *&v24 = v6;
  sub_100075D50(&v24, v23);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x7355657669746361, 0xEE00736573614365, v8);
  v9 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
  v25 = &type metadata for Bool;
  LOBYTE(v24) = v9;
  sub_100075D50(&v24, v23);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x616C696176417369, 0xEB00000000656C62, v10);
  v11 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
  v25 = &type metadata for Bool;
  LOBYTE(v24) = v11;
  sub_100075D50(&v24, v23);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x6E696E6E75527369, 0xE900000000000067, v12);
  swift_beginAccess();

  v14 = sub_10023FE3C(v13);

  v25 = v7;
  *&v24 = v14;
  sub_100075D50(&v24, v23);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000014, 0x8000000100468800, v15);
  if (qword_100501B80 != -1)
  {
    swift_once();
  }

  v25 = &type metadata for Bool;
  LOBYTE(v24) = byte_10051B5B9;
  sub_100075D50(&v24, v23);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000011, 0x8000000100468A70, v16);
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  v25 = &type metadata for Bool;
  LOBYTE(v24) = byte_10051B5B8;
  sub_100075D50(&v24, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000015, 0x8000000100468A90, v17);
  v18 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) != 0;
  v25 = &type metadata for Bool;
  LOBYTE(v24) = v18;
  sub_100075D50(&v24, v23);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000011, 0x8000000100468820, v19);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = sub_100015DA0("dskuwb.state", isa);

  return v21;
}

void sub_100244648()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning;
  v11 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
  v12 = Logger.logObject.getter();
  if (v11)
  {
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "DSKUWB is already running";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v16 = static os_log_type_t.info.getter();
  v1 = &unk_10051B000;
  if (os_log_type_enabled(v12, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    if (qword_100501B78 != -1)
    {
      v22 = v17;
      swift_once();
      v17 = v22;
    }

    *(v17 + 4) = byte_10051B5B8;
    *(v17 + 8) = 1024;
    if (qword_100501B80 != -1)
    {
      v22 = v17;
      swift_once();
      v17 = v22;
    }

    *(v17 + 10) = byte_10051B5B9;
    _os_log_impl(&_mh_execute_header, v12, v16, "Supports secure ranging %{BOOL}d deep sleep %{BOOL}d", v17, 0xEu);
  }

  if (qword_100501B78 != -1)
  {
    goto LABEL_23;
  }

LABEL_14:
  v18 = v1[1464];
  v12 = Logger.logObject.getter();
  if (v18 != 1)
  {
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "UWB does not support secure ranging";
      goto LABEL_20;
    }

LABEL_21:

    return;
  }

  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v12, v19, "Starting DSKUWB", v20, 2u);
  }

  *(v2 + v9) = 1;
}

void sub_100244A18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
    v10 = Logger.logObject.getter();
    if (v9 != 1)
    {
      break;
    }

    v38[0] = v8;
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping DSKUWB", v12, 2u);
    }

    v13 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v5 = *(v1 + v13);
    if ((v5 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v14, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v16 = v40;
      v15 = v41;
      v2 = v42;
      v17 = v43;
      v3 = v44;
    }

    else
    {
      v20 = -1 << *(v5 + 32);
      v15 = (v5 + 56);
      v2 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v3 = v22 & *(v5 + 56);
      swift_bridgeObjectRetain_n();
      v17 = 0;
      v16 = v5;
    }

    v38[1] = v2;
    v23 = (v2 + 64) >> 6;
    if (v16 < 0)
    {
      while (1)
      {
        v30 = __CocoaSet.Iterator.next()();
        if (!v30)
        {
          break;
        }

        v38[2] = v30;
        type metadata accessor for UWBSession();
        v28 = swift_dynamicCast();
        v2 = v39;
        v26 = v17;
        v27 = v3;
        if (!v39)
        {
          break;
        }

LABEL_24:
        sub_100246878(v28, v29);

        v17 = v26;
        v3 = v27;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_26:
      sub_100093854(v16);

      v2 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
      swift_beginAccess();
      v5 = *(v1 + v2);
      v31 = 1 << *(v5 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(v5 + 56);
      v3 = (v31 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v34 = 0;
      while (v33)
      {
        v35 = v34;
LABEL_34:
        v36 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v2 = v1;
        sub_100240A9C(*(*(v5 + 48) + ((v35 << 9) | (8 * v36))));
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v3)
        {

          v37 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
          swift_beginAccess();
          *(v1 + v37) = _swiftEmptyDictionarySingleton;

          *(v1 + v38[0]) = 0;
          return;
        }

        v33 = *(v5 + 56 + 8 * v35);
        ++v34;
        if (v33)
        {
          v34 = v35;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_16:
    v24 = v17;
    v25 = v3;
    v26 = v17;
    if (v3)
    {
LABEL_20:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      v2 = v28;
      if (v28)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_26;
      }

      v25 = *&v15[8 * v26];
      ++v24;
      if (v25)
      {
        goto LABEL_20;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v10, v18, "DSKUWB is not running", v19, 2u);
  }
}

void sub_100244F48()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    v7 = enum case for DispatchPredicate.onQueue(_:);
    v8 = *(v3 + 104);
    v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v32 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    v10 = *(v3 + 8);
    v3 += 8;
    v9 = v10;
    v10(v5, v2);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v31 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "UWB is powered on", v13, 2u);
    }

    *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 1;
    v14 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
    swift_beginAccess();
    v15 = 0;
    v16 = 0;
    v17 = *(v1 + v14);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    for (i = (v18 + 63) >> 6; v20; v16 |= *(*(v17 + 56) + ((v22 << 9) | (8 * v23))))
    {
      v22 = v15;
LABEL_13:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
    }

    while (1)
    {
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v22 >= i)
      {
        v24 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
        if (v24)
        {
          v25 = v32;
          *v5 = v32;
          v8(v5, v7, v2);
          v26 = v25;
          v27 = v24;
          LOBYTE(v25) = _dispatchPreconditionTest(_:)();
          v31(v5, v2);
          if ((v25 & 1) == 0)
          {
            goto LABEL_33;
          }

          if (v16)
          {
            if ((v16 & 2) != 0)
            {
              v28 = 6;
              if ((v16 & 4) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            v28 = 2;
            if ((v16 & 4) != 0)
            {
LABEL_27:
              v28 = v28 | 1;
            }
          }

          else
          {
            if ((v16 & 2) == 0)
            {
              v28 = 0;
              if ((v16 & 4) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            v28 = 4;
            if ((v16 & 4) != 0)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          v29 = [*&v27[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] systemEventNotifier];
          [v29 notifyPassiveAccessIntent:v28];
        }

        sub_1003375E0(0xD000000000000037, 0x8000000100468BC0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
        return;
      }

      v20 = *(v17 + 64 + 8 * v22);
      ++v15;
      if (v20)
      {
        v15 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1002452F0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
LABEL_25:
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
    {
      v9 = OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable;
      if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) != 1 || a1 != 0)
      {
        v11 = v1;
        v12 = Logger.logObject.getter();
        v6 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v6))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v30[0] = v14;
          *v13 = 136315138;
          v15 = sub_1002482E8(a1);
          v17 = sub_1002FFA0C(v15, v16, v30);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v12, v6, "UWB state updated with suspension reasons [%s]", v13, 0xCu);
          sub_1000752F4(v14);
        }

        *(v11 + v9) = a1 == 0;
        v1 = OBJC_IVAR____TtC10seserviced6DSKUWB_delegates;
        swift_beginAccess();
        v3 = *(v1 + v11);
        v4 = v3 + 64;
        v18 = 1 << *(v3 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v3 + 64);
        v21 = (v18 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v22 = 0;
        if (v20)
        {
          while (1)
          {
            v23 = v22;
LABEL_18:
            v24 = __clz(__rbit64(v20));
            v20 &= v20 - 1;
            sub_1000BC094(*(v3 + 56) + 40 * (v24 | (v23 << 6)), v30);
            v6 = v31;
            v25 = v32;
            v1 = sub_1000752B0(v30, v31);
            (*(v25 + 16))(a1, v6, v25);
            sub_1000752F4(v30);
            if (!v20)
            {
              goto LABEL_14;
            }
          }
        }

        while (1)
        {
LABEL_14:
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v23 >= v21)
          {
            break;
          }

          v20 = *(v4 + 8 * v23);
          ++v22;
          if (v20)
          {
            v22 = v23;
            goto LABEL_18;
          }
        }

        if (a1)
        {
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1004098F0;
          *(inited + 32) = 0xD000000000000018;
          v27 = inited + 32;
          *(inited + 72) = &type metadata for UInt;
          *(inited + 40) = 0x8000000100468BA0;
          *(inited + 48) = a1;
          v28 = sub_10008FFDC(inited);
          swift_setDeallocating();
          sub_10024D88C(v27);
          sub_1003375E0(0xD000000000000038, 0x8000000100468B60, 0, 0xF000000000000000, 0, 0xF000000000000000, v28);
        }

        else
        {
          sub_1003375E0(0xD000000000000037, 0x8000000100468BC0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100245734(char a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v9 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v9 = 136315394;
      if (a1)
      {
        v14 = 0x6465646565637865;
      }

      else
      {
        v14 = 0x6563786520746F6ELL;
      }

      if (a1)
      {
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xEC00000064656465;
      }

      v16 = sub_1002FFA0C(v14, v15, v27);

      *(v9 + 4) = v16;
      *(v9 + 6) = 2080;
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_32;
        }

        v17 = 0xE400000000000000;
        v18 = 1852799308;
      }

      else
      {
        v17 = 0xE600000000000000;
        v18 = 0x616873696C41;
      }

      v19 = sub_1002FFA0C(v18, v17, v27);

      *(v9 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Ranging limit %s for %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    if (a1)
    {
      sub_1000D558C(v30, a2);
    }

    else
    {
      sub_10010D998(a2);
    }

    swift_endAccess();
    v6 = OBJC_IVAR____TtC10seserviced6DSKUWB_delegates;
    swift_beginAccess();
    v3 = *(v3 + v6);
    v20 = 1 << *(v3 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v3 + 64);
    v7 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v23 = 0;
    while (v22)
    {
      v24 = v23;
LABEL_26:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_1000BC094(*(v3 + 56) + 40 * (v25 | (v24 << 6)), v27);
      a2 = v28;
      v9 = v29;
      v6 = sub_1000752B0(v27, v28);
      (*(v9 + 1))(a1 & 1, a2, v9);
      sub_1000752F4(v27);
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v7)
      {
      }

      v22 = *(v3 + 64 + 8 * v24);
      ++v23;
      if (v22)
      {
        v23 = v24;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  __break(1u);
LABEL_32:
  v30[0] = a2;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100245B84(unsigned __int16 a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = OBJC_IVAR____TtC10seserviced10UWBSession_configuration;
  v15 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    return;
  }

  v12 = v16;
  v9 = v15;
  if ([v12 protocolVersion] == a1)
  {
    v23 = v2;
    if (qword_100501B70 == -1)
    {
LABEL_7:
      (*(v6 + 16))(v8, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v5);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 33554688;
        *(v19 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v17, v18, "Setting new protocol version %hu", v19, 6u);
      }

      (*(v6 + 8))(v8, v5);
      [v12 setProtocolVersion:a1];
      v20 = *(v23 + v3);
      *(v23 + v3) = v12;
      v21 = v9;

      sub_100246268(1);
      goto LABEL_10;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

LABEL_10:
}

uint64_t sub_100245EC8@<X0>(unint64_t *a2@<X8>)
{
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001004634B0;

  v4 = UUID.uuidString.getter();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 64) = 1701869940;
  *(inited + 72) = 0xE400000000000000;
  type metadata accessor for UWBAlishaSession();
  v7 = swift_dynamicCastClass();
  v8 = 1852799308;
  if (v7)
  {
    v8 = 0x616873696C41;
  }

  v9 = 0xE600000000000000;
  if (!v7)
  {
    v9 = 0xE400000000000000;
  }

  *(inited + 80) = v8;
  *(inited + 88) = v9;
  *(inited + 96) = 0x6574617473;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = String.init<A>(describing:)();
  *(inited + 120) = v10;
  v11 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  result = swift_arrayDestroy();
  *a2 = v11;
  return result;
}

uint64_t sub_10024605C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced6DSKUWB_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKUWB(uint64_t a1)
{
  result = qword_100507928;
  if (!qword_100507928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002461AC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100246268(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
    if (v10 == 6)
    {
      *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 5;
    }

    else
    {
      if (a1)
      {
        return [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) runWithConfiguration:*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration)];
      }

      if (v10 <= 3 && v10 != 1)
      {
        return [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) runWithConfiguration:*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration)];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002463FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  v9 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
  if ((v9 - 3) >= 2)
  {
    if (v9 != 5)
    {
      return result;
    }

    v10 = 6;
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_session) pause];
    v10 = 2;
  }

  *(v0 + v8) = v10;
  return result;
}

id sub_100246580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processBluetoothHostTimeSyncWithType:a1 btcClockTicks:a2 eventCounter:v21];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v7 + 16))(v9, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Session is not running", v19, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_100246878(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchPredicate();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v12 = v7 + 104;
  v11 = *(v7 + 104);
  v42 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v43;
  v41 = v11;
  v11(v9);
  v40 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v15 = v17;
  v17(v9, v13);
  if (v14)
  {
    v39 = v12;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v18 = *(v4 + 16);
  v38 = qword_10051B5B0;
  v18(v6, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v19 = v4;
  v20 = v2;
  v21 = v6;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = v3;
    v25 = v24;
    v34 = swift_slowAlloc();
    v44[0] = v34;
    *v25 = 136315138;
    v35 = v21;

    v26 = UUID.uuidString.getter();
    v37 = v16;
    v28 = v27;

    v29 = sub_1002FFA0C(v26, v28, v44);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalidating session for %s", v25, 0xCu);
    sub_1000752F4(v34);

    (*(v19 + 8))(v35, v36);
  }

  else
  {

    (*(v19 + 8))(v21, v3);
  }

  [*&v20[OBJC_IVAR____TtC10seserviced10UWBSession_session] invalidate];
  v20[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 1;
  *v9 = v40;
  v30 = v43;
  v41(v9, v42, v43);
  v31 = _dispatchPreconditionTest(_:)();
  v15(v9, v30);
  if (v31)
  {
    swift_beginAccess();
    v32 = sub_10010D550(v20);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

id sub_100246CF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UWBSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100246DB8(uint64_t a1, unsigned __int16 a2, void *a3)
{
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v39 = a3;
    sub_1000BC094(a3, &v40[OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate]);
    v38 = a1;
    UUID.uuidString.getter();
    v17 = objc_allocWithZone(NICarKeyConfiguration);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithVehicleIdentifier:v18];

    [v19 setProtocolVersion:a2];
    LOBYTE(v41) = 0;
    v43 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    UserDefaultBacked.wrappedValue.getter();
    v20 = *(v7 + 8);
    v20(v9, v6);
    v21 = v41;
    LOBYTE(v41) = 0;
    v43 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    UserDefaultBacked.wrappedValue.getter();
    v20(v9, v6);
    v22 = v41;
    if ((v21 & 1) != 0 || v41)
    {
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      v41 = 0xD000000000000017;
      v42 = 0x8000000100468C50;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = v21;
      v41 = 0xD000000000000010;
      v42 = 0x8000000100468C70;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = v22;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 setDebugOptions:isa];
    }

    v25 = v39;
    v27 = v39[3];
    v26 = v39[4];
    v28 = sub_1000752B0(v39, v27);
    v37[2] = v37;
    v29 = *(v27 - 8);
    v30 = *(v29 + 64);
    v31 = __chkstk_darwin(v28);
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    v33 = *(v29 + 16);
    v34 = v33(v37 - v32, v31);
    v37[1] = v37;
    v35 = __chkstk_darwin(v34);
    (v33)(v37 - v32, v37 - v32, v27, v35);
    v36 = sub_10024BE94(v19, v38, v37 - v32, v40, v27, *(v26 + 8));

    (*(v29 + 8))(v37 - v32, v27);
    sub_1000752F4(v25);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002473F0(uint64_t a1, uint64_t *a2)
{
  v72 = a1;
  v4 = type metadata accessor for UUID();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v59 - v7;
  v75 = type metadata accessor for Logger();
  v8 = *(v75 - 8);
  __chkstk_darwin(v75);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v68 = v4;
    v65 = a2;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v66 = v2;
  v19 = *(v8 + 16);
  v62 = v8 + 16;
  v63 = qword_10051B5B0;
  v60 = OBJC_IVAR____TtC10seserviced6DSKUWB_logger;
  v61 = v19;
  v20 = v75;
  v19(v12, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v75);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v64 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v74[0] = v25;
    *v24 = 136315138;
    v26 = UUID.uuidString.getter();
    v28 = sub_1002FFA0C(v26, v27, v74);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Replacing existing peer with %s", v24, 0xCu);
    sub_1000752F4(v25);

    v29 = *(v8 + 8);
    v30 = v12;
    v31 = v75;
  }

  else
  {

    v29 = *(v8 + 8);
    v30 = v12;
    v31 = v20;
  }

  v59 = v29;
  v29(v30, v31);
  v32 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
  v33 = *(v73 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
  v34 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v35 = v71;
  v36 = *(v71 + 16);
  v38 = v68;
  v37 = v69;
  v36(v69, v33 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v68);
  v39 = v70;
  v36(v70, v33 + v34, v38);
  LOBYTE(v33) = static UUID.== infix(_:_:)();
  v40 = *(v35 + 8);
  v40(v39, v38);
  v40(v37, v38);
  if (v33)
  {
    v41 = v73;
    *(v73 + v32) = v72;

    v42 = v65;
    v43 = v65[3];
    v44 = v65[4];
    v45 = sub_1000752B0(v65, v43);
    v46 = __chkstk_darwin(v45);
    v48 = &v59 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48, v46);
    v50 = *(v44 + 8);

    sub_10024B4C4(v48, v41, v43, v50);
    v51 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
    swift_beginAccess();
    sub_10024D934((v41 + v51), v42);
    return swift_endAccess();
  }

  else
  {
    v53 = v67;
    v54 = v75;
    v61(v67, v63 + v60, v75);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Wrong peer", v57, 2u);
    }

    v59(v53, v54);
    sub_10024CEA4();
    swift_allocError();
    *v58 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100247AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return a4(a1, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100247C20(uint64_t a1, void *a2, void *a3)
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

  sub_10006A2D0(v4, v8);
}

void sub_100247CCC(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    v14 = [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) carKeyEventNotifier];
    v15 = v14;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        [v14 notifyRangingIntentSentToVehicleWithReason:2];
        goto LABEL_24;
      }

      if (a1 != 1)
      {
        [v14 notifyVehicleSentRangingSuspendedSubEvent];
        goto LABEL_24;
      }

      v19 = "notifyRangingIntentSentToVehicleWithReason:";
    }

    else if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v19 = "notifyVehicleReadyToDriveWithReason:";
        v20 = 0;
        goto LABEL_23;
      }

      v19 = "notifyVehicleUnlockedWithReason:";
    }

    else
    {
      if (a1 == 3)
      {
        [v14 notifyVehicleTerminatedRangingSession];
LABEL_24:

        return;
      }

      v19 = "notifyVehicleLockedWithReason:";
    }

    v20 = 1;
LABEL_23:
    [v14 v19];
    goto LABEL_24;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  (*(v5 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session is not running", v18, 2u);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002482E8(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10012EA44(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10012EA44((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000015;
  *(v5 + 5) = 0x8000000100468B40;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10012EA44((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000012;
    *(v8 + 5) = 0x8000000100468B20;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_10012EA44((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001CLL;
    *(v11 + 5) = 0x8000000100468B00;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10012EA44((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD000000000000014;
  *(v14 + 5) = 0x8000000100468AE0;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_10012EA44((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "errorHandling");
  *(v17 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_10012EA44((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, "systemNotReady");
  v20[47] = -18;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_10012EA44((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001CLL;
  *(v23 + 5) = 0x8000000100468AC0;
  if (a1 < 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_10012EA44((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 2) = v25 + 1;
    v26 = &v2[16 * v25];
    *(v26 + 4) = 0x6E776F6E6B6E75;
    *(v26 + 5) = 0xE700000000000000;
  }

LABEL_49:
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t sub_1002487A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10024BE5C(a1);

  *a2 = v3;
  return result;
}

void sub_100248B18(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_10024E8F0(a4, a5, a6);
}

unint64_t sub_1002491B0()
{
  result = qword_100507C78;
  if (!qword_100507C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C78);
  }

  return result;
}

unint64_t sub_100249208()
{
  result = qword_100507C80;
  if (!qword_100507C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C80);
  }

  return result;
}

unint64_t sub_100249260()
{
  result = qword_100507C88;
  if (!qword_100507C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C88);
  }

  return result;
}

unint64_t sub_1002492B8()
{
  result = qword_100507C90;
  if (!qword_100507C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C90);
  }

  return result;
}

unint64_t sub_100249310()
{
  result = qword_100507C98;
  if (!qword_100507C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C98);
  }

  return result;
}

unint64_t sub_100249368()
{
  result = qword_100507CA0;
  if (!qword_100507CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CA0);
  }

  return result;
}

unint64_t sub_1002493C0()
{
  result = qword_100507CA8;
  if (!qword_100507CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CA8);
  }

  return result;
}

unint64_t sub_100249418()
{
  result = qword_100507CB0;
  if (!qword_100507CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CB0);
  }

  return result;
}

unint64_t sub_100249470()
{
  result = qword_100507CB8;
  if (!qword_100507CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CB8);
  }

  return result;
}

Swift::Int sub_1002494C4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1002498B0(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if (*(*&v12[OBJC_IVAR____TtC10seserviced10UWBSession_peer] + OBJC_IVAR____TtC10seserviced4Peer_type) == 3)
      {
        v1 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v1)
        {
          sub_1001095DC(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v3 = &_swiftEmptySetSingleton + 56;
        v4 = -1 << *(&_swiftEmptySetSingleton + 32);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7)) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7))) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = *&v3[8 * v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *&v3[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v7) = v12;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1002496BC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100249AEC(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if (*(*&v12[OBJC_IVAR____TtC10seserviced10UWBSession_peer] + OBJC_IVAR____TtC10seserviced4Peer_type))
      {
      }

      else
      {
        v1 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v1)
        {
          sub_1001095DC(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v3 = &_swiftEmptySetSingleton + 56;
        v4 = -1 << *(&_swiftEmptySetSingleton + 32);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7)) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7))) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = *&v3[8 * v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *&v3[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v7) = v12;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1002498B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v22 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
    v13 = OBJC_IVAR____TtC10seserviced4Peer_type;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v7 << 6);
LABEL_12:
      if (*(*(*(*(v1 + 48) + 8 * v15) + v12) + v13) == 3)
      {
        *&v5[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
      }

      v17 = *(v1 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v10 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_100249F24(v20, v3, v1);

  return v21;
}

Swift::Int sub_100249AEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v22 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
    v13 = OBJC_IVAR____TtC10seserviced4Peer_type;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v7 << 6);
LABEL_12:
      if (!*(*(*(*(v1 + 48) + 8 * v15) + v12) + v13))
      {
        *&v5[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
      }

      v17 = *(v1 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v10 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_10024A25C(v20, v3, v1);

  return v21;
}

char *sub_100249D24(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v20 = a2;
    v6 = 1 << *(a3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a3 + 56);
    v9 = (v6 + 63) >> 6;
    result = swift_retain_n();
    v21 = 0;
    v10 = 0;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v14 = v11 | (v10 << 6);
      v15 = *(*(a3 + 48) + 8 * v14);

      v16 = v15;

      v17 = static UUID.== infix(_:_:)();

      if (v17)
      {
        *(v5 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_18:

          v19 = sub_10024A668(v5, v20, v21, a3, &unk_100503E90, &qword_10040A9E0);

          return v19;
        }
      }
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 56 + 8 * v10);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100249F24(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_14:
      if (*(*(*(*(a3 + 48) + 8 * v12) + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_type) == 3)
      {
        *&result[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
      }

      v14 = *(a3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10024A070(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v20 = a2;
    v6 = 1 << *(a3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a3 + 56);
    v9 = (v6 + 63) >> 6;
    result = swift_retain_n();
    v21 = 0;
    v10 = 0;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v14 = v11 | (v10 << 6);
      v15 = *(*(a3 + 48) + 8 * v14);

      v16 = v15;

      v17 = static UUID.== infix(_:_:)();

      if (v17)
      {
        *(v5 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_18:

          v19 = sub_10024A668(v5, v20, v21, a3, &unk_100503E90, &qword_10040A9E0);

          return v19;
        }
      }
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 56 + 8 * v10);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10024A25C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_14:
      if (!*(*(*(*(a3 + 48) + 8 * v12) + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_type))
      {
        *&result[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
      }

      v14 = *(a3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10024A3A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10024C824(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_10024A434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100068FC4(&unk_100507CF0, &qword_10040B270);
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
  v26 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
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

Swift::Int sub_10024A668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_100068FC4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

Swift::Int sub_10024A854(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100068FC4(&unk_100503F40, &unk_1004101B0);
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*(v16 + 16));
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
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

Swift::Int sub_10024AA64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100068FC4(&unk_100507CE0, &unk_10040B260);
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
  v26 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
    v10 = v27;
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
      v27 = (v15 - 1) & v15;
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

uint64_t sub_10024ACE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10024B00C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = &_swiftEmptySetSingleton;
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100503E80, &unk_10040B250);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v26 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << v8[32];
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 6) + 8 * v19) = v15;
    ++*(v8 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
    v9 = v27;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v27 = (v14 - 1) & v14;
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

Swift::Int sub_10024B29C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    sub_100069E2C(v17, v18);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_10024B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  v7 = sub_1000B9634(&v10);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  v8 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
  swift_beginAccess();
  sub_1000752F4((a2 + v8));
  sub_1000BC104(&v10, a2 + v8);
  return swift_endAccess();
}

char *sub_10024B570(uint64_t a1, unsigned __int16 a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v32.receiver - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for LyonUWB(0);
  v35 = v12;
  v36 = &off_1004C6C48;
  v34[0] = a3;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v15)
  {
    sub_1000BC094(v34, &a4[OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate]);
    UUID.uuidString.getter();
    v17 = objc_allocWithZone(NIAcwgConfiguration);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithLockIdentifier:v18];

    [v19 setLockBtConnHandle:a2];
    v20 = sub_1000752B0(v34, v35);
    v21 = __chkstk_darwin(v20);
    v23 = (&v32.receiver - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v33[3] = v12;
    v33[4] = &off_1004C6C20;
    v33[0] = *v23;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons] = 0;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_configuration] = v19;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_peer] = a1;
    sub_1000BC094(v33, &a4[OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate]);
    a4[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 0;
    v25 = objc_allocWithZone(NISession);
    v26 = v19;

    v27 = [v25 init];
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_session] = v27;
    [v27 setDelegateQueue:v14];
    v28 = type metadata accessor for UWBSession();
    v32.receiver = a4;
    v32.super_class = v28;
    v29 = objc_msgSendSuper2(&v32, "init");
    v30 = *&v29[OBJC_IVAR____TtC10seserviced10UWBSession_session];
    v31 = v29;
    [v30 setDelegate:v31];
    sub_100246268(0);

    sub_1000752F4(v33);
    sub_1000752F4(v34);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_10024B93C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    swift_retain_n();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UWBSession();
      do
      {
        swift_dynamicCast();

        v4 = static UUID.== infix(_:_:)();

        if (v4)
        {
          v5 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v5)
          {
            sub_1001095DC(v5 + 1);
          }

          v3 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v7 = &_swiftEmptySetSingleton + 56;
          v8 = -1 << *(&_swiftEmptySetSingleton + 32);
          v9 = result & ~v8;
          v10 = v9 >> 6;
          if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
          {
            v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v12 = 0;
            v13 = (63 - v8) >> 6;
            do
            {
              if (++v10 == v13 && (v12 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v14 = v10 == v13;
              if (v10 == v13)
              {
                v10 = 0;
              }

              v12 |= v14;
              v15 = *&v7[8 * v10];
            }

            while (v15 == -1);
            v11 = __clz(__rbit64(~v15)) + (v10 << 6);
          }

          *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v17;
          ++*(&_swiftEmptySetSingleton + 2);
        }

        else
        {
        }
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {

    v3 = sub_10024C2FC(a1, a2);
  }

  return v3;
}

Swift::Int sub_10024BBC0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    swift_retain_n();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UWBSession();
      do
      {
        swift_dynamicCast();

        v4 = static UUID.== infix(_:_:)();

        if (v4)
        {
          v5 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v5)
          {
            sub_1001095DC(v5 + 1);
          }

          v3 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v7 = &_swiftEmptySetSingleton + 56;
          v8 = -1 << *(&_swiftEmptySetSingleton + 32);
          v9 = result & ~v8;
          v10 = v9 >> 6;
          if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
          {
            v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v12 = 0;
            v13 = (63 - v8) >> 6;
            do
            {
              if (++v10 == v13 && (v12 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v14 = v10 == v13;
              if (v10 == v13)
              {
                v10 = 0;
              }

              v12 |= v14;
              v15 = *&v7[8 * v10];
            }

            while (v15 == -1);
            v11 = __clz(__rbit64(~v15)) + (v10 << 6);
          }

          *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v17;
          ++*(&_swiftEmptySetSingleton + 2);
        }

        else
        {
        }
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {

    v3 = sub_10024C038(a1, a2);
  }

  return v3;
}

uint64_t sub_10024BE24(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10024BE5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

char *sub_10024BE94(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  v11 = sub_1000B9634(v22);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons] = 0;
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_configuration] = a1;
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_peer] = a2;
  sub_1000BC094(v22, &a4[OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate]);
  a4[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 0;
  v12 = objc_allocWithZone(NISession);
  v13 = a1;

  v14 = [v12 init];
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_session] = v14;
  v15 = qword_100501D90;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setDelegateQueue:qword_10051B7F0];

  v21.receiver = a4;
  v21.super_class = type metadata accessor for UWBSession();
  v17 = objc_msgSendSuper2(&v21, "init");
  v18 = *&v17[OBJC_IVAR____TtC10seserviced10UWBSession_session];
  v19 = v17;
  [v18 setDelegate:v19];
  sub_100246268(0);

  sub_1000752F4(v22);
  return v19;
}

Swift::Int sub_10024C038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v8;
    v28 = v3;
    v26[1] = v26;
    __chkstk_darwin(v10);
    v29 = v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v9);
    v30 = 0;
    v31 = v5;
    v8 = 0;
    v12 = *(v5 + 56);
    v5 += 56;
    v11 = v12;
    v13 = 1 << *(v5 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v9 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v3 = v16 | (v8 << 6);
      v19 = *(*(v31 + 48) + 8 * v3);

      v20 = v19;

      v21 = static UUID.== infix(_:_:)();

      if (v21)
      {
        *&v29[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_10024A668(v29, v27, v30, v31, &unk_100503E90, &qword_10040A9E0);
          goto LABEL_17;
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        goto LABEL_16;
      }

      v18 = *(v5 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v23 = sub_10024A070(v25, v8, v5, a2);

LABEL_17:

  return v23;
}

Swift::Int sub_10024C2FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v8;
    v28 = v3;
    v26 = &v26;
    __chkstk_darwin(v10);
    v29 = &v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v9);
    v30 = 0;
    v8 = 0;
    v32 = v5;
    v12 = *(v5 + 56);
    v5 += 56;
    v11 = v12;
    v13 = 1 << *(v5 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & v11;
    v31 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v15 = (v13 + 63) >> 6;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v9 = v16 | (v8 << 6);
      v19 = *(*(v32 + 48) + 8 * v9);

      v20 = v19;

      v21 = static UUID.== infix(_:_:)();

      if (v21)
      {
        *&v29[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_10024A668(v29, v27, v30, v32, &unk_100503E90, &qword_10040A9E0);
          goto LABEL_17;
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(v5 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v23 = sub_100249D24(v25, v8, v5, a2);

LABEL_17:

  return v23;
}

void *sub_10024C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = qword_100501D90;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      swift_beginAccess();

      v15 = a3(v14, a2);
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Not running", v18, 2u);
      }

      v15 = &_swiftEmptySetSingleton;
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10024C824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v20 = 0;
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
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = a4(v15);

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10024A668(a1, a2, v20, a3, &unk_100503E90, &qword_10040A9E0);
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
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_10024C984(uint64_t a1, uint64_t (*a2)(id))
{
  v26 = a2;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = v5;
    v23 = v2;
    v21[1] = v21;
    __chkstk_darwin(a1);
    v24 = v21 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v6);
    v25 = 0;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v5 = v9 & *(v3 + 56);
    v10 = (v8 + 63) >> 6;
    while (v5)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_12:
      v14 = v11 | (v7 << 6);
      v15 = *(*(v3 + 48) + 8 * v14);
      v16 = v26();

      if (v16)
      {
        *&v24[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_10024A668(v24, v22, v25, v3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_10024A668(v24, v22, v25, v3, &unk_100503E90, &qword_10040A9E0);
      }

      v13 = *(v3 + 56 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v5 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10024A3A4(v19, v5, v3, v26);

  return v20;
}

Swift::Int sub_10024CBFC(uint64_t a1, uint64_t (*a2)(id))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10024C984(a1, a2);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if ((a2)())
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_1001095DC(v3 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10024CDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10024CE0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10024CE54(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10024CEA4()
{
  result = qword_100507D08;
  if (!qword_100507D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D08);
  }

  return result;
}

uint64_t sub_10024CEF8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    result = (*(v4 + 8))(v6, v3);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      break;
    }

    v10 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v26 = *(a1 + v10);
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v11, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v12 = v30;
      v6 = v31;
      a1 = v32;
      v13 = v33;
      v3 = v34;
    }

    else
    {
      v17 = -1 << *(v26 + 32);
      v6 = (v26 + 56);
      a1 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v3 = v19 & *(v26 + 56);
      v12 = v26;
      swift_bridgeObjectRetain_n();
      v13 = 0;
    }

    v25[1] = a1;
    v20 = (a1 + 64) >> 6;
    while (1)
    {
      v4 = v13;
      if (v12 < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v28 = v24, type metadata accessor for UWBSession(), swift_dynamicCast(), (a1 = v29) == 0))
        {
LABEL_24:
          sub_100093854(v12);

          return 0;
        }

        goto LABEL_15;
      }

      v22 = v13;
      v23 = v3;
      if (!v3)
      {
        break;
      }

LABEL_14:
      v3 = (v23 - 1) & v23;
      a1 = *(*(v12 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!a1)
      {
        goto LABEL_24;
      }

LABEL_15:

      v21 = static UUID.== infix(_:_:)();

      if (v21)
      {
        sub_100093854(v12);

        return 1;
      }
    }

    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        goto LABEL_24;
      }

      v23 = v6[v13];
      ++v22;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
  }

  return 0;
}

uint64_t sub_10024D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502F08, &qword_10040A000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10024D390()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB is powered off", v11, 2u);
    }

    *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 0;
    v12 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    if (*(*(v1 + v12) + 16))
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v35 = v16;
        *v15 = 136315138;
        sub_10024D838();

        v17 = Set.description.getter();
        v19 = v18;

        v20 = sub_1002FFA0C(v17, v19, &v35);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Powering on UWB for %s", v15, 0xCu);
        sub_1000752F4(v16);
      }

      v21 = type metadata accessor for UWBPrewarmSession();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
      *v23 = sub_10024D828;
      v23[1] = v1;
      v24 = &v22[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate];
      *v24 = sub_10024D82C;
      v24[1] = v1;
      v25 = &v22[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate];
      *v25 = sub_10024D830;
      v25[1] = v1;
      v26 = &v22[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
      *v26 = sub_10024D834;
      v26[1] = v1;
      v27 = objc_allocWithZone(NISession);
      swift_retain_n();
      v28 = [v27 init];
      *&v22[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] = v28;
      [v28 setDelegateQueue:v7];
      v36.receiver = v22;
      v36.super_class = v21;
      v29 = objc_msgSendSuper2(&v36, "init");
      v30 = OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session;
      v31 = *&v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session];
      v32 = v29;
      [v31 setDelegate:v32];
      v33 = [objc_allocWithZone(NISystemConfiguration) init];
      [v33 setPrewarmUWB:1];
      [v33 setPrewarmSecureElementChannel:1];
      [*&v29[v30] runWithConfiguration:v33];

      v34 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
      *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) = v29;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10024D838()
{
  result = qword_100507D20;
  if (!qword_100507D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D20);
  }

  return result;
}

uint64_t sub_10024D88C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024D8F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10024D934(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10024DB50()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
  *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 4;
  if (v8 == 3)
  {
    v14 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v0 + v14, v20);
    v15 = v21;
    v16 = v22;
    sub_1000752B0(v20, v21);
    v17 = *(v16 + 24);

    v17(v18, v15, v16);
  }

  else
  {
    if (v8)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v0 + v9, v20);
    v10 = v21;
    v11 = v22;
    sub_1000752B0(v20, v21);
    v12 = *(v11 + 8);

    v12(v13, v10, v11);
  }

  return sub_1000752F4(v20);
}

uint64_t sub_10024DDAC(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if (v11)
  {
    v2[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 1;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  *v6 = v10;
  v9(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  result = (v12)(v6, v3);
  if (v13)
  {
    swift_beginAccess();
    v15 = sub_10010D550(v2);
    swift_endAccess();

    v16 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(&v2[v16], v23);
    v17 = v24;
    v18 = v25;
    sub_1000752B0(v23, v24);
    v19 = *&v2[OBJC_IVAR____TtC10seserviced10UWBSession_peer];
    v20 = *(v18 + 32);

    v20(v22, v19, v17, v18);

    return sub_1000752F4(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E058(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 2)
    {
      v10 = 6;
    }

    else
    {
      v10 = 5;
    }

    *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = v10;
    if (a1 > 6)
    {
      v11 = 0x8000000000000000;
    }

    else
    {
      v11 = qword_100410300[a1];
    }

    v12 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons);
    if ((v12 & v11) == 0)
    {
      v12 |= v11;
      *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = v12;
    }

    v13 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v1 + v13, v19);
    v14 = v20;
    v15 = v21;
    sub_1000752B0(v19, v20);
    v16 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v17 = *(v15 + 16);

    v17(v12, v16, v14, v15);

    return sub_1000752F4(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10024E280(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_10:
    sub_1002452F0(0);
    *(a2 + a1) = 3;
    return sub_100246268(0);
  }

  if (a2)
  {
    *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = 0;
    a1 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
    if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 6)
    {
      *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 2;
      return result;
    }

    a2 = v2;
    if (qword_100501B70 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (a1 > 6)
  {
    v12 = 0x8000000000000000;
  }

  else
  {
    v12 = qword_100410300[a1];
  }

  v13 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons);
  if ((v13 & v12) != 0)
  {
    v13 &= ~v12;
    *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = v13;
  }

  v14 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
  swift_beginAccess();
  sub_1000BC094(v2 + v14, v20);
  v15 = v21;
  v16 = v22;
  sub_1000752B0(v20, v21);
  v17 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
  v18 = *(v16 + 16);

  v18(v13, v17, v15, v16);

  return sub_1000752F4(v20);
}

uint64_t sub_10024E51C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v2 + v12, v17);
    v13 = v18;
    v14 = v19;
    sub_1000752B0(v17, v18);
    v15 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v16 = *(v14 + 16);

    v16(a1, a2, v15, v13, v14);

    return sub_1000752F4(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E700(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if ((a1 - 1) <= 3)
    {
      v10 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
      swift_beginAccess();
      sub_1000BC094(v1 + v10, v15);
      v11 = v16;
      v12 = v17;
      sub_1000752B0(v15, v16);
      v13 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
      v14 = *(v12 + 24);

      v14(0x3020001u >> (8 * (a1 - 1)), v13, v11, v12);

      return sub_1000752F4(v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E8F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_1000BC094(v3 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v16);
    sub_1000752B0(v16, v16[3]);
    v14 = *(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);

    a3(a1, a2, v14);

    return sub_1000752F4(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EAA0(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    sub_1000BC094(v1 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v12);
    sub_1000752B0(v12, v12[3]);

    a1(v10);

    return sub_1000752F4(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EC34()
{
  *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 4;
  sub_1000BC094(v0 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v3);
  sub_1000752B0(v3, v3[3]);

  sub_1000E2F70(v1);

  return sub_1000752F4(v3);
}

uint64_t sub_10024ECB4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    sub_1000BC094(v2 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v14);
    sub_1000752B0(v14, v14[3]);
    v12 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);

    a2(a1, v12);

    return sub_1000752F4(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EE5C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = [a1 uwbPreciseDistanceAvailability];
    if ((v10 & 8) != 0)
    {
      if (v10)
      {
        v11 = 34;
        if ((v10 & 2) == 0)
        {
LABEL_16:
          if ((v10 & 4) == 0 || (v11 & 0x10) != 0)
          {
            return (*(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate))(v11);
          }

LABEL_18:
          v11 |= 0x10uLL;
          return (*(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate))(v11);
        }
      }

      else
      {
        v11 = 32;
        if ((v10 & 2) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v10)
    {
      v11 = 2;
      if ((v10 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          return (*(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate))(v11);
        }

        goto LABEL_18;
      }
    }

    v11 |= 4uLL;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F014(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_10009393C(0, &qword_100507D38, NICarKeyConfiguration_ptr);
  v11 = swift_dynamicCastMetatype();
  v12 = 0;
  if (!v11)
  {
    sub_10009393C(0, &qword_100507D40, NIAcwgConfiguration_ptr);
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      return result;
    }

    v12 = 1;
  }

  return (*(v2 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate))(a1 & 1, v12);
}

unint64_t sub_10024F1F4()
{
  result = qword_100507D48;
  if (!qword_100507D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D48);
  }

  return result;
}

unint64_t sub_10024F24C()
{
  result = qword_100507D50;
  if (!qword_100507D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10024F438()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  sub_1000B6A94(v3, qword_10051B5C8);
  v4 = sub_1000958E4(v3, qword_10051B5C8);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F568()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  sub_1000B6A94(v3, qword_10051B5E0);
  v4 = sub_1000958E4(v3, qword_10051B5E0);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F698@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100250478(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10024F714(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_10024F744@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_10024F770@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_10024F854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_10024BE24(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10024F898()
{
  result = qword_100507DC0;
  if (!qword_100507DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DC0);
  }

  return result;
}

unint64_t sub_10024F8F0()
{
  result = qword_100507DC8;
  if (!qword_100507DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DC8);
  }

  return result;
}

unint64_t sub_10024F948()
{
  result = qword_100507DD0;
  if (!qword_100507DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DD0);
  }

  return result;
}

unint64_t sub_10024F9A0()
{
  result = qword_100507DD8;
  if (!qword_100507DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DD8);
  }

  return result;
}

uint64_t sub_10024F9F4(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0xD000000000000014;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6465767265736552;
      }

      goto LABEL_12;
    }

    return 0x7261506472696854;
  }

  else
  {
    if (!a1)
    {
      return 17747;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6163696669746F4ELL;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 4347733;
  }
}

uint64_t sub_10024FB58(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6 || a1 == 7)
      {
        return 0x6552656D75736572;
      }
    }

    else if (a1 == 4 || a1 == 5)
    {
      return 0x52646E6570737573;
    }

    goto LABEL_19;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x334D7075746573;
    }

    if (a1 == 3)
    {
      return 0x344D7075746573;
    }

LABEL_19:
    _StringGuts.grow(_:)(17);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x2064696C61766E69;
  }

  if (a1)
  {
    return 0x324D7075746573;
  }

  else
  {
    return 0x314D7075746573;
  }
}

uint64_t sub_10024FD20(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      return 0x746E657665;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      goto LABEL_14;
    }

    return 0x45676E69676E6172;
  }

  else if (a1 > 4u)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000019;
      }

      goto LABEL_14;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6575716552656B72;
      }

LABEL_14:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0xD000000000000023;
  }
}

uint64_t sub_10024FED4(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000021;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0xD000000000000017;
      }

      goto LABEL_12;
    }

    return 0xD00000000000001FLL;
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000016;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000020;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100250068(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 128)
    {
      if (a1 == 129)
      {
        return 0xD000000000000012;
      }

      goto LABEL_12;
    }

    return 0xD000000000000010;
  }

  else
  {
    if (!a1)
    {
      return 0x64657275636573;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x746375727473626FLL;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0x6572756365736E75;
  }
}

uint64_t sub_1002501E4(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      if (a1 == 4)
      {
        return 0xD000000000000014;
      }

      if (a1 == 5)
      {
        return 0xD000000000000011;
      }
    }

    goto LABEL_19;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1869903201;
    }

    if (a1 == 3)
    {
      return 0x656C756465686373;
    }

LABEL_19:
    _StringGuts.grow(_:)(17);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x2064696C61766E69;
  }

  if (a1)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

unint64_t sub_1002503CC()
{
  result = qword_100507DE0;
  if (!qword_100507DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DE0);
  }

  return result;
}

unint64_t sub_100250424()
{
  result = qword_100507DE8;
  if (!qword_100507DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DE8);
  }

  return result;
}

uint64_t sub_100250478(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100250494(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (qword_100501D28 != -1)
  {
LABEL_88:
    swift_once();
  }

  v11 = type metadata accessor for UUID();
  v12 = sub_1000958E4(v11, qword_10051B788);
  if (*(a1 + 16) && (v13 = sub_10008C808(v12), (v14 & 1) != 0))
  {
    v15 = (*(a1 + 56) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if ((v16 >> 62) <= 1)
    {
      if (!v18)
      {
        if (BYTE6(v16) < 3uLL)
        {
          goto LABEL_54;
        }

        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (v18 != 2)
    {
      goto LABEL_54;
    }

    v33 = *(v17 + 16);
    v23 = *(v17 + 24);
    v34 = v23 - v33;
    if (!__OFSUB__(v23, v33))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    if (qword_100501D20 != -1)
    {
      swift_once();
    }

    v19 = sub_1000958E4(v11, qword_10051B770);
    if (!*(a1 + 16) || (v20 = sub_10008C808(v19), (v21 & 1) == 0))
    {

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v117 = v27;
        *v26 = 136315138;
        sub_100254CFC(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = Dictionary.description.getter();
        v30 = sub_1002FFA0C(v28, v29, &v117);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to retrieve PSM %s", v26, 0xCu);
        sub_1000752F4(v27);
      }

      sub_100079E24();
      swift_allocError();
      *v31 = 0;
      return swift_willThrow();
    }

    v22 = (*(a1 + 56) + 16 * v20);
    v16 = *v22;
    v17 = v22[1];
    v23 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      if (!v23)
      {
        if (BYTE6(v17) == 2)
        {
LABEL_38:
          v38 = sub_100090214(v16, v17, 0, 0, 0);
          result = sub_10006A178(v16, v17);
          if (v2)
          {
            return result;
          }

          v39 = 0x1000000;
          return v39 | v38;
        }

LABEL_41:
        sub_100069E2C(v16, v17);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        sub_10006A178(v16, v17);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v117 = v43;
          *v42 = 136315138;
          v121 = sub_100288788(v16, v17);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v44 = BidirectionalCollection<>.joined(separator:)();
          v46 = v45;

          v47 = sub_1002FFA0C(v44, v46, &v117);

          *(v42 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v40, v41, "Incorrect PSM characteristic %s", v42, 0xCu);
          sub_1000752F4(v43);
        }

        sub_100079E24();
        swift_allocError();
        *v48 = 0;
        swift_willThrow();
        v49 = v16;
        v50 = v17;
        return sub_10006A178(v49, v50);
      }

      if (__OFSUB__(HIDWORD(v16), v16))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        swift_once();
        goto LABEL_83;
      }

      v18 = HIDWORD(v16) - v16;
LABEL_37:
      sub_100069E2C(v16, v17);
      if (v18 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  if (v23 != 2)
  {
    goto LABEL_41;
  }

  v36 = *(v16 + 16);
  v35 = *(v16 + 24);
  v18 = v35 - v36;
  if (!__OFSUB__(v35, v36))
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_30:
  if (__OFSUB__(HIDWORD(v17), v17))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v34 = HIDWORD(v17) - v17;
LABEL_32:
  sub_100069E2C(v17, v16);
  if (v34 < 3)
  {
    goto LABEL_54;
  }

LABEL_33:
  sub_100069E2C(v17, v16);
  v37 = sub_100090214(v17, v16, 0, 0, 0);
  if (v2)
  {
    sub_10006A178(v17, v16);
LABEL_57:
    v49 = v17;
    v50 = v16;
    return sub_10006A178(v49, v50);
  }

  v51 = v37;
  sub_10006A178(v17, v16);
  v52 = Data._Representation.subscript.getter();
  if (v52)
  {
LABEL_54:
    sub_100069E2C(v17, v16);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    sub_10006A178(v17, v16);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v117 = v61;
      *v60 = 136315138;
      v121 = sub_100288788(v17, v16);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v62 = BidirectionalCollection<>.joined(separator:)();
      v64 = v63;

      v65 = sub_1002FFA0C(v62, v64, &v117);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Incorrect PSM and DK Version characteristic %s", v60, 0xCu);
      sub_1000752F4(v61);
    }

    sub_100079E24();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();
    goto LABEL_57;
  }

  if (v18 == 2)
  {
    v55 = *(v17 + 16);
    v54 = *(v17 + 24);
    v56 = __OFSUB__(v54, v55);
    v53 = v54 - v55;
    if (!v56)
    {
      goto LABEL_53;
    }

    __break(1u);
LABEL_52:
    v53 = BYTE6(v16);
    goto LABEL_53;
  }

  if (v18 != 1)
  {
    goto LABEL_52;
  }

  LODWORD(v53) = HIDWORD(v17) - v17;
  if (__OFSUB__(HIDWORD(v17), v17))
  {
    __break(1u);
  }

  v53 = v53;
LABEL_53:
  v57 = v52;
  if (v53 < v52 + 3)
  {
    goto LABEL_54;
  }

  v67 = Data.subdata(in:)();
  v114 = v68;
  v69 = &_swiftEmptySetSingleton;
  v116 = &_swiftEmptySetSingleton;
  v108 = v51;
  v110 = a2;
  v112 = v17;
  if (v57)
  {
    v70 = 0;
    v113 = 2 * (v57 >> 1);
    v71 = 0x4000000000000000;
    while (1)
    {
      v72 = v114;
      if (!v71)
      {
        break;
      }

      sub_100069E2C(v67, v114);
      v17 = v67;
      v73 = sub_100090214(v67, v72, v70, 0, 0);
      sub_10006A178(v17, v72);
      sub_1000D6A84(&v117, v73);
      --v71;
      v70 += 2;
      v67 = v17;
      if (v113 == v70)
      {
        v69 = v116;
        v17 = v112;
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_90;
  }

LABEL_65:
  v74 = v69[2];
  v113 = v69;
  if (!v74)
  {
    v111 = 256;
    goto LABEL_78;
  }

  v75 = v67;
  v76 = (v69 + 7);
  v77 = 768;
  v78 = static Hasher._hash(seed:bytes:count:)();
  v79 = -1 << *(v113 + 32);
  v80 = v78 & ~v79;
  if ((*&v76[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80))
  {
    v81 = ~v79;
    while (*(*(v113 + 48) + 2 * v80) != 768)
    {
      v80 = (v80 + 1) & v81;
      if (((*&v76[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_76;
  }

LABEL_70:
  v77 = 256;
  v82 = static Hasher._hash(seed:bytes:count:)();
  v83 = -1 << *(v113 + 32);
  v84 = v82 & ~v83;
  if ((*&v76[(v84 >> 3) & 0xFFFFFFFFFFFFFF8] >> v84))
  {
    v85 = ~v83;
    while (*(*(v113 + 48) + 2 * v84) != 256)
    {
      v84 = (v84 + 1) & v85;
      if (((*&v76[(v84 >> 3) & 0xFFFFFFFFFFFFFF8] >> v84) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_76:
    v111 = v77;
    goto LABEL_77;
  }

LABEL_74:
  v111 = 256;
LABEL_77:
  v67 = v75;
  v17 = v112;
LABEL_78:
  v86 = OBJC_IVAR____TtC10seserviced9AlishaBLE_logger;
  v87 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();
  v88 = os_log_type_enabled(v87, v107);
  v109 = v67;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v104 = v89;
    v105 = swift_slowAlloc();
    v117 = v105;
    *v89 = 136315138;
    v106 = v86;

    v90 = Set.description.getter();
    v92 = v91;

    v93 = sub_1002FFA0C(v90, v92, &v117);

    v94 = v104;
    *(v104 + 1) = v93;
    _os_log_impl(&_mh_execute_header, v87, v107, "Peripheral supported DK protocol versions %s", v94, 0xCu);
    sub_1000752F4(v105);
  }

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 33554688;
    *(v97 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v95, v96, "Selected DK protocol version %hu", v97, 6u);
  }

  LOWORD(v117) = __rev16(v111);
  v121 = sub_1002B1854(&v117, &v117 + 2);
  v122 = v98;
  v115 = 1;
  v119 = &type metadata for UnsafeRawBufferPointer;
  v120 = &protocol witness table for UnsafeRawBufferPointer;
  v117 = &v115;
  v118 = &v116;
  sub_1000752B0(&v117, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v117);
  v115 = 15;
  v119 = &type metadata for UnsafeRawBufferPointer;
  v120 = &protocol witness table for UnsafeRawBufferPointer;
  v117 = &v115;
  v118 = &v116;
  sub_1000752B0(&v117, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v117);
  if (qword_100501960 != -1)
  {
    goto LABEL_92;
  }

LABEL_83:
  v99 = v110;
  if (qword_100501D30 != -1)
  {
    swift_once();
  }

  v100 = sub_1000958E4(v11, qword_10051B7A0);
  v101 = v121;
  v102 = v122;
  v103 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  sub_100069E2C(v121, v122);
  sub_1000F4EB4(v100, v101, v102, v99 + v103);
  sub_10006A178(v101, v102);
  sub_10006A178(v17, v16);
  sub_10006A178(v109, v114);
  sub_10006A178(v101, v102);

  if (!v2)
  {
    v39 = v111 << 16;
    v38 = v108;
    return v39 | v38;
  }

  return result;
}

uint64_t sub_100251228(int64_t a1)
{
  v96 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v95 = *(v3 + 104);
  (v95)(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v94 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v10 = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_56:
    v89 = v10;
    swift_once();
    v10 = v89;
    goto LABEL_7;
  }

  if (*(v1 + 24) != 1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v17, 2u);
    }

    sub_100079E24();
    swift_allocError();
    v14 = 1;
    goto LABEL_28;
  }

  v10 = v96;
  if (*(v96 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    sub_1000E1E2C();
    swift_allocError();
    v14 = 4;
    goto LABEL_28;
  }

  *&v92 = v1;
  if (qword_100501960 != -1)
  {
    goto LABEL_56;
  }

LABEL_7:
  v11 = qword_10051B288;
  v12 = sub_1000E7974(v10);
  if (v12 == 2)
  {
LABEL_8:
    sub_1000E1E2C();
    swift_allocError();
    v14 = 3;
LABEL_28:
    *v13 = v14;
    return swift_willThrow();
  }

  v90 = v11;
  v91 = v12;
  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B5B0;
  v20 = v94;
  v19 = v95;
  *v5 = v94;
  v19(v5, v7, v2);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v9(v5, v2);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_30;
  }

  v22 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
  swift_beginAccess();
  v23 = sub_1000C6AD0(0, *(v18 + v22));
  v24 = objc_opt_self();
  v25 = v96;
  v95 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  v26 = *(v96 + OBJC_IVAR____TtC10seserviced4Peer_expressState) == 2;
  UUID.uuidString.getter();
  v27 = String._bridgeToObjectiveC()();

  v94 = v24;
  sub_1003ADE18(v24, v26, v23, v27);

  if (*(v18 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) != 1)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Not sending device intent because ranging is not available";
      goto LABEL_25;
    }

LABEL_27:

    sub_1000E1E2C();
    swift_allocError();
    v14 = 2;
    goto LABEL_28;
  }

  v28 = sub_10024CEF8(v18, v25);

  if ((v28 & 1) == 0)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Not sending device intent because of no UWB session";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v23)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Not sending device intent because of ranging limit reached";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v5 = v25;
  if (qword_100501928 != -1)
  {
    goto LABEL_58;
  }

LABEL_30:
  if (*(qword_10051B238 + 32) != 1)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_27;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Not sending device intent because the device is static";
    goto LABEL_25;
  }

  v34 = *(v5 + v95);
  if (v34 != 1)
  {
    if (v34 == 2 && (v91 & 1) == 0)
    {
      sub_10004D584(v94, @"unlockNeededForCarActionCount");
      v35 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      if (v35 >> 60 != 15)
      {
        v36 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
        if (v36 >> 60 != 15)
        {
          *&v92 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v37 = v92;
          v38 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v95 = "disconnectionCount";
          v96 = v38;
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1004098F0;
          *(inited + 32) = 0xD000000000000014;
          v94 = (inited + 32);
          *(inited + 40) = 0x80000001004686F0;
          sub_10006A2BC(v37, v35);
          sub_10006A2BC(v38, v36);
          sub_10006A2BC(v37, v35);
          sub_10006A2BC(v38, v36);
          v40 = v93;
          v41 = sub_100288788(v37, v35);
          v93 = v40;
          v97 = v41;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v42 = BidirectionalCollection<>.joined(separator:)();
          v44 = v43;

          v97 = v42;
          v98 = v44;
          v45._countAndFlagsBits = 58;
          v45._object = 0xE100000000000000;
          String.append(_:)(v45);
          v99 = sub_100288788(v96, v36);
          v46 = BidirectionalCollection<>.joined(separator:)();
          v48 = v47;

          v49._countAndFlagsBits = v46;
          v49._object = v48;
          String.append(_:)(v49);

          v50 = v97;
          v51 = v98;
          *(inited + 72) = &type metadata for String;
          *(inited + 48) = v50;
          *(inited + 56) = v51;
          v52 = sub_10008FFDC(inited);
          swift_setDeallocating();
          sub_10024D88C(v94);
          v53 = v96;
          v54 = v92;
          sub_1003375E0(0xD000000000000025, v95 | 0x8000000000000000, v92, v35, v96, v36, v52);

          sub_10006A2D0(v53, v36);
          sub_10006A2D0(v54, v35);
          sub_10006A2D0(v53, v36);
          sub_10006A2D0(v54, v35);
        }
      }

      goto LABEL_8;
    }

    v29 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v97 = v58;
      *v57 = 136315138;
      LOBYTE(v99) = *(v5 + v95);
      v59 = String.init<A>(describing:)();
      v61 = sub_1002FFA0C(v59, v60, &v97);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v29, v56, "Not sending device intent because of express state %s", v57, 0xCu);
      sub_1000752F4(v58);

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v62 = v91 & 1;
  LODWORD(v95) = !(v91 & 1);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v97 = v66;
    *v65 = 136315138;
    if (v62)
    {
      v67 = 7827308;
    }

    else
    {
      v67 = 0x6D756964656DLL;
    }

    if (v62)
    {
      v68 = 0xE300000000000000;
    }

    else
    {
      v68 = 0xE600000000000000;
    }

    v69 = sub_1002FFA0C(v67, v68, &v97);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "Sending device intent with %s confidence", v65, 0xCu);
    sub_1000752F4(v66);
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v70 = swift_allocObject();
  v92 = xmmword_100409900;
  *(v70 + 16) = xmmword_100409900;
  *(v70 + 32) = 3;
  *(v70 + 33) = v95;
  v71 = sub_1002B3B94(v70);
  v73 = v72;

  v74 = sub_100239160(3, 17, v71, v73);
  v75 = v71;
  v77 = v76;
  sub_10006A178(v75, v73);
  v78 = v93;
  sub_1000E71A0(v74, v77, v96);
  if (v78)
  {
    sub_1000E1E2C();
    swift_allocError();
    *v79 = 2;
    swift_willThrow();

    return sub_10006A178(v74, v77);
  }

  else
  {
    v80 = v95;
    v81.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v93 = v77;
    isa = v81.super.super.isa;
    UUID.uuidString.getter();
    v83 = String._bridgeToObjectiveC()();

    v84 = v94;
    sub_1003ADF90(v94, isa, v83);

    sub_10004D584(v84, @"deviceIntentCount");
    v94 = String._bridgeToObjectiveC()();
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    LOBYTE(isa) = v80;
    v85 = swift_initStackObject();
    *(v85 + 16) = v92;
    *(v85 + 32) = 0x4449555572656550;
    *(v85 + 40) = 0xE800000000000000;
    *(v85 + 48) = UUID.uuidString.getter();
    *(v85 + 56) = v86;
    *(v85 + 72) = &type metadata for String;
    *(v85 + 80) = 0x6E656469666E6F43;
    *(v85 + 88) = 0xEF6C6576654C6563;
    *(v85 + 120) = &type metadata for UInt8;
    *(v85 + 96) = isa;
    sub_10008FFDC(v85);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    v88 = v94;
    PLLogRegisteredEvent();

    return sub_10006A178(v74, v93);
  }
}

void sub_100251F90()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v4 = qword_10051B7F0;
    *v3 = qword_10051B7F0;
    v5 = enum case for DispatchPredicate.onQueue(_:);
    v6 = v1 + 104;
    v7 = *(v1 + 104);
    v7(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v8 = v4;
    v9 = _dispatchPreconditionTest(_:)();
    v12 = *(v1 + 8);
    v10 = v1 + 8;
    v11 = v12;
    v12(v3, v0);
    if ((v9 & 1) == 0)
    {
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_10;
    }

    v60 = v8;
    v13 = *(v61 + 24);
    v14 = Logger.logObject.getter();
    if (v13)
    {
      break;
    }

    v58 = v10;
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, v17, "Starting AlishaBLE", v18, 2u);
    }

    *(v61 + 24) = 1;
    if (qword_100501D78 != -1)
    {
      goto LABEL_42;
    }

LABEL_10:
    v54 = v11;
    v55 = v7;
    v56 = v5;
    v57 = v6;
    v59 = v0;
    v19 = sub_1000CAAC4();
    v53 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_100254CFC(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v20 = v64;
      v1 = v65;
      v21 = v66;
      v22 = v67;
      v23 = v68;
    }

    else
    {
      v24 = -1 << *(v19 + 32);
      v1 = v19 + 56;
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = v26 & *(v19 + 56);
      v22 = 0;
    }

    v52 = v21;
    v27 = (v21 + 64) >> 6;
    if (v20 < 0)
    {
      while (1)
      {
        v32 = __CocoaSet.Iterator.next()();
        if (!v32)
        {
          break;
        }

        v62 = v32;
        type metadata accessor for Peer(0);
        swift_dynamicCast();
        v31 = v63;
        v30 = v22;
        v0 = v23;
        if (!v63)
        {
          break;
        }

LABEL_25:
        if (qword_100501B98 != -1)
        {
          swift_once();
        }

        sub_100252B08(v31, 0, 0);

        v22 = v30;
        v23 = v0;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_29:
      sub_100093854(v20);
      v33 = v61;

      v34 = v53;
      sub_100239364(v53, v33);
      v36 = v35;

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v37 = sub_10022DA5C(v34);

      v38 = sub_1000E0348(v37);

      v41 = sub_100238B50(v36, v39, v40);

      if ((v41 & 0x100) != 0)
      {
        v42 = -120;
      }

      else
      {
        v42 = v41;
      }

      sub_1000F6564(0, v38, v42);

      v43 = v59;
      v44 = v56;
      v46 = v54;
      v45 = v55;
      if (qword_100501908 != -1)
      {
        swift_once();
      }

      v47 = qword_10051B230;
      sub_1000A7D8C(sub_1002537E0, 0);
      v48 = v60;
      *v3 = v60;
      v45(v3, v44, v43);
      v49 = v48;
      v50 = _dispatchPreconditionTest(_:)();
      v46(v3, v43);
      if (v50)
      {
        if (qword_100501968 == -1)
        {
LABEL_38:
          v51 = qword_10051B290;

          sub_100114834(0xD000000000000011, 0x80000001004607F0, v51, v47);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_38;
    }

LABEL_17:
    v28 = v22;
    v29 = v23;
    v30 = v22;
    if (v23)
    {
LABEL_21:
      v0 = (v29 - 1) & v29;
      v31 = *(*(v20 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        goto LABEL_29;
      }

      v29 = *(v1 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "AlishaBLE is already running", v16, 2u);
  }
}

void sub_100252624()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(i + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_7;
    }

    v8 = *(v1 + 24);
    v9 = Logger.logObject.getter();
    if (v8 != 1)
    {
      break;
    }

    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping AlishaBLE", v11, 2u);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_35;
    }

LABEL_7:
    v29 = v1;
    v2 = off_10050B110;
    v12 = sub_1000CAAC4();
    v5 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_100254CFC(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v14 = v32;
      v13 = v33;
      v15 = v34;
      v16 = v35;
      v1 = v36;
    }

    else
    {
      v19 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v15 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v1 = v21 & *(v12 + 56);

      v16 = 0;
      v14 = v5;
    }

    v28[1] = v15;
    for (i = (v15 + 64) >> 6; v14 < 0; v1 = v25)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_29;
      }

      v30 = v27;
      type metadata accessor for Peer(0);
      swift_dynamicCast();
      v26 = v31;
      v24 = v16;
      v25 = v1;
      if (!v31)
      {
        goto LABEL_29;
      }

LABEL_25:
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v2 = qword_10051B288;
      sub_1000E67E4(v26);

      v16 = v24;
    }

    v22 = v16;
    v23 = v1;
    v24 = v16;
    if (v1)
    {
LABEL_21:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v14 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

      if (v26)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_100093854(v14);

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000F6564(0, &_swiftEmptySetSingleton, 128);
      *(v29 + 24) = 0;
      return;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= i)
      {
        goto LABEL_29;
      }

      v23 = *(v13 + 8 * v24);
      ++v22;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v9, v17, "AlishaBLE is not running", v18, 2u);
  }
}

void sub_100252B08(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v3 + 24) == 1)
  {
    type metadata accessor for AlishaPeer(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v45 = a3;
      v14 = *(v13 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration);
      a3 = *(v14 + 104);
      v46 = *(v14 + 96);
      v15 = qword_100501960;

      if (v15 == -1)
      {
LABEL_7:
        v44[1] = qword_10051B288;
        sub_100068FC4(&qword_100503F10, &qword_10040A008);
        v16 = type metadata accessor for UUID();
        v17 = *(v16 - 8);
        v18 = *(v17 + 72);
        v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100409A40;
        v21 = v20 + v19;
        if (qword_100501D30 != -1)
        {
          swift_once();
        }

        v22 = sub_1000958E4(v16, qword_10051B7A0);
        v23 = *(v17 + 16);
        v23(v21, v22, v16);
        if (qword_100501D20 != -1)
        {
          swift_once();
        }

        v24 = sub_1000958E4(v16, qword_10051B770);
        v23(v21 + v18, v24, v16);
        v25 = v21 + 2 * v18;
        if (qword_100501D28 != -1)
        {
          swift_once();
        }

        v26 = sub_1000958E4(v16, qword_10051B788);
        v23(v25, v26, v16);
        v27 = *(v3 + 16);
        v28 = a2 & 1;
        v29 = v46;
        if (a2)
        {
          v30 = 0;
        }

        else
        {
          v30 = v46;
        }

        if (a2)
        {
          v31 = 0;
        }

        else
        {
          v31 = a3;
        }

        type metadata accessor for DSKBLE.BLEConnectionRequest();
        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        *(v32 + 24) = 893797958;
        *(v32 + 32) = 0xE400000000000000;
        *(v32 + 40) = v20;
        *(v32 + 64) = v30;
        *(v32 + 72) = v31;
        *(v32 + 80) = v28;
        *(v32 + 81) = 0;
        *(v32 + 48) = v27;
        *(v32 + 56) = 0;
        *(v32 + 88) = sub_100254CC4;
        *(v32 + 96) = v3;
        *(v32 + 104) = sub_100254CDC;
        *(v32 + 112) = v3;
        *(v32 + 120) = sub_100254CE0;
        *(v32 + 128) = v3;
        *(v32 + 136) = sub_100254CE8;
        *(v32 + 144) = v3;
        *(v32 + 152) = sub_100254CEC;
        *(v32 + 160) = v3;
        *(v32 + 168) = sub_100254CF0;
        *(v32 + 176) = v3;
        swift_retain_n();

        v33 = v45;
        sub_1000EA4CC(v32, v45 & 1);

        if (v33)
        {
          sub_1000F3B5C(v29, a3, 0, 0x100u, a1);
        }

        return;
      }

LABEL_29:
      swift_once();
      goto LABEL_7;
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315138;
      v41 = UUID.uuidString.getter();
      v43 = sub_1002FFA0C(v41, v42, &v47);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to cast Peer to AlishaPeer %s", v39, 0xCu);
      sub_1000752F4(v40);
    }
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not running", v36, 2u);
    }
  }
}

uint64_t sub_100253124(int64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + 24) == 1)
    {
      if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
      {
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Sending RANGING_SESSION_NOT_REQUIRED", v11, 2u);
        }

        if (qword_100501B60 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      sub_1000E1E2C();
      swift_allocError();
      v23 = 4;
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }

      sub_100079E24();
      swift_allocError();
      v23 = 1;
    }

    *v22 = v23;
    return swift_willThrow();
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_9:
  v12 = sub_1002B3B94(&off_1004C3B00);
  v14 = v13;
  v15 = sub_100239160(3, 17, v12, v13);
  v17 = v16;
  sub_10006A178(v12, v14);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v15, v17, a1);
  return sub_10006A178(v15, v17);
}

uint64_t sub_1002534AC()
{
  type metadata accessor for AlishaBLE(0);
  swift_allocObject();
  result = sub_1002534EC();
  qword_10051B5F8 = result;
  return result;
}

uint64_t sub_1002534EC()
{
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v4;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 21;
  v5 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_100254CA4;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CCF98;
  v6 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v6);
  return v0;
}

_DWORD *sub_1002536FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v9 = &type metadata for Bool;
  LOBYTE(v8) = v2;
  sub_100075D50(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v7, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = sub_100015DA0("alishable.state", isa);

  return v5;
}

uint64_t sub_1002537E0()
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = sub_1000CAA04();
    if ((v0 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10014E510();
      sub_100254CFC(&qword_100503608, sub_10014E510, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v2 = v27;
      v1 = v28;
      v3 = v29;
      v4 = v30;
      v5 = v31;
    }

    else
    {
      v6 = -1 << *(v0 + 32);
      v1 = v0 + 7;
      v3 = ~v6;
      v7 = -v6;
      v8 = v7 < 64 ? ~(-1 << v7) : -1;
      v5 = v8 & v0[7];
      v4 = 0;
    }

    v24 = v3;
    v9 = (v3 + 64) >> 6;
    v25 = v2;
    if (v2 < 0)
    {
      break;
    }

LABEL_9:
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (v5)
    {
LABEL_13:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_21;
      }

      v11 = v1[v12];
      ++v10;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    sub_10014E510();
    swift_dynamicCast();
    v14 = v26;
    v12 = v4;
    v13 = v5;
    if (!v26)
    {
      break;
    }

LABEL_17:
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    v15 = [v14 publicKeyIdentifier];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_1000A6DB8(v16, v18);
    sub_10006A178(v16, v18);
    v19 = [v14 publicKeyIdentifier];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_1000976F4(v20, v22);
    sub_10006A178(v20, v22);

    v4 = v12;
    v5 = v13;
    v2 = v25;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_21:
  sub_100093854(v2);
}

uint64_t sub_100253AEC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v5;
    v18 = v17;
    v30 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_100254CFC(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = Dictionary.description.getter();
    v21 = sub_1002FFA0C(v19, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Read characteristics %s", v16, 0xCu);
    sub_1000752F4(v18);
    v4 = v3;
    v5 = v29;
  }

  type metadata accessor for AlishaPeer(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    sub_100079E24();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return v5;
  }

  v11 = v22;

  v23 = sub_100250494(a1, a2);
  if (!v4)
  {
    v5 = v23;
    v25 = WORD1(v23);
    v26 = v11;
    *(v11 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) = v25;
    if (qword_100501BA0 == -1)
    {
LABEL_11:
      sub_10025671C(v26);

      return v5;
    }

LABEL_14:
    swift_once();
    v26 = v11;
    goto LABEL_11;
  }

  return v5;
}

void sub_100253E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Channel established", v12, 2u);
  }

  if (!a1)
  {
    if (qword_100501B60 == -1)
    {
LABEL_10:
      sub_1002348E0(a2);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  swift_errorRetain();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = UUID.uuidString.getter();
    v18 = sub_1002FFA0C(v16, v17, &v23);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1002FFA0C(v19, v20, &v23);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error during connection attempt to %s %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1002541DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501B60 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_100231150(a1, a2, a3);
}

void sub_100254374(unint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Disconnected", v10, 2u);
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100234D44(a1);
}

void sub_10025456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v8 + 104);
  (v38)(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v36 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v8 + 8);
  v13 = v8 + 8;
  v37 = v14;
  v14(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v35 = v12;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v34 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v13;
    v21 = v20;
    v41[0] = v20;
    *v19 = 134218754;
    *(v19 + 4) = v39;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a2;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a3;
    *(v19 + 32) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = a3;
    v25 = a4;
    v26 = sub_1002FFA0C(v22, v23, v41);

    *(v19 + 34) = v26;
    a4 = v25;
    a3 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Time sync event type %ld ticks %llu counter %llu peer %s", v19, 0x2Au);
    sub_1000752F4(v21);

    v7 = v33;
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v27 = qword_10051B600;
  *v10 = v36;
  v38(v10);
  v28 = _dispatchPreconditionTest(_:)();
  v37(v10, v7);
  if (v28)
  {
    v29 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v30 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v27 + v30);
    *(v27 + v30) = 0x8000000000000000;
    sub_100314954(v39, v34, a3, a4 + v29, isUniquelyReferenced_nonNull_native);
    *(v27 + v30) = v40;
    swift_endAccess();
    sub_1002553AC(a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100254920(char a1, int64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  if (*(a2 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2)
  {
    return;
  }

  if (a1)
  {
    sub_100253124(a2);
    return;
  }

  sub_100251228(a2);
  if (qword_100501BA0 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1002558C4(0, a2);
}

uint64_t sub_100254B04()
{

  v1 = OBJC_IVAR____TtC10seserviced9AlishaBLE_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaBLE(uint64_t a1)
{
  result = qword_100507E20;
  if (!qword_100507E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254BFC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100254CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100254CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100254D44(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v31)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v35 = result;
    v36 = v4;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v35;
        v9 = v37;
        v32 = v36;
        v10 = v1;
        sub_10008EDB4(v35, v36, v37, v1);
        v11 = UUID.uuidString.getter();
        v13 = v12;

        v14 = v33;
        v38 = v33;
        v16 = v33[2];
        v15 = v33[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_10019F3C0((v15 > 1), v16 + 1, 1);
          v14 = v38;
        }

        v14[2] = v16 + 1;
        v17 = &v14[2 * v16];
        v17[4] = v11;
        v17[5] = v13;
        v33 = v14;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v6(v34, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1000937D4(v35, v36, v37);
            return v33;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v18 = (1 << *(v10 + 32));
          if (v8 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v8 >> 6;
          v20 = *(v29 + 8 * (v8 >> 6));
          if (((v20 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v32)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v18 = (__clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0);
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                result = sub_1000937D4(v8, v32, 0);
                v18 = (__clz(__rbit64(v25)) + v22);
                goto LABEL_31;
              }
            }

            result = sub_1000937D4(v8, v32, 0);
          }

LABEL_31:
          v27 = *(v10 + 36);
          v35 = v18;
          v36 = v27;
          v37 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

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

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

void *sub_1002550A4(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000937D4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1002553AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  v15 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (!*(v16 + 16) || (v14 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v17 = sub_10008C808(a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier), (v18 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v19 = (*(v16 + 56) + 24 * v17);
  v20 = *v19;
  v44 = v19[1];
  v45 = v20;
  v43 = v19[2];
  swift_endAccess();
  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v21 = qword_10051B5B0;

  v22 = sub_10024F2B4(v21, a1);

  v23 = sub_1000CA828(v22);

  if (v23)
  {
    if (*(v23 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
    {

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      v42 = v25;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41 = v26;
        v40 = swift_slowAlloc();
        v46[0] = v40;
        *v26 = 136315138;
        v39 = v24;
        v27 = UUID.uuidString.getter();
        v29 = sub_1002FFA0C(v27, v28, v46);

        v30 = v41;
        *(v41 + 1) = v29;
        v31 = v39;
        _os_log_impl(&_mh_execute_header, v39, v42, "Processing time sync event for %s", v30, 0xCu);
        sub_1000752F4(v40);
      }

      else
      {
      }

      sub_100246580(v45, v44, v43);
      (*(v5 + 16))(v7, a1 + v14, v4);
      swift_beginAccess();
      sub_1000C4DD4(0, 0, 0, 1, v7);
      swift_endAccess();

      return;
    }
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46[0] = v35;
    *v34 = 136315138;
    v36 = UUID.uuidString.getter();
    v38 = sub_1002FFA0C(v36, v37, v46);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "No active UWB Alisha session for %s", v34, 0xCu);
    sub_1000752F4(v35);
  }
}

void sub_1002558C4(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v10 = qword_10051B5B0;

  v11 = sub_10024F2B4(v10, a2);

  v12 = sub_1000CA828(v11);

  if (v12)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      sub_100247CCC(a1, v13);

      return;
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = UUID.uuidString.getter();
    v20 = sub_1002FFA0C(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "No active UWB Alisha session for %s", v16, 0xCu);
    sub_1000752F4(v17);
  }
}

void sub_100255BA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v9 = *(v1 + 16);
  v10 = Logger.logObject.getter();
  if (v9)
  {
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "AlishaUWB is already running", v12, 2u);
    }

    return;
  }

  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, v13, "Starting AlishaUWB", v14, 2u);
  }

  *(v1 + 16) = 1;
  if (qword_1005019E8 != -1)
  {
    goto LABEL_24;
  }

LABEL_11:
  v15 = sub_1000CAA04();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();

    if (!v16)
    {
LABEL_15:
      v18 = sub_1000CAA04();
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = __CocoaSet.count.getter();

        if (!v19)
        {
          return;
        }
      }

      else
      {
        v20 = v18[2];

        if (!v20)
        {
          return;
        }
      }
    }
  }

  else
  {
    v17 = v15[2];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v22[3] = v2;
  v22[4] = &off_1004CCFC0;
  v22[0] = v1;

  sub_1002400AC(0, v22);
  sub_100075768(v22, &qword_100502F08, &qword_10040A000);
}

void sub_100255F64()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 13))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 1))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_7;
    }

    v8 = *(v1 + 16);
    v9 = Logger.logObject.getter();
    if (v8 != 1)
    {
      break;
    }

    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping AlishaUWB", v11, 2u);
    }

    if (qword_100501B70 != -1)
    {
      goto LABEL_31;
    }

LABEL_7:
    v31[2] = qword_10051B5B0;
    v12 = sub_100240658(qword_10051B5B0);
    v13 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_1002599B4(&qword_100507D00, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v14 = v33;
      v3 = v34;
      v2 = v35;
      v5 = v36;
      v15 = v37;
    }

    else
    {
      v18 = -1 << *(v12 + 32);
      v3 = (v12 + 56);
      v2 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v15 = v20 & *(v12 + 56);

      v5 = 0;
      v14 = v13;
    }

    v31[1] = v2;
    for (i = (v2 + 64) >> 6; v14 < 0; v15 = v25)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_27;
      }

      v31[3] = v28;
      type metadata accessor for UWBSession();
      v26 = swift_dynamicCast();
      v2 = v32;
      v24 = v5;
      v25 = v15;
      if (!v32)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_100246878(v26, v27);

      v5 = v24;
    }

    v22 = v5;
    v23 = v15;
    v24 = v5;
    if (v15)
    {
LABEL_21:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v14 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      v2 = v26;
      if (v26)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_100093854(v14);

      v29 = OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers;
      swift_beginAccess();
      *(v1 + v29) = &_swiftEmptySetSingleton;

      v30 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
      swift_beginAccess();
      *(v1 + v30) = _swiftEmptyDictionarySingleton;

      sub_100240A9C(0);
      *(v1 + 16) = 0;
      return;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= i)
      {
        goto LABEL_27;
      }

      v23 = *&v3[8 * v24];
      v22 = (v22 + 1);
      if (v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v9, v16, "AlishaUWB is not running", v17, 2u);
  }
}

void sub_10025640C(uint64_t a1)
{
  v23 = a1;
  v2 = type metadata accessor for UUID();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (*(v1 + 16) == 1)
  {
    *v7 = v11;
    v10(v7, v9, v4);
    v14 = v11;
    v15 = _dispatchPreconditionTest(_:)();
    v13(v7, v4);
    if (v15)
    {
      v16 = v24;
      (*(v21 + 16))(v24, v23 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v22);
      swift_beginAccess();
      sub_1000C4DD4(0, 0, 0, 1, v16);
      swift_endAccess();
      return;
    }

    goto LABEL_11;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
  }
}

void sub_10025671C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + 16) == 1)
  {
    type metadata accessor for AlishaPeer(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v4 = v10;
      v11 = qword_100501B70;

      if (v11 == -1)
      {
LABEL_7:
        v12 = *(v4 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version);
        v24[3] = v3;
        v24[4] = &off_1004CD000;
        v24[0] = v2;

        sub_1002413A0(v4, v12, v24);

        sub_1000752F4(v24);
        return;
      }

LABEL_15:
      swift_once();
      goto LABEL_7;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to retrieve AlishaPeer for %s", v18, 0xCu);
      sub_1000752F4(v19);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not running", v15, 2u);
    }
  }
}

uint64_t sub_100256AC0()
{
  type metadata accessor for AlishaUWB(0);
  swift_allocObject();
  result = sub_100256B00();
  qword_10051B600 = result;
  return result;
}

uint64_t sub_100256B00()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers) = &_swiftEmptySetSingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_100259700;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CD020;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_100256C58()
{
  v1 = *(v0 + 16);
  v15 = &type metadata for Bool;
  LOBYTE(v14) = v1;
  sub_100075D50(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v4 = sub_1002550A4(v3);

  v5 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v15 = v5;
  *&v14 = v4;
  sub_100075D50(&v14, v13);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0xD000000000000015, 0x8000000100462A70, v6);
  swift_beginAccess();

  v8 = sub_100254D44(v7);

  v15 = v5;
  *&v14 = v8;
  sub_100075D50(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x50676E69676E6172, 0xEC00000073726565, v9);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = sub_100015DA0("alishauwb.state", isa);

  return v11;
}

void sub_100256E78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v89 = a7;
  v92 = a6;
  LODWORD(v90) = a9;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v14 - 8);
  v88 = (&v81 - v15);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v84 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v81 - v20;
  __chkstk_darwin(v21);
  v23 = &v81 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  __chkstk_darwin(v24);
  v28 = (&v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v86 = v26;
    v87 = v25;
    v83 = a8;
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v91 = a5;
      v82 = v32;
      v94[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = v23;
      v36 = v17;
      v37 = v16;
      v38 = a3;
      v39 = sub_1002FFA0C(v33, v34, v94);

      *(v31 + 4) = v39;
      a3 = v38;
      v16 = v37;
      v17 = v36;
      v23 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to process DK UWB message %s", v31, 0xCu);
      sub_1000752F4(v82);
      a5 = v91;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v82 = qword_10051B5A0;
    v40 = sub_1002B3B94(&off_1004C4A18);
    v91 = v41;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v42 = qword_10051B7F0;
    *v28 = qword_10051B7F0;
    v43 = v86;
    v44 = v87;
    (*(v86 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v87);
    v45 = v42;
    LOBYTE(v42) = _dispatchPreconditionTest(_:)();
    v47 = *(v43 + 8);
    v46 = v43 + 8;
    v47(v28, v44);
    if ((v42 & 1) == 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v48 = v92;
    if (v92)
    {
      v49 = v88;
      sub_1000756F8(v89, v88);
      if ((*(v17 + 48))(v49, 1, v16) != 1)
      {
        v87 = v40;
        v89 = a3;
        (*(v17 + 32))(v23, v49, v16);
        v53 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v54 = v17;
        v55 = *(v17 + 16);
        v56 = v85;
        v55(v85, a5 + v53, v16);
        v57 = static UUID.== infix(_:_:)();
        v60 = *(v54 + 8);
        v58 = v54 + 8;
        v59 = v60;
        (v60)(v56, v16);
        if ((v57 & 1) == 0)
        {
          v92 = v58;
          v64 = v84;
          v90 = v23;
          v55(v84, v23, v16);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v88 = v59;
            v68 = v67;
            v86 = swift_slowAlloc();
            v93 = v86;
            *v68 = 136315394;
            sub_1002599B4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v82 = v55;
            LODWORD(v83) = v66;
            v69 = dispatch thunk of CustomStringConvertible.description.getter();
            v70 = a5;
            v72 = v71;
            (v88)(v64, v16);
            v73 = sub_1002FFA0C(v69, v72, &v93);

            *(v68 + 4) = v73;
            *(v68 + 12) = 2080;
            v74 = v70 + v53;
            v75 = v85;
            v82(v85, v74, v16);
            v76 = dispatch thunk of CustomStringConvertible.description.getter();
            v78 = v77;
            (v88)(v75, v16);
            v79 = sub_1002FFA0C(v76, v78, &v93);

            *(v68 + 14) = v79;
            _os_log_impl(&_mh_execute_header, v65, v83, "Connection identifier has changed %s %s", v68, 0x16u);
            swift_arrayDestroy();

            v59 = v88;
          }

          else
          {

            (v59)(v64, v16);
          }

          (v59)(v90, v16);

          v80 = v87;
          goto LABEL_34;
        }

        (v59)(v23, v16);
        v40 = v87;
        if ((v92 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      sub_100075768(v49, &unk_10050BE80, &unk_10040B360);
    }

    if ((v48 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ((v90 & 1) == 0)
    {
      v50 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
      if (*(a5 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v83)
      {

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 134218240;
          *(v63 + 4) = v83;
          *(v63 + 12) = 2048;
          *(v63 + 14) = *(a5 + v50);

          _os_log_impl(&_mh_execute_header, v61, v62, "Sequence number has changed %ld %ld", v63, 0x16u);
        }

        else
        {
        }

        goto LABEL_33;
      }
    }

LABEL_15:
    v28 = sub_100239160(3, 17, v40, v91);
    v46 = v51;
    if (qword_100501960 == -1)
    {
LABEL_16:
      sub_1000E71A0(v28, v46, a5);
      sub_10006A178(v28, v46);
LABEL_33:

      v80 = v40;
LABEL_34:
      sub_10006A178(v80, v91);
      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_16;
  }

  if (a2 >> 60 != 15)
  {
    sub_100069E2C(a1, a2);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(a1, a2, a5);
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v52 = qword_10051B5A0;

    sub_10023CC0C(a1, a2, 0, a5, v52, a5);

    sub_10006A2D0(a1, a2);
  }
}