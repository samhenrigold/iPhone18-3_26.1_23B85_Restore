uint64_t sub_100100874(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedHardwareManager];
  v7 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v3)
  {

    v8 = 0;
  }

  else
  {
    v9 = v7;

    sub_10000BE18((a2 + 528), *(a2 + 552));
    v10 = v9;
    sub_100095A94(v10, a3 & 1);

    v13[4] = sub_10010051C;
    v13[5] = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100003974;
    v13[3] = &unk_100383FD8;
    v11 = _Block_copy(v13);
    [v10 endSessionWithCompletion:v11];
    _Block_release(v11);

    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100100ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v17 = a6;
  v9 = [objc_opt_self() sharedHardwareManager];
  v10 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v7)
  {

    v11 = 0;
  }

  else
  {
    v12 = v10;

    v13 = v12;
    v17();

    v16[4] = sub_10010051C;
    v16[5] = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100003974;
    v16[3] = a7;
    v14 = _Block_copy(v16);
    [v13 endSessionWithCompletion:v14];
    _Block_release(v14);

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_100100CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100100D2C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3510);
  sub_10000403C(v0, qword_1003A3510);
  sub_100023B24();
  return static SPRLogger.reader.getter();
}

id sub_100100D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10039D608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A3510);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = SPRReadEvent.description.getter();
    v12 = sub_100008F6C(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = SPRReaderMode.description.getter();
    v15 = sub_100008F6C(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "onUpdate(event: .%s, mode: .%s)", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = *(v3 + 16);
  if (result)
  {

    return [result onUpdateWithEvent:a1 mode:a2];
  }

  return result;
}

uint64_t sub_100100FC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_10039D608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A3510);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100008F6C(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A35E8, &qword_1002C7730);
    v13 = String.init<A>(describing:)();
    v15 = sub_100008F6C(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "onFailure(error: %s, mode: %s)", v9, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v4 + 24))(0, a1);
}

uint64_t sub_10010123C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001012A0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A35F0);
  sub_10000403C(v0, qword_1003A35F0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

uint64_t sub_10010130C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A3608);
  v1 = sub_10000403C(v0, qword_1003A3608);
  if (qword_10039D730 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1001013D4()
{
  v1 = v0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A35F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v21);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if ([*(v0 + 104) operationCount] >= 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "reader deinit and readCard in progress, client must have crashed", v14, 2u);
    }

    sub_10000CCE4(v1 + 320, v21);
    v15 = sub_10000BE18(v21, v21[3]);
    type metadata accessor for ReadError(0);
    v20[3] = v16;
    v20[0] = sub_1000207FC(4013, 0, 0, 0);
    v19 = *v15;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v20, 1, 0, 0, 0.0);
    sub_10000959C(v20);
    sub_10000959C(v21);
    v17 = *(v1 + 312);
    *(v17 + 152) = 4013;
    *(v17 + 121) = 0;
    *(v17 + 127) = 1;
    sub_10011BBA0(&off_10037E7A8);
    sub_100027F94(&off_10037E7D0);
    [*(v1 + 104) cancelAllOperations];
  }

  sub_10000959C((v1 + 16));
  sub_10000959C((v1 + 56));

  sub_10000959C((v1 + 112));
  sub_10000959C((v1 + 152));
  sub_10000959C((v1 + 192));
  sub_10000959C((v1 + 232));
  sub_10000959C((v1 + 272));

  sub_10000959C((v1 + 320));
  sub_10000959C((v1 + 360));
  sub_10000959C((v1 + 400));
  sub_10000959C((v1 + 448));

  return v1;
}

uint64_t sub_100101770()
{
  sub_1001013D4();

  return swift_deallocClassInstance();
}

void sub_1001017C8(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A35F0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = a1;
    v13 = v12;
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034E8A0, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, &v30);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();

    v3 = v2;
    a1 = v29;
  }

  v20 = [*(*sub_10000BE18(v4 + 56 v4[59]) + 16)];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    type metadata accessor for ReaderConfiguration(0);
    swift_allocObject();
    sub_100117D74(a1, v22, v24);
    if (!v3)
    {
      v4[61] = v25;

      v26 = v4[61];
      if (v26)
      {
        sub_100065074(v26 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, v8, &qword_1003A0178, &unk_1002C3BB0);
      }

      else
      {
        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
      }

      sub_10010FBFC(v8);
      sub_10000BD44(v8, &qword_1003A0178, &unk_1002C3BB0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100101B30(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v240 = a4;
  v241 = a3;
  v238 = a1;
  v7 = type metadata accessor for OSSignpostError();
  v227 = *(v7 - 8);
  v228 = v7;
  __chkstk_darwin(v7);
  v226 = v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for OSSignpostID();
  v9 = *(v235 - 1);
  v10 = __chkstk_darwin(v235);
  v232 = v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v230 = v223 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v223 - v15;
  __chkstk_darwin(v14);
  v18 = v223 - v17;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000403C(v19, qword_1003A35F0);
  swift_unknownObjectRetain();
  v239 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v23 = os_log_type_enabled(v21, v22);
  v237 = v9;
  v233 = v18;
  v234 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *&v245 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, &v245);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1002C1670;
    v29 = v5;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 32) = 3026478;
    *(v28 + 40) = 0xE300000000000000;
    v254[0] = a2;
    swift_unknownObjectRetain();
    sub_100004074(&qword_1003A37F8, &unk_1002C7850);
    v30 = String.init<A>(describing:)();
    *(v28 + 88) = &type metadata for String;
    *(v28 + 64) = v30;
    *(v28 + 72) = v31;
    v32 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034E830, v28);
    v34 = v33;

    v35 = sub_100008F6C(v32, v34, &v245);
    v5 = v29;

    *(v24 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v36 = swift_allocObject();
  v243 = v36;
  *(v36 + 16) = 0;
  v231 = (v36 + 16);
  v37 = swift_allocObject();
  v242 = v37;
  *(v37 + 16) = 0;
  v236 = v37 + 16;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v229 = (v38 + 16);
  sub_10000CCE4(v5 + 320, v254);
  sub_10000CCE4(v5 + 272, v253);
  v244 = *(v5 + 312);
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v39 = static Terminator.shared;
  swift_allocObject();
  v40 = swift_weakInit();
  v41 = v5;
  v42 = *(v39 + 24);
  __chkstk_darwin(v40);

  os_unfair_lock_lock((v42 + 32));
  sub_100064AFC((v42 + 16), &v245);
  os_unfair_lock_unlock((v42 + 32));

  v43 = v245;

  v44 = swift_allocObject();
  swift_weakInit();
  sub_10000CCE4(v253, &v245);
  v45 = swift_allocObject();
  v46 = v241;
  v47 = v242;
  v45[2] = v43;
  v45[3] = v46;
  v45[4] = v240;
  v45[5] = v44;
  v48 = v243;
  v45[6] = v244;
  v45[7] = v48;
  v45[8] = v38;
  v45[9] = v47;
  sub_100029790(&v245, (v45 + 10));
  v45[15] = a2;
  type metadata accessor for ReadDelegateRelay();
  v49 = swift_allocObject();
  v49[2] = a2;
  v49[3] = sub_10011766C;
  v241 = v49;
  v49[4] = v45;
  swift_unknownObjectRetain_n();

  v240 = v38;

  sub_1000278BC();
  sub_10002784C();
  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002C1660;
  *(v50 + 32) = 0;
  v51 = v41;
  v52 = [*(*sub_10000BE18((v41 + 448) *(v41 + 472)) + 24)];
  if (!v52)
  {
    __break(1u);
  }

  v53 = v52;
  v54 = [v52 unsignedShortValue];

  *(v50 + 64) = &type metadata for UInt16;
  *(v50 + 40) = v54;
  sub_10018399C(v50);
  swift_setDeallocating();
  sub_10000BD44(v50 + 32, &qword_10039EC60, &qword_1002C1F80);
  v55 = swift_deallocClassInstance();
  v56 = v244;
  v57 = v244[7];
  __chkstk_darwin(v55);
  os_unfair_lock_lock(v57 + 8);
  sub_100117CD8(&v57[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v57 + 8);

  if (MKBGetDeviceLockState() - 1 < 2)
  {
    v58 = 4056;
LABEL_25:
    v73 = 0;
    v74 = 0;
LABEL_26:
    v75 = sub_1000207FC(v58, v73, v74, 0);
    *&v245 = v75;
    type metadata accessor for ReadError(0);
    sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
    v56[19] = _BridgedStoredNSError.errorCode.getter();
    v76 = v75;
    sub_100100FC0(v76, 0, 1);

LABEL_27:
    sub_10000959C(v253);
LABEL_28:
    sub_10000959C(v254);
  }

  v59 = objc_opt_self();
  v60 = [v59 sharedHardwareManager];
  v61 = [v60 getHwSupport];

  if (v61 != 2)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "NFC not available", v66, 2u);
    }

    v58 = 4057;
    goto LABEL_25;
  }

  v62 = [v59 sharedHardwareManager];
  *&v245 = 0;
  v63 = [v62 getRadioEnabledState:&v245];

  if (v63)
  {

LABEL_22:
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "NFC radio disabled", v72, 2u);
    }

    v58 = 4025;
    goto LABEL_25;
  }

  if (v245 != 1)
  {
    goto LABEL_22;
  }

  sub_10000BE18((v51 + 448), *(v51 + 472));
  if ((sub_1001392D0() & 1) == 0)
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Incorrect JCOP version", v69, 2u);
    }

    if (*(v51 + 440) == 1)
    {
      v58 = 4043;
      goto LABEL_25;
    }
  }

  v78 = v238;
  if (v238)
  {
    v79 = *(*sub_10000BE18((v51 + 448), *(v51 + 472)) + 16);
    v80 = v78;
    v81 = [v79 serialNumber];
    if (!v81)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v82 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    type metadata accessor for ReaderConfiguration(0);
    swift_allocObject();
    v86 = v80;
    sub_100117D74(v86, v83, v85);
    v93 = v92;

    v94 = v236;
    swift_beginAccess();
    *v94 = v93;
    v238 = v93;

    v95 = v51;
  }

  else
  {
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "SPRReadParameters nil, use ReaderConfiguration from Reader instance", v89, 2u);
    }

    v95 = v51;
    v90 = *(v51 + 488);
    v91 = v236;
    swift_beginAccess();
    *v91 = v90;
    swift_retain_n();

    v238 = v90;
    if (!v90)
    {
      v73 = 0xD00000000000001BLL;
      v74 = 0x800000010034E750;
      v58 = 4000;
      goto LABEL_26;
    }
  }

  *(v95 + 488) = 0;

  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for OSSignposter();
  v97 = sub_10000403C(v96, qword_1003A3608);
  v98 = v233;
  static OSSignpostID.exclusive.getter();
  v225 = v97;
  v99 = OSSignposter.logHandle.getter();
  v100 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v99, v100, v102, "reader-session_start", "begin PreReadVerification and setup", v101, 2u);
  }

  v103 = v237;
  v104 = (v237 + 2);
  v105 = v235;
  v224 = v237[2];
  v224(v234, v98, v235);
  v106 = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v236 = OSSignpostIntervalState.init(id:isOpen:)();
  v107 = v103[1];
  v107(v98, v105);
  v108 = v238;
  sub_10010FBFC(&v238[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID]);
  v223[1] = v106;
  v233 = v104;
  v237 = v103 + 1;
  sub_100110000(v108);

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();

  v111 = os_log_type_enabled(v109, v110);
  v223[0] = v107;
  if (v111)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v245 = v113;
    *v112 = 136315138;

    v114 = sub_100119CAC();
    v116 = v115;

    v117 = sub_100008F6C(v114, v116, &v245);
    v108 = v238;

    *(v112 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v109, v110, "ReaderConfiguration: %s", v112, 0xCu);
    sub_10000959C(v113);
  }

  sub_100110E58(v108);
  sub_10000BE18(v254, v255);
  sub_10017A138(1);
  sub_10000BD44(&v245, &qword_10039E248, &qword_1002C23D0);
  sub_10000BE18(v254, v255);
  sub_10017A138(0);
  v118 = v247;
  sub_10000BD44(&v245, &qword_10039E248, &qword_1002C23D0);
  v119 = v244;
  if (v118)
  {
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "PAN from previous transaction not cleared yet", v122, 2u);
      v119 = v244;
    }

    v123 = v229;
    swift_beginAccess();
    *v123 = 1;
  }

  v124 = sub_100114908();
  v125 = v231;
  swift_beginAccess();
  v126 = *v125;
  *v125 = v124;

  if (!v124)
  {
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v134, v135, "startReaderSession failed", v136, 2u);
    }

    v137 = sub_1000207FC(4040, 0, 0, 0);
    *&v245 = v137;
    type metadata accessor for ReadError(0);
    sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);
    v119[19] = _BridgedStoredNSError.errorCode.getter();
    v138 = v137;
    sub_100100FC0(v138, 0, 1);

    sub_10000959C(v253);
    goto LABEL_28;
  }

  v231 = v124;
  v127 = OSSignposter.logHandle.getter();
  v128 = v230;
  OSSignpostIntervalState.signpostID.getter();
  v129 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v130 = v226;
    checkForErrorAndConsumeState(state:)();

    v132 = v227;
    v131 = v228;
    if ((*(v227 + 88))(v130, v228) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v133 = "[Error] Interval already ended";
    }

    else
    {
      (*(v132 + 8))(v130, v131);
      v133 = "end PreReadVerification and setup";
    }

    v139 = swift_slowAlloc();
    *v139 = 0;
    v140 = v230;
    v141 = OSSignpostID.rawValue.getter();
    v142 = v133;
    v128 = v140;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, v129, v141, "reader-session_start", v142, v139, 2u);
  }

  (v223[0])(v128, v235);
  v143 = v232;
  static OSSignpostID.exclusive.getter();
  v144 = OSSignposter.logHandle.getter();
  v145 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    v147 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v144, v145, v147, "reader-total_transaction", "begin total transaction", v146, 2u);
    v143 = v232;
  }

  v148 = v143;
  v149 = v143;
  v150 = v235;
  v224(v234, v148, v235);
  swift_allocObject();
  v234 = OSSignpostIntervalState.init(id:isOpen:)();
  (v223[0])(v149, v150);
  v151 = v231;
  sub_100186948("reader-preprocessing", 20, 2, v151, 0xD000000000000013, 0x800000010034E7B0);

  v152 = v244;
  v153 = v244[7];
  os_unfair_lock_lock(v153 + 8);
  sub_10011C8AC(&v153[4], 3);
  os_unfair_lock_unlock(v153 + 8);
  sub_10000CCE4(v253, &v245);
  v154 = *(v51 + 104);
  sub_10000CCE4(v254, v252);
  sub_10000CCE4(v51 + 448, v251);
  sub_10000CCE4(v51 + 192, v250);
  v155 = objc_allocWithZone(type metadata accessor for ReadOperation());

  v156 = v238;

  v157 = v151;
  v158 = v241;

  v159 = v154;
  v160 = v152;
  sub_10012540C(v157, v156, v158, &v245, v152, v159, v252, v251, v250);
  v237 = v161;
  v162 = v229;
  swift_beginAccess();
  *v162 = 0;
  v80 = *(v156 + 16);
  v235 = v159;
  if (&v80[-1].isa + 6 < 2)
  {
    v163 = swift_allocObject();
    swift_weakInit();
    v164 = swift_allocObject();
    v165 = v237;
    v164[2] = v163;
    v164[3] = v165;
    v164[4] = v156;
    v164[5] = v158;
    v164[6] = v234;
    v164[7] = v157;
    v166 = v240;
    v164[8] = v152;
    v164[9] = v166;
    v248 = sub_10011771C;
    v249 = v164;
    *&v245 = _NSConcreteStackBlock;
    *(&v245 + 1) = 1107296256;
    v246 = sub_100003974;
    v247 = &unk_1003841D8;
    v167 = _Block_copy(&v245);
    v233 = objc_opt_self();

    v244 = v157;
    v168 = v157;

    v169 = v165;

    v170 = [v233 blockOperationWithBlock:v167];
    _Block_release(v167);

    v171 = *(v156 + 16);
    v172 = v169;
    if (v171 == 2)
    {
      v173 = String._bridgeToObjectiveC()();
      v174 = &selRef_currencyCode;
      [v172 setName:v173];

      v80 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v175))
      {
        v239 = v170;
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        *&v245 = v177;
        *v176 = 136315138;
        v178 = [v172 name];

        if (v178)
        {
          goto LABEL_68;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v188 = String._bridgeToObjectiveC()();
      v174 = &selRef_currencyCode;
      [v172 setName:v188];

      v80 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v175))
      {
        v239 = v170;
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        *&v245 = v177;
        *v176 = 136315138;
        v178 = [v172 name];

        if (v178)
        {
LABEL_68:
          v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v191 = v190;

          v192 = sub_100008F6C(v189, v191, &v245);

          *(v176 + 4) = v192;
          _os_log_impl(&_mh_execute_header, v80, v175, "%s", v176, 0xCu);
          sub_10000959C(v177);

          v157 = v244;
          v170 = v239;
          v174 = &selRef_currencyCode;
LABEL_77:
          v212 = v170;
          v213 = String._bridgeToObjectiveC()();
          [v212 v174[20]];
          goto LABEL_80;
        }

        goto LABEL_85;
      }
    }

    v157 = v244;
    goto LABEL_77;
  }

  if (!v80)
  {
    v179 = v237;
    v180 = String._bridgeToObjectiveC()();
    [v179 setName:v180];

    v80 = Logger.logObject.getter();
    v181 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v181))
    {
      v182 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      *&v245 = v239;
      *v182 = 136315138;
      v183 = [v179 name];

      if (!v183)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;

      v187 = sub_100008F6C(v184, v186, &v245);

      *(v182 + 4) = v187;
      _os_log_impl(&_mh_execute_header, v80, v181, "%s", v182, 0xCu);
      sub_10000959C(v239);

      v160 = v244;
    }

    else
    {
    }

    v203 = swift_allocObject();
    swift_weakInit();
    v204 = swift_allocObject();
    v204[2] = v203;
    v204[3] = v157;
    v204[4] = v234;
    v204[5] = v179;
    v205 = v240;
    v206 = v241;
    v204[6] = v160;
    v204[7] = v206;
    v204[8] = v238;
    v204[9] = v205;
    v248 = sub_10011780C;
    v249 = v204;
    *&v245 = _NSConcreteStackBlock;
    *(&v245 + 1) = 1107296256;
    v246 = sub_100003974;
    v247 = &unk_100384278;
    v207 = _Block_copy(&v245);
    v208 = objc_opt_self();

    v209 = v157;

    v210 = v179;

    v211 = [v208 blockOperationWithBlock:v207];
    _Block_release(v207);

    v212 = v211;
    v213 = String._bridgeToObjectiveC()();
    [v212 setName:{v213, v223[0]}];
LABEL_80:

    v220 = v237;
    [v212 addDependency:v220];
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    v221 = swift_allocObject();
    *(v221 + 16) = xmmword_1002C17A0;
    *(v221 + 32) = v220;
    *(v221 + 40) = v212;
    sub_10000411C(0, &qword_10039E3C8, NSOperation_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v235 addOperations:isa waitUntilFinished:0];

    goto LABEL_27;
  }

  if (v80 == 1)
  {
    v193 = v237;
    v194 = String._bridgeToObjectiveC()();
    v195 = &selRef_currencyCode;
    [v193 setName:v194];

    v80 = Logger.logObject.getter();
    v196 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v196))
    {
      v197 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      *&v245 = v239;
      *v197 = 136315138;
      v198 = [v193 name];

      if (!v198)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v201 = v200;

      v202 = sub_100008F6C(v199, v201, &v245);

      *(v197 + 4) = v202;
      _os_log_impl(&_mh_execute_header, v80, v196, "%s", v197, 0xCu);
      sub_10000959C(v239);

      v160 = v244;
      v195 = &selRef_currencyCode;
    }

    else
    {
    }

    v214 = swift_allocObject();
    swift_weakInit();
    v215 = swift_allocObject();
    v215[2] = v214;
    v215[3] = v193;
    v215[4] = v234;
    v215[5] = v160;
    v215[6] = v241;
    v248 = sub_10011778C;
    v249 = v215;
    *&v245 = _NSConcreteStackBlock;
    *(&v245 + 1) = 1107296256;
    v246 = sub_100003974;
    v247 = &unk_100384228;
    v216 = _Block_copy(&v245);
    v217 = objc_opt_self();

    v218 = v193;

    v219 = [v217 blockOperationWithBlock:v216];
    _Block_release(v216);

    v212 = v219;
    v213 = String._bridgeToObjectiveC()();
    [v212 v195[20]];
    goto LABEL_80;
  }

LABEL_87:
  type metadata accessor for SPRReaderMode(0);
  *&v245 = v80;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100104028(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001077C0();
  }

  return result;
}

void sub_100104080(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v18 = *(static Terminator.shared + 24);
  os_unfair_lock_lock(v18 + 8);
  sub_100189B50(&v18[4], a3);
  os_unfair_lock_unlock(v18 + 8);
  a4(a1, a2);
  if (!a1 && a2)
  {
    aBlock[0] = a2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for ReadError(0);
    if (swift_dynamicCast())
    {
      v19 = *&v58[0];
    }

    else
    {
      v19 = sub_1000207FC(4998, 0, 0, 0);
    }

    aBlock[0] = v19;
    *&v58[0] = sub_1000207FC(4013, 0, 0, 0);
    sub_1001178A0(&qword_10039D930, type metadata accessor for ReadError, &unk_1002BEC4C);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_10000CCE4(Strong + 232, aBlock);

        v22 = *sub_10000BE18(aBlock, v55);
        v23 = v19;
        sub_10013FD04(v23, v22);

        sub_10000959C(aBlock);
      }
    }

    sub_100027534();
  }

  swift_beginAccess();
  v24 = *(a8 + 16);
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = v24;
  if ([v25 didEnd])
  {

LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A35F0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "validation error, no session to end or clear PAN", v29, 2u);
    }

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      sub_10000CCE4(v30 + 16, aBlock);

      v31 = v55;
      v32 = v56;
      sub_10000BE18(aBlock, v55);
      (*(*(v32 + 1) + 16))(sub_100117CD4, 0, v31);
      sub_10000959C(aBlock);
    }

    return;
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v33 = a11;
  v34 = type metadata accessor for Logger();
  sub_10000403C(v34, qword_1003A35F0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "completion block after readCard", v37, 2u);
  }

  swift_beginAccess();
  if (*(a9 + 16) == 1)
  {
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1660;
    if (qword_10039D3D8 != -1)
    {
      swift_once();
    }

    v39 = *(&xmmword_1003A6AC0 + 1);
    *(v38 + 32) = xmmword_1003A6AC0;
    *(v38 + 40) = v39;

    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[0] = 0;
    v41 = [v25 selectApplets:isa error:aBlock];

    if (v41)
    {
      v42 = aBlock[0];
      sub_100003AD4();
    }

    else
    {
      v43 = aBlock[0];
      v44 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        buf = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *buf = 136315138;
        *&v58[0] = v44;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v47 = String.init<A>(describing:)();
        v49 = sub_100008F6C(v47, v48, aBlock);

        *(buf + 4) = v49;
        v33 = a11;
        _os_log_impl(&_mh_execute_header, v45, v46, "failed to clear PAN in NVM %s", buf, 0xCu);
        sub_10000959C(v53);
      }

      else
      {
      }
    }
  }

  sub_10000CCE4(v33, v58);
  v50 = swift_allocObject();
  v50[2] = a10;
  sub_100029790(v58, (v50 + 3));
  v50[8] = a12;
  v50[9] = a6;
  v56 = sub_100117890;
  v57 = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  v55 = &unk_1003842C8;
  v51 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v25 endSessionWithCompletion:v51];
  _Block_release(v51);
}

uint64_t sub_100104830(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v40 = sub_10000403C(v12, qword_1003A35F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "NF SE Reader Session ended in completion block of ReadDelegateRelay", v15, 2u);
  }

  swift_beginAccess();
  v16 = *(a1 + 16);
  if (v16)
  {
    v38 = a3;
    v39 = a4;
    v17 = a2[3];
    v18 = a2[4];
    v37 = sub_10000BE18(a2, v17);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    (*(v9 + 16))(v11, v16 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v8);

    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    v23 = sub_100183EFC(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
    (*(v18 + 8))(13, 2, v23, v17, v18);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v26 = 136315138;
      v28 = SPRReaderMode.description.getter();
      v30 = sub_100008F6C(v28, v29, v41);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "onUpdate(event: .closed, mode: .%s)", v26, 0xCu);
      sub_10000959C(v27);
    }

    if (v38)
    {
      [v38 onUpdateWithEvent:3 mode:*(v16 + 16)];
    }
  }

  else
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "readerConfig was nil in callback completion", v33, 2u);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000CCE4(result + 16, v41);

    v35 = v42;
    v36 = v43;
    sub_10000BE18(v41, v42);
    (*(*(v36 + 8) + 16))(sub_100117CD4, 0, v35);
    return sub_10000959C(v41);
  }

  return result;
}

void sub_100104D18(uint64_t a1)
{
  if (a1)
  {
    v22 = a1;
    swift_errorRetain();
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      v1 = v20;
      v2 = v21;
      if (qword_10039D610 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000403C(v3, qword_1003A35F0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = sub_1000A7598(v1, v2);
      v10 = sub_100008F6C(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send MPOC logs after readCard: %s", v6, 0xCu);
      sub_10000959C(v7);

LABEL_18:

LABEL_19:

      return;
    }

    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000403C(v14, qword_1003A35F0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v4, v15, "Failed to send MPOC logs after readCard with an unexpected error %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);

      goto LABEL_18;
    }
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A35F0);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "MPOC logs sent after readCard", v13, 2u);
    }
  }
}

void sub_1001050C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v70 = a7;
  v72 = a2;
  v73 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v71 = a8;
    v21 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    v22 = *(a4 + v21);
    if (*(v22 + 16))
    {
      v69 = a5;

      v23 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
      if (v24)
      {
        sub_10000BDA4(*(v22 + 56) + 32 * v23, v75);

        type metadata accessor for SPRPayAppletStatus(0);
        if (swift_dynamicCast())
        {
          v68 = a6;
          v25 = v74[0];
          if (qword_10039D610 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          v67 = sub_10000403C(v26, qword_1003A35F0);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v65 = v25 == 6;
            v29 = swift_slowAlloc();
            v66 = v25;
            *v29 = 67109120;
            *(v29 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v27, v28, "payReadComplete: %{BOOL}d", v29, 8u);
            v25 = v66;
          }

          *(*(v20 + 312) + 121) = v25 == 6;
          if (qword_10039D728 != -1)
          {
            swift_once();
          }

          if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
          {
            sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
            v30 = *(a4 + v21);
            v31 = *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
            v32 = *(v13 + 16);
            v32(v18, *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v12);
            v32(v16, v18, v12);

            v57 = sub_10009CCE4(_swiftEmptyArrayStorage, v30, v31, v16);
            (*(v13 + 8))(v18, v12);
            v58 = v57;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v61 = 138412290;
              *(v61 + 4) = v58;
              *v62 = v58;
              v63 = v58;
              _os_log_impl(&_mh_execute_header, v59, v60, "SPRTransactionData: %@", v61, 0xCu);
              sub_10000BD44(v62, &unk_10039E220, &qword_1002C3D60);
            }

            sub_100027F94(&off_10037E898);
            sub_100111480(v68, v58, *(v70 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v70 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));

            sub_1001074E0(v72, v73, v20, &off_10037E870, &off_10037E848);

            return;
          }

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          v55 = os_log_type_enabled(v53, v54);
          v42 = v71;
          if (v55)
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "no passcode after tap: attestationFailed", v56, 2u);
          }

          v45 = sub_1000207FC(4023, 0, 0, 0);
          swift_willThrow();
          v37 = &unk_10039D000;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v37 = &unk_10039D000;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_1003A35F0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v71;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "ReadOperation completed but payAppletFinalStatus not found in readResult", v43, 2u);
    }

    v44 = *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
    swift_willThrow();
    v45 = v44;
LABEL_24:
    sub_1001074E0(v72, v73, v20, &off_10037E870, &off_10037E848);
    if (v37[194] != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A35F0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Could not init SPRTransactionData or InternalTransactionData", v49, 2u);
    }

    swift_beginAccess();
    *(v42 + 16) = 1;
    v50 = *(v20 + 312);

    v51 = _convertErrorToNSError(_:)();
    v52 = [v51 code];

    *(v50 + 152) = v52;

    sub_100027F94(&off_10037E8C0);
    sub_100100FC0(v45, 0, 1);

    return;
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000403C(v33, qword_1003A35F0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "reader deinit during after-read operation", v36, 2u);
  }
}

void sub_100105994(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v72 = *(v9 - 8);
  __chkstk_darwin(v9);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostError();
  v79 = *(v11 - 8);
  v80 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v74 = v14;
    v75 = a3;
    v19 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
    if (a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
    {
      v20 = 1;
    }

    else
    {
      v20 = a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
    }

    v70 = v9;
    v78 = a5;
    v81 = Strong;
    v25 = *(Strong + 312);
    v76 = v20;
    *(v25 + 122) = v20;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_10000403C(v26, qword_1003A35F0);
    v28 = a2;
    v71 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v77 = a4;
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 67109632;
      *(v32 + 4) = v76;
      *(v32 + 8) = 1024;
      *(v32 + 10) = a2[v19];
      *(v32 + 14) = 1024;
      *(v32 + 16) = *(&v28->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK);

      _os_log_impl(&_mh_execute_header, v29, v30, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v32, 0x14u);
    }

    else
    {

      v29 = v28;
    }

    v33 = v74;

    if (qword_10039D618 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSSignposter();
    sub_10000403C(v34, qword_1003A3608);
    v35 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v36 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v38 = v79;
      v37 = v80;
      if ((*(v79 + 88))(v13, v80) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v38 + 8))(v13, v37);
        v39 = "end total transaction";
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v41, "reader-total_transaction", v39, v40, 2u);
    }

    (*(v15 + 8))(v17, v33);
    v42 = v81;
    sub_10011BBA0(&off_10037E910);
    sub_10011B164(&off_10037E8E8);
    if (*(&v28->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty) == 1)
    {
      v43 = sub_1000207FC(4027, 0, 0, 0);
      v44 = *(v42 + 312);
      v83 = v43;
      type metadata accessor for ReadError(0);
      sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

      *(v44 + 144) = _BridgedStoredNSError.errorCode.getter();

      sub_100027F94(&off_10037E938);
      v45 = v43;
      sub_100100FC0(v45, 0, 1);
    }

    else
    {
      if (v76)
      {
        sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
        v46 = *(&v28->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
        v47 = *(&v28->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        v48 = v73;
        (*(v72 + 16))(v73, *(&v28->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v70);

        v49 = v47;
        v50 = sub_10009E360(v46, v49, v48);

        v51 = v50;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          *(v54 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v52, v53, "SPRTransactionData: %@", v54, 0xCu);
          sub_10000BD44(v55, &unk_10039E220, &qword_1002C3D60);
        }

        sub_100027F94(&off_10037E988);
        (*(v78 + 24))(v51, 0);
      }

      else
      {
        v57 = v28;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v83 = v61;
          *v60 = 136315138;
          v82 = *(&v57->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          v62 = v82;
          type metadata accessor for ReadError(0);
          v63 = v62;
          v64 = String.init<A>(describing:)();
          v66 = sub_100008F6C(v64, v65, &v83);

          *(v60 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v58, v59, "readOp.readError: %s", v60, 0xCu);
          sub_10000959C(v61);
          v42 = v81;
        }

        v67 = *(v42 + 312);
        v68 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
        v83 = *(&v57->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        type metadata accessor for ReadError(0);
        sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError, &unk_1002BF1F0);

        *(v67 + 144) = _BridgedStoredNSError.errorCode.getter();

        sub_100027F94(&off_10037E960);
        v51 = *(&v57->isa + v68);
        sub_100100FC0(v51, 0, 1);
      }
    }
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A35F0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "reader deinit during after-read operation", v24, 2u);
    }
  }
}

void sub_10010632C(uint64_t a1, _BYTE *a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v146 = a3;
  v14 = type metadata accessor for OSSignpostError();
  v142 = *(v14 - 8);
  v143 = v14;
  v15 = __chkstk_darwin(v14);
  v132 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v139 = &v129 - v18;
  __chkstk_darwin(v17);
  v138 = &v129 - v19;
  v20 = type metadata accessor for OSSignpostID();
  v145 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v133 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v141 = &v129 - v24;
  __chkstk_darwin(v23);
  v140 = &v129 - v25;
  v26 = type metadata accessor for UUID();
  v147 = *(v26 - 8);
  v148 = v26;
  v27 = __chkstk_darwin(v26);
  v134 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v129 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v131 = v20;
    v144 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
    if (a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
    {
      v33 = 1;
    }

    else
    {
      v33 = a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
    }

    v135 = a8;
    v136 = a6;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    v39 = sub_10000403C(v38, qword_1003A35F0);
    v40 = a2;
    v149 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v137 = a7;
    if (v43)
    {
      v44 = a4;
      v45 = a5;
      v46 = v32;
      v47 = swift_slowAlloc();
      *v47 = 67109632;
      *(v47 + 4) = v33;
      *(v47 + 8) = 1024;
      *(v47 + 10) = a2[v144];
      *(v47 + 14) = 1024;
      *(v47 + 16) = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK);

      _os_log_impl(&_mh_execute_header, v41, v42, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v47, 0x14u);
      v32 = v46;
      a5 = v45;
      a4 = v44;
    }

    else
    {

      v41 = v40;
    }

    *(*(v32 + 312) + 122) = v33;
    if (v33)
    {
      v130 = v32;
      sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
      v48 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
      v49 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      (*(v147 + 16))(v30, *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v148);

      v50 = v49;
      v51 = sub_10009E360(v48, v50, v30);

      v52 = v51;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v52;
        v57 = v52;
        _os_log_impl(&_mh_execute_header, v53, v54, "SPRTransactionData: %@", v55, 0xCu);
        sub_10000BD44(v56, &unk_10039E220, &qword_1002C3D60);
      }

      v58 = v131;
      if (*(v146 + 16) == 2)
      {
        v32 = v130;
        if ((*(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming) & 1) == 0)
        {
          v59 = v52;
          (a4)[3](v52, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for OSSignposter();
          sub_10000403C(v60, qword_1003A3608);
          v61 = OSSignposter.logHandle.getter();
          v62 = v140;
          OSSignpostIntervalState.signpostID.getter();
          v63 = static os_signpost_type_t.end.getter();
          v64 = OS_os_log.signpostsEnabled.getter();
          v65 = v138;
          if (v64)
          {

            checkForErrorAndConsumeState(state:)();

            v67 = v142;
            v66 = v143;
            if ((*(v142 + 88))(v65, v143) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v68 = "[Error] Interval already ended";
            }

            else
            {
              (*(v67 + 8))(v65, v66);
              v68 = "end total transaction";
            }

            v113 = swift_slowAlloc();
            *v113 = 0;
            v114 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v63, v114, "reader-total_transaction", v68, v113, 2u);
          }

          (*(v145 + 8))(v62, v58);
          sub_10011BBA0(&off_10037EA28);
          v115 = &off_10037EA00;
LABEL_61:
          sub_10011B164(v115);

          return;
        }
      }

      else
      {
        v32 = v130;
        if (a2[v144] == 1)
        {
          v59 = v52;
          (a4)[3](v52, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for OSSignposter();
          sub_10000403C(v69, qword_1003A3608);
          v70 = OSSignposter.logHandle.getter();
          v71 = v141;
          OSSignpostIntervalState.signpostID.getter();
          v72 = static os_signpost_type_t.end.getter();
          v73 = OS_os_log.signpostsEnabled.getter();
          v74 = v139;
          if (v73)
          {

            checkForErrorAndConsumeState(state:)();

            v76 = v142;
            v75 = v143;
            if ((*(v142 + 88))(v74, v143) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v77 = "[Error] Interval already ended";
            }

            else
            {
              (*(v76 + 8))(v74, v75);
              v77 = "end total transaction";
            }

            v116 = swift_slowAlloc();
            *v116 = 0;
            v117 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, v72, v117, "reader-total_transaction", v77, v116, 2u);
          }

          (*(v145 + 8))(v71, v58);
          sub_10011BBA0(&off_10037EA78);
          v115 = &off_10037EA50;
          goto LABEL_61;
        }

        if (*(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK) == 1 && (*(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming) & 1) == 0)
        {
          v59 = v52;
          (a4)[3](v52, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v118 = type metadata accessor for OSSignposter();
          sub_10000403C(v118, qword_1003A3608);
          v119 = OSSignposter.logHandle.getter();
          v120 = v133;
          OSSignpostIntervalState.signpostID.getter();
          v121 = static os_signpost_type_t.end.getter();
          v122 = OS_os_log.signpostsEnabled.getter();
          v123 = v132;
          if (v122)
          {

            checkForErrorAndConsumeState(state:)();

            v125 = v142;
            v124 = v143;
            if ((*(v142 + 88))(v123, v143) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v126 = "[Error] Interval already ended";
            }

            else
            {
              (*(v125 + 8))(v123, v124);
              v126 = "end total transaction";
            }

            v127 = swift_slowAlloc();
            *v127 = 0;
            v128 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v119, v121, v128, "reader-total_transaction", v126, v127, 2u);
          }

          (*(v145 + 8))(v120, v58);
          sub_10011BBA0(&off_10037EAC8);
          v115 = &off_10037EAA0;
          goto LABEL_61;
        }
      }
    }

    if (qword_10039D728 != -1)
    {
      swift_once();
    }

    if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
    {
      v78 = a5;
      v79 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
      swift_beginAccess();
      v80 = *(&v40->isa + v79);
      if (*(v80 + 16))
      {

        v81 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
        if (v82)
        {
          sub_10000BDA4(*(v80 + 56) + 32 * v81, v151);

          type metadata accessor for SPRPayAppletStatus(0);
          if (swift_dynamicCast())
          {
            v83 = v150;
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 67109120;
              *(v86 + 4) = v83 == 6;
              _os_log_impl(&_mh_execute_header, v84, v85, "payReadComplete: %{BOOL}d", v86, 8u);
            }

            *(*(v32 + 312) + 121) = v83 == 6;
            sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
            v87 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
            v88 = *(&v40->isa + v79);
            v89 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
            v90 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID;
            v91 = v134;
            (*(v147 + 16))(v134, v90, v148);

            v92 = sub_10009CCE4(v87, v88, v89, v91);
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *v95 = 138412290;
              *(v95 + 4) = v92;
              *v96 = v92;
              v97 = v92;
              _os_log_impl(&_mh_execute_header, v93, v94, "SPRTransactionData: %@", v95, 0xCu);
              sub_10000BD44(v96, &unk_10039E220, &qword_1002C3D60);
            }

            sub_100027F94(&off_10037EAF0);
            sub_100111480(a4, v92, *(v146 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v146 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));

            sub_1001074E0(v136, v78, v32, &off_10037E9D8, &off_10037E9B0);

            return;
          }
        }

        else
        {
        }
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "ReadOperation completed but payAppletFinalStatus not found in readResult", v104, 2u);
      }

      v105 = *(&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      swift_willThrow();
      v101 = v105;
      a5 = v78;
    }

    else
    {
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "no passcode after tap: attestationFailed", v100, 2u);
      }

      v101 = sub_1000207FC(4023, 0, 0, 0);
      swift_willThrow();
    }

    v106 = v135;
    sub_1001074E0(v136, a5, v32, &off_10037E9D8, &off_10037E9B0);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Could not init SPRTransactionData or InternalTransactionData", v109, 2u);
    }

    swift_beginAccess();
    *(v106 + 16) = 1;
    v110 = *(v32 + 312);

    v111 = _convertErrorToNSError(_:)();
    v112 = [v111 code];

    *(v110 + 152) = v112;

    sub_100027F94(&off_10037EB18);
    sub_100100FC0(v101, 0, 1);
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000403C(v34, qword_1003A35F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "reader deinit during after-read operation", v37, 2u);
    }
  }
}

void sub_1001074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v20[1] = a3;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10000403C(v14, qword_1003A3608);
  sub_100186BE8("reader-postProcessing", 21, 2, a1, 0xD000000000000013, 0x800000010034E880);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v17 = "end total transaction";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v19, "reader-total_transaction", v17, v18, 2u);
  }

  (*(v11 + 8))(v13, v10);
  sub_10011BBA0(v21);
  sub_10011B164(v22);
}

void sub_1001077C0()
{
  v1 = v0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A35F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v24);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x65526C65636E6163, 0xEC00000029286461, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v24);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v1[13];
  v13 = [v12 operationCount];
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(oslog, v14);
  if (v13 < 1)
  {
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "No Reader Operation to cancel", v22, 2u);
    }
  }

  else
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Setting readCancelReason: ReadError(.cancelled)", v16, 2u);
    }

    sub_10000BE18(v1 + 40, v1[43]);
    type metadata accessor for ReadError(0);
    v24[3] = v17;
    v24[0] = sub_1000207FC(4013, 0, 0, 0);
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v24, 1, 0, 0, 0.0);
    sub_10000959C(v24);
    v18 = v1[39];
    *(v18 + 152) = 4013;
    *(v18 + 121) = 0;
    *(v18 + 127) = 1;
    sub_10011BBA0(&off_10037E7A8);
    sub_100027F94(&off_10037E7D0);
    [v12 cancelAllOperations];
    [v12 waitUntilAllOperationsAreFinished];
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "All Reader Operations cancelled", v21, 2u);
    }
  }
}

id sub_100107BFC(void *a1, void (*a2)(char *, uint64_t))
{
  v156 = a2;
  v154 = *v2;
  v155 = a1;
  v3 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v3 - 8);
  v139 = &v131 - v4;
  v149 = type metadata accessor for DateInterval();
  v145 = *(v149 - 8);
  v5 = __chkstk_darwin(v149);
  v144 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v143 = &v131 - v8;
  __chkstk_darwin(v7);
  v10 = &v131 - v9;
  v151 = type metadata accessor for Date();
  v11 = *(v151 - 8);
  v12 = __chkstk_darwin(v151);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v140 = &v131 - v16;
  v17 = __chkstk_darwin(v15);
  v138 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v142 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v131 - v22;
  __chkstk_darwin(v21);
  v150 = &v131 - v23;
  v24 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v24 - 8);
  v153 = &v131 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v141 = sub_10000403C(v30, qword_1003A35F0);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v147 = v10;
  v148 = v11;
  v137 = v14;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v152 = v27;
    v35 = v34;
    v169 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = _typeName(_:qualified:)();
    v38 = v29;
    v39 = v26;
    v40 = sub_100008F6C(v36, v37, &v169);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034E720, _swiftEmptyArrayStorage);
    v43 = sub_100008F6C(v41, v42, &v169);

    *(v35 + 14) = v43;
    v26 = v39;
    v29 = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s", v35, 0x16u);
    swift_arrayDestroy();

    v27 = v152;
  }

  v44 = v158;
  result = [*(*sub_10000BE18(v158 + 56 v158[59]) + 16)];
  if (!result)
  {
    goto LABEL_39;
  }

  v46 = result;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v156;

  v51 = v50;
  v52 = v157;
  result = sub_10008C068(v155, v51, v47, v49, v159);
  if (v52)
  {
    return result;
  }

  v53 = v153;
  sub_10008B618(v153);
  sub_10006413C(v159);
  if ((*(v27 + 48))(v53, 1, v26) == 1)
  {
    sub_10000BD44(v53, &qword_1003A0178, &unk_1002C3BB0);
    sub_1000207FC(4000, 0xD00000000000002DLL, 0x800000010034E660, 0);
    return swift_willThrow();
  }

  (*(v27 + 32))(v29, v53, v26);
  sub_10000BE18(v44 + 50, v44[53]);
  sub_10003D678(v29, &v160);
  if (!v167)
  {
    sub_100041D1C(&v160);
    v64 = 0xD000000000000024;
    v65 = 0x800000010034E690;
    v66 = 4000;
LABEL_16:
    sub_1000207FC(v66, v64, v65, 0);
    swift_willThrow();
    return (*(v27 + 8))(v29, v26);
  }

  v54 = v161;
  if (!v161)
  {
    sub_100041D1C(&v160);
    goto LABEL_15;
  }

  v55 = v165;
  v56 = v166;
  v157 = v29;
  v57 = v164;
  v58 = v163;
  v136 = v26;
  v59 = v162;
  v152 = v27;
  v60 = v160;

  sub_100041D1C(&v160);

  v61 = v60;
  v27 = v152;
  v62 = v59;
  v26 = v136;
  v63 = v57;
  v29 = v157;
  sub_10003F2A0(v61, v54, v62, v58, v63, v55, v56);
  if (!v56)
  {
LABEL_15:
    v64 = 0xD00000000000002ALL;
    v65 = 0x800000010034E6C0;
    v66 = 4062;
    goto LABEL_16;
  }

  sub_100176DD8(v55, v56, v168);
  v67 = v168[12];
  result = Date.init(timeIntervalSince1970:)();
  v68 = v158[12];
  if (v68 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v69 = v151;
  v70 = v148;
  v71 = v142;
  if (__CFADD__(v67, v68))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v72 = v146;
  Date.init(timeIntervalSince1970:)();
  v73 = *(v70 + 16);
  v73(v71, v150, v69);
  v153 = (v70 + 16);
  v135 = v73;
  v73(v138, v72, v69);
  v74 = v147;
  DateInterval.init(start:end:)();
  v75 = v145;
  v76 = *(v145 + 16);
  v77 = v149;
  v76(v143, v74, v149);
  v76(v144, v74, v77);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v169 = v138;
    *v80 = 136315906;
    v81 = _typeName(_:qualified:)();
    v154 = v78;
    v83 = sub_100008F6C(v81, v82, &v169);

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;
    v84 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034E720, _swiftEmptyArrayStorage);
    v86 = sub_100008F6C(v84, v85, &v169);

    v155 = v80;
    *(v80 + 14) = v86;
    *(v80 + 22) = 2080;
    v87 = v142;
    v88 = v143;
    DateInterval.start.getter();
    v133 = sub_1001178A0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v134 = v79;
    v89 = v151;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    v132 = *(v148 + 8);
    v132(v87, v89);
    v156 = *(v75 + 8);
    v156(v88, v149);
    v93 = sub_100008F6C(v90, v92, &v169);
    v27 = v152;

    v94 = v155;
    v155[3] = v93;
    *(v94 + 16) = 2080;
    v95 = v144;
    DateInterval.end.getter();
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    v132(v87, v151);
    v99 = v148;
    v156(v95, v149);
    v100 = sub_100008F6C(v96, v98, &v169);
    v26 = v136;

    v101 = v155;
    *(v155 + 34) = v100;
    v102 = v154;
    _os_log_impl(&_mh_execute_header, v154, v134, "%s.%s Attestation token validity period: %s...%s", v101, 0x2Au);
    swift_arrayDestroy();

    v103 = v139;
    v104 = v140;
  }

  else
  {

    v105 = *(v75 + 8);
    v105(v144, v77);
    v156 = v105;
    v105(v143, v77);
    v103 = v139;
    v104 = v140;
    v99 = v148;
  }

  sub_10000BE18(v158 + 24, v158[27]);
  sub_100043268(v103);
  v106 = v151;
  if ((*(v99 + 48))(v103, 1, v151) == 1)
  {
    sub_10000BD44(v103, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1000207FC(4999, 0xD000000000000028, 0x800000010034E6F0, 0);
    swift_willThrow();
    sub_10008C3EC(v168);
    v156(v147, v149);
    v107 = *(v99 + 8);
    v107(v146, v106);
    v107(v150, v106);
    return (*(v27 + 8))(v157, v26);
  }

  (*(v99 + 32))(v104, v103, v106);
  v108 = v147;
  if (DateInterval.contains(_:)())
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v110 = v109;
    Date.timeIntervalSinceReferenceDate.getter();
    v112 = v111;
    sub_10008C3EC(v168);
    v113 = *(v99 + 8);
    v113(v104, v106);
    v156(v108, v149);
    v113(v146, v106);
    v113(v150, v106);
    result = (*(v27 + 8))(v157, v26);
    v114 = v110 - v112;
    if (COERCE__INT64(fabs(v110 - v112)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v114 > -9.22337204e18)
      {
        if (v114 < 9.22337204e18)
        {
          return v114;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v115 = v137;
  v135(v137, v104, v106);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    LODWORD(v158) = v117;
    v119 = v106;
    v154 = v116;
    v120 = v118;
    v121 = v115;
    v122 = v119;
    v155 = swift_slowAlloc();
    v169 = v155;
    *v120 = 136315138;
    sub_1001178A0(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v126 = *(v148 + 8);
    v126(v121, v122);
    v127 = sub_100008F6C(v123, v125, &v169);

    v128 = v120;
    *(v120 + 4) = v127;
    v129 = v154;
    _os_log_impl(&_mh_execute_header, v154, v158, "Current date (%s) is outside of Attestation token validity period", v128, 0xCu);
    sub_10000959C(v155);

    sub_10008C3EC(v168);
    v126(v140, v122);
    v156(v147, v149);
    v126(v146, v122);
    v126(v150, v122);
    (*(v152 + 8))(v157, v136);
  }

  else
  {

    sub_10008C3EC(v168);
    v130 = *(v148 + 8);
    v130(v115, v106);
    v130(v104, v106);
    v156(v147, v149);
    v130(v146, v106);
    v130(v150, v106);
    (*(v27 + 8))(v157, v26);
  }

  return 0;
}

id sub_100108BF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void **a6, unint64_t a7)
{
  v118 = a7;
  v119 = a6;
  v107 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v108 = a1;
  v7 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v7 - 8);
  v113 = &v103 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v114 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16 - 8);
  v106 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v105 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000403C(v20, qword_1003A35F0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v116 = v9;
  v115 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v103 = v15;
    v131[0] = v25;
    *v24 = 136315394;
    v26 = _typeName(_:qualified:)();
    v104 = v13;
    v27 = v12;
    v29 = sub_100008F6C(v26, v28, v131);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034E610, _swiftEmptyArrayStorage);
    v32 = sub_100008F6C(v30, v31, v131);

    *(v24 + 14) = v32;
    v12 = v27;
    v13 = v104;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();
    v15 = v103;
  }

  v33 = HIBYTE(v118) & 0xF;
  if ((v118 & 0x2000000000000000) == 0)
  {
    v33 = v119 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    sub_1000207FC(4000, 0xD000000000000014, 0x800000010034E5F0, 0);
    swift_willThrow();
    return v22;
  }

  v34 = sub_10000BE18(v117 + 19, v117[22]);
  v103 = "config-prepare-renewCertificate";
  v35 = *v34;
  v36 = *(*v34 + 288);
  v104 = *(*v34 + 280);
  sub_10000CCE4((v35 + 2), v131);
  v37 = v35[10];
  v38 = v35[11];
  sub_10000BE18(v35 + 7, v37);

  sub_1000C289C(4u, v37, v38);
  sub_10000BE18(v35 + 12, v35[15]);
  sub_10014EDF0(&v124);
  v39 = v35[17];
  sub_10000CCE4((v35 + 25), &v121);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v13 + 13))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v41 = sub_100022438(&v121, v123);
  __chkstk_darwin(v41);
  v43 = (&v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = *v43;
  v46 = type metadata accessor for DefaultSecureTimeKeeper();
  v120[4] = &off_100384E70;
  v120[3] = v46;
  v120[0] = v45;
  type metadata accessor for AAASigner();
  v47 = swift_allocObject();
  v48 = sub_100022438(v120, v46);
  v49 = v118;
  __chkstk_darwin(v48);
  v51 = (&v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v51;

  v119 = sub_100112354(v104, v36, 0xCB, 0xD000000000000010, (v103 | 0x8000000000000000), 0, v119, v49, v131, &v126, &v124, v39, v53, v40, 0x278D00, v47);
  sub_10000959C(v120);
  sub_10000959C(&v121);
  v106 = sub_1001178A0(&qword_1003A01C0, type metadata accessor for AAASigner, &unk_1002C9A9C);
  v126 = UUID.uuid.getter();
  v127 = v54;
  v55 = sub_100146E20(&v126, v128);
  v57 = v56;
  v58 = v108;
  v59 = v109;
  v121 = v108;
  v122 = v109;
  v129 = &type metadata for Data;
  v130 = &protocol witness table for Data;
  v60 = v110;
  v61 = v111;
  v126 = v110;
  v127 = v111;
  v62 = sub_10000BE18(&v126, &type metadata for Data);
  v63 = *v62;
  v64 = v62[1];
  sub_1000094F4(v58, v59);
  sub_1000094F4(v60, v61);
  v65 = v112;
  sub_1000A1C34(v63, v64, &v121, v66);
  sub_10000959C(&v126);
  v67 = v121;
  v68 = v122;
  v124 = v121;
  v125 = v122;
  v129 = &type metadata for Data;
  v130 = &protocol witness table for Data;
  v69 = v55;
  v126 = v55;
  v127 = v57;
  v70 = sub_10000BE18(&v126, &type metadata for Data);
  v71 = *v70;
  v72 = v70[1];
  sub_1000094F4(v67, v68);
  v112 = v69;
  v118 = v57;
  sub_1000094F4(v69, v57);
  sub_1000A1C34(v71, v72, &v124, v73);
  v111 = v65;
  sub_100009548(v67, v68);
  sub_10000959C(&v126);
  v22 = v124;
  v74 = v125;
  v75 = v117;
  sub_10000CCE4((v117 + 50), &v126);
  sub_10000BE18(&v126, v129);
  v76 = v75[61];
  if (!v76)
  {
    v78 = v115;
    v77 = v113;
    v79 = v116;
    (*(v115 + 56))(v113, 1, 1, v116);
    v81 = v114;
LABEL_13:
    UUID.init(uuid:)();
    v83 = (*(v78 + 48))(v77, 1, v79);
    v82 = v106;
    if (v83 != 1)
    {
      sub_10000BD44(v77, &qword_1003A0178, &unk_1002C3BB0);
    }

    goto LABEL_15;
  }

  v77 = v113;
  sub_100065074(&v76[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID], v113, &qword_1003A0178, &unk_1002C3BB0);
  v78 = v115;
  v79 = v116;
  v80 = (*(v115 + 48))(v77, 1, v116);
  v81 = v114;
  if (v80 == 1)
  {
    goto LABEL_13;
  }

  (*(v78 + 32))(v114, v77, v79);
  v82 = v106;
LABEL_15:
  ObjectType = swift_getObjectType();
  v85 = sub_10003EFB8(v81);
  (*(v78 + 8))(v81, v79);
  sub_10000959C(&v126);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = &v103;
  v87 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v89 = &v103 - v88;
  v90 = v111;
  v91 = sub_100155D44(&v103 - v88, v22, v74, (v85 & 1) == 0, ObjectType, v82);
  if (v90)
  {
    sub_100009548(v112, v118);

    sub_100009548(v22, v74);
  }

  else
  {
    v116 = v91;
    v115 = v92;
    sub_100009548(v22, v74);
    v131[3] = AssociatedTypeWitness;
    v131[4] = swift_getAssociatedConformanceWitness();
    v93 = sub_10000BE5C(v131);
    (*(v87 + 32))(v93, v89, AssociatedTypeWitness);
    sub_10000CCE4(v131, &v126);
    sub_100004074(&qword_1003A37F0, &unk_1002C7830);
    type metadata accessor for AAASigningIdentity();
    swift_dynamicCast();
    v94 = *(v124 + 80);
    v95 = *(v124 + 88);
    sub_1000094F4(v94, v95);

    v96 = objc_allocWithZone(SPRTransactionSignature);
    v97 = v116;
    v98 = v115;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v100 = String._bridgeToObjectiveC()();
    v101 = Data._bridgeToObjectiveC()().super.isa;
    v22 = [v96 initWithSignature:isa algorithm:v100 keyId:v101];

    sub_100009548(v94, v95);
    sub_100009548(v97, v98);
    sub_100009548(v112, v118);

    sub_10000959C(v131);
  }

  return v22;
}

uint64_t sub_100109A08(unint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v176 = a3;
  v178 = a2;
  v177 = a1;
  v5 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v5 - 8);
  v164 = &v159 - v6;
  v167 = type metadata accessor for String.Encoding();
  v7 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v169 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v168 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v163 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v159 - v18;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v179 = sub_10000403C(v20, qword_1003A35F0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v175 = v14;
  v173 = v15;
  v166 = v7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, v191);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = showFunction(signature:_:)(0xD00000000000001ELL, 0x800000010034E520, _swiftEmptyArrayStorage);
    v30 = sub_100008F6C(v28, v29, v191);

    *(v24 + 14) = v30;
    v14 = v175;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();
    v15 = v173;
  }

  (*(v15 + 16))(v19, v177, v14);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v33 = 136315650;
    sub_1001178A0(&qword_10039FAD8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v14;
    v37 = v36;
    (*(v15 + 8))(v19, v35);
    v38 = sub_100008F6C(v34, v37, v191);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2048;
    v39 = v178;
    *(v33 + 14) = v178;
    *(v33 + 22) = 2080;
    v40 = v176;
    *(v33 + 24) = sub_100008F6C(v176, a4, v191);
    _os_log_impl(&_mh_execute_header, v31, v32, "BatchId: %s, count: %ld, vtid: %s", v33, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v15 + 8))(v19, v14);
    v39 = v178;
    v40 = v176;
  }

  v41 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41 || v39 < 1)
  {
    sub_1000207FC(4000, 0xD000000000000035, 0x800000010034E4E0, 0);
    swift_willThrow();
    return v39;
  }

  v42 = sub_10000BE18(v174 + 19, v174[22]);
  v160 = "config-prepare-renewCertificate";
  v43 = *v42;
  v44 = *(*v42 + 288);
  v161 = *(*v42 + 280);
  sub_10000CCE4((v43 + 2), v191);
  v45 = v43[10];
  v46 = v43[11];
  sub_10000BE18(v43 + 7, v45);

  sub_1000C289C(4u, v45, v46);
  sub_10000BE18(v43 + 12, v43[15]);
  sub_10014EDF0(&v184);
  v47 = v43[17];
  sub_10000CCE4((v43 + 25), &v181);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v171 + 104))(v170, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v172);
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v49 = sub_100022438(&v181, v183);
  __chkstk_darwin(v49);
  v51 = (&v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v51;
  v54 = type metadata accessor for DefaultSecureTimeKeeper();
  v180[4] = &off_100384E70;
  v180[3] = v54;
  v180[0] = v53;
  type metadata accessor for AAASigner();
  v55 = swift_allocObject();
  v56 = sub_100022438(v180, v54);
  __chkstk_darwin(v56);
  v58 = (&v159 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v58;

  v172 = sub_100112354(v161, v44, 0xCB, 0xD000000000000010, (v160 | 0x8000000000000000), 0, v176, a4, v191, &v186, &v184, v47, v60, v48, 0x278D00, v55);
  sub_10000959C(v180);
  sub_10000959C(&v181);
  v61 = sub_1001178A0(&qword_1003A01C0, type metadata accessor for AAASigner, &unk_1002C9A9C);
  v62 = UUID.uuid.getter();
  v63 = v178;
  v186 = v62;
  v187 = v64;
  v65 = sub_100146E20(&v186, v188);
  if (HIDWORD(v63))
  {
    __break(1u);
  }

  v67 = v65;
  v68 = v66;
  v170 = v61;
  LODWORD(v186) = bswap32(v63);
  v69 = sub_100146E20(&v186, &v186 + 4);
  v71 = v70;
  sub_1000094F4(v67, v68);
  sub_1000094F4(v69, v71);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  sub_100009548(v67, v68);
  sub_100009548(v69, v71);
  v74 = os_log_type_enabled(v72, v73);
  v178 = v67;
  v176 = v69;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v75 = 136315394;
    v76 = Data.hexString()();
    v77 = sub_100008F6C(v76._countAndFlagsBits, v76._object, &v186);

    *(v75 + 4) = v77;
    *(v75 + 12) = 2080;
    sub_1000094F4(v69, v71);
    v78 = Data.description.getter();
    v80 = v79;
    sub_100009548(v69, v71);
    v81 = sub_100008F6C(v78, v80, &v186);

    *(v75 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v72, v73, "batchIdData: %s, countData: %s", v75, 0x16u);
    swift_arrayDestroy();
  }

  v82 = v175;
  v83 = v167;
  v84 = v166;
  v85 = v165;
  v177 = v71;
  static String.Encoding.utf8.getter();
  v86 = String.data(using:allowLossyConversion:)();
  v88 = v87;
  result = (*(v84 + 8))(v85, v83);
  if (v88 >> 60 != 15)
  {
    v181 = v86;
    v182 = v88;
    v189 = &type metadata for Data;
    v190 = &protocol witness table for Data;
    v90 = v178;
    v186 = v178;
    v187 = v68;
    v91 = sub_10000BE18(&v186, &type metadata for Data);
    v92 = *v91;
    v93 = v91[1];
    sub_1000094F4(v90, v68);
    sub_10001A3E8(v86, v88);
    v94 = v162;
    sub_1000A1C34(v92, v93, &v181, v95);
    sub_10001A074(v86, v88);
    sub_10000959C(&v186);
    v96 = v181;
    v97 = v182;
    v184 = v181;
    v185 = v182;
    v189 = &type metadata for Data;
    v190 = &protocol witness table for Data;
    v98 = v176;
    v99 = v177;
    v186 = v176;
    v187 = v177;
    v100 = sub_10000BE18(&v186, &type metadata for Data);
    v101 = *v100;
    v102 = v100[1];
    sub_1000094F4(v98, v99);
    sub_1000094F4(v96, v97);
    sub_1000A1C34(v101, v102, &v184, v103);
    v168 = v94;
    sub_100009548(v96, v97);
    sub_10000959C(&v186);
    v104 = v184;
    v105 = v185;
    sub_1000094F4(v184, v185);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    sub_100009548(v104, v105);
    v108 = os_log_type_enabled(v106, v107);
    v175 = v104;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v186 = v110;
      *v109 = 136315138;
      v111 = Data.hexString()();
      v112 = sub_100008F6C(v111._countAndFlagsBits, v111._object, &v186);

      *(v109 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "payload: %s", v109, 0xCu);
      sub_10000959C(v110);
    }

    v113 = v164;
    v114 = v163;
    v115 = v174;
    sub_10000CCE4((v174 + 50), &v186);
    sub_10000BE18(&v186, v189);
    v116 = *(v115 + 488);
    v169 = v68;
    v171 = v105;
    if (v116)
    {
      sub_100065074(v116 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, v113, &qword_1003A0178, &unk_1002C3BB0);
      v117 = v173;
      if ((*(v173 + 48))(v113, 1, v82) != 1)
      {
        (*(v117 + 32))(v114, v113, v82);
LABEL_25:
        v118 = v172;
        ObjectType = swift_getObjectType();
        v120 = sub_10003EFB8(v114);
        (*(v117 + 8))(v114, v82);
        sub_10000959C(&v186);
        v121 = v170;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v174 = &v159;
        v123 = *(AssociatedTypeWitness - 8);
        __chkstk_darwin(AssociatedTypeWitness);
        v125 = &v159 - v124;
        v126 = (v120 & 1) == 0;
        v127 = v175;
        v128 = v171;
        v39 = v118;
        v129 = v168;
        v130 = sub_100155D44(&v159 - v124, v175, v171, v126, ObjectType, v121);
        v179 = v129;
        if (v129)
        {
          sub_100009548(v178, v169);
          sub_100009548(v176, v177);
          sub_100009548(v127, v128);
        }

        else
        {
          v191[3] = AssociatedTypeWitness;
          v132 = v130;
          v133 = v131;
          v191[4] = swift_getAssociatedConformanceWitness();
          v134 = sub_10000BE5C(v191);
          (*(v123 + 32))(v134, v125, AssociatedTypeWitness);
          sub_10000CCE4(v191, &v186);
          sub_100004074(&qword_1003A37F0, &unk_1002C7830);
          type metadata accessor for AAASigningIdentity();
          swift_dynamicCast();
          v135 = v184;
          v136 = *(v184 + 10);
          v137 = *(v184 + 11);
          v138 = objc_allocWithZone(SPRTransactionSignature);
          sub_1000094F4(v132, v133);
          sub_1000094F4(v136, v137);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v140 = String._bridgeToObjectiveC()();
          v141 = Data._bridgeToObjectiveC()().super.isa;
          v170 = [v138 initWithSignature:isa algorithm:v140 keyId:v141];

          sub_100009548(v136, v137);
          v174 = v132;
          v173 = v133;
          sub_100009548(v132, v133);
          v142 = *(v135 + 5);
          v143 = *(v142 + 16);
          if (v143)
          {
            v168 = v135;
            v186 = _swiftEmptyArrayStorage;

            sub_10004E2DC(0, v143, 0);
            v144 = v186;
            v145 = (v142 + 40);
            do
            {
              v146 = *(v145 - 1);
              v147 = *v145;
              sub_1000094F4(v146, *v145);
              v148 = Data.base64EncodedString(options:)(0);
              sub_100009548(v146, v147);
              v186 = v144;
              v150 = v144[2];
              v149 = v144[3];
              if (v150 >= v149 >> 1)
              {
                sub_10004E2DC((v149 > 1), v150 + 1, 1);
                v144 = v186;
              }

              v145 += 2;
              v144[2] = v150 + 1;
              *&v144[2 * v150 + 4] = v148;
              --v143;
            }

            while (v143);

            v151 = v177;
            v135 = v168;
          }

          else
          {
            v151 = v177;
          }

          v152 = *(v135 + 3);
          v153 = *(v135 + 4);
          sub_1000094F4(v152, v153);
          Data.base64EncodedString(options:)(0);
          sub_100009548(v152, v153);
          v154 = objc_allocWithZone(SPRTransactionBatchSignature);
          v155 = Array._bridgeToObjectiveC()().super.isa;

          v156 = String._bridgeToObjectiveC()();

          v157 = v154;
          v158 = v170;
          v39 = [v157 initWithSignature:v170 intermediates:v155 leaf:v156];

          sub_100009548(v174, v173);
          sub_100009548(v175, v171);
          sub_100009548(v176, v151);
          sub_100009548(v178, v169);
          sub_10000959C(v191);
        }

        return v39;
      }
    }

    else
    {
      v117 = v173;
      (*(v173 + 56))(v113, 1, 1, v82);
    }

    UUID.init(uuid:)();
    if ((*(v117 + 48))(v113, 1, v82) != 1)
    {
      sub_10000BD44(v113, &qword_1003A0178, &unk_1002C3BB0);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void (*sub_10010AF68(uint64_t a1))(char *, uint64_t)
{
  v3 = __chkstk_darwin(a1);
  v388 = v4;
  v389 = v2;
  v5 = v1;
  v392 = v6;
  v375 = v7;
  v387 = v3;
  v8 = type metadata accessor for BitString();
  __chkstk_darwin(v8 - 8);
  v359 = v342 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v364 = *(v10 - 8);
  *&v365 = v10;
  __chkstk_darwin(v10);
  v372 = v342 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v13 = __chkstk_darwin(v12 - 8);
  v363 = v342 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v368 = v342 - v16;
  v17 = __chkstk_darwin(v15);
  v367 = v342 - v18;
  v19 = __chkstk_darwin(v17);
  *&v366 = v342 - v20;
  v21 = __chkstk_darwin(v19);
  v371 = (v342 - v22);
  v23 = __chkstk_darwin(v21);
  v370 = v342 - v24;
  v25 = __chkstk_darwin(v23);
  v384 = v342 - v26;
  v27 = __chkstk_darwin(v25);
  v377 = v342 - v28;
  v29 = __chkstk_darwin(v27);
  v382 = v342 - v30;
  v31 = __chkstk_darwin(v29);
  v379 = v342 - v32;
  __chkstk_darwin(v31);
  v383 = v342 - v33;
  v34 = type metadata accessor for TLVTag();
  v35 = __chkstk_darwin(v34 - 8);
  v369 = (v342 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v374 = v342 - v38;
  __chkstk_darwin(v37);
  v385 = v342 - v39;
  v40 = type metadata accessor for TLV();
  v393 = *(v40 - 8);
  v41 = __chkstk_darwin(v40);
  v360 = v342 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v373 = v342 - v44;
  v45 = __chkstk_darwin(v43);
  v358 = v342 - v46;
  v47 = __chkstk_darwin(v45);
  v378 = v342 - v48;
  v49 = __chkstk_darwin(v47);
  v376 = v342 - v50;
  v51 = __chkstk_darwin(v49);
  v362 = v342 - v52;
  __chkstk_darwin(v51);
  v381 = v342 - v53;
  v391 = type metadata accessor for OSSignpostID();
  v54 = *(v391 - 8);
  v55 = __chkstk_darwin(v391);
  v57 = v342 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = v342 - v58;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v361 = sub_10000403C(v60, qword_1003A35F0);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v63 = os_log_type_enabled(v61, v62);
  v390 = v40;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v380 = v59;
    v65 = v64;
    v66 = swift_slowAlloc();
    v386 = v5;
    v403[0] = v66;
    *v65 = 136315394;
    v67 = _typeName(_:qualified:)();
    v69 = v54;
    v70 = sub_100008F6C(v67, v68, v403);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2080;
    v71 = showFunction(signature:_:)(0xD00000000000002ALL, 0x800000010034E1E0, _swiftEmptyArrayStorage);
    v73 = sub_100008F6C(v71, v72, v403);

    *(v65 + 14) = v73;
    v54 = v69;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s.%s", v65, 0x16u);
    swift_arrayDestroy();
    v5 = v386;

    v59 = v380;
  }

  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for OSSignposter();
  sub_10000403C(v74, qword_1003A3608);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v75 = v59;
  v76 = OSSignposter.logHandle.getter();
  v77 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    v79 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, v77, v79, "reader-getSecureBlob", "begin generateSecureReaderBlob", v78, 2u);
  }

  v80 = v391;
  (*(v54 + 16))(v57, v75, v391);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v81 = OSSignpostIntervalState.init(id:isOpen:)();
  v82 = v5[39];
  sub_10011BBA0(&off_10037EB90);
  sub_10011B164(&off_10037EB68);
  v83 = (v392 >> 60);
  *(v82 + 130) = v392 >> 60 != 15;
  v84 = v389;
  sub_1001149DC(v387, v388, &v404);
  if (v84)
  {
    *(v82 + 168) = 4034;
    swift_willThrow();
    sub_10010E6DC(v81, v5);

    goto LABEL_76;
  }

  v354 = v434;
  v357 = v54;
  if (v83 >= 0xF)
  {
    v350 = 0;
    v351 = v82;
    v352 = v81;
    v380 = v75;
    sub_100117364(v402);
LABEL_14:
    memcpy(v403, v402, sizeof(v403));
    v87 = v390;
    v83 = v393;
    goto LABEL_15;
  }

  v85 = v375;
  v86 = v392;
  sub_10001A3E8(v375, v392);
  sub_100115998(v85, v86, v435);
  v350 = 0;
  v351 = v82;
  v352 = v81;
  v380 = v75;
  v386 = v5;
  memcpy(v402, v435, sizeof(v402));
  nullsub_1();
  v449 = v417;
  v450 = v418;
  v451 = v419;
  v452 = v420;
  v445 = v413;
  v446 = v414;
  v447 = v415;
  v448 = v416;
  v441 = v409;
  v442 = v410;
  v443 = v411;
  v114 = v405;
  v115 = v406;
  v388 = v407;
  v389 = v408;
  v444 = v412;
  v355 = v422;
  v356 = v421;
  memcpy(v439, v435, sizeof(v439));
  v83 = *(&v439[1] + 1);
  v116 = *&v439[1];
  v117 = *(&v439[2] + 1);
  v387 = *&v439[2];
  if (v404 != v439[0] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v114 != v116 || v115 != v83) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v389)
  {
    if (!v117 || (v388 != v387 || v389 != v117) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v117)
  {
LABEL_71:
    *(v351 + 168) = 4000;
    v220 = 0xD000000000000032;
    v221 = 0x800000010034E0C0;
LABEL_72:
    sub_1000207FC(4000, v220, v221, 0);
    swift_willThrow();
    sub_10001A074(v375, v392);
    sub_10011750C(v435);
    goto LABEL_73;
  }

  v453[8] = v449;
  v453[9] = v450;
  v453[10] = v451;
  v453[11] = v452;
  v453[4] = v445;
  v453[5] = v446;
  v453[6] = v447;
  v453[7] = v448;
  v453[0] = v441;
  v453[1] = v442;
  v453[2] = v443;
  v453[3] = v444;
  v440[8] = v439[11];
  v440[9] = v439[12];
  v440[10] = v439[13];
  v440[11] = v439[14];
  v440[4] = v439[7];
  v440[5] = v439[8];
  v440[6] = v439[9];
  v440[7] = v439[10];
  v440[0] = v439[3];
  v440[1] = v439[4];
  v440[2] = v439[5];
  v440[3] = v439[6];
  if (!sub_1001769F4(v453, v440))
  {
    goto LABEL_71;
  }

  v214 = *(&v439[15] + 1);
  v213 = *&v439[15];
  sub_100034958(v439, v399);
  LOBYTE(v213) = sub_10017688C(v356, v355, v213, v214);
  sub_10008C3EC(v439);
  if ((v213 & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v424 != v435[17] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(v351 + 168) = 4000;
    v221 = 0x800000010034E100;
    v220 = 0xD000000000000033;
    goto LABEL_72;
  }

  v399[2] = v435[20];
  v399[3] = v435[21];
  v399[4] = v435[22];
  v399[0] = v435[18];
  v399[1] = v435[19];
  if (*(&v435[21] + 1))
  {
    v215 = *(&v399[0] + 1);
    v83 = *&v399[0];
    v216 = v425;
    v217 = v399[1];
    v218 = v399[2];
    v388 = *&v399[4];
    v389 = v426;
    v387 = *(&v399[4] + 1);
    sub_1000094F4(*&v399[0], *(&v399[0] + 1));
    sub_1000094F4(v217, *(&v217 + 1));
    sub_1000094F4(v218, *(&v218 + 1));

    sub_1000094F4(v388, v387);
    v219 = sub_10017688C(v216, v389, v83, v215);
    v5 = v386;
    if (v219)
    {
      sub_1001174DC(v399);
      sub_10001A074(v375, v392);
      goto LABEL_14;
    }

    *(v351 + 168) = 4000;
    sub_1000207FC(4000, 0xD000000000000035, 0x800000010034E180, 0);
    swift_willThrow();
    sub_1001174DC(v399);
LABEL_113:
    sub_10001A074(v375, v392);
    sub_10011750C(v435);
    sub_10011739C(&v404);
    v222 = v352;
    v223 = v5;
    goto LABEL_74;
  }

  v5 = v386;
  v87 = v390;
  v83 = v393;
  if ((v354 & 1) == 0)
  {
    sub_1000207FC(4000, 0xD00000000000003FLL, 0x800000010034E140, 0);
    swift_willThrow();
    goto LABEL_113;
  }

  sub_10001A074(v375, v392);
  memcpy(v403, v402, sizeof(v403));
  v354 = 1;
LABEL_15:
  v89 = v5[27];
  v88 = v5[28];
  v386 = v5;
  sub_10000BE18(v5 + 24, v89);
  (*(*(v88 + 8) + 24))(v89);
  v347 = Double.description.getter();
  v355 = v90;
  static TLVTag.asn1Sequence.getter();
  v91 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v92 = *(v83 + 9);
  v93 = *(v83 + 80);
  v94 = (v93 + 32) & ~v93;
  v349 = 3 * v92;
  v375 = v93;
  v387 = v91;
  v95 = swift_allocObject();
  v345 = xmmword_1002C1790;
  *(v95 + 16) = xmmword_1002C1790;
  v389 = v94;
  sub_1000094F4(v429, v430);
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:octetString:)();
  sub_1000094F4(v431, v432);
  static TLVTag.asn1OctetString.getter();
  v388 = v92;
  TLV.init(tag:octetString:)();
  sub_1000094F4(v427, v428);
  static TLVTag.asn1OctetString.getter();
  v348 = 2 * v92;
  v96 = v393;
  TLV.init(tag:octetString:)();
  TLV.init(tag:children:)();
  v97 = *(v96 + 56);
  v97(v383, 1, 1, v87);
  v97(v379, 1, 1, v87);
  v97(v382, 1, 1, v87);
  memcpy(v402, v403, sizeof(v402));
  v98 = sub_100031A30(v402);
  v99 = v87;
  v353 = v96 + 56;
  v356 = v97;
  if (v98 != 1)
  {
    v100 = *(&v402[21] + 1);
    if (*(&v402[21] + 1))
    {
      v101 = *(&v402[22] + 1);
      v102 = *&v402[22];
      v342[0] = *&v402[21];
      v103 = *(&v402[20] + 1);
      v104 = *&v402[20];
      v392 = *(&v402[19] + 1);
      v344 = *&v402[19];
      sub_100065074(v403, v399, &qword_1003A37E8, &unk_1002C7820);
      sub_1001174A4(&v402[18], v399);
      v346 = v100;

      static TLVTag.asn1Sequence.getter();
      *(swift_allocObject() + 16) = v345;
      sub_1000094F4(v104, v103);
      static TLVTag.asn1OctetString.getter();
      TLV.init(tag:octetString:)();
      sub_1000094F4(v102, v101);
      static TLVTag.asn1OctetString.getter();
      v105 = v390;
      TLV.init(tag:octetString:)();
      sub_1000094F4(v344, v392);
      static TLVTag.asn1OctetString.getter();
      v99 = v105;
      TLV.init(tag:octetString:)();
      v106 = v362;
      TLV.init(tag:children:)();
      TLVTag.init(contextSpecific:isConstructed:)();
      v107 = v389;
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1002C1660;
      v109 = v393;
      (*(v393 + 16))(v108 + v107, v106, v99);
      v110 = v377;
      TLV.init(tag:children:)();
      v111 = v383;
      sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
      v356(v110, 0, 1, v99);
      sub_1001173FC(v110, v111);
      static TLVTag.asn1Boolean.getter();
      TLV.init(tag:BOOLean:)();
      sub_1001174DC(&v402[18]);
      sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
      (*(v109 + 8))(v106, v99);
      v112 = v382;
      sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
      v356(v110, 0, 1, v99);
      v113 = v112;
      v97 = v356;
      sub_1001173FC(v110, v113);
      goto LABEL_31;
    }

    memcpy(v399, v403, sizeof(v399));
    sub_10011746C(v399, &v395);
    static TLVTag.asn1Boolean.getter();
    v118 = v377;
    TLV.init(tag:BOOLean:)();
    sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
    v119 = v382;
    sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
    v97(v118, 0, 1, v87);
    sub_1001173FC(v118, v119);
  }

  v342[0] = 0;
  v346 = 0;
LABEL_31:
  v97(v384, 1, 1, v99);
  v120 = v388;
  v121 = v389;
  v122 = v393;
  if (v433)
  {

    static TLVTag.asn1IA5String.getter();
    v123 = v362;
    TLV.init(tag:string:)();
    TLVTag.init(contextSpecific:isConstructed:)();
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1002C1660;
    v125 = *(v122 + 16);
    v126 = v122;
    v127 = v390;
    v125(v124 + v121, v123, v390);
    v128 = v377;
    TLV.init(tag:children:)();
    (*(v126 + 8))(v123, v127);
    v129 = v384;
    sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
    v130 = v127;
    v122 = v126;
    v356(v128, 0, 1, v130);
    sub_1001173FC(v128, v129);
  }

  v131 = swift_allocObject();
  v392 = v131;
  *(v131 + 16) = xmmword_1002C7740;
  v132 = v131 + v121;
  static TLVTag.asn1IA5String.getter();

  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();

  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  v133 = v424;

  v343 = v133;
  TLV.init(tag:string:)();
  static TLVTag.asn1Boolean.getter();
  TLV.init(tag:BOOLean:)();
  sub_1000094F4(v425, v426);
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:octetString:)();
  v344 = 4 * v120;
  v134 = *(v122 + 16);
  v342[2] = 5 * v120;
  v135 = v390;
  v362 = v122 + 16;
  v347 = v134;
  v134(v132 + 5 * v120, v381, v390);
  static TLVTag.asn1IA5String.getter();
  sub_10000BE18(v386 + 7, v386[10]);
  sub_100034704(v436);
  memcpy(v454, v436, sizeof(v454));
  if (sub_100031A30(v454) != 1)
  {
  }

  v342[1] = 6 * v120;
  TLV.init(tag:string:)();
  v136 = v383;
  v137 = v370;
  sub_100065074(v383, v370, &unk_10039E210, &unk_1002C65B0);
  v138 = *(v393 + 48);
  v139 = (v138)(v137, 1, v135);
  sub_10000BD44(v137, &unk_10039E210, &unk_1002C65B0);
  if (v139 != 1)
  {
    v148 = v371;
    sub_100065074(v136, v371, &unk_10039E210, &unk_1002C65B0);
    v149 = v138;
    v150 = (v138)(v148, 1, v135);
    if (v150 != 1)
    {
      v151 = v135;
      v153 = *(v392 + 16);
      v152 = *(v392 + 24);
      v154 = v153 + 1;
      v155 = v384;
      if (v153 >= v152 >> 1)
      {
        goto LABEL_133;
      }

      goto LABEL_42;
    }

    goto LABEL_137;
  }

  v140 = v384;
  v141 = v366;
  v142 = v376;
  v143 = v138;
  if ((v354 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  sub_100065074(v382, v141, &unk_10039E210, &unk_1002C65B0);
  v144 = v390;
  v145 = (v143)(v141, 1, v390);
  v146 = v392;
  if (v145 == 1)
  {
    static TLVTag.asn1Boolean.getter();
    TLV.init(tag:BOOLean:)();
    v147 = v143;
    if ((v143)(v141, 1, v144) != 1)
    {
      sub_10000BD44(v141, &unk_10039E210, &unk_1002C65B0);
    }
  }

  else
  {
    v147 = v143;
    (*(v393 + 32))(v142, v141, v144);
  }

  TLVTag.init(contextSpecific:isConstructed:)();
  v158 = v389;
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1002C1660;
  v347(v159 + v158, v142, v144);
  v160 = v377;
  TLV.init(tag:children:)();
  v161 = v379;
  sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
  v356(v160, 0, 1, v144);
  sub_1001173FC(v160, v161);
  v162 = v161;
  v163 = v367;
  sub_100065074(v162, v367, &unk_10039E210, &unk_1002C65B0);
  v150 = (v147)(v163, 1, v144);
  if (v150 == 1)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v165 = v146[2];
  v164 = v146[3];
  if (v165 >= v164 >> 1)
  {
    v392 = sub_10004D91C((v164 > 1), v165 + 1, 1, v146);
  }

  else
  {
    v392 = v146;
  }

  v166 = v393;
  v157 = v390;
  (*(v393 + 8))(v376, v390);
  v167 = v392;
  *(v392 + 16) = v165 + 1;
  (*(v166 + 32))(v167 + v389 + v165 * v388, v367, v157);
  v140 = v384;
  while (1)
  {
    v168 = v140;
    v169 = v368;
    sub_100065074(v140, v368, &unk_10039E210, &unk_1002C65B0);
    v170 = (v147)(v169, 1, v157);
    sub_10000BD44(v169, &unk_10039E210, &unk_1002C65B0);
    if (v170 == 1)
    {
      v171 = v157;
      v172 = v392;
    }

    else
    {
      v173 = v363;
      sub_100065074(v168, v363, &unk_10039E210, &unk_1002C65B0);
      v150 = (v147)(v173, 1, v157);
      if (v150 == 1)
      {
        goto LABEL_139;
      }

      v172 = v392;
      v174 = v393;
      v176 = *(v392 + 16);
      v175 = *(v392 + 24);
      if (v176 >= v175 >> 1)
      {
        v172 = sub_10004D91C((v175 > 1), v176 + 1, 1, v392);
      }

      v177 = v389;
      v171 = v390;
      v172[2] = v176 + 1;
      (*(v174 + 32))(v172 + v177 + v176 * v388, v363, v171);
    }

    static TLVTag.asn1Sequence.getter();

    v392 = v172;
    TLV.init(tag:children:)();
    v178 = v372;
    static String.Encoding.utf8.getter();
    v179 = String.data(using:allowLossyConversion:)();
    v181 = v180;
    v150 = (*(v364 + 8))(v178, v365);
    if (v181 >> 60 == 15)
    {
      goto LABEL_136;
    }

    v182 = TLV.dataRepresentation.getter();
    v184 = v183;
    v395 = v179;
    v396 = v181;
    *(&v399[1] + 1) = &type metadata for Data;
    *&v399[2] = &protocol witness table for Data;
    *&v399[0] = v182;
    *(&v399[0] + 1) = v183;
    v185 = sub_10000BE18(v399, &type metadata for Data);
    v186 = *v185;
    v187 = v185[1];
    sub_10001A3E8(v179, v181);
    sub_1000094F4(v182, v184);
    v188 = v350;
    sub_1000A1C34(v186, v187, &v395, v189);
    sub_100009548(v182, v184);
    sub_10001A074(v179, v181);
    sub_10000959C(v399);
    v190 = v395;
    v191 = v396;
    v192 = Data.sha256Digest.getter();
    v194 = v193;
    sub_100009548(v190, v191);
    sub_10000BE18(v386 + 19, v386[22]);
    sub_10014FBB4(0xC9, 0x726564616572, 0xE600000000000000, 4, 0);
    v376 = v194;
    v377 = v192;
    if (v188)
    {

      v196 = v393;
      *(v351 + 168) = 4048;
      swift_errorRetain();
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.error.getter();

      v203 = os_log_type_enabled(v201, v202);
      v54 = v357;
      if (v203)
      {
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        *v204 = 138412290;
        swift_errorRetain();
        v206 = _swift_stdlib_bridgeErrorToNSError();
        *(v204 + 4) = v206;
        *v205 = v206;
        _os_log_impl(&_mh_execute_header, v201, v202, "Error attempting to sign: %@", v204, 0xCu);
        sub_10000BD44(v205, &unk_10039E220, &qword_1002C3D60);

        v196 = v393;
      }

      sub_1000207FC(4048, 0xD00000000000001ALL, 0x800000010034DF80, 0);
      swift_willThrow();
      sub_100009548(v377, v376);

      sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
      v83 = *(v196 + 8);
      v83(v378, v171);
      sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
      v83(v381, v171);
      sub_10011739C(&v404);
      v207 = v352;
      v208 = v386;
LABEL_62:
      sub_10010E6DC(v207, v208);

      v75 = v380;
      v80 = v391;
      goto LABEL_76;
    }

    v197 = v195;
    ObjectType = swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v371 = v342;
    v370 = *(AssociatedTypeWitness - 8);
    __chkstk_darwin(AssociatedTypeWitness);
    v155 = v342 - v200;
    v367 = sub_100155ECC(v342 - v200, v192, v194, 1u, ObjectType, v197);
    v368 = v209;
    v397 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v398 = AssociatedConformanceWitness;
    v211 = sub_10000BE5C(&v395);
    (*(v370 + 32))(v211, v155, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v212 = swift_allocObject();
    v366 = xmmword_1002C1660;
    *(v212 + 16) = xmmword_1002C1660;
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    TLV.init(dataRepresentation:)();
    v371 = 0;
    v153 = v397;
    v225 = v398;
    sub_10000BE18(&v395, v397);
    v226 = (*(v225 + 56))(v153, v225);
    v151 = v390;
    v370 = *(v226 + 16);
    if (!v370)
    {
      break;
    }

    v154 = 0;
    v369 = (v393 + 32);
    v149 = (v226 + 40);
    while (1)
    {
      v152 = *(v226 + 16);
      if (v154 >= v152)
      {
        break;
      }

      v155 = v226;
      v153 = *(v149 - 1);
      v227 = *v149;
      sub_1000094F4(v153, *v149);
      sub_1000094F4(v153, v227);
      v228 = v371;
      TLV.init(dataRepresentation:)();
      v371 = v228;
      if (v228)
      {
        goto LABEL_94;
      }

      v230 = *(v212 + 16);
      v229 = *(v212 + 24);
      if (v230 >= v229 >> 1)
      {
        v212 = sub_10004D91C((v229 > 1), v230 + 1, 1, v212);
      }

      ++v154;
      sub_100009548(v153, v227);
      *(v212 + 16) = v230 + 1;
      v231 = v388;
      v232 = v212 + v389 + v230 * v388;
      v151 = v390;
      (*v369)(v232, v373, v390);
      v149 += 2;
      v226 = v155;
      if (v370 == v154)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_133:
    v392 = sub_10004D91C((v152 > 1), v154, 1, v392);
LABEL_42:
    v141 = v366;
    v142 = v376;
    v156 = v392;
    *(v392 + 16) = v154;
    (*(v393 + 32))(v156 + v389 + v153 * v388, v371, v151);
    v140 = v155;
    v143 = v149;
    if (v354)
    {
      goto LABEL_37;
    }

LABEL_43:
    v147 = v143;
    v157 = v390;
  }

  v231 = v388;
LABEL_87:

  static TLVTag.asn1Sequence.getter();
  v233 = v389;
  v234 = swift_allocObject();
  v365 = xmmword_1002C1690;
  *(v234 + 16) = xmmword_1002C1690;
  v153 = v234 + v233;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  v347(v153 + v231, v378, v151);
  sub_1000094F4(v367, v368);
  BitString.init(data:unusedBits:)();
  static TLVTag.asn1BitString.getter();
  TLV.init(tag:bitString:)();
  static TLVTag.asn1Sequence.getter();
  TLV.init(tag:children:)();
  v235 = v360;
  TLV.init(tag:children:)();
  v236 = TLV.dataRepresentation.getter();
  v238 = v237;
  v364 = sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v227 = swift_allocObject();
  *(v227 + 16) = v366;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v399, "payloadData[");
  BYTE13(v399[0]) = 0;
  HIWORD(v399[0]) = -5120;
  v239 = v238 >> 62;
  if ((v238 >> 62) <= 1)
  {
    v240 = v393;
    if (!v239)
    {
      v241 = BYTE6(v238);
      goto LABEL_97;
    }

    LODWORD(v241) = HIDWORD(v236) - v236;
    if (!__OFSUB__(HIDWORD(v236), v236))
    {
      v241 = v241;
      goto LABEL_97;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v241 = 0;
  v240 = v393;
  if (v239 == 2)
  {
    v243 = *(v236 + 16);
    v242 = *(v236 + 24);
    v244 = __OFSUB__(v242, v243);
    v241 = v242 - v243;
    if (v244)
    {
      __break(1u);
LABEL_94:
      sub_100009548(v153, v227);

      v245 = v386;
      v54 = v357;
      v246 = v371;
      *(v351 + 168) = 4048;
      swift_errorRetain();
      sub_1000207FC(4048, 0xD00000000000003BLL, 0x800000010034DFA0, v246);

      swift_willThrow();
      sub_100009548(v377, v376);
      sub_100009548(v367, v368);

      sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
      v83 = *(v393 + 8);
      v83(v378, v151);
      sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
      v83(v381, v151);
      sub_10000959C(&v395);
      sub_10011739C(&v404);
      v207 = v352;
      v208 = v245;
      goto LABEL_62;
    }
  }

LABEL_97:
  *&v400 = v241;
  v247._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v247);

  v248._countAndFlagsBits = 15709;
  v248._object = 0xE200000000000000;
  String.append(_:)(v248);
  v249 = Data.hexString()();
  String.append(_:)(v249);

  v250 = v399[0];
  *(v227 + 56) = &type metadata for String;
  *(v227 + 32) = v250;
  print(_:separator:terminator:)();

  v251 = *(v240 + 8);
  v393 = v240 + 8;
  v373 = v251;
  (v251)(v235, v151);
  sub_10000BE18(v386 + 14, v386[17]);
  v252 = v423;
  type metadata accessor for CertificateManager(0);
  v369 = v252;
  v370 = v236;
  v253 = v371;
  sub_10004CEA8(v399);
  if (!v253)
  {
    v359 = v238;
    v255 = v399[0];
    v362 = *(&v399[1] + 1);
    v363 = *&v399[1];
    v256 = *(&v399[2] + 1);
    v371 = *&v399[2];
    static TLVTag.asn1Sequence.getter();
    *(swift_allocObject() + 16) = xmmword_1002C7750;
    static TLVTag.asn1IA5String.getter();
    TLV.init(tag:string:)();
    v360 = *(&v255 + 1);
    v361 = v255;
    sub_1000094F4(v255, *(&v255 + 1));
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    v258 = v362;
    v257 = v363;
    sub_1000094F4(v363, v362);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    v259 = v371;
    sub_1000094F4(v371, v256);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    TLV.init(tag:children:)();
    sub_100009548(v361, v360);
    sub_100009548(v257, v258);
    sub_100009548(v259, v256);
    v150 = Data.init(base64Encoded:options:)();
    if (v260 >> 60 == 15)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v261 = v150;
    v262 = v260;
    sub_1001164D0(v150, v260, v437);
    v389 = 0;
    sub_10001A074(v261, v262);
    v266 = v437[0];
    v267 = v437[1];
    v369 = sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    v268 = swift_allocObject();
    *(v268 + 16) = v345;
    *(v268 + 32) = 0x687469726F676C61;
    *(v268 + 40) = 0xE90000000000006DLL;
    *(v268 + 48) = v266;
    *(v268 + 56) = v267;
    *(v268 + 64) = 30313;
    *(v268 + 72) = 0xE200000000000000;
    v269 = v437[2];
    v270 = v437[3];

    v387 = v270;
    v388 = v269;
    *(v268 + 80) = Data.base64EncodedString(options:)(0);
    strcpy((v268 + 96), "cipheredData");
    *(v268 + 109) = 0;
    *(v268 + 110) = -5120;
    v385 = v437[4];
    v375 = v437[5];
    *(v268 + 112) = Data.base64EncodedString(options:)(0);
    v271 = sub_100183EFC(v268);
    swift_setDeallocating();
    v363 = sub_100004074(&qword_10039FE90, &unk_1002C5970);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v374 = sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    v272 = swift_allocObject();
    *(v272 + 16) = v366;
    *(v272 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v272 + 40) = v273;
    v274 = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v272 + 72) = v274;
    *(v272 + 48) = v271;

    v275 = sub_100182BA0(v272);
    swift_setDeallocating();
    sub_10000BD44(v272 + 32, &qword_10039E4D0, &qword_1002C94A0);
    swift_deallocClassInstance();
    v394 = v275;
    v276 = v358;
    if (v346)
    {
      v371 = v267;
      v277 = Data.init(base64Encoded:options:)();
      v279 = v278;

      if (v279 >> 60 == 15)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        v341 = v150;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v280 = v389;
      sub_1001164D0(v277, v279, v438);
      v54 = v357;
      v350 = v280;
      if (v280)
      {

        sub_10001A074(v277, v279);
        v282 = v389;
        v281 = v390;
        v283 = v350;
        v284 = v377;
        *(v351 + 168) = 4047;
        v83 = v283;
        swift_willThrow();
        sub_100009548(v284, v376);
        sub_100009548(v370, v359);
        sub_100009548(v367, v368);
        sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
        v263 = v276;
        v264 = v373;
        (v373)(v263, v281);
        (v264)(v378, v281);
        sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
        (v264)(v381, v281);
        sub_10000959C(&v395);
        sub_10011739C(&v404);
        v265 = v386;
        if (!v282)
        {

          sub_100009548(v388, v387);
          sub_100009548(v385, v375);
        }

        sub_10010E6DC(v352, v265);

        v75 = v380;
        v80 = v391;
        goto LABEL_76;
      }

      sub_10001A074(v277, v279);
      v286 = swift_allocObject();
      *(v286 + 32) = 0x687469726F676C61;
      *(v286 + 16) = v345;
      v287 = v438[0];
      v288 = v438[1];
      *(v286 + 40) = 0xE90000000000006DLL;
      *(v286 + 48) = v287;
      *(v286 + 56) = v288;
      *(v286 + 64) = 1953259891;
      *(v286 + 72) = 0xE400000000000000;

      *(v286 + 80) = Data.base64EncodedString(options:)(0);
      *(v286 + 96) = 0x6B636F6C426E6970;
      *(v286 + 104) = 0xE800000000000000;
      *(v286 + 112) = Data.base64EncodedString(options:)(0);
      v289 = sub_100183EFC(v286);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v401 = v274;
      *&v400 = v289;
      v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100112208(&v400, v290, v291, v399);

      sub_1001173CC(v438);
      sub_10000BD44(v399, &qword_10039E248, &qword_1002C23D0);
      v285 = v350;
    }

    else
    {

      v285 = v389;
    }

    v292 = swift_allocObject();
    *(v292 + 16) = v365;
    *(v292 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v292 + 72) = &type metadata for String;
    *(v292 + 40) = v293;
    *(v292 + 48) = 3235636;
    *(v292 + 56) = 0xE300000000000000;
    *(v292 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v292 + 88) = v294;
    v295 = TLV.dataRepresentation.getter();
    v297 = v296;
    v298 = Data.base64EncodedString(options:)(0);
    sub_100009548(v295, v297);
    *(v292 + 120) = &type metadata for String;
    *(v292 + 96) = v298;
    *(v292 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v292 + 136) = v299;
    v300 = v394;
    v301 = sub_100004074(&qword_1003A0190, &unk_1002C4040);
    *(v292 + 168) = v301;
    *(v292 + 144) = v300;
    *(v292 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v292 + 184) = v302;
    *(v292 + 216) = &type metadata for String;
    v303 = *(&v343 + 1);
    *(v292 + 192) = v343;
    *(v292 + 200) = v303;

    v304 = sub_100182BA0(v292);
    swift_setDeallocating();
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v399[1] + 1) = v301;
    *&v399[0] = v304;

    v305 = sub_100099560(v399, 8, 0);
    if (v285)
    {

      sub_10000959C(v399);
      *(v351 + 168) = 4048;
      swift_errorRetain();
      sub_1000207FC(4048, 0xD00000000000002ELL, 0x800000010034E010, v285);

      swift_willThrow();
      sub_100009548(v377, v376);
      sub_100009548(v370, v359);

      sub_100009548(v367, v368);
      sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
      v307 = v390;
      v308 = v373;
      (v373)(v358, v390);
      (v308)(v378, v307);
      v83 = &unk_1002C65B0;
      sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
      (v308)(v381, v307);
      sub_1001173CC(v437);
      sub_10000959C(&v395);
      sub_10011739C(&v404);
      sub_10010E6DC(v352, v386);

      goto LABEL_75;
    }

    v83 = v305;
    v309 = v306;
    v350 = 0;
    sub_10000959C(v399);
    v310 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v399[0] = 0;
    v312 = [v310 dataWithJSONObject:isa options:9 error:v399];

    v150 = *&v399[0];
    if (!v312)
    {
      goto LABEL_143;
    }

    v313 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v315 = v314;

    static String.Encoding.utf8.getter();
    v392 = v313;
    v389 = v315;
    v316 = String.init(data:encoding:)();
    if (v317)
    {
      v318 = v316;
      v319 = v317;
      v320 = swift_allocObject();
      *(v320 + 16) = v366;
      *&v399[0] = 0;
      *(&v399[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v321._object = 0x800000010034E080;
      v321._countAndFlagsBits = 0xD000000000000033;
      String.append(_:)(v321);
      v322._countAndFlagsBits = v318;
      v322._object = v319;
      String.append(_:)(v322);

      v323 = v399[0];
      *(v320 + 56) = &type metadata for String;
      *(v320 + 32) = v323;
      print(_:separator:terminator:)();
    }

    v324 = swift_allocObject();
    *(v324 + 16) = v366;
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x800000010034E060;
    v325 = v309 >> 62;
    if ((v309 >> 62) > 1)
    {
      v326 = 0;
      v327 = v386;
      if (v325 != 2)
      {
LABEL_131:
        *&v400 = v326;
        v330._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v330);

        v331._countAndFlagsBits = 15709;
        v331._object = 0xE200000000000000;
        String.append(_:)(v331);
        v332 = Data.hexString()();
        String.append(_:)(v332);

        v333 = v399[0];
        *(v324 + 56) = &type metadata for String;
        *(v324 + 32) = v333;
        print(_:separator:terminator:)();

        sub_100009548(v392, v389);
        v334 = v327[37];
        v335 = v327[38];
        sub_10000BE18(v327 + 34, v334);
        sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
        v336 = swift_allocObject();
        *(v336 + 16) = v366;
        strcpy((v336 + 32), "transactionId");
        *(v336 + 72) = &type metadata for String;
        *(v336 + 80) = &protocol witness table for String;
        v337 = v343;
        *(v336 + 46) = -4864;
        *(v336 + 48) = __PAIR128__(*(&v343 + 1), v337);

        v338 = sub_100184010(v336);
        swift_setDeallocating();
        sub_10000BD44(v336 + 32, &qword_10039FEC8, &unk_1002C37B0);
        swift_deallocClassInstance();
        sub_1000C2288(0x1Cu, v338, v334, v335);

        sub_100009548(v377, v376);
        sub_100009548(v370, v359);
        sub_100009548(v367, v368);
        sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
        v339 = v390;
        v340 = v373;
        (v373)(v358, v390);
        (v340)(v378, v339);
        sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
        (v340)(v381, v339);
        sub_1001173CC(v437);
        sub_10000959C(&v395);
        sub_10011739C(&v404);
        sub_10010E6DC(v352, v386);

        (*(v357 + 8))(v380, v391);
        return v83;
      }

      v329 = *(v83 + 2);
      v328 = *(v83 + 3);
      v244 = __OFSUB__(v328, v329);
      v326 = v328 - v329;
      if (!v244)
      {
LABEL_130:
        v327 = v386;
        goto LABEL_131;
      }

      __break(1u);
    }

    else if (!v325)
    {
      v326 = BYTE6(v309);
      goto LABEL_130;
    }

    LODWORD(v326) = HIDWORD(v83) - v83;
    if (!__OFSUB__(HIDWORD(v83), v83))
    {
      v326 = v326;
      goto LABEL_130;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  *(v351 + 168) = 4048;
  swift_errorRetain();
  sub_1000207FC(4048, 0xD000000000000021, 0x800000010034DFE0, v253);

  swift_willThrow();
  sub_100009548(v377, v376);
  sub_100009548(v370, v238);

  sub_100009548(v367, v368);
  sub_10000BD44(v403, &qword_1003A37E8, &unk_1002C7820);
  v254 = v390;
  v83 = v373;
  (v373)(v378, v390);
  sub_10000BD44(v384, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v382, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v379, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v383, &unk_10039E210, &unk_1002C65B0);
  v83(v381, v254);
  sub_10000959C(&v395);
LABEL_73:
  sub_10011739C(&v404);
  v222 = v352;
  v223 = v386;
LABEL_74:
  sub_10010E6DC(v222, v223);

LABEL_75:
  v80 = v391;
  v54 = v357;
  v75 = v380;
LABEL_76:
  (*(v54 + 8))(v75, v80);
  return v83;
}

void sub_10010E6DC(uint64_t a1, uint64_t a2)
{
  v17[0] = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A3608);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
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
      v13 = "end generateSecureReaderBlob";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "reader-getSecureBlob", v13, v14, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v16 = *(*(v17[0] + 312) + 56);
  os_unfair_lock_lock(v16 + 8);
  sub_10011D358(&v16[4], 12);
  os_unfair_lock_unlock(v16 + 8);
  sub_100027534();
  sub_100027F94(&off_10037EB40);
}

uint64_t *sub_10010EB40(unint64_t a1, uint64_t a2)
{
  v124 = a1;
  v125 = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[27];
  v8 = v2[28];
  v123 = v2;
  sub_10000BE18(v2 + 24, v7);
  (*(*(v8 + 8) + 24))(v7);
  v9 = Double.description.getter();
  v11 = v10;
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  v17 = *(v4 + 8);
  v15 = v4 + 8;
  v16 = v17;
  v17(v6, v3);
  if (v14 >> 60 == 15)
  {
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v136 = v12;
  v137 = v14;
  static String.Encoding.utf8.getter();
  object = v9;
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  v16(v6, v3);
  if (v20 >> 60 == 15)
  {
    goto LABEL_46;
  }

  countAndFlagsBits = &v136;
  Data.append(_:)();
  sub_10001A074(v18, v20);
  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;
  v16(v6, v3);
  if (v24 >> 60 == 15)
  {

    sub_1000207FC(4000, 0xD00000000000002ELL, 0x800000010034DE00, 0);
    swift_willThrow();
LABEL_7:
    sub_100009548(v136, v137);
    return countAndFlagsBits;
  }

  v117 = v16;
  v118 = v15;
  v119 = v3;
  v120 = v11;
  Data.append(_:)();
  v25 = Data.sha256Digest.getter();
  v27 = v26;
  countAndFlagsBits = *sub_10000BE18(v123 + 19, v123[22]);
  v28 = v122;
  v29 = sub_10014FBB4(0xC9, 0x726564616572, 0xE600000000000000, 4, 0);
  if (v28)
  {
    sub_100009548(v25, v27);
    sub_10001A074(v22, v24);

    goto LABEL_7;
  }

  v32 = v30;
  v115 = v22;
  v116 = v24;
  v33 = v29;
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = v96;
  v113 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v37 = v96 - v36;
  v38 = sub_100155ECC(v96 - v36, v25, v27, 1u, ObjectType, v32);
  v114 = 0;
  v108 = v25;
  v109 = v38;
  v110 = v27;
  v111 = v39;
  v112 = v33;
  v134 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_10000BE5C(v133);
  (*(v113 + 32))(v40, v37, AssociatedTypeWitness);

  v41 = Data.init(base64urlEncoded:options:)();
  if (v42 >> 60 == 15)
  {

    countAndFlagsBits = v112;
    v43 = v110;
    v44 = v108;
LABEL_21:
    sub_1000207FC(4000, 0xD000000000000033, 0x800000010034DE30, 0);
    swift_willThrow();
LABEL_22:
    sub_100009548(v109, v111);
    sub_100009548(v44, v43);
    sub_10001A074(v115, v116);
    goto LABEL_23;
  }

  v45 = v41;
  v46 = v42;
  v47 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v128 = 0;
  v49 = [v47 JSONObjectWithData:isa options:0 error:&v128];

  v44 = v108;
  v50 = v120;
  if (!v49)
  {
    countAndFlagsBits = v128;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10001A074(v45, v46);
    sub_100009548(v109, v111);
    sub_100009548(v44, v110);
    sub_10001A074(v115, v116);
    goto LABEL_23;
  }

  v51 = v128;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10001A074(v45, v46);

    countAndFlagsBits = v112;
    v43 = v110;
    goto LABEL_21;
  }

  v52 = v126;
  v53 = sub_100116ED8(v126);
  countAndFlagsBits = v112;
  v43 = v110;
  if ((v53 & 1) == 0)
  {

    v62 = "ecoded txnBlob data";
    v63 = 0xD00000000000001ELL;
LABEL_30:
    sub_1000207FC(4000, v63, (v62 | 0x8000000000000000), 0);
    swift_willThrow();
    sub_10001A074(v45, v46);
    goto LABEL_22;
  }

  if (!*(v52 + 16))
  {
    goto LABEL_28;
  }

  v54 = sub_1000F5A28(0x546E6F6973736573, 0xEC0000006E656B6FLL);
  if ((v55 & 1) == 0)
  {

    countAndFlagsBits = v112;
LABEL_29:
    v62 = "txnBlob field missing or empty";
    v63 = 0xD000000000000033;
    goto LABEL_30;
  }

  sub_10000BDA4(*(v52 + 56) + 32 * v54, &v128);
  v56 = swift_dynamicCast();
  countAndFlagsBits = v112;
  if ((v56 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

  v122 = v52;
  v57 = v126;
  v58 = v127;

  v59 = v57;
  v60 = v114;
  sub_100176DD8(v59, v58, v138);
  v114 = v60;
  if (v60)
  {

    v61 = v114;
    swift_errorRetain();
    sub_1000207FC(4000, 0x206E6F6973736573, 0xED00006E656B6F74, v61);

    swift_willThrow();
    sub_10001A074(v45, v46);
    sub_100009548(v109, v111);
    sub_100009548(v44, v43);
    sub_10001A074(v115, v116);

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:
    sub_100009548(v136, v137);
    sub_10000959C(v133);
    return countAndFlagsBits;
  }

  v106 = v58;
  v107 = v45;
  v113 = v46;
  v104 = v138[11];
  v105 = v138[10];
  v103 = sub_100004074(&unk_1003A3C10, &unk_1002C3760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  strcpy((inited + 32), "deviceCpuTime");
  *(inited + 46) = -4864;
  *(inited + 48) = object;
  *(inited + 56) = v50;
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x800000010034DED0;
  v65 = v134;
  v66 = AssociatedConformanceWitness;
  sub_10000BE18(v133, v134);
  object = *(v66 + 48);

  v67 = object(v65, v66);
  v69 = v68;
  v70 = Data.base64EncodedString(options:)(0);
  object = v70._object;
  sub_100009548(v67, v69);
  v71 = object;
  *(inited + 80) = v70._countAndFlagsBits;
  *(inited + 88) = v71;
  *(inited + 96) = 0x727574616E676973;
  *(inited + 104) = 0xE900000000000065;
  countAndFlagsBits = v109;
  *(inited + 112) = Data.base64EncodedString(options:)(0);
  *(inited + 128) = 0x626F6C426E7874;
  *(inited + 136) = 0xE700000000000000;
  v72 = v125;
  *(inited + 144) = v124;
  *(inited + 152) = v72;

  v73 = sub_100183EFC(inited);
  swift_setDeallocating();
  v74 = sub_100004074(&qword_10039FE90, &unk_1002C5970);
  swift_arrayDestroy();
  v125 = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
  v130 = v125;
  *&v128 = v73;

  v75 = v114;
  v76 = sub_100099560(&v128, 8, 0);
  if (v75)
  {
    sub_10001A074(v107, v113);
    sub_100009548(countAndFlagsBits, v111);
    sub_100009548(v44, v110);
    sub_10001A074(v115, v116);
    swift_unknownObjectRelease();

    sub_10008C3EC(v138);
    sub_100009548(v136, v137);
    sub_10000959C(&v128);
    sub_10000959C(v133);
    return countAndFlagsBits;
  }

  v102 = v74;
  object = v73;
  v114 = v6;
  v78 = v76;
  v79 = v77;
  sub_10000959C(&v128);
  sub_10000BE18(v123 + 14, v123[17]);
  type metadata accessor for CertificateManager(0);
  v123 = v78;
  v124 = v79;
  v80 = v105;
  v81 = v104;
  sub_10004CEA8(&v128);
  v82 = v128;
  v100 = v129;
  v101 = v130;
  v97 = *(&v128 + 1);
  v98 = v131;
  v99 = v132;
  countAndFlagsBits = v122;
  if (!v122[2] || (v83 = sub_1000F5A28(0x746361736E617274, 0xED000064496E6F69), (v84 & 1) == 0) || (sub_10000BDA4(countAndFlagsBits[7] + 32 * v83, &v128), (swift_dynamicCast() & 1) == 0))
  {

LABEL_42:

    sub_1000207FC(4000, 0xD00000000000002ELL, 0x800000010034DEF0, 0);
    swift_willThrow();
    sub_10001A074(v107, v113);
    sub_100009548(v98, v99);
    sub_100009548(v100, v101);
    sub_100009548(v82, v97);
    sub_100009548(v123, v124);
    sub_100009548(v109, v111);
    sub_100009548(v108, v110);
    sub_10001A074(v115, v116);
    swift_unknownObjectRelease();
    sub_10008C3EC(v138);
    goto LABEL_24;
  }

  v85 = HIBYTE(v127) & 0xF;
  v96[1] = v126;
  if ((v127 & 0x2000000000000000) == 0)
  {
    v85 = v126 & 0xFFFFFFFFFFFFLL;
  }

  if (!v85)
  {

    goto LABEL_42;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1002C7750;
  *(v86 + 32) = 0x496E6F6973726576;
  v103 = v86 + 32;
  *(v86 + 40) = 0xE900000000000064;
  *(v86 + 48) = 3235634;
  *(v86 + 56) = 0xE300000000000000;
  *(v86 + 64) = 0x6172656D65687065;
  *(v86 + 72) = 0xEB000000006B506CLL;
  *(v86 + 80) = Data.base64EncodedString(options:)(0);
  *(v86 + 96) = 0xD00000000000001CLL;
  *(v86 + 104) = 0x800000010034DF20;
  *(v86 + 112) = Data.hexString()();
  *(v86 + 128) = 0x496E6F6973736573;
  *(v86 + 136) = 0xE900000000000064;
  *(v86 + 144) = v80;
  *(v86 + 152) = v81;
  strcpy((v86 + 160), "securePayload");
  *(v86 + 174) = -4864;

  *(v86 + 176) = Data.base64EncodedString(options:)(0);
  strcpy((v86 + 192), "transactionId");
  *(v86 + 206) = -4864;
  v87 = v114;
  static String.Encoding.utf8.getter();
  v88 = String.data(using:allowLossyConversion:)();
  v90 = v89;
  result = v117(v87, v119);
  if (v90 >> 60 != 15)
  {

    v91 = Data.base64urlEncodedString(options:)(0);
    sub_10001A074(v88, v90);
    *(v86 + 208) = v91;
    v92 = sub_100183EFC(v86);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v130 = v125;
    *&v128 = v92;
    v93 = sub_100099560(&v128, 8, 0);
    v95 = v94;
    sub_10000959C(&v128);
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_10001A074(v107, v113);
    sub_100009548(v93, v95);
    sub_100009548(v98, v99);
    sub_100009548(v100, v101);
    sub_100009548(v82, v97);
    sub_100009548(v123, v124);
    sub_100009548(v109, v111);
    sub_100009548(v108, v110);
    sub_10001A074(v115, v116);
    swift_unknownObjectRelease();
    sub_10008C3EC(v138);
    sub_100009548(v136, v137);
    sub_10000959C(v133);
    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010FBFC(uint64_t a1)
{
  v3 = v1;
  v5 = v1[13];
  if ([v5 operationCount])
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_1003A35F0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v5 operationCount];

      _os_log_impl(&_mh_execute_header, v7, v8, "%ld operations in Reader OperationQueue", v9, 0xCu);
    }

    else
    {
    }

    v22 = 0x800000010034DDE0;
    v23 = 4019;
    v24 = 0xD00000000000001FLL;
    goto LABEL_16;
  }

  sub_10000BE18(v1 + 2, v1[5]);
  result = sub_1000B100C(a1, 120.0);
  if ((result & 1) == 0)
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A35F0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not attested", v14, 2u);
    }

    v16 = v3[5];
    v15 = v3[6];
    sub_10000BE18(v3 + 2, v16);
    (*(*(v15 + 8) + 8))(v16);
    if (v2)
    {
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to send Monitor logs to get a new token: %@", v19, 0xCu);
        sub_10000BD44(v20, &unk_10039E220, &qword_1002C3D60);
      }

      else
      {
      }
    }

    sub_10000BE18(v3 + 2, v3[5]);
    result = sub_1000B100C(a1, 120.0);
    if ((result & 1) == 0)
    {
      sub_10000BE18(v3 + 7, v3[10]);
      sub_100034704(v25);
      if ((v28 & 1) == 0)
      {
        sub_10009B460(v26, v27 & 1);
        return swift_willThrow();
      }

      v23 = 4023;
      v24 = 0;
      v22 = 0;
LABEL_16:
      sub_1000207FC(v23, v24, v22, 0);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100110000(uint64_t a1)
{
  v3 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v4 = __chkstk_darwin(v3 - 8);
  v113 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v111 = &v108 - v6;
  v7 = type metadata accessor for Date();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = __chkstk_darwin(v7);
  v110 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v114 = &v108 - v11;
  v12 = __chkstk_darwin(v10);
  v108 = &v108 - v13;
  __chkstk_darwin(v12);
  v112 = &v108 - v14;
  v15 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v15 - 8);
  v120 = &v108 - v16;
  v17 = type metadata accessor for UUID();
  v121 = *(v17 - 8);
  __chkstk_darwin(v17);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v1;
  sub_10000BE18(v1 + 2, v1[5]);
  type metadata accessor for MPOCDefaultMonitorManager();
  v19 = sub_1000B3098();
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v117 = sub_10000403C(v20, qword_1003A35F0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v147 = a1;
  v122 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, &v125);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034DDC0, _swiftEmptyArrayStorage);
    v30 = sub_100008F6C(v28, v29, &v125);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    if (v19)
    {
      v31 = 0x656E696C66666FLL;
    }

    else
    {
      v31 = 0x656E696C6E6FLL;
    }

    if (v19)
    {
      v32 = 0xE700000000000000;
    }

    else
    {
      v32 = 0xE600000000000000;
    }

    v33 = sub_100008F6C(v31, v32, &v125);

    *(v24 + 24) = v33;
    a1 = v147;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s, MPOCOperationMode: %s", v24, 0x20u);
    swift_arrayDestroy();
  }

  sub_10000BE18(v124 + 50, v124[53]);
  sub_10003D678(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_tpid, &v127);
  v118 = v19;
  if (v135)
  {
    v34 = v134;
  }

  else
  {
    v34 = sub_100055298();
    v35 = v36;
  }

  v37 = (a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);
  *v37 = v34;
  v37[1] = v35;

  v38 = v127;
  v39 = v128;
  v41 = v129;
  v40 = v130;
  v43 = v131;
  v42 = v132;
  v44 = v133;
  v45 = _swiftEmptyArrayStorage;
  if (v128)
  {

    v45 = v41;
  }

  v109 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs;
  *(v147 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs) = v45;

  if (v39)
  {

    sub_100041D1C(&v127);

    sub_10003F2A0(v38, v39, v41, v40, v43, v42, v44);
  }

  else
  {
    sub_100041D1C(&v127);
    v40 = _swiftEmptyArrayStorage;
  }

  v46 = v123;
  v47 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs;
  v48 = v147;
  *(v147 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs) = v40;

  v49 = v120;
  sub_100065074(v48 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, v120, &qword_1003A0178, &unk_1002C3BB0);
  v51 = v121;
  v50 = v122;
  if ((*(v121 + 48))(v49, 1, v122) == 1)
  {
    sub_10000BD44(v49, &qword_1003A0178, &unk_1002C3BB0);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "saftpid not present. Using tpid as profileID", v54, 2u);
    }

    sub_10000BE18(v124 + 24, v124[27]);
    v55 = v113;
    sub_100043268(v113);
    v57 = v115;
    v56 = v116;
    v58 = (*(v115 + 48))(v55, 1, v116);
    v59 = v118;
    if (v58 == 1)
    {
      sub_10000BD44(v55, &unk_1003A3BE0, &qword_1002C36F0);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Using wall time to verify the kernel token.", v62, 2u);
      }

      v64 = v124[27];
      v63 = v124[28];
      sub_10000BE18(v124 + 24, v64);
      v65 = v114;
      (*(*(v63 + 8) + 8))(v64);
    }

    else
    {
      v68 = *(v57 + 32);
      v69 = v110;
      v68(v110, v55, v56);
      v65 = v114;
      v68(v114, v69, v56);
    }

    memcpy(v146, (v48 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken), 0x120uLL);
    sub_100064B9C(v146, &v125);
    v70 = v119;
    sub_10008B7F4(v65);
    if (v70)
    {
      (*(v57 + 8))(v65, v56);
      return sub_10006413C(v146);
    }

    (*(v57 + 8))(v65, v56);
    result = sub_10006413C(v146);
    if ((v59 & 1) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  (*(v51 + 32))(v46, v49, v50);
  sub_10000BE18(v124 + 50, v124[53]);
  if (sub_10003EFB8(v46))
  {
    *(v48 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF) = 1;
    if (!*(v48 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid + 8))
    {
      sub_1000207FC(4000, 0xD0000000000000A9, 0x800000010034DD10, 0);
      swift_willThrow();
      return (*(v51 + 8))(v46, v50);
    }

    sub_10000BE18(v124 + 50, v124[53]);
    sub_10003D678(v46, &v136);
    if (v144)
    {
      v66 = v143;
    }

    else
    {
      v66 = sub_100055298();
      v67 = v91;
    }

    *v37 = v66;
    v37[1] = v67;

    v92 = v137;
    if (v137)
    {
      v93 = v142;
      v124 = v141;
      v94 = v140;
      v95 = v139;
      v96 = v138;
      v97 = v136;
      *(v147 + v109) = v138;
      swift_bridgeObjectRetain_n();
      v51 = v121;

      sub_100041D1C(&v136);

      v98 = v97;
      v50 = v122;
      v99 = v96;
      v48 = v147;
      sub_10003F2A0(v98, v92, v99, v95, v94, v124, v93);
    }

    else
    {
      v95 = _swiftEmptyArrayStorage;
      *(v48 + v109) = _swiftEmptyArrayStorage;

      sub_100041D1C(&v136);
    }

    v100 = v118;
    *(v48 + v47) = v95;

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "saftpid present and isInSAFMode. Using saftpid as profileID", v103, 2u);
    }

    result = (*(v51 + 8))(v123, v50);
    if ((v100 & 1) == 0)
    {
      v90 = 1;
      goto LABEL_55;
    }
  }

  else
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "saftpid present but NOT isInSAFMode. Using tpid as profileID", v74, 2u);
    }

    sub_10000BE18(v124 + 24, v124[27]);
    v75 = v111;
    sub_100043268(v111);
    v77 = v115;
    v76 = v116;
    v78 = (*(v115 + 48))(v75, 1, v116);
    v79 = v118;
    if (v78 == 1)
    {
      sub_10000BD44(v75, &unk_1003A3BE0, &qword_1002C36F0);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Using wall time to verify the kernel token.", v82, 2u);
      }

      v84 = v124[27];
      v83 = v124[28];
      sub_10000BE18(v124 + 24, v84);
      v85 = v112;
      (*(*(v83 + 8) + 8))(v84);
    }

    else
    {
      v86 = *(v77 + 32);
      v87 = v108;
      v86(v108, v75, v76);
      v85 = v112;
      v86(v112, v87, v76);
    }

    memcpy(v145, (v48 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken), sizeof(v145));
    sub_100064B9C(v145, &v125);
    v88 = v119;
    sub_10008B7F4(v85);
    v89 = v123;
    if (v88)
    {
      sub_10006413C(v145);
      (*(v77 + 8))(v85, v76);
      return (*(v121 + 8))(v89, v122);
    }

    sub_10006413C(v145);
    (*(v77 + 8))(v85, v76);
    result = (*(v121 + 8))(v89, v122);
    if (v79)
    {
LABEL_46:
      v90 = 0;
LABEL_55:
      v125 = 0;
      v126 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      v104._countAndFlagsBits = 0xD00000000000003ALL;
      v104._object = 0x800000010034DCD0;
      String.append(_:)(v104);
      if (v90)
      {
        v105 = 0x656E696C66666FLL;
      }

      else
      {
        v105 = 0x656E696C6E6FLL;
      }

      if (v90)
      {
        v106 = 0xE700000000000000;
      }

      else
      {
        v106 = 0xE600000000000000;
      }

      v107 = v106;
      String.append(_:)(*&v105);

      sub_1000207FC(4000, v125, v126, 0);
      return swift_willThrow();
    }
  }

  return result;
}

void sub_100110E58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Data.Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[39];
  v9 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF;
  *(v8 + 134) = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF);
  *&v48 = *(a1 + 16);
  *(v8 + 176) = v48;
  v49 = *(a1 + 72);
  *(v8 + 177) = v49;
  (*(v5 + 104))(v7, enum case for Data.Endianness.bigEndian(_:), v4);
  v10 = Data.toUInt16(endianness:)();
  (*(v5 + 8))(v7, v4);
  *(v8 + 178) = v10;
  sub_10000BE18(v2 + 40, v2[43]);
  sub_10017A138(2);
  if (v53)
  {
    if (swift_dynamicCast())
    {
      v11 = v50;
      v12 = v51;
      v13 = sub_10017688C(*(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8), v50, v51);
      sub_100009548(v11, v12);
      *(v8 + 136) = v13;
    }
  }

  else
  {
    sub_10000BD44(v52, &qword_10039E248, &qword_1002C23D0);
  }

  v14 = sub_10000BE18(v2 + 40, v2[43]);
  v16 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v15 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v53 = &type metadata for Data;
  v52[0] = v16;
  v52[1] = v15;
  v50 = *v14;
  sub_1000094F4(v16, v15);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A800(v52, 2, 0, 0, 60.0);
  sub_10000959C(v52);
  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1680;
  *(inited + 32) = 7;
  v18 = sub_100055298();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  *(inited + 72) = 8;
  v20 = *(a1 + 24);
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = v21;
  *(inited + 112) = 17;
  v22 = *(a1 + 112);
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = v22;
  *(inited + 152) = 18;
  v23 = *(a1 + 120);
  *(inited + 184) = &type metadata for Int;
  *(inited + 160) = v23;
  *(inited + 192) = 23;
  v24 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  if (v24)
  {
    v47 = v9;
    v25 = *(v24 + 16);
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v44[2] = inited + 32;
      v45 = v8;
      v46 = a1;
      v52[0] = _swiftEmptyArrayStorage;

      sub_10004E2DC(0, v25, 0);
      v26 = v52[0];
      v44[1] = v24;
      v27 = (v24 + 40);
      do
      {
        v28 = *(v27 - 1);
        v29 = *v27;
        sub_1000094F4(v28, *v27);
        v30 = Data.hexString()();
        sub_100009548(v28, v29);
        v52[0] = v26;
        v32 = v26[2];
        v31 = v26[3];
        if (v32 >= v31 >> 1)
        {
          sub_10004E2DC((v31 > 1), v32 + 1, 1);
          v26 = v52[0];
        }

        v27 += 2;
        v26[2] = v32 + 1;
        *&v26[2 * v32 + 4] = v30;
        --v25;
      }

      while (v25);

      v8 = v45;
      a1 = v46;
    }

    v52[0] = v26;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
    v33 = BidirectionalCollection<>.joined(separator:)();
    v35 = v34;

    *(inited + 224) = &type metadata for String;
    *(inited + 200) = v33;
    *(inited + 208) = v35;
    v9 = v47;
  }

  else
  {
    *(inited + 216) = 0u;
    *(inited + 200) = 0u;
  }

  v36 = sub_10018399C(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039EC60, &qword_1002C1F80);
  v37 = swift_arrayDestroy();
  v38 = *(v8 + 56);
  __chkstk_darwin(v37);
  v44[-2] = v36;
  os_unfair_lock_lock((v38 + 32));
  sub_100029720((v38 + 16));
  os_unfair_lock_unlock((v38 + 32));

  if (v48 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0x3030201u >> (8 * v48);
  }

  sub_100004074(&qword_10039EC58, &unk_1002C1F70);
  v40 = swift_initStackObject();
  v48 = xmmword_1002C1660;
  *(v40 + 16) = xmmword_1002C1660;
  *(v40 + 32) = v39;
  sub_100027F94(v40);
  swift_setDeallocating();
  if (v49 == 32)
  {
    v41 = 6;
  }

  else
  {
    v41 = 7;
  }

  if (v49)
  {
    v42 = v41;
  }

  else
  {
    v42 = 5;
  }

  v43 = swift_initStackObject();
  *(v43 + 16) = v48;
  *(v43 + 32) = v42;
  sub_100027F94(v43);
  swift_setDeallocating();
  if (*(a1 + v9) == 1)
  {
    sub_100027F94(&off_10037E7F8);
  }
}

id sub_100111480(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v75 = a4;
  v74 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A35F0);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v83 = v12;
  v71 = v4;
  v70 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v78 = v69;
    *v16 = 136315906;
    v17 = [v12 transactionUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = UUID.uuidString.getter();
    v72 = v8;
    v20 = v19;
    (*(v72 + 8))(v10, v7);
    v21 = sub_100008F6C(v18, v20, &v78);

    *(v16 + 4) = v21;
    *(v16 + 12) = 1024;
    LODWORD(v21) = [v12 isPINBypassAllowed];

    *(v16 + 14) = v21;
    *(v16 + 18) = 2080;
    v22 = [v12 fingerprint];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = Data.hexString()();
    v27 = v7;
    v28 = v25;
    v12 = v83;
    sub_100009548(v23, v28);
    v29 = sub_100008F6C(v26._countAndFlagsBits, v26._object, &v78);

    *(v16 + 20) = v29;
    *(v16 + 28) = 2080;
    v30 = [v12 pinKekId];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    v35 = (v33 & 0x2000000000000000) == 0;
    v8 = v72;
    if (v35)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v36 = 0x746E6573657270;
    }

    else
    {
      v36 = 0x7974706D65;
    }

    if (v34)
    {
      v37 = 0xE700000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_100008F6C(v36, v37, &v78);

    *(v16 + 30) = v38;
    v7 = v27;
    v39 = v14;
    v40 = &selRef_currencyCode;
    _os_log_impl(&_mh_execute_header, v13, v39, "onSuccessWithInternalTransactionData, transactionUUID: %s, isPINBypassAllowed: %{BOOL}d, fingerprint: %s, pinKekId: %s", v16, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = &selRef_currencyCode;
  }

  v41 = [v12 pinKekId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = Data.init(hexString:)();
  if (v43 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  v72 = v44;
  if (v43 >> 60 == 15)
  {
    v45 = 0xC000000000000000;
  }

  else
  {
    v45 = v43;
  }

  v46 = [v12 pinRequired];
  v47 = [v12 v40[151]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v8 + 8))(v10, v7);
  v48 = String.lowercased()();

  v49 = [v12 isPINBypassAllowed];
  v50 = [v12 fingerprint];
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  LOBYTE(v78) = v46;
  *(&v78 + 1) = v48._countAndFlagsBits;
  *&v79 = v48._object;
  v54 = v74;
  v55 = v75;
  *(&v79 + 1) = v74;
  *&v80 = v75;
  *(&v80 + 1) = v72;
  *&v81 = v45;
  BYTE8(v81) = v49;
  *&v82 = v51;
  *(&v82 + 1) = v53;
  v56 = v73[39];
  sub_10000BE18(v73 + 40, v73[43]);
  v77[3] = &type metadata for InternalTransactionData;
  v57 = swift_allocObject();
  v77[0] = v57;
  v58 = v81;
  v57[3] = v80;
  v57[4] = v58;
  v57[5] = v82;
  v59 = v79;
  v57[1] = v78;
  v57[2] = v59;
  sub_1000094F4(v54, v55);
  sub_1000D7454(&v78, v76);
  type metadata accessor for DefaultManagedDictionary();

  sub_10017A800(v77, 0, sub_1001121E8, v56, 60.0);

  sub_10000959C(v77);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v60 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v62 = *(v60 + 104);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  *(v60 + 104) = v64;
  v65 = v83;
  while (*(v60 + 96) > 0 || *(v60 + 112) == 1)
  {
    result = [*(v60 + 88) wait];
  }

  v66 = *(v60 + 104);
  v63 = __OFSUB__(v66, 1);
  v67 = v66 - 1;
  if (v63)
  {
    goto LABEL_32;
  }

  *(v60 + 104) = v67;
  *(v60 + 112) = 1;
  [*(v60 + 88) unlock];
  *(v60 + 57) = 1;
  sub_100173040();
  [*(v60 + 88) lock];
  *(v60 + 112) = 0;
  [*(v60 + 88) broadcast];
  [*(v60 + 88) unlock];
  v68 = v70;
  if ([v70 respondsToSelector:"onSuccessWithTransactionData:"])
  {
    [v68 onSuccessWithTransactionData:v65];
  }

  return sub_1000D74B0(&v78);
}

void sub_100111BBC()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = [objc_opt_self() sharedHardwareManager];
  v9 = NFHardwareManager.startSecureElementManagerSession(deadline:)();

  v10 = v9;
  sub_100111F34();

  aBlock[4] = sub_10010051C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384098;
  v11 = _Block_copy(aBlock);
  [v10 endSessionWithCompletion:v11];
  _Block_release(v11);

  v7(v6, v0);
  sub_1000278BC();
}

void sub_100111F34()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);
  if (v0)
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000403C(v1, qword_1003A35F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "failed to select PIN applet to clear PAN in NVM", v4, 2u);
    }
  }

  else
  {
    sub_100003ABC();
  }
}

uint64_t sub_100112198()
{

  sub_100009548(*(v0 + 40), *(v0 + 48));
  sub_100009548(*(v0 + 56), *(v0 + 64));
  sub_100009548(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001121F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100112208(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1000F5A28(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_10017CA5C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1000F5A28(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v13;
    sub_1001811FC();
    v13 = v21;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_100180EA4(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_100019D3C((v12[7] + 32 * v13), a4);
  sub_100019D3C(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
}

void **sub_100112354(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void **a16)
{
  v18 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v18);
  v59[3] = &type metadata for SystemRandomNumberGenerator;
  v59[4] = &protocol witness table for SystemRandomNumberGenerator;
  v58[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v58[4] = &off_100384E70;
  aBlock[5] = 0;
  v58[0] = a13;
  a16[9] = 0;
  aBlock[4] = nullsub_1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003840C0;
  _Block_copy(aBlock);
  sub_1001178A0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  a16[37] = DispatchWorkItem.init(flags:block:)();
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v19 = a14;
  v20 = a12;
  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A5460);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = a5;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v25 = 136315394;
    nullsub_1();
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, aBlock);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002C1670;
    v49 = v23;
    v30 = a1;
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;
    *(v29 + 88) = &type metadata for String;
    v31 = a4;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = a4;
    *(v29 + 72) = v24;

    v32 = showFunction(signature:_:)(0xD0000000000000A2, 0x800000010034E540, v29);
    v34 = v33;

    v35 = sub_100008F6C(v32, v34, aBlock);

    *(v25 + 14) = v35;
    v19 = a14;
    _os_log_impl(&_mh_execute_header, v22, v49, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
    v20 = a12;

    v37 = a11;
    v36 = a10;
  }

  else
  {

    v37 = a11;
    v36 = a10;
    v31 = a4;
    v30 = a1;
  }

  a16[2] = v30;
  a16[3] = a2;
  a16[4] = a3;
  a16[5] = v31;
  a16[6] = v24;
  a16[7] = a7;
  a16[8] = a8;
  sub_10000CCE4(a9, (a16 + 10));
  sub_10000CCE4(v36, (a16 + 15));
  sub_10000CCE4(v37, (a16 + 31));
  a16[36] = v20;
  sub_10000CCE4(v58, (a16 + 26));
  a16[20] = v19;
  sub_10000CCE4(v59, (a16 + 21));
  a16[38] = a15;

  v38 = v19;
  v39 = sub_10016D61C();
  if (v39)
  {
    v40 = v39;
    v41 = *(v39 + 24);
    v42 = *(v39 + 32);
    sub_1000094F4(v41, v42);
    v43 = sub_10016FB4C(v41, v42);
    sub_100009548(v41, v42);
    if (v43)
    {
      a16[9] = v40;

      sub_10016E648(v40);

LABEL_9:

      goto LABEL_16;
    }

    sub_10016E2B8();
  }

  if ((a6 & 1) == 0)
  {
    sub_10016CEF8();
    v56 = v47;
    sub_10016DC20(v47);
    sub_10016E648(v56);

    goto LABEL_9;
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Not allowed to create initial identity", v46, 2u);
  }

LABEL_16:
  sub_10000959C(v37);
  sub_10000959C(v36);
  sub_10000959C(a9);
  sub_10000959C(v59);
  sub_10000959C(v58);
  return a16;
}

uint64_t *sub_100112CE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v76 = *a16;
  v129 = type metadata accessor for MPOCDefaultMonitorManager();
  v130 = &off_100382710;
  *&v128 = a1;
  v126 = type metadata accessor for MPOCDefaultAttestationManager();
  v127 = &off_100380AA8;
  *&v125 = a2;
  v123 = type metadata accessor for CertificateManager(0);
  v124 = &off_100381288;
  *&v122 = a5;
  v120 = type metadata accessor for SignerFactory();
  v121 = &off_100385348;
  *&v119 = a6;
  v118 = &off_100384E70;
  v117 = type metadata accessor for DefaultSecureTimeKeeper();
  *&v116 = a7;
  v115 = &off_100386190;
  v114 = type metadata accessor for DefaultManagedDictionary();
  *&v113 = a10;
  v112 = &off_100386330;
  v111 = type metadata accessor for SystemInfo();
  *&v110 = a11;
  v109 = &off_1003849A0;
  v108 = type metadata accessor for SecureElement();
  *&v107 = a12;
  v106 = &off_100380E88;
  v105 = type metadata accessor for ProfileManager();
  *&v104 = a14;
  v102 = type metadata accessor for LaunchFeedbackFramework();
  v103 = &off_1003823C0;
  *&v101 = a15;
  a16[61] = 0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A35F0);
  sub_10000CCE4(&v128, v99);
  sub_10000CCE4(&v125, v97);
  sub_10000CCE4(&v122, v95);
  sub_10000CCE4(&v119, v93);
  sub_10000CCE4(&v116, v91);
  v22 = a8;
  sub_10000CCE4(a8, v89);
  sub_10000CCE4(&v113, v87);
  sub_10000CCE4(&v110, v85);
  sub_10000CCE4(&v107, v83);
  sub_10000CCE4(&v104, v81);
  v23 = a4;
  v24 = a9;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = _typeName(_:qualified:)();
    v30 = sub_100008F6C(v28, v29, &v80);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C7760;
    v32 = v100;
    v33 = sub_10000BE18(v99, v100);
    *(v31 + 56) = v32;
    v34 = sub_10000BE5C((v31 + 32));
    (*(*(v32 - 8) + 16))(v34, v33, v32);
    v35 = v98;
    v36 = sub_10000BE18(v97, v98);
    *(v31 + 88) = v35;
    v37 = sub_10000BE5C((v31 + 64));
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    *(v31 + 120) = &type metadata for Int;
    *(v31 + 96) = a3;
    v38 = [v23 name];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = (v31 + 128);
      *(v31 + 152) = &type metadata for String;
      if (v42)
      {
LABEL_10:
        *v43 = v40;
        *(v31 + 136) = v42;
        v47 = v96;
        v48 = sub_10000BE18(v95, v96);
        *(v31 + 184) = v47;
        v49 = sub_10000BE5C((v31 + 160));
        (*(*(v47 - 8) + 16))(v49, v48, v47);
        v50 = v94;
        v51 = sub_10000BE18(v93, v94);
        *(v31 + 216) = v50;
        v52 = sub_10000BE5C((v31 + 192));
        (*(*(v50 - 8) + 16))(v52, v51, v50);
        v53 = v92;
        v54 = sub_10000BE18(v91, v92);
        *(v31 + 248) = v53;
        v55 = sub_10000BE5C((v31 + 224));
        (*(*(v53 - 8) + 16))(v55, v54, v53);
        v56 = v90;
        v57 = sub_10000BE18(v89, v90);
        *(v31 + 280) = v56;
        v58 = sub_10000BE5C((v31 + 256));
        (*(*(v56 - 8) + 16))(v58, v57, v56);
        *(v31 + 312) = type metadata accessor for ReaderAnalytics(0);
        v24 = a9;
        *(v31 + 288) = a9;
        v59 = v88;
        v60 = sub_10000BE18(v87, v88);
        *(v31 + 344) = v59;
        v61 = sub_10000BE5C((v31 + 320));
        (*(*(v59 - 8) + 16))(v61, v60, v59);
        v62 = v86;
        v63 = sub_10000BE18(v85, v86);
        *(v31 + 376) = v62;
        v64 = sub_10000BE5C((v31 + 352));
        (*(*(v62 - 8) + 16))(v64, v63, v62);
        v65 = v84;
        v66 = sub_10000BE18(v83, v84);
        *(v31 + 408) = v65;
        v67 = sub_10000BE5C((v31 + 384));
        (*(*(v65 - 8) + 16))(v67, v66, v65);
        *(v31 + 440) = &type metadata for Bool;
        v44 = a13 & 1;
        *(v31 + 416) = a13 & 1;
        v68 = v82;
        v69 = sub_10000BE18(v81, v82);
        *(v31 + 472) = v68;
        v70 = sub_10000BE5C((v31 + 448));
        (*(*(v68 - 8) + 16))(v70, v69, v68);

        v71 = showFunction(signature:_:)(0xD0000000000000ECLL, 0x800000010034E8C0, v31);
        v73 = v72;

        sub_10000959C(v99);
        sub_10000959C(v97);
        sub_10000959C(v95);
        sub_10000959C(v93);
        sub_10000959C(v91);
        sub_10000959C(v89);
        sub_10000959C(v87);
        sub_10000959C(v85);
        sub_10000959C(v83);
        sub_10000959C(v81);
        v74 = sub_100008F6C(v71, v73, &v80);

        *(v27 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v27, 0x16u);
        swift_arrayDestroy();

        v22 = a8;
        goto LABEL_11;
      }
    }

    else
    {
      v43 = (v31 + 128);
      *(v31 + 152) = &type metadata for String;
    }

    v45 = [v23 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v46;

    goto LABEL_10;
  }

  sub_10000959C(v99);
  sub_10000959C(v97);
  sub_10000959C(v95);
  sub_10000959C(v93);
  sub_10000959C(v91);
  sub_10000959C(v89);
  sub_10000959C(v87);
  sub_10000959C(v85);
  sub_10000959C(v83);
  sub_10000959C(v81);
  v44 = a13 & 1;
LABEL_11:
  sub_100029790(&v128, (a16 + 2));
  sub_100029790(&v125, (a16 + 7));
  a16[12] = a3;
  a16[13] = v23;
  sub_100029790(&v122, (a16 + 14));
  sub_100029790(&v119, (a16 + 19));
  sub_100029790(&v116, (a16 + 24));
  sub_100029790(v22, (a16 + 34));
  a16[39] = v24;
  sub_100029790(&v113, (a16 + 40));
  sub_100029790(&v110, (a16 + 45));
  sub_100029790(&v107, (a16 + 56));
  *(a16 + 440) = v44;
  sub_100029790(&v104, (a16 + 50));
  sub_100029790(&v101, (a16 + 29));
  return a16;
}

uint64_t *sub_10011362C(uint64_t *a1)
{
  v3 = a1;
  sub_1000E6B70(v154);
  if (v1)
  {
  }

  else
  {
    sub_1000E31EC(v153);
    sub_1000E8A64(v152);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = type metadata accessor for Settings(0);
    v7 = *&v5[*(v6 + 32)];
    sub_1000E7D9C(v151);
    sub_1000E9D90(v150);
    sub_1000E4518(v149);
    v8 = v155;
    v9 = v156;
    sub_10000BE18(v154, v155);
    sub_1000C289C(4u, v8, v9);
    sub_1000ED664();
    v11 = v10;
    sub_1000E972C(v147);
    sub_1000E90C8(v146);
    sub_1000E5844(v145);
    v157 = v5[*(v6 + 60)];
    sub_1000E8400(v144);
    sub_1000EAA58(v143);
    v111 = [objc_allocWithZone(NSOperationQueue) init];
    [v111 setMaxConcurrentOperationCount:1];
    [v111 setQualityOfService:33];
    v12 = sub_100022438(v153, v153[3]);
    v114 = &v86;
    __chkstk_darwin(v12);
    v103 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))();
    v15 = sub_100022438(v152, v152[3]);
    v113 = &v86;
    __chkstk_darwin(v15);
    v102 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))();
    v18 = sub_100022438(v151, v151[3]);
    v112 = &v86;
    __chkstk_darwin(v18);
    v101 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))();
    v21 = sub_100022438(v150, v150[3]);
    v110 = &v86;
    __chkstk_darwin(v21);
    v100 = (&v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))();
    v24 = sub_100022438(v149, v149[3]);
    v109 = &v86;
    __chkstk_darwin(v24);
    v99 = (&v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = sub_100022438(v147, v147[3]);
    v108 = &v86;
    __chkstk_darwin(v27);
    v98 = (&v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))();
    v30 = sub_100022438(v146, v146[3]);
    v107 = &v86;
    __chkstk_darwin(v30);
    v97 = (&v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))();
    v33 = sub_100022438(v145, v145[3]);
    v106 = &v86;
    __chkstk_darwin(v33);
    v96 = (&v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))();
    v36 = sub_100022438(v144, v144[3]);
    v105 = &v86;
    __chkstk_darwin(v36);
    v38 = (&v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = sub_100022438(v143, v143[3]);
    v104 = &v86;
    __chkstk_darwin(v40);
    v42 = (&v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v103;
    v45 = *v102;
    v46 = *v100;
    v94 = *v101;
    v95 = v46;
    v47 = *v98;
    v99 = *v99;
    v100 = v47;
    v48 = *v96;
    v101 = *v97;
    v102 = v48;
    v49 = *v38;
    v103 = *v42;
    v50 = type metadata accessor for MPOCDefaultMonitorManager();
    v142[4] = &off_100382710;
    v142[3] = v50;
    v142[0] = v44;
    v51 = type metadata accessor for MPOCDefaultAttestationManager();
    v141 = &off_100380AA8;
    v140 = v51;
    v139[0] = v45;
    v52 = type metadata accessor for CertificateManager(0);
    v138 = &off_100381288;
    v137 = v52;
    v136[0] = v94;
    v134 = type metadata accessor for SignerFactory();
    v135 = &off_100385348;
    v133[0] = v95;
    v131 = type metadata accessor for DefaultSecureTimeKeeper();
    v132 = &off_100384E70;
    v130[0] = v99;
    v128 = type metadata accessor for DefaultManagedDictionary();
    v129 = &off_100386190;
    v127[0] = v100;
    v125 = type metadata accessor for SystemInfo();
    v126 = &off_100386330;
    v124[0] = v101;
    v122 = type metadata accessor for SecureElement();
    v123 = &off_1003849A0;
    v121[0] = v102;
    v119 = type metadata accessor for ProfileManager();
    v120 = &off_100380E88;
    v118[0] = v49;
    v116 = type metadata accessor for LaunchFeedbackFramework();
    v117 = &off_1003823C0;
    v115[0] = v103;
    type metadata accessor for Reader();
    v101 = swift_allocObject();
    v53 = sub_100022438(v142, v50);
    v103 = &v86;
    __chkstk_darwin(v53);
    v99 = (&v86 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))();
    v56 = sub_100022438(v139, v140);
    v102 = &v86;
    __chkstk_darwin(v56);
    v97 = (&v86 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))();
    v59 = sub_100022438(v136, v137);
    v100 = &v86;
    __chkstk_darwin(v59);
    v95 = (&v86 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))();
    v62 = sub_100022438(v133, v134);
    v98 = &v86;
    __chkstk_darwin(v62);
    v93 = (&v86 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))();
    v65 = sub_100022438(v130, v131);
    v96 = &v86;
    __chkstk_darwin(v65);
    v91 = (&v86 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))();
    v68 = sub_100022438(v127, v128);
    v94 = &v86;
    __chkstk_darwin(v68);
    v89 = (&v86 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))();
    v71 = sub_100022438(v124, v125);
    v92 = &v86;
    __chkstk_darwin(v71);
    v87 = (&v86 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))();
    v74 = sub_100022438(v121, v122);
    v90 = &v86;
    __chkstk_darwin(v74);
    v76 = (&v86 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v78 = sub_100022438(v118, v119);
    v88 = &v86;
    __chkstk_darwin(v78);
    v80 = (&v86 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))(v80);
    v82 = sub_100022438(v115, v116);
    v86 = &v86;
    __chkstk_darwin(v82);
    v84 = (&v86 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    v3 = sub_100112CE0(*v99, *v97, v7, v111, *v95, *v93, *v91, &v148, v11, *v89, *v87, *v76, v157, *v80, *v84, v101);

    sub_10000959C(v115);
    sub_10000959C(v118);
    sub_10000959C(v121);
    sub_10000959C(v124);
    sub_10000959C(v127);
    sub_10000959C(v130);
    sub_10000959C(v133);
    sub_10000959C(v136);
    sub_10000959C(v139);
    sub_10000959C(v142);
    sub_10000959C(v143);
    sub_10000959C(v144);
    sub_10000959C(v145);
    sub_10000959C(v146);
    sub_10000959C(v147);
    sub_10000959C(v149);
    sub_10000959C(v150);
    sub_10000959C(v151);
    sub_10000959C(v152);
    sub_10000959C(v153);
    sub_10000959C(v154);
  }

  return v3;
}

id sub_100114908()
{
  v0 = [objc_opt_self() sharedHardwareManager];
  v5 = 0;
  v1 = [v0 startSecureElementReaderSessionAndReturnError:&v5];

  v2 = v5;
  if (!v1)
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v1;
}

void *sub_1001149DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v116[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v116];

  if (!v8)
  {
    v22 = v116[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v9 = v116[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A35F0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "trxBlob.isEmpty or could not deserialize trxBlob to JSON", v20, 2u);
    }

    sub_1000207FC(4034, 0xD000000000000038, 0x800000010034E440, 0);
    return swift_willThrow();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v12 = sub_1000F5A28(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v12, v116);
      if (swift_dynamicCast())
      {
        v15 = v113;
        v16 = v114;
        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_24:
  sub_100176DD8(v15, v16, __src);
  if (v3)
  {

    swift_errorRetain();
    sub_1000207FC(4034, 0x546E6F6973736573, 0xEC0000006E656B6FLL, v3);

    swift_willThrow();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v23 = __src[10];
  v24 = __src[11];
  v25 = HIBYTE(__src[11]) & 0xFLL;
  if ((__src[11] & 0x2000000000000000) == 0)
  {
    v25 = __src[10] & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v42 = 0xD00000000000001BLL;
    v43 = 0x800000010034E4C0;
LABEL_48:
    sub_1000207FC(4034, v42, v43, 0);
    swift_willThrow();
    return sub_10008C3EC(__src);
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (!*(v113 + 16) || (v29 = v26, , v30 = sub_1000F5A28(v29, v28), v32 = v31, , (v32 & 1) == 0) || (sub_10000BDA4(*(v113 + 56) + 32 * v30, v116), (swift_dynamicCast() & 1) == 0))
  {
LABEL_47:

    v42 = 0x746361736E617274;
    v43 = 0xED000064496E6F69;
    goto LABEL_48;
  }

  v33 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v33 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_47;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

LABEL_50:

    v42 = 0x7472654364736163;
    v43 = 0xEF65746163696669;
    goto LABEL_48;
  }

  v108 = v23;
  v36 = sub_1000F5A28(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v36, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v39 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v39 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39 || (, v40 = Data.init(hexString:)(), v41 >> 60 == 15))
  {

    goto LABEL_50;
  }

  v106 = v40;
  v107 = v41;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

LABEL_61:

    sub_1000207FC(4034, 0x7473657474416573, 0xED00006E6F697461, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    return sub_10001A074(v106, v107);
  }

  v105 = sub_1000F5A28(v44, v45);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v105, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v48 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v48 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48 || (v103 = Data.init(base64Encoded:options:)(), v104 = v49, v49 >> 60 == 15))
  {

    goto LABEL_61;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_71;
  }

  v52 = sub_1000F5A28(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_71:

LABEL_74:

    sub_1000207FC(4034, 0x64496B654B6E6170, 0xE800000000000000, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    sub_10001A074(v106, v107);
    return sub_10001A074(v103, v104);
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v52, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_73;
  }

  v55 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v55 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55 || (, v101 = Data.init(hexString:)(), v102 = v56, v56 >> 60 == 15))
  {

LABEL_73:

    goto LABEL_74;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_90;
  }

  v59 = sub_1000F5A28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_90:

LABEL_94:

    v71 = 0xD000000000000015;
    v72 = 0x800000010034E480;
LABEL_95:
    sub_1000207FC(4034, v71, v72, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    sub_10001A074(v106, v107);
    sub_10001A074(v103, v104);
    return sub_10001A074(v101, v102);
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v59, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_93:

    goto LABEL_94;
  }

  v62 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v62 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    goto LABEL_93;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_97;
  }

  v65 = sub_1000F5A28(v63, v64);
  v67 = v66;

  if ((v67 & 1) == 0)
  {
LABEL_97:

LABEL_100:

    v72 = 0x800000010034E4A0;
    v71 = 0xD000000000000012;
    goto LABEL_95;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v65, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_99;
  }

  v68 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v68 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v68 || (v69 = Data.init(base64Encoded:options:)(), v99 = v70, v100 = v69, v70 >> 60 == 15))
  {

LABEL_99:

    goto LABEL_100;
  }

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v75 = sub_1000F5A28(v73, v74);
    v77 = v76;

    if (v77)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v75, v116);
      if ((swift_dynamicCast() & 1) != 0 && v112 != 2)
      {
        goto LABEL_112;
      }
    }
  }

  else
  {
  }

  v112 = 1;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_10000403C(v78, qword_1003A35F0);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 67109120;
    swift_beginAccess();
    *(v81 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v79, v80, "trxBlob missing isPinSupported. Set to: %{BOOL}d", v81, 8u);
  }

LABEL_112:
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v84 = sub_1000F5A28(v82, v83);
    v86 = v85;

    if (v86)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v84, v116);
      if ((swift_dynamicCast() & 1) != 0 && v111 != 2)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
  }

  v111 = 0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_10000403C(v87, qword_1003A35F0);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67109120;
    swift_beginAccess();
    *(v90 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "trxBlob missing isPINBypassEnabled. Set to: %{BOOL}d", v90, 8u);
  }

LABEL_123:
  result = swift_beginAccess();
  if (v112 == 2)
  {
    __break(1u);
    goto LABEL_137;
  }

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_133;
  }

  v93 = sub_1000F5A28(v91, v92);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
LABEL_133:
    v97 = 0;
    v98 = 0;
    goto LABEL_134;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v93, v116);
  v96 = swift_dynamicCast();
  if (v96)
  {
    v97 = v109;
  }

  else
  {
    v97 = 0;
  }

  if (v96)
  {
    v98 = v110;
  }

  else
  {
    v98 = 0;
  }

LABEL_134:
  result = swift_beginAccess();
  if (v111 != 2)
  {

    result = memcpy(a3, __dst, 0x110uLL);
    *(a3 + 272) = v108;
    *(a3 + 280) = v24;
    *(a3 + 288) = v113;
    *(a3 + 296) = v114;
    *(a3 + 304) = v106;
    *(a3 + 312) = v107;
    *(a3 + 320) = v103;
    *(a3 + 328) = v104;
    *(a3 + 336) = v101;
    *(a3 + 344) = v102;
    *(a3 + 352) = v113;
    *(a3 + 360) = v114;
    *(a3 + 368) = v100;
    *(a3 + 376) = v99;
    *(a3 + 384) = v112 & 1;
    *(a3 + 392) = v97;
    *(a3 + 400) = v98;
    *(a3 + 408) = v111 & 1;
    return result;
  }

LABEL_137:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void *sub_100115998@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v99[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v99];

  if (!v8)
  {
    v23 = v99[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v9 = v99[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A35F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "pinBlob.isEmpty or could not deserialize pinBlob to JSON", v21, 2u);
    }

    sub_1000207FC(4032, 0xD000000000000038, 0x800000010034E210, 0);
    return swift_willThrow();
  }

  v10 = v96;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

LABEL_23:
    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_24;
  }

  v13 = sub_1000F5A28(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v13, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = v96;
  v17 = v97;
LABEL_24:
  sub_100176DD8(v16, v17, __src);
  if (v3)
  {

    swift_errorRetain();
    sub_1000207FC(4032, 0x206E6F6973736573, 0xED00006E656B6F74, v3);

    swift_willThrow();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {
    goto LABEL_38;
  }

  v26 = sub_1000F5A28(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v26, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v96;
  v29 = v97;
  v31 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v31 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
LABEL_38:

LABEL_39:

    v41 = 0x800000010034E250;
    v42 = 0xD00000000000001ELL;
LABEL_40:
    sub_1000207FC(4032, v42, v41, 0);
    swift_willThrow();
    return sub_10008C3EC(__src);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

LABEL_42:

    v43 = "missing or empty transactionId";
    v42 = 0xD000000000000013;
LABEL_43:
    v41 = (v43 | 0x8000000000000000);
    goto LABEL_40;
  }

  v34 = sub_1000F5A28(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v34, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v95)
  {

    v86 = 0;
    v87 = 0;
    v89 = 0;
    v90 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v91 = 0;
    v92 = 0;
    v40 = 0;
LABEL_37:
    result = memcpy(a3, __dst, 0x110uLL);
    a3[34] = v30;
    a3[35] = v29;
    a3[36] = v87;
    a3[37] = v86;
    a3[38] = v90;
    a3[39] = v89;
    a3[40] = v37;
    a3[41] = v38;
    a3[42] = v39;
    a3[43] = v92;
    a3[44] = v40;
    a3[45] = v91;
    return result;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

    goto LABEL_81;
  }

  v46 = sub_1000F5A28(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_81:

LABEL_82:

    v43 = "missing isPinBypass";
    v42 = 0xD000000000000019;
    goto LABEL_43;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v46, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v88 = v10;
  v49 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v49 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_85;
  }

  v84 = Data.init(hexString:)();
  v85 = v50;
  if (v50 >> 60 == 15)
  {
LABEL_85:

    goto LABEL_82;
  }

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {
    goto LABEL_88;
  }

  v53 = sub_1000F5A28(v51, v52);
  v55 = v54;

  if ((v55 & 1) == 0)
  {
    goto LABEL_89;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v53, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_89;
  }

  v56 = HIBYTE(v94) & 0xF;
  v92 = v94;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v56 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_88:

LABEL_89:

    v81 = 0x800000010034E2B0;
    v82 = 0xD00000000000001ELL;
LABEL_90:
    sub_1000207FC(4032, v82, v81, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    return sub_10001A074(v84, v85);
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v88 + 16))
  {
    goto LABEL_93;
  }

  v59 = sub_1000F5A28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v59, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v62 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v62 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
LABEL_93:

    goto LABEL_94;
  }

  v83 = Data.init(base64Encoded:options:)();
  v64 = v63;

  v91 = v64;
  if (v64 >> 60 == 15)
  {
LABEL_94:

    v82 = 0xD00000000000001BLL;
    v81 = 0x800000010034E2D0;
    goto LABEL_90;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v88 + 16))
  {
    goto LABEL_97;
  }

  v67 = sub_1000F5A28(v65, v66);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    goto LABEL_98;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v67, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  v70 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v70 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v90 = Data.init(base64Encoded:options:)();
    v72 = v71;

    v89 = v72;
    if (v72 >> 60 != 15)
    {
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v88 + 16))
      {
        v75 = sub_1000F5A28(v73, v74);
        v77 = v76;

        if (v77)
        {
          sub_10000BDA4(*(v88 + 56) + 32 * v75, &v96);

          if (swift_dynamicCast())
          {
            v78 = HIBYTE(v94) & 0xF;
            if ((v94 & 0x2000000000000000) == 0)
            {
              v78 = v93 & 0xFFFFFFFFFFFFLL;
            }

            if (v78)
            {
              v79 = Data.init(hexString:)();
              if (v80 >> 60 != 15)
              {
                v37 = v84;
                v38 = v85;
                v40 = v83;
                v39 = v93;
                v86 = v80;
                v87 = v79;
                goto LABEL_37;
              }
            }

            else
            {
            }
          }

          goto LABEL_104;
        }
      }

      else
      {
      }

LABEL_104:

      sub_1000207FC(4032, 0xD000000000000020, 0x800000010034E310, 0);
      swift_willThrow();
      sub_10008C3EC(__src);
      sub_10001A074(v90, v72);
      goto LABEL_99;
    }
  }

  else
  {
LABEL_97:
  }

LABEL_98:

  sub_1000207FC(4032, 0xD00000000000001ELL, 0x800000010034E2F0, 0);
  swift_willThrow();
  sub_10008C3EC(__src);
LABEL_99:
  sub_10001A074(v84, v85);
  return sub_10001A074(v83, v91);
}

uint64_t sub_1001164D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = a3;
  v99 = type metadata accessor for TLVTag();
  v5 = *(v99 - 8);
  __chkstk_darwin(v99);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v87 - v13;
  __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = type metadata accessor for TLV();
  v100 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094F4(a1, a2);
  v20 = v101;
  result = TLV.init(dataRepresentation:)();
  if (!v20)
  {
    v96 = v14;
    v94 = v11;
    v101 = 0;
    static TLVTag.blobInformation.getter();
    TLV.firstChild(tag:)();
    v24 = *(v5 + 8);
    v23 = v5 + 8;
    v22 = v24;
    v25 = v99;
    v24(v7, v99);
    v97 = *(v100 + 48);
    v26 = v19;
    if (v97(v16, 1, v17) == 1)
    {
      sub_10000BD44(v16, &unk_10039E210, &unk_1002C65B0);
      v27 = v100;
LABEL_19:
      sub_1000207FC(4047, 0xD00000000000002FLL, 0x800000010034E340, 0);
      swift_willThrow();
      return (*(v27 + 8))(v26, v17);
    }

    v91 = v22;
    v92 = v7;
    v93 = v23;
    v95 = TLV.value.getter();
    v29 = v28;
    v30 = v100;
    v31 = *(v100 + 8);
    v31(v16, v17);
    v32 = v29;
    v33 = v29 >> 62;
    v27 = v30;
    if ((v29 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v35 = v95;
        goto LABEL_18;
      }

      v34 = v95;
      v37 = *(v95 + 16);
      v36 = *(v95 + 24);
      v38 = __OFSUB__(v36, v37);
      v39 = v36 - v37;
      if (!v38)
      {
        if (v39 != 2)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }

      __break(1u);
    }

    else
    {
      if (!v33)
      {
        v34 = v95;
        if (BYTE6(v32) != 2)
        {
LABEL_7:
          v35 = v34;
LABEL_18:
          sub_100009548(v35, v32);
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v34 = v95;
      if (!__OFSUB__(HIDWORD(v95), v95))
      {
        if (HIDWORD(v95) - v95 != 2)
        {
          goto LABEL_7;
        }

LABEL_11:
        v105[3] = &type metadata for Data;
        v105[4] = &protocol witness table for Data;
        v105[0] = v34;
        v105[1] = v32;
        v100 = v32;
        v40 = sub_10000BE18(v105, &type metadata for Data);
        v41 = *v40;
        v42 = v40[1];
        v43 = v42 >> 62;
        v90 = v17;
        v89 = v31;
        if ((v42 >> 62) > 1)
        {
          if (v43 != 2)
          {
            memset(v102, 0, 14);
            sub_1000094F4(v34, v100);
            v44 = v102;
            v45 = v102;
            goto LABEL_40;
          }

          v46 = *(v41 + 16);
          v88 = *(v41 + 24);
          sub_1000094F4(v34, v100);
          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v48 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v48))
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v47 += v46 - v48;
          }

          v38 = __OFSUB__(v88, v46);
          v49 = v88 - v46;
          if (!v38)
          {
            v50 = __DataStorage._length.getter();
            if (v50 >= v49)
            {
              v51 = v49;
            }

            else
            {
              v51 = v50;
            }

LABEL_35:
            v56 = (v51 + v47);
            if (v47)
            {
              v45 = v56;
            }

            else
            {
              v45 = 0;
            }

            v44 = v47;
            goto LABEL_40;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (!v43)
        {
          v102[0] = v41;
          LOWORD(v102[1]) = v42;
          BYTE2(v102[1]) = BYTE2(v42);
          BYTE3(v102[1]) = BYTE3(v42);
          BYTE4(v102[1]) = BYTE4(v42);
          BYTE5(v102[1]) = BYTE5(v42);
          sub_1000094F4(v34, v100);
          v44 = v102;
          v45 = v102 + BYTE6(v42);
LABEL_40:
          v57 = v101;
          sub_10014B4B8(v44, v45, &v103);
          v101 = v57;
          v58 = v103;
          v59 = v104;
          sub_1000094F4(v103, v104);
          sub_10000959C(v105);
          v60 = Data._Representation.subscript.getter();
          sub_100009548(v58, v59);
          sub_100009548(v58, v59);
          if ((v60 & 0x80) == 0)
          {
            sub_1000207FC(4047, 0xD000000000000035, 0x800000010034E370, 0);
            swift_willThrow();
            sub_100009548(v34, v100);
            return v89(v26, v90);
          }

          v61 = 0xEA00000000004342;
          v62 = (v60 >> 4) & 7;
          if (v62)
          {
            if (v62 == 2)
            {
              v61 = 0xE500000000000000;
              v63 = 0x342D4F5349;
            }

            else if (v62 == 1)
            {
              v63 = 0x432D363532534541;
            }

            else
            {
              v61 = 0x800000010034E3B0;
              v63 = 0xD000000000000021;
            }

            v87 = v63;
          }

          else
          {
            v87 = 0x432D383231534541;
          }

          v64 = v92;
          static TLVTag.cipherBlobIVOrSalt.getter();
          v65 = v96;
          TLV.firstChild(tag:)();
          v91(v64, v25);
          v66 = v65;
          v67 = v90;
          if (v97(v65, 1, v90) == 1)
          {

            sub_10000BD44(v65, &unk_10039E210, &unk_1002C65B0);
LABEL_65:
            sub_1000207FC(4047, 0xD00000000000002BLL, 0x800000010034E3E0, 0);
            swift_willThrow();
            sub_100009548(v95, v100);
            return v89(v26, v90);
          }

          v88 = TLV.value.getter();
          v69 = v68;
          v89(v66, v67);
          v70 = v69 >> 62;
          if ((v69 >> 62) > 1)
          {
            v71 = v98;
            if (v70 != 2)
            {
              goto LABEL_64;
            }

            v74 = *(v88 + 16);
            v73 = *(v88 + 24);
            v38 = __OFSUB__(v73, v74);
            v72 = v73 - v74;
            if (!v38)
            {
LABEL_61:
              if (v72 == 16)
              {
                v98 = v69;
                v75 = v92;
                static TLVTag.cipheredData.getter();
                v76 = v94;
                TLV.firstChild(tag:)();
                v77 = v25;
                v78 = v76;
                v91(v75, v77);
                v79 = v76;
                v80 = v90;
                if (v97(v79, 1, v90) == 1)
                {

                  sub_10000BD44(v78, &unk_10039E210, &unk_1002C65B0);
                  sub_1000207FC(4047, 0xD000000000000025, 0x800000010034E410, 0);
                  swift_willThrow();
                  sub_100009548(v88, v98);
                  sub_100009548(v95, v100);
                  return v89(v26, v80);
                }

                else
                {
                  v81 = TLV.value.getter();
                  v83 = v82;
                  sub_100009548(v95, v100);
                  v84 = v26;
                  v85 = v89;
                  v89(v84, v80);
                  result = v85(v78, v80);
                  *v71 = v87;
                  v71[1] = v61;
                  v86 = v98;
                  v71[2] = v88;
                  v71[3] = v86;
                  v71[4] = v81;
                  v71[5] = v83;
                }

                return result;
              }

LABEL_64:

              sub_100009548(v88, v69);
              goto LABEL_65;
            }

            __break(1u);
          }

          else
          {
            v71 = v98;
            if (!v70)
            {
              v72 = BYTE6(v69);
              goto LABEL_61;
            }
          }

          LODWORD(v72) = HIDWORD(v88) - v88;
          if (!__OFSUB__(HIDWORD(v88), v88))
          {
            v72 = v72;
            goto LABEL_61;
          }

LABEL_73:
          __break(1u);
        }

        v52 = v41;
        v53 = v41 >> 32;
        v88 = v53 - v52;
        if (v53 >= v52)
        {
          sub_1000094F4(v34, v100);
          v47 = __DataStorage._bytes.getter();
          if (!v47)
          {
            goto LABEL_33;
          }

          v54 = __DataStorage._offset.getter();
          if (!__OFSUB__(v52, v54))
          {
            v47 += v52 - v54;
LABEL_33:
            v55 = __DataStorage._length.getter();
            v51 = v88;
            if (v55 < v88)
            {
              v51 = v55;
            }

            goto LABEL_35;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  return result;
}

uint64_t sub_100116ED8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v2 = sub_1000F5A28(0x64496B656BLL, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v2, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v4 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_26:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining kekId from txnBlobJson";
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v5 = sub_1000F5A28(0xD000000000000013, 0x800000010034DF40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v5, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v7 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_32:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000403C(v20, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining transactionDataBlob from txnBlobJson";
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v8 = sub_1000F5A28(0xD000000000000011, 0x800000010034DF60);
  if ((v9 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v8, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v10 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v10 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_36:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining seAttestationBlob from txnBlobJson";
    goto LABEL_30;
  }

  if (*(a1 + 16))
  {
    v11 = sub_1000F5A28(0x7472654364736163, 0xEF65746163696669);
    if (v12)
    {
      sub_10000BDA4(*(a1 + 56) + 32 * v11, v25);
      if (swift_dynamicCast())
      {

        v13 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v13 = *v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          return 1;
        }
      }
    }
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000403C(v22, qword_1003A35F0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining casdCertificate from txnBlobJson";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);
  }

LABEL_31:

  return 0;
}

double sub_100117364(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001173FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011753C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100117574()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001175BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001175FC()
{

  sub_10000959C((v0 + 80));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1001176AC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100117734()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10011779C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100117840()
{

  sub_10000959C((v0 + 24));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001178A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001178E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100117900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

double sub_1001179B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 56) = (a2 - 1);
  }

  return result;
}

__n128 sub_1001179F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100117A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 409))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 409) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 409) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117D08()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3808);
  sub_10000403C(v0, qword_1003A3808);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

void sub_100117D74(void *a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t))
{
  v247 = a2;
  v4 = v3;
  v259 = a3;
  v6 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v7 = __chkstk_darwin(v6 - 8);
  v241 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v240 = &v230 - v10;
  v11 = __chkstk_darwin(v9);
  v243 = &v230 - v12;
  __chkstk_darwin(v11);
  v246 = &v230 - v13;
  v14 = type metadata accessor for UUID();
  v250 = *(v14 - 8);
  v251 = v14;
  v15 = __chkstk_darwin(v14);
  v245 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v249 = (&v230 - v17);
  v256 = type metadata accessor for URL();
  v252 = *(v256 - 8);
  __chkstk_darwin(v256);
  v19 = &v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v20 - 8);
  v253 = &v230 - v21;
  v258 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes) = 0;
  v22 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);
  *v22 = 0;
  v22[1] = 0;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF) = 0;
  v23 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid);
  *v23 = 0;
  v23[1] = 0;
  v244 = v23;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs) = _swiftEmptyArrayStorage;
  v24 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID);
  *v24 = 0;
  v24[1] = 0;
  v242 = v24;
  if (qword_10039D620 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000403C(v25, qword_1003A3808);
  v27 = a1;
  v254 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v255 = v19;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v257 = v4;
    v32 = v27;
    v33 = v31;
    v262[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = _typeName(_:qualified:)();
    v36 = sub_100008F6C(v34, v35, v262);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1002C1660;
    *(v37 + 56) = sub_10000411C(0, &qword_1003A3A88, SPRReadParameters_ptr);
    *(v37 + 32) = v32;
    v38 = v32;
    v39 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034EF00, v37);
    v41 = v40;

    v42 = sub_100008F6C(v39, v41, v262);

    *(v33 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.%s", v33, 0x16u);
    swift_arrayDestroy();

    v27 = v32;
    v4 = v257;
  }

  v43 = 0x64696C61766E69;
  [v27 mode];
  if (SPRReaderMode.description.getter() == 0x64696C61766E69 && v44 == 0xE700000000000000)
  {

LABEL_9:

    v46 = 0xD000000000000012;
    v47 = 0x800000010034EEE0;
    v48 = 4017;
    goto LABEL_10;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
    goto LABEL_9;
  }

  *(v4 + 16) = [v27 mode];
  [v27 transactionType];
  if (SPRTransactionType.description.getter() == 0x64696C61766E69 && v49 == 0xE700000000000000)
  {

LABEL_17:

    sub_1000207FC(4000, 0xD000000000000017, 0x800000010034EEC0, 0);
    swift_willThrow();

    goto LABEL_11;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_17;
  }

  *(v4 + 72) = [v27 transactionType];
  v51 = [v27 timeoutReadPay];
  *(v4 + 112) = v51;
  v257 = v4;
  if ((v51 - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v52 = v27;
    v53 = v27;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134218240;
      *(v56 + 4) = [v53 timeoutReadPay];

      *(v56 + 12) = 2048;
      *(v56 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v54, v55, "Input timeoutReadPay of %ld was invalid. Using maximum of %ld.", v56, 0x16u);
    }

    else
    {

      v54 = v53;
    }

    v57 = v257;
    *(v257 + 112) = 40;
    v27 = v52;
    v4 = v57;
  }

  v58 = &selRef_currencyCode;
  v59 = [v27 timeoutReadVas];
  *(v4 + 120) = v59;
  if ((v59 - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v60 = v27;
    v61 = v27;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134218240;
      *(v64 + 4) = [v61 timeoutReadVas];

      *(v64 + 12) = 2048;
      *(v64 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v62, v63, "Input timeoutReadVas of %ld was invalid. Using maximum of %ld.", v64, 0x16u);
    }

    else
    {

      v62 = v61;
    }

    v65 = v257;
    *(v257 + 120) = 40;
    v27 = v60;
    v4 = v65;
  }

  if ([v27 mode] - 1 <= 2)
  {
    v66 = [v27 vasRequests];
    sub_10000411C(0, &qword_1003A3A80, SPRVASRequest_ptr);
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v67 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v69 = [v27 vasRequests];
      v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v231 = v27;
      if (v58 >> 62)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
        if (!v70)
        {
LABEL_66:

          v27 = v231;
          goto LABEL_67;
        }
      }

      else
      {
        v70 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v70)
        {
          goto LABEL_66;
        }
      }

      v27 = 0;
      v237 = v58 & 0xFFFFFFFFFFFFFF8;
      v238 = v58 & 0xC000000000000001;
      v235 = v58;
      v236 = SPRVASTerminalProtocolSignUpOnly;
      v232 = (v252 + 56);
      v233 = v252 + 8;
      v234 = v70;
      while (1)
      {
        if (v238)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v237 + 16))
          {
            goto LABEL_63;
          }

          v71 = *(v58 + 8 * v27 + 32);
        }

        v72 = v71;
        v239 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v73 = [v71 vasTerminalProtocol];
        v74 = SPRVASTerminalProtocol.description.getter();
        v76 = v75;

        if (v74 == 0x64696C61766E69 && v76 == 0xE700000000000000)
        {
          v95 = v72;

LABEL_58:

          sub_1000207FC(4000, 0xD000000000000029, 0x800000010034EE70, 0);
          swift_willThrow();

          goto LABEL_11;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v78)
        {
          v95 = v72;

          goto LABEL_58;
        }

        v79 = [v72 merchantId];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = HIBYTE(v82) & 0xF;
        if ((v82 & 0x2000000000000000) == 0)
        {
          v83 = v80 & 0xFFFFFFFFFFFFLL;
        }

        if (!v83)
        {

          sub_1000207FC(4000, 0xD00000000000001ELL, 0x800000010034EE50, 0);
          swift_willThrow();

          goto LABEL_11;
        }

        v84 = [v72 vasTerminalProtocol];
        sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
        v85 = v84;
        v86 = v72;
        v87 = v236;
        LOBYTE(v84) = static NSObject.== infix(_:_:)();

        v88 = v255;
        v252 = v86;
        if (v84)
        {
          v89 = [v86 vasUrl];
          if (!v89)
          {

            v96 = v253;
            (*v232)(v253, 1, 1, v256);
            sub_10000BD44(v96, &qword_1003A03D0, &unk_1002C3D50);
            sub_1000207FC(4000, 0xD000000000000037, 0x800000010034EE10, 0);
            swift_willThrow();

            goto LABEL_11;
          }

          v90 = v89;
          v91 = v253;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*v232)(v91, 0, 1, v256);
          sub_10000BD44(v91, &qword_1003A03D0, &unk_1002C3D50);
          v86 = v252;
        }

        v92 = [v86 vasUrl];
        v58 = v235;
        if (v92)
        {
          v93 = v92;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL.absoluteString.getter();
          v94 = String.count.getter();

          if (v94 > 64)
          {

            sub_1000207FC(4000, 0xD00000000000001DLL, 0x800000010034EDF0, 0);
            swift_willThrow();

            (*v233)(v88, v256);
            goto LABEL_11;
          }

          (*v233)(v88, v256);
        }

        ++v27;
        if (v239 == v234)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }

    v46 = 0xD000000000000011;
    v47 = 0x800000010034EEA0;
    v48 = 4000;
LABEL_10:
    sub_1000207FC(v48, v46, v47, 0);
    swift_willThrow();

    goto LABEL_11;
  }

LABEL_67:
  v97 = [v27 vasRequests];
  sub_10000411C(0, &qword_1003A3A80, SPRVASRequest_ptr);
  v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 24) = v98;
  v99 = &selRef_currencyCode;
  v100 = [v27 currencyCode];
  v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  v104 = v103;
  v105 = v103 >> 62;
  if ((v103 >> 62) <= 1)
  {
    if (!v105)
    {
      sub_100009548(v101, v103);
      v101 = BYTE6(v103);
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  if (v105 != 2)
  {
    sub_100009548(v101, v103);
    v101 = 0;
    goto LABEL_77;
  }

  v103 = *(v101 + 16);
  v106 = *(v101 + 24);
  sub_100009548(v101, v104);
  v101 = v106 - v103;
  if (__OFSUB__(v106, v103))
  {
    __break(1u);
LABEL_74:
    sub_100009548(v101, v104);
    if (__OFSUB__(HIDWORD(v101), v101))
    {
      __break(1u);
      goto LABEL_183;
    }

    v101 = HIDWORD(v101) - v101;
  }

LABEL_77:
  if (v101 != static TLVTag.TAG_5F2A_LENGTH.getter())
  {

    sub_1000207FC(4002, 0xD000000000000017, 0x800000010034EC40, 0);
    swift_willThrow();

LABEL_11:

    goto LABEL_12;
  }

  v107 = [v27 currencyCode];
  v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;

  *(v4 + 56) = v108;
  *(v4 + 64) = v110;
  v99 = &selRef_currencyCode;
  v111 = [v27 merchantCategoryCode];
  v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v112;

  v113 = v103;
  v114 = v103 >> 62;
  if ((v103 >> 62) <= 1)
  {
    if (!v114)
    {
      sub_100009548(v101, v103);
      v101 = BYTE6(v103);
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v114 != 2)
  {
    sub_100009548(v101, v103);
    v101 = 0;
    goto LABEL_89;
  }

  v103 = *(v101 + 16);
  v115 = *(v101 + 24);
  sub_100009548(v101, v113);
  v101 = v115 - v103;
  if (__OFSUB__(v115, v103))
  {
    __break(1u);
LABEL_86:
    sub_100009548(v101, v113);
    LODWORD(v116) = HIDWORD(v101) - v101;
    if (__OFSUB__(HIDWORD(v101), v101))
    {
      __break(1u);
      goto LABEL_193;
    }

    v101 = v116;
  }

LABEL_89:
  if (v101 != static TLVTag.TAG_9F15_LENGTH.getter())
  {

    v126 = 0x800000010034EC60;
    v125 = 0xD000000000000017;
LABEL_95:
    sub_1000207FC(4000, v125, v126, 0);
    swift_willThrow();

    v127 = 0;
    v128 = 0;
    v129 = 0;
LABEL_104:

    sub_100009548(*(v4 + 56), *(v4 + 64));
    if (v127)
    {
      sub_100009548(*(v4 + 80), *(v4 + 88));
    }

    if (v128)
    {
      sub_100009548(*(v4 + 96), *(v4 + 104));
      (*(v250 + 8))(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v251);

      sub_100009548(*(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));
      if (!v129)
      {
LABEL_12:

        type metadata accessor for ReaderConfiguration(0);
        swift_deallocPartialClassInstance();
        return;
      }
    }

    else
    {

      if ((v129 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    memcpy(v262, (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken), sizeof(v262));
    sub_10006413C(v262);
    goto LABEL_12;
  }

  v117 = [v27 merchantCategoryCode];
  v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  v121 = Data.hexDigits.getter();
  sub_100009548(v118, v120);
  v122 = *(v121 + 16);
  v123 = (v121 + 32);
  while (v122)
  {
    v124 = *v123++;
    --v122;
    if (v124 > 9)
    {

      v125 = 0xD00000000000002ELL;
      v126 = 0x800000010034EC80;
      goto LABEL_95;
    }
  }

  v130 = [v27 merchantCategoryCode];
  v131 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v132;

  *(v4 + 80) = v131;
  *(v4 + 88) = v133;
  [v27 amount];
  if ((NSDecimal.isSignMinus.getter() & 1) != 0 || ([v27 amount], NSDecimal.init(integerLiteral:)(v134, 10), pow(_:_:)(v137, v135, v136), (static NSDecimal.< infix(_:_:)() & 1) == 0) || (objc_msgSend(v27, "amount"), NSDecimal.exponent.getter() < 0))
  {

    v144 = 0xD000000000000036;
    v145 = 0x800000010034ECB0;
    v146 = 4001;
LABEL_103:
    sub_1000207FC(v146, v144, v145, 0);
    swift_willThrow();

    v128 = 0;
    v129 = 0;
    v127 = 1;
    goto LABEL_104;
  }

  [v27 amount];
  *(v4 + 32) = v260;
  *(v4 + 48) = v261;
  v138 = [v27 interfaceDeviceSerial];
  v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v141 = v140;

  v142 = v141;
  v143 = v141 >> 62;
  if ((v141 >> 62) <= 1)
  {
    if (!v143)
    {
      sub_100009548(v139, v141);
      v139 = BYTE6(v141);
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  if (v143 != 2)
  {
    sub_100009548(v139, v141);
    v139 = 0;
    goto LABEL_119;
  }

  v148 = *(v139 + 16);
  v147 = *(v139 + 24);
  sub_100009548(v139, v142);
  v139 = v147 - v148;
  if (__OFSUB__(v147, v148))
  {
    __break(1u);
LABEL_116:
    sub_100009548(v139, v142);
    if (__OFSUB__(HIDWORD(v139), v139))
    {
      __break(1u);
      goto LABEL_216;
    }

    v139 = HIDWORD(v139) - v139;
  }

LABEL_119:
  if (v139 != static TLVTag.TAG_9F1E_LENGTH.getter())
  {

    v145 = 0x800000010034ECF0;
    v146 = 4000;
    v144 = 0xD000000000000017;
    goto LABEL_103;
  }

  v149 = [v27 interfaceDeviceSerial];
  v150 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = v151;

  *(v4 + 96) = v150;
  *(v4 + 104) = v152;
  v153 = [v27 transactionUUID];
  v154 = v249;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v156 = v250;
  v155 = v251;
  v252 = *(v250 + 32);
  (v252)(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v154, v251);
  v157 = [v27 transactionUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v255 = *(v156 + 8);
  v253 = (v156 + 8);
  v255(v154, v155);
  v158 = String.lowercased()();

  v159 = sub_100146900(v158._countAndFlagsBits, v158._object);
  v161 = v160;
  v58 = Data.sha256Digest.getter();
  v43 = v162;
  sub_100009548(v159, v161);
  v163 = Data.subdata(in:)();
  v164 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  *v164 = v163;
  v164[1] = v165;
  v231 = v27;
  v166 = [v27 preferredSchemes];
  if (!v166)
  {
    goto LABEL_126;
  }

  v167 = v166;
  v168 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = *(v168 + 2);
  if (v99)
  {
    if (v99 > 4)
    {

      sub_1000207FC(4000, 0xD00000000000002CLL, 0x800000010034EDC0, 0);
      swift_willThrow();
LABEL_147:
      sub_100009548(v58, v43);

      v129 = 0;
      v127 = 1;
      goto LABEL_148;
    }

    if (!*(v168 + 2))
    {
      goto LABEL_216;
    }

    v101 = *(v168 + 4);
    v103 = *(v168 + 5);
    v249 = v168;
    v177 = v103 >> 62;
    if ((v103 >> 62) > 1)
    {
      if (v177 != 2)
      {
LABEL_146:

        sub_1000207FC(4000, 0xD000000000000036, 0x800000010034ED80, 0);
        swift_willThrow();
        sub_100009548(v101, v103);
        goto LABEL_147;
      }

      v194 = *(v101 + 16);
      v193 = *(v101 + 24);
      v178 = v193 - v194;
      if (__OFSUB__(v193, v194))
      {
        goto LABEL_140;
      }
    }

    else
    {
      if (!v177)
      {
        v178 = BYTE6(v103);
LABEL_145:
        if ((v178 - 17) < 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_146;
        }

        sub_100009548(v101, v103);
        if (v99 == 1)
        {
          goto LABEL_150;
        }

        if (*(v249 + 2) < 2uLL)
        {
          goto LABEL_216;
        }

        v101 = *(v249 + 6);
        v103 = *(v249 + 7);
        v195 = v103 >> 62;
        if ((v103 >> 62) > 1)
        {
          if (v195 == 3)
          {
            goto LABEL_146;
          }

          v201 = *(v101 + 16);
          v200 = *(v101 + 24);
          v196 = v200 - v201;
          if (__OFSUB__(v200, v201))
          {
            goto LABEL_140;
          }

          goto LABEL_185;
        }

        if (!v195)
        {
          v196 = BYTE6(v103);
          goto LABEL_186;
        }

LABEL_183:
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          goto LABEL_217;
        }

        v196 = HIDWORD(v101) - v101;
LABEL_185:
        sub_1000094F4(v101, v103);
LABEL_186:
        if ((v196 - 17) < 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_146;
        }

        sub_100009548(v101, v103);
        if (v99 == 2)
        {
          goto LABEL_150;
        }

        if (*(v249 + 2) < 3uLL)
        {
          goto LABEL_216;
        }

        v101 = *(v249 + 8);
        v103 = *(v249 + 9);
        v116 = v103 >> 62;
        if ((v103 >> 62) <= 1)
        {
          if (!v116)
          {
            v223 = BYTE6(v103);
            goto LABEL_200;
          }

          if (__OFSUB__(HIDWORD(v101), v101))
          {
            goto LABEL_217;
          }

          v223 = HIDWORD(v101) - v101;
LABEL_199:
          sub_1000094F4(v101, v103);
LABEL_200:
          if ((v223 - 17) < 0xFFFFFFFFFFFFFFF4)
          {
            goto LABEL_146;
          }

          sub_100009548(v101, v103);
          if (v99 == 3)
          {
            goto LABEL_150;
          }

          if (*(v249 + 2) >= 4uLL)
          {
            v101 = *(v249 + 10);
            v103 = *(v249 + 11);
            v226 = v103 >> 62;
            if ((v103 >> 62) <= 1)
            {
              if (!v226)
              {
                v227 = BYTE6(v103);
LABEL_213:
                if ((v227 - 17) < 0xFFFFFFFFFFFFFFF4)
                {
                  goto LABEL_146;
                }

                sub_100009548(v101, v103);
LABEL_150:
                *(&v258->isa + v4) = v249;
                goto LABEL_125;
              }

              if (!__OFSUB__(HIDWORD(v101), v101))
              {
                v227 = HIDWORD(v101) - v101;
LABEL_212:
                sub_1000094F4(v101, v103);
                goto LABEL_213;
              }

LABEL_217:
              __break(1u);
              return;
            }

            if (v226 == 3)
            {
              goto LABEL_146;
            }

            v229 = *(v101 + 16);
            v228 = *(v101 + 24);
            v227 = v228 - v229;
            if (!__OFSUB__(v228, v229))
            {
              goto LABEL_212;
            }

LABEL_140:
            __break(1u);
LABEL_141:

            goto LABEL_164;
          }

LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

LABEL_193:
        if (v116 == 3)
        {
          goto LABEL_146;
        }

        v225 = *(v101 + 16);
        v224 = *(v101 + 24);
        v223 = v224 - v225;
        if (__OFSUB__(v224, v225))
        {
          goto LABEL_140;
        }

        goto LABEL_199;
      }

      if (__OFSUB__(HIDWORD(v101), v101))
      {
        goto LABEL_217;
      }

      v178 = HIDWORD(v101) - v101;
    }

    sub_1000094F4(v101, v103);
    goto LABEL_145;
  }

LABEL_125:

LABEL_126:
  v256 = v58;
  v169 = v231;
  v170 = [v231 kernelToken];
  v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v173 = v172;

  v174 = v248;
  sub_10008C068(v171, v173, v247, v259, v263);
  if (v174)
  {
    swift_errorRetain();
    sub_1000207FC(4004, 0, 0, v174);

    swift_willThrow();
    sub_100009548(v256, v43);

    v129 = 0;
    v127 = 1;
LABEL_148:
    v128 = 1;
    goto LABEL_104;
  }

  v175 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken;
  memcpy((v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken), v263, 0x120uLL);
  memcpy(v265, v263, 0x120uLL);
  sub_100064B9C(v265, v262);
  v176 = v246;
  sub_10008BD6C(v246);
  sub_10006413C(v265);
  v259 = *(v250 + 48);
  if (v259(v176, 1, v251) == 1)
  {
    sub_10000BD44(v176, &qword_1003A0178, &unk_1002C3BB0);
    sub_1000207FC(4004, 0xD00000000000003ELL, 0x800000010034ED10, 0);
    swift_willThrow();
    sub_100009548(v256, v43);

    v127 = 1;
    v128 = 1;
    v129 = 1;
    goto LABEL_104;
  }

  v179 = v245;
  v180 = v251;
  (v252)(v245, v176, v251);
  (*(v250 + 16))(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_tpid, v179, v180);
  memcpy(v264, (v4 + v175), sizeof(v264));
  sub_100064B9C(v264, v262);
  v181 = v243;
  sub_10008B618(v243);
  sub_10006413C(v264);
  v252 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID;
  sub_100064190(v181, v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID);

  v182 = Logger.logObject.getter();
  LODWORD(v181) = static os_log_type_t.default.getter();

  LODWORD(v254) = v181;
  v258 = v182;
  if (!os_log_type_enabled(v182, v181))
  {
    goto LABEL_141;
  }

  v183 = swift_slowAlloc();
  v250 = swift_slowAlloc();
  v266 = v250;
  *v183 = 136315394;
  v184 = v257;
  v185 = sub_100055298();
  v187 = sub_100008F6C(v185, v186, &v266);

  *(v183 + 4) = v187;
  *(v183 + 12) = 2080;
  v188 = &v252[v184];
  v189 = v240;
  sub_10011A858(v188, v240);
  v190 = v259(v189, 1, v251);
  sub_10000BD44(v189, &qword_1003A0178, &unk_1002C3BB0);
  if (v190 == 1)
  {
    v191 = 0xE100000000000000;
    v192 = 32;
  }

  else
  {
    v262[0] = 0x495054666173202CLL;
    v262[1] = 0xEB00000000203A44;
    v197 = v241;
    sub_10011A858(&v252[v257], v241);
    if (v259(v197, 1, v251) == 1)
    {
      sub_10000BD44(v241, &qword_1003A0178, &unk_1002C3BB0);
      v198 = 0;
      v199 = 0xE000000000000000;
    }

    else
    {
      v202 = v241;
      v198 = sub_100055298();
      v199 = v203;
      v255(v202, v251);
    }

    v204._countAndFlagsBits = v198;
    v204._object = v199;
    String.append(_:)(v204);

    v192 = v262[0];
    v191 = v262[1];
  }

  v205 = sub_100008F6C(v192, v191, &v266);

  *(v183 + 14) = v205;
  v206 = v258;
  _os_log_impl(&_mh_execute_header, v258, v254, "tpid: %s%s from SPRReadParameters kernelToken", v183, 0x16u);
  swift_arrayDestroy();

LABEL_164:
  v207 = [v231 vtid];
  if (v207)
  {
    v208 = v207;
    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v211 = v210;
  }

  else
  {
    v209 = 0;
    v211 = 0;
  }

  v212 = v244;
  *v244 = v209;
  v212[1] = v211;

  if (!v211)
  {
    goto LABEL_171;
  }

  v213 = HIBYTE(v211) & 0xF;
  if ((v211 & 0x2000000000000000) == 0)
  {
    v213 = v209 & 0xFFFFFFFFFFFFLL;
  }

  if (!v213)
  {
    v221 = "config-prepare-totalTime";
    v222 = 0xD00000000000001CLL;
  }

  else
  {
LABEL_171:
    v214 = [v231 bundleID];
    if (v214)
    {
      v215 = v214;
      v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = v217;
    }

    else
    {
      v216 = 0;
      v218 = 0;
    }

    v219 = v242;
    *v242 = v216;
    v219[1] = v218;

    if (!v218)
    {
      goto LABEL_178;
    }

    v220 = HIBYTE(v218) & 0xF;
    if ((v218 & 0x2000000000000000) == 0)
    {
      v220 = v216 & 0xFFFFFFFFFFFFLL;
    }

    if (v220)
    {
LABEL_178:
      v255(v245, v251);
      sub_100009548(v256, v43);

      return;
    }

    v221 = "incorrectly configured for SAF";
    v222 = 0xD000000000000020;
  }

  sub_1000207FC(4000, v222, (v221 | 0x8000000000000000), 0);
  swift_willThrow();
  sub_100009548(v256, v43);

  v255(v245, v251);
}