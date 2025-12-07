uint64_t sub_1001A4748(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v154 = a3;
  v155 = a2;
  v141 = type metadata accessor for UUID();
  v153 = *(v141 - 8);
  __chkstk_darwin(v141);
  v152 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v150 = &v140 - v11;
  __chkstk_darwin(v12);
  v14 = &v140 - v13;
  v147 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v147);
  v146 = &v140 - v15;
  v16 = type metadata accessor for DeviceRecord(0);
  v148 = *(v16 - 8);
  v149 = v16;
  __chkstk_darwin(v16);
  v156 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v140 - v19;
  __chkstk_darwin(v20);
  v142 = v3;
  v143 = &v140 - v21;
  v22 = sub_100192340();
  v151 = a1;
  v23 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000EE91C(v6, qword_100300AF0);
  (*(v7 + 16))(v14, v26, v6);
  v27 = objc_autoreleasePoolPush();
  v145 = v14;
  v28 = v27;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v29 = v150;
  v144 = v25;
  URL.appendingPathComponent(_:)();
  v30 = *(v7 + 8);
  v30(v9, v6);
  objc_autoreleasePoolPop(v28);
  v31 = objc_autoreleasePoolPush();
  __chkstk_darwin(v31);
  *(&v140 - 2) = v29;
  *(&v140 - 1) = v22;
  v32 = v146;
  v33 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v31);
  v30(v29, v6);

  v30(v145, v6);
  v34 = v149;
  v35 = &qword_100226000;
  if ((*(v148 + 48))(v32, 1, v149) == 1)
  {
    v150 = 0;
    sub_1000EEE6C(v32, &qword_1002F8520, &unk_100227B60);
    v36 = static os_log_type_t.default.getter();
    v37 = v151;
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v38 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100226100;
    v40 = v37;
    v41 = [v40 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_1000EE954();
    *(v39 + 32) = v42;
    *(v39 + 40) = v44;
    v45 = v38;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Add device record: %@", 21, 2, v39);

    v46 = v40;
    v47 = v152;
    UUID.init()();
    v48 = v156;
    *v156 = xmmword_100227DA0;
    v49 = v141;
    (*(v153 + 16))(&v48[v34[5]], v47, v141);
    v50 = [v46 bluetoothAddress];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = &v48[v34[6]];
    *v54 = v51;
    v54[1] = v53;
    v55 = [v46 nickname];
    if (v55)
    {
      v56 = v55;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0xE000000000000000;
    }

    v92 = v142;
    v90 = v143;
    v93 = v34;
    v94 = &v156[v34[7]];
    *v94 = v57;
    v94[1] = v59;
    v95 = [v46 modelNumber];
    if (v95)
    {
      v96 = v95;
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v93 = v34;
    }

    else
    {
      v97 = 0;
      v99 = 0xE000000000000000;
    }

    v100 = &v156[v93[8]];
    *v100 = v97;
    v100[1] = v99;
    v101 = [v46 manufacturer];
    if (v101)
    {
      v102 = v101;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      v93 = v34;
    }

    else
    {
      v103 = 0;
      v105 = 0xE000000000000000;
    }

    v106 = &v156[v93[9]];
    *v106 = v103;
    v106[1] = v105;
    v107 = [v46 productID];
    if (v107)
    {
      v108 = v107;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;

      v93 = v34;
    }

    else
    {
      v109 = 0;
      v111 = 0xE000000000000000;
    }

    v112 = &v156[v93[10]];
    *v112 = v109;
    v112[1] = v111;
    v113 = [v46 vendorID];
    if (v113)
    {
      v114 = v113;
      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      v93 = v34;
    }

    else
    {
      v115 = 0;
      v117 = 0xE000000000000000;
    }

    v89 = v45;
    v118 = v93[11];
    v119 = v156;
    v120 = &v156[v118];
    *v120 = v115;
    v120[1] = v117;
    static Date.now.getter();

    (*(v153 + 8))(v152, v49);
    v91 = sub_1001CC214(v119, v90, type metadata accessor for DeviceRecord);
    v33 = v150;
LABEL_32:
    v121 = *(v92 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    __chkstk_darwin(v91);
    *(&v140 - 2) = v121;
    *(&v140 - 1) = v90;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v33)
    {

      v122 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v123 = swift_allocObject();
      *(v123 + 16) = *(v35 + 16);
      v157[0] = v33;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v124 = String.init<A>(describing:)();
      v126 = v125;
      *(v123 + 56) = &type metadata for String;
      *(v123 + 64) = sub_1000EE954();
      *(v123 + 32) = v124;
      *(v123 + 40) = v126;
      os_log(_:dso:log:_:_:)(v122, &_mh_execute_header, v89, "Unable to enocde device record with error: %@", 45, 2, v123);

      sub_1001266E0();
      v127 = swift_allocError();
      *v128 = v33 | 0x4000000000000000;
      swift_errorRetain();
      v155(v127);
    }

    else
    {

      v155(0);
      v129 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v130 = swift_allocObject();
      *(v130 + 16) = *(v35 + 16);
      v131 = sub_1000EA6CC();
      v133 = v132;
      *(v130 + 56) = &type metadata for String;
      *(v130 + 64) = sub_1000EE954();
      *(v130 + 32) = v131;
      *(v130 + 40) = v133;
      os_log(_:dso:log:_:_:)(v129, &_mh_execute_header, v89, "Syncing DeviceRecord - %@", 25, 2, v130);

      v134 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*v90, *(v90 + 8));
      if (!isa)
      {
        isa = sub_1000F8490().super.isa;
      }

      v157[0] = isa;
      v136 = isa;
      sub_1000EC524(v157);
      objc_autoreleasePoolPop(v134);
      sub_100193560();
      v137 = swift_allocObject();
      *(v137 + 16) = v92;
      *(v137 + 24) = v136;

      v138 = v136;
      sub_100154534(v138, 1, sub_1001CBBCC, v137);

      swift_unknownObjectRelease();
    }

    v60 = v90;
    return sub_1001CC1B4(v60, type metadata accessor for DeviceRecord);
  }

  v60 = v140;
  sub_1001CC214(v32, v140, type metadata accessor for DeviceRecord);
  v61 = v151;
  if (sub_1000ECFA8(v151))
  {
    goto LABEL_15;
  }

  v62 = objc_autoreleasePoolPush();
  v63 = sub_100169D38(*v60, *(v60 + 8));
  if (!v63)
  {
    v63 = sub_1000F8490().super.isa;
  }

  v157[0] = v63;
  v64 = v63;
  sub_1000EC524(v157);
  objc_autoreleasePoolPop(v62);
  v65 = [v64 recordChangeTag];

  if (!v65)
  {
LABEL_15:
    LODWORD(v156) = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v78 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100226C80;
    v80 = sub_1000EA6CC();
    v82 = v81;
    *(v79 + 56) = &type metadata for String;
    v83 = sub_1000EE954();
    *(v79 + 64) = v83;
    *(v79 + 32) = v80;
    *(v79 + 40) = v82;
    v84 = v61;
    v85 = [v84 description];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    *(v79 + 96) = &type metadata for String;
    *(v79 + 104) = v83;
    v89 = v78;
    *(v79 + 72) = v86;
    *(v79 + 80) = v88;
    os_log(_:dso:log:_:_:)(v156, &_mh_execute_header, v78, "Updating cached device record: %@ with %@", 41, 2, v79);

    v90 = v143;
    sub_1001CC14C(v60, v143, type metadata accessor for DeviceRecord);
    sub_1000ECB0C(v84);
    v91 = sub_1001CC1B4(v60, type metadata accessor for DeviceRecord);
    v92 = v142;
    v35 = &qword_100226000;
    goto LABEL_32;
  }

  v66 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v67 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100226C80;
  v69 = sub_1000EA6CC();
  v71 = v70;
  *(v68 + 56) = &type metadata for String;
  v72 = sub_1000EE954();
  *(v68 + 64) = v72;
  *(v68 + 32) = v69;
  *(v68 + 40) = v71;
  v73 = v61;
  v74 = [v73 description];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  *(v68 + 96) = &type metadata for String;
  *(v68 + 104) = v72;
  *(v68 + 72) = v75;
  *(v68 + 80) = v77;
  os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v67, "No change from cached %@ [to] %@", 32, 2, v68);

  v155(0);
  return sub_1001CC1B4(v60, type metadata accessor for DeviceRecord);
}

void sub_1001A55A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v123 = a6;
  v124 = a5;
  v102 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v102);
  v105 = &v100 - v10;
  v104 = type metadata accessor for MagicPairingSettingsRecord(0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v107);
  v110 = &v100 - v12;
  v109 = type metadata accessor for DeviceSupportInformationRecord(0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v121 = *(v14 - 8);
  v122 = v14;
  __chkstk_darwin(v14);
  v119 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v120 = &v100 - v17;
  __chkstk_darwin(v18);
  v127 = &v100 - v19;
  v115 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v115);
  v118 = &v100 - v20;
  v21 = type metadata accessor for DeviceRecord(0);
  v116 = *(v21 - 8);
  v117 = v21;
  __chkstk_darwin(v21);
  v111 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v24 = qword_100300E38;
  v112 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  v100 = xmmword_100226C80;
  *(v25 + 16) = xmmword_100226C80;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1000EE954();
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v113 = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = a1;
  v126 = a1;
  *(v25 + 80) = a2;

  v125 = a2;

  v114 = v24;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "CloudSync: Remove device record type: %@ with address: %@", 57, 2, v25);

  if (a3 == 0x6552656369766544 && a4 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v27 = sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v28 = v122;
    sub_1000EE91C(v122, qword_100300AF0);
    v29 = v121;
    (*(v121 + 16))();
    v30 = objc_autoreleasePoolPush();
    URL.path.getter();
    v31 = v119;
    URL.appendingPathComponent(_:)();

    v32 = v120;
    URL.appendingPathComponent(_:)();
    v33 = *(v29 + 8);
    v33(v31, v28);
    objc_autoreleasePoolPop(v30);
    v34 = objc_autoreleasePoolPush();
    __chkstk_darwin(v34);
    *(&v100 - 2) = v32;
    *(&v100 - 1) = v27;
    v35 = v118;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v34);
    v33(v32, v28);

    v33(v127, v28);
    if ((*(v116 + 48))(v35, 1, v117) == 1)
    {
      sub_1000EEE6C(v35, &qword_1002F8520, &unk_100227B60);
      v36 = static os_log_type_t.error.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100226100;
      v38 = v113;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = v38;
      *(v37 + 32) = v126;
      *(v37 + 40) = v125;

      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v114, "Device Record not found to remove: %@", 37, 2, v37);
LABEL_19:

      (v124)(0);
      return;
    }

    v39 = v35;
    v40 = v111;
    sub_1001CC214(v39, v111, type metadata accessor for DeviceRecord);
    sub_1001A68A8(v40, v124, v123);
    v41 = type metadata accessor for DeviceRecord;
    goto LABEL_11;
  }

  if (a3 == 0xD00000000000001ELL && 0x80000001002671E0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v42 = sub_100192340();
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v43 = v122;
    sub_1000EE91C(v122, qword_100300D48);
    v44 = v121;
    (*(v121 + 16))();
    v45 = objc_autoreleasePoolPush();
    URL.path.getter();
    v46 = v119;
    URL.appendingPathComponent(_:)();

    v47 = v120;
    URL.appendingPathComponent(_:)();
    v48 = *(v44 + 8);
    v48(v46, v43);
    objc_autoreleasePoolPop(v45);
    v49 = objc_autoreleasePoolPush();
    __chkstk_darwin(v49);
    *(&v100 - 2) = v47;
    *(&v100 - 1) = v42;
    v50 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v49);
    v48(v47, v43);

    v48(v127, v43);
    if ((*(v108 + 48))(v50, 1, v109) == 1)
    {
      sub_1000EEE6C(v50, &qword_1002F8510, &unk_100227B50);
      v51 = static os_log_type_t.error.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100226100;
      v53 = v113;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v53;
      *(v52 + 32) = v126;
      *(v52 + 40) = v125;

      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v114, "Support Info Record not found to remove: %@", 43, 2, v52);
      goto LABEL_19;
    }

    v54 = v50;
    v40 = v106;
    sub_1001CC214(v54, v106, type metadata accessor for DeviceSupportInformationRecord);
    sub_1001AF584(v40, v124, v123);
    v41 = type metadata accessor for DeviceSupportInformationRecord;
LABEL_11:
    sub_1001CC1B4(v40, v41);
    return;
  }

  v55 = v125;
  if (a3 == 0x746553636967614DLL && a4 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v56 = sub_100192340();
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v57 = v122;
    sub_1000EE91C(v122, qword_100300BA8);
    v58 = v121;
    (*(v121 + 16))();
    v59 = objc_autoreleasePoolPush();
    URL.path.getter();
    v60 = v119;
    URL.appendingPathComponent(_:)();

    v61 = v120;
    URL.appendingPathComponent(_:)();
    v62 = *(v58 + 8);
    v62(v60, v57);
    objc_autoreleasePoolPop(v59);
    v63 = objc_autoreleasePoolPush();
    __chkstk_darwin(v63);
    *(&v100 - 2) = v61;
    *(&v100 - 1) = v56;
    v64 = v105;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v63);
    v62(v61, v57);

    v62(v127, v57);
    if ((*(v103 + 48))(v64, 1, v104) == 1)
    {
      sub_1000EEE6C(v64, &unk_1002F9C30, &qword_1002299A0);
      v65 = static os_log_type_t.error.getter();
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100226100;
      v67 = v113;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = v67;
      *(v66 + 32) = v126;
      *(v66 + 40) = v125;

      os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v114, "Magic Record not found to remove: %@", 36, 2, v66);
      goto LABEL_19;
    }

    v68 = v64;
    v40 = v101;
    sub_1001CC214(v68, v101, type metadata accessor for MagicPairingSettingsRecord);
    sub_1001B8D28(v40, 0, v124, v123);
    v41 = type metadata accessor for MagicPairingSettingsRecord;
    goto LABEL_11;
  }

  v69 = v55;
  if ((a3 != 0x6563697665444141 || a4 != 0xEE0064726F636552) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v71 = v126;
    if ((a3 != 0xD000000000000011 || 0x800000010026EAC0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((a3 != 0xD000000000000013 || 0x8000000100267B10 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v97 = static os_log_type_t.error.getter();
        v98 = swift_allocObject();
        *(v98 + 16) = v100;
        v99 = v113;
        *(v98 + 56) = &type metadata for String;
        *(v98 + 64) = v99;
        *(v98 + 32) = a3;
        *(v98 + 40) = a4;
        *(v98 + 96) = &type metadata for String;
        *(v98 + 104) = v99;
        *(v98 + 72) = v71;
        *(v98 + 80) = v69;

        os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v114, "Unknown record type: %@ for address: %@", 39, 2, v98);
        goto LABEL_19;
      }

      goto LABEL_50;
    }

LABEL_40:
    v129 = &type metadata for AudioAccessoryFeatures;
    v130 = sub_1000F1874();
    v77 = isFeatureEnabled(_:)();
    sub_1000EF824(v128);
    if (v77)
    {
      sub_100192340();
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v78 = v122;
      v79 = sub_1000EE91C(v122, qword_100300B10);
      v80 = v121;
      v81 = v127;
      (*(v121 + 16))(v127, v79, v78);
      v82 = sub_10018ACBC(v71, v69, v81, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

      (*(v80 + 8))(v81, v78);
      if (!v82)
      {
        v86 = static os_log_type_t.error.getter();
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100226100;
        v88 = v113;
        *(v87 + 56) = &type metadata for String;
        *(v87 + 64) = v88;
        *(v87 + 32) = v71;
        *(v87 + 40) = v69;

        os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v114, "AAProxCardsRecord not found to remove: %@", 41, 2, v87);
        goto LABEL_19;
      }

      sub_1001B2C5C(v82, v124, v123);

      return;
    }

LABEL_50:
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v89 = v122;
    v90 = sub_1000EE91C(v122, qword_100300C40);
    v91 = v121;
    v92 = v127;
    (*(v121 + 16))(v127, v90, v89);
    v93 = sub_10018ACBC(v71, v69, v92, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

    (*(v91 + 8))(v92, v89);
    if (!v93)
    {
      v94 = static os_log_type_t.error.getter();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_100226100;
      v96 = v113;
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = v96;
      *(v95 + 32) = v71;
      *(v95 + 40) = v69;

      os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v114, "HMDeviceCloudRecord not found to remove: %@", 43, 2, v95);
      goto LABEL_19;
    }

    sub_1001B4538(v93, v124, v123);

    return;
  }

  v129 = &type metadata for AudioAccessoryFeatures;
  v130 = sub_1000F1874();
  v70 = isFeatureEnabled(_:)();
  sub_1000EF824(v128);
  v71 = v126;
  if ((v70 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_100192340();
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v72 = v122;
  v73 = sub_1000EE91C(v122, qword_100300D88);
  v74 = v121;
  v75 = v127;
  (*(v121 + 16))(v127, v73, v72);
  v76 = sub_10018ACBC(v71, v69, v75, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

  (*(v74 + 8))(v75, v72);
  if (!v76)
  {
    v83 = static os_log_type_t.error.getter();
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_100226100;
    v85 = v113;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = v85;
    *(v84 + 32) = v71;
    *(v84 + 40) = v69;

    os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v114, "AADeviceRecord not found to remove: %@", 38, 2, v84);
    goto LABEL_19;
  }

  sub_1001B1288(v76, v124, v123);
}

uint64_t sub_1001A68A8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v119 = a3;
  v120 = a2;
  v101 = type metadata accessor for Date();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v99);
  v103 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin(v8);
  v110 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v94 - v11;
  __chkstk_darwin(v12);
  v14 = &v94 - v13;
  v114 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v114);
  v116 = &v94 - v15;
  v16 = type metadata accessor for DeviceRecord(0);
  v117 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v17;
  __chkstk_darwin(v18);
  v102 = &v94 - v19;
  v20 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v21 = qword_100300E38;
  v105 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v22 = swift_allocObject();
  v104 = xmmword_100226100;
  *(v22 + 16) = xmmword_100226100;
  v23 = sub_1000EA6CC();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  v106 = sub_1000EE954();
  *(v22 + 64) = v106;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v107 = v21;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "CloudSync: Remove device record: %@", 35, 2, v22);

  v108 = v4;
  v26 = sub_100192340();
  v27 = *(v16 + 24);
  v118 = a1;
  v28 = (a1 + v27);
  v111 = v16;
  v29 = *v28;
  v30 = v28[1];
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v31 = v113;
  v32 = sub_1000EE91C(v113, qword_100300AF0);
  v33 = v112;
  v34 = *(v112 + 16);
  v109 = v14;
  v34(v14, v32, v31);
  v35 = objc_autoreleasePoolPush();
  URL.path.getter();
  v36 = v110;
  URL.appendingPathComponent(_:)();

  v37 = v26;
  v38 = v115;
  v97 = v29;
  v96 = v30;
  URL.appendingPathComponent(_:)();
  v39 = *(v33 + 8);
  v39(v36, v31);
  objc_autoreleasePoolPop(v35);
  v40 = objc_autoreleasePoolPush();
  __chkstk_darwin(v40);
  *(&v94 - 2) = v38;
  *(&v94 - 1) = v37;
  v41 = v116;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v40);
  v39(v38, v31);

  v39(v109, v31);
  v42 = v117;
  v43 = v111;
  if ((*(v117 + 48))(v41, 1, v111) == 1)
  {
    sub_1000EEE6C(v41, &qword_1002F8520, &unk_100227B60);
    v44 = static os_log_type_t.error.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = v104;
    v46 = sub_1000EA6CC();
    v48 = v106;
    v47 = v107;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v48;
    *(v45 + 32) = v46;
    *(v45 + 40) = v49;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v47, "Record not found to remove: %@", 30, 2, v45);

    return v120(0);
  }

  else
  {
    v51 = v43;
    v52 = v102;
    sub_1001CC214(v41, v102, type metadata accessor for DeviceRecord);
    v53 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v52, *(v52 + 8));
    if (!isa)
    {
      isa = sub_1000F8490().super.isa;
    }

    v55 = v103;
    v121[0] = isa;
    v56 = isa;
    sub_1000EC524(v121);
    objc_autoreleasePoolPop(v53);
    v57 = [v56 recordID];

    v58 = objc_autoreleasePoolPush();
    v59 = sub_100169D38(*v52, *(v52 + 8));
    if (!v59)
    {
      v59 = sub_1000F8490().super.isa;
    }

    v121[0] = v59;
    v60 = v59;
    sub_1000EC524(v121);
    objc_autoreleasePoolPop(v58);
    v61 = CKRecord.recordType.getter();
    v63 = v62;

    v64 = v108;
    sub_1001A73C4(v57, v61, v63, 0);

    v65 = *(v51 + 20);
    v66 = v99;
    v67 = *(v99 + 24);
    v68 = type metadata accessor for UUID();
    (*(*(v68 - 8) + 16))(v55 + v67, v118 + v65, v68);
    v69 = v96;

    v70 = v98;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v72 = v71;
    (*(v100 + 8))(v70, v101);
    *v55 = 1;
    strcpy((v55 + 8), "DeviceRecord");
    *(v55 + 21) = 0;
    *(v55 + 22) = -5120;
    v73 = (v55 + v66[7]);
    *v73 = v97;
    v73[1] = v69;
    *(v55 + v66[8]) = v72;
    *(v55 + v66[9]) = xmmword_1002298C0;
    v74 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v64, v55);
    objc_autoreleasePoolPop(v74);
    sub_100193560();
    v75 = type metadata accessor for CloudCoordinator(0);
    LOBYTE(v74) = sub_10015A5D0(v75, &off_1002BE310);
    swift_unknownObjectRelease();
    if (v74)
    {
      v76 = *(v64 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v77 = objc_autoreleasePoolPush();
      v78 = sub_100169D38(*v52, *(v52 + 8));
      if (!v78)
      {
        v78 = sub_1000F8490().super.isa;
      }

      v121[0] = v78;
      v79 = v78;
      sub_1000EC524(v121);
      objc_autoreleasePoolPop(v77);
      v80 = [v79 recordID];

      v81 = swift_allocObject();
      swift_weakInit();
      v82 = v95;
      sub_1001CC14C(v52, v95, type metadata accessor for DeviceRecord);
      v83 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v84 = (v94 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      sub_1001CC214(v82, v85 + v83, type metadata accessor for DeviceRecord);
      *(v85 + v84) = v81;
      v86 = swift_allocObject();
      *(v86 + 16) = v76;
      *(v86 + 24) = v80;
      *(v86 + 32) = sub_1001CBBA0;
      *(v86 + 40) = v85;
      *(v86 + 48) = 1;
      swift_unknownObjectRetain();

      v87 = v80;

      sub_100153CF4(sub_1001CE26C, v86);

      swift_unknownObjectRelease();
    }

    else
    {
      v88 = static os_log_type_t.error.getter();
      v89 = swift_allocObject();
      *(v89 + 16) = v104;
      v90 = sub_1000EA6CC();
      v92 = v106;
      v91 = v107;
      *(v89 + 56) = &type metadata for String;
      *(v89 + 64) = v92;
      *(v89 + 32) = v90;
      *(v89 + 40) = v93;
      os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v91, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v89);
    }

    v120(0);
    sub_1001CC1B4(v55, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v52, type metadata accessor for DeviceRecord);
  }
}

uint64_t sub_1001A73C4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v302) = a4;
  v299 = a3;
  v301 = a1;
  v264 = type metadata accessor for DispatchWorkItemFlags();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v261 = &v258 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for DispatchQoS();
  v260 = *(v262 - 8);
  __chkstk_darwin(v262);
  v259 = &v258 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v7 - 8);
  v273 = &v258 - v8;
  v272 = type metadata accessor for SoundProfileRecord(0);
  v271 = *(v272 - 8);
  __chkstk_darwin(v272);
  v270 = &v258 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v10 - 8);
  v279 = &v258 - v11;
  v278 = type metadata accessor for MagicPairingSettingsRecord(0);
  v277 = *(v278 - 8);
  __chkstk_darwin(v278);
  v276 = &v258 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v13 - 8);
  v285 = &v258 - v14;
  v284 = type metadata accessor for DeviceSupportInformationRecord(0);
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v282 = &v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for URL();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v287 = &v258 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v17 - 8);
  v293 = &v258 - v18;
  v19 = type metadata accessor for DeviceRecord(0);
  v291 = *(v19 - 8);
  v292 = v19;
  __chkstk_darwin(v19);
  v286 = &v258 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v21 - 8);
  v268 = &v258 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v267 = &v258 - v24;
  __chkstk_darwin(v25);
  v269 = &v258 - v26;
  __chkstk_darwin(v27);
  v275 = &v258 - v28;
  __chkstk_darwin(v29);
  v281 = &v258 - v30;
  __chkstk_darwin(v31);
  v33 = &v258 - v32;
  __chkstk_darwin(v34);
  v36 = &v258 - v35;
  v300 = type metadata accessor for UUID();
  v298 = *(v300 - 8);
  __chkstk_darwin(v300);
  v266 = &v258 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v258 = &v258 - v39;
  __chkstk_darwin(v40);
  v265 = &v258 - v41;
  __chkstk_darwin(v42);
  v274 = &v258 - v43;
  __chkstk_darwin(v44);
  v280 = &v258 - v45;
  __chkstk_darwin(v46);
  v290 = &v258 - v47;
  __chkstk_darwin(v48);
  v294 = &v258 - v49;
  v50 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v51 = qword_100300E38;
  v295 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1002289A0;
  *(v52 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  *(v52 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
  v53 = v301;
  *(v52 + 32) = v301;
  *(v52 + 96) = &type metadata for String;
  v296 = sub_1000EE954();
  *(v52 + 104) = v296;
  v54 = v299;
  *(v52 + 72) = a2;
  *(v52 + 80) = v54;
  *(v52 + 136) = &type metadata for Bool;
  *(v52 + 144) = &protocol witness table for Bool;
  *(v52 + 112) = v302 & 1;
  v301 = v53;

  v297 = v51;
  os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Process Cloud delete recordID: %@ recordType: %@ informDelegate: %d", 67, 2, v52);

  v55 = a2;
  if ((a2 != 0x6552656369766544 || v54 != 0xEC00000064726F63) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v75 = v300;
    if (a2 == 0xD00000000000001ELL && 0x80000001002671E0 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v76 = v296;
      v77 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
      v78 = v301;
      v79 = [v301 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      v80 = v298;
      if ((*(v298 + 48))(v33, 1, v75) != 1)
      {
        (*(v80 + 32))(v290, v33, v75);
        if ([objc_opt_self() isFirstUnlocked])
        {
          v103 = v75;
          sub_100192340();
          v104 = v302;
          if (qword_1002F7A68 != -1)
          {
            swift_once();
          }

          v105 = v289;
          v106 = sub_1000EE91C(v289, qword_100300D48);
          v107 = v288;
          v108 = v287;
          (*(v288 + 16))(v287, v106, v105);
          v109 = sub_10018BDC8(v108);

          v110 = (*(v107 + 8))(v108, v105);
          v75 = v103;
          v77 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
        }

        else
        {
          v121 = static os_log_type_t.error.getter();
          v109 = _swiftEmptyArrayStorage;
          v110 = os_log(_:dso:log:_:_:)(v121, &_mh_execute_header, v297, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
          v104 = v302;
        }

        __chkstk_darwin(v110);
        *(&v258 - 2) = v290;
        v122 = v285;
        sub_10017D118(sub_1001CB4A8, v109, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, v285);

        if ((*(v283 + 48))(v122, 1, v284) == 1)
        {
          sub_1000EEE6C(v122, &qword_1002F8510, &unk_100227B50);
          v123 = static os_log_type_t.error.getter();
          v124 = swift_allocObject();
          *(v124 + 16) = xmmword_100226100;
          v125 = [v78 v77[381]];
          v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v128 = v127;

          *(v124 + 56) = &type metadata for String;
          *(v124 + 64) = v76;
          *(v124 + 32) = v126;
          *(v124 + 40) = v128;
          os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v297, "Unable to find cached info record to delete: %@", 47, 2, v124);
        }

        else
        {
          v129 = v282;
          sub_1001CC214(v122, v282, type metadata accessor for DeviceSupportInformationRecord);
          sub_1001AA79C(v129, v104 & 1);
          sub_1001CC1B4(v129, type metadata accessor for DeviceSupportInformationRecord);
        }

        return (*(v80 + 8))(v290, v75);
      }

      sub_1000EEE6C(v33, &qword_1002F8000, &unk_1002262C0);
      v81 = static os_log_type_t.error.getter();
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100226100;
      v83 = [v78 recordName];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      *(v82 + 56) = &type metadata for String;
      *(v82 + 64) = v76;
      *(v82 + 32) = v84;
      *(v82 + 40) = v86;
      v87 = "Invalid device support identifier: %@";
      goto LABEL_17;
    }

    v111 = v301;
    if (v55 == 0x746553636967614DLL && v54 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v112 = [v111 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = v281;
      UUID.init(uuidString:)();

      v114 = v298;
      if ((*(v298 + 48))(v113, 1, v75) != 1)
      {
        v130 = v280;
        (*(v114 + 32))(v280, v113, v75);
        if ([objc_opt_self() isFirstUnlocked])
        {
          v131 = v75;
          sub_100192340();
          if (qword_1002F7A00 != -1)
          {
            swift_once();
          }

          v132 = v289;
          v133 = sub_1000EE91C(v289, qword_100300BA8);
          v134 = v288;
          v135 = v287;
          (*(v288 + 16))(v287, v133, v132);
          v136 = sub_10018C984(v135);

          v137 = (*(v134 + 8))(v135, v132);
          v75 = v131;
          v130 = v280;
        }

        else
        {
          v140 = static os_log_type_t.error.getter();
          v136 = _swiftEmptyArrayStorage;
          v137 = os_log(_:dso:log:_:_:)(v140, &_mh_execute_header, v297, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
        }

        __chkstk_darwin(v137);
        *(&v258 - 2) = v130;
        v141 = v279;
        sub_10017D118(sub_1001CE118, v136, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v279);

        if ((*(v277 + 48))(v141, 1, v278) == 1)
        {
          sub_1000EEE6C(v141, &unk_1002F9C30, &qword_1002299A0);
          v142 = static os_log_type_t.error.getter();
          v143 = swift_allocObject();
          *(v143 + 16) = xmmword_100226100;
          v144 = [v111 recordName];
          v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v147 = v146;

          v149 = v296;
          v148 = v297;
          *(v143 + 56) = &type metadata for String;
          *(v143 + 64) = v149;
          *(v143 + 32) = v145;
          *(v143 + 40) = v147;
          os_log(_:dso:log:_:_:)(v142, &_mh_execute_header, v148, "Unable to find cached magic record to delete: %@", 48, 2, v143);
        }

        else
        {
          v150 = v276;
          sub_1001CC214(v141, v276, type metadata accessor for MagicPairingSettingsRecord);
          sub_1001AB070(v150, v302 & 1);
          sub_1001CC1B4(v150, type metadata accessor for MagicPairingSettingsRecord);
        }

        return (*(v114 + 8))(v130, v75);
      }

      goto LABEL_31;
    }

    if (v55 == 0xD000000000000012 && 0x80000001002671C0 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v138 = [v111 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = v275;
      UUID.init(uuidString:)();

      v139 = v298;
      if ((*(v298 + 48))(v113, 1, v75) == 1)
      {
LABEL_31:
        sub_1000EEE6C(v113, &qword_1002F8000, &unk_1002262C0);
        v115 = static os_log_type_t.error.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_100226100;
        v116 = [v111 recordName];
        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v120 = v296;
        v89 = v297;
        *(v82 + 56) = &type metadata for String;
        *(v82 + 64) = v120;
        *(v82 + 32) = v117;
        *(v82 + 40) = v119;
        v87 = "Invalid magic device identifier: %@";
        v88 = v115;
        v90 = 35;
        goto LABEL_32;
      }

      v151 = v274;
      (*(v139 + 32))(v274, v113, v75);
      v152 = v273;
      sub_10019493C(v273);
      if ((*(v271 + 48))(v152, 1, v272) == 1)
      {
        v153 = v296;
        sub_1000EEE6C(v152, &qword_1002F84F8, &unk_1002299F0);
      }

      else
      {
        v165 = v152;
        v166 = v270;
        sub_1001CC214(v165, v270, type metadata accessor for SoundProfileRecord);
        if (static UUID.== infix(_:_:)())
        {
          sub_1001AB944(v166, 0);
          if (v302)
          {
            sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
            v167 = static OS_dispatch_queue.main.getter();
            v305 = sub_1001CE10C;
            v306 = 0;
            v302 = v167;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001742E0;
            v304 = &unk_1002C0710;
            v168 = _Block_copy(aBlock);
            v169 = v259;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
            v170 = v261;
            v171 = v264;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v172 = v302;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v168);

            (*(v263 + 8))(v170, v171);
            (*(v260 + 8))(v169, v262);
            sub_100192340();
            OS_dispatch_queue.sync<A>(execute:)();
            sub_1001CC1B4(v270, type metadata accessor for SoundProfileRecord);
            (*(v139 + 8))(v274, v75);
          }

          sub_1001CC1B4(v166, type metadata accessor for SoundProfileRecord);
          return (*(v139 + 8))(v151, v75);
        }

        v153 = v296;
        sub_1001CC1B4(v166, type metadata accessor for SoundProfileRecord);
      }

      v173 = static os_log_type_t.error.getter();
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_100226100;
      v175 = [v301 recordName];
      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = v177;

      *(v174 + 56) = &type metadata for String;
      *(v174 + 64) = v153;
      *(v174 + 32) = v176;
      *(v174 + 40) = v178;
      os_log(_:dso:log:_:_:)(v173, &_mh_execute_header, v297, "Unable to find cached sound profile record to delete: %@", 56, 2, v174);

      return (*(v139 + 8))(v151, v75);
    }

    if (v55 == 0x6563697665444141 && v54 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v304 = &type metadata for AudioAccessoryFeatures;
      v154 = sub_1000F1874();
      v305 = v154;
      v155 = isFeatureEnabled(_:)();
      sub_1000EF824(aBlock);
      if (v155)
      {
        v156 = v296;
        v157 = v301;
        v158 = [v301 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v159 = v269;
        UUID.init(uuidString:)();

        v160 = v298;
        if ((*(v298 + 48))(v159, 1, v75) == 1)
        {
          sub_1000EEE6C(v159, &qword_1002F8000, &unk_1002262C0);
          v81 = static os_log_type_t.error.getter();
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_100226100;
          v161 = [v157 recordName];
          v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v164 = v163;

          *(v82 + 56) = &type metadata for String;
          *(v82 + 64) = v156;
          *(v82 + 32) = v162;
          *(v82 + 40) = v164;
          v87 = "Invalid AADeviceRecord identifier: %@";
LABEL_17:
          v88 = v81;
          v89 = v297;
          v90 = 37;
LABEL_32:
          os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, v87, v90, 2, v82);
        }

        v191 = v265;
        (*(v160 + 32))(v265, v159, v75);
        v304 = &type metadata for AudioAccessoryFeatures;
        v305 = v154;
        v192 = isFeatureEnabled(_:)();
        v193 = sub_1000EF824(aBlock);
        if (v192)
        {
          v194 = [objc_opt_self() isFirstUnlocked];
          v195 = v302;
          if (v194)
          {
            sub_100192340();
            if (qword_1002F7AB8 != -1)
            {
              swift_once();
            }

            v196 = v289;
            v197 = sub_1000EE91C(v289, qword_100300D88);
            v198 = v288;
            v199 = v287;
            (*(v288 + 16))(v287, v197, v196);
            v200 = sub_10018E14C(v199, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

            v193 = (*(v198 + 8))(v199, v196);
            v75 = v300;
            v191 = v265;
          }

          else
          {
            v239 = static os_log_type_t.error.getter();
            v200 = _swiftEmptyArrayStorage;
            v193 = os_log(_:dso:log:_:_:)(v239, &_mh_execute_header, v297, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
          }
        }

        else
        {
          v200 = _swiftEmptyArrayStorage;
          v195 = v302;
        }

        __chkstk_darwin(v193);
        *(&v258 - 2) = v191;
        v240 = sub_10017D320(sub_1001CB464, (&v258 - 4), v200);

        if (v240)
        {
          sub_1001AC244(v240, v195 & 1);

          return (*(v160 + 8))(v191, v75);
        }

        v241 = static os_log_type_t.error.getter();
        v242 = swift_allocObject();
        *(v242 + 16) = xmmword_100226100;
        v243 = [v301 recordName];
        v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v246 = v245;

        *(v242 + 56) = &type metadata for String;
        *(v242 + 64) = v156;
        *(v242 + 32) = v244;
        *(v242 + 40) = v246;
        os_log(_:dso:log:_:_:)(v241, &_mh_execute_header, v297, "Unable to find cached AADeviceRecord to delete: %@", 50, 2, v242);
        goto LABEL_107;
      }
    }

    else if ((v55 != 0xD000000000000011 || 0x800000010026EAC0 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((v55 != 0xD000000000000013 || 0x8000000100267B10 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v255 = static os_log_type_t.error.getter();
        v256 = swift_allocObject();
        *(v256 + 16) = xmmword_100226100;
        v257 = v296;
        *(v256 + 56) = &type metadata for String;
        *(v256 + 64) = v257;
        *(v256 + 32) = v55;
        *(v256 + 40) = v54;

        os_log(_:dso:log:_:_:)(v255, &_mh_execute_header, v297, "Ignoring record delete for unknown record type: %@", 50, 2, v256);
      }

      goto LABEL_88;
    }

    v304 = &type metadata for AudioAccessoryFeatures;
    v179 = sub_1000F1874();
    v305 = v179;
    v180 = isFeatureEnabled(_:)();
    sub_1000EF824(aBlock);
    if (v180)
    {
      v181 = v296;
      v182 = v301;
      v183 = [v301 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v184 = v267;
      UUID.init(uuidString:)();

      v160 = v298;
      if ((*(v298 + 48))(v184, 1, v75) == 1)
      {
        sub_1000EEE6C(v184, &qword_1002F8000, &unk_1002262C0);
        v185 = static os_log_type_t.error.getter();
        v186 = swift_allocObject();
        *(v186 + 16) = xmmword_100226100;
        v187 = [v182 recordName];
        v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v189;

        *(v186 + 56) = &type metadata for String;
        *(v186 + 64) = v181;
        *(v186 + 32) = v188;
        *(v186 + 40) = v190;
        os_log(_:dso:log:_:_:)(v185, &_mh_execute_header, v297, "Invalid AAProxCardsRecord identifier: %@", 40, 2, v186);
      }

      v191 = v258;
      (*(v160 + 32))(v258, v184, v75);
      v304 = &type metadata for AudioAccessoryFeatures;
      v305 = v179;
      v201 = isFeatureEnabled(_:)();
      v202 = sub_1000EF824(aBlock);
      if (v201)
      {
        v203 = [objc_opt_self() isFirstUnlocked];
        v204 = v302;
        if (v203)
        {
          sub_100192340();
          if (qword_1002F79D0 != -1)
          {
            swift_once();
          }

          v205 = v289;
          v206 = sub_1000EE91C(v289, qword_100300B10);
          v207 = v288;
          v208 = v287;
          (*(v288 + 16))(v287, v206, v205);
          v209 = sub_10018E14C(v208, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

          v202 = (*(v207 + 8))(v208, v205);
          v75 = v300;
          v191 = v258;
        }

        else
        {
          v247 = static os_log_type_t.error.getter();
          v209 = _swiftEmptyArrayStorage;
          v202 = os_log(_:dso:log:_:_:)(v247, &_mh_execute_header, v297, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
        }
      }

      else
      {
        v209 = _swiftEmptyArrayStorage;
        v204 = v302;
      }

      __chkstk_darwin(v202);
      *(&v258 - 2) = v191;
      v248 = sub_10017D320(sub_1001CB420, (&v258 - 4), v209);

      if (v248)
      {
        sub_1001ACB04(v248, v204 & 1);

        return (*(v160 + 8))(v191, v75);
      }

      v249 = static os_log_type_t.error.getter();
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_100226100;
      v251 = [v301 recordName];
      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      *(v250 + 56) = &type metadata for String;
      *(v250 + 64) = v181;
      *(v250 + 32) = v252;
      *(v250 + 40) = v254;
      os_log(_:dso:log:_:_:)(v249, &_mh_execute_header, v297, "Unable to find cached AAProxCardsRecord to delete: %@", 53, 2, v250);
LABEL_107:

      return (*(v160 + 8))(v191, v75);
    }

LABEL_88:
    v210 = v301;
    v211 = [v301 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v212 = v268;
    UUID.init(uuidString:)();

    v213 = v298;
    if ((*(v298 + 48))(v212, 1, v75) == 1)
    {
      sub_1000EEE6C(v212, &qword_1002F8000, &unk_1002262C0);
      v214 = static os_log_type_t.error.getter();
      v215 = swift_allocObject();
      *(v215 + 16) = xmmword_100226100;
      v216 = [v210 recordName];
      v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v219 = v218;

      v221 = v296;
      v220 = v297;
      *(v215 + 56) = &type metadata for String;
      *(v215 + 64) = v221;
      *(v215 + 32) = v217;
      *(v215 + 40) = v219;
      os_log(_:dso:log:_:_:)(v214, &_mh_execute_header, v220, "Invalid HMDeviceCloudRecord identifier: %@", 42, 2, v215);
    }

    v222 = v266;
    (*(v213 + 32))(v266, v212, v75);
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v223 = v289;
      v224 = sub_1000EE91C(v289, qword_100300C40);
      v225 = v288;
      v226 = v287;
      (*(v288 + 16))(v287, v224, v223);
      v227 = sub_10018E14C(v226, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      v228 = (*(v225 + 8))(v226, v223);
      v222 = v266;
    }

    else
    {
      v229 = static os_log_type_t.error.getter();
      v227 = _swiftEmptyArrayStorage;
      v228 = os_log(_:dso:log:_:_:)(v229, &_mh_execute_header, v297, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    }

    __chkstk_darwin(v228);
    *(&v258 - 2) = v222;
    v230 = sub_10017D320(sub_1001CB3DC, (&v258 - 4), v227);

    if (v230)
    {
      sub_1001AD3A0(v230, v302 & 1);
    }

    else
    {
      v231 = static os_log_type_t.error.getter();
      v232 = swift_allocObject();
      *(v232 + 16) = xmmword_100226100;
      v233 = [v210 recordName];
      v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v236 = v235;

      v238 = v296;
      v237 = v297;
      *(v232 + 56) = &type metadata for String;
      *(v232 + 64) = v238;
      *(v232 + 32) = v234;
      *(v232 + 40) = v236;
      os_log(_:dso:log:_:_:)(v231, &_mh_execute_header, v237, "Unable to find cached HMDeviceCloudRecord to delete: %@", 55, 2, v232);
    }

    return (*(v213 + 8))(v222, v75);
  }

  v56 = v301;
  v57 = [v301 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v58 = v298;
  v59 = v300;
  if ((*(v298 + 48))(v36, 1, v300) == 1)
  {
    sub_1000EEE6C(v36, &qword_1002F8000, &unk_1002262C0);
    v60 = static os_log_type_t.error.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    v62 = [v56 recordName];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v67 = v296;
    v66 = v297;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = v67;
    *(v61 + 32) = v63;
    *(v61 + 40) = v65;
    os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v66, "Invalid device identifier: %@", 29, 2, v61);
  }

  v68 = v294;
  (*(v58 + 32))(v294, v36, v59);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v69 = v289;
    v70 = sub_1000EE91C(v289, qword_100300AF0);
    v71 = v288;
    v72 = v287;
    (*(v288 + 16))(v287, v70, v69);
    v73 = sub_10018B20C(v72);

    v74 = (*(v71 + 8))(v72, v69);
  }

  else
  {
    v91 = static os_log_type_t.error.getter();
    v73 = _swiftEmptyArrayStorage;
    v74 = os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v297, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
  }

  __chkstk_darwin(v74);
  *(&v258 - 2) = v68;
  v92 = v293;
  sub_10017D118(sub_1001CB4D8, v73, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, v293);

  if ((*(v291 + 48))(v92, 1, v292) == 1)
  {
    sub_1000EEE6C(v92, &qword_1002F8520, &unk_100227B60);
    v93 = static os_log_type_t.error.getter();
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_100226100;
    v95 = [v301 recordName];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v100 = v296;
    v99 = v297;
    *(v94 + 56) = &type metadata for String;
    *(v94 + 64) = v100;
    *(v94 + 32) = v96;
    *(v94 + 40) = v98;
    v68 = v294;
    os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v99, "Unable to find cached record to delete: %@", 42, 2, v94);
  }

  else
  {
    v101 = v286;
    sub_1001CC214(v92, v286, type metadata accessor for DeviceRecord);
    sub_1001A9E6C(v101, v302 & 1);
    sub_1001CC1B4(v101, type metadata accessor for DeviceRecord);
  }

  return (*(v58 + 8))(v68, v59);
}

uint64_t sub_1001A9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Handling Error deleting Record - %@", 35, 2, v5);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    v14 = sub_1000EA6CC();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Deleted Device Record from cloud - %@", 37, 2, v13);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001A9E6C(a2, 0);
    }
  }

  return result;
}

uint64_t sub_1001A9E6C(uint64_t a1, int a2)
{
  v75 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v3 - 8);
  v72 = &v62 - v4;
  v5 = type metadata accessor for URL();
  v71 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v62 - v8;
  __chkstk_darwin(v9);
  v70 = &v62 - v10;
  v73 = type metadata accessor for DeviceRecord(0);
  v62 = *(v73 - 8);
  __chkstk_darwin(v73);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v67 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  strcpy((v15 + 32), "DeviceRecord");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v64 = v75 & 1;
  *(v15 + 72) = v75 & 1;
  sub_1001CC14C(a1, v12, type metadata accessor for DeviceRecord);
  v17 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v66 = v16;
  *(v15 + 112) = v17;
  *(v15 + 120) = v18;
  v65 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v15);

  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F8490().super.isa;
  }

  v77[0] = isa;
  v21 = isa;
  sub_1000EC524(v77);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 encryptedValues];

  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];
  swift_unknownObjectRelease();

  v25 = v71;
  if (v24 && (v76 = v24, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v77[0];
    v26 = v77[1];
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v26 = v28;
  }

  v63 = a1;
  v29 = v74;
  v30 = sub_100192340();
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000EE91C(v5, qword_100300AF0);
  v32 = v70;
  v33 = (*(v25 + 16))(v70, v31, v5);
  __chkstk_darwin(v33);
  *(&v62 - 4) = v30;
  *(&v62 - 3) = v27;
  *(&v62 - 2) = v26;
  *(&v62 - 1) = v32;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = *(v25 + 8);
  v34(v32, v5);
  v35 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v36 = v72;
  URL.init(string:)();
  result = (*(v25 + 48))(v36, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v25 + 32);
    v39 = v68;
    v38(v68, v36, v5);
    v40 = v69;
    URL.appendingPathComponent(_:)();
    v41 = (v34)(v39, v5);
    __chkstk_darwin(v41);
    *(&v62 - 4) = v35;
    *(&v62 - 3) = v27;
    v73 = v27;
    *(&v62 - 2) = v26;
    *(&v62 - 1) = v40;
    OS_dispatch_queue.sync<A>(execute:)();

    v34(v40, v5);
    v42 = v74;
    v43 = v75;
    if ((v75 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&unk_1002F9CE0, &qword_100229A08);
      v44 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100226100;
      sub_1001CC14C(v63, v45 + v44, type metadata accessor for DeviceRecord);
      sub_100181FF0(v45, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v46 = static os_log_type_t.default.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100226C80;
      v48 = v66;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v48;
      v49 = v73;
      *(v47 + 32) = v73;
      *(v47 + 40) = v26;
      *(v47 + 96) = &type metadata for Bool;
      *(v47 + 104) = &protocol witness table for Bool;
      *(v47 + 72) = v64;

      v50 = v65;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v65, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v47);

      if (v43)
      {
        v51 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v52 = *(v42 + v51);

        v53 = sub_10017D5B4(v49, v26, v52);

        if (v53)
        {
          swift_beginAccess();
          v54 = sub_1001C9F04(v49, v26);
          v56 = v55;
          swift_endAccess();
          v57 = static os_log_type_t.default.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100226100;
          v59 = v66;
          *(v58 + 56) = &type metadata for String;
          *(v58 + 64) = v59;
          v60 = 0x3E6C6C754E3CLL;
          if (v56)
          {
            v60 = v54;
          }

          v61 = 0xE600000000000000;
          if (v56)
          {
            v61 = v56;
          }

          *(v58 + 32) = v60;
          *(v58 + 40) = v61;
          os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v50, "Removed %@ from incomingPairedDevices", 37, 2, v58);
        }
      }

      sub_1001C40D4(v49, v26, v43 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AA79C(uint64_t a1, int a2)
{
  v75 = a1;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v3 - 8);
  v74 = &v64 - v4;
  v5 = type metadata accessor for URL();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v64 - v8;
  __chkstk_darwin(v9);
  v73 = &v64 - v10;
  v11 = type metadata accessor for DeviceSupportInformationRecord(0);
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v15 = qword_100300E38;
  v66 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002289A0;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_1000EE954();
  *(v16 + 64) = v17;
  *(v16 + 32) = 0xD00000000000001ELL;
  *(v16 + 40) = 0x80000001002671E0;
  v76 = 0x80000001002671E0;
  *(v16 + 96) = &type metadata for Bool;
  *(v16 + 104) = &protocol witness table for Bool;
  v71 = a2;
  v65 = a2 & 1;
  *(v16 + 72) = a2 & 1;
  v18 = v75;
  sub_1001CC14C(v75, v13, type metadata accessor for DeviceSupportInformationRecord);
  v19 = String.init<A>(describing:)();
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  v67 = v17;
  *(v16 + 112) = v19;
  *(v16 + 120) = v20;
  v68 = v15;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v16);

  v21 = objc_autoreleasePoolPush();
  sub_100135EE0(v18, v79);
  objc_autoreleasePoolPop(v21);
  v22 = v79[0];
  v23 = [(objc_class *)v79[0] encryptedValues];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();

  v26 = v72;
  if (v25 && (v78 = v25, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v79[0];
    v27 = v79[1];
  }

  else
  {
    v28 = UUID.uuidString.getter();
    v27 = v29;
  }

  v30 = v77;
  v31 = sub_100192340();
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EE91C(v5, qword_100300D48);
  v33 = v73;
  v34 = (*(v26 + 16))(v73, v32, v5);
  __chkstk_darwin(v34);
  *(&v64 - 4) = v31;
  *(&v64 - 3) = v28;
  *(&v64 - 2) = v27;
  *(&v64 - 1) = v33;
  OS_dispatch_queue.sync<A>(execute:)();

  v35 = *(v26 + 8);
  v35(v33, v5);
  v36 = v27;
  v37 = v28;
  v38 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v39 = v74;
  URL.init(string:)();
  result = (*(v26 + 48))(v39, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v69;
    (*(v26 + 32))(v69, v39, v5);
    v42 = v70;
    URL.appendingPathComponent(_:)();
    v43 = (v35)(v41, v5);
    __chkstk_darwin(v43);
    *(&v64 - 4) = v38;
    *(&v64 - 3) = v37;
    v74 = v37;
    *(&v64 - 2) = v36;
    *(&v64 - 1) = v42;
    OS_dispatch_queue.sync<A>(execute:)();

    v35(v42, v5);
    v44 = v77;
    v45 = v71;
    if ((v71 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9CD8, &qword_100229A00);
      v46 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100226100;
      sub_1001CC14C(v75, v47 + v46, type metadata accessor for DeviceSupportInformationRecord);
      sub_10017F63C(v47);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v48 = static os_log_type_t.default.getter();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100226C80;
      v50 = v67;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v50;
      v51 = v74;
      *(v49 + 32) = v74;
      *(v49 + 40) = v36;
      *(v49 + 96) = &type metadata for Bool;
      *(v49 + 104) = &protocol witness table for Bool;
      *(v49 + 72) = v65;

      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v68, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v49);

      if (v45)
      {
        v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v53 = *(v44 + v52);

        v54 = sub_10017D5B4(v51, v36, v53);

        if (v54)
        {
          swift_beginAccess();
          v55 = sub_1001C9F04(v51, v36);
          v57 = v56;
          swift_endAccess();
          v58 = static os_log_type_t.default.getter();
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_100226100;
          v61 = v67;
          v60 = v68;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = v61;
          v62 = 0x3E6C6C754E3CLL;
          if (v57)
          {
            v62 = v55;
          }

          v63 = 0xE600000000000000;
          if (v57)
          {
            v63 = v57;
          }

          *(v59 + 32) = v62;
          *(v59 + 40) = v63;
          os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v60, "Removed %@ from incomingPairedDevices", 37, 2, v59);
        }
      }

      sub_1001C40D4(v51, v36, v45 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AB070(uint64_t a1, int a2)
{
  v76 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v3 - 8);
  v73 = &v63 - v4;
  v70 = type metadata accessor for URL();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v63 - v7;
  __chkstk_darwin(v8);
  v71 = &v63 - v9;
  v10 = type metadata accessor for MagicPairingSettingsRecord(0);
  v63 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v68 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  strcpy((v15 + 32), "MagicSettings");
  *(v15 + 46) = -4864;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v66 = v76 & 1;
  *(v15 + 72) = v76 & 1;
  sub_1001CC14C(a1, v12, type metadata accessor for MagicPairingSettingsRecord);
  v17 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v74 = v16;
  *(v15 + 112) = v17;
  *(v15 + 120) = v18;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v15);

  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(a1 + *(v10 + 20)), *(a1 + *(v10 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v78[0] = isa;
  v21 = isa;
  sub_10011A7B0(v78);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 encryptedValues];

  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];
  swift_unknownObjectRelease();

  v25 = v72;
  v69 = v14;
  if (v24 && (v77 = v24, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v70;
    v28 = v78[0];
    v27 = v78[1];
  }

  else
  {
    v26 = v70;
    v28 = UUID.uuidString.getter();
  }

  v29 = v27;
  v64 = a1;
  v30 = v75;
  v31 = sub_100192340();
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EE91C(v26, qword_100300BA8);
  v33 = v71;
  v34 = (*(v25 + 16))(v71, v32, v26);
  __chkstk_darwin(v34);
  *(&v63 - 4) = v31;
  *(&v63 - 3) = v28;
  v70 = v29;
  *(&v63 - 2) = v29;
  *(&v63 - 1) = v33;
  OS_dispatch_queue.sync<A>(execute:)();

  v35 = *(v25 + 8);
  v35(v33, v26);
  v36 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v37 = v73;
  URL.init(string:)();
  result = (*(v25 + 48))(v37, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v65;
    (*(v25 + 32))(v65, v37, v26);
    v40 = v67;
    URL.appendingPathComponent(_:)();
    v41 = (v35)(v39, v26);
    __chkstk_darwin(v41);
    *(&v63 - 4) = v36;
    *(&v63 - 3) = v28;
    v73 = v28;
    v42 = v70;
    *(&v63 - 2) = v70;
    *(&v63 - 1) = v40;
    OS_dispatch_queue.sync<A>(execute:)();

    v35(v40, v26);
    v43 = v75;
    v44 = v76;
    if ((v76 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&unk_1002F9CF0, &unk_100229A10);
      v45 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100226100;
      sub_1001CC14C(v64, v46 + v45, type metadata accessor for MagicPairingSettingsRecord);
      sub_10017EEAC(v46);

      swift_unknownObjectRelease();
    }

    v47 = static os_log_type_t.default.getter();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100226C80;
    v50 = v73;
    v49 = v74;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = v49;
    *(v48 + 32) = v50;
    *(v48 + 40) = v42;
    *(v48 + 96) = &type metadata for Bool;
    *(v48 + 104) = &protocol witness table for Bool;
    *(v48 + 72) = v66;

    v51 = v69;
    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v69, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v48);

    if (v44)
    {
      v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
      swift_beginAccess();
      v53 = *(v43 + v52);

      v54 = sub_10017D5B4(v50, v42, v53);

      if (v54)
      {
        swift_beginAccess();
        v55 = sub_1001C9F04(v50, v42);
        v57 = v56;
        swift_endAccess();
        v58 = static os_log_type_t.default.getter();
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_100226100;
        v60 = v74;
        *(v59 + 56) = &type metadata for String;
        *(v59 + 64) = v60;
        v61 = 0x3E6C6C754E3CLL;
        if (v57)
        {
          v61 = v55;
        }

        v62 = 0xE600000000000000;
        if (v57)
        {
          v62 = v57;
        }

        *(v59 + 32) = v61;
        *(v59 + 40) = v62;
        os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v51, "Removed %@ from incomingPairedDevices", 37, 2, v59);
      }
    }

    sub_1001C40D4(v50, v42, v44 & 1);
  }

  return result;
}

uint64_t sub_1001AB944(uint64_t a1, int a2)
{
  v79 = a2;
  v3 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v3 - 8);
  v75 = &v64 - v4;
  v5 = type metadata accessor for URL();
  v73 = *(v5 - 8);
  __chkstk_darwin(v5);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v64 - v8;
  __chkstk_darwin(v9);
  v74 = &v64 - v10;
  v76 = type metadata accessor for SoundProfileRecord(0);
  v65 = *(v76 - 8);
  __chkstk_darwin(v76);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v68 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = 0x80000001002671C0;
  v77 = 0x80000001002671C0;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v67 = v79 & 1;
  *(v15 + 72) = v79 & 1;
  sub_1001CC14C(a1, v12, type metadata accessor for SoundProfileRecord);
  v17 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v69 = v16;
  *(v15 + 112) = v17;
  *(v15 + 120) = v18;
  v70 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v15);

  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F82C4().super.isa;
  }

  v81[0] = isa;
  v21 = isa;
  sub_1000FD23C(v81);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 encryptedValues];

  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];
  swift_unknownObjectRelease();

  v25 = v73;
  v66 = a1;
  if (v24 && (v80 = v24, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v81[0];
    v26 = v81[1];
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v26 = v28;
  }

  v29 = v78;
  v30 = sub_100192340();
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000EE91C(v5, qword_100300B50);
  v32 = v74;
  v33 = (*(v25 + 16))(v74, v31, v5);
  __chkstk_darwin(v33);
  *(&v64 - 4) = v30;
  *(&v64 - 3) = v27;
  *(&v64 - 2) = v26;
  *(&v64 - 1) = v32;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = *(v25 + 8);
  v34(v32, v5);
  v35 = v26;
  v36 = v27;
  v37 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v38 = v75;
  URL.init(string:)();
  result = (*(v25 + 48))(v38, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v71;
    (*(v25 + 32))(v71, v38, v5);
    v41 = v72;
    URL.appendingPathComponent(_:)();
    v42 = (v34)(v40, v5);
    __chkstk_darwin(v42);
    *(&v64 - 4) = v37;
    *(&v64 - 3) = v36;
    v76 = v36;
    *(&v64 - 2) = v35;
    *(&v64 - 1) = v41;
    OS_dispatch_queue.sync<A>(execute:)();

    v34(v41, v5);
    v43 = v78;
    v44 = v79;
    v45 = v35;
    if ((v79 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9D58, &unk_100229A30);
      v46 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100226100;
      sub_1001CC14C(v66, v47 + v46, type metadata accessor for SoundProfileRecord);
      sub_10017E918(v47);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v48 = static os_log_type_t.default.getter();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100226C80;
      v50 = v69;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v50;
      v51 = v76;
      *(v49 + 32) = v76;
      *(v49 + 40) = v45;
      *(v49 + 96) = &type metadata for Bool;
      *(v49 + 104) = &protocol witness table for Bool;
      *(v49 + 72) = v67;

      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v70, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v49);

      if (v44)
      {
        v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v53 = *(v43 + v52);

        v54 = sub_10017D5B4(v51, v45, v53);

        if (v54)
        {
          swift_beginAccess();
          v55 = sub_1001C9F04(v51, v45);
          v57 = v56;
          swift_endAccess();
          v58 = static os_log_type_t.default.getter();
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_100226100;
          v61 = v69;
          v60 = v70;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = v61;
          v62 = 0x3E6C6C754E3CLL;
          if (v57)
          {
            v62 = v55;
          }

          v63 = 0xE600000000000000;
          if (v57)
          {
            v63 = v57;
          }

          *(v59 + 32) = v62;
          *(v59 + 40) = v63;
          os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v60, "Removed %@ from incomingPairedDevices", 37, 2, v59);
        }
      }

      sub_1001C40D4(v51, v45, v44 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AC244(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v4 - 8);
  v73 = &v63 - v5;
  v6 = type metadata accessor for URL();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  __chkstk_darwin(v10);
  v72 = &v63 - v11;
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v13 = qword_100300E38;
  v66 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002289A0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  *(v14 + 64) = v15;
  strcpy((v14 + 32), "AADeviceRecord");
  *(v14 + 47) = -18;
  *(v14 + 96) = &type metadata for Bool;
  *(v14 + 104) = &protocol witness table for Bool;
  v70 = a2;
  v64 = a2 & 1;
  *(v14 + 72) = a2 & 1;
  v76[0] = a1;
  type metadata accessor for AADeviceRecord(0);
  v16 = a1;
  v17 = String.init<A>(describing:)();
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v15;
  v65 = v15;
  *(v14 + 112) = v17;
  *(v14 + 120) = v18;
  v67 = v13;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v14);

  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v16[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v16[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F89F4().super.isa;
  }

  v21 = v71;
  v76[0] = isa;
  v22 = isa;
  sub_1001675F4(v76);
  objc_autoreleasePoolPop(v19);
  v23 = [v22 encryptedValues];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();

  v63 = v16;
  if (v25 && (v75 = v25, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v76[0];
    v27 = v76[1];
  }

  else
  {
    v26 = UUID.uuidString.getter();
    v27 = v28;
  }

  v29 = v74;
  v30 = sub_100192340();
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000EE91C(v6, qword_100300D88);
  v32 = v72;
  v33 = (*(v21 + 16))(v72, v31, v6);
  __chkstk_darwin(v33);
  *(&v63 - 4) = v30;
  *(&v63 - 3) = v26;
  *(&v63 - 2) = v27;
  *(&v63 - 1) = v32;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = *(v21 + 8);
  v34(v32, v6);
  v35 = v27;
  v36 = v26;
  v37 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v38 = v73;
  URL.init(string:)();
  result = (*(v21 + 48))(v38, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v68;
    (*(v21 + 32))(v68, v38, v6);
    v41 = v69;
    URL.appendingPathComponent(_:)();
    v42 = (v34)(v40, v6);
    __chkstk_darwin(v42);
    *(&v63 - 4) = v37;
    *(&v63 - 3) = v36;
    v73 = v36;
    *(&v63 - 2) = v35;
    *(&v63 - 1) = v41;
    OS_dispatch_queue.sync<A>(execute:)();

    v34(v41, v6);
    v43 = v74;
    v44 = v70;
    if ((v70 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002290F0;
      v46 = v63;
      *(v45 + 32) = v63;
      v47 = v46;
      sub_10018150C(v45, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v48 = static os_log_type_t.default.getter();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100226C80;
      v50 = v65;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v50;
      v51 = v73;
      *(v49 + 32) = v73;
      *(v49 + 40) = v35;
      *(v49 + 96) = &type metadata for Bool;
      *(v49 + 104) = &protocol witness table for Bool;
      *(v49 + 72) = v64;

      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v67, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v49);

      if (v44)
      {
        v52 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v53 = *(v43 + v52);

        v54 = sub_10017D5B4(v51, v35, v53);

        if (v54)
        {
          swift_beginAccess();
          v55 = sub_1001C9F04(v51, v35);
          v57 = v56;
          swift_endAccess();
          v58 = static os_log_type_t.default.getter();
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_100226100;
          v60 = v65;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = v60;
          v61 = 0x3E6C6C754E3CLL;
          if (v57)
          {
            v61 = v55;
          }

          v62 = 0xE600000000000000;
          if (v57)
          {
            v62 = v57;
          }

          *(v59 + 32) = v61;
          *(v59 + 40) = v62;
          os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v67, "Removed %@ from incomingPairedDevices", 37, 2, v59, v63);
        }
      }

      sub_1001C40D4(v51, v35, v44 & 1);
    }
  }

  return result;
}

uint64_t sub_1001ACB04(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v4 - 8);
  v70 = &v61 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v61 - v10;
  __chkstk_darwin(v11);
  v69 = &v61 - v12;
  v13 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v64 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  *(v15 + 32) = 0xD000000000000011;
  *(v15 + 40) = 0x800000010026EAC0;
  v71 = 0x800000010026EAC0;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v68 = a2;
  v62 = a2 & 1;
  *(v15 + 72) = a2 & 1;
  v74[0] = a1;
  type metadata accessor for AAProxCardsRecord(0);
  v17 = a1;
  v18 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v63 = v16;
  *(v15 + 112) = v18;
  *(v15 + 120) = v19;
  v65 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v15);

  v20 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v17[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v17[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F882C().super.isa;
  }

  v74[0] = isa;
  v22 = isa;
  sub_1000F6FF4(v74);
  objc_autoreleasePoolPop(v20);
  v23 = [v22 encryptedValues];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();

  if (v25 && (v73 = v25, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v74[0];
    v26 = v74[1];
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v26 = v28;
  }

  v61 = v17;
  v29 = v72;
  v30 = sub_100192340();
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000EE91C(v6, qword_100300B10);
  v32 = v69;
  v33 = (*(v7 + 16))(v69, v31, v6);
  __chkstk_darwin(v33);
  *(&v61 - 4) = v30;
  *(&v61 - 3) = v27;
  *(&v61 - 2) = v26;
  *(&v61 - 1) = v32;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = *(v7 + 8);
  v34(v32, v6);
  v35 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v36 = v70;
  URL.init(string:)();
  result = (*(v7 + 48))(v36, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = v66;
    (*(v7 + 32))(v66, v36, v6);
    v39 = v67;
    URL.appendingPathComponent(_:)();
    v40 = (v34)(v38, v6);
    __chkstk_darwin(v40);
    *(&v61 - 4) = v35;
    *(&v61 - 3) = v27;
    v70 = v27;
    *(&v61 - 2) = v26;
    *(&v61 - 1) = v39;
    OS_dispatch_queue.sync<A>(execute:)();

    v34(v39, v6);
    v41 = v68;
    if ((v68 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1002290F0;
      v43 = v61;
      *(v42 + 32) = v61;
      v44 = v43;
      sub_100180998(v42, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v45 = static os_log_type_t.default.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100226C80;
      v47 = v63;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v47;
      v48 = v70;
      *(v46 + 32) = v70;
      *(v46 + 40) = v26;
      *(v46 + 96) = &type metadata for Bool;
      *(v46 + 104) = &protocol witness table for Bool;
      *(v46 + 72) = v62;

      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v65, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v46);

      v49 = v72;
      if (v41)
      {
        v50 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v51 = *(v49 + v50);

        v52 = sub_10017D5B4(v48, v26, v51);

        if (v52)
        {
          swift_beginAccess();
          v53 = sub_1001C9F04(v48, v26);
          v55 = v54;
          swift_endAccess();
          v56 = static os_log_type_t.default.getter();
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100226100;
          v58 = v63;
          *(v57 + 56) = &type metadata for String;
          *(v57 + 64) = v58;
          v59 = 0x3E6C6C754E3CLL;
          if (v55)
          {
            v59 = v53;
          }

          v60 = 0xE600000000000000;
          if (v55)
          {
            v60 = v55;
          }

          *(v57 + 32) = v59;
          *(v57 + 40) = v60;
          os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v65, "Removed %@ from incomingPairedDevices", 37, 2, v57);
        }
      }

      sub_1001C40D4(v48, v26, v41 & 1);
    }
  }

  return result;
}

uint64_t sub_1001AD3A0(void *a1, int a2)
{
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v4 - 8);
  v70 = &v61 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v61 - v10;
  __chkstk_darwin(v11);
  v69 = &v61 - v12;
  v13 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v14 = qword_100300E38;
  v64 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002289A0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v15 + 64) = v16;
  *(v15 + 32) = 0xD000000000000013;
  *(v15 + 40) = 0x8000000100267B10;
  v71 = 0x8000000100267B10;
  *(v15 + 96) = &type metadata for Bool;
  *(v15 + 104) = &protocol witness table for Bool;
  v68 = a2;
  v62 = a2 & 1;
  *(v15 + 72) = a2 & 1;
  v74[0] = a1;
  type metadata accessor for HMDeviceCloudRecord(0);
  v17 = a1;
  v18 = String.init<A>(describing:)();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  v63 = v16;
  *(v15 + 112) = v18;
  *(v15 + 120) = v19;
  v65 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Remove cached device file (%@, informDelegate: %d): %@", 54, 2, v15);

  v20 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v17[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v17[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F8660().super.isa;
  }

  v74[0] = isa;
  v22 = isa;
  sub_10012F138(v74);
  objc_autoreleasePoolPop(v20);
  v23 = [v22 encryptedValues];

  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();

  if (v25 && (v73 = v25, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v74[0];
    v26 = v74[1];
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v26 = v28;
  }

  v61 = v17;
  v29 = v72;
  v30 = sub_100192340();
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v31 = sub_1000EE91C(v6, qword_100300C40);
  v32 = v69;
  v33 = (*(v7 + 16))(v69, v31, v6);
  __chkstk_darwin(v33);
  *(&v61 - 4) = v30;
  *(&v61 - 3) = v27;
  *(&v61 - 2) = v26;
  *(&v61 - 1) = v32;
  OS_dispatch_queue.sync<A>(execute:)();

  v34 = *(v7 + 8);
  v34(v32, v6);
  v35 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v36 = v70;
  URL.init(string:)();
  result = (*(v7 + 48))(v36, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = v66;
    (*(v7 + 32))(v66, v36, v6);
    v39 = v67;
    URL.appendingPathComponent(_:)();
    v40 = (v34)(v38, v6);
    __chkstk_darwin(v40);
    *(&v61 - 4) = v35;
    *(&v61 - 3) = v27;
    v70 = v27;
    *(&v61 - 2) = v26;
    *(&v61 - 1) = v39;
    OS_dispatch_queue.sync<A>(execute:)();

    v34(v39, v6);
    v41 = v68;
    if ((v68 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1002290F0;
      v43 = v61;
      *(v42 + 32) = v61;
      v44 = v43;
      sub_10017FDB0(v42, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_, sub_100172070);

      swift_unknownObjectRelease();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v45 = static os_log_type_t.default.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100226C80;
      v47 = v63;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v47;
      v48 = v70;
      *(v46 + 32) = v70;
      *(v46 + 40) = v26;
      *(v46 + 96) = &type metadata for Bool;
      *(v46 + 104) = &protocol witness table for Bool;
      *(v46 + 72) = v62;

      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v65, "Remove all locally cached device files for %@ in AudioAccessoryZone (informDelegate: %d)", 88, 2, v46);

      v49 = v72;
      if (v41)
      {
        v50 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
        swift_beginAccess();
        v51 = *(v49 + v50);

        v52 = sub_10017D5B4(v48, v26, v51);

        if (v52)
        {
          swift_beginAccess();
          v53 = sub_1001C9F04(v48, v26);
          v55 = v54;
          swift_endAccess();
          v56 = static os_log_type_t.default.getter();
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100226100;
          v58 = v63;
          *(v57 + 56) = &type metadata for String;
          *(v57 + 64) = v58;
          v59 = 0x3E6C6C754E3CLL;
          if (v55)
          {
            v59 = v53;
          }

          v60 = 0xE600000000000000;
          if (v55)
          {
            v60 = v55;
          }

          *(v57 + 32) = v59;
          *(v57 + 40) = v60;
          os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v65, "Removed %@ from incomingPairedDevices", 37, 2, v57);
        }
      }

      sub_1001C40D4(v48, v26, v41 & 1);
    }
  }

  return result;
}

uint64_t sub_1001ADC50(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v101 = a3;
  v102 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v89 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = (&v89 - v12);
  __chkstk_darwin(v13);
  v15 = &v89 - v14;
  v96 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v96);
  v95 = &v89 - v16;
  v17 = type metadata accessor for DeviceSupportInformationRecord(0);
  v97 = *(v17 - 8);
  v98 = v17;
  __chkstk_darwin(v17);
  v90 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = v3;
  v92 = &v89 - v20;
  v21 = sub_100192340();
  v100 = a1;
  v22 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v25 = sub_1000EE91C(v7, qword_100300D48);
  (*(v8 + 16))(v15, v25, v7);
  v26 = objc_autoreleasePoolPush();
  v94 = v15;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v27 = v99;
  v93 = v24;
  URL.appendingPathComponent(_:)();
  v28 = *(v8 + 8);
  v28(v10, v7);
  objc_autoreleasePoolPop(v26);
  v29 = objc_autoreleasePoolPush();
  __chkstk_darwin(v29);
  *(&v89 - 2) = v27;
  *(&v89 - 1) = v21;
  v30 = v95;
  v31 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v29);
  v28(v27, v7);

  v28(v94, v7);
  if ((*(v97 + 48))(v30, 1, v98) == 1)
  {
    sub_1000EEE6C(v30, &qword_1002F8510, &unk_100227B50);
    v32 = static os_log_type_t.default.getter();
    v33 = v100;
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v34 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100226100;
    v36 = v33;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_1000EE954();
    *(v35 + 32) = v38;
    *(v35 + 40) = v40;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v34, "Add DeviceSupportInformationRecord: %@", 38, 2, v35);

    v41 = v36;
    v42 = v89;
    UUID.init()();
    v43 = v92;
    v44 = sub_10013403C(v42, v41, v92);
LABEL_15:
    v75 = v91;
    v76 = *(v91 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    __chkstk_darwin(v44);
    *(&v89 - 2) = v76;
    *(&v89 - 1) = v43;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v31)
    {

      v77 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100226100;
      v103[0] = v31;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v79 = String.init<A>(describing:)();
      v81 = v80;
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_1000EE954();
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v34, "Unable to encode DeviceSupportInformationRecord with error: %@", 62, 2, v78);

      sub_1001266E0();
      v82 = swift_allocError();
      *v83 = v31 | 0x4000000000000000;
      swift_errorRetain();
      v102(v82);
    }

    else
    {

      v102(0);
      v84 = objc_autoreleasePoolPush();
      sub_100135EE0(v43, v103);
      objc_autoreleasePoolPop(v84);
      v85 = v103[0];
      sub_100193560();
      v86 = swift_allocObject();
      *(v86 + 16) = v75;
      *(v86 + 24) = v85;

      v87 = v85;
      sub_100154534(v87, 1, sub_1001CBB40, v86);

      swift_unknownObjectRelease();
    }

    v62 = v43;
    return sub_1001CC1B4(v62, type metadata accessor for DeviceSupportInformationRecord);
  }

  v45 = v90;
  sub_1001CC214(v30, v90, type metadata accessor for DeviceSupportInformationRecord);
  v46 = v100;
  if ((sub_100137850(v100) & 1) != 0 || (v47 = objc_autoreleasePoolPush(), sub_100135EE0(v45, v103), objc_autoreleasePoolPop(v47), v48 = v103[0], v49 = [(objc_class *)v103[0] recordChangeTag], v48, !v49))
  {
    v99 = 0;
    v63 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v34 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100226C80;
    v65 = sub_100133818();
    v66 = v45;
    v68 = v67;
    *(v64 + 56) = &type metadata for String;
    v69 = sub_1000EE954();
    *(v64 + 64) = v69;
    *(v64 + 32) = v65;
    *(v64 + 40) = v68;
    v70 = v46;
    v71 = [v70 description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    *(v64 + 96) = &type metadata for String;
    *(v64 + 104) = v69;
    *(v64 + 72) = v72;
    *(v64 + 80) = v74;
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v34, "Updating cached DeviceSupportInformationRecord: %@ with %@", 58, 2, v64);

    v43 = v92;
    sub_1001CC14C(v66, v92, type metadata accessor for DeviceSupportInformationRecord);
    sub_100136BD0(v70);
    v44 = sub_1001CC1B4(v66, type metadata accessor for DeviceSupportInformationRecord);
    v31 = v99;
    goto LABEL_15;
  }

  v50 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v51 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100226C80;
  v53 = sub_100133818();
  v55 = v54;
  *(v52 + 56) = &type metadata for String;
  v56 = sub_1000EE954();
  *(v52 + 64) = v56;
  *(v52 + 32) = v53;
  *(v52 + 40) = v55;
  v57 = v46;
  v58 = [v57 description];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  *(v52 + 96) = &type metadata for String;
  *(v52 + 104) = v56;
  *(v52 + 72) = v59;
  *(v52 + 80) = v61;
  os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "No change from cached %@ [to] %@", 32, 2, v52);

  v102(0);
  v62 = v90;
  return sub_1001CC1B4(v62, type metadata accessor for DeviceSupportInformationRecord);
}

uint64_t sub_1001AE714(uint64_t a1, uint64_t a2)
{
  v109 = type metadata accessor for Date();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v107);
  v113 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v123 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v122 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v121 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v121);
  v124 = &v98 - v15;
  v16 = type metadata accessor for DeviceSupportInformationRecord(0);
  v126 = *(v16 - 8);
  __chkstk_darwin(v16);
  v115 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v17;
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v112 = v20;
  v22 = qword_100300E38;
  v111 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v23 = swift_allocObject();
  v116 = xmmword_100226100;
  *(v23 + 16) = xmmword_100226100;
  v24 = sub_100133818();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v110 = sub_1000EE954();
  *(v23 + 64) = v110;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v99 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Remove device record: %@", 24, 2, v23);

  v125 = a2;
  v27 = sub_100192340();
  v117 = a1;
  v119 = v16;
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v28 = sub_1000EE91C(v8, qword_100300D48);
  v29 = v123;
  v30 = *(v123 + 16);
  v118 = v14;
  v30(v14, v28, v8);
  v31 = objc_autoreleasePoolPush();
  URL.path.getter();
  v32 = v120;
  URL.appendingPathComponent(_:)();

  v33 = v27;
  v34 = v122;
  URL.appendingPathComponent(_:)();
  v35 = *(v29 + 8);
  v35(v32, v8);
  objc_autoreleasePoolPop(v31);
  v36 = objc_autoreleasePoolPush();
  __chkstk_darwin(v36);
  *(&v98 - 2) = v34;
  *(&v98 - 1) = v33;
  v37 = v124;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v36);
  v35(v34, v8);

  v35(v118, v8);
  v38 = v126;
  v39 = v119;
  if ((*(v126 + 48))(v37, 1, v119) == 1)
  {
    sub_1000EEE6C(v37, &qword_1002F8510, &unk_100227B50);
    v40 = *(v125 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v41 = v115;
    sub_1001CC14C(v117, v115, type metadata accessor for DeviceSupportInformationRecord);
    v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v43 = (v114 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_1001CC214(v41, v44 + v42, type metadata accessor for DeviceSupportInformationRecord);
    v45 = (v44 + v43);
    *v45 = sub_10010AE84;
    v45[1] = 0;
    aBlock[4] = sub_1001CE114;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C10E8;
    v46 = _Block_copy(aBlock);
    v47 = v40;
    v48 = v100;
    static DispatchQoS.unspecified.getter();
    v127 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v49 = v102;
    v50 = v105;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

    (*(v104 + 8))(v49, v50);
    (*(v101 + 8))(v48, v103);
  }

  else
  {
    v52 = v37;
    v53 = v112;
    sub_1001CC214(v52, v112, type metadata accessor for DeviceSupportInformationRecord);
    v54 = objc_autoreleasePoolPush();
    sub_100135EE0(v53, aBlock);
    objc_autoreleasePoolPop(v54);
    v55 = aBlock[0];
    v56 = [(objc_class *)aBlock[0] recordID];

    v57 = objc_autoreleasePoolPush();
    sub_100135EE0(v53, aBlock);
    objc_autoreleasePoolPop(v57);
    v58 = v39;
    v59 = aBlock[0];
    v60 = CKRecord.recordType.getter();
    v62 = v61;

    v63 = v125;
    sub_1001A73C4(v56, v60, v62, 0);

    v64 = v107;
    v65 = *(v107 + 24);
    v66 = type metadata accessor for UUID();
    v67 = v113;
    (*(*(v66 - 8) + 16))(&v113[v65], v53, v66);
    v68 = (v53 + *(v58 + 24));
    v70 = *v68;
    v69 = v68[1];

    v71 = v106;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v73 = v72;
    (*(v108 + 8))(v71, v109);
    *v67 = 1;
    *(v67 + 8) = 0xD00000000000001ELL;
    *(v67 + 16) = 0x80000001002671E0;
    v74 = (v67 + v64[7]);
    *v74 = v70;
    v74[1] = v69;
    *(v67 + v64[8]) = v73;
    *(v67 + v64[9]) = xmmword_1002298C0;
    v75 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v63, v67);
    objc_autoreleasePoolPop(v75);
    sub_100193560();
    v76 = type metadata accessor for CloudCoordinator(0);
    LOBYTE(v75) = sub_10015A5D0(v76, &off_1002BE310);
    swift_unknownObjectRelease();
    if (v75)
    {
      v77 = *(v63 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v78 = objc_autoreleasePoolPush();
      sub_100135EE0(v53, aBlock);
      objc_autoreleasePoolPop(v78);
      v79 = aBlock[0];
      v80 = [(objc_class *)aBlock[0] recordID];

      v81 = swift_allocObject();
      swift_weakInit();
      v82 = v115;
      sub_1001CC14C(v53, v115, type metadata accessor for DeviceSupportInformationRecord);
      v83 = (*(v126 + 80) + 16) & ~*(v126 + 80);
      v84 = (v114 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      sub_1001CC214(v82, v85 + v83, type metadata accessor for DeviceSupportInformationRecord);
      *(v85 + v84) = v81;
      v86 = swift_allocObject();
      *(v86 + 16) = v77;
      *(v86 + 24) = v80;
      *(v86 + 32) = sub_1001CE208;
      *(v86 + 40) = v85;
      *(v86 + 48) = 1;
      swift_unknownObjectRetain();

      v87 = v80;

      sub_100153CF4(sub_1001CE26C, v86);

      swift_unknownObjectRelease();

      v88 = v110;
    }

    else
    {
      v89 = static os_log_type_t.error.getter();
      v90 = swift_allocObject();
      *(v90 + 16) = v116;
      v91 = sub_100133818();
      v88 = v110;
      *(v90 + 56) = &type metadata for String;
      *(v90 + 64) = v88;
      *(v90 + 32) = v91;
      *(v90 + 40) = v92;
      os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v99, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v90);
    }

    v93 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v94 = qword_100300E30;
    v95 = swift_allocObject();
    *(v95 + 16) = v116;
    aBlock[0] = 0;
    sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
    v96 = String.init<A>(describing:)();
    *(v95 + 56) = &type metadata for String;
    *(v95 + 64) = v88;
    *(v95 + 32) = v96;
    *(v95 + 40) = v97;
    os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v94, "[Fetch] Removed deleted DeviceSupportInfo from cloud? - %@", 58, 2, v95);

    sub_1001CC1B4(v67, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v53, type metadata accessor for DeviceSupportInformationRecord);
  }
}

uint64_t sub_1001AF584(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v114 = a2;
  v115 = a3;
  v103 = type metadata accessor for DispatchWorkItemFlags();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Date();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v95);
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v111 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v89 - v14;
  __chkstk_darwin(v15);
  v117 = &v89 - v16;
  v109 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v109);
  v112 = &v89 - v17;
  v118 = type metadata accessor for DeviceSupportInformationRecord(0);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v107 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v18;
  __chkstk_darwin(v19);
  v104 = &v89 - v20;
  v21 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v22 = qword_100300E38;
  v92 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v23 = swift_allocObject();
  v91 = xmmword_100226100;
  *(v23 + 16) = xmmword_100226100;
  v24 = sub_100133818();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v90 = sub_1000EE954();
  *(v23 + 64) = v90;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v93 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Remove device record: %@", 24, 2, v23);

  v113 = v4;
  v27 = sub_100192340();
  v108 = a1;
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  sub_1000EE91C(v10, qword_100300D48);
  v28 = v111;
  (*(v111 + 16))();
  v29 = objc_autoreleasePoolPush();
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v30 = v110;
  URL.appendingPathComponent(_:)();
  v31 = *(v28 + 8);
  v31(v12, v10);
  objc_autoreleasePoolPop(v29);
  v32 = objc_autoreleasePoolPush();
  __chkstk_darwin(v32);
  *(&v89 - 2) = v30;
  *(&v89 - 1) = v27;
  v33 = v112;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v32);
  v31(v30, v10);

  v31(v117, v10);
  v34 = v116;
  v35 = v118;
  if ((*(v116 + 48))(v33, 1, v118) == 1)
  {
    sub_1000EEE6C(v33, &qword_1002F8510, &unk_100227B50);
    v36 = *(v113 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v37 = v107;
    sub_1001CC14C(v108, v107, type metadata accessor for DeviceSupportInformationRecord);
    v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v39 = (v106 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    sub_1001CC214(v37, v40 + v38, type metadata accessor for DeviceSupportInformationRecord);
    v41 = (v40 + v39);
    v42 = v115;
    *v41 = v114;
    v41[1] = v42;
    aBlock[4] = sub_1001CBA5C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C0BE8;
    v43 = _Block_copy(aBlock);
    v44 = v36;

    v45 = v98;
    static DispatchQoS.unspecified.getter();
    v119 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v46 = v100;
    v47 = v103;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v102 + 8))(v46, v47);
    (*(v99 + 8))(v45, v101);
  }

  else
  {
    v49 = v104;
    sub_1001CC214(v33, v104, type metadata accessor for DeviceSupportInformationRecord);
    v50 = objc_autoreleasePoolPush();
    sub_100135EE0(v49, aBlock);
    objc_autoreleasePoolPop(v50);
    v51 = aBlock[0];
    v52 = [(objc_class *)aBlock[0] recordID];

    v53 = objc_autoreleasePoolPush();
    sub_100135EE0(v49, aBlock);
    objc_autoreleasePoolPop(v53);
    v54 = v35;
    v55 = aBlock[0];
    v56 = CKRecord.recordType.getter();
    v58 = v57;

    v59 = v113;
    sub_1001A73C4(v52, v56, v58, 0);

    v60 = v95;
    v61 = *(v95 + 24);
    v62 = type metadata accessor for UUID();
    v63 = v105;
    (*(*(v62 - 8) + 16))(&v105[v61], v49, v62);
    v64 = (v49 + *(v54 + 24));
    v66 = *v64;
    v65 = v64[1];

    v67 = v94;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v69 = v68;
    (*(v96 + 8))(v67, v97);
    *v63 = 1;
    *(v63 + 8) = 0xD00000000000001ELL;
    *(v63 + 16) = 0x80000001002671E0;
    v70 = (v63 + v60[7]);
    *v70 = v66;
    v70[1] = v65;
    *(v63 + v60[8]) = v69;
    *(v63 + v60[9]) = xmmword_1002298C0;
    v71 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v59, v63);
    objc_autoreleasePoolPop(v71);
    sub_100193560();
    v72 = type metadata accessor for CloudCoordinator(0);
    LOBYTE(v71) = sub_10015A5D0(v72, &off_1002BE310);
    swift_unknownObjectRelease();
    if (v71)
    {
      v73 = *(v59 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v74 = objc_autoreleasePoolPush();
      sub_100135EE0(v49, aBlock);
      objc_autoreleasePoolPop(v74);
      v75 = aBlock[0];
      v76 = [(objc_class *)aBlock[0] recordID];

      v77 = swift_allocObject();
      swift_weakInit();
      v78 = v107;
      sub_1001CC14C(v49, v107, type metadata accessor for DeviceSupportInformationRecord);
      v79 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v80 = (v106 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      sub_1001CC214(v78, v81 + v79, type metadata accessor for DeviceSupportInformationRecord);
      *(v81 + v80) = v77;
      v82 = swift_allocObject();
      *(v82 + 16) = v73;
      *(v82 + 24) = v76;
      *(v82 + 32) = sub_1001CBA60;
      *(v82 + 40) = v81;
      *(v82 + 48) = 1;
      swift_unknownObjectRetain();

      v83 = v76;

      sub_100153CF4(sub_1001CE26C, v82);

      swift_unknownObjectRelease();
    }

    else
    {
      v84 = static os_log_type_t.error.getter();
      v85 = swift_allocObject();
      *(v85 + 16) = v91;
      v86 = sub_100133818();
      v87 = v90;
      *(v85 + 56) = &type metadata for String;
      *(v85 + 64) = v87;
      *(v85 + 32) = v86;
      *(v85 + 40) = v88;
      os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v93, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v85);
    }

    v114(0);
    sub_1001CC1B4(v63, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v49, type metadata accessor for DeviceSupportInformationRecord);
  }
}

uint64_t sub_1001B031C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  v6 = sub_100133818();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000EE954();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Record not found to remove: %@", 30, 2, v5);

  return a2(0);
}

uint64_t sub_1001B0430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Handling Error deleting device info Record - %@", 47, 2, v5);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    v14 = sub_100133818();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: Deleted Info Record from cloud - %@", 46, 2, v13);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AA79C(a2, 0);
    }
  }

  return result;
}

void sub_1001B0678(unsigned __int8 *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70[3] = &type metadata for AudioAccessoryFeatures;
  v70[4] = sub_1000F1874();
  v12 = isFeatureEnabled(_:)();
  sub_1000EF824(v70);
  if ((v12 & 1) == 0)
  {
    sub_1001266E0();
    swift_allocError();
    *v36 = 0x8000000000000038;
    a2();

    return;
  }

  sub_100192340();
  v13 = *&a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
  v14 = *&a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000EE91C(v8, qword_100300D88);
  (*(v9 + 16))(v11, v15, v8);
  v16 = sub_10018ACBC(v13, v14, v11, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

  (*(v9 + 8))(v11, v8);
  v69 = a3;
  if (v16)
  {
    v17 = sub_10016886C(a1);
    v68 = a2;
    if ((v17 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v16[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v16[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v70[0] = isa;
      v20 = isa;
      sub_1001675F4(v70);
      objc_autoreleasePoolPop(v18);
      v21 = [v20 recordChangeTag];

      if (v21)
      {

        v22 = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v23 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100226C80;
        v25 = v16;
        v26 = [v25 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        *(v24 + 56) = &type metadata for String;
        v30 = sub_1000EE954();
        *(v24 + 64) = v30;
        *(v24 + 32) = v27;
        *(v24 + 40) = v29;
        v31 = a1;
        v32 = [v31 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        *(v24 + 96) = &type metadata for String;
        *(v24 + 104) = v30;
        *(v24 + 72) = v33;
        *(v24 + 80) = v35;
        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "No change from cached %@ [to] %@", 32, 2, v24);

        (v68)(0);

        return;
      }
    }

    v67 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v37 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100226C80;
    v39 = v16;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v38 + 56) = &type metadata for String;
    v44 = sub_1000EE954();
    *(v38 + 64) = v44;
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    v45 = a1;
    v46 = [v45 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v44;
    *(v38 + 72) = v47;
    *(v38 + 80) = v49;
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v37, "Updating cached AADeviceRecord: %@ with %@", 42, 2, v38);

    v50 = v39;
    v51 = sub_1001681DC(v45);
    a2 = v68;
  }

  else
  {
    v52 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v53 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100226100;
    v55 = a1;
    v56 = [v55 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_1000EE954();
    *(v54 + 32) = v57;
    *(v54 + 40) = v59;
    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v53, "Add AADeviceRecord: %@", 22, 2, v54);

    v51 = v55;
    v50 = v51;
  }

  v60 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v70[0] = v50;
  __chkstk_darwin(v51);
  *&v66[-16] = v60;
  *&v66[-8] = v70;

  OS_dispatch_queue.sync<A>(execute:)();

  (a2)(0);
  v61 = objc_autoreleasePoolPush();
  v62 = sub_100169D38(*&v50[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v50[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!v62)
  {
    v62 = sub_1000F89F4().super.isa;
  }

  v70[0] = v62;
  v63 = v62;
  sub_1001675F4(v70);
  objc_autoreleasePoolPop(v61);
  sub_100193560();
  v64 = swift_allocObject();
  *(v64 + 16) = v4;
  *(v64 + 24) = v63;

  v65 = v63;
  sub_100154534(v65, 1, sub_1001CB9FC, v64);
  swift_unknownObjectRelease();
}

void *sub_1001B0F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for AudioAccessoryFeatures;
  v8 = sub_1000F1874();
  v23 = v8;
  v9 = isFeatureEnabled(_:)();
  sub_1000EF824(v21);
  v10 = 0;
  if (v9)
  {
    v22 = &type metadata for AudioAccessoryFeatures;
    v23 = v8;
    v11 = isFeatureEnabled(_:)();
    sub_1000EF824(v21);
    if ((v11 & 1) == 0)
    {
      v13 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v17 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v19 = v17;
        swift_once();
        v17 = v19;
      }

      v13 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_100300E38, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v12 = sub_1000EE91C(v4, qword_100300D88);
      (v5[2])(v7, v12, v4);
      v13 = sub_10018E14C(v7, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      (v5[1])(v7, v4);
      if (v13 >> 62)
      {
LABEL_26:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_27:

          return 0;
        }
      }

      else
      {
LABEL_8:
        v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      v7 = 0;
      v5 = &OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v14 = *(v13 + 8 * v7 + 32);
        }

        v10 = v14;
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v16 = *&v14[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress] == a1 && *&v14[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8] == a2;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return v10;
        }

        ++v7;
        if (v15 == v4)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }
  }

  return v10;
}

uint64_t sub_1001B1288(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v103 = *(v10 - 8);
  __chkstk_darwin(v10);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v102);
  v104 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = &type metadata for AudioAccessoryFeatures;
  v110 = sub_1000F1874();
  v17 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v17)
  {
    v93 = v7;
    v95 = v10;
    v94 = v6;
    v105 = a2;
    v96 = a3;
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v19 = qword_100300E38;
    v91 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    v90 = xmmword_100226100;
    *(v20 + 16) = xmmword_100226100;
    v21 = a1;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v20 + 56) = &type metadata for String;
    v89 = sub_1000EE954();
    *(v20 + 64) = v89;
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    v92 = v19;
    v26 = v19;
    v27 = v21;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v26, "Remove AADeviceRecord: %@", 25, 2, v20);

    v28 = v106;
    sub_100192340();
    v29 = *&v21[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
    v30 = *&v21[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];
    if (qword_1002F7AB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000EE91C(v13, qword_100300D88);
    (*(v14 + 16))(v16, v31, v13);
    v32 = sub_10018ACBC(v29, v30, v16, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

    (*(v14 + 8))(v16, v13);
    v33 = v105;
    if (v32)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = &v32[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata];
      isa = sub_100169D38(*&v32[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v32[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v37 = v104;
      v38 = v95;
      aBlock[0] = isa;
      v39 = isa;
      sub_1001675F4(aBlock);
      objc_autoreleasePoolPop(v34);
      v40 = [v39 recordID];

      v41 = objc_autoreleasePoolPush();
      v42 = sub_100169D38(*v35, *(v35 + 1));
      if (!v42)
      {
        v42 = sub_1000F89F4().super.isa;
      }

      aBlock[0] = v42;
      v43 = v42;
      sub_1001675F4(aBlock);
      objc_autoreleasePoolPop(v41);
      v44 = CKRecord.recordType.getter();
      v46 = v45;

      v47 = v106;
      sub_1001A73C4(v40, v44, v46, 0);

      v48 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
      v49 = v102;
      v50 = *(v102 + 24);
      v51 = type metadata accessor for UUID();
      (*(*(v51 - 8) + 16))(&v37[v50], &v32[v48], v51);
      v53 = *&v32[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
      v52 = *&v32[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];

      v54 = v101;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v56 = v55;
      (*(v103 + 8))(v54, v38);
      *v37 = 1;
      strcpy(v37 + 8, "AADeviceRecord");
      v37[23] = -18;
      v57 = &v37[v49[7]];
      *v57 = v53;
      v57[1] = v52;
      *&v37[v49[8]] = v56;
      *&v37[v49[9]] = xmmword_1002298C0;
      v58 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v47, v37);
      objc_autoreleasePoolPop(v58);
      sub_100193560();
      v59 = type metadata accessor for CloudCoordinator(0);
      LOBYTE(v58) = sub_10015A5D0(v59, &off_1002BE310);
      swift_unknownObjectRelease();
      if (v58)
      {
        v60 = *(v47 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
        swift_unknownObjectRetain();
        v61 = objc_autoreleasePoolPush();
        v62 = sub_100169D38(*v35, *(v35 + 1));
        if (!v62)
        {
          v62 = sub_1000F89F4().super.isa;
        }

        aBlock[0] = v62;
        v63 = v62;
        sub_1001675F4(aBlock);
        objc_autoreleasePoolPop(v61);
        v64 = [v63 recordID];

        v65 = swift_allocObject();
        swift_weakInit();
        v66 = swift_allocObject();
        *(v66 + 16) = v32;
        *(v66 + 24) = v65;
        v67 = swift_allocObject();
        *(v67 + 16) = v60;
        *(v67 + 24) = v64;
        *(v67 + 32) = sub_1001CB9F4;
        *(v67 + 40) = v66;
        *(v67 + 48) = 1;
        swift_unknownObjectRetain();
        v68 = v32;

        v69 = v64;

        sub_100153CF4(sub_1001CE26C, v67);
        swift_unknownObjectRelease();
      }

      else
      {
        v80 = static os_log_type_t.error.getter();
        v81 = swift_allocObject();
        *(v81 + 16) = v90;
        v82 = v27;
        v83 = [v82 description];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = v89;
        *(v81 + 56) = &type metadata for String;
        *(v81 + 64) = v87;
        *(v81 + 32) = v84;
        *(v81 + 40) = v86;
        os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v92, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v81);
      }

      (v105)(0);

      return sub_1001CC1B4(v37, type metadata accessor for BTDeferredRecord);
    }

    else
    {
      v72 = *(v28 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
      v73 = swift_allocObject();
      v73[2] = v21;
      v73[3] = v33;
      v73[4] = v96;
      v110 = sub_1001CB9D4;
      v111 = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001742E0;
      v109 = &unk_1002C0AD0;
      v74 = _Block_copy(aBlock);
      v75 = v27;
      v76 = v72;

      v77 = v97;
      static DispatchQoS.unspecified.getter();
      v107 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      v78 = v99;
      v79 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v74);

      (*(v93 + 8))(v78, v79);
      (*(v98 + 8))(v77, v100);
    }
  }

  else
  {
    sub_1001266E0();
    swift_allocError();
    *v70 = 0x8000000000000038;
    a2();
  }
}

uint64_t sub_1001B1DE0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Handling Error deleting AADeviceRecord - %@", 43, 2, v5);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    v14 = a2;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: Deleted AADeviceRecord from cloud - %@", 49, 2, v13);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AC244(v14, 0);
    }
  }

  return result;
}

void sub_1001B204C(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70[3] = &type metadata for AudioAccessoryFeatures;
  v70[4] = sub_1000F1874();
  v12 = isFeatureEnabled(_:)();
  sub_1000EF824(v70);
  if ((v12 & 1) == 0)
  {
    sub_1001266E0();
    swift_allocError();
    *v36 = 0x8000000000000038;
    a2();

    return;
  }

  sub_100192340();
  v13 = *&a1[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
  v14 = *&a1[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000EE91C(v8, qword_100300B10);
  (*(v9 + 16))(v11, v15, v8);
  v16 = sub_10018ACBC(v13, v14, v11, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

  (*(v9 + 8))(v11, v8);
  v69 = a3;
  if (v16)
  {
    v17 = sub_1000F7B9C(a1);
    v68 = a2;
    if ((v17 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v16[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v16[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      v70[0] = isa;
      v20 = isa;
      sub_1000F6FF4(v70);
      objc_autoreleasePoolPop(v18);
      v21 = [v20 recordChangeTag];

      if (v21)
      {

        v22 = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v23 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100226C80;
        v25 = v16;
        v26 = [v25 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        *(v24 + 56) = &type metadata for String;
        v30 = sub_1000EE954();
        *(v24 + 64) = v30;
        *(v24 + 32) = v27;
        *(v24 + 40) = v29;
        v31 = a1;
        v32 = [v31 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        *(v24 + 96) = &type metadata for String;
        *(v24 + 104) = v30;
        *(v24 + 72) = v33;
        *(v24 + 80) = v35;
        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "No change from cached %@ [to] %@", 32, 2, v24);

        (v68)(0);

        return;
      }
    }

    v67 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v37 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100226C80;
    v39 = v16;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v38 + 56) = &type metadata for String;
    v44 = sub_1000EE954();
    *(v38 + 64) = v44;
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    v45 = a1;
    v46 = [v45 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v44;
    *(v38 + 72) = v47;
    *(v38 + 80) = v49;
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v37, "Updating cached AAProxCardsRecord: %@ with %@", 45, 2, v38);

    v50 = v39;
    v51 = sub_1000F75E4(v45);
    a2 = v68;
  }

  else
  {
    v52 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v53 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100226100;
    v55 = a1;
    v56 = [v55 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_1000EE954();
    *(v54 + 32) = v57;
    *(v54 + 40) = v59;
    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v53, "Add AAProxCardsRecord: %@", 25, 2, v54);

    v51 = v55;
    v50 = v51;
  }

  v60 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v70[0] = v50;
  __chkstk_darwin(v51);
  *&v66[-16] = v60;
  *&v66[-8] = v70;

  OS_dispatch_queue.sync<A>(execute:)();

  (a2)(0);
  v61 = objc_autoreleasePoolPush();
  v62 = sub_100169D38(*&v50[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v50[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!v62)
  {
    v62 = sub_1000F882C().super.isa;
  }

  v70[0] = v62;
  v63 = v62;
  sub_1000F6FF4(v70);
  objc_autoreleasePoolPop(v61);
  sub_100193560();
  v64 = swift_allocObject();
  *(v64 + 16) = v4;
  *(v64 + 24) = v63;

  v65 = v63;
  sub_100154534(v65, 1, sub_1001CB934, v64);
  swift_unknownObjectRelease();
}

void *sub_1001B2908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for AudioAccessoryFeatures;
  v8 = sub_1000F1874();
  v23 = v8;
  v9 = isFeatureEnabled(_:)();
  sub_1000EF824(v21);
  v10 = 0;
  if (v9)
  {
    v22 = &type metadata for AudioAccessoryFeatures;
    v23 = v8;
    v11 = isFeatureEnabled(_:)();
    sub_1000EF824(v21);
    if ((v11 & 1) == 0)
    {
      v13 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v17 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v19 = v17;
        swift_once();
        v17 = v19;
      }

      v13 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_100300E38, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v12 = sub_1000EE91C(v4, qword_100300B10);
      (v5[2])(v7, v12, v4);
      v13 = sub_10018E14C(v7, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      (v5[1])(v7, v4);
      if (v13 >> 62)
      {
LABEL_26:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_27:

          return 0;
        }
      }

      else
      {
LABEL_8:
        v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      v7 = 0;
      v5 = &OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v14 = *(v13 + 8 * v7 + 32);
        }

        v10 = v14;
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v16 = *&v14[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress] == a1 && *&v14[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8] == a2;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return v10;
        }

        ++v7;
        if (v15 == v4)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }
  }

  return v10;
}

uint64_t sub_1001B2C5C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v103 = *(v10 - 8);
  v104 = v10;
  __chkstk_darwin(v10);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v102);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = &type metadata for AudioAccessoryFeatures;
  v110 = sub_1000F1874();
  v18 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v18)
  {
    v93 = v7;
    v94 = v6;
    v96 = v13;
    v105 = a2;
    v95 = a3;
    v19 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v20 = qword_100300E38;
    v91 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v21 = swift_allocObject();
    v90 = xmmword_100226100;
    *(v21 + 16) = xmmword_100226100;
    v22 = a1;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v21 + 56) = &type metadata for String;
    v89 = sub_1000EE954();
    *(v21 + 64) = v89;
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    v92 = v20;
    v27 = v20;
    v28 = v22;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v27, "Remove AAProxCardsRecord: %@", 28, 2, v21);

    v29 = v106;
    sub_100192340();
    v30 = *&v22[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    v31 = *&v22[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
    if (qword_1002F79D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1000EE91C(v14, qword_100300B10);
    (*(v15 + 16))(v17, v32, v14);
    v33 = sub_10018ACBC(v30, v31, v17, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

    (*(v15 + 8))(v17, v14);
    v34 = v105;
    if (v33)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = &v33[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
      isa = sub_100169D38(*&v33[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v33[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      aBlock[0] = isa;
      v38 = isa;
      sub_1000F6FF4(aBlock);
      objc_autoreleasePoolPop(v35);
      v39 = [v38 recordID];

      v40 = objc_autoreleasePoolPush();
      v41 = sub_100169D38(*v36, *(v36 + 1));
      if (!v41)
      {
        v41 = sub_1000F882C().super.isa;
      }

      aBlock[0] = v41;
      v42 = v41;
      sub_1000F6FF4(aBlock);
      objc_autoreleasePoolPop(v40);
      v43 = CKRecord.recordType.getter();
      v45 = v44;

      v46 = v106;
      sub_1001A73C4(v39, v43, v45, 0);

      v47 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
      v48 = v102;
      v49 = *(v102 + 24);
      v50 = type metadata accessor for UUID();
      v51 = v96;
      (*(*(v50 - 8) + 16))(&v96[v49], &v33[v47], v50);
      v53 = *&v33[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
      v52 = *&v33[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];

      v54 = v101;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v56 = v55;
      (*(v103 + 8))(v54, v104);
      *v51 = 1;
      *(v51 + 8) = 0xD000000000000011;
      *(v51 + 16) = 0x800000010026EAC0;
      v57 = (v51 + v48[7]);
      *v57 = v53;
      v57[1] = v52;
      *(v51 + v48[8]) = v56;
      *(v51 + v48[9]) = xmmword_1002298C0;
      v58 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v46, v51);
      objc_autoreleasePoolPop(v58);
      sub_100193560();
      v59 = type metadata accessor for CloudCoordinator(0);
      LOBYTE(v58) = sub_10015A5D0(v59, &off_1002BE310);
      swift_unknownObjectRelease();
      if (v58)
      {
        v60 = *(v46 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
        swift_unknownObjectRetain();
        v61 = objc_autoreleasePoolPush();
        v62 = sub_100169D38(*v36, *(v36 + 1));
        if (!v62)
        {
          v62 = sub_1000F882C().super.isa;
        }

        aBlock[0] = v62;
        v63 = v62;
        sub_1000F6FF4(aBlock);
        objc_autoreleasePoolPop(v61);
        v64 = [v63 recordID];

        v65 = swift_allocObject();
        swift_weakInit();
        v66 = swift_allocObject();
        *(v66 + 16) = v33;
        *(v66 + 24) = v65;
        v67 = swift_allocObject();
        *(v67 + 16) = v60;
        *(v67 + 24) = v64;
        *(v67 + 32) = sub_1001CB92C;
        *(v67 + 40) = v66;
        *(v67 + 48) = 1;
        swift_unknownObjectRetain();
        v68 = v33;

        v69 = v64;

        sub_100153CF4(sub_1001CE26C, v67);
        swift_unknownObjectRelease();
      }

      else
      {
        v80 = static os_log_type_t.error.getter();
        v81 = swift_allocObject();
        *(v81 + 16) = v90;
        v82 = v28;
        v83 = [v82 description];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = v89;
        *(v81 + 56) = &type metadata for String;
        *(v81 + 64) = v87;
        *(v81 + 32) = v84;
        *(v81 + 40) = v86;
        os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v92, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v81);
      }

      (v105)(0);

      return sub_1001CC1B4(v96, type metadata accessor for BTDeferredRecord);
    }

    else
    {
      v72 = *(v29 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
      v73 = swift_allocObject();
      v73[2] = v22;
      v73[3] = v34;
      v73[4] = v95;
      v110 = sub_1001CE288;
      v111 = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001742E0;
      v109 = &unk_1002C09B8;
      v74 = _Block_copy(aBlock);
      v75 = v28;
      v76 = v72;

      v77 = v97;
      static DispatchQoS.unspecified.getter();
      v107 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      v78 = v99;
      v79 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v74);

      (*(v93 + 8))(v78, v79);
      (*(v98 + 8))(v77, v100);
    }
  }

  else
  {
    sub_1001266E0();
    swift_allocError();
    *v70 = 0x8000000000000038;
    a2();
  }
}

uint64_t sub_1001B379C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Handling Error deleting AAProxCardsRecord - %@", 46, 2, v5);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    v14 = a2;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: Deleted AAProxCardsRecord from cloud - %@", 52, 2, v13);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001ACB04(v14, 0);
    }
  }

  return result;
}

void sub_1001B3A08(_BYTE *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100192340();
  v11 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  v12 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v13 = sub_1000EE91C(v7, qword_100300C40);
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_10018ACBC(v11, v12, v10, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

  (*(v8 + 8))(v10, v7);
  if (v14)
  {
    v15 = sub_1001319F8(a1);
    v64 = a2;
    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v14[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v14[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F8660().super.isa;
      }

      v66 = isa;
      v18 = isa;
      sub_10012F138(&v66);
      objc_autoreleasePoolPop(v16);
      v19 = [v18 recordChangeTag];

      if (v19)
      {

        v20 = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v21 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100226C80;
        v23 = v14;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        *(v22 + 56) = &type metadata for String;
        v28 = sub_1000EE954();
        *(v22 + 64) = v28;
        *(v22 + 32) = v25;
        *(v22 + 40) = v27;
        v29 = a1;
        v30 = [v29 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        *(v22 + 96) = &type metadata for String;
        *(v22 + 104) = v28;
        *(v22 + 72) = v31;
        *(v22 + 80) = v33;
        os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "No change from cached %@ [to] %@", 32, 2, v22);

        v64(0);
        goto LABEL_20;
      }
    }

    v63 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v34 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100226C80;
    v36 = v14;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v35 + 56) = &type metadata for String;
    v41 = sub_1000EE954();
    *(v35 + 64) = v41;
    *(v35 + 32) = v38;
    *(v35 + 40) = v40;
    v42 = a1;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v41;
    *(v35 + 72) = v44;
    *(v35 + 80) = v46;
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v34, "Updating cached HMDeviceCloudRecord: %@ with %@", 47, 2, v35);

    v23 = v36;
    v47 = sub_100130AB8(v42);
    a2 = v64;
  }

  else
  {
    v48 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v49 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100226100;
    v51 = a1;
    v52 = [v51 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_1000EE954();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Add HMDeviceCloudRecord: %@", 27, 2, v50);

    v47 = v51;
    v23 = v47;
  }

  v56 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v66 = v23;
  __chkstk_darwin(v47);
  *&v62[-16] = v56;
  *&v62[-8] = &v66;

  OS_dispatch_queue.sync<A>(execute:)();

  a2(0);
  v57 = objc_autoreleasePoolPush();
  v58 = sub_100169D38(*&v23[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v23[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!v58)
  {
    v58 = sub_1000F8660().super.isa;
  }

  v66 = v58;
  v59 = v58;
  sub_10012F138(&v66);
  objc_autoreleasePoolPop(v57);
  sub_100193560();
  v60 = swift_allocObject();
  *(v60 + 16) = v4;
  *(v60 + 24) = v59;

  v61 = v59;
  sub_100154534(v61, 1, sub_1001CB898, v60);
  swift_unknownObjectRelease();

LABEL_20:
}

void *sub_1001B4250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v8 = sub_1000EE91C(v4, qword_100300C40);
    (*(v5 + 16))(v7, v8, v4);
    v9 = sub_10018E14C(v7, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v18 = v10;
      swift_once();
      v10 = v18;
    }

    v9 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E38, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  }

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = *&v13[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress] == a1 && *&v13[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8] == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v14;
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return 0;
}

uint64_t sub_1001B4538(void *a1, void (*a2)(void), uint64_t a3)
{
  v99 = a2;
  v100 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v89 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v15 = qword_100300E38;
  v85 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v16 = swift_allocObject();
  v84 = xmmword_100226100;
  *(v16 + 16) = xmmword_100226100;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  v83 = sub_1000EE954();
  *(v16 + 64) = v83;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  v86 = v15;
  v22 = v15;
  v23 = v17;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v22, "Remove HMDeviceCloudRecord: %@", 30, 2, v16);

  v24 = v98;
  sub_100192340();
  v25 = *&v23[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  v26 = *&v23[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v27 = sub_1000EE91C(v10, qword_100300C40);
  (*(v11 + 16))(v13, v27, v10);
  v28 = sub_10018ACBC(v25, v26, v13, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

  (*(v11 + 8))(v13, v10);
  if (v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = &v28[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata];
    isa = sub_100169D38(*&v28[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v28[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
    if (!isa)
    {
      isa = sub_1000F8660().super.isa;
    }

    aBlock[0] = isa;
    v32 = isa;
    sub_10012F138(aBlock);
    objc_autoreleasePoolPop(v29);
    v33 = [v32 recordID];

    v34 = objc_autoreleasePoolPush();
    v35 = sub_100169D38(*v30, *(v30 + 1));
    if (!v35)
    {
      v35 = sub_1000F8660().super.isa;
    }

    aBlock[0] = v35;
    v36 = v35;
    sub_10012F138(aBlock);
    objc_autoreleasePoolPop(v34);
    v37 = CKRecord.recordType.getter();
    v39 = v38;

    sub_1001A73C4(v33, v37, v39, 0);

    v40 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
    v41 = v94;
    v42 = *(v94 + 24);
    v43 = type metadata accessor for UUID();
    v44 = v97;
    (*(*(v43 - 8) + 16))(&v97[v42], &v28[v40], v43);
    v46 = *&v28[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
    v45 = *&v28[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];

    v47 = v93;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v49 = v48;
    (*(v95 + 8))(v47, v96);
    *v44 = 1;
    *(v44 + 8) = 0xD000000000000013;
    *(v44 + 16) = 0x8000000100267B10;
    v50 = (v44 + v41[7]);
    *v50 = v46;
    v50[1] = v45;
    *(v44 + v41[8]) = v49;
    *(v44 + v41[9]) = xmmword_1002298C0;
    v51 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v24, v44);
    objc_autoreleasePoolPop(v51);
    sub_100193560();
    v52 = type metadata accessor for CloudCoordinator(0);
    LOBYTE(v51) = sub_10015A5D0(v52, &off_1002BE310);
    swift_unknownObjectRelease();
    if (v51)
    {
      v53 = *(v24 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v54 = objc_autoreleasePoolPush();
      v55 = sub_100169D38(*v30, *(v30 + 1));
      if (!v55)
      {
        v55 = sub_1000F8660().super.isa;
      }

      aBlock[0] = v55;
      v56 = v55;
      sub_10012F138(aBlock);
      objc_autoreleasePoolPop(v54);
      v57 = [v56 recordID];

      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      *(v59 + 16) = v28;
      *(v59 + 24) = v58;
      v60 = swift_allocObject();
      *(v60 + 16) = v53;
      *(v60 + 24) = v57;
      *(v60 + 32) = sub_1001CB890;
      *(v60 + 40) = v59;
      *(v60 + 48) = 1;
      swift_unknownObjectRetain();
      v61 = v28;

      v62 = v57;

      sub_100153CF4(sub_1001CE26C, v60);
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = static os_log_type_t.error.getter();
      v75 = swift_allocObject();
      *(v75 + 16) = v84;
      v76 = v23;
      v77 = [v76 description];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = v83;
      *(v75 + 56) = &type metadata for String;
      *(v75 + 64) = v81;
      *(v75 + 32) = v78;
      *(v75 + 40) = v80;
      os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v86, "CloudCoordinator not available. Defer deleting record - %@", 58, 2, v75);
    }

    v99(0);

    return sub_1001CC1B4(v44, type metadata accessor for BTDeferredRecord);
  }

  else
  {
    v63 = *(v24 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v64 = swift_allocObject();
    v65 = v99;
    v66 = v100;
    v64[2] = v23;
    v64[3] = v65;
    v64[4] = v66;
    aBlock[4] = sub_1001CE288;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C08A0;
    v67 = _Block_copy(aBlock);
    v68 = v23;
    v69 = v63;

    v70 = v87;
    static DispatchQoS.unspecified.getter();
    v101 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v71 = v89;
    v72 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v67);

    (*(v91 + 8))(v71, v72);
    (*(v88 + 8))(v70, v90);
  }
}

uint64_t sub_1001B4FE0(void *a1, uint64_t (*a2)(void))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = a1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Record not found to remove: %@", 30, 2, v6);

  return a2(0);
}

uint64_t sub_1001B5120(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Handling Error deleting HMDeviceCloudRecord - %@", 48, 2, v5);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    v14 = a2;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: Deleted HMDeviceCloudRecord from cloud - %@", 54, 2, v13);

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AD3A0(v14, 0);
    }
  }

  return result;
}

uint64_t sub_1001B538C(void *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v176 = a4;
  v177 = a3;
  v171 = type metadata accessor for URL();
  v6 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagicPairingSettingsRecord(0);
  v182 = *(v8 - 8);
  v183 = v8;
  __chkstk_darwin(v8);
  v168 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v184 = &v142 - v11;
  __chkstk_darwin(v12);
  v167 = &v142 - v13;
  v164 = v14;
  __chkstk_darwin(v15);
  v166 = &v142 - v16;
  v17 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v17 - 8);
  v174 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v142 - v20;
  v179 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v172 = *(v179 - 8);
  __chkstk_darwin(v179);
  v23 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v175 = &v142 - v25;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v142 - v28;
  v30 = [a1 modifiedByDevice];
  v162 = v23;
  if (v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v32;
  }

  else
  {
    v31 = 0;
    v178 = 0;
  }

  v33 = a1;
  sub_10013D8F4(v33, v29);
  v34 = &unk_100300000;
  v180 = 0;
  LODWORD(v181) = a2;
  v159 = v33;
  *&v155 = v6;
  sub_100194630(v21);
  v35 = v172 + 48;
  v36 = *(v172 + 48);
  v37 = v179;
  v38 = v36(v21, 1, v179);
  v163 = v35;
  if (v38 == 1)
  {
    sub_1001CC14C(v29, v175, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v39 = &type metadata for String;
    v40 = v36;
    if (v36(v21, 1, v37) != 1)
    {
      sub_1000EEE6C(v21, &qword_1002F9D90, &qword_100227B30);
    }
  }

  else
  {
    sub_1001CC214(v21, v175, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v39 = &type metadata for String;
    v40 = v36;
  }

  v41 = sub_10013B008();
  v42 = &unk_1002F7000;
  if (v41 >> 62)
  {
    goto LABEL_118;
  }

  v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v169 = v43;

  v44 = sub_10013B008();
  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v165 = v45;
  v156 = v40;

  v46 = static os_log_type_t.default.getter();
  if (*(v42 + 2792) != -1)
  {
    swift_once();
  }

  v47 = *(v34 + 455);
  v160 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1002289D0;
  *(v48 + 56) = &type metadata for Bool;
  *(v48 + 64) = &protocol witness table for Bool;
  *(v48 + 32) = v181 & 1;
  *(v48 + 96) = v39;
  v49 = sub_1000EE954();
  if (v178)
  {
    v50 = v31;
  }

  else
  {
    v50 = 15932;
  }

  if (v178)
  {
    v34 = v178;
  }

  else
  {
    v34 = 0xE200000000000000;
  }

  *(v48 + 72) = v50;
  *(v48 + 80) = v34;
  *(v48 + 136) = &type metadata for Int;
  *(v48 + 144) = &protocol witness table for Int;
  v161 = v49;
  v51 = v169;
  *(v48 + 104) = v49;
  *(v48 + 112) = v51;
  *(v48 + 176) = &type metadata for Int;
  *(v48 + 184) = &protocol witness table for Int;
  *(v48 + 152) = v165;

  v173 = v47;
  os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, "(User Initiated: %d) Legacy magic pairing blob updated from %@, Cached: %d, Cloud: %d", 85, 2, v48);

  v52 = sub_100192340();
  __chkstk_darwin(v52);
  *(&v142 - 2) = v53;
  *(&v142 - 1) = v29;
  v54 = v180;
  OS_dispatch_queue.sync<A>(execute:)();
  v180 = v54;
  if (v54)
  {
    sub_1001CC1B4(v175, type metadata accessor for LegacyMagicPairingSettingsRecords);

    sub_1001CC1B4(v29, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v34 = &unk_100300000;
    v55 = static os_log_type_t.error.getter();
    v42 = v180;
    if (qword_1002F7AE8 != -1)
    {
LABEL_110:
      swift_once();
    }

    v56 = *(v34 + 455);
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100226100;
    v185 = v42;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_1000EE954();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "Unable to enocde LegacyMagicPairingSettingsRecords with error: %@", 65, 2, v57);

    sub_1001266E0();
    v61 = swift_allocError();
    *v62 = v42 | 0x4000000000000000;
    swift_errorRetain();
    v177(v61);
  }

  v149 = v34;
  v150 = v50;

  v64 = static os_log_type_t.default.getter();
  v65 = swift_allocObject();
  v148 = xmmword_100226C80;
  *(v65 + 16) = xmmword_100226C80;
  *(v65 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  *(v65 + 64) = sub_1001CB38C(&qword_1002F7BE0, &qword_1002F85A0, CKRecord_ptr);
  v66 = v159;
  *(v65 + 32) = v159;
  v67 = &v29[*(v179 + 20)];
  v68 = *v67;
  v69 = v67[1];
  v70 = v66;
  v71 = Data.hexString.getter(v68, v69);
  v72 = v161;
  *(v65 + 96) = v39;
  *(v65 + 104) = v72;
  *(v65 + 72) = v71;
  *(v65 + 80) = v73;
  os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v173, "Updated legacy magic pairing blob saved to disk: %@, %@", 55, 2, v65);

  if (v181)
  {

    goto LABEL_129;
  }

  if (v165 >= v169)
  {
    goto LABEL_72;
  }

  v74 = [objc_opt_self() sharedInstance];
  v151 = [v74 isLegacyDevice:v30];

  v181 = sub_10013B008();
  v185 = v181;
  v165 = sub_10013B008();
  if (v165 >> 62)
  {
    goto LABEL_121;
  }

  result = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v75 = v174;
  v76 = v179;
  v40 = v163;
  v169 = v29;
  if (!result)
  {

LABEL_74:
    if (v181 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v31 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_76:
        v158 = objc_opt_self();
        v93 = 0;
        v154 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
        v159 = v181 & 0xC000000000000001;
        v144 = v181 & 0xFFFFFFFFFFFFFF8;
        v143 = v181 + 32;
        v153 = (v155 + 16);
        v152 = (v155 + 8);
        v142 = xmmword_1002290F0;
        v155 = xmmword_100226100;
        v157 = v31;
        do
        {
          if (v159)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v96 = v173;
            v97 = __OFADD__(v93, 1);
            v42 = v93 + 1;
            if (v97)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v96 = v173;
            if (v93 >= *(v144 + 16))
            {
              __break(1u);
LABEL_121:
              result = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_28;
            }

            v30 = *(v143 + 8 * v93);
            v97 = __OFADD__(v93, 1);
            v42 = v93 + 1;
            if (v97)
            {
              goto LABEL_116;
            }
          }

          if ([v158 isFirstUnlocked])
          {
            v98 = qword_1002F7A00;

            if (v98 != -1)
            {
              swift_once();
            }

            v99 = v171;
            v100 = sub_1000EE91C(v171, qword_100300BA8);
            v101 = v170;
            (*v153)(v170, v100, v99);
            v55 = sub_10018C984(v101);

            (*v152)(v101, v99);
          }

          else
          {
            v102 = static os_log_type_t.error.getter();
            v103 = v96;
            v55 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v103, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
          }

          v165 = v42;
          v104 = v55[2];
          if (v104)
          {
            v39 = 0;
            while (1)
            {
              if (v39 >= v55[2])
              {
                __break(1u);
                goto LABEL_110;
              }

              v105 = *(v182 + 80);
              v106 = v184;
              sub_1001CC14C(v55 + ((v105 + 32) & ~v105) + *(v182 + 72) * v39, v184, type metadata accessor for MagicPairingSettingsRecord);
              v107 = (v106 + *(v183 + 24));
              v108 = *v107;
              v109 = v107[1];
              v42 = [v30 bluetoothAddress];
              v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v111;

              if (v108 == v110 && v109 == v34)
              {
                break;
              }

              v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v113)
              {
                goto LABEL_104;
              }

              ++v39;
              sub_1001CC1B4(v184, type metadata accessor for MagicPairingSettingsRecord);
              if (v104 == v39)
              {
                goto LABEL_77;
              }
            }

LABEL_104:

            v34 = v160;
            v114 = v167;
            sub_1001CC214(v184, v167, type metadata accessor for MagicPairingSettingsRecord);
            v115 = v166;
            sub_1001CC214(v114, v166, type metadata accessor for MagicPairingSettingsRecord);
            v116 = static os_log_type_t.default.getter();
            v117 = swift_allocObject();
            *(v117 + 16) = v155;
            v39 = v168;
            sub_1001CC14C(v115, v168, type metadata accessor for MagicPairingSettingsRecord);
            v118 = sub_100116308();
            v120 = v119;
            sub_1001CC1B4(v39, type metadata accessor for MagicPairingSettingsRecord);
            v121 = v161;
            *(v117 + 56) = &type metadata for String;
            *(v117 + 64) = v121;
            *(v117 + 32) = v118;
            *(v117 + 40) = v120;
            v122 = v116;
            v123 = v173;
            os_log(_:dso:log:_:_:)(v122, &_mh_execute_header, v173, "Removing from legacy cloud containers magic pairing records update: %@", 70, 2, v117);

            if (v151)
            {
              v146 = ~v105;
              v145 = static os_log_type_t.default.getter();
              v124 = swift_allocObject();
              *(v124 + 16) = v148;
              sub_1001CC14C(v115, v39, type metadata accessor for MagicPairingSettingsRecord);
              v125 = sub_100116308();
              v34 = v126;
              v147 = type metadata accessor for MagicPairingSettingsRecord;
              sub_1001CC1B4(v39, type metadata accessor for MagicPairingSettingsRecord);
              *(v124 + 56) = &type metadata for String;
              *(v124 + 64) = v121;
              *(v124 + 32) = v125;
              *(v124 + 40) = v34;
              *(v124 + 96) = &type metadata for String;
              *(v124 + 104) = v121;
              v127 = v149;
              *(v124 + 72) = v150;
              *(v124 + 80) = v127;

              os_log(_:dso:log:_:_:)(v145, &_mh_execute_header, v123, "Removing magic pairing record, %@ from older OS: %@", 51, 2, v124);

              sub_1001CC14C(v115, v39, type metadata accessor for MagicPairingSettingsRecord);
              v128 = (v105 + 16) & v146;
              v129 = swift_allocObject();
              sub_1001CC214(v39, v129 + v128, type metadata accessor for MagicPairingSettingsRecord);
              sub_1001B8D28(v115, 1, sub_1001CB820, v129);

              sub_1001CC1B4(v115, v147);
              goto LABEL_79;
            }

            type metadata accessor for Date();
            sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v29 = v169;
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              sub_1001CC1B4(v115, type metadata accessor for MagicPairingSettingsRecord);
            }

            else
            {
              v130 = static os_log_type_t.default.getter();
              v131 = swift_allocObject();
              *(v131 + 16) = v155;
              v132 = v115;
              v133 = v30;
              v134 = [v133 description];
              v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v137 = v136;

              v138 = v161;
              *(v131 + 56) = &type metadata for String;
              *(v131 + 64) = v138;
              *(v131 + 32) = v135;
              *(v131 + 40) = v137;
              os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v173, "Legacy magic pairing records deleted: %@", 40, 2, v131);

              sub_1001AB070(v132, 1);

              sub_1001CC1B4(v132, type metadata accessor for MagicPairingSettingsRecord);
            }
          }

          else
          {
LABEL_77:

            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
              v94 = swift_allocObject();
              *(v94 + 16) = v142;
              *(v94 + 32) = v30;
              v95 = v30;
              sub_10011455C(v94);

              swift_unknownObjectRelease();
            }

            else
            {
            }

LABEL_79:
            v29 = v169;
          }

          v31 = v157;
          v93 = v165;
          v75 = v174;
          v76 = v179;
          v40 = v163;
        }

        while (v165 != v157);
      }
    }

    goto LABEL_124;
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v30 = 0;
  v159 = v165 & 0xC000000000000001;
  v158 = result;
  while (1)
  {
    if (v159)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v79 = *(v165 + 8 * v30 + 32);
    }

    v80 = v180;
    v31 = v79;
    v42 = sub_1001CAADC(&v185, v31);

    v81 = v185;
    v40 = v185 >> 62;
    v181 = v185;
    if (v185 >> 62)
    {
      v91 = _CocoaArrayWrapper.endIndex.getter();
      v81 = v181;
      v82 = v91;
      v83 = v91 - v42;
      if (v91 < v42)
      {
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        v43 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_10;
      }
    }

    else
    {
      v82 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v83 = v82 - v42;
      if (v82 < v42)
      {
        goto LABEL_111;
      }
    }

    if (v42 < 0)
    {
      goto LABEL_112;
    }

    if (v40)
    {
      v84 = _CocoaArrayWrapper.endIndex.getter();
      v81 = v181;
    }

    else
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v84 < v82)
    {
      goto LABEL_113;
    }

    v39 = -v83;
    if (__OFSUB__(0, v83))
    {
      goto LABEL_114;
    }

    v180 = v80;
    if (v40)
    {
      v85 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v85 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = (v85 - v83);
    if (__OFADD__(v85, v39))
    {
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v40)
      {
        v40 = v181 & 0xFFFFFFFFFFFFFF8;
        if (v29 <= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

LABEL_54:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_55;
    }

    if (v40)
    {
      goto LABEL_54;
    }

LABEL_55:
    v181 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v40 = v181 & 0xFFFFFFFFFFFFFF8;
LABEL_56:
    v29 = (v40 + 32);
    v34 = (v40 + 32 + 8 * v42);
    sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
    swift_arrayDestroy();
    if (v83)
    {
      break;
    }

LABEL_65:
    ++v30;

    v185 = v181;
    v29 = v169;
    if (v158 == v30)
    {

      v75 = v174;
      v76 = v179;
      v40 = v163;
      goto LABEL_74;
    }
  }

  v86 = v181 >> 62;
  if (!(v181 >> 62))
  {
    v87 = *(v40 + 16);
    v88 = v87 - v82;
    if (__OFSUB__(v87, v82))
    {
      goto LABEL_71;
    }

    goto LABEL_59;
  }

  v92 = _CocoaArrayWrapper.endIndex.getter();
  v88 = v92 - v82;
  if (!__OFSUB__(v92, v82))
  {
LABEL_59:
    v89 = &v29[8 * v82];
    if (v82 != v42 || v34 >= &v89[8 * v88])
    {
      memmove((v40 + 32 + 8 * v42), v89, 8 * v88);
    }

    if (v86)
    {
      v90 = _CocoaArrayWrapper.endIndex.getter();
      v78 = v90 + v39;
      if (__OFADD__(v90, v39))
      {
        goto LABEL_117;
      }
    }

    else
    {
      v77 = *(v40 + 16);
      v78 = v77 + v39;
      if (__OFADD__(v77, v39))
      {
        goto LABEL_117;
      }
    }

    *(v40 + 16) = v78;
    goto LABEL_65;
  }

LABEL_71:
  __break(1u);
LABEL_72:

  v76 = v179;
  v75 = v174;
LABEL_124:
  sub_100194630(v75);
  if (v156(v75, 1, v76) == 1)
  {
    sub_1000EEE6C(v75, &qword_1002F9D90, &qword_100227B30);
  }

  else
  {
    v139 = v162;
    sub_1001CC214(v75, v162, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F8528, &unk_100229A90);
      v140 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v141 = swift_allocObject();
      *(v141 + 1) = xmmword_100226100;
      sub_1001CC14C(v139, v141 + v140, type metadata accessor for LegacyMagicPairingSettingsRecords);
      sub_10017D6AC(v141);
      swift_unknownObjectRelease();
    }

    sub_1001CC1B4(v139, type metadata accessor for LegacyMagicPairingSettingsRecords);
  }

LABEL_129:
  v177(0);
  sub_1001CC1B4(v175, type metadata accessor for LegacyMagicPairingSettingsRecords);
  return sub_1001CC1B4(v29, type metadata accessor for LegacyMagicPairingSettingsRecords);
}

void sub_1001B69D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v7 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226C80;
    sub_1001CC14C(a2, v6, type metadata accessor for MagicPairingSettingsRecord);
    v10 = sub_100116308();
    v12 = v11;
    sub_1001CC1B4(v6, type metadata accessor for MagicPairingSettingsRecord);
    *(v9 + 56) = &type metadata for String;
    v13 = sub_1000EE954();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v16[1] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v14 = String.init<A>(describing:)();
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Error removing from legacy magic pairing records update: %@, %@", 63, 2, v9);
  }
}

uint64_t sub_1001B6BA8(int a1, void (*a2)(void), void *a3)
{
  v93 = a3;
  v91 = a1;
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  v5 = *(v4 - 8);
  v87 = v4;
  v88 = v5;
  __chkstk_darwin(v4);
  v89 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = v80 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v13 - 8);
  v15 = v80 - v14;
  v16 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v90 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v80 - v20;
  sub_100194630(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000EEE6C(v15, &qword_1002F9D90, &qword_100227B30);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return (a2)(0);
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v54 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v79 = v54;
        swift_once();
        v54 = v79;
      }

      v24 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
      goto LABEL_28;
    }

    sub_100192340();
    if (qword_1002F7A00 == -1)
    {
LABEL_5:
      v22 = sub_1000EE91C(v9, qword_100300BA8);
      (*(v10 + 16))(v12, v22, v9);
      v23 = v10;
      v24 = sub_10018C984(v12);

      (*(v23 + 8))(v12, v9);
LABEL_28:
      sub_100176C18(v24);

      swift_unknownObjectRelease();
      return (a2)(0);
    }

LABEL_56:
    swift_once();
    goto LABEL_5;
  }

  v81 = a2;
  v82 = v12;
  v25 = v9;
  sub_1001CC214(v15, v21, type metadata accessor for LegacyMagicPairingSettingsRecords);
  v26 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v27 = qword_100300E38;
  v80[1] = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100226C80;
  v29 = v90;
  sub_1001CC14C(v21, v90, type metadata accessor for LegacyMagicPairingSettingsRecords);
  v30 = sub_10013C5B4();
  v32 = v31;
  sub_1001CC1B4(v29, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *(v28 + 56) = &type metadata for String;
  v80[0] = sub_1000EE954();
  *(v28 + 64) = v80[0];
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  *(v28 + 96) = &type metadata for Bool;
  *(v28 + 104) = &protocol witness table for Bool;
  *(v28 + 72) = v91 & 1;
  v86 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Deleted legacy magic pairing records Record from disk - %@, userInitiated: %d", 77, 2, v28);

  v33 = sub_100192340();
  v83 = v21;
  v34 = UUID.uuidString.getter();
  v36 = v35;
  if (qword_1002F7A70 != -1)
  {
    swift_once();
  }

  v9 = v25;
  v37 = sub_1000EE91C(v25, qword_100300D60);
  a2 = (v10 + 16);
  v12 = v82;
  v85 = *(v10 + 16);
  v38 = v85(v82, v37, v9);
  __chkstk_darwin(v38);
  v80[-4] = v33;
  v80[-3] = v34;
  v80[-2] = v36;
  v80[-1] = v12;
  OS_dispatch_queue.sync<A>(execute:)();

  v10 += 8;
  v84 = *v10;
  v84(v12, v9);
  v81(0);
  v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  v93 = objc_opt_self();
  if ([v93 isFirstUnlocked])
  {
    v40 = qword_1002F7A00;

    v41 = v92;
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = sub_1000EE91C(v9, qword_100300BA8);
    v85(v12, v42, v9);
    v43 = sub_10018C984(v12);

    v84(v12, v9);
    v44 = v83;
    v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  }

  else
  {
    v45 = static os_log_type_t.error.getter();
    v43 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v86, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    v44 = v83;
    v41 = v92;
  }

  v46 = v43[2];
  v80[2] = a2;
  if (!v46)
  {
    goto LABEL_45;
  }

  v47 = v89;
  sub_1001CC14C(v43 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v89, type metadata accessor for MagicPairingSettingsRecord);

  sub_1001CC214(v47, v41, type metadata accessor for MagicPairingSettingsRecord);
  v48 = sub_10013B008();
  v49 = v48;
  if (!(v48 >> 62))
  {
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_44:
    sub_1001CC1B4(v41, type metadata accessor for MagicPairingSettingsRecord);
LABEL_45:

    goto LABEL_46;
  }

LABEL_18:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v50 = *(v49 + 32);
  }

  v89 = v50;

  if ([v93 isFirstUnlocked])
  {
    v51 = qword_1002F7A00;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_1000EE91C(v9, qword_100300BA8);
    v85(v12, v52, v9);
    v53 = sub_10018C984(v12);

    v84(v12, v9);
  }

  else
  {
    v56 = static os_log_type_t.error.getter();
    v53 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v86, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
  }

  v57 = v53[2];

  if (v57 == 1)
  {
    v58 = sub_10013B008();
    v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
    if (v58 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v59 == 1)
    {
      v60 = (v41 + *(v87 + 24));
      v61 = *v60;
      v62 = v60[1];
      v63 = [v89 bluetoothAddress];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v61 == v64 && v62 == v66)
      {
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          sub_1001CC1B4(v92, type metadata accessor for MagicPairingSettingsRecord);

          v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          goto LABEL_46;
        }
      }

      LODWORD(v88) = static os_log_type_t.default.getter();
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100226100;
      v69 = v90;
      sub_1001CC14C(v44, v90, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v70 = sub_10013C5B4();
      v72 = v71;
      sub_1001CC1B4(v69, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v73 = v80[0];
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = v73;
      *(v68 + 32) = v70;
      *(v68 + 40) = v72;
      os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v86, "Deleting last magic pairing record - %@", 39, 2, v68);

      v74 = v92;
      sub_1001AB070(v92, (v91 & 1) == 0);

      sub_1001CC1B4(v74, type metadata accessor for MagicPairingSettingsRecord);
      v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
    }

    else
    {
      sub_1001CC1B4(v41, type metadata accessor for MagicPairingSettingsRecord);
    }
  }

  else
  {
    sub_1001CC1B4(v41, type metadata accessor for MagicPairingSettingsRecord);

    v39 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  }

LABEL_46:
  if (swift_unknownObjectWeakLoadStrong())
  {
    if ([v93 v39[34]])
    {
      v75 = qword_1002F7A00;

      if (v75 != -1)
      {
        swift_once();
      }

      v76 = sub_1000EE91C(v9, qword_100300BA8);
      v85(v12, v76, v9);
      v77 = sub_10018C984(v12);

      v84(v12, v9);
    }

    else
    {
      v78 = static os_log_type_t.error.getter();
      v77 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v86, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    }

    sub_100176C18(v77);
    swift_unknownObjectRelease();
  }

  return sub_1001CC1B4(v44, type metadata accessor for LegacyMagicPairingSettingsRecords);
}

uint64_t sub_1001B78D8(void *a1, void (*a2)(void), uint64_t a3)
{
  v154 = a3;
  v155 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v143 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = &v142 - v12;
  __chkstk_darwin(v13);
  v15 = &v142 - v14;
  v151 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v151);
  v150 = &v142 - v16;
  v157 = type metadata accessor for MagicPairingSettingsRecord(0);
  v152 = *(v157 - 8);
  __chkstk_darwin(v157);
  v146 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v142 - v19;
  __chkstk_darwin(v20);
  v144 = v3;
  v145 = &v142 - v21;
  v22 = sub_100192340();
  v156 = a1;
  v23 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v26 = sub_1000EE91C(v7, qword_100300BA8);
  (*(v8 + 16))(v15, v26, v7);
  v27 = objc_autoreleasePoolPush();
  v149 = v15;
  v28 = v27;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v29 = v153;
  v148 = v25;
  URL.appendingPathComponent(_:)();
  v30 = *(v8 + 8);
  v30(v10, v7);
  objc_autoreleasePoolPop(v28);
  v31 = objc_autoreleasePoolPush();
  __chkstk_darwin(v31);
  *(&v142 - 2) = v29;
  *(&v142 - 1) = v22;
  v32 = v150;
  v33 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v31);
  v30(v29, v7);

  v30(v149, v7);
  v34 = v157;
  if ((*(v152 + 6))(v32, 1, v157) != 1)
  {
    v78 = v147;
    sub_1001CC214(v32, v147, type metadata accessor for MagicPairingSettingsRecord);
    v79 = v156;
    if ((sub_10011D740(v156) & 1) == 0)
    {
      v80 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*(v78 + *(v34 + 20)), *(v78 + *(v34 + 20) + 8));
      if (!isa)
      {
        isa = sub_1000F8100().super.isa;
      }

      v158[0] = isa;
      v82 = isa;
      sub_10011A7B0(v158);
      objc_autoreleasePoolPop(v80);
      v83 = [v82 recordChangeTag];

      if (v83)
      {

        LODWORD(v157) = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v84 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_100226C80;
        v86 = v146;
        sub_1001CC14C(v78, v146, type metadata accessor for MagicPairingSettingsRecord);
        v87 = sub_100116308();
        v88 = v78;
        v90 = v89;
        sub_1001CC1B4(v86, type metadata accessor for MagicPairingSettingsRecord);
        *(v85 + 56) = &type metadata for String;
        v91 = sub_1000EE954();
        *(v85 + 64) = v91;
        *(v85 + 32) = v87;
        *(v85 + 40) = v90;
        v92 = v79;
        v93 = [v92 description];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        *(v85 + 96) = &type metadata for String;
        *(v85 + 104) = v91;
        *(v85 + 72) = v94;
        *(v85 + 80) = v96;
        os_log(_:dso:log:_:_:)(v157, &_mh_execute_header, v84, "No change from cached %@ [to] %@", 32, 2, v85);

        (v155)(0);
        v97 = v88;
        return sub_1001CC1B4(v97, type metadata accessor for MagicPairingSettingsRecord);
      }
    }

    v153 = 0;
    v108 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v109 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_100226100;
    v152 = type metadata accessor for MagicPairingSettingsRecord;
    v111 = v146;
    sub_1001CC14C(v78, v146, type metadata accessor for MagicPairingSettingsRecord);
    v112 = sub_100116308();
    v114 = v113;
    sub_1001CC1B4(v111, type metadata accessor for MagicPairingSettingsRecord);
    *(v110 + 56) = &type metadata for String;
    v115 = v78;
    v116 = sub_1000EE954();
    *(v110 + 64) = v116;
    *(v110 + 32) = v112;
    *(v110 + 40) = v114;
    os_log(_:dso:log:_:_:)(v108, &_mh_execute_header, v109, "Updating cached MagicPairingSettingsRecord: %@ ", 47, 2, v110);

    v117 = static os_log_type_t.default.getter();
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_100226C80;
    v119 = (v115 + *(v157 + 24));
    v121 = *v119;
    v120 = v119[1];
    *(v118 + 56) = &type metadata for String;
    *(v118 + 64) = v116;
    *(v118 + 32) = v121;
    *(v118 + 40) = v120;

    v122 = v156;
    v123 = [v122 description];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    *(v118 + 96) = &type metadata for String;
    *(v118 + 104) = v116;
    *(v118 + 72) = v124;
    *(v118 + 80) = v126;
    v127 = v117;
    v67 = v109;
    os_log(_:dso:log:_:_:)(v127, &_mh_execute_header, v109, "Updating cached MagicPairingSettingsRecord %@ with %@", 53, 2, v118);

    v76 = v145;
    sub_1001CC14C(v115, v145, v152);
    sub_10011BD3C(v122);
    v77 = sub_1001CC1B4(v115, type metadata accessor for MagicPairingSettingsRecord);
    v33 = v153;
LABEL_26:
    v128 = v144;
    v129 = *(v144 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    __chkstk_darwin(v77);
    *(&v142 - 2) = v129;
    *(&v142 - 1) = v76;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v33)
    {

      v130 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_100226100;
      v158[0] = v33;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v132 = String.init<A>(describing:)();
      v134 = v133;
      *(v131 + 56) = &type metadata for String;
      *(v131 + 64) = sub_1000EE954();
      *(v131 + 32) = v132;
      *(v131 + 40) = v134;
      os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v67, "Unable to enocde MagicPairingSettingsRecord with error: %@", 58, 2, v131);

      sub_1001266E0();
      v135 = swift_allocError();
      *v136 = v33 | 0x4000000000000000;
      swift_errorRetain();
      (v155)(v135);
    }

    else
    {

      (v155)(0);
      v137 = objc_autoreleasePoolPush();
      v138 = sub_100169D38(*(v76 + *(v157 + 20)), *(v76 + *(v157 + 20) + 8));
      if (!v138)
      {
        v138 = sub_1000F8100().super.isa;
      }

      v158[0] = v138;
      v139 = v138;
      sub_10011A7B0(v158);
      objc_autoreleasePoolPop(v137);
      sub_100193560();
      v140 = swift_allocObject();
      *(v140 + 16) = v128;
      *(v140 + 24) = v139;

      v141 = v139;
      sub_100154534(v141, 1, sub_1001CB5D4, v140);

      swift_unknownObjectRelease();
    }

    v97 = v76;
    return sub_1001CC1B4(v97, type metadata accessor for MagicPairingSettingsRecord);
  }

  sub_1000EEE6C(v32, &unk_1002F9C30, &qword_1002299A0);
  v35 = v156;
  v36 = [v156 masterKey];
  if (v36)
  {
    v37 = v36;
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    sub_1000EF870(v38, v40);
    v41 = [v35 masterHint];
    if (v41)
    {
      v42 = v41;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      sub_1000EF870(v43, v45);
      v46 = [v35 accessoryKey];
      if (v46)
      {
        v47 = v46;
        v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        sub_1000EF870(v48, v50);
        v51 = [v35 accessoryHint];
        if (v51)
        {
          v52 = v51;
          v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          sub_1000EF870(v53, v55);
          v56 = [v35 encryptionKey];
          if (v56)
          {
            v57 = v56;
            v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            sub_1000EF870(v58, v60);
            v61 = [v35 irk];
            if (v61)
            {
              v62 = v61;
              v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              sub_1000EF870(v63, v65);
              v66 = static os_log_type_t.default.getter();
              if (qword_1002F7AE8 != -1)
              {
                swift_once();
              }

              v67 = qword_100300E38;
              sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
              v68 = swift_allocObject();
              *(v68 + 16) = xmmword_100226100;
              v69 = v35;
              v70 = [v69 description];
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v73 = v72;

              *(v68 + 56) = &type metadata for String;
              *(v68 + 64) = sub_1000EE954();
              *(v68 + 32) = v71;
              *(v68 + 40) = v73;
              os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v67, "Add MagicPairingSettingsRecord: %@", 34, 2, v68);

              v74 = v69;
              v75 = v143;
              UUID.init()();
              v76 = v145;
              v77 = sub_100116EB8(v75, v74, v145);
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  v98 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v99 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_100226100;
  v101 = v35;
  v102 = [v101 description];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  *(v100 + 56) = &type metadata for String;
  *(v100 + 64) = sub_1000EE954();
  *(v100 + 32) = v103;
  *(v100 + 40) = v105;
  os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v99, "Invalid magic keys unable to add MagicPairingSettingsRecord: %@", 63, 2, v100);

  sub_1001266E0();
  swift_allocError();
  *v106 = 0x8000000000000028;
  v155();
}

uint64_t sub_1001B87B8(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a2 & 1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  aBlock[4] = v25;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  sub_1001CB634(a1, v19);

  v22 = a4;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v13, v11);
  (*(v14 + 8))(v16, v27);
}

uint64_t sub_1001B8AB8(void *a1, char a2, uint64_t a3, void *a4, const char *a5, uint64_t a6, const char *a7, uint64_t a8)
{
  if (a2)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v13 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, a7, a8, 2, v14);

    v18 = a4;
  }

  else
  {
    v21 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v22 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226100;
    v24 = a1;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_1001633D8(a1, 0);
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_1000EE954();
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, a5, a6, 2, v23);

    v18 = v24;
  }

  return sub_10019A610(v18, _swiftEmptyArrayStorage, 0);
}

uint64_t sub_1001B8D28(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v121 = a4;
  v122 = a3;
  v105 = type metadata accessor for Date();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v103);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin(v11);
  v116 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v100 - v14;
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v117 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v117);
  v119 = &v100 - v18;
  v19 = type metadata accessor for MagicPairingSettingsRecord(0);
  v123 = *(v19 - 8);
  v124 = v19;
  __chkstk_darwin(v19);
  v106 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v20;
  __chkstk_darwin(v21);
  v23 = &v100 - v22;
  v24 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v107 = v10;
  v25 = qword_100300E38;
  v108 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100226C80;
  sub_1001CC14C(a1, v23, type metadata accessor for MagicPairingSettingsRecord);
  v27 = sub_100116308();
  v28 = a1;
  v30 = v29;
  v120 = v23;
  sub_1001CC1B4(v23, type metadata accessor for MagicPairingSettingsRecord);
  *(v26 + 56) = &type metadata for String;
  v109 = sub_1000EE954();
  *(v26 + 64) = v109;
  *(v26 + 32) = v27;
  *(v26 + 40) = v30;
  *(v26 + 96) = &type metadata for Bool;
  *(v26 + 104) = &protocol witness table for Bool;
  v101 = a2;
  *(v26 + 72) = a2 & 1;
  v110 = v25;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Remove magic device record: %@ (informDelegate: %d)", 51, 2, v26);

  v112 = v5;
  v31 = sub_100192340();
  v111 = v28;
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v32 = v115;
  v33 = sub_1000EE91C(v115, qword_100300BA8);
  v34 = v114;
  v35 = *(v114 + 16);
  v113 = v17;
  v35(v17, v33, v32);
  v36 = objc_autoreleasePoolPush();
  URL.path.getter();
  v37 = v116;
  URL.appendingPathComponent(_:)();

  v38 = v31;
  v39 = v118;
  URL.appendingPathComponent(_:)();
  v40 = *(v34 + 8);
  v40(v37, v32);
  objc_autoreleasePoolPop(v36);
  v41 = objc_autoreleasePoolPush();
  __chkstk_darwin(v41);
  *(&v100 - 2) = v39;
  *(&v100 - 1) = v38;
  v42 = v119;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v41);
  v40(v39, v32);

  v40(v113, v32);
  v43 = v124;
  if ((*(v123 + 48))(v42, 1, v124) == 1)
  {
    sub_1000EEE6C(v42, &unk_1002F9C30, &qword_1002299A0);
    v44 = static os_log_type_t.error.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100226100;
    v46 = v120;
    sub_1001CC14C(v111, v120, type metadata accessor for MagicPairingSettingsRecord);
    v47 = sub_100116308();
    v49 = v48;
    sub_1001CC1B4(v46, type metadata accessor for MagicPairingSettingsRecord);
    v51 = v109;
    v50 = v110;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v51;
    *(v45 + 32) = v47;
    *(v45 + 40) = v49;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v50, "Magic Record not found to remove: %@", 36, 2, v45);

    return v122(0);
  }

  else
  {
    v53 = v106;
    sub_1001CC214(v42, v106, type metadata accessor for MagicPairingSettingsRecord);
    v54 = objc_autoreleasePoolPush();
    v55 = v53 + *(v43 + 20);
    isa = sub_100169D38(*v55, *(v55 + 8));
    if (!isa)
    {
      isa = sub_1000F8100().super.isa;
    }

    v57 = v107;
    v58 = v101;
    v125[0] = isa;
    v59 = isa;
    sub_10011A7B0(v125);
    objc_autoreleasePoolPop(v54);
    v60 = [v59 recordID];

    v61 = objc_autoreleasePoolPush();
    v62 = sub_100169D38(*v55, *(v55 + 8));
    if (!v62)
    {
      v62 = sub_1000F8100().super.isa;
    }

    v125[0] = v62;
    v63 = v62;
    sub_10011A7B0(v125);
    objc_autoreleasePoolPop(v61);
    v64 = CKRecord.recordType.getter();
    v66 = v65;

    v67 = v112;
    sub_1001A73C4(v60, v64, v66, v58 & 1);

    v68 = v103;
    v69 = *(v103 + 24);
    v70 = type metadata accessor for UUID();
    (*(*(v70 - 8) + 16))(v57 + v69, v53, v70);
    v71 = (v53 + *(v43 + 24));
    v73 = *v71;
    v72 = v71[1];

    v74 = v102;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v76 = v75;
    (*(v104 + 8))(v74, v105);
    *v57 = 1;
    strcpy((v57 + 8), "MagicSettings");
    *(v57 + 22) = -4864;
    v77 = (v57 + v68[7]);
    *v77 = v73;
    v77[1] = v72;
    *(v57 + v68[8]) = v76;
    *(v57 + v68[9]) = xmmword_1002298C0;
    v78 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v67, v57);
    objc_autoreleasePoolPop(v78);
    sub_100193560();
    v79 = type metadata accessor for CloudCoordinator(0);
    LOBYTE(v78) = sub_10015A5D0(v79, &off_1002BE310);
    swift_unknownObjectRelease();
    if (v78)
    {
      v80 = *(v67 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v81 = objc_autoreleasePoolPush();
      v82 = sub_100169D38(*v55, *(v55 + 8));
      if (!v82)
      {
        v82 = sub_1000F8100().super.isa;
      }

      v125[0] = v82;
      v83 = v82;
      sub_10011A7B0(v125);
      objc_autoreleasePoolPop(v81);
      v84 = [v83 recordID];

      v85 = swift_allocObject();
      swift_weakInit();
      v86 = v120;
      sub_1001CC14C(v53, v120, type metadata accessor for MagicPairingSettingsRecord);
      v87 = (*(v123 + 80) + 16) & ~*(v123 + 80);
      v88 = (v100 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      sub_1001CC214(v86, v89 + v87, type metadata accessor for MagicPairingSettingsRecord);
      *(v89 + v88) = v85;
      v90 = swift_allocObject();
      *(v90 + 16) = v80;
      *(v90 + 24) = v84;
      *(v90 + 32) = sub_1001CB58C;
      *(v90 + 40) = v89;
      *(v90 + 48) = 1;
      swift_unknownObjectRetain();

      v91 = v84;

      sub_100153CF4(sub_1001CE26C, v90);

      swift_unknownObjectRelease();
    }

    else
    {
      v92 = static os_log_type_t.error.getter();
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_100226100;
      v94 = v120;
      sub_1001CC14C(v111, v120, type metadata accessor for MagicPairingSettingsRecord);
      v95 = sub_100116308();
      v97 = v96;
      sub_1001CC1B4(v94, type metadata accessor for MagicPairingSettingsRecord);
      v99 = v109;
      v98 = v110;
      *(v93 + 56) = &type metadata for String;
      *(v93 + 64) = v99;
      *(v93 + 32) = v95;
      *(v93 + 40) = v97;
      os_log(_:dso:log:_:_:)(v92, &_mh_execute_header, v98, "CloudCoordinator not available. Defer deleting magic record - %@", 64, 2, v93);
    }

    v122(0);
    sub_1001CC1B4(v57, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v53, type metadata accessor for MagicPairingSettingsRecord);
  }
}

uint64_t sub_1001B9918(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MagicPairingSettingsRecord(0);
  __chkstk_darwin(v5);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v8 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v9 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    v30[4] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Handling Error deleting magic Record - %@", 41, 2, v10);
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v16 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    sub_1001CC14C(a2, v7, type metadata accessor for MagicPairingSettingsRecord);
    v18 = sub_100116308();
    v20 = v19;
    sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000EE954();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "CloudSync: Deleted MagicSettings Record from cloud - %@", 55, 2, v17);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001AB070(a2, 0);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100193560();

      v21 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*(a2 + *(v5 + 20)), *(a2 + *(v5 + 20) + 8));
      if (!isa)
      {
        isa = sub_1000F8100().super.isa;
      }

      v30[0] = isa;
      v23 = isa;
      sub_10011A7B0(v30);
      objc_autoreleasePoolPop(v21);
      v24 = [v23 recordID];

      v25 = [v24 zoneID];
      v26 = (a2 + *(v5 + 24));
      v27 = *v26;
      v28 = v26[1];

      sub_100158CC4(&off_1002BBCB8, v25, 0xD000000000000010, 0x8000000100267080, v27, v28);

      swift_unknownObjectRelease();
      return swift_arrayDestroy();
    }
  }

  return result;
}

uint64_t sub_1001B9D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100192340();
  v19 = a2;
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
  }

  v7 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226C80;
  sub_1001CC14C(a2, v6, type metadata accessor for BTDeferredRecord);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_1000EE954();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v20 = v2;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v14 = String.init<A>(describing:)();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "CloudSync: Error storing deferred record %@: %@", 47, 2, v9);
}

uint64_t sub_1001B9F44(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v136 = a3;
  v137 = a2;
  v144 = type metadata accessor for SoundProfileRecord(0);
  v146 = *(v144 - 8);
  __chkstk_darwin(v144);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v6 - 8);
  v133 = (&v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v128 = &v126 - v9;
  v10 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v10 - 8);
  v127 = &v126 - v11;
  v148 = type metadata accessor for UUID();
  v150 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v145 = &v126 - v14;
  v15 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v15 - 8);
  v160 = &v126 - v16;
  v17 = type metadata accessor for URL();
  v149 = *(v17 - 8);
  __chkstk_darwin(v17);
  v129 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v126 - v20;
  __chkstk_darwin(v22);
  v131 = &v126 - v23;
  __chkstk_darwin(v24);
  v142 = &v126 - v25;
  __chkstk_darwin(v26);
  v147 = &v126 - v27;
  __chkstk_darwin(v28);
  v157 = &v126 - v29;
  __chkstk_darwin(v30);
  v156 = &v126 - v31;
  v159 = type metadata accessor for BTDeferredRecord(0);
  v32 = *(v159 - 1);
  __chkstk_darwin(v159);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v158 = &v126 - v36;
  __chkstk_darwin(v37);
  v39 = &v126 - v38;
  v40 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v130 = v21;
    v138 = v5;
    v41 = qword_100300E38;
    v141 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v42 = swift_allocObject();
    v140 = xmmword_100226100;
    *(v42 + 16) = xmmword_100226100;
    v43 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v135 = a1;
    v132 = v43;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    *(v42 + 56) = &type metadata for String;
    v139 = sub_1000EE954();
    *(v42 + 64) = v139;
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    v134 = v41;
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Add sound profile record with URL: %@", 37, 2, v42);

    a1 = v162;
    v47 = sub_10019391C();
    v48 = v47[2];
    v164 = v17;
    v40 = v17;
    v161 = v48;
    if (v48)
    {
      v5 = 0;
      v163 = 0x80000001002671C0;
      v49 = _swiftEmptyArrayStorage;
      v17 = v34;
      while (1)
      {
        if (v5 >= v47[2])
        {
          __break(1u);
          goto LABEL_42;
        }

        v34 = ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v21 = *(v32 + 72);
        sub_1001CC14C(&v34[v47 + v21 * v5], v39, type metadata accessor for BTDeferredRecord);
        v50 = *(v39 + 1) == 0xD000000000000012 && v163 == *(v39 + 2);
        if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (*v39 == 1)
          {

LABEL_15:
            sub_1001CC214(v39, v17, type metadata accessor for BTDeferredRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v165 = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001C4EBC(0, v49[2] + 1, 1);
              v49 = v165;
            }

            v53 = v49[2];
            v52 = v49[3];
            a1 = v49;
            if (v53 >= v52 >> 1)
            {
              sub_1001C4EBC((v52 > 1), v53 + 1, 1);
              a1 = v165;
            }

            *(a1 + 16) = v53 + 1;
            sub_1001CC214(v17, &v34[a1 + v53 * v21], type metadata accessor for BTDeferredRecord);
            v40 = v164;
            v49 = a1;
            goto LABEL_5;
          }

          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a1)
          {
            goto LABEL_15;
          }
        }

        sub_1001CC1B4(v39, type metadata accessor for BTDeferredRecord);
LABEL_5:
        if (v161 == ++v5)
        {
          goto LABEL_21;
        }
      }
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_21:

    v163 = v49[2];
    if (!v163)
    {
      break;
    }

    v5 = 0;
    v17 = 0;
    v161 = (v149 + 48);
    v152 = "ew";
    v153 = (v149 + 32);
    v151 = (v149 + 8);
    v154 = v49;
    v155 = v32;
    while (v5 < v49[2])
    {
      v54 = v158;
      sub_1001CC14C(v49 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v5, v158, type metadata accessor for BTDeferredRecord);
      v39 = sub_100192340();
      v55 = UUID.uuidString.getter();
      v57 = v56;
      sub_1001CC1B4(v54, type metadata accessor for BTDeferredRecord);
      v58 = v160;
      URL.init(string:)();
      result = (*v161)(v58, 1, v40);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v60 = v40;
      ++v5;
      v61 = v157;
      (*v153)(v157, v58, v60);
      v21 = v156;
      URL.appendingPathComponent(_:)();
      v34 = v151;
      v62 = *v151;
      v63 = (*v151)(v61, v60);
      v64 = v62;
      a1 = *&v39[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
      __chkstk_darwin(v63);
      *(&v126 - 4) = v39;
      *(&v126 - 3) = v55;
      *(&v126 - 2) = v57;
      *(&v126 - 1) = v21;
      OS_dispatch_queue.sync<A>(execute:)();

      v40 = v164;
      v64(v21, v164);
      v49 = v154;
      v32 = v155;
      if (v163 == v5)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_26:
  v160 = 0;

  v65 = v128;
  sub_10019493C(v128);
  v66 = *(v146 + 48);
  v67 = v144;
  v146 += 48;
  v68 = (v66)(v65, 1, v144);
  v161 = v66;
  if (v68 == 1)
  {
    sub_1000EEE6C(v65, &qword_1002F84F8, &unk_1002299F0);
    v69 = v150;
    v70 = v127;
    v71 = v148;
    (*(v150 + 56))(v127, 1, 1, v148);
    UUID.init()();
    if ((*(v69 + 48))(v70, 1, v71) != 1)
    {
      sub_1000EEE6C(v70, &qword_1002F8000, &unk_1002262C0);
    }
  }

  else
  {
    v72 = v150;
    v73 = v65 + *(v67 + 20);
    v74 = v127;
    v75 = v148;
    (*(v150 + 16))(v127, v73, v148);
    sub_1001CC1B4(v65, type metadata accessor for SoundProfileRecord);
    (*(v72 + 56))(v74, 0, 1, v75);
    (*(v72 + 32))(v145, v74, v75);
  }

  type metadata accessor for DeviceStore(0);
  v76 = v130;
  sub_100174350();
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v77 = sub_1000EE91C(v40, qword_100300B68);
  v78 = v40;
  v79 = v149;
  v80 = v129;
  v81 = *(v149 + 16);
  v81(v129, v77, v78);
  URL.path.getter();
  v82 = *(v79 + 8);
  v82(v80, v78);
  v83 = v131;
  URL.appendingPathComponent(_:isDirectory:)();

  v82(v76, v78);
  v84 = v145;
  UUID.uuidString.getter();
  v85 = v142;
  URL.appendingPathComponent(_:)();

  v82(v83, v78);
  URL.appendingPathExtension(_:)();
  v149 = v79 + 8;
  v163 = v82;
  v82(v85, v78);
  v86 = *(v150 + 16);
  v86(v143, v84, v148);
  v87 = v133;
  sub_10019493C(v133);
  v88 = v144;
  v89 = (v161)(v87, 1, v144);
  v159 = v86;
  if (v89 == 1)
  {
    sub_1000EEE6C(v87, &qword_1002F84F8, &unk_1002299F0);
    v90 = 0;
    v91 = 0xC000000000000000;
  }

  else
  {
    v90 = *v87;
    v91 = v87[1];
    sub_1000EE9F4(*v87, v91);
    sub_1001CC1B4(v87, type metadata accessor for SoundProfileRecord);
  }

  v92 = v142;
  v93 = v147;
  v94 = v164;
  v81(v142, v147, v164);
  v95 = v138;
  *v138 = v90;
  *(v95 + 8) = v91;
  v96 = v143;
  v97 = v148;
  v159(v95 + *(v88 + 20), v143, v148);
  v81((v95 + *(v88 + 24)), v92, v94);
  static Date.now.getter();
  v163(v92, v94);
  v98 = *(v150 + 8);
  v150 += 8;
  v161 = v98;
  (v98)(v96, v97);
  v99 = static os_log_type_t.default.getter();
  v100 = swift_allocObject();
  *(v100 + 16) = v140;
  v101 = dispatch thunk of CustomStringConvertible.description.getter();
  v102 = v139;
  *(v100 + 56) = &type metadata for String;
  *(v100 + 64) = v102;
  *(v100 + 32) = v101;
  *(v100 + 40) = v103;
  v104 = v134;
  os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, v134, "Attempt to store asset at: %@", 29, 2, v100);

  v105 = v162;
  v106 = sub_100192340();
  __chkstk_darwin(v106);
  v107 = v135;
  *(&v126 - 2) = v93;
  *(&v126 - 1) = v107;
  v108 = v160;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v108)
  {

    v111 = static os_log_type_t.error.getter();
    v112 = swift_allocObject();
    *(v112 + 16) = v140;
    v165 = v108;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v113 = String.init<A>(describing:)();
    v114 = v139;
    *(v112 + 56) = &type metadata for String;
    *(v112 + 64) = v114;
    *(v112 + 32) = v113;
    *(v112 + 40) = v115;
    os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v104, "Unable to enocde sound profile record with URL with error: %@", 61, 2, v112);

    sub_1001266E0();
    v116 = swift_allocError();
    *v117 = v108 | 0x4000000000000000;
    swift_errorRetain();
    v137(v116);

    (v161)(v145, v148);
    sub_1001CC1B4(v95, type metadata accessor for SoundProfileRecord);
    return (v163)(v147, v164);
  }

  else
  {

    v110 = *(v105 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    __chkstk_darwin(v109);
    *(&v126 - 2) = v110;
    *(&v126 - 1) = v95;

    OS_dispatch_queue.sync<A>(execute:)();

    notify_post("BTCloudServicesSoundProfileChangedNotification");
    v137(0);
    v118 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v95, *(v95 + 8));
    if (!isa)
    {
      isa = sub_1000F82C4().super.isa;
    }

    v120 = v164;
    v121 = v161;
    v165 = isa;
    v122 = isa;
    sub_1000FD23C(&v165);
    objc_autoreleasePoolPop(v118);
    sub_100193560();
    v123 = swift_allocObject();
    swift_weakInit();
    v124 = swift_allocObject();
    *(v124 + 16) = v123;
    *(v124 + 24) = v122;

    v125 = v122;
    sub_100154534(v125, 1, sub_1001CB580, v124);

    swift_unknownObjectRelease();
    (v121)(v145, v148);
    sub_1001CC1B4(v95, type metadata accessor for SoundProfileRecord);
    v163(v147, v120);
  }
}

uint64_t sub_1001BB228(void *a1, char a2, uint64_t a3, id a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v8 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v9 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100226100;
      v21 = a1;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_1000EE954();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Unable to save record on cloud with given URL error: %@", 55, 2, v10, v21);
    }

    else
    {
      v14 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v15 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100226100;
      a4 = a1;
      v17 = [a4 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_1001633D8(a1, 0);
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_1000EE954();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Synced sound profile record with given URL: %@", 46, 2, v16);
    }

    sub_1001A1688(a4, 0);
  }

  return result;
}

uint64_t sub_1001BB488(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v6 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SoundProfileRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  sub_10019493C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000EEE6C(v8, &qword_1002F84F8, &unk_1002299F0);
    sub_1001266E0();
    swift_allocError();
    *v16 = 0x8000000000000020;
    a1();
  }

  else
  {
    v41 = a1;
    sub_1001CC214(v8, v15, type metadata accessor for SoundProfileRecord);
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v37 = v18;
      swift_once();
      v18 = v37;
    }

    v19 = qword_100300E38;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_100300E38, "Deleting sound profile record", 29, 2, _swiftEmptyArrayStorage);
    sub_100192340();
    OS_dispatch_queue.sync<A>(execute:)();

    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v19, "Deleted sound profile record asset", 34, 2, _swiftEmptyArrayStorage);
    notify_post("BTCloudServicesSoundProfileChangedNotification");
    (v41)(0);
    v21 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v15, *(v15 + 1));
    v40 = a2;
    if (!isa)
    {
      isa = sub_1000F82C4().super.isa;
    }

    v42 = isa;
    v23 = isa;
    sub_1000FD23C(&v42);
    objc_autoreleasePoolPop(v21);
    v24 = [v23 recordID];

    v39 = [v24 zoneID];
    v25 = sub_100193560();
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1001CC14C(v15, v12, type metadata accessor for SoundProfileRecord);
    v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = v3;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    sub_1001CC214(v12, v31 + v27, type metadata accessor for SoundProfileRecord);
    *(v31 + v28) = v26;
    v32 = (v31 + v29);
    v33 = v40;
    *v32 = v41;
    v32[1] = v33;
    *(v31 + v30) = v24;
    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    *(v34 + 24) = v24;
    *(v34 + 32) = sub_1001CB260;
    *(v34 + 40) = v31;
    *(v34 + 48) = 1;
    v35 = v24;

    swift_unknownObjectRetain();

    sub_100153CF4(sub_1001CB318, v34);

    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    v36 = v39;
    sub_100158CC4(&off_1002BBC58, v39, 0, 0, 0, 0);
    swift_unknownObjectRelease();

    sub_1001CB31C(&unk_1002BBC78);
    return sub_1001CC1B4(v15, type metadata accessor for SoundProfileRecord);
  }
}

uint64_t sub_1001BB9D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v42 = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v15);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v39 = a3;
    v40 = a5;
    v41 = a4;
    swift_errorRetain();
    v38 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v43 = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v18, "Unable to delete sound profile record from cloud with error: %@", 63, 2, v19);

    v23 = *(type metadata accessor for SoundProfileRecord(0) + 20);
    v24 = v15[6];
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 16))(&v17[v24], v42 + v23, v25);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v27 = v26;
    (*(v12 + 8))(v14, v11);
    *v17 = 1;
    *(v17 + 1) = 0xD000000000000012;
    *(v17 + 2) = 0x80000001002671C0;
    v28 = &v17[v15[7]];
    *v28 = 0xD000000000000011;
    v28[1] = 0x8000000100267AA0;
    *&v17[v15[8]] = v27;
    *&v17[v15[9]] = xmmword_1002298C0;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v31 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v30, v17);
      objc_autoreleasePoolPop(v31);
    }

    sub_1001266E0();
    v32 = swift_allocError();
    *v33 = a1;
    swift_errorRetain();
    v41(v32);

    return sub_1001CC1B4(v17, type metadata accessor for BTDeferredRecord);
  }

  else
  {
    v35 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v36 = v35;
      swift_once();
      v35 = v36;
    }

    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_100300E38, "Deleted sound profile record from cloud", 39, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001A73C4(a6, 0xD000000000000012, 0x80000001002671C0, 0);
    }

    return (a4)(0);
  }
}

uint64_t sub_1001BBE68(uint64_t a1, uint64_t a2)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_100300E38, "Fetching sound profile record from cloud", 40, 2, _swiftEmptyArrayStorage);
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._object = 0x8000000100267960;
  v7._countAndFlagsBits = 0xD000000000000010;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  sub_100193560();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &off_1002BBC28;
  *(v12 + 32) = isa;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = sub_1001CB218;
  *(v12 + 80) = v10;

  v13 = isa;

  sub_100153CF4(sub_1001CB224, v12);

  swift_unknownObjectRelease();
}

void sub_1001BC0A0(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SoundProfileRecord(0);
  __chkstk_darwin(v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));

  v51[0] = sub_1001CA2F0(v10);
  v11 = sub_1001C5B54(v51, sub_1001C6F88, sub_1001C609C);
  v12 = v51[0];
  if ((v51[0] & 0x8000000000000000) == 0 && (v51[0] & 0x4000000000000000) == 0)
  {
    if (*(v51[0] + 16))
    {
      goto LABEL_4;
    }

LABEL_17:

    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 == -1)
    {
LABEL_18:
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E38, "No cloud sound profile record found", 35, 2, _swiftEmptyArrayStorage, v45, v46);
      a2(0);
      return;
    }

LABEL_21:
    v44 = v11;
    swift_once();
    v11 = v44;
    goto LABEL_18;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v48 = a3;
  v49 = a2;
  v45 = v7;
  v46 = a4;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v12 + 32);
LABEL_7:
  v14 = v13;

  v15 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  v47 = xmmword_100226100;
  *(v17 + 16) = xmmword_100226100;
  v18 = v14;
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v17 + 56) = &type metadata for String;
  v23 = sub_1000EE954();
  *(v17 + 64) = v23;
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Fetched sound profile cloud record from cloud - %@", 50, 2, v17);

  v24 = v18;
  sub_1000FC2B4(v24, v9);
  v25 = static os_log_type_t.default.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v47;
  v27 = sub_1000FAF14();
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = v23;
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v16, "Fetched sound profile records from cloud - %@", 45, 2, v26);

  v29 = objc_allocWithZone(BTCloudSoundProfileRecord);
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v33 = [v29 initWithFileURL:v31];

  v49(v33);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (IsAppleInternalBuild())
    {
      v34 = [objc_opt_self() standardUserDefaults];
      v35 = String._bridgeToObjectiveC()();
      v36 = [v34 BOOLForKey:v35];

      if (v36)
      {
        v37 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(v38);
        v40 = v39;
        v50[0] = 0;
        v41 = [v37 removeItemAtURL:v39 error:v50];

        if (v41)
        {
          v42 = v50[0];
          sub_1001CC1B4(v9, type metadata accessor for SoundProfileRecord);

          return;
        }

        v43 = v50[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  sub_1001CC1B4(v9, type metadata accessor for SoundProfileRecord);
}

uint64_t sub_1001BC694(void **a1, void **a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v50 - v7;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v50 - v22;
  v24 = *a1;
  v53 = *a2;
  v25 = [v24 modificationDate];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v15 + 32);
    v27(v13, v19, v14);
    v28 = *(v15 + 56);
    v28(v13, 0, 1, v14);
    v27(v23, v13, v14);
    v29 = v53;
  }

  else
  {
    v52 = v23;
    v28 = *(v15 + 56);
    v28(v13, 1, 1, v14);
    v30 = [v24 creationDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = *(v15 + 32);
      v32(v10, v19, v14);
      v28(v10, 0, 1, v14);
      v32(v52, v10, v14);
      v33 = (*(v15 + 48))(v13, 1, v14);
    }

    else
    {
      v28(v10, 1, 1, v14);
      static Date.now.getter();
      v34 = *(v15 + 48);
      if (v34(v10, 1, v14) != 1)
      {
        sub_1000EEE6C(v10, &qword_1002F7EF0, &unk_100226C90);
      }

      v33 = v34(v13, 1, v14);
    }

    v29 = v53;
    if (v33 != 1)
    {
      sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
    }

    v23 = v52;
  }

  v35 = [v29 modificationDate];
  v36 = v55;
  if (v35)
  {
    v37 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v15 + 32);
    v38(v36, v19, v14);
    v28(v36, 0, 1, v14);
    v39 = v54;
    v38(v54, v36, v14);
  }

  else
  {
    v28(v55, 1, 1, v14);
    v40 = [v29 creationDate];
    if (v40)
    {
      v41 = v40;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v23;
      v42 = *(v15 + 32);
      v43 = v51;
      v42(v51, v19, v14);
      v28(v43, 0, 1, v14);
      v39 = v54;
      v42(v54, v43, v14);
      v23 = v52;
      v44 = (*(v15 + 48))(v36, 1, v14);
    }

    else
    {
      v45 = v51;
      v28(v51, 1, 1, v14);
      v39 = v54;
      static Date.now.getter();
      v46 = *(v15 + 48);
      if (v46(v45, 1, v14) != 1)
      {
        sub_1000EEE6C(v45, &qword_1002F7EF0, &unk_100226C90);
      }

      v44 = v46(v36, 1, v14);
    }

    if (v44 != 1)
    {
      sub_1000EEE6C(v36, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v47 = static Date.> infix(_:_:)();
  v48 = *(v15 + 8);
  v48(v39, v14);
  v48(v23, v14);
  return v47 & 1;
}

uint64_t sub_1001BCC98(uint64_t (*a1)(void))
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E38, "Local Records deleted", 21, 2, _swiftEmptyArrayStorage);
  v3 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v7[4] = sub_100174324;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100174328;
  v7[3] = &unk_1002C05F8;
  v4 = _Block_copy(v7);

  dispatch_sync(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return a1(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BCE18(uint64_t (*a1)(void), uint64_t a2)
{
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v6 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v37 = v8;
    swift_once();
    v8 = v37;
  }

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_100300E38, "Reset Local and Cloud Container", 31, 2, _swiftEmptyArrayStorage);
  v53 = sub_100193560();
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v38 = v9;
    swift_once();
    v9 = v38;
  }

  v10 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E28, "Nuke and reset cloud container", 30, 2, _swiftEmptyArrayStorage);
  v11 = v53 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v12 = *(*(v11 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 32)) + 16);
  if (v12)
  {
    v39[1] = a2;
    v40 = a1;
    v44 = CKCurrentUserDefaultName;
    v43 = v56;
    v42 = (v4 + 8);
    v41 = (v6 + 8);

    v13 = (v39[0] + 40);
    v14 = &unk_1002262B0;
    v52 = xmmword_100226100;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      v17 = static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, v14);
      v18 = swift_allocObject();
      *(v18 + 16) = v52;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_1000EE954();
      *(v18 + 32) = v15;
      *(v18 + 40) = v16;

      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v10, "Remove zone %@ from cloud container", 37, 2, v18, v39[0]);

      if ((sub_10014D91C(v15, v16) & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v20 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21._object = v22;
        v23._countAndFlagsBits = v15;
        v23._object = v16;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v23, v21).super.isa;
        v25 = *(v20 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v26 = swift_allocObject();
        *(v26 + 16) = isa;
        *(v26 + 24) = v20;
        v56[2] = sub_100162BAC;
        v56[3] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v56[0] = sub_1001742E0;
        v56[1] = &unk_1002C05D0;
        v50 = _Block_copy(aBlock);
        v49 = v25;
        v51 = isa;
        swift_unknownObjectRetain();
        v27 = v45;
        static DispatchQoS.unspecified.getter();
        v54 = _swiftEmptyArrayStorage;
        sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v28 = v10;
        v29 = v47;
        v30 = v14;
        v31 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v32 = v49;
        v33 = v50;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v33);

        v34 = v29;
        v10 = v28;
        v35 = v31;
        v14 = v30;
        (*v42)(v34, v35);
        (*v41)(v27, v46);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v13 += 2;
      --v12;
    }

    while (v12);
    swift_unknownObjectRelease();

    return v40(0);
  }

  else
  {
    swift_unknownObjectRelease();
    return a1(0);
  }
}

double sub_1001BD42C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v140 = a3;
  v141 = a2;
  v138 = a4;
  v139 = a1;
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v5 - 8);
  v125 = &v121 - v6;
  v126 = type metadata accessor for SoundProfileRecord(0);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v8 - 8);
  v130 = &v121 - v9;
  v10 = type metadata accessor for DeviceSupportInformationRecord(0);
  v128 = *(v10 - 8);
  __chkstk_darwin(v10);
  v123 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v12 - 8);
  v134 = &v121 - v13;
  v14 = type metadata accessor for MagicPairingSettingsRecord(0);
  v132 = *(v14 - 8);
  v133 = v14;
  __chkstk_darwin(v14);
  v127 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v137 = *(v16 - 8);
  __chkstk_darwin(v16);
  v136 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v18 - 8);
  v20 = &v121 - v19;
  v21 = type metadata accessor for DeviceRecord(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_opt_self();
  v26 = [v25 isFirstUnlocked];
  v131 = v16;
  v135 = v4;
  v129 = v10;
  if (v26)
  {
    v27 = v25;
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v28 = sub_1000EE91C(v16, qword_100300AF0);
    v29 = v136;
    v30 = v137;
    (*(v137 + 16))(v136, v28, v16);
    v31 = sub_10018B20C(v29);

    v32 = (*(v30 + 8))(v29, v16);
    v25 = v27;
  }

  else
  {
    v33 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v115 = v33;
      swift_once();
      v33 = v115;
    }

    v31 = _swiftEmptyArrayStorage;
    v32 = os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
  }

  __chkstk_darwin(v32);
  v34 = v140;
  v35 = v141;
  *(&v121 - 4) = v139;
  *(&v121 - 3) = v35;
  *(&v121 - 2) = v34;
  sub_10017D118(sub_1001CB0D4, v31, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, v20);

  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_1001CC214(v20, v24, type metadata accessor for DeviceRecord);
    v46 = v138;
    v138[3] = v21;
    v46[4] = sub_1001C4BB4(&unk_1002F9BF0, type metadata accessor for DeviceRecord, &unk_100226AFC);
    v47 = sub_100133584(v46);
    v48 = v24;
    v49 = type metadata accessor for DeviceRecord;
LABEL_31:
    sub_1001CC214(v48, v47, v49);
    return result;
  }

  sub_1000EEE6C(v20, &qword_1002F8520, &unk_100227B60);
  if ([v25 isFirstUnlocked])
  {
    v36 = v25;
    sub_100192340();
    v38 = v139;
    v37 = v140;
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v39 = v131;
    v40 = sub_1000EE91C(v131, qword_100300BA8);
    v41 = v136;
    v42 = v137;
    (*(v137 + 16))(v136, v40, v39);
    v43 = sub_10018C984(v41);

    v44 = (*(v42 + 8))(v41, v39);
    v45 = v141;
    v25 = v36;
  }

  else
  {
    v50 = static os_log_type_t.error.getter();
    v38 = v139;
    v37 = v140;
    if (qword_1002F7AE8 != -1)
    {
      v116 = v50;
      swift_once();
      v50 = v116;
    }

    v43 = _swiftEmptyArrayStorage;
    v44 = os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    v45 = v141;
  }

  v52 = v133;
  v51 = v134;
  __chkstk_darwin(v44);
  *(&v121 - 4) = v38;
  *(&v121 - 3) = v45;
  *(&v121 - 2) = v37;
  sub_10017D118(sub_1001CB0F8, v43, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v51);

  if ((*(v132 + 48))(v51, 1, v52) != 1)
  {
    v60 = type metadata accessor for MagicPairingSettingsRecord;
    v61 = v127;
    sub_1001CC214(v51, v127, type metadata accessor for MagicPairingSettingsRecord);
    v62 = v138;
    v138[3] = v52;
    v63 = &unk_1002F9BE8;
    v64 = type metadata accessor for MagicPairingSettingsRecord;
    v65 = &unk_100227FD8;
LABEL_30:
    v62[4] = sub_1001C4BB4(v63, v64, v65);
    v47 = sub_100133584(v62);
    v48 = v61;
    v49 = v60;
    goto LABEL_31;
  }

  sub_1000EEE6C(v51, &unk_1002F9C30, &qword_1002299A0);
  if ([v25 isFirstUnlocked])
  {
    v53 = v25;
    sub_100192340();
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v54 = v131;
    v55 = sub_1000EE91C(v131, qword_100300D48);
    v57 = v136;
    v56 = v137;
    (*(v137 + 16))(v136, v55, v54);
    v58 = sub_10018BDC8(v57);

    v59 = (*(v56 + 8))(v57, v54);
    v25 = v53;
  }

  else
  {
    v66 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v117 = v66;
      swift_once();
      v66 = v117;
    }

    v58 = _swiftEmptyArrayStorage;
    v59 = os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
  }

  __chkstk_darwin(v59);
  *(&v121 - 4) = v38;
  *(&v121 - 3) = v45;
  *(&v121 - 2) = v37;
  v67 = v130;
  sub_10017D118(sub_1001CB11C, v58, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, v130);

  v68 = v67;
  v69 = v67;
  v70 = v129;
  if ((*(v128 + 48))(v69, 1, v129) != 1)
  {
    v60 = type metadata accessor for DeviceSupportInformationRecord;
    v61 = v123;
    sub_1001CC214(v68, v123, type metadata accessor for DeviceSupportInformationRecord);
    v62 = v138;
    v138[3] = v70;
    v63 = &unk_1002F9BE0;
    v64 = type metadata accessor for DeviceSupportInformationRecord;
    v65 = &unk_100228C00;
    goto LABEL_30;
  }

  sub_1000EEE6C(v68, &qword_1002F8510, &unk_100227B50);
  v71 = v125;
  sub_10019493C(v125);
  v72 = v71;
  v73 = v71;
  v74 = v126;
  if ((*(v124 + 48))(v73, 1, v126) == 1)
  {
    sub_1000EEE6C(v72, &qword_1002F84F8, &unk_1002299F0);
    goto LABEL_38;
  }

  v76 = v72;
  v77 = v122;
  sub_1001CC214(v76, v122, type metadata accessor for SoundProfileRecord);
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v45 == 0xD000000000000012 && 0x80000001002671C0 == v37 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v78 = v74;
    v79 = v138;
    v138[3] = v78;
    v79[4] = sub_1001C4BB4(&unk_1002F9CA0, type metadata accessor for SoundProfileRecord, &unk_100227314);
    v47 = sub_100133584(v79);
    v49 = type metadata accessor for SoundProfileRecord;
    v48 = v77;
    goto LABEL_31;
  }

  sub_1001CC1B4(v77, type metadata accessor for SoundProfileRecord);
LABEL_38:
  v143 = &type metadata for AudioAccessoryFeatures;
  v80 = sub_1000F1874();
  v144 = v80;
  v81 = isFeatureEnabled(_:)();
  v82 = sub_1000EF824(v142);
  if (v81)
  {
    if ([v25 isFirstUnlocked])
    {
      v141 = v25;
      sub_100192340();
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v83 = v131;
      v84 = sub_1000EE91C(v131, qword_100300D88);
      v85 = v136;
      v86 = v137;
      (*(v137 + 16))(v136, v84, v83);
      v87 = sub_10018E14C(v85, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      v82 = (*(v86 + 8))(v85, v83);
      v25 = v141;
    }

    else
    {
      v88 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v118 = v88;
        swift_once();
        v88 = v118;
      }

      v87 = _swiftEmptyArrayStorage;
      v82 = os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, qword_100300E38, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v87 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v82);
  *(&v121 - 4) = v38;
  *(&v121 - 3) = v45;
  *(&v121 - 2) = v37;
  v89 = sub_10017D320(sub_1001CB140, (&v121 - 6), v87);

  if (v89)
  {
    v90 = type metadata accessor for AADeviceRecord(0);
    v91 = v138;
    v138[3] = v90;
    v91[4] = sub_1001C4BB4(&qword_1002F9BC8, type metadata accessor for AADeviceRecord, &unk_100229528);
    *v91 = v89;
    return result;
  }

  v143 = &type metadata for AudioAccessoryFeatures;
  v144 = v80;
  v92 = isFeatureEnabled(_:)();
  v93 = sub_1000EF824(v142);
  if (v92)
  {
    if ([v25 isFirstUnlocked])
    {
      v141 = v25;
      sub_100192340();
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v94 = v131;
      v95 = sub_1000EE91C(v131, qword_100300B10);
      v97 = v136;
      v96 = v137;
      (*(v137 + 16))(v136, v95, v94);
      v98 = sub_10018E14C(v97, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      v93 = (*(v96 + 8))(v97, v94);
      v25 = v141;
    }

    else
    {
      v99 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v119 = v99;
        swift_once();
        v99 = v119;
      }

      v98 = _swiftEmptyArrayStorage;
      v93 = os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, qword_100300E38, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v98 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v93);
  *(&v121 - 4) = v38;
  *(&v121 - 3) = v45;
  *(&v121 - 2) = v37;
  v100 = sub_10017D320(sub_1001CB164, (&v121 - 6), v98);

  if (v100)
  {
    v101 = type metadata accessor for AAProxCardsRecord(0);
    v102 = v138;
    v138[3] = v101;
    v103 = &unk_1002F9BD0;
    v104 = type metadata accessor for AAProxCardsRecord;
    v105 = &unk_100226D98;
LABEL_69:
    v102[4] = sub_1001C4BB4(v103, v104, v105);
    *v102 = v100;
    return result;
  }

  if ([v25 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v106 = v131;
    v107 = sub_1000EE91C(v131, qword_100300C40);
    v109 = v136;
    v108 = v137;
    (*(v137 + 16))(v136, v107, v106);
    v110 = sub_10018E14C(v109, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    v111 = (*(v108 + 8))(v109, v106);
  }

  else
  {
    v112 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v120 = v112;
      swift_once();
      v112 = v120;
    }

    v110 = _swiftEmptyArrayStorage;
    v111 = os_log(_:dso:log:_:_:)(v112, &_mh_execute_header, qword_100300E38, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  }

  __chkstk_darwin(v111);
  *(&v121 - 4) = v38;
  *(&v121 - 3) = v45;
  *(&v121 - 2) = v37;
  v100 = sub_10017D320(sub_1001CB188, (&v121 - 6), v110);

  if (v100)
  {
    v113 = type metadata accessor for HMDeviceCloudRecord(0);
    v102 = v138;
    v138[3] = v113;
    v103 = &unk_1002F9BD8;
    v104 = type metadata accessor for HMDeviceCloudRecord;
    v105 = &unk_1002286A0;
    goto LABEL_69;
  }

  v114 = v138;
  v138[4] = 0;
  result = 0.0;
  *v114 = 0u;
  *(v114 + 1) = 0u;
  return result;
}

uint64_t sub_1001BE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DeviceRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x6552656369766544 && a4 == 0xEC00000064726F63)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x746553636967614DLL && a4 == 0xED000073676E6974)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD00000000000001ELL && 0x80000001002671E0 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE9C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x6563697665444141 && a4 == 0xEE0064726F636552)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BEA6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD000000000000011 && 0x800000010026EAC0 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BEB10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD000000000000013 && 0x8000000100267B10 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

double sub_1001BEBB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v153 = a3;
  v154 = a4;
  v155 = a1;
  v156 = a2;
  v8 = type metadata accessor for DeviceSupportInformationRecord(0);
  v148 = *(v8 - 1);
  __chkstk_darwin(v8);
  v151 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v135 - v11;
  __chkstk_darwin(v12);
  v137 = &v135 - v13;
  v14 = type metadata accessor for MagicPairingSettingsRecord(0);
  v15 = *(v14 - 8);
  v149 = v14;
  v150 = v15;
  __chkstk_darwin(v14);
  v152 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v138 = &v135 - v18;
  __chkstk_darwin(v19);
  v139 = &v135 - v20;
  v21 = type metadata accessor for URL();
  v144 = *(v21 - 8);
  v145 = v21;
  __chkstk_darwin(v21);
  v143 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DeviceRecord(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v140 = &v135 - v28;
  __chkstk_darwin(v29);
  v141 = &v135 - v30;
  v146 = objc_opt_self();
  v31 = [v146 isFirstUnlocked];
  v147 = a5;
  if (!v31)
  {
    v38 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v128 = v38;
      swift_once();
      v38 = v128;
    }

    v37 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  a5 = v8;
  v32 = v5;
  sub_100192340();
  if (qword_1002F79C0 != -1)
  {
    goto LABEL_186;
  }

  while (1)
  {
    v33 = v145;
    v34 = sub_1000EE91C(v145, qword_100300AF0);
    v36 = v143;
    v35 = v144;
    (*(v144 + 16))(v143, v34, v33);
    v37 = sub_10018B20C(v36);

    (*(v35 + 8))(v36, v33);
    v8 = a5;
    a5 = v147;
    v6 = v32;
LABEL_7:
    v39 = v37[2];
    v142 = v6;
    if (v39)
    {
      break;
    }

LABEL_26:
    if ([v146 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v51 = v145;
      v52 = sub_1000EE91C(v145, qword_100300BA8);
      v54 = v143;
      v53 = v144;
      (*(v144 + 16))(v143, v52, v51);
      v55 = sub_10018C984(v54);

      (*(v53 + 8))(v54, v51);
      v56 = v55[2];
      if (v56)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v67 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v129 = v67;
        swift_once();
        v67 = v129;
      }

      v55 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
      v56 = _swiftEmptyArrayStorage[2];
      if (v56)
      {
LABEL_30:
        v57 = 0;
        v24 = 0xED000073676E6974;
        v26 = 0x746553636967614DLL;
        v58 = v55 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v23 = v153 == 0x746553636967614DLL && v154 == 0xED000073676E6974;
        v32 = v152;
        while (v57 < v55[2])
        {
          sub_1001CC14C(&v58[*(v150 + 72) * v57], v32, type metadata accessor for MagicPairingSettingsRecord);
          v60 = (v32 + *(v149 + 24));
          v61 = *v60 == v155 && v60[1] == v156;
          if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v23 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v45 = type metadata accessor for MagicPairingSettingsRecord;
            v62 = v138;
            sub_1001CC214(v152, v138, type metadata accessor for MagicPairingSettingsRecord);
            v63 = v62;
            v64 = v139;
            sub_1001CC214(v63, v139, type metadata accessor for MagicPairingSettingsRecord);
            a5[3] = v149;
            a5[4] = sub_1001C4BB4(&qword_1002F9BE8, type metadata accessor for MagicPairingSettingsRecord, &unk_100227FD8);
            v49 = sub_100133584(a5);
            v50 = v64;
            goto LABEL_47;
          }

          ++v57;
          sub_1001CC1B4(v152, type metadata accessor for MagicPairingSettingsRecord);
          if (v56 == v57)
          {
            goto LABEL_52;
          }
        }

LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }
    }

LABEL_52:

    if ([v146 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v68 = v145;
      v69 = sub_1000EE91C(v145, qword_100300D48);
      v71 = v143;
      v70 = v144;
      (*(v144 + 16))(v143, v69, v68);
      v72 = sub_10018BDC8(v71);

      (*(v70 + 8))(v71, v68);
    }

    else
    {
      v73 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v130 = v73;
        swift_once();
        v73 = v130;
      }

      v72 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
    }

    v23 = 0xD000000000000011;
    v26 = v72[2];
    if (v26)
    {
      v74 = 0;
      v75 = v72 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
      v24 = 0x80000001002671E0;
      v77 = v153 == 0xD00000000000001ELL && 0x80000001002671E0 == v154;
      v32 = v151;
      while (v74 < v72[2])
      {
        sub_1001CC14C(&v75[*(v148 + 72) * v74], v32, type metadata accessor for DeviceSupportInformationRecord);
        v78 = (v32 + *(v8 + 6));
        v79 = *v78 == v155 && v78[1] == v156;
        if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v80 = v136;
          sub_1001CC214(v151, v136, type metadata accessor for DeviceSupportInformationRecord);
          v81 = v80;
          v82 = v137;
          sub_1001CC214(v81, v137, type metadata accessor for DeviceSupportInformationRecord);
          a5[3] = v8;
          a5[4] = sub_1001C4BB4(&qword_1002F9BE0, type metadata accessor for DeviceSupportInformationRecord, &unk_100228C00);
          v49 = sub_100133584(a5);
          v50 = v82;
          v65 = type metadata accessor for DeviceSupportInformationRecord;
          goto LABEL_48;
        }

        ++v74;
        sub_1001CC1B4(v151, type metadata accessor for DeviceSupportInformationRecord);
        if (v26 == v74)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_179;
    }

LABEL_77:

    v158 = &type metadata for AudioAccessoryFeatures;
    v152 = sub_1000F1874();
    v159 = v152;
    v83 = isFeatureEnabled(_:)();
    sub_1000EF824(v157);
    if (v83)
    {
      if ([v146 isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7AB8 != -1)
        {
          swift_once();
        }

        v84 = v145;
        v85 = sub_1000EE91C(v145, qword_100300D88);
        v87 = v143;
        v86 = v144;
        (*(v144 + 16))(v143, v85, v84);
        v88 = sub_10018E14C(v87, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

        (*(v86 + 8))(v87, v84);
        if (!(v88 >> 62))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v96 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v132 = v96;
          swift_once();
          v96 = v132;
        }

        v88 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, qword_100300E38, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_84:
          v24 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_85;
          }

          goto LABEL_111;
        }
      }
    }

    else
    {
      v88 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_84;
      }
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
LABEL_85:
      v26 = 0;
      v32 = v88 & 0xC000000000000001;
      v90 = v153 == 0x6563697665444141 && v154 == 0xEE0064726F636552;
      v23 = &OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress;
      do
      {
        if (v32)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_181;
          }

          v91 = *(v88 + 8 * v26 + 32);
        }

        a5 = v91;
        v92 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_180;
        }

        v93 = *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress) == v155 && *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8) == v156;
        if (v93 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v94 = type metadata accessor for AADeviceRecord(0);
          v95 = v147;
          v147[3] = v94;
          v95[4] = sub_1001C4BB4(&qword_1002F9BC8, type metadata accessor for AADeviceRecord, &unk_100229528);
          *v95 = a5;
          return result;
        }

        ++v26;
      }

      while (v92 != v24);
    }

LABEL_111:

    v158 = &type metadata for AudioAccessoryFeatures;
    v159 = v152;
    v97 = isFeatureEnabled(_:)();
    sub_1000EF824(v157);
    if (v97)
    {
      if ([v146 isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F79D0 != -1)
        {
          swift_once();
        }

        v98 = v145;
        v99 = sub_1000EE91C(v145, qword_100300B10);
        v101 = v143;
        v100 = v144;
        (*(v144 + 16))(v143, v99, v98);
        v102 = sub_10018E14C(v101, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

        (*(v100 + 8))(v101, v98);
        if (!(v102 >> 62))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v114 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v134 = v114;
          swift_once();
          v114 = v134;
        }

        v102 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, qword_100300E38, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_118:
          v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v103)
          {
            goto LABEL_119;
          }

          goto LABEL_145;
        }
      }
    }

    else
    {
      v102 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_118;
      }
    }

    v103 = _CocoaArrayWrapper.endIndex.getter();
    if (v103)
    {
LABEL_119:
      v24 = 0;
      a5 = (v102 & 0xFFFFFFFFFFFFFF8);
      v26 = 0x800000010026EAC0;
      v105 = v153 == 0xD000000000000011 && 0x800000010026EAC0 == v154;
      v32 = &OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress;
      do
      {
        if ((v102 & 0xC000000000000001) != 0)
        {
          v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_183;
          }

          v106 = *(v102 + 8 * v24 + 32);
        }

        v23 = v106;
        v107 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_182;
        }

        v108 = *&v106[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress] == v155 && *&v106[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8] == v156;
        if (v108 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v105 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v109 = type metadata accessor for AAProxCardsRecord(0);
          v110 = v147;
          v147[3] = v109;
          v111 = &unk_1002F9BD0;
          v112 = type metadata accessor for AAProxCardsRecord;
          v113 = &unk_100226D98;
LABEL_176:
          v110[4] = sub_1001C4BB4(v111, v112, v113);
          *v110 = v23;
          return result;
        }

        ++v24;
      }

      while (v107 != v103);
    }

LABEL_145:

    if ([v146 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v115 = v145;
      v116 = sub_1000EE91C(v145, qword_100300C40);
      v118 = v143;
      v117 = v144;
      (*(v144 + 16))(v143, v116, v115);
      v119 = sub_10018E14C(v118, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      (*(v117 + 8))(v118, v115);
    }

    else
    {
      v120 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v133 = v120;
        swift_once();
        v120 = v133;
      }

      v119 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v120, &_mh_execute_header, qword_100300E38, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    }

    if (v119 >> 62)
    {
      v121 = _CocoaArrayWrapper.endIndex.getter();
      if (!v121)
      {
LABEL_188:

        v131 = v147;
        v147[4] = 0;
        result = 0.0;
        *v131 = 0u;
        *(v131 + 1) = 0u;
        return result;
      }
    }

    else
    {
      v121 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v121)
      {
        goto LABEL_188;
      }
    }

    v24 = 0;
    a5 = (v119 & 0xFFFFFFFFFFFFFF8);
    v26 = 0x8000000100267B10;
    v123 = v153 == 0xD000000000000013 && 0x8000000100267B10 == v154;
    v32 = &OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress;
    while (1)
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        v124 = *(v119 + 8 * v24 + 32);
      }

      v23 = v124;
      v125 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v126 = *&v124[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress] == v155 && *&v124[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8] == v156;
      if (v126 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        v127 = type metadata accessor for HMDeviceCloudRecord(0);
        v110 = v147;
        v147[3] = v127;
        v111 = &unk_1002F9BD8;
        v112 = type metadata accessor for HMDeviceCloudRecord;
        v113 = &unk_1002286A0;
        goto LABEL_176;
      }

      ++v24;
      if (v125 == v121)
      {
        goto LABEL_188;
      }
    }

LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    swift_once();
  }

  v135 = v8;
  v40 = 0;
  a5 = 0xEC00000064726F63;
  v41 = v37 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v32 = v153 == 0x6552656369766544 && v154 == 0xEC00000064726F63;
  while (1)
  {
    if (v40 >= v37[2])
    {
      __break(1u);
      goto LABEL_178;
    }

    sub_1001CC14C(&v41[*(v24 + 72) * v40], v26, type metadata accessor for DeviceRecord);
    v43 = (v26 + *(v23 + 24));
    v44 = *v43 == v155 && v43[1] == v156;
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v32 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      break;
    }

    ++v40;
    sub_1001CC1B4(v26, type metadata accessor for DeviceRecord);
    if (v39 == v40)
    {

      a5 = v147;
      v8 = v135;
      goto LABEL_26;
    }
  }

  v45 = type metadata accessor for DeviceRecord;
  v46 = v140;
  sub_1001CC214(v26, v140, type metadata accessor for DeviceRecord);
  v47 = v141;
  sub_1001CC214(v46, v141, type metadata accessor for DeviceRecord);
  v48 = v147;
  v147[3] = v23;
  v48[4] = sub_1001C4BB4(&unk_1002F9BF0, type metadata accessor for DeviceRecord, &unk_100226AFC);
  v49 = sub_100133584(v48);
  v50 = v47;
LABEL_47:
  v65 = v45;
LABEL_48:
  sub_1001CC214(v50, v49, v65);
  return result;
}