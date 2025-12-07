int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin(v3);
  v103 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v100);
  v5 = type metadata accessor for DispatchQoS();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v106 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  p_type = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  sub_100003FD8(v15, qword_10039D2C0);
  v16 = sub_10000403C(v15, qword_10039D2C0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  static SPRLogger.xpcServer.getter();
  v107 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "***** Starting daemon softposreaderd *****", v19, 2u);
  }

  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  (*(v12 + 104))(p_type, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000097B4(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  qword_1003A6910 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (!_set_user_dir_suffix())
  {
    goto LABEL_57;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    v24 = NSTemporaryDirectory();
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100008F6C(v25, v27, &aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Using temporary directory: %s", v22, 0xCu);
    sub_10000959C(v23);
  }

  v29 = [objc_opt_self() machServiceName];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:v29];

  qword_1003A6918 = v30;
  qword_1003A6920 = [objc_allocWithZone(type metadata accessor for SPRRemoteService()) init];
  [qword_1003A6918 setDelegate:qword_1003A6920];
  v31 = qword_1003A6910;
  v112 = sub_100002F44;
  v113 = 0;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100003758;
  v111 = &unk_10037F028;
  v32 = _Block_copy(&aBlock);
  v33 = v31;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v33, v32);
  _Block_release(v32);

  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  v34 = qword_1003A6910;
  v35 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_1003A6928 = v35;
  ObjectType = swift_getObjectType();
  v112 = sub_1000037B8;
  v113 = 0;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100003974;
  v111 = &unk_10037F050;
  v37 = _Block_copy(&aBlock);
  v38 = v106;
  static DispatchQoS.unspecified.getter();
  v39 = v103;
  sub_1000039BC(ObjectType, v40, v41);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v37);
  (*(v104 + 8))(v39, v105);
  (*(v101 + 8))(v38, v102);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  if (qword_10039D720 != -1)
  {
    swift_once();
  }

  v42 = (static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler);
  v43 = *(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler);
  v44 = *(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler + 8);
  *v42 = sub_100003A94;
  v42[1] = 0;
  sub_1000048A0(v43, v44);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v45 = static GlobalState.shared;
  v46 = *(static GlobalState.shared + 88);

  [v46 lock];
  while (*(v45 + 104) > 0 || *(v45 + 112) == 1)
  {
    [*(v45 + 88) wait];
  }

  v47 = *(v45 + 96);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *(v45 + 96) = v49;
    p_type = &stru_100399FF0.type;
    [*(v45 + 88) unlock];
    v50 = *(v45 + 57);
    [*(v45 + 88) lock];
    v51 = *(v45 + 96);
    v48 = __OFSUB__(v51, 1);
    v52 = v51 - 1;
    if (!v48)
    {
      *(v45 + 96) = v52;
      if (!v52)
      {
        [*(v45 + 88) broadcast];
      }

      [*(v45 + 88) unlock];

      if (v50)
      {
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "PAN present in NVM upon softposreaderd launch. Clearing PAN now.", v55, 2u);
        }

        v56 = objc_opt_self();
        v57 = [v56 sharedHardwareManager];
        v58 = [v57 getHwSupport];

        if (v58 == 2)
        {
          v59 = [v56 sharedHardwareManager];
          static Double.longWait.getter();
          aBlock = 0;
          v39 = [v59 startSecureElementManagerSessionWithTimeout:&aBlock error:?];

          if (!v39)
          {
            v60 = aBlock;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            swift_errorRetain();
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *v77 = 138412290;
              swift_errorRetain();
              v79 = _swift_stdlib_bridgeErrorToNSError();
              *(v77 + 4) = v79;
              *v78 = v79;
              _os_log_impl(&_mh_execute_header, v74, v75, "Failed to clear PAN: %@", v77, 0xCu);
              sub_10000BD44(v78, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }

            goto LABEL_41;
          }

          v64 = qword_10039D3D0;
          v65 = aBlock;
          if (v64 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "Failed to clear PAN: NFC disabled", v63, 2u);
        }
      }

LABEL_41:
      type metadata accessor for Configurator();
      sub_100050E24(0);
      _s14softposreaderd8CALoggerC20registerBGSystemTask5queueySo012OS_dispatch_F0C_tFZ_0(qword_1003A6910);
      v111 = &type metadata for SPRFeatures;
      v80 = sub_1000094A0();
      v112 = v80;
      LOBYTE(aBlock) = 0;
      v81 = isFeatureEnabled(_:)();
      sub_10000959C(&aBlock);
      if (v81)
      {
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "ManualPostCADaily (Feature Flag) is Enabled", v84, 2u);
        }

        v85 = CFNotificationCenterGetDarwinNotifyCenter();
        v86 = String._bridgeToObjectiveC()();

        CFNotificationCenterAddObserver(v85, 0, sub_100004450, v86, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        v87 = CFNotificationCenterGetDarwinNotifyCenter();
        v88 = String._bridgeToObjectiveC()();

        CFNotificationCenterAddObserver(v87, 0, sub_100004450, v88, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        swift_arrayDestroy();
      }

      v111 = &type metadata for SPRFeatures;
      v112 = v80;
      LOBYTE(aBlock) = 1;
      v89 = isFeatureEnabled(_:)();
      sub_10000959C(&aBlock);
      if (v89)
      {
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "ManualSendMonitoringLogs (Feature Flag) is Enabled", v92, 2u);
        }

        v93 = CFNotificationCenterGetDarwinNotifyCenter();
        v94 = String._bridgeToObjectiveC()();
        CFNotificationCenterAddObserver(v93, 0, sub_100004780, v94, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "softposreaderd Ready to accept connections", v97, 2u);
      }

      [qword_1003A6918 resume];
      dispatch_main();
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_31:
  v66 = AID_PIN_APPLET;
  v67 = *algn_1003A6AB8;
  sub_1000094F4(AID_PIN_APPLET, *algn_1003A6AB8);
  NFSecureElementManagerSession.select(_:)(v66, v67);
  sub_100009548(v66, v67);
  sub_100003AEC(sub_10009FAC0);
  v68 = static GlobalState.shared;
  v69 = *(static GlobalState.shared + 88);

  [v69 lock];
  v70 = *(v68 + 104);
  v48 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *(v68 + 104) = v71;
    while (*(v68 + 96) > 0 || *(v68 + 112) == 1)
    {
      [*(v68 + 88) wait];
    }

    v72 = *(v68 + 104);
    v48 = __OFSUB__(v72, 1);
    v73 = v72 - 1;
    if (!v48)
    {
      *(v68 + 104) = v73;
      *(v68 + 112) = 1;
      [*(v68 + 88) p_type[493]];
      *(v68 + 57) = 0;
      sub_100173040();
      [*(v68 + 88) lock];
      *(v68 + 112) = 0;
      [*(v68 + 88) broadcast];
      [*(v68 + 88) p_type[493]];

      [v39 endSession];

      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100002F44(void *a1)
{
  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, &unk_10039D2C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handler for streamed event: com.apple.notifyd.matching", v5, 2u);
  }

  if (!TMRTCResetNotification)
  {
    __break(1u);
    goto LABEL_54;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
LABEL_54:
    __break(1u);
    return;
  }

  v9 = String.init(cString:)();
  v11 = v10;
  v12 = v9 == 0xD00000000000001ALL && 0x8000000100346640 == v10;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received MFD event notification", v16, 2u);
    }

    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v17 = static GlobalState.shared;
    [*(static GlobalState.shared + 88) lock];
    v18 = *(v17 + 104);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v17 + 104) = v20;
      while (*(v17 + 96) > 0 || *(v17 + 112) == 1)
      {
        [*(v17 + 88) wait];
      }

      v21 = *(v17 + 104);
      v19 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v19)
      {
        *(v17 + 104) = v22;
        *(v17 + 112) = 1;
        [*(v17 + 88) unlock];
        v23 = *(v17 + 52);
        v24 = *(v17 + 56);
        TMGetKernelMonotonicClock();
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23;
        }

        *(v17 + 32) = v26;
        *(v17 + 40) = v25;
        *(v17 + 48) = 0;
        sub_100173040();
        [*(v17 + 88) lock];
        *(v17 + 112) = 0;
        [*(v17 + 88) broadcast];
        [*(v17 + 88) unlock];
        type metadata accessor for Configurator();
        v27 = 1;
LABEL_24:
        sub_100050E24(v27);
        return;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_38:
    GlobalState.receiveTMRTCResetNotification()();
    if (qword_10039D5E0 != -1)
    {
      swift_once();
    }

    sub_1000E31EC(v46);

    v33 = v47;
    v34 = v48;
    v35 = sub_10000BE18(v46, v47);
    v49[3] = v33;
    v36 = *(v34 + 8);
    v49[4] = v36;
    v37 = sub_10000BE5C(v49);
    (*(*(v33 - 8) + 16))(v37, v35, v33);
    sub_10000959C(v46);
    (*(v36 + 24))(v33, v36);
    sub_10000959C(v49);
    return;
  }

  if (v6 == v13 && v8 == v11)
  {

    goto LABEL_35;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_35:

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received TM RTC reset notification", v32, 2u);
    }

    if (qword_10039D708 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

  if (v13 == 0xD00000000000002CLL && 0x8000000100346660 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Received ApplicationsChanged notification", v40, 2u);
    }

    type metadata accessor for Configurator();
    v27 = 0;
    goto LABEL_24;
  }

  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49[0] = v43;
    *v42 = 136315138;
    v44 = sub_100008F6C(v13, v11, v49);

    *(v42 + 4) = v44;
    _os_log_impl(&_mh_execute_header, oslog, v41, "Ignoring unexpected event: %s", v42, 0xCu);
    sub_10000959C(v43);
  }

  else
  {
  }
}

uint64_t sub_100003758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000037E8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, &unk_10039D2C0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008F6C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping softposreaderd: %s", v7, 0xCu);
    sub_10000959C(v8);
  }

  [qword_1003A6918 invalidate];
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v9 = static Terminator.shared;
  *(static Terminator.shared + 16) = 1;
  v10 = *(v9 + 24);
  os_unfair_lock_lock(v10 + 8);
  sub_100189990(&v10[4]);
  os_unfair_lock_unlock(v10 + 8);
  usleep(0x7A120u);
  _exit(0);
}

uint64_t sub_100003974(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000039BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000097B4(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100003AEC(void *(*a1)(uint64_t *__return_ptr, unint64_t, void, void, void, uint64_t))
{
  v34 = 62592;
  v35 = 0;
  v36 = xmmword_1002BDC30;
  v37 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A1240);
  sub_10000BC94(&v34, v32);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v34);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v5 = 136315138;
    v6 = sub_100170F04(v34 | (v35 << 32), v36, *(&v36 + 1), v37);
    v8 = v7;
    v9 = Data.hexString()();
    sub_100009548(v6, v8);
    v10 = sub_100008F6C(v9._countAndFlagsBits, v9._object, v32);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "C-APDU (CANCEL): %s", v5, 0xCu);
    sub_10000959C(v30);
  }

  a1(v32, v34 | (v35 << 32), v36, *(&v36 + 1), v37, 1);
  if (v32[1] >> 60 == 15)
  {
    return sub_10000BCF0(&v34);
  }

  v12 = v33;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = Data.hexString()();
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, &v31);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "R-APDU: %s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v19 = Logger.logObject.getter();
  if (v12 != 36864)
  {
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v19, v28, "failed to cleared persistent storage in SE", v29, 2u);
    }

    sub_10000BCF0(&v34);

    return sub_10000BD44(v32, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "cleared persistent storage in SE", v21, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v22 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v23 = *(v22 + 104);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 104) = v25;
    while (*(v22 + 96) > 0 || *(v22 + 112) == 1)
    {
      result = [*(v22 + 88) wait];
    }

    v26 = *(v22 + 104);
    v24 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    if (!v24)
    {
      *(v22 + 104) = v27;
      *(v22 + 112) = 1;
      [*(v22 + 88) unlock];
      *(v22 + 57) = 0;
      sub_100173040();
      [*(v22 + 88) lock];
      *(v22 + 112) = 0;
      [*(v22 + 88) broadcast];
      [*(v22 + 88) unlock];
      sub_10000BCF0(&v34);
      return sub_10000BD44(v32, &qword_10039E2C0, &unk_1002BFEB0);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100003FD8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000403C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000040BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000411C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100004164(void *a1)
{
  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, &unk_10039D2C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = a1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "softposreaderd received CFNotification %@,\nsending CoreAnalytics daily event now", v6, 0xCu);
    sub_10000BD44(v7, &unk_10039E220, &qword_1002C3D60);
  }

  v9 = String._bridgeToObjectiveC()();
  v12 = v9;
  if (!a1)
  {

    return;
  }

  type metadata accessor for CFNotificationName(0);
  sub_1000097B4(&qword_10039DD38, type metadata accessor for CFNotificationName, &unk_1002C1318);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v10)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_1000297A8();
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return;
    }

    if (qword_10039D308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_100029CF4();
  }
}

void sub_100004450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  sub_100004164(a3);
  objc_autoreleasePoolPop(v4);
}

void sub_1000044B8()
{
  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, &unk_10039D2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received notification to send the monitoring logs now", v4, 2u);
  }

  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }

  sub_1000E31EC(v15);
  if (v0)
  {

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error when sending logs: %@", v12, 0xCu);
      sub_10000BD44(v13, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }
  }

  else
  {

    v5 = v16;
    v6 = v17;
    v7 = sub_10000BE18(v15, v16);
    v18[3] = v5;
    v8 = *(v6 + 8);
    v18[4] = v8;
    v9 = sub_10000BE5C(v18);
    (*(*(v5 - 8) + 16))(v9, v7, v5);
    sub_10000959C(v15);
    (*(v8 + 8))(v5, v8);
    sub_10000959C(v18);
  }
}

void sub_100004780()
{
  v0 = objc_autoreleasePoolPush();
  sub_1000044B8();

  objc_autoreleasePoolPop(v0);
}

uint64_t variable initialization expression of CADailyLogger.lockedState()
{
  sub_100004074(&qword_10039D7F8, &qword_1002BDC50);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of Primer.lockedAttachCount()
{
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

id variable initialization expression of GlobalState.condition()
{
  v0 = objc_allocWithZone(NSCondition);

  return [v0 init];
}

uint64_t sub_1000048A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000048B0(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFString(0);
  sub_1000097B4(&qword_10039DF60, type metadata accessor for CFString, &unk_1002C0844);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t sub_100004938(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC40, type metadata accessor for ORError, &unk_1002BE050);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000049A4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC40, type metadata accessor for ORError, &unk_1002BE050);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004A14(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100004AE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004B14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100004BE4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBD0, type metadata accessor for ConfigurationError, &unk_1002BE2A8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004C50(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBD0, type metadata accessor for ConfigurationError, &unk_1002BE2A8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004CBC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004D28(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D8, type metadata accessor for ReadError, &unk_1002BED34);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004D94(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D8, type metadata accessor for ReadError, &unk_1002BED34);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004E00(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004E6C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D960, type metadata accessor for SecurityError, &unk_1002BEF8C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004ED8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D960, type metadata accessor for SecurityError, &unk_1002BEF8C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004F44(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004FB0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF20, type metadata accessor for SPRHTTPError, &unk_1002C0A74);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000501C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF20, type metadata accessor for SPRHTTPError, &unk_1002C0A74);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005088(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005140(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB60, type metadata accessor for JSONError, &unk_1002BE500);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000051AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB60, type metadata accessor for JSONError, &unk_1002BE500);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005218(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

BOOL sub_1000052A0(void *a1, uint64_t *a2)
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

uint64_t sub_1000052F8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAF0, type metadata accessor for PersistenceError, &unk_1002BE758);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005364(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAF0, type metadata accessor for PersistenceError, &unk_1002BE758);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000053D0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_10000543C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100005484(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000054D4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB8, type metadata accessor for PINAppletProxyError, &unk_1002BE884);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005540(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB8, type metadata accessor for PINAppletProxyError, &unk_1002BE884);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000055AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005618(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB28, type metadata accessor for MonitorError, &unk_1002BE62C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005684(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB28, type metadata accessor for MonitorError, &unk_1002BE62C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000056F0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000575C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA80, type metadata accessor for PINControllerError, &unk_1002BE9B0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000057C8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA80, type metadata accessor for PINControllerError, &unk_1002BE9B0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005834(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000058A0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100005918(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005998@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000059DC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB98, type metadata accessor for DepotError, &unk_1002BE3D4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005A48(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB98, type metadata accessor for DepotError, &unk_1002BE3D4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005AB4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

void *sub_100005BA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005BC8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9A0, type metadata accessor for SecureChannelError, &unk_1002BEE60);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005C34(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9A0, type metadata accessor for SecureChannelError, &unk_1002BEE60);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005CA0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005D0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100005D78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

id sub_100005DE4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_100005E00(uint64_t a1)
{
  sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100005E6C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100005ED8(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100005F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000600C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000C9D0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000604C(uint64_t a1)
{
  sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000060B8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006124(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000061B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006240(uint64_t a1)
{
  sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000062AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006318(uint64_t a1)
{
  sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006384(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000063F0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000064FC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000658C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006618(uint64_t a1)
{
  sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006684(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000066F0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000067FC(uint64_t a1)
{
  sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006868(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000068D4(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000069E4(uint64_t a1)
{
  sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006A50(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006ABC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006BC8(uint64_t a1)
{
  sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006C34(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006CA0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006DAC(uint64_t a1)
{
  sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006E18(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006E84(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006F90(uint64_t a1)
{
  sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006FFC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007068(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000070F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007174(uint64_t a1)
{
  sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000071E0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000724C(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000072DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007358(uint64_t a1)
{
  sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007430(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000074C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000753C(uint64_t a1)
{
  sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000075A8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007614(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000076A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007720(uint64_t a1)
{
  sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_10000778C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000077F8(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100007888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007904(uint64_t a1)
{
  sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100007970(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000079DC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100007A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100007AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100007B4C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007B78(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF68, type metadata accessor for FileProtectionType, &unk_1002C124C);
  v3 = sub_1000097B4(&qword_10039DF70, type metadata accessor for FileProtectionType, &unk_1002C11EC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007F38(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF88, type metadata accessor for SPRConfigurationStatusKey, &unk_1002C0FE8);
  v3 = sub_1000097B4(&qword_10039DF90, type metadata accessor for SPRConfigurationStatusKey, &unk_1002C0F90);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError, &unk_1002BF0E0);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000080FC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF78, type metadata accessor for FileAttributeKey, &unk_1002C1344);
  v3 = sub_1000097B4(&qword_10039DF80, type metadata accessor for FileAttributeKey, &unk_1002C10D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000081B8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC08, type metadata accessor for AttestationError, &unk_1002BE17C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100008224(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC08, type metadata accessor for AttestationError, &unk_1002BE17C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008290(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000082FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError, &unk_1002BFC90);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError, &unk_1002BF960);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError, &unk_1002BF850);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_10000850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError, &unk_1002BF740);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008698(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA48, type metadata accessor for PrimerError, &unk_1002BEADC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100008704(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA48, type metadata accessor for PrimerError, &unk_1002BEADC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008770(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000087DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError, &unk_1002BF410);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008860(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA10, type metadata accessor for ProviderError, &unk_1002BEC08);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000088CC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA10, type metadata accessor for ProviderError, &unk_1002BEC08);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008938(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000089A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError, &unk_1002BF300);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008A28@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100008A70(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF98, type metadata accessor for Name, &unk_1002C0D10);
  v3 = sub_1000097B4(&qword_10039DFA0, type metadata accessor for Name, &unk_1002C0CB0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008BE8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100008C54(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_100008D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100008DE0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100008E1C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100008E70(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100008EE4(void *a1, uint64_t *a2)
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

unint64_t sub_100008F6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009038(v11, 0, 0, 1, a1, a2);
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
    sub_10000BDA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_100009038(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009144(a5, a6);
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

void *sub_100009144(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009190(a1, a2);
  sub_1000092C0(&off_10037B3D8);
  return v3;
}

void *sub_100009190(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100188274(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100188274(v10, 0);
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

uint64_t sub_1000092C0(uint64_t result)
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

  result = sub_1000093AC(result, v11, 1, v3);
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

char *sub_1000093AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000094A0()
{
  result = qword_10039D7F0;
  if (!qword_10039D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D7F0);
  }

  return result;
}

uint64_t sub_1000094F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009548(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000959C(void *a1)
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

uint64_t sub_1000096FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000971C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000097B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000A114()
{
  result = qword_10039D988;
  if (!qword_10039D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D988);
  }

  return result;
}

uint64_t sub_10000BD44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004074(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000BE18(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10000BE5C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000BEC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000BF78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000BF8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BFAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_10000C9D0(uint64_t a1)
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

void sub_10000CA1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000CBFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10000959C(a1);
  sub_10000CCE4(a2 + 16, a1);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000BE18(a1, v6);
  result = (*(v7 + 16))(v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_10000CC80()
{
  sub_10000959C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10000CCE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10000CD90(uint64_t a1)
{
  result = sub_10000CDB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CDB8()
{
  result = qword_10039E080;
  if (!qword_10039E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E080);
  }

  return result;
}

uint64_t sub_10000CE0C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E090);
  sub_10000403C(v0, qword_10039E090);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.orReader.getter();
}

uint64_t sub_10000CE78()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039E0A8);
  v1 = sub_10000403C(v0, qword_10039E0A8);
  if (qword_10039D750 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6F08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000D1A4(void *a1, os_unfair_lock_s **a2, uint64_t a3, void *a4, os_unfair_lock_s **a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v99 = a6;
  v97 = a2;
  v95 = a1;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v102);
  v101 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v100);
  v98 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v96 - 8);
  __chkstk_darwin(v96);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v19 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState;
  sub_100004074(&unk_10039E300, &unk_1002C1730);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  v86 = v19;
  *&v8[v19] = v20;
  *(v20 + 16) = 0;
  v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation__isFinished] = 0;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState] = 0;
  v21 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionReadResult;
  v22 = sub_100182BA0(_swiftEmptyArrayStorage);
  v88 = v21;
  *&v8[v21] = v22;
  v87 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = 0;
  v82 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession;
  v23 = v95;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession] = v95;
  v84 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate] = a3;
  v85 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData;
  v92 = a4;
  sub_10000CCE4(a4, &v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData]);
  v24 = &v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_completion];
  *v24 = v99;
  *(v24 + 1) = a7;
  v80[2] = v24;
  v81 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters;
  v25 = v97;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters] = v97;
  v83 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics] = a5;
  v94 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v93 = "Data:analytics:completion:)";
  v90 = a3;
  swift_unknownObjectRetain();
  v91 = a7;

  v89 = v25;
  v97 = a5;

  v99 = v23;
  static DispatchQoS.userInteractive.getter();
  (*(v15 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v96);
  aBlock = _swiftEmptyArrayStorage;
  sub_10001A528(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v100 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue] = v26;
  v109 = nullsub_1;
  v110 = 0;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_100003974;
  v108 = &unk_10037FCD8;
  _Block_copy(&aBlock);
  v104 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  v27 = v8;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v28 = DispatchWorkItem.init(flags:block:)();
  v29 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem] = v28;
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for OSSignposter();
  sub_10000403C(v30, qword_10039E0A8);
  v31 = v99;
  sub_100186948("ttp-preprocessing", 17, 2, v31, 0xD000000000000017, 0x8000000100346DC0);

  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1002C1660;
  if (qword_10039D3E8 != -1)
  {
    swift_once();
  }

  v33 = *(&xmmword_1003A6AE0 + 1);
  *(v32 + 32) = xmmword_1003A6AE0;
  *(v32 + 40) = v33;

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock = 0;
  v35 = [v31 selectApplets:isa error:&aBlock];

  if (!v35)
  {
    v51 = aBlock;
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock = v52;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      sub_10003101C(&off_10037BC18);
      aBlock = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001DLL;
      v106 = 0x8000000100346DE0;
      v104 = v52;
      swift_errorRetain();
      v62._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v62);

      sub_1000205C0(20002, aBlock, v106, 0);
      swift_willThrow();
      goto LABEL_24;
    }

    v53 = v27;
    v54 = v104;
    v55 = [v104 domain];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == String.init(cString:)() && v58 == v59)
    {
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v60 & 1) == 0)
      {
LABEL_22:

        v27 = v53;
        goto LABEL_23;
      }
    }

    v61 = [v54 code];
    if ((v61 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v61))
    {
      if (v61 == 64)
      {

        sub_1000205C0(20005, 0xD000000000000051, 0x8000000100346E00, 0);
        swift_willThrow();

        swift_unknownObjectRelease();

        sub_10000959C(v92);

        v27 = v53;
LABEL_25:

        swift_unknownObjectRelease();

        sub_10000959C(&v27[v85]);

        type metadata accessor for ProvisionReadOperation();
        swift_deallocPartialClassInstance();
        return;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  v36 = aBlock;
  v37 = v80[1];
  v38 = sub_10001A7B4();
  if (v37)
  {
    aBlock = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 0xD00000000000002CLL;
    v106 = 0x8000000100346E60;
    v104 = v37;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v50._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v50);

    sub_1000205C0(20003, aBlock, v106, 0);
    swift_willThrow();
LABEL_24:

    swift_unknownObjectRelease();

    sub_10000959C(v92);
    goto LABEL_25;
  }

  v40 = v39;
  v102 = v38;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000403C(v41, qword_10039E090);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v101 = v29;
    v45 = v44;
    v46 = v27;
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v45 = 136315138;
    *(v45 + 4) = sub_100008F6C(v102, v40, &aBlock);
    _os_log_impl(&_mh_execute_header, v42, v43, "applet version: %s", v45, 0xCu);
    sub_10000959C(v47);
    v27 = v46;
  }

  v48 = sub_10000E180();
  v63 = v48;
  v64 = v49;
  sub_1000094F4(v48, v49);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  sub_100009548(v63, v64);
  v67 = os_log_type_enabled(v65, v66);
  v101 = v63;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v100 = v64;
    v69 = v68;
    v70 = swift_slowAlloc();
    aBlock = v70;
    *v69 = 136315138;
    v71 = Data.hexString()();
    v99 = v27;
    v72 = v66;
    v73 = sub_100008F6C(v71._countAndFlagsBits, v71._object, &aBlock);
    v27 = v99;

    *(v69 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v72, "Config ID: %s", v69, 0xCu);
    sub_10000959C(v70);

    v64 = v100;
  }

  sub_100004074(&qword_10039E238, &qword_1002C16D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 3;
  v75 = Data.hexString()();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v75;
  *(inited + 72) = 15;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v102;
  *(inited + 88) = v40;
  v76 = sub_100183344(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E240, &unk_1002C16E0);
  v77 = swift_arrayDestroy();
  v78 = v97[7];
  __chkstk_darwin(v77);
  v80[-2] = v76;
  os_unfair_lock_lock(v78 + 8);
  sub_10001A76C(&v78[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v78 + 8);
  sub_100009548(v101, v64);

  Operation = type metadata accessor for ProvisionReadOperation();
  v103.receiver = v27;
  v103.super_class = Operation;
  objc_msgSendSuper2(&v103, "init");

  swift_unknownObjectRelease();

  sub_10000959C(v92);
}

uint8_t *sub_10000E180()
{
  v1 = v0;
  v2 = type metadata accessor for TLVTag();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000403C(v6, qword_1003A1258);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[1] = v7;
    v33 = v11;
    *v10 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v12 = _typeName(_:qualified:)();
    v32 = v2;
    v14 = sub_100008F6C(v12, v13, &v33);
    v31 = v3;
    v15 = v14;

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100346E90, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v33);
    v1 = v0;
    v2 = v32;

    *(v10 + 14) = v18;
    v3 = v31;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  static TLVTag.provisionAppletConfigID.getter();
  v19 = v1;
  v20 = sub_10011E63C(v5);
  v22 = v21;
  if (v19)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    sub_1000094F4(v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_100009548(v20, v22);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      v27 = Data.hexString()();
      v28 = sub_100008F6C(v27._countAndFlagsBits, v27._object, &v33);

      *(v25 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Provision Config ID: %{public}s", v25, 0xCu);
      sub_10000959C(v26);
    }
  }

  return v20;
}

NSObject *sub_10000E538(void *a1, uint64_t a2, void *a3, os_unfair_lock_s **a4, char *a5, uint64_t a6)
{
  v67 = a5;
  v70 = a6;
  v71 = a3;
  v72 = a2;
  v73 = a4;
  v74 = a1;
  v66 = type metadata accessor for OSSignpostError();
  v6 = *(v66 - 8);
  __chkstk_darwin(v66);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OSSignpostID();
  v9 = *(v75 - 8);
  v10 = __chkstk_darwin(v75);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - v14;
  __chkstk_darwin(v13);
  v17 = &v64 - v16;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000403C(v18, qword_10039E090);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v69 = v12;
  v65 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_100008F6C(v23, v24, v76);
    v64 = v15;
    v26 = v9;
    v27 = v8;
    v28 = v25;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = showFunction(signature:_:)(0xD00000000000003BLL, 0x8000000100346D60, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, v76);

    *(v22 + 14) = v31;
    v8 = v27;
    v9 = v26;
    v15 = v64;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSSignposter();
  sub_10000403C(v32, qword_10039E0A8);
  static OSSignpostID.exclusive.getter();
  v33 = OSSignposter.logHandle.getter();
  v34 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v35 = v8;
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v37, "ttp-session-start", "begin pending session for ttp", v36, 2u);
    v8 = v35;
  }

  v38 = v75;
  (*(v9 + 16))(v15, v17, v75);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v39 = *(v9 + 8);
  v39(v17, v38);
  v40 = [objc_opt_self() sharedHardwareManager];
  v76[0] = 0;
  v41 = [v40 startSecureElementReaderSessionAndReturnError:v76];

  if (v41)
  {
    v42 = v76[0];
    v43 = v41;
    v44 = OSSignposter.logHandle.getter();
    v45 = v69;
    OSSignpostIntervalState.signpostID.getter();
    v46 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v48 = v65;
      v47 = v66;
      if ((*(v65 + 88))(v8, v66) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v48 + 8))(v8, v47);
        v49 = "end obtained session for ttp";
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = v69;
      v54 = OSSignpostID.rawValue.getter();
      v55 = v49;
      v45 = v53;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v46, v54, "ttp-session-start", v55, v52, 2u);
    }

    v39(v45, v75);
    v51 = v71;
    sub_10000CCE4(v71, v76);
    v56 = objc_allocWithZone(type metadata accessor for ProvisionReadOperation());
    v57 = v72;
    swift_unknownObjectRetain();
    v58 = v73;

    v59 = v70;

    v60 = v74;
    v61 = v68;
    sub_10000D1A4(v43, v60, v57, v76, v58, v67, v59);
    if (!v61)
    {
      v44 = v62;
      sub_10000959C(v51);

      swift_unknownObjectRelease();

      return v44;
    }

    [v43 endSession];
    swift_willThrow();
  }

  else
  {
    v50 = v76[0];
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000205C0(20001, 0xD000000000000029, 0x8000000100346D30, 0);
    swift_willThrow();

    v51 = v71;
  }

  swift_unknownObjectRelease();

  sub_10000959C(v51);
  return v44;
}

id sub_10000ECA4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  Operation = type metadata accessor for ProvisionReadOperation();
  v15.receiver = v1;
  v15.super_class = Operation;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_10000EF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Operation = type metadata accessor for ProvisionReadOperation();
  v20.receiver = v3;
  v20.super_class = Operation;
  objc_msgSendSuper2(&v20, "cancel");
  v16[1] = *&v3[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  aBlock[4] = sub_10001A520;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FCB0;
  v13 = _Block_copy(aBlock);
  v14 = v3;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_10000F278(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
  if (v2)
  {
    v3 = qword_10039D2D8;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039E090);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136315138;
      v31[0] = v6;
      type metadata accessor for ORError(0);
      v11 = v6;
      v12 = String.init<A>(describing:)();
      v14 = sub_100008F6C(v12, v13, v30);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
      sub_10000959C(v10);
    }

    else
    {
    }
  }

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_10039E090);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "ORReadOperation onUpdate(with: .cancelled)", v18, 2u);
  }

  v19 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
  if (v19)
  {
    [v19 onUpdateWithEvent:2];
  }

  sub_10000F7CC();
  sub_10000CCE4(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData, v30);
  sub_10000BE18(v30, v30[3]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(1);
  if (v31[3])
  {
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      sub_10000959C(v30);
      v20 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 7;
      v30[0] = v29;
      swift_errorRetain();
      type metadata accessor for ORError(0);
      if (swift_dynamicCast())
      {
        v22 = v31[0];
        sub_10001A528(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);
        _BridgedStoredNSError.code.getter();

        v23 = v29;
        v24 = &type metadata for Int;
      }

      else
      {
        v24 = 0;
        v23 = 0;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
      }

      *(inited + 64) = v24;
      *(inited + 40) = v23;
      sub_100183344(inited);
      swift_setDeallocating();
      v26 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
      v27 = *(v20 + 56);
      __chkstk_darwin(v26);
      os_unfair_lock_lock((v27 + 32));
      sub_10001A76C((v27 + 16));
      os_unfair_lock_unlock((v27 + 32));

      sub_100030E60();
      v28 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_completion);
      swift_errorRetain();
      v28(0);
    }

    else
    {
      return sub_10000959C(v30);
    }
  }

  else
  {
    sub_10000959C(v30);
    return sub_10000BD44(v31, &qword_10039E248, &qword_1002C23D0);
  }
}

uint64_t sub_10000F7CC()
{
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039E090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v15);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100346B20, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v15);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0 isExecuting])
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "ORReadOperation isExecuting", v13, 2u);
    }

    return sub_10000FA40(0);
  }

  else
  {

    return sub_10001093C();
  }
}

uint64_t sub_10000FA40(char a1)
{
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039E090);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001BLL, 0x8000000100346B00, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v24);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession);
  v24 = 0;
  if ([v13 stop:&v24])
  {
    v14 = v24;
    if (a1)
    {
      return sub_10000FDAC();
    }

    return sub_10001093C();
  }

  v15 = v24;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100008F6C(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error from NFSecureElementReaderSession.stop(): %s", v18, 0xCu);
    sub_10000959C(v19);

    if ((a1 & 1) == 0)
    {
      return sub_10001093C();
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      return sub_10001093C();
    }
  }

  return sub_10000FDAC();
}

uint64_t sub_10000FDAC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039E090);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD00000000000001FLL, 0x8000000100346AB0, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_10001A3E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FBE8;
  v19 = _Block_copy(aBlock);
  v1;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);

  return sub_10001093C();
}

uint64_t sub_1000101FC()
{
  v0 = type metadata accessor for OSSignpostError();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - v8;
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  sub_10000403C(v12, qword_10039E0A8);
  static OSSignpostID.exclusive.getter();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v29 = v4;
    v16 = v15;
    *v15 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, "ttp-clear-data", "begin ttp clear data", v16, 2u);
    v4 = v29;
  }

  (*(v4 + 16))(v9, v11, v3);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v18 = *(v4 + 8);
  v18(v11, v3);
  sub_100010764();
  v19 = OSSignposter.logHandle.getter();
  v20 = v32;
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v23 = v30;
    v22 = v31;
    if ((*(v30 + 88))(v2, v31) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v2, v22);
      v24 = "end ttp clear data";
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v21, v26, "ttp-clear-data", v24, v25, 2u);
  }

  return (v18)(v20, v3);
}

uint64_t sub_100010764()
{
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1258);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100346AE0, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100019870(1u, 0, 0xF000000000000000);
}

uint64_t sub_10001093C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_10039E090);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v3;
    aBlock[0] = v13;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100346A90, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    v3 = v24;
  }

  [v1 setExecuting:0];
  [v1 setFinished:1];
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  aBlock[4] = sub_10001A3D0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FB48;
  v21 = _Block_copy(aBlock);
  v22 = v1;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v3 + 8))(v5, v2);
  (*(v25 + 8))(v8, v26);
}

void sub_100010DAC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10001A3D8;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100003974;
  v6[3] = &unk_10037FB98;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 endSessionWithCompletion:v4];
  _Block_release(v4);
}

id sub_100010E90(uint64_t a1)
{
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NF SE Reader Session ended, onUpdate(with: .closed)", v5, 2u);
  }

  result = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
  if (result)
  {

    return [result onUpdateWithEvent:3];
  }

  return result;
}

id sub_100010FA8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v83 - v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  [v12 setDelegate:v1];
  [v12 setSessionDelegate:v1];
  if ([v1 isCancelled])
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000403C(v13, qword_10039E090);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ORReadOperation cancelled before start()", v16, 2u);
    }

    return sub_10000F7CC();
  }

  v86 = v11;
  v89 = v3;
  v90 = v2;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_10039E090);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v91 = v12;
  v87 = v6;
  v88 = v8;
  v85 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, &aBlock);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v29 = sub_100008F6C(v27, v28, &aBlock);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v30 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters];
  v31 = [v30 provisionReadTimeout];
  v32 = [v30 provisionReadTimeout];
  v83 = v19;
  if (v32 >= 1 && [v30 provisionReadTimeout] < 41)
  {
    v37 = v31;
  }

  else
  {
    v33 = v1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218240;
      *(v36 + 4) = [v30 provisionReadTimeout];

      *(v36 + 12) = 2048;
      *(v36 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Input provisionReadTimeout of %ld was invalid. Using maxPollingTime of %ld.", v36, 0x16u);
    }

    else
    {

      v34 = v33;
    }

    v37 = 40.0;
  }

  v84 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics];
  *(v84 + 64) = 0;
  v38 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem;

  dispatch thunk of DispatchWorkItem.cancel()();

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v37;
  v97 = sub_10001A4C0;
  v98 = v40;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_100003974;
  v96 = &unk_10037FC60;
  _Block_copy(&aBlock);
  v92 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v41 = DispatchWorkItem.init(flags:block:)();

  *&v1[v38] = v41;

  v42 = v87;
  static DispatchTime.now()();
  v43 = v88;
  + infix(_:_:)();
  v44 = v90;
  v45 = v89[1];
  v45(v42, v90);
  v89 = v1;

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v45(v43, v44);
  [v30 amount];
  LODWORD(v41) = v95;
  v47 = aBlock;
  v46 = v94;
  v48 = [v30 transactionId];
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = [v30 unpredictableNumber];
  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  sub_1000120D0(v47, v46, v41, v49, v51, v53, v55, [v30 currencyCode], objc_msgSend(v30, "countryCode"));
  sub_100009548(v53, v55);
  sub_100009548(v49, v51);
  sub_100004074(&qword_10039E238, &qword_1002C16D8);
  inited = swift_initStackObject();
  *(inited + 32) = 17;
  v57 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for UInt16;
  *(inited + 40) = -28672;
  sub_100183344(inited);
  swift_setDeallocating();
  v58 = sub_10000BD44(v57, &qword_10039E240, &unk_1002C16E0);
  v59 = *(v84 + 56);
  __chkstk_darwin(v58);
  os_unfair_lock_lock((v59 + 32));
  sub_10001A76C((v59 + 16));
  os_unfair_lock_unlock((v59 + 32));
  v60 = v91;

  aBlock = 0;
  if (![v60 start:&aBlock])
  {
    v67 = aBlock;
    v68 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock = v68;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_37:

      aBlock = 0;
      v94 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v79._countAndFlagsBits = 0xD000000000000031;
      v79._object = 0x8000000100346BC0;
      String.append(_:)(v79);
      v92 = v68;
      swift_errorRetain();
      v80._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v80);

      v81 = sub_1000205C0(20001, aBlock, v94, 0);
      v82 = *(v89 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
      *(v89 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v81;

      sub_10000F7CC();
    }

    v69 = v92;
    v70 = [v92 domain];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (v71 == String.init(cString:)() && v73 == v74)
    {
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v75 & 1) == 0)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    v76 = [v69 code];
    if ((v76 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v76))
    {
      if (v76 == 47)
      {

        v77 = sub_1000205C0(20006, 0xD000000000000044, 0x8000000100346C00, 0);
        v78 = *(v89 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
        *(v89 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v77;

        sub_10003101C(&off_10037CD00);
        sub_10000F7CC();
      }

      goto LABEL_36;
    }

    __break(1u);
  }

  v61 = aBlock;
  v62 = v89;
  [v89 setExecuting:1];
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for OSSignposter();
  sub_10000403C(v63, qword_10039E0A8);
  sub_100186BE8("ttp-preprocessing", 17, 2, v60, 0xD000000000000015, 0x8000000100346C70);
  result = [v62 isCancelled];
  if (result)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "ORReadOperation is cancelled after start()", v66, 2u);
    }

    return sub_10000F7CC();
  }

  return result;
}

void sub_100011F80(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (([Strong isCancelled] & 1) == 0 && (objc_msgSend(v3, "isFinished") & 1) == 0)
    {
      if ([v3 isExecuting])
      {
        _StringGuts.grow(_:)(34);
        v4._object = 0x8000000100346CF0;
        v4._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v4);
        Double.write<A>(to:)();
        v5._countAndFlagsBits = 0x64657370616C6520;
        v5._object = 0xE800000000000000;
        String.append(_:)(v5);
        v6 = sub_1000205C0(20004, 0, 0xE000000000000000, 0);
        v7 = *&v3[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
        *&v3[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v6;

        *(*&v3[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics] + 64) = 1;
        [v3 cancel];
      }
    }
  }
}

uint64_t sub_1000120D0(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a8;
  v110 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  LODWORD(v117) = a3;
  v11 = type metadata accessor for TLV();
  v118 = *(v11 - 1);
  __chkstk_darwin(v11);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TLVTag();
  __chkstk_darwin(v14 - 8);
  v111 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  *(&v112 + 1) = *(v16 - 8);
  *&v113 = v16;
  __chkstk_darwin(v16);
  *&v112 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v114 = *(v18 - 8);
  v115 = v18;
  __chkstk_darwin(v18);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v116 = v20;
  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A1258);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v104 = v11;
  v103 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v25 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, &v119);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = showFunction(signature:_:)(0xD000000000000052, 0x8000000100346C90, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, &v119);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v105 = a9;
  v32 = v117;
  v33 = WORD1(v117);
  v34 = objc_allocWithZone(NSDecimalNumber);
  v119 = a1;
  v120 = a2;
  v121 = v32;
  v122 = v33;
  v35 = [v34 initWithDecimal:&v119];
  v36 = [v35 integerValue];

  if (v36 >= 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = -v36;
  }

  v119 = v37;
  sub_10001A4CC();
  v38 = UnsignedInteger.digitsAsBytes()();
  v40 = v39;
  v20 = Data.toBCD()();
  v13 = v41;
  sub_100009548(v38, v40);
  v128 = v20;
  v129 = v13;
  a1 = &qword_10039E2E8;
  a2 = &qword_1002C1728;
  v11 = &qword_10039E2F0;
  v42 = v116;
  while (1)
  {
    v43 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v43 == 2)
      {
        v45 = *(v20 + 16);
        v44 = *(v20 + 24);
        v20 = v44 - v45;
        if (__OFSUB__(v44, v45))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v43)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_33;
      }

      v20 = HIDWORD(v20) - v20;
    }

    else
    {
      v20 = BYTE6(v13);
    }

    if (v20 >= static TLVTag.TAG_9F02_LENGTH.getter())
    {
      break;
    }

    v46 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
    v123 = v46;
    v124 = sub_10001A570(&qword_10039E2F0, &qword_10039E2E8, &qword_1002C1728, &protocol conformance descriptor for <A> CollectionOfOne<A>);
    LOBYTE(v119) = 0;
    LOBYTE(v126) = *sub_10000BE18(&v119, v46);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10000959C(&v119);
    v20 = v128;
    v13 = v129;
  }

  Date.init()();
  v47 = [objc_allocWithZone(NSDateFormatter) init];
  v48 = v112;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(*(&v112 + 1) + 8))(v48, v113);
  [v47 setLocale:isa];

  v50 = String._bridgeToObjectiveC()();
  [v47 setDateFormat:v50];

  v51 = Date._bridgeToObjectiveC()().super.isa;
  v52 = [v47 stringFromDate:v51];

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v119 = sub_100146900(v53, v55);
  v120 = v56;
  v57 = *(&v113 + 1);
  sub_100121DBC(&v119);
  if (v57)
  {
    (*(v114 + 8))(v42, v115);
  }

  else
  {
    v58 = String._bridgeToObjectiveC()();
    [v47 setDateFormat:v58];

    v59 = Date._bridgeToObjectiveC()().super.isa;
    v60 = [v47 stringFromDate:v59];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v126 = sub_100146900(v61, v63);
    v127 = v64;
    sub_100121DBC(&v126);
    v102 = v47;
    v65 = v106;
    if (v106 < 0)
    {
      v65 = -v106;
    }

    *&v125 = v65;
    v66 = UnsignedInteger.digitsAsBytes()();
    v68 = v67;
    v69 = Data.toBCD()();
    v71 = v70;
    sub_100009548(v66, v68);
    v72 = static TLVTag.TAG_5F2A_LENGTH.getter();
    sub_100087378(v72, v69, v71, &v125);
    v113 = v125;
    v73 = v105;
    if (v105 < 0)
    {
      v73 = -v105;
    }

    *&v125 = v73;
    v74 = UnsignedInteger.digitsAsBytes()();
    v76 = v75;
    v77 = Data.toBCD()();
    v79 = v78;
    sub_100009548(v74, v76);
    v80 = static TLVTag.TAG_9F1A_LENGTH.getter();
    sub_100087378(v80, v77, v79, &v125);
    v112 = v125;
    v106 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v81 = *(v118 + 72);
    v82 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v105 = 4 * v81;
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1002C1680;
    static TLVTag.authorizedAmount.getter();
    sub_1000094F4(v128, v129);
    TLV.init(tag:value:)();
    static TLVTag.provisionDataTransactionId.getter();
    sub_1000094F4(v107, v108);
    TLV.init(tag:value:)();
    v108 = 2 * v81;
    static TLVTag.unpredictableNumber.getter();
    sub_1000094F4(v109, v110);
    TLV.init(tag:value:)();
    v110 = 3 * v81;
    static TLVTag.otherAmount.getter();
    static TLVTag.TAG_9F03_DEFAULT.getter();
    TLV.init(tag:value:)();
    static TLVTag.transactionType.getter();
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1002C1660;
    *(v83 + 32) = 0;
    sub_10014B8C8(v83);

    v84 = v81;
    TLV.init(tag:value:)();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1002C1690;
    static TLVTag.transactionDate.getter();
    Data.toBCD()();
    TLV.init(tag:value:)();
    static TLVTag.transactionTime.getter();
    Data.toBCD()();
    TLV.init(tag:value:)();
    static TLVTag.transactionCurrencyCode.getter();
    sub_1000094F4(v113, *(&v113 + 1));
    TLV.init(tag:value:)();
    static TLVTag.terminalCountryCode.getter();
    sub_1000094F4(v112, *(&v112 + 1));
    TLV.init(tag:value:)();
    *&v125 = v117;
    sub_10004385C(v85);
    v86 = v125;
    v125 = xmmword_1002BDC30;
    v87 = *(v86 + 16);
    if (v87)
    {
      v111 = 0;
      v110 = v86;
      v88 = v86 + v82;
      v117 = *(v118 + 16);
      v118 += 16;
      v89 = (v118 - 8);
      v90 = v104;
      v91 = v103;
      do
      {
        (v117)(v91, v88, v90);
        v92 = v84;
        v93 = TLV.dataRepresentation.getter();
        v95 = v94;
        Data.append(_:)();
        v96 = v93;
        v84 = v92;
        sub_100009548(v96, v95);
        (*v89)(v91, v90);
        v88 += v92;
        --v87;
      }

      while (v87);

      v98 = *(&v125 + 1);
      v97 = v125;
    }

    else
    {

      v97 = 0;
      v98 = 0xC000000000000000;
    }

    sub_1000094F4(v97, v98);
    sub_100019870(0, v97, v98);
    v99 = v116;

    sub_100009548(v113, *(&v113 + 1));
    sub_100009548(v112, *(&v112 + 1));
    sub_100009548(v97, v98);
    sub_100009548(v97, v98);
    (*(v114 + 8))(v99, v115);
    sub_100009548(v126, v127);
  }

  sub_100009548(v119, v120);
  return sub_100009548(v128, v129);
}

uint64_t sub_100012DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039E090);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleSessionReachedTimeLimit()", v16, 2u);
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_10001A3AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FAF8;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000130D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D2D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_10039E090);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v4;
    *v17 = 67109120;
    *(v17 + 4) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "didReceiveThermalIndication %{BOOL}d", v17, 8u);
    v4 = v23;
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v5 & 1;
  aBlock[4] = sub_10001A380;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FAA8;
  v19 = _Block_copy(aBlock);
  v20 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void sub_1000134A4(char a1)
{
  if (a1)
  {
    v2 = sub_1000205C0(20006, 0xD00000000000001ELL, 0x8000000100343A90, 0);
    v3 = *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
    *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v2;

    if (qword_10039D2E0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSSignposter();
    sub_10000403C(v4, qword_10039E0A8);
    sub_100186BE8("ttp-reader-mode-polling", 23, 2, *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000027, 0x8000000100346A60);
    v5 = *(*(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock(v5 + 8);
    sub_10011CC08(&v5[4], 3);
    os_unfair_lock_unlock(v5 + 8);
    sub_10003101C(&off_10037CD28);

    sub_10001093C();
  }

  else
  {
    sub_10003101C(&off_10037CD50);
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_10039E090);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Reader Mode may be restarted", v8, 2u);
    }
  }
}

uint64_t sub_1000136D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D2D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039E090);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "secureElementReaderSessionDidEndUnexpectedly()", v16, 2u);
  }

  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_10001A794;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FA58;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_100013A58()
{
  v1 = sub_1000205C0(20001, 0xD00000000000002FLL, 0x8000000100346A30, 0);
  v2 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError;
  v3 = *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
  *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v1;

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039E090);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v19 = *&v0[v2];
    v20 = v9;
    v10 = v19;
    sub_100004074(&qword_10039E298, &unk_1002C1710);
    v11 = String.init<A>(describing:)();
    v13 = sub_100008F6C(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "ORReadOperation onUpdate(with: .closed)", v16, 2u);
  }

  v17 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate];
  if (v17)
  {
    [v17 onUpdateWithEvent:3];
  }

  return sub_10001093C();
}

void sub_100013CDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v4 - 8);
  v64 = &v60 - v5;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v60 - v14;
  v16 = type metadata accessor for StopWatch(0);
  v65 = *(v16 - 8);
  __chkstk_darwin(v16);
  v63 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 0x676E696C6C6F50;
  v67 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v18 = sub_1000F5AC4(v68), (v19 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v18, v69);
    sub_10001A124(v68);
    if (swift_dynamicCast())
    {
      v62 = v7;
      v21 = v66;
      v20 = v67;
      if (v66 == 65 && v67 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000403C(v22, qword_10039E090);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Type A polling didStart", v25, 2u);
        }

        v26 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
        swift_beginAccess();
        if (v26[1] >= *v26)
        {
          atomic_fetch_add_explicit(v26, 1u, memory_order_relaxed);
        }

        swift_endAccess();
        v7 = v62;
      }

      else
      {
        if (v21 == 66 && v20 == 0xE100000000000000)
        {
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v7 = v62;
          if ((v54 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_10000403C(v55, qword_10039E090);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Type B polling didStart", v58, 2u);
        }

        v59 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
        swift_beginAccess();
        v7 = v62;
        if (*v59 >= v59[1])
        {
          atomic_fetch_add_explicit(v59 + 1, 1u, memory_order_relaxed);
        }

        swift_endAccess();
      }
    }
  }

  else
  {
    sub_10001A124(v68);
  }

LABEL_15:
  v27 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
  swift_beginAccess();
  v28 = v27[1];
  if (*v27 == 1 && v28 == 1)
  {
    v62 = v16;
    v29 = v9;
    v30 = v7;
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_10039E090);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "ORReadOperation onUpdate(with: .ready)", v34, 2u);
    }

    v35 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
    if (v35)
    {
      [v35 onUpdateWithEvent:0];
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = v30;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "--- --- ---> EMV-type polling started, tap a card to provision", v39, 2u);
    }

    v61 = v29;
    if (qword_10039D2E0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for OSSignposter();
    sub_10000403C(v40, qword_10039E0A8);
    sub_100186948("ttp-reader-mode-polling", 23, 2, *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000011, 0x8000000100346A10);
    v41 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock((v41 + 32));
    v42 = *(v30 + 56);
    v42(v15, 1, 1, v6);
    v42(v13, 1, 1, v6);
    v43 = v63;
    v42(v63, 1, 1, v6);
    v44 = v62;
    v45 = *(v62 + 20);
    v42((v43 + v45), 1, 1, v6);
    sub_10001A178(v15, v43);
    sub_10001A178(v13, v43 + v45);
    v46 = v61;
    static DispatchTime.now()();
    sub_10000BD44(v43, &qword_10039E290, &unk_1002C37C0);
    (*(v38 + 32))(v43, v46, v6);
    v42(v43, 0, 1, v6);
    v47 = v64;
    sub_10001A1E8(v43, v64);
    (*(v65 + 56))(v47, 0, 1, v44);
    sub_10002D278(v47, 0x54676E696C6C6F70, 0xEE00534156656D69);
    sub_10001A24C(v43);
  }

  else
  {
    if (*v27 != v28)
    {
      return;
    }

    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000403C(v48, qword_10039E090);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "ORReadOperation onUpdate(with: .cardTear)", v51, 2u);
    }

    v52 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
    if (v52)
    {
      [v52 onUpdateWithEvent:5];
    }

    v53 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
    *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = 0;

    v41 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock((v41 + 32));
    sub_10011C060((v41 + 16), 13, 1);
  }

  os_unfair_lock_unlock((v41 + 32));
}

uint64_t sub_1000146BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    *(v16 + 24) = a2;
    aBlock[4] = v19;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = v20;
    v17 = _Block_copy(aBlock);
    v18 = v5;

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001493C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

uint64_t sub_1000149DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    v21 = v12;
    v17[6] = v22;
    aBlock[4] = sub_10001A0D0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_10037F968;
    v18 = _Block_copy(aBlock);
    v19 = v5;
    sub_1000094F4(a2, a3);

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v9 + 8))(v11, v23);
    (*(v13 + 8))(v15, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100014D4C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v302 = a1;
  v8 = type metadata accessor for Data.Endianness();
  v9 = *(v8 - 1);
  v297 = v8;
  v298 = v9;
  __chkstk_darwin(v8);
  v296 = v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostError();
  v290 = *(v11 - 8);
  __chkstk_darwin(v11);
  v289 = v278 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for OSSignpostID();
  v295 = *(v293 - 8);
  v13 = __chkstk_darwin(v293);
  v291 = v278 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v292 = v278 - v16;
  __chkstk_darwin(v15);
  v294 = v278 - v17;
  v18 = type metadata accessor for TLVTag();
  v300 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = v278 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v299 = v278 - v22;
  v23 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  __chkstk_darwin(v23 - 8);
  v25 = v278 - v24;
  v26 = type metadata accessor for TLV();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v29 = __chkstk_darwin(v28);
  v30 = __chkstk_darwin(v29);
  *&v301 = a2;
  v34 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v34 != 2 || *(v302 + 16) == *(v302 + 24))
    {
LABEL_13:
      if (qword_10039D2D8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000403C(v49, qword_10039E090);
      v302 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v302, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v303._countAndFlagsBits = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_100008F6C(0xD000000000000021, 0x80000001003469E0, &v303._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v302, v50, "%s receivedData isEmpty", v51, 0xCu);
        sub_10000959C(v52);

LABEL_21:

        return;
      }

LABEL_22:
      v57 = v302;

      return;
    }
  }

  else if (v34)
  {
    if (v302 == v302 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((v301 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v284 = v32;
  v285 = v33;
  v287 = v278 - v31;
  v288 = v30;
  if ((sub_10011A8C8(0x3830303030303041, 0xEB00000000383835, a3, a4) & 1) == 0)
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000403C(v53, qword_10039E090);

    v302 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v302, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v303._countAndFlagsBits = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_100008F6C(a3, a4, &v303._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v302, v54, "receivedData from unrecognized applet: %s", v55, 0xCu);
      sub_10000959C(v56);

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v282 = v11;
  v283 = v4;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_10000403C(v35, qword_10039E090);
  v37 = v302;
  v38 = v301;
  sub_1000094F4(v302, v301);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  sub_100009548(v37, v38);
  v41 = os_log_type_enabled(v39, v40);
  v286 = v27;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v279 = v39;
    v43 = v42;
    v280 = swift_slowAlloc();
    v303._countAndFlagsBits = v280;
    *v43 = 136315394;
    *(v43 + 4) = sub_100008F6C(0xD000000000000021, 0x80000001003469E0, &v303._countAndFlagsBits);
    *(v43 + 12) = 2082;
    v44 = Data.hexString()();
    v45 = sub_100008F6C(v44._countAndFlagsBits, v44._object, &v303._countAndFlagsBits);
    v281 = v18;
    v46 = v45;
    v38 = v301;

    *(v43 + 14) = v46;
    v47 = v40;
    v18 = v281;
    v48 = v279;
    _os_log_impl(&_mh_execute_header, v279, v47, "%s receivedData: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000094F4(v37, v38);
  TLV.init(dataRepresentation:)();
  v278[1] = v36;
  v281 = 0;
  v58 = v286;
  v59 = v288;
  (*(v286 + 56))(v25, 0, 1, v288);
  (*(v58 + 32))(v287, v25, v59);
  v60 = v299;
  TLV.tag.getter();
  static TLVTag.eventStatus.getter();
  sub_10001A528(&qword_10039E260, &type metadata accessor for TLVTag, &protocol conformance descriptor for TLVTag);
  LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v300 + 8);
  v61(v21, v18);
  if (v59)
  {
    v61(v60, v18);
    if ((TLV.length.getter() | 2) == 3)
    {
      v62 = TLV.value.getter();
      v64 = v63;
      v65 = sub_10011AA24(v62, v63);
      sub_100009548(v62, v64);
      if ((v65 & 0x100) != 0)
      {
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&_mh_execute_header, v123, v124, "Could not get status byte from HCI event: Status", v125, 2u);
        }

        goto LABEL_52;
      }

      v66 = v302;
      v67 = v301;
      sub_1000094F4(v302, v301);
      v68 = Logger.logObject.getter();
      if (v65 <= 0x14u)
      {
        if (v65 != 6)
        {
          if (v65 == 7)
          {
            v69 = static os_log_type_t.error.getter();
            sub_100009548(v66, v67);
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v303._countAndFlagsBits = v71;
              *v70 = 136315138;
              v72 = Data.hexString()();
              v73 = sub_100008F6C(v72._countAndFlagsBits, v72._object, &v303._countAndFlagsBits);

              *(v70 + 4) = v73;
              _os_log_impl(&_mh_execute_header, v68, v69, "HCI event: Status: Transaction Error (%s) <--- --- ---", v70, 0xCu);
              sub_10000959C(v71);
            }

            v74 = v286;
            sub_1000172F4(7);
            (*(v74 + 8))(v287, v288);
            return;
          }

          goto LABEL_84;
        }

        v200 = static os_log_type_t.default.getter();
        sub_100009548(v66, v67);
        if (os_log_type_enabled(v68, v200))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v303._countAndFlagsBits = v202;
          *v201 = 136315138;
          v203 = Data.hexString()();
          v204 = sub_100008F6C(v203._countAndFlagsBits, v203._object, &v303._countAndFlagsBits);

          *(v201 + 4) = v204;
          _os_log_impl(&_mh_execute_header, v68, v200, "HCI event: Status: Transaction Complete (%s) <--- --- ---", v201, 0xCu);
          sub_10000959C(v202);
        }

        sub_1000172F4(6);
LABEL_52:
        (*(v58 + 8))(v287, v288);
        return;
      }

      v147 = v283;
      if (v65 == 21)
      {
        v194 = static os_log_type_t.default.getter();
        sub_100009548(v66, v67);
        if (os_log_type_enabled(v68, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v303._countAndFlagsBits = v196;
          *v195 = 136315138;
          v205 = Data.hexString()();
          v206 = sub_100008F6C(v205._countAndFlagsBits, v205._object, &v303._countAndFlagsBits);

          *(v195 + 4) = v206;
          v199 = "HCI event: Status: Remove Card (%s)";
          goto LABEL_91;
        }

LABEL_92:

        (*(v286 + 8))(v287, v288);
        return;
      }

      if (v65 != 30)
      {
LABEL_84:
        v194 = static os_log_type_t.error.getter();
        sub_100009548(v66, v67);
        if (os_log_type_enabled(v68, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v303._countAndFlagsBits = v196;
          *v195 = 136315138;
          v197 = Data.hexString()();
          v198 = sub_100008F6C(v197._countAndFlagsBits, v197._object, &v303._countAndFlagsBits);

          *(v195 + 4) = v198;
          v199 = "HCI event: Unknown Status (%s)";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v68, v194, v199, v195, 0xCu);
          sub_10000959C(v196);

          goto LABEL_92;
        }

        goto LABEL_92;
      }

      v148 = static os_log_type_t.default.getter();
      sub_100009548(v66, v67);
      if (os_log_type_enabled(v68, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v303._countAndFlagsBits = v150;
        *v149 = 136315138;
        v151 = Data.hexString()();
        v152 = sub_100008F6C(v151._countAndFlagsBits, v151._object, &v303._countAndFlagsBits);

        *(v149 + 4) = v152;
        _os_log_impl(&_mh_execute_header, v68, v148, "HCI event: Status: Target Discovered (%s)", v149, 0xCu);
        sub_10000959C(v150);
      }

      v153 = v294;
      v154 = *(v147 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
      if (v154)
      {
        [v154 onUpdateWithEvent:1];
      }

      v155 = *(v147 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_10011B5DC(&off_10037CDF0);
      sub_10011AAAC(&off_10037CDC8);
      if (qword_10039D2E0 != -1)
      {
        swift_once();
      }

      v156 = type metadata accessor for OSSignposter();
      sub_10000403C(v156, qword_10039E0A8);
      OSSignposter.logHandle.getter();
      swift_unknownObjectRetain();
      OSSignpostID.init(log:object:)();
      v157 = v295;
      v158 = v293;
      v302 = *(v295 + 16);
      v300 = v295 + 16;
      (v302)(v292, v153, v293);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v159 = OSSignpostIntervalState.init(id:isOpen:)();
      v160 = OSSignposter.logHandle.getter();
      v161 = v291;
      OSSignpostIntervalState.signpostID.getter();
      LODWORD(v299) = static os_signpost_type_t.end.getter();
      v162 = OS_os_log.signpostsEnabled.getter();
      v298 = v155;
      *&v301 = v159;
      if (v162)
      {

        v163 = v289;
        checkForErrorAndConsumeState(state:)();

        v164 = v290;
        v165 = v282;
        if ((*(v290 + 88))(v163, v282) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v166 = 0;
          v167 = 0;
          v297 = "[Error] Interval already ended";
        }

        else
        {
          (*(v164 + 8))(v163, v165);
          v297 = "%s";
          v167 = 2;
          v166 = 1;
        }

        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v303._countAndFlagsBits = v243;
        *v242 = v167;
        *(v242 + 1) = v166;
        *(v242 + 2) = 2080;
        *(v242 + 4) = sub_100008F6C(0x2070747420646E65, 0xEF676E696C6C6F70, &v303._countAndFlagsBits);
        v244 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v160, v299, v244, "ttp-reader-mode-polling", v297, v242, 0xCu);
        sub_10000959C(v243);

        v241 = *(v295 + 8);
        v158 = v293;
        v241(v161, v293);
      }

      else
      {

        v241 = *(v157 + 8);
        v241(v161, v158);
      }

      v245 = OSSignposter.logHandle.getter();
      v246 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v303._countAndFlagsBits = v248;
        *v247 = 136315138;
        *(v247 + 4) = sub_100008F6C(0x7474206E69676562, 0xEE00646165722070, &v303._countAndFlagsBits);
        v249 = v294;
        v250 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v245, v246, v250, "ttp-reader-mode-reading", "%s", v247, 0xCu);
        sub_10000959C(v248);
        v158 = v293;

        v251 = v286;
      }

      else
      {

        v251 = v286;
        v249 = v294;
      }

      (v302)(v292, v249, v158);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();

      v241(v249, v158);
      v252 = v287;
      if (TLV.length.getter() != 3)
      {
        (*(v251 + 8))(v252, v288);
        return;
      }

      v253 = TLV.value.getter();
      v255 = v254;
      v256 = Data.at(index:)();
      v258 = v257;
      sub_100009548(v253, v255);
      if (v258 >> 60 == 15)
      {
        goto LABEL_109;
      }

      v262 = Data.toUInt8()();
      sub_10001A074(v256, v258);
      switch(v262)
      {
        case 0xFFu:
          v263 = 2;
          break;
        case 0x13u:
          v263 = 0;
          break;
        case 0x11u:
          v263 = 1;
          break;
        default:
LABEL_109:
          v259 = Logger.logObject.getter();
          v260 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v259, v260))
          {
            v261 = swift_slowAlloc();
            *v261 = 0;
            _os_log_impl(&_mh_execute_header, v259, v260, "Unexpected polling type in HCI event", v261, 2u);
          }

          (*(v251 + 8))(v287, v288);
          return;
      }

      v264 = Logger.logObject.getter();
      v265 = static os_log_type_t.debug.getter();
      v266 = os_log_type_enabled(v264, v265);
      v267 = v298;
      if (v266)
      {
        v268 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v303._countAndFlagsBits = v269;
        *v268 = 136315138;
        if (v263)
        {
          if (v263 == 2)
          {
            v270 = 0xE700000000000000;
            v271 = 0x6E776F6E6B6E75;
          }

          else
          {
            v270 = 0xE100000000000000;
            v271 = 66;
          }
        }

        else
        {
          v270 = 0xE100000000000000;
          v271 = 65;
        }

        v272 = sub_100008F6C(v271, v270, &v303._countAndFlagsBits);

        *(v268 + 4) = v272;
        _os_log_impl(&_mh_execute_header, v264, v265, "pollingType is: %s", v268, 0xCu);
        sub_10000959C(v269);
      }

      else
      {
      }

      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 6;
      v274 = inited + 32;
      *(inited + 64) = &type metadata for UInt8;
      *(inited + 40) = 0xFF1113u >> (8 * v263);
      v275 = sub_100183344(inited);
      swift_setDeallocating();
      v276 = sub_10000BD44(v274, &qword_10039E240, &unk_1002C16E0);
      v277 = *(v267 + 7);
      __chkstk_darwin(v276);
      v278[-2] = v275;
      os_unfair_lock_lock((v277 + 32));
      sub_10001A76C((v277 + 16));
      os_unfair_lock_unlock((v277 + 32));

      (*(v286 + 8))(v287, v288);
      return;
    }

    v99 = TLV.value.getter();
    sub_100170B68(2, v99, v100, &v303._countAndFlagsBits);
    countAndFlagsBits = v303._countAndFlagsBits;
    object = v303._object;
    sub_1000094F4(v303._countAndFlagsBits, v303._object);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    sub_100009548(countAndFlagsBits, object);
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v303._countAndFlagsBits = v106;
      *v105 = 136315138;
      v107 = Data.hexString()();
      v108 = sub_100008F6C(v107._countAndFlagsBits, v107._object, &v303._countAndFlagsBits);

      *(v105 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v103, v104, "HCI event: Status: PPSE Response: %s", v105, 0xCu);
      sub_10000959C(v106);
    }

    v109 = v283;
    v302 = countAndFlagsBits;
    *&v301 = object;
    v110 = sub_1000FA3E8(countAndFlagsBits, object);
    v111 = *(v109 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    v112 = swift_initStackObject();
    v113 = v112;
    *(v112 + 16) = xmmword_1002C1660;
    *(v112 + 32) = 18;
    v114 = v112 + 32;
    v115 = *(v110 + 2);
    if (v115)
    {
      v299 = (v112 + 32);
      v300 = v111;
      v303._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v115, 0);
      v116 = v303._countAndFlagsBits;
      v298 = v110;
      v117 = (v110 + 40);
      do
      {
        v118 = *(v117 - 1);
        v119 = *v117;
        sub_1000094F4(v118, *v117);
        v120 = Data.hexString()();
        sub_100009548(v118, v119);
        v303._countAndFlagsBits = v116;
        v122 = v116[2];
        v121 = v116[3];
        if (v122 >= v121 >> 1)
        {
          sub_10004E2DC((v121 > 1), v122 + 1, 1);
          v116 = v303._countAndFlagsBits;
        }

        v117 += 2;
        v116[2] = v122 + 1;
        *&v116[2 * v122 + 4] = v120;
        --v115;
      }

      while (v115);

      v114 = v299;
      v111 = v300;
    }

    else
    {

      v116 = _swiftEmptyArrayStorage;
    }

    v303._countAndFlagsBits = v116;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
    v168 = BidirectionalCollection<>.joined(separator:)();
    v170 = v169;

    v113[8] = &type metadata for String;
    v113[5] = v168;
    v113[6] = v170;
    v171 = sub_100183344(v113);
    swift_setDeallocating();
    v172 = sub_10000BD44(v114, &qword_10039E240, &unk_1002C16E0);
    v173 = *(v111 + 56);
    __chkstk_darwin(v172);
    v278[-2] = v171;
    os_unfair_lock_lock((v173 + 32));
    sub_10001A76C((v173 + 16));
    os_unfair_lock_unlock((v173 + 32));
    sub_100009548(v302, v301);

    (*(v286 + 8))(v287, v288);
  }

  else
  {
    static TLVTag.eventOutcome.getter();
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61(v21, v18);
    if (v75)
    {
      v61(v60, v18);
      v76 = v285;
      v77 = v288;
      (*(v58 + 16))(v285, v287, v288);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v303._countAndFlagsBits = v81;
        *v80 = 136315138;
        v82 = TLV.hexStringValue.getter();
        v84 = v83;
        v85 = v76;
        v86 = *(v58 + 8);
        v86(v85, v77);
        v87 = sub_100008F6C(v82, v84, &v303._countAndFlagsBits);

        *(v80 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v78, v79, "HCI event: Outcome Parameter Set: %s", v80, 0xCu);
        sub_10000959C(v81);
      }

      else
      {

        v126 = v76;
        v86 = *(v58 + 8);
        v86(v126, v77);
      }

      v127 = *(v283 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      v128 = swift_initStackObject();
      *(v128 + 16) = xmmword_1002C1660;
      *(v128 + 32) = 14;
      v129 = TLV.uint64Value.getter();
      if (v130)
      {
        v129 = 0;
        v131 = 0;
        *(v128 + 48) = 0;
        *(v128 + 56) = 0;
      }

      else
      {
        v131 = &type metadata for UInt64;
      }

      *(v128 + 40) = v129;
      *(v128 + 64) = v131;
      v132 = sub_100183344(v128);
      swift_setDeallocating();
      v133 = sub_10000BD44(v128 + 32, &qword_10039E240, &unk_1002C16E0);
      v134 = *(v127 + 56);
      __chkstk_darwin(v133);
      v278[-2] = v132;
      os_unfair_lock_lock((v134 + 32));
      sub_10001A76C((v134 + 16));
      os_unfair_lock_unlock((v134 + 32));

      v135 = v287;
      v136 = TLV.value.getter();
      v138 = v137;
      v139 = sub_1000FA9C0(v136, v137);
      sub_100009548(v136, v138);
      if ((v139 & 0x100) != 0)
      {
        v146 = v135;
      }

      else
      {
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v302 = swift_slowAlloc();
          v303._countAndFlagsBits = v302;
          *v142 = 136315138;
          v143 = SPRTransactionOutcomeStatus.description.getter();
          v145 = sub_100008F6C(v143, v144, &v303._countAndFlagsBits);

          *(v142 + 4) = v145;
          _os_log_impl(&_mh_execute_header, v140, v141, "OPS Status: %s", v142, 0xCu);
          sub_10000959C(v302);
        }

        sub_100030F64(v139);
        v146 = v287;
      }

      v86(v146, v288);
    }

    else
    {
      static TLVTag.eventErrorIndication.getter();
      v88 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61(v21, v18);
      v61(v60, v18);
      if ((v88 & 1) == 0)
      {
        goto LABEL_52;
      }

      v89 = v284;
      v90 = v288;
      (*(v58 + 16))(v284, v287, v288);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v303._countAndFlagsBits = v94;
        *v93 = 136315138;
        v95 = TLV.hexStringValue.getter();
        v97 = v96;
        v300 = *(v58 + 8);
        (v300)(v89, v90);
        v98 = sub_100008F6C(v95, v97, &v303._countAndFlagsBits);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v91, v92, "HCI event: Error Indication: %s", v93, 0xCu);
        sub_10000959C(v94);
      }

      else
      {

        v300 = *(v58 + 8);
        (v300)(v89, v90);
      }

      v302 = *(v283 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      v174 = swift_initStackObject();
      v301 = xmmword_1002C1660;
      *(v174 + 16) = xmmword_1002C1660;
      *(v174 + 32) = 8;
      v67 = v174 + 32;
      v175 = TLV.value.getter();
      v177 = v176;
      v178 = v297;
      v179 = v298;
      v180 = *(v298 + 13);
      v181 = v296;
      LODWORD(v295) = enum case for Data.Endianness.bigEndian(_:);
      v299 = v298 + 104;
      v294 = v180;
      (v180)(v296);
      v182 = Data.toUInt64(endianness:)();
      sub_100009548(v175, v177);
      v183 = *(v179 + 1);
      v298 = v179 + 8;
      v183(v181, v178);
      v184 = v183;
      *(v174 + 64) = &type metadata for UInt64;
      *(v174 + 40) = v182;
      v66 = sub_100183344(v174);
      swift_setDeallocating();
      v185 = sub_10000BD44(v174 + 32, &qword_10039E240, &unk_1002C16E0);
      v68 = *(v302 + 56);
      __chkstk_darwin(v185);
      v278[-2] = v66;
      os_unfair_lock_lock(&v68[4]);
      sub_10001A76C(&v68[2].isa);
      os_unfair_lock_unlock(&v68[4]);

      v186 = TLV.value.getter();
      v188 = v187 >> 62;
      if ((v187 >> 62) > 1)
      {
        if (v188 == 2)
        {
          v192 = *(v186 + 16);
          v191 = *(v186 + 24);
          sub_100009548(v186, v187);
          v193 = __OFSUB__(v191, v192);
          v190 = v191 - v192;
          if (v193)
          {
            __break(1u);
            goto LABEL_84;
          }
        }

        else
        {
          sub_100009548(v186, v187);
          v190 = 0;
        }
      }

      else if (v188)
      {
        v207 = HIDWORD(v186);
        v208 = v186;
        sub_100009548(v186, v187);
        if (__OFSUB__(v207, v208))
        {
          __break(1u);
          return;
        }

        v190 = v207 - v208;
      }

      else
      {
        v189 = BYTE6(v187);
        sub_100009548(v186, v187);
        v190 = v189;
      }

      if (v190 == static TLVTag.TAG_DF8115_LENGTH.getter())
      {
        v209 = TLV.value.getter();
        v211 = v210;
        static TLVTag.OFFSET_ERROR_INDICATION_L2.getter();
        v212 = Data._Representation.subscript.getter();
        sub_100009548(v209, v211);
        v213 = TLV.value.getter();
        v215 = v214;
        v216 = static TLVTag.OFFSET_ERROR_INDICATION_SW12.getter();
        v218 = sub_1000FABDC(v216, v217, v213, v215);
        v220 = v219;
        sub_100009548(v213, v215);
        v222 = v296;
        v221 = v297;
        (v294)(v296, v295, v297);
        LOWORD(v215) = Data.toUInt16(endianness:)();
        sub_100009548(v218, v220);
        v184(v222, v221);
        v303._countAndFlagsBits = 0;
        v303._object = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v303._countAndFlagsBits = 0xD000000000000015;
        v303._object = 0x8000000100346980;
        sub_100004074(&qword_10039E268, &unk_1002C16F0);
        v223 = swift_allocObject();
        *(v223 + 16) = v301;
        *(v223 + 56) = &type metadata for UInt8;
        *(v223 + 64) = &protocol witness table for UInt8;
        *(v223 + 32) = v212;
        v224._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v224);

        v225._countAndFlagsBits = 0x203A32315753202CLL;
        v225._object = 0xE800000000000000;
        String.append(_:)(v225);
        v226 = swift_allocObject();
        *(v226 + 16) = v301;
        *(v226 + 56) = &type metadata for UInt16;
        *(v226 + 64) = &protocol witness table for UInt16;
        *(v226 + 32) = v215;
        v227._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v227);

        v305 = v303;
        v228 = TLV.value.getter();
        v230 = v229;
        static TLVTag.OFFSET_ERROR_INDICATION_MSG_ON_ERROR.getter();
        v231 = Data._Representation.subscript.getter();
        v233 = v232;
        sub_100009548(v228, v230);
        Data.toUInt8()();
        sub_100009548(v231, v233);
        v303._countAndFlagsBits = 0;
        v303._object = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v303._countAndFlagsBits = 0xD000000000000010;
        v303._object = 0x80000001003469A0;
        v234._countAndFlagsBits = SPRTransactionMessage.description.getter();
        String.append(_:)(v234);

        String.append(_:)(v303);

        v235 = v305;

        v236 = Logger.logObject.getter();
        v237 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          v303._countAndFlagsBits = v239;
          *v238 = 136315138;
          *(v238 + 4) = sub_100008F6C(v235._countAndFlagsBits, v235._object, &v303._countAndFlagsBits);
          _os_log_impl(&_mh_execute_header, v236, v237, "%s", v238, 0xCu);
          sub_10000959C(v239);
        }

        v240 = v286;
        v304 = &type metadata for String;
        v303 = v235;
        swift_beginAccess();
        sub_10002CFD4(&v303, 0xD000000000000015, 0x80000001003468A0);
        swift_endAccess();
        (*(v240 + 8))(v287, v288);
      }

      else
      {
        (v300)(v287, v288);
      }
    }
  }
}

uint64_t sub_1000172F4(int a1)
{
  LODWORD(v214) = a1;
  v202 = type metadata accessor for TLV();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v191 = &v190 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for TLVTag();
  v199 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v5 = __chkstk_darwin(v4 - 8);
  v190 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v193 = &v190 - v8;
  v9 = __chkstk_darwin(v7);
  v192 = &v190 - v10;
  v11 = __chkstk_darwin(v9);
  v198 = &v190 - v12;
  v13 = __chkstk_darwin(v11);
  v197 = &v190 - v14;
  v15 = __chkstk_darwin(v13);
  v196 = &v190 - v16;
  v17 = __chkstk_darwin(v15);
  v195 = &v190 - v18;
  __chkstk_darwin(v17);
  v194 = &v190 - v19;
  v20 = type metadata accessor for OSSignpostError();
  v205 = *(v20 - 8);
  v206 = v20;
  __chkstk_darwin(v20);
  v204 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSSignpostID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = (&v190 - v28);
  __chkstk_darwin(v27);
  v31 = &v190 - v30;
  v215 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics];
  sub_10011B5DC(&off_10037CD78);
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSSignposter();
  v33 = sub_10000403C(v32, qword_10039E0A8);
  v34 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  OSSignposter.logHandle.getter();
  swift_unknownObjectRetain();
  v213 = v34;
  OSSignpostID.init(log:object:)();
  v35 = *(v23 + 16);
  v212 = v31;
  v209 = v35;
  v210 = v23 + 16;
  v35(v29, v31, v22);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v211 = v29;
  v36 = OSSignpostIntervalState.init(id:isOpen:)();
  v207 = v33;
  v37 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v38 = static os_signpost_type_t.end.getter();
  v39 = OS_os_log.signpostsEnabled.getter();
  v216 = v1;
  v217 = v23;
  v218 = v22;
  v208 = v36;
  if (v39)
  {

    v40 = v204;
    checkForErrorAndConsumeState(state:)();

    v42 = v205;
    v41 = v206;
    v43 = v38;
    if ((*(v205 + 88))(v40, v206) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v44 = 0;
      v45 = 0;
      v46 = "[Error] Interval already ended";
    }

    else
    {
      (*(v42 + 8))(v40, v41);
      v46 = "%s";
      v45 = 2;
      v44 = 1;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v222 = v49;
    *v48 = v45;
    *(v48 + 1) = v44;
    *(v48 + 2) = 2080;
    *(v48 + 4) = sub_100008F6C(0x2070747420646E65, 0xEC00000064616572, &v222);
    v50 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v43, v50, "ttp-reader-mode-reading", v46, v48, 0xCu);
    sub_10000959C(v49);

    v47 = *(v217 + 8);
    v47(v26, v218);
  }

  else
  {

    v47 = *(v23 + 8);
    v47(v26, v22);
  }

  v51 = OSSignposter.logHandle.getter();
  v52 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v222 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_100008F6C(0xD000000000000019, 0x8000000100346800, &v222);
    v55 = v212;
    v56 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v52, v56, "ttp-postprocessing", "%s", v53, 0xCu);
    sub_10000959C(v54);

    v57 = v214;
  }

  else
  {

    v57 = v214;
    v55 = v212;
  }

  v58 = v218;
  v209(v211, v55, v218);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();

  v47(v55, v58);
  v59 = v215;
  sub_10011AAAC(&off_10037CDA0);
  *(v59 + 66) = v57 == 6;
  *(v59 + 67) = v57 == 7;
  v60 = v216;
  if (([v216 isCancelled] & 1) == 0)
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    v67 = sub_10000403C(v66, qword_10039E090);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "ORReadOperation onUpdate(with: .complete)", v70, 2u);
    }

    v71 = *&v60[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate];
    if (v71)
    {
      [v71 onUpdateWithEvent:9];
    }

    v72 = 0;
    v73 = sub_100018F1C();
    v75 = v74;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v218 = 0;
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "analyticsData received", v78, 2u);
      v72 = v218;
    }

    v79 = static TLV.decode(from:)();
    if (v72)
    {
      sub_100009548(v73, v75);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Error on GET Analytics Data", v82, 2u);
      }

      goto LABEL_30;
    }

    v206 = v73;
    v207 = v75;
    v209 = v79;
    *&v222 = v79;
    v102 = v201;
    static TLVTag.applicationIdentifier.getter();
    v103 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v104 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0, &protocol conformance descriptor for [A]);
    v105 = v194;
    v217 = v103;
    v212 = v104;
    Collection<>.first(tag:)();
    v107 = (v199 + 8);
    v106 = *(v199 + 8);
    (v106)(v102, v203);
    v108 = v200;
    v109 = v200 + 48;
    v110 = v202;
    v211 = *(v200 + 48);
    v111 = v211(v105, 1, v202);
    v208 = v67;
    v218 = v106;
    if (v111 == 1)
    {
      sub_10000BD44(v105, &unk_10039E210, &unk_1002C65B0);
      v112 = 0;
      v113 = 0;
    }

    else
    {
      v114 = TLV.hexStringValue.getter();
      v115 = v105;
      v112 = v114;
      v113 = v116;
      (*(v108 + 8))(v115, v110);

      sub_100019FD8(10, v112, v113);

      v117 = static String._fromSubstring(_:)();
      v119 = v118;

      *(&v223 + 1) = &type metadata for String;
      *&v222 = v117;
      *(&v222 + 1) = v119;
      swift_beginAccess();
      sub_10002CFD4(&v222, 6580594, 0xE300000000000000);
      swift_endAccess();
    }

    v120 = v196;
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    inited = swift_initStackObject();
    v122 = inited;
    *(inited + 16) = xmmword_1002C1680;
    *(inited + 32) = 0;
    v205 = inited + 32;
    v123 = v209;
    if (v113)
    {
      v124 = &type metadata for String;
    }

    else
    {
      v112 = 0;
      v124 = 0;
      *(inited + 56) = 0;
    }

    *(inited + 40) = v112;
    *(inited + 48) = v113;
    *(inited + 64) = v124;
    *(inited + 72) = 1;
    *&v222 = v123;
    v125 = v201;
    static TLVTag.applicationLabel.getter();
    v126 = v195;
    Collection<>.first(tag:)();
    v127 = v126;
    (v218)(v125, v203);
    v128 = v126;
    v129 = v202;
    if (v211(v128, 1, v202) == 1)
    {
      sub_10000BD44(v127, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v130 = TLV.stringValue.getter();
      v132 = v131;
      (*(v200 + 8))(v127, v129);
      if (v132)
      {
        *(v122 + 104) = &type metadata for String;
        *(v122 + 80) = v130;
        *(v122 + 88) = v132;
        goto LABEL_57;
      }
    }

    *(v122 + 80) = 0u;
    *(v122 + 96) = 0u;
LABEL_57:
    *(v122 + 112) = 4;
    v133 = v209;
    *&v222 = v209;
    v134 = v201;
    static TLVTag.cryptogramInformationData.getter();
    Collection<>.first(tag:)();
    (v218)(v134, v203);
    v135 = v202;
    v136 = v211;
    v137 = v211(v120, 1, v202);
    v210 = v109;
    if (v137 == 1)
    {
      sub_10000BD44(v120, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v138 = TLV.uint8Value.getter();
      (*(v200 + 8))(v120, v135);
      if ((v138 & 0x100) == 0)
      {
        v139 = v135;
        *(v122 + 144) = &type metadata for UInt8;
        *(v122 + 120) = v138;
LABEL_62:
        *(v122 + 152) = 10;
        *&v222 = v133;
        v140 = v201;
        static TLVTag.issuerApplicationData.getter();
        v141 = v197;
        Collection<>.first(tag:)();
        (v218)(v140, v203);
        if (v136(v141, 1, v139) == 1)
        {
          sub_10000BD44(v141, &unk_10039E210, &unk_1002C65B0);
          *(v122 + 160) = 0u;
          *(v122 + 176) = 0u;
        }

        else
        {
          v142 = TLV.hexStringValue.getter();
          *(v122 + 184) = &type metadata for String;
          *(v122 + 160) = v142;
          *(v122 + 168) = v143;
          (*(v200 + 8))(v141, v139);
        }

        v144 = v198;
        *(v122 + 192) = 9;
        *&v222 = v133;
        v145 = v201;
        static TLVTag.thirdPartyData.getter();
        Collection<>.first(tag:)();
        (v218)(v145, v203);
        v204 = v107;
        v146 = v211;
        if (v211(v144, 1, v202) == 1)
        {
          sub_10000BD44(v144, &unk_10039E210, &unk_1002C65B0);
          v222 = 0u;
          v223 = 0u;
          v221 = v133;
          static TLVTag.cardInterfaceCapabilities.getter();
          v147 = v192;
          Collection<>.first(tag:)();
          (v218)(v145, v203);

          v148 = v202;
          if (v146(v147, 1, v202) == 1)
          {
            sub_10000BD44(v147, &unk_10039E210, &unk_1002C65B0);
            *(v122 + 200) = 0u;
            *(v122 + 216) = 0u;
          }

          else
          {
            v174 = TLV.hexStringValue.getter();
            *(v122 + 224) = &type metadata for String;
            *(v122 + 200) = v174;
            *(v122 + 208) = v175;
            (*(v200 + 8))(v147, v148);
          }

          v60 = v216;
          if (*(&v223 + 1))
          {
            sub_10000BD44(&v222, &qword_10039E248, &qword_1002C23D0);
          }
        }

        else
        {

          v149 = TLV.hexStringValue.getter();
          *(&v223 + 1) = &type metadata for String;
          *&v222 = v149;
          *(&v222 + 1) = v150;
          (*(v200 + 8))(v144, v202);
          sub_100019D3C(&v222, (v122 + 200));
          v60 = v216;
        }

        v176 = sub_100183344(v122);
        swift_setDeallocating();
        sub_100004074(&qword_10039E240, &unk_1002C16E0);
        v177 = swift_arrayDestroy();
        v178 = *(v215 + 56);
        __chkstk_darwin(v177);
        *(&v190 - 2) = v176;
        os_unfair_lock_lock((v178 + 32));
        sub_10001A76C((v178 + 16));
        os_unfair_lock_unlock((v178 + 32));
        sub_100009548(v206, v207);

        v57 = v214;
LABEL_30:
        if (v57 != 7)
        {
          v86 = sub_100019578();
          v88 = v87;
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "provisionDataBlob received", v91, 2u);
          }

          *(&v223 + 1) = &type metadata for Data;
          *&v222 = v86;
          *(&v222 + 1) = v88;
          swift_beginAccess();
          sub_1000094F4(v86, v88);
          sub_10002CFD4(&v222, 0xD000000000000011, 0x8000000100346850);
          swift_endAccess();
          *&v222 = static TLV.decode(from:)();
          v92 = v201;
          static TLVTag.blobDefinition.getter();
          v93 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
          v94 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0, &protocol conformance descriptor for [A]);
          v95 = v193;
          v217 = v94;
          v218 = v93;
          Collection<>.first(tag:)();
          v96 = *(v199 + 8);
          v199 += 8;
          v96(v92, v203);

          v97 = v200;
          v98 = v202;
          v214 = *(v200 + 48);
          if (v214(v95, 1, v202) == 1)
          {
            sub_10000BD44(v95, &unk_10039E210, &unk_1002C65B0);
            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              *v101 = 0;
              _os_log_impl(&_mh_execute_header, v99, v100, "cannot parse provisionDataBlob for analytics", v101, 2u);
            }

            sub_1000205C0(20008, 0xD00000000000002CLL, 0x8000000100346870, 0);
            swift_willThrow();
            swift_errorRetain();
            v169 = Logger.logObject.getter();
            v170 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v169, v170))
            {
              v171 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              *v171 = 138412290;
              swift_errorRetain();
              v173 = _swift_stdlib_bridgeErrorToNSError();
              *(v171 + 4) = v173;
              *v172 = v173;
              _os_log_impl(&_mh_execute_header, v169, v170, "cannot parse provisionDataBlob for analytics. %@", v171, 0xCu);
              sub_10000BD44(v172, &unk_10039E220, &qword_1002C3D60);

              sub_100009548(v86, v88);
            }

            else
            {
              sub_100009548(v86, v88);
            }
          }

          else
          {
            v212 = v96;
            (*(v97 + 32))(v191, v95, v98);
            v167 = TLV.value.getter();
            v213 = v168;
            v179 = static TLV.decode(from:)();
            sub_100009548(v167, v213);
            sub_100004074(&qword_10039E238, &qword_1002C16D8);
            v180 = swift_initStackObject();
            *(v180 + 16) = xmmword_1002C1670;
            *(v180 + 32) = 2;
            v213 = v180 + 32;
            *&v222 = v179;
            v181 = v201;
            static TLVTag.provisionDataCipherText.getter();
            v182 = v190;
            Collection<>.first(tag:)();
            (v212)(v181, v203);

            v183 = v202;
            if (v214(v182, 1, v202) == 1)
            {
              sub_10000BD44(v182, &unk_10039E210, &unk_1002C65B0);
              *(v180 + 40) = 0u;
              *(v180 + 56) = 0u;
              v184 = v200;
            }

            else
            {
              v185 = TLV.length.getter();
              *(v180 + 64) = &type metadata for Int;
              *(v180 + 40) = v185;
              v184 = v200;
              (*(v200 + 8))(v182, v183);
            }

            *(v180 + 72) = 16;
            v186 = TLV.length.getter();
            *(v180 + 104) = &type metadata for Int;
            *(v180 + 80) = v186;
            v187 = sub_100183344(v180);
            swift_setDeallocating();
            sub_100004074(&qword_10039E240, &unk_1002C16E0);
            v188 = swift_arrayDestroy();
            v218 = &v190;
            v189 = *(v215 + 56);
            __chkstk_darwin(v188);
            *(&v190 - 2) = v187;
            os_unfair_lock_lock((v189 + 32));
            sub_100019D20((v189 + 16));
            os_unfair_lock_unlock((v189 + 32));
            sub_100009548(v86, v88);

            (*(v184 + 8))(v191, v202);
          }

          v166 = 1;
          return sub_10000FA40(v166);
        }

        v83 = sub_1000191C0();
        v85 = v84 >> 62;
        if ((v84 >> 62) > 1)
        {
          if (v85 != 2 || *(v83 + 16) == *(v83 + 24))
          {
            goto LABEL_47;
          }
        }

        else if (v85)
        {
          if (v83 == v83 >> 32)
          {
LABEL_47:
            sub_100009548(v83, v84);
            goto LABEL_71;
          }
        }

        else if ((v84 & 0xFF000000000000) == 0)
        {
          goto LABEL_47;
        }

        v151 = v83;
        v152 = v84;
        sub_100004074(&qword_10039E238, &qword_1002C16D8);
        v153 = swift_initStackObject();
        *(v153 + 16) = xmmword_1002C1660;
        *(v153 + 32) = 20;
        v154 = Data.hexString()();
        *(v153 + 64) = &type metadata for String;
        *(v153 + 40) = v154;
        v155 = sub_100183344(v153);
        swift_setDeallocating();
        v156 = sub_10000BD44(v153 + 32, &qword_10039E240, &unk_1002C16E0);
        v157 = *(v215 + 56);
        __chkstk_darwin(v156);
        *(&v190 - 2) = v155;
        os_unfair_lock_lock((v157 + 32));
        sub_10001A76C((v157 + 16));
        os_unfair_lock_unlock((v157 + 32));
        sub_100009548(v151, v152);

LABEL_71:
        v158 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionReadResult;
        swift_beginAccess();
        v159 = *&v60[v158];
        if (*(v159 + 16))
        {

          v160 = sub_1000F5A28(0xD000000000000015, 0x80000001003468A0);
          if (v161)
          {
            sub_10000BDA4(*(v159 + 56) + 32 * v160, &v222);

            if (swift_dynamicCast())
            {
              v162 = v219;
              v163 = v220;
LABEL_77:
              v164 = sub_1000205C0(20007, v162, v163, 0);
              v165 = *&v60[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
              *&v60[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v164;

              v166 = 0;
              return sub_10000FA40(v166);
            }
          }

          else
          {
          }
        }

        v162 = 0;
        v163 = 0xE000000000000000;
        goto LABEL_77;
      }
    }

    v139 = v135;
    *(v122 + 136) = 0u;
    *(v122 + 120) = 0u;
    goto LABEL_62;
  }

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10000403C(v61, qword_10039E090);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "ORReadOperation cancelled before postProvisionReadProcessing", v64, 2u);
  }

  return sub_10000F7CC();
}

uint8_t *sub_100018F1C()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1258);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = v0;
    v8 = v7;
    v17 = swift_slowAlloc();
    v19 = v17;
    *v8 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000012, 0x8000000100346960, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    v0 = v18;
  }

  static TLVTag.provisionAppletAnalytics.getter();
  v15 = sub_10011E63C(v3);
  (*(v1 + 8))(v3, v0);
  return v15;
}

uint8_t *sub_1000191C0()
{
  v1 = v0;
  v2 = type metadata accessor for TLVTag();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000403C(v6, qword_1003A1258);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[1] = v7;
    v33 = v11;
    *v10 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v12 = _typeName(_:qualified:)();
    v32 = v2;
    v14 = sub_100008F6C(v12, v13, &v33);
    v31 = v3;
    v15 = v14;

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100346920, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v33);
    v1 = v0;
    v2 = v32;

    *(v10 + 14) = v18;
    v3 = v31;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  static TLVTag.provisionAppletTrackError.getter();
  v19 = v1;
  v20 = sub_10011E63C(v5);
  v22 = v21;
  if (v19)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    sub_1000094F4(v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_100009548(v20, v22);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      v27 = Data.hexString()();
      v28 = sub_100008F6C(v27._countAndFlagsBits, v27._object, &v33);

      *(v25 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Track Error: %{public}s", v25, 0xCu);
      sub_10000959C(v26);
    }
  }

  return v20;
}

uint8_t *sub_100019578()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1258);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = v0;
    v8 = v7;
    v17 = swift_slowAlloc();
    v19 = v17;
    *v8 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100346940, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();

    v0 = v18;
  }

  static TLVTag.provisionAppletDataBlob.getter();
  v15 = sub_10011E63C(v3);
  (*(v1 + 8))(v3, v0);
  return v15;
}

uint64_t sub_100019870(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0xC000000000000000;
    goto LABEL_15;
  }

  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v5 = v8 - v9;
    if (!v10)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = WORD2(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  v5 = BYTE6(a3);
LABEL_14:
  v6 = a3;
  v4 = a2;
LABEL_15:
  LOWORD(v39) = 29344;
  HIWORD(v39) = a1;
  v40 = v5;
  v41 = v4;
  v42 = v6;
  v43 = 0;
  sub_10001A3E8(a2, a3);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_1003A1258);
  sub_10000BC94(&v39, v38);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v39);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (a1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0x41545320524F4620;
    }

    if (a1)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xEA00000000005452;
    }

    v18 = sub_100008F6C(v16, v17, v38);
    v46 = v12;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_100170CB0(v39 | (v40 << 32), v41, v42, v43);
    v22 = v21;
    v23 = Data.hexString()();
    sub_100009548(v20, v22);
    v24 = sub_100008F6C(v23._countAndFlagsBits, v23._object, v38);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "CAPDU (MANAGE TAP)%s: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000A0770(v39 | (v40 << 32), v41, v42, v43, 1, v44);
  v25 = v44[1];
  v26 = v45;
  v27 = Logger.logObject.getter();
  if (v25 >> 60 == 15)
  {
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error from transceive", v29, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  else
  {
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v32 = 136446210;
      v34 = Data.hexString()();
      v35 = sub_100008F6C(v34._countAndFlagsBits, v34._object, v38);

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v31, "RAPDU: %{public}s", v32, 0xCu);
      sub_10000959C(v33);
    }

    if (v26 != 36864)
    {
      sub_10011EFA0();
      sub_10001A3FC();
      swift_allocError();
      *v36 = v26;
      swift_willThrow();
    }

    sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
  }

  return sub_10000BCF0(&v39);
}

_OWORD *sub_100019D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100019D4C(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000F5AC4(v11), (v3 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v2, v12);
    sub_10001A124(v11);
    if (swift_dynamicCast())
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_10000403C(v4, qword_10039E090);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Type A polling didEnd";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_10:

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000403C(v10, qword_10039E090);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Type B polling didEnd";
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_10001A124(v11);
  }
}

uint64_t sub_100019FD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10001A074(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009548(result, a2);
  }

  return result;
}

uint64_t sub_10001A088()
{
  sub_100009548(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001A100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StopWatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A24C(uint64_t a1)
{
  v2 = type metadata accessor for StopWatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A2A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A310()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A348()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001A3E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000094F4(result, a2);
  }

  return result;
}

unint64_t sub_10001A3FC()
{
  result = qword_10039E2B8;
  if (!qword_10039E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2B8);
  }

  return result;
}

uint64_t sub_10001A450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A488()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001A4CC()
{
  result = qword_10039E2D0;
  if (!qword_10039E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2D0);
  }

  return result;
}

uint64_t sub_10001A528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001A570(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisionReadOperation.State(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ProvisionReadOperation.State(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001A7F0(unint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v7 = v3;
  countAndFlagsBits = type metadata accessor for TLVTag();
  v9 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v37 = sub_10000403C(v12, qword_1003A1258);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a3;
    v38 = v17;
    *v16 = 136315394;
    sub_10000411C(0, a1, a2);
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, &v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = showFunction(signature:_:)(0xD000000000000015, 0x80000001003470B0, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, &v38);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
    a3 = v36;

    v7 = v35;
  }

  static TLVTag.provisionAppletVersionInfo.getter();
  v24 = a3(v11);
  if (v7)
  {
    (*(v9 + 8))(v11, countAndFlagsBits);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    (*(v9 + 8))(v11, countAndFlagsBits);
    sub_1000094F4(v26, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_100009548(v26, v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136446210;
      v32 = Data.hexString()();
      v33 = sub_100008F6C(v32._countAndFlagsBits, v32._object, &v38);

      *(v30 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "Applet Version: %{public}s", v30, 0xCu);
      sub_10000959C(v31);
    }

    countAndFlagsBits = Data.hexString()()._countAndFlagsBits;
    sub_100009548(v26, v27);
  }

  return countAndFlagsBits;
}

uint64_t sub_10001ABB8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E390);
  sub_10000403C(v0, qword_10039E390);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.orReader.getter();
}

uint64_t sub_10001AC24()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039E3A8);
  v1 = sub_10000403C(v0, qword_10039E3A8);
  if (qword_10039D750 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6F08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *ProvisionReader.deinit()
{
  v1 = v0;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E390);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v26);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v26);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if ([*(v0 + 136) operationCount] >= 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = _typeName(_:qualified:)();
      v17 = sub_100008F6C(v15, v16, v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
      v20 = sub_100008F6C(v18, v19, v26);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s - Operation was in progress: client must have crashed", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000CCE4(v1 + 56, v26);
    v21 = sub_10000BE18(v26, v26[3]);
    type metadata accessor for ORError(0);
    v25[3] = v22;
    v25[0] = sub_1000205C0(20902, 0, 0, 0);
    v24 = *v21;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v25, 1, 0, 0, 0.0);
    sub_10000959C(v25);
    sub_10000959C(v26);
    [*(v1 + 136) cancelAllOperations];
  }

  sub_10000959C((v1 + 16));
  sub_10000959C((v1 + 56));
  sub_10000959C((v1 + 96));

  return v1;
}

uint64_t ProvisionReader.__deallocating_deinit()
{
  ProvisionReader.deinit();

  return swift_deallocClassInstance();
}

void ProvisionReader.provisionCard(parameters:delegate:completion:)(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v147 = a2;
  v9 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v9 - 8);
  v146 = &v132 - v10;
  v11 = type metadata accessor for DispatchTime();
  v144 = *(v11 - 8);
  v145 = v11;
  __chkstk_darwin(v11);
  v143 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v14 = __chkstk_darwin(v13 - 8);
  v140 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = &v132 - v16;
  *&v148 = type metadata accessor for StopWatch(0);
  v141 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OSSignpostID();
  v137 = *(v18 - 8);
  v138 = v18;
  v19 = __chkstk_darwin(v18);
  v135 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v136 = &v132 - v21;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000403C(v22, qword_10039E390);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v151 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v134 = v5;
    v152[0] = v29;
    *v28 = 136315394;
    v30 = _typeName(_:qualified:)();
    v32 = sub_100008F6C(v30, v31, v152);
    v149 = a4;
    v33 = v32;

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v150 = v23;
    v34 = a3;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1002C1660;
    *(v35 + 56) = sub_10000411C(0, &qword_10039E3D0, ORProvisionParameters_ptr);
    *(v35 + 32) = v24;
    v36 = v24;
    v37 = showFunction(signature:_:)(0xD00000000000002ELL, 0x8000000100346F40, v35);
    v39 = v38;

    v40 = v37;
    a4 = v149;
    v41 = sub_100008F6C(v40, v39, v152);
    a3 = v34;
    v23 = v150;

    *(v28 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v28, 0x16u);
    swift_arrayDestroy();
    v5 = v134;
  }

  sub_100021E0C();
  v42 = v5[17];
  if ([v42 operationCount])
  {
    v133 = a3;
    v43 = sub_1000205C0(20010, 0xD000000000000028, 0x8000000100346EB0, 0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v43;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error: %@", v46, 0xCu);
      sub_10000BD44(v47, &unk_10039E220, &qword_1002C3D60);
    }

    v50 = v5[18];
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 7;
    v152[0] = v43;
    type metadata accessor for ORError(0);
    sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);
    _BridgedStoredNSError.code.getter();
    v52 = v153;
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v52;
    v53 = sub_100183344(inited);
    swift_setDeallocating();
    v54 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
    v55 = *(v50 + 56);
    __chkstk_darwin(v54);
    *(&v132 - 2) = v53;
    os_unfair_lock_lock((v55 + 32));
    sub_10001A76C((v55 + 16));
    os_unfair_lock_unlock((v55 + 32));

    sub_100030E60();
    v56 = v43;
    (v133)(0, v43);

    goto LABEL_9;
  }

  sub_100021F70(v151);
  v132 = v42;
  if (qword_10039D2F0 != -1)
  {
    swift_once();
  }

  v149 = a4;
  v150 = v23;
  v133 = a3;
  v134 = 0;
  v57 = type metadata accessor for OSSignposter();
  sub_10000403C(v57, qword_10039E3A8);
  v58 = v136;
  static OSSignpostID.exclusive.getter();
  v59 = OSSignposter.logHandle.getter();
  v60 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v60, v62, "ttp-total-time", "begin total time for ttp", v61, 2u);
  }

  v64 = v137;
  v63 = v138;
  (*(v137 + 16))(v135, v58, v138);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v135 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v64 + 8))(v58, v63);
  v138 = v5[18];
  v137 = *(v138 + 56);
  os_unfair_lock_lock((v137 + 32));
  v66 = v144;
  v65 = v145;
  v67 = *(v144 + 56);
  v68 = v139;
  v67(v139, 1, 1, v145);
  v69 = v140;
  v67(v140, 1, 1, v65);
  v70 = v142;
  v67(v142, 1, 1, v65);
  v71 = *(v148 + 20);
  v67((v70 + v71), 1, 1, v65);
  sub_10001A178(v68, v70);
  sub_10001A178(v69, v70 + v71);
  v72 = v143;
  static DispatchTime.now()();
  sub_10000BD44(v70, &qword_10039E290, &unk_1002C37C0);
  (*(v66 + 32))(v70, v72, v65);
  v67(v70, 0, 1, v65);
  v73 = v146;
  sub_10001A1E8(v70, v146);
  (*(v141 + 56))(v73, 0, 1, v148);
  v74 = v137;
  sub_10002D278(v73, 0x6D69546C61746F74, 0xE900000000000065);
  sub_10001A24C(v70);
  os_unfair_lock_unlock(v74 + 8);
  v146 = sub_100004074(&qword_10039E238, &qword_1002C16D8);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_1002C1790;
  *(v75 + 32) = 5;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v76 = swift_allocObject();
  v148 = xmmword_1002C1660;
  *(v76 + 16) = xmmword_1002C1660;
  v77 = v151;
  v78 = [v151 currencyCode];
  *(v76 + 56) = &type metadata for Int;
  *(v76 + 64) = &protocol witness table for Int;
  *(v76 + 32) = v78;
  v79 = String.init(format:_:)();
  *(v75 + 64) = &type metadata for String;
  *(v75 + 40) = v79;
  *(v75 + 48) = v80;
  *(v75 + 72) = 19;
  v81 = swift_allocObject();
  *(v81 + 16) = v148;
  v82 = [v77 countryCode];
  *(v81 + 56) = &type metadata for Int;
  *(v81 + 64) = &protocol witness table for Int;
  *(v81 + 32) = v82;
  v83 = String.init(format:_:)();
  *(v75 + 104) = &type metadata for String;
  *(v75 + 80) = v83;
  *(v75 + 88) = v84;
  *(v75 + 112) = 11;
  v85 = [*(*sub_10000BE18(v5 + 2 v5[5]) + 24)];
  if (!v85)
  {
    __break(1u);
    goto LABEL_28;
  }

  v86 = v85;
  v87 = [v85 unsignedShortValue];

  *(v75 + 144) = &type metadata for UInt16;
  *(v75 + 120) = v87;
  v88 = sub_100183344(v75);
  swift_setDeallocating();
  sub_100004074(&qword_10039E240, &unk_1002C16E0);
  v89 = swift_arrayDestroy();
  v90 = v138;
  v91 = *(v138 + 56);
  __chkstk_darwin(v89);
  *(&v132 - 2) = v88;
  os_unfair_lock_lock((v91 + 32));
  v92 = v134;
  sub_10001A76C((v91 + 16));
  os_unfair_lock_unlock((v91 + 32));

  sub_10000BE18(v5 + 7, v5[10]);
  sub_10017A138(1);
  sub_10000BD44(v152, &qword_10039E248, &qword_1002C23D0);
  type metadata accessor for ProvisionReadOperation();
  sub_10000CCE4((v5 + 7), v152);
  v93 = v147;
  swift_unknownObjectRetain();

  v94 = v149;

  v95 = v77;
  v96 = v90;
  v97 = v133;
  v98 = sub_10000E538(v95, v93, v152, v96, v133, v94);
  if (!v92)
  {
    v134 = v5;
    v56 = v98;
    v110 = String._bridgeToObjectiveC()();
    [v56 setName:v110];

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v111, v112))
    {

      goto LABEL_26;
    }

    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v152[0] = v114;
    *v113 = 136315138;
    v115 = [v56 name];

    if (v115)
    {
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = sub_100008F6C(v116, v118, v152);

      *(v113 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v111, v112, "%s", v113, 0xCu);
      sub_10000959C(v114);

      v97 = v133;
LABEL_26:
      v123 = swift_allocObject();
      swift_weakInit();
      v124 = swift_allocObject();
      v124[2] = v123;
      v124[3] = v56;
      v124[4] = v135;
      v124[5] = v97;
      v124[6] = v94;
      v152[4] = sub_1000222F4;
      v152[5] = v124;
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 1107296256;
      v152[2] = sub_100003974;
      v152[3] = &unk_10037FDD0;
      v125 = _Block_copy(v152);
      v126 = objc_opt_self();

      v127 = [v126 blockOperationWithBlock:v125];
      _Block_release(v125);

      v128 = v127;
      v129 = String._bridgeToObjectiveC()();
      [v128 setName:v129];

      [v128 addDependency:v56];
      sub_100004074(&qword_10039E3C0, &unk_1002C7840);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_1002C17A0;
      *(v130 + 32) = v56;
      *(v130 + 40) = v128;
      sub_10000411C(0, &qword_10039E3C8, NSOperation_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v132 addOperations:isa waitUntilFinished:0];

LABEL_9:

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  v99 = v92;
  swift_errorRetain();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v102 = 138412290;
    swift_errorRetain();
    v104 = _swift_stdlib_bridgeErrorToNSError();
    *(v102 + 4) = v104;
    *v103 = v104;
    _os_log_impl(&_mh_execute_header, v100, v101, "Error: %@", v102, 0xCu);
    sub_10000BD44(v103, &unk_10039E220, &qword_1002C3D60);
  }

  v105 = swift_initStackObject();
  *(v105 + 16) = v148;
  *(v105 + 32) = 7;
  v152[0] = v99;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for ORError(0);
  v106 = swift_dynamicCast();
  v107 = v138;
  if (v106)
  {
    v108 = v153;
    sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);
    _BridgedStoredNSError.code.getter();

    v109 = v152[53];
  }

  else
  {
    v109 = 20998;
  }

  *(v105 + 64) = &type metadata for Int;
  *(v105 + 40) = v109;
  v120 = sub_100183344(v105);
  swift_setDeallocating();
  v121 = sub_10000BD44(v105 + 32, &qword_10039E240, &unk_1002C16E0);
  v122 = *(v107 + 56);
  __chkstk_darwin(v121);
  *(&v132 - 2) = v120;
  os_unfair_lock_lock((v122 + 32));
  sub_10001A76C((v122 + 16));
  os_unfair_lock_unlock((v122 + 32));

  sub_100030E60();
  swift_errorRetain();
  (v97)(0, v99);
}

void sub_10001C7F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(*sub_10000BE18((Strong + 16) *(Strong + 40)) + 24)];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = Data.init(hexString:)();
      if (v12 >> 60 == 15)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v47[2] = 0;
      }

      else
      {
        v13 = &type metadata for Data;
      }

      v47[0] = v11;
      v47[1] = v12;
      v47[3] = v13;
      swift_beginAccess();
      sub_10002CFD4(v47, 0x7472654364736163, 0xEF65746163696669);
      swift_endAccess();
      v18 = *(a2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
      if (v18)
      {
        v44 = a4;
        v19 = qword_10039D2E8;
        v20 = v18;
        if (v19 != -1)
        {
          swift_once();
        }

        v45 = a3;
        v21 = type metadata accessor for Logger();
        sub_10000403C(v21, qword_10039E390);
        v22 = v20;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412290;
          v27 = v22;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 4) = v28;
          *v26 = v28;
          _os_log_impl(&_mh_execute_header, v23, v24, "Error: %@", v25, 0xCu);
          sub_10000BD44(v26, &unk_10039E220, &qword_1002C3D60);
        }

        v29 = *(v8 + 144);
        sub_100004074(&qword_10039E238, &qword_1002C16D8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002C1660;
        *(inited + 32) = 7;
        v47[0] = v22;
        type metadata accessor for ORError(0);
        sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError, &unk_1002BFDA0);

        _BridgedStoredNSError.code.getter();
        *(inited + 64) = &type metadata for Int;
        *(inited + 40) = v46;
        sub_100183344(inited);
        swift_setDeallocating();
        v31 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
        v32 = *(v29 + 56);
        __chkstk_darwin(v31);
        os_unfair_lock_lock((v32 + 32));
        sub_10001A76C((v32 + 16));
        os_unfair_lock_unlock((v32 + 32));

        sub_10003101C(&off_10037CE40);

        v33 = v22;
        v44(0, v18);

        a3 = v45;
      }

      else
      {
        sub_10000411C(0, &qword_10039E4E0, ORProvisionResult_ptr);

        v35 = sub_100099B8C(v34);
        if (qword_10039D2E8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000403C(v36, qword_10039E390);
        v37 = v35;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          *(v40 + 4) = v37;
          *v41 = v37;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, v38, v39, "ORProvisionResult: %@", v40, 0xCu);
          sub_10000BD44(v41, &unk_10039E220, &qword_1002C3D60);
        }

        sub_10003101C(&off_10037CE68);

        v43 = v37;
        a4(v37, 0);
      }

      sub_10001D18C(a2, a3, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10039D2E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000403C(v14, qword_10039E390);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ProvisionReader deinit before start afterProvisionReadOperation", v17, 2u);
    }
  }
}

void sub_10001D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  sub_10000403C(v12, qword_10039E3A8);
  sub_100186BE8("ttp-postprocessing", 18, 2, *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000017, 0x80000001003470D0);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v7, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v15 = "end ttp total time";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, "ttp-total-time", v15, v16, 2u);
  }

  (*(v9 + 8))(v11, v8);
  sub_10011B5DC(&off_10037CE18);
  sub_100030E60();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProvisionReader.cancelProvision()()
{
  v1 = v0;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E390);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000011, 0x8000000100346F70, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v1[17];
  if ([v12 operationCount] < 1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No Operation to cancel";
      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_10000BE18(v1 + 7, v1[10]);
    type metadata accessor for ORError(0);
    v19[3] = v14;
    v19[0] = sub_1000205C0(20009, 0, 0, 0);
    v19[5] = *v13;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v19, 1, 0, 0, 0.0);
    sub_10000959C(v19);
    *(v1[18] + 65) = 1;
    sub_10003101C(&off_10037CEB8);
    [v12 cancelAllOperations];
    [v12 waitUntilAllOperationsAreFinished];
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "All Operations are cancelled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }
  }
}

uint64_t ProvisionReader.checkStatus(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039E390);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, aBlock);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100346FD0, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, aBlock);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_100021E0C();
  v14 = [objc_opt_self() sharedHardwareManager];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_100022354;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E61C;
  aBlock[3] = &unk_10037FE20;
  v16 = _Block_copy(aBlock);

  v17 = [v14 startSecureElementManagerSession:v16];
  _Block_release(v16);

  if (([v17 isFirstInQueue] & 1) == 0)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "waiting for NFSecureElementManagerSession...", v20, 2u);
    }
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    [v21 setSessionTimeLimit:7.0];
  }

  return swift_unknownObjectRelease();
}

void sub_10001DD24(void *a1, uint64_t a2, void (*a3)(id, id))
{
  if (a1)
  {
    v4 = qword_10039D2E8;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_10039E390);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "NFSecureElementManagerSession started", v9, 2u);
    }

    if (qword_10039D3E0 != -1)
    {
      swift_once();
    }

    NFSecureElementManagerSession.select(_:)(qword_1003A6AD0, *algn_1003A6AD8);
    v18 = sub_10001A7F0(&qword_10039E4D8, NFSecureElementManagerSession_ptr, sub_10011E668);
    v20 = v19;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100008F6C(v18, v20, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "applet version: %s", v24, 0xCu);
      sub_10000959C(v25);
    }

    v26 = objc_allocWithZone(ORProvisionAppletData);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithProvisionAppletVersion:v27];

    a3(v28, 0);
    aBlock[4] = sub_100020000;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_10037FEE0;
    v29 = _Block_copy(aBlock);
    [v5 endSessionWithCompletion:v29];
    _Block_release(v29);
  }

  else
  {
    if (qword_10039D2E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_10039E390);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_100008F6C(0xD000000000000018, 0x8000000100346FD0, aBlock);
      *(v14 + 12) = 2112;
      if (!a2)
      {
        __break(1u);
        return;
      }

      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "no session in %s: %@", v14, 0x16u);
      sub_10000BD44(v15, &unk_10039E220, &qword_1002C3D60);

      sub_10000959C(v16);
    }

    else
    {
    }

    v30 = sub_1000205C0(20001, 0xD000000000000017, 0x8000000100347030, 0);
    a3(0, v30);
  }
}

void sub_10001E61C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10001E714(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v41 = a1;
  v42 = v2;
  v44 = v8;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v46);
    if (v47 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xE800000000000000;
    v14 = 0x44496769666E6F63;
    switch(v12)
    {
      case 1:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345970;
        break;
      case 2:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345990;
        break;
      case 3:
        break;
      case 4:
        v14 = 0xD000000000000019;
        v13 = 0x80000001003459B0;
        break;
      case 5:
        v14 = 0x79636E6572727563;
        v13 = 0xEC00000065646F43;
        break;
      case 6:
        v14 = 0x696C6C6F50766D65;
        v13 = 0xEE0065707954676ELL;
        break;
      case 7:
        v13 = 0xE900000000000065;
        v14 = 0x646F43726F727265;
        break;
      case 8:
        v14 = 0x646E49726F727265;
        v13 = 0xEF6E6F6974616369;
        break;
      case 9:
        v13 = 0xEA0000000000726FLL;
        v14 = 0x746361466D726F66;
        break;
      case 10:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345A10;
        break;
      case 11:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100344F70;
        break;
      case 12:
        v14 = 0x44496C656E72656BLL;
        break;
      case 13:
        v14 = 0x664F7265626D756ELL;
        v15 = 1918985556;
        goto LABEL_30;
      case 14:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345A40;
        break;
      case 15:
        v14 = 0xD000000000000016;
        v13 = 0x8000000100345A60;
        break;
      case 16:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345A80;
        break;
      case 17:
        v14 = 0x5041527472617473;
        v13 = 0xEC00000057535544;
        break;
      case 18:
        v14 = 0x6574726F70707573;
        v15 = 1145651556;
LABEL_30:
        v13 = v15 | 0xED00007300000000;
        break;
      case 19:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345AB0;
        break;
      case 20:
        v13 = 0xEA0000000000726FLL;
        v14 = 0x7272456B63617274;
        break;
      case 21:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100345AD0;
        break;
      default:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345950;
        break;
    }

    v16 = v14;
    sub_100022380(&v46, v45);
    if (!v45[3])
    {
      sub_10000BD44(v45, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_43;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v43 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = *a1;
      v18 = v45[0];
      v20 = sub_1000F5A28(v16, v13);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_55;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v43;
          if (v19)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_100181554();
          v27 = v43;
          if (v24)
          {
            goto LABEL_49;
          }
        }

LABEL_40:
        v28 = v45[0];
        *(v45[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v29 = (v28[6] + 16 * v20);
        *v29 = v16;
        v29[1] = v13;
        *(v28[7] + 8 * v20) = v27;
        sub_10000BD44(&v46, &qword_10039E248, &qword_1002C23D0);
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          v28[2] = v32;
          goto LABEL_50;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001ED98);
      }

      sub_10017CFE4(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_1000F5A28(v16, v13);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_57;
      }

      v20 = v25;
      v27 = v43;
      if ((v24 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_49:

      v28 = v45[0];
      v38 = *(v45[0] + 56);
      v39 = *(v38 + 8 * v20);
      *(v38 + 8 * v20) = v27;

      sub_10000BD44(&v46, &qword_10039E248, &qword_1002C23D0);
LABEL_50:
      a1 = v41;
      v2 = v42;
      *v41 = v28;
      v8 = v44;
    }

    else
    {
LABEL_43:
      v33 = sub_1000F5A28(v16, v13);
      v35 = v34;

      if (v35)
      {
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v37 = *a1;
        v45[0] = *a1;
        v8 = v44;
        if (!v36)
        {
          sub_100181554();
          v37 = v45[0];
        }

        sub_10017C5C4();
        sub_10000BD44(&v46, &qword_10039E248, &qword_1002C23D0);
        *a1 = v37;
      }

      else
      {
        sub_10000BD44(&v46, &qword_10039E248, &qword_1002C23D0);
        v8 = v44;
      }
    }
  }
}

uint64_t sub_10001EDF0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v45 = a1;
  v46 = v2;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v50);
    if (v51 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xD000000000000011;
    v14 = 0xD000000000000018;
    v15 = 0x7A69536863746142;
    if (v12 != 4)
    {
      v15 = 0x646F43726F727245;
    }

    if (v12 != 3)
    {
      v14 = v15;
    }

    v16 = 0xE900000000000065;
    if (v12 == 3)
    {
      v16 = 0x8000000100344F20;
    }

    if (v12 == 1)
    {
      v13 = 0x746942746E657645;
    }

    v17 = 0x8000000100344F00;
    if (v12 == 1)
    {
      v17 = 0xEB0000000070616DLL;
    }

    if (!v12)
    {
      v13 = 1701080909;
      v17 = 0xE400000000000000;
    }

    v18 = v12 <= 2;
    if (v12 <= 2)
    {
      v19 = v13;
    }

    else
    {
      v19 = v14;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    sub_100022380(&v50, v49);
    if (!v49[3])
    {
      sub_10000BD44(v49, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_37;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v47 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = *a1;
      v22 = v49[0];
      v48 = v19;
      v24 = sub_1000F5A28(v19, v20);
      v25 = *(v22 + 16);
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_50;
      }

      v28 = v23;
      if (*(v22 + 24) >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = v47;
          if (v23)
          {
            goto LABEL_43;
          }
        }

        else
        {
          sub_100181554();
          v31 = v47;
          if (v28)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_10017CFE4(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_1000F5A28(v48, v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_52;
        }

        v24 = v29;
        v31 = v47;
        if (v28)
        {
LABEL_43:

          v37 = v49[0];
          v38 = *(v49[0] + 56);
          v39 = *(v38 + 8 * v24);
          *(v38 + 8 * v24) = v31;

          sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
          goto LABEL_47;
        }
      }

      v37 = v49[0];
      *(v49[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v40 = (v37[6] + 16 * v24);
      *v40 = v48;
      v40[1] = v20;
      *(v37[7] + 8 * v24) = v31;
      sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_51;
      }

      v37[2] = v43;
LABEL_47:
      a1 = v45;
      v2 = v46;
      *v45 = v37;
    }

    else
    {
LABEL_37:
      v32 = sub_1000F5A28(v19, v20);
      v34 = v33;

      if (v34)
      {
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        v49[0] = *a1;
        if (!v35)
        {
          sub_100181554();
          v36 = v49[0];
        }

        sub_10017C5C4();
        sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
        *a1 = v36;
      }

      else
      {
        sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001F234(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v45 = v8;
  v46 = v2;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v49);
    if (v50 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xE900000000000065;
    v14 = 0x646F43726F727245;
    switch(v12)
    {
      case 1:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344F90;
        break;
      case 2:
        break;
      case 3:
        v14 = 0xD000000000000016;
        v13 = 0x8000000100344FB0;
        break;
      case 4:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344FD0;
        break;
      case 5:
        v14 = 0xD000000000000014;
        v13 = 0x8000000100344FF0;
        break;
      case 6:
        v13 = 0xEE0044496769666ELL;
        v14 = 0x6F436C61626F6C47;
        break;
      case 7:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344D50;
        break;
      case 8:
        v13 = 0xEA00000000006D75;
        v14 = 0x4E73736150534156;
        break;
      case 9:
        v14 = 0xD00000000000001DLL;
        v13 = 0x8000000100345020;
        break;
      case 10:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345040;
        break;
      case 11:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345060;
        break;
      case 12:
        v14 = 0x746361466D726F46;
        goto LABEL_37;
      case 13:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345090;
        break;
      case 14:
        v13 = 0xE300000000000000;
        v14 = 5396052;
        break;
      case 15:
        v13 = 0xEF6E6F6974616369;
        v14 = 0x646E49726F727245;
        break;
      case 16:
        v14 = 0xD000000000000013;
        v13 = 0x80000001003450C0;
        break;
      case 17:
        v14 = 0xD000000000000012;
        v13 = 0x80000001003450E0;
        break;
      case 18:
        v13 = 0xEE00534156646165;
        v14 = 0x5274756F656D6954;
        break;
      case 19:
        v14 = 0x7272456B63617254;
LABEL_37:
        v13 = 0xEA0000000000726FLL;
        break;
      case 20:
        v13 = 0xEC000000746E756FLL;
        v14 = 0x43676E6972616554;
        break;
      case 21:
        v14 = 0xD00000000000001DLL;
        v13 = 0x8000000100345120;
        break;
      case 22:
        v14 = 0xD000000000000019;
        v13 = 0x8000000100345140;
        break;
      case 23:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345160;
        break;
      case 24:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100345180;
        break;
      case 25:
        v14 = 0xD000000000000012;
        v13 = 0x80000001003451A0;
        break;
      case 26:
        v14 = 0xD00000000000001BLL;
        v13 = 0x80000001003451C0;
        break;
      case 27:
        v14 = 0xD000000000000013;
        v13 = 0x80000001003451E0;
        break;
      case 28:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100345200;
        break;
      default:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100344F70;
        break;
    }

    sub_100022380(&v49, v48);
    if (!v48[3])
    {
      sub_10000BD44(v48, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_48;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v47 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = a1;
      v17 = isUniquelyReferenced_nonNull_native;
      v18 = v14;
      v19 = v16;
      v48[0] = *v16;
      v20 = v48[0];
      v21 = v18;
      v22 = sub_1000F5A28(v18, v13);
      v24 = *(v20 + 16);
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_61;
      }

      v28 = v23;
      if (*(v20 + 24) < v27)
      {
        sub_10017CFE4(v27, v17);
        v22 = sub_1000F5A28(v21, v13);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_63;
        }

LABEL_53:
        a1 = v19;
        if (v28)
        {
          goto LABEL_54;
        }

LABEL_56:
        v40 = v48[0];
        *(v48[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v41 = (v40[6] + 16 * v22);
        *v41 = v21;
        v41[1] = v13;
        *(v40[7] + 8 * v22) = v47;
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
        v42 = v40[2];
        v26 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (!v26)
        {
          v40[2] = v43;
          *a1 = v40;
          goto LABEL_58;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001F9CCLL);
      }

      if (v17)
      {
        goto LABEL_53;
      }

      v39 = v22;
      sub_100181554();
      v22 = v39;
      a1 = v19;
      if ((v28 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_54:
      v35 = v22;

      v36 = v48[0];
      v37 = *(v48[0] + 56);
      v38 = *(v37 + 8 * v35);
      *(v37 + 8 * v35) = v47;

      sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
      *a1 = v36;
LABEL_58:
      v8 = v45;
      v2 = v46;
    }

    else
    {
LABEL_48:
      v30 = sub_1000F5A28(v14, v13);
      v32 = v31;

      if (v32)
      {
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = *a1;
        v48[0] = *a1;
        if (!v33)
        {
          sub_100181554();
          v34 = v48[0];
        }

        sub_10017C5C4();
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
        *a1 = v34;
      }

      else
      {
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }
}

uint64_t sub_10001FA40(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v40 = a1;
  v41 = v2;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v45);
    if (v46 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xED00006E6F697372;
    v14 = 0x655674656C707041;
    switch(v12)
    {
      case 1:
        break;
      case 2:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100344D70;
        break;
      case 3:
        v14 = 0x7250646564616F4CLL;
        v13 = 0xED0000656C69666FLL;
        break;
      case 4:
        v13 = 0xE900000000000065;
        v14 = 0x646F43726F727245;
        break;
      case 5:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100344DA0;
        break;
      case 6:
        v14 = 0x637465464D414C53;
        v13 = 0xEF73757461745368;
        break;
      case 7:
        v14 = 0x7245726576726553;
        v13 = 0xEF65646F43726F72;
        break;
      case 8:
        v14 = 0x654E6C656E72654BLL;
        v15 = 1684366437;
        goto LABEL_25;
      case 9:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100344DE0;
        break;
      case 10:
        v14 = 0x4E656C69666F7250;
        v13 = 0xED00006465646565;
        break;
      case 11:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100344E10;
        break;
      case 12:
        v14 = 0x5374736575716552;
        v13 = 0xED00007375746174;
        break;
      case 13:
        v14 = 0x726F727245464153;
        v15 = 1701080899;
LABEL_25:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344D50;
        break;
    }

    v43 = v14;
    sub_100022380(&v45, v44);
    if (!v44[3])
    {
      sub_10000BD44(v44, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_35;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v42 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = *a1;
      v17 = v44[0];
      v19 = sub_1000F5A28(v43, v13);
      v20 = *(v17 + 16);
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_47;
      }

      v23 = v18;
      if (*(v17 + 24) >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v42;
          if (v18)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_100181554();
          v26 = v42;
          if (v23)
          {
            goto LABEL_41;
          }
        }

LABEL_32:
        v27 = v44[0];
        *(v44[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v28 = (v27[6] + 16 * v19);
        *v28 = v43;
        v28[1] = v13;
        *(v27[7] + 8 * v19) = v26;
        sub_10000BD44(&v45, &qword_10039E248, &qword_1002C23D0);
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (!v30)
        {
          v27[2] = v31;
          goto LABEL_42;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001FFC8);
      }

      sub_10017CFE4(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_1000F5A28(v43, v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_49;
      }

      v19 = v24;
      v26 = v42;
      if ((v23 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_41:

      v27 = v44[0];
      v37 = *(v44[0] + 56);
      v38 = *(v37 + 8 * v19);
      *(v37 + 8 * v19) = v26;

      sub_10000BD44(&v45, &qword_10039E248, &qword_1002C23D0);
LABEL_42:
      a1 = v40;
      v2 = v41;
      *v40 = v27;
    }

    else
    {
LABEL_35:
      v32 = sub_1000F5A28(v43, v13);
      v34 = v33;

      if (v34)
      {
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        v44[0] = *a1;
        if ((v35 & 1) == 0)
        {
          sub_100181554();
          v36 = v44[0];
        }

        sub_10017C5C4();
        sub_10000BD44(&v45, &qword_10039E248, &qword_1002C23D0);
        *a1 = v36;
      }

      else
      {
        sub_10000BD44(&v45, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }
}

void sub_100020000()
{
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_10039E390);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100008F6C(0xD000000000000018, 0x8000000100346FD0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "NFSecureElementManagerSession ended in %s", v2, 0xCu);
    sub_10000959C(v3);
  }
}

uint64_t sub_100020148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC25SPRConfigurationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ConfigurationError(0);
  sub_1000223F0(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100020384(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC17SPRDepotErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DepotError(0);
  sub_1000223F0(&qword_10039DBC8, type metadata accessor for DepotError, &unk_1002BFA70);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}