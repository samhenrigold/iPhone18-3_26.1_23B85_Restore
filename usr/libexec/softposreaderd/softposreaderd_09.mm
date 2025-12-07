uint64_t sub_1000D4058()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 280))
  {
    v10 = qword_10039D558;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSSignposter();
    sub_10000403C(v11, qword_1003A2720);
    v12 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v22 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v13 = "end pin capture";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v22, v15, "pin-totalCaptureTime", v13, v14, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }

  *(v1 + 280) = 0;

  v16 = *(v1 + 72);
  v17 = *(v1 + 104);
  v23[2] = *(v1 + 88);
  v23[3] = v17;
  v23[4] = *(v1 + 120);
  v23[0] = *(v1 + 56);
  v23[1] = v16;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  sub_10000BD44(v23, &qword_1003A2A20, &qword_1002C6C88);
  v18 = *(v1 + 136);
  v19 = *(v1 + 144);
  *(v1 + 136) = xmmword_1002C3C70;
  return sub_10001A074(v18, v19);
}

uint64_t sub_1000D4374()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 attributeForKey:AVSystemController_RecordingSessionsDescriptionAttribute];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (!*(&v38 + 1))
  {
    sub_10000BD44(v39, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_13;
  }

  sub_10000411C(0, &qword_1003A1120, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A2708);
    v7 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, v13, "couldn't access AVSC", v14, 2u);
    }

    goto LABEL_21;
  }

  if ([v36 count])
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_1003A2708);
    v6 = v36;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "something is recording %@", v9, 0xCu);
      sub_10000BD44(v10, &unk_10039E220, &qword_1002C3D60);

      return 0;
    }

LABEL_21:
    return 0;
  }

  result = [v1 sharedInstance];
  if (result)
  {
    v16 = result;
    sub_100004074(&qword_1003A2A18, &unk_1002C6C78);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1660;
    v18 = AVSystemController_RecordingStateDidChangeNotification;
    *(v17 + 32) = AVSystemController_RecordingStateDidChangeNotification;
    type metadata accessor for Name(0);
    v19 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    *&v39[0] = 0;
    v21 = [v16 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:v39];

    v22 = *&v39[0];
    if (v21)
    {
      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 defaultCenter];
      v26 = [v1 sharedInstance];
      [v25 addObserver:v0 selector:"recordingStateDidChange:" name:v19 object:v26];

      return 1;
    }

    v27 = *&v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000403C(v28, qword_1003A2708);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v39[0] = v32;
      *v31 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100008F6C(v33, v34, v39);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "failed to subscribe notification %s", v31, 0xCu);
      sub_10000959C(v32);
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1000D497C(void *a1)
{
  v2 = v1;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2708);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = &selRef_currencyCode;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    v11 = [v5 userInfo];
    if (v11)
    {
      v12 = v2;
      v13 = v11;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v2 = v12;
      v8 = &selRef_currencyCode;
      v14 = Dictionary.description.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_100008F6C(v14, v16, aBlock);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "recordingStateDidChange %s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v18 = [v5 v8[51]];
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  aBlock[7] = v21;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v22 = sub_1000F5AC4(aBlock), (v23 & 1) == 0))
  {
LABEL_19:

    sub_10001A124(aBlock);
LABEL_20:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_21;
  }

  sub_10000BDA4(*(v20 + 56) + 32 * v22, &v32);
  sub_10001A124(aBlock);

  if (!*(&v33 + 1))
  {
LABEL_21:
    sub_10000BD44(&v32, &qword_10039E248, &qword_1002C23D0);
    return;
  }

  sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v24 = aBlock[0];
    if (![aBlock[0] BOOLValue])
    {

      return;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "something start recording", v27, 2u);
    }

    v28 = *(v2 + 288);
    v29 = swift_allocObject();
    v29[2] = sub_1000D7594;
    v29[3] = v2;
    aBlock[4] = sub_1000D759C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D21D4;
    aBlock[3] = &unk_1003831D0;
    v30 = _Block_copy(aBlock);

    dispatch_sync(v28, v30);
    _Block_release(v30);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
      goto LABEL_19;
    }
  }
}

double sub_1000D4E9C@<D0>(_OWORD *a2@<X8>)
{
  sub_100004074(&qword_1003A2A00, &qword_1002C6C68);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1000D4F98()
{
  sub_10000411C(0, &qword_1003A29F8, SPRPINData_ptr);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1000D5014()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D5208;
  *(v3 + 24) = v1;
  v6[4] = sub_1000D5220;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000D21D4;
  v6[3] = &unk_100383180;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D5248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000D52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8)
{
  swift_getObjectType();
  v49[3] = type metadata accessor for MPOCDefaultMonitorManager();
  v49[4] = &off_100382710;
  v49[0] = a4;
  v48[3] = type metadata accessor for SystemInfo();
  v48[4] = &off_100386330;
  v48[0] = a5;
  v47[3] = type metadata accessor for SecureElement();
  v47[4] = &off_1003849A0;
  v47[0] = a7;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession] = 0;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A2600);
  sub_10000CCE4(v49, v45);
  sub_10000CCE4(v48, v43);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v19 = 136315394;
    nullsub_1();
    v20 = _typeName(_:qualified:)();
    v22 = sub_100008F6C(v20, v21, &v41);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002C1690;
    *(v23 + 56) = &type metadata for Int;
    *(v23 + 32) = a1;
    *(v23 + 88) = sub_100004074(&qword_1003A2A10, &qword_1002C6C70);
    *(v23 + 64) = a2;
    *(v23 + 72) = a3;
    v24 = v46;
    v40 = a1;
    v25 = a3;
    v26 = a6;
    v27 = a2;
    v28 = sub_10000BE18(v45, v46);
    *(v23 + 120) = v24;
    v29 = sub_10000BE5C((v23 + 96));
    (*(*(v24 - 8) + 16))(v29, v28, v24);
    v30 = v44;
    v31 = sub_10000BE18(v43, v44);
    *(v23 + 152) = v30;
    v32 = sub_10000BE5C((v23 + 128));
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    v33 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034C540, v23);
    v35 = v34;

    sub_10000959C(v45);
    sub_10000959C(v43);
    v36 = sub_100008F6C(v33, v35, &v41);
    a2 = v27;
    a6 = v26;
    a3 = v25;
    a1 = v40;

    *(v19 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v45);
    sub_10000959C(v43);
  }

  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength] = a1;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength] = a3;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_minPinLength] = a2;
  sub_10000CCE4(v49, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager]);
  sub_10000CCE4(v48, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_systemInfo]);
  sub_10000CCE4(a6, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor]);
  sub_10000CCE4(v47, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_secureElement]);
  v37 = type metadata accessor for DefaultPINAppletProxy();
  v42.receiver = a8;
  v42.super_class = v37;
  v38 = objc_msgSendSuper2(&v42, "init");
  sub_10000959C(a6);
  sub_10000959C(v47);
  sub_10000959C(v48);
  sub_10000959C(v49);
  return v38;
}

uint64_t *sub_1000D5734(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9)
{
  v58 = a6;
  v59 = a7;
  v61 = a4;
  v65 = a3;
  v57 = *a8;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v60);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v20 - 8);
  v83[3] = type metadata accessor for DefaultPINAppletProxy();
  v83[4] = &off_100382FF8;
  v83[0] = a1;
  v82[3] = type metadata accessor for CertificateManager(0);
  v82[4] = &off_100381288;
  v82[0] = a2;
  v81[3] = type metadata accessor for DefaultManagedDictionary();
  v81[4] = &off_100386190;
  v81[0] = a5;
  v80[3] = type metadata accessor for SecureElement();
  v80[4] = &off_1003849A0;
  v80[0] = v58;
  v79[3] = type metadata accessor for SystemInfo();
  v79[4] = &off_100386330;
  v79[0] = v59;
  *(a8 + 7) = 0u;
  *(a8 + 9) = 0u;
  *(a8 + 11) = 0u;
  *(a8 + 13) = 0u;
  *(a8 + 15) = 0u;
  a8[17] = 0;
  a8[18] = 0xF000000000000000;
  *(a8 + 152) = 0;
  *(a8 + 136) = 0;
  a8[35] = 0;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  a8[31] = 0;
  a8[32] = 0;
  static DispatchQoS.userInitiated.getter();
  (*(v17 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  v77[0] = _swiftEmptyArrayStorage;
  sub_1000D73EC(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  a8[36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a8[53] = 0xD00000000000002ALL;
  a8[54] = 0x800000010034C460;
  a8[55] = 0xD00000000000002ALL;
  a8[56] = 0x800000010034C490;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A2708);
  sub_10000CCE4(v83, v77);
  sub_10000CCE4(v82, v75);
  v22 = v65;
  sub_10000CCE4(v65, v73);
  sub_10000CCE4(v81, v71);
  sub_10000CCE4(v80, v69);
  sub_10000CCE4(v79, v67);
  v23 = v61;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_100008F6C(v27, v28, &v66);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v60 = "uthentication.ui.dismissed";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1002C6B60;
    v31 = v78;
    v32 = sub_10000BE18(v77, v78);
    *(v30 + 56) = v31;
    v33 = sub_10000BE5C((v30 + 32));
    (*(*(v31 - 8) + 16))(v33, v32, v31);
    v34 = v76;
    v35 = sub_10000BE18(v75, v76);
    *(v30 + 88) = v34;
    v36 = sub_10000BE5C((v30 + 64));
    (*(*(v34 - 8) + 16))(v36, v35, v34);
    v37 = v74;
    v38 = sub_10000BE18(v73, v74);
    *(v30 + 120) = v37;
    v39 = sub_10000BE5C((v30 + 96));
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    *(v30 + 152) = type metadata accessor for ReaderAnalytics(0);
    *(v30 + 128) = v23;
    *(v30 + 184) = &type metadata for Double;
    *(v30 + 160) = a9;
    v40 = v72;
    v41 = sub_10000BE18(v71, v72);
    *(v30 + 216) = v40;
    v42 = sub_10000BE5C((v30 + 192));
    (*(*(v40 - 8) + 16))(v42, v41, v40);
    v43 = v70;
    v44 = sub_10000BE18(v69, v70);
    *(v30 + 248) = v43;
    v45 = sub_10000BE5C((v30 + 224));
    (*(*(v43 - 8) + 16))(v45, v44, v43);
    v46 = v68;
    v47 = sub_10000BE18(v67, v68);
    *(v30 + 280) = v46;
    v48 = sub_10000BE5C((v30 + 256));
    (*(*(v46 - 8) + 16))(v48, v47, v46);

    v49 = showFunction(signature:_:)(0xD000000000000074, v60 | 0x8000000000000000, v30);
    v51 = v50;

    sub_10000959C(v77);
    sub_10000959C(v75);
    sub_10000959C(v73);
    sub_10000959C(v71);
    sub_10000959C(v69);
    sub_10000959C(v67);
    v52 = sub_100008F6C(v49, v51, &v66);

    *(v26 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s.\n%s", v26, 0x16u);
    swift_arrayDestroy();

    v22 = v65;
  }

  else
  {

    sub_10000959C(v77);
    sub_10000959C(v75);
    sub_10000959C(v73);
    sub_10000959C(v71);
    sub_10000959C(v69);
    sub_10000959C(v67);
  }

  sub_10000CCE4(v83, (a8 + 20));
  sub_10000CCE4(v82, (a8 + 2));
  sub_10000CCE4(v22, (a8 + 25));
  a8[37] = v23;
  sub_10000CCE4(v80, (a8 + 43));
  sub_10000CCE4(v81, (a8 + 38));
  sub_10000CCE4(v79, (a8 + 48));
  *(a8 + 30) = a9;
  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  v77[0] = _swiftEmptyArrayStorage;
  sub_1000D73EC(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);

  sub_100004074(&qword_1003A1670, &qword_1002C59A8);
  sub_10000BEC0(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8);
  v53 = v62;
  v54 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  sub_10000959C(v22);
  (*(v63 + 8))(v53, v54);
  sub_10000959C(v83);
  sub_10000959C(v79);
  sub_10000959C(v80);
  sub_10000959C(v81);
  sub_10000959C(v82);
  a8[33] = v55;
  return a8;
}

uint64_t *sub_1000D6150(uint64_t *a1)
{
  sub_1000E90C8(v119);
  if (v1)
  {
  }

  else
  {
    sub_1000E5844(v118);
    sub_1000E6B70(v115);
    v4 = v116;
    v5 = v117;
    sub_10000BE18(v115, v116);
    sub_1000C289C(6u, v4, v5);
    sub_1000E31EC(v111);
    sub_10000CCE4(v119, v109);
    sub_10000CCE4(v114, v108);
    sub_10000CCE4(v118, v106);
    v6 = sub_100022438(v111, v112);
    v87 = v78;
    __chkstk_darwin(v6);
    v8 = (v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_100022438(v109, v110);
    v86 = v78;
    __chkstk_darwin(v10);
    v12 = (v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_100022438(v106, v107);
    v85 = v78;
    __chkstk_darwin(v14);
    v16 = (v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v8;
    v19 = *v12;
    v20 = *v16;
    v104 = type metadata accessor for MPOCDefaultMonitorManager();
    v105 = &off_100382710;
    v103[0] = v18;
    v101 = type metadata accessor for SystemInfo();
    v102 = &off_100386330;
    v81 = v101;
    v100[0] = v19;
    v98 = type metadata accessor for SecureElement();
    v99 = &off_1003849A0;
    v80 = v98;
    v97[0] = v20;
    v84 = type metadata accessor for DefaultPINAppletProxy();
    v82 = objc_allocWithZone(v84);
    v21 = sub_100022438(v103, v104);
    v83 = v78;
    __chkstk_darwin(v21);
    v23 = (v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = sub_100022438(v100, v101);
    __chkstk_darwin(v25);
    v27 = (v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = sub_100022438(v97, v98);
    __chkstk_darwin(v29);
    v31 = (v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = sub_1000D52B4(0, 4, 12, *v23, *v27, v108, *v31, v82);
    sub_10000959C(v97);
    sub_10000959C(v100);
    sub_10000959C(v103);
    sub_10000959C(v106);
    sub_10000959C(v109);
    sub_10000959C(v111);
    v112 = v84;
    v113 = &off_100382FF8;
    v111[0] = v33;
    sub_1000E7D9C(v109);
    sub_10000CCE4(v114, v108);
    sub_1000ED664();
    v87 = v34;
    [objc_opt_self() defaultTransactionDataLifetime];
    v36 = v35;
    sub_1000E972C(v106);
    sub_10000CCE4(v118, v103);
    sub_10000CCE4(v119, v100);
    v37 = sub_100022438(v111, v112);
    v86 = v78;
    __chkstk_darwin(v37);
    v39 = (v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = sub_100022438(v109, v110);
    v85 = v78;
    __chkstk_darwin(v41);
    v43 = (v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = sub_100022438(v106, v107);
    v84 = v78;
    __chkstk_darwin(v45);
    v47 = (v78 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = sub_100022438(v103, v104);
    v83 = v78;
    __chkstk_darwin(v49);
    v51 = (v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    v53 = sub_100022438(v100, v101);
    v82 = v78;
    __chkstk_darwin(v53);
    v55 = (v78 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v79 = *v39;
    v57 = *v43;
    v58 = *v47;
    v59 = *v51;
    v60 = *v55;
    v61 = type metadata accessor for CertificateManager(0);
    v98 = v61;
    v99 = &off_100381288;
    v97[0] = v57;
    v95 = type metadata accessor for DefaultManagedDictionary();
    v96 = &off_100386190;
    v94[0] = v58;
    v92 = v80;
    v93 = &off_1003849A0;
    v91[0] = v59;
    v89 = v81;
    v90 = &off_100386330;
    v88[0] = v60;
    type metadata accessor for DefaultPINController();
    v80 = swift_allocObject();
    v62 = sub_100022438(v97, v61);
    v81 = v78;
    __chkstk_darwin(v62);
    v64 = (v78 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64);
    v66 = sub_100022438(v94, v95);
    v78[1] = v78;
    __chkstk_darwin(v66);
    v68 = (v78 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68);
    v70 = sub_100022438(v91, v92);
    v78[0] = v78;
    __chkstk_darwin(v70);
    v72 = (v78 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    v74 = sub_100022438(v88, v89);
    __chkstk_darwin(v74);
    v76 = (v78 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    a1 = sub_1000D5734(v79, *v64, v108, v87, *v68, *v72, *v76, v80, v36);

    sub_10000959C(v114);
    sub_10000959C(v118);
    sub_10000959C(v119);
    sub_10000959C(v88);
    sub_10000959C(v91);
    sub_10000959C(v94);
    sub_10000959C(v97);
    sub_10000959C(v100);
    sub_10000959C(v103);
    sub_10000959C(v106);
    sub_10000959C(v109);
    sub_10000959C(v111);
    sub_10000959C(v115);
  }

  return a1;
}

uint64_t sub_1000D6F60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D6FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A2A20, &qword_1002C6C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D7010()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v0, v5, 0, 0, 1u);
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A2708);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sensors toggled", v4, 2u);
  }
}

uint64_t sub_1000D7148(uint64_t a1)
{
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for PINControllerError(0);
  if (swift_dynamicCast())
  {
    v1 = v7;
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    if (_BridgedStoredNSError.errorCode.getter() > 10999 && _BridgedStoredNSError.errorCode.getter() < 12000)
    {
      return v1;
    }
  }

  swift_errorRetain();
  type metadata accessor for PINAppletProxyError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1000217A0(11009, 0, 0, 0);
  }

  sub_1000D73EC(&qword_10039DAE8, type metadata accessor for PINAppletProxyError, &unk_1002BF630);
  if (_BridgedStoredNSError.errorCode.getter() <= 11999 || _BridgedStoredNSError.errorCode.getter() >= 13000)
  {

    return sub_1000217A0(11009, 0, 0, 0);
  }

  _s3__C4CodeOMa_7(0);
  sub_1000D73EC(&qword_10039DAD0, _s3__C4CodeOMa_7, &unk_1002BF6D8);
  v3 = v7;
  v4 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v4)
  {
    v5 = 11007;
  }

  else
  {
    v3 = v3;
    v6 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v6)
    {
      v5 = 11011;
    }

    else
    {
      v5 = 11009;
    }
  }

  v1 = sub_1000217A0(v5, 0, 0, 0);

  return v1;
}

uint64_t sub_1000D73EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000D7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a3)
  {

    sub_100009548(a4, a5);
    sub_100009548(a6, a7);

    sub_100009548(a9, a10);
  }
}

uint64_t sub_1000D75B0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2A28);
  sub_10000403C(v0, qword_1003A2A28);
  sub_100023B24();
  return static SPRLogger.pinAppletProxy.getter();
}

uint64_t sub_1000D760C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A2A28);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = a1;
    v23[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, v23);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s - NOT FOR RELEASE", v9, 0x16u);
    swift_arrayDestroy();
    a1 = v24;
  }

  swift_beginAccess();
  v16 = *(v3 + 32);
  v17 = *(v16 + 2);
  if (v17 > 0xB)
  {
    sub_100021328(12006, 0, 0, 0);
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 32) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10004D810(0, v17 + 1, 1, v16);
      *(v3 + 32) = v16;
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = sub_10004D810((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    v21 = &v16[16 * v20];
    *(v21 + 4) = a1;
    *(v21 + 5) = a2;
    *(v3 + 32) = v16;
    swift_endAccess();
    return sub_1000094F4(a1, a2);
  }
}

uint64_t sub_1000D78E4()
{
  v1 = v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2A28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C190, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v16);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s - NOT FOR RELEASE", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    swift_beginAccess();
    sub_1000D8338(&v15);
    v12 = *(&v15 + 1);
    v13 = v15;
    if (*(&v15 + 1) >> 60 == 15)
    {
      sub_10001A074(v15, *(&v15 + 1));
      sub_1000D82AC(*(*(v1 + 32) + 16) - 1, &v15);
      v12 = *(&v15 + 1);
      v13 = v15;
    }

    swift_endAccess();
    return sub_100009548(v13, v12);
  }

  else
  {
    sub_100021328(12007, 0, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_1000D7B6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for TLVTag();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TLV();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v35 - v8;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A2A28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, v42);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C170, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, v42);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s - NOT FOR RELEASE", v12, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_beginAccess();
  v20 = *(*(v2 + 32) + 16);
  if (v20)
  {
    v37 = *(*(v2 + 32) + 16);
    static TLVTag.cipherBlob.getter();
    static Data.randomBytes(count:)();
    v21 = v38;
    TLV.init(tag:value:)();
    static TLVTag.keyBlob.getter();
    static Data.randomBytes(count:)();
    TLV.init(tag:value:)();
    v36 = TLV.dataRepresentation.getter();
    v23 = v22;
    v24 = TLV.dataRepresentation.getter();
    v26 = v25;
    v27 = static Data.randomBytes(count:)();
    v29 = v28;
    v30 = *(v39 + 8);
    v31 = v7;
    v32 = v40;
    v30(v31, v40);
    result = (v30)(v21, v32);
    v33 = v36;
    v20 = v37;
  }

  else
  {
    v33 = 0;
    v24 = 0;
    v27 = 0;
    v23 = 0xC000000000000000;
    v26 = 0xC000000000000000;
    v29 = 0xC000000000000000;
  }

  v34 = v41;
  *v41 = v33;
  v34[1] = v23;
  v34[2] = v24;
  v34[3] = v26;
  v34[4] = v27;
  v34[5] = v29;
  *(v34 + 48) = v20 == 0;
  return result;
}

uint64_t sub_1000D7F54()
{
  v1 = v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2A28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C060, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s - NOT FOR RELEASE", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  *(v1 + 32) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000D814C()
{
  sub_10001A074(*(v0 + 16), *(v0 + 24));

  sub_100009548(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D81B8()
{
  result = sub_1000D83BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

double sub_1000D8238@<D0>(uint64_t a1@<X8>)
{
  sub_1000D7B6C(v7);
  if (!v1)
  {
    result = *v7;
    v4 = v7[1];
    v5 = v7[2];
    v6 = v8;
    *a1 = v7[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_1000D82AC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000D83A8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000D8338@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + 16 * v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1000D83A8(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D83BC()
{
  v1 = v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2A28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034C250, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v17);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s - NOT FOR RELEASE", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v1[4] = _swiftEmptyArrayStorage;

  v12 = static Data.randomBytes(count:)();
  v13 = v1[2];
  v14 = v1[3];
  v1[2] = v12;
  v1[3] = v15;
  sub_1000094F4(v12, v15);
  sub_10001A074(v13, v14);
  sub_1000094F4(v1[5], v1[6]);
  return v12;
}

uint64_t sub_1000D8618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D8698(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for BackendSetting(uint64_t a1)
{
  result = qword_1003A2BB8;
  if (!qword_1003A2BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D8768(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000D87C0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BackendSetting(0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F0C(v1, v8);
  v9 = (*(v3 + 48))(v8, 11, v2);
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if (v9 == 9)
      {
        return 895578414;
      }

      else if (v9 == 10)
      {
        return 912355630;
      }

      else
      {
        return 0x656E696C66666F2ELL;
      }
    }

    else if (v9 == 6)
    {
      return 845246766;
    }

    else if (v9 == 7)
    {
      return 862023982;
    }

    else
    {
      return 878801198;
    }
  }

  else if (v9 > 2)
  {
    if (v9 == 3)
    {
      return 0x65676174732ELL;
    }

    else if (v9 == 4)
    {
      return 0x747265632ELL;
    }

    else
    {
      return 828469550;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      return 0x746C75616665642ELL;
    }

    else
    {
      return 0x646F72702ELL;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14[0] = 0x286C72752ELL;
    v14[1] = 0xE500000000000000;
    sub_1000DA030();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v14[0];
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

uint64_t sub_1000D8A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = URL.scheme.getter();
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = v4;
  v7 = v5;
  if ((v4 != 1886680168 || v5 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0x7370747468 || v7 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v6 == 0x746C7561666564 && v7 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      (*(v12 + 8))(a1, v11);
      return (*(v12 + 56))(a2, 1, 11, v11);
    }

    if (v6 == 1685025392 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v13 = type metadata accessor for URL();
      v14 = *(v13 - 8);
      (*(v14 + 8))(a1, v13);
      return (*(v14 + 56))(a2, 2, 11, v13);
    }

    if (v6 == 0x6567617473 && v7 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = type metadata accessor for URL();
      v16 = *(v15 - 8);
      (*(v16 + 8))(a1, v15);
      return (*(v16 + 56))(a2, 3, 11, v15);
    }

    if (v6 == 1953654115 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = type metadata accessor for URL();
      v18 = *(v17 - 8);
      (*(v18 + 8))(a1, v17);
      return (*(v18 + 56))(a2, 4, 11, v17);
    }

    if (v6 == 3236209 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      (*(v20 + 8))(a1, v19);
      return (*(v20 + 56))(a2, 5, 11, v19);
    }

    if (v6 == 3301745 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v21 = type metadata accessor for URL();
      v22 = *(v21 - 8);
      (*(v22 + 8))(a1, v21);
      return (*(v22 + 56))(a2, 6, 11, v21);
    }

    if (v6 == 3367281 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = type metadata accessor for URL();
      v24 = *(v23 - 8);
      (*(v24 + 8))(a1, v23);
      return (*(v24 + 56))(a2, 7, 11, v23);
    }

    if (v6 == 3432817 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v25 = type metadata accessor for URL();
      v26 = *(v25 - 8);
      (*(v26 + 8))(a1, v25);
      return (*(v26 + 56))(a2, 8, 11, v25);
    }

    if (v6 == 3498353 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      (*(v28 + 8))(a1, v27);
      return (*(v28 + 56))(a2, 9, 11, v27);
    }

    if (v6 == 3563889 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v29 = type metadata accessor for URL();
      v30 = *(v29 - 8);
      (*(v30 + 8))(a1, v29);
      return (*(v30 + 56))(a2, 10, 11, v29);
    }

    if (v6 == 0x656E696C66666FLL && v7 == 0xE700000000000000)
    {

LABEL_54:
      v32 = type metadata accessor for URL();
      v33 = *(v32 - 8);
      (*(v33 + 8))(a1, v32);
      return (*(v33 + 56))(a2, 11, 11, v32);
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_54;
    }

LABEL_55:
    _StringGuts.grow(_:)(23);

    v34 = type metadata accessor for URL();
    sub_1000DA030();
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    sub_100020384(7001, 0xD000000000000015, 0x800000010034CAC0, 0);
    swift_willThrow();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 32))(a2, a1, v8);
  return (*(v9 + 56))(a2, 0, 11, v8);
}

uint64_t sub_1000D9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BackendSetting(0);
  v5 = __chkstk_darwin(v4 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v41 - v20;
  __chkstk_darwin(v19);
  v25 = &v41 - v24;
  if (!*(a1 + 24))
  {
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    return (*(v16 + 56))(a2, 1, 11, v15);
  }

  v41 = v23;
  v42 = v22;
  v44 = a1;
  sub_100022380(a1, &v47);
  if (!v49)
  {
    sub_10000BD44(&v47, &qword_10039E248, &qword_1002C23D0);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_8:
    sub_10000BD44(v14, &qword_1003A03D0, &unk_1002C3D50);
    v28 = v44;
    sub_100022380(v44, &v47);
    if (v49)
    {
      if (swift_dynamicCast())
      {
        v31 = v45;
        v30 = v46;
        URL.init(string:)();
        if ((*(v16 + 48))(v12, 1, v15) != 1)
        {

          v37 = v42;
          (*(v16 + 32))(v42, v12, v15);
          v38 = v41;
          (*(v16 + 16))(v41, v37, v15);
          v39 = v43;
          v40 = v50;
          sub_1000D8A84(v38, v43);
          if (v40)
          {
            (*(v16 + 8))(v37, v15);
            return sub_10000BD44(v28, &qword_10039E248, &qword_1002C23D0);
          }

          (*(v16 + 8))(v37, v15);
          sub_10000BD44(v28, &qword_10039E248, &qword_1002C23D0);
          v36 = v39;
          return sub_1000D9FCC(v36, a2);
        }

        sub_10000BD44(v12, &qword_1003A03D0, &unk_1002C3D50);
        v47 = 0;
        v48 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v47 = 0xD000000000000019;
        v48 = 0x800000010034CAA0;
        v32._countAndFlagsBits = v31;
        v32._object = v30;
        String.append(_:)(v32);

        v33 = v47;
        v34 = v48;
LABEL_15:
        sub_100020384(7001, v33, v34, 0);
        swift_willThrow();
        return sub_10000BD44(v28, &qword_10039E248, &qword_1002C23D0);
      }
    }

    else
    {
      sub_10000BD44(&v47, &qword_10039E248, &qword_1002C23D0);
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v45 = 0xD000000000000019;
    v46 = 0x800000010034CA80;
    result = sub_100022380(v28, &v47);
    if (!v49)
    {
      __break(1u);
      return result;
    }

    v35._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v35);

    v33 = v45;
    v34 = v46;
    goto LABEL_15;
  }

  v26 = swift_dynamicCast();
  (*(v16 + 56))(v14, v26 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  (*(v16 + 32))(v25, v14, v15);
  (*(v16 + 16))(v21, v25, v15);
  v27 = v50;
  sub_1000D8A84(v21, v8);
  if (!v27)
  {
    (*(v16 + 8))(v25, v15);
    sub_10000BD44(v44, &qword_10039E248, &qword_1002C23D0);
    v36 = v8;
    return sub_1000D9FCC(v36, a2);
  }

  (*(v16 + 8))(v25, v15);
  v28 = v44;
  return sub_10000BD44(v28, &qword_10039E248, &qword_1002C23D0);
}

uint64_t sub_1000D9AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackendSetting(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&qword_1003A2BE8, &qword_1002C6D68);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000D9F0C(a1, &v21 - v13);
  sub_1000D9F0C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 11, v4);
  if (v17 > 5)
  {
    if (v17 <= 8)
    {
      if (v17 == 6)
      {
        if (v16(&v14[v15], 11, v4) != 6)
        {
          goto LABEL_27;
        }
      }

      else if (v17 == 7)
      {
        if (v16(&v14[v15], 11, v4) != 7)
        {
          goto LABEL_27;
        }
      }

      else if (v16(&v14[v15], 11, v4) != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v17 != 9)
    {
      if (v17 == 10)
      {
        if (v16(&v14[v15], 11, v4) != 10)
        {
          goto LABEL_27;
        }
      }

      else if (v16(&v14[v15], 11, v4) != 11)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v16(&v14[v15], 11, v4) == 9)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_10000BD44(v14, &qword_1003A2BE8, &qword_1002C6D68);
    v18 = 0;
    return v18 & 1;
  }

  if (v17 > 2)
  {
    if (v17 != 3)
    {
      if (v17 == 4)
      {
        if (v16(&v14[v15], 11, v4) != 4)
        {
          goto LABEL_27;
        }
      }

      else if (v16(&v14[v15], 11, v4) != 5)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v16(&v14[v15], 11, v4) == 3)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (!v17)
  {
    sub_1000D9F0C(v14, v10);
    if (!v16(&v14[v15], 11, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = static URL.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1000D9F70(v14);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_27;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 11, v4) != 1)
    {
      goto LABEL_27;
    }
  }

  else if (v16(&v14[v15], 11, v4) != 2)
  {
    goto LABEL_27;
  }

LABEL_25:
  sub_1000D9F70(v14);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1000D9F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackendSetting(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9F70(uint64_t a1)
{
  v2 = type metadata accessor for BackendSetting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D9FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackendSetting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DA030()
{
  result = qword_1003A3C40;
  if (!qword_1003A3C40)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3C40);
  }

  return result;
}

unint64_t sub_1000DA088()
{
  sub_1000DC884(v0, v9);
  if (v10 > 1u)
  {
    if (v10 == 2)
    {

      return 0xD000000000000021;
    }

    else
    {
      return 0x69766C6F7365722ELL;
    }
  }

  else if (v10)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    sub_100019D3C(v9, v8);
    v6 = 0x65766C6F7365722ELL;
    v7 = 0xEA00000000002864;
    sub_10000BDA4(v8, v5);
    v1._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 41;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3 = v6;
    sub_10000959C(v8);
  }

  return v3;
}

uint64_t sub_1000DA1BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BackendSetting(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  *(v2 + v7) = sub_100182CF8(_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC14softposreaderd5Depot_componentsLock) = 0;
  sub_1000DD24C(a1, v2 + OBJC_IVAR____TtC14softposreaderd5Depot_settings);
  v8 = a1 + *(type metadata accessor for Settings(0) + 20);
  if (*(v8 + 16) >= 2u && *v8 >= 2uLL)
  {
    v17 = sub_1000DB3A0;
    v18 = 0;
    v9 = 1;
    v19 = 1;
    swift_beginAccess();
    sub_10002D0A4(&v17, 0xD00000000000001ALL, 0x800000010034CB90);
    v10 = sub_1000DB308;
  }

  else
  {
    v17 = sub_1000DC5C8;
    v18 = 0;
    v9 = 2;
    v19 = 2;
    swift_beginAccess();
    sub_10002D0A4(&v17, 0xD00000000000001ALL, 0x800000010034CB90);
    v10 = sub_1000DC528;
  }

  v17 = v10;
  v18 = 0;
  v19 = v9;
  sub_10002D0A4(&v17, 0xD000000000000019, 0x800000010034CBB0);
  swift_endAccess();
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(v6, 11, 11, v11);
  v12 = sub_1000D9AD4(a1, v6);
  sub_1000DD2B0(v6, type metadata accessor for BackendSetting);
  if (v12)
  {
    v17 = sub_1000DB274;
    v18 = 0;
    v13 = 1;
    v19 = 1;
    swift_beginAccess();
    sub_10002D0A4(&v17, 0xD00000000000001BLL, 0x800000010034CBD0);
    v14 = sub_1000DB1E8;
  }

  else
  {
    v17 = sub_1000DC488;
    v18 = 0;
    v13 = 2;
    v19 = 2;
    swift_beginAccess();
    sub_10002D0A4(&v17, 0xD00000000000001BLL, 0x800000010034CBD0);
    v14 = sub_1000DC3E8;
  }

  v17 = v14;
  v18 = 0;
  v19 = v13;
  sub_10002D0A4(&v17, 0xD00000000000001ALL, 0x800000010034CBF0);
  swift_endAccess();
  v17 = sub_1000DC228;
  v18 = 0;
  v19 = 2;
  swift_beginAccess();
  sub_10002D0A4(&v17, 0xD000000000000010, 0x800000010034CC10);
  v17 = sub_1000DC174;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000015, 0x800000010034CC30);
  v17 = sub_1000DC134;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000010, 0x800000010034CC50);
  v17 = sub_1000DC0E4;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0x6E41726564616552, 0xEF73636974796C61);
  v17 = sub_1000DC0A4;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000011, 0x800000010034CC70);
  v17 = sub_1000DBF90;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000012, 0x800000010034CC90);
  v17 = sub_1000DBEF0;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001ALL, 0x800000010034CCB0);
  v17 = sub_1000DBE44;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000022, 0x800000010034CCD0);
  v17 = sub_1000DB15C;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0x7065654B656D6954, 0xEA00000000007265);
  v17 = sub_1000DBDA4;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000010, 0x800000010034CD00);
  v17 = sub_1000DBD04;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000015, 0x800000010034CD20);
  v17 = sub_1000DBC64;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001CLL, 0x800000010034CD40);
  v17 = sub_1000DB088;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0xD000000000000012, 0x800000010034CD60);
  v17 = sub_1000DAFF4;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0xD000000000000019, 0x800000010034CD80);
  v17 = sub_1000DBBC0;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000013, 0x800000010034CDA0);
  v17 = sub_1000DAF40;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0xD000000000000015, 0x800000010034CDC0);
  v17 = sub_1000DBB48;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0x6174614465726F43, 0xEF726567616E614DLL);
  v17 = sub_1000DAEB4;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0xD00000000000001BLL, 0x800000010034CDE0);
  v17 = sub_1000DBACC;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000026, 0x800000010034CE00);
  v17 = sub_1000DBA2C;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001ELL, 0x800000010034CE30);
  v17 = sub_1000DB98C;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001FLL, 0x800000010034CE50);
  v17 = sub_1000DB8EC;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001ALL, 0x800000010034CE70);
  v17 = sub_1000DB84C;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000010, 0x800000010034CE90);
  v17 = sub_1000DB7A0;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001FLL, 0x800000010034CEB0);
  v17 = sub_1000DB668;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000019, 0x800000010034CED0);
  v17 = sub_1000DB5C8;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000022, 0x800000010034CEF0);
  v17 = sub_1000DAE28;
  v18 = 0;
  v19 = 1;
  sub_10002D0A4(&v17, 0xD000000000000019, 0x800000010034CF20);
  v17 = sub_1000DB51C;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD00000000000001CLL, 0x800000010034CF40);
  v17 = sub_1000DB42C;
  v18 = 0;
  v19 = 2;
  sub_10002D0A4(&v17, 0xD000000000000016, 0x800000010034CF60);
  swift_endAccess();
  sub_1000DD2B0(a1, type metadata accessor for Settings);
  return v2;
}

void sub_1000DAC04(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000E3850(v18);
  if (!v2)
  {
    sub_1000E5844(v17);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    if (*(v5 + *(type metadata accessor for Settings(0) + 72)))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
    v8 = sub_100022438(v18, v18[3]);
    __chkstk_darwin(v8);
    v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_100022438(v17, v17[3]);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_1000DCC58(*v10, *v14, v6);
    sub_10000959C(v17);
    sub_10000959C(v18);
    a2[3] = v7;
    a2[4] = &off_100380B00;
    *a2 = v16;
  }
}

void *sub_1000DAE28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SESnapshotWrapper();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100380B28;
  result[2] = v3;
  return result;
}

void *sub_1000DAEB4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCDefaultAttestationData();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100380B10;
  result[2] = v3;
  return result;
}

uint64_t sub_1000DAF40@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SecureElement();
  swift_allocObject();
  result = sub_100138D94();
  if (!v1)
  {
    v7 = v3;
    v8 = &off_1003849A0;
    *&v6 = result;
    a1[3] = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

void *sub_1000DAFF4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultManagedDictionary();
  swift_allocObject();
  v3 = sub_10017A614();
  a1[3] = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100386190;
  result[2] = v3;
  return result;
}

void *sub_1000DB088@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SystemInfo();
  v3 = swift_allocObject();
  if (qword_10039D760 != -1)
  {
    swift_once();
  }

  v4 = qword_1003A6F30;
  *(v3 + 16) = xmmword_1003A6F20;
  *(v3 + 32) = v4;
  a1[3] = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100386330;
  result[2] = v3;
  return result;
}

void *sub_1000DB15C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultTimeKeeper();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100384E20;
  result[2] = v3;
  return result;
}

void *sub_1000DB1E8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCOfflineMonitorBackend();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_1003828F0;
  result[2] = v3;
  return result;
}

void *sub_1000DB274@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for OfflineConfiguratorBackend();
  swift_allocObject();
  v3 = sub_10008CBD0();
  a1[3] = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100381ED8;
  result[2] = v3;
  return result;
}

void *sub_1000DB308@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCVolatileMonitorLogger();
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  a1[3] = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100382DB0;
  result[2] = v3;
  return result;
}

void *sub_1000DB3A0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for VolatilePersistenceFactory();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100382F88;
  result[2] = v3;
  return result;
}

void sub_1000DB42C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000E5EA8(v11);
  if (!v2)
  {
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = type metadata accessor for Settings(0);
    v7 = *(v5 + *(v6 + 52));
    v8 = *(v5 + *(v6 + 56));

    v9 = sub_1000428FC(v11, v7, v8);
    v13 = type metadata accessor for ProfileManager();
    v14 = &off_100380E88;
    *&v12 = v9;
    a2[3] = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
    v10 = swift_allocObject();
    *a2 = v10;
    sub_100029790(&v12, v10 + 16);
  }
}

uint64_t sub_1000DB51C@<X0>(uint64_t *a2@<X8>)
{

  v4 = sub_100098258();

  if (!v2)
  {
    v8 = type metadata accessor for KernelManagerWrapper(0);
    v9 = &off_100382050;
    *&v7 = v4;
    a2[3] = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
    v6 = swift_allocObject();
    *a2 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

uint64_t sub_1000DB5C8@<X0>(uint64_t *a2@<X8>)
{

  result = sub_10013BFB4();
  if (!v2)
  {
    v5 = result;
    v8 = type metadata accessor for SecureChannelCryptoFactory();
    v9 = &off_100384AB8;
    *&v7 = v5;
    a2[3] = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
    v6 = swift_allocObject();
    *a2 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

void *sub_1000DB668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v4 = *(v3 + *(type metadata accessor for Settings(0) + 84));
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  [v5 setTimeoutIntervalForResource:v4];
  [v5 setTLSMinimumSupportedProtocolVersion:771];
  v6 = [objc_opt_self() sessionWithConfiguration:v5];

  v7 = type metadata accessor for DefaultSecureChannelHTTP();
  swift_allocObject();
  v8 = sub_1001426C0(v6);
  a2[3] = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
  result = swift_allocObject();
  *a2 = result;
  result[5] = v7;
  result[6] = &off_100384C58;
  result[2] = v8;
  return result;
}

uint64_t sub_1000DB7A0@<X0>(uint64_t *a2@<X8>)
{

  v5 = sub_1000A50A0(v4);

  if (!v2)
  {
    v9 = type metadata accessor for LaunchFeedbackFramework();
    v10 = &off_1003823C0;
    *&v8 = v5;
    a2[3] = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void sub_1000DB84C(uint64_t *a2@<X8>)
{

  sub_10014BB78(v4);
  if (!v2)
  {
    v6 = v5;
    v9 = type metadata accessor for DefaultTimeTokenManager(0);
    v10 = &off_100384FB0;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
    v7 = swift_allocObject();
    *a2 = v7;
    sub_100029790(&v8, v7 + 16);
  }
}

void sub_1000DB8EC(uint64_t *a2@<X8>)
{

  sub_1000B435C(v4);
  if (!v2)
  {
    v6 = v5;
    v9 = type metadata accessor for MPOCDefaultMonitorManager();
    v10 = &off_100382710;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
    v7 = swift_allocObject();
    *a2 = v7;
    sub_100029790(&v8, v7 + 16);
  }
}

uint64_t sub_1000DB98C@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000C317C(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for ComponentAuditorFactory();
    v10 = &off_100382EA8;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

uint64_t *sub_1000DBA2C@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000343C4(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for MPOCDefaultAttestationManager();
    v10 = &off_100380AA8;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void sub_1000DBACC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000DAC04(a1, v5);
  if (!v2)
  {
    a2[3] = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
    v4 = swift_allocObject();
    *a2 = v4;
    sub_100029790(v5, v4 + 16);
  }
}

void sub_1000DBB48(uint64_t *a2@<X8>)
{
  sub_1000E3850(v6);
  if (!v2)
  {
    v4 = type metadata accessor for CoreDataManager();
    swift_allocObject();
    v5 = sub_1000C4110(v6);
    a2[3] = v4;
    *a2 = v5;
  }
}

void *sub_1000DBBC0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Environment(0);
  result = sub_1000DD4F4(v6);
  if (!v2)
  {
    a2[3] = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
    v5 = swift_allocObject();
    *a2 = v5;
    return sub_100029790(v6, v5 + 16);
  }

  return result;
}

uint64_t sub_1000DBC64@<X0>(uint64_t *a2@<X8>)
{

  result = sub_10013A834(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for SecureChannelFactory();
    v10 = &off_100384A98;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void *sub_1000DBD04@<X0>(uint64_t *a2@<X8>)
{

  result = sub_100150C04();
  if (!v2)
  {
    v5 = result;
    v8 = type metadata accessor for SignerFactory();
    v9 = &off_100385348;
    *&v7 = v5;
    a2[3] = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
    v6 = swift_allocObject();
    *a2 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

uint64_t sub_1000DBDA4@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1001463EC(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for DefaultSecureTimeKeeper();
    v10 = &off_100384E70;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

uint64_t sub_1000DBE44@<X0>(uint64_t *a2@<X8>)
{

  v5 = sub_10014F228(v4);

  if (!v2)
  {
    v9 = type metadata accessor for CertificateVerifierFactory();
    v10 = &off_1003852C0;
    *&v8 = v5;
    a2[3] = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

char *sub_1000DBEF0@<X0>(uint64_t *a2@<X8>)
{

  result = sub_10004F5D8(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for CertificateManager(0);
    v10 = &off_100381288;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void sub_1000DBF90(uint64_t *a1@<X8>)
{
  sub_1000E3EB4(v9);
  if (!v1)
  {
    v3 = sub_100022438(v9, v9[3]);
    __chkstk_darwin(v3);
    v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = sub_1000DC8BC(*v5);
    sub_10000959C(v9);
    a1[3] = type metadata accessor for ProvisionAnalytics(0);
    *a1 = v7;
  }
}

uint64_t sub_1000DC0E4@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000292E4(v4);
  if (!v2)
  {
    v6 = result;
    result = type metadata accessor for ReaderAnalytics(0);
    a2[3] = result;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1000DC1B4@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{

  v9 = a2(v8);

  if (!v4)
  {
    result = a3(0);
    a4[3] = result;
    *a4 = v9;
  }

  return result;
}

void sub_1000DC228(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Settings(0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3850(v14);
  if (!v2)
  {
    sub_1000DD24C(a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, v7);
    v8 = sub_100022438(v14, v14[3]);
    __chkstk_darwin(v8);
    v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_1000DCAE8(*v10, v7);
    sub_10000959C(v14);
    v16 = type metadata accessor for CALogger();
    v17 = &off_10037FF08;
    *&v15 = v12;
    a2[3] = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
    v13 = swift_allocObject();
    *a2 = v13;
    sub_100029790(&v15, v13 + 16);
  }
}

uint64_t sub_1000DC3E8@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000B9820(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for MPOCDefaultMonitorBackend(0);
    v10 = &off_100382CD8;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

char *sub_1000DC488@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000812AC(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for ConfiguratorBackend(0);
    v10 = &off_1003817C0;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void *sub_1000DC528@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000BD460(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for MPOCDefaultMonitorLogger();
    v10 = &off_100382D78;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

void *sub_1000DC5C8@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000C7B78(v4);
  if (!v2)
  {
    v6 = result;
    v9 = type metadata accessor for PersistenceFactory();
    v10 = &off_100382F78;
    *&v8 = v6;
    a2[3] = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
    v7 = swift_allocObject();
    *a2 = v7;
    return sub_100029790(&v8, v7 + 16);
  }

  return result;
}

uint64_t sub_1000DC668()
{
  sub_1000DD2B0(v0 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, type metadata accessor for Settings);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Depot(uint64_t a1)
{
  result = qword_1003A2C20;
  if (!qword_1003A2C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC744(uint64_t a1)
{
  result = type metadata accessor for Settings(319);
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

unint64_t sub_1000DC7EC()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = Settings.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 125;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000012;
}

uint64_t sub_1000DC8BC(uint64_t a1)
{
  v2 = type metadata accessor for CALogger();
  v21[3] = v2;
  v21[4] = &off_10037FF08;
  v21[0] = a1;
  type metadata accessor for ProvisionAnalytics(0);
  v3 = swift_allocObject();
  v4 = sub_100022438(v21, v2);
  __chkstk_darwin(v4);
  v6 = (&v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v20[3] = v2;
  v20[4] = &off_10037FF08;
  v20[0] = v8;
  *(v3 + 64) = 33686018;
  sub_10000CCE4(v20, v19);
  v9 = sub_100022438(v19, v19[3]);
  __chkstk_darwin(v9);
  v11 = (&v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  *(v3 + 40) = v2;
  *(v3 + 48) = &off_10037FF08;
  *(v3 + 16) = v13;
  v14 = sub_100182F40(_swiftEmptyArrayStorage);
  v15 = sub_10018369C(_swiftEmptyArrayStorage);
  sub_100004074(&qword_1003A2E10, &qword_1002C6ED8);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(v3 + 56) = v16;
  sub_10000959C(v20);
  sub_10000959C(v19);
  sub_10000959C(v21);
  return v3;
}

uint64_t sub_1000DCAE8(uint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for Environment(0);
  v16 = sub_1000DD348();
  v14[0] = a1;
  v4 = *(*sub_10000BE18(v14, v15) + OBJC_IVAR____TtC14softposreaderd11Environment_backendName);
  if (sub_1000DD5D0(v4) == 1685025392 && v5 == 0xE400000000000000)
  {
    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  if (sub_1000DD5D0(v4) == 0x6567617473 && v8 == 0xE500000000000000)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_13:
  v11 = *(a2 + *(type metadata accessor for Settings(0) + 64));
  type metadata accessor for CALogger();
  swift_allocObject();
  v12 = sub_100022EBC(v10 & 1, v11);
  sub_1000DD2B0(a2, type metadata accessor for Settings);
  sub_10000959C(v14);
  return v12;
}

id sub_1000DCC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = type metadata accessor for Environment(0);
  v59 = sub_1000DD348();
  v57[0] = a1;
  v55 = type metadata accessor for SecureElement();
  v56 = &off_1003849A0;
  v54[0] = a2;
  if (qword_10039D350 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_10039F3F8);
  sub_10000CCE4(v57, v52);
  sub_10000CCE4(v54, v50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v9 = 136315394;
    nullsub_1();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v49);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1790;
    v14 = v53;
    v15 = sub_10000BE18(v52, v53);
    *(v13 + 56) = v14;
    v16 = sub_10000BE5C((v13 + 32));
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    v17 = v51;
    v18 = sub_10000BE18(v50, v51);
    *(v13 + 88) = v17;
    v19 = sub_10000BE5C((v13 + 64));
    (*(*(v17 - 8) + 16))(v19, v18, v17);
    type metadata accessor for SPRAttestationVaultOptions(0);
    *(v13 + 120) = v20;
    *(v13 + 96) = a3;
    v21 = showFunction(signature:_:)(0xD000000000000039, 0x800000010034CF80, v13);
    v23 = v22;

    sub_10000959C(v52);
    sub_10000959C(v50);
    v24 = sub_100008F6C(v21, v23, &v49);

    *(v9 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s)", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v52);
    sub_10000959C(v50);
  }

  v25 = *(*sub_10000BE18(v57, v58) + OBJC_IVAR____TtC14softposreaderd11Environment_backendName);
  if (sub_1000DD5D0(v25) == 1685025392 && v26 == 0xE400000000000000)
  {
    goto LABEL_13;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_14:
    v30 = 18;
    goto LABEL_15;
  }

  if (sub_1000DD5D0(v25) == 0x6567617473 && v29 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
    goto LABEL_14;
  }

  v46 = sub_10000BE18(v57, v58);
  if (sub_1000DD5D0(*(*v46 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName)) == 1953654115 && v47 == 0xE400000000000000)
  {
LABEL_13:

    goto LABEL_14;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    v30 = 18;
  }

  else
  {
    v30 = -48;
  }

LABEL_15:
  result = [*(*sub_10000BE18(v54 v55) + 24)];
  if (result)
  {
    v32 = result;
    v33 = [result unsignedShortValue];

    v34 = sub_10000BE18(v57, v58);
    if (sub_1000DD5D0(*(*v34 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName)) == 1953654115 && v35 == 0xE400000000000000)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
LABEL_21:
        v37 = objc_opt_self();
        v38 = [v37 processInfo];
        [v38 operatingSystemVersion];
        v39 = v52[0];

        v40 = [v37 processInfo];
        [v40 operatingSystemVersion];
        v41 = v52[1];

        v42 = [v37 processInfo];
        [v42 operatingSystemVersion];
        v43 = v52[2];

        type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
        v44 = swift_allocObject();
        *(v44 + 16) = v30;
        *(v44 + 18) = v33;
        *(v44 + 24) = v39;
        *(v44 + 32) = v41;
        *(v44 + 40) = v43;
        *(v44 + 17) = 5;
        *(v44 + 56) = a3 | 0x8C;
        *(v44 + 48) = ~a3 & 0x52;
        sub_10000959C(v54);
        sub_10000959C(v57);
        return v44;
      }
    }

    a3 |= 0x40uLL;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Settings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD2B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DD310()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000DD348()
{
  result = qword_1003A1B28;
  if (!qword_1003A1B28)
  {
    type metadata accessor for Environment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B28);
  }

  return result;
}

uint64_t sub_1000DD3A0(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000DD3BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DD3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DD40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DD458(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1000DD4F4@<X0>(uint64_t *a2@<X8>)
{

  result = sub_1000E2E48(v5);
  if (!v3)
  {
    v7 = result;
    a2[3] = v2;
    result = sub_1000E30EC(&qword_1003A1B28, type metadata accessor for Environment, &unk_1002C7040);
    a2[4] = result;
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1000DD574()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2E20);
  sub_10000403C(v0, qword_1003A2E20);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000DD5D0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1685025392;
    v7 = 1953654115;
    v8 = 3236209;
    if (a1 != 3)
    {
      v8 = 3301745;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6567617473;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 3563889;
    v2 = 0x656E696C66666FLL;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 3367281;
    v4 = 3432817;
    if (a1 != 6)
    {
      v4 = 3498353;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000DD6FC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6BF8);
  v4 = sub_10000403C(v3, qword_1003A6BF8);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD82C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C10);
  v4 = sub_10000403C(v3, qword_1003A6C10);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD95C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C28);
  v4 = sub_10000403C(v3, qword_1003A6C28);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDA8C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C40);
  v4 = sub_10000403C(v3, qword_1003A6C40);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDBBC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C58);
  v4 = sub_10000403C(v3, qword_1003A6C58);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDCEC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C70);
  v4 = sub_10000403C(v3, qword_1003A6C70);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDE1C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6C88);
  v4 = sub_10000403C(v3, qword_1003A6C88);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDF4C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6CA0);
  v4 = sub_10000403C(v3, qword_1003A6CA0);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE07C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100003FD8(v3, qword_1003A6CB8);
  v4 = sub_10000403C(v3, qword_1003A6CB8);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE1F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for URL();
  sub_100003FD8(v8, a2);
  v9 = sub_10000403C(v8, a2);
  URL.init(string:)();
  v10 = *(v8 - 8);
  result = (*(v10 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 32))(v9, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE31C()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FD8(v6, qword_1003A6D00);
  sub_10000403C(v4, qword_1003A6D00);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:14 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v13[0] = 0xD000000000000017;
      v13[1] = 0x800000010034A1A0;
      (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
      sub_10008AB88();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v8, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE5B4()
{
  v0 = type metadata accessor for URL();
  sub_100003FD8(v0, qword_1003A6D18);
  sub_10000403C(v0, qword_1003A6D18);
  return sub_1000DE600();
}

uint64_t sub_1000DE600()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v16 = 1;
  if (container_system_path_for_identifier())
  {
    if (qword_10039D568 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A2E20);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      v8 = String.init(cString:)();
      v10 = sub_100008F6C(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "System container path: %s", v6, 0xCu);
      sub_10000959C(v7);
    }

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000E14B4(v2);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v17 = 0xD000000000000020;
    v18 = 0x800000010034D090;
    v15[1] = v16;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DE90C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29[-1] - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29[-1] - v15;
  v17 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  swift_beginAccess();
  sub_1000BDC6C(v2 + v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000E14B4(v9);
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14softposreaderd11Environment_storageURL);
    v20 = v19;
    v29[0] = 0;
    v21 = [v18 URLForDirectory:99 inDomain:1 appropriateForURL:v19 create:1 error:v29];

    v22 = v29[0];
    if (v21)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      (*(v11 + 16))(v7, v14, v10);
      v24 = *(v11 + 56);
      v24(v7, 0, 1, v10);
      swift_beginAccess();
      sub_1000E1534(v7, v2 + v17);
      swift_endAccess();
      (*(v11 + 32))(a1, v14, v10);
      return (v24)(a1, 0, 1, v10);
    }

    else
    {
      v27 = v29[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return (*(v11 + 56))(a1, 1, 1, v10);
    }
  }

  else
  {
    v26 = *(v11 + 32);
    v26(v16, v9, v10);
    v26(a1, v16, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1000DECAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for BackendSetting(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3134(a2, v9, type metadata accessor for BackendSetting);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 11, v10);
  if (v12 > 5)
  {
    if (v12 > 8)
    {
      if (v12 == 9)
      {
        if (qword_10039D5A8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000403C(v10, qword_1003A6CA0);
        (*(v11 + 16))(a1, v29, v10);
        return 7;
      }

      else if (v12 == 10)
      {
        if (qword_10039D5B0 != -1)
        {
          swift_once();
        }

        v26 = sub_10000403C(v10, qword_1003A6CB8);
        (*(v11 + 16))(a1, v26, v10);
        return 8;
      }

      else
      {
        if (qword_10039D5B8 != -1)
        {
          swift_once();
        }

        v33 = sub_10000403C(v10, qword_1003A6CD0);
        (*(v11 + 16))(a1, v33, v10);
        return 9;
      }
    }

    else if (v12 == 6)
    {
      if (qword_10039D590 != -1)
      {
        swift_once();
      }

      v27 = sub_10000403C(v10, qword_1003A6C58);
      (*(v11 + 16))(a1, v27, v10);
      return 4;
    }

    else if (v12 == 7)
    {
      if (qword_10039D598 != -1)
      {
        swift_once();
      }

      v24 = sub_10000403C(v10, qword_1003A6C70);
      (*(v11 + 16))(a1, v24, v10);
      return 5;
    }

    else
    {
      if (qword_10039D5A0 != -1)
      {
        swift_once();
      }

      v31 = sub_10000403C(v10, qword_1003A6C88);
      (*(v11 + 16))(a1, v31, v10);
      return 6;
    }
  }

  else
  {
    if (v12 <= 2)
    {
      if (!v12)
      {
        (*(v11 + 32))(a1, v9, v10);
        return 10;
      }

      if (v12 == 1)
      {
        if (![*(*sub_10000BE18(a4 a4[3]) + 16)])
        {
          goto LABEL_11;
        }

        if (qword_10039D720 != -1)
        {
          swift_once();
        }

        if ((*(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_isSandboxAccount) & 1) != 0 || (v13 = objc_allocWithZone(NSUserDefaults), v14 = String._bridgeToObjectiveC()(), v15 = [v13 initWithSuiteName:v14], v14, v15) && (v16 = String._bridgeToObjectiveC()(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v15, v16, v17))
        {
LABEL_11:
          if (qword_10039D568 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000403C(v18, qword_1003A2E20);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, v20, "BackendSetting of .default will be: CERT BackendURL", v21, 2u);
          }

          if (qword_10039D580 != -1)
          {
            swift_once();
          }

          v22 = sub_10000403C(v10, qword_1003A6C28);
          (*(v11 + 16))(a1, v22, v10);
          sub_1000DD2B0(v9, type metadata accessor for BackendSetting);
          return 2;
        }

        if (qword_10039D568 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000403C(v34, qword_1003A2E20);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "BackendSetting of .default will be: PROD BackendURL", v37, 2u);
        }

        if (qword_10039D570 != -1)
        {
          swift_once();
        }

        v38 = sub_10000403C(v10, qword_1003A6BF8);
        (*(v11 + 16))(a1, v38, v10);
        sub_1000DD2B0(v9, type metadata accessor for BackendSetting);
      }

      else
      {
        if (qword_10039D570 != -1)
        {
          swift_once();
        }

        v30 = sub_10000403C(v10, qword_1003A6BF8);
        (*(v11 + 16))(a1, v30, v10);
      }

      return 0;
    }

    if (v12 == 3)
    {
      if (qword_10039D578 != -1)
      {
        swift_once();
      }

      v28 = sub_10000403C(v10, qword_1003A6C10);
      (*(v11 + 16))(a1, v28, v10);
      return 1;
    }

    else if (v12 == 4)
    {
      if (qword_10039D580 != -1)
      {
        swift_once();
      }

      v25 = sub_10000403C(v10, qword_1003A6C28);
      (*(v11 + 16))(a1, v25, v10);
      return 2;
    }

    else
    {
      if (qword_10039D588 != -1)
      {
        swift_once();
      }

      v32 = sub_10000403C(v10, qword_1003A6C40);
      (*(v11 + 16))(a1, v32, v10);
      return 3;
    }
  }
}

uint64_t sub_1000DF574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a3;
  v5 = type metadata accessor for CocoaError.Code();
  v129 = *(v5 - 8);
  v130 = v5;
  __chkstk_darwin(v5);
  v128 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v137 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v127 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v125 - v11;
  __chkstk_darwin(v10);
  v133 = &v125 - v13;
  v14 = type metadata accessor for URL.DirectoryHint();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D568 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v132 = sub_10000403C(v18, qword_1003A2E20);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v126 = v12;
  v135 = a1;
  v136 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = v15;
    v26 = v14;
    v27 = v7;
    v28 = sub_100008F6C(v23, v24, &v139);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = showFunction(signature:_:)(0xD000000000000015, 0x800000010034D0F0, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, &v139);

    *(v22 + 14) = v31;
    v7 = v27;
    v14 = v26;
    v15 = v25;
    a1 = v135;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s", v22, 0x16u);
    swift_arrayDestroy();

    a2 = v136;
  }

  if (qword_10039D5D0 != -1)
  {
    swift_once();
  }

  sub_10000403C(v7, qword_1003A6D18);
  v139 = a1;
  v140 = a2;
  v32 = enum case for URL.DirectoryHint.isDirectory(_:);
  v33 = *(v15 + 104);
  v33(v17, enum case for URL.DirectoryHint.isDirectory(_:), v14);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  v34 = v7;
  v35 = *(v15 + 8);
  v35(v17, v14);
  if (qword_10039D5C8 != -1)
  {
    swift_once();
  }

  v131 = v34;
  sub_10000403C(v34, qword_1003A6D00);
  v139 = v135;
  v140 = v136;
  v33(v17, v32, v14);
  v36 = v133;
  URL.appending<A>(component:directoryHint:)();
  v35(v17, v14);
  v37 = objc_opt_self();
  v38 = &selRef_currencyCode;
  v39 = [v37 defaultManager];
  URL.path(percentEncoded:)(0);
  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 fileExistsAtPath:v40];

  if (v41)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Reusing existing storage location", v44, 2u);
    }

    v45 = v131;
  }

  else
  {
    v46 = [v37 defaultManager];
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    v139 = 0;
    v53 = [v46 copyItemAtURL:v49 toURL:v51 error:&v139];

    v54 = v139;
    if (v53)
    {
      v55 = v126;
      v56 = v131;
      (*(v137 + 16))(v126, v36, v131);
      v57 = v54;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v139 = v61;
        *v60 = 136315138;
        sub_1000E30EC(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v55;
        v65 = v64;
        (*(v137 + 8))(v63, v56);
        v66 = sub_100008F6C(v62, v65, &v139);
        v36 = v133;

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v58, v59, "Imported legacy storage at: %s", v60, 0xCu);
        sub_10000959C(v61);
      }

      else
      {

        (*(v137 + 8))(v55, v56);
      }

      v38 = &selRef_currencyCode;
      v45 = v56;
    }

    else
    {
      v67 = v139;
      v68 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v69 = v128;
      static CocoaError.fileReadNoSuchFile.getter();
      sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v70 = v130;
      v71 = static _ErrorCodeProtocol.~= infix(_:_:)();
      (*(v129 + 8))(v69, v70);
      v45 = v131;
      v38 = &selRef_currencyCode;
      if ((v71 & 1) == 0)
      {
        swift_errorRetain();
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v139 = v75;
          *v74 = 136315138;
          v138 = v68;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v76 = String.init<A>(describing:)();
          v78 = sub_100008F6C(v76, v77, &v139);

          *(v74 + 4) = v78;
          v36 = v133;
          _os_log_impl(&_mh_execute_header, v72, v73, "Failed to import legacy storage: %s", v74, 0xCu);
          sub_10000959C(v75);
          v38 = &selRef_currencyCode;
        }
      }

      v79 = [v37 v38[53]];
      URL._bridgeToObjectiveC()(v80);
      v82 = v81;
      v139 = 0;
      v83 = [v79 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:&v139];

      if (!v83)
      {
        v124 = v139;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v84 = v139;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Created new storage location", v87, 2u);
      }
    }
  }

  v88 = [v37 v38[53]];
  URL._bridgeToObjectiveC()(v89);
  v91 = v90;
  v139 = 0;
  v92 = [v88 removeItemAtURL:v90 error:&v139];

  v93 = v139;
  if (v92)
  {
    v94 = v127;
    (*(v137 + 16))(v127, v36, v45);
    v95 = v93;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v139 = v99;
      *v98 = 136315138;
      sub_1000E30EC(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v45;
      v103 = v102;
      v104 = v94;
      v105 = v36;
      v106 = *(v137 + 8);
      v106(v104, v101);
      v107 = sub_100008F6C(v100, v103, &v139);

      *(v98 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v96, v97, "Removed legacy storage at: %s", v98, 0xCu);
      sub_10000959C(v99);

      return (v106)(v105, v101);
    }

    else
    {

      v114 = *(v137 + 8);
      v114(v94, v45);
      return (v114)(v36, v45);
    }
  }

  else
  {
    v109 = v139;
    v110 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v111 = v128;
    static CocoaError.fileNoSuchFile.getter();
    sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v112 = v130;
    v113 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v129 + 8))(v111, v112);
    if (v113)
    {
      (*(v137 + 8))(v36, v45);
    }

    else
    {
      swift_errorRetain();
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v139 = v118;
        *v117 = 136315138;
        v138 = v110;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v119 = String.init<A>(describing:)();
        v120 = v137;
        v122 = v36;
        v123 = sub_100008F6C(v119, v121, &v139);

        *(v117 + 4) = v123;
        _os_log_impl(&_mh_execute_header, v115, v116, "Failed to remove legacy storage: %s", v117, 0xCu);
        sub_10000959C(v118);

        return (*(v120 + 8))(v122, v45);
      }

      else
      {

        return (*(v137 + 8))(v36, v45);
      }
    }
  }
}

uint64_t sub_1000E0460@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v35 - v9;
  v43 = objc_opt_self();
  v10 = 0;
  v39 = enum case for URL.DirectoryHint.isDirectory(_:);
  v37 = (v1 + 8);
  v38 = (v1 + 104);
  v11 = (v5 + 8);
  v36 = (v5 + 32);
  v12 = &off_1003A6000;
  v35 = xmmword_1002C1660;
  do
  {
    v16 = v12[422];
    v17 = (&v16->Flags + 1);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    v18 = v12;
    v12[422] = v17;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v19 = swift_allocObject();
    *(v19 + 16) = v35;
    *(v19 + 56) = &type metadata for Int;
    *(v19 + 64) = &protocol witness table for Int;
    *(v19 + 32) = v17;
    v20 = String.init(format:_:)();
    v22 = v21;
    if (v10)
    {
    }

    v23 = [v43 defaultManager];
    v24 = [v23 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v44[0] = v20;
    v44[1] = v22;
    v25 = v40;
    (*v38)(v3, v39, v40);
    sub_10008AB88();
    URL.appending<A>(component:directoryHint:)();
    (*v37)(v3, v25);

    v26 = *v11;
    (*v11)(v8, v4);
    if (v10)
    {
      v26(v41, v4);
    }

    (*v36)(v41, v42, v4);
    v13 = [v43 defaultManager];
    URL.path.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 fileExistsAtPath:v14];

    v10 = 1;
    v12 = v18;
  }

  while ((v15 & 1) != 0);
  v27 = [v43 defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v44[0] = 0;
  v31 = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v44];

  if (v31)
  {
    v32 = v44[0];
  }

  else
  {
    v34 = v44[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E08F0()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v6 - 8);
  v8 = v62 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v64 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v62 - v13;
  if (*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary) == 1)
  {
    v63 = v8;
    v15 = [objc_opt_self() defaultManager];
    v16 = *(v10 + 16);
    v62[1] = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
    v16(v14, v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v9);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    (*(v10 + 8))(v14, v9);
    v66[0] = 0;
    v20 = [v15 removeItemAtURL:v19 error:v66];

    if (v20)
    {
      v21 = qword_10039D568;
      v22 = v66[0];
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000403C(v23, qword_1003A2E20);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_13;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v26 = 136315138;
      v28 = URL.path.getter();
      v30 = sub_100008F6C(v28, v29, v66);

      *(v26 + 4) = v30;
      v31 = "Removed temporary storage %s";
    }

    else
    {
      v32 = v66[0];
      v33 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      static CocoaError.fileNoSuchFile.getter();
      sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*(v3 + 8))(v5, v2);
      if ((v34 & 1) == 0)
      {
        if (qword_10039D568 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_10000403C(v54, qword_1003A2E20);
        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v65 = v33;
          v66[0] = v58;
          *v57 = 136315138;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v59 = String.init<A>(describing:)();
          v61 = sub_100008F6C(v59, v60, v66);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Failed to remove temporary storage %s", v57, 0xCu);
          sub_10000959C(v58);
        }

        else
        {
        }

        goto LABEL_14;
      }

      if (qword_10039D568 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000403C(v35, qword_1003A2E20);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_13:

LABEL_14:
        v8 = v63;
        goto LABEL_15;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v26 = 136315138;
      v36 = URL.path.getter();
      v38 = sub_100008F6C(v36, v37, v66);

      *(v26 + 4) = v38;
      v31 = "Temporary storage %s already removed";
    }

    _os_log_impl(&_mh_execute_header, v24, v25, v31, v26, 0xCu);
    sub_10000959C(v27);

    goto LABEL_13;
  }

LABEL_15:
  v39 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  swift_beginAccess();
  sub_1000BDC6C(v1 + v39, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000E14B4(v8);
    v40 = *(v10 + 8);
    v40(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v9);
  }

  else
  {
    v41 = v64;
    (*(v10 + 32))(v64, v8, v9);
    v42 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v43);
    v45 = v44;
    v65 = 0;
    v46 = [v42 removeItemAtURL:v44 error:&v65];

    if (v46)
    {
      v40 = *(v10 + 8);
      v47 = v65;
      v40(v41, v9);
      v40(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v9);
    }

    else
    {
      v48 = v65;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10039D568 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000403C(v49, qword_1003A2E20);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "cannot delete itemReplacementDirectory", v52, 2u);
      }

      v40 = *(v10 + 8);
      v40(v41, v9);
      v40(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v9);
    }
  }

  v40(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v9);
  sub_1000E14B4(v1 + v39);
  sub_1000E151C(*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting), *(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting + 8), *(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting + 16));
  return v1;
}

uint64_t sub_1000E11F0()
{
  sub_1000E08F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Environment(uint64_t a1)
{
  result = qword_1003A2E68;
  if (!qword_1003A2E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E129C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000E1384(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E1384(uint64_t a1)
{
  if (!qword_1003A2E78)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003A2E78);
    }
  }
}

uint64_t sub_1000E13DC()
{
  v1 = *v0;
  strcpy(v5, "Environment[");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v2._countAndFlagsBits = sub_1000DD5D0(*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName));
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5[0];
}

uint64_t sub_1000E145C(uint64_t a1)
{
  result = sub_1000E30EC(&qword_1003A2F38, type metadata accessor for Environment, &unk_1002C7018);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000E14B4(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E151C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000E1534(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E15A4(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      type metadata accessor for SHA256();
      sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000E1784(v6, v7, a4);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1000E1784(v6, v7, a4);
  }

  type metadata accessor for SHA256();
  sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000E1784(uint64_t a1, uint64_t a2, double a3)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000E1864(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v165 = a1;
  v159 = *a4;
  v148 = type metadata accessor for SHA256Digest();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for URL.DirectoryHint();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for String.Encoding();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for SHA256();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Settings(0);
  __chkstk_darwin(v160);
  v13 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v152 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v140 - v18;
  v172[3] = type metadata accessor for SystemInfo();
  v172[4] = &off_100386330;
  v172[0] = a2;
  v171[3] = type metadata accessor for SecureElement();
  v171[4] = &off_1003849A0;
  v171[0] = a3;
  v164 = v15;
  v20 = *(v15 + 56);
  v141 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  v20(&v4[OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory], 1, 1, v14);
  if (qword_10039D568 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000403C(v21, qword_1003A2E20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v163 = v4;
  v149 = v11;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v168[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v28 = v13;
    v30 = sub_100008F6C(v27, v29, v168);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034D0C0, _swiftEmptyArrayStorage);
    v33 = sub_100008F6C(v31, v32, v168);

    *(v26 + 14) = v33;
    v13 = v28;
    v4 = v163;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s", v26, 0x16u);
    swift_arrayDestroy();
  }

  v34 = v165;
  v36 = sub_1000DECAC(v19, v165, v35, v171);
  v37 = *(v164 + 32);
  v142 = OBJC_IVAR____TtC14softposreaderd11Environment_backendURL;
  v161 = v19;
  v158 = v164 + 32;
  v157 = v37;
  v37(&v4[OBJC_IVAR____TtC14softposreaderd11Environment_backendURL], v19, v14);
  v38 = OBJC_IVAR____TtC14softposreaderd11Environment_backendName;
  v4[OBJC_IVAR____TtC14softposreaderd11Environment_backendName] = v36;
  sub_1000E3134(v34, v13, type metadata accessor for Settings);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v162 = v14;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v156 = v22;
    v44 = v4;
    v168[0] = v43;
    *v42 = 136315394;
    v45 = sub_1000D87C0();
    v47 = v46;
    sub_1000DD2B0(v13, type metadata accessor for Settings);
    v48 = sub_100008F6C(v45, v47, v168);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v49 = v44[v38];
    v50 = v156;
    v51 = sub_1000DD5D0(v49);
    v53 = sub_100008F6C(v51, v52, v168);

    *(v42 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v39, v40, "(Configurator, A&M, TimeToken) BackendSetting: %s is %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v50 = v22;

    sub_1000DD2B0(v13, type metadata accessor for Settings);
  }

  v54 = v165 + *(v160 + 20);
  countAndFlagsBits = *v54;
  object = *(v54 + 8);
  v57 = *(v54 + 16);
  v58 = v161;
  if (v57)
  {
    if (v57 == 1)
    {

      sub_1000DF574(countAndFlagsBits, object, v58);
      v59 = v163;
      v157(&v163[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v58, v162);
      v59[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v160 = countAndFlagsBits;
        v63 = v62;
        v64 = swift_slowAlloc();
        v168[0] = v64;
        *v63 = 136315138;
        v65 = URL.path.getter();
        v67 = sub_100008F6C(v65, v66, v168);

        *(v63 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Using permanent storage at: %s", v63, 0xCu);
        sub_10000959C(v64);

        countAndFlagsBits = v160;
      }

      sub_10000959C(v171);
      sub_10000959C(v172);
LABEL_34:
      sub_1000DD2B0(v165, type metadata accessor for Settings);
      v108 = 1;
      goto LABEL_35;
    }

    v59 = v163;
    v95 = v162;
    if (!(countAndFlagsBits | object))
    {
      v109 = v149;
      SHA256.init()();
      v110 = v164;
      (*(v164 + 16))(v58, &v59[v142], v95);
      URL.absoluteString.getter();
      (*(v110 + 8))(v58, v95);
      v111 = v143;
      static String.Encoding.utf8.getter();
      v112 = String.data(using:allowLossyConversion:)();
      v114 = v113;

      (*(v144 + 8))(v111, v145);
      if (v114 >> 60 != 15)
      {
        sub_1000094F4(v112, v114);
        sub_1000E15A4(v112, v114, v109, v119);
        sub_10001A074(v112, v114);
        sub_1000094F4(v112, v114);
        sub_1000E15A4(v112, v114, v109, v120);
        sub_10001A074(v112, v114);
        sub_1000094F4(v112, v114);
        sub_1000E15A4(v112, v114, v109, v121);
        sub_10001A074(v112, v114);
        sub_10001A074(v112, v114);
      }

      v122 = v148;
      v123 = v146;
      SHA256.finalize()();
      v169 = v122;
      v170 = sub_1000E30EC(&qword_1003A2F40, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v124 = sub_10000BE5C(v168);
      v125 = v147;
      (*(v147 + 16))(v124, v123, v122);
      sub_10000BE18(v168, v169);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v125 + 8))(v123, v122);
      v126 = v166;
      v127 = v167;
      sub_10000959C(v168);
      v128 = Data.hexString()();
      countAndFlagsBits = v128._countAndFlagsBits;
      object = v128._object;
      sub_100009548(v126, v127);
      sub_1000DF574(v128._countAndFlagsBits, v128._object, v58);
      v157(&v59[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v58, v162);
      v59[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v160 = v128._countAndFlagsBits;
        v132 = v131;
        v133 = swift_slowAlloc();
        v168[0] = v133;
        *v132 = 136315138;
        v134 = URL.path.getter();
        v136 = sub_100008F6C(v134, v135, v168);

        *(v132 + 4) = v136;
        _os_log_impl(&_mh_execute_header, v129, v130, "Using permanent storage at: %s", v132, 0xCu);
        sub_10000959C(v133);

        countAndFlagsBits = v160;
      }

      sub_10000959C(v171);
      sub_10000959C(v172);
      (*(v150 + 8))(v109, v151);
      goto LABEL_34;
    }

    if (countAndFlagsBits ^ 1 | object)
    {
      if (qword_10039D5C0 != -1)
      {
        swift_once();
      }

      v115 = sub_10000403C(v95, qword_1003A6CE8);
      (*(v164 + 16))(&v59[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v115, v95);
      v59[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v116, v117, "Using volatile storage", v118, 2u);
      }

      sub_10000959C(v171);
      sub_10000959C(v172);
      sub_1000DD2B0(v165, type metadata accessor for Settings);
      v108 = 2;
      goto LABEL_35;
    }

    sub_1000E0460(v161);
    v96 = v58;
    v97 = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
    v157(&v59[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v96, v95);
    v59[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 1;
    v98 = v164;
    (*(v164 + 16))(v96, &v59[v97], v95);
    countAndFlagsBits = URL.lastPathComponent.getter();
    object = v99;
    (*(v98 + 8))(v96, v95);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v160 = countAndFlagsBits;
      v103 = v102;
      v104 = swift_slowAlloc();
      v168[0] = v104;
      *v103 = 136315138;
      v105 = URL.path.getter();
      v107 = sub_100008F6C(v105, v106, v168);

      *(v103 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Using temporary storage at: %s", v103, 0xCu);
      sub_10000959C(v104);

      countAndFlagsBits = v160;
    }

    sub_10000959C(v171);
    sub_10000959C(v172);
LABEL_22:
    sub_1000DD2B0(v165, type metadata accessor for Settings);
    v108 = 0;
LABEL_35:
    v137 = &v59[OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting];
    *v137 = countAndFlagsBits;
    *(v137 + 1) = object;
    v137[16] = v108;
    return v59;
  }

  v156 = v50;
  v68 = objc_opt_self();

  v69 = [v68 defaultManager];
  v70 = [v69 temporaryDirectory];

  v71 = v152;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v160 = countAndFlagsBits;
  v168[0] = countAndFlagsBits;
  v168[1] = object;
  v72 = v154;
  v73 = v153;
  v74 = v155;
  (*(v154 + 104))(v153, enum case for URL.DirectoryHint.isDirectory(_:), v155);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  (*(v72 + 8))(v73, v74);
  v75 = v164;
  v76 = *(v164 + 8);
  v77 = v71;
  v78 = v162;
  v76(v77, v162);
  v79 = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
  v80 = v58;
  v81 = v163;
  v157(&v163[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v80, v78);
  v81[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 1;
  v82 = [v68 defaultManager];
  (*(v75 + 16))(v80, &v81[v79], v78);
  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  v76(v80, v78);
  v168[0] = 0;
  LOBYTE(v80) = [v82 createDirectoryAtURL:v85 withIntermediateDirectories:1 attributes:0 error:v168];

  v86 = v168[0];
  if (v80)
  {

    v87 = v86;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();

    v59 = v81;
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v168[0] = v91;
      *v90 = 136315138;
      v92 = URL.path.getter();
      v94 = sub_100008F6C(v92, v93, v168);

      *(v90 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "Using temporary storage at: %s", v90, 0xCu);
      sub_10000959C(v91);
    }

    sub_10000959C(v171);
    sub_10000959C(v172);
    countAndFlagsBits = v160;
    goto LABEL_22;
  }

  v139 = v168[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  v76(&v81[v142], v78);
  v76(&v81[v79], v78);
  sub_1000E14B4(&v81[v141]);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

char *sub_1000E2C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for SystemInfo();
  v22 = &off_100386330;
  v20[0] = a2;
  v18 = type metadata accessor for SecureElement();
  v19 = &off_1003849A0;
  v17[0] = a3;
  type metadata accessor for Environment(0);
  v6 = swift_allocObject();
  v7 = sub_100022438(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100022438(v17, v18);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000E1864(a1, *v9, *v13, v6);
  sub_10000959C(v17);
  sub_10000959C(v20);
  return v15;
}

char *sub_1000E2E48(uint64_t a1)
{
  v3 = type metadata accessor for Settings(0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3134(a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, v5, type metadata accessor for Settings);
  sub_1000E90C8(v16);
  if (v1)
  {

    sub_1000DD2B0(v5, type metadata accessor for Settings);
  }

  else
  {
    sub_1000E5844(v15);
    v6 = sub_100022438(v16, v16[3]);
    __chkstk_darwin(v6);
    v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_100022438(v15, v15[3]);
    __chkstk_darwin(v10);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v5 = sub_1000E2C64(v5, *v8, *v12);

    sub_10000959C(v15);
    sub_10000959C(v16);
  }

  return v5;
}

uint64_t sub_1000E30EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E3134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *Primer.shared.unsafeMutableAddressor()
{
  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }

  return &static Primer.shared;
}

void sub_1000E31EC(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CE70);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010034CE70;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CE70);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CE70);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3118, &qword_1002C7170);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CE70;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CE70);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CE70);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3118, &qword_1002C7170);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CE70;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001ALL;
  v29 = 0x800000010034CE70;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CE70);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E3850(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000013, 0x800000010034CDA0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000013;
    v10 = 0x800000010034CDA0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000013, 0x800000010034CDA0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000013, 0x800000010034CDA0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3170, qword_1002C71C8);
        *&v24 = 0xD000000000000013;
        *(&v24 + 1) = 0x800000010034CDA0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000013, 0x800000010034CDA0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000013, 0x800000010034CDA0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3170, qword_1002C71C8);
        *&v24 = 0xD000000000000013;
        *(&v24 + 1) = 0x800000010034CDA0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000013;
  v29 = 0x800000010034CDA0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000013, 0x800000010034CDA0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E3EB4(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC10);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000010;
    v10 = 0x800000010034CC10;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CC10);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CC10);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3168, &qword_1002C71C0);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CC10;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CC10);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CC10);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3168, &qword_1002C71C0);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CC10;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000010;
  v29 = 0x800000010034CC10;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC10);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E4518(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000010, 0x800000010034CD00);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000010;
    v10 = 0x800000010034CD00;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CD00);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CD00);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30F0, &qword_1002C7138);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CD00;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CD00);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CD00);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30F0, &qword_1002C7138);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CD00;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000010;
  v29 = 0x800000010034CD00;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000010, 0x800000010034CD00);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E4B7C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000026, 0x800000010034CE00);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000026;
    v10 = 0x800000010034CE00;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000026, 0x800000010034CE00);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000026, 0x800000010034CE00);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3150, &qword_1002C71A8);
        *&v24 = 0xD000000000000026;
        *(&v24 + 1) = 0x800000010034CE00;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000026, 0x800000010034CE00);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000026, 0x800000010034CE00);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3150, &qword_1002C71A8);
        *&v24 = 0xD000000000000026;
        *(&v24 + 1) = 0x800000010034CE00;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000026;
  v29 = 0x800000010034CE00;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000026, 0x800000010034CE00);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E51E0(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CDE0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001BLL;
    v10 = 0x800000010034CDE0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CDE0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CDE0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3148, &qword_1002C71A0);
        *&v24 = 0xD00000000000001BLL;
        *(&v24 + 1) = 0x800000010034CDE0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CDE0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CDE0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3148, &qword_1002C71A0);
        *&v24 = 0xD00000000000001BLL;
        *(&v24 + 1) = 0x800000010034CDE0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001BLL;
  v29 = 0x800000010034CDE0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CDE0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E5844(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000015, 0x800000010034CDC0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000015;
    v10 = 0x800000010034CDC0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CDC0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CDC0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30B0, &qword_1002C70F8);
        *&v24 = 0xD000000000000015;
        *(&v24 + 1) = 0x800000010034CDC0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CDC0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CDC0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30B0, &qword_1002C70F8);
        *&v24 = 0xD000000000000015;
        *(&v24 + 1) = 0x800000010034CDC0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000015;
  v29 = 0x800000010034CDC0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000015, 0x800000010034CDC0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E5EA8(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CB90);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010034CB90;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CB90);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CB90);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3128, &qword_1002C7180);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CB90;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CB90);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CB90);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3128, &qword_1002C7180);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CB90;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001ALL;
  v29 = 0x800000010034CB90;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CB90);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E650C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000022, 0x800000010034CCD0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000022;
    v10 = 0x800000010034CCD0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CCD0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CCD0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3158, &qword_1002C71B0);
        *&v24 = 0xD000000000000022;
        *(&v24 + 1) = 0x800000010034CCD0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CCD0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CCD0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3158, &qword_1002C71B0);
        *&v24 = 0xD000000000000022;
        *(&v24 + 1) = 0x800000010034CCD0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000022;
  v29 = 0x800000010034CCD0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000022, 0x800000010034CCD0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E6B70(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CE50);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001FLL;
    v10 = 0x800000010034CE50;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CE50);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CE50);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30A8, &qword_1002C70F0);
        *&v24 = 0xD00000000000001FLL;
        *(&v24 + 1) = 0x800000010034CE50;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CE50);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CE50);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30A8, &qword_1002C70F0);
        *&v24 = 0xD00000000000001FLL;
        *(&v24 + 1) = 0x800000010034CE50;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001FLL;
  v29 = 0x800000010034CE50;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CE50);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E71D4()
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v2 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v4 = sub_1000F5A28(0xD000000000000015, 0x800000010034CC30);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    memset(v27, 0, sizeof(v27));
    v28 = -1;
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);
    v6 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v3 + 56) + 40 * v4, v27);
  sub_100065074(v27, v25, qword_10039EEE0, &qword_1002C23D8);
  if (v26 > 1u)
  {
    if (v26 == 2)
    {
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      v10 = v25[0];
      v9 = v25[1];
      v22 = 0u;
      v23 = 0u;
      v24 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v22, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();
      v10(&v22, v0);
      if (!v1)
      {
        v11 = type metadata accessor for ConfiguratorAnalytics(0);
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v22 = 0xD000000000000015;
        *(&v22 + 1) = 0x800000010034CC30;
        v12._countAndFlagsBits = 0x646E65706564203ALL;
        v12._object = 0xEB00000000746E65;
        String.append(_:)(v12);
        sub_100020384(7004, v22, *(&v22 + 1), 0);
        swift_willThrow();
      }

      *&v22 = v10;
      *(&v22 + 1) = v9;
      v24 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    v6 = 7003;
LABEL_9:
    v7 = 0xD000000000000015;
    v8 = 0x800000010034CC30;
LABEL_10:
    sub_100020384(v6, v7, v8, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v26)
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    (v25[0])(&v22, v13);
    if (v1)
    {
      goto LABEL_19;
    }

    v11 = type metadata accessor for ConfiguratorAnalytics(0);
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v23 + 1) = v11;
      *&v22 = v21;
      v24 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v22 = 0xD000000000000015;
    *(&v22 + 1) = 0x800000010034CC30;
    v20._countAndFlagsBits = 0x657065646E69203ALL;
    v20._object = 0xED0000746E65646ELL;
    String.append(_:)(v20);
    sub_100020384(7004, v22, *(&v22 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for ConfiguratorAnalytics(0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v25);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v25);
  *&v22 = 0xD000000000000015;
  *(&v22 + 1) = 0x800000010034CC30;
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = *(v0 + v2);
  if (*(v15 + 16))
  {

    v16 = sub_1000F5A28(0xD000000000000015, 0x800000010034CC30);
    if (v17)
    {
      v18 = v16;
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v15 + 56) + 40 * v18, v25);

      v19._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v19);

      sub_1000F3008(v25);
      v8 = *(&v22 + 1);
      v7 = v22;
      v6 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E7738(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CBD0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001BLL;
    v10 = 0x800000010034CBD0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CBD0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CBD0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3108, &qword_1002C7150);
        *&v24 = 0xD00000000000001BLL;
        *(&v24 + 1) = 0x800000010034CBD0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CBD0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001BLL, 0x800000010034CBD0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3108, &qword_1002C7150);
        *&v24 = 0xD00000000000001BLL;
        *(&v24 + 1) = 0x800000010034CBD0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001BLL;
  v29 = 0x800000010034CBD0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CBD0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E7D9C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CCB0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010034CCB0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CCB0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CCB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30A0, &qword_1002C70E8);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CCB0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CCB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CCB0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30A0, &qword_1002C70E8);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CCB0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001ALL;
  v29 = 0x800000010034CCB0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CCB0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E8400(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000016, 0x800000010034CF60);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000016;
    v10 = 0x800000010034CF60;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000016, 0x800000010034CF60);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000016, 0x800000010034CF60);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3100, &qword_1002C7148);
        *&v24 = 0xD000000000000016;
        *(&v24 + 1) = 0x800000010034CF60;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000016, 0x800000010034CF60);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000016, 0x800000010034CF60);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3100, &qword_1002C7148);
        *&v24 = 0xD000000000000016;
        *(&v24 + 1) = 0x800000010034CF60;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000016;
  v29 = 0x800000010034CF60;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000016, 0x800000010034CF60);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E8A64(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001ELL, 0x800000010034CE30);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001ELL;
    v10 = 0x800000010034CE30;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001ELL, 0x800000010034CE30);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001ELL, 0x800000010034CE30);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30C0, &qword_1002C7108);
        *&v24 = 0xD00000000000001ELL;
        *(&v24 + 1) = 0x800000010034CE30;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001ELL, 0x800000010034CE30);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001ELL, 0x800000010034CE30);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30C0, &qword_1002C7108);
        *&v24 = 0xD00000000000001ELL;
        *(&v24 + 1) = 0x800000010034CE30;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001ELL;
  v29 = 0x800000010034CE30;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001ELL, 0x800000010034CE30);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E90C8(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000012, 0x800000010034CD60);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000012;
    v10 = 0x800000010034CD60;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000012, 0x800000010034CD60);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000012, 0x800000010034CD60);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30B8, &qword_1002C7100);
        *&v24 = 0xD000000000000012;
        *(&v24 + 1) = 0x800000010034CD60;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000012, 0x800000010034CD60);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000012, 0x800000010034CD60);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30B8, &qword_1002C7100);
        *&v24 = 0xD000000000000012;
        *(&v24 + 1) = 0x800000010034CD60;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000012;
  v29 = 0x800000010034CD60;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000012, 0x800000010034CD60);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E972C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000019, 0x800000010034CD80);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000019;
    v10 = 0x800000010034CD80;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CD80);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CD80);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3098, &qword_1002C70E0);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CD80;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CD80);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CD80);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3098, &qword_1002C70E0);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CD80;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000019;
  v29 = 0x800000010034CD80;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000019, 0x800000010034CD80);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E9D90(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000015, 0x800000010034CD20);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000015;
    v10 = 0x800000010034CD20;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CD20);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CD20);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30F8, &qword_1002C7140);
        *&v24 = 0xD000000000000015;
        *(&v24 + 1) = 0x800000010034CD20;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CD20);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000015, 0x800000010034CD20);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30F8, &qword_1002C7140);
        *&v24 = 0xD000000000000015;
        *(&v24 + 1) = 0x800000010034CD20;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000015;
  v29 = 0x800000010034CD20;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000015, 0x800000010034CD20);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EA3F4(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000010, 0x800000010034CE90);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000010;
    v10 = 0x800000010034CE90;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CE90);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CE90);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30E8, &qword_1002C7130);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CE90;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CE90);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000010, 0x800000010034CE90);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30E8, &qword_1002C7130);
        *&v24 = 0xD000000000000010;
        *(&v24 + 1) = 0x800000010034CE90;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000010;
  v29 = 0x800000010034CE90;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000010, 0x800000010034CE90);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EAA58(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CEB0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001FLL;
    v10 = 0x800000010034CEB0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CEB0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CEB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30E0, &qword_1002C7128);
        *&v24 = 0xD00000000000001FLL;
        *(&v24 + 1) = 0x800000010034CEB0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CEB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001FLL, 0x800000010034CEB0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30E0, &qword_1002C7128);
        *&v24 = 0xD00000000000001FLL;
        *(&v24 + 1) = 0x800000010034CEB0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001FLL;
  v29 = 0x800000010034CEB0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CEB0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EB0BC(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CF40);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001CLL;
    v10 = 0x800000010034CF40;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CF40);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CF40);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30D8, &qword_1002C7120);
        *&v24 = 0xD00000000000001CLL;
        *(&v24 + 1) = 0x800000010034CF40;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CF40);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CF40);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30D8, &qword_1002C7120);
        *&v24 = 0xD00000000000001CLL;
        *(&v24 + 1) = 0x800000010034CF40;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000010034CF40;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CF40);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EB720(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000019, 0x800000010034CF20);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000019;
    v10 = 0x800000010034CF20;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CF20);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CF20);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30D0, &qword_1002C7118);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CF20;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CF20);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CF20);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30D0, &qword_1002C7118);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CF20;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000019;
  v29 = 0x800000010034CF20;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000019, 0x800000010034CF20);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EBD84(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CD40);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001CLL;
    v10 = 0x800000010034CD40;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CD40);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CD40);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3120, &qword_1002C7178);
        *&v24 = 0xD00000000000001CLL;
        *(&v24 + 1) = 0x800000010034CD40;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CD40);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001CLL, 0x800000010034CD40);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3120, &qword_1002C7178);
        *&v24 = 0xD00000000000001CLL;
        *(&v24 + 1) = 0x800000010034CD40;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000010034CD40;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CD40);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EC3E8(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000019, 0x800000010034CBB0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000019;
    v10 = 0x800000010034CBB0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CBB0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CBB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30C8, &qword_1002C7110);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CBB0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CBB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CBB0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A30C8, &qword_1002C7110);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CBB0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000019;
  v29 = 0x800000010034CBB0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000019, 0x800000010034CBB0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000ECA4C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CBF0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD00000000000001ALL;
    v10 = 0x800000010034CBF0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CBF0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CBF0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3140, &qword_1002C7198);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CBF0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CBF0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD00000000000001ALL, 0x800000010034CBF0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3140, &qword_1002C7198);
        *&v24 = 0xD00000000000001ALL;
        *(&v24 + 1) = 0x800000010034CBF0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD00000000000001ALL;
  v29 = 0x800000010034CBF0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CBF0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}