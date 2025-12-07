void sub_100EDB164(uint64_t a1)
{
  v77 = a1;
  v76 = type metadata accessor for PrivacyAlertSupport.AlertInfo(0);
  v74 = *(v76 - 8);
  v2 = __chkstk_darwin(v76);
  v71 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = v3;
  __chkstk_darwin(v2);
  v73 = &v64 - v4;
  v72 = type metadata accessor for LocalizationUtility.Table();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 24);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C220);
    v35 = v71;
    sub_100EDE820(v19, v71, type metadata accessor for PrivacyAlertSupport.AlertInfo);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v87[0] = v39;
      *v38 = 136446210;
      sub_100EDEAA8(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_100EDE7C0(v35, type metadata accessor for PrivacyAlertSupport.AlertInfo);
      v43 = sub_1000136BC(v40, v42, v87);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Privacy alert has already been shown for %{public}s.", v38, 0xCu);
      sub_100007BAC(v39);
    }

    else
    {

      sub_100EDE7C0(v35, type metadata accessor for PrivacyAlertSupport.AlertInfo);
    }

    return;
  }

  v20 = v76;
  v19 = v77;
  (*(v7 + 16))(v10, v77 + *(v76 + 20), v6);
  *&v87[0] = sub_100ED4684();
  v21 = sub_100DED164(v12, v10);
  (*(v7 + 8))(v12, v6);
  sub_100ED4B5C(*&v87[0]);
  if ((v21 & 1) == 0)
  {
    if (qword_101694F60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v22 = (v19 + *(v20 + 32));
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v69;
    v26 = v70;
    v27 = v69[13];
    v68 = (v69 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    LODWORD(v76) = enum case for LocalizationUtility.Table.default(_:);
    v28 = v72;
    v71 = v27;
    v27(v70);

    static LocalizationUtility.localizedString(key:table:)();
    v29 = v25[1];
    v67 = (v25 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v29;
    (v29)(v26, v28);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10138BBE0;
    *(v30 + 56) = &type metadata for String;
    v31 = sub_100008C00();
    *(v30 + 32) = v24;
    *(v30 + 40) = v23;
    v33 = *v19;
    v32 = *(v19 + 8);
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v31;
    *(v30 + 64) = v31;
    *(v30 + 72) = v33;
    *(v30 + 80) = v32;
  }

  else
  {
    v44 = v69;
    v26 = v70;
    v45 = v69[13];
    v68 = (v69 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    LODWORD(v76) = enum case for LocalizationUtility.Table.default(_:);
    v28 = v72;
    v71 = v45;
    v45(v70);
    static LocalizationUtility.localizedString(key:table:)();
    v46 = v44[1];
    v67 = (v44 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v46;
    (v46)(v26, v28);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    v49 = *v19;
    v48 = *(v19 + 8);
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100008C00();
    *(v47 + 32) = v49;
    *(v47 + 40) = v48;
  }

  v50 = String.init(format:_:)();
  v65 = v51;
  v66 = v50;

  v52 = v76;
  v53 = v71;
  (v71)(v26, v76, v28);
  v72 = static LocalizationUtility.localizedString(key:table:)();
  v70 = v54;
  v55 = v69;
  (v69)(v26, v28);
  v53(v26, v52, v28);
  v56 = static LocalizationUtility.localizedString(key:table:)();
  v64 = v57;
  v55(v26, v28);
  v53(v26, v52, v28);
  v58 = static LocalizationUtility.localizedString(key:table:)();
  v60 = v59;
  v55(v26, v28);
  *&v79 = v72;
  *(&v79 + 1) = v70;
  *&v80 = v66;
  *(&v80 + 1) = v65;
  *&v81 = v56;
  *(&v81 + 1) = v64;
  *&v82 = v58;
  *(&v82 + 1) = v60;
  v83 = 0;
  v84 = 0;
  v85 = sub_100EDBAC4;
  v86 = 0;
  v87[2] = v81;
  v87[3] = v82;
  v87[4] = 0u;
  v87[5] = sub_100EDBAC4;
  v87[0] = v79;
  v87[1] = v80;
  type metadata accessor for SBAlertHelper();
  swift_allocObject();
  sub_1010A0C88(v87);
  sub_100E69244(&v79, &v78);
  sub_1010A1920();
  type metadata accessor for Transaction();
  v61 = v73;
  sub_100EDE820(v77, v73, type metadata accessor for PrivacyAlertSupport.AlertInfo);
  v62 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v63 = swift_allocObject();
  sub_100EDE758(v61, v63 + v62, type metadata accessor for PrivacyAlertSupport.AlertInfo);
  static Transaction.asyncTask(name:block:)();
  sub_100E692A0(&v79);
}

uint64_t sub_100EDBAC4()
{
  v0 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000B3A8(v2, &unk_101696AC0, &qword_101390A60);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    sub_10090403C(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 openSensitiveURL:v12 withOptions:isa];
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100EDBD0C()
{
  v1 = v0[2];
  type metadata accessor for AnalyticsEvent(0);
  v2 = swift_allocObject();
  v0[3] = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 56);
  v5(&v2[v3], 1, 1, v4);
  v5(&v2[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v4);
  *(v2 + 15) = 0xD000000000000034;
  *(v2 + 16) = 0x80000001013737B0;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *(v6 + 16) = v1;

  return _swift_task_switch(sub_100EDBE70, v2, 0);
}

uint64_t sub_100EDBE70()
{
  sub_10115BE7C(sub_100EDE750);

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10078BA74;
  v2 = v0[3];

  return sub_101163F78(v2);
}

unint64_t sub_100EDBF60(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for Endianness();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Device();
  v26 = v3;
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyAlertSupport.AlertInfo(0);
  (*(v4 + 16))(v6, a1 + v7[6], v3);
  v8 = Device.vendorID.getter();
  v9 = Device.productID.getter();
  v27 = v8;
  sub_100101824();
  v28 = FixedWidthInteger.data.getter();
  v29 = v10;
  v27 = v9;
  v11 = FixedWidthInteger.data.getter();
  v13 = v12;
  Data.append(_:)();
  sub_100016590(v11, v13);
  v14 = v28;
  v15 = v29;
  v24[1] = sub_100313D58(v28, v29);
  v16 = sub_100313A28(v14, v15);
  sub_100313B54(v14, v15);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v28))
  {
    v17 = 0;
  }

  else
  {
    v17 = v28;
  }

  v18 = sub_100E0EA64(v16, v17);
  sub_100016590(v14, v15);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001013737F0;
  v20 = v25;
  *(inited + 48) = (*(v25 + v7[7]) & 1) == 0;
  *(inited + 56) = 1;
  strcpy((inited + 64), "isFamilyBeacon");
  *(inited + 79) = -18;
  *(inited + 80) = *(v20 + v7[8] + 8) != 0;
  *(inited + 88) = 1;
  *(inited + 96) = 0x7954656369766564;
  *(inited + 104) = 0xEA00000000006570;
  v21 = String._bridgeToObjectiveC()();

  *(inited + 112) = v21;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010135E720;
  *(inited + 144) = v18;
  *(inited + 152) = 1;
  v22 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  (*(v4 + 8))(v6, v26);
  return v22;
}

uint64_t sub_100EDC314(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_101694F60 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C220);
  sub_100017D5C(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v17;
    v21 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v13, v14, "didNotify data length %ld", v21, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v17) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v17 = v17;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EDC5F4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for BinaryDecodingError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for BinaryDecoder();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bit();
  v96 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v94 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v84 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    LOBYTE(v105) = 11;
    v106 = 1;
    a1(&v102);
    return sub_10000B3A8(&v102, &qword_101699380, &unk_1013918F0);
  }

  v19 = Strong;
  v97 = v17;
  v89 = v13;
  v20 = *(Strong + 80);
  v21 = *(v19 + 88);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v23 = 0xC000000000000000;
  if (v21 >> 60 != 15)
  {
    v23 = *(v19 + 88);
  }

  v100 = v22;
  v101 = v23;
  sub_10002E98C(v20, v21);
  sub_100017D5C(a4, a5);
  sub_100ED428C(1uLL, a4, a5, &v102);
  v24 = v102;
  Data.append(_:)();
  sub_100016590(v24, *(&v24 + 1));
  v25 = v100;
  v26 = v101;
  v27 = *(v19 + 80);
  v28 = *(v19 + 88);
  *(v19 + 80) = v100;
  *(v19 + 88) = v26;
  sub_100017D5C(v25, v26);
  sub_100006654(v27, v28);
  if (qword_101694F60 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v95 = sub_1000076D4(v29, qword_10177C220);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v90 = v10;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v88 = a1;
    v85 = v34;
    *&v102 = v34;
    *v33 = 136315138;
    swift_beginAccess();
    v35 = a4;
    v86 = v9;
    v37 = v100;
    v36 = v101;
    sub_100017D5C(v100, v101);
    v38 = a2;
    v39 = Data.description.getter();
    v87 = v19;
    v40 = a5;
    v42 = v41;
    v43 = v37;
    a4 = v35;
    sub_100016590(v43, v36);
    v44 = v39;
    a2 = v38;
    v45 = sub_1000136BC(v44, v42, &v102);
    a5 = v40;
    v19 = v87;

    *(v33 + 4) = v45;
    v9 = v86;
    _os_log_impl(&_mh_execute_header, v30, v31, "localReadBuffer %s", v33, 0xCu);
    sub_100007BAC(v85);
    a1 = v88;
  }

  v46 = v97;
  v47 = sub_100017C08(a4, a5);
  if ((v47 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v102) = v47;
  sub_1000198E8();
  v48 = FixedWidthInteger.bits()();
  if (!*(v48 + 16))
  {

LABEL_17:
    sub_100EDE4D0();
    v60 = swift_allocError();
    *v61 = 1;
    swift_willThrow();
    sub_100016590(v100, v101);
    goto LABEL_19;
  }

  v87 = a2;
  v49 = v96;
  v50 = v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v51 = v46;
  v52 = v89;
  (*(v96 + 16))(v51, v50, v89);

  v53 = v94;
  (*(v49 + 104))(v94, enum case for Bit.one(_:), v52);
  sub_100EDEAA8(&qword_101698660, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v54 = v52;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v55 = v49 + 8;
  v56 = *(v49 + 8);
  v56(v53, v52);
  if (v102 == v99)
  {
    v94 = v56;
    v96 = v55;
    v88 = a1;
    v57 = v91;
    BinaryDecoder.init()();
    swift_beginAccess();
    v58 = v100;
    v59 = v101;
    sub_100017D5C(v100, v101);
    v86 = sub_100EDE524();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v58, v59);
    v77 = v102;
    v78 = v103;
    v79 = v104;
    v80 = *(v19 + 80);
    v81 = *(v19 + 88);
    *(v19 + 80) = xmmword_10138BBF0;
    sub_100006654(v80, v81);
    *(&v103 + 1) = &type metadata for AccessoryOwnerCommand;
    v104 = v86;
    v105 = sub_100DDA200();
    v82 = swift_allocObject();
    *&v102 = v82;
    *(v82 + 16) = v77;
    *(v82 + 32) = v78;
    *(v82 + 48) = v79;
    v106 = 0;
    sub_100EDE578(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
    v88(&v102);

    sub_10071E1B8(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
    (*(v92 + 8))(v57, v93);
    (v94)(v97, v89);
    sub_10000B3A8(&v102, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v100, v101);
  }

  sub_100EDEAA8(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  v60 = swift_allocError();
  (*(v90 + 104))(v62, enum case for BinaryDecodingError.insufficientData(_:), v9);
  swift_willThrow();
  v56(v97, v54);
  sub_100016590(v100, v101);
LABEL_19:
  v63 = v98;
  *&v102 = v60;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_25:

    sub_100017D5C(a4, a5);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    sub_100016590(a4, a5);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v102 = v71;
      *v70 = 136315138;
      v72 = Data.description.getter();
      v74 = sub_1000136BC(v72, v73, &v102);

      *(v70 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "Failed to decode data %s", v70, 0xCu);
      sub_100007BAC(v71);
    }

    v75 = *(v19 + 80);
    v76 = *(v19 + 88);
    *(v19 + 80) = xmmword_10138BBF0;
    sub_100006654(v75, v76);
    *&v102 = v60;
    LOBYTE(v105) = 10;
    v106 = 1;
    swift_errorRetain();
    a1(&v102);

    return sub_10000B3A8(&v102, &qword_101699380, &unk_1013918F0);
  }

  v64 = v90;
  if ((*(v90 + 88))(v63, v9) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v64 + 8))(v63, v9);
    goto LABEL_25;
  }

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "insufficientData. Keep reading...", v67, 2u);
  }
}

uint64_t sub_100EDD164(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = *(a1 + 16);
    *(v13 + 24) = *a1;
    *(v13 + 40) = v14;
    *(v13 + 56) = *(a1 + 32);
    *(v13 + 64) = a2;
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    swift_allocObject();
    sub_100EDE250(a1, v16);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EDD330(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 56);
    v15 = *(Strong + 64);
    *(Strong + 56) = a1;
    *(Strong + 64) = a2;

    sub_100A5F79C(v14, v15);
    BinaryEncoder.init()();
    v16 = a4[1];
    v24 = *a4;
    v25 = v16;
    LOBYTE(v26) = *(a4 + 32);
    sub_100DDA200();
    v17 = BinaryEncoder.encode<A>(_:)();
    v19 = v18;
    v20 = Data.chunked(into:)();
    v21 = sub_1001D97CC(v20);

    swift_beginAccess();
    sub_100398324(v21);
    swift_endAccess();
    sub_100EDD708(a5);
    sub_100016590(v17, v19);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v27 = 267;
    a1(&v24);
    return sub_10000B3A8(&v24, &qword_1016B1CA0, &qword_1013918C0);
  }
}

void sub_100EDD708(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v67 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[3];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  v17 = v2[9];
  if (v17[2])
  {
    v70 = v10;
    v71 = v5;
    v72 = v4;
    swift_beginAccess();
    v4 = v17[4];
    v5 = v17[5];
    sub_100017D5C(v4, v5);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_101694F60 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      v19 = sub_1000076D4(v18, qword_10177C220);
      sub_100017D5C(v4, v5);

      v69 = v19;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      sub_100016590(v4, v5);

      v22 = os_log_type_enabled(v20, v21);
      v74 = v4;
      if (v22)
      {
        v23 = swift_slowAlloc();
        *&v79 = swift_slowAlloc();
        *v23 = 136315394;
        v24 = Data.hexString.getter();
        v26 = sub_1000136BC(v24, v25, &v79);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        v27 = sub_100A5AADC();
        v29 = sub_1000136BC(v27, v28, &v79);

        *(v23 + 14) = v29;
        v4 = v74;
        _os_log_impl(&_mh_execute_header, v20, v21, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v23, 0x16u);
        swift_arrayDestroy();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = 0u;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0;
      *(v30 + 56) = 267;
      v31 = dispatch_group_create();
      dispatch_group_enter(v31);
      v73 = v5;
      v68 = a1;
      *&v79 = sub_100A59B98(v4, v5);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;

      v33 = v31;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.oneshot(_:)();

      static DispatchTime.now()();
      v34 = v70;
      + infix(_:_:)();
      v35 = *(v71 + 8);
      v36 = v8;
      v37 = v33;
      v38 = v72;
      v35(v36, v72);
      OS_dispatch_group.wait(timeout:)();
      v35(v34, v38);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Timed out waiting for writeFuture", v41, 2u);
        }
      }

      swift_beginAccess();
      sub_1000D2A70(v30 + 16, &v79, &qword_1016B1CA0, &qword_1013918C0);
      if (v81)
      {
        v77 = v79;
        v78[0] = *v80;
        *(v78 + 9) = *&v80[9];
        sub_100101AA8(&v77, v75);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v73;
        if (v44)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138543362;
          sub_100101B58();
          swift_allocError();
          sub_100101AA8(v75, v48);
          v49 = _swift_stdlib_bridgeErrorToNSError();
          sub_100101B04(v75);
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "writeFuture error: %{public}@", v46, 0xCu);
          sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {

          sub_100101B04(v75);
        }

        v60 = v74;
        v61 = v2[7];
        if (v61)
        {
          v62 = v2[8];
          sub_100101B58();
          v63 = swift_allocError();
          sub_100101AA8(&v77, v64);
          v75[0] = v63;
          v76 = 256;

          v61(v75);
          sub_100A5F79C(v61, v62);

          sub_100016590(v60, v45);
          sub_10000B3A8(v75, &qword_1016B1CA0, &qword_1013918C0);
        }

        else
        {
          sub_100016590(v74, v45);
        }

        sub_100101B04(&v77);
      }

      else
      {

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v75[0] = v55;
          *v54 = 134218242;
          *(v54 + 4) = *(v2[9] + 16);

          *(v54 + 12) = 2080;

          v56 = Array.description.getter();
          v58 = v57;

          v59 = sub_1000136BC(v56, v58, v75);

          *(v54 + 14) = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "writeFuture success. writeQueue [%ld] %s", v54, 0x16u);
          sub_100007BAC(v55);
        }

        else
        {
        }

        v65 = v73;
        v66 = v74;
        sub_100EDD708(v68);

        sub_100016590(v66, v65);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v50 = v2[7];
  if (v50)
  {
    v51 = v2[8];
    v81 = 0;

    v50(&v79);
    sub_100A5F79C(v50, v51);
    sub_10000B3A8(&v79, &qword_1016B1CA0, &qword_1013918C0);
  }
}

uint64_t sub_100EDE08C()
{

  sub_100A5F79C(*(v0 + 56), *(v0 + 64));

  sub_100006654(*(v0 + 80), *(v0 + 88));

  return v0;
}

uint64_t sub_100EDE0F4()
{
  sub_100EDE08C();

  return swift_deallocClassInstance();
}

uint64_t sub_100EDE15C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100EDE184()
{
  result = qword_1016BED98;
  if (!qword_1016BED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BED98);
  }

  return result;
}

uint64_t sub_100EDE1D8(uint64_t a1)
{
  if ((a1 + 1) < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_100EDE1EC()
{
  result = qword_1016BEDA0;
  if (!qword_1016BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDA0);
  }

  return result;
}

uint64_t sub_100EDE2AC(uint64_t a1)
{
  v18 = *v1;
  v19 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v1[3];
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  if (v10)
  {
    *v5 = v9;
    v8(v5, v7, v2);
    v13 = _dispatchPreconditionTest(_:)();
    result = v11(v5, v2);
    if (v13)
    {
      *(v1 + 120) = 1;
      v14 = type metadata accessor for Transaction();
      __chkstk_darwin(v14);
      v15 = v18;
      v16 = v19;
      *(&v17 - 4) = v1;
      *(&v17 - 3) = v16;
      *(&v17 - 2) = v15;
      return static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100EDE4D0()
{
  result = qword_1016BEDA8;
  if (!qword_1016BEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDA8);
  }

  return result;
}

unint64_t sub_100EDE524()
{
  result = qword_1016BEDB0;
  if (!qword_1016BEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDB0);
  }

  return result;
}

void sub_100EDE578(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = (a4 >> 60) & 3 | (4 * a5);
  if (v6 <= 2)
  {
    goto LABEL_12;
  }

  if (((a4 >> 60) & 3 | (4 * a5)) <= 5u)
  {
    if (v6 == 3)
    {
      sub_100017D5C(a1, a2);
      a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
      a1 = a3;

      goto LABEL_14;
    }

    if (v6 != 4)
    {
      return;
    }

LABEL_12:

LABEL_14:
    sub_100017D5C(a1, a2);
    return;
  }

  if (v6 == 6)
  {
    goto LABEL_12;
  }

  if (v6 == 7)
  {
  }
}

uint64_t type metadata accessor for PrivacyAlertSupport.AlertInfo(uint64_t a1)
{
  result = qword_1016BEEB0;
  if (!qword_1016BEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EDE684()
{
  v2 = *(type metadata accessor for PrivacyAlertSupport.AlertInfo(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100EDBCEC(v0 + v3);
}

uint64_t sub_100EDE758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EDE7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EDE820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EDE90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100EDC314(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100EDE93C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Device() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100ED7B98(a1, v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t sub_100EDE9EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100ED77B4(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_100EDEA48()
{
  result = qword_1016BEE38;
  if (!qword_1016BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEE38);
  }

  return result;
}

uint64_t sub_100EDEAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100EDEB18(uint64_t a1)
{
  type metadata accessor for MACAddress();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v2 <= 0x3F)
    {
      sub_1000E3404();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100EDEBE0()
{
  result = qword_1016BEEF8;
  if (!qword_1016BEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEEF8);
  }

  return result;
}

unint64_t sub_100EDED2C(uint64_t a1)
{
  *(a1 + 8) = sub_100EDED5C();
  result = sub_1009A2000();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100EDED5C()
{
  result = qword_1016BEF08;
  if (!qword_1016BEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEF08);
  }

  return result;
}

uint64_t type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(uint64_t a1)
{
  result = qword_1016BEF68;
  if (!qword_1016BEF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EDEE34(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100EDEEB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100EDEEB8(uint64_t a1)
{
  if (!qword_1016A5680)
  {
    type metadata accessor for FamilyCryptoKeysV2(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A5680);
    }
  }
}

uint64_t sub_100EDEF10(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BEFA8, &unk_1013EF798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100EDF650();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_100EDF740(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
    v13 = *(v3 + *(MyAccessoryFamilyKeyEnvelope + 20));
    v12 = 1;
    sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
    sub_100EDF6A4(&qword_1016A56E0, &qword_1016A56E8, &unk_1013C40A4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(MyAccessoryFamilyKeyEnvelope + 24));
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100EDF178@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016BEFB8, &qword_1013EF7A8);
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v18 - v6;
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
  __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100EDF650();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v21;
  v11 = v22;
  v18 = v10;
  v19 = a1;
  LOBYTE(v26) = 0;
  sub_100EDF740(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v23;
  v13 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v18, v14, v4);
  sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
  v25 = 1;
  v23 = sub_100EDF6A4(&qword_1016A5730, &qword_1016A5738, &unk_1013C40CC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v18[*(MyAccessoryFamilyKeyEnvelope + 20)] = v26;
  v25 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v13);
  v15 = *(MyAccessoryFamilyKeyEnvelope + 24);
  v16 = v18;
  *&v18[v15] = v26;
  sub_100EDF788(v16, v20);
  sub_100007BAC(v19);
  return sub_100EDF7EC(v16);
}

uint64_t sub_100EDF5A8(uint64_t a1)
{
  v2 = sub_100EDF650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EDF5E4(uint64_t a1)
{
  v2 = sub_100EDF650();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EDF650()
{
  result = qword_1016BEFB0;
  if (!qword_1016BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFB0);
  }

  return result;
}

uint64_t sub_100EDF6A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A56D8, &qword_1013B2B00);
    sub_100EDF740(a2, type metadata accessor for FamilyCryptoKeysV2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100EDF740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100EDF788(uint64_t a1, uint64_t a2)
{
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
  (*(*(MyAccessoryFamilyKeyEnvelope - 8) + 16))(a2, a1, MyAccessoryFamilyKeyEnvelope);
  return a2;
}

uint64_t sub_100EDF7EC(uint64_t a1)
{
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
  (*(*(MyAccessoryFamilyKeyEnvelope - 8) + 8))(a1, MyAccessoryFamilyKeyEnvelope);
  return a1;
}

unint64_t sub_100EDF85C()
{
  result = qword_1016BEFC0;
  if (!qword_1016BEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFC0);
  }

  return result;
}

unint64_t sub_100EDF8B4()
{
  result = qword_1016BEFC8;
  if (!qword_1016BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFC8);
  }

  return result;
}

unint64_t sub_100EDF90C()
{
  result = qword_1016BEFD0;
  if (!qword_1016BEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFD0);
  }

  return result;
}

uint64_t sub_100EDF960()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C238);
  v1 = sub_1000076D4(v0, qword_10177C238);
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EDFA28()
{
  v1[5] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100EDFAFC, v0, 0);
}

uint64_t sub_100EDFAFC()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v0[9] = v2;
  *v1 = v0;
  v1[1] = sub_100EDFBD4;
  v3 = v0[7];
  v4 = v0[5];

  return unsafeBlocking<A>(_:)(v3, sub_100EE2AB8, v4, v2);
}

uint64_t sub_100EDFBD4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100EDFCEC, v1, 0);
}

uint64_t sub_100EDFCEC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(*(v0[9] - 8) + 56))(v1, 0, 1);
  v4 = OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription;
  swift_beginAccess();
  sub_1002372B0(v1, v3 + v4);
  swift_endAccess();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = sub_100EE2D60(&qword_1016BF108, type metadata accessor for OwnDevicePublishActivityService, &unk_1013EFA18);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v3;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_1013EFA88, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100EDFEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5[3] = type metadata accessor for OwnDevicePublishActivityService(0);
  v5[4] = &off_1016597E8;
  v5[0] = a1;

  sub_10014F468(v5, a2);
  return sub_100007BAC(v5);
}

uint64_t sub_100EDFF48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = *a4;
  type metadata accessor for DispatchQoS();
  v4[4] = swift_task_alloc();

  return _swift_task_switch(sub_100EE0004, a4, 0);
}

uint64_t sub_100EE0004()
{
  v1 = v0[3];
  v2 = v0[2];
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_100EE0150;
  v6 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000027, 0x8000000101373960, v6, &unk_1013EFA98, v3, &unk_1013EFAA8, v4);
}

uint64_t sub_100EE0150(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100EE0268, v2, 0);
}

uint64_t sub_100EE0268()
{
  *(v0[2] + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity) = v0[6];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100EE02E8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for XPCActivity.Priority();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Criteria();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100EE04A4, 0, 0);
}

uint64_t sub_100EE04A4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 136) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_100EE05A4;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100EE05A4()
{

  return _swift_task_switch(sub_100EE06BC, 0, 0);
}

uint64_t sub_100EE06BC()
{
  v1 = v0[2];
  v2 = sub_10107406C(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

LABEL_11:
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    sub_100748620(v0[5], v16);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      v27 = v0[16];
      v28 = v0[13];
      v29 = v0[14];
      v30 = v0[12];
      v31 = v0[4];

      v32 = *(v29 + 32);
      v32(v27, v30, v28);
      v32(v31, v27, v28);
      goto LABEL_20;
    }

    v17 = v0[11];
    v18 = v0[9];
    v19 = v0[10];
    sub_10000B3A8(v0[12], &qword_10169E370, &qword_1013BA3F0);
    sub_101074EBC(v1);
    v21 = v20;
    sub_101074EB0(v1);
    v23 = v22;

    (*(v19 + 104))(v17, enum case for XPCActivity.Priority.utility(_:), v18);
    if (v21 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v21 < 9.22337204e18)
    {
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v23 > -9.22337204e18)
        {
          if (v23 < 9.22337204e18)
          {
            v25 = v0[14];
            v24 = v0[15];
            v36 = v0[13];
            v35 = v0[4];
            sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_101391790;
            static XPCActivity.Criteria.Options.allowBattery.getter();
            static XPCActivity.Criteria.Options.requiresClassC.getter();
            static XPCActivity.Criteria.Options.requiresNetwork.getter();
            static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
            v0[3] = v26;
            sub_100EE2D60(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
            sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
            sub_100359D10();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
            (*(v25 + 32))(v35, v24, v36);
LABEL_20:
            v13 = 0;
            goto LABEL_21;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_101694F70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C238);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Service disabled, not registering own device publish activity.", v12, 2u);
  }

  v13 = 1;
LABEL_21:
  (*(v0[14] + 56))(v0[4], v13, 1, v0[13]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100EE0B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.State();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100EE0C98, a3, 0);
}

uint64_t sub_100EE0C98()
{
  v34 = v0;
  if (qword_101694F70 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C238);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    buf = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *buf = 136315138;
    sub_100EE2D60(&qword_101696CD0, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v30 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v33);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v30, "Own device publish activity state: %s.", buf, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[9];
  v6(v20, v0[6], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      v27 = swift_task_alloc();
      v0[13] = v27;
      *v27 = v0;
      v27[1] = sub_100EE1160;

      return daemon.getter();
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v29 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100EE10F4, v29, v28);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v17(v0[11], v0[9]);
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100EE10F4()
{
  v1 = *(v0 + 56);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100EE2DAC, v1, 0);
}

uint64_t sub_100EE1160(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100EE2D60(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100EE2D60(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100EE133C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100EE133C(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {
    v3 = *(v4 + 56);

    v5 = sub_100EE2DA8;
  }

  else
  {

    v5 = sub_100EE1494;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100EE1494()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100EE15A4;
  v2 = v0[16];

  return (v4)(v0 + 2, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_100EE15A4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = sub_100EE16E0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 56);

    v4 = sub_100EE2DA8;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100EE16E0()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100EE174C, v1, 0);
}

uint64_t sub_100EE174C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_10177B348;

  return _swift_task_switch(sub_100EE1840, 0, 0);
}

uint64_t sub_100EE1840()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100EE1904;
  v2 = *(v0 + 144);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100EE1904()
{

  return _swift_task_switch(sub_100EE1A1C, 0, 0);
}

uint64_t sub_100EE1A1C()
{
  v1 = v0[7];
  v0[20] = v0[4];
  return _swift_task_switch(sub_100EE1A40, v1, 0);
}

uint64_t sub_100EE1A40()
{
  v1 = sub_10107406C(v0[20]);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = *(v0[7] + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);
  v0[21] = v8;
  if (!v8)
  {
    v12 = v0[8];
    (*(v0[10] + 56))(v12, 1, 1, v0[9]);
    sub_10000B3A8(v12, &unk_10169BA88, &qword_101395670);
LABEL_13:
    type metadata accessor for XPCActivity();
    sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100EE1EA4, v14, v13);
  }

  v15 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_100EE1C84;
  v10 = v0[8];

  return v15(v10);
}

uint64_t sub_100EE1C84()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100EE1DB0, v1, 0);
}

uint64_t sub_100EE1DB0()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 0, 1, v0[9]);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  type metadata accessor for XPCActivity();
  sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100EE1EA4, v3, v2);
}

uint64_t sub_100EE1EA4()
{
  v1 = *(v0 + 56);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100EE1F10, v1, 0);
}

uint64_t sub_100EE1F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100EE1F84()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription, &qword_1016B28A0, &unk_101393D00);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for OwnDevicePublishActivityService(uint64_t a1)
{
  result = qword_1016BF010;
  if (!qword_1016BF010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EE2040(uint64_t a1)
{
  sub_100236DB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100EE20EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for OwnDevicePublishActivityService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100EE2198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for OwnDevicePublishActivityService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100EE2260(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for OwnDevicePublishActivityService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100EE230C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100EDFA28();
}

uint64_t sub_100EE2398(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for OwnDevicePublishActivityService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100EE2444()
{
  type metadata accessor for OwnDevicePublishActivityService(0);
  sub_100EE2D60(&unk_1016B1080, type metadata accessor for OwnDevicePublishActivityService, &unk_1013EF9B8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100EE24B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v8 = static AnyKeyPath.== infix(_:_:)();

  if (v8)
  {
    if (qword_101694F70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C238);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "service state changed. Reevaluating xpc activity.", v13, 2u);
    }

    v14 = sub_10107406C(a1);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return result;
      }
    }

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v3;

    sub_10025EDD4(0, 0, v7, &unk_1013EFA78, v21);
  }

  return result;
}

uint64_t sub_100EE2748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EE27E8, a4, 0);
}

uint64_t sub_100EE27E8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);
  v0[4] = v1;
  if (v1)
  {
    v8 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1008BFBAC;
    v3 = v0[3];

    return v8(v3);
  }

  else
  {
    v5 = v0[3];
    v6 = type metadata accessor for XPCActivity.State();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_10000B3A8(v5, &unk_10169BA88, &qword_101395670);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100EE2A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EE2748(a1, v4, v5, v6);
}

uint64_t sub_100EE2AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EDFF48(a1, v4, v5, v6);
}

uint64_t sub_100EE2B74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100EE02E8(a1, a2);
}

uint64_t sub_100EE2C24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100EE0B8C(a1, a2, v6);
}

uint64_t sub_100EE2CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1003A214C();
}

uint64_t sub_100EE2D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100EE2DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C250);
  sub_1000076D4(v0, qword_10177C250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100EE2E34()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BF110);
  v1 = sub_1000076D4(v0, qword_1016BF110);
  if (qword_101694F78 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C250);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EE2EFC()
{
  v1 = type metadata accessor for URL();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100EE2FB8, 0, 0);
}

uint64_t sub_100EE2FB8()
{
  v44 = v0;
  v0[18] = _swiftEmptyArrayStorage;
  v1 = v0 + 18;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = sub_1000076D4(v4, qword_10177BA58);
  (*(v3 + 16))(v2, v5, v4);
  v6 = objc_allocWithZone(SAPathInfo);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8];
  v0[22] = v10;

  v42 = *(v3 + 8);
  v42(v2, v4);
  v11 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *v1;
  if (*v1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return _swift_continuation_await(v12);
  }

  v15 = v13 & 0xC000000000000001;

  v16 = 0;
  v40 = v13;
  v41 = v0;
  v39 = v13 & 0xC000000000000001;
  v38 = v14;
  do
  {
    if (v15)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v13 + 8 * v16 + 32);
    }

    v28 = v27;
    if (qword_101694F80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_1016BF110);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v17 = v0[21];
      v18 = v0[19];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136446210;
      v21 = [v30 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100EE3EC0(&qword_1016B14E0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v42(v17, v18);
      v25 = v22;
      v14 = v38;
      v26 = sub_1000136BC(v25, v24, &v43);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v31, v32, "Registering path: %{public}s.", v19, 0xCu);
      sub_100007BAC(v20);
      v15 = v39;

      v13 = v40;
      v0 = v41;
    }

    else
    {
    }

    ++v16;
  }

  while (v14 != v16);

LABEL_19:
  v33 = [objc_opt_self() defaultManager];
  v0[23] = v33;
  sub_100EE3E74();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;

  v35 = String._bridgeToObjectiveC()();
  v0[25] = v35;
  v0[2] = v0;
  v0[3] = sub_100EE34E0;
  v36 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100DDDDE4;
  v0[13] = &unk_1016598C0;
  v0[14] = v36;
  [v33 registerPaths:isa forBundleID:v35 completionHandler:v0 + 10];
  v12 = (v0 + 2);

  return _swift_continuation_await(v12);
}

uint64_t sub_100EE34E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100EE3670;
  }

  else
  {
    v2 = sub_100EE35F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EE35F0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100EE3670(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[23];
  v3 = v1[24];
  swift_willThrow();

  if (qword_101694F80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BF110);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to attribute files: %{public}@.", v10, 0xCu);
    sub_100288C6C(v11);
  }

  else
  {
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_100EE385C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FileAttributionService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100EE3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FileAttributionService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100EE39C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FileAttributionService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100EE3A70()
{
  *(v1 + 16) = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EE3B30, v0, 0);
}

uint64_t sub_100EE3B30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_10025EDD4(0, 0, v2, &unk_1013EFBD0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100EE3C20(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FileAttributionService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100EE3CC8()
{
  type metadata accessor for FileAttributionService();
  sub_100EE3EC0(&qword_1016B1018, v0, type metadata accessor for FileAttributionService, &unk_1013EFB38);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100EE3DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100EE2EFC();
}

unint64_t sub_100EE3E74()
{
  result = qword_1016BF1E8;
  if (!qword_1016BF1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016BF1E8);
  }

  return result;
}

uint64_t sub_100EE3EC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for NotifyMeResponseResult(uint64_t a1)
{
  result = qword_1016BF248;
  if (!qword_1016BF248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EE3F8C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100EE4010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for UUID();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016BF2B0, &qword_1013EFD70);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for NotifyMeResponseResult(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100EE4D84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_100EE4DD8(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_100EE4E20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_100EE4E74(v18, v23);
  sub_100007BAC(a1);
  return sub_100EE4ED8(v18);
}

uint64_t sub_100EE4388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100EE4410(uint64_t a1)
{
  v2 = sub_100EE4C7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE444C(uint64_t a1)
{
  v2 = sub_100EE4C7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100EE4488@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100EE4AF8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100EE44B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F43737574617473;
  }

  else
  {
    v3 = 0x7069726373627573;
  }

  if (v2)
  {
    v4 = 0xEE0064496E6F6974;
  }

  else
  {
    v4 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v5 = 0x6F43737574617473;
  }

  else
  {
    v5 = 0x7069726373627573;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006564;
  }

  else
  {
    v6 = 0xEE0064496E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100EE456C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EE4600(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100EE4680(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EE4710@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C348, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100EE4770(uint64_t *a1@<X8>)
{
  v2 = 0x7069726373627573;
  if (*v1)
  {
    v2 = 0x6F43737574617473;
  }

  v3 = 0xEE0064496E6F6974;
  if (*v1)
  {
    v3 = 0xEA00000000006564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100EE47C0()
{
  if (*v0)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0x7069726373627573;
  }
}

uint64_t sub_100EE480C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C348, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100EE4870(uint64_t a1)
{
  v2 = sub_100EE4D84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE48AC(uint64_t a1)
{
  v2 = sub_100EE4D84();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EE490C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EFFD0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100EE4994(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EFFD0[v2]);
  return Hasher._finalize()();
}

uint64_t *sub_100EE49E0@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 200)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 204)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 500)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100EE4A8C()
{
  result = qword_1016BF280;
  if (!qword_1016BF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF280);
  }

  return result;
}

void *sub_100EE4AF8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BF288, &qword_1013EFD60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_100EE4C7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016BF298, &qword_1013EFD68);
    sub_100EE4CD0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_100EE4C7C()
{
  result = qword_1016BF290;
  if (!qword_1016BF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF290);
  }

  return result;
}

unint64_t sub_100EE4CD0()
{
  result = qword_1016BF2A0;
  if (!qword_1016BF2A0)
  {
    sub_1000BC580(&qword_1016BF298, &qword_1013EFD68);
    sub_100EE4DD8(&qword_1016BF2A8, type metadata accessor for NotifyMeResponseResult, &unk_1013EFD0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2A0);
  }

  return result;
}

unint64_t sub_100EE4D84()
{
  result = qword_1016BF2B8;
  if (!qword_1016BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2B8);
  }

  return result;
}

uint64_t sub_100EE4DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100EE4E20()
{
  result = qword_1016BF2C0;
  if (!qword_1016BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2C0);
  }

  return result;
}

uint64_t sub_100EE4E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotifyMeResponseResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EE4ED8(uint64_t a1)
{
  v2 = type metadata accessor for NotifyMeResponseResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EE4F34()
{
  result = qword_1016BF2C8;
  if (!qword_1016BF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2C8);
  }

  return result;
}

unint64_t sub_100EE4FAC()
{
  result = qword_1016BF2D0;
  if (!qword_1016BF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2D0);
  }

  return result;
}

unint64_t sub_100EE5004()
{
  result = qword_1016BF2D8;
  if (!qword_1016BF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2D8);
  }

  return result;
}

unint64_t sub_100EE505C()
{
  result = qword_1016BF2E0;
  if (!qword_1016BF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2E0);
  }

  return result;
}

unint64_t sub_100EE50B4()
{
  result = qword_1016BF2E8;
  if (!qword_1016BF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2E8);
  }

  return result;
}

unint64_t sub_100EE510C()
{
  result = qword_1016BF2F0;
  if (!qword_1016BF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2F0);
  }

  return result;
}

unint64_t sub_100EE5164()
{
  result = qword_1016BF2F8;
  if (!qword_1016BF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2F8);
  }

  return result;
}

void sub_100EE51B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v74 - v8;
  v87 = type metadata accessor for UUID();
  v10 = *(v87 - 8);
  v11 = __chkstk_darwin(v87);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v74 - v14;
  v88 = [a1 encryptedValues];
  if (CKRecord.recordType.getter() == 0x61636F4C65666153 && v15 == 0xEC0000006E6F6974)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      sub_100EE87E8();
      swift_allocError();
      *v48 = 0;
      goto LABEL_22;
    }
  }

  v83 = a2;
  v17 = [a1 recordID];
  v18 = [v17 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v19 = *(v10 + 48);
  v20 = v87;
  if (v19(v9, 1, v87) == 1)
  {
    sub_1002EA198(v9);
    sub_100EE87E8();
    swift_allocError();
    *v21 = 1;
LABEL_22:
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v84 = v10;
  v22 = *(v10 + 32);
  v81 = v10 + 32;
  v82 = v19;
  v80 = v22;
  v22(v86, v9, v20);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v88 objectForKeyedSubscript:v23];

  if (!v24 || (v89 = v24, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80), (swift_dynamicCast() & 1) == 0))
  {
    v43 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10138BBE0;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_100008C00();
    *(v44 + 32) = 0xD000000000000011;
    *(v44 + 40) = 0x80000001013678E0;
    *(v44 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v44 + 104) = sub_10013A2D8();
    *(v44 + 72) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v45 = a1;
    v46 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v46, "Failed to decode value for key: %@ from %@", 42, 2, v44);

    sub_100EE87E8();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();

LABEL_27:
    swift_unknownObjectRelease();
    (*(v84 + 8))(v86, v87);
    return;
  }

  v25 = v91;
  v26 = String._bridgeToObjectiveC()();
  v27 = [v88 objectForKeyedSubscript:v26];

  if (!v27 || (v91 = v27, (swift_dynamicCast() & 1) == 0))
  {

    v49 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE400000000000000;
    v52 = 1701667182;
LABEL_25:
    *(v50 + 32) = v52;
LABEL_26:
    *(v50 + 40) = v51;
    *(v50 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v50 + 104) = sub_10013A2D8();
    *(v50 + 72) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v53 = a1;
    v54 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v54, "Failed to decode value for key: %@ from %@", 42, 2, v50);

    sub_100EE87E8();
    swift_allocError();
    *v55 = 2;
    swift_willThrow();

    goto LABEL_27;
  }

  v28 = v90;
  v79 = v89;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v88 objectForKeyedSubscript:v29];

  if (!v30 || (v89 = v30, (swift_dynamicCast() & 1) == 0))
  {

    v49 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE800000000000000;
    v52 = 0x656475746974616CLL;
    goto LABEL_25;
  }

  v78 = v28;
  v31 = v91;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v88 objectForKeyedSubscript:v32];

  if (!v33 || (v89 = v33, (swift_dynamicCast() & 1) == 0))
  {

    v49 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    *(v50 + 32) = 0x64757469676E6F6CLL;
    v51 = 0xE900000000000065;
    goto LABEL_26;
  }

  v34 = v91;
  v35 = String._bridgeToObjectiveC()();
  v36 = [v88 objectForKeyedSubscript:v35];

  if (!v36 || (v89 = v36, (swift_dynamicCast() & 1) == 0))
  {

    v49 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE600000000000000;
    *(v50 + 32) = 0x737569646172;
    goto LABEL_26;
  }

  v37 = v91;
  v38 = v85;
  v39 = sub_100EE6970(6u, a1);
  if (v38)
  {
    (*(v84 + 8))(v86, v87);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = v39;
    v41 = type metadata accessor for SafeLocation(0);
    v42 = v83;
    *(v83 + v41[12]) = v40;
    *(v42 + v41[11]) = sub_100EE6D48(5u, a1);
    *(v42 + v41[6]) = sub_100EE7120(0, a1);
    v85 = objc_autoreleasePoolPush();
    v56 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    v76 = v41;
    v57 = v56;
    [a1 encodeSystemFieldsWithCoder:v56];
    [v57 finishEncoding];
    v58 = [v57 encodedData];
    v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v59;

    objc_autoreleasePoolPop(v85);
    v61 = v75;
    v60 = v76;
    *v42 = v77;
    v42[1] = v61;
    (*(v84 + 16))(v42 + v60[5], v86, v87);
    v77 = v25[2];
    if (v77)
    {
      v62 = 0;
      v63 = v25 + 5;
      v85 = _swiftEmptyArrayStorage;
      while (v62 < v25[2])
      {

        UUID.init(uuidString:)();

        v64 = v87;
        if (v82(v7, 1, v87) == 1)
        {
          sub_1002EA198(v7);
        }

        else
        {
          v80(v13, v7, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_100A5BFE0(0, v85[2] + 1, 1, v85);
          }

          v66 = v85[2];
          v65 = v85[3];
          v67 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            v75 = v66 + 1;
            v70 = sub_100A5BFE0((v65 > 1), v66 + 1, 1, v85);
            v67 = v75;
            v85 = v70;
          }

          v68 = v84;
          v69 = v85;
          v85[2] = v67;
          v80(&v69[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66], v13, v87);
        }

        ++v62;
        v63 += 2;
        if (v77 == v62)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
    }

    else
    {
      v85 = _swiftEmptyArrayStorage;
LABEL_42:

      swift_unknownObjectRelease();
      (*(v84 + 8))(v86, v87);
      v71 = v76;
      v72 = v83;
      *(v83 + v76[13]) = v85;
      v73 = (v72 + v71[7]);
      *v73 = v79;
      v73[1] = v78;
      *(v72 + v71[8]) = v31;
      *(v72 + v71[9]) = v34;
      *(v72 + v71[10]) = v37;
    }
  }
}

uint64_t sub_100EE5E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a1 type];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = 4;
      goto LABEL_13;
    }

    if (v10 == 4)
    {
      v11 = 5;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v10 != 2)
  {
LABEL_8:
    HIDWORD(v34) = 0;
    goto LABEL_14;
  }

  v11 = 3;
LABEL_13:
  HIDWORD(v34) = v11;
LABEL_14:
  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = [a1 location];
  [v17 coordinate];
  v19 = v18;

  v20 = [a1 location];
  [v20 coordinate];
  v22 = v21;

  v23 = [a1 location];
  [v23 horizontalAccuracy];
  v25 = v24;

  v26 = [a1 location];
  v27 = [v26 referenceFrame];

  v28 = [a1 approvalState];
  if (v28 >= 4)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (v27 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2 * (v27 == 2);
  }

  *a3 = xmmword_10138C660;
  v31 = type metadata accessor for SafeLocation(0);
  result = (*(v6 + 32))(&a3[v31[5]], v8, v5);
  a3[v31[6]] = BYTE4(v34);
  v33 = &a3[v31[7]];
  *v33 = v14;
  *(v33 + 1) = v16;
  *&a3[v31[8]] = v19;
  *&a3[v31[9]] = v22;
  *&a3[v31[10]] = v25;
  a3[v31[11]] = v30;
  a3[v31[12]] = v29;
  *&a3[v31[13]] = v35;
  return result;
}

unint64_t sub_100EE6298(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x636E657265666572;
    v6 = 0x6C61766F72707061;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x64757469676E6F6CLL;
    if (a1 != 5)
    {
      v7 = 0x737569646172;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 1701869940;
    v3 = 1701667182;
    if (a1 != 3)
    {
      v3 = 0x656475746974616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_100EE63EC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Data.hash(into:)();
  v6 = type metadata accessor for SafeLocation(0);
  v18[1] = sub_100EE8748(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v6[6]));
  String.hash(into:)();
  v7 = *(v1 + v6[8]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = *(v1 + v6[9]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  v9 = *(v1 + v6[10]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  Hasher._combine(_:)(*(v1 + v6[11]));
  Hasher._combine(_:)(*(v1 + v6[12]));
  v10 = *(v1 + v6[13]);
  Hasher._combine(_:)(*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    do
    {
      v13(v5, v15, v2);
      dispatch thunk of Hashable.hash(into:)();
      (*v17)(v5, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_100EE66E0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C268);
  sub_1000076D4(v0, qword_10177C268);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100EE684C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100EE957C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100EE6874(uint64_t a1)
{
  v2 = sub_100EE8BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE68B0(uint64_t a1)
{
  v2 = sub_100EE8BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EE68EC()
{
  Hasher.init(_seed:)();
  sub_100EE63EC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100EE6930(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100EE63EC(v2);
  return Hasher._finalize()();
}

uint64_t sub_100EE6970(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = v16, v16 >= 4))
  {
    v8 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_10138BBE0;
    v11 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v12 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v12 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v12 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v12 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v12 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v11)
      {
        v4 = 1701667182;
      }
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    v10[4] = v4;
    v10[5] = v12;
    v10[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v10[13] = sub_10013A2D8();
    v10[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = a2;
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v14, "Failed to decode value for key: %@ from %@", 42, 2, v10);

    sub_100EE87E8();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100EE6D48(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = v16, v16 >= 3))
  {
    v8 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_10138BBE0;
    v11 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v12 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v12 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v12 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v12 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v12 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v11)
      {
        v4 = 1701667182;
      }
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    v10[4] = v4;
    v10[5] = v12;
    v10[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v10[13] = sub_10013A2D8();
    v10[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = a2;
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v14, "Failed to decode value for key: %@ from %@", 42, 2, v10);

    sub_100EE87E8();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100EE7120(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v16), result == 6))
  {
    v8 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_10138BBE0;
    v11 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v12 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v12 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v12 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v12 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v12 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v11)
      {
        v4 = 1701667182;
      }
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    v10[4] = v4;
    v10[5] = v12;
    v10[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v10[13] = sub_10013A2D8();
    v10[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = a2;
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v14, "Failed to decode value for key: %@ from %@", 42, 2, v10);

    sub_100EE87E8();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_100EE7500(id *a1)
{
  v2 = v1;
  v44 = type metadata accessor for UUID();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v8 = v46;
  v7 = v47;
  v9 = type metadata accessor for SafeLocation(0);
  v10 = (v2 + v9[7]);
  v12 = *v10;
  v11 = *(v10 + 1);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (*&v8 == *&v12 && v7 == v11)
  {

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v48 = &type metadata for String;
    v49 = &protocol witness table for String;
    v46 = v12;
    v47 = v11;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v15 = *(v2 + v9[8]);
  if ((v47 & 1) != 0 || v46 != v15)
  {
    v48 = &type metadata for Double;
    v49 = &protocol witness table for Double;
    v46 = v15;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v16 = *(v2 + v9[9]);
  if ((v47 & 1) != 0 || v46 != v16)
  {
    v48 = &type metadata for Double;
    v49 = &protocol witness table for Double;
    v46 = v16;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v17 = *(v2 + v9[10]);
  if ((v47 & 1) != 0 || v46 != v17)
  {
    v48 = &type metadata for Double;
    v49 = &protocol witness table for Double;
    v46 = v17;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v18 = *(v2 + v9[11]);
  if ((v47 & 1) != 0 || *&v46 != *&v18)
  {
    v48 = &type metadata for Int;
    v49 = &protocol witness table for Int;
    v46 = v18;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v19 = *(v2 + v9[12]);
  if ((v47 & 1) != 0 || *&v46 != *&v19)
  {
    v48 = &type metadata for Int;
    v49 = &protocol witness table for Int;
    v46 = v19;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v20 = *(v2 + v9[6]);
  if ((v47 & 1) != 0 || *&v46 != *&v20)
  {
    v48 = &type metadata for Int;
    v49 = &protocol witness table for Int;
    v46 = v20;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v40[1] = v5;
  if ((v47 & 1) != 0 || *&v46 != *&v19)
  {
    v48 = &type metadata for Int;
    v49 = &protocol witness table for Int;
    v46 = v19;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v21 = *(v2 + v9[13]);
  v22 = *(v21 + 16);
  v23 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  if (v22)
  {
    v40[0] = v6;
    v46 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_101123BB8(0, v22, 0);
    v23 = v46;
    v24 = v42 + 16;
    v25 = *(v42 + 16);
    v26 = v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v41 = *(v42 + 72);
    v42 = v25;
    v27 = (v24 - 8);
    do
    {
      v29 = v43;
      v28 = v44;
      (v42)(v43, v26, v44);
      v30 = UUID.uuidString.getter();
      v32 = v31;
      (*v27)(v29, v28);
      v46 = v23;
      v34 = *(*&v23 + 16);
      v33 = *(*&v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_101123BB8((v33 > 1), v34 + 1, 1);
        v23 = v46;
      }

      *(*&v23 + 16) = v34 + 1;
      v35 = (*&v23 + 16 * v34);
      v35[4] = v30;
      v35[5] = v32;
      v26 += v41;
      --v22;
    }

    while (v22);
    v6 = v40[0];
  }

  *&v36 = COERCE_DOUBLE(CKRecord.subscript.getter());
  if (*&v36 != 0.0 && (v46 = *&v36, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80), (swift_dynamicCast() & 1) != 0) && (v37 = sub_10038ED80(v45, *&v23), , (v37 & 1) != 0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v39 = String._bridgeToObjectiveC()();
    [v6 setObject:isa forKeyedSubscript:v39];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100EE7BE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BF360, &qword_1013F0098);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100EE8BC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_100017D5C(v14, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v14, v15);
  }

  else
  {
    sub_100016590(v14, v15);
    v10 = type metadata accessor for SafeLocation(0);
    LOBYTE(v14) = 1;
    type metadata accessor for UUID();
    sub_100EE8748(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[6]);
    v13 = 2;
    sub_100EE8DD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[11]);
    v13 = 7;
    sub_100EE8E28();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[12]);
    v13 = 8;
    sub_100EE8E7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v10[13]);
    v13 = 9;
    sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
    sub_100EE8ED0(&qword_1016BF380, &qword_101698330, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100EE7FE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016BF328, &unk_1013F0088);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  sub_1000035D0(a1, v13);
  sub_100EE8BC4();
  v32 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v33);
  }

  v14 = v30;
  v26 = v12;
  v27 = v10;
  v35 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v26;
  *v26 = v34;
  LOBYTE(v34) = 1;
  sub_100EE8748(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25[1] = v4;
  v16 = v27;
  (*(v29 + 32))(&v15[v27[5]], v6, v4);
  v35 = 2;
  sub_100EE8C18();
  v25[0] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[v16[6]] = v34;
  LOBYTE(v34) = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = &v15[v16[7]];
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v34) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v15[v16[8]] = v20;
  LOBYTE(v34) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v15[v16[9]] = v21;
  LOBYTE(v34) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v15[v16[10]] = v22;
  v35 = 7;
  sub_100EE8C6C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[v16[11]] = v34;
  v35 = 8;
  sub_100EE8CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[v16[12]] = v34;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v35 = 9;
  sub_100EE8ED0(&qword_1016CBC30, &qword_101698300, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v32, v31);
  v23 = v26;
  *&v26[v27[13]] = v34;
  sub_100EE8D14(v23, v28);
  sub_100007BAC(v33);
  return sub_100EE8D78(v23);
}

uint64_t sub_100EE8678(uint64_t a1)
{
  *(a1 + 8) = sub_100EE8748(&unk_1016BF300, type metadata accessor for SafeLocation, &unk_1013F0018);
  result = sub_100EE8748(&unk_1016B14D0, type metadata accessor for SafeLocation, &unk_1013EFFF0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SafeLocation(uint64_t a1)
{
  result = qword_1016BF3E0;
  if (!qword_1016BF3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EE8748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100EE8790(uint64_t a1)
{
  result = sub_100EE8748(&unk_1016B14C0, type metadata accessor for SafeLocation, &unk_1013F0040);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100EE87E8()
{
  result = qword_1016BF310;
  if (!qword_1016BF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF310);
  }

  return result;
}

double sub_100EE883C(void *a1)
{
  v2 = v1;
  [v1 center];
  v5 = v4;
  [v1 center];
  v7 = [objc_allocWithZone(CLLocation) initWithLatitude:v5 longitude:v6];
  [v7 setReferenceFrame:{objc_msgSend(v2, "geoReferenceFrame")}];
  [a1 center];
  v9 = v8;
  [a1 center];
  v11 = [objc_allocWithZone(CLLocation) initWithLatitude:v9 longitude:v10];
  [v11 setReferenceFrame:{objc_msgSend(a1, "geoReferenceFrame")}];
  [v7 distanceFromLocation:v11];
  v13 = v12;

  return v13;
}

double sub_100EE8968(void *a1)
{
  v3 = sub_100EE883C(a1);
  [v1 radius];
  v5 = v4;
  [a1 radius];
  v7 = 0.0;
  if (v5 + v6 >= v3)
  {
    v8 = v5 * v5;
    v9 = v6 * v6;
    if (v3 <= vabdd_f64(v6, v5))
    {
      if (v9 >= v8)
      {
        v15 = v5 * v5;
      }

      else
      {
        v15 = v6 * v6;
      }

      return v15 * 3.14159265;
    }

    else
    {
      v10 = v6;
      v11 = acos((v3 * v3 + v8 - v9) / (v3 * (v5 + v5)));
      v12 = v11 + v11;
      v13 = acos((v3 * v3 + v9 - v8) / (v3 * (v10 + v10)));
      v14 = v9 * ((v13 + v13) * 0.5) - v9 * 0.5 * sin(v13 + v13);
      return v8 * (v12 * 0.5) - v8 * 0.5 * sin(v12) + v14;
    }
  }

  return v7;
}

uint64_t sub_100EE8A90(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for SafeLocation(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]))
  {
    return 0;
  }

  v10 = v4[13];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1003902F4(v11, v12);
}

unint64_t sub_100EE8BC4()
{
  result = qword_1016BF330;
  if (!qword_1016BF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF330);
  }

  return result;
}

unint64_t sub_100EE8C18()
{
  result = qword_1016BF338;
  if (!qword_1016BF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF338);
  }

  return result;
}

unint64_t sub_100EE8C6C()
{
  result = qword_1016BF340;
  if (!qword_1016BF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF340);
  }

  return result;
}

unint64_t sub_100EE8CC0()
{
  result = qword_1016BF348;
  if (!qword_1016BF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF348);
  }

  return result;
}

uint64_t sub_100EE8D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EE8D78(uint64_t a1)
{
  v2 = type metadata accessor for SafeLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EE8DD4()
{
  result = qword_1016BF368;
  if (!qword_1016BF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF368);
  }

  return result;
}

unint64_t sub_100EE8E28()
{
  result = qword_1016BF370;
  if (!qword_1016BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF370);
  }

  return result;
}

unint64_t sub_100EE8E7C()
{
  result = qword_1016BF378;
  if (!qword_1016BF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF378);
  }

  return result;
}

uint64_t sub_100EE8ED0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_100EE8748(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100EE8F6C()
{
  sub_101125550(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_101125550((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 2;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_101125550((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 3;
  v5 = v1 + 3;
  if (v2 < (v1 + 3))
  {
    sub_101125550((v0 > 1), v1 + 3, 1);
  }

  result = _swiftEmptyArrayStorage;
  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 4;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v1 + 4) > (v7 >> 1))
  {
    sub_101125550((v7 > 1), v1 + 4, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v1 + 4;
  *(&_swiftEmptyArrayStorage[4] + v5) = 5;
  return result;
}

void sub_100EE9140(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100EE920C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100EE920C(uint64_t a1)
{
  if (!qword_1016BF3F0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BF3F0);
    }
  }
}

unint64_t sub_100EE92B0()
{
  result = qword_1016BF448;
  if (!qword_1016BF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF448);
  }

  return result;
}

unint64_t sub_100EE9308()
{
  result = qword_1016BF450;
  if (!qword_1016BF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF450);
  }

  return result;
}

unint64_t sub_100EE9360()
{
  result = qword_1016BF458;
  if (!qword_1016BF458)
  {
    sub_1000BC580(&qword_1016BF460, qword_1013F02B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF458);
  }

  return result;
}

unint64_t sub_100EE93C8()
{
  result = qword_1016BF468;
  if (!qword_1016BF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF468);
  }

  return result;
}

unint64_t sub_100EE9420()
{
  result = qword_1016BF470;
  if (!qword_1016BF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF470);
  }

  return result;
}

unint64_t sub_100EE9478()
{
  result = qword_1016BF478;
  if (!qword_1016BF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF478);
  }

  return result;
}

unint64_t sub_100EE94D0()
{
  result = qword_1016BF480;
  if (!qword_1016BF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF480);
  }

  return result;
}

unint64_t sub_100EE9528()
{
  result = qword_1016BF488;
  if (!qword_1016BF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF488);
  }

  return result;
}

uint64_t sub_100EE957C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656D61724665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013678E0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_100EE98D4()
{
  result = qword_1016BF490;
  if (!qword_1016BF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF490);
  }

  return result;
}

unint64_t sub_100EE9928()
{
  result = qword_1016BF498;
  if (!qword_1016BF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF498);
  }

  return result;
}

unint64_t sub_100EE997C()
{
  result = qword_1016BF4A0;
  if (!qword_1016BF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF4A0);
  }

  return result;
}

id sub_100EE99D4()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_100EE9AB4(void *a1)
{
  v25 = a1;
  v2 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (sub_100EEC0A4(2, 2, v10 & 1))
  {
    v11 = sub_100003518();
    v12 = SPSettingsServiceStateKey;
    [v11 setObject:v25 forKey:SPSettingsServiceStateKey];

    v13 = sub_100003518();
    v14 = [v13 stringForKey:v12];

    if (!v14)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v14 = qword_10177B658;
    }

    v15 = sub_100EEA744();
    sub_100EEAC04(v4 + v2[6]);
    sub_100EEB5B4(v4 + v2[7]);
    v16 = sub_100EEB5E0();
    v18 = v17;
    sub_100EEB8F8(v4 + v2[9]);
    v19 = *(v1 + 32);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 BOOLForKey:v20];

    *v4 = v14;
    v4[1] = v15;
    v22 = v4 + v2[8];
    *v22 = v16;
    v22[8] = v18 & 1;
    *(v4 + v2[10]) = v21;
    sub_100EED430(v4, v1);

    sub_100EED7D4(v4);
  }

  else
  {
    v23 = v25;
  }
}

void *sub_100EE9D44()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = _swiftEmptyArrayStorage;
  v29[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100EED938(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0xD000000000000014;
  v0[7] = 0x8000000101364BF0;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v8;
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    v12 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = v30;
    v18 = v31;
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1013917A0;
    *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 40) = v20;
    *(v19 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 56) = v21;
    *(v19 + 64) = v17;
    *(v19 + 72) = v18;
    *(v19 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 88) = v22;
    *(v19 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 104) = v23;
    *(v19 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 120) = v24;
    sub_100003518();
    objc_allocWithZone(type metadata accessor for UserDefaultsObserver());

    v25 = UserDefaultsObserver.init(keys:defaults:notificationBlock:)();
    v26 = v1[5];
    v1[5] = v25;

    v27 = v1[5];
    if (v27)
    {
      v28 = v27;
      dispatch thunk of UserDefaultsObserver.start()();
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEA16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003518();
  v8 = [v7 stringForKey:SPSettingsServiceStateKey];

  if (!v8)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v8 = qword_10177B658;
  }

  v9 = sub_100EEA744();
  sub_100EEAC04(v6 + v4[6]);
  sub_100EEB5B4(v6 + v4[7]);
  v10 = sub_100EEB5E0();
  v12 = v11;
  sub_100EEB8F8(v6 + v4[9]);
  v13 = sub_100003518();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  *v6 = v8;
  v6[1] = v9;
  v16 = v6 + v4[8];
  *v16 = v10;
  v16[8] = v12 & 1;
  *(v6 + v4[10]) = v15;
  sub_100EED430(v6, a3);
  return sub_100EED7D4(v6);
}

uint64_t sub_100EEA310()
{
  v1 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v1);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694A88 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B658;
  sub_100EE9AB4(v4);
  v5 = sub_100003518();
  [v5 removeObjectForKey:SPBeaconZoneCreationDateKey];

  [*(v0 + 32) removeObjectForKey:SPBeaconZoneCreationErrorCodeKey];
  [*(v0 + 32) removeObjectForKey:SPLastKeyRollDateKey];
  v6 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    v18 = v6;
    swift_once();
    v6 = v18;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C3D0, "ServiceStateProvider reset to default settings.", 47, 2, _swiftEmptyArrayStorage);
  v7 = sub_100003518();
  v8 = [v7 stringForKey:SPSettingsServiceStateKey];

  if (!v8)
  {
    v8 = v4;
  }

  v9 = sub_100EEA744();
  sub_100EEAC04(v3 + v1[6]);
  sub_100EEB5B4(v3 + v1[7]);
  v10 = sub_100EEB5E0();
  v12 = v11;
  sub_100EEB8F8(v3 + v1[9]);
  v13 = *(v0 + 32);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  *v3 = v8;
  v3[1] = v9;
  v16 = v3 + v1[8];
  *v16 = v10;
  v16[8] = v12 & 1;
  *(v3 + v1[10]) = v15;
  sub_100EED430(v3, v0);
  return sub_100EED7D4(v3);
}

uint64_t sub_100EEA588(char a1, char a2)
{
  v5 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100EEC0A4(a1 & 1, a2 & 1, 2);
  if (result)
  {
    v9 = sub_100003518();
    v10 = [v9 stringForKey:SPSettingsServiceStateKey];

    if (!v10)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v10 = qword_10177B658;
    }

    v11 = sub_100EEA744();
    sub_100EEAC04(v7 + v5[6]);
    sub_100EEB5B4(v7 + v5[7]);
    v12 = sub_100EEB5E0();
    v14 = v13;
    sub_100EEB8F8(v7 + v5[9]);
    v15 = sub_100003518();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 BOOLForKey:v16];

    *v7 = v10;
    v7[1] = v11;
    v18 = v7 + v5[8];
    *v18 = v12;
    v18[8] = v14 & 1;
    *(v7 + v5[10]) = v17;
    sub_100EED430(v7, v2);
    return sub_100EED7D4(v7);
  }

  return result;
}

uint64_t sub_100EEA744()
{
  v0 = sub_100003518();
  v1 = [v0 arrayForKey:SPSettingsServiceDisabledReasonsKey];

  if (!v1)
  {
    return 0;
  }

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100514514(v2);

  if (!v3)
  {
    return 0;
  }

  v5 = v3[2];
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_14:

    return v8;
  }

  v6 = 0;
  v7 = v3 + 5;
  v8 = _swiftEmptyArrayStorage;
  while (v6 < v3[2])
  {

    v9 = String._bridgeToObjectiveC()();

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5C078(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_100A5C078((v10 > 1), v11 + 1, 1, v8);
      v8 = result;
    }

    ++v6;
    v8[2] = v11 + 1;
    v8[v11 + 4] = v9;
    v7 += 2;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100EEA8C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      sub_101123BB8(0, v1, 0);
      v2 = 32;
      v3 = _swiftEmptyArrayStorage;
      do
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v4;
          v10 = v5;
          sub_101123BB8((v6 > 1), v7 + 1, 1);
          v5 = v10;
          v4 = v9;
          v3 = v13;
        }

        v3[2] = v7 + 1;
        v8 = &v3[2 * v7];
        v8[4] = v4;
        v8[5] = v5;
        v2 += 8;
        --v1;
      }

      while (v1);
    }
  }

  v11 = sub_100003518();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setObject:isa forKey:SPSettingsServiceDisabledReasonsKey];
}

uint64_t sub_100EEAA1C(char a1)
{
  v3 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100003518();
  v7 = String._bridgeToObjectiveC()();
  [v6 setBool:a1 & 1 forKey:v7];

  v8 = sub_100003518();
  v9 = [v8 stringForKey:SPSettingsServiceStateKey];

  if (!v9)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v9 = qword_10177B658;
  }

  v10 = sub_100EEA744();
  sub_100EEAC04(v5 + v3[6]);
  sub_100EEB5B4(v5 + v3[7]);
  v11 = sub_100EEB5E0();
  v13 = v12;
  sub_100EEB8F8(v5 + v3[9]);
  v14 = *(v1 + 32);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  *v5 = v9;
  v5[1] = v10;
  v17 = v5 + v3[8];
  *v17 = v11;
  v17[8] = v13 & 1;
  *(v5 + v3[10]) = v16;
  sub_100EED430(v5, v1);
  return sub_100EED7D4(v5);
}

id sub_100EEAC04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v20[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20[1] = v5;
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v9 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = sub_100003518();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 stringForKey:v15];

    if (!v16)
    {
      goto LABEL_8;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v17 = type metadata accessor for UUID();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
LABEL_8:
      v19 = type metadata accessor for UUID();
      return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }

    (*(v18 + 32))(a1, v4, v17);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100EEAE98(uint64_t a1)
{
  v55 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v55);
  v56 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v51[-v9];
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = __chkstk_darwin(v11 - 8);
  v54 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v51[-v15];
  __chkstk_darwin(v14);
  v18 = &v51[-v17];
  v57 = v1;
  sub_100EEAC04(&v51[-v17]);
  v19 = *(v8 + 56);
  v59 = a1;
  sub_1000D2A70(a1, v10, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v18, &v10[v19], &qword_1016980D0, &unk_10138F3B0);
  v58 = v5;
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
      v21 = v59;
      return sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v10, v16, &qword_1016980D0, &unk_10138F3B0);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    (*(v58 + 8))(v16, v4);
LABEL_6:
    sub_10000B3A8(v10, &qword_1016AF880, &unk_10138CE20);
    v21 = v59;
    v22 = v57;
    goto LABEL_7;
  }

  v31 = v58;
  v32 = v53;
  (*(v58 + 32))(v53, &v10[v19], v4);
  sub_100EED938(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v31 + 8);
  v33(v32, v4);
  sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
  v33(v16, v4);
  sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
  v21 = v59;
  v22 = v57;
  if (v52)
  {
    return sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
  }

LABEL_7:
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v23;
  v24._countAndFlagsBits = 45;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    v27 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v27)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v34._countAndFlagsBits = v28;
    v34._object = v30;
    String.append(_:)(v34);

    v35 = sub_100003518();
    v36 = v54;
    sub_1000D2A70(v21, v54, &qword_1016980D0, &unk_10138F3B0);
    if (v20(v36, 1, v4) == 1)
    {
      sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      UUID.uuidString.getter();
      (*(v58 + 8))(v36, v4);
    }

    v37 = String._bridgeToObjectiveC()();

    v38 = String._bridgeToObjectiveC()();

    [v35 setObject:v37 forKey:v38];

    v39 = sub_100003518();
    v40 = [v39 stringForKey:SPSettingsServiceStateKey];

    if (!v40)
    {
      if (qword_101694A88 != -1)
      {
        swift_once();
      }

      v40 = qword_10177B658;
    }

    v41 = sub_100EEA744();
    v43 = v55;
    v42 = v56;
    sub_100EEAC04(&v56[*(v55 + 24)]);
    sub_100EEB5B4(v42 + v43[7]);
    v44 = sub_100EEB5E0();
    v46 = v45;
    sub_100EEB8F8(v42 + v43[9]);
    v47 = *(v22 + 32);
    v48 = String._bridgeToObjectiveC()();
    v49 = [v47 BOOLForKey:v48];

    *v42 = v40;
    v42[1] = v41;
    v50 = v42 + v43[8];
    *v50 = v44;
    v50[8] = v46 & 1;
    *(v42 + v43[10]) = v49;
    sub_100EED430(v42, v22);
    sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
    return sub_100EED7D4(v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEB5E0()
{
  v0 = sub_100003518();
  v1 = [v0 objectForKey:SPBeaconZoneCreationErrorCodeKey];

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000B3A8(v6, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }
}

uint64_t sub_100EEB6C4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100EEB5E0();
  if (a2)
  {
    if (v9)
    {
      return result;
    }

    v10 = sub_100003518();
    [v10 removeObjectForKey:SPBeaconZoneCreationErrorCodeKey];
  }

  else
  {
    if ((v9 & 1) == 0 && result == a1)
    {
      return result;
    }

    v11 = sub_100003518();
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    [v11 setObject:v10 forKey:SPBeaconZoneCreationErrorCodeKey];
  }

  v12 = sub_100003518();
  v13 = [v12 stringForKey:SPSettingsServiceStateKey];

  if (!v13)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v13 = qword_10177B658;
  }

  v14 = sub_100EEA744();
  sub_100EEAC04(v7 + v5[6]);
  sub_100EEB5B4(v7 + v5[7]);
  v15 = sub_100EEB5E0();
  v17 = v16;
  sub_100EEB8F8(v7 + v5[9]);
  v18 = sub_100003518();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  *v7 = v13;
  v7[1] = v14;
  v21 = v7 + v5[8];
  *v21 = v15;
  v21[8] = v17 & 1;
  *(v7 + v5[10]) = v20;
  sub_100EED430(v7, v2);
  return sub_100EED7D4(v7);
}

uint64_t sub_100EEB904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003518();
  v5 = [v4 objectForKey:*a1];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10000B3A8(v12, &unk_1016A0B10, &qword_10139BF40);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_100EEBA68(void (*a1)(uint64_t), void (*a2)(uint64_t), void *a3)
{
  v50 = a3;
  v54 = a2;
  v51 = type metadata accessor for ServiceStateConfigurationLayer(0);
  __chkstk_darwin(v51);
  v52 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v46[-v11];
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = __chkstk_darwin(v13 - 8);
  v49 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v46[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v46[-v20];
  v53 = v3;
  v54(v19);
  v22 = *(v10 + 56);
  v54 = a1;
  v23 = a1;
  v24 = v7;
  sub_1000D2A70(v23, v12, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v21, &v12[v22], &unk_101696900, &unk_10138B1E0);
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) == 1)
  {
    sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
    if (v25(&v12[v22], 1, v6) == 1)
    {
      sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
      return sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v12, v18, &unk_101696900, &unk_10138B1E0);
  if (v25(&v12[v22], 1, v6) == 1)
  {
    sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
    (*(v7 + 8))(v18, v6);
LABEL_6:
    sub_10000B3A8(v12, &unk_1016B1660, &unk_10138CE10);
    v26 = v53;
    goto LABEL_7;
  }

  v43 = *(v7 + 32);
  v44 = v48;
  v43(v48, &v12[v22], v6);
  sub_100EED938(&qword_101698290, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v24 + 8);
  v45(v44, v6);
  sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
  v45(v18, v6);
  sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
  v26 = v53;
  if (v47)
  {
    return sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
  }

LABEL_7:
  v27 = sub_100003518();
  v28 = v49;
  sub_1000D2A70(v54, v49, &unk_101696900, &unk_10138B1E0);
  if (v25(v28, 1, v6) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v28, v6);
  }

  [v27 setObject:isa forKey:*v50];

  swift_unknownObjectRelease();
  v30 = sub_100003518();
  v31 = [v30 stringForKey:SPSettingsServiceStateKey];

  if (!v31)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v31 = qword_10177B658;
  }

  v32 = sub_100EEA744();
  v33 = v51;
  v34 = v52;
  sub_100EEAC04(&v52[*(v51 + 24)]);
  sub_100EEB5B4(v34 + v33[7]);
  v35 = sub_100EEB5E0();
  v37 = v36;
  sub_100EEB8F8(v34 + v33[9]);
  v38 = *(v26 + 32);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 BOOLForKey:v39];

  *v34 = v31;
  v34[1] = v32;
  v41 = v34 + v33[8];
  *v41 = v35;
  v41[8] = v37 & 1;
  *(v34 + v33[10]) = v40;
  sub_100EED430(v34, v26);
  sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
  return sub_100EED7D4(v34);
}

uint64_t sub_100EEC0A4(char a1, char a2, char a3)
{
  v6 = sub_100EEA744();
  if (v6)
  {
    v7 = sub_101129C80(v6);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  v21 = v7;
  if (a2 == 2)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    v9 = sub_1010F5C98(SPDisabledReasonLowAccountSecurity);
    v10 = sub_1010F5C98(SPDisabledReasoniCloudSignedOut);

    if (!v9 && !v10)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_11;
    }

    v8 = 1;
  }

  else
  {
    v8 = sub_100DE9D98(&v20, SPDisabledReasonLowAccountSecurity);
  }

LABEL_11:
  if (a1 != 2)
  {
    v11 = &SPDisabledReasoniCloudSignedOut;
    if ((a1 & 1) == 0)
    {
      v12 = sub_100DE9D98(&v20, SPDisabledReasoniCloudSignedOut);

      v8 |= v12;
      v11 = &SPDisabledReasonLowAccountSecurity;
    }

    v13 = sub_1010F5C98(*v11);
    v8 |= v13 != 0;
  }

  if (a3 != 2)
  {
    if (a3)
    {
      v14 = sub_100DE9D98(&v20, SPDisabledReasonUserOptOut);

      v8 |= v14;
    }

    else
    {
      v15 = sub_1010F5C98(SPDisabledReasonUserOptOut);
      if (v8)
      {

        v8 = 1;
      }

      else
      {
        v8 = v15 != 0;
      }
    }
  }

  v16 = v21[2];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = sub_1003A869C(v21[2], 0);
  v18 = sub_1003CC2D0();
  sub_1000128F8(v20);
  if (v18 != v16)
  {
    __break(1u);
LABEL_24:

    v17 = _swiftEmptyArrayStorage;
  }

  sub_100EEA8C4(v17);
  return v8 & 1;
}

uint64_t sub_100EEC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016AF248, &unk_10140B900);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v9 = *(v2 + 24);
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100EED394;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101659F90;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEC578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100EEC79C(a1);
  }

  return result;
}

uint64_t sub_100EEC5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5E3C0(0, v8[2] + 1, 1, v8);
    *(a1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100A5E3C0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_100EEC79C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100EED360;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101659EF0;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EEC9D4(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v63);
  v62 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = v41 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = v11;
    v17 = result;
    swift_beginAccess();
    v18 = *(v17 + 16);

    v19 = v18;

    v20 = *(v18 + 16);
    if (v20)
    {
      v58 = sub_1000BC488();
      v22 = *(v12 + 16);
      v21 = v12 + 16;
      v57 = v22;
      v23 = *(v21 + 64);
      v41[1] = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v55 = (v9 + 104);
      v54 = (v9 + 8);
      v53 = *(v21 + 56);
      v50 = v4;
      v49 = (v21 + 16);
      v48 = enum case for DispatchQoS.QoSClass.default(_:);
      v56 = v23;
      v47 = (v23 + 16) & ~v23;
      v46 = (v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = v67;
      v44 = (v64 + 8);
      ++v43;
      v42 = v7;
      v52 = v5;
      v51 = v21;
      do
      {
        v25 = v61;
        v26 = v63;
        v57(v61, v24, v63);
        v27 = v59;
        (*v55)(v59, v48, v8);
        v64 = static OS_dispatch_queue.global(qos:)();
        (*v54)(v27, v8);
        v28 = *v49;
        v29 = v62;
        (*v49)(v62, v25, v26);
        sub_10001F280(a2, &v68);
        v30 = v46;
        v31 = swift_allocObject();
        v28((v31 + v47), v29, v26);
        sub_10000A748(&v68, v31 + v30);
        v67[2] = sub_100EED8A0;
        v67[3] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v67[0] = sub_100006684;
        v67[1] = &unk_10165A030;
        v32 = v8;
        v33 = a2;
        v34 = _Block_copy(aBlock);
        v35 = v42;
        static DispatchQoS.unspecified.getter();
        v65 = _swiftEmptyArrayStorage;
        sub_100EED938(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v36 = v50;
        v37 = v60;
        v38 = v52;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v64;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v34;
        a2 = v33;
        v8 = v32;
        _Block_release(v40);

        (*v44)(v36, v37);
        (*v43)(v35, v38);

        v24 += v53;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t sub_100EED0B4(uint64_t a1, void *a2)
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  Subscription.subscriber.getter();
  v3 = *sub_1000035D0(v8, v8[3]);
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_1000035D0(a2, v4);
  sub_1001503B4(v6, 4, 1, 0, 0, v3, v4, v5);
  return sub_100007BAC(v8);
}

uint64_t sub_100EED14C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100EED1C8(uint64_t a1, uint64_t a2)
{
  result = sub_100EED938(&qword_1016BF6B0, a2, type metadata accessor for ServiceStateProvider, &unk_1013F06C8);
  *(a1 + 8) = result;
  return result;
}

id sub_100EED220()
{
  result = sub_100EED240();
  qword_10177C280 = result;
  return result;
}

id sub_100EED240()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    return v2;
  }

  _StringGuts.grow(_:)(49);

  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v4);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100EED3AC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100EED430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = type metadata accessor for ServiceStateConfigurationLayer(0);
  v21[4] = &off_10165A058;
  v10 = sub_1000280DC(v21);
  sub_100EED830(a1, v10);
  v15[1] = *(a2 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v21, v20);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_10000A748(v20, v12 + 24);
  aBlock[4] = sub_100EED894;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101659FE0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100EED938(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);

  return sub_100007BAC(v21);
}

uint64_t type metadata accessor for ServiceStateConfigurationLayer(uint64_t a1)
{
  result = qword_1016BF710;
  if (!qword_1016BF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EED7D4(uint64_t a1)
{
  v2 = type metadata accessor for ServiceStateConfigurationLayer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100EED830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceStateConfigurationLayer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EED8A0()
{
  v1 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100EED0B4(v0 + v2, v3);
}

uint64_t sub_100EED938(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100EED9B0(uint64_t a1)
{
  sub_10090CC98(319, &qword_1016ADF10, type metadata accessor for SPServiceState);
  if (v1 <= 0x3F)
  {
    sub_100EEDAE4(319);
    if (v2 <= 0x3F)
    {
      sub_10090CC98(319, &qword_1016B1C20, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_10090CC98(319, &qword_1016BA040, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_100EEDB48();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100EEDAE4(uint64_t a1)
{
  if (!qword_1016ADF18)
  {
    sub_1000BC580(&qword_101697E78, &qword_1013F0760);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016ADF18);
    }
  }
}

void sub_100EEDB48()
{
  if (!qword_1016A8838)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A8838);
    }
  }
}

uint64_t type metadata accessor for MetricsEndpoint(uint64_t a1)
{
  result = qword_1016BF7B8;
  if (!qword_1016BF7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EEDC6C(uint64_t a1)
{
  sub_100EEDD7C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100EEDDEC(319, &qword_1016BF858, type metadata accessor for DeviceEvent.Location);
      if (v3 <= 0x3F)
      {
        sub_100EEDDEC(319, &unk_1016BF860, type metadata accessor for DeviceEvent.AttachmentInfo);
        if (v4 <= 0x3F)
        {
          type metadata accessor for BeaconIdentifier(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100EEDD7C()
{
  if (!qword_10169C540)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169C540);
    }
  }
}

void sub_100EEDDEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100EEDE98(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100EEDDEC(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100EEDF60(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BFA70, &unk_1013F0BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100EF320C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for DeviceEvent.Location(0);
    v8[12] = 3;
    type metadata accessor for Date();
    sub_100EEF898(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100EEE19C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for DeviceEvent.Location(0);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100EEE274()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  type metadata accessor for DeviceEvent.Location(0);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100EEE36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016BFA60, &qword_1013F0BA8);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DeviceEvent.Location(0);
  __chkstk_darwin(v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v29 = a1;
  sub_1000035D0(a1, v13);
  sub_100EF320C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v6;
    v33 = 0;
    v15 = v27;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v12 = v16;
    v32 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v15;
    v12[1] = v18;
    v31 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v12;
    v12[2] = v21;
    v30 = 3;
    sub_100EEF898(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = v14;
    v23 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v23);
    (*(v25 + 32))(v20 + *(v10 + 28), v22, v4);
    sub_100EF3094(v20, v26, type metadata accessor for DeviceEvent.Location);
  }

  return sub_100007BAC(v29);
}

uint64_t sub_100EEE6DC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BFA58, &qword_1013F0BA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100EF3150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100EEF898(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100EEE8A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  Hasher.init(_seed:)();
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  sub_1000D2A70(v0 + *(v8 + 20), v7, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100EEEAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v26 = type metadata accessor for UUID();
  v22 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016BFA48, &qword_1013F0B98);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100EF3150();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v11;
  v20 = v13;
  v14 = v22;
  v28 = 0;
  sub_100EEF898(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v23;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v20, v15, v26);
  v27 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v24 + 8))(v10, v16);
  v17 = v20;
  sub_1000D2AD8(v6, &v20[*(v19 + 20)], &qword_1016980D0, &unk_10138F3B0);
  sub_100EF31A4(v17, v21, type metadata accessor for DeviceEvent.AttachmentInfo);
  sub_100007BAC(a1);
  return sub_100EF2FE0(v17, type metadata accessor for DeviceEvent.AttachmentInfo);
}

uint64_t sub_100EEEF44()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x657070617369642ELL;
  if (v1 != 6)
  {
    v3 = 0x726961702ELL;
  }

  v4 = 0x6863617465642ELL;
  if (v1 != 4)
  {
    v4 = 0x657463657465642ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6E6F637369642ELL;
  if (v1 != 2)
  {
    v5 = 0x6863617474612ELL;
  }

  if (*v0)
  {
    v2 = 0x7463656E6E6F632ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100EEF058(uint64_t a1)
{
  v2 = sub_100EF320C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EEF094(uint64_t a1)
{
  v2 = sub_100EF320C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EEF108(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100EEF244()
{
  if (*v0)
  {
    return 0x73736553746F6F62;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100EEF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001013587D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73736553746F6F62 && a2 == 0xEF444955556E6F69)
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

uint64_t sub_100EEF380(uint64_t a1)
{
  v2 = sub_100EF3150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EEF3BC(uint64_t a1)
{
  v2 = sub_100EF3150();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100EEF42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v11 - v9;
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D2A70(v2 + *(a2 + 20), v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int sub_100EEF630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  Hasher.init(_seed:)();
  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D2A70(v2 + *(a2 + 20), v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100EEF898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100EEF8E4()
{
  result = qword_1016BF9E0;
  if (!qword_1016BF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9E0);
  }

  return result;
}

uint64_t sub_100EEF938()
{
  v1 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v1);
  v3 = v29 - v2;
  v4 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v4);
  v6 = v29 - v5;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v7._countAndFlagsBits = 0x456563697665443CLL;
  v7._object = 0xEF40203A746E6576;
  String.append(_:)(v7);
  v8 = type metadata accessor for DeviceEvent(0);
  type metadata accessor for Date();
  sub_100EEF898(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x656372756F73202CLL;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  v11 = 0xE800000000000000;
  v12 = 0x6E776F6E6B6E752ELL;
  v13 = *(v0 + 9);
  v14 = 0xEC00000064657261;
  v15 = 0x657070617369642ELL;
  if (v13 != 6)
  {
    v15 = 0x726961702ELL;
    v14 = 0xE500000000000000;
  }

  v16 = 0xE700000000000000;
  v17 = 0x6863617465642ELL;
  if (v13 != 4)
  {
    v17 = 0x657463657465642ELL;
    v16 = 0xEF79627261654E64;
  }

  if (*(v0 + 9) <= 5u)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0xEB00000000746365;
  v19 = 0x6E6E6F637369642ELL;
  if (v13 != 2)
  {
    v19 = 0x6863617474612ELL;
    v18 = 0xE700000000000000;
  }

  if (*(v0 + 9))
  {
    v12 = 0x7463656E6E6F632ELL;
    v11 = 0xE800000000000000;
  }

  if (*(v0 + 9) > 1u)
  {
    v12 = v19;
    v11 = v18;
  }

  if (*(v0 + 9) <= 3u)
  {
    v20 = v12;
  }

  else
  {
    v20 = v15;
  }

  if (*(v0 + 9) <= 3u)
  {
    v21 = v11;
  }

  else
  {
    v21 = v14;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  v23._countAndFlagsBits = 0x697461636F6C202CLL;
  v23._object = 0xEC000000203A6E6FLL;
  String.append(_:)(v23);
  sub_1000D2A70(v0 + *(v8 + 28), v6, &qword_101699E50, &qword_1013D97C0);
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25._object = 0x8000000101373AF0;
  v25._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v25);
  sub_1000D2A70(v0 + *(v8 + 32), v3, &unk_1016AA510, &unk_101393150);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return v29[0];
}

unint64_t sub_100EEFCD4()
{
  v1 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v1 - 8);
  v45 = &v44 - v2;
  v3 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DeviceEvent.Location(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 29556;
  *(inited + 40) = 0xE200000000000000;
  v16 = type metadata accessor for DeviceEvent(0);
  *(inited + 48) = Date.description.getter();
  *(inited + 56) = v17;
  *(inited + 64) = 0x656372756F73;
  *(inited + 72) = 0xE600000000000000;
  v18 = *(v0 + 9);
  if (v18 > 3)
  {
    if (*(v0 + 9) > 5u)
    {
      if (v18 == 6)
      {
        v19 = 0xEC00000064657261;
        v20 = 0x657070617369642ELL;
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x726961702ELL;
      }

      goto LABEL_17;
    }

    if (v18 != 4)
    {
      v19 = 0xEF79627261654E64;
      v20 = 0x657463657465642ELL;
      goto LABEL_17;
    }

    v19 = 0xE700000000000000;
    v21 = 1952801838;
  }

  else
  {
    if (*(v0 + 9) <= 1u)
    {
      v19 = 0xE800000000000000;
      if (*(v0 + 9))
      {
        v20 = 0x7463656E6E6F632ELL;
      }

      else
      {
        v20 = 0x6E776F6E6B6E752ELL;
      }

      goto LABEL_17;
    }

    if (v18 == 2)
    {
      v19 = 0xEB00000000746365;
      v20 = 0x6E6E6F637369642ELL;
      goto LABEL_17;
    }

    v19 = 0xE700000000000000;
    v21 = 1953784110;
  }

  v20 = v21 | 0x68636100000000;
LABEL_17:
  *(inited + 80) = v20;
  *(inited + 88) = v19;
  v22 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v50 = v22;
  sub_1000D2A70(v0 + *(v16 + 28), v10, &qword_101699E50, &qword_1013D97C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_101699E50, &qword_1013D97C0);
  }

  else
  {
    sub_100EF3094(v10, v14, type metadata accessor for DeviceEvent.Location);
    v48 = 0;
    v49 = 0xE000000000000000;
    Double.write<A>(to:)();
    v23._countAndFlagsBits = 44;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    Double.write<A>(to:)();
    v24._countAndFlagsBits = 44;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    Double.write<A>(to:)();
    v25 = v48;
    v26 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v22;
    sub_100FFACA0(v25, v26, 6516588, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v48;
    v50 = v48;
    sub_100EF2FE0(v14, type metadata accessor for DeviceEvent.Location);
  }

  sub_1000D2A70(v0 + *(v16 + 32), v5, &unk_1016AA510, &unk_101393150);
  v28 = v47;
  if ((*(v46 + 48))(v5, 1, v47) == 1)
  {
    sub_10000B3A8(v5, &unk_1016AA510, &unk_101393150);
  }

  else
  {
    v29 = v5;
    v30 = v44;
    sub_100EF3094(v29, v44, type metadata accessor for DeviceEvent.AttachmentInfo);
    v31 = UUID.uuidString.getter();
    v33 = v32;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v22;
    sub_100FFACA0(v31, v33, 0xD000000000000010, 0x80000001013587D0, v34);
    v50 = v48;
    v35 = v45;
    sub_1000D2A70(v30 + *(v28 + 20), v45, &qword_1016980D0, &unk_10138F3B0);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v40 = UUID.uuidString.getter();
      v42 = v41;
      (*(v37 + 8))(v35, v36);
      v39 = v42;
      v38 = v40;
    }

    sub_1001DD5B8(v38, v39, 0x73736553746F6F62, 0xEF444955556E6F69);
    sub_100EF2FE0(v30, type metadata accessor for DeviceEvent.AttachmentInfo);
    return v50;
  }

  return v22;
}

uint64_t sub_100EF03EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BFA10, &qword_1013F0B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100EF2F38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + 9);
    v17 = 1;
    sub_100EF3040();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for DeviceEvent(0);
    v16 = 2;
    v9 = type metadata accessor for Date();
    sub_100EEF898(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[1] = v9;
    v15 = 3;
    type metadata accessor for DeviceEvent.Location(0);
    sub_100EEF898(&qword_1016BFA20, type metadata accessor for DeviceEvent.Location, &unk_1013F0870);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = 4;
    type metadata accessor for DeviceEvent.AttachmentInfo(0);
    sub_100EEF898(&qword_1016BFA28, type metadata accessor for DeviceEvent.AttachmentInfo, &unk_1013F0928);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = 5;
    type metadata accessor for BeaconIdentifier(0);
    sub_100EEF898(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100EF078C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v22 = &v21 - v6;
  v7 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v14);
  }

  Hasher._combine(_:)(*(v1 + 9));
  v15 = type metadata accessor for DeviceEvent(0);
  v16 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v16;
  dispatch thunk of Hashable.hash(into:)();
  sub_100EF2004(a1);
  sub_1000D2A70(v1 + *(v15 + 32), v13, &unk_1016AA510, &unk_101393150);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v13, v10, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v17 = v22;
    sub_1000D2A70(&v10[*(v7 + 20)], v22, &qword_1016980D0, &unk_10138F3B0);
    v18 = v23;
    if ((*(v23 + 48))(v17, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v19 = v21;
      (*(v18 + 32))(v21, v17, v3);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v18 + 8))(v19, v3);
    }

    sub_100EF2FE0(v10, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100EF0C50()
{
  v1 = type metadata accessor for UUID();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  Hasher.init(_seed:)();
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
  }

  Hasher._combine(_:)(*(v0 + 9));
  v14 = type metadata accessor for DeviceEvent(0);
  v15 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = v15;
  dispatch thunk of Hashable.hash(into:)();
  sub_100EF2004(v22);
  sub_1000D2A70(v0 + *(v14 + 32), v12, &unk_1016AA510, &unk_101393150);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v12, v9, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000D2A70(&v9[*(v6 + 20)], v5, &qword_1016980D0, &unk_10138F3B0);
    v16 = v20;
    if ((*(v20 + 48))(v5, 1, v1) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v17 = v19;
      (*(v16 + 32))(v19, v5, v1);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v16 + 8))(v17, v1);
    }

    sub_100EF2FE0(v9, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100EF1118@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v48);
  v49 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v4 - 8);
  v50 = v41 - v5;
  v6 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v6 - 8);
  v51 = v41 - v7;
  v8 = type metadata accessor for Date();
  v52 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v41 - v12;
  v14 = sub_1000BC4D4(&qword_1016BF9E8, &qword_1013F0B70);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = v41 - v15;
  v17 = type metadata accessor for DeviceEvent(0);
  __chkstk_darwin(v17);
  v19 = (v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v57 = a1;
  sub_1000035D0(a1, v20);
  sub_100EF2F38();
  v55 = v16;
  v21 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100007BAC(v57);
  }

  v22 = v13;
  v46 = v11;
  v23 = v53;
  v24 = v54;
  v56 = v19;
  v65 = 0;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v56;
  *v56 = v25;
  *(v26 + 8) = v27 & 1;
  v63 = 1;
  sub_100EF2F8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v26 + 9) = v64;
  v62 = 2;
  v28 = sub_100EEF898(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v28;
  v45 = v17;
  v29 = *(v17 + 24);
  v31 = v52 + 32;
  v30 = *(v52 + 32);
  v30(v26 + v29, v22, v8);
  type metadata accessor for DeviceEvent.Location(0);
  v61 = 3;
  sub_100EEF898(&qword_1016BFA00, type metadata accessor for DeviceEvent.Location, &unk_1013F0898);
  v32 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v8;
  v42 = v30;
  v33 = v45;
  sub_1000D2AD8(v32, v56 + v45[7], &qword_101699E50, &qword_1013D97C0);
  type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v60 = 4;
  sub_100EEF898(&qword_1016BFA08, type metadata accessor for DeviceEvent.AttachmentInfo, &unk_1013F0950);
  v34 = v50;
  v51 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v23;
  v41[1] = v31;
  sub_1000D2AD8(v34, v56 + v33[8], &unk_1016AA510, &unk_101393150);
  v59 = 5;
  sub_100EEF898(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  v36 = v49;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100EF3094(v36, v56 + v45[9], type metadata accessor for BeaconIdentifier);
  v58 = 6;
  v38 = v46;
  v39 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v35 + 8))(v55, v24);
  v40 = v56;
  v42(v56 + v45[10], v38, v39);
  sub_100EF31A4(v40, v47, type metadata accessor for DeviceEvent);
  sub_100007BAC(v57);
  return sub_100EF2FE0(v40, type metadata accessor for DeviceEvent);
}

unint64_t sub_100EF1928()
{
  v1 = *v0;
  v2 = 0x6449746E657665;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6144657461647075;
  }

  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x656D686361747461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_100EF1A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100EF35A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100EF1A40(uint64_t a1)
{
  v2 = sub_100EF2F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF1A7C(uint64_t a1)
{
  v2 = sub_100EF2F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EF1AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  Hasher.init(_seed:)();
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16);
  }

  Hasher._combine(_:)(*(v2 + 9));
  v17 = type metadata accessor for Date();
  sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = v17;
  dispatch thunk of Hashable.hash(into:)();
  sub_100EF2004(v24);
  sub_1000D2A70(v2 + *(a2 + 32), v15, &unk_1016AA510, &unk_101393150);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v15, v12, type metadata accessor for DeviceEvent.AttachmentInfo);
    Hasher._combine(_:)(1u);
    sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000D2A70(&v12[*(v9 + 20)], v8, &qword_1016980D0, &unk_10138F3B0);
    v18 = v22;
    if ((*(v22 + 48))(v8, 1, v4) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v19 = v21;
      (*(v18 + 32))(v21, v8, v4);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v18 + 8))(v19, v4);
    }

    sub_100EF2FE0(v12, type metadata accessor for DeviceEvent.AttachmentInfo);
  }

  sub_100EEF898(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_100EF2004(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DeviceEvent.Location(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1000D2A70(v2, &v13 - v8, &qword_101699E50, &qword_1013D97C0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v9, v6, type metadata accessor for DeviceEvent.Location);
    Hasher._combine(_:)(1u);
    v10 = *v6;
    if (*v6 == 0.0)
    {
      v10 = 0.0;
    }

    Hasher._combine(_:)(*&v10);
    v11 = v6[1];
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    Hasher._combine(_:)(*&v11);
    v12 = v6[2];
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    Hasher._combine(_:)(*&v12);
    type metadata accessor for Date();
    sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    sub_100EF2FE0(v6, type metadata accessor for DeviceEvent.Location);
  }
}

void sub_100EF2240(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ObservedAdvertisement.Location(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1000D2A70(v2, &v13 - v8, &qword_1016AA430, &unk_101392650);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100EF3094(v9, v6, type metadata accessor for ObservedAdvertisement.Location);
    Hasher._combine(_:)(1u);
    v10 = *v6;
    if (*v6 == 0.0)
    {
      v10 = 0.0;
    }

    Hasher._combine(_:)(*&v10);
    v11 = v6[1];
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    Hasher._combine(_:)(*&v11);
    v12 = v6[2];
    if (v12 == 0.0)
    {
      v12 = 0.0;
    }

    Hasher._combine(_:)(*&v12);
    type metadata accessor for Date();
    sub_100EEF898(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    sub_100EF2FE0(v6, type metadata accessor for ObservedAdvertisement.Location);
  }
}

uint64_t sub_100EF247C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for DeviceEvent.Location(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100EF24FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v7 - 8);
  v50 = &v46 - v8;
  v9 = sub_1000BC4D4(&qword_1016BFA30, &qword_1013F0B80);
  __chkstk_darwin(v9);
  v53 = &v46 - v10;
  v11 = type metadata accessor for DeviceEvent.Location(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v46 - v16);
  v18 = sub_1000BC4D4(&qword_1016BFA38, &unk_1013F0B88);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_26;
    }
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    goto LABEL_26;
  }

  v49 = v9;
  v22 = a2;
  v23 = type metadata accessor for DeviceEvent(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v46 = v6;
  v47 = v23;
  v24 = *(v23 + 28);
  v25 = *(v18 + 48);
  v48 = a1;
  v26 = a1 + v24;
  v27 = v25;
  sub_1000D2A70(v26, v20, &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v22 + v24, &v20[v27], &qword_101699E50, &qword_1013D97C0);
  v28 = *(v12 + 48);
  if (v28(v20, 1, v11) == 1)
  {
    v29 = v28(&v20[v27], 1, v11);
    v30 = v49;
    if (v29 == 1)
    {
      sub_10000B3A8(v20, &qword_101699E50, &qword_1013D97C0);
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_1000D2A70(v20, v17, &qword_101699E50, &qword_1013D97C0);
  v36 = v28(&v20[v27], 1, v11);
  v30 = v49;
  if (v36 == 1)
  {
    sub_100EF2FE0(v17, type metadata accessor for DeviceEvent.Location);
LABEL_17:
    v37 = &qword_1016BFA38;
    v38 = &unk_1013F0B88;
LABEL_24:
    v40 = v20;
LABEL_25:
    sub_10000B3A8(v40, v37, v38);
    goto LABEL_26;
  }

  sub_100EF3094(&v20[v27], v14, type metadata accessor for DeviceEvent.Location);
  if (*v17 != *v14 || v17[1] != v14[1] || v17[2] != v14[2])
  {
    sub_100EF2FE0(v14, type metadata accessor for DeviceEvent.Location);
    sub_100EF2FE0(v17, type metadata accessor for DeviceEvent.Location);
    v37 = &qword_101699E50;
    v38 = &qword_1013D97C0;
    goto LABEL_24;
  }

  v39 = static Date.== infix(_:_:)();
  sub_100EF2FE0(v14, type metadata accessor for DeviceEvent.Location);
  sub_100EF2FE0(v17, type metadata accessor for DeviceEvent.Location);
  sub_10000B3A8(v20, &qword_101699E50, &qword_1013D97C0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v31 = *(v47 + 32);
  v32 = *(v30 + 48);
  v33 = v53;
  sub_1000D2A70(v48 + v31, v53, &unk_1016AA510, &unk_101393150);
  sub_1000D2A70(v22 + v31, v33 + v32, &unk_1016AA510, &unk_101393150);
  v34 = v52;
  v35 = *(v51 + 48);
  if (v35(v33, 1, v52) != 1)
  {
    v43 = v50;
    sub_1000D2A70(v33, v50, &unk_1016AA510, &unk_101393150);
    if (v35(v33 + v32, 1, v34) != 1)
    {
      v44 = v46;
      sub_100EF3094(v33 + v32, v46, type metadata accessor for DeviceEvent.AttachmentInfo);
      v45 = sub_100EF2BE4(v43, v44);
      sub_100EF2FE0(v44, type metadata accessor for DeviceEvent.AttachmentInfo);
      sub_100EF2FE0(v43, type metadata accessor for DeviceEvent.AttachmentInfo);
      sub_10000B3A8(v33, &unk_1016AA510, &unk_101393150);
      if (!v45)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    sub_100EF2FE0(v43, type metadata accessor for DeviceEvent.AttachmentInfo);
    goto LABEL_30;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_30:
    v37 = &qword_1016BFA30;
    v38 = &qword_1013F0B80;
    v40 = v33;
    goto LABEL_25;
  }

  sub_10000B3A8(v33, &unk_1016AA510, &unk_101393150);
LABEL_32:
  if (static UUID.== infix(_:_:)())
  {
    type metadata accessor for BeaconIdentifier(0);
    if (static UUID.== infix(_:_:)())
    {
      v41 = static Date.== infix(_:_:)();
      return v41 & 1;
    }
  }

LABEL_26:
  v41 = 0;
  return v41 & 1;
}

BOOL sub_100EF2BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for DeviceEvent.AttachmentInfo(0) + 20);
  v15 = *(v11 + 48);
  sub_1000D2A70(a1 + v14, v13, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(a2 + v14, &v13[v15], &qword_1016980D0, &unk_10138F3B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000D2A70(v13, v10, &qword_1016980D0, &unk_10138F3B0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000B3A8(v13, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_100EEF898(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  return (v19 & 1) != 0;
}

unint64_t sub_100EF2F38()
{
  result = qword_1016BF9F0;
  if (!qword_1016BF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9F0);
  }

  return result;
}

unint64_t sub_100EF2F8C()
{
  result = qword_1016BF9F8;
  if (!qword_1016BF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF9F8);
  }

  return result;
}

uint64_t sub_100EF2FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100EF3040()
{
  result = qword_1016BFA18;
  if (!qword_1016BFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA18);
  }

  return result;
}

uint64_t sub_100EF3094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EF30FC()
{
  result = qword_1016BFA40;
  if (!qword_1016BFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA40);
  }

  return result;
}

unint64_t sub_100EF3150()
{
  result = qword_1016BFA50;
  if (!qword_1016BFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA50);
  }

  return result;
}

uint64_t sub_100EF31A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EF320C()
{
  result = qword_1016BFA68;
  if (!qword_1016BFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA68);
  }

  return result;
}

unint64_t sub_100EF3294()
{
  result = qword_1016BFA78;
  if (!qword_1016BFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA78);
  }

  return result;
}

unint64_t sub_100EF32EC()
{
  result = qword_1016BFA80;
  if (!qword_1016BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA80);
  }

  return result;
}

unint64_t sub_100EF3344()
{
  result = qword_1016BFA88;
  if (!qword_1016BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA88);
  }

  return result;
}

unint64_t sub_100EF339C()
{
  result = qword_1016BFA90;
  if (!qword_1016BFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA90);
  }

  return result;
}

unint64_t sub_100EF33F4()
{
  result = qword_1016BFA98;
  if (!qword_1016BFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFA98);
  }

  return result;
}

unint64_t sub_100EF344C()
{
  result = qword_1016BFAA0;
  if (!qword_1016BFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAA0);
  }

  return result;
}

unint64_t sub_100EF34A4()
{
  result = qword_1016BFAA8;
  if (!qword_1016BFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAA8);
  }

  return result;
}

unint64_t sub_100EF34FC()
{
  result = qword_1016BFAB0;
  if (!qword_1016BFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAB0);
  }

  return result;
}

unint64_t sub_100EF3554()
{
  result = qword_1016BFAB8;
  if (!qword_1016BFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAB8);
  }

  return result;
}

uint64_t sub_100EF35A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEE006F666E49746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144657461647075 && a2 == 0xEA00000000006574)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_100EF380C(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x636E6F4E68747561;
      break;
    case 3:
      result = 0x754E6C6169726573;
      break;
    case 4:
      result = 0x6169726553746C61;
      break;
    case 5:
      result = 0x7461747365747461;
      break;
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 0x7374726563;
      break;
    case 8:
      result = 7500643;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x69634572656E776FLL;
      break;
    case 11:
      result = 0x69684372656E776FLL;
      break;
    case 12:
      result = 0x7372655663657073;
      break;
    case 13:
      result = 0x657261776D726966;
      break;
    case 14:
      result = 0x49746375646F7270;
      break;
    case 15:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100EF39EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BFAC8, &qword_1013F1440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100EF5F64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v21, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v13, *(&v13 + 1));
  }

  else
  {
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v19 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 88);
    v13 = *(v3 + 88);
    v12 = 6;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 104);
    v13 = *(v3 + 104);
    v12 = 7;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 120);
    v14 = v13;
    v12 = 8;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100EF3F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100EF60D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100EF3F50(uint64_t a1)
{
  v2 = sub_100EF5F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF3F8C(uint64_t a1)
{
  v2 = sub_100EF5F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EF403C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v61 = a1[8];
  v5 = a1[3];
  v60 = a1[4];
  v6 = a1[5];
  v58 = a1[6];
  v59 = v6;
  v46 = v6;
  v47 = v60;
  v42 = v4;
  v43 = v58;
  v57 = v4;
  v8 = a1[2];
  v7 = a1[3];
  v48 = v5;
  v49 = v61;
  v9 = a1[10];
  v55 = a1[9];
  v56 = v7;
  v10 = a1[9];
  v44 = a1[10];
  v45 = v10;
  v11 = a1[1];
  v53 = a1[2];
  v54 = v9;
  v12 = *a1;
  v51 = a1[1];
  v52 = v12;
  v40 = *a1;
  v41 = v8;
  v39 = v11;
  v13 = *(a1 + 27);
  v50 = a1[12];
  if (v13 >> 60 == 15)
  {
    sub_1001022C4(&v61, &v38);
    sub_1001022C4(&v60, &v38);
    sub_1001022C4(&v59, &v38);
    sub_1001022C4(&v58, &v38);
    sub_1001022C4(&v57, &v38);
    sub_1001022C4(&v56, &v38);
    sub_1001022C4(&v55, &v38);
    sub_1001022C4(&v54, &v38);
    sub_100EF5DC4(&v53, &v38);
    sub_100EF5DC4(&v52, &v38);
    sub_100EF5DC4(&v51, &v38);
    sub_100EF5DC4(&v50, &v38);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_15:
    v38 = a1[11];
    sub_1000E0A3C();
    result = DataProtocol.intValue.getter();
    v33 = v48;
    *a2 = v49;
    *(a2 + 16) = result;
    *(a2 + 24) = v33;
    v34 = v46;
    *(a2 + 40) = v47;
    *(a2 + 56) = v34;
    v35 = v44;
    *(a2 + 72) = v45;
    *(a2 + 88) = v35;
    v36 = v42;
    *(a2 + 104) = v43;
    *(a2 + 120) = v36;
    v37 = v40;
    *(a2 + 136) = v41;
    *(a2 + 152) = v37;
    *(a2 + 168) = v39;
    *(a2 + 184) = 0x302E302E33;
    *(a2 + 192) = 0xE500000000000000;
    *(a2 + 200) = a1[12];
    *(a2 + 216) = v14;
    *(a2 + 224) = v15;
    *(a2 + 232) = v16;
    *(a2 + 240) = v17;
    return result;
  }

  v18 = *(a1 + 26);
  sub_1001022C4(&v61, &v38);
  sub_1001022C4(&v60, &v38);
  sub_1001022C4(&v59, &v38);
  sub_1001022C4(&v58, &v38);
  sub_1001022C4(&v57, &v38);
  sub_1001022C4(&v56, &v38);
  sub_1001022C4(&v55, &v38);
  sub_1001022C4(&v54, &v38);
  sub_100EF5DC4(&v53, &v38);
  sub_100EF5DC4(&v52, &v38);
  sub_100EF5DC4(&v51, &v38);
  sub_100EF5DC4(&v50, &v38);
  v19 = sub_100313B54(v18, v13);
  v21 = v20;
  v14 = Data.hexString.getter();
  v15 = v22;
  result = sub_100016590(v19, v21);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v16 = Data.hexString.getter();
      v17 = v32;
      sub_100016590(v29, v31);
      goto LABEL_15;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v18) - v18;
  if (!__OFSUB__(HIDWORD(v18), v18))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EF4374(uint64_t a1, uint64_t a2)
{
  v2[288] = a2;
  v2[287] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[289] = v3;
  v2[290] = *(v3 - 8);
  v2[291] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[292] = v4;
  v2[293] = *(v4 - 8);
  v2[294] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[295] = v5;
  v2[296] = *(v5 - 8);
  v2[297] = swift_task_alloc();

  return _swift_task_switch(sub_100EF44F0, 0, 0);
}

void sub_100EF44F0()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 2376);
  v7 = *(v0 + 2368);
  v8 = *(v0 + 2360);
  v9 = *(v0 + 2352);
  v53 = *(v0 + 2344);
  v54 = *(v0 + 2336);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 2280) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 2288) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v53 + 8))(v9, v54);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  *(v0 + 2384) = v33;
  v40 = *(v0 + 2296);
  sub_10093CBF0(v40, v0 + 2000);
  sub_100EF403C(v40, v0 + 16);
  sub_100EF5CB4(v40);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v41 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v41;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v42 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v42;
  v43 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v43;
  v44 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v44;
  v45 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v45;
  v46 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v46;
  v47 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v47;
  sub_100EF5D08();
  v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 2392) = 0;
  *(v0 + 2400) = v48;
  *(v0 + 2408) = v49;
  v50 = v48;
  v51 = v49;

  sub_100017D5C(v50, v51);
  v52 = swift_task_alloc();
  *(v0 + 2416) = v52;
  *v52 = v0;
  v52[1] = sub_100EF4C8C;

  sub_100EA77D4();
}

uint64_t sub_100EF4C8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2424) = a1;
  *(v3 + 2432) = a2;

  return _swift_task_switch(sub_100EF4D90, 0, 0);
}

uint64_t sub_100EF4D90()
{
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2328);
  v4 = *(v0 + 2320);
  v5 = *(v0 + 2312);
  *(v0 + 2264) = v2;
  *(v0 + 2272) = v1;
  *(v0 + 2248) = &type metadata for Data;
  *(v0 + 2256) = &protocol witness table for Data;
  *(v0 + 2224) = *(v0 + 2400);
  v6 = sub_1000035D0((v0 + 2224), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 2264);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2224));
  *(v0 + 2440) = *(v0 + 2264);
  *(v0 + 2448) = *(v0 + 2272);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 2456) = v9;
  *(v0 + 2464) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 2472) = v12;
  *v12 = v0;
  v12[1] = sub_100EF4F48;
  v13 = *(v0 + 2304);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100EF4F48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2480) = v1;

  if (v1)
  {
    v5 = sub_100EF55EC;
  }

  else
  {
    v6 = v4[308];
    v7 = v4[307];
    v4[311] = a1;
    sub_100016590(v7, v6);
    v5 = sub_100EF507C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100EF507C()
{
  v55 = v0;
  v1 = v0[311];
  v2 = v0[306];
  v3 = v0[305];
  v4 = v0[298];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v54);

  sub_100016590(v3, v2);
  v53 = v54[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C448);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing lock header:", v9, 2u);
  }

  v50 = v0 + 188;
  v51 = v0;

  v10 = -1;
  v11 = -1 << *(v53 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v53 + 64);
  v0 = ((63 - v11) >> 6);

  v13 = 0;
  if (v12)
  {
    while (2)
    {
      v14 = v13;
LABEL_13:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (v14 << 10) | (16 * v15);
      v17 = (*(v53 + 48) + v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v53 + 56) + v16);
      v21 = *v20;
      v22 = v20[1];

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v52 = v21;
        v25 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v25 = 136315394;
        v26 = sub_1000136BC(v18, v19, v54);

        *(v25 + 4) = v26;
        *(v25 + 12) = 2080;
        v27 = sub_1000136BC(v52, v22, v54);

        *(v25 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: %s", v25, 0x16u);
        swift_arrayDestroy();

        v13 = v14;
        if (v12)
        {
          continue;
        }
      }

      else
      {

        v13 = v14;
        if (v12)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v0)
    {
      break;
    }

    v12 = *(v53 + 64 + 8 * v14);
    ++v13;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  sub_100EF5D5C((v51 + 2), (v51 + 157));
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  sub_100EF5D94((v51 + 2));
  v30 = os_log_type_enabled(v28, v29);
  v31 = v51[287];
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136315138;
    v34 = *(v51 + 14);
    *(v50 + 12) = *(v51 + 13);
    *(v50 + 13) = v34;
    *(v50 + 14) = *(v51 + 15);
    v50[30] = v51[32];
    v35 = *(v51 + 10);
    *(v50 + 8) = *(v51 + 9);
    *(v50 + 9) = v35;
    v36 = *(v51 + 12);
    *(v50 + 10) = *(v51 + 11);
    *(v50 + 11) = v36;
    v37 = *(v51 + 6);
    *(v50 + 4) = *(v51 + 5);
    *(v50 + 5) = v37;
    v38 = *(v51 + 8);
    *(v50 + 6) = *(v51 + 7);
    *(v50 + 7) = v38;
    v39 = *(v51 + 2);
    *v50 = *(v51 + 1);
    *(v50 + 1) = v39;
    v40 = *(v51 + 4);
    *(v50 + 2) = *(v51 + 3);
    *(v50 + 3) = v40;
    sub_100EF5D5C((v51 + 2), (v51 + 219));
    v41 = String.init<A>(describing:)();
    v43 = sub_1000136BC(v41, v42, v54);

    *(v32 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v28, v29, "Pairing lock body %s", v32, 0xCu);
    sub_100007BAC(v33);

    sub_100EF5D94((v51 + 2));

    sub_100EF5CB4(v31);
  }

  else
  {

    sub_100EF5CB4(v31);

    sub_100EF5D94((v51 + 2));
  }

  v44 = v51[301];
  v45 = v51[300];

  sub_100017D5C(v45, v44);

  sub_100016590(v45, v44);
  v46 = v51[301];
  v47 = v51[300];

  v48 = v51[1];

  return v48(v53, v47, v46);
}

uint64_t sub_100EF55EC()
{
  v58 = v0;
  v1 = v0[306];
  v2 = v0[305];
  sub_100016590(v0[307], v0[308]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C448);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate attestation header: %{public}@.", v7, 0xCu);
    sub_100288C6C(v8);
  }

  else
  {
  }

  v55 = v0[298];
  if (v3[28] != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C448);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pairing lock header:", v12, 2u);
  }

  v56 = v0;
  v53 = v0 + 188;

  v13 = -1;
  v14 = -1 << *(v55 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v55 + 64);
  v0 = ((63 - v14) >> 6);

  v16 = 0;
  if (v15)
  {
    while (2)
    {
      v17 = v16;
LABEL_18:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v55 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v55 + 56) + v19);
      v24 = *v23;
      v3 = v23[1];

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v54 = v24;
        v27 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1000136BC(v21, v22, &v57);

        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        v29 = sub_1000136BC(v54, v3, &v57);

        *(v27 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: %s", v27, 0x16u);
        swift_arrayDestroy();

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      else
      {

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v0)
    {
      break;
    }

    v15 = *(v55 + 64 + 8 * v17);
    ++v16;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  v30 = v56;
  sub_100EF5D5C((v56 + 2), (v56 + 157));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100EF5D94((v56 + 2));
  v33 = os_log_type_enabled(v31, v32);
  v34 = v56[287];
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57 = v36;
    *v35 = 136315138;
    v37 = *(v56 + 14);
    *(v53 + 12) = *(v56 + 13);
    *(v53 + 13) = v37;
    *(v53 + 14) = *(v56 + 15);
    v53[30] = v56[32];
    v38 = *(v56 + 10);
    *(v53 + 8) = *(v56 + 9);
    *(v53 + 9) = v38;
    v39 = *(v56 + 12);
    *(v53 + 10) = *(v56 + 11);
    *(v53 + 11) = v39;
    v40 = *(v56 + 6);
    *(v53 + 4) = *(v56 + 5);
    *(v53 + 5) = v40;
    v41 = *(v56 + 8);
    *(v53 + 6) = *(v56 + 7);
    *(v53 + 7) = v41;
    v42 = *(v56 + 2);
    *v53 = *(v56 + 1);
    *(v53 + 1) = v42;
    v43 = *(v56 + 4);
    *(v53 + 2) = *(v56 + 3);
    *(v53 + 3) = v43;
    sub_100EF5D5C((v56 + 2), (v56 + 219));
    v44 = String.init<A>(describing:)();
    v46 = sub_1000136BC(v44, v45, &v57);

    *(v35 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing lock body %s", v35, 0xCu);
    sub_100007BAC(v36);
    v30 = v56;

    sub_100EF5D94((v56 + 2));

    sub_100EF5CB4(v34);
  }

  else
  {

    sub_100EF5CB4(v34);

    sub_100EF5D94((v56 + 2));
  }

  v47 = v30[301];
  v48 = v30[300];

  sub_100017D5C(v48, v47);

  sub_100016590(v48, v47);
  v49 = v30[301];
  v50 = v30[300];

  v51 = v30[1];

  return v51(v55, v50, v49);
}

unint64_t sub_100EF5D08()
{
  result = qword_1016BFAC0;
  if (!qword_1016BFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAC0);
  }

  return result;
}

uint64_t sub_100EF5DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100EF5E34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100EF5E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100EF5EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100EF5F64()
{
  result = qword_1016BFAD0;
  if (!qword_1016BFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAD0);
  }

  return result;
}

unint64_t sub_100EF5FCC()
{
  result = qword_1016BFAD8;
  if (!qword_1016BFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAD8);
  }

  return result;
}

unint64_t sub_100EF6024()
{
  result = qword_1016BFAE0;
  if (!qword_1016BFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAE0);
  }

  return result;
}

unint64_t sub_100EF607C()
{
  result = qword_1016BFAE8;
  if (!qword_1016BFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFAE8);
  }

  return result;
}

uint64_t sub_100EF60D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t type metadata accessor for PencilPairingLockAckResponse(uint64_t a1)
{
  result = qword_1016BFB48;
  if (!qword_1016BFB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EF6670(uint64_t a1)
{
  sub_1003955F8();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100EF66F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000BC4D4(&qword_1016BFB80, &qword_1013F15A8);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PencilPairingLockAckResponse(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100EF6B58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v13 = v12;
  v14 = v19;
  v22 = 0;
  sub_1000E307C();
  v15 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v13 = v21;
  type metadata accessor for UUID();
  LOBYTE(v21) = 1;
  sub_100395BEC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v9, v15);
  sub_10012C154(v6, v13 + *(v10 + 20));
  sub_100EF6BAC(v13, v18);
  sub_100007BAC(a1);
  return sub_100EF6C10(v13);
}

uint64_t sub_100EF69AC()
{
  if (*v0)
  {
    return 0x6449616E6D66;
  }

  else
  {
    return 0x754E6C6169726573;
  }
}

uint64_t sub_100EF69EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_100EF6AC8(uint64_t a1)
{
  v2 = sub_100EF6B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EF6B04(uint64_t a1)
{
  v2 = sub_100EF6B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EF6B58()
{
  result = qword_1016BFB88;
  if (!qword_1016BFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB88);
  }

  return result;
}

uint64_t sub_100EF6BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingLockAckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EF6C10(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingLockAckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EF6C80()
{
  result = qword_1016BFB90;
  if (!qword_1016BFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB90);
  }

  return result;
}

unint64_t sub_100EF6CD8()
{
  result = qword_1016BFB98;
  if (!qword_1016BFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFB98);
  }

  return result;
}

unint64_t sub_100EF6D30()
{
  result = qword_1016BFBA0;
  if (!qword_1016BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BFBA0);
  }

  return result;
}

uint64_t sub_100EF6D84()
{
  v1 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  if (v2)
  {
    [v2 unregisterObserver:*(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline)];
  }

  sub_100EF8B8C(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType, type metadata accessor for FMRemoteUILauncher.AlertType);

  v3 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100EF6E8C(uint64_t a1)
{
  result = type metadata accessor for FMRemoteUILauncher.AlertType(319);
  if (v2 <= 0x3F)
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
  }

  return result;
}

void sub_100EF6F7C()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  sub_100EF7330();
  v14 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 setUserInfo:isa];

  v3 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithServiceName:v4 viewControllerClassName:v5];

  v7 = [objc_opt_self() newHandleWithDefinition:v6 configurationContext:v14];
  v8 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle;
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  *(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle) = v7;
  v10 = v7;

  if (v10)
  {
    [v10 registerObserver:*(v0 + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline)];
  }

  v11 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  v12 = *(v0 + v8);
  if (v12)
  {
    v13 = v12;
    v11 = v11;
    [v13 activateWithContext:v11];
  }

  else
  {
  }
}