uint64_t sub_100557804(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, ...)
{
  v7 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v7);
  v9 = (v18 - v8);
  Transaction.capture()();
  sub_1000D2A70(a1, v9, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_10000B3A8(v9, &qword_10169F358, &qword_1013A0810);
  }

  v10 = *v9;
  v11 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v18[1] = v10;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, a3, a4, 2, v13);
}

uint64_t sub_1005579E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v74 = a3;
  v81 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v67 - v6;
  v79 = type metadata accessor for DateInterval();
  v71 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v12 = type metadata accessor for Date();
  v73 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - v16;
  v18 = __chkstk_darwin(v15);
  v75 = &v67 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v67 - v24;
  v26 = __chkstk_darwin(v23);
  v77 = &v67 - v27;
  v28 = __chkstk_darwin(v26);
  v78 = &v67 - v29;
  __chkstk_darwin(v28);
  v31 = &v67 - v30;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v32 = v82;
  v33 = sub_101073E88(v82);
  v80 = v31;
  static Date.trustedNow.getter(v31);
  sub_101073F30(v32);

  v72 = a1;
  v70 = v7;
  if (!v33)
  {
    v38 = v73;
    v40 = v78;
    v41 = v80;
    (*(v73 + 16))(v78, v80, v12);
    goto LABEL_16;
  }

  if (v33 == -1)
  {
    v34 = type metadata accessor for OwnedBeaconRecord(0);
    v35 = v74;
    sub_100B2DA4C(v11);
    v36 = type metadata accessor for KeyAlignmentRecord(0);
    v37 = (*(*(v36 - 8) + 48))(v11, 1, v36);
    v38 = v73;
    if (v37 == 1)
    {
      sub_10000B3A8(v11, &qword_10169F328, &unk_1013CB040);
      (*(v38 + 16))(v25, v35 + *(v34 + 32), v12);
      v39 = *(v38 + 32);
    }

    else
    {
      (*(v73 + 16))(v22, &v11[*(v36 + 32)], v12);
      sub_10058B268(v11, type metadata accessor for KeyAlignmentRecord);
      v39 = *(v38 + 32);
      v39(v25, v22, v12);
    }

    v40 = v78;
    v39(v78, v25, v12);
  }

  else
  {
    if (v33 >= 1)
    {
      v40 = v78;
      v41 = v80;
      Date.addingTimeInterval(_:)();
      v38 = v73;
      goto LABEL_16;
    }

    v40 = v78;
    (*(v73 + 16))(v78, v80, v12);
    v42 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v43 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    *(v44 + 56) = &type metadata for Int;
    *(v44 + 64) = &protocol witness table for Int;
    *(v44 + 32) = v33;
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Unexpected configValue: %ld", v67);

    v38 = v73;
  }

  v41 = v80;
LABEL_16:
  v45 = v77;
  Date.addingTimeInterval(_:)();
  v46 = *(v38 + 16);
  v47 = v75;
  v46(v75, v40, v12);
  v46(v17, v45, v12);
  DateInterval.init(start:end:)();
  v46(v47, v41, v12);
  v46(v17, v45, v12);
  DateInterval.init(start:end:)();
  LODWORD(v73) = static os_log_type_t.default.getter();
  v48 = v38;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v68 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10138B360;
  type metadata accessor for OwnedBeaconRecord(0);
  v50 = UUID.uuidString.getter();
  v52 = v51;
  *(v49 + 56) = &type metadata for String;
  v53 = sub_100008C00();
  *(v49 + 64) = v53;
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v54 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v49 + 96) = &type metadata for String;
  *(v49 + 104) = v53;
  *(v49 + 72) = v54;
  *(v49 + 80) = v55;
  v56 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v49 + 136) = &type metadata for String;
  *(v49 + 144) = v53;
  *(v49 + 112) = v56;
  *(v49 + 120) = v57;
  os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v68, "Share intervals for %@: %@ (private: %@)", 40, 2, v49);

  v58 = v70;
  sub_1000D2A70(v69, v70, &unk_101696900, &unk_10138B1E0);
  if ((*(v48 + 48))(v58, 1, v12) == 1)
  {
    v59 = *(v48 + 8);
    v59(v77, v12);
    v59(v78, v12);
    v59(v80, v12);
    sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
    v60 = v76;
  }

  else
  {
    v61 = v67;
    (*(v48 + 32))(v67, v58, v12);
    v62 = v75;
    v60 = v76;
    DateInterval.end.getter();
    v63 = static Date.< infix(_:_:)();
    v64 = *(v48 + 8);
    v64(v62, v12);
    if (v63)
    {
      v46(v62, v61, v12);
      DateInterval.end.setter();
    }

    DateInterval.end.getter();
    v65 = static Date.< infix(_:_:)();
    v64(v62, v12);
    if (v65)
    {
      v46(v62, v61, v12);
      DateInterval.end.setter();
    }

    v64(v61, v12);
    v64(v77, v12);
    v64(v78, v12);
    v64(v80, v12);
  }

  return (*(v71 + 32))(v72, v60, v79);
}

uint64_t sub_1005583F4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 144);
  v11 = a1 + *(type metadata accessor for ShareInstruction(0) + 24);
  v77 = type metadata accessor for OwnedBeaconRecord(0);
  v81 = v77;
  v68 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v82 = v68;
  v12 = sub_1000280DC(v80);
  v83 = v11;
  sub_10058B200(v11, v12, type metadata accessor for OwnedBeaconRecord);
  v67 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v13 = type metadata accessor for BeaconKeyManager(0);
  v72 = v10;
  v70 = v13;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v64 = v3;
  v14 = v78;
  sub_10001F280(v80, &v78);
  v15 = *(v7 + 16);
  v74 = a2;
  v66 = v7 + 16;
  v65 = v15;
  v15(v9, a2, v6);
  v16 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v17 = v16 + v8;
  v18 = v16 + v8 + 2;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  sub_100031694(&v78, v19 + 24);
  v20 = *(v7 + 32);
  v69 = v16;
  v21 = v19 + v16;
  v22 = v20;
  v73 = v9;
  v75 = v6;
  v20(v21, v9, v6);
  *(v19 + v17) = 0;
  v71 = v18;
  *(v19 + v18) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v76 = *(&v78 + 1);
  v23 = v78;
  v24 = v79;
  sub_100007BAC(v80);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      sub_100359088(v23, v76, 2u);
    }

    v34 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v35 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100008C00();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    goto LABEL_12;
  }

  if (!v24)
  {
    v25 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_101385D80;
    v28 = UUID.uuidString.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100008C00();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v31 = v23;
    v32 = v76;
    return sub_100359088(v31, v32, 0);
  }

  v63 = v23;
  v62 = v17 + 1;
  v81 = v77;
  v82 = v68;
  v40 = sub_1000280DC(v80);
  sub_10058B200(v83, v40, type metadata accessor for OwnedBeaconRecord);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v41 = v78;
  sub_10001F280(v80, &v78);
  v42 = v73;
  v43 = v75;
  v65(v73, v74, v75);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  sub_100031694(&v78, v44 + 24);
  v22(v44 + v69, v42, v43);
  *(v44 + v17) = 1;
  *(v44 + v62) = 0;
  *(v44 + v71) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v45 = v78;
  v46 = v79;
  sub_100007BAC(v80);
  if (v46 > 1)
  {
    v53 = v46 == 2;
    v54 = v63;
    if (v53)
    {
      sub_100359088(v45, *(&v45 + 1), 2u);
    }

    sub_100359088(v54, v76, 1u);
    v55 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v56 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_101385D80;
    v58 = UUID.uuidString.getter();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_100008C00();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
LABEL_12:

    sub_100589AD4();
    swift_allocError();
    return swift_willThrow();
  }

  result = v63;
  if (!v46)
  {
    sub_100359088(v63, v76, 1u);
    v47 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v48 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_101385D80;
    v50 = UUID.uuidString.getter();
    v52 = v51;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_100008C00();
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v32 = v45 >> 64;
    v31 = v45;
    return sub_100359088(v31, v32, 0);
  }

  return result;
}

uint64_t sub_100558C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v136 = a6;
  v135 = a5;
  v134 = a4;
  LODWORD(v133) = a3;
  v125 = type metadata accessor for DispatchQoS.QoSClass();
  v124 = *(v125 - 1);
  __chkstk_darwin(v125);
  v123 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchTime();
  v122 = *(v126 - 8);
  v12 = __chkstk_darwin(v126);
  v120 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v117 - v14;
  v138 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchQoS();
  v144 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v132);
  v128 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = __chkstk_darwin(v18 - 8);
  v129 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v131 = &v117 - v21;
  v148 = type metadata accessor for UUID();
  v143 = *(v148 - 8);
  v22 = __chkstk_darwin(v148);
  v139 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v130 = (&v117 - v25);
  v119 = v26;
  __chkstk_darwin(v24);
  v142 = &v117 - v27;
  *&v151 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v151);
  v150 = (&v117 - v28);
  v29 = type metadata accessor for SystemInfo.DeviceLockState();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v117 - v34;
  sub_100695608(a7);

  v36 = (v152 + *(type metadata accessor for ShareInstruction(0) + 28));
  LODWORD(v147) = *v36;
  v37 = *(v36 + 2);
  v146 = *(v36 + 1);
  v149 = a2;
  v127 = *(*(a2 + 320) + 16);
  v38 = sub_100B0F690(&off_101609580);
  v152 = a1;

  v39 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v30 + 104))(v33, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v29);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v30 + 8);
  v40(v33, v29);
  v40(v35, v29);
  if (a2)
  {

    v41 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v116 = v41;
      swift_once();
      v41 = v116;
    }

    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v160 = 5;
LABEL_13:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v78 = v150;
    *v150 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v78, v152, "Error sending find my accessory family share message: %@", 56);

    return sub_10000B3A8(v78, &qword_10169F358, &qword_1013A0810);
  }

  v117 = v39;
  v118 = v38;
  v42 = v147;
  v43 = v146;
  v44 = v149;
  v45 = v37;
  if ((sub_100540CB8(v147, v146, v37) & 1) == 0)
  {

    v75 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v76 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_101385D80;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100008C00();
    *(v77 + 32) = v43;
    *(v77 + 40) = v37;

    os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v76, "Not sending since %@ has no IDS registered devices", 50, 2, v77);

    type metadata accessor for SPOwnerSessionError(0);
    v160 = 12;
    goto LABEL_13;
  }

  v150 = *(v44 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v46 = swift_allocObject();
  v151 = xmmword_101385D80;
  *(v46 + 16) = xmmword_101385D80;
  *(v46 + 32) = v42;
  *(v46 + 40) = v43;
  *(v46 + 48) = v45;
  v47 = *(v143 + 56);
  v48 = v131;
  v49 = v148;
  v47(v131, 1, 1, v148);

  v50 = v128;
  UUID.init()();
  v51 = v129;
  sub_1000D2A70(v48, v129, &qword_1016980D0, &unk_10138F3B0);
  v52 = v132;
  v53 = *(v132 + 7);
  v47((v50 + v53), 1, 1, v49);
  *(v50 + v52[5]) = v46;
  *(v50 + v52[6]) = 1;
  sub_10002311C(v51, v50 + v53, &qword_1016980D0, &unk_10138F3B0);
  v54 = v50 + v52[8];
  *v54 = v127;
  *(v54 + 8) = 0;
  *(v50 + v52[9]) = 0;
  *(v50 + v52[10]) = v118;
  *(v50 + v52[11]) = v117;
  v55 = (v50 + v52[12]);
  *v55 = 0;
  v55[1] = 0;
  *(v50 + v52[13]) = xmmword_1013B0D90;
  v56 = v130;
  v57 = v153;
  sub_1010A6F88(v133, v134, v135, v136, v50, v130);
  if (v57)
  {
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v50, type metadata accessor for MessagingOptions);
    v58 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v59 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v60 = swift_allocObject();
    *(v60 + 16) = v151;
    aBlock = v57;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100008C00();
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Message send error: %@", 22, 2, v60);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v64 = v124;
    v65 = v123;
    v66 = v125;
    (*(v124 + 104))(v123, enum case for DispatchQoS.QoSClass.default(_:), v125);
    v153 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v66);
    v67 = swift_allocObject();
    v68 = v152;
    v67[2] = sub_100589BF0;
    v67[3] = v68;
    v67[4] = v57;
    v158 = sub_10058D73C;
    v159 = v67;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100006684;
    v157 = &unk_1016282C8;
    v69 = _Block_copy(&aBlock);

    swift_errorRetain();
    v70 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v71 = v137;
    v72 = v138;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v153;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v145 + 8))(v71, v72);
    (*(v144 + 8))(v70, v141);
  }

  else
  {
    v153 = 0;
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v50, type metadata accessor for MessagingOptions);
    v80 = v142;
    v79 = v143;
    v81 = *(v143 + 32);
    v82 = v148;
    v150 = (v143 + 32);
    v147 = v81;
    v81(v142, v56, v148);
    sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    swift_allocObject();
    v83 = Future.init()();
    v84 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v85 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v86 = swift_allocObject();
    *(v86 + 16) = v151;
    v87 = UUID.uuidString.getter();
    v89 = v88;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_100008C00();
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "Setting %@ to pending", 21, 2, v86);

    v90 = v149;
    *&v151 = *(v149 + 168);
    v125 = *(v79 + 16);
    v146 = v79 + 16;
    v91 = v139;
    (v125)(v139, v80, v82);
    v92 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v135 = *(v79 + 80);
    v133 = v92 + v119;
    v93 = v92;
    v136 = v92;
    v94 = (v92 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    *(v95 + 16) = v90;
    v147(v95 + v93, v91, v82);
    *(v95 + v94) = v83;
    v134 = v83;
    v158 = sub_10058D4DC;
    v159 = v95;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v132 = &v156;
    v156 = sub_100006684;
    v157 = &unk_101628318;
    v96 = _Block_copy(&aBlock);

    v97 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    v128 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v127 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v129 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v98 = v137;
    v99 = v138;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v96);
    v100 = *(v145 + 8);
    v145 += 8;
    v131 = v100;
    (v100)(v98, v99);
    v101 = *(v144 + 8);
    v144 += 8;
    v130 = v101;
    (v101)(v97, v141);

    v102 = v139;
    v103 = v148;
    v104 = v125;
    (v125)(v139, v142, v148);
    v105 = swift_allocObject();
    *(v105 + 16) = v90;
    v147(v105 + v136, v102, v103);
    v106 = (v105 + v94);
    v107 = v152;
    *v106 = sub_100589BF0;
    v106[1] = v107;

    Future.addSuccess(block:)();

    v108 = swift_allocObject();
    *(v108 + 16) = sub_100589BF0;
    *(v108 + 24) = v107;

    Future.addFailure(block:)();

    v109 = v120;
    static DispatchTime.now()();
    v110 = v121;
    + infix(_:_:)();
    v124 = *(v122 + 8);
    (v124)(v109, v126);
    v111 = v139;
    v112 = v148;
    v104(v139, v142, v148);
    v113 = swift_allocObject();
    *(v113 + 16) = v90;
    v147(v113 + v136, v111, v112);
    v158 = sub_10058D4E0;
    v159 = v113;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100006684;
    v157 = &unk_1016283B8;
    v114 = _Block_copy(&aBlock);

    v115 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v114);

    (v131)(v98, v99);
    (v130)(v115, v141);
    (v124)(v110, v126);
    (*(v143 + 8))(v142, v112);
  }
}

uint64_t sub_10055A1EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v136 = a6;
  v135 = a5;
  v134 = a4;
  LODWORD(v133) = a3;
  v125 = type metadata accessor for DispatchQoS.QoSClass();
  v124 = *(v125 - 1);
  __chkstk_darwin(v125);
  v123 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchTime();
  v122 = *(v126 - 8);
  v12 = __chkstk_darwin(v126);
  v120 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v117 - v14;
  v138 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchQoS();
  v144 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v132);
  v128 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = __chkstk_darwin(v18 - 8);
  v129 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v131 = &v117 - v21;
  v148 = type metadata accessor for UUID();
  v143 = *(v148 - 8);
  v22 = __chkstk_darwin(v148);
  v139 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v130 = (&v117 - v25);
  v119 = v26;
  __chkstk_darwin(v24);
  v142 = &v117 - v27;
  *&v151 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v151);
  v150 = (&v117 - v28);
  v29 = type metadata accessor for SystemInfo.DeviceLockState();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v117 - v34;
  sub_100695608(a7);

  v36 = (v152 + *(type metadata accessor for ShareInstruction(0) + 28));
  LODWORD(v147) = *v36;
  v37 = *(v36 + 2);
  v146 = *(v36 + 1);
  v149 = a2;
  v127 = *(*(a2 + 320) + 16);
  v38 = sub_100B0F690(&off_1016095A8);
  v152 = a1;

  v39 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v30 + 104))(v33, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v29);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v30 + 8);
  v40(v33, v29);
  v40(v35, v29);
  if (a2)
  {

    v41 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v116 = v41;
      swift_once();
      v41 = v116;
    }

    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v160 = 5;
LABEL_13:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v78 = v150;
    *v150 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v78, v152, "Error sending find my AirPods family share message: %@", 54);

    return sub_10000B3A8(v78, &qword_10169F358, &qword_1013A0810);
  }

  v117 = v39;
  v118 = v38;
  v42 = v147;
  v43 = v146;
  v44 = v149;
  v45 = v37;
  if ((sub_100540CB8(v147, v146, v37) & 1) == 0)
  {

    v75 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v76 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_101385D80;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100008C00();
    *(v77 + 32) = v43;
    *(v77 + 40) = v37;

    os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v76, "Not sending since %@ has no IDS registered devices", 50, 2, v77);

    type metadata accessor for SPOwnerSessionError(0);
    v160 = 12;
    goto LABEL_13;
  }

  v150 = *(v44 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v46 = swift_allocObject();
  v151 = xmmword_101385D80;
  *(v46 + 16) = xmmword_101385D80;
  *(v46 + 32) = v42;
  *(v46 + 40) = v43;
  *(v46 + 48) = v45;
  v47 = *(v143 + 56);
  v48 = v131;
  v49 = v148;
  v47(v131, 1, 1, v148);

  v50 = v128;
  UUID.init()();
  v51 = v129;
  sub_1000D2A70(v48, v129, &qword_1016980D0, &unk_10138F3B0);
  v52 = v132;
  v53 = *(v132 + 7);
  v47((v50 + v53), 1, 1, v49);
  *(v50 + v52[5]) = v46;
  *(v50 + v52[6]) = 1;
  sub_10002311C(v51, v50 + v53, &qword_1016980D0, &unk_10138F3B0);
  v54 = v50 + v52[8];
  *v54 = v127;
  *(v54 + 8) = 0;
  *(v50 + v52[9]) = 0;
  *(v50 + v52[10]) = v118;
  *(v50 + v52[11]) = v117;
  v55 = (v50 + v52[12]);
  *v55 = 0;
  v55[1] = 0;
  *(v50 + v52[13]) = xmmword_1013B0D90;
  v56 = v130;
  v57 = v153;
  sub_1010A6F88(v133, v134, v135, v136, v50, v130);
  if (v57)
  {
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v50, type metadata accessor for MessagingOptions);
    v58 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v59 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v60 = swift_allocObject();
    *(v60 + 16) = v151;
    aBlock = v57;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100008C00();
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Message send error: %@", 22, 2, v60);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v64 = v124;
    v65 = v123;
    v66 = v125;
    (*(v124 + 104))(v123, enum case for DispatchQoS.QoSClass.default(_:), v125);
    v153 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v66);
    v67 = swift_allocObject();
    v68 = v152;
    v67[2] = sub_1005897F4;
    v67[3] = v68;
    v67[4] = v57;
    v158 = sub_10058D73C;
    v159 = v67;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100006684;
    v157 = &unk_101628138;
    v69 = _Block_copy(&aBlock);

    swift_errorRetain();
    v70 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v71 = v137;
    v72 = v138;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v153;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v145 + 8))(v71, v72);
    (*(v144 + 8))(v70, v141);
  }

  else
  {
    v153 = 0;
    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v50, type metadata accessor for MessagingOptions);
    v80 = v142;
    v79 = v143;
    v81 = *(v143 + 32);
    v82 = v148;
    v150 = (v143 + 32);
    v147 = v81;
    v81(v142, v56, v148);
    sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    swift_allocObject();
    v83 = Future.init()();
    v84 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v85 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v86 = swift_allocObject();
    *(v86 + 16) = v151;
    v87 = UUID.uuidString.getter();
    v89 = v88;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_100008C00();
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "Setting %@ to pending", 21, 2, v86);

    v90 = v149;
    *&v151 = *(v149 + 168);
    v125 = *(v79 + 16);
    v146 = v79 + 16;
    v91 = v139;
    (v125)(v139, v80, v82);
    v92 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v135 = *(v79 + 80);
    v133 = v92 + v119;
    v93 = v92;
    v136 = v92;
    v94 = (v92 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    *(v95 + 16) = v90;
    v147(v95 + v93, v91, v82);
    *(v95 + v94) = v83;
    v134 = v83;
    v158 = sub_10058D4DC;
    v159 = v95;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v132 = &v156;
    v156 = sub_100006684;
    v157 = &unk_101628188;
    v96 = _Block_copy(&aBlock);

    v97 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    v128 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v127 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v129 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v98 = v137;
    v99 = v138;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v96);
    v100 = *(v145 + 8);
    v145 += 8;
    v131 = v100;
    (v100)(v98, v99);
    v101 = *(v144 + 8);
    v144 += 8;
    v130 = v101;
    (v101)(v97, v141);

    v102 = v139;
    v103 = v148;
    v104 = v125;
    (v125)(v139, v142, v148);
    v105 = swift_allocObject();
    *(v105 + 16) = v90;
    v147(v105 + v136, v102, v103);
    v106 = (v105 + v94);
    v107 = v152;
    *v106 = sub_1005897F4;
    v106[1] = v107;

    Future.addSuccess(block:)();

    v108 = swift_allocObject();
    *(v108 + 16) = sub_1005897F4;
    *(v108 + 24) = v107;

    Future.addFailure(block:)();

    v109 = v120;
    static DispatchTime.now()();
    v110 = v121;
    + infix(_:_:)();
    v124 = *(v122 + 8);
    (v124)(v109, v126);
    v111 = v139;
    v112 = v148;
    v104(v139, v142, v148);
    v113 = swift_allocObject();
    *(v113 + 16) = v90;
    v147(v113 + v136, v111, v112);
    v158 = sub_10058D4E0;
    v159 = v113;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100006684;
    v157 = &unk_101628228;
    v114 = _Block_copy(&aBlock);

    v115 = v140;
    static DispatchQoS.unspecified.getter();
    v160 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v114);

    (v131)(v98, v99);
    (v130)(v115, v141);
    (v124)(v110, v126);
    (*(v143 + 8))(v142, v112);
  }
}

uint64_t sub_10055B758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v211 = a2;
  *&v212 = a3;
  v203 = type metadata accessor for DispatchQoS.QoSClass();
  v202 = *(v203 - 1);
  __chkstk_darwin(v203);
  v201 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchTime();
  v174 = *(v175 - 8);
  v5 = __chkstk_darwin(v175);
  v172 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v173 = &v158 - v7;
  v205 = type metadata accessor for DispatchWorkItemFlags();
  v210 = *(v205 - 8);
  __chkstk_darwin(v205);
  v204 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchQoS();
  v209 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SecureLocationsRelayAction(0);
  v181 = *(v180 - 8);
  v10 = __chkstk_darwin(v180);
  v183 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v11;
  __chkstk_darwin(v10);
  v184 = &v158 - v12;
  v185 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v13 = __chkstk_darwin(v185);
  v176 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v186 = &v158 - v15;
  v179 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v179);
  v187 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = __chkstk_darwin(v17 - 8);
  v178 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v189 = &v158 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v171 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v188 = &v158 - v26;
  __chkstk_darwin(v25);
  v177 = &v158 - v27;
  v191 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v191);
  v192 = (&v158 - v28);
  v198 = type metadata accessor for SystemInfo.DeviceLockState();
  v197 = *(v198 - 8);
  v29 = __chkstk_darwin(v198);
  v196 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v195 = &v158 - v31;
  v32 = type metadata accessor for SharedBeaconRecord(0);
  v193 = *(v32 - 1);
  v33 = *(v193 + 8);
  v34 = __chkstk_darwin(v32);
  v208 = (&v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v194 = (&v158 - v35);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v37 = MyAccessoryFamilyShareResponseEnvelope - 8;
  v38 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope);
  v40 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v158 - v41;
  v43 = v32[5];
  v190 = v22;
  v44 = *(v22 + 16);
  v44(&v158 - v41, a1 + v43, v21);
  v45 = v32[6];
  v46 = &v42[*(v37 + 28)];
  v199 = a1;
  v44(v46, a1 + v45, v21);
  sub_10058B200(v42, v40, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  sub_10053A6CC(2, 2, v40, &aBlock);
  v159 = 0;
  v158 = v23;
  v162 = v44;
  v163 = v22 + 16;
  v167 = v21;
  v168 = v42;
  v161 = aBlock;
  v160 = v215;
  v169 = v216;
  v170 = v217;
  v47 = (v199 + v32[7]);
  v166 = *v47;
  v49 = *(v47 + 1);
  v48 = *(v47 + 2);
  v165 = v49;
  v164 = v48;
  v50 = v194;
  sub_10058B200(v199, v194, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v50, v208, type metadata accessor for SharedBeaconRecord);
  v51 = (*(v193 + 80) + 24) & ~*(v193 + 80);
  v52 = swift_allocObject();
  v53 = v200;
  *(v52 + 16) = v200;
  sub_100589B28(v50, v52 + v51, type metadata accessor for SharedBeaconRecord);
  v199 = v52;
  v54 = (v52 + ((v33 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  v56 = v211;
  v55 = v212;
  *v54 = v211;
  v54[1] = v55;

  sub_100908F24(_swiftEmptyArrayStorage);

  v194 = sub_101129A8C(&off_1016095D0);
  v57 = sub_101129A8C(_swiftEmptyArrayStorage);
  v58 = v195;
  static SystemInfo.lockState.getter();
  v59 = v197;
  v60 = v196;
  v61 = v198;
  (*(v197 + 104))(v196, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v198);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v58, v61);
  v63 = v53;
  if ((v51 & 1) == 0)
  {
    v70 = v194;
    v198 = v57;
    v71 = v166;
    v72 = v165;
    v73 = v164;
    if ((sub_100540CB8(v166, v165, v164) & 1) == 0)
    {

      v96 = static os_log_type_t.error.getter();
      v97 = v168;
      v98 = v169;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v99 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_101385D80;
      *(v100 + 56) = &type metadata for String;
      *(v100 + 64) = sub_100008C00();
      *(v100 + 32) = v72;
      *(v100 + 40) = v73;

      os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v99, "Not sending since %@ has no IDS registered devices", 50, 2, v100);

      type metadata accessor for SPOwnerSessionError(0);
      v213 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v101 = v192;
      *v192 = aBlock;
      swift_storeEnumTagMultiPayload();
      v68 = v208;
      sub_10055D864(v101, v63, v208, v56, v55);

      sub_100016590(v98, v170);
      sub_10000B3A8(v101, &qword_10169F358, &qword_1013A0810);
      v69 = v97;
      goto LABEL_11;
    }

    v211 = *(v63 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v74 = swift_allocObject();
    v212 = xmmword_101385D80;
    *(v74 + 16) = xmmword_101385D80;
    *(v74 + 32) = v71;
    *(v74 + 40) = v72;
    *(v74 + 48) = v73;
    v75 = *(v190 + 56);
    v76 = v189;
    v77 = v167;
    v75(v189, 1, 1, v167);

    v78 = v188;
    UUID.init()();
    v79 = v187;
    v162(v187, v78, v77);
    v80 = v178;
    sub_1000D2A70(v76, v178, &qword_1016980D0, &unk_10138F3B0);
    v81 = v179;
    v82 = *(v179 + 28);
    v75(v79 + v82, 1, 1, v77);
    *(v79 + v81[5]) = v74;
    *(v79 + v81[6]) = 1;
    sub_10002311C(v80, v79 + v82, &qword_1016980D0, &unk_10138F3B0);
    v83 = v79 + v81[8];
    *v83 = 0;
    *(v83 + 8) = 1;
    *(v79 + v81[9]) = 0;
    *(v79 + v81[10]) = v70;
    *(v79 + v81[11]) = v198;
    v84 = (v79 + v81[12]);
    *v84 = 0;
    v84[1] = 0;
    *(v79 + v81[13]) = xmmword_1013B0D90;
    v85 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v86 = v184;
    sub_10058B200(v79, &v184[*(v85 + 24)], type metadata accessor for MessagingOptions);
    *v86 = v161;
    v87 = v169;
    *(v86 + 8) = v160;
    *(v86 + 16) = v87;
    v88 = v170;
    *(v86 + 24) = v170;
    *(v86 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v89 = v183;
    sub_10058B200(v86, v183, type metadata accessor for SecureLocationsRelayAction);
    v90 = (*(v181 + 80) + 24) & ~*(v181 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v211;
    sub_100589B28(v89, v91 + v90, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v87, v88);

    v92 = v186;
    v93 = v159;
    unsafeFromAsyncTask<A>(_:)();
    if (v93)
    {
      v94 = v93;

      sub_10058B268(v86, type metadata accessor for SecureLocationsRelayAction);
      v95 = v199;
    }

    else
    {
      v102 = v200;
      sub_10058B268(v86, type metadata accessor for SecureLocationsRelayAction);

      v103 = v176;
      sub_10058B200(v92, v176, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v95 = v199;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v92, type metadata accessor for SecureLocationsRelayAction.Response);
        v105 = v190;
        v106 = *(v190 + 8);
        v107 = v167;
        v197 = v190 + 8;
        v196 = v106;
        (v106)(v188, v167);
        sub_10000B3A8(v189, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v79, type metadata accessor for MessagingOptions);
        v108 = *(v105 + 32);
        v109 = v177;
        v211 = v105 + 32;
        v203 = v108;
        v108(v177, v103, v107);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v110 = Future.init()();
        v111 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v112 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v113 = swift_allocObject();
        *(v113 + 16) = v212;
        v114 = UUID.uuidString.getter();
        v116 = v115;
        *(v113 + 56) = &type metadata for String;
        *(v113 + 64) = sub_100008C00();
        *(v113 + 32) = v114;
        *(v113 + 40) = v116;
        os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v112, "Setting %@ to pending", 21, 2, v113);

        v117 = v102;
        *&v212 = *(v102 + 168);
        v118 = v171;
        v162(v171, v109, v107);
        v119 = (*(v105 + 80) + 24) & ~*(v105 + 80);
        v201 = *(v105 + 80);
        v195 = (v119 + v158);
        v120 = v119;
        v202 = v119;
        v121 = (v119 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
        v122 = swift_allocObject();
        *(v122 + 16) = v117;
        v203(v122 + v120, v118, v107);
        *(v122 + v121) = v110;
        v218 = sub_10058D4DC;
        v219 = v122;
        aBlock = _NSConcreteStackBlock;
        v215 = 1107296256;
        v194 = &v216;
        v216 = sub_100006684;
        v217 = &unk_101629C90;
        v123 = _Block_copy(&aBlock);

        v198 = v110;
        v124 = v206;
        static DispatchQoS.unspecified.getter();
        v213 = _swiftEmptyArrayStorage;
        v190 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v189 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v191 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v125 = v204;
        v126 = v205;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v123);
        v127 = *(v210 + 8);
        v210 += 8;
        v193 = v127;
        v127(v125, v126);
        v128 = *(v209 + 8);
        v209 += 8;
        v192 = v128;
        v128(v124, v207);

        v129 = v167;
        v162(v118, v177, v167);
        v130 = swift_allocObject();
        *(v130 + 16) = v117;
        v203(v130 + v202, v118, v129);
        v131 = (v130 + v121);
        v132 = v199;
        *v131 = sub_10058BCBC;
        v131[1] = v132;

        Future.addSuccess(block:)();

        v133 = swift_allocObject();
        *(v133 + 16) = sub_10058BCBC;
        *(v133 + 24) = v132;

        Future.addFailure(block:)();

        v134 = v172;
        static DispatchTime.now()();
        v135 = v173;
        + infix(_:_:)();
        v188 = *(v174 + 8);
        v136 = v175;
        (v188)(v134, v175);
        v162(v118, v177, v129);
        v137 = swift_allocObject();
        *(v137 + 16) = v117;
        v203(v137 + v202, v118, v129);
        v218 = sub_10058D4E0;
        v219 = v137;
        aBlock = _NSConcreteStackBlock;
        v215 = 1107296256;
        v216 = sub_100006684;
        v217 = &unk_101629D30;
        v138 = _Block_copy(&aBlock);

        v139 = v206;
        static DispatchQoS.unspecified.getter();
        v213 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v138);

        sub_100016590(v169, v170);
        v193(v125, v126);
        v192(v139, v207);
        (v188)(v135, v136);
        (v196)(v177, v129);
        goto LABEL_20;
      }

      sub_10058B268(v103, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v94 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v92, type metadata accessor for SecureLocationsRelayAction.Response);
    }

    v140 = v189;
    (*(v190 + 8))(v188, v167);
    sub_10000B3A8(v140, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v79, type metadata accessor for MessagingOptions);
    v141 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v142 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v143 = swift_allocObject();
    *(v143 + 16) = v212;
    aBlock = v94;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v144 = String.init<A>(describing:)();
    v146 = v145;
    *(v143 + 56) = &type metadata for String;
    *(v143 + 64) = sub_100008C00();
    *(v143 + 32) = v144;
    *(v143 + 40) = v146;
    os_log(_:dso:log:_:_:)(v141, &_mh_execute_header, v142, "Message send error: %@", 22, 2, v143);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v147 = v202;
    v148 = v201;
    v149 = v203;
    (*(v202 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v203);
    v150 = static OS_dispatch_queue.global(qos:)();
    (*(v147 + 8))(v148, v149);
    v151 = swift_allocObject();
    v151[2] = sub_10058BCBC;
    v151[3] = v95;
    v151[4] = v94;
    v218 = sub_10058D73C;
    v219 = v151;
    aBlock = _NSConcreteStackBlock;
    v215 = 1107296256;
    v216 = sub_100006684;
    v217 = &unk_101629C40;
    v152 = _Block_copy(&aBlock);

    swift_errorRetain();
    v153 = v206;
    static DispatchQoS.unspecified.getter();
    v213 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v155 = v204;
    v154 = v205;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v152);

    sub_100016590(v169, v170);
    (*(v210 + 8))(v155, v154);
    (*(v209 + 8))(v153, v207);
LABEL_20:
    sub_10058B268(v168, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    v68 = v208;
    return sub_10058B268(v68, type metadata accessor for SharedBeaconRecord);
  }

  v64 = v170;

  v65 = static os_log_type_t.error.getter();
  v66 = v168;
  v67 = v192;
  if (qword_101695030 != -1)
  {
    v157 = v65;
    swift_once();
    v65 = v157;
  }

  os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  v213 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v67 = aBlock;
  swift_storeEnumTagMultiPayload();
  v68 = v208;
  sub_10055D864(v67, v63, v208, v56, v55);

  sub_100016590(v169, v64);
  sub_10000B3A8(v67, &qword_10169F358, &qword_1013A0810);
  v69 = v66;
LABEL_11:
  sub_10058B268(v69, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  return sub_10058B268(v68, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10055D864(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v55 = a3;
  v45 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  __chkstk_darwin(v14 - 8);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  sub_1000D2A70(a1, &v45 - v17, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v21 = swift_allocObject();
    v22 = v54;
    v21[2] = v53;
    v21[3] = v22;
    v21[4] = v19;
    aBlock[4] = sub_10058D740;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101629D80;
    v23 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v24 = v48;
    v25 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v50 + 1))(v24, v25);
    (*(v47 + 8))(v9, v49);
  }

  else
  {
    v51 = v15;
    v27 = *(v45 + 144);
    v28 = swift_allocObject();
    *(v28 + 16) = v53;
    *(v28 + 24) = v54;

    v29 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = 0x65736C6166;
    *(v31 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Modify record. Disk First? (%@)", 31, 2, v31);

    v32 = objc_autoreleasePoolPush();
    v33 = v55;
    sub_101122288(v55);
    v35 = v34;
    v53 = v34;
    objc_autoreleasePoolPop(v32);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v36 = v52;
    sub_10058B200(v33, v52, type metadata accessor for SharedBeaconRecord);
    v54 = v27;
    v37 = *(v46 + 80);
    v38 = v51;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10058D534;
    *(v39 + 24) = 0;
    v50 = type metadata accessor for SharedBeaconRecord;
    sub_100589B28(v36, v39 + ((v37 + 32) & ~v37), type metadata accessor for SharedBeaconRecord);
    sub_100FDCA40(v35, sub_10058D708, v39);

    v40 = swift_allocObject();
    *(v40 + 16) = sub_10058C2C8;
    *(v40 + 24) = v28;

    Future.addFailure(block:)();

    sub_10058B200(v55, v36, type metadata accessor for SharedBeaconRecord);
    v41 = (v37 + 16) & ~v37;
    v42 = (v38 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_100589B28(v36, v43 + v41, v50);
    *(v43 + v42) = v54;
    v44 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v44 = sub_10058C2C8;
    v44[1] = v28;

    Future.addSuccess(block:)();

    return sub_10000B3A8(v18, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_10055E0BC(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v45[-v16];
  v18 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v18);
  v20 = &v45[-v19];
  sub_1000D2A70(v49, &v45[-v19], &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
    v49 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v7);
    v22 = swift_allocObject();
    v23 = v51;
    v22[2] = v50;
    v22[3] = v23;
    v22[4] = v21;
    v63 = sub_10058D740;
    v64 = v22;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101629E70;
    v24 = _Block_copy(&aBlock);

    swift_errorRetain();
    v25 = v52;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v26 = v53;
    v27 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v49;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v56 + 8))(v26, v27);
    (*(v54 + 8))(v25, v55);
  }

  else
  {
    v49 = v7;
    sub_100589B28(v20, v17, type metadata accessor for SharedBeaconRecord);
    v46 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_10058B200(v17, v15, type metadata accessor for SharedBeaconRecord);
    v31 = String.init<A>(describing:)();
    v47 = v17;
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v29, "Successfully accepted share: %@", 31, 2, v30);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v34 = v49;
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v49);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v34);
    v36 = v47;
    sub_10058B200(v47, v15, type metadata accessor for SharedBeaconRecord);
    v37 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v38 = swift_allocObject();
    v39 = v51;
    *(v38 + 16) = v50;
    *(v38 + 24) = v39;
    sub_100589B28(v15, v38 + v37, type metadata accessor for SharedBeaconRecord);
    v63 = sub_10058D4F8;
    v64 = v38;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101629EC0;
    v40 = _Block_copy(&aBlock);

    v41 = v52;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v42 = v53;
    v43 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v56 + 8))(v42, v43);
    (*(v54 + 8))(v41, v55);
    sub_10058B268(v36, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10055E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v32 = a2;
  v33 = a3;
  v40 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedBeaconRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v15);
  v17 = (&v32 - v16);
  sub_1000D2A70(v40, &v32 - v16, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v20 = swift_allocObject();
    v21 = v42;
    v20[2] = v41;
    v20[3] = v21;
    v20[4] = v18;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016277B0;
    v22 = _Block_copy(aBlock);

    swift_errorRetain();
    v23 = v34;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v24 = v36;
    v25 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v38 + 8))(v24, v25);
    (*(v35 + 8))(v23, v37);
  }

  else
  {
    v27 = v33;
    sub_10058B200(v33, &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    sub_100589B28(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for SharedBeaconRecord);
    v30 = (v29 + ((v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v42;
    *v30 = v41;
    v30[1] = v31;

    sub_100DDDDF4(v27, sub_10057D060, v29);

    return sub_10000B3A8(v17, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_10055EEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v35 = a2;
  v36 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  if (v36)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v18 = swift_allocObject();
    v19 = v38;
    *(v18 + 16) = v37;
    *(v18 + 24) = v19;
    v46 = sub_10058D538;
    v47 = v18;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_101627878;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v7, v4);
    (*(v39 + 8))(v10, v40);
  }

  else
  {
    v34 = v10;
    v36 = v5;
    v22 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_10058B200(v35, v17, type metadata accessor for SharedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Successfully declined share %@", 30, 2, v24);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 16) = v37;
    *(v29 + 24) = v30;
    v46 = sub_100470308;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_101627828;
    v31 = _Block_copy(&aBlock);

    v32 = v34;
    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v36 + 8))(v7, v4);
    (*(v39 + 8))(v32, v40);
  }
}

uint64_t sub_10055F5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v201 = a2;
  *&v202 = a3;
  v203 = a1;
  v193 = type metadata accessor for DispatchQoS.QoSClass();
  v192 = *(v193 - 1);
  __chkstk_darwin(v193);
  v191 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchTime();
  v167 = *(v168 - 8);
  v4 = __chkstk_darwin(v168);
  v165 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v166 = &v150 - v6;
  v195 = type metadata accessor for DispatchWorkItemFlags();
  v200 = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS();
  v199 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for SecureLocationsRelayAction(0);
  v173 = *(v172 - 8);
  v9 = __chkstk_darwin(v172);
  v175 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v10;
  __chkstk_darwin(v9);
  v176 = &v150 - v11;
  v177 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v12 = __chkstk_darwin(v177);
  v169 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v178 = &v150 - v14;
  v171 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v171);
  v179 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v170 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v180 = &v150 - v19;
  v181 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v181);
  v182 = (&v150 - v20);
  v189 = type metadata accessor for SystemInfo.DeviceLockState();
  v188 = *(v189 - 8);
  v21 = __chkstk_darwin(v189);
  v187 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v186 = &v150 - v23;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v184 = *(v24 - 8);
  v25 = *(v184 + 8);
  v26 = __chkstk_darwin(v24);
  v198 = (&v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v185 = (&v150 - v27);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v32 = __chkstk_darwin(v31);
  v34 = &v150 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v150 - v36;
  __chkstk_darwin(v35);
  v39 = &v150 - v38;
  v183 = v24;
  v40 = *(v29 + 16);
  v40(&v150 - v38, v203 + *(v24 + 20), v28);
  sub_10053A3CC(2, 1, v39, &aBlock);
  v153 = 0;
  v160 = v34;
  v150 = v30;
  v161 = v29;
  v156 = v40;
  v157 = v29 + 16;
  v151 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v37;
  v162 = v28;
  v154 = aBlock;
  v155 = v206;
  v163 = v207;
  v164 = v208;
  v41 = (v203 + *(v183 + 7));
  LODWORD(v183) = *v41;
  v43 = *(v41 + 1);
  v42 = *(v41 + 2);
  v159 = v43;
  v158 = v42;
  v44 = v185;
  sub_10058B200(v203, v185, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v44, v198, type metadata accessor for SharedBeaconRecord);
  v45 = (*(v184 + 80) + 24) & ~*(v184 + 80);
  v46 = swift_allocObject();
  v47 = v190;
  *(v46 + 16) = v190;
  sub_100589B28(v44, v46 + v45, type metadata accessor for SharedBeaconRecord);
  v203 = v46;
  v48 = (v46 + ((v25 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
  v50 = v201;
  v49 = v202;
  *v48 = v201;
  v48[1] = v49;

  sub_100908F24(_swiftEmptyArrayStorage);

  v185 = sub_101129A8C(&off_1016095F8);
  v51 = sub_101129A8C(_swiftEmptyArrayStorage);
  v52 = v186;
  static SystemInfo.lockState.getter();
  v53 = v188;
  v54 = v187;
  v55 = v189;
  (*(v188 + 104))(v187, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v189);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v25) = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v54, v55);
  v56(v52, v55);
  v57 = v47;
  v58 = v49;
  if ((v25 & 1) == 0)
  {
    v189 = v51;
    v63 = v183;
    v64 = v159;
    v65 = v158;
    if ((sub_100540CB8(v183, v159, v158) & 1) == 0)
    {

      v89 = static os_log_type_t.error.getter();
      v90 = v164;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v91 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_101385D80;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = sub_100008C00();
      *(v92 + 32) = v64;
      *(v92 + 40) = v65;

      os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v91, "Not sending since %@ has no IDS registered devices", 50, 2, v92);

      type metadata accessor for SPOwnerSessionError(0);
      v204 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v93 = v182;
      *v182 = aBlock;
      swift_storeEnumTagMultiPayload();
      v61 = v198;
      sub_1005615D0(v93, v57, v198, v50, v58);

      sub_100016590(v163, v90);
      v62 = v93;
      goto LABEL_11;
    }

    v201 = *(v57 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v66 = swift_allocObject();
    v202 = xmmword_101385D80;
    *(v66 + 16) = xmmword_101385D80;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    *(v66 + 48) = v65;
    v67 = *(v161 + 56);
    v68 = v180;
    v69 = v162;
    v67(v180, 1, 1, v162);

    v70 = v160;
    UUID.init()();
    v71 = v179;
    v156(v179, v70, v69);
    v72 = v170;
    sub_1000D2A70(v68, v170, &qword_1016980D0, &unk_10138F3B0);
    v73 = v171;
    v74 = *(v171 + 28);
    v67(v71 + v74, 1, 1, v69);
    *(v71 + v73[5]) = v66;
    *(v71 + v73[6]) = 1;
    sub_10002311C(v72, v71 + v74, &qword_1016980D0, &unk_10138F3B0);
    v75 = v71 + v73[8];
    *v75 = 0;
    *(v75 + 8) = 1;
    *(v71 + v73[9]) = 0;
    *(v71 + v73[10]) = v185;
    *(v71 + v73[11]) = v189;
    v76 = (v71 + v73[12]);
    *v76 = 0;
    v76[1] = 0;
    *(v71 + v73[13]) = xmmword_1013B0D90;
    v77 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v78 = v176;
    sub_10058B200(v71, &v176[*(v77 + 24)], type metadata accessor for MessagingOptions);
    *v78 = v154;
    v79 = v163;
    *(v78 + 8) = v155;
    *(v78 + 16) = v79;
    v80 = v164;
    *(v78 + 24) = v164;
    *(v78 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v81 = v175;
    sub_10058B200(v78, v175, type metadata accessor for SecureLocationsRelayAction);
    v82 = (*(v173 + 80) + 24) & ~*(v173 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v201;
    sub_100589B28(v81, v83 + v82, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v79, v80);

    v84 = v178;
    v85 = v153;
    unsafeFromAsyncTask<A>(_:)();
    if (v85)
    {
      v86 = v85;

      v87 = type metadata accessor for SecureLocationsRelayAction;
      v88 = v78;
    }

    else
    {
      v94 = v190;
      sub_10058B268(v78, type metadata accessor for SecureLocationsRelayAction);

      v95 = v169;
      sub_10058B200(v84, v169, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v84, type metadata accessor for SecureLocationsRelayAction.Response);
        v96 = v161;
        v97 = *(v161 + 8);
        v98 = v162;
        v188 = v161 + 8;
        v187 = v97;
        (v97)(v160, v162);
        sub_10000B3A8(v180, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v71, type metadata accessor for MessagingOptions);
        v99 = *(v96 + 32);
        v100 = v152;
        v201 = v96 + 32;
        v193 = v99;
        v99(v152, v95, v98);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v101 = Future.init()();
        v102 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v103 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v104 = swift_allocObject();
        *(v104 + 16) = v202;
        v105 = UUID.uuidString.getter();
        v107 = v106;
        *(v104 + 56) = &type metadata for String;
        *(v104 + 64) = sub_100008C00();
        *(v104 + 32) = v105;
        *(v104 + 40) = v107;
        os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v103, "Setting %@ to pending", 21, 2, v104);

        v108 = v94;
        *&v202 = *(v94 + 168);
        v109 = v151;
        v156(v151, v100, v98);
        v110 = *(v96 + 80);
        v191 = v110;
        v186 = (((v110 + 24) & ~v110) + v150);
        v111 = (v110 + 24) & ~v110;
        v192 = v111;
        v112 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = swift_allocObject();
        *(v113 + 16) = v108;
        v193(v113 + v111, v109, v98);
        *(v113 + v112) = v101;
        v209 = sub_10058D4DC;
        v210 = v113;
        aBlock = _NSConcreteStackBlock;
        v206 = 1107296256;
        v185 = &v207;
        v207 = sub_100006684;
        v208 = &unk_101629920;
        v114 = _Block_copy(&aBlock);

        v189 = v101;
        v115 = v196;
        static DispatchQoS.unspecified.getter();
        v204 = _swiftEmptyArrayStorage;
        v181 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v180 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v182 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v116 = v194;
        v117 = v195;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v114);
        v118 = *(v200 + 8);
        v200 += 8;
        v184 = v118;
        v118(v116, v117);
        v119 = *(v199 + 8);
        v199 += 8;
        v183 = v119;
        (v119)(v115, v197);

        v120 = v162;
        v156(v109, v152, v162);
        v121 = swift_allocObject();
        *(v121 + 16) = v108;
        v193(v121 + v192, v109, v120);
        v122 = (v121 + v112);
        v123 = v203;
        *v122 = sub_10058BC24;
        v122[1] = v123;

        Future.addSuccess(block:)();

        v124 = swift_allocObject();
        *(v124 + 16) = sub_10058BC24;
        *(v124 + 24) = v123;

        Future.addFailure(block:)();

        v125 = v165;
        static DispatchTime.now()();
        v126 = v166;
        + infix(_:_:)();
        v179 = *(v167 + 8);
        v127 = v168;
        (v179)(v125, v168);
        v156(v109, v152, v120);
        v128 = swift_allocObject();
        *(v128 + 16) = v108;
        v193(v128 + v192, v109, v120);
        v209 = sub_10058D4E0;
        v210 = v128;
        aBlock = _NSConcreteStackBlock;
        v206 = 1107296256;
        v207 = sub_100006684;
        v208 = &unk_1016299C0;
        v129 = _Block_copy(&aBlock);

        v130 = v196;
        static DispatchQoS.unspecified.getter();
        v204 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v129);

        sub_100016590(v163, v164);
        v184(v116, v117);
        v183(v130, v197);
        (v179)(v126, v127);
        (v187)(v152, v120);
        goto LABEL_20;
      }

      sub_10058B268(v95, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v86 = swift_allocError();
      swift_willThrow();
      v88 = v84;
      v87 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v88, v87);
    v131 = v180;
    (*(v161 + 8))(v160, v162);
    sub_10000B3A8(v131, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v71, type metadata accessor for MessagingOptions);
    v132 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v133 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v134 = swift_allocObject();
    *(v134 + 16) = v202;
    aBlock = v86;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v135 = String.init<A>(describing:)();
    v137 = v136;
    *(v134 + 56) = &type metadata for String;
    *(v134 + 64) = sub_100008C00();
    *(v134 + 32) = v135;
    *(v134 + 40) = v137;
    os_log(_:dso:log:_:_:)(v132, &_mh_execute_header, v133, "Message send error: %@", 22, 2, v134);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v138 = v192;
    v139 = v191;
    v140 = v193;
    (*(v192 + 104))(v191, enum case for DispatchQoS.QoSClass.default(_:), v193);
    v141 = static OS_dispatch_queue.global(qos:)();
    (*(v138 + 8))(v139, v140);
    v142 = swift_allocObject();
    v143 = v203;
    v142[2] = sub_10058BC24;
    v142[3] = v143;
    v142[4] = v86;
    v209 = sub_10058D73C;
    v210 = v142;
    aBlock = _NSConcreteStackBlock;
    v206 = 1107296256;
    v207 = sub_100006684;
    v208 = &unk_1016298D0;
    v144 = _Block_copy(&aBlock);

    swift_errorRetain();
    v145 = v196;
    static DispatchQoS.unspecified.getter();
    v204 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v147 = v194;
    v146 = v195;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v144);

    sub_100016590(v163, v164);
    (*(v200 + 8))(v147, v146);
    (*(v199 + 8))(v145, v197);
LABEL_20:

    v61 = v198;
    return sub_10058B268(v61, type metadata accessor for SharedBeaconRecord);
  }

  v59 = static os_log_type_t.error.getter();
  v60 = v182;
  if (qword_101695030 != -1)
  {
    v149 = v59;
    swift_once();
    v59 = v149;
  }

  os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  v204 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v60 = aBlock;
  swift_storeEnumTagMultiPayload();
  v61 = v198;
  sub_1005615D0(v60, v57, v198, v50, v49);

  sub_100016590(v163, v164);
  v62 = v60;
LABEL_11:
  sub_10000B3A8(v62, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v61, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1005615D0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v55 = a3;
  v45 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  __chkstk_darwin(v14 - 8);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  sub_1000D2A70(a1, &v45 - v17, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v21 = swift_allocObject();
    v22 = v54;
    v21[2] = v53;
    v21[3] = v22;
    v21[4] = v19;
    aBlock[4] = sub_10058D740;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101629A10;
    v23 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v24 = v48;
    v25 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v50 + 1))(v24, v25);
    (*(v47 + 8))(v9, v49);
  }

  else
  {
    v51 = v15;
    v27 = *(v45 + 144);
    v28 = swift_allocObject();
    *(v28 + 16) = v53;
    *(v28 + 24) = v54;

    v29 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = 0x65736C6166;
    *(v31 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Modify record. Disk First? (%@)", 31, 2, v31);

    v32 = objc_autoreleasePoolPush();
    v33 = v55;
    sub_101122288(v55);
    v35 = v34;
    v53 = v34;
    objc_autoreleasePoolPop(v32);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v36 = v52;
    sub_10058B200(v33, v52, type metadata accessor for SharedBeaconRecord);
    v54 = v27;
    v37 = *(v46 + 80);
    v38 = v51;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10058D534;
    *(v39 + 24) = 0;
    v50 = type metadata accessor for SharedBeaconRecord;
    sub_100589B28(v36, v39 + ((v37 + 32) & ~v37), type metadata accessor for SharedBeaconRecord);
    sub_100FDCA40(v35, sub_10058BC58, v39);

    v40 = swift_allocObject();
    *(v40 + 16) = sub_10058BC50;
    *(v40 + 24) = v28;

    Future.addFailure(block:)();

    sub_10058B200(v55, v36, type metadata accessor for SharedBeaconRecord);
    v41 = (v37 + 16) & ~v37;
    v42 = (v38 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_100589B28(v36, v43 + v41, v50);
    *(v43 + v42) = v54;
    v44 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v44 = sub_10058BC50;
    v44[1] = v28;

    Future.addSuccess(block:)();

    return sub_10000B3A8(v18, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100561E28(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v53 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v45[-v16];
  v18 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v18);
  v20 = &v45[-v19];
  sub_1000D2A70(v49, &v45[-v19], &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
    v49 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v7);
    v22 = swift_allocObject();
    v23 = v51;
    v22[2] = v50;
    v22[3] = v23;
    v22[4] = v21;
    v63 = sub_10058BC60;
    v64 = v22;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101629B00;
    v24 = _Block_copy(&aBlock);

    swift_errorRetain();
    v25 = v52;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v26 = v53;
    v27 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v49;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v56 + 8))(v26, v27);
    (*(v54 + 8))(v25, v55);
  }

  else
  {
    v49 = v7;
    sub_100589B28(v20, v17, type metadata accessor for SharedBeaconRecord);
    v46 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_10058B200(v17, v15, type metadata accessor for SharedBeaconRecord);
    v31 = String.init<A>(describing:)();
    v47 = v17;
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v29, "Successfully accepted share: %@", 31, 2, v30);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v34 = v49;
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v49);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v34);
    v36 = v47;
    sub_10058B200(v47, v15, type metadata accessor for SharedBeaconRecord);
    v37 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v38 = swift_allocObject();
    v39 = v51;
    *(v38 + 16) = v50;
    *(v38 + 24) = v39;
    sub_100589B28(v15, v38 + v37, type metadata accessor for SharedBeaconRecord);
    v63 = sub_10058BC90;
    v64 = v38;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101629B50;
    v40 = _Block_copy(&aBlock);

    v41 = v52;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v42 = v53;
    v43 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v56 + 8))(v42, v43);
    (*(v54 + 8))(v41, v55);
    sub_10058B268(v36, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_1005626A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10058B200(a3, &v9 - v6, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_10000B3A8(v7, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100562794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v32 = a2;
  v33 = a3;
  v40 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedBeaconRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v15);
  v17 = (&v32 - v16);
  sub_1000D2A70(v40, &v32 - v16, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v20 = swift_allocObject();
    v21 = v42;
    v20[2] = v41;
    v20[3] = v21;
    v20[4] = v18;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016274B8;
    v22 = _Block_copy(aBlock);

    swift_errorRetain();
    v23 = v34;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v24 = v36;
    v25 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v38 + 8))(v24, v25);
    (*(v35 + 8))(v23, v37);
  }

  else
  {
    v27 = v33;
    sub_10058B200(v33, &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    sub_100589B28(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for SharedBeaconRecord);
    v30 = (v29 + ((v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v42;
    *v30 = v41;
    v30[1] = v31;

    sub_100DDDDF4(v27, sub_10057CD70, v29);

    return sub_10000B3A8(v17, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100562D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v35 = a2;
  v36 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  if (v36)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v18 = swift_allocObject();
    v19 = v38;
    *(v18 + 16) = v37;
    *(v18 + 24) = v19;
    v46 = sub_10057CD88;
    v47 = v18;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_101627580;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v36;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v7, v4);
    (*(v39 + 8))(v10, v40);
  }

  else
  {
    v34 = v10;
    v36 = v5;
    v22 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_10058B200(v35, v17, type metadata accessor for SharedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Successfully declined share %@", 30, 2, v24);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v14, v11);
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 16) = v37;
    *(v29 + 24) = v30;
    v46 = sub_100470308;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100006684;
    v45 = &unk_101627530;
    v31 = _Block_copy(&aBlock);

    v32 = v34;
    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v36 + 8))(v7, v4);
    (*(v39 + 8))(v32, v40);
  }
}

uint64_t sub_10056343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v47 = a2;
  v48 = a3;
  v55 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShareRecord(0);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v18);
  v20 = (&v44 - v19);
  sub_1000D2A70(v55, &v44 - v19, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v22 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v23 = swift_allocObject();
    v24 = v57;
    v23[2] = v56;
    v23[3] = v24;
    v23[4] = v21;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016271C0;
    v25 = _Block_copy(aBlock);

    swift_errorRetain();
    v26 = v49;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v27 = v51;
    v28 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v53 + 8))(v27, v28);
    (*(v50 + 8))(v26, v52);
  }

  else
  {
    v31 = v47;
    v30 = v48;
    v32 = *(v47 + 144);
    sub_10058B200(v48, v17, type metadata accessor for ShareRecord);
    v33 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_100589B28(v17, v35 + v33, type metadata accessor for ShareRecord);
    *(v35 + v34) = v31;
    v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    v37 = v57;
    *v36 = v56;
    v36[1] = v37;

    v38 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v39 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    sub_10058B200(v30, v15, type metadata accessor for ShareRecord);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_100008C00();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "Attempting to remove: %@", 24, 2, v40);

    sub_100B0F7D8(v30, v32, sub_10057CB34, v35);

    return sub_10000B3A8(v20, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100563B20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v46 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v17);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  if (a1)
  {
    v43[1] = a3;
    v44 = v12;
    v20 = v46;
    v45 = v7;
    v21 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v24 = v20;
    sub_10058B200(v20, v19, type metadata accessor for ShareRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Successfully unshared %@", 24, 2, v23);

    v28 = *(v17 + 20);
    sub_1010B22E4(v24 + v28, 0);
    sub_1010B22E4(v24 + v28, 5);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v16, v13);
    v30 = swift_allocObject();
    v31 = v48;
    *(v30 + 16) = v47;
    *(v30 + 24) = v31;
    v58 = sub_100470308;
    v59 = v30;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_100006684;
    v57 = &unk_101627288;
    v32 = _Block_copy(&aBlock);

    v33 = v44;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v34 = v49;
    v35 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v52 + 8))(v34, v35);
    (*(v50 + 8))(v33, v51);
  }

  else
  {
    v36 = v7;
    sub_1010B22E4(v46 + *(v17 + 20), 1);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v46 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v16, v13);
    v37 = swift_allocObject();
    v38 = v48;
    *(v37 + 16) = v47;
    *(v37 + 24) = v38;
    v58 = sub_10057CBE0;
    v59 = v37;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_100006684;
    v57 = &unk_101627238;
    v39 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v40 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v46;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v52 + 8))(v40, v36);
    (*(v50 + 8))(v12, v51);
  }
}

void sub_100564278(void (*a1)(), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPOwnerSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100564334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v165 = a6;
  v162 = a7;
  v161 = a5;
  v146 = a3;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v147 = &v143 - v11;
  v12 = type metadata accessor for TimeBasedKey(0);
  v148 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v149 = (&v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v150 = (&v143 - v15);
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v7 + 144);
  v167 = type metadata accessor for OwnedBeaconRecord(0);
  v171 = v167;
  v155 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v172 = v155;
  v21 = sub_1000280DC(v170);
  v173 = a1;
  sub_10058B200(a1, v21, type metadata accessor for OwnedBeaconRecord);
  v154 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v157 = type metadata accessor for BeaconKeyManager(0);
  v158 = v20;
  v22 = v166;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v166 = v22;
  v23 = v168;
  sub_10001F280(v170, &v168);
  v24 = *(v17 + 16);
  v164 = a2;
  v153 = v17 + 16;
  v152 = v24;
  v24(v19, a2, v16);
  v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v26 = v25 + v18;
  v27 = v25 + v18 + 2;
  v151 = *(v17 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  sub_100031694(&v168, v28 + 24);
  v29 = *(v17 + 32);
  v156 = v25;
  v30 = v28 + v25;
  v31 = v29;
  v159 = v17 + 32;
  v160 = v19;
  v163 = v16;
  v29(v30, v19, v16);
  *(v28 + v26) = 0;
  *(v28 + v27) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v32 = v168;
  v33 = v169;
  sub_100007BAC(v170);
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      sub_100359088(v32, *(&v32 + 1), 2u);
    }

    v44 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v45 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_101385D80;
    v47 = UUID.uuidString.getter();
    v49 = v48;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_100008C00();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    goto LABEL_13;
  }

  if (!v33)
  {
    v34 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v35 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    v37 = UUID.uuidString.getter();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100008C00();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v41 = v32 >> 64;
    v40 = v32;
LABEL_6:
    v42 = 0;
    return sub_100359088(v40, v41, v42);
  }

  v144 = v32 >> 64;
  v145 = v32;
  v143 = v7;
  v50 = v173;
  if ((sub_1000322C8() & 1) == 0)
  {
    v58 = _swiftEmptyArrayStorage;
    v67 = v50;
    v60 = v162;
    goto LABEL_21;
  }

  v171 = v167;
  v172 = v155;
  v51 = sub_1000280DC(v170);
  sub_10058B200(v50, v51, type metadata accessor for OwnedBeaconRecord);
  v52 = v166;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v166 = v52;
  v53 = v168;
  sub_10001F280(v170, &v168);
  v54 = v160;
  v55 = v163;
  v152(v160, v164, v163);
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  sub_100031694(&v168, v56 + 24);
  v31(v56 + v156, v54, v55);
  *(v56 + v26) = 1;
  *(v56 + v26 + 1) = 0;
  *(v56 + v27) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v57 = *(&v168 + 1);
  v58 = v168;
  v59 = v169;
  sub_100007BAC(v170);
  if (v59 > 1)
  {
    v108 = v59 == 2;
    v109 = v144;
    v110 = v145;
    if (v108)
    {
      sub_100359088(v58, v57, 2u);
    }

    sub_100359088(v110, v109, 1u);
    v111 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v112 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_101385D80;
    v114 = UUID.uuidString.getter();
    v116 = v115;
    *(v113 + 56) = &type metadata for String;
    *(v113 + 64) = sub_100008C00();
    *(v113 + 32) = v114;
    *(v113 + 40) = v116;
LABEL_13:

    sub_100589AD4();
    swift_allocError();
    return swift_willThrow();
  }

  v60 = v162;
  if (!v59)
  {
    sub_100359088(v145, v144, 1u);
    v61 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v62 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_101385D80;
    v64 = UUID.uuidString.getter();
    v66 = v65;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = sub_100008C00();
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v40 = v58;
    v41 = v57;
    goto LABEL_6;
  }

  v67 = v173;
LABEL_21:
  if ((sub_1000322C8() & 1) == 0)
  {
    v97 = v60;
    v160 = v58;
    LODWORD(v159) = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v98 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_101391790;
    v68 = v145;
    v100 = *(v145 + 16);
    *(v99 + 56) = &type metadata for Int;
    *(v99 + 64) = &protocol witness table for Int;
    *(v99 + 32) = v100;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    *(v99 + 96) = &type metadata for String;
    v104 = sub_100008C00();
    *(v99 + 104) = v104;
    *(v99 + 72) = v101;
    *(v99 + 80) = v103;
    v105 = UUID.uuidString.getter();
    *(v99 + 136) = &type metadata for String;
    *(v99 + 144) = v104;
    *(v99 + 112) = v105;
    *(v99 + 120) = v106;
    *(v99 + 176) = &type metadata for String;
    *(v99 + 184) = v104;
    v70 = v165;
    *(v99 + 152) = v165;
    *(v99 + 160) = v97;
    v60 = v97;

    os_log(_:dso:log:_:_:)(v159, &_mh_execute_header, v98, "Distributing %ld primary keys for %@ for beacon: %@ to destination: %@", 70, 2, v99);

    goto LABEL_30;
  }

  v68 = v145;
  v69 = *(v145 + 16);
  v70 = v165;
  if (!v69)
  {
    goto LABEL_31;
  }

  v71 = v148;
  v72 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v73 = v145 + v72;
  v74 = v150;
  sub_10058B200(v145 + v72, v150, type metadata accessor for TimeBasedKey);
  v75 = v69 - 1;
  v76 = *(v71 + 72);
  v77 = v73 + v76 * v75;
  v78 = v149;
  sub_10058B200(v77, v149, type metadata accessor for TimeBasedKey);
  v79 = v58[2];
  if (v79)
  {
    v80 = (v58 + v72);
    v81 = (v79 - 1) * v76;
    v82 = v58;
    v83 = *v74;
    v84 = *v78;
    v85 = *v80;
    v86 = *(v80 + v81);
    LODWORD(v159) = static os_log_type_t.default.getter();
    v67 = v173;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v87 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1013B0DB0;
    v68 = v145;
    v89 = *(v145 + 16);
    *(v88 + 56) = &type metadata for Int;
    *(v88 + 64) = &protocol witness table for Int;
    *(v88 + 32) = v89;
    *(v88 + 96) = &type metadata for UInt64;
    *(v88 + 104) = &protocol witness table for UInt64;
    *(v88 + 72) = v83;
    *(v88 + 136) = &type metadata for UInt64;
    *(v88 + 144) = &protocol witness table for UInt64;
    *(v88 + 112) = v84;
    v160 = v82;
    v90 = v82[2];
    *(v88 + 176) = &type metadata for Int;
    *(v88 + 184) = &protocol witness table for Int;
    *(v88 + 152) = v90;
    *(v88 + 216) = &type metadata for UInt64;
    *(v88 + 224) = &protocol witness table for UInt64;
    *(v88 + 192) = v85;
    *(v88 + 256) = &type metadata for UInt64;
    *(v88 + 264) = &protocol witness table for UInt64;
    *(v88 + 232) = v86;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    *(v88 + 296) = &type metadata for String;
    v94 = sub_100008C00();
    *(v88 + 304) = v94;
    *(v88 + 272) = v91;
    *(v88 + 280) = v93;
    v95 = UUID.uuidString.getter();
    *(v88 + 336) = &type metadata for String;
    *(v88 + 344) = v94;
    *(v88 + 312) = v95;
    *(v88 + 320) = v96;
    *(v88 + 376) = &type metadata for String;
    *(v88 + 384) = v94;
    v70 = v165;
    v60 = v162;
    *(v88 + 352) = v165;
    *(v88 + 360) = v60;

    os_log(_:dso:log:_:_:)(v159, &_mh_execute_header, v87, "Distributing %ld primary keys [%llu...%llu] and %ld secondary keys [%llu...%llu] for %@ for beacon: %@ to destination: %@", 121, 2, v88);

    sub_10058B268(v149, type metadata accessor for TimeBasedKey);
    sub_10058B268(v150, type metadata accessor for TimeBasedKey);
LABEL_30:
    v58 = v160;
    goto LABEL_31;
  }

  sub_10058B268(v78, type metadata accessor for TimeBasedKey);
  sub_10058B268(v74, type metadata accessor for TimeBasedKey);
  v70 = v165;
  v68 = v145;
  v67 = v173;
LABEL_31:
  v107 = v166;
  sub_1005689EC(v68, v58, v67, v161, v70, v60);
  if (v107)
  {
    sub_100359088(v68, v144, 1u);
  }

  else
  {

    if ((sub_1000322C8() & 1) != 0 || (v117 = dispatch_group_create(), v118 = v60, v119 = sub_101129A8C(&off_101609298), v120 = swift_allocObject(), *(v120 + 16) = 0, dispatch_group_enter(v117), v121 = *(v143 + 24), v122 = swift_allocObject(), v122[2] = v120, v122[3] = v119, v122[4] = v117, v123 = type metadata accessor for TaskPriority(), v124 = v147, (*(*(v123 - 8) + 56))(v147, 1, 1, v123), v125 = swift_allocObject(), *(v125 + 16) = 0, *(v125 + 24) = 0, *(v125 + 32) = v121, *(v125 + 40) = v161, *(v125 + 48) = v165, *(v125 + 56) = v118, *(v125 + 64) = sub_10058D544, *(v125 + 72) = v122, , , v126 = v117, , sub_10025EDD4(0, 0, v124, &unk_1013B11C8, v125), , OS_dispatch_group.wait()(), v126, swift_beginAccess(), LODWORD(v126) = *(v120 + 16), v127 = , v126 != 1))
    {
      v40 = v145;
      v41 = v144;
      v42 = 1;
      return sub_100359088(v40, v41, v42);
    }

    __chkstk_darwin(v127);
    *(&v143 - 2) = v146;
    v128 = v145;
    v129 = sub_1006542D8(sub_100589FF4, (&v143 - 4), v145);
    sub_100359088(v128, v144, 1u);
    v130 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v131 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_101391790;
    v133 = v129[2];
    *(v132 + 56) = &type metadata for Int;
    *(v132 + 64) = &protocol witness table for Int;
    *(v132 + 32) = v133;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v136 = v135;
    *(v132 + 96) = &type metadata for String;
    v137 = sub_100008C00();
    *(v132 + 104) = v137;
    *(v132 + 72) = v134;
    *(v132 + 80) = v136;
    v138 = v173;
    v139 = UUID.uuidString.getter();
    *(v132 + 136) = &type metadata for String;
    *(v132 + 144) = v137;
    *(v132 + 112) = v139;
    *(v132 + 120) = v140;
    *(v132 + 176) = &type metadata for String;
    *(v132 + 184) = v137;
    v141 = v165;
    v142 = v162;
    *(v132 + 152) = v165;
    *(v132 + 160) = v142;

    os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v131, "Distributing %ld primary keys for %@ for beacon: %@ to destination: %@", 70, 2, v132);

    sub_100566720(v129, 5, v138, v161, v141, v142);
  }
}

uint64_t sub_100565524(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_100565590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for DateInterval();
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  v17 = type metadata accessor for ShareRecord(0);
  v18 = *(v17 + 28);
  v39 = a3;
  DateInterval.start.getter();
  LOBYTE(a1) = static Date.> infix(_:_:)();
  v40 = *(v10 + 8);
  v40(v15, v9);
  if (a1)
  {
    v37 = a2;
    v38 = v13;
    (*(v10 + 16))(v15, a2 + v18, v9);
    DateInterval.start.setter();
    v19 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v36 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    DateInterval.start.getter();
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v40(v15, v9);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v36, "Clipping start of keyRequest interval to shareDate %@", 53, 2, v20);

    a2 = v37;
    v13 = v38;
  }

  sub_1000D2A70(a2 + *(v17 + 32), v8, &unk_101696900, &unk_10138B1E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  }

  (*(v10 + 32))(v13, v8, v9);
  DateInterval.end.getter();
  v25 = static Date.< infix(_:_:)();
  v26 = v40;
  v40(v15, v9);
  if ((v25 & 1) == 0)
  {
    return v26(v13, v9);
  }

  (*(v10 + 16))(v15, v13, v9);
  DateInterval.end.setter();
  v27 = static os_log_type_t.default.getter();
  v28 = v13;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  DateInterval.end.getter();
  sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  v34 = v40;
  v40(v15, v9);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v29, "Clipping end of keyRequest interval to expiration %@", 52, 2, v30);

  return v34(v28, v9);
}

uint64_t sub_100565AE4(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v111 = type metadata accessor for DateInterval();
  v110 = *(v111 - 8);
  v3 = __chkstk_darwin(v111);
  v106 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v109 = &v97 - v6;
  v7 = __chkstk_darwin(v5);
  v114 = &v97 - v8;
  __chkstk_darwin(v7);
  v115 = &v97 - v9;
  v125 = type metadata accessor for Calendar.Component();
  v130 = *(v125 - 8);
  __chkstk_darwin(v125);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Calendar();
  v129 = *(v124 - 8);
  __chkstk_darwin(v124);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = __chkstk_darwin(v14 - 8);
  v118 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v128 = (&v97 - v17);
  v18 = type metadata accessor for Date();
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = __chkstk_darwin(v18);
  v103 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v112 = &v97 - v22;
  v23 = __chkstk_darwin(v21);
  v120 = &v97 - v24;
  v25 = __chkstk_darwin(v23);
  v122 = &v97 - v26;
  __chkstk_darwin(v25);
  v28 = &v97 - v27;
  v29 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v29);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C378;
  v113 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10138BBE0;
  v107 = a1;
  sub_10058B200(a1, v31, type metadata accessor for OwnedBeaconRecord);
  v104 = v29;
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  v38 = sub_100008C00();
  *(v34 + 64) = v38;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  v39 = (v123 + *(type metadata accessor for ShareRecord(0) + 36));
  v41 = *(v39 + 1);
  v40 = *(v39 + 2);
  v100 = v39;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v38;
  v105 = v38;
  v102 = v41;
  *(v34 + 72) = v41;
  *(v34 + 80) = v40;
  v101 = v40;

  v121 = v33;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Redistribute keys for %@ to %@", 30, 2, v34);

  static Date.trustedNow.getter(v28);
  static Calendar.current.getter();
  v42 = v130;
  v43 = v125;
  v117 = *(v130 + 104);
  v117(v11, enum case for Calendar.Component.day(_:), v125);
  v44 = v128;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v45 = *(v42 + 8);
  v119 = v11;
  v130 = v42 + 8;
  v116 = v45;
  v45(v11, v43);
  v47 = v129 + 8;
  v46 = *(v129 + 8);
  v46(v13, v124);
  v49 = v126;
  v48 = v127;
  v50 = v126[6];
  if (v50(v44, 1, v127) == 1)
  {
    sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
    v51 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v121, "Could not calculate 7 days ago!", 31, 2, _swiftEmptyArrayStorage);
    return (v49[1])(v28, v48);
  }

  v99 = v13;
  v129 = v47;
  v108 = v28;
  v53 = v49[4];
  v54 = v128;
  v128 = v49 + 4;
  v98 = v53;
  v53(v122, v54, v48);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v97 = 0;
  v55 = v131;
  sub_101073EF8(v131);
  v56 = v99;
  static Calendar.current.getter();
  v57 = v119;
  v58 = v125;
  v117(v119, enum case for Calendar.Component.minute(_:), v125);
  v59 = v118;
  v60 = v108;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v116(v57, v58);
  v46(v56, v124);
  v61 = v59;
  v62 = v59;
  v63 = v127;
  if (v50(v62, 1, v127) == 1)
  {

    sub_10000B3A8(v61, &unk_101696900, &unk_10138B1E0);
    v64 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v121, "Could not calculate maxLimit!", 29, 2, _swiftEmptyArrayStorage);
    v65 = v126[1];
    v65(v122, v63);
    return (v65)(v60, v63);
  }

  v98(v120, v61, v63);
  v66 = sub_101073F4C(v55);
  v67 = v126[2];
  v68 = v112;
  result = v67(v112, v60, v63);
  if ((v66 * 60) >> 64 != (60 * v66) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  DateInterval.init(start:duration:)();
  v69 = sub_101073F68(v55);

  result = v67(v68, v60, v63);
  if ((v69 * 60) >> 64 != (60 * v69) >> 63)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  DateInterval.init(start:duration:)();
  v67(v68, v122, v63);
  v67(v103, v120, v63);
  v70 = v106;
  DateInterval.init(start:end:)();
  v71 = v109;
  sub_100565590(v70, v123, v109);
  v72 = *(v110 + 8);
  v73 = v111;
  v72(v70, v111);
  v74 = static os_log_type_t.default.getter();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_10138B360;
  v76 = v107;
  v77 = UUID.uuidString.getter();
  v78 = v105;
  *(v75 + 56) = &type metadata for String;
  *(v75 + 64) = v78;
  *(v75 + 32) = v77;
  *(v75 + 40) = v79;
  sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v80 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v75 + 96) = &type metadata for String;
  *(v75 + 104) = v78;
  *(v75 + 72) = v80;
  *(v75 + 80) = v81;
  *(v75 + 136) = &type metadata for String;
  *(v75 + 144) = v78;
  v82 = v102;
  v83 = v101;
  *(v75 + 112) = v102;
  *(v75 + 120) = v83;

  v84 = v74;
  v85 = v121;
  os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v121, "Redistibute for %@: %@ to %@", 28, 2, v75);

  v86 = v76;
  v87 = v115;
  v88 = v97;
  sub_100564334(v86, v71, v115, v89, *v100, v82, v83);
  if (v88)
  {
    v90 = v85;
    v91 = static os_log_type_t.error.getter();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_101385D80;
    v131 = v88;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v93 = String.init<A>(describing:)();
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = v78;
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v90, "Error from sendKeys: %@", 23, 2, v92);
  }

  v72(v71, v73);
  v72(v114, v73);
  v72(v87, v73);
  v95 = v127;
  v96 = v126[1];
  v96(v120, v127);
  v96(v122, v95);
  return (v96)(v108, v95);
}

uint64_t sub_100566720(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v221 = a6;
  v234 = a5;
  v206 = a4;
  v240 = a3;
  v224 = a2;
  v182 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchTime();
  v243 = *(v173 - 8);
  v9 = __chkstk_darwin(v173);
  v168 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v172 = &v161 - v11;
  v202 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v202 - 8);
  __chkstk_darwin(v202);
  v201 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for DispatchQoS();
  v14 = *(v200 - 8);
  __chkstk_darwin(v200);
  v199 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for SecureLocationsRelayAction(0);
  v193 = *(v194 - 8);
  v16 = __chkstk_darwin(v194);
  v191 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v17;
  __chkstk_darwin(v16);
  v190 = &v161 - v18;
  v189 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v19 = __chkstk_darwin(v189);
  v171 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v188 = &v161 - v21;
  v187 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v187);
  v205 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = __chkstk_darwin(v23 - 8);
  v186 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v204 = &v161 - v26;
  v235 = type metadata accessor for UUID();
  v174 = *(v235 - 8);
  v27 = __chkstk_darwin(v235);
  v176 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v203 = &v161 - v30;
  v167 = v31;
  __chkstk_darwin(v29);
  v175 = &v161 - v32;
  v210 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v210);
  v209 = (&v161 - v33);
  v220 = type metadata accessor for SystemInfo.DeviceLockState();
  v34 = *(v220 - 8);
  v35 = __chkstk_darwin(v220);
  v219 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v218 = &v161 - v37;
  v223 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  v38 = __chkstk_darwin(v223);
  v222 = &v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v225 = &v161 - v40;
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = dispatch_group_create();
  type metadata accessor for CryptoKeys(0);
  v226 = Array.chunked(into:)();
  v45 = swift_allocObject();
  v241 = v45;
  *(v45 + 16) = 0;
  result = v45 + 16;
  v170 = result;
  if (*(a1 + 16))
  {
    DateInterval.end.getter();
    Date.timeIntervalSinceNow.getter();
    v48 = v47;
    result = (*(v42 + 8))(v44, v41);
  }

  else
  {
    v48 = 0x4105180000000000;
  }

  v49 = v226;
  v217 = *(v226 + 16);
  if (v217)
  {
    v50 = 0;
    v231 = (v174 + 16);
    v216 = (v34 + 104);
    v215 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v214 = (v34 + 8);
    v185 = (v174 + 56);
    v198 = (v174 + 8);
    v180 = enum case for DispatchQoS.QoSClass.default(_:);
    v179 = (v7 + 104);
    v178 = (v7 + 8);
    v197 = &v247;
    v196 = (v12 + 8);
    v195 = (v14 + 8);
    v177 = v174 + 32;
    v169 = (v243 + 8);
    v213 = xmmword_10138B360;
    v208 = xmmword_101385D80;
    v184 = xmmword_1013B0D90;
    v183 = xmmword_10138BBF0;
    v51 = v244;
    v52 = v235;
    v53 = v229;
    v54 = v225;
    while (1)
    {
      if (v50 >= *(v49 + 16))
      {
        __break(1u);
        return result;
      }

      v239 = v50;
      v57 = *(v49 + 8 * v50 + 32);
      v58 = v240 + *(type metadata accessor for OwnedBeaconRecord(0) + 20);
      v230 = *v231;
      v230(v54, v58, v52);
      *(v54 + *(v223 + 20)) = v57;
      v59 = v222;
      sub_10058B200(v54, v222, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      swift_bridgeObjectRetain_n();
      sub_10053C948(v224, 1, v59, &aBlock);
      if (v51)
      {

        swift_willThrow();

        sub_10058B268(v54, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      }

      v244 = 0;
      LODWORD(v228) = aBlock;
      v227 = v246;
      v242 = v247;
      v243 = v248;
      v60 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v61 = qword_10177C378;
      v232 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v62 = swift_allocObject();
      *(v62 + 16) = v213;
      v63 = *(v57 + 16);

      *(v62 + 56) = &type metadata for Int;
      *(v62 + 64) = &protocol witness table for Int;
      *(v62 + 32) = v63;
      v64 = UUID.uuidString.getter();
      v66 = v65;
      *(v62 + 96) = &type metadata for String;
      v67 = sub_100008C00();
      *(v62 + 72) = v64;
      *(v62 + 80) = v66;
      *(v62 + 136) = &type metadata for String;
      *(v62 + 144) = v67;
      v233 = v67;
      v68 = v234;
      *(v62 + 104) = v67;
      *(v62 + 112) = v68;
      v69 = v221;
      *(v62 + 120) = v221;
      swift_bridgeObjectRetain_n();
      v238 = v61;
      os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v61, "Distributing chunk of %ld keys for beacon: %@ to destination: %@", 64, 2, v62);

      dispatch_group_enter(v53);
      v236 = sub_100B0F690(&off_1016092C0);
      v70 = swift_allocObject();
      v71 = v241;
      *(v70 + 16) = v53;
      *(v70 + 24) = v71;
      v237 = v53;

      sub_100908F24(_swiftEmptyArrayStorage);

      v72 = sub_101129A8C(&off_1016092E8);
      v73 = v218;
      static SystemInfo.lockState.getter();
      v74 = v219;
      v75 = v220;
      (*v216)(v219, v215, v220);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = *v214;
      (*v214)(v74, v75);
      v76(v73, v75);
      if (v71)
      {

        v55 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v238, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
        type metadata accessor for SPOwnerSessionError(0);
        v251 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v56 = v209;
        *v209 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100568774(v56, v237, v241);

        sub_100016590(v242, v243);
        sub_10000B3A8(v56, &qword_10169F358, &qword_1013A0810);
        v54 = v225;
        result = sub_10058B268(v225, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
        v53 = v229;
        v52 = v235;
      }

      else
      {
        v211 = v72;
        v77 = v237;
        v212 = v70;
        v78 = v206;
        v79 = v234;
        v80 = v207;
        v81 = sub_100540CB8(v206, v234, v69);
        v52 = v235;
        if ((v81 & 1) == 0)
        {

          v105 = static os_log_type_t.error.getter();
          v106 = swift_allocObject();
          *(v106 + 16) = v208;
          v107 = v233;
          *(v106 + 56) = &type metadata for String;
          *(v106 + 64) = v107;
          *(v106 + 32) = v79;
          *(v106 + 40) = v69;
          os_log(_:dso:log:_:_:)(v105, &_mh_execute_header, v238, "Not sending since %@ has no IDS registered devices", 50, 2, v106);

          type metadata accessor for SPOwnerSessionError(0);
          v251 = 12;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
          _BridgedStoredNSError.init(_:userInfo:)();
          v108 = v209;
          *v209 = aBlock;
          swift_storeEnumTagMultiPayload();
          sub_100568774(v108, v77, v241);

          sub_100016590(v242, v243);
          sub_10000B3A8(v108, &qword_10169F358, &qword_1013A0810);
          v54 = v225;
          result = sub_10058B268(v225, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
          goto LABEL_21;
        }

        v237 = *(v80 + 24);
        sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
        v82 = swift_allocObject();
        *(v82 + 16) = v208;
        *(v82 + 32) = v78;
        *(v82 + 40) = v79;
        *(v82 + 48) = v69;
        v83 = *v185;
        v84 = v204;
        (*v185)(v204, 1, 1, v52);

        v85 = v203;
        UUID.init()();
        v86 = v205;
        v230(v205, v85, v52);
        v87 = v186;
        sub_1000D2A70(v84, v186, &qword_1016980D0, &unk_10138F3B0);
        v88 = v187;
        v89 = *(v187 + 28);
        v83(v86 + v89, 1, 1, v52);
        *(v86 + v88[5]) = v82;
        *(v86 + v88[6]) = 1;
        sub_10002311C(v87, v86 + v89, &qword_1016980D0, &unk_10138F3B0);
        v90 = v86 + v88[8];
        *v90 = v48;
        *(v90 + 8) = 0;
        *(v86 + v88[9]) = 0;
        *(v86 + v88[10]) = v211;
        *(v86 + v88[11]) = v236;
        v91 = (v86 + v88[12]);
        *v91 = 0;
        v91[1] = 0;
        *(v86 + v88[13]) = v184;
        v92 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
        v93 = v190;
        sub_10058B200(v86, &v190[*(v92 + 24)], type metadata accessor for MessagingOptions);
        *v93 = v228;
        v95 = v242;
        v94 = v243;
        *(v93 + 8) = v227;
        *(v93 + 16) = v95;
        *(v93 + 24) = v94;
        *(v93 + 32) = v183;
        swift_storeEnumTagMultiPayload();
        v96 = v191;
        sub_10058B200(v93, v191, type metadata accessor for SecureLocationsRelayAction);
        v97 = (*(v193 + 80) + 24) & ~*(v193 + 80);
        v98 = swift_allocObject();
        *(v98 + 16) = v237;
        sub_100589B28(v96, v98 + v97, type metadata accessor for SecureLocationsRelayAction);
        sub_100017D5C(v95, v94);

        v99 = v188;
        v100 = v244;
        unsafeFromAsyncTask<A>(_:)();
        if (v100)
        {

          sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction);
          v101 = v100;
          v244 = 0;
          v102 = v235;
          v103 = v212;
          v104 = v238;
          goto LABEL_20;
        }

        sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction);

        v109 = v171;
        sub_10058B200(v99, v171, type metadata accessor for SecureLocationsRelayAction.Response);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v53 = v229;
        v104 = v238;
        if (EnumCaseMultiPayload != 4)
        {
          sub_10058B268(v109, type metadata accessor for SecureLocationsRelayAction.Response);
          sub_10057C844();
          v101 = swift_allocError();
          swift_willThrow();
          sub_10058B268(v99, type metadata accessor for SecureLocationsRelayAction.Response);
          v244 = 0;
          v102 = v235;
          v103 = v212;
LABEL_20:
          (*v198)(v203, v102);
          sub_10000B3A8(v204, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v205, type metadata accessor for MessagingOptions);
          v146 = static os_log_type_t.error.getter();
          v147 = swift_allocObject();
          *(v147 + 16) = v208;
          aBlock = v101;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v148 = String.init<A>(describing:)();
          v149 = v233;
          *(v147 + 56) = &type metadata for String;
          *(v147 + 64) = v149;
          *(v147 + 32) = v148;
          *(v147 + 40) = v150;
          os_log(_:dso:log:_:_:)(v146, &_mh_execute_header, v104, "Message send error: %@", 22, 2, v147);

          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          v151 = v181;
          v152 = v182;
          (*v179)(v181, v180, v182);
          v153 = static OS_dispatch_queue.global(qos:)();
          (*v178)(v151, v152);
          v154 = swift_allocObject();
          v154[2] = sub_10058A014;
          v154[3] = v103;
          v154[4] = v101;
          v249 = sub_10058D73C;
          v250 = v154;
          aBlock = _NSConcreteStackBlock;
          v246 = 1107296256;
          v247 = sub_100006684;
          v248 = &unk_101628610;
          v155 = _Block_copy(&aBlock);

          swift_errorRetain();
          v156 = v199;
          static DispatchQoS.unspecified.getter();
          v251 = _swiftEmptyArrayStorage;
          sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v157 = v201;
          v158 = v202;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v155);

          sub_100016590(v242, v243);
          (*v196)(v157, v158);
          v159 = v156;
          v52 = v235;
          (*v195)(v159, v200);
          v54 = v225;
          sub_10058B268(v225, type metadata accessor for LegacySelfBeaconingKeyEnvelope);

LABEL_21:
          v53 = v229;
          goto LABEL_7;
        }

        v244 = 0;
        sub_10058B268(v99, type metadata accessor for SecureLocationsRelayAction.Response);
        v111 = v174;
        v227 = *(v174 + 8);
        v112 = v235;
        v227(v203, v235);
        sub_10000B3A8(v204, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v205, type metadata accessor for MessagingOptions);
        v228 = *(v111 + 32);
        v113 = v175;
        v228(v175, v109, v112);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v237 = Future.init()();
        v114 = static os_log_type_t.default.getter();
        v115 = swift_allocObject();
        *(v115 + 16) = v208;
        v116 = UUID.uuidString.getter();
        v117 = v233;
        *(v115 + 56) = &type metadata for String;
        *(v115 + 64) = v117;
        *(v115 + 32) = v116;
        *(v115 + 40) = v118;
        os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, v104, "Setting %@ to pending", 21, 2, v115);

        v119 = v207;
        v238 = *(v207 + 168);
        v120 = v176;
        v121 = v112;
        v230(v176, v113, v112);
        v233 = *(v111 + 80);
        v232 = ((v233 + 24) & ~v233) + v167;
        v122 = (v233 + 24) & ~v233;
        v236 = v122;
        v123 = (v232 + 7) & 0xFFFFFFFFFFFFFFF8;
        v124 = swift_allocObject();
        *(v124 + 16) = v119;
        v125 = v228;
        v228((v124 + v122), v120, v121);
        *(v124 + v123) = v237;
        v249 = sub_10058D4DC;
        v250 = v124;
        aBlock = _NSConcreteStackBlock;
        v246 = 1107296256;
        v247 = sub_100006684;
        v248 = &unk_101628660;
        v126 = _Block_copy(&aBlock);

        v127 = v199;
        static DispatchQoS.unspecified.getter();
        v251 = _swiftEmptyArrayStorage;
        v164 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v163 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v165 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v128 = v201;
        v129 = v202;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v126);
        v211 = *v196;
        v211(v128, v129);
        v166 = *v195;
        v166(v127, v200);

        v130 = v176;
        v131 = v175;
        v52 = v235;
        v230(v176, v175, v235);
        v132 = swift_allocObject();
        v133 = v207;
        *(v132 + 16) = v207;
        v125(v132 + v236, v130, v52);
        v134 = (v132 + v123);
        v135 = v212;
        *v134 = sub_10058A014;
        v134[1] = v135;
        v136 = v133;

        Future.addSuccess(block:)();

        v137 = swift_allocObject();
        *(v137 + 16) = sub_10058A014;
        *(v137 + 24) = v135;

        Future.addFailure(block:)();

        v138 = v168;
        static DispatchTime.now()();
        + infix(_:_:)();
        v162 = *v169;
        v162(v138, v173);
        v139 = v176;
        v230(v176, v131, v52);
        v140 = swift_allocObject();
        *(v140 + 16) = v136;
        v228((v140 + v236), v139, v52);
        v249 = sub_10058D4E0;
        v250 = v140;
        aBlock = _NSConcreteStackBlock;
        v246 = 1107296256;
        v247 = sub_100006684;
        v248 = &unk_101628700;
        v141 = _Block_copy(&aBlock);

        v142 = v199;
        static DispatchQoS.unspecified.getter();
        v251 = _swiftEmptyArrayStorage;
        v143 = v201;
        v144 = v202;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v145 = v172;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v141);

        sub_100016590(v242, v243);
        v211(v143, v144);
        v166(v142, v200);
        v162(v145, v173);
        v227(v175, v52);
        v54 = v225;
        sub_10058B268(v225, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      }

LABEL_7:
      v50 = v239 + 1;
      v51 = v244;
      v49 = v226;
      if (v217 == v239 + 1)
      {
        goto LABEL_23;
      }
    }
  }

  v53 = v229;
LABEL_23:

  OS_dispatch_group.wait()();
  v160 = v170;
  swift_beginAccess();
  if (*v160)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
  }
}

void sub_100568774(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v10);
  v12 = (&v20 - v11);
  sub_1000D2A70(a1, &v20 - v11, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    swift_beginAccess();
    *(a3 + 16) = v13;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Successfully distributed keys: %@", 33, 2, v16);

    (*(v7 + 8))(v9, v6);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1005689EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v277 = a6;
  v284 = a5;
  LODWORD(v283) = a4;
  *&v286 = a3;
  v275 = a2;
  v242 = type metadata accessor for DispatchQoS.QoSClass();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for DispatchTime();
  v239 = *(v243 - 8);
  v7 = __chkstk_darwin(v243);
  v237 = &v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v238 = &v236 - v9;
  v249 = type metadata accessor for DispatchWorkItemFlags();
  v255 = *(v249 - 8);
  __chkstk_darwin(v249);
  v248 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for DispatchQoS();
  v254 = *(v252 - 8);
  __chkstk_darwin(v252);
  v251 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v246);
  v247 = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v245 = &v236 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v256 = &v236 - v16;
  v259 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v259);
  v260 = (&v236 - v17);
  v268 = type metadata accessor for SystemInfo.DeviceLockState();
  v267 = *(v268 - 8);
  v18 = __chkstk_darwin(v268);
  v266 = &v236 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v265 = &v236 - v20;
  v279 = type metadata accessor for OwnedBeaconRecord(0);
  v262 = *(v279 - 8);
  v21 = __chkstk_darwin(v279);
  v278 = &v236 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = v22;
  __chkstk_darwin(v21);
  v264 = &v236 - v23;
  v24 = type metadata accessor for SharingRampState(0);
  __chkstk_darwin(v24 - 8);
  v261 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FamilyCryptoKeysV1(0);
  v290 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v236 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v291 = &v236 - v30;
  v272 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  v31 = __chkstk_darwin(v272);
  v273 = &v236 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v274 = &v236 - v33;
  v34 = type metadata accessor for TimeBasedKey(0);
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v236 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v289 = (&v236 - v40);
  __chkstk_darwin(v39);
  v42 = &v236 - v41;
  v43 = type metadata accessor for FamilyCryptoKeysV2(0);
  v292 = *(v43 - 8);
  v293 = v43;
  v44 = __chkstk_darwin(v43);
  v294 = &v236 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v236 - v46;
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  v287 = v48;
  v288 = v49;
  v50 = __chkstk_darwin(v48);
  v250 = &v236 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v244 = &v236 - v53;
  v54 = __chkstk_darwin(v52);
  v253 = &v236 - v55;
  v56 = __chkstk_darwin(v54);
  v280 = &v236 - v57;
  v236 = v58;
  __chkstk_darwin(v56);
  v281 = &v236 - v59;
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
  v60 = __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v270 = &v236 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v271 = &v236 - v62;
  v63 = type metadata accessor for Date();
  v64 = *(v63 - 8);
  v65 = __chkstk_darwin(v63);
  v67 = &v236 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v68 + 16);
  v295 = v34;
  v276 = v68;
  v285 = v35;
  if (v69)
  {
    v257 = v65;
    v70 = v67;
    DateInterval.end.getter();
    Date.timeIntervalSinceNow.getter();
    v72 = v71;
    (*(v64 + 8))(v70, v257);
  }

  else
  {
    v72 = 0x4105180000000000;
  }

  v73 = v286;
  v74 = sub_1000322C8();
  v75 = *(v279 + 20);
  v76 = *(v288 + 16);
  v279 = v288 + 16;
  v257 = v76;
  v77 = (v73 + v75);
  if (v74)
  {
    v76(v281, v77, v287);
    v78 = _swiftEmptyArrayStorage;
    if (v69)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C54(0, v69, 0);
      v78 = aBlock;
      v79 = v276 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
      v291 = *(v285 + 72);
      do
      {
        sub_10058B200(v79, v42, type metadata accessor for TimeBasedKey);
        *v47 = *v42;
        v80 = v295;
        v81 = *(v295 + 20);
        v82 = v293;
        v83 = v293[5];
        v84 = type metadata accessor for DateInterval();
        (*(*(v84 - 8) + 16))(&v47[v83], &v42[v81], v84);
        v85 = &v42[*(v80 + 24)];
        v86 = *(v85 + 2);
        v87 = *(v85 + 3);
        sub_100017D5C(v86, v87);
        sub_10058B268(v42, type metadata accessor for TimeBasedKey);
        v88 = &v47[*(v82 + 24)];
        *v88 = v86;
        v88[1] = v87;
        aBlock = v78;
        v90 = v78[2];
        v89 = v78[3];
        if (v90 >= v89 >> 1)
        {
          sub_101124C54((v89 > 1), v90 + 1, 1);
          v78 = aBlock;
        }

        v78[2] = (v90 + 1);
        sub_100589B28(v47, v78 + ((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v90, type metadata accessor for FamilyCryptoKeysV2);
        v79 += v291;
        --v69;
      }

      while (v69);
    }

    v108 = v275;
    v109 = *(v275 + 16);
    v110 = _swiftEmptyArrayStorage;
    v111 = v294;
    v112 = v285;
    if (v109)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C54(0, v109, 0);
      v110 = aBlock;
      v113 = v108 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
      v291 = *(v112 + 72);
      do
      {
        sub_10058B200(v113, v42, type metadata accessor for TimeBasedKey);
        *v111 = *v42;
        v114 = v295;
        v115 = *(v295 + 20);
        v116 = v293;
        v117 = v293[5];
        v118 = type metadata accessor for DateInterval();
        (*(*(v118 - 8) + 16))(v294 + v117, &v42[v115], v118);
        v119 = &v42[*(v114 + 24)];
        v120 = *(v119 + 2);
        v121 = *(v119 + 3);
        sub_100017D5C(v120, v121);
        sub_10058B268(v42, type metadata accessor for TimeBasedKey);
        v122 = *(v116 + 24);
        v111 = v294;
        v123 = (v294 + v122);
        *v123 = v120;
        v123[1] = v121;
        aBlock = v110;
        v125 = v110[2];
        v124 = v110[3];
        if (v125 >= v124 >> 1)
        {
          sub_101124C54((v124 > 1), v125 + 1, 1);
          v110 = aBlock;
        }

        v110[2] = (v125 + 1);
        sub_100589B28(v111, v110 + ((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v125, type metadata accessor for FamilyCryptoKeysV2);
        v113 += v291;
        --v109;
      }

      while (v109);
    }

    v126 = *(v288 + 32);
    v127 = v271;
    v126(v271, v281, v287);
    v128 = MyAccessoryFamilyKeyEnvelope;
    *(v127 + *(MyAccessoryFamilyKeyEnvelope + 20)) = v78;
    *(v127 + *(v128 + 24)) = v110;
    v129 = v270;
    sub_10058B200(v127, v270, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    v130 = v282;
    sub_10053C350(5, 3, v129, &aBlock);
    result = sub_10058B268(v127, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    v132 = v284;
    v133 = v283;
    if (v130)
    {
      return result;
    }

    v289 = v126;
    LODWORD(v285) = aBlock;
    v282 = v297;
    v293 = v299;
    v294 = v298;
    v134 = v277;
  }

  else
  {
    v91 = v287;
    v76(v280, v77, v287);
    v92 = _swiftEmptyArrayStorage;
    if (v69)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C98(0, v69, 0);
      v92 = aBlock;
      v93 = v276 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
      v294 = *(v285 + 72);
      do
      {
        v94 = v289;
        sub_10058B200(v93, v289, type metadata accessor for TimeBasedKey);
        sub_100589B28(v94, v38, type metadata accessor for TimeBasedKey);
        *v29 = *v38;
        v95 = v295;
        v96 = *(v295 + 20);
        v97 = *(v26 + 20);
        v98 = type metadata accessor for DateInterval();
        (*(*(v98 - 8) + 16))(&v29[v97], &v38[v96], v98);
        v99 = &v38[*(v95 + 24)];
        v100 = *(v99 + 5);
        if (v100 >> 60 == 15)
        {
          v101 = *(v99 + 2);
          v102 = *(v99 + 3);
          sub_100017D5C(v101, v102);
          sub_10058B268(v38, type metadata accessor for TimeBasedKey);
        }

        else
        {
          v101 = *(v99 + 4);
          sub_100017D5C(v101, *(v99 + 5));
          sub_10058B268(v38, type metadata accessor for TimeBasedKey);
          v102 = v100 | 0x2000000000000000;
        }

        v103 = v26;
        v104 = &v29[*(v26 + 24)];
        *v104 = v101;
        v104[1] = v102;
        v105 = v291;
        sub_100589B28(v29, v291, type metadata accessor for FamilyCryptoKeysV1);
        aBlock = v92;
        v107 = v92[2];
        v106 = v92[3];
        if (v107 >= v106 >> 1)
        {
          sub_101124C98((v106 > 1), v107 + 1, 1);
          v105 = v291;
          v92 = aBlock;
        }

        v92[2] = (v107 + 1);
        sub_100589B28(v105, v92 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v107, type metadata accessor for FamilyCryptoKeysV1);
        v93 += v294;
        --v69;
        v26 = v103;
      }

      while (v69);
      v91 = v287;
    }

    v135 = *(v288 + 32);
    v136 = v274;
    v135(v274, v280, v91);
    *(v136 + *(v272 + 20)) = v92;
    v137 = v273;
    sub_10058B200(v136, v273, type metadata accessor for SelfBeaconingKeyEnvelope);
    v138 = v282;
    sub_10053C64C(5, 2, v137, &aBlock);
    result = sub_10058B268(v136, type metadata accessor for SelfBeaconingKeyEnvelope);
    v134 = v277;
    v132 = v284;
    v133 = v283;
    if (v138)
    {
      return result;
    }

    v289 = v135;
    LODWORD(v285) = aBlock;
    v282 = v297;
    v293 = v299;
    v294 = v298;
  }

  v295 = 0;
  v139 = v261;
  sub_10052FFA4(v261);
  v140 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v141 = (*(*(v140 - 8) + 48))(v139, 2, v140);
  sub_10058B268(v139, type metadata accessor for SharingRampState);
  if (v141 == 2)
  {
    v291 = sub_100B0F690(&off_101609248);
  }

  else
  {
    v291 = &_swiftEmptySetSingleton;
  }

  v290 = sub_100B0F690(&off_101609270);
  v142 = v264;
  sub_10058B200(v286, v264, type metadata accessor for OwnedBeaconRecord);
  sub_10058B200(v142, v278, type metadata accessor for OwnedBeaconRecord);
  v143 = (*(v262 + 80) + 16) & ~*(v262 + 80);
  v144 = (v263 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = swift_allocObject();
  sub_100589B28(v142, v145 + v143, type metadata accessor for OwnedBeaconRecord);
  v292 = v145;
  v146 = v145 + v144;
  *v146 = v133;
  *(v146 + 8) = v132;
  *(v146 + 16) = v134;

  sub_100908F24(_swiftEmptyArrayStorage);

  v147 = v134;
  v148 = v265;
  static SystemInfo.lockState.getter();
  v149 = v267;
  v150 = v266;
  v151 = v268;
  (*(v267 + 104))(v266, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v268);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v143) = dispatch thunk of static Equatable.== infix(_:_:)();
  v152 = *(v149 + 8);
  v152(v150, v151);
  v152(v148, v151);
  if (v143)
  {

    v153 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v235 = v153;
      swift_once();
      v153 = v235;
    }

    os_log(_:dso:log:_:_:)(v153, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v302 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v154 = v260;
    *v260 = aBlock;
    swift_storeEnumTagMultiPayload();
    v155 = v154;
    v156 = v278;
    v157 = v278;
    v158 = v133;
    v159 = v132;
    v160 = v147;
LABEL_44:
    sub_10056AE50(v155, v157, v158, v159, v160);
    sub_100016590(v294, v293);

    sub_10000B3A8(v154, &qword_10169F358, &qword_1013A0810);
    return sub_10058B268(v156, type metadata accessor for OwnedBeaconRecord);
  }

  v161 = v258;
  v162 = v147;
  if ((sub_100540CB8(v133, v132, v147) & 1) == 0)
  {

    v193 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v194 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_101385D80;
    *(v195 + 56) = &type metadata for String;
    *(v195 + 64) = sub_100008C00();
    *(v195 + 32) = v132;
    *(v195 + 40) = v147;

    os_log(_:dso:log:_:_:)(v193, &_mh_execute_header, v194, "Not sending since %@ has no IDS registered devices", 50, 2, v195);

    type metadata accessor for SPOwnerSessionError(0);
    v302 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v154 = v260;
    *v260 = aBlock;
    swift_storeEnumTagMultiPayload();
    v155 = v154;
    v156 = v278;
    v157 = v278;
    v158 = v133;
    v159 = v132;
    v160 = v147;
    goto LABEL_44;
  }

  sub_10058B268(v278, type metadata accessor for OwnedBeaconRecord);
  v284 = *(v161 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v163 = swift_allocObject();
  v286 = xmmword_101385D80;
  *(v163 + 16) = xmmword_101385D80;
  *(v163 + 32) = v133;
  *(v163 + 40) = v132;
  *(v163 + 48) = v162;
  v164 = *(v288 + 56);
  v165 = v256;
  v166 = v287;
  v164(v256, 1, 1, v287);

  v167 = v247;
  UUID.init()();
  v168 = v165;
  v169 = v245;
  sub_1000D2A70(v168, v245, &qword_1016980D0, &unk_10138F3B0);
  v170 = v246;
  v171 = *(v246 + 28);
  v164(v167 + v171, 1, 1, v166);
  *(v167 + v170[5]) = v163;
  *(v167 + v170[6]) = 1;
  sub_10002311C(v169, v167 + v171, &qword_1016980D0, &unk_10138F3B0);
  v172 = v167 + v170[8];
  *v172 = v72;
  *(v172 + 8) = 0;
  *(v167 + v170[9]) = 0;
  v173 = v291;
  *(v167 + v170[10]) = v290;
  *(v167 + v170[11]) = v173;
  v174 = (v167 + v170[12]);
  *v174 = 0;
  v174[1] = 0;
  *(v167 + v170[13]) = xmmword_1013B0D90;
  v175 = v244;
  v176 = v295;
  sub_1010A6F88(v285, v282, v294, v293, v167, v244);
  v295 = v176;
  if (v176)
  {
    sub_10000B3A8(v256, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v167, type metadata accessor for MessagingOptions);
    v177 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v178 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v179 = swift_allocObject();
    *(v179 + 16) = v286;
    aBlock = v176;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v180 = String.init<A>(describing:)();
    v182 = v181;
    *(v179 + 56) = &type metadata for String;
    *(v179 + 64) = sub_100008C00();
    *(v179 + 32) = v180;
    *(v179 + 40) = v182;
    os_log(_:dso:log:_:_:)(v177, &_mh_execute_header, v178, "Message send error: %@", 22, 2, v179);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v183 = v241;
    v184 = v240;
    v185 = v242;
    (*(v241 + 104))(v240, enum case for DispatchQoS.QoSClass.default(_:), v242);
    v186 = static OS_dispatch_queue.global(qos:)();
    (*(v183 + 8))(v184, v185);
    v187 = swift_allocObject();
    v188 = v292;
    v187[2] = sub_10058A0D0;
    v187[3] = v188;
    v187[4] = v176;
    v300 = sub_10058D73C;
    v301 = v187;
    aBlock = _NSConcreteStackBlock;
    v297 = 1107296256;
    v298 = sub_100006684;
    v299 = &unk_101628778;
    v189 = _Block_copy(&aBlock);

    swift_errorRetain();
    v190 = v251;
    static DispatchQoS.unspecified.getter();
    v302 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v191 = v248;
    v192 = v249;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v294, v293);
    _Block_release(v189);

    (*(v255 + 8))(v191, v192);
    (*(v254 + 8))(v190, v252);
  }

  else
  {
    sub_10000B3A8(v256, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v167, type metadata accessor for MessagingOptions);
    v196 = v288;
    v197 = v253;
    v198 = v175;
    v199 = v166;
    v291 = v288 + 32;
    v289(v253, v198, v166);
    sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    swift_allocObject();
    v200 = Future.init()();
    v201 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v202 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v203 = swift_allocObject();
    *(v203 + 16) = v286;
    v204 = UUID.uuidString.getter();
    v206 = v205;
    *(v203 + 56) = &type metadata for String;
    *(v203 + 64) = sub_100008C00();
    *(v203 + 32) = v204;
    *(v203 + 40) = v206;
    os_log(_:dso:log:_:_:)(v201, &_mh_execute_header, v202, "Setting %@ to pending", 21, 2, v203);

    v207 = v258;
    v285 = *(v258 + 168);
    v208 = v250;
    v209 = v199;
    v257(v250, v197, v199);
    v210 = (*(v196 + 80) + 24) & ~*(v196 + 80);
    *&v286 = *(v196 + 80);
    v283 = v210 + v236;
    v211 = v210;
    v290 = v210;
    v212 = (v210 + v236 + 7) & 0xFFFFFFFFFFFFFFF8;
    v213 = swift_allocObject();
    *(v213 + 16) = v207;
    v289((v213 + v211), v208, v199);
    *(v213 + v212) = v200;
    v284 = v200;
    v300 = sub_10058D4DC;
    v301 = v213;
    aBlock = _NSConcreteStackBlock;
    v297 = 1107296256;
    v282 = &v298;
    v298 = sub_100006684;
    v299 = &unk_1016287C8;
    v214 = _Block_copy(&aBlock);

    v215 = v251;
    static DispatchQoS.unspecified.getter();
    v302 = _swiftEmptyArrayStorage;
    v278 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v277 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v276 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v216 = v248;
    v217 = v249;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v214);
    v218 = *(v255 + 8);
    v255 += 8;
    v281 = v218;
    (v218)(v216, v217);
    v219 = *(v254 + 8);
    v254 += 8;
    v280 = v219;
    (v219)(v215, v252);

    v220 = v250;
    v221 = v209;
    v257(v250, v253, v209);
    v222 = swift_allocObject();
    v223 = v258;
    *(v222 + 16) = v258;
    v289((v222 + v290), v220, v221);
    v224 = (v222 + v212);
    v225 = v292;
    *v224 = sub_10058A0D0;
    v224[1] = v225;
    v226 = v223;

    Future.addSuccess(block:)();

    v227 = swift_allocObject();
    *(v227 + 16) = sub_10058A0D0;
    *(v227 + 24) = v225;

    Future.addFailure(block:)();

    v228 = v237;
    static DispatchTime.now()();
    v229 = v238;
    + infix(_:_:)();
    v275 = *(v239 + 8);
    (v275)(v228, v243);
    v230 = v250;
    v231 = v287;
    v257(v250, v253, v287);
    v232 = swift_allocObject();
    *(v232 + 16) = v226;
    v289((v232 + v290), v230, v231);
    v300 = sub_10058D4E0;
    v301 = v232;
    aBlock = _NSConcreteStackBlock;
    v297 = 1107296256;
    v298 = sub_100006684;
    v299 = &unk_101628868;
    v233 = _Block_copy(&aBlock);

    v234 = v251;
    static DispatchQoS.unspecified.getter();
    v302 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    sub_100016590(v294, v293);
    _Block_release(v233);

    (v281)(v216, v217);
    (v280)(v234, v252);
    (v275)(v229, v243);
    (*(v288 + 8))(v253, v287);
  }
}

uint64_t sub_10056AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[0] = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v12);
  v14 = (v32 - v13);
  sub_1000D2A70(a1, v32 - v13, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_100008C00();
    *(v18 + 64) = v19;
    *(v18 + 32) = a4;
    *(v18 + 40) = a5;
    v32[1] = v15;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 72) = v20;
    *(v18 + 80) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Failed to distribute keys: %@, error: %@", 40, 2, v18, v32[0]);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v23 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    type metadata accessor for OwnedBeaconRecord(0);
    v30 = UUID.uuidString.getter();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Successfully distributed keys: %@ for beacon: %@", 48, 2, v25, v32[0]);

    return (*(v9 + 8))(v11, v8);
  }
}

void sub_10056B1CC(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v51 = type metadata accessor for DateInterval();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeBasedKey(0);
  v11 = *(v10 + 20);
  DateInterval.end.getter();
  v12 = DateInterval.contains(_:)();
  (*(v7 + 8))(v9, v6);
  v13 = (a1 + *(v10 + 24));
  v14 = *v13;
  v15 = v13[1];
  v16 = *v13;
  v17 = v15;
  if (v15 >> 60 == 15)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v17 = __DataStorage.init(length:)() | 0x4000000000000000;
    v16 = 0x2000000000;
  }

  v46 = v16;
  v47 = v17;
  if (v12)
  {
    v18 = v13[5];
    v45 = v13[4];
    sub_10002E98C(v45, v18);
  }

  else
  {
    v45 = 0;
    v18 = 0xF000000000000000;
  }

  (*(v4 + 16))(v48, a1 + v11, v51);
  v19 = v13[2];
  v20 = v13[3];
  sub_10002E98C(v14, v15);
  sub_100017D5C(v19, v20);
  v21 = PublicKey.advertisement.getter(v19, v20);
  v23 = v22;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v24 = __DataStorage.init(length:)();
  v49 = 0x2000000000;
  v50 = v24;
  sub_1007765FC(&v49, 0);
  v25 = HIDWORD(v49) - v49;
  if (__OFSUB__(HIDWORD(v49), v49))
  {
    __break(1u);
  }

  else
  {
    v26 = v50;
    if (v25 == 32)
    {
      v27 = v49 | (HIDWORD(v49) << 32);
      v28 = *(v4 + 32);
      v29 = v23;
      v30 = v43;
      v28(v43, v48, v51);
      v31 = type metadata accessor for CryptoKeys(0);
      v32 = (v30 + v31[5]);
      v33 = v46;
      *v32 = v45;
      v32[1] = v18;
      v34 = (v30 + v31[6]);
      *v34 = v19;
      v34[1] = v20;
      v35 = (v30 + v31[7]);
      *v35 = v21;
      v35[1] = v29;
      v36 = (v30 + v31[8]);
      *v36 = v27;
      v36[1] = v26 | 0x4000000000000000;
      v37 = (v30 + v31[9]);
      v38 = v47;
      *v37 = v33;
      v37[1] = v38;
    }

    else
    {
      v39 = v25;
      sub_100018350();
      v40 = swift_allocError();
      *v41 = 32;
      *(v41 + 8) = v39;
      *(v41 + 16) = 0;
      swift_willThrow();

      (*(v4 + 8))(v48, v51);
      sub_100006654(v45, v18);
      sub_100016590(v19, v20);
      sub_100016590(v46, v47);
      sub_100016590(v21, v23);
      *v44 = v40;
    }
  }
}

uint64_t sub_10056B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 168);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_10058A264;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016288B8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_10056B878(uint64_t a1, void (*a2)(void **), uint64_t a3)
{
  v409 = a3;
  v408 = a2;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v393 = &v355 - v6;
  v411 = type metadata accessor for DispatchQoS.QoSClass();
  v405 = *(v411 - 8);
  __chkstk_darwin(v411);
  v410 = &v355 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = type metadata accessor for DispatchTime();
  v472 = *(v391 - 8);
  v8 = __chkstk_darwin(v391);
  v383 = &v355 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v382 = &v355 - v10;
  v417 = type metadata accessor for DispatchWorkItemFlags();
  v407 = *(v417 - 8);
  __chkstk_darwin(v417);
  v416 = &v355 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = type metadata accessor for DispatchQoS();
  v406 = *(v419 - 8);
  __chkstk_darwin(v419);
  v418 = &v355 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = type metadata accessor for SecureLocationsRelayAction(0);
  v403 = *(v404 - 8);
  v13 = __chkstk_darwin(v404);
  v377 = &v355 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v401 = &v355 - v16;
  v402 = v17;
  __chkstk_darwin(v15);
  v397 = &v355 - v18;
  v400 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v19 = __chkstk_darwin(v400);
  v370 = &v355 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v376 = &v355 - v22;
  v23 = __chkstk_darwin(v21);
  v386 = &v355 - v24;
  __chkstk_darwin(v23);
  v396 = &v355 - v25;
  v399 = type metadata accessor for MessagingOptions(0);
  v26 = __chkstk_darwin(v399);
  v380 = &v355 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v415 = &v355 - v28;
  v29 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v30 = __chkstk_darwin(v29 - 8);
  v379 = &v355 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v398 = &v355 - v33;
  __chkstk_darwin(v32);
  v414 = &v355 - v34;
  v458 = type metadata accessor for UUID();
  v394 = *(v458 - 8);
  v35 = __chkstk_darwin(v458);
  v378 = &v355 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v371 = &v355 - v38;
  v39 = __chkstk_darwin(v37);
  v385 = &v355 - v40;
  v41 = __chkstk_darwin(v39);
  v390 = &v355 - v42;
  v43 = __chkstk_darwin(v41);
  v413 = &v355 - v44;
  v381 = v45;
  __chkstk_darwin(v43);
  v392 = &v355 - v46;
  v432 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v432);
  v431 = (&v355 - v47);
  v445 = type metadata accessor for SystemInfo.DeviceLockState();
  v48 = *(v445 - 8);
  v49 = __chkstk_darwin(v445);
  v444 = &v355 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v443 = &v355 - v51;
  v52 = type metadata accessor for SharingRampState(0);
  __chkstk_darwin(v52 - 8);
  v439 = &v355 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for KeyRequestEnvelope(0);
  v54 = __chkstk_darwin(v441);
  v440 = &v355 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v462 = &v355 - v56;
  v466 = type metadata accessor for Date();
  v57 = *(v466 - 8);
  __chkstk_darwin(v466);
  v465 = &v355 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for SharedBeaconRecord(0);
  v59 = *(v467 - 1);
  v60 = *(v59 + 64);
  v61 = __chkstk_darwin(v467);
  v395 = &v355 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v61);
  v384 = &v355 - v63;
  v64 = __chkstk_darwin(v62);
  v461 = &v355 - v65;
  v66 = __chkstk_darwin(v64);
  v438 = &v355 - v67;
  __chkstk_darwin(v66);
  v468 = &v355 - v68;
  v69 = type metadata accessor for DispatchPredicate();
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = (&v355 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v464 = v3;
  v73 = *(v3 + 168);
  *v72 = v73;
  (*(v70 + 104))(v72, enum case for DispatchPredicate.onQueue(_:), v69);
  v389 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v75 = *(v70 + 8);
  v74 = (v70 + 8);
  v75(v72, v69);
  if ((v73 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v76 = [objc_allocWithZone(ACAccountStore) init];
  v77 = [v76 aa_primaryAppleAccount];

  if (!v77)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v474 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v325 = aBlock;
    v408(aBlock);

    return;
  }

  v388 = v77;
  v78 = [v77 username];
  if (!v78)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  v79 = v78;
  [v78 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v81 = v474;
  v80 = v475;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v81, v80);
  v437 = v82;
  v436 = v83;
  v84 = v464;
  v85 = v468;
  v442 = v86;
  if (!v86)
  {
    v336 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v60 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v337 = swift_allocObject();
    *(v337 + 16) = xmmword_101385D80;
    v338 = v388;
    v339 = [v388 username];
    if (v339)
    {
      v340 = v339;

      v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v343 = v342;

      *(v337 + 56) = &type metadata for String;
      *(v337 + 64) = sub_100008C00();
      *(v337 + 32) = v341;
      *(v337 + 40) = v343;
      os_log(_:dso:log:_:_:)(v336, &_mh_execute_header, v60, "Could not create MessagingDestination from: %@", 46, 2, v337);

      type metadata accessor for SPOwnerSessionError(0);
      v474 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v74 = aBlock;
      swift_willThrow();

      goto LABEL_52;
    }

    goto LABEL_59;
  }

  v87 = *(a1 + 16);
  if (!v87)
  {
LABEL_46:

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v326 = v405;
    v327 = v410;
    v328 = v411;
    (*(v405 + 104))(v410, enum case for DispatchQoS.QoSClass.default(_:), v411);
    v329 = static OS_dispatch_queue.global(qos:)();
    (*(v326 + 8))(v327, v328);
    v330 = swift_allocObject();
    v331 = v409;
    *(v330 + 16) = v408;
    *(v330 + 24) = v331;
    v481 = sub_10041ABC0;
    v482 = v330;
    aBlock = _NSConcreteStackBlock;
    v478 = 1107296256;
    v479 = sub_100006684;
    v480 = &unk_101628958;
    v332 = _Block_copy(&aBlock);

    v333 = v418;
    static DispatchQoS.unspecified.getter();
    v476 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v334 = v416;
    v335 = v417;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v332);

    goto LABEL_54;
  }

  v473 = 0;
  v88 = *(v59 + 80);
  v89 = a1 + ((v88 + 32) & ~v88);
  v463 = (v57 + 8);
  v449 = (v394 + 16);
  v430 = v88;
  v429 = (v88 + 16) & ~v88;
  v428 = (v60 + v429 + 7) & 0xFFFFFFFFFFFFFFF8;
  v424 = (v428 + 31) & 0xFFFFFFFFFFFFFFF8;
  v427 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v426 = (v48 + 104);
  v425 = (v48 + 8);
  v369 = (v394 + 56);
  v375 = (v394 + 8);
  v366 = enum case for DispatchQoS.QoSClass.default(_:);
  v365 = (v405 + 104);
  v364 = (v405 + 8);
  v374 = &v479;
  v373 = (v407 + 8);
  v372 = (v406 + 8);
  v363 = v394 + 32;
  v362 = v472 + 1;
  v455 = *(v59 + 72);
  v457 = xmmword_10138BBE0;
  v412 = xmmword_101385D80;
  v368 = xmmword_1013B0D90;
  v367 = xmmword_10138BBF0;
  while (1)
  {
    v469 = v89;
    sub_10058B200(v89, v85, type metadata accessor for SharedBeaconRecord);
    v91 = (v85 + v467[7]);
    v92 = *v91;
    v93 = *(v91 + 2);
    v472 = *(v91 + 1);
    v94 = *(v84 + 320);
    v95 = v85 + v467[5];
    v96 = __chkstk_darwin(v93);
    *(&v355 - 4) = v94;
    *(&v355 - 24) = 6;
    *(&v355 - 2) = v95;
    v471 = v96;

    v97 = v465;
    v98 = v466;
    v99 = v473;
    OS_dispatch_queue.sync<A>(execute:)();
    v473 = v99;
    v470 = v94;
    v100 = sub_1010B2678(v97, 6u);
    v101 = *v463;
    (*v463)(v97, v98);
    v102 = static os_log_type_t.default.getter();
    if ((v100 & 1) == 0)
    {
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v138 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v139 = swift_allocObject();
      *(v139 + 16) = v457;
      v140 = UUID.uuidString.getter();
      v142 = v141;
      *(v139 + 56) = &type metadata for String;
      v143 = sub_100008C00();
      *(v139 + 32) = v140;
      *(v139 + 40) = v142;
      *(v139 + 96) = &type metadata for String;
      *(v139 + 104) = v143;
      v144 = v471;
      v145 = v472;
      *(v139 + 64) = v143;
      *(v139 + 72) = v145;
      *(v139 + 80) = v144;
      os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v138, "Skipping requestKeys (too early to retry) for beacon: %@ to destination: %@", 75, 2, v139);

      v85 = v468;
      goto LABEL_8;
    }

    v456 = v95;
    LODWORD(v460) = v92;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v103 = qword_10177C378;
    v447 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v104 = swift_allocObject();
    *(v104 + 16) = v457;
    v105 = v456;
    v106 = UUID.uuidString.getter();
    v108 = v107;
    *(v104 + 56) = &type metadata for String;
    v109 = sub_100008C00();
    *(v104 + 32) = v106;
    *(v104 + 40) = v108;
    v60 = v103;
    *(v104 + 96) = &type metadata for String;
    *(v104 + 104) = v109;
    v448 = v109;
    v110 = v471;
    v111 = v472;
    *(v104 + 64) = v109;
    *(v104 + 72) = v111;
    *(v104 + 80) = v110;

    os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v60, "Sending requestKeys for beacon: %@ to destination: %@", 53, 2, v104);

    v112 = *v449;
    v113 = v462;
    (*v449)(v462, v105, v458);
    v114 = v113 + *(v441 + 20);
    *v114 = v437;
    v115 = v442;
    *(v114 + 8) = v436;
    *(v114 + 16) = v115;
    v116 = v113;
    v117 = v440;
    sub_10058B200(v116, v440, type metadata accessor for KeyRequestEnvelope);

    v118 = v473;
    sub_10053CC44(6, 2, v117, &aBlock);
    v473 = v118;
    if (v118)
    {
      sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);

      sub_10058B268(v468, type metadata accessor for SharedBeaconRecord);
      v74 = v473;
      goto LABEL_52;
    }

    v446 = v112;
    v453 = v60;
    v452 = v87;
    LODWORD(v435) = aBlock;
    v434 = v478;
    v459 = v479;
    v454 = v480;
    v119 = v465;
    static Date.trustedNow.getter(v465);
    sub_1010B1D04(v105, v119, 6);
    v101(v119, v466);
    v120 = v439;
    sub_10052FFA4(v439);
    v121 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    v122 = (*(*(v121 - 8) + 48))(v120, 2, v121);
    sub_10058B268(v120, type metadata accessor for SharingRampState);
    v123 = &_swiftEmptySetSingleton;
    if (v122 == 2)
    {
      v123 = sub_100B0F690(&off_101609620);
    }

    v451 = v123;
    v433 = *(v470 + 16);
    v450 = sub_100B0F690(&off_101609648);
    v124 = v438;
    sub_10058B200(v468, v438, type metadata accessor for SharedBeaconRecord);
    sub_10058B200(v124, v461, type metadata accessor for SharedBeaconRecord);
    v125 = v424;
    v126 = swift_allocObject();
    sub_100589B28(v124, v126 + v429, type metadata accessor for SharedBeaconRecord);
    v127 = v126 + v428;
    v128 = v460;
    *v127 = v460;
    *(v127 + 8) = v111;
    *(v127 + 16) = v110;
    *(v126 + v125) = v464;

    sub_100908F24(_swiftEmptyArrayStorage);

    v129 = v443;
    static SystemInfo.lockState.getter();
    v130 = v444;
    v131 = v445;
    v423 = *v426;
    (v423)(v444, v427, v445);
    v421 = sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v125) = dispatch thunk of static Equatable.== infix(_:_:)();
    v132 = *v425;
    (*v425)(v130, v131);
    v422 = v132;
    v132(v129, v131);
    if ((v125 & 1) == 0)
    {
      v146 = v450;
      v420 = v126;
      v147 = v464;
      v148 = v111;
      if ((sub_100540CB8(v128, v111, v110) & 1) == 0)
      {

        v169 = static os_log_type_t.error.getter();
        v170 = swift_allocObject();
        *(v170 + 16) = v412;
        v171 = v448;
        *(v170 + 56) = &type metadata for String;
        *(v170 + 64) = v171;
        *(v170 + 32) = v111;
        *(v170 + 40) = v110;

        os_log(_:dso:log:_:_:)(v169, &_mh_execute_header, v453, "Not sending since %@ has no IDS registered devices", 50, 2, v170);

        type metadata accessor for SPOwnerSessionError(0);
        v476 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v172 = v431;
        *v431 = aBlock;
        swift_storeEnumTagMultiPayload();
        v135 = v461;
        sub_10056FF14(v172, v461, v128, v111, v110, v147);

        sub_10000B3A8(v172, &qword_10169F358, &qword_1013A0810);
        v137 = v454;
        v84 = v147;
        goto LABEL_29;
      }

      v387 = *(v147 + 24);
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v149 = swift_allocObject();
      *(v149 + 16) = v412;
      *(v149 + 32) = v128;
      *(v149 + 40) = v148;
      *(v149 + 48) = v110;
      v150 = *v369;
      v151 = v414;
      v152 = v458;
      (*v369)(v414, 1, 1, v458);

      v153 = v413;
      UUID.init()();
      v154 = v415;
      v446(v415, v153, v152);
      v155 = v398;
      sub_1000D2A70(v151, v398, &qword_1016980D0, &unk_10138F3B0);
      v156 = v399;
      v157 = *(v399 + 28);
      v150(v154 + v157, 1, 1, v152);
      *(v154 + v156[5]) = v149;
      *(v154 + v156[6]) = 1;
      sub_10002311C(v155, v154 + v157, &qword_1016980D0, &unk_10138F3B0);
      v158 = v154 + v156[8];
      *v158 = v433;
      *(v158 + 8) = 0;
      *(v154 + v156[9]) = 0;
      *(v154 + v156[10]) = v146;
      *(v154 + v156[11]) = v451;
      v159 = (v154 + v156[12]);
      *v159 = 0;
      v159[1] = 0;
      *(v154 + v156[13]) = v368;
      v160 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
      v161 = v397;
      sub_10058B200(v154, &v397[*(v160 + 24)], type metadata accessor for MessagingOptions);
      *v161 = v435;
      v162 = v459;
      *(v161 + 8) = v434;
      *(v161 + 16) = v162;
      v137 = v454;
      *(v161 + 24) = v454;
      *(v161 + 32) = v367;
      swift_storeEnumTagMultiPayload();
      v163 = v401;
      sub_10058B200(v161, v401, type metadata accessor for SecureLocationsRelayAction);
      v164 = (*(v403 + 80) + 24) & ~*(v403 + 80);
      v165 = swift_allocObject();
      *(v165 + 16) = v387;
      sub_100589B28(v163, v165 + v164, type metadata accessor for SecureLocationsRelayAction);
      sub_100017D5C(v162, v137);

      v166 = v396;
      v167 = v473;
      unsafeFromAsyncTask<A>(_:)();
      if (v167)
      {

        sub_10058B268(v161, type metadata accessor for SecureLocationsRelayAction);
        v168 = v167;
      }

      else
      {
        sub_10058B268(v161, type metadata accessor for SecureLocationsRelayAction);

        v173 = v386;
        sub_10058B200(v166, v386, type metadata accessor for SecureLocationsRelayAction.Response);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v473 = 0;
          sub_10058B268(v166, type metadata accessor for SecureLocationsRelayAction.Response);
          v174 = v394;
          v435 = *(v394 + 8);
          v175 = v458;
          v435(v413, v458);
          sub_10000B3A8(v414, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v415, type metadata accessor for MessagingOptions);
          v176 = *(v174 + 32);
          v177 = v392;
          v176(v392, v173, v175);
          v178 = v176;
          sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          swift_allocObject();
          v179 = Future.init()();
          v180 = static os_log_type_t.default.getter();
          v181 = swift_allocObject();
          *(v181 + 16) = v412;
          v182 = UUID.uuidString.getter();
          v183 = v448;
          *(v181 + 56) = &type metadata for String;
          *(v181 + 64) = v183;
          *(v181 + 32) = v182;
          *(v181 + 40) = v184;
          os_log(_:dso:log:_:_:)(v180, &_mh_execute_header, v453, "Setting %@ to pending", 21, 2, v181);

          v185 = v390;
          v446(v390, v177, v175);
          v450 = *(v174 + 80);
          v434 = ((v450 + 24) & ~v450) + v381;
          v186 = (v450 + 24) & ~v450;
          v451 = v186;
          v187 = (v434 + 7) & 0xFFFFFFFFFFFFFFF8;
          v188 = swift_allocObject();
          *(v188 + 16) = v464;
          v178(v188 + v186, v185, v175);
          v357 = v178;
          *(v188 + v187) = v179;
          v481 = sub_10058D4DC;
          v482 = v188;
          aBlock = _NSConcreteStackBlock;
          v478 = 1107296256;
          v479 = sub_100006684;
          v480 = &unk_101628C28;
          v189 = _Block_copy(&aBlock);

          v190 = v418;
          static DispatchQoS.unspecified.getter();
          v476 = _swiftEmptyArrayStorage;
          v360 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v359 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          v361 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v191 = v416;
          v192 = v417;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v189);
          v433 = *v373;
          v433(v191, v192);
          v387 = *v372;
          v387(v190, v419);

          v193 = v390;
          v194 = v458;
          v446(v390, v392, v458);
          v195 = swift_allocObject();
          *(v195 + 16) = v464;
          v178(&v451[v195], v193, v194);
          v196 = (v195 + v187);
          v197 = v420;
          *v196 = sub_10058A290;
          v196[1] = v197;

          v358 = v179;
          Future.addSuccess(block:)();

          v198 = swift_allocObject();
          *(v198 + 16) = sub_10058A290;
          *(v198 + 24) = v197;

          Future.addFailure(block:)();

          v199 = v383;
          static DispatchTime.now()();
          v200 = v382;
          + infix(_:_:)();
          v356 = *v362;
          v356(v199, v391);
          v201 = v193;
          v202 = v392;
          v203 = v458;
          v446(v193, v392, v458);
          v204 = swift_allocObject();
          v205 = v464;
          *(v204 + 16) = v464;
          v357(&v451[v204], v201, v203);
          v481 = sub_10058D4E0;
          v482 = v204;
          aBlock = _NSConcreteStackBlock;
          v478 = 1107296256;
          v479 = sub_100006684;
          v480 = &unk_101628CC8;
          v206 = _Block_copy(&aBlock);
          v84 = v205;

          v207 = v418;
          static DispatchQoS.unspecified.getter();
          v476 = _swiftEmptyArrayStorage;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v206);

          v433(v191, v192);
          v387(v207, v419);
          v356(v200, v391);
          v137 = v454;
          v435(v202, v458);

LABEL_28:
          v135 = v461;
          v110 = v471;
          goto LABEL_29;
        }

        sub_10058B268(v173, type metadata accessor for SecureLocationsRelayAction.Response);
        sub_10057C844();
        v168 = swift_allocError();
        swift_willThrow();
        sub_10058B268(v166, type metadata accessor for SecureLocationsRelayAction.Response);
      }

      v473 = 0;
      v208 = v420;
      (*v375)(v413, v458);
      sub_10000B3A8(v414, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v415, type metadata accessor for MessagingOptions);
      v209 = static os_log_type_t.error.getter();
      v210 = swift_allocObject();
      *(v210 + 16) = v412;
      aBlock = v168;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v211 = String.init<A>(describing:)();
      v212 = v448;
      *(v210 + 56) = &type metadata for String;
      *(v210 + 64) = v212;
      *(v210 + 32) = v211;
      *(v210 + 40) = v213;
      os_log(_:dso:log:_:_:)(v209, &_mh_execute_header, v453, "Message send error: %@", 22, 2, v210);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v214 = v410;
      v215 = v411;
      (*v365)(v410, v366, v411);
      v216 = static OS_dispatch_queue.global(qos:)();
      (*v364)(v214, v215);
      v217 = swift_allocObject();
      v217[2] = sub_10058A290;
      v217[3] = v208;
      v217[4] = v168;
      v481 = sub_10058D73C;
      v482 = v217;
      aBlock = _NSConcreteStackBlock;
      v478 = 1107296256;
      v479 = sub_100006684;
      v480 = &unk_101628BD8;
      v218 = _Block_copy(&aBlock);

      swift_errorRetain();
      v219 = v418;
      static DispatchQoS.unspecified.getter();
      v476 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v220 = v416;
      v221 = v417;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v218);

      (*v373)(v220, v221);
      (*v372)(v219, v419);

      v84 = v464;
      goto LABEL_28;
    }

    v133 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v133, &_mh_execute_header, v453, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v476 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v134 = v431;
    *v431 = aBlock;
    swift_storeEnumTagMultiPayload();
    v135 = v461;
    v136 = v111;
    v84 = v464;
    sub_10056FF14(v134, v461, v128, v136, v110, v464);

    sub_10000B3A8(v134, &qword_10169F358, &qword_1013A0810);
    v137 = v454;
LABEL_29:
    sub_10058B268(v135, type metadata accessor for SharedBeaconRecord);
    v85 = v468;
    if (*(v468 + v467[11]) == -1 && *(v468 + v467[12]) == -1)
    {
      v222 = dispatch_group_create();
      v223 = sub_101129A8C(&off_101609298);
      v224 = swift_allocObject();
      *(v224 + 16) = 0;
      dispatch_group_enter(v222);
      v225 = *(v84 + 24);
      v226 = swift_allocObject();
      v226[2] = v224;
      v226[3] = v223;
      v226[4] = v222;
      v227 = type metadata accessor for TaskPriority();
      v228 = v393;
      (*(*(v227 - 8) + 56))(v393, 1, 1, v227);
      v229 = swift_allocObject();
      *(v229 + 16) = 0;
      *(v229 + 24) = 0;
      *(v229 + 32) = v225;
      *(v229 + 40) = v460;
      *(v229 + 48) = v472;
      *(v229 + 56) = v110;
      *(v229 + 64) = sub_10058D544;
      *(v229 + 72) = v226;
      v84 = v464;

      v230 = v222;

      sub_10025EDD4(0, 0, v228, &unk_1013B1210, v229);

      OS_dispatch_group.wait()();

      v85 = v468;
      swift_beginAccess();
      LODWORD(v228) = *(v224 + 16);

      if (v228 == 1)
      {
        break;
      }
    }

    sub_100016590(v459, v137);

    sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);
    v87 = v452;
LABEL_8:
    v90 = v469;
    sub_10058B268(v85, type metadata accessor for SharedBeaconRecord);
    v89 = v90 + v455;
    if (!--v87)
    {
      goto LABEL_46;
    }
  }

  v231 = v385;
  v446(v385, v456, v458);
  v232 = v473;
  sub_10053A3CC(6, 1, v231, &aBlock);
  v74 = v232;
  v87 = v452;
  if (!v232)
  {
    v450 = v225;
    LODWORD(v435) = aBlock;
    v434 = v478;
    v451 = v479;
    v456 = v480;
    v433 = *(v470 + 16);
    v470 = sub_100B0F690(&off_101609670);
    v233 = v384;
    sub_10058B200(v85, v384, type metadata accessor for SharedBeaconRecord);
    sub_10058B200(v233, v395, type metadata accessor for SharedBeaconRecord);
    v234 = v428;
    v235 = swift_allocObject();
    sub_100589B28(v233, v235 + v429, type metadata accessor for SharedBeaconRecord);
    v236 = v235 + v234;
    *v236 = v460;
    *(v236 + 8) = v472;
    *(v236 + 16) = v110;

    sub_100908F24(_swiftEmptyArrayStorage);

    v237 = sub_101129A8C(&off_101609698);
    v238 = v443;
    static SystemInfo.lockState.getter();
    v239 = v444;
    v240 = v445;
    (v423)(v444, v427, v445);
    LOBYTE(v234) = dispatch thunk of static Equatable.== infix(_:_:)();
    v241 = v422;
    v422(v239, v240);
    v241(v238, v240);
    v473 = 0;
    if (v234)
    {

      v242 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v242, &_mh_execute_header, v453, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPOwnerSessionError(0);
      v476 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v243 = v431;
      *v431 = aBlock;
      swift_storeEnumTagMultiPayload();
      v244 = v395;
      sub_1005702A4(v243, v395, v460, v472, v110);

      sub_100016590(v459, v454);
      sub_100016590(v451, v456);
      sub_10000B3A8(v243, &qword_10169F358, &qword_1013A0810);
      sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);
      v84 = v464;
      v245 = v244;
LABEL_44:
      sub_10058B268(v245, type metadata accessor for SharedBeaconRecord);
      v85 = v468;
      goto LABEL_8;
    }

    v246 = v395;
    v423 = v235;
    v247 = v460;
    v248 = v472;
    if ((sub_100540CB8(v460, v472, v110) & 1) == 0)
    {

      v273 = static os_log_type_t.error.getter();
      v274 = swift_allocObject();
      *(v274 + 16) = v412;
      v275 = v448;
      *(v274 + 56) = &type metadata for String;
      *(v274 + 64) = v275;
      *(v274 + 32) = v248;
      *(v274 + 40) = v110;

      os_log(_:dso:log:_:_:)(v273, &_mh_execute_header, v453, "Not sending since %@ has no IDS registered devices", 50, 2, v274);

      type metadata accessor for SPOwnerSessionError(0);
      v476 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v276 = v431;
      *v431 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005702A4(v276, v246, v247, v248, v110);

      sub_100016590(v459, v454);
      sub_100016590(v451, v456);
      sub_10000B3A8(v276, &qword_10169F358, &qword_1013A0810);
      sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);
      v245 = v246;
      v84 = v464;
      goto LABEL_44;
    }

    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v249 = swift_allocObject();
    *(v249 + 16) = v412;
    *(v249 + 32) = v247;
    *(v249 + 40) = v248;
    *(v249 + 48) = v110;
    v250 = *v369;
    v251 = v379;
    v252 = v458;
    (*v369)(v379, 1, 1, v458);

    v253 = v378;
    UUID.init()();
    v254 = v380;
    v446(v380, v253, v252);
    v255 = v252;
    v256 = v398;
    sub_1000D2A70(v251, v398, &qword_1016980D0, &unk_10138F3B0);
    v257 = v399;
    v258 = *(v399 + 28);
    v250(v254 + v258, 1, 1, v255);
    *(v254 + v257[5]) = v249;
    *(v254 + v257[6]) = 1;
    sub_10002311C(v256, v254 + v258, &qword_1016980D0, &unk_10138F3B0);
    v259 = v254 + v257[8];
    *v259 = v433;
    *(v259 + 8) = 0;
    *(v254 + v257[9]) = 0;
    *(v254 + v257[10]) = v237;
    *(v254 + v257[11]) = v470;
    v260 = (v254 + v257[12]);
    *v260 = 0;
    v260[1] = 0;
    *(v254 + v257[13]) = v368;
    v261 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v262 = v377;
    sub_10058B200(v254, &v377[*(v261 + 24)], type metadata accessor for MessagingOptions);
    *v262 = v435;
    v263 = v451;
    *(v262 + 8) = v434;
    *(v262 + 16) = v263;
    v264 = v456;
    *(v262 + 24) = v456;
    *(v262 + 32) = v367;
    swift_storeEnumTagMultiPayload();
    v265 = v401;
    sub_10058B200(v262, v401, type metadata accessor for SecureLocationsRelayAction);
    v266 = (*(v403 + 80) + 24) & ~*(v403 + 80);
    v267 = swift_allocObject();
    *(v267 + 16) = v450;
    sub_100589B28(v265, v267 + v266, type metadata accessor for SecureLocationsRelayAction);

    sub_100017D5C(v263, v264);
    v268 = v376;
    v269 = v473;
    unsafeFromAsyncTask<A>(_:)();
    if (v269)
    {

      sub_10058B268(v262, type metadata accessor for SecureLocationsRelayAction);
      v270 = v269;
      v473 = 0;
      v84 = v464;
      v271 = v458;
      v272 = v453;
      goto LABEL_42;
    }

    v473 = 0;
    sub_10058B268(v262, type metadata accessor for SecureLocationsRelayAction);

    v277 = v370;
    sub_10058B200(v268, v370, type metadata accessor for SecureLocationsRelayAction.Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = v464;
    v272 = v453;
    if (EnumCaseMultiPayload == 4)
    {
      sub_10058B268(v268, type metadata accessor for SecureLocationsRelayAction.Response);
      v279 = v394;
      v435 = *(v394 + 8);
      v280 = v458;
      v435(v378, v458);
      sub_10000B3A8(v379, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v380, type metadata accessor for MessagingOptions);
      v450 = *(v279 + 32);
      v281 = v371;
      (v450)();
      sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
      swift_allocObject();
      v282 = Future.init()();
      v283 = static os_log_type_t.default.getter();
      v284 = swift_allocObject();
      *(v284 + 16) = v412;
      v285 = UUID.uuidString.getter();
      v286 = v448;
      *(v284 + 56) = &type metadata for String;
      *(v284 + 64) = v286;
      *(v284 + 32) = v285;
      *(v284 + 40) = v287;
      os_log(_:dso:log:_:_:)(v283, &_mh_execute_header, v272, "Setting %@ to pending", 21, 2, v284);

      v288 = v390;
      v289 = v280;
      v446(v390, v281, v280);
      v470 = *(v279 + 80);
      v453 = ((v470 + 24) & ~v470) + v381;
      v290 = (v470 + 24) & ~v470;
      v472 = v290;
      v291 = (v453 + 7) & 0xFFFFFFFFFFFFFFF8;
      v292 = swift_allocObject();
      *(v292 + 16) = v84;
      v293 = v450;
      (v450)(v292 + v290, v288, v289);
      v460 = v282;
      *(v292 + v291) = v282;
      v481 = sub_10058D4DC;
      v482 = v292;
      aBlock = _NSConcreteStackBlock;
      v478 = 1107296256;
      v479 = sub_100006684;
      v480 = &unk_101628AC0;
      v294 = _Block_copy(&aBlock);

      v295 = v418;
      static DispatchQoS.unspecified.getter();
      v476 = _swiftEmptyArrayStorage;
      v433 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v422 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v434 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v296 = v416;
      v297 = v417;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v294);
      v448 = *v373;
      v448(v296, v297);
      v447 = *v372;
      v447(v295, v419);

      v298 = v390;
      v299 = v458;
      v446(v390, v371, v458);
      v300 = swift_allocObject();
      *(v300 + 16) = v84;
      v293(v472 + v300, v298, v299);
      v301 = (v300 + v291);
      v302 = v423;
      *v301 = sub_10058A390;
      v301[1] = v302;

      Future.addSuccess(block:)();

      v303 = swift_allocObject();
      *(v303 + 16) = sub_10058A390;
      *(v303 + 24) = v302;
      v84 = v464;

      Future.addFailure(block:)();

      v304 = v383;
      static DispatchTime.now()();
      v305 = v382;
      + infix(_:_:)();
      v421 = *v362;
      v421(v304, v391);
      v446(v298, v371, v299);
      v306 = swift_allocObject();
      *(v306 + 16) = v84;
      v307 = v298;
      v308 = v299;
      (v450)(v472 + v306, v307, v299);
      v481 = sub_10058D4E0;
      v482 = v306;
      aBlock = _NSConcreteStackBlock;
      v478 = 1107296256;
      v479 = sub_100006684;
      v480 = &unk_101628B60;
      v309 = _Block_copy(&aBlock);

      v310 = v418;
      static DispatchQoS.unspecified.getter();
      v476 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v309);

      sub_100016590(v459, v454);

      sub_100016590(v451, v456);
      v448(v296, v297);
      v447(v310, v419);
      v421(v305, v391);
      v435(v371, v308);
    }

    else
    {
      sub_10058B268(v277, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v270 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v268, type metadata accessor for SecureLocationsRelayAction.Response);
      v473 = 0;
      v271 = v458;
LABEL_42:
      v311 = v423;
      (*v375)(v378, v271);
      sub_10000B3A8(v379, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v380, type metadata accessor for MessagingOptions);
      v312 = static os_log_type_t.error.getter();
      v313 = swift_allocObject();
      *(v313 + 16) = v412;
      aBlock = v270;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v314 = String.init<A>(describing:)();
      v315 = v448;
      *(v313 + 56) = &type metadata for String;
      *(v313 + 64) = v315;
      *(v313 + 32) = v314;
      *(v313 + 40) = v316;
      os_log(_:dso:log:_:_:)(v312, &_mh_execute_header, v272, "Message send error: %@", 22, 2, v313);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v317 = v410;
      v318 = v411;
      (*v365)(v410, v366, v411);
      v472 = static OS_dispatch_queue.global(qos:)();
      (*v364)(v317, v318);
      v319 = swift_allocObject();
      v319[2] = sub_10058A390;
      v319[3] = v311;
      v319[4] = v270;
      v481 = sub_10058D73C;
      v482 = v319;
      aBlock = _NSConcreteStackBlock;
      v478 = 1107296256;
      v479 = sub_100006684;
      v480 = &unk_101628A70;
      v320 = _Block_copy(&aBlock);

      swift_errorRetain();
      v321 = v418;
      static DispatchQoS.unspecified.getter();
      v476 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v322 = v416;
      v323 = v417;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v324 = v472;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v320);

      sub_100016590(v459, v454);

      sub_100016590(v451, v456);
      (*v373)(v322, v323);
      (*v372)(v321, v419);
    }

    sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);

    v245 = v395;
    v87 = v452;
    goto LABEL_44;
  }

  sub_10058B268(v462, type metadata accessor for KeyRequestEnvelope);
  sub_100016590(v459, v137);

  sub_10058B268(v85, type metadata accessor for SharedBeaconRecord);
  v60 = v453;
LABEL_52:
  a1 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
LABEL_57:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_101385D80;
  aBlock = v74;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v345 = String.init<A>(describing:)();
  v347 = v346;
  *(v344 + 56) = &type metadata for String;
  *(v344 + 64) = sub_100008C00();
  *(v344 + 32) = v345;
  *(v344 + 40) = v347;
  os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v60, "Failed in requestKeys: %@", 25, 2, v344);

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v348 = v405;
  v349 = v410;
  v350 = v411;
  (*(v405 + 104))(v410, enum case for DispatchQoS.QoSClass.default(_:), v411);
  v351 = static OS_dispatch_queue.global(qos:)();
  (*(v348 + 8))(v349, v350);
  v352 = swift_allocObject();
  v353 = v409;
  v352[2] = v408;
  v352[3] = v353;
  v352[4] = v74;
  v481 = sub_1002EF79C;
  v482 = v352;
  aBlock = _NSConcreteStackBlock;
  v478 = 1107296256;
  v479 = sub_100006684;
  v480 = &unk_101628908;
  v354 = _Block_copy(&aBlock);

  swift_errorRetain();
  v333 = v418;
  static DispatchQoS.unspecified.getter();
  v476 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v334 = v416;
  v335 = v417;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v354);

LABEL_54:
  (*(v407 + 8))(v334, v335);
  (*(v406 + 8))(v333, v419);
}

uint64_t sub_10056FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a6;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v13);
  v15 = &v34[-v14];
  sub_1000D2A70(a1, &v34[-v14], &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v35 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138B360;
    v19 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
    v20 = UUID.uuidString.getter();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    v24 = v36;
    *(v18 + 64) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = a5;
    v38 = v16;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v25 = String.init<A>(describing:)();
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v23;
    *(v18 + 112) = v25;
    *(v18 + 120) = v26;
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v17, "Failed to send requestKeys for beacon: %@ to destination: %@ - %@", 65, 2, v18);

    sub_1010B22E4(a2 + v19, 6);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v28 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Successfully sent requestKeys: %@", 33, 2, v30);

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1005702A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[0] = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v11);
  v13 = (v32 - v12);
  sub_1000D2A70(a1, v32 - v12, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10138B360;
    type metadata accessor for SharedBeaconRecord(0);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    v22 = v32[0];
    *(v17 + 64) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = a5;
    v32[1] = v14;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v23 = String.init<A>(describing:)();
    *(v17 + 136) = &type metadata for String;
    *(v17 + 144) = v21;
    *(v17 + 112) = v23;
    *(v17 + 120) = v24;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Failed to send legacy requestKeys for beacon: %@ to destination: %@ - %@", 72, 2, v17);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v26 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Successfully sent requestKeys: %@", 33, 2, v28);

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100570620(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3[35] = v4;
  v3[36] = *(v4 + 64);
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1005706E8, 0, 0);
}

uint64_t sub_1005706E8()
{
  v1 = [objc_opt_self() defaultStore];
  v0[38] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_10057082C;
    v3 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100C70FE4;
    v0[13] = &unk_101628ED0;
    v0[14] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10057082C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1005710B8;
  }

  else
  {
    v2 = sub_10057093C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10057093C()
{
  v1 = v0[26];
  v2 = v0[38];
  v0[40] = v1;

  if (v1)
  {
    v3 = [v1 username];
    if (v3)
    {
      v9 = v3;
      [v3 copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v0[22];
      v10 = v0[23];

      _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v11, v10);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v18 = v0[36];
        v17 = v0[37];
        v20 = v0[34];
        v19 = v0[35];
        v22 = v0[32];
        v21 = v0[33];
        v35 = v12;

        sub_10058B200(v21, v17, type metadata accessor for OwnedBeaconRecord);
        v23 = (*(v19 + 80) + 48) & ~*(v19 + 80);
        v24 = swift_allocObject();
        v0[41] = v24;
        *(v24 + 16) = v22;
        *(v24 + 24) = v35;
        *(v24 + 32) = v15;
        *(v24 + 40) = v16;
        sub_100589B28(v17, v24 + v23, type metadata accessor for OwnedBeaconRecord);
        *(v24 + ((v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

        v25 = swift_task_alloc();
        v0[42] = v25;
        v8 = sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
        *v25 = v0;
        v25[1] = sub_100570DDC;
        v6 = &unk_1013B1298;
        v4 = 0x8155A43676E00000;
        v3 = v0 + 24;
        v5 = 6;
        v7 = v24;

        return withTimeout<A>(_:block:)(v3, v4, v5, v6, v7, v8);
      }

      v26 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v27 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_101385D80;
      v3 = [v1 username];
      if (v3)
      {
        v29 = v3;

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_100008C00();
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Could not create MessagingDestination from: %@", 46, 2, v28);

        type metadata accessor for SPOwnerSessionError(0);
        v0[30] = 7;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return withTimeout<A>(_:block:)(v3, v4, v5, v6, v7, v8);
  }

  type metadata accessor for SPOwnerSessionError(0);
  v0[28] = 7;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
LABEL_12:

  v33 = v0[1];

  return v33();
}

uint64_t sub_100570DDC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_100571130;
  }

  else
  {

    v2 = sub_100570EF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100570EF8()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 192);
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 320);
    v4 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v0 + 248) = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v4, "Failed in updateSharedBeacon: %@", 32, 2, v5);

    swift_willThrow();
    sub_1000BB584(v1, 1);

    v9 = *(v0 + 8);
  }

  else
  {

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1005710B8(uint64_t a1)
{
  v2 = *(v1 + 304);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100571130()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005711A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_1005711CC, 0, 0);
}

uint64_t sub_1005711CC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 40);
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v1;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1005712F4;
  v9 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, v5, v5, 0, 0, &unk_1013B12B0, v6, v5);
}

uint64_t sub_1005712F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100571408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 81) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 + 64);
  *(v8 + 160) = swift_task_alloc();
  v10 = *(type metadata accessor for ShareRecord(0) - 8);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 + 64);
  *(v8 + 184) = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016A4908, &qword_1013B12B8);
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005715E8, 0, 0);
}

uint64_t sub_1005715E8()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v33 = **(v0 + 96);
    v34 = *(v0 + 144);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v31 = *(v3 + 72);
    v32 = v4;
    v30 = (*(v0 + 176) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v0 + 152) + 7;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v28 = *(v7 + 56);
    v27 = (v7 + 48);
    v26 = (v7 + 8);
    v41 = v6;
    do
    {
      v40 = v2;
      v9 = *(v0 + 200);
      v10 = *(v0 + 184);
      v11 = *(v0 + 160);
      v12 = *(v0 + 128);
      v37 = *(v0 + 136);
      v38 = *(v0 + 192);
      v13 = *(v0 + 120);
      v36 = *(v0 + 112);
      v35 = *(v0 + 81);
      v28(v9, 1, 1, v41);
      v39 = v5;
      sub_10058B200(v5, v10, type metadata accessor for ShareRecord);
      sub_10058B200(v12, v11, type metadata accessor for OwnedBeaconRecord);
      v14 = (v30 + 24 + *(v34 + 80)) & ~*(v34 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_100589B28(v10, v15 + v32, type metadata accessor for ShareRecord);
      v16 = v15 + v30;
      *v16 = v35;
      *(v16 + 8) = v36;
      *(v16 + 16) = v13;
      sub_100589B28(v11, v15 + v14, type metadata accessor for OwnedBeaconRecord);
      *(v15 + ((v29 + v14) & 0xFFFFFFFFFFFFFFF8)) = v37;
      sub_1000D2A70(v9, v38, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v27)(v38, 1, v41);

      v17 = *(v0 + 192);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 192), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v26)(v17, v41);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1013B12D0;
      *(v21 + 24) = v15;

      sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v8 = *(v0 + 200);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_10000B3A8(v8, &qword_101698C00, &qword_10138B570);
      v5 = v39 + v31;
      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 82) = 0;
  *(v0 + 232) = 0;
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_100571AAC;
  v24 = *(v0 + 208);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v24);
}

uint64_t sub_100571AAC()
{

  return _swift_task_switch(sub_100571BA8, 0, 0);
}

uint64_t sub_100571BA8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    v5 = *(v0 + 82);
    v6 = *(v0 + 232);
    v7 = *(v0 + 88);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    *v7 = v6;
    *(v7 + 8) = v5;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    if (v2)
    {
      sub_1000BB584(*(v0 + 232), *(v0 + 82));
      *(v0 + 82) = 1;
      *(v0 + 232) = v1;
    }

    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_100571AAC;
    v4 = *(v0 + 208);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v4);
  }
}

uint64_t sub_100571D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v12;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 176) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = type metadata accessor for OwnedBeaconRecord(0);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = type metadata accessor for SharedBeaconRecord(0);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100571E74, 0, 0);
}

uint64_t sub_100571E74()
{
  v55 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v40 = v2;
  v4 = *(v0 + 88);
  v47 = *(v0 + 112);
  v49 = *(v0 + 80);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v44 = *(v0 + 40);
  v45 = v5;
  v42 = *(v0 + 176);
  v8 = *(v0 + 24);
  v43 = *(v0 + 32);
  v9 = type metadata accessor for ShareRecord(0);
  v10 = (v8 + *(v9 + 36));
  v39 = *v10;
  v37 = *(v10 + 1);
  v38 = *(v10 + 2);
  sub_10058B200(v7, v2, type metadata accessor for OwnedBeaconRecord);
  v11 = *(v5 + 16);
  v11(v49, v8 + *(v9 + 20), v6);
  *(v1 + v3[14]) = 3;
  v41 = v3[15];
  v12 = v3[20];
  v46 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v13 = *(*(v46 - 8) + 56);
  v13(v1 + v12, 1, 1, v46);
  *v1 = xmmword_10138C660;
  v11(v1 + v3[5], v40 + v4[5], v6);
  v11(v1 + v3[6], v49, v6);
  v14 = v1 + v3[7];
  *v14 = v42;
  *(v14 + 1) = v43;
  *(v14 + 2) = v44;
  v15 = (v1 + v3[8]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v40 + v4[14]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v1 + v3[9]);
  *v19 = v17;
  v19[1] = v18;
  v20 = (v40 + v4[15]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (v1 + v3[10]);
  *v23 = v21;
  v23[1] = v22;
  *(v1 + v3[11]) = *(v40 + v4[16]);
  *(v1 + v3[12]) = *(v40 + v4[17]);
  *(v1 + v41) = -1;
  *(v1 + v3[13]) = 0;
  *(v1 + v3[16]) = 1;
  *(v1 + v3[17]) = 0;

  static Date.distantPast.getter();
  (*(v45 + 8))(v49, v6);
  sub_1000D2A70(v40 + v4[7], v1 + v3[19], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v40, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v1 + v12, &unk_1016AF890, &qword_1013926D0);
  v13(v1 + v12, 1, 1, v46);
  sub_10058B200(v1, v47, type metadata accessor for SharedBeaconRecord);
  sub_10053CF40(4, 1, v47, v51);
  v50 = v51[0];
  v24 = v53;
  v48 = v52;
  v25 = v54;
  *(v0 + 128) = v53;
  *(v0 + 136) = v25;
  v26 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10138BBE0;
  v29 = UUID.uuidString.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v32 = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v32;
  *(v28 + 64) = v32;
  *(v28 + 72) = v37;
  *(v28 + 80) = v38;

  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Sending updateSharedBeacon for beacon: %@ to destination: %@", 60, 2, v28);

  v33 = swift_allocObject();
  *(v0 + 144) = v33;
  swift_weakInit();
  v34 = swift_task_alloc();
  *(v0 + 152) = v34;
  *(v34 + 16) = v33;
  *(v34 + 24) = v50;
  *(v34 + 32) = v48;
  *(v34 + 40) = v24;
  *(v34 + 48) = v25;
  *(v34 + 56) = v39;
  *(v34 + 64) = v37;
  *(v34 + 72) = v38;
  v35 = swift_task_alloc();
  *(v0 + 160) = v35;
  *v35 = v0;
  v35[1] = sub_100572440;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD000000000000030, 0x800000010135A770, sub_10058AC7C, v34, &type metadata for () + 1);
}

uint64_t sub_100572440()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_100572644;
  }

  else
  {

    v2 = sub_100572588;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100572588()
{
  v1 = v0[15];
  sub_100016590(v0[16], v0[17]);
  sub_10058B268(v1, type metadata accessor for SharedBeaconRecord);
  v2 = v0[2];
  *v2 = 0;
  *(v2 + 8) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100572644()
{
  v1 = v0[15];
  sub_100016590(v0[16], v0[17]);
  sub_10058B268(v1, type metadata accessor for SharedBeaconRecord);

  v2 = v0[2];
  *v2 = v0[21];
  *(v2 + 8) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100572710(uint64_t a1, uint64_t a2, int a3, uint64_t (**a4)(uint64_t a1), uint64_t a5, void (*a6)(char *, uint64_t), int a7, uint64_t a8, uint64_t a9)
{
  v181 = a8;
  LODWORD(v179) = a7;
  v171 = a6;
  v170 = a5;
  v169 = a4;
  LODWORD(v168) = a3;
  v190 = a1;
  v158 = type metadata accessor for DispatchQoS.QoSClass();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchTime();
  v151 = *(v153 - 8);
  v10 = __chkstk_darwin(v153);
  v149 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v150 = &v146 - v12;
  v173 = type metadata accessor for DispatchWorkItemFlags();
  v177 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS();
  v176 = *(v175 - 8);
  __chkstk_darwin(v175);
  v174 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SecureLocationsRelayAction(0);
  v162 = *(v161 - 8);
  v15 = __chkstk_darwin(v161);
  v164 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v16;
  __chkstk_darwin(v15);
  v165 = &v146 - v17;
  v166 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v18 = __chkstk_darwin(v166);
  v152 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v167 = (&v146 - v20);
  v160 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v160);
  v183 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = __chkstk_darwin(v22 - 8);
  v159 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v182 = &v146 - v25;
  v26 = type metadata accessor for UUID();
  v184 = *(v26 - 8);
  v185 = v26;
  v27 = __chkstk_darwin(v26);
  v154 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v180 = &v146 - v30;
  v148 = v31;
  __chkstk_darwin(v29);
  v155 = &v146 - v32;
  v187 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v187);
  *&v188 = &v146 - v33;
  v34 = type metadata accessor for SystemInfo.DeviceLockState();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v146 - v39;
  v41 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  __chkstk_darwin(v44);
  v46 = &v146 - v45;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return CheckedContinuation.resume(returning:)();
  }

  v186 = v42;
  v47 = *(v42 + 16);
  v47(v46, v190, v41);
  v178 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47(v178, v46, v41);
  v48 = v186;
  v49 = (*(v186 + 80) + 16) & ~*(v186 + 80);
  v50 = swift_allocObject();
  v51 = *(v48 + 32);
  v190 = v41;
  v51(v50 + v49, v46, v41);
  sub_100908F24(_swiftEmptyArrayStorage);

  v52 = sub_101129A8C(&off_1016096C0);
  v53 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v35 + 104))(v38, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v34);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v35 + 8);
  v55(v38, v34);
  v55(v40, v34);
  if (v54)
  {

    v56 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v145 = v56;
      swift_once();
      v56 = v145;
    }

    os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v197 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v57 = v188;
    *v188 = aBlock;
    swift_storeEnumTagMultiPayload();
    v58 = v178;
    sub_10057428C(v57);
  }

  else
  {
    v147 = v50;
    v60 = v179;
    v61 = v181;
    v62 = Strong;
    if (sub_100540CB8(v179, v181, a9))
    {
      v187 = *(v62 + 24);
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v63 = swift_allocObject();
      v188 = xmmword_101385D80;
      *(v63 + 16) = xmmword_101385D80;
      *(v63 + 32) = v60;
      *(v63 + 40) = v61;
      *(v63 + 48) = a9;
      v64 = v184;
      v65 = v185;
      v66 = *(v184 + 56);
      v67 = v182;
      v66(v182, 1, 1, v185);

      v68 = v180;
      UUID.init()();
      v69 = *(v64 + 16);
      v70 = v183;
      v181 = v64 + 16;
      v179 = v69;
      v69(v183, v68, v65);
      v71 = v159;
      sub_1000D2A70(v67, v159, &qword_1016980D0, &unk_10138F3B0);
      v72 = v160;
      v73 = *(v160 + 28);
      v66(&v70[v73], 1, 1, v65);
      *&v70[v72[5]] = v63;
      v70[v72[6]] = 1;
      sub_10002311C(v71, &v70[v73], &qword_1016980D0, &unk_10138F3B0);
      v74 = &v70[v72[8]];
      *v74 = 0;
      v74[8] = 1;
      v70[v72[9]] = 0;
      *&v70[v72[10]] = v52;
      *&v70[v72[11]] = v53;
      v75 = &v70[v72[12]];
      *v75 = 0;
      v75[1] = 0;
      *&v70[v72[13]] = xmmword_1013B0D90;
      v76 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
      v77 = v165;
      sub_10058B200(v70, &v165[*(v76 + 24)], type metadata accessor for MessagingOptions);
      *v77 = v168;
      v78 = v170;
      *(v77 + 8) = v169;
      *(v77 + 16) = v78;
      v79 = v171;
      *(v77 + 24) = v171;
      *(v77 + 32) = xmmword_10138BBF0;
      swift_storeEnumTagMultiPayload();
      v80 = v164;
      sub_10058B200(v77, v164, type metadata accessor for SecureLocationsRelayAction);
      v81 = (*(v162 + 80) + 24) & ~*(v162 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = v187;
      sub_100589B28(v80, v82 + v81, type metadata accessor for SecureLocationsRelayAction);
      sub_100017D5C(v78, v79);

      v83 = v167;
      unsafeFromAsyncTask<A>(_:)();
      sub_10058B268(v77, type metadata accessor for SecureLocationsRelayAction);

      v88 = v152;
      sub_10058B200(v83, v152, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v83, type metadata accessor for SecureLocationsRelayAction.Response);
        v91 = v184;
        v90 = v185;
        v92 = *(v184 + 8);
        v93 = v180;
        v180 = (v184 + 8);
        v171 = v92;
        v92(v93, v185);
        sub_10000B3A8(v182, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v183, type metadata accessor for MessagingOptions);
        v94 = *(v91 + 32);
        v95 = v155;
        v187 = v91 + 32;
        v183 = v94;
        (v94)(v155, v88, v90);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v96 = Future.init()();
        v97 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v98 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v99 = swift_allocObject();
        *(v99 + 16) = v188;
        v100 = UUID.uuidString.getter();
        v102 = v101;
        *(v99 + 56) = &type metadata for String;
        *(v99 + 64) = sub_100008C00();
        *(v99 + 32) = v100;
        *(v99 + 40) = v102;
        os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v98, "Setting %@ to pending", 21, 2, v99);

        v103 = Strong;
        v168 = *(Strong + 168);
        v104 = v154;
        v179(v154, v95, v90);
        v105 = (*(v91 + 80) + 24) & ~*(v91 + 80);
        v184 = *(v91 + 80);
        v170 = v105 + v148;
        v106 = v105;
        *&v188 = v105;
        v107 = (v105 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
        v108 = swift_allocObject();
        *(v108 + 16) = v103;
        (v183)(v108 + v106, v104, v90);
        *(v108 + v107) = v96;
        v182 = v96;
        v195 = sub_10058D4DC;
        v196 = v108;
        aBlock = _NSConcreteStackBlock;
        v192 = 1107296256;
        v169 = &v193;
        v193 = sub_100006684;
        v194 = &unk_101629038;
        v109 = _Block_copy(&aBlock);

        v110 = v174;
        static DispatchQoS.unspecified.getter();
        v197 = _swiftEmptyArrayStorage;
        v165 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v164 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v166 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v111 = v172;
        v112 = v173;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v109);
        v113 = *(v177 + 8);
        v177 += 8;
        v168 = v113;
        v113(v111, v112);
        v114 = *(v176 + 8);
        v176 += 8;
        v167 = v114;
        v114(v110, v175);

        v115 = v154;
        v116 = v155;
        v179(v154, v155, v90);
        v117 = swift_allocObject();
        *(v117 + 16) = v103;
        (v183)(v117 + v188, v115, v90);
        v118 = (v117 + v107);
        v119 = v147;
        *v118 = sub_10058ACB8;
        v118[1] = v119;

        Future.addSuccess(block:)();

        v120 = swift_allocObject();
        *(v120 + 16) = sub_10058ACB8;
        *(v120 + 24) = v119;

        Future.addFailure(block:)();

        v162 = *(v103 + 168);
        v121 = v149;
        static DispatchTime.now()();
        v122 = v90;
        v123 = v150;
        + infix(_:_:)();
        v163 = *(v151 + 8);
        v163(v121, v153);
        v124 = v154;
        v179(v154, v116, v122);
        v125 = swift_allocObject();
        *(v125 + 16) = v103;
        (v183)(v125 + v188, v124, v122);
        v195 = sub_10058D4E0;
        v196 = v125;
        aBlock = _NSConcreteStackBlock;
        v192 = 1107296256;
        v193 = sub_100006684;
        v194 = &unk_1016290D8;
        v126 = _Block_copy(&aBlock);

        v127 = v174;
        static DispatchQoS.unspecified.getter();
        v197 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v126);

        v168(v111, v112);
        v167(v127, v175);
        v163(v123, v153);
        v171(v155, v122);

        v87 = v190;
        v48 = v186;
      }

      else
      {
        sub_10058B268(v88, type metadata accessor for SecureLocationsRelayAction.Response);
        sub_10057C844();
        v128 = swift_allocError();
        swift_willThrow();
        sub_10058B268(v83, type metadata accessor for SecureLocationsRelayAction.Response);
        (*(v184 + 8))(v180, v185);
        sub_10000B3A8(v182, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v183, type metadata accessor for MessagingOptions);
        v129 = static os_log_type_t.error.getter();
        v48 = v186;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v130 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v131 = swift_allocObject();
        *(v131 + 16) = v188;
        aBlock = v128;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v132 = String.init<A>(describing:)();
        v134 = v133;
        *(v131 + 56) = &type metadata for String;
        *(v131 + 64) = sub_100008C00();
        *(v131 + 32) = v132;
        *(v131 + 40) = v134;
        os_log(_:dso:log:_:_:)(v129, &_mh_execute_header, v130, "Message send error: %@", 22, 2, v131);

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v135 = v157;
        v136 = v156;
        v137 = v158;
        (*(v157 + 104))(v156, enum case for DispatchQoS.QoSClass.default(_:), v158);
        *&v188 = static OS_dispatch_queue.global(qos:)();
        (*(v135 + 8))(v136, v137);
        v138 = swift_allocObject();
        v139 = v147;
        v138[2] = sub_10058ACB8;
        v138[3] = v139;
        v138[4] = v128;
        v195 = sub_10058D73C;
        v196 = v138;
        aBlock = _NSConcreteStackBlock;
        v192 = 1107296256;
        v193 = sub_100006684;
        v194 = &unk_101628FE8;
        v140 = _Block_copy(&aBlock);

        swift_errorRetain();
        v141 = v174;
        static DispatchQoS.unspecified.getter();
        v197 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v142 = v172;
        v143 = v173;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v144 = v188;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v140);

        (*(v177 + 8))(v142, v143);
        (*(v176 + 8))(v141, v175);

        v87 = v190;
      }

      v58 = v178;
      return (*(v48 + 8))(v58, v87);
    }

    v84 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v85 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_101385D80;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_100008C00();
    *(v86 + 32) = v61;
    *(v86 + 40) = a9;

    os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "Not sending since %@ has no IDS registered devices", 50, 2, v86);

    type metadata accessor for SPOwnerSessionError(0);
    v197 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v57 = v188;
    *v188 = aBlock;
    swift_storeEnumTagMultiPayload();
    v58 = v178;
    sub_10057428C(v57);
  }

  sub_10000B3A8(v57, &qword_10169F358, &qword_1013A0810);
  v87 = v190;
  return (*(v48 + 8))(v58, v87);
}

uint64_t sub_10057428C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v6);
  v8 = (v16 - v7);
  sub_1000D2A70(a1, v16 - v7, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16[1] = *v8;
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Successfully sent updateSharedBeacon: %@", 40, 2, v12);

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
    return (*(v3 + 8))(v5, v2);
  }
}

void sub_100574524(uint64_t a1)
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
    v5 = Array.description.getter();
    v7 = sub_1000136BC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Successfully forwarded separation state observation: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }
}

void sub_1005746A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v9);
  v11 = (&v25 - v10);
  sub_1000D2A70(a1, &v25 - v10, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B780);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1000136BC(a4, a5, &v26);
      *(v16 + 12) = 2080;
      v25 = v12;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, &v26);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to send observations to %s due to error: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B780);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 134218242;
      *(v23 + 4) = *(a2 + 16);

      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1000136BC(a4, a5, &v26);
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfuly sent %ld observations to %s", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {
    }

    sub_10000B3A8(v11, &qword_10169F358, &qword_1013A0810);
  }
}

Swift::Int sub_100574A6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100574B34(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100574BE8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100574CAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10058383C(*a1);
  *a2 = result;
  return result;
}

void sub_100574CDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F687069;
  v5 = 1685024873;
  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 3)
  {
    v8 = 6513005;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 1684107369;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100574D70(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for SystemVersionNumber();
  __chkstk_darwin(v6);
  v9 = *(a1 + 16);
  v10 = "ion16q24";
  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v66 = (v7 + 48);
  v59 = (v7 + 8);
  v60 = (v7 + 32);
  v12 = a1 + 32;
  v13 = _swiftEmptyArrayStorage;
  v58 = xmmword_101385D80;
  v57 = xmmword_10138BBE0;
  v67 = v5;
  v53 = a1 + 32;
  v54 = v1;
  v62 = v9;
  v56 = v6;
  do
  {
    v55 = v13;
    v14 = (v12 + 160 * v11);
    v15 = v11;
    while (1)
    {
      if (v15 >= v9)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23 = v14[7];
      v87 = v14[6];
      v88 = v23;
      v24 = v14[9];
      v89 = v14[8];
      v90 = v24;
      v25 = v14[3];
      v83 = v14[2];
      v84 = v25;
      v26 = v14[5];
      v85 = v14[4];
      v86 = v26;
      v27 = v14[1];
      v81 = *v14;
      v82 = v27;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_27;
      }

      *&v68 = v15 + 1;
      v11 = *(&v86 + 1);
      v28 = v86;
      swift_bridgeObjectRetain_n();
      sub_10013CD18(&v81, &v71);
      SystemVersionNumber.init(string:)();
      if ((*v66)(v5, 1, v6) == 1)
      {
        v16 = v6;

        sub_10000B3A8(v5, &qword_101697BC8, &qword_10138CBE0);
        v11 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v10 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v17 = swift_allocObject();
        *(v17 + 16) = v58;
        v69 = 60;
        v70 = 0xE100000000000000;
        v77 = v87;
        v78 = v88;
        v79 = v89;
        v80 = v90;
        v73 = v83;
        v74 = v84;
        v75 = v85;
        v76 = v86;
        v71 = v81;
        v72 = v82;
        sub_10058ADE8();
        v18._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        String.append(_:)(v18);

        v19._countAndFlagsBits = 8250;
        v19._object = 0xE200000000000000;
        String.append(_:)(v19);
        String.append(_:)(v87);
        v20._countAndFlagsBits = 62;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);
        v21 = v69;
        v22 = v70;
        *(v17 + 56) = &type metadata for String;
        *(v17 + 64) = sub_100008C00();
        *(v17 + 32) = v21;
        *(v17 + 40) = v22;
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v10, "Connectable devices found messagingDevice: %@ - could not read build version.", 77, 2, v17);
        sub_10013CDDC(&v81);

        v6 = v16;
        goto LABEL_7;
      }

      v29 = v61;
      (*v60)(v61, v5, v6);
      v65 = sub_100583888(v83, *(&v83 + 1), v29);
      v64 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v63 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v10 = swift_allocObject();
      *(v10 + 1) = v57;
      v69 = 60;
      v70 = 0xE100000000000000;
      v77 = v87;
      v78 = v88;
      v79 = v89;
      v80 = v90;
      v73 = v83;
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v71 = v81;
      v72 = v82;
      sub_10058ADE8();
      v30._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v30);

      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      String.append(_:)(v87);
      v32._countAndFlagsBits = 62;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = v69;
      v34 = v70;
      *(v10 + 7) = &type metadata for String;
      v35 = sub_100008C00();
      *(v10 + 4) = v33;
      *(v10 + 5) = v34;
      *(v10 + 12) = &type metadata for String;
      *(v10 + 13) = v35;
      *(v10 + 8) = v35;
      *(v10 + 9) = v28;
      *(v10 + 10) = v11;
      os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v63, "Connectable devices found messagingDevice: %@, version: %@.", 59, 2, v10);

      v6 = v56;
      (*v59)(v29, v56);
      if (v65)
      {
        break;
      }

      sub_10013CDDC(&v81);
      v9 = v62;
LABEL_7:
      v5 = v67;
      ++v15;
      v14 += 10;
      if (v68 == v9)
      {
        v1 = v54;
        v13 = v55;
        v10 = "v32@0:8@NISession16q24" + 15;
        goto LABEL_24;
      }
    }

    v36 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v36;
    v9 = v62;
    v11 = v68;
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = "v32@0:8@NISession16q24" + 15;
      v13 = v36;
    }

    else
    {
      sub_101124390(0, v36[2] + 1, 1);
      v13 = v91;
      v10 = "v32@0:8@NISession16q24" + 15;
    }

    v39 = v13[2];
    v38 = v13[3];
    if (v39 >= v38 >> 1)
    {
      sub_101124390((v38 > 1), v39 + 1, 1);
      v13 = v91;
    }

    v13[2] = v39 + 1;
    v40 = &v13[20 * v39];
    v41 = v82;
    v40[2] = v81;
    v40[3] = v41;
    v42 = v83;
    v43 = v84;
    v44 = v86;
    v40[6] = v85;
    v40[7] = v44;
    v40[4] = v42;
    v40[5] = v43;
    v45 = v87;
    v46 = v88;
    v47 = v90;
    v40[10] = v89;
    v40[11] = v47;
    v40[8] = v45;
    v40[9] = v46;
    v12 = v53;
    v1 = v54;
    v5 = v67;
  }

  while (v11 != v9);
LABEL_24:
  v6 = v13[2];

  LODWORD(v11) = *(v1 + 280);
  v9 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
LABEL_28:
    swift_once();
  }

  v48 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v49 = swift_allocObject();
  v68 = *(v10 + 216);
  *(v49 + 16) = v68;
  *(v49 + 56) = &type metadata for Bool;
  *(v49 + 64) = &protocol witness table for Bool;
  *(v49 + 32) = v11;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v48, "thisDeviceConnectionAllowed: %i", v53);

  v50 = static os_log_type_t.default.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = v68;
  *(v51 + 56) = &type metadata for Int;
  *(v51 + 64) = &protocol witness table for Int;
  *(v51 + 32) = v6 + v11;
  os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v48, "Connectable devices found %i devices.", v53);

  return v6 + v11;
}

uint64_t sub_1005754E0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  sub_10058B200(v25, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v5);
  v14 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v15 = (v9 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_100589B28(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for SharedBeaconRecord);
  (*(v6 + 32))(v16 + v15, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_10058CE5C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162A0F0;
  v17 = _Block_copy(aBlock);

  v18 = v27;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v20 = v29;
  v19 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v33 + 8))(v20, v19);
  (*(v31 + 8))(v18, v32);
}

uint64_t sub_100575A3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v5 - 8);
  v60 = &v47 - v6;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v8 = (v7 - 8);
  v64 = *(v7 - 8);
  v59 = *(v64 + 64);
  v9 = __chkstk_darwin(v7);
  v63 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = (&v47 - v11);
  v13 = (a1 + v8[10]);
  v14 = *v13;
  v61 = v13[1];
  v62 = v14;
  v15 = *a1;
  v57 = a1[1];
  v58 = v15;
  v16 = v8[7];
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 16);
  v18(v12 + v16, a1 + v16, v17);
  v18(v12 + v8[8], a1 + v8[8], v17);
  v19 = a1 + v8[9];
  LOBYTE(v17) = *v19;
  v20 = *(v19 + 1);
  v21 = *(v19 + 2);
  v22 = v8[12];
  v23 = (a1 + v8[11]);
  v24 = v23[1];
  v54 = *v23;
  v55 = v20;
  v25 = *(a1 + v22 + 8);
  v56 = *(a1 + v22);
  v26 = *(a1 + v8[14]);
  v52 = *(a1 + v8[13]);
  v53 = v26;
  v27 = *(a1 + v8[15]);
  v50 = *(a1 + v8[16]);
  v51 = v27;
  v28 = v8[18];
  v48 = *(a1 + v8[17]);
  v49 = *(a1 + v28);
  v29 = v8[20];
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 16))(v12 + v29, a2, v30);
  sub_1000D2A70(a1 + v8[21], v12 + v8[21], &qword_1016980D0, &unk_10138F3B0);
  v31 = v60;
  sub_1000D2A70(a1 + v8[22], v60, &unk_1016AF890, &qword_1013926D0);
  v32 = v8[16];
  v47 = v8[17];
  v33 = v8[22];
  v34 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  (*(*(v34 - 8) + 56))(v12 + v33, 1, 1, v34);
  v36 = v57;
  v35 = v58;
  *v12 = v58;
  v12[1] = v36;
  v37 = v12 + v8[9];
  *v37 = v17;
  *(v37 + 1) = v55;
  *(v37 + 2) = v21;
  v38 = (v12 + v8[10]);
  v39 = v61;
  *v38 = v62;
  v38[1] = v39;
  v40 = (v12 + v8[11]);
  *v40 = v54;
  v40[1] = v24;
  v41 = (v12 + v8[12]);
  *v41 = v56;
  v41[1] = v25;
  v42 = v53;
  *(v12 + v8[13]) = v52;
  *(v12 + v8[14]) = v42;
  *(v12 + v8[15]) = v51;
  *(v12 + v32) = v50;
  *(v12 + v47) = v48;
  *(v12 + v8[18]) = v49;
  *(v12 + v8[19]) = 1;
  sub_100017D5C(v35, v36);

  sub_10002311C(v31, v12 + v33, &unk_1016AF890, &qword_1013926D0);
  v43 = v63;
  sub_10058B200(a1, v63, type metadata accessor for SharedBeaconRecord);
  v44 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v45 = swift_allocObject();
  sub_100589B28(v43, v45 + v44, type metadata accessor for SharedBeaconRecord);
  sub_1006DF8EC(v12, 0, sub_10058CF54, v45);

  return sub_10058B268(v12, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_100575EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v10);
  v12 = (v30 - v11);
  sub_1000D2A70(a1, v30 - v11, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    sub_10058B200(a2, v9, type metadata accessor for SharedBeaconRecord);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v30[1] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Error updated SharedBeaconRecord %@: %@", 39, 2, v16);
  }

  else
  {
    sub_100589B28(v12, v9, type metadata accessor for SharedBeaconRecord);
    v24 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_10058B200(v9, v7, type metadata accessor for SharedBeaconRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Successfully updated SharedBeaconRecord with advertisedIndex/shareDate %@:", 74, 2, v26);

    return sub_10058B268(v9, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10057624C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for UUID();
  v2[4] = swift_task_alloc();
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10057633C, 0, 0);
}

uint64_t sub_10057633C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  type metadata accessor for WorkItemQueue.WorkItem();
  sub_10058B200(v4, v1, type metadata accessor for OwnedBeaconRecord);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100589B28(v1, v7 + v6, type metadata accessor for OwnedBeaconRecord);
  *(v7 + ((v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005764AC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = type metadata accessor for OwnedBeaconRecord(0);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100576540, 0, 0);
}

uint64_t sub_100576540()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = *(qword_10177CEA0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100576618;

  return sub_100507C6C();
}

uint64_t sub_100576618(char a1)
{
  *(*v1 + 178) = a1;

  return _swift_task_switch(sub_100576738, 0, 0);
}

uint64_t sub_100576738()
{
  v19 = v0;
  if (*(v0 + 178) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100576A24;
    v2 = *(v0 + 48);

    return sub_1005772E0(v2);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A560);
    sub_10058B200(v5, v4, type metadata accessor for OwnedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 72);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_10058B268(v10, type metadata accessor for OwnedBeaconRecord);
      v16 = sub_1000136BC(v13, v15, &v18);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring non-me device family re-evaluation for %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_10058B268(v10, type metadata accessor for OwnedBeaconRecord);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100576A24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100576B74, 0, 0);
  }
}

uint64_t sub_100576B74(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695058 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C3A0;
  v1[15] = qword_10177C3A0;
  v1[16] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  v1[17] = v8;
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "reevaluateKeyDropFamilySharing for %@", 37, 2, v4);

  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_100576CFC;
  v10 = v1[14];
  v11 = v1[6];

  return sub_100583CA8(v11, v10);
}

uint64_t sub_100576CFC()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100576E70, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_100577010;
    v4 = v2[13];
    v5 = v2[6];

    return sub_100587B18(v5, v4);
  }
}

uint64_t sub_100576E70()
{
  *(v0 + 16) = *(v0 + 152);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 176))
  {
  }

  else
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);
    v4 = static os_log_type_t.error.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v0 + 24) = v1;
    swift_errorRetain();
    v6 = String.init<A>(describing:)();
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = v2;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v3, "Error in Unsharing: %@", 22, 2, v5);
  }

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_100577010;
  v9 = *(v0 + 104);
  v10 = *(v0 + 48);

  return sub_100587B18(v10, v9);
}

uint64_t sub_100577010()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100577160, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100577160()
{
  v1 = *(v0 + 168);

  *(v0 + 32) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 177))
  {
  }

  else
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = static os_log_type_t.error.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    *(v0 + 40) = v2;
    swift_errorRetain();
    v7 = String.init<A>(describing:)();
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = v3;
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v4, "Error in Sharing: %@", 20, 2, v6);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1005772E0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for OwnedBeaconRecord(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for CorrelationIdentifierMap();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for PeerCommunicationIdentifier(0);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v2[27] = *(v7 + 64);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10057756C, 0, 0);
}

uint64_t sub_10057756C()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 400))
  {

    v1 = *(v0 + 8);

    return v1(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_100577748;

    return daemon.getter();
  }
}

uint64_t sub_100577748(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 240) = a1;

  v3 = swift_task_alloc();
  *(v2 + 248) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003DFC(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100577924;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100577924(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  if (v1)
  {
    v5 = sub_100579AF8;
    v6 = 0;
  }

  else
  {

    v5 = sub_100577A5C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100577A84()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_100577B60;
  v2 = *(v0 + 272);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v2, &type metadata for () + 1);
}

uint64_t sub_100577B60()
{

  return _swift_task_switch(sub_100577C5C, 0, 0);
}

uint64_t sub_100577C5C()
{
  v1 = *(v0 + 256);
  *(v0 + 392) = *(*(v0 + 72) + 20);
  return _swift_task_switch(sub_100577C84, v1, 0);
}

uint64_t sub_100577C84()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  (*(v5 + 16))(v3, *(v0 + 56) + *(v0 + 392), v4);
  v6 = *(v5 + 80);
  *(v0 + 396) = v6;
  v7 = (v6 + 24) & ~v6;
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v3, v4);
  *(v9 + v8) = 0;

  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_100577E1C;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v11);
}

uint64_t sub_100577E1C()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100577F48, v1, 0);
}

uint64_t sub_100577F6C()
{
  v1 = *(v0 + 304);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 184);
    v29 = *(v0 + 192);
    v28 = *(*(v0 + 176) + 32);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    v6 = _swiftEmptyArrayStorage;
    v31 = (*(v0 + 396) + 32) & ~*(v0 + 396);
    while (1)
    {
      sub_10058B200(v5, *(v0 + 192), type metadata accessor for OwnerSharingCircle);
      v12 = *(*(v29 + v28) + 16);
      if (v12)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v13 = *(v3 + 72);
        v14 = swift_allocObject();
        isUniquelyReferenced_nonNull_native = j__malloc_size(v14);
        if (!v13)
        {
          goto LABEL_32;
        }

        if ((isUniquelyReferenced_nonNull_native - v31) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_36;
        }

        v14[2] = v12;
        v14[3] = 2 * ((isUniquelyReferenced_nonNull_native - v31) / v13);
        v30 = sub_1003CC2CC();

        isUniquelyReferenced_nonNull_native = sub_1000128F8(v32);
        if (v30 != v12)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }

      isUniquelyReferenced_nonNull_native = sub_10058B268(*(v0 + 192), type metadata accessor for OwnerSharingCircle);
      v16 = v14[2];
      v17 = v6[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > v6[3] >> 1)
      {
        if (v17 <= v18)
        {
          v19 = v17 + v16;
        }

        else
        {
          v19 = v17;
        }

        isUniquelyReferenced_nonNull_native = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v19, 1, v6);
        v6 = isUniquelyReferenced_nonNull_native;
      }

      if (v14[2])
      {
        if ((v6[3] >> 1) - v6[2] < v16)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = v6[2];
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_35;
          }

          v6[2] = v22;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_31;
        }
      }

      v5 += v27;
      if (!--v2)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_27:
    v23 = sub_10000954C(v6);
    *(v0 + 312) = v23;

    *(v0 + 40) = v23;
    v24 = swift_task_alloc();
    *(v0 + 320) = v24;
    v25 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    v11 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
    *v24 = v0;
    v24[1] = sub_1005782E4;
    v8 = *(v0 + 256);
    v10 = *(v0 + 152);
    isUniquelyReferenced_nonNull_native = &unk_1013B10C0;
    v9 = v25;
  }

  return Sequence.asyncCompactMap<A>(_:)(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_1005782E4(uint64_t a1)
{
  *(*v2 + 328) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_10057842C, 0, 0);
  }
}

uint64_t sub_10057842C()
{
  v1 = v0[41];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = *(v0[19] + 28);
    v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v24 = *(v3 + 72);
    v8 = _swiftEmptyArrayStorage;
    v22 = v6;
    v23 = v4;
    while (1)
    {
      v9 = v0[21];
      v10 = v0[18];
      sub_10058B200(v7, v9, type metadata accessor for OwnerPeerTrust);
      sub_10058B200(v4 + v6, v10, type metadata accessor for PeerCommunicationIdentifier);
      sub_10058B268(v9, type metadata accessor for OwnerPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v12 = *v0[18];
            v13 = v5[1];
            v14 = v5[2];
          }

          else
          {
            v12 = *(v5 + 16);
            v13 = v5[3];
            v14 = v5[4];
          }

          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v12 = *v0[18];
          v13 = v5[1];
          v14 = v5[2];
LABEL_13:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100A5C1F8(0, *(v8 + 2) + 1, 1, v8);
          }

          v16 = *(v8 + 2);
          v15 = *(v8 + 3);
          if (v16 >= v15 >> 1)
          {
            v8 = sub_100A5C1F8((v15 > 1), v16 + 1, 1, v8);
          }

          *(v8 + 2) = v16 + 1;
          v17 = &v8[24 * v16];
          v17[32] = v12;
          *(v17 + 5) = v13;
          *(v17 + 6) = v14;
          v6 = v22;
          v4 = v23;
          goto LABEL_4;
        }

        sub_10058B268(v0[18], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_4:
      v7 += v24;
      if (!--v2)
      {

        goto LABEL_20;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_20:
  v0[42] = sub_101129FC8(v8);

  v18 = swift_task_alloc();
  v0[43] = v18;
  v19 = sub_1000BC4D4(&qword_1016A4740, &unk_1013B10D0);
  *v18 = v0;
  v18[1] = sub_100578710;
  v20 = v0[8];

  return unsafeBlocking<A>(_:)(v0 + 6, sub_100589038, v20, v19);
}

uint64_t sub_100578710()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_100579BDC;
  }

  else
  {
    v2 = sub_100578840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100578840()
{
  v25 = v0;
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_101124900(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 32);
      v7 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_10002E98C(v8, v9);
      sub_100006654(v8, v9);
      v24 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124900((v10 > 1), v11 + 1, 1);
        v3 = v24;
      }

      v3[2] = v11 + 1;
      v12 = &v3[3 * v11];
      *(v12 + 32) = v5;
      v4 += 5;
      v12[5] = v7;
      v12[6] = v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v13 = v0[42];
  v0[45] = sub_101129FC8(v3);

  v15 = sub_10039DC8C(v14, v13);
  v0[46] = v15;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15;
    v18 = sub_1003A86D8(*(v15 + 16), 0);
    v19 = sub_1003AA0FC(&v24, (v18 + 4), v16, v17);
    v20 = v24;

    sub_1000128F8(v20);
    if (v19 == v16)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_12:
  v0[47] = v18;
  type metadata accessor for PeerTrustService();
  v21 = swift_task_alloc();
  v0[48] = v21;
  *v21 = v0;
  v21[1] = sub_100578A90;
  v22 = v0[12];

  return sub_100E80604(v22, v18);
}

uint64_t sub_100578A90()
{

  return _swift_task_switch(sub_100578BA8, 0, 0);
}

uint64_t sub_100578BA8()
{
  v116 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A4738, &qword_1013B10B0);
LABEL_15:
    if (qword_101694E40 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177BFE0);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v115[0] = v41;
      *v40 = 136315138;
      sub_100589064();
      v42 = Set.description.getter();
      v44 = v43;

      v45 = sub_1000136BC(v42, v44, v115);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Using fallback logic to match %s.", v40, 0xCu);
      sub_100007BAC(v41);
    }

    else
    {
    }

    v46 = *(v0 + 360);
    v47 = *(v0 + 336);
    if (*(v47 + 16) <= v46[2] >> 3)
    {
      v115[0] = *(v0 + 360);

      sub_10087D930(v47);
      v48 = v115[0];
    }

    else
    {

      v48 = sub_100614D54(v47, v46);
    }

    v49 = *(v47 + 16);
    v50 = *(v0 + 360);
    if (v46[2] <= v49 >> 3)
    {
      v115[0] = *(v0 + 336);
      sub_10087D930(v50);

      v51 = v115[0];
    }

    else
    {
      v51 = sub_100614D54(*(v0 + 360), *(v0 + 336));
    }

    sub_10058B200(*(v0 + 56), *(v0 + 80), type metadata accessor for OwnedBeaconRecord);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v114 = v48;
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 80);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v115[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_10058B268(v54, type metadata accessor for OwnedBeaconRecord);
      v60 = sub_1000136BC(v57, v59, v115);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Processing beacon %{private,mask.hash}s.", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {
      v61 = *(v0 + 80);

      sub_10058B268(v61, type metadata accessor for OwnedBeaconRecord);
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v115[0] = v65;
      *v64 = 136315138;
      sub_100589064();
      v66 = Set.description.getter();
      v68 = sub_1000136BC(v66, v67, v115);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Possible KeyDrop shares %s.", v64, 0xCu);
      sub_100007BAC(v65);
    }

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v115[0] = v72;
      *v71 = 136315138;
      sub_100589064();
      v73 = Set.description.getter();
      v75 = sub_1000136BC(v73, v74, v115);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "KeyDrop Shares to remove %s.", v71, 0xCu);
      sub_100007BAC(v72);
    }

    goto LABEL_34;
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  (*(v2 + 32))(*(v0 + 128), v3, v1);
  sub_1004F019C(v5);
  if (v4)
  {
    if (qword_101694E40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BFE0);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v115[0] = v18;
      *v16 = 138543618;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      *(v16 + 12) = 2080;
      sub_100589064();
      v20 = Set.description.getter();
      v22 = sub_1000136BC(v20, v21, v115);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Map lookup error: %{public}@ for %s.", v16, 0x16u);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v18);
    }

    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 104));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    if (v25)
    {
      v113 = *(v0 + 128);
      v30 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v115[0] = v111;
      *v30 = 136315138;
      sub_100003DFC(&qword_1016A4750, &type metadata accessor for CorrelationIdentifierMap, &protocol conformance descriptor for CorrelationIdentifierMap);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v34 = *(v28 + 8);
      v34(v26, v29);
      v35 = sub_1000136BC(v31, v33, v115);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "map: %s", v30, 0xCu);
      sub_100007BAC(v111);

      v34(v113, v29);
    }

    else
    {

      v36 = *(v28 + 8);
      v36(v26, v29);
      v36(v27, v29);
    }

    goto LABEL_15;
  }

  v7 = v6;
  sub_1004F019C(*(v0 + 360));
  v9 = v8;
  if (v7[2] <= *(v8 + 16) >> 3)
  {
    v115[0] = v8;

    sub_10087DA70(v7);
    v10 = v115[0];
  }

  else
  {

    v10 = sub_100615308(v7, v9);
  }

  sub_1004F04AC(v10);
  v12 = v11;

  if (v9[2] <= v7[2] >> 3)
  {
    v115[0] = v7;
    sub_10087DA70(v9);

    v78 = v7;
  }

  else
  {
    v78 = sub_100615308(v9, v7);
  }

  sub_1004F04AC(v78);
  v51 = v79;

  if (qword_101694E40 != -1)
  {
    swift_once();
  }

  v80 = *(v0 + 88);
  v81 = *(v0 + 56);
  v82 = type metadata accessor for Logger();
  sub_1000076D4(v82, qword_10177BFE0);
  sub_10058B200(v81, v80, type metadata accessor for OwnedBeaconRecord);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v114 = v12;
  if (os_log_type_enabled(v83, v84))
  {
    v85 = *(v0 + 88);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v115[0] = v87;
    *v86 = 141558275;
    *(v86 + 4) = 1752392040;
    *(v86 + 12) = 2081;
    sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    sub_10058B268(v85, type metadata accessor for OwnedBeaconRecord);
    v91 = sub_1000136BC(v88, v90, v115);

    *(v86 + 14) = v91;
    _os_log_impl(&_mh_execute_header, v83, v84, "Processing beacon %{private,mask.hash}s.", v86, 0x16u);
    sub_100007BAC(v87);
  }

  else
  {
    v92 = *(v0 + 88);

    sub_10058B268(v92, type metadata accessor for OwnedBeaconRecord);
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v115[0] = v96;
    *v95 = 136315138;
    sub_100589064();
    v97 = Set.description.getter();
    v99 = sub_1000136BC(v97, v98, v115);

    *(v95 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v93, v94, "Possible KeyDrop shares %s.", v95, 0xCu);
    sub_100007BAC(v96);
  }

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  v102 = os_log_type_enabled(v100, v101);
  v103 = *(v0 + 128);
  v105 = *(v0 + 104);
  v104 = *(v0 + 112);
  if (v102)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v115[0] = v107;
    *v106 = 136315138;
    sub_100589064();
    v108 = Set.description.getter();
    v112 = v105;
    v110 = sub_1000136BC(v108, v109, v115);

    *(v106 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v100, v101, "KeyDrop Shares to remove %s.", v106, 0xCu);
    sub_100007BAC(v107);

    (*(v104 + 8))(v103, v112);
  }

  else
  {

    (*(v104 + 8))(v103, v105);
  }

LABEL_34:

  v76 = *(v0 + 8);

  return v76(v114, v51);
}