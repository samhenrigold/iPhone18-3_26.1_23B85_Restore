void sub_100600788(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex];

      if (v5 == a2)
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          sub_100600844();
        }
      }
    }
  }
}

void sub_100600844()
{
  v3 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "b222Run()", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex;
  v9 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex] = v11;
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = &unk_1009A0000;
  if (*(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "B222 run called, but sessionState.didComplete == true.  Bailing", v14, 2u);
    }

    v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
    *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
    v15 = *&v3[v8];
    v10 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v10)
    {
      *&v3[v8] = v16;
      return;
    }

    goto LABEL_41;
  }

  v17 = [*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = v17;
  v19 = sub_1005FEA1C();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_42:
  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_14:

  if (v20 >= 1)
  {
    v21 = *(*&v3[v1] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    if (sub_1005607A0())
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 BOOLForKey:v22];

      if ((v23 & 1) == 0)
      {
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "attempting to show UI for b222.  .", v26, 2u);
        }

        sub_1005FF444();
        sub_10060108C();
        sub_100601364();
        sub_100601674();
        sub_10060194C();
        sub_100601B14();
        sub_1006020A8();
        v35 = *&v3[v1];
        if ((*(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
        {
          v36 = v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
          if (*(v36 + 8))
          {
            v37 = 0;
          }

          else
          {
            v37 = *v36;
          }

          sub_1006023A0(1, v37);
          v35 = *&v3[v1];
          *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 1;
        }

        v38 = v2[482];
        if ((*(v35 + v38) & 1) == 0)
        {
          sub_100602704();
          v38 = v2[482];
        }

        v39 = *&v3[v1];
        v40 = *(v39 + v38);
        *(v39 + v38) = 1;
        if ((v40 & 1) == 0)
        {

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 67109120;
            *(v43 + 4) = *(v39 + v38);
            _os_log_impl(&_mh_execute_header, v41, v42, "didComplete = %{BOOL}d", v43, 8u);
            v2 = &unk_1009A0000;
          }
        }
      }
    }

    else
    {
    }
  }

  if (*(*&v3[v1] + v2[482]))
  {
    v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
    *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
    v27 = *&v3[v8];
    v10 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v10)
    {
      *&v3[v8] = v28;

      sub_1005F1F48();

      [v3 stopScanning];
      sub_100602B9C();
      sub_100603198();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "b222run() All cleanup completely done.", v31, 2u);
      }

      return;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "b222Run() did not complete, waiting to try again.", v34, 2u);
  }

  sub_100600158(1);
}

uint64_t sub_10060108C()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v13 = 1637;

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_10046E4E8(&v13, v6);
    swift_endAccess();
    if (v7)
    {
      v4 = "ignore ensureScreenOn, UI updates disabled for current session state";
      goto LABEL_7;
    }
  }

  if ([*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn])
  {
    v13 = 1646;

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    v2 = String.hashValue.getter();

    swift_beginAccess();
    v3 = sub_10046E4E8(&v13, v2);
    swift_endAccess();
    if (v3)
    {
      v4 = "ensureScreenOn completed";
LABEL_7:
      sub_10061F624(&static os_log_type_t.default.getter, v4);
    }
  }

  v13 = 1643;

  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_10046E4E8(&v13, v10);
  swift_endAccess();
  if (v11)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureScreenOn - screen is currently off");
  }

  sub_100624918();
  swift_allocError();
  *v12 = 1;
  return swift_willThrow();
}

uint64_t sub_100601364()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v15 = 2285;

    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_10046E4E8(&v15, v8);
    swift_endAccess();
    if (v9)
    {
      v10 = "ignore startUIService, UI updates disabled for current session state";
      v11 = &static os_log_type_t.default.getter;
LABEL_14:
      sub_10061F624(v11, v10);
    }
  }

  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) != 1)
  {
    v15 = 2291;

    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13 = String.hashValue.getter();

    swift_beginAccess();
    v14 = sub_10046E4E8(&v15, v13);
    swift_endAccess();
    if (v14)
    {
      v10 = "Hmm, SpringBoard hasn't started even though sendsUIUpdates = true";
      v11 = &static os_log_type_t.fault.getter;
      goto LABEL_14;
    }
  }

  v1 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "startUIService. Screen on? %{BOOL}d.", v5, 8u);
  }

  if (qword_1009738A0 != -1)
  {
    swift_once();
  }

  return sub_1004521F4();
}

uint64_t sub_100601674()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v14 = 1653;

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String.hashValue.getter();

    swift_beginAccess();
    v11 = sub_10046E4E8(&v14, v10);
    swift_endAccess();
    if (v11)
    {
      v8 = "ignore ensureHUDServiceStarted, UI updates disabled for current session state";
      goto LABEL_9;
    }
  }

  v14 = 1657;

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2 = String.hashValue.getter();

  swift_beginAccess();
  v3 = sub_10046E4E8(&v14, v2);
  swift_endAccess();
  if (v3)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureUIServiceStarted called");
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v14 = 1659;

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_10046E4E8(&v14, v6);
    swift_endAccess();
    if (v7)
    {
      v8 = "ensureUIServiceStarted completed";
LABEL_9:
      sub_10061F624(&static os_log_type_t.default.getter, v8);
    }
  }

  sub_100624918();
  swift_allocError();
  *v13 = 1;
  return swift_willThrow();
}

void sub_10060194C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "ignore startViewService, UI updates disabled for current session state";
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle))
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "sbRemoteHandle != nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

LABEL_12:

    return;
  }

  sub_100612B04();
}

id sub_100601B14()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v35._countAndFlagsBits = 0xD000000000000057;
    v35._object = 0x80000001007995E0;
    v36 = 1685;

    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28 = String.hashValue.getter();

    swift_beginAccess();
    v29 = sub_10046E4E8(&v36, v28);
    swift_endAccess();
    if (v29)
    {
      v30 = "ignore ensureSystemUIState, UI updates disabled for current session state";
LABEL_15:
      sub_10061F624(&static os_log_type_t.default.getter, v30);
    }
  }

  v35._countAndFlagsBits = 0xD000000000000057;
  v35._object = 0x80000001007995E0;
  v36 = 1688;

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2 = String.hashValue.getter();

  swift_beginAccess();
  v3 = sub_10046E4E8(&v36, v2);
  swift_endAccess();
  if (v3)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureSystemUIState called");
  }

  result = [objc_opt_self() sharedMonitor];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result systemUIFlags];

  if ((v6 & 0x74008) == 0)
  {
    v35._countAndFlagsBits = 0xD000000000000057;
    v35._object = 0x80000001007995E0;
    v36 = 1709;

    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = String.hashValue.getter();

    swift_beginAccess();
    v33 = sub_10046E4E8(&v36, v32);
    swift_endAccess();
    if (v33)
    {
      v30 = "ensureSystemUIState completed";
      goto LABEL_15;
    }
  }

  LODWORD(v35._countAndFlagsBits) = v6;
  v7 = sub_10062496C();
  countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  object = v9;
  v11 = String.count.getter();
  v12 = 32 - v11;
  if (__OFSUB__(32, v11))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13._countAndFlagsBits = 48;
  v13._object = 0xE100000000000000;
  v14 = String.init(repeating:count:)(v13, v12 & ~(v12 >> 63));
  HIDWORD(v35._countAndFlagsBits) = HIDWORD(v14._countAndFlagsBits);
  v35._object = v14._object;

  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  String.append(_:)(v15);

  countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  LODWORD(v35._countAndFlagsBits) = 475144;
  v2 = String.init<A>(_:radix:uppercase:)();
  v7 = v16;
  v17 = String.count.getter();
  v18 = 32 - v17;
  if (__OFSUB__(32, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19._countAndFlagsBits = 48;
  v19._object = 0xE100000000000000;
  v35 = String.init(repeating:count:)(v19, v18 & ~(v18 >> 63));

  v20._countAndFlagsBits = v2;
  v20._object = v7;
  String.append(_:)(v20);

  v7 = v35._object;
  v2 = v35._countAndFlagsBits;
  if (qword_100973B58 != -1)
  {
LABEL_21:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_1009865B0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35._countAndFlagsBits = swift_slowAlloc();
    *v24 = 136315394;
    v25 = sub_10000C4E4(countAndFlagsBits, object, &v35._countAndFlagsBits);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    v26 = sub_10000C4E4(v2, v7, &v35._countAndFlagsBits);

    *(v24 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "ensureSystemUIState - not ready.\n(%s) <- printSystemUIFlags,\n(%s) <- printB332Flags", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100624918();
  swift_allocError();
  *v34 = 1;
  return swift_willThrow();
}

uint64_t sub_1006020A8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
  {
    v19 = 1666;

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String.hashValue.getter();

    swift_beginAccess();
    v11 = sub_10046E4E8(&v19, v10);
    swift_endAccess();
    if ((v11 & 1) == 0)
    {
    }

    v12 = "ignore ensureViewServiceStarted, UI updates disabled for current session state";
LABEL_8:
    sub_10061F624(&static os_log_type_t.default.getter, v12);
  }

  v2 = v0;
  v19 = 1670;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v19, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "Waiting for view service");
  }

  v6 = *(v2 + v1);
  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if ((v7 & 1) == 0)
  {
LABEL_15:
    v8 = 3;
    goto LABEL_16;
  }

  v14 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v14 != 2)
  {
    if (v14)
    {
      v19 = 1678;

      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16 = String.hashValue.getter();

      swift_beginAccess();
      v17 = sub_10046E4E8(&v19, v16);
      swift_endAccess();
      if ((v17 & 1) == 0)
      {
      }

      v12 = "View service up and XPC'd into daemon.";
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_5:
  v8 = 1;
LABEL_16:
  sub_100624918();
  swift_allocError();
  *v18 = v8;
  return swift_willThrow();
}

double sub_1006023A0(char a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009865B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 67109378;
      *(v8 + 4) = a1 & 1;
      *(v8 + 8) = 2080;
      v10 = sub_10060E6AC(a2);
      v12 = sub_10000C4E4(v10, v11, aBlock);

      *(v8 + 10) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "showPairingStarted. willTransitionToEducation: %{BOOL}d, deviceType: %s", v8, 0x12u);
      sub_10000C60C(v9);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E7DC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA760;
      v19 = _Block_copy(aBlock);
      v20 = [v18 remoteObjectProxyWithErrorHandler:v19];
      _Block_release(v19);
      [v20 setDeviceType:a2];
      [v20 showPairingStarted];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "ignore showPairingStarted, UI updates disabled for current session state", v15, 2u);
    }
  }

  return result;
}

void sub_100602704()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v2 = v0;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "showPairingSuccess", v6, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E980;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA7B0;
      v9 = _Block_copy(aBlock);
      v10 = [v8 remoteObjectProxyWithErrorHandler:v9];
      _Block_release(v9);

      LOBYTE(v9) = sub_10056089C();

      if (v9)
      {
        [v10 setShouldShowWhatsNew:1];
      }

      v11 = *(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
      if (*(v11 + 8))
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "No device type is set in showPairingSuccess! Falling back to B222", v14, 2u);
        }

        v15 = 2;
      }

      else
      {
        v15 = *v11;
      }

      [v10 setDeviceType:v15];
      [v10 showPairingSuccess];
      v19 = *(*(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

      if (sub_1005607A0())
      {
        v20 = String._bridgeToObjectiveC()();
        v21 = [v19 BOOLForKey:v20];

        if ((v21 & 1) == 0)
        {
          v22 = *(v2 + v1) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
          if ((*(v22 + 8) & 1) == 0)
          {
            v23 = *v22;
            if (v23 <= 4 && ((1 << v23) & 0x1A) != 0)
            {
              v24 = [objc_opt_self() standardUserDefaults];
              sub_100561364(1);
            }
          }

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "ignore showPairingSuccess, UI updates disabled for current session state", v18, 2u);
    }
  }
}

void sub_100602B9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v7 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) == 1 && (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) & 1) == 0)
  {
    v8 = v3;
    *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) = 1;
    v9 = v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if ((*(v9 + 8) & 1) != 0 || *v9 != 2)
    {
      v10 = objc_opt_self();
      v11 = [v10 standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 stringForKey:v12];

      if (v13)
      {
        v14 = [v10 standardUserDefaults];
        [v14 setURL:0 forKey:v13];
      }

      v15 = *(*&v0[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
      if (v15)
      {
        v16 = [v15 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v0;
        v17 = UUID.uuidString.getter();
        v18 = v44;
        v19 = v17;
        v21 = v20;
        (*(v2 + 8))(v5, v8);
        v22 = [v10 standardUserDefaults];
        v23 = String._bridgeToObjectiveC()();
        v24 = String._bridgeToObjectiveC()();
        [v22 setObject:v23 forKey:v24];

        v25 = [v10 standardUserDefaults];
        if (*(*&v18[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash + 8))
        {

          v26 = String._bridgeToObjectiveC()();
        }

        else
        {
          v26 = 0;
        }

        v27 = String._bridgeToObjectiveC()();
        [v25 setObject:v26 forKey:v27];

        swift_unknownObjectRelease();
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000C4AC(v28, qword_1009865B0);
        v29 = v18;

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v32 = 136315394;
          v0 = v44;
          v33 = (*&v44[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
          if (v33[1])
          {
            v34 = *v33;
            v35 = v33[1];
          }

          else
          {
            v35 = 0x8000000100789F30;
            v34 = 0xD000000000000015;
          }

          v36 = sub_10000C4E4(v34, v35, &v45);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          v37 = sub_10000C4E4(v19, v21, &v45);

          *(v32 + 14) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "setHash: %s, forKey: %s", v32, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v0 = v44;
        }
      }
    }

    sub_1005FDE80();
    v38 = *(*&v0[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
    v39 = String._bridgeToObjectiveC()();
    [v38 removeObjectForKey:v39];

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C4AC(v40, qword_1009865B0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "ensureCleanedUp!!!", v43, 2u);
    }
  }
}

uint64_t sub_100603198()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v13 = 1222;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v13, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingAgentDeallocated called");
  }

  if (*(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) == 1)
  {
    v6 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v1 queue:{*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q), 0xD000000000000057, 0x80000001007995E0}];
    v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
    *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) = v6;

    v13 = 1227;

    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9 = String.hashValue.getter();

    swift_beginAccess();
    v10 = sub_10046E4E8(&v13, v9);
    swift_endAccess();
    if (v10)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingAgentDeallocated completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

void sub_100603404(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "run() once", v5, 2u);
  }

  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v7))
  {

    v18 = v6;
    goto LABEL_14;
  }

  v8 = swift_slowAlloc();
  *v8 = 67110144;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v10 = *(*(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v11 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v10 BOOLForKey:v11];

  *(v8 + 4) = v10 ^ 1;
  *(v8 + 8) = 1024;

  v12 = sub_10056089C();

  *(v8 + 10) = v12 & 1;

  *(v8 + 14) = 1024;
  v13 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v14 = String._bridgeToObjectiveC()();
  LODWORD(v11) = [v13 BOOLForKey:v14];

  if (!v11 || (sub_1005609D0() & 1) == 0)
  {

    goto LABEL_12;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 BOOLForKey:v15];

  if (v16)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_13:
  *(v8 + 16) = v17;

  *(v8 + 20) = 1024;
  v19 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  *(v8 + 22) = v21;
  *(v8 + 26) = 1024;
  v22 = *(*(&v6->isa + v9) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  LOBYTE(v20) = sub_1005609D0();

  *(v8 + 28) = v20 & 1;
  _os_log_impl(&_mh_execute_header, oslog, v7, "--B322 Begin run Info--\nneedsInitialEducationUI:%{BOOL}d\nneedsWhatsNewUI:%{BOOL}d\nneedsWhatsNewForKeyboardLocale:%{BOOL}d\nhasShownPencilTextInputEducation:%{BOOL}d\nSupportedTextInputLocaleExists:%{BOOL}d", v8, 0x20u);

  v18 = oslog;
LABEL_14:
}

uint64_t sub_1006037AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v12 = 1232;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v12, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureAttached called");
  }

  v6 = *(v1 + v2);
  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8) && *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8) >> 60 != 15)
  {
    v12 = 1234;

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String.hashValue.getter();

    swift_beginAccess();
    v11 = sub_10046E4E8(&v12, v10);
    swift_endAccess();
    if (v11)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureAttached completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }
}

void sub_1006039F0(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v7 = *(*(&v3->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    v8 = String._bridgeToObjectiveC()();
    LOBYTE(v7) = [v7 BOOLForKey:v8];

    v12 = 0;
    if ((v7 & 1) == 0)
    {
      v9 = *(*(&v3->isa + v6) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 BOOLForKey:v10];

      if (!v11)
      {
        v12 = 1;
      }
    }

    *(v5 + 4) = v12;

    _os_log_impl(&_mh_execute_header, oslog, v4, "First pair?: %{BOOL}d", v5, 8u);

    v13 = oslog;
  }

  else
  {

    v13 = v3;
  }
}

uint64_t sub_100603BF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  if ([*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] state] == 5)
  {
    v13 = 1719;

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4 = String.hashValue.getter();

    swift_beginAccess();
    v5 = sub_10046E4E8(&v13, v4);
    swift_endAccess();
    if (v5)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureBTOn completed");
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_1009865B0);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = [*&v1[v2] state];

      _os_log_impl(&_mh_execute_header, v9, v10, "ensureBTOn - central.state(%ld) != .poweredOn", v11, 0xCu);
    }

    else
    {

      v9 = v8;
    }

    sub_100624918();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100603E50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v14 = 1745;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v14, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureUnlocked called");
  }

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  if ([*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) systemLockState] == 1 || objc_msgSend(*(v1 + v6), "systemLockState") == 4)
  {
    v14 = 1756;

    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_10046E4E8(&v14, v8);
    swift_endAccess();
    if (v9)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureUnlocked completed");
    }
  }

  else
  {
    v11 = *(v1 + v2);
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt;
    if (*(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) == 1)
    {
      sub_1006082D8();
      sub_10060E3D8();
      v11 = *(v1 + v2);
      v12 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt;
    }

    *(v11 + v12) = 0;
    sub_100624918();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

void sub_1006040C8()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "dismissUnlockPrompt", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_100612CF8;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EAA80;
      v7 = _Block_copy(aBlock);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
      [v8 dismissUnlockPrompt];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ignore dismissUnlockPrompt, UI updates disabled for current session state", v11, 2u);
    }
  }
}

uint64_t sub_100604368(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v6 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt;
  if ((*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) & 1) == 0)
  {
    v8 = v4;
    v11 = a1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009865B0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 67109634;
      *(v15 + 4) = v11 & 1;
      *(v15 + 8) = 2080;
      *(v15 + 10) = sub_10000C4E4(a3, a4, v23);
      *(v15 + 18) = 2048;
      *(v15 + 20) = a2;
      _os_log_impl(&_mh_execute_header, v13, v14, "ensurePairingConsented - inViewService: %{BOOL}d | %s:%ld", v15, 0x1Cu);
      sub_10000C60C(v16);
    }

    sub_10060E0FC(v11 & 1);
    v6 = *(v8 + v5);
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt;
  }

  *(v6 + v7) = 1;
  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) == 1)
  {
    v23[0] = 0xD000000000000057;
    v23[1] = 0x80000001007995E0;
    v24 = 1629;

    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18 = String.hashValue.getter();

    swift_beginAccess();
    v19 = sub_10046E4E8(&v24, v18);
    swift_endAccess();
    if (v19)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingConsented completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }
}

void sub_10060464C(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v3 = v1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009865B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "showChargingStatus", v8, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (a1 != 2)
      {
        *(*(v3 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = a1 & 1;
      }

      v10 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E998;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA7D8;
      v11 = _Block_copy(aBlock);
      v12 = [v10 remoteObjectProxyWithErrorHandler:v11];
      _Block_release(v11);
      [v12 showChargingStatus];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "ignore showChargingStatus, UI updates disabled for current session state", v15, 2u);
    }
  }
}

uint64_t sub_10060491C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_100026AC0(v3, v5);
    v15 = 1729;

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7 = String.hashValue.getter();

    swift_beginAccess();
    v8 = sub_10046E4E8(&v15, v7);
    swift_endAccess();
    if (v8)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureMyBTAddressAvailable completed");
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009865B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "ensureMyBTAddressAvailable - bluetoothAddressData = nil", v13, 2u);
    }

    sub_100624918();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

void sub_100604B60()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress + 8) >> 60 == 15)
  {
    v46 = v4;
    v8 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v50 = v10;
    v51 = v12;
    sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    Optional.unwrap(_:file:line:)();
    sub_10028BCC0(v50, v51);
    v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider);
    if (v13)
    {
      if (*(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
      {
        v14 = v3;
        v15 = v53;
        v47 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider;
        v48 = v52;
        v16 = v13;

        v17 = String._bridgeToObjectiveC()();

        v18 = *(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
        v19 = *(v18 + 8);
        if (v19 >> 60 != 15)
        {
          v20 = *v18;
          sub_100294008(*v18, *(v18 + 8));
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10028BCC0(v20, v19);
          [v16 startBLEUpdates:v17 blePairingUUID:isa pairType:1 bRadioUpdatesOn:1 bPairInfoUpdatesOn:1];

          *(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 1;
          v22 = v7;
          if (qword_100973B58 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_10000C4AC(v23, qword_1009865B0);
          v24 = v48;
          sub_100294008(v48, v15);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          sub_100026AC0(v24, v15);
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v45 = v22;
            v29 = v28;
            v49 = v28;
            v50 = v24;
            *v27 = 136315138;
            v52 = 0;
            v53 = 0xE000000000000000;
            v51 = v15;
            v30 = v46;
            (*(v14 + 104))(v6, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v46);
            sub_100423B84();
            DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
            v31 = v30;
            v24 = v48;
            (*(v14 + 8))(v6, v31);
            v32 = sub_10000C4E4(v52, v53, &v49);

            *(v27 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v25, v26, "ensureMyAddressSent - sent myAddress: %s", v27, 0xCu);
            sub_10000C60C(v29);
            v22 = v45;
          }

          v33 = *(v1 + v47);
          if (v33)
          {
            if (*(*(v1 + v22) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
            {
              v34 = v33;

              v35 = String._bridgeToObjectiveC()();

              v36 = *(v1 + v22) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
              v37 = *(v36 + 8);
              if (v37 >> 60 != 15)
              {
                v38 = *v36;
                sub_100294008(*v36, *(v36 + 8));
                v39 = Data._bridgeToObjectiveC()().super.isa;
                sub_10028BCC0(v38, v37);
                v40 = Data._bridgeToObjectiveC()().super.isa;
                [v34 deviceUpdatePairingInfo:v35 blePairingUUID:v39 pairType:1 pairInfo:v40];

                v41 = (*(v1 + v22) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress);
                v42 = *v41;
                v43 = v41[1];
                *v41 = v24;
                v41[1] = v15;

                sub_10028BCC0(v42, v43);

                return;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1006050AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v15 = 1734;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v15, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureAllDataFromB332 called");
  }

  v6 = *(v1 + v2);
  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
  if (v7 >> 60 == 15 || (v8 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8), v8 >> 60 == 15))
  {
    sub_100624918();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  else
  {
    v4 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
    v10 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v15 = 1739;
    sub_1002A9924(v4, v7);
    sub_1002A9924(v10, v8);

    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = String.hashValue.getter();

    swift_beginAccess();
    v13 = sub_10046E4E8(&v15, v12);
    swift_endAccess();
    if (v13)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureAllDataFromB332 completed");
    }
  }

  return v4;
}

void sub_100605330(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009865B0);
  sub_100294008(a1, a2);
  sub_100294008(a3, a4);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v14 = *(a3 + 16);
      v13 = *(a3 + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v12 = BYTE6(a4);
LABEL_15:
      *(v10 + 4) = v12;
      v16 = v10;
      sub_100026AC0(a1, a2);
      sub_100026AC0(a3, a4);
      _os_log_impl(&_mh_execute_header, oslog, v9, "COUNT: %ld", v16, 0xCu);

      goto LABEL_16;
    }

    LODWORD(v12) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      return;
    }

    v12 = v12;
    goto LABEL_15;
  }

  sub_100026AC0(a1, a2);
  sub_100026AC0(a3, a4);
LABEL_16:
}

void sub_1006054DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v52[0] = 0xD000000000000057;
  v52[1] = 0x80000001007995E0;
  v53 = 1456;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v53, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureDiscovered called");
  }

  v6 = *&v1[v2];
  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (!v7)
  {
    sub_100624918();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return;
  }

  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover))
  {
    v8 = v7;
    return;
  }

  *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover) = 1;
  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8))
  {
    v10 = v7;

    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = v7;
    v11 = 0;
  }

  [v7 tag:v11];

  v13 = String._bridgeToObjectiveC()();
  [v7 tag:v13];

  v14 = *&v1[v2];
  if ((*(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) != 0 || (*(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v15 = String._bridgeToObjectiveC()();
    [v7 tag:v15];

    v14 = *&v1[v2];
  }

  v51 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v16 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];

  v17 = [v16 sharedPairingAgent];
  if (!v17)
  {
    goto LABEL_49;
  }

  v18 = v17;
  v19 = [v17 isPeerPaired:v7];

  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired) = v19;

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_1009865B0);
  v21 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v52[0] = v25;
    v26 = *&v1[v2];
    *v24 = 136315138;
    v27 = *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v28 = 1702195828;
    if ((v27 & 1) == 0)
    {
      v28 = 0x65736C6166;
    }

    v29 = 0xE500000000000000;
    if (v27)
    {
      v29 = 0xE400000000000000;
    }

    if (v27 == 2)
    {
      v30 = 0xD000000000000013;
    }

    else
    {
      v30 = v28;
    }

    if (v27 == 2)
    {
      v31 = 0x8000000100799820;
    }

    else
    {
      v31 = v29;
    }

    v32 = sub_10000C4E4(v30, v31, v52);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "ensureDiscovered completed. isPaired? %s", v24, 0xCu);
    sub_10000C60C(v25);
  }

  sub_1006040C8();
  v33 = *&v1[v2];
  v34 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
  if (v34 >> 60 == 15)
  {
    goto LABEL_50;
  }

  v35 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
  v36 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_46;
    }

    v39 = v35 + 16;
    v37 = *(v35 + 16);
    v38 = *(v39 + 8);
    v40 = __OFSUB__(v38, v37);
    v41 = v38 - v37;
    if (!v40)
    {
      if (v41 != 32)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v36)
  {
    v40 = __OFSUB__(HIDWORD(v35), v35);
    v42 = HIDWORD(v35) - v35;
    if (!v40)
    {
      if (v42 == 32)
      {
        goto LABEL_39;
      }

LABEL_46:

      return;
    }

    goto LABEL_48;
  }

  if (BYTE6(v34) != 32)
  {
    goto LABEL_46;
  }

LABEL_39:
  v43 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
  if (v43 == 2)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v43)
  {
    goto LABEL_46;
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Enabling OOBP for B332", v46, 2u);
  }

  v47 = [*&v1[v51] sharedPairingAgent];
  if (!v47)
  {
    goto LABEL_52;
  }

  v48 = v47;
  [v47 setOOBPairingEnabled:0 forPeer:v7];

  v49 = [*&v1[v51] sharedPairingAgent];
  if (v49)
  {
    v50 = v49;
    [v49 setOOBPairingEnabled:1 forPeer:v7];

    goto LABEL_46;
  }

LABEL_53:
  __break(1u);
}

void sub_100605AEC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v87 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v89 = *(*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v6 = v89;
  sub_10028088C(&unk_100987130, &qword_10080DAA0);
  Optional.unwrap(_:file:line:)();

  v7 = *&v0[v5];
  v8 = v88[0];
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) > 1u)
  {
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) != 2)
    {
      v21 = v88[0];
LABEL_20:

      return;
    }

LABEL_12:
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8))
    {

      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v8 tag:v22];

    v23 = String._bridgeToObjectiveC()();
    [v8 tag:v23];

    [v8 setDelegate:v0];
    [v8 discoverServices:0];
    *(*&v0[v5] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 3;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_1009865B0);
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, v25, "ensureConnected completed", v26, 2u);
    }

    goto LABEL_20;
  }

  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState))
  {
    if ([v88[0] state] != 2)
    {
LABEL_51:
      sub_100624918();
      swift_allocError();
      *v77 = 1;
      swift_willThrow();

      return;
    }

    v7 = *&v0[v5];
    *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 2;
    goto LABEL_12;
  }

  v83 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_1009865B0);
  v11 = v1;
  v84 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v85 = v5;
  v86 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v88[0] = v16;
    *v15 = 136315138;
    v17 = sub_1005F3200();
    v19 = v18;

    if (!v19)
    {
      __break(1u);
      goto LABEL_55;
    }

    v20 = sub_10000C4E4(v17, v19, v88);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "ensureConnected - Start connecting!!! withRandom: %s", v15, 0xCu);
    sub_10000C60C(v16);

    v5 = v85;
    v8 = v86;
  }

  else
  {
  }

  v27 = v11;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v81 = v27;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v88[0] = v31;
    *v30 = 136315138;
    v32 = *(*&v1[v5] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v33 = 1702195828;
    if ((v32 & 1) == 0)
    {
      v33 = 0x65736C6166;
    }

    v34 = 0xE500000000000000;
    if (v32)
    {
      v34 = 0xE400000000000000;
    }

    if (v32 == 2)
    {
      v35 = 0xD000000000000013;
    }

    else
    {
      v35 = v33;
    }

    if (v32 == 2)
    {
      v36 = 0x8000000100799820;
    }

    else
    {
      v36 = v34;
    }

    v37 = sub_10000C4E4(v35, v36, v88);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "is paired?: %s", v30, 0xCu);
    sub_10000C60C(v31);
    v8 = v86;
  }

  v38 = v8;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = [v38 state];

    _os_log_impl(&_mh_execute_header, v39, v40, "connecting state: : %ld", v41, 0xCu);
  }

  else
  {

    v39 = v38;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "attempting central.connect...", v44, 2u);
  }

  v82 = v1;

  v45 = v38;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  v48 = &selRef_finishedEventForRecordID_withResults_;
  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v88[0] = v80;
    *v49 = 136315138;
    v50 = [v45 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = UUID.uuidString.getter();
    v53 = v52;
    v54 = v87;
    v55 = v83;
    (*(v87 + 8))(v4, v83);
    v56 = sub_10000C4E4(v51, v53, v88);
    v48 = &selRef_finishedEventForRecordID_withResults_;

    *(v49 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "UUID: %s", v49, 0xCu);
    sub_10000C60C(v80);
  }

  else
  {

    v55 = v83;
    v54 = v87;
  }

  v57 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v58 = v81;
  [*&v81[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] connectPeripheral:v45 options:0];
  v59 = [v45 v48[402]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
  swift_beginAccess();
  v61 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *&v58[v60];
  *&v58[v60] = 0x8000000000000000;
  sub_10057C64C(v61, v4, isUniquelyReferenced_nonNull_native);
  (*(v54 + 8))(v4, v55);
  *&v58[v60] = v89;
  swift_endAccess();
  [v58 stopScanning];
  v63 = v85;
  v64 = v82;
  v65 = *(*&v82[v85] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v66 = String._bridgeToObjectiveC()();
  LOBYTE(v65) = [v65 BOOLForKey:v66];

  if (v65)
  {
    goto LABEL_50;
  }

  v67 = *(*&v64[v63] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v68 = String._bridgeToObjectiveC()();
  v69 = [v67 BOOLForKey:v68];

  if (v69)
  {
    goto LABEL_50;
  }

  v70 = [*&v58[v57] sharedPairingAgent];
  if (v70)
  {
    v71 = v70;
    v72 = sub_1005FEA1C();

    if (v72 >> 62)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();

      if (v78)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v73)
      {
LABEL_47:
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Woah! isFirstEverPair but !pairedB332s().isEmpty!", v76, 2u);
        }
      }
    }

LABEL_50:
    *(*&v64[v63] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 1;
    v8 = v86;
    goto LABEL_51;
  }

LABEL_55:
  __break(1u);
}

void sub_1006065A0()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if ((*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ensurePairingStarted called", v9, 2u);
    }

    v10 = *(v1 + v5);
    *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) = 1;
    v11 = *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
      v13 = v11;
      v14 = [v12 sharedPairingAgent];
      if (v14)
      {
        v15 = v14;
        v16 = v13;
        [v15 pairPeer:v16];

        v17 = [v16 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = type metadata accessor for UUID();
        (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
        v19 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
        swift_beginAccess();
        sub_10000C788(v4, v1 + v19, &unk_100976120, &qword_1007F9260);
        swift_endAccess();
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
  v23[1] = 0xD000000000000057;
  v23[2] = 0x80000001007995E0;
  v23[0] = 1538;

  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21 = String.hashValue.getter();

  swift_beginAccess();
  v22 = sub_10046E4E8(v23, v21);
  swift_endAccess();
  if (v22)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingStarted completed");
  }
}

void sub_100606900()
{
  v142 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UUID();
  v144 = *(v2 - 8);
  __chkstk_darwin(v2);
  v143 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v4);
  v6 = v132 - v5;
  v7 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v132 - v12;
  __chkstk_darwin(v11);
  v15 = v132 - v14;
  v147 = v0;
  v148 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  *&v150 = 0xD000000000000057;
  v145 = 0x80000001007995E0;
  *(&v150 + 1) = 0x80000001007995E0;
  *&v154[0] = 1543;

  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = String.hashValue.getter();

  swift_beginAccess();
  v18 = sub_10046E4E8(v154, v17);
  swift_endAccess();
  if (v18)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingRequestHandled called");
  }

  v19 = v147;
  v20 = *&v147[v148];
  if (*(v20 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest))
  {
    goto LABEL_4;
  }

  v24 = *(v20 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
  if (!v24 || (v25 = (v20 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType), (v25[1] & 1) != 0))
  {
    sub_100624918();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    return;
  }

  v137 = *v25;
  v136 = v24;
  v138 = v24;
  v27 = [v138 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = 1;
  v139 = v144[7];
  (v139)(v15, 0, 1, v2);
  v29 = *(*&v19[v148] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v29)
  {
    v30 = [v29 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  (v139)(v13, v28, 1, v2);
  v31 = *(v4 + 48);
  sub_10000FF90(v15, v6, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v13, &v6[v31], &unk_100976120, &qword_1007F9260);
  v32 = v144[6];
  if (v32(v6, 1, v2) == 1)
  {
    sub_100005508(v13, &unk_100976120, &qword_1007F9260);
    sub_100005508(v15, &unk_100976120, &qword_1007F9260);
    v33 = v32(&v6[v31], 1, v2);
    v34 = v147;
    if (v33 == 1)
    {
      sub_100005508(v6, &unk_100976120, &qword_1007F9260);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  sub_10000FF90(v6, v10, &unk_100976120, &qword_1007F9260);
  if (v32(&v6[v31], 1, v2) == 1)
  {
    sub_100005508(v13, &unk_100976120, &qword_1007F9260);
    sub_100005508(v15, &unk_100976120, &qword_1007F9260);
    (v144[1])(v10, v2);
    v34 = v147;
LABEL_17:
    sub_100005508(v6, &unk_100987030, &qword_1007F9330);
    goto LABEL_18;
  }

  v47 = v144;
  v48 = &v6[v31];
  v49 = v143;
  (v144[4])(v143, v48, v2);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v139) = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = v47[1];
  v50(v49, v2);
  sub_100005508(v13, &unk_100976120, &qword_1007F9260);
  sub_100005508(v15, &unk_100976120, &qword_1007F9260);
  v50(v10, v2);
  sub_100005508(v6, &unk_100976120, &qword_1007F9260);
  v34 = v147;
  if (v139)
  {
LABEL_24:
    *(*&v34[v148] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) = 1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    v52 = sub_10000C4AC(v51, qword_1009865B0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "ensurePairingRequestHandled", v55, 2u);
    }

    v56 = *&v34[v148] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd;
    v57 = *(v56 + 8);
    if (v57 >> 60 == 15)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v58 = *v56;
    sub_1002A9924(*v56, *(v56 + 8));
    sub_100294008(v58, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = v57 >> 62;
    if (!os_log_type_enabled(v59, v60))
    {
      sub_10028BCC0(v58, v57);
LABEL_42:

      v68 = objc_opt_self();
      if ([v68 enableOOBPCredentialLogging])
      {
        sub_100294008(v58, v57);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        sub_10028BCC0(v58, v57);
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *&v153 = v139;
          *v71 = 136315138;
          *&v150 = 0;
          *(&v150 + 1) = 0xE000000000000000;
          *&v154[0] = v58;
          *(&v154[0] + 1) = v57;
          v143 = v68;
          v72 = v141;
          v73 = *(v141 + 104);
          v144 = v52;
          v74 = v140;
          LODWORD(v136) = v70;
          v75 = v142;
          v73(v140, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v142);
          sub_100423B84();
          DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
          v76 = v72;
          v68 = v143;
          v52 = v144;
          (*(v76 + 8))(v74, v75);
          v77 = sub_10000C4E4(v150, *(&v150 + 1), &v153);

          *(v71 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v69, v136, "pairData: %s", v71, 0xCu);
          sub_10000C60C(v139);
        }
      }

      sub_10028088C(&unk_100987070, &unk_10080DA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v79;
      *(inited + 48) = v58;
      *(inited + 56) = v57;
      sub_100294008(v58, v57);
      v80 = sub_100011040(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
      if (v61 > 1)
      {
        if (v61 != 2)
        {
          goto LABEL_75;
        }

        v83 = *(v58 + 16);
        v82 = *(v58 + 24);
        v66 = __OFSUB__(v82, v83);
        v81 = v82 - v83;
        if (!v66)
        {
LABEL_55:
          if (v81 == 32)
          {
            v143 = v80;
            v84 = sub_1002FB5DC(99, 0xE100000000000000);
            if ((v84 & 0x100) != 0)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v85 = v84;
            v144 = v52;
            v86 = sub_1002FB5DC(114, 0xE100000000000000);
            if ((v86 & 0x100) != 0)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v87 = v86;
            *&v153 = v58;
            *(&v153 + 1) = v57;
            v88 = sub_10028088C(&qword_100987080, &qword_10080DA10);
            v151 = v88;
            v89 = sub_100011630(&qword_100987088, &qword_100987080, &qword_10080DA10, &protocol conformance descriptor for <A> CollectionOfOne<A>);
            v152 = v89;
            LOBYTE(v150) = v85;
            LOBYTE(v154[0]) = *sub_10002CDC0(&v150, v88);
            sub_100294008(v58, v57);
            Data._Representation.replaceSubrange(_:with:count:)();
            sub_10000C60C(&v150);
            v151 = v88;
            v152 = v89;
            LOBYTE(v150) = v87;
            LOBYTE(v154[0]) = *sub_10002CDC0(&v150, v88);
            Data._Representation.replaceSubrange(_:with:count:)();
            sub_10000C60C(&v150);
            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;
            v93 = v153;
            v151 = &type metadata for Data;
            v150 = v153;
            sub_1000106E0(&v150, v154);
            sub_100294008(v93, *(&v93 + 1));
            v94 = v143;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v149 = v94;
            sub_100011170(v154, v90, v92, isUniquelyReferenced_nonNull_native);

            v80 = v149;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "Received full OOBP!", v98, 2u);
            }

            v100 = *(&v153 + 1);
            v99 = v153;
            goto LABEL_61;
          }

          if (v61 == 2)
          {
            v103 = *(v58 + 16);
            v102 = *(v58 + 24);
            v66 = __OFSUB__(v102, v103);
            v101 = v102 - v103;
            if (!v66)
            {
LABEL_70:
              if (v101 != 16)
              {
                goto LABEL_75;
              }

              v104 = v68;
              v144 = v52;
              v105 = Data._Representation.subscript.getter();
              v143 = v106;
              v107 = v146;
              v108 = sub_1002F186C(v105, v106);
              v146 = v107;
              if (v107)
              {
LABEL_86:
                swift_unexpectedError();
                __break(1u);
                return;
              }

              v109 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v108 % 0xF4240];
              v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;
              v151 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
              *&v150 = v109;
              sub_1000106E0(&v150, v154);
              v113 = v109;
              v114 = swift_isUniquelyReferenced_nonNull_native();
              *&v153 = v80;
              sub_100011170(v154, v110, v112, v114);

              v80 = v153;
              if ([v104 enableOOBPCredentialLogging])
              {
                v115 = v113;
                v116 = v143;
                sub_100294008(v105, v143);
                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.default.getter();

                sub_100026AC0(v105, v116);
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  LODWORD(v136) = v118;
                  v120 = v119;
                  v121 = swift_slowAlloc();
                  v135 = v121;
                  v144 = swift_slowAlloc();
                  *&v153 = v144;
                  v134 = v120;
                  *v120 = 138412546;
                  *(v120 + 4) = v115;
                  *v121 = v115;
                  *(v120 + 12) = 2080;
                  *&v150 = 0;
                  *(&v150 + 1) = 0xE000000000000000;
                  *&v154[0] = v105;
                  *(&v154[0] + 1) = v116;
                  v122 = v141;
                  v123 = *(v141 + 104);
                  v139 = v105;
                  v124 = v140;
                  v125 = v142;
                  v123(v140, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v142);
                  v132[1] = sub_100423B84();
                  v133 = v115;
                  DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
                  (*(v122 + 8))(v124, v125);
                  v126 = sub_10000C4E4(v150, *(&v150 + 1), &v153);

                  v127 = v134;
                  *(v134 + 14) = v126;
                  _os_log_impl(&_mh_execute_header, v117, v136, "passkey: %@.\nFirst four bytes: %s.", v127, 0x16u);
                  sub_100005508(v135, &qword_100975400, &qword_1007F65D0);

                  sub_10000C60C(v144);

                  sub_100026AC0(v139, v116);
LABEL_75:
                  v128 = [*&v147[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
                  if (v128)
                  {
                    v129 = v128;
                    v130 = v138;
                    sub_1003CE294(v80);

                    isa = Dictionary._bridgeToObjectiveC()().super.isa;

                    [v129 respondToPairingRequest:v130 type:v137 accept:1 data:isa];

                    sub_10028BCC0(v58, v57);
LABEL_4:
                    *&v150 = 0xD000000000000057;
                    *(&v150 + 1) = v145;
                    *&v154[0] = 1599;

                    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v21);

                    v22 = String.hashValue.getter();

                    swift_beginAccess();
                    v23 = sub_10046E4E8(v154, v22);
                    swift_endAccess();
                    if (v23)
                    {
                      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingRequestHandled completed");
                    }

                    return;
                  }

                  goto LABEL_83;
                }

                v99 = v105;
                v100 = v116;
              }

              else
              {

                v99 = v105;
                v100 = v143;
              }

LABEL_61:
              sub_100026AC0(v99, v100);
              goto LABEL_75;
            }

            __break(1u);
          }

          else if (v61 == 1)
          {
            LODWORD(v101) = HIDWORD(v58) - v58;
            if (!__OFSUB__(HIDWORD(v58), v58))
            {
              v101 = v101;
              goto LABEL_70;
            }

LABEL_81:
            __break(1u);
          }

          v101 = BYTE6(v57);
          goto LABEL_70;
        }

        __break(1u);
      }

      else if (!v61)
      {
        v81 = BYTE6(v57);
        goto LABEL_55;
      }

      LODWORD(v81) = HIDWORD(v58) - v58;
      if (!__OFSUB__(HIDWORD(v58), v58))
      {
        v81 = v81;
        goto LABEL_55;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v62 = swift_slowAlloc();
    *v62 = 134217984;
    if (v61 > 1)
    {
      if (v61 != 2)
      {
        v63 = 0;
        goto LABEL_41;
      }

      v65 = *(v58 + 16);
      v64 = *(v58 + 24);
      v66 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (!v66)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v61)
    {
      v63 = BYTE6(v57);
LABEL_41:
      *(v62 + 4) = v63;
      v67 = v62;
      sub_10028BCC0(v58, v57);
      _os_log_impl(&_mh_execute_header, v59, v60, "pairData length: %ld", v67, 0xCu);

      goto LABEL_42;
    }

    LODWORD(v63) = HIDWORD(v58) - v58;
    if (__OFSUB__(HIDWORD(v58), v58))
    {
      goto LABEL_80;
    }

    v63 = v63;
    goto LABEL_41;
  }

LABEL_18:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_1009865B0);
  v36 = v138;
  v37 = v34;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    *(v40 + 4) = v36;
    *v41 = v136;
    v42 = *&v34[v148];
    *(v40 + 12) = 2112;
    v43 = *(v42 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
    *(v40 + 14) = v43;
    v41[1] = v43;
    v44 = v36;
    v45 = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "Peer requesting pairing: %@\nbut storePeripheral is different: %@", v40, 0x16u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  sub_100624918();
  swift_allocError();
  *v46 = 1;
  swift_willThrow();
}

void sub_100607E54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v27 = 1761;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v27, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingResultHandled called");
  }

  v6 = *(v1 + v2);
  if (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult))
  {
    goto LABEL_4;
  }

  LODWORD(v10) = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed);
  v11 = 1;
  if (v10 == 2)
  {
LABEL_21:
    sub_100624918();
    swift_allocError();
    *v25 = v11;
    swift_willThrow();
    return;
  }

  *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult) = 1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009865B0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "ensurePairingResultHandled - pairingResult obtained", v15, 2u);
  }

  if (*(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) == 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "stopBLEUpdates after pair result", v18, 2u);
    }

    v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider);
    if (v19)
    {
      if (*(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
      {
        v26 = v10;
        v20 = v19;

        v21 = String._bridgeToObjectiveC()();

        v22 = *(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
        v23 = *(v22 + 8);
        if (v23 >> 60 != 15)
        {
          v10 = *v22;
          sub_100294008(*v22, *(v22 + 8));
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10028BCC0(v10, v23);
          [v20 stopBLEUpdates:v21 blePairingUUID:isa];

          *(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 0;
          LOBYTE(v10) = v26;
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  if ((v10 & 1) == 0)
  {
    v11 = 3;
    goto LABEL_21;
  }

LABEL_4:
  v27 = 1782;

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = String.hashValue.getter();

  swift_beginAccess();
  v9 = sub_10046E4E8(&v27, v8);
  swift_endAccess();
  if (v9)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingResultHandled completed");
  }
}

double sub_1006082D8()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissChargingStatus", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v9[4] = sub_10060E9A4;
    v9[5] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1004502D4;
    v9[3] = &unk_1008EA738;
    v7 = _Block_copy(v9);
    v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
    _Block_release(v7);
    [v8 dismissChargingStatus];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10060847C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v11 = 1787;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v11, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureBatteryInfo called");
  }

  if (*(*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) || (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8) & 1) == 0)
  {
    v11 = 1791;

    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9 = String.hashValue.getter();

    swift_beginAccess();
    v10 = sub_10046E4E8(&v11, v9);
    swift_endAccess();
    if (v10)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureBatteryInfo completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

void sub_1006086B4()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "showSubsequentPairSuccess", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E98C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA878;
      v7 = _Block_copy(aBlock);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
      [v8 showSubsequentPairSuccess];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ignore showSubsequentPairSuccess, UI updates disabled for current session state", v11, 2u);
    }
  }
}

id sub_100608954()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v113 = &v102 - v10;
  v114 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v11 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if ((*(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) != 0 || *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) != 2)
  {
    v111 = result;
    v12 = &unk_1009A0000;
    if ((*(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) & 1) == 0)
    {
      *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) = 1;
      v110 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
      result = [*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
      if (!result)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_1005FEA1C();

      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v112 = v3;
      v102 = v1;
      if (v15)
      {
        v109 = v14 & 0xC000000000000001;
        v106 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
        swift_beginAccess();
        v16 = 0;
        v103 = v14 & 0xFFFFFFFFFFFFFF8;
        v17 = (v5 + 8);
        v107 = v14;
        v108 = v8;
        v105 = v15;
        while (1)
        {
          if (v109)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v16 >= *(v103 + 16))
            {
              goto LABEL_46;
            }

            v18 = *(v14 + 8 * v16 + 32);
          }

          v19 = v18;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v115 = (v16 + 1);
          v20 = *&v3[v114];

          v21 = v19;
          v22 = [v21 identifier];
          v23 = v113;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
          swift_beginAccess();
          v25 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117[0] = *(v20 + v24);
          *(v20 + v24) = 0x8000000000000000;
          sub_10057C64C(v25, v23, isUniquelyReferenced_nonNull_native);
          v27 = *v17;
          v28 = v23;
          v29 = v111;
          (*v17)(v28, v111);
          *(v20 + v24) = v117[0];
          v3 = v112;
          swift_endAccess();
          v30 = v108;

          v31 = [v25 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(*&v3[v106] + 16))
          {

            sub_10000EBD4(v30);
            v32 = v30;
            v34 = v33;
            v27(v32, v29);

            if (v34)
            {
              v35 = *&v3[v114];

              v36 = [v25 identifier];
              v104 = v27;
              v37 = v113;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v38 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
              swift_beginAccess();
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v117[0] = *(v35 + v38);
              *(v35 + v38) = 0x8000000000000000;
              sub_10057C64C(v25, v37, v39);
              v104(v37, v29);
              *(v35 + v38) = v117[0];
              v3 = v112;
              swift_endAccess();
            }

            else
            {
            }
          }

          else
          {

            v27(v30, v29);
          }

          result = [*(&v110->isa + v3) sharedPairingAgent];
          v14 = v107;
          if (!result)
          {
            break;
          }

          v40 = result;
          [result unpairPeer:v25];

          ++v16;
          if (v115 == v105)
          {

            v2 = v102;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

LABEL_23:
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_1009865B0);
      v42 = v3;
      v43 = v3;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v113) = v45;
        v47 = v46;
        v115 = swift_slowAlloc();
        v118[0] = v115;
        *v47 = 136315650;
        v110 = v44;
        swift_beginAccess();
        v109 = sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
        sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v48 = Dictionary.description.getter();
        v50 = v49;

        v51 = sub_10000C4E4(v48, v50, v118);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        swift_beginAccess();

        v52 = Dictionary.description.getter();
        v54 = v53;

        v55 = sub_10000C4E4(v52, v54, v118);

        *(v47 + 14) = v55;
        *(v47 + 22) = 2080;
        swift_beginAccess();

        v56 = Dictionary.description.getter();
        v58 = v57;

        v59 = v56;
        v2 = v102;
        v60 = sub_10000C4E4(v59, v58, v118);

        *(v47 + 24) = v60;
        v61 = v110;
        _os_log_impl(&_mh_execute_header, v110, v113, "ensureAllUnpaired called. needingUnpair: %s, needingDisconnect: %s, peripheralsIConnectedTo: %s", v47, 0x20u);
        swift_arrayDestroy();

        v12 = &unk_1009A0000;
        v3 = v112;
      }

      else
      {

        v3 = v42;
        v12 = &unk_1009A0000;
      }
    }

    v62 = v114;
    v63 = *&v3[v114];
    v64 = v12[452];
    v65 = v12;
    swift_beginAccess();
    v66 = *(*(v63 + v64) + 16);

    v68 = v2;
    v69 = sub_10061FC58(v67);
    v102 = v68;

    *(v63 + v64) = v69;

    v70 = *&v3[v62];
    v71 = v65[452];
    swift_beginAccess();
    if (v66 != *(*(v70 + v71) + 16))
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000C4AC(v72, qword_1009865B0);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Removed disconnected peripheral for which we have not yet gotten a disconnect delegate message", v75, 2u);
      }
    }

    v76 = *&v3[v114];
    v77 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
    swift_beginAccess();
    if (*(*(v76 + v77) + 16) || (v78 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect, swift_beginAccess(), *(*(v76 + v78) + 16)))
    {
      if (qword_100973B58 != -1)
      {
LABEL_47:
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_10000C4AC(v79, qword_1009865B0);
      v80 = v3;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();

      v115 = v81;
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        LODWORD(v110) = v82;
        v84 = v83;
        v113 = swift_slowAlloc();
        v119 = v113;
        *v84 = 136315650;
        v109 = v80;
        swift_beginAccess();
        v108 = sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
        sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v85 = Dictionary.description.getter();
        v87 = v86;

        v88 = sub_10000C4E4(v85, v87, &v119);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2080;
        swift_beginAccess();

        v89 = Dictionary.description.getter();
        v91 = v90;

        v92 = sub_10000C4E4(v89, v91, &v119);

        *(v84 + 14) = v92;
        *(v84 + 22) = 2080;
        swift_beginAccess();

        v93 = Dictionary.description.getter();
        v95 = v94;

        v96 = sub_10000C4E4(v93, v95, &v119);

        *(v84 + 24) = v96;
        v97 = v115;
        _os_log_impl(&_mh_execute_header, v115, v110, "ensureAllUnpaired - In progress! needingUnpair: %s, needingDisconnect: %s, peripheralsIConnectedTo: %s", v84, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_100624918();
      swift_allocError();
      *v98 = 1;
      return swift_willThrow();
    }

    else
    {
      v116[3] = 0xD000000000000057;
      v116[4] = 0x80000001007995E0;
      v116[0] = 1275;

      v99._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v99);

      v100 = String.hashValue.getter();

      swift_beginAccess();
      v101 = sub_10046E4E8(v116, v100);
      swift_endAccess();
      if (v101)
      {
        sub_10061F624(&static os_log_type_t.default.getter, "ensureAllUnpaired completed");
      }
    }
  }

  return result;
}

uint64_t sub_10060969C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v20 = 0xD000000000000057;
  v21 = 0x80000001007995E0;
  v22 = 1293;

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7 = String.hashValue.getter();

  swift_beginAccess();
  v8 = sub_10046E4E8(&v22, v7);
  swift_endAccess();
  if (v8)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "checkFindMyStatus called");
  }

  v9 = *(v1 + v5);
  if (*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus))
  {
    goto LABEL_4;
  }

  if (*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus))
  {
LABEL_10:
    sub_100624918();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  v14 = sub_100609B64();
  if (v14[2])
  {
    *(*(v1 + v5) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus) = 1;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v17[5] = v14;
    sub_1002B3098(0, 0, v4, &unk_10080DA30, v17);

    goto LABEL_10;
  }

  *(*(v1 + v5) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 1;
LABEL_4:
  v20 = 0xD000000000000057;
  v21 = 0x80000001007995E0;
  v22 = 1314;

  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = String.hashValue.getter();

  swift_beginAccess();
  v12 = sub_10046E4E8(&v22, v11);
  swift_endAccess();
  if (v12)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "checkFindMyStatus completed");
  }
}

uint64_t sub_100609A10()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v6 && (*(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) == 0 && *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) == 4 && *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = v6;
    sub_1002B3098(0, 0, v4, &unk_10080D9E8, v8);
  }

  return result;
}

void *sub_100609B64()
{
  v37 = type metadata accessor for UUID();
  v1 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) sharedPairingAgent];
  if (!result)
  {
    goto LABEL_40;
  }

  v5 = result;
  v6 = sub_1005FEA1C();

  v38 = _swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v36 = v6 & 0xC000000000000001;
    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    v10 = v3;
    while (1)
    {
      if (v36)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_30;
        }

        v11 = *(v6 + v8 + 4);
      }

      v12 = v11;
      v3 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v6;
      v14 = String._bridgeToObjectiveC()();
      v15 = [v12 hasTag:v14];

      if (v15)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v6 = v13;
      ++v8;
      if (v3 == i)
      {
        v3 = v10;
        v16 = v38;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_17:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *(v16 + 16);
    if (v17)
    {
LABEL_20:
      v38 = _swiftEmptyArrayStorage;
      result = sub_100290034(0, v17 & ~(v17 >> 63), 0);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v18 = 0;
        v19 = v38;
        v20 = v16;
        v36 = v16 & 0xC000000000000001;
        do
        {
          if (v36)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v20 + 8 * v18 + 32);
          }

          v22 = v21;
          v23 = [v21 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = v19;
          v24 = v3;
          v26 = v19[2];
          v25 = v19[3];
          if (v26 >= v25 >> 1)
          {
            sub_100290034((v25 > 1), v26 + 1, 1);
            v19 = v38;
          }

          ++v18;
          v19[2] = v26 + 1;
          (*(v1 + 32))(v19 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v26, v24, v37);
          v3 = v24;
          v20 = v16;
        }

        while (v17 != v18);

        goto LABEL_34;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_34:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009865B0);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315138;
    v32 = Array.description.getter();
    v34 = sub_10000C4E4(v32, v33, &v38);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Found paired Apple Pencil Pros: %s", v30, 0xCu);
    sub_10000C60C(v31);
  }

  return v19;
}

uint64_t sub_100609FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10060A01C, 0, 0);
}

uint64_t sub_10060A01C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_10060A140;
    v6 = v0[6];

    return sub_10060A23C(v6, v3, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10060A140()
{

  return _swift_task_switch(sub_10044AF7C, 0, 0);
}

uint64_t sub_10060A23C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 73) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_10060A264, 0, 0);
}

uint64_t sub_10060A264()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if any paired Apple Pencil Pros are FindMy-paired...", v4, 2u);
  }

  v5 = v0[2];

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10060A40C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 9, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_10080DA48, v6, &type metadata for Bool);
}

uint64_t sub_10060A40C()
{

  return _swift_task_switch(sub_10060A524, 0, 0);
}

uint64_t sub_10060A524(uint64_t a1)
{
  if (*(v1 + 72))
  {
    v2 = swift_task_alloc();
    *(v1 + 64) = v2;
    *v2 = v1;
    v2[1] = sub_10060A674;

    return sub_10060ABD8();
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No paired Apple Pencil Pros are FindMy-paired", v6, 2u);
    }

    sub_10060A8C4(0);
    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_10060A674(char a1)
{
  *(*v1 + 74) = a1;

  return _swift_task_switch(sub_10060A774, 0, 0);
}

uint64_t sub_10060A774(uint64_t a1)
{
  v2 = *(v1 + 74);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Pencil being paired is already FindMy-paired to this account, assuming reattach and skipping alert", v6, 2u);
    }

    sub_10060A8C4(0);
  }

  else
  {
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "At least one paired Apple Pencil Pro is FindMy-paired, showing warning alert", v7, 2u);
    }

    v8 = *(v1 + 73);
    v9 = *(v1 + 24);

    sub_10060B614(v9, v8 & 1);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_10060A8C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100624D18;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EA9B8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_10060ABD8()
{
  v1[19] = v0;
  v2 = type metadata accessor for UUID();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10060AC98, 0, 0);
}

uint64_t sub_10060AC98()
{
  v34 = v0;
  v1 = *(v0[19] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v0[23] = v2;
  if (v2 && (v3 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType, (*(v3 + 8) & 1) == 0) && *v3 == 4)
  {
    v4 = objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession);
    v5 = v2;
    v32 = [v4 initWithPreviousState:0];
    v0[24] = v32;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[25] = sub_10000C4AC(v6, qword_1009865B0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v30 = v9;
      v11 = v0[21];
      v10 = v0[22];
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v13 = 136315138;
      v14 = [v7 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000C4E4(v15, v17, &v33);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v8, v30, "Checking if current Pencil (%s) is FindMy-paired to this account...", v13, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {
    }

    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[20];
    v24 = objc_opt_self();
    v25 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v27 = *(v22 + 8);
    v0[26] = v27;
    v0[27] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v21, v23);
    v28 = [v24 checkSerialNumberWithIdentifier:isa];
    v0[28] = v28;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10060B0E4;
    v29 = swift_continuation_init();
    v0[17] = sub_10028088C(&unk_1009870A8, &qword_10080DA60);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10060CF88;
    v0[13] = &unk_1008EA968;
    v0[14] = v29;
    [v32 pairingStatusWithRequest:v28 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v19 = v0[1];

    return v19(0);
  }
}

uint64_t sub_10060B0E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_10060B484;
  }

  else
  {
    v2 = sub_10060B1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060B1F4()
{
  v30 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = &selRef_setTargetQueue_;
  if (os_log_type_enabled(v4, v5))
  {
    v28 = *(v0 + 208);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v8 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v28(v7, v9);
    v15 = v12;
    v6 = &selRef_setTargetQueue_;
    v16 = sub_10000C4E4(v15, v14, &v29);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = [v3 pairingStatus];
    v18 = v17 == 2;
    if (v17 == 2)
    {
      v19 = 7562617;
    }

    else
    {
      v19 = 28526;
    }

    if (v18)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }

    v21 = sub_10000C4E4(v19, v20, &v29);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Got back from call to pairingStatus(with:) for identifier %s with result (is FindMy-paired to this account) %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v22 = *(v0 + 224);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  v25 = [v3 v6[163]];

  v26 = *(v0 + 8);

  return v26(v25 == 2);
}

uint64_t sub_10060B484(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[24];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get Pencil status with error: %@, falling back to unpaired", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v1[1];

  return v11(0);
}

void sub_10060B614(uint64_t a1, int a2)
{
  v5 = 0xEC0000006C69636ELL;
  v6 = 0x655020656C707041;
  v66 = type metadata accessor for Date();
  v61 = *(v66 - 8);
  v7 = __chkstk_darwin(v66);
  v57 = v8;
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v49 - v9;
  v10 = type metadata accessor for UUID();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = __chkstk_darwin(v10);
  v55 = v12;
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v49 - v13;
  v60 = a2;
  v59 = a1;
  v14 = String._bridgeToObjectiveC()();
  v15 = SFLocalizedStringForKey();

  if (v15)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v16;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = SFLocalizedStringForKey();

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v19 = swift_allocObject();
    v53 = xmmword_1007F5670;
    *(v19 + 16) = xmmword_1007F5670;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_100026764();
    *(v19 + 64) = v20;
    *(v19 + 32) = v6;
    *(v19 + 40) = v5;

    v54 = static String.localizedStringWithFormat(_:_:)();

    v21 = String._bridgeToObjectiveC()();
    v22 = SFLocalizedStringForKey();

    if (v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = swift_allocObject();
      *(v23 + 16) = v53;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = v20;
      *(v23 + 32) = v6;
      *(v23 + 40) = v5;
      static String.localizedStringWithFormat(_:_:)();

      v24 = String._bridgeToObjectiveC()();
      v25 = SFLocalizedStringForKey();

      *&v53 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
      v26 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
      v52 = v2;
      v50 = *(v63 + 16);
      v27 = v62;
      v50(v62, v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v64);
      v28 = v65;
      static Date.now.getter();
      v29 = [objc_allocWithZone(SFUserAlert) init];
      v30 = String._bridgeToObjectiveC()();

      [v29 setTitle:v30];

      v31 = String._bridgeToObjectiveC()();

      v51 = v29;
      [v29 setDefaultButtonTitle:v31];

      [v29 setAlternateButtonTitle:v25];
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = v61;
      v34 = v58;
      (*(v61 + 16))(v58, v28, v66);
      v35 = v56;
      v36 = v64;
      v50(v56, v27, v64);
      v37 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = v63;
      v40 = (*(v63 + 80) + v38 + 9) & ~*(v63 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v32;
      v42 = v34;
      v43 = v66;
      (*(v33 + 32))(v41 + v37, v42, v66);
      v44 = v41 + v38;
      *v44 = v59;
      *(v44 + 8) = v60 & 1;
      (*(v39 + 32))(v41 + v40, v35, v36);
      aBlock[4] = sub_100624C10;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F14B8;
      aBlock[3] = &unk_1008EA8F0;
      v45 = _Block_copy(aBlock);

      v46 = v51;
      [v51 setResponseHandler:v45];
      _Block_release(v45);
      [v46 present];
      (*(v33 + 8))(v65, v43);
      (*(v39 + 8))(v62, v36);
      v47 = *(v52 + v53);
      v48 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
      *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = v46;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10060BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_10028088C(&qword_1009870B8, &qword_10080DA68);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10060BE8C, 0, 0);
}

uint64_t sub_10060BE8C()
{
  v1 = *(v0 + 88);
  v2 = [objc_allocWithZone(SPOwnerInterface) init];
  v35 = [v2 ownerSession];
  *(v0 + 168) = v35;

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 128);
    v34 = **(v0 + 80);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v0 + 88) + v5;
    v32 = *(v4 + 72);
    v33 = v5;
    v30 = (*(v0 + 136) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v4 + 16);
    v29 = (v4 + 32);
    v7 = type metadata accessor for TaskPriority();
    v8 = *(v7 - 8);
    v28 = *(v8 + 56);
    v27 = (v8 + 48);
    v26 = (v8 + 8);
    do
    {
      v38 = v3;
      v11 = *(v0 + 160);
      v36 = *(v0 + 152);
      v12 = *(v0 + 144);
      v13 = *(v0 + 120);
      v28(v11, 1, 1, v7);
      v37 = v6;
      (*v31)(v12, v6, v13);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      (*v29)(v14 + v33, v12, v13);
      *(v14 + v30) = v35;
      sub_10000FF90(v11, v36, &qword_100976160, &qword_1007F8770);
      v16 = (*v27)(v36, 1, v7);
      swift_unknownObjectRetain();
      v17 = *(v0 + 152);
      if (v16 == 1)
      {
        sub_100005508(*(v0 + 152), &qword_100976160, &qword_1007F8770);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v26)(v17, v7);
        if (*v15)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_10080DA88;
      *(v21 + 24) = v14;

      if (v19 | v18)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 160);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v34;
      swift_task_create();

      sub_100005508(v10, &qword_100976160, &qword_1007F8770);
      v6 = v37 + v32;
      v3 = v38 - 1;
    }

    while (v38 != 1);
  }

  TaskGroup.makeAsyncIterator()();
  *(v0 + 185) = 0;
  v22 = sub_100011630(&qword_100987120, &qword_1009870B8, &qword_10080DA68, &protocol conformance descriptor for TaskGroup<A>.Iterator);
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *v23 = v0;
  v23[1] = sub_10060C2FC;
  v24 = *(v0 + 96);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 184, v24, v22);
}

uint64_t sub_10060C2FC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[13];
    v3 = v2[14];
    v5 = v2[12];

    (*(v4 + 8))(v3, v5);
    v6 = LongHash.init(storage:);
  }

  else
  {
    v6 = sub_10060C43C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10060C43C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 185);
  if (v1 == 2)
  {
    v3 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v3 = v2;
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 185) = (v2 | v1) & 1;
    v6 = sub_100011630(&qword_100987120, &qword_1009870B8, &qword_10080DA68, &protocol conformance descriptor for TaskGroup<A>.Iterator);
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_10060C2FC;
    v8 = *(v0 + 96);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 184, v8, v6);
  }
}

uint64_t sub_10060C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  v6 = type metadata accessor for UUID();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_10060C6AC, 0, 0);
}

uint64_t sub_10060C6AC()
{
  v25 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[26] = sub_10000C4AC(v5, qword_1009865B0);
  v6 = *(v3 + 16);
  v0[27] = v6;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000C4E4(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Adding check-status task for identifier %s", v13, 0xCu);
    sub_10000C60C(v23);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[29] = v17;
  v19 = v0[21];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[30] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10060C9BC;
  v21 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100987128, &qword_10080DA98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008EAA30;
  v0[14] = v21;
  [v19 peripheralConnectionMaterialForAccessoryIdentifier:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10060C9BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_10060CD44;
  }

  else
  {
    v2 = sub_10060CACC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060CACC()
{
  v22 = v0;
  v1 = *(v0 + 144);

  (*(v0 + 216))(*(v0 + 192), *(v0 + 160), *(v0 + 176));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  if (v5)
  {
    v20 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315394;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_10000C4E4(v10, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (v2)
    {
      v14 = 7562617;
    }

    else
    {
      v14 = 28526;
    }

    if (v2)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    v16 = sub_10000C4E4(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v20, "Got back from call to peripheralConnectionMaterial(forAccessoryIdentifier:) for identifier %s with result (is FindMy-paired) %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v6(v7, v8);
  }

  v17 = *(v0 + 152);

  *v17 = v2 != 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10060CD44(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 240);
  swift_willThrow();

  (*(v1 + 216))(*(v1 + 192), *(v1 + 160), *(v1 + 176));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 232);
  v7 = *(v1 + 192);
  v8 = *(v1 + 176);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v9 = 136315394;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_10000C4E4(v10, v12, v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_10000C4E4(28526, 0xE200000000000000, v17);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got back from call to peripheralConnectionMaterial(forAccessoryIdentifier:) for identifier %s with result (is FindMy-paired) %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v6(v7, v8);
  }

  **(v1 + 152) = 0;

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_10060CF88(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10060D058(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v17 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
    v18 = *(v17 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
    *(v17 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = 0;

    if (a1 == 1)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_1009865B0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        HIDWORD(v29) = a5;
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "User chose to continue pairing", v22, 2u);
        LOBYTE(a5) = BYTE4(v29);
      }

      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v24 = v23;
      (*(v11 + 8))(v13, v10);
      if ((a5 & 1) == 0 && a4 == 4)
      {
        *(*&v15[v16] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) = 1;
      }

      sub_10060A8C4(v24 > 18.0);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_1009865B0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "User chose to stop pairing", v28, 2u);
      }

      sub_10060D368(a6);
    }
  }
}

uint64_t sub_10060D368(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v18[1] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100624D00;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EA940;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_10060D738(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 1;
    if (a2)
    {
      sub_10060464C(1);
    }

    sub_1005F7090();
  }
}

char *sub_10060D7B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (*(*&result[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
    {
      [*&result[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] cancelPeripheralConnection:?];
    }

    sub_1005FDBD8(0);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a2, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_1005FCB7C(v5, 0);

    return sub_100005508(v5, &unk_100976120, &qword_1007F9260);
  }

  return result;
}

uint64_t sub_10060D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10060DA14, 0, 0);
}

uint64_t sub_10060DA14()
{
  v1 = [objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession) initWithPreviousState:0];
  v0[23] = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[24] = sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FindMy-pairing this Pencil...", v5, 2u);
  }

  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];

  v10 = [v9 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;
  (*(v7 + 8))(v6, v8);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10060DC78;
  v12 = swift_continuation_init();
  v0[17] = sub_10028088C(&unk_100987060, &unk_10080D9F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10060DFEC;
  v0[13] = &unk_1008EA828;
  v0[14] = v12;
  [v1 initiatePairingAndLocateAccessoryWith:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10060DC78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10060DE74;
  }

  else
  {
    v2 = sub_10060DD88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060DD88()
{
  v1 = *(v0 + 144);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 184);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pencil is FindMy-paired", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10060DE74(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[23];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to FindMy-pair this Pencil with error: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_10060DFEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;
    v9 = a3;

    return _swift_continuation_throwingResume(v5);
  }
}

double sub_10060E0FC(char a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v4, v5, "showPairConsentPrompt. inViewService: %{BOOL}d", v6, 8u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_100612CEC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EAA58;
      v13 = _Block_copy(aBlock);
      v14 = [v12 remoteObjectProxyWithErrorHandler:v13];
      _Block_release(v13);
      [v14 showPairConsentPrompt];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "ignore showPairConsentPrompt, UI updates disabled for current session state", v9, 2u);
    }
  }

  return result;
}

void sub_10060E3D8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v2 = v0;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "showUnlockPrompt", v6, 2u);
    }

    v7 = *(v2 + v1);
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) == 1)
    {
      *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_1005F2838(Strong, 1);
        aBlock[4] = sub_100612CE0;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004502D4;
        aBlock[3] = &unk_1008EAAA8;
        v10 = _Block_copy(aBlock);
        v11 = [v9 remoteObjectProxyWithErrorHandler:v10];
        _Block_release(v10);
        [v11 showUnlockPrompt];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "ignore showUnlockPrompt, UI updates disabled for current session state", v14, 2u);
    }
  }
}

uint64_t sub_10060E6AC(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 842216258;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 842150466;
      case 3:
        return 842544194;
      case 4:
        return 842216770;
    }
  }

  _StringGuts.grow(_:)(46);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 125;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD00000000000002BLL;
}

void sub_10060E7E8(uint64_t a1, const char *a2, ...)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }
}

uint64_t sub_10060E9B0()
{
  v1[7] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10060EAD8, 0, 0);
}

uint64_t sub_10060EAD8()
{
  if (BKSHIDServicesIsSmartCoverClosed())
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not showing Pencil UI because cover is closed";
    goto LABEL_6;
  }

  v9 = *(v0 + 56);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) == 1)
  {
    *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) = 1;
  }

  else
  {
    v11 = sub_1005F2FF4();
    v12 = *(v9 + v10);
    *(v9 + v10) = v11 & 1;
    if ((v11 & 1) != v12)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 56);
      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009865B0);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 56);
      if (v18)
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = *(v9 + v10);

        _os_log_impl(&_mh_execute_header, v16, v17, "sbHasStarted = %{BOOL}d", v20, 8u);
      }

      else
      {
      }
    }

    if ((*(v9 + v10) & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000C4AC(v31, qword_1009865B0);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_7;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Not showing Pencil UI because SpringBoard hasn't started";
      goto LABEL_6;
    }
  }

  v21 = *(v0 + 56);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  *(v0 + 120) = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  if ([*(v21 + v22) screenOn])
  {
LABEL_30:
    if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v2, v3))
    {
LABEL_7:

      v6 = 0;
LABEL_8:

      v7 = *(v0 + 8);

      return v7(v6);
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not showing Pencil UI because screen isn't on";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

    goto LABEL_7;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v23, qword_1009865B0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Turning on screen for showing Pencil UI...", v26, 2u);
  }

  SBSUndimScreen();
  if ([*(v21 + v22) screenOn])
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Turned on screen for showing Pencil UI", v29, 2u);
    }

    goto LABEL_30;
  }

  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  v34 = *(v0 + 64);
  v35 = static Duration.seconds(_:)();
  v37 = v36;
  static Clock<>.continuous.getter();
  *(v0 + 40) = v35;
  *(v0 + 48) = v37;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v38 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v39 = *(v33 + 8);
  *(v0 + 136) = v39;
  *(v0 + 144) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v32, v34);
  v40 = swift_task_alloc();
  *(v0 + 152) = v40;
  *v40 = v0;
  v40[1] = sub_10060F17C;
  v42 = *(v0 + 88);
  v41 = *(v0 + 96);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v42, v0 + 16, v41, v38);
}

uint64_t sub_10060F17C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[11];
    v5 = v2[8];

    v3(v4, v5);
    v6 = sub_10060F66C;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];
    (v2[17])(v2[11], v2[8]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_10060F2E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10060F2E8()
{
  if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Turned on screen for showing Pencil UI", v3, 2u);
    }

    v4 = [*(*(v0 + 56) + *(v0 + 120)) screenOn];
    if ((v4 & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_1009865B0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Not showing Pencil UI because screen isn't on", v8, 2u);
      }
    }

    v9 = *(v0 + 8);

    return v9(v4);
  }

  else
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = static Duration.seconds(_:)();
    v16 = v15;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v14;
    *(v0 + 48) = v16;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v17 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v18 = *(v12 + 8);
    *(v0 + 136) = v18;
    *(v0 + 144) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v11, v13);
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_10060F17C;
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v21, v0 + 16, v20, v17);
  }
}

uint64_t sub_10060F66C()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Turned on screen for showing Pencil UI", v3, 2u);
    }

    v4 = [*(*(v0 + 56) + *(v0 + 120)) screenOn];
    if ((v4 & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_1009865B0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Not showing Pencil UI because screen isn't on", v8, 2u);
      }
    }

    v9 = *(v0 + 8);

    return v9(v4);
  }

  else
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = static Duration.seconds(_:)();
    v16 = v15;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v14;
    *(v0 + 48) = v16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    v17 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v18 = *(v12 + 8);
    *(v0 + 136) = v18;
    *(v0 + 144) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v11, v13);
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_10060F17C;
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v21, v0 + 16, v20, v17);
  }
}

uint64_t sub_10060F9EC()
{
  v1[13] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10060FB14, 0, 0);
}

uint64_t sub_10060FB14()
{
  v0[21] = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_uiAgentConnection;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
LABEL_12:

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v12 = _Block_copy(v0 + 2);
      v13 = [v11 remoteObjectProxyWithErrorHandler:v12];
      _Block_release(v12);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009865B0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Not showing Pencil UI because UI agent is not connected", v17, 2u);
      }

      v11 = 0;
      v13 = 0;
    }

    v18 = v0[1];

    return v18(v11, v13);
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[22] = sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connecting to UI agent for showing Pencil UI...", v5, 2u);
  }

  if (qword_1009738A0 != -1)
  {
    swift_once();
  }

  sub_1004521F4();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Connected to UI agent for showing Pencil UI", v9, 2u);
    }

    Strong = v7;
    goto LABEL_12;
  }

  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[14];
  v23 = static Duration.seconds(_:)();
  v25 = v24;
  static Clock<>.continuous.getter();
  v0[11] = v23;
  v0[12] = v25;
  v0[9] = 0;
  v0[8] = 0;
  *(v0 + 80) = 1;
  v26 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v27 = *(v21 + 8);
  v0[23] = v27;
  v0[24] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v20, v22);
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_100610038;
  v30 = v0[17];
  v29 = v0[18];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v30, v0 + 8, v29, v26);
}

uint64_t sub_100610038()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[17];
    v5 = v2[14];

    v3(v4, v5);
    v6 = sub_1006105B8;
  }

  else
  {
    v8 = v2[19];
    v7 = v2[20];
    v9 = v2[18];
    (v2[23])(v2[17], v2[14]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_1006101A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006101A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Connected to UI agent for showing Pencil UI", v4, 2u);
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v7 = _Block_copy(v0 + 2);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_1009865B0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not showing Pencil UI because UI agent is not connected", v23, 2u);
      }

      v6 = 0;
      v8 = 0;
    }

    v24 = v0[1];

    return v24(v6, v8);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = static Duration.seconds(_:)();
    v14 = v13;
    static Clock<>.continuous.getter();
    v0[11] = v12;
    v0[12] = v14;
    v0[9] = 0;
    v0[8] = 0;
    *(v0 + 80) = 1;
    v15 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v16 = *(v10 + 8);
    v0[23] = v16;
    v0[24] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v11);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_100610038;
    v19 = v0[17];
    v18 = v0[18];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v19, v0 + 8, v18, v15);
  }
}

uint64_t sub_1006105B8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Connected to UI agent for showing Pencil UI", v4, 2u);
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v7 = _Block_copy(v0 + 2);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_1009865B0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not showing Pencil UI because UI agent is not connected", v23, 2u);
      }

      v6 = 0;
      v8 = 0;
    }

    v24 = v0[1];

    return v24(v6, v8);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = static Duration.seconds(_:)();
    v14 = v13;
    static Clock<>.continuous.getter();
    v0[11] = v12;
    v0[12] = v14;
    v0[8] = 0;
    v0[9] = 0;
    *(v0 + 80) = 1;
    v15 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v16 = *(v10 + 8);
    v0[23] = v16;
    v0[24] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v11);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_100610038;
    v19 = v0[17];
    v18 = v0[18];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v19, v0 + 8, v18, v15);
  }
}

id sub_1006109C8(void *a1, Swift::Int a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setPattern:v4];

  [a1 setDeviceType:0];
  [a1 setSenderID:0];
  sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  [a1 setPowerSourceID:isa];

  v6 = mach_absolute_time();

  return [a1 setTimestamp:v6];
}

void sub_100610AC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100610B18()
{
  v1[18] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100610C58, 0, 0);
}

uint64_t sub_100610C58()
{
  v1 = *(v0 + 144);
  sub_100612B04();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  *(v0 + 224) = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(v1 + v2);
  v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v4 == 2)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    *(v0 + 112) = v8;
    *(v0 + 120) = v10;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    v11 = v0 + 64;
    *(v0 + 80) = 1;
    v12 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v13 = *(v7 + 8);
    *(v0 + 232) = v13;
    *(v0 + 240) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v5, v6);
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_1006112B8;
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v11, v15, v12);
  }

  if ((v4 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_1009865B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v17 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v17 == 2)
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    *(v0 + 128) = v21;
    *(v0 + 136) = v23;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    v11 = v0 + 88;
    *(v0 + 104) = 1;
    v12 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v24 = *(v20 + 8);
    *(v0 + 256) = v24;
    *(v0 + 264) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v18, v19);
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v25[1] = sub_1006120E8;
    v15 = *(v0 + 192);
    v16 = *(v0 + 168);
    goto LABEL_3;
  }

  if ((v17 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_1009865B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    *(v0 + 48) = sub_100612CD4;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1004502D4;
    *(v0 + 40) = &unk_1008EBA20;
    v35 = _Block_copy((v0 + 16));
    v32 = [v31 remoteObjectProxyWithErrorHandler:v35];
    _Block_release(v35);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_1009865B0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);
  }

LABEL_14:

  v31 = 0;
  v32 = 0;
LABEL_15:

  v33 = *(v0 + 8);

  return v33(v31, v32);
}

uint64_t sub_1006112B8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[23];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_100611A7C;
  }

  else
  {
    v7 = v2[27];
    v8 = v2[24];
    v9 = v2[25];
    (v2[29])(v2[23], v2[19]);
    (*(v9 + 8))(v7, v8);
    v6 = sub_100611428;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100611428()
{
  v1 = *(*(v0 + 144) + *(v0 + 224));
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v2 == 2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = static Duration.seconds(_:)();
    v8 = v7;
    static Clock<>.continuous.getter();
    *(v0 + 112) = v6;
    *(v0 + 120) = v8;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    v9 = v0 + 64;
    *(v0 + 80) = 1;
    v10 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v5 + 8);
    *(v0 + 232) = v11;
    *(v0 + 240) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v4);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1006112B8;
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v9, v13, v10);
  }

  if ((v2 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_1009865B0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_14;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v15 == 2)
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = static Duration.seconds(_:)();
    v21 = v20;
    static Clock<>.continuous.getter();
    *(v0 + 128) = v19;
    *(v0 + 136) = v21;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    v9 = v0 + 88;
    *(v0 + 104) = 1;
    v10 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v22 = *(v18 + 8);
    *(v0 + 256) = v22;
    *(v0 + 264) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v16, v17);
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_1006120E8;
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    goto LABEL_3;
  }

  if ((v15 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_1009865B0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_14;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    *(v0 + 48) = sub_100612CD4;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1004502D4;
    *(v0 + 40) = &unk_1008EBA20;
    v33 = _Block_copy((v0 + 16));
    v30 = [v29 remoteObjectProxyWithErrorHandler:v33];
    _Block_release(v33);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_1009865B0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 2u);
  }

LABEL_14:

  v29 = 0;
  v30 = 0;
LABEL_15:

  v31 = *(v0 + 8);

  return v31(v29, v30);
}

uint64_t sub_100611A7C()
{
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  v1 = *(*(v0 + 144) + *(v0 + 224));
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v2 == 2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = static Duration.seconds(_:)();
    v8 = v7;
    static Clock<>.continuous.getter();
    *(v0 + 112) = v6;
    *(v0 + 120) = v8;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;
    v9 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v10 = *(v5 + 8);
    *(v0 + 232) = v10;
    *(v0 + 240) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v4);
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_1006112B8;
    v12 = *(v0 + 192);
    v13 = v0 + 64;
    v14 = *(v0 + 184);
    v15 = v9;
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v13, v12, v15);
  }

  if ((v2 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_1009865B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v16 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v16 == 2)
  {
    v17 = *(v0 + 176);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = static Duration.seconds(_:)();
    v22 = v21;
    static Clock<>.continuous.getter();
    *(v0 + 128) = v20;
    *(v0 + 136) = v22;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v23 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v24 = *(v19 + 8);
    *(v0 + 256) = v24;
    *(v0 + 264) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v17, v18);
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v25[1] = sub_1006120E8;
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v13 = v0 + 88;
    v15 = v23;
    goto LABEL_3;
  }

  if ((v16 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_1009865B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    *(v0 + 48) = sub_100612CD4;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1004502D4;
    *(v0 + 40) = &unk_1008EBA20;
    v35 = _Block_copy((v0 + 16));
    v32 = [v31 remoteObjectProxyWithErrorHandler:v35];
    _Block_release(v35);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_1009865B0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);
  }

LABEL_14:

  v31 = 0;
  v32 = 0;
LABEL_15:

  v33 = *(v0 + 8);

  return v33(v31, v32);
}

uint64_t sub_1006120E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[21];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_1006126B0;
  }

  else
  {
    v8 = v2[25];
    v7 = v2[26];
    v9 = v2[24];
    (v2[32])(v2[21], v2[19]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_100612258;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100612258()
{
  v1 = *(*(*(v0 + 144) + *(v0 + 224)) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v1 == 2)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    *(v0 + 128) = v5;
    *(v0 + 136) = v7;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v8 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v9 = *(v4 + 8);
    *(v0 + 256) = v9;
    *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v2, v3);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_1006120E8;
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v0 + 88, v11, v8);
  }

  if ((v1 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009865B0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009865B0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Not showing fake first-pair UI because view service is not connected";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_17:

    v14 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v14 = Strong;
  *(v0 + 48) = sub_100612CD4;
  *(v0 + 56) = 0;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1004502D4;
  *(v0 + 40) = &unk_1008EBA20;
  v15 = _Block_copy((v0 + 16));
  v16 = [v14 remoteObjectProxyWithErrorHandler:v15];
  _Block_release(v15);
LABEL_18:

  v23 = *(v0 + 8);

  return v23(v14, v16);
}

uint64_t sub_1006126B0()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v1 = *(*(*(v0 + 144) + *(v0 + 224)) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v1 == 2)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    *(v0 + 128) = v5;
    *(v0 + 136) = v7;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 1;
    v8 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v9 = *(v4 + 8);
    *(v0 + 256) = v9;
    *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v2, v3);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_1006120E8;
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v0 + 88, v11, v8);
  }

  if ((v1 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009865B0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009865B0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Not showing fake first-pair UI because view service is not connected";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_17:

    v14 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v14 = Strong;
  *(v0 + 48) = sub_100612CD4;
  *(v0 + 56) = 0;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1004502D4;
  *(v0 + 40) = &unk_1008EBA20;
  v15 = _Block_copy((v0 + 16));
  v16 = [v14 remoteObjectProxyWithErrorHandler:v15];
  _Block_release(v15);
LABEL_18:

  v23 = *(v0 + 8);

  return v23(v14, v16);
}

void sub_100612B04()
{
  v1 = v0;
  v2 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithServiceName:v3 viewControllerClassName:v4];

  v12 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_10027FD18(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v8 = objc_opt_self();

  sub_1005F1ED8([v8 newHandleWithDefinition:v5 configurationContext:v12]);

  v9 = *(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
  if (v9)
  {
    [v9 sd_addObserver:v1];
    v10 = *(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
    if (v10)
    {
      v11 = v10;
      [v11 activateWithContext:0];
    }
  }
}

void sub_100612D04()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "acquireHUDTransaction", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = sub_100612F44;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    aBlock[3] = &unk_1008EADC8;
    v6 = _Block_copy(aBlock);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
    _Block_release(v6);
    [v7 acquireHUDTransaction];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "no UI service to retain", v9, 2u);
    }
  }
}

uint64_t sub_100612F68(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100613080, 0, 0);
}

uint64_t sub_100613080()
{
  v13 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_10060E6AC(v4);
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "showFakeFirstPairUI [type: %s]", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10061323C;

  return sub_10060E9B0();
}

uint64_t sub_10061323C(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 104) = v5;
    *v5 = v4;
    v5[1] = sub_1006133D0;

    return sub_100610B18();
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1006133D0(void *a1, uint64_t a2)
{
  *(*v2 + 112) = a2;

  return _swift_task_switch(sub_1006134D8, 0, 0);
}

uint64_t sub_1006134D8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 112))
  {
    if (*(v2 + 16) == 3)
    {
      v3 = *(v2 + 144);
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      *(v2 + 120) = v4;
      *v4 = v2;
      v4[1] = sub_10061394C;
      v5 = *(v2 + 24);

      return sub_100614268(3, v5, v3 & 1, 1, 1);
    }

    v10 = *(v2 + 48);
    v11 = *(v2 + 32);
    v12 = *(v2 + 144);
    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = *(v2 + 24);
    }

    v14 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v14 + 8))
    {
      v15 = 0;
    }

    else
    {
      v15 = *v14;
    }

    swift_unknownObjectRetain_n();
    UUID.init()();
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    v18 = 1;
    (*(v17 + 56))(v10, 0, 1, v16);
    v19 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
    if (v19 <= 3)
    {
      v18 = qword_10080DB58[v19];
    }

    v20 = v12 ^ 1;
    v21 = *(v2 + 40);
    sub_10000FF90(*(v2 + 48), v21, &unk_100976120, &qword_1007F9260);
    if ((*(v17 + 48))(v21, 1, v16) == 1)
    {
      isa = 0;
    }

    else
    {
      v23 = *(v2 + 40);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v17 + 8))(v23, v16);
    }

    v24 = *(v2 + 112);
    v25 = *(v2 + 48);
    v26 = *(v2 + 16);
    [v24 updateDeviceInfoWithDeviceType:v15 batteryLevel:v20 & 1 batteryLevelKnown:v18 edge:0 orientation:1 isCharging:isa identifier:v13];

    swift_unknownObjectRelease();
    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
    [v24 showPairingStarted];
    if (v26 == 4 || v26 == 1)
    {
      v27 = static Duration.seconds(_:)();
      v29 = v28;
      static Clock<>.continuous.getter();
      v30 = swift_task_alloc();
      *(v2 + 136) = v30;
      *v30 = v2;
      v30[1] = sub_100614018;

      return sub_10002ED10(v27, v29, 0, 0, 1);
    }

    v31 = *(v2 + 112);
    [v31 setDeviceType:*(v2 + 16)];
    [v31 showPairingSuccess];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get view service connection to show fake first-pair UI", v9, 2u);
    }
  }

  v32 = *(v2 + 8);

  return v32();
}

uint64_t sub_10061394C()
{

  return _swift_task_switch(sub_100613A48, 0, 0);
}

uint64_t sub_100613A48()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_100613B28;

  return sub_10002ED10(v1, v3, 0, 0, 1);
}

uint64_t sub_100613B28()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100625F10;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100613CC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100613CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 32);
  v5 = *(v2 + 144);
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v7 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  swift_unknownObjectRetain();
  UUID.init()();
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = 1;
  (*(v10 + 56))(v3, 0, 1, v9);
  v12 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
  if (v12 <= 3)
  {
    v11 = qword_10080DB58[v12];
  }

  v13 = v5 ^ 1;
  v14 = *(v2 + 40);
  sub_10000FF90(*(v2 + 48), v14, &unk_100976120, &qword_1007F9260);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    isa = 0;
  }

  else
  {
    v16 = *(v2 + 40);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v16, v9);
  }

  v17 = *(v2 + 112);
  v18 = *(v2 + 48);
  v19 = *(v2 + 16);
  [v17 updateDeviceInfoWithDeviceType:v8 batteryLevel:v13 & 1 batteryLevelKnown:v11 edge:0 orientation:1 isCharging:isa identifier:v6];

  swift_unknownObjectRelease();
  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  [v17 showPairingStarted];
  if (v19 == 4 || v19 == 1)
  {
    v20 = static Duration.seconds(_:)();
    v22 = v21;
    static Clock<>.continuous.getter();
    v23 = swift_task_alloc();
    *(v2 + 136) = v23;
    *v23 = v2;
    v23[1] = sub_100614018;

    return sub_10002ED10(v20, v22, 0, 0, 1);
  }

  else
  {
    v25 = *(v2 + 112);
    [v25 setDeviceType:*(v2 + 16)];
    [v25 showPairingSuccess];
    swift_unknownObjectRelease_n();

    v26 = *(v2 + 8);

    return v26();
  }
}

uint64_t sub_100614018()
{
  v2 = *v1;

  v3 = v2[9];
  v4 = v2[8];
  v5 = v2[7];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100626058;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1006141B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006141B0()
{
  v1 = v0[14];
  [v1 setDeviceType:v0[2]];
  [v1 showPairingSuccess];
  swift_unknownObjectRelease_n();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100614268(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 257) = a4;
  *(v6 + 256) = a3;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  v9 = type metadata accessor for DispatchTimeInterval();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100614498, 0, 0);
}

uint64_t sub_100614498()
{
  v18 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 224) = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 256);
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = sub_10060E6AC(v5);
    v9 = sub_10000C4E4(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v10 = 0x8000000100799D30;
      v11 = 0xD000000000000015;
    }

    else
    {
      v11 = Double.description.getter();
      v10 = v12;
    }

    v13 = *(v0 + 257);
    v14 = sub_10000C4E4(v11, v10, &v17);

    *(v6 + 14) = v14;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "showFakePill [type: %s, charge: %s, charging: %{BOOL}d]", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_1006146C8;

  return sub_10060E9B0();
}

uint64_t sub_1006146C8(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 240) = v5;
    *v5 = v4;
    v5[1] = sub_10061488C;

    return sub_10060F9EC();
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_10061488C(void *a1, uint64_t a2)
{
  *(*v2 + 248) = a2;

  return _swift_task_switch(sub_100614994, 0, 0);
}

uint64_t sub_100614994(uint64_t a1, uint64_t a2)
{
  v3 = v2[31];
  if (v3)
  {
    v4 = v2[27];
    v5 = v2[12];
    v6 = *(v2 + 256);
    v7 = *(v2 + 10);
    [swift_unknownObjectRetain() acquireHUDTransaction];
    if (v6)
    {
      v7 = 0.0;
    }

    v8 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v8 + 8))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8;
    }

    v34 = v9;
    swift_unknownObjectRetain();
    UUID.init()();
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v12 = 1;
    (*(v11 + 56))(v4, 0, 1, v10);
    v13 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
    if (v13 <= 3)
    {
      v12 = qword_10080DB58[v13];
    }

    v30 = v6 ^ 1;
    v14 = v2[26];
    sub_10000FF90(v2[27], v14, &unk_100976120, &qword_1007F9260);
    if ((*(v11 + 48))(v14, 1, v10) == 1)
    {
      isa = 0;
    }

    else
    {
      v19 = v2[26];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v19, v10);
    }

    v20 = v2[27];
    v21 = v2[24];
    v31 = v2[25];
    v32 = v2[23];
    v42 = v2[22];
    v23 = v2[20];
    v22 = v2[21];
    v24 = v2[19];
    v40 = v2[17];
    v41 = v2[16];
    v36 = v2[18];
    v37 = v2[15];
    v38 = v2[13];
    v39 = v2[14];
    v29 = v2[11];
    [v3 updateDeviceInfoWithDeviceType:v34 batteryLevel:v30 & 1 batteryLevelKnown:v12 edge:0 orientation:*(v2 + 257) isCharging:isa identifier:v7];

    swift_unknownObjectRelease();
    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
    [v3 showChargingStatus];
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v22 = v29;
    (*(v23 + 104))(v22, enum case for DispatchTimeInterval.seconds(_:), v24);
    + infix(_:_:)();
    (*(v23 + 8))(v22, v24);
    v33 = *(v32 + 8);
    v33(v21, v42);
    v25 = swift_allocObject();
    *(v25 + 16) = v3;
    v2[6] = sub_100625C5C;
    v2[7] = v25;
    v2[2] = _NSConcreteStackBlock;
    v2[3] = 1107296256;
    v2[4] = sub_100011678;
    v2[5] = &unk_1008EB9F8;
    v26 = _Block_copy(v2 + 2);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v2[8] = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    swift_unknownObjectRelease_n();
    (*(v39 + 8))(v37, v38);
    (*(v40 + 8))(v36, v41);
    v33(v31, v42);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get HUD connection to show fake pill", v18, 2u);
    }
  }

  v27 = v2[1];

  return v27();
}

uint64_t sub_100614F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_100614FF0, v8, v7);
}

uint64_t sub_100614FF0()
{
  v0[11] = 0x656772616863;
  v1 = v0[16];
  v0[12] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_100570754((v0 + 2)), (v3 & 1) != 0))
  {
    sub_10000C5B0(*(v0[16] + 56) + 32 * v2, (v0 + 7));
    sub_100285E74((v0 + 2));
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v0[13];
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 ^ 1;
  }

  else
  {
    sub_100285E74((v0 + 2));
    v5 = 0;
    v6 = 1;
  }

  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_100615154;
  v8 = v0[15];

  return sub_100612F68(v8, v5, v6);
}

uint64_t sub_100615154()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10062619C, v3, v2);
}

uint64_t sub_100615274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_100615310, v8, v7);
}

uint64_t sub_100615310()
{
  v0[11] = 0x656772616863;
  v1 = v0[16];
  v0[12] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_100570754((v0 + 2)), (v3 & 1) != 0))
  {
    sub_10000C5B0(*(v0[16] + 56) + 32 * v2, (v0 + 7));
    sub_100285E74((v0 + 2));
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v0[13];
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 ^ 1;
  }

  else
  {
    sub_100285E74((v0 + 2));
    v5 = 0;
    v6 = 1;
  }

  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_10061547C;
  v8 = v0[15];

  return sub_100614268(v8, v5, v6, 1, 5);
}

uint64_t sub_10061547C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10061559C, v3, v2);
}

uint64_t sub_10061559C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006155FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1006156D0;

  return sub_100614268(a6, *&a1, 0, 0, 5);
}

uint64_t sub_1006156D0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061580C, v1, v0);
}

uint64_t sub_10061580C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10061586C(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remoteAlertHandleDidActivate", v5, 2u);
  }

  *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated) = 1;
  sub_1005F7090();
}

uint64_t sub_1006159F4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = v2;
  aBlock[4] = sub_100625238;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAEE0;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();
  v14 = a1;
  v15 = v2;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_100615CDC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009865B0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0x8000000100789F30;
      v14 = 0xD000000000000015;
    }

    v17 = sub_10000C4E4(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "remoteAlertHandle didInvalidateWithError: %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  [a2 removeObserver:a3];
  *(*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 0;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_1005FCB7C(v8, 0);
  return sub_100005508(v8, &unk_100976120, &qword_1007F9260);
}

void sub_100616038()
{
  v1 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "pairTapped", v5, 2u);
  }

  *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) = 1;
  v6 = [objc_opt_self() sharedMonitor];
  if (v6)
  {
    v7 = v6;
    [v6 setBluetoothEnabled:1];

    sub_1005F7090();
  }

  else
  {
    __break(1u);
  }
}

void sub_1006161C8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress))
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009865B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "b222 UI connection in progress, ignoring, resetting attempt count", v5, 2u);
    }

    *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "b222 showEducationUIIfNecessary", v9, 2u);
    }

    v10 = *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
    if (sub_1005607A0())
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 BOOLForKey:v11];

      if ((v12 & 1) == 0)
      {
        sub_1005FFB88(0);
        return;
      }
    }

    else
    {
    }

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "b222 No need for any education UI.  Bailing", v14, 2u);
    }
  }
}

void sub_10061661C(void *a1)
{
  v2 = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC: connectionEstablished", v7, 2u);
  }

  v8 = [a1 sd_connectionBundleID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == 0xD00000000000001CLL && 0x8000000100789280 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v13 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
      swift_unknownObjectWeakAssign();
      *(*(v2 + v13) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 1;
      goto LABEL_21;
    }

    if (v10 == 0xD000000000000023 && 0x80000001007913E0 == v12)
    {

LABEL_14:
      swift_unknownObjectWeakAssign();
      sub_100612D04();
      goto LABEL_21;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_14;
    }
  }

  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = [v15 sd_connectionBundleID];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0x8000000100789F30;
      v22 = 0xD000000000000015;
    }

    v25 = sub_10000C4E4(v22, v24, &v26);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "connectionEstablished connection bundle ID invalid: %s", v18, 0xCu);
    sub_10000C60C(v19);
  }

LABEL_21:

  sub_1005F7090();
}

void sub_1006169C8(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC: connectionInvalidated: %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, Strong, v12 == v4))
  {
    swift_unknownObjectWeakAssign();
    v21 = *(v1 + v10);
    if (*(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) == 2)
    {
      *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 0;
    }
  }

  else
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13 && (v14 = v13, v13, v14 == v4))
    {
      swift_unknownObjectWeakAssign();
      if (qword_1009738A0 != -1)
      {
        swift_once();
      }

      sub_1004523B4();
    }

    else
    {
      v15 = v4;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unknown connection invalidated: %@", v18, 0xCu);
        sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
      }
    }
  }

  sub_1005F7090();
}

void sub_100616D20(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = v34 - v15;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_1009865B0);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = &selRef_shareUserDefaultsActivity;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = v8;
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = [v17 state];
    *(v22 + 12) = 1024;
    *(v22 + 14) = [v17 isScanning];

    _os_log_impl(&_mh_execute_header, v18, v19, "centralManagerDidUpdateState: %ld. scanning: %{BOOL}d", v22, 0x12u);
    v8 = v21;
    v2 = v1;
    v20 = &selRef_shareUserDefaultsActivity;
  }

  else
  {

    v18 = v17;
  }

  if ([v17 v20[209]] == 5 && (v23 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState), *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) == 1) && *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) == 1)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Waiting for 2ms before calling run() to avoid race condition...", v26, 2u);
    }

    v34[1] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
    static DispatchTime.now()();
    *v10 = 2;
    (*(v8 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v7);
    + infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    v27 = v36;
    v35 = *(v35 + 8);
    (v35)(v14, v36);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100625200;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008EAE40;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    v31 = v39;
    v32 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v43;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);
    (*(v41 + 8))(v31, v32);
    (*(v38 + 8))(v30, v40);
    (v35)(v33, v27);
  }

  else
  {

    sub_1005F7090();
  }
}

void sub_1006173F0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1006177F0(char *a1, unsigned __int8 *a2)
{
  v157 = a1;
  v163 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v163);
  v5 = &v141 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v159 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v164 = &v141 - v11;
  v12 = __chkstk_darwin(v10);
  v160 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  v167 = &v141 - v15;
  v16 = __chkstk_darwin(v14);
  v156 = &v141 - v17;
  __chkstk_darwin(v16);
  v158 = &v141 - v18;
  v145 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v147 = *(v145 - 8);
  v19 = __chkstk_darwin(v145);
  v144 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v148 = &v141 - v22;
  v23 = __chkstk_darwin(v21);
  v146 = &v141 - v24;
  v25 = __chkstk_darwin(v23);
  v155 = (&v141 - v26);
  v27 = __chkstk_darwin(v25);
  v161 = &v141 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v141 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v141 - v33;
  __chkstk_darwin(v32);
  v36 = &v141 - v35;
  v153 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v154 = v2;
  v37 = *(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v37)
  {
    v38 = a2;
    v39 = [v37 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v38;
    v40 = *(v7 + 56);
    v41 = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v40(v36, 0, 1, v6);
  }

  else
  {
    v40 = *(v7 + 56);
    v41 = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v40(&v141 - v35, 1, 1, v6);
  }

  v168 = a2;
  v42 = [a2 identifier];
  v43 = v158;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = *(v7 + 16);
  v166 = v7 + 16;
  v165(v34, v43, v6);
  v150 = v40;
  v149 = v41;
  v40(v34, 0, 1, v6);
  v44 = *(v163 + 48);
  sub_10000FF90(v34, v5, &unk_100976120, &qword_1007F9260);
  v152 = v36;
  sub_10000FF90(v36, &v5[v44], &unk_100976120, &qword_1007F9260);
  v45 = *(v7 + 48);
  v46 = v45(v5, 1, v6);
  v162 = v45;
  v163 = v7 + 48;
  if (v46 != 1)
  {
    sub_10000FF90(v5, v31, &unk_100976120, &qword_1007F9260);
    if (v45(&v5[v44], 1, v6) != 1)
    {
      v51 = v156;
      (*(v7 + 32))(v156, &v5[v44], v6);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v7 + 8);
      (v49)(v51, v6);
      sub_100005508(v34, &unk_100976120, &qword_1007F9260);
      (v49)(v31, v6);
      LODWORD(v49) = v52;
      sub_100005508(v5, &unk_100976120, &qword_1007F9260);
      v50 = v157;
      v48 = v168;
      goto LABEL_11;
    }

    sub_100005508(v34, &unk_100976120, &qword_1007F9260);
    (*(v7 + 8))(v31, v6);
    v48 = v168;
    goto LABEL_9;
  }

  sub_100005508(v34, &unk_100976120, &qword_1007F9260);
  v47 = v45(&v5[v44], 1, v6);
  v48 = v168;
  if (v47 != 1)
  {
LABEL_9:
    sub_100005508(v5, &unk_100987030, &qword_1007F9330);
    LODWORD(v49) = 0;
    v50 = v157;
    goto LABEL_11;
  }

  sub_100005508(v5, &unk_100976120, &qword_1007F9260);
  LODWORD(v49) = 1;
  v50 = v157;
LABEL_11:
  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (v53 && (v54 = v53, (sub_10061FB58() & 1) != 0))
  {
    v55 = String._bridgeToObjectiveC()();
    v56 = [v54 hasTag:v55];

    v57 = v56 ^ 1;
  }

  else
  {
    v57 = 0;
  }

  if (qword_100973B58 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v58 = type metadata accessor for Logger();
    v59 = sub_10000C4AC(v58, qword_1009865B0);
    v60 = v48;
    v151 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412802;
      *(v63 + 4) = v60;
      *v64 = v60;
      *(v63 + 12) = 1024;
      *(v63 + 14) = v49 & 1;
      *(v63 + 18) = 1024;
      *(v63 + 20) = v57;
      v65 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "peerDidCompletePairing: %@, isStoredPeripheral: %{BOOL}d, isTagged: %{BOOL}d", v63, 0x18u);
      sub_100005508(v64, &qword_100975400, &qword_1007F65D0);
      v50 = v157;
    }

    v66 = *(v154 + v153) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v66 + 8))
    {
      goto LABEL_99;
    }

    v67 = *v66;
    if ((v67 | 2) == 3)
    {
      if (!v57)
      {
        goto LABEL_99;
      }
    }

    else if (((v67 == 4) & v57) == 0)
    {
      goto LABEL_99;
    }

    v68 = sub_1005FEA1C();
    v69 = v68;
    v70 = v68 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v168 = v7;
    v142 = v60;
    v143 = v49;
    if (v70)
    {
      v170 = _swiftEmptyArrayStorage;
      sub_100290034(0, v70 & ~(v70 >> 63), 0);
      if (v70 < 0)
      {
        __break(1u);
        goto LABEL_94;
      }

      v71 = 0;
      v72 = v170;
      do
      {
        v73 = v72;
        if ((v69 & 0xC000000000000001) != 0)
        {
          v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v74 = *(v69 + 8 * v71 + 32);
        }

        v75 = v74;
        v76 = [v74 identifier];
        v77 = v167;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = v73;
        v170 = v73;
        v78 = v73[2];
        v79 = v72[3];
        if (v78 >= v79 >> 1)
        {
          sub_100290034((v79 > 1), v78 + 1, 1);
          v72 = v170;
        }

        ++v71;
        v72[2] = v78 + 1;
        v80 = v72 + ((v168[80] + 32) & ~v168[80]) + *(v168 + 9) * v78;
        v7 = v168;
        (*(v168 + 4))(v80, v77, v6);
      }

      while (v70 != v71);

      v50 = v157;
      LOBYTE(v49) = v143;
    }

    else
    {

      v72 = _swiftEmptyArrayStorage;
    }

    if (v72[2] < 2uLL)
    {

      if (v49)
      {
        goto LABEL_96;
      }

      goto LABEL_99;
    }

    sub_10028088C(&qword_100987158, &unk_10080DAD0);
    v81 = *(v147 + 72);
    v82 = *(v147 + 80);
    v167 = v72;
    v83 = (v82 + 32) & ~v82;
    v84 = 2 * v81;
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1007F8830;
    v7 = v85 + v83;
    sub_10000FF90(v152, v85 + v83, &unk_100976120, &qword_1007F9260);
    v49 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
    v86 = v154;
    swift_beginAccess();
    v156 = v81;
    v87 = v167;
    sub_10000FF90(v86 + v49, &v81[v7], &unk_100976120, &qword_1007F9260);
    if (*(v87 + 16))
    {
      v165((v7 + v84), (v87 + ((v168[80] + 32) & ~v168[80])), v6);
      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    v150(v7 + v84, v88, 1, v6);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v169 = v49;
      *v91 = 136315138;
      v92 = Array.description.getter();
      v94 = sub_10000C4E4(v92, v93, &v169);

      *(v91 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v89, v90, "peerDidCompletePairing - b332sToKeep: %s", v91, 0xCu);
      sub_10000C60C(v49);
    }

    v95 = v164;
    v50 = v155;
    v96 = *(v85 + 16);
    if (v96)
    {
      v147 = v85;
      v97 = (v168 + 32);
      v49 = _swiftEmptyArrayStorage;
      do
      {
        v98 = v161;
        sub_10000FF90(v7, v161, &unk_100976120, &qword_1007F9260);
        sub_1005D8888(v98, v50);
        if (v162(v50, 1, v6) == 1)
        {
          sub_100005508(v50, &unk_100976120, &qword_1007F9260);
        }

        else
        {
          v99 = *v97;
          (*v97)(v160, v50, v6);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v100 = v49;
          }

          else
          {
            v100 = sub_10028F3B4(0, *(v49 + 16) + 1, 1, v49);
          }

          v102 = *(v100 + 2);
          v101 = *(v100 + 3);
          if (v102 >= v101 >> 1)
          {
            v100 = sub_10028F3B4((v101 > 1), v102 + 1, 1, v100);
          }

          *(v100 + 2) = v102 + 1;
          v49 = v100;
          v99(&v100[((v168[80] + 32) & ~v168[80]) + *(v168 + 9) * v102], v160, v6);
          v95 = v164;
          v50 = v155;
        }

        v7 += v156;
        --v96;
      }

      while (v96);

      v103 = v49;
    }

    else
    {

      v103 = _swiftEmptyArrayStorage;
    }

    v104 = v168;
    v161 = *(v103 + 16);
    if (!v161)
    {
      break;
    }

    v57 = 0;
    v155 = (v168 + 8);
    v156 = v168 + 32;
    v48 = _swiftEmptyArrayStorage;
    v160 = v103;
    while (v57 < *(v103 + 16))
    {
      v50 = ((v104[80] + 32) & ~v104[80]);
      v105 = *(v104 + 9);
      v165(v95, &v50[v103 + v105 * v57++], v6);
      v106 = &v50[v167];
      v7 = *(v167 + 16) + 1;
      do
      {
        if (!--v7)
        {
          (*v155)(v95, v6);
          goto LABEL_60;
        }

        LODWORD(v49) = v106 + v105;
        sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v106 += v105;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
      v107 = v95;
      v108 = *v156;
      (*v156)(v159, v107, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100290034(0, *(v48 + 2) + 1, 1);
        v48 = v169;
      }

      v49 = *(v48 + 2);
      v110 = *(v48 + 3);
      v7 = v49 + 1;
      if (v49 >= v110 >> 1)
      {
        sub_100290034((v110 > 1), v49 + 1, 1);
        v48 = v169;
      }

      *(v48 + 2) = v7;
      v108(&v50[v48 + v49 * v105], v159, v6);
      v95 = v164;
LABEL_60:
      v103 = v160;
      v104 = v168;
      if (v57 == v161)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_91:
    swift_once();
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_71:

  if (*(v48 + 2))
  {
    v57 = v146;
    v165(v146, &v48[(v104[80] + 32) & ~v104[80]], v6);
    v111 = 0;
  }

  else
  {
    v111 = 1;
    v57 = v146;
  }

  v112 = v148;

  v150(v57, v111, 1, v6);
  sub_10000FF90(v57, v112, &unk_100976120, &qword_1007F9260);
  v113 = Logger.logObject.getter();
  v114 = v112;
  v115 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v113, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v169 = v117;
    *v116 = 136315138;
    v118 = v144;
    sub_10000FF90(v114, v144, &unk_100976120, &qword_1007F9260);
    if (v162(v118, 1, v6) == 1)
    {
      sub_100005508(v118, &unk_100976120, &qword_1007F9260);
      v119 = 0xEC0000003E676E69;
      v120 = 0x7065656B206F6E3CLL;
    }

    else
    {
      v120 = UUID.description.getter();
      v119 = v122;
      (*(v168 + 1))(v118, v6);
    }

    sub_100005508(v148, &unk_100976120, &qword_1007F9260);
    v123 = sub_10000C4E4(v120, v119, &v169);

    *(v116 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v113, v115, "peerDidCompletePairing - keeping: %s", v116, 0xCu);
    sub_10000C60C(v117);
  }

  else
  {

    v121 = sub_100005508(v112, &unk_100976120, &qword_1007F9260);
  }

  __chkstk_darwin(v121);
  *(&v141 - 2) = v57;
  sub_1005F11E8(sub_1006251E0, (&v141 - 4), v167);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v169 = v127;
    *v126 = 136315138;
    v128 = Array.description.getter();
    v130 = sub_10000C4E4(v128, v129, &v169);

    *(v126 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v124, v125, "peerDidCompletePairing - otherPairedOnes: %s", v126, 0xCu);
    sub_10000C60C(v127);
  }

  v50 = v157;
  v131 = *(v154 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v133 = [v131 retrievePeripheralsWithIdentifiers:isa];

  sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v60 >> 62))
  {
    v134 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v134)
    {
      goto LABEL_84;
    }

LABEL_95:

    sub_100005508(v57, &unk_100976120, &qword_1007F9260);
    v7 = v168;
    if (v143)
    {
LABEL_96:
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "Unset OOBP enabled flag in peerDidCompletePairing", v140, 2u);
      }

      [v50 setOOBPairingEnabled:0 forPeer:v142];
      *(*(v154 + v153) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 1;

      sub_1005F1D24();

      sub_1005F7090();
    }

LABEL_99:
    (*(v7 + 8))(v158, v6);
    sub_100005508(v152, &unk_100976120, &qword_1007F9260);
    return;
  }

LABEL_94:
  v134 = _CocoaArrayWrapper.endIndex.getter();
  if (!v134)
  {
    goto LABEL_95;
  }

LABEL_84:
  if (v134 >= 1)
  {
    for (i = 0; i != v134; ++i)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v136 = *(v60 + 8 * i + 32);
      }

      v137 = v136;
      [v50 unpairPeer:v136];
    }

    goto LABEL_95;
  }

  __break(1u);
}

uint64_t sub_100618D18(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  (*(v4 + 16))(&v23 - v14, a1, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_10000FF90(v15, v9, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v24, &v9[v16], &unk_100976120, &qword_1007F9260);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) != 1)
  {
    sub_10000FF90(v9, v13, &unk_100976120, &qword_1007F9260);
    if (v17(&v9[v16], 1, v3) != 1)
    {
      v19 = v23;
      (*(v4 + 32))(v23, &v9[v16], v3);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v19, v3);
      sub_100005508(v15, &unk_100976120, &qword_1007F9260);
      v21(v13, v3);
      sub_100005508(v9, &unk_100976120, &qword_1007F9260);
      v18 = v20 ^ 1;
      return v18 & 1;
    }

    sub_100005508(v15, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  sub_100005508(v15, &unk_100976120, &qword_1007F9260);
  if (v17(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_100005508(v9, &unk_100987030, &qword_1007F9330);
    v18 = 1;
    return v18 & 1;
  }

  sub_100005508(v9, &unk_100976120, &qword_1007F9260);
  v18 = 0;
  return v18 & 1;
}

void sub_10061917C(uint64_t a1, void *a2)
{
  v3 = v2;
  v37[1] = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v37[0] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v37 - v9;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009865B0);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "peerDidUnpair: %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);

  v20 = [v12 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
  swift_beginAccess();
  v22 = *(v19 + v21);

  if (*(v22 + 16))
  {
    sub_10000EBD4(v10);
    v24 = v23;
    (*(v6 + 8))(v10, v5);

    if (v24)
    {
      v25 = v12;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v25;
        *v29 = v25;
        v30 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "peerDidUnpair - removing from needingUnpair: %@", v28, 0xCu);
        sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
      }

      v31 = [v25 identifier];
      v32 = v37[0];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v32);
      swift_endAccess();
    }
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v33 = sub_1005FEA1C();
  if (v33 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();

    if (v36)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v34)
  {
LABEL_13:
    v35 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v35 = 0;
    *(v35 + 8) = 1;
    sub_1005F339C();
    *(*(v3 + v18) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  }

LABEL_14:
  sub_1005F7090();
}

void sub_100619678(void *a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v40[-v9];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009865B0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    v42 = v16;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v44 = v12;
    v17 = [v12 services];
    if (v17)
    {
      v18 = v17;
      sub_1000276B4(0, &qword_100987148, CBService_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v14;

      v19 = Array.description.getter();
      v21 = v20;
      LOBYTE(v14) = v41;
    }

    else
    {
      v21 = 0x80000001007999E0;
      v19 = 0xD000000000000018;
    }

    v22 = sub_10000C4E4(v19, v21, &v45);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "peripheral: %@, didDiscoverServices: %s", v15, 0x16u);
    sub_100005508(v42, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v43);

    v12 = v44;
  }

  else
  {
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v24 = *(*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v24)
  {
    v25 = v24;
    v26 = [v25 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = [v12 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v27) = static UUID.== infix(_:_:)();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v10, v4);
    if ((v27 & 1) == 0 || (v29 = [v12 services]) == 0)
    {
LABEL_27:

      return;
    }

    v30 = v29;
    v44 = a2;
    sub_1000276B4(0, &qword_100987148, CBService_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_14:
        v45 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v32 < 0)
        {
          __break(1u);
          return;
        }

        v33 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v31 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = [v34 UUID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v32 != v33);

        v38 = v45;
        goto LABEL_23;
      }
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_23:
    if (qword_100973B68 != -1)
    {
      v37 = swift_once();
    }

    v45 = qword_1009A0D70;
    __chkstk_darwin(v37);
    *&v40[-16] = &v45;
    v39 = sub_100391384(sub_100625178, &v40[-32], v38);

    if (v39)
    {
      *(*&v44[v23] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) = 1;
      sub_1005F7090();
    }

    goto LABEL_27;
  }
}

void sub_100619CA4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] == 1)
  {
    v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 1;
  }

  else
  {
    v5 = sub_1005F2FF4();
    v6 = v1[v4];
    v1[v4] = v5 & 1;
    if ((v5 & 1) != v6)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_1009865B0);
      v8 = v1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = v2[v4];

        _os_log_impl(&_mh_execute_header, v9, v10, "sbHasStarted = %{BOOL}d", v11, 8u);
      }

      else
      {
      }
    }
  }

  IsSmartCoverClosed = BKSHIDServicesIsSmartCoverClosed();
  v13 = v2[v4];
  v14 = [objc_opt_self() isBuddyCompleted];
  if (!IsSmartCoverClosed && (a1 & 1) != 0)
  {
    SBSUndimScreen();
  }

  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v16 = *(*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) & v14 & v13 & (IsSmartCoverClosed == 0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_1009865B0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109888;
    *(v20 + 4) = v16;
    *(v20 + 8) = 1024;
    *(v20 + 10) = IsSmartCoverClosed == 0;
    *(v20 + 14) = 1024;
    *(v20 + 16) = v13;
    *(v20 + 20) = 1024;
    *(v20 + 22) = v14;
    _os_log_impl(&_mh_execute_header, v18, v19, "sendsUIUpdates = %{BOOL}d, coverIsOpen: %{BOOL}d, sbStarted: %{BOOL}d, buddyComplete: %{BOOL}d", v20, 0x1Au);
  }

  v21 = *&v2[v15];
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v23 = *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = v16;
  if (v16 != v23)
  {

    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = *(v21 + v22);
      _os_log_impl(&_mh_execute_header, oslog, v24, "sendsUIUpdates = %{BOOL}d", v25, 8u);
    }
  }
}

void sub_10061A068(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char *a8)
{
  v183 = a8;
  v188 = a1;
  v14 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v14 - 8);
  v182 = &v166 - v15;
  v174 = type metadata accessor for Date();
  v173 = *(v174 - 8);
  v16 = __chkstk_darwin(v174);
  v171 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v166 - v18;
  v20 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v20 - 8);
  v175 = &v166 - v21;
  v176 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v179 = *(v176 - 8);
  __chkstk_darwin(v176);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000C4AC(v24, qword_1009865B0);

  sub_100294008(a3, a4);

  sub_100294008(a6, a7);
  v185 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  sub_100026AC0(a3, a4);

  v177 = a7;
  sub_100026AC0(a6, a7);
  v178 = v27;
  v184 = v26;
  v28 = os_log_type_enabled(v26, v27);
  v187 = a5;
  v172 = v19;
  v181 = a4;
  v180 = a3;
  v186 = a2;
  if (v28)
  {
    v29 = a6;
    v30 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v189 = v170;
    *v30 = 136315906;
    *(v30 + 4) = sub_10000C4E4(v188, a2, &v189);
    *(v30 + 12) = 2080;
    v193 = 0;
    v194 = 0xE000000000000000;
    v195 = a3;
    v196 = a4;
    v31 = enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:);
    v32 = v179;
    v169 = *(v179 + 104);
    v33 = v176;
    v169(v23, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v176);
    v168 = sub_100423B84();
    v167 = v29;
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v34 = *(v32 + 8);
    v34(v23, v33);
    v35 = sub_10000C4E4(v193, v194, &v189);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    v36 = Dictionary.description.getter();
    v38 = sub_10000C4E4(v36, v37, &v189);

    *(v30 + 24) = v38;
    *(v30 + 32) = 2080;
    v193 = 0;
    v194 = 0xE000000000000000;
    v195 = v167;
    v196 = v177;
    v169(v23, v31, v33);
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v34(v23, v33);
    v39 = sub_10000C4E4(v193, v194, &v189);

    *(v30 + 34) = v39;
    v40 = v184;
    _os_log_impl(&_mh_execute_header, v184, v178, "!!! Accessory attached: %s, blePairingUUID: %s, accInfoDict: %s, supportedPairTypes: %s", v30, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = objc_opt_self();
  v42 = [v41 standardUserDefaults];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 stringForKey:v43];

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (v45 == v188 && v47 == v186)
    {

LABEL_11:
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Got same accessoryUID for this attach. Ignoring.", v51, 2u);
      }

      return;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_11;
    }
  }

  v52 = [v41 standardUserDefaults];
  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  [v52 setObject:v53 forKey:v54];

  v55 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v56 = v183;
  v57 = v187;
  if (*(*&v183[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) == 1)
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Pencil attached while previous Pencil is still attached, resetting state", v60, 2u);
      v57 = v187;
    }

    v61 = type metadata accessor for UUID();
    v62 = v175;
    (*(*(v61 - 8) + 56))(v175, 1, 1, v61);
    sub_1005FCB7C(v62, 0);
    sub_100005508(v62, &unk_100976120, &qword_1007F9260);
  }

  sub_100612D04();
  v189 = 0xD00000000000001BLL;
  v190 = 0x8000000100799960;
  AnyHashable.init<A>(_:)();
  if (*(v57 + 16) && (v63 = sub_100570754(&v193), (v64 & 1) != 0))
  {
    sub_10000C5B0(*(v57 + 56) + 32 * v63, &v195);
    sub_100285E74(&v193);
    if (swift_dynamicCast())
    {
      v66 = v189;
      v65 = v190;
      if (v189 == 0x6E776F6E6B6E55 && v190 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_56;
      }

      v67 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v67 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v67)
      {
LABEL_56:
      }

      else
      {
        v68 = (*&v56[v55] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
        *v68 = v66;
        v68[1] = v65;

        swift_bridgeObjectRetain_n();

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v193 = v72;
          *v71 = 136315138;
          v73 = sub_10000C4E4(v66, v65, &v193);

          *(v71 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v69, v70, "Received hash! setting on sessionState: %s", v71, 0xCu);
          sub_10000C60C(v72);
        }

        else
        {
        }

        v56 = v183;
      }

      v57 = v187;
    }
  }

  else
  {
    sub_100285E74(&v193);
  }

  v189 = 0xD00000000000001CLL;
  v190 = 0x8000000100799980;
  AnyHashable.init<A>(_:)();
  v74 = &unk_1009A0000;
  if (*(v57 + 16) && (v75 = sub_100570754(&v193), (v76 & 1) != 0))
  {
    sub_10000C5B0(*(v57 + 56) + 32 * v75, &v195);
    sub_100285E74(&v193);
    sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v77 = v189;
      v78 = [v189 integerValue];

      if (v78 == 1)
      {
LABEL_38:
        v82 = *&v56[v55];
        v83 = (v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
        *v83 = 4;
        v84 = v83 + 1;
        v85 = 0x3833353241;
        v86 = 1106;
        goto LABEL_60;
      }

      if (v78 >= 1)
      {
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Warning: Pencil PID is not yet supported! Falling back to treat as B532", v81, 2u);
          v57 = v187;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    sub_100285E74(&v193);
  }

  v189 = 0xD000000000000017;
  v190 = 0x80000001007998D0;
  AnyHashable.init<A>(_:)();
  if (*(v57 + 16) && (v87 = sub_100570754(&v193), (v88 & 1) != 0))
  {
    sub_10000C5B0(*(v57 + 56) + 32 * v87, &v195);
    sub_100285E74(&v193);
    if (swift_dynamicCast())
    {
      if (v189 == 842544194 && v190 == 0xE400000000000000)
      {

LABEL_59:
        v82 = *&v56[v55];
        v97 = (v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
        *v97 = 3;
        v84 = v97 + 1;
        v85 = 0x3538303341;
        v86 = 482;
        goto LABEL_60;
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v96)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    sub_100285E74(&v193);
  }

  v189 = 0xD00000000000001BLL;
  v190 = 0x80000001007999A0;
  AnyHashable.init<A>(_:)();
  if (*(v57 + 16) && (v89 = sub_100570754(&v193), (v90 & 1) != 0))
  {
    sub_10000C5B0(*(v57 + 56) + 32 * v89, &v195);
    sub_100285E74(&v193);
    sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
    v91 = swift_dynamicCast();
    if (v91)
    {
      v92 = v189;
      v93 = [v189 integerValue];

      if (v93 == 1057)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    v91 = sub_100285E74(&v193);
  }

  sub_100620C08(v91);
  v82 = *&v56[v55];
  v94 = (v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v84 = (v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
  if (v95)
  {
    *v94 = 1;
    v85 = 0x3135303241;
    v86 = 332;
  }

  else
  {
    *v94 = 2;
    v85 = 0x3330363141;
    v86 = 546;
  }

LABEL_60:
  v98 = v182;
  *v84 = 0;
  v99 = (v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
  *v99 = v85;
  v99[1] = 0xE500000000000000;

  v100 = *&v56[v55];
  v101 = v100 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
  *v101 = v86;
  *(v101 + 8) = 0;
  v102 = v100 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if (*(v102 + 8) & 1) != 0 || *v102 != 3 || ([*&v56[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor] screenOn])
  {
    goto LABEL_79;
  }

  v103 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  swift_beginAccess();
  sub_10000FF90(&v56[v103], v98, &qword_10097A7F0, &unk_1007FB600);
  v104 = v173;
  v105 = v174;
  if ((*(v173 + 48))(v98, 1, v174) == 1)
  {
    sub_100005508(v98, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_79;
  }

  v106 = v172;
  (*(v104 + 32))(v172, v98, v105);
  v107 = v171;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v109 = v108;
  v110 = *(v104 + 8);
  v110(v107, v105);
  v111 = [v41 standardUserDefaults];
  v112 = sub_1005614A0();

  if (v109 >= v112)
  {
    v119 = v106;
    v120 = v105;
LABEL_78:
    v110(v119, v120);
    v74 = &unk_1009A0000;
    goto LABEL_79;
  }

  v113 = *&v56[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum + 8];
  if (!v113)
  {
    v119 = v172;
    v120 = v174;
    goto LABEL_78;
  }

  v114 = v57;
  v115 = *&v56[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
  v191 = 0xD00000000000001BLL;
  v192 = 0x80000001007999C0;

  AnyHashable.init<A>(_:)();
  v116 = v172;
  v74 = &unk_1009A0000;
  if (*(v114 + 16) && (v117 = sub_100570754(&v193), (v118 & 1) != 0))
  {
    sub_10000C5B0(*(v114 + 56) + 32 * v117, &v195);
    sub_100285E74(&v193);
    if (swift_dynamicCast())
    {
      if (v115 == v191 && v113 == v192)
      {

LABEL_104:
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&_mh_execute_header, v157, v158, "Detected case of USB re-enumeration causing reattach while screen is off. Not showing UI for pair", v159, 2u);
        }

        v160 = *&v56[v55];
        v161 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
        v162 = *(v160 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
        *(v160 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;
        if (v162 == 1)
        {

          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 67109120;
            *(v165 + 4) = *(v160 + v161);
            _os_log_impl(&_mh_execute_header, v163, v164, "sendsUIUpdates = %{BOOL}d", v165, 8u);
            v56 = v183;
          }
        }

        v110(v116, v174);
        v124 = v186;
        v57 = v187;
        goto LABEL_83;
      }

      v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v156)
      {
        goto LABEL_104;
      }

      v110(v116, v174);
      v57 = v187;
    }

    else
    {
      v110(v116, v174);

      v57 = v187;
    }
  }

  else
  {

    sub_100285E74(&v193);
    v110(v116, v174);
    v57 = v114;
  }

LABEL_79:
  v121 = *&v56[v55];
  v122 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v123 = *(v121 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v121 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 1;
  v124 = v186;
  if ((v123 & 1) == 0)
  {

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 67109120;
      *(v127 + 4) = *(v121 + v122);
      _os_log_impl(&_mh_execute_header, v125, v126, "sendsUIUpdates = %{BOOL}d", v127, 8u);
      v56 = v183;
    }

    v57 = v187;
  }

LABEL_83:
  v128 = *&v56[v55] + v74[470];
  if ((*(v128 + 8) & 1) == 0 && *v128 == 3)
  {
    v195 = 0xD00000000000001BLL;
    v196 = 0x80000001007999C0;
    AnyHashable.init<A>(_:)();
    if (*(v57 + 16) && (v129 = sub_100570754(&v193), (v130 & 1) != 0))
    {
      sub_10000C5B0(*(v57 + 56) + 32 * v129, &v195);
      sub_100285E74(&v193);
      v131 = swift_dynamicCast();
      v132 = v191;
      v133 = v192;
      if (!v131)
      {
        v132 = 0;
        v133 = 0;
      }
    }

    else
    {
      sub_100285E74(&v193);
      v132 = 0;
      v133 = 0;
    }

    v134 = &v56[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
    *v134 = v132;
    v134[1] = v133;
  }

  [v56 resetUIUpdatesFlagWithUndimScreen:?];
  *(*&v56[v55] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  v135 = [*&v56[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
  if (v135)
  {
    v136 = v135;
    [v135 setDelegate:v56];

    v137 = (*&v56[v55] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
    *v137 = v188;
    v137[1] = v124;

    v138 = (*&v56[v55] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
    v139 = *v138;
    v140 = v138[1];
    v141 = v180;
    v142 = v181;
    *v138 = v180;
    v138[1] = v142;
    sub_100294008(v141, v142);

    sub_10028BCC0(v139, v140);

    *(*&v56[v55] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict) = v187;

    v143 = *&v56[v55] + v74[470];
    if ((*(v143 + 8) & 1) == 0)
    {
      v144 = *v143;
      if (v144 <= 4 && ((1 << v144) & 0x1A) != 0)
      {
        v145 = v56;
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v146, v147))
        {
          v148 = v56;
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v193 = v150;
          *v149 = 136315138;
          v151 = *&v148[v55] + v74[470];
          if (*(v151 + 8) == 1)
          {
            v152 = 0x8000000100789F30;
            v153 = 0xD000000000000015;
          }

          else
          {
            v153 = sub_10060E6AC(*v151);
            v152 = v154;
          }

          v155 = sub_10000C4E4(v153, v152, &v193);

          *(v149 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v146, v147, "Starting pairing process for Pencil of type %s", v149, 0xCu);
          sub_10000C60C(v150);
        }

        sub_1005F7090();
      }
    }
  }

  else
  {
    __break(1u);
  }
}