uint64_t sub_1003D2B68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v29 = a2;
  v30 = a1;
  v28 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v31);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 64) = v19;
  *(v15 + 72) = 0xD000000000000024;
  *(v15 + 80) = 0x8000000101352920;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "%{public}@: %{public}@", 22, 2, v15);

  v20 = swift_allocObject();
  v21 = v29;
  v22 = v30;
  v20[2] = v4;
  v20[3] = v22;
  v23 = v32;
  v20[4] = v21;
  v20[5] = v23;
  v20[6] = v28;
  aBlock[4] = sub_100407A80;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B010;
  v24 = _Block_copy(aBlock);

  v25 = v22;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v26 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v37 + 8))(v7, v26);
  (*(v35 + 8))(v10, v36);
  (*(v33 + 8))(v31, v34);
}

void sub_1003D3040(uint64_t a1, void *a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v128 = a5;
  v138 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v8 - 8);
  v136 = v8;
  __chkstk_darwin(v8);
  v133 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchQoS();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v126);
  v127 = (&v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v125 - v20;
  v140 = a2;
  v22 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();
  *&v139 = a1;
  v24 = *(a1 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_8;
  }

  v25 = sub_1000210EC(v21);
  if ((v26 & 1) == 0)
  {

LABEL_8:
    v137 = a4;
    v37 = *(v16 + 8);
    v37(v21, v15);
    v38 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v124 = v38;
      swift_once();
      v38 = v124;
    }

    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_10177C3B0, "#Durian: Finalize step reached for a session that was not instantiated from here.", 81, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_101385D80;
    *(v39 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v39 + 40) = v40;
    *(v39 + 48) = 0xD000000000000050;
    *(v39 + 56) = 0x80000001013529B0;
    v41 = sub_100907E70(v39);
    swift_setDeallocating();
    sub_10000B3A8(v39 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    v42 = [v140 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_1007AA0B4(v19);
    v37(v19, v15);
    swift_endAccess();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v44 = v129;
    v43 = v130;
    (*(v129 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v130);
    v45 = static OS_dispatch_queue.global(qos:)();
    (*(v44 + 8))(v13, v43);
    v46 = swift_allocObject();
    v47 = v137;
    v46[2] = v138;
    v46[3] = v47;
    v46[4] = v41;
    *&v207 = sub_100407A98;
    *(&v207 + 1) = v46;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v206 = sub_100006684;
    *(&v206 + 1) = &unk_10161B060;
    v48 = _Block_copy(&aBlock);

    v49 = v131;
    static DispatchQoS.unspecified.getter();
    *&v203[0] = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v50 = v133;
    v51 = v136;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v135 + 8))(v50, v51);
    (*(v132 + 8))(v49, v134);
    goto LABEL_11;
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  v28 = *(v16 + 8);

  v28(v21, v15);

  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C3B0;
  os_signpost(_:dso:log:name:signpostID:)();
  v30 = *(v27 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);

  v31 = v140;
  sub_1003D4B8C(v140, v27, &v183);
  v179 = v189;
  v180 = v190;
  v181 = v191;
  v175 = v185;
  v176 = v186;
  v177 = v187;
  v178 = v188;
  v173 = v183;
  v174 = v184;
  v199 = v189;
  v200 = v190;
  v201 = v191;
  v195 = v185;
  v196 = v186;
  v197 = v187;
  v198 = v188;
  v182 = v192;
  v202 = v192;
  v193 = v183;
  v194 = v184;
  if (sub_1000424A8(&v193) == 1)
  {
    v32 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v29, "#Durian: Session has critical ack info missing.", 47, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 40) = v34;
    *(v33 + 48) = 0xD000000000000043;
    *(v33 + 56) = 0x8000000101352A60;
    v35 = sub_100907E70(v33);
    swift_setDeallocating();
    sub_10000B3A8(v33 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&v203[0] = 6;
    sub_1006953B0(v35);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = aBlock;
    sub_100FC89F8(aBlock, 1, &v183, v138, a4);

LABEL_11:

    return;
  }

  v137 = a4;
  v203[6] = v199;
  v203[7] = v200;
  v203[8] = v201;
  v203[2] = v195;
  v203[3] = v196;
  v203[4] = v197;
  v203[5] = v198;
  v203[0] = v193;
  v203[1] = v194;
  v169 = v199;
  v170 = v200;
  v171 = v201;
  v165 = v195;
  v166 = v196;
  v167 = v197;
  v168 = v198;
  v204 = v202;
  v172 = v202;
  v163 = v193;
  v164 = v194;
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  v52 = [v31 keyGenerationStatus];
  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v31;
  v56 = v55;

  *&aBlock = v53;
  *(&aBlock + 1) = v56;
  sub_1000E0A3C();
  v57 = DataProtocol.intValue.getter();
  sub_100016590(v53, v56);
  if (v57)
  {
    v58 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v59 = swift_allocObject();
    v139 = xmmword_101385D80;
    *(v59 + 16) = xmmword_101385D80;
    v60 = [v54 keyGenerationStatus];
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v136 = v30;
    v63 = v62;

    v64 = Data.hexString.getter();
    v66 = v65;
    sub_100016590(v61, v63);
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_100008C00();
    *(v59 + 32) = v64;
    *(v59 + 40) = v66;
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v29, "#Durian: Key generation did not succeed on remote device. Status - %@", 69, 2, v59);

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v67 = swift_allocObject();
    *(v67 + 16) = v139;
    *(v67 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v67 + 40) = v68;
    *(v67 + 48) = 0xD000000000000050;
    *(v67 + 56) = 0x8000000101352B00;
    v69 = sub_100907E70(v67);
    swift_setDeallocating();
    sub_10000B3A8(v67 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 3;
    sub_1006953B0(v69);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v70 = *&v141[0];
    v149 = v169;
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v145 = v165;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v143 = v163;
    v144 = v164;
    SharingCircleWildAdvertisementKey.init(key:)();
    v211 = v149;
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v207 = v145;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    aBlock = v143;
    v206 = v144;
    v159 = v179;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v155 = v175;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v153 = v173;
    v154 = v174;
    sub_100407B48(&v153, v142);
    sub_100FC89F8(v70, 1, &aBlock, v138, v137);

    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);
LABEL_19:

    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);

    return;
  }

  v71 = *(v27 + 24);
  if (!v71)
  {
    v79 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v29, "#Durian: Owner context is missing in wrapper. Cannot proceed.", 61, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_101385D80;
    *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v80 + 40) = v81;
    *(v80 + 48) = 0xD00000000000004ELL;
    *(v80 + 56) = 0x8000000101352BA0;
    v82 = sub_100907E70(v80);
    swift_setDeallocating();
    sub_10000B3A8(v80 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 7;
    sub_1006953B0(v82);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v70 = *&v141[0];
    v149 = v169;
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v145 = v165;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v143 = v163;
    v144 = v164;
    SharingCircleWildAdvertisementKey.init(key:)();
    v211 = v149;
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v207 = v145;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    aBlock = v143;
    v206 = v144;
    v159 = v179;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v155 = v175;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v153 = v173;
    v154 = v174;
    sub_100407B48(&v153, v142);
    sub_100FC89F8(v70, 1, &aBlock, v138, v137);

    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);
    goto LABEL_19;
  }

  v72 = [v140 collaborativeKeyC3];
  v73 = v137;
  if (!v72)
  {
    v83 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v29, "#Durian: Commitment is not available to verify pairing info", 59, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_101385D80;
    *(v84 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v84 + 40) = v85;
    *(v84 + 48) = 0xD000000000000050;
    *(v84 + 56) = 0x8000000101352C30;
    v86 = sub_100907E70(v84);
    swift_setDeallocating();
    sub_10000B3A8(v84 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&aBlock = 6;
    sub_1006953B0(v86);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v70 = *&v141[0];
    v149 = v169;
    v150 = v170;
    v151 = v171;
    v152 = v172;
    v145 = v165;
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v143 = v163;
    v144 = v164;
    SharingCircleWildAdvertisementKey.init(key:)();
    v211 = v149;
    v212 = v150;
    v213 = v151;
    v214 = v152;
    v207 = v145;
    v208 = v146;
    v209 = v147;
    v210 = v148;
    aBlock = v143;
    v206 = v144;
    v159 = v179;
    v160 = v180;
    v161 = v181;
    v162 = v182;
    v155 = v175;
    v156 = v176;
    v157 = v177;
    v158 = v178;
    v153 = v173;
    v154 = v174;
    sub_100407B48(&v153, v142);
    sub_100FC89F8(v70, 1, &aBlock, v138, v73);

    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);

    goto LABEL_19;
  }

  v136 = v30;
  v74 = v72;
  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = CCCKGGetOpeningSize();

  sub_1003F141C(v75, v77, v71, v78, v141);
  v133 = v77;
  v134 = v75;
  v135 = v71;
  v206 = v141[1];
  v207 = v141[2];
  v208 = v141[3];
  v209 = v141[4];
  aBlock = v141[0];
  v87 = *(v139 + 280);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (v153 != 1)
  {
    v119 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v119, &_mh_execute_header, v29, "Cannot pair as account is not ready", 35, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_101385D80;
    *(v120 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v120 + 40) = v121;
    *(v120 + 48) = 0xD000000000000040;
    *(v120 + 56) = 0x8000000101352D90;
    v122 = sub_100907E70(v120);
    swift_setDeallocating();
    sub_10000B3A8(v120 + 32, &qword_101696D88, &unk_10138B760);
    swift_deallocClassInstance();
    type metadata accessor for SPPairingSessionError(0);
    *&v143 = 10;
    sub_1006953B0(v122);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v123 = v153;
    v138(v153, 1);

    sub_1001DA760(&aBlock);
    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);
    sub_100016590(v134, v133);

    goto LABEL_11;
  }

  v88 = [v140 chipId];
  v90 = v133;
  v89 = v134;
  v91 = v137;
  if (!v88)
  {
LABEL_37:
    sub_1003D5638(v27, v139, &aBlock, v140, v203, v138, v91, v128);

    sub_1001DA760(&aBlock);
    sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);
    sub_100016590(v89, v90);

    goto LABEL_11;
  }

  v92 = v88;
  v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v96 = Data.hexString.getter();
  v98 = v97;
  sub_100016590(v93, v95);
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v99 || (v100 = [v140 ecid]) == 0)
  {
LABEL_36:
    v89 = v134;

    goto LABEL_37;
  }

  v101 = v27;
  v102 = v100;
  v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  v106 = Data.hexString.getter();
  v108 = v107;
  sub_100016590(v103, v105);
  v109 = HIBYTE(v108) & 0xF;
  if ((v108 & 0x2000000000000000) == 0)
  {
    v109 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (!v109 || (v110 = [v140 serialNumber]) == 0)
  {
LABEL_35:

    v27 = v101;
    v91 = v137;
    goto LABEL_36;
  }

  v111 = v110;
  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;

  v115 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (!v115)
  {

    v90 = v133;
    goto LABEL_35;
  }

  v116 = v127;
  *v127 = v96;
  v116[1] = v98;
  v116[2] = v106;
  v116[3] = v108;
  v116[4] = v112;
  v116[5] = v114;
  swift_storeEnumTagMultiPayload();
  v117 = dispatch_group_create();
  dispatch_group_enter(v117);
  v118 = v117;
  sub_1003FEF4C(v116, v87, v118);

  OS_dispatch_group.wait()();
  sub_1003D5638(v101, v139, &aBlock, v140, v203, v138, v137, v128);
  sub_1001DA760(&aBlock);

  sub_100016590(v134, v133);

  sub_10000B3A8(&v183, &qword_10169F428, &qword_1013A08E8);

  sub_10040A66C(v116, type metadata accessor for StableIdentifier);
}

void sub_1003D4ACC(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_1006953B0(a3);
  sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v5, 1);
}

__n128 sub_1003D4B8C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 144);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_64:
    v94 = v13;
    swift_once();
    v13 = v94;
    goto LABEL_15;
  }

  v7 = v124;
  v14 = [a1 ecid];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [a1 chipId];
    if (v19)
    {
      v20 = v19;
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = [a1 serialNumber];
      if (v24)
      {
        v113 = v21;
        v25 = v16;
        v26 = v24;
        *&v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = [a1 systemVersion];
        if (v29)
        {
          *(&v112 + 1) = v28;
          v30 = v29;
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = [a1 confirmSignature];
          if (v33)
          {
            v109 = v32;
            v34 = v33;
            *&v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v110 + 1) = v35;

            v36 = v25;
            if (*(a2 + 65) == 1)
            {
              v107 = v18;
              v108 = v25;
              if (qword_1016946D0 != -1)
              {
                swift_once();
              }

              v106 = v23;
              v37 = type metadata accessor for Logger();
              sub_1000076D4(v37, qword_10177ACC8);
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 0;
                _os_log_impl(&_mh_execute_header, v38, v39, "AlphaWasp: bypassing missing server seed and BAA certs if needed", v40, 2u);
              }

              v41 = [a1 serverSeed];
              if (v41)
              {
                v42 = v41;
                v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;
              }

              else
              {
                v105 = 0;
                v44 = 0xC000000000000000;
              }

              sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
              v64 = swift_allocObject();
              *(v64 + 16) = xmmword_10138BBE0;
              v65 = *(a2 + 32);
              v66 = *(a2 + 40);
              if (v66 >> 60 == 15)
              {
                v67 = 0;
              }

              else
              {
                v67 = *(a2 + 32);
              }

              if (v66 >> 60 == 15)
              {
                v68 = 0xC000000000000000;
              }

              else
              {
                v68 = *(a2 + 40);
              }

              *(v64 + 32) = v67;
              *(v64 + 40) = v68;
              v69 = *(a2 + 48);
              v70 = *(a2 + 56);
              if (v70 >> 60 == 15)
              {
                v71 = 0;
              }

              else
              {
                v71 = *(a2 + 48);
              }

              if (v70 >> 60 == 15)
              {
                v72 = 0xC000000000000000;
              }

              else
              {
                v72 = *(a2 + 56);
              }

              *(v64 + 48) = v71;
              *(v64 + 56) = v72;
              sub_10002E98C(v65, v66);
              v73 = v69;
              v74 = v70;
              goto LABEL_53;
            }

            v56 = [a1 serverSeed];
            v57 = v23;
            if (v56)
            {
              v108 = v36;
              v58 = v56;
              v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = v60;

              v61 = *(a2 + 40);
              if (v61 >> 60 == 15)
              {

                v62 = static os_log_type_t.error.getter();
                v63 = v108;
                if (qword_101695068 != -1)
                {
                  v101 = v62;
                  swift_once();
                  v62 = v101;
                  v63 = v108;
                }

                os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, qword_10177C3B0, "#Durian: baaLeafCert is not available.", 38, 2, _swiftEmptyArrayStorage);
                sub_100016590(v110, *(&v110 + 1));
                sub_100016590(v113, v57);
                sub_100016590(v63, v18);
              }

              else
              {
                v84 = *(a2 + 32);
                v85 = *(a2 + 56);
                if (v85 >> 60 != 15)
                {
                  v105 = v59;
                  v106 = v57;
                  v107 = v18;
                  v90 = *(a2 + 48);
                  v91 = v84;
                  v92 = v61;
                  v93 = v85;
                  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
                  v64 = swift_allocObject();
                  *(v64 + 16) = xmmword_10138BBE0;
                  *(v64 + 32) = v91;
                  *(v64 + 40) = v92;
                  *(v64 + 48) = v90;
                  *(v64 + 56) = v93;
                  sub_10002E98C(v91, v92);
                  v73 = v90;
                  v74 = v93;
LABEL_53:
                  sub_10002E98C(v73, v74);
                  v104 = [a1 productId];
                  v103 = [a1 vendorId];
                  v75 = [a1 nonce];
                  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v78 = v77;

                  v79 = [a1 keyGenerationStatus];
                  v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v82 = v81;

                  *&v114 = v108;
                  *(&v114 + 1) = v107;
                  *&v115 = v113;
                  *(&v115 + 1) = v106;
                  v116 = v112;
                  *&v117 = v104;
                  *(&v117 + 1) = v103;
                  *&v118 = v111;
                  *(&v118 + 1) = v109;
                  v119 = v110;
                  *&v120 = v76;
                  *(&v120 + 1) = v78;
                  *&v121 = v105;
                  *(&v121 + 1) = v44;
                  *&v122 = v80;
                  *(&v122 + 1) = v82;
                  v123 = v64;
                  SharingCircleWildAdvertisementKey.init(key:)();
                  v124[6] = v120;
                  v124[7] = v121;
                  v124[8] = v122;
                  v125 = v123;
                  v124[2] = v116;
                  v124[3] = v117;
                  v124[4] = v118;
                  v124[5] = v119;
                  v124[0] = v114;
                  v124[1] = v115;
                  goto LABEL_33;
                }

                v86 = *(a2 + 32);
                v87 = v61;
                sub_100017D5C(v84, v61);

                v88 = static os_log_type_t.error.getter();
                v89 = v108;
                if (qword_101695068 != -1)
                {
                  v102 = v88;
                  swift_once();
                  v88 = v102;
                  v89 = v108;
                }

                os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, qword_10177C3B0, "#Durian: baaIntermediateCert is not available.", 46, 2, _swiftEmptyArrayStorage);
                sub_100016590(v110, *(&v110 + 1));
                sub_100016590(v113, v57);
                sub_100016590(v89, v18);
                sub_100006654(v86, v87);
              }

              v47 = v59;
              v50 = v44;
              goto LABEL_31;
            }

            v83 = static os_log_type_t.error.getter();
            if (qword_101695068 != -1)
            {
              v99 = v36;
              v100 = v83;
              swift_once();
              v83 = v100;
              v36 = v99;
            }

            os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, qword_10177C3B0, "#Durian: serverSeed is not available.", 37, 2, _swiftEmptyArrayStorage);
            sub_100016590(v110, *(&v110 + 1));
            sub_100016590(v113, v23);
            v47 = v36;
LABEL_30:
            v50 = v18;
LABEL_31:
            sub_100016590(v47, v50);
            goto LABEL_32;
          }

          v49 = static os_log_type_t.error.getter();
          if (qword_101695068 != -1)
          {
            v98 = v49;
            swift_once();
            v49 = v98;
          }

          os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, qword_10177C3B0, "#Durian: signature(S4) is not available.", 40, 2, _swiftEmptyArrayStorage);
        }

        else
        {

          v48 = static os_log_type_t.error.getter();
          if (qword_101695068 != -1)
          {
            v97 = v48;
            swift_once();
            v48 = v97;
          }

          os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, qword_10177C3B0, "#Durian: systemVersion is not available.", 40, 2, _swiftEmptyArrayStorage);
        }

        sub_100016590(v113, v23);
        v47 = v25;
        goto LABEL_30;
      }

      v46 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        v96 = v46;
        swift_once();
        v46 = v96;
      }

      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, qword_10177C3B0, "#Durian: serialNumber is not available.", 39, 2, _swiftEmptyArrayStorage);
      sub_100016590(v21, v23);
    }

    else
    {
      v45 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        v95 = v45;
        swift_once();
        v45 = v95;
      }

      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, qword_10177C3B0, "#Durian: chipId is not available.", 33, 2, _swiftEmptyArrayStorage);
    }

    v47 = v16;
    goto LABEL_30;
  }

  v13 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    goto LABEL_64;
  }

LABEL_15:
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C3B0, "#Durian: ecid is not available.", 31, 2, _swiftEmptyArrayStorage);
LABEL_32:
  sub_100407E28(v124);
LABEL_33:
  v51 = v7[7];
  *(a3 + 96) = v7[6];
  *(a3 + 112) = v51;
  *(a3 + 128) = v7[8];
  *(a3 + 144) = v125;
  v52 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v52;
  v53 = v7[5];
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v53;
  result = *v7;
  v55 = v7[1];
  *a3 = *v7;
  *(a3 + 16) = v55;
  return result;
}

uint64_t sub_1003D55D8()
{
  sub_101165DF8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1003D5638(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v75 = a6;
  v76 = a7;
  v74 = a3;
  v11 = a5[7];
  v105 = a5[6];
  v106 = v11;
  v107 = a5[8];
  v108 = *(a5 + 18);
  v12 = a5[3];
  v101 = a5[2];
  v102 = v12;
  v13 = a5[5];
  v103 = a5[4];
  v104 = v13;
  v14 = a5[1];
  v99 = *a5;
  v100 = v14;
  v69 = type metadata accessor for PairingConfig(0);
  __chkstk_darwin(v69);
  v71 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v73 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    v62 = v22;
    swift_once();
    v22 = v62;
  }

  v23 = qword_10177C3B0;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C3B0, "#Durian: All checks passed. Trying to create the record.", 56, 2, _swiftEmptyArrayStorage);
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v24 = a1;
  v70 = a2;
  v25 = *(a2 + 280);
  v26 = v74;
  v74 = a4;
  sub_100A852A4(v26, a4, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPPairingSessionError(0);
    *&v89 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = v78;
    v85 = v105;
    v86 = v106;
    v87 = v107;
    v88 = v108;
    v81 = v101;
    v82 = v102;
    v83 = v103;
    v84 = v104;
    v79 = v99;
    v80 = v100;
    SharingCircleWildAdvertisementKey.init(key:)();
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v91 = v81;
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v89 = v79;
    v90 = v80;
    sub_100FC89F8(v27, 1, &v89, v75, v76);
  }

  else
  {
    v28 = v73;
    sub_10040A014(v18, v73, type metadata accessor for OwnedBeaconRecord);
    v29 = dispatch_group_create();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    dispatch_group_enter(v29);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v31 = v29;

    sub_10025B81C(v28, v25, v24, v31, v30, v72);
    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*(v30 + 16) == 1)
    {
      v68 = v30;
      v66 = v24;
      v32 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v23, "#Durian: NFC info subscription passed. Proceed to saving new record to CK.", 74, 2, _swiftEmptyArrayStorage);
      v33 = dispatch_group_create();
      dispatch_group_enter(v33);
      v34 = swift_allocObject();
      type metadata accessor for SPPairingSessionError(0);
      *&v79 = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      *(v34 + 16) = v89;
      v65 = v34 + 16;
      *(v34 + 24) = 1;
      v35 = v74;
      v36 = [v74 name];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v39;
        v64 = v38;
      }

      else
      {
        v63 = 0xE000000000000000;
        v64 = 0;
      }

      v42 = [v35 roleId];
      v43 = [v35 roleEmoji];
      v67 = v31;
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      v48 = *(v69 + 28);
      v49 = type metadata accessor for AccessoryProductInfo(0);
      v50 = v71;
      (*(*(v49 - 8) + 56))(v71 + v48, 1, 1, v49);
      v51 = v63;
      v50->isa = v64;
      v50[1].isa = v51;
      v50[2].isa = v42;
      v50[3].isa = v45;
      v50[4].isa = v47;
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      v54 = v66;
      v53[2] = v33;
      v53[3] = v54;
      v53[4] = v34;
      v53[5] = v52;
      v55 = v74;
      v56 = v72;
      v53[6] = v74;
      v53[7] = v56;

      v57 = v33;

      v58 = v55;
      v59 = v73;
      sub_100B093F8(v73, v50, sub_100407BD0, v53);

      OS_dispatch_group.wait()();
      swift_beginAccess();
      v60 = *(v34 + 16);
      LODWORD(v52) = *(v34 + 24);
      v85 = v105;
      v86 = v106;
      v87 = v107;
      v88 = v108;
      v81 = v101;
      v82 = v102;
      v83 = v103;
      v84 = v104;
      v79 = v99;
      v80 = v100;
      SharingCircleWildAdvertisementKey.init(key:)();
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v98 = v88;
      v91 = v81;
      v92 = v82;
      v93 = v83;
      v94 = v84;
      v89 = v79;
      v90 = v80;
      v61 = v60;
      sub_100FC89F8(v60, v52, &v89, v75, v76);

      sub_10040A66C(v50, type metadata accessor for PairingConfig);
      sub_10040A66C(v59, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
      v40 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v23, "#Durian: NFC info subscription failed. Abort saving new record to CK.", 69, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPPairingSessionError(0);
      *&v89 = 19;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v41 = v77;
      v85 = v105;
      v86 = v106;
      v87 = v107;
      v88 = v108;
      v81 = v101;
      v82 = v102;
      v83 = v103;
      v84 = v104;
      v79 = v99;
      v80 = v100;
      SharingCircleWildAdvertisementKey.init(key:)();
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v98 = v88;
      v91 = v81;
      v92 = v82;
      v93 = v83;
      v94 = v84;
      v89 = v79;
      v90 = v80;
      sub_100FC89F8(v41, 1, &v89, v75, v76);

      sub_10040A66C(v28, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

void sub_1003D5F88(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  swift_beginAccess();
  *(a4 + 16) = a1 == 0;
  dispatch_group_leave(a3);
}

void sub_1003D6068(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v96 = a7;
  v98 = a5;
  v99 = a3;
  v92 = type metadata accessor for BeaconEstimatedLocation(0);
  v89 = *(v92 - 8);
  v9 = __chkstk_darwin(v92);
  v90 = v10;
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v88 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  v93 = v13;
  v94 = v14;
  v15 = __chkstk_darwin(v13);
  *&v100 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v16;
  __chkstk_darwin(v15);
  v18 = &v88 - v17;
  v19 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v19);
  v21 = (&v88 - v20);
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C3B0;
  v97 = a4;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_1000D2A70(a1, v21, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    v24 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    v100 = xmmword_101385D80;
    *(v25 + 16) = xmmword_101385D80;
    v102 = v23;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v22, "#Durian: Failure during finishing pairing - %@", 46, 2, v25);

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = v100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000032;
    *(inited + 56) = 0x8000000101353060;
    v31 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v102 = 11;
    sub_1006953B0(v31);

    sub_1003FD7F0(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();

    v32 = v101[0];
    v33 = v98;
    swift_beginAccess();
    v34 = *(v33 + 16);
    *(v33 + 16) = v32;
    *(v33 + 24) = 1;

LABEL_24:
    dispatch_group_leave(v99);
    return;
  }

  sub_10040A014(v21, v18, type metadata accessor for OwnedBeaconRecord);
  v35 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  sub_100032504(v18, v100, type metadata accessor for OwnedBeaconRecord);
  v37 = v93;
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  v41 = v18;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v22, "#Durian: The beacon record has been created. Record UUID - %@", 61, 2, v36);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100A5187C(v18);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v43 = v97;
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    v45 = swift_weakLoadStrong();
    if (v45)
    {
      v46 = *(v45 + 280);
      swift_retain_n();

      v47 = sub_10003EB74(v18, v46);
      v88 = v46;

      type metadata accessor for Transaction();
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v47;

      v49 = v47;
      static Transaction.asyncTask(name:block:)();

      v43 = v97;
    }

    else
    {
      v88 = 0;
    }

    v50 = *(v37 + 20);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v52 = v96;
    [v96 updateBeaconId:isa];

    v53 = *(v43 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
    v54 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v55 = *(v53 + v54);
    if (v55)
    {
      v56 = v55;
      [v52 updatePairingLocation:v56];
      v57 = v92;
      UUID.init()();
      v58 = v57[6];
      v59 = type metadata accessor for UUID();
      (*(*(v59 - 8) + 16))(&v12[v58], v41 + v50, v59);
      [v56 coordinate];
      v61 = v60;
      [v56 coordinate];
      v63 = v62;
      [v56 horizontalAccuracy];
      v65 = v64;
      v66 = [v56 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = v57[12];
      v68 = type metadata accessor for Date();
      (*(*(v68 - 8) + 56))(&v12[v67], 1, 1, v68);
      *v12 = xmmword_10138C660;
      *&v12[v57[7]] = v61;
      *&v12[v57[8]] = v63;
      *&v12[v57[9]] = v65;
      v12[v57[11]] = 1;
      *&v12[v57[13]] = 0;
      swift_beginAccess();
      v69 = swift_weakLoadStrong();
      if (v69)
      {
        v97 = *(v69 + 280);

        v70 = v41;
        v71 = v91;
        sub_100032504(v12, v91, type metadata accessor for BeaconEstimatedLocation);
        v72 = v100;
        sub_100032504(v70, v100, type metadata accessor for OwnedBeaconRecord);
        v73 = (*(v89 + 80) + 16) & ~*(v89 + 80);
        v74 = (v90 + *(v94 + 80) + v73) & ~*(v94 + 80);
        v75 = swift_allocObject();
        v76 = v71;
        v41 = v70;
        sub_10040A014(v76, v75 + v73, type metadata accessor for BeaconEstimatedLocation);
        v52 = v96;
        sub_10040A014(v72, v75 + v74, type metadata accessor for OwnedBeaconRecord);
        sub_100A9DA2C(v12, sub_100407D54, v75);
      }

      sub_10040A66C(v12, type metadata accessor for BeaconEstimatedLocation);
    }

    v77 = v98;
    swift_beginAccess();
    v78 = *(v77 + 16);
    *(v77 + 16) = v52;
    *(v77 + 24) = 0;

    swift_beginAccess();
    v79 = swift_weakLoadStrong();
    if (v79)
    {
      v80 = *(v79 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);
      v81 = v52;
    }

    else
    {
      v82 = v52;
      v80 = 0;
    }

    swift_beginAccess();
    v83 = swift_weakLoadStrong();
    if (v83)
    {
      v84 = *(v83 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateScheduler);
    }

    else
    {
      v84 = 0;
    }

    type metadata accessor for Transaction();
    v85 = v100;
    sub_100032504(v41, v100, type metadata accessor for OwnedBeaconRecord);
    v86 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = v80;
    *(v87 + 24) = v84;
    sub_10040A014(v85, v87 + v86, type metadata accessor for OwnedBeaconRecord);

    static Transaction.asyncTask(name:block:)();

    sub_10040A66C(v41, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_24;
  }

  v44 = *(Strong + 40);

  if (v44)
  {
    sub_1005288AC(v18);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1003D6C40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003D6C60, 0, 0);
}

uint64_t sub_1003D6C60()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1003D6C90, v1, 0);
}

uint64_t sub_1003D6C90()
{
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003D6D60(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v2);
  v4 = (v27 - v3);
  sub_1000D2A70(a1, v27 - v3, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138B360;
    type metadata accessor for BeaconEstimatedLocation(0);
    type metadata accessor for Date();
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_100008C00();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    type metadata accessor for OwnedBeaconRecord(0);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    v27[1] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v12;
    *(v8 + 112) = v15;
    *(v8 + 120) = v16;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Saving BeaconEstimatedLocation %@ for CL %@ error: %@", 53, 2, v8);
  }

  else
  {
    v18 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138BBE0;
    type metadata accessor for BeaconEstimatedLocation(0);
    type metadata accessor for Date();
    sub_1003FD7F0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    type metadata accessor for OwnedBeaconRecord(0);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Saved BeaconEstimatedLocation %@ from CL for beacon %@", 54, 2, v20);

    return sub_10000B3A8(v4, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_1003D7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003D71BC, 0, 0);
}

uint64_t sub_1003D71BC()
{
  if (*(v0 + 16) && *(v0 + 24))
  {

    v1 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v2 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    *(v0 + 40) = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
    v4 = UUID.uuidString.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Initiating firmware update check after beacon creation: %@", 58, 2, v3);

    v7 = *(v0 + 16);

    return _swift_task_switch(sub_1003D735C, v7, 0);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1003D735C()
{
  sub_100252E44(*(v0 + 32) + *(v0 + 40));

  return _swift_task_switch(sub_1003D73D0, 0, 0);
}

uint64_t sub_1003D73D0(uint64_t a1)
{
  sub_10023634C(a1);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003D7440(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C370, "Destroy pending creatingLocalBeaconFuture", 41, 2, _swiftEmptyArrayStorage);
  v3 = *(v1 + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100407A74;
  *(v4 + 24) = v1;
  v8[4] = sub_1000D2FB0;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10013FE14;
  v8[3] = &unk_10161AFC0;
  v5 = _Block_copy(v8);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D75E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v38 = a1;
  v40 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 80);
  if (v15)
  {

    v16 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      v27 = v16;
      swift_once();
      v16 = v27;
    }

    result = os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C370, "Returning existing creatingLocalBeaconFuture", 44, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v31 = v12;
    v32 = v11;
    v33 = v9;
    v34 = v7;
    v35 = v5;
    v36 = v6;
    v30 = v3;
    v37 = v2;
    sub_1000BC4D4(&qword_10169F470, &qword_1013A0A40);
    swift_allocObject();
    v15 = Future.init()();
    v18 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      v28 = v18;
      swift_once();
      v18 = v28;
    }

    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177C370, "Created new creatingLocalBeaconFuture", 37, 2, _swiftEmptyArrayStorage);
    v19 = v32;
    *(v32 + 80) = v15;

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v20 = v31;
    (*(v31 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v21 = static OS_dispatch_queue.global(qos:)();
    (*(v20 + 8))(v14, v10);
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v15;
    v22[4] = v38;
    aBlock[4] = sub_10040A410;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10161B970;
    v23 = _Block_copy(aBlock);

    v24 = v33;
    static DispatchQoS.unspecified.getter();
    aBlock[7] = _swiftEmptyArrayStorage;
    sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v25 = v35;
    v26 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v39 + 8))(v25, v26);
    (*(v34 + 8))(v24, v36);
  }

  *v40 = v15;
  return result;
}

uint64_t sub_1003D7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 280);

  sub_100B0F108(v6, a1, a2, a3);
}

uint64_t sub_1003D7BB0()
{
  v0 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  sub_1003D7440(v1);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  Future.finish(result:)();
  return sub_10000B3A8(v3, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003D7C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v17, v14);
  sub_1000D2A70(v28, v13, &unk_1016B15A0, &qword_1013A0900);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1000D2AD8(v13, v21 + v18, &unk_1016B15A0, &qword_1013A0900);
  v22 = v30;
  *(v21 + v19) = v29;
  *(v21 + v20) = v22;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_10040A4C8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161BA38;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v5, v24);
  (*(v33 + 8))(v8, v34);
}

uint64_t sub_1003D8150(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v24 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v9);
  v11 = (&v23 - v10);
  sub_1000D2A70(a1, &v23 - v10, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v26 = v12;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Could not create local pairing record: %@", 41, 2, v15);

    sub_1003D7440(v19);
    (*(v6 + 56))(v5, 1, 1, v24);
    Future.finish(result:)();

    return sub_10000B3A8(v5, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    sub_10040A014(v11, v8, type metadata accessor for OwnedBeaconRecord);
    v21 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      v22 = v21;
      swift_once();
      v21 = v22;
    }

    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10177C3B0, "Self beaconing completed successfully for this device.", 54, 2, _swiftEmptyArrayStorage);
    sub_100032504(v8, v5, type metadata accessor for OwnedBeaconRecord);
    (*(v6 + 56))(v5, 0, 1, v24);
    Future.finish(result:)();
    sub_10000B3A8(v5, &unk_1016A9A20, &qword_10138B280);
    sub_100A5187C(v8);
    return sub_10040A66C(v8, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_1003D8548()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v70 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = (v63 - v7);
  v75 = v9;
  __chkstk_darwin(v6);
  v67 = v63 - v10;
  v71 = type metadata accessor for StableIdentifier(0);
  v11 = __chkstk_darwin(v71);
  v69 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = (v63 - v13);
  v14 = type metadata accessor for SystemInfo.DeviceLockState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v63 - v19;
  static SystemInfo.lockState.getter();
  (*(v15 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
  sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if (v21)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v61 = v23;
      swift_once();
      v23 = v61;
    }

    return os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "removeDuplicateLocalBeacons call failed because we're beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v74 = v2;
    v25 = MobileGestalt_get_current_device();
    if (v25)
    {
      v26 = v25;
      v27 = MobileGestalt_copy_uniqueDeviceID_obj();

      v28 = v1;
      v29 = v68;
      if (v27)
      {
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        *v29 = v30;
        v29[1] = v32;
        swift_storeEnumTagMultiPayload();
        v34 = objc_autoreleasePoolPush();
        v35 = sub_100025044();
        __chkstk_darwin(v35);
        v63[-2] = v29;
        v76 = sub_10013D1C8(sub_10040A578, &v63[-4], v36);

        sub_1003F135C(&v76, sub_1003F2680, sub_1003F174C);

        v37 = v76;
        objc_autoreleasePoolPop(v34);
        v38 = *(v37 + 16);
        v39 = v67;
        if (v38)
        {
          v40 = *(v70 + 80);
          v41 = sub_100032504(v37 + ((v40 + 32) & ~v40), v67, type metadata accessor for OwnedBeaconRecord);
          if (v38 == 1)
          {
          }

          else
          {
            v64 = (v40 + 32) & ~v40;
            v73 = v40;
            __chkstk_darwin(v41);
            v63[-2] = v39;
            v43 = sub_10013D1C8(sub_10040A5C8, &v63[-4], v37);
            v44 = static os_log_type_t.error.getter();
            if (qword_101695038 != -1)
            {
              swift_once();
            }

            v45 = qword_10177C380;
            v66 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v46 = swift_allocObject();
            v72 = xmmword_101385D80;
            *(v46 + 16) = xmmword_101385D80;
            sub_100032504(v29, v69, type metadata accessor for StableIdentifier);
            v47 = v45;
            v48 = String.init<A>(describing:)();
            v50 = v49;
            *(v46 + 56) = &type metadata for String;
            v65 = sub_100008C00();
            *(v46 + 64) = v65;
            *(v46 + 32) = v48;
            *(v46 + 40) = v50;
            os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v47, "Multiple beaconRecords found matching stableIdentifer of %@", 59, 2, v46);

            v51 = v43[2];
            if (v51)
            {
              v63[1] = v43;
              v52 = v43 + v64;
              v53 = *(v70 + 72);
              v70 = v28;
              v71 = v53;
              v54 = (v73 + 16) & ~v73;
              v69 = v47;
              v55 = v65;
              do
              {
                sub_100032504(v52, v8, type metadata accessor for OwnedBeaconRecord);
                v56 = static os_log_type_t.default.getter();
                v57 = swift_allocObject();
                *(v57 + 16) = v72;
                sub_100032504(v8, v5, type metadata accessor for OwnedBeaconRecord);
                v58 = String.init<A>(describing:)();
                *(v57 + 56) = &type metadata for String;
                *(v57 + 64) = v55;
                *(v57 + 32) = v58;
                *(v57 + 40) = v59;
                os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v69, "Removing duplicate record: %@", 29, 2, v57);

                sub_100032504(v8, v5, type metadata accessor for OwnedBeaconRecord);
                v60 = swift_allocObject();
                sub_10040A014(v5, v60 + v54, type metadata accessor for OwnedBeaconRecord);
                sub_1003D9064(v8, 1, sub_10040A5FC, v60);

                sub_10040A66C(v8, type metadata accessor for OwnedBeaconRecord);
                v52 += v71;
                --v51;
              }

              while (v51);

              v39 = v67;
              v29 = v68;
            }

            else
            {

              v39 = v67;
            }
          }

          sub_10040A66C(v39, type metadata accessor for OwnedBeaconRecord);
        }

        else
        {
        }

        return sub_10040A66C(v29, type metadata accessor for StableIdentifier);
      }

      else
      {

        v42 = static os_log_type_t.error.getter();
        if (qword_101695038 != -1)
        {
          v62 = v42;
          swift_once();
          v42 = v62;
        }

        return os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, qword_10177C380, "removeDuplicateLocalBeacons could not get UUID!", 47, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003D8DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v7 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10138BBE0;
    sub_100032504(a2, v6, type metadata accessor for OwnedBeaconRecord);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_100008C00();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Failed to remove duplicate record: %@. Error - %@", 49, 2, v9);
  }

  else
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    sub_100032504(a2, v6, type metadata accessor for OwnedBeaconRecord);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Successfully removed duplicate record: %@", 41, 2, v19);
  }
}

uint64_t sub_1003D9064(uint64_t (**a1)(uint64_t a1), int a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v110 = a4;
  v111 = a3;
  v102 = a2;
  v100 = type metadata accessor for SystemInfo.DeviceLockState();
  v99 = *(v100 - 8);
  v6 = __chkstk_darwin(v100);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v92 - v8;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v94 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v92 - v13;
  v95 = v14;
  __chkstk_darwin(v12);
  v96 = &v92 - v15;
  v16 = type metadata accessor for ShareRecord(0);
  v108 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v107 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - v19;
  v21 = type metadata accessor for DirectorySequence();
  v104 = *(v21 - 8);
  v105 = v21;
  __chkstk_darwin(v21);
  v117 = (&v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v92 - v28;
  v93 = *(v4 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v109 = v4;
  v30 = *(v4 + 280);
  v92 = v9;
  v31 = *(v9 + 20);
  v101 = v30;
  *&v116 = *(v30 + 168);
  v32 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v23, qword_10177A518);
  v113 = v31;
  v114 = a1;
  UUID.uuidString.getter();
  v33 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v32);
  v118 = _swiftEmptyArrayStorage;
  v119 = _swiftEmptyArrayStorage;
  v34 = [objc_opt_self() defaultManager];
  v106 = v29;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v112 = v24;
  v35 = *(v24 + 48);
  if (v35(v20, 1, v23) != 1)
  {
    v36 = *(v112 + 32);
    v37 = (v112 + 8);
    do
    {
      v36(v27, v20, v23);
      v38 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v27, v116, &v119, &v118);
      objc_autoreleasePoolPop(v38);
      (*v37)(v27, v23);
      DirectorySequence.next()();
    }

    while (v35(v20, 1, v23) != 1);
  }

  (*(v104 + 8))(v117, v105);
  v39 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v40 = static OS_os_log.default.getter();
  v24 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v29 = swift_allocObject();
  *(v29 + 1) = xmmword_10138BBE0;
  v31 = v119;
  v41 = v119[2];
  *(v29 + 7) = &type metadata for Int;
  *(v29 + 8) = &protocol witness table for Int;
  *(v29 + 4) = v41;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v42 = v106;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v44;
  *(v29 + 12) = &type metadata for String;
  v117 = sub_100008C00();
  *(v29 + 13) = v117;
  *(v29 + 9) = v43;
  *(v29 + 10) = v23;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "Found %i records at %@", 22, 2, v29);

  (*(v112 + 8))(v42, v33);

  v32 = v31[2];
  v20 = v108;
  v45 = v109;
  a1 = v107;
  if (v32)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v31[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      result = sub_100032504(v31 + ((v20[80] + 32) & ~v20[80]) + *(v20 + 9) * v27, a1, type metadata accessor for ShareRecord);
      if (!*(v45 + 40))
      {
        break;
      }

      ++v27;

      sub_100528B94(a1, sub_1003EDE24, 0);

      sub_10040A66C(a1, type metadata accessor for ShareRecord);
      if (v32 == v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v47 = v96;
    sub_100032504(v114, v96, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v47, v115, type metadata accessor for OwnedBeaconRecord);
    v48 = *(v94 + 80);
    v49 = (v48 + 16) & ~v48;
    v112 = v49 + v95;
    v50 = (v49 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = v48;
    v106 = (v51 + 8);
    v52 = swift_allocObject();
    v109 = v49;
    sub_10040A014(v47, v52 + v49, type metadata accessor for OwnedBeaconRecord);
    v104 = v50;
    v53 = (v52 + v50);
    v54 = v110;
    *v53 = v111;
    v53[1] = v54;
    v107 = v52;
    v105 = v51;
    *(v52 + v51) = v93;

    v55 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v56 = qword_10177C380;
    v57 = swift_allocObject();
    v116 = xmmword_101385D80;
    *(v57 + 16) = xmmword_101385D80;
    v58 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v117;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v60;
    *(v57 + 32) = v59;
    *(v57 + 40) = v61;
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "Unpair owned beacon: %@", 23, 2, v57);

    v62 = v97;
    static SystemInfo.lockState.getter();
    v63 = v99;
    v64 = v98;
    v65 = v100;
    (*(v99 + 104))(v98, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v100);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v66 = *(v63 + 8);
    v66(v64, v65);
    v66(v62, v65);
    if (v119 == v118)
    {
      v67 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v56, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
      sub_100139CA0();
      v68 = swift_allocError();
      *v69 = 0;
      v70 = static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v71 = qword_10177C3B0;
      v72 = swift_allocObject();
      *(v72 + 16) = v116;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v117;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = v74;
      *(v72 + 32) = v73;
      *(v72 + 40) = v75;
      os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v71, "Unpair for beacon, %@, unsuccessful", 35, 2, v72);

      v111(v68);
    }

    v76 = dispatch_group_create();
    dispatch_group_enter(v76);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v77 = *(v58 - 8);
    v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v116;
    v80 = v114;
    (*(v77 + 16))(v79 + v78, v113 + v114, v58);
    v81 = swift_allocObject();
    *(v81 + 16) = v76;
    v117 = v76;
    v82 = v101;
    sub_1009C99C0(v79, sub_10040616C, v81);

    OS_dispatch_group.wait()();
    v83 = v103;
    sub_100032504(v80, v103, type metadata accessor for OwnedBeaconRecord);
    v84 = v105;
    v85 = swift_allocObject();
    v86 = v109;
    sub_10040A014(v83, v85 + v109, type metadata accessor for OwnedBeaconRecord);
    v87 = (v85 + v104);
    v88 = v106;
    v89 = v107;
    *v87 = sub_100406168;
    v87[1] = v89;
    v90 = v85 + v84;
    *v90 = v82;
    v88[v85] = v102 & 1;
    *(v90 + 9) = 1;

    sub_100AAA40C(v80, sub_100406178, v85);

    sub_10040A66C(v115, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v80, v83, type metadata accessor for OwnedBeaconRecord);
    v91 = swift_allocObject();
    sub_10040A014(v83, v91 + v86, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1003D9EB4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemInfo.DeviceLockState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v2;
  v21 = *(v2 + 56);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  static SystemInfo.lockState.getter();
  (*(v11 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v10);
  sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v11 + 8);
  v25(v14, v10);
  v25(v16, v10);
  if (v24)
  {
    v23 = static os_log_type_t.error.getter();
    if (qword_101695038 == -1)
    {
LABEL_4:
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C380, "searchForDetachedLocalBeacon call failed because we're beforeFirstUnlock state", 78, 2, _swiftEmptyArrayStorage);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v27 = v51;
      v26 = v52;
      (*(v51 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v52);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*(v27 + 8))(v9, v26);
      v29 = swift_allocObject();
      v30 = v54;
      *(v29 + 16) = v53;
      *(v29 + 24) = v30;
      v66 = sub_10040B9FC;
      v67 = v29;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v31 = &unk_10161B8D0;
LABEL_10:
      v64 = sub_100006684;
      v65 = v31;
      v38 = _Block_copy(&aBlock);

      v39 = v55;
      static DispatchQoS.unspecified.getter();
      v61 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

LABEL_13:
    v48 = v23;
    swift_once();
    v23 = v48;
    goto LABEL_4;
  }

  v32 = v50;
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (aBlock != 1)
  {
    v40 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v49 = v40;
      swift_once();
      v40 = v49;
    }

    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_10177C380, "searchForDetachedLocalBeacon call failed because cloud backed beacon store is not avaiable", 90, 2, _swiftEmptyArrayStorage);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v42 = v51;
    v41 = v52;
    (*(v51 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v52);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v9, v41);
    v43 = swift_allocObject();
    v44 = v54;
    *(v43 + 16) = v53;
    *(v43 + 24) = v44;
    v66 = sub_10040A374;
    v67 = v43;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v31 = &unk_10161B830;
    goto LABEL_10;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v34 = v51;
  v33 = v52;
  (*(v51 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v52);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v34 + 8))(v9, v33);
  v35 = swift_allocObject();
  v36 = v53;
  v37 = v54;
  v35[2] = v32;
  v35[3] = v36;
  v35[4] = v37;
  v66 = sub_10040A3D8;
  v67 = v35;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100006684;
  v65 = &unk_10161B880;
  v38 = _Block_copy(&aBlock);

  v39 = v55;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v45 = v56;
  v46 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v59 + 8))(v45, v46);
  (*(v57 + 8))(v39, v58);
}

uint64_t sub_1003DA80C(void (*a1)(char *))
{
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1(v4);
  return sub_10000B3A8(v4, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003DA8F4(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v55 = a2;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v5 - 8);
  v54 = &v49[-v6];
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v53 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v52 = &v49[-v10];
  v11 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  __chkstk_darwin(v11);
  v13 = &v49[-v12];
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v49[-v19];
  v21 = sub_100AA5C88();
  v22 = v21[2];
  if (v22)
  {
    v51 = a3;
    sub_100032504(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v20, type metadata accessor for OwnedBeaconRecord);

    v23 = v15;
    v24 = v14;
    if (v22 != 1)
    {
      v50 = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v25 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10138BBE0;
      sub_100EF8D90(v13);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      v30 = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      *(v26 + 96) = &type metadata for Int;
      *(v26 + 104) = &protocol witness table for Int;
      *(v26 + 64) = v30;
      *(v26 + 72) = v22;
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v25, "Multiple beaconRecords found matching stableIdentifer of %@: %ld", 64, 2, v26);
    }

    v31 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    sub_100032504(v20, v18, type metadata accessor for OwnedBeaconRecord);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Found detached local beacon: %@", 31, 2, v33);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v37 = *(v14 + 20);
    v38 = type metadata accessor for UUID();
    v39 = *(v38 - 8);
    v40 = v52;
    (*(v39 + 16))(v52, &v20[v37], v38);
    (*(v39 + 56))(v40, 0, 1, v38);
    sub_1000034A4();
    v41 = v53;
    sub_1000D2A70(v40, v53, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v41);

    sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
    v42 = v54;
    sub_100032504(v20, v54, type metadata accessor for OwnedBeaconRecord);
    (*(v23 + 56))(v42, 0, 1, v24);
    v55(v42);
    sub_10000B3A8(v42, &unk_1016A9A20, &qword_10138B280);
    return sub_10040A66C(v20, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {

    __chkstk_darwin(v44);
    *&v49[-16] = a1;
    *&v49[-8] = v45;
    sub_1000BC4D4(&qword_10169F470, &qword_1013A0A40);
    OS_dispatch_queue.sync<A>(execute:)();
    v46 = swift_allocObject();
    v47 = v55;
    *(v46 + 16) = v55;
    *(v46 + 24) = a3;

    Future.addFailure(block:)();

    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = a3;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1003DAFF0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v15[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "createLocalPairingIfSupported error: %@", 39, 2, v9);

  v13 = type metadata accessor for OwnedBeaconRecord(0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  a2(v6);
  return sub_10000B3A8(v6, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003DB1D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v7;
  v8 = type metadata accessor for UUID();
  v36 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v33 - v11;
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  sub_1000D2A70(a1, v17, &unk_1016A9A20, &qword_10138B280);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Found local beacon : %@", 23, 2, v20);

  sub_1000D2A70(a1, v15, &unk_1016A9A20, &qword_10138B280);
  v24 = type metadata accessor for OwnedBeaconRecord(0);
  v25 = a1;
  if ((*(*(v24 - 8) + 48))(v15, 1, v24) == 1)
  {
    sub_10000B3A8(v15, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v26 = v36;
    v27 = *(v36 + 16);
    v28 = v34;
    v27(v34, &v15[*(v24 + 20)], v8);
    sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
    v29 = v35;
    (*(v26 + 32))(v35, v28, v8);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v30 = v38;
    v27(v38, v29, v8);
    (*(v26 + 56))(v30, 0, 1, v8);
    sub_1000034A4();
    v31 = v37;
    sub_1000D2A70(v30, v37, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v31);

    sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
    (*(v26 + 8))(v29, v8);
  }

  return v40(v25);
}

uint64_t sub_1003DB678@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = (v13 - v3);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v9 = v13[1];
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v9, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
    v11 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100AA33AC(v8, a1);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1003DB904, 0, 0);
}

uint64_t sub_1003DB904()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = &unk_1013A09B0;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v3 = v0;
  v3[1] = sub_1003DBA24;

  return withTimeout<A>(_:block:)(v0 + 7, 8000000000000000000, 0, &unk_1013A09C0, v2, v4);
}

uint64_t sub_1003DBA24()
{

  if (v0)
  {

    v1 = sub_10040B9D4;
  }

  else
  {

    v1 = sub_1003DBB6C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1003DBB6C()
{
  (*(v0 + 24))(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003DBBD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1003DBC68;

  return daemon.getter();
}

uint64_t sub_1003DBC68(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[4] = a1;

  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = type metadata accessor for Daemon();
  v2[6] = v4;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[7] = v6;
  v7 = sub_1003FD7F0(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_1003DBE48;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_1003DBE48(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  if (v1)
  {
    v5 = sub_1003DCBE4;
    v6 = 0;
  }

  else
  {

    v5 = sub_1003DBF84;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003DBF84()
{
  v1 = *(v0 + 72);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  static Keychain.deleteData(account:service:)();
  if (v1)
  {

    v2 = sub_10040BA04;
  }

  else
  {
    v2 = sub_1003DC080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003DC080()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003DC118;

  return daemon.getter();
}

uint64_t sub_1003DC118(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = a1;

  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  found = type metadata accessor for NotifyWhenFoundManager();
  v7 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v5 = v4;
  v5[1] = sub_1003DC2CC;
  v8 = *(v2 + 56);
  v9 = *(v2 + 48);

  return ActorServiceDaemon.getService<A>()(v9, found, v8, v7);
}

uint64_t sub_1003DC2CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_1003DCC48;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_1003DC424;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003DC424()
{
  v1 = v0[14];
  v0[15] = v0[13];
  v0[16] = v1;
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[17] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1003DC520;

  return unsafeBlocking<A>(_:)(v4, sub_100408938, v3, &type metadata for () + 1);
}

uint64_t sub_1003DC520()
{

  return _swift_task_switch(sub_1003DC638, 0, 0);
}

uint64_t sub_1003DC638()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1003DC6C4;

  return sub_1004042AC();
}

uint64_t sub_1003DC6C4()
{

  return _swift_task_switch(sub_1003DC7C0, 0, 0);
}

void sub_1003DC7C0()
{
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  if (qword_101694928 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177B2F0);
  static NSFileManager.removeDirectory(url:)();
  if (v1)
  {
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C348);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error from observationStore.purge: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  if (*(v0[2] + 40))
  {
    if (qword_101695218 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_1016C6BF8);
    static NSFileManager.removeDirectory(url:)();

    v9 = v0[1];

    v9();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003DCBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003DCC48()
{
  v0[15] = 0;
  v0[16] = 0;
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;

  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1003DC520;

  return unsafeBlocking<A>(_:)(v3, sub_100408938, v2, &type metadata for () + 1);
}

uint64_t sub_1003DCD38(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - v5;
  sub_100405140();
  sub_100A85AEC();
  while (1)
  {
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v13 = aBlock[0];
    v14 = type metadata accessor for TaskPriority();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 1, 1, v14);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;

    sub_10025EDD4(0, 0, v6, &unk_101411AD0, v16);

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    if (a2)
    {
      v15(v6, 1, 1, v14);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = a2;

      sub_10025F0D4(0, 0, v6, &unk_10139D730, v18);
    }

    sub_100A3F4E8(v17);
    if (qword_1016944B0 != -1)
    {
      swift_once();
    }

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v19 = *(a1 + 56);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100408A28;
    *(v20 + 24) = a1;
    aBlock[4] = sub_10040B9F8;
    v24 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10161B600;
    a2 = _Block_copy(aBlock);
    v6 = v24;

    dispatch_sync(v19, a2);
    _Block_release(a2);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C348);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error purging beacon store files: %@.", v10, 0xCu);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003DD220(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003DD30C;

  return v5();
}

uint64_t sub_1003DD30C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1003DD418()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v7 = *(v0 + 280);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v0;
  aBlock[4] = sub_10040A2DC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B6F0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1003DD758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = sub_10040A2E4;
  v17[6] = v15;
  v18 = v14;

  sub_10025EDD4(0, 0, v13, &unk_1013A0A30, v17);

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B7F8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Waiting for manateeAvailable check to complete.", v22, 2u);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v8, v4);
  OS_dispatch_group.wait(timeout:)();
  v23(v10, v4);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Timed out waiting for manateeAvailable.", v26, 2u);
    }
  }
}

void sub_1003DDAF8(char a1, NSObject *a2)
{
  v4 = [objc_opt_self() defaultStore];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 aa_primaryAppleAccount];

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446722;
    if (v8)
    {
      v13 = 0x6C696E2D746F6ELL;
    }

    else
    {
      v13 = 7104878;
    }

    if (v8)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_1000136BC(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    if (v8)
    {
      v16 = sub_10051441C();
    }

    else
    {
      v16 = 0;
    }

    *(v11 + 14) = v16;

    *(v11 + 22) = 1024;
    *(v11 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "primaryAccountModified account: %{public}s,      security: %lu with manatee enabled: %{BOOL}d.", v11, 0x1Cu);
    sub_100007BAC(v12);

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v17 = v8;
  v18 = sub_10051441C();

  if (v18 != 4)
  {
LABEL_18:
    a1 = 0;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  sub_100EEA588(v8 != 0, a1 & 1);

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  static Transaction.named<A>(_:with:)();

  dispatch_group_leave(a2);
}

void sub_1003DDE30(uint64_t a1, int a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v67 = a4;
  v68 = a3;
  v65 = a2;
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v8 = (&v55 - v7);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for UUID();
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = v12;
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v57 = &v55 - v14;
  v60 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v60);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for OwnedBeaconRecord(0);
  v23 = __chkstk_darwin(v22);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v66 = v4;
  sub_100025020(a1, &v70);
  if (v71)
  {
    sub_100031694(&v70, v72);
    sub_10001F280(v72, &v70);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (swift_dynamicCast())
    {
      sub_10040A014(v27, v25, type metadata accessor for OwnedBeaconRecord);
      sub_1003DF44C(v25, v65 & 1, v68, v67);
      sub_10040A66C(v25, type metadata accessor for OwnedBeaconRecord);
    }

    else if (swift_dynamicCast())
    {
      sub_10040A014(v21, v19, type metadata accessor for SharedBeaconRecord);
      sub_1003E0AE0(v19, v68, v67);
      sub_10040A66C(v19, type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v35 = v61;
      if (swift_dynamicCast())
      {
        v36 = swift_allocObject();
        v37 = v67;
        *(v36 + 16) = v68;
        *(v36 + 24) = v37;
        v38 = type metadata accessor for TaskPriority();
        v39 = v57;
        (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
        v40 = v59;
        v41 = v58;
        v42 = a1;
        v43 = v62;
        (*(v59 + 16))(v58, v42, v62);
        v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        (*(v40 + 32))(v46 + v44, v41, v43);
        v47 = (v46 + v45);
        *v47 = sub_1003FD88C;
        v47[1] = v36;

        sub_10025EDD4(0, 0, v39, &unk_1013BB9D0, v46);

        (v68)(0);
        sub_100007BAC(v72);
        sub_10040A66C(v35, type metadata accessor for LocalFindableAccessoryRecord);
LABEL_17:
        sub_100007BAC(&v70);
        return;
      }

      v48 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C3B0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_101385D80;
      sub_10001F280(v72, v69);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_100008C00();
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Unhandled beacon type: %@", 25, 2, v50);

      sub_1003FD838();
      swift_allocError();
      *v54 = 3;
      v68();
    }

    sub_100007BAC(v72);
    goto LABEL_17;
  }

  sub_10000B3A8(&v70, &qword_101696920, &unk_10138B200);
  sub_100AC53EC(a1, v8);
  if ((*(v63 + 48))(v8, 1, v64) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AF8B0, &unk_1013A0700);
    v28 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Can't find beacon for uuid: %@", 30, 2, v30);

    type metadata accessor for SPOwnerSessionError(0);
    *&v70 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = v72[0];
    (v68)(v72[0]);
  }

  else
  {
    sub_10040A014(v8, v11, type metadata accessor for OwnedBeaconGroup);
    sub_1003E0D7C(v11, v65 & 1, v68, v67);
    sub_10040A66C(v11, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_1003DE798(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v4 = a1;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v4;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

LABEL_8:
  v6 = v3;
  a2();
}

uint64_t sub_1003DE85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v3);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v84 = v90[0];
  v79 = type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v9 = sub_10130980C(a1, v90[0]);

  v10 = *(v3 + 32);
  v81 = v6;
  v11 = *(v6 + 16);
  v82 = v8;
  v85 = v5;
  v11(v8, a1 + v10, v5);
  v12 = v3;
  v13 = *(v3 + 52);
  v14 = a1;
  v15 = (a1 + v13);
  v16 = *(a1 + v13);
  v87 = *(a1 + v13 + 8);
  v86 = v9;
  if (v9)
  {
    v78 = v16;
    if (v86 == 1)
    {
      v17 = (a1 + v12[9]);
      v18 = *v17;
      v19 = v17[1];
      sub_100017D5C(v16, v87);
      v80 = v18;
      sub_100017D5C(v18, v19);
      v20 = v85;
      v21 = v84;
    }

    else
    {
      v76 = v11;
      sub_100017D5C(v16, v87);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v54 = (a1 + v12[9]);
      v56 = *v54;
      v55 = v54[1];
      v57 = *v15;
      v58 = v15[1];
      v59 = (v14 + v12[12]);
      v61 = *v59;
      v60 = v59[1];
      sub_100017D5C(v56, v55);
      v77 = v57;
      v79 = v58;
      sub_100017D5C(v57, v58);
      v62 = v61;
      v80 = v60;
      sub_100017D5C(v61, v60);
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v90[0] = 0x7365547265646E75;
      v90[1] = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      v63 = v55;
      v64 = sub_100A7563C(v56, v55, v86);
      v66 = v65;
      v74 = v56;
      v88 = v64;
      v89 = v65;
      v75 = objc_autoreleasePoolPush();
      sub_100017D5C(v64, v66);
      v73 = v62;
      v67 = v62;
      v9 = v80;
      v68 = v77;
      v69 = v79;
      sub_100A76468(v67, v80, v77, v79, v64, v66, 1, &v88, v90);
      sub_100006654(0, 0xF000000000000000);
      sub_100016590(v64, v66);
      sub_10040A07C(v90);
      v71 = v88;
      v19 = v89;
      sub_100017D5C(v88, v89);
      objc_autoreleasePoolPop(v75);
      sub_100016590(v68, v69);
      sub_100016590(v73, v9);
      sub_100016590(v74, v63);
      v80 = v71;
      sub_100016590(v71, v19);
      v21 = v84;
      v11 = v76;
      v20 = v85;
    }

    sub_100017D5C(v80, v19);
    v22 = sub_101074900(v21);
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      v24 = v11;
      v25 = sub_10107491C(v21);

      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = [objc_allocWithZone(SPOfflineAdvertisingConfiguration) initWithShortIntervalCount:v23 longIntervalCount:v25];
        v27 = v12[5];
        v28 = type metadata accessor for UUID();
        v29 = v83;
        (*(*(v28 - 8) + 16))(v83, v14 + v27, v28);
        v30 = type metadata accessor for OfflineFindingInfo(0);
        v31 = v82;
        v24(v29 + v30[5], v82, v20);
        sub_1000BC4D4(&qword_10169F460, &qword_1013A09F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10138BBE0;
        *(inited + 32) = 2;
        *(inited + 40) = v26;
        *(inited + 48) = 1;
        *(inited + 56) = v26;
        v33 = v20;
        v34 = sub_100909054(inited);
        swift_setDeallocating();
        v35 = v26;
        sub_1000BC4D4(&qword_10169F468, &qword_1013A09F8);
        swift_arrayDestroy();
        v36 = v80;
        sub_100006654(v80, v19);

        (*(v81 + 8))(v31, v33);
        *(v29 + v30[6]) = v86;
        v37 = (v29 + v30[7]);
        v38 = v87;
        *v37 = v78;
        v37[1] = v38;
        v39 = (v29 + v30[8]);
        *v39 = v36;
        v39[1] = v19;
        *(v29 + v30[9]) = v34;
        return (*(*(v30 - 1) + 56))(v29, 0, 1, v30);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v9 = v16;
  sub_100017D5C(v16, v87);

  if (qword_101694840 != -1)
  {
LABEL_20:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177B060);
  v42 = v14;
  v43 = v80;
  sub_100032504(v42, v80, type metadata accessor for OwnedBeaconRecord);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v85;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v90[0] = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    sub_10040A66C(v43, type metadata accessor for OwnedBeaconRecord);
    v53 = sub_1000136BC(v50, v52, v90);

    *(v48 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Unable to get basePrimaryKeyIndex for %{private,mask.hash}s", v48, 0x16u);
    sub_100007BAC(v49);

    sub_100016590(v9, v87);
  }

  else
  {
    sub_100016590(v9, v87);

    sub_10040A66C(v43, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v81 + 8))(v82, v47);
  v70 = type metadata accessor for OfflineFindingInfo(0);
  return (*(*(v70 - 8) + 56))(v83, 1, 1, v70);
}

id sub_1003DF44C(uint64_t (**a1)(uint64_t a1), int a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v190 = a4;
  v191 = a3;
  LODWORD(v188) = a2;
  v181 = *v4;
  v183 = type metadata accessor for OSSignpostID();
  v182 = *(v183 - 8);
  v6 = v182[8];
  v7 = __chkstk_darwin(v183);
  __chkstk_darwin(v7);
  v9 = &v163 - v8;
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v10 - 8);
  v187 = &v163 - v11;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v184 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = (&v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v163 - v17;
  v186 = v19;
  __chkstk_darwin(v16);
  v185 = &v163 - v20;
  v21 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v21);
  v23 = (&v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = v12;
  v24 = *(v12 + 24);
  v25 = a1;
  sub_100032504(a1 + v24, v23, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v180 = v4;
      v28 = *(v189 + 5);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v29 = sub_100035730(a1 + v28, 0, 0);
      v30 = a1 + v28;
      v31 = v187;
      v32 = sub_10003ABC0(v187, v30, v29, 1);

      sub_10000B3A8(v31, &unk_101696900, &unk_10138B1E0);
      v33 = static os_log_type_t.default.getter();
      if (v32)
      {
        if (qword_1016950C8 != -1)
        {
          v161 = v33;
          swift_once();
          v33 = v161;
        }

        os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10177C410, "Device may be already connected.", 32, 2, _swiftEmptyArrayStorage);
        sub_1003E49EC(v25, v188 & 1, v191, v190);
      }

      else
      {
        v83 = v188;
        if (qword_1016950C8 != -1)
        {
          v162 = v33;
          swift_once();
          v33 = v162;
        }

        os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10177C410, "Attempting pre-connection with device.", 38, 2, _swiftEmptyArrayStorage);
        v84 = v180;
        v85 = v25;
        sub_10089102C(v25 + v28);
        v189 = type metadata accessor for OwnedBeaconRecord;
        v86 = v185;
        sub_100032504(v25, v185, type metadata accessor for OwnedBeaconRecord);
        v87 = *(v184 + 80);
        v88 = (v87 + 32) & ~v87;
        v89 = (v186 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        LODWORD(v188) = v83 & 1;
        *(v90 + 16) = v83 & 1;
        *(v90 + 24) = v84;
        v187 = type metadata accessor for OwnedBeaconRecord;
        sub_10040A014(v86, v90 + v88, type metadata accessor for OwnedBeaconRecord);
        v91 = (v90 + v89);
        v93 = v190;
        v92 = v191;
        *v91 = v191;
        v91[1] = v93;

        Future.addSuccess(block:)();

        sub_100032504(v85, v86, v189);
        v94 = swift_allocObject();
        *(v94 + 16) = v188;
        *(v94 + 24) = v92;
        *(v94 + 32) = v93;
        *(v94 + 40) = v84;
        sub_10040A014(v86, v94 + ((v87 + 48) & ~v87), v187);

        Future.addFailure(block:)();
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      sub_1003D9064(a1, 1, v191, v190);
LABEL_25:
      v95 = type metadata accessor for UUID();
      return (*(*(v95 - 8) + 8))(v23, v95);
    }

LABEL_6:
    sub_10040A66C(v23, type metadata accessor for StableIdentifier);
    return sub_1003D9064(a1, 1, v191, v190);
  }

  v174 = v18;
  v172 = v6;
  v173 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v9;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  v177 = v15;
  v180 = v4;
  v34 = v23[1];
  v170 = *v23;
  v167 = v34;
  v35 = v23[3];
  v171 = v23[2];
  v169 = v35;
  v36 = v23[5];
  v168 = v23[4];
  v178 = v36;
  v37 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  v163 = xmmword_101385D80;
  *(v39 + 16) = xmmword_101385D80;
  *(v39 + 56) = &type metadata for Bool;
  *(v39 + 64) = &protocol witness table for Bool;
  LODWORD(v179) = v188 & 1;
  *(v39 + 32) = v188 & 1;
  v166 = v38;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "#Durian: Reset beacon with force - %i", v163);

  type metadata accessor for SPAnalyticsItemPairEvent(0);
  swift_allocObject();
  v40 = sub_101164980(0);
  v165 = type metadata accessor for Transaction();
  v41 = a1;
  v42 = v185;
  sub_100032504(a1, v185, type metadata accessor for OwnedBeaconRecord);
  v43 = *(v184 + 80);
  v44 = (v43 + 24) & ~v43;
  v45 = v186 + 7;
  v46 = (v186 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v180;
  *(v47 + 16) = v180;
  v184 = type metadata accessor for OwnedBeaconRecord;
  sub_10040A014(v42, v47 + v44, type metadata accessor for OwnedBeaconRecord);
  v49 = v47 + v46;
  v176 = v40;
  *v49 = v40;
  *(v49 + 8) = v179;

  static Transaction.asyncTask(name:block:)();

  v186 = v41;
  v50 = v174;
  sub_100032504(v41, v174, type metadata accessor for OwnedBeaconRecord);
  sub_100032504(v50, v177, type metadata accessor for OwnedBeaconRecord);
  v51 = (v43 + 64) & ~v43;
  v164 = v45;
  v52 = (v45 + v51) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
  v165 = v43;
  v55 = swift_allocObject();
  v56 = v169;
  *(v55 + 16) = v171;
  *(v55 + 24) = v56;
  v57 = v167;
  *(v55 + 32) = v170;
  *(v55 + 40) = v57;
  v58 = v190;
  *(v55 + 48) = v191;
  *(v55 + 56) = v58;
  sub_10040A014(v50, v55 + v51, v184);
  v59 = (v55 + v52);
  v60 = v178;
  *v59 = v168;
  v59[1] = v60;
  v61 = v55 + v53;
  *v61 = v48;
  *(v61 + 8) = v179;
  v184 = v55;
  *(v55 + v54) = v176;
  v62 = *(v189 + 5);
  v63 = qword_101694920;

  v64 = v57;
  v65 = v175;
  if (v63 != -1)
  {
    swift_once();
  }

  v66 = v186;
  v67 = sub_100035730(v186 + v62, 0, 0);
  v68 = v187;
  v69 = sub_10003ABC0(v187, v66 + v62, v67, 1);

  sub_10000B3A8(v68, &unk_101696900, &unk_10138B1E0);
  v70 = v183;
  if ((v69 & 1) == 0)
  {
    sub_10040A66C(v177, type metadata accessor for OwnedBeaconRecord);

    v96 = static os_log_type_t.default.getter();
    v97 = v166;
    os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v166, "#Durian: Attempting pre-connection with device.", 47, 2, _swiftEmptyArrayStorage);
    v98 = v97;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v189 = sub_10089102C(v66 + v62);
    v99 = v182;
    v100 = v182[2];
    v187 = (v182 + 2);
    v188 = v100;
    v101 = v173;
    v100(v173, v65, v70);
    v102 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v186 = *(v99 + 80);
    v103 = v65;
    v104 = v102;
    v178 = v102;
    v105 = v172 + v102;
    v180 = v172 + v102;
    v106 = ((v172 + v102) & 0xFFFFFFFFFFFFFFF8) + 8;
    v185 = v106;
    v107 = (((v172 + v102) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v174 = v107;
    v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v177 = v99[4];
    v177(v109 + v104, v101, v70);
    v105[v109] = v179;
    v110 = (v109 + v106);
    v172 = sub_1003FDAF4;
    v111 = v184;
    *v110 = sub_1003FDAF4;
    v110[1] = v111;
    v112 = (v109 + v107);
    v113 = v190;
    *v112 = v191;
    v112[1] = v113;
    *(v109 + v108) = v181;

    Future.addSuccess(block:)();

    v188(v101, v103, v70);
    v114 = swift_allocObject();
    v177(v114 + v178, v101, v70);
    v180[v114] = v179;
    v115 = (v114 + v185);
    *v115 = v172;
    v115[1] = v111;
    v116 = &v174[v114];
    *v116 = v191;
    *(v116 + 1) = v113;
    *(v114 + v108) = v181;

    Future.addFailure(block:)();

    return (v182[1])(v103, v70);
  }

  v71 = static os_log_type_t.default.getter();
  v72 = v166;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v166, "#Durian: Device may be already connected.", 41, 2, _swiftEmptyArrayStorage);
  v73 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v72, "#Durian: Proceeding to unpair and remove pairing lock.", 54, 2, _swiftEmptyArrayStorage);
  v192 = v171;
  v193 = v56;
  sub_1000DF96C();

  v74 = Data.init<A>(hexString:)();
  v76 = v177;
  if (v75 >> 60 == 15)
  {
LABEL_21:
    v81 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v72, "#Durian: Insufficient info for unpair.", 38, 2, _swiftEmptyArrayStorage);
    sub_1003FD838();
    swift_allocError();
    *v82 = 3;
    v191();

    return sub_10040A66C(v76, type metadata accessor for OwnedBeaconRecord);
  }

  v77 = v74;
  v78 = v75;
  v192 = v170;
  v193 = v64;

  v79 = Data.init<A>(hexString:)();
  if (v80 >> 60 == 15)
  {
    sub_100006654(v77, v78);
    goto LABEL_21;
  }

  v117 = v80;
  v186 = v79;
  v118 = *(v76 + *(v189 + 17));
  My = type metadata accessor for Feature.FindMy();
  v194 = My;
  v195 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v120 = sub_1000280DC(&v192);
  (*(*(My - 8) + 104))(v120, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v192);
  v187 = v117;
  if ((My & 1) == 0 || v118 != 22034)
  {
    v125 = *(v76 + *(v189 + 16));
    v197 = &type metadata for UnpairData;
    v126 = swift_allocObject();
    v196 = v126;
    v126[2] = v77;
    v126[3] = v78;
    v127 = v77;
    v128 = v186;
    v126[4] = v186;
    v126[5] = v117;
    v129 = v178;
    v126[6] = v168;
    v126[7] = v129;
    v126[8] = v118;
    v126[9] = v125;

    v183 = v127;
    sub_10002E98C(v127, v78);
    sub_10002E98C(v128, v117);
LABEL_35:
    v151 = v165;
    sub_1003E2BB4(v76, &v196, v188 & 1, 1);
    v152 = v185;
    sub_100032504(v76, v185, type metadata accessor for OwnedBeaconRecord);
    v153 = (v151 + 25) & ~v151;
    v154 = (v164 + v153) & 0xFFFFFFFFFFFFFFF8;
    v155 = swift_allocObject();
    v156 = v176;
    *(v155 + 16) = v176;
    *(v155 + 24) = 1;
    sub_10040A014(v152, v155 + v153, type metadata accessor for OwnedBeaconRecord);
    v157 = (v155 + v154);
    v158 = v190;
    v159 = v191;
    *v157 = v191;
    v157[1] = v158;

    Future.addSuccess(block:)();

    v160 = swift_allocObject();
    v160[2] = v156;
    v160[3] = v159;
    v160[4] = v158;

    Future.addFailure(block:)();

    sub_100006654(v128, v187);
    sub_100006654(v183, v78);

    sub_10040A66C(v76, type metadata accessor for OwnedBeaconRecord);
    return sub_100007BAC(&v196);
  }

  v121 = v178;

  v122 = sub_100260364(v168, v121);
  v124 = v123;
  v192 = v122;
  v193 = v123;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v122, v124);
    sub_1003FDE68();
    swift_allocError();
    v191();

    sub_100006654(v186, v187);
    sub_100006654(v77, v78);

    return sub_10040A66C(v177, type metadata accessor for OwnedBeaconRecord);
  }

  v130 = Data.trimmed.getter();
  v132 = v131;
  sub_100016590(v122, v124);
  sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = v163;
  *(inited + 32) = v130;
  *(inited + 40) = v132;
  sub_100017D5C(v130, v132);
  v134 = sub_1003E28E4(inited);
  swift_setDeallocating();
  sub_1003FDE14(inited + 32);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v135 = result;
    v182 = v134;
    v183 = v77;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v137 = result;
      chipID = MobileGestalt_get_chipID();

      v192 = uniqueChipID;
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v181 = v140;
      v192 = chipID;
      v179 = dispatch thunk of CustomStringConvertible.description.getter();
      v175 = v141;
      v142 = sub_100EF9784();
      v144 = v143;
      v76 = v177;
      v145 = UUID.uuidString.getter();
      v147 = v146;
      v197 = &type metadata for AirPodsUnpairData;
      v148 = swift_allocObject();
      v196 = v148;
      sub_100016590(v130, v132);
      v149 = v181;
      *(v148 + 16) = v139;
      *(v148 + 24) = v149;
      v150 = v175;
      *(v148 + 32) = v179;
      *(v148 + 40) = v150;
      *(v148 + 48) = v142;
      *(v148 + 56) = v144;
      *(v148 + 64) = v145;
      *(v148 + 72) = v147;
      *(v148 + 80) = 1;
      *(v148 + 88) = v182;
      v128 = v186;
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100032504(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  result = sub_10040A014(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SharedBeaconRecord);
  v13 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  if (*(a1 + *(v7 + 44)) == -1 && *(a1 + *(v7 + 48)) == -1)
  {
    if (*(v3 + 40))
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100406AD0;
      *(v15 + 24) = v11;

      sub_10052B490(a1, sub_1003FD88C, v15);
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v3 + 40))
    {
      v14 = swift_allocObject();
      *(v14 + 16) = sub_100406AD0;
      *(v14 + 24) = v11;

      sub_10052D47C(a1, sub_10040BA44, v14);
LABEL_5:
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E0D7C(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v61 = &v60 - v6;
  v84 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v84 - 8);
  v8 = __chkstk_darwin(v84);
  v83 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v60 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - v12;
  v85 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v85 - 8);
  __chkstk_darwin(v85);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_100519FB0();
  v21 = v19;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v76 = v17 + 16;
  v75 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v73 = (v7 + 8);
  v74 = (v7 + 104);
  v69 = (v14 + 48);
  v68 = (v14 + 56);
  v80 = v17;
  v71 = (v17 + 8);
  v88 = v20;

  v28 = 0;
  v67 = 0;
  v70 = 0;
  v86 = xmmword_101385D80;
  v78 = v21;
  v79 = v13;
  v81 = v16;
  v77 = v26;
  v72 = v22;
  if (v25)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        (*(v80 + 16))(v21, *(v88 + 48) + *(v80 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v16);
        v89 = *(v87 + 280);
        v32 = static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v25 &= v25 - 1;
        v33 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v34 = swift_allocObject();
        *(v34 + 16) = v86;
        v35 = v21;
        v36 = UUID.uuidString.getter();
        v38 = v37;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_100008C00();
        *(v34 + 32) = v36;
        *(v34 + 40) = v38;
        os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "ownedBeaconRecord(for uuid: %@)", 31, 2, v34);

        v39 = v82;
        static SystemInfo.lockState.getter();
        v41 = v83;
        v40 = v84;
        (*v74)(v83, v75, v84);
        sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
        LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = *v73;
        (*v73)(v41, v40);
        v42(v39, v40);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v29 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v33, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
        v30 = v79;
        (*v68)(v79, 1, 1, v85);
        v16 = v81;
        v26 = v77;
LABEL_6:
        v22 = v72;
        v21 = v78;
        (*v71)(v78, v16);
        v27 = sub_10000B3A8(v30, &unk_1016A9A20, &qword_10138B280);
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      v43 = sub_100025044();
      __chkstk_darwin(v43);
      *(&v60 - 2) = v35;
      v30 = v79;
      v44 = v70;
      sub_1012BBBD0(sub_100406F84, v43, v79);
      v70 = v44;

      v45 = (*v69)(v30, 1, v85);
      v16 = v81;
      v26 = v77;
      if (v45 == 1)
      {
        goto LABEL_6;
      }

      v46 = v62;
      sub_10040A014(v30, v62, type metadata accessor for OwnedBeaconRecord);
      v22 = v72;
      if (v67)
      {
        v67 = 1;
      }

      else
      {
        v47 = *(v85 + 20);
        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v48 = sub_100035730(v46 + v47, 0, 0);
        v49 = v46 + v47;
        v50 = v61;
        v67 = sub_10003ABC0(v61, v49, v48, 1);

        sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
      }

      sub_10040A66C(v46, type metadata accessor for OwnedBeaconRecord);
      v21 = v78;
      v27 = (*v71)(v78, v16);
      if (!v25)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_32:
      v59 = v27;
      swift_once();
      v27 = v59;
LABEL_24:
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10177C410, "Device may be already connected.", 32, 2, _swiftEmptyArrayStorage);
      v51 = v64 & 1;
      v52 = v63;
      return sub_1003E171C(v52, v51, v65, v66);
    }

    if (v31 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v31);
    ++v28;
    if (v25)
    {
      v28 = v31;
      goto LABEL_11;
    }
  }

  v27 = static os_log_type_t.default.getter();
  if (v67)
  {
    if (qword_1016950C8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v53 = v27;
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v54 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v55 = swift_allocObject();
  *(v55 + 16) = v86;
  *(v55 + 56) = &type metadata for Bool;
  *(v55 + 64) = &protocol witness table for Bool;
  v56 = v64;
  *(v55 + 32) = v64 & 1;
  os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Device is not connected. Force [%d]", v60);

  if (v56)
  {
    v52 = v63;
    v51 = 1;
    return sub_1003E171C(v52, v51, v65, v66);
  }

  sub_1003FD838();
  swift_allocError();
  *v58 = 7;
  v65();
}

uint64_t sub_1003E171C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C418);
  sub_100032504(a1, v13, type metadata accessor for OwnedBeaconGroup);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v45 = a2;
  if (v17)
  {
    v18 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v9;
    v21 = v20;
    v46 = v20;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    type metadata accessor for UUID();
    v40 = v4;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
    v25 = sub_1000136BC(v22, v24, &v46);
    v5 = v40;

    *(v19 + 14) = v25;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v45 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "unpairMultipartAccessory for group %{private,mask.hash}s. Force? %{BOOL}d", v19, 0x1Cu);
    sub_100007BAC(v21);
    v9 = v39;

    v8 = v18;
  }

  else
  {

    sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10042F918(a1 + *(v8 + 28));
  v26 = v42;
  sub_100032504(a1, v42, type metadata accessor for OwnedBeaconGroup);
  v27 = *(v9 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  sub_10040A014(v26, v29 + v28, type metadata accessor for OwnedBeaconGroup);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = a1;
  v41 = a1;
  v32 = v43;
  v33 = v44;
  *v30 = v43;
  v30[1] = v33;
  sub_100032504(v31, v26, type metadata accessor for OwnedBeaconGroup);
  v34 = (v27 + 16) & ~v27;
  v35 = swift_allocObject();
  sub_10040A014(v26, v35 + v34, type metadata accessor for OwnedBeaconGroup);
  v36 = v35 + ((v34 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v36 = sub_100406FA4;
  *(v36 + 8) = v29;
  *(v36 + 16) = v45 & 1;
  v37 = (v35 + ((v34 + v10 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v32;
  v37[1] = v33;
  swift_retain_n();

  sub_1003E8454(v41, sub_100407038, v35);
}

uint64_t sub_1003E1B90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 64);
  *(v4 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003E1C5C, 0, 0);
}

uint64_t sub_1003E1C5C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  sub_100032504(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  sub_10040A014(v1, v5 + v4, type metadata accessor for OwnedBeaconRecord);

  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v6 = v0;
  v6[1] = sub_1003E1DB0;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_100405C58, v5, v7);
}

uint64_t sub_1003E1DB0()
{

  return _swift_task_switch(sub_1003E1EC8, 0, 0);
}

uint64_t sub_1003E1EC8()
{
  v1 = v0[5];
  v0[11] = v0[2];
  return _swift_task_switch(sub_1003E1EEC, v1, 0);
}

uint64_t sub_1003E1EEC()
{
  v1 = v0[11];
  v2 = v0[5];
  v0[12] = type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003E1FCC, 0, 0);
}

uint64_t sub_1003E1FCC()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 40);

    return _swift_task_switch(sub_1003E2078, v1, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1003E2078()
{

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003E211C, 0, 0);
}

uint64_t sub_1003E211C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003E2184(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v82 = a8;
  v83 = a6;
  v80 = a1;
  v18 = type metadata accessor for OwnedBeaconRecord(0);
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  __chkstk_darwin(v18);
  v20 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C3B0;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C3B0, "#Durian: Proceeding to unpair and remove pairing lock.", 54, 2, _swiftEmptyArrayStorage);
  v84 = a2;
  v85 = a3;
  sub_1000DF96C();

  v22 = Data.init<A>(hexString:)();
  if (v23 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v24 = v22;
  v25 = v23;
  v84 = a4;
  v85 = a5;

  v26 = Data.init<A>(hexString:)();
  if (v27 >> 60 == 15)
  {
    sub_100006654(v24, v25);
LABEL_6:
    v28 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v21, "#Durian: Insufficient info for unpair.", 38, 2, _swiftEmptyArrayStorage);
    sub_1003FD838();
    swift_allocError();
    *v29 = 3;
    v83();
  }

  v78 = v26;
  v79 = v27;
  v77 = a11;
  v31 = *(v82 + *(v18 + 68));
  My = type metadata accessor for Feature.FindMy();
  v86 = My;
  v87 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v33 = sub_1000280DC(&v84);
  (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v84);
  if ((My & 1) == 0 || v31 != 22034)
  {
    v75 = a7;
    v37 = v82;
    v38 = *(v82 + *(v18 + 64));
    v89 = &type metadata for UnpairData;
    v39 = swift_allocObject();
    v88[0] = v39;
    v39[2] = v24;
    v39[3] = v25;
    v40 = v78;
    v41 = v79;
    v39[4] = v78;
    v39[5] = v41;
    v39[6] = a9;
    v39[7] = a10;
    v39[8] = v31;
    v39[9] = v38;

    sub_10002E98C(v24, v25);
    sub_10002E98C(v40, v41);
    v76 = v24;
LABEL_16:
    v61 = v80 & 1;
    sub_1003E2BB4(v37, v88, a12 & 1, v80 & 1);
    sub_100032504(v37, &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v62 = (*(v81 + 80) + 25) & ~*(v81 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = a13;
    *(v63 + 24) = v61;
    sub_10040A014(&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62, type metadata accessor for OwnedBeaconRecord);
    v64 = (v63 + ((v19 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
    v65 = v83;
    v66 = v75;
    *v64 = v83;
    v64[1] = v66;

    Future.addSuccess(block:)();

    v67 = swift_allocObject();
    v67[2] = a13;
    v67[3] = v65;
    v67[4] = v66;

    Future.addFailure(block:)();

    sub_100006654(v78, v79);
    sub_100006654(v76, v25);
    return sub_100007BAC(v88);
  }

  v34 = sub_100260364(a9, a10);
  v36 = v35;
  v84 = v34;
  v85 = v35;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v34, v36);
    sub_1003FDE68();
    swift_allocError();
    v83();
    sub_100006654(v24, v25);
    sub_100006654(v78, v79);
  }

  v42 = Data.trimmed.getter();
  v44 = v43;
  sub_100016590(v34, v36);
  sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v42;
  *(inited + 40) = v44;
  v74 = v44;
  sub_100017D5C(v42, v44);
  v73 = sub_1003E28E4(inited);
  swift_setDeallocating();
  sub_1003FDE14(inited + 32);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v46 = result;
    v72 = v42;
    v75 = a7;
    v76 = v24;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v48 = result;
      chipID = MobileGestalt_get_chipID();

      v84 = uniqueChipID;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v50;
      v84 = chipID;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = sub_100EF9784();
      v55 = v54;
      v37 = v82;
      v56 = UUID.uuidString.getter();
      v58 = v57;
      v89 = &type metadata for AirPodsUnpairData;
      v59 = swift_allocObject();
      v88[0] = v59;
      sub_100016590(v72, v74);
      v60 = v70;
      *(v59 + 16) = v71;
      *(v59 + 24) = v60;
      *(v59 + 32) = v69;
      *(v59 + 40) = v52;
      *(v59 + 48) = v53;
      *(v59 + 56) = v55;
      *(v59 + 64) = v56;
      *(v59 + 72) = v58;
      *(v59 + 80) = 1;
      *(v59 + 88) = v73;
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003E28E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_10169F318, &qword_1013A0730);
  __chkstk_darwin(v4 - 8);
  v6 = (v20 - v5);
  v7 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  v8 = __chkstk_darwin(v7);
  v21 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a1 + 32);
  v20[0] = v10;
  v15 = (v10 + 48);
  v16 = _swiftEmptyArrayStorage;
  v20[1] = v2;
  do
  {
    v22 = *v14;
    sub_100017D5C(v22, *(&v22 + 1));
    sub_1003E5670(&v22, v6);
    sub_100016590(v22, *(&v22 + 1));
    if ((*v15)(v6, 1, v7) == 1)
    {
      sub_10000B3A8(v6, &qword_10169F318, &qword_1013A0730);
    }

    else
    {
      sub_10040A014(v6, v12, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
      sub_10040A014(v12, v21, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100A5CB78(0, v16[2] + 1, 1, v16);
      }

      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_100A5CB78((v17 > 1), v18 + 1, 1, v16);
      }

      v16[2] = v18 + 1;
      sub_10040A014(v21, v16 + ((*(v20[0] + 80) + 32) & ~*(v20[0] + 80)) + *(v20[0] + 72) * v18, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
    }

    ++v14;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t sub_1003E2BB4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v76 = a4;
  v77 = a3;
  v78 = a2;
  v84 = *v4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v63 = &v62 - v7;
  v62 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v79 = Future.init()();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v80 = qword_10177C3B0;
  OSSignpostID.init(log:)();
  v86 = v16;
  v17 = *(v11 + 16);
  v73 = v11 + 16;
  v74 = v17;
  v17(v14, v16, v10);
  v72 = type metadata accessor for OwnedBeaconRecord;
  sub_100032504(a1, &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v82 = a1;
  v18 = *(v11 + 80);
  v19 = v10;
  v20 = (v18 + 16) & ~v18;
  v65 = v18;
  v71 = v12;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v8 + 80);
  v23 = (v22 + v21 + 8) & ~v22;
  v70 = v18 | v22;
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = v9;
  v25 = swift_allocObject();
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  v75 = v11;
  v68 = *(v11 + 32);
  v69 = v11 + 32;
  v64 = v14;
  v83 = v19;
  v68(v25 + v20, v14, v19);
  *(v26 + v21) = v85;
  v66 = type metadata accessor for OwnedBeaconRecord;
  v27 = v26 + v23;
  v28 = v81;
  sub_10040A014(v81, v27, type metadata accessor for OwnedBeaconRecord);
  v29 = v79;
  *(v26 + v24) = v79;
  *(v26 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;

  static os_signpost_type_t.begin.getter();
  v30 = v86;
  os_signpost(_:dso:log:name:signpostID:)();
  v74(v14, v30, v19);
  sub_100032504(v82, v28, v72);
  v31 = (v65 + 24) & ~v65;
  v32 = v31 + v71;
  v33 = (v22 + ((v31 + v71) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22;
  v34 = v33 + v67;
  v35 = (((v33 + v67) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  v68(v36 + v31, v64, v83);
  *(v36 + v32) = v76 & 1;
  *(v36 + (v32 & 0xFFFFFFFFFFFFFFF8) + 8) = v85;
  sub_10040A014(v81, v36 + v33, v66);
  *(v36 + v34) = v77 & 1;
  v37 = v36 + (v34 & 0xFFFFFFFFFFFFFFF8);
  *(v37 + 8) = sub_1003FE1F4;
  *(v37 + 16) = v26;
  *(v36 + v35) = v84;
  v38 = v78;
  sub_100013894(v78, v92);

  v39 = v29;
  if (swift_dynamicCast())
  {
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v93 = v87;
    v94 = v88;
    sub_100A2C34C();
    v40 = *(v62 + 20);
    v41 = type metadata accessor for UUID();
    v42 = *(v41 - 8);
    v43 = v82 + v40;
    v44 = v63;
    (*(v42 + 16))(v63, v43, v41);
    (*(v42 + 56))(v44, 0, 1, v41);
    sub_100925EB8(v44, &v93, sub_1003FE308, v36);

    sub_100405A18(&v93);

    sub_10000B3A8(v44, &qword_1016980D0, &unk_10138F3B0);
    (*(v75 + 8))(v86, v83);
  }

  else
  {
    v45 = v82;
    v46 = v75;
    v47 = v83;
    sub_100013894(v38, v92);
    if (swift_dynamicCast())
    {
      v93 = v87;
      v94 = v88;
      v95 = v89;
      v96 = v90;
      v48 = *(v62 + 20);
      v49 = type metadata accessor for UUID();
      v50 = *(v49 - 8);
      v51 = v45 + v48;
      v52 = v63;
      (*(v50 + 16))(v63, v51, v49);
      (*(v50 + 56))(v52, 0, 1, v49);
      sub_10088BAE8(v52, &v93, sub_1003FE308, v36);

      sub_1004059C4(&v93);

      sub_10000B3A8(v52, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v53 = static os_log_type_t.error.getter();
      sub_100013894(v38, &v93);
      v54 = v80;
      if (os_log_type_enabled(v80, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v87 = v56;
        *v55 = 136446210;
        v57 = _typeName(_:qualified:)();
        v59 = v58;
        sub_100007BAC(&v93);
        v60 = sub_1000136BC(v57, v59, &v87);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v53, "#Durian: unsupported unpair data type: %{public}s", v55, 0xCu);
        sub_100007BAC(v56);
        v39 = v79;
      }

      else
      {
        sub_100007BAC(&v93);
      }

      LOBYTE(v93) = 0;
      Future.finish(result:)();
    }

    (*(v46 + 8))(v86, v47);
  }

  return v39;
}

uint64_t sub_1003E3564(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v24 = a4;
  v25 = a5;
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = v13;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "#Durian: Reset & pairing lock remove success - %i", v22);

  type metadata accessor for Transaction();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v13;

  static Transaction.asyncTask(name:block:)();

  if ((a3 & 1) != 0 && v13)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    sub_100032504(v24, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v19 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_10040A014(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for OwnedBeaconRecord);
    sub_10025EDD4(0, 0, v12, &unk_1013A0768, v20);
  }

  return v25(0);
}

uint64_t sub_1003E3894(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1003E38B8, 0, 0);
}

uint64_t sub_1003E38B8()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1003E392C, v1, 0);
}

uint64_t sub_1003E392C()
{
  v1 = *(v0 + 32);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = v1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003E3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for OwnedBeaconRecord(0);
  v4[4] = swift_task_alloc();

  return _swift_task_switch(sub_1003E3A98, 0, 0);
}

uint64_t sub_1003E3A98()
{
  v16 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[5] = sub_1000076D4(v3, qword_10177B7F8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315651;
    *(v8 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101352160, &v15);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10040A66C(v7, type metadata accessor for OwnedBeaconRecord);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v8 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Start discovery after unpairing %{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10040A66C(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1003E3D6C;

  return daemon.getter();
}

uint64_t sub_1003E3D6C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003FD7F0(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_1003E3F48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003E3F48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1003E4154;
    v6 = 0;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1003E4084;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003E4084()
{
  sub_100BB9D48();

  return _swift_task_switch(sub_1003E40EC, 0, 0);
}

uint64_t sub_1003E40EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E4154()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101352160, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failed to get discovery service: %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E4324(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "#Durian: Error during reset & pairing lock remove - %@", 54, 2, v8);

  type metadata accessor for Transaction();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  return a3(a1);
}

uint64_t sub_1003E44D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E44F0, 0, 0);
}

uint64_t sub_1003E44F0()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1003E4564, v1, 0);
}

uint64_t sub_1003E4564()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v1;
  *(v4 + 56) = 0;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003E4650(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void))
{
  v8 = *a1;
  v9 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  *(v11 + 56) = &type metadata for Bool;
  *(v11 + 64) = &protocol witness table for Bool;
  *(v11 + 32) = v8;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "#Durian: Connection with device successful - %i", v15);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v8 & 1) != 0 || (a3)
  {
    return a4(v8);
  }

  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v10, "#Durian: Can't force unpair. Completing with generic error.", 59, 2, _swiftEmptyArrayStorage);
  sub_1003FD838();
  swift_allocError();
  *v13 = 0;
  a6();
}

uint64_t sub_1003E4838(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v12 = Error.localizedDescription.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "#Durian: Error during connection - %@", 37, 2, v11);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (a3)
  {
    return a4(0);
  }

  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v10, "#Durian: Can't force unpair. Completing with connection error.", 62, 2, _swiftEmptyArrayStorage);
  return a6(a1);
}

id sub_1003E49EC(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v108 = a3;
  v109 = a4;
  v103 = a2;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v99 = *(v5 - 1);
  v6 = __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v7;
  __chkstk_darwin(v6);
  v101 = &v87 - v9;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v10 - 8);
  v102 = &v87 - v11;
  v98 = type metadata accessor for AccessoryUnpairData(0);
  __chkstk_darwin(v98);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = __chkstk_darwin(v17);
  v105 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v87 - v20;
  v21 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v97 = (a1 + v5[5]);
  v24 = UUID.uuidString.getter();
  v111 = a1;
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = v111;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "unpairAccessory %@.", 19, 2, v23);

  sub_100032504(v27 + v5[6], v16, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v28 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v29 = &v16[*(v28 + 80)];
    v31 = *v29;
    v30 = *(v29 + 1);

    v33 = v106;
    v32 = v107;
    v34 = v110;
    v96 = *(v106 + 32);
    v96(v110, v16, v107);
    v35 = sub_100EF9784();
    v37 = v36;
    v38 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {

      v63 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v22, "Insufficient info to remove pairing lock.", 41, 2, _swiftEmptyArrayStorage);
      return (*(v33 + 8))(v34, v32);
    }

    v94 = v35;
    v95 = v31;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v40 = result;
      v93 = v30;
      uniqueChipID = MobileGestalt_get_uniqueChipID();

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v42 = result;
        chipID = MobileGestalt_get_chipID();

        v92 = *(v33 + 16);
        v92(v105, v110, v32);
        v112[0] = uniqueChipID;
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v44;
        v112[0] = chipID;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v45;
        v46 = (v111 + v5[15]);
        v48 = *v46;
        v47 = v46[1];

        v49 = sub_100D5F668();
        if (v50 >> 60 == 15)
        {
          v51 = 0;
          v52 = 0;
        }

        else
        {
          v64 = v49;
          v65 = v50;
          v112[0] = v49;
          v112[1] = v50;
          sub_1002313AC();
          v51 = RawRepresentable<>.hexString.getter();
          v52 = v66;
          sub_100006654(v64, v65);
        }

        v67 = v107;
        v96(v13, v105, v107);
        v68 = v98;
        v69 = &v13[*(v98 + 20)];
        v70 = v93;
        *v69 = v95;
        *(v69 + 1) = v70;
        v71 = &v13[v68[6]];
        *v71 = v94;
        *(v71 + 1) = v37;
        v72 = &v13[v68[7]];
        v73 = v90;
        *v72 = v91;
        v72[1] = v73;
        v74 = &v13[v68[8]];
        v75 = v88;
        *v74 = v89;
        v74[1] = v75;
        v76 = &v13[v68[9]];
        *v76 = v48;
        *(v76 + 1) = v47;
        v77 = &v13[v68[10]];
        *v77 = v51;
        v77[1] = v52;
        v78 = v104;
        v105 = sub_100A2C34C();
        v79 = v102;
        v92(v102, v97, v67);
        v80 = v106;
        (*(v106 + 56))(v79, 0, 1, v67);
        v81 = v101;
        sub_100032504(v111, v101, type metadata accessor for OwnedBeaconRecord);
        v82 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v83 = (v100 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        v85 = v109;
        *(v84 + 16) = v108;
        *(v84 + 24) = v85;
        sub_10040A014(v81, v84 + v82, type metadata accessor for OwnedBeaconRecord);
        v86 = v84 + v83;
        *v86 = v78;
        *(v86 + 8) = v103 & 1;

        sub_100416BFC(v79, v13, sub_100405F54, v84);

        sub_10000B3A8(v79, &qword_1016980D0, &unk_10138F3B0);
        sub_10040A66C(v13, type metadata accessor for AccessoryUnpairData);
        return (*(v80 + 8))(v110, v67);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10040A66C(v16, type metadata accessor for StableIdentifier);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000076D4(v53, qword_10177C418);
  sub_100032504(v27, v8, type metadata accessor for OwnedBeaconRecord);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v112[0] = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = sub_1010DA578();
    v60 = v59;
    sub_10040A66C(v8, type metadata accessor for OwnedBeaconRecord);
    v61 = sub_1000136BC(v58, v60, v112);

    *(v56 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "Unsupported stableIdentifier: %{private,mask.hash}s", v56, 0x16u);
    sub_100007BAC(v57);
  }

  else
  {

    sub_10040A66C(v8, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1003FD838();
  swift_allocError();
  *v62 = 6;
  v108();
}

id sub_1003E539C(char *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v10 = *a1;
  v11 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  *(v13 + 56) = &type metadata for Bool;
  *(v13 + 64) = &protocol witness table for Bool;
  *(v13 + 32) = v10;
  *(v13 + 96) = &type metadata for Bool;
  *(v13 + 104) = &protocol witness table for Bool;
  *(v13 + 72) = a2 & 1;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Connection with device success [%d] force [%d]", v16, v17);

  if (v10 & 1) != 0 || (a2)
  {
    return sub_1003E49EC(a4, a2 & 1, a5, a6);
  }

  sub_1003FD838();
  swift_allocError();
  *v14 = 7;
  a5();
}

id sub_1003E5534(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 56) = &type metadata for Bool;
  *(v13 + 64) = &protocol witness table for Bool;
  *(v13 + 32) = a2 & 1;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Connection with device failed. Force [%d]", v15);

  if (a2)
  {
    return sub_1003E49EC(a6, 1, a3, a4);
  }

  else
  {
    return (a3)(a1);
  }
}

uint64_t sub_1003E5670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v216 = a2;
  v4 = type metadata accessor for String.Encoding();
  v206 = *(v4 - 8);
  v207 = v4;
  __chkstk_darwin(v4);
  v210 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v205 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v204 = &v204 - v10;
  __chkstk_darwin(v9);
  v209 = &v204 - v11;
  v217 = type metadata accessor for UUID();
  v220 = *(v217 - 8);
  v12 = __chkstk_darwin(v217);
  v212 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v213 = &v204 - v14;
  v15 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v15);
  v17 = (&v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for OwnedBeaconRecord(0);
  v18 = *(v214 - 8);
  v19 = __chkstk_darwin(v214);
  v21 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v208 = &v204 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v204 - v25;
  __chkstk_darwin(v24);
  v215 = &v204 - v27;
  v29 = *a1;
  v28 = a1[1];
  v218 = sub_100AA372C(v29, v28);

  sub_1003F135C(&v218, sub_1003F2FE4, sub_1003F19B0);
  if (v2)
  {
    goto LABEL_108;
  }

  if (!v218[2])
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177C418);
    sub_100017D5C(v29, v28);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    sub_100016590(v29, v28);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v218 = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_100017D5C(v29, v28);
      static String.Encoding.utf8.getter();
      v60 = String.init(data:encoding:)();
      if (!v61)
      {
        v60 = Data.hexString.getter();
      }

      v62 = v60;
      v63 = v61;
      sub_100016590(v29, v28);
      v64 = sub_1000136BC(v62, v63, &v218);

      *(v58 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "Missing beacon record for %{private,mask.hash}s.", v58, 0x16u);
      sub_100007BAC(v59);
    }

    v65 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v66 = v216;
    (*(v220 + 56))(v216 + v65[7], 1, 1, v217);
    *v66 = xmmword_10138BBF0;
    *(v66 + 1) = xmmword_10138BBF0;
    v66[4] = v29;
    v66[5] = v28;
    v67 = (v66 + v65[8]);
    *v67 = 0;
    v67[1] = 0;
    v68 = (v66 + v65[9]);
    *v68 = 0;
    v68[1] = 0;
    (*(*(v65 - 1) + 56))(v66, 0, 1, v65);
    return sub_100017D5C(v29, v28);
  }

  v211 = 0;
  sub_100032504(v218 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v26, type metadata accessor for OwnedBeaconRecord);

  v30 = v215;
  sub_10040A014(v26, v215, type metadata accessor for OwnedBeaconRecord);
  sub_100032504(v30 + *(v214 + 24), v17, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v83 = *v17;
      v82 = v17[1];
      v84 = v17[3];
      v218 = v17[2];
      v219 = v84;
      sub_1000DF96C();
      v85 = Data.init<A>(hexString:)();
      if (v86 >> 60 == 15)
      {
        sub_10040A66C(v30, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v101 = v85;
        v97 = v86;
        v218 = v83;
        v219 = v82;
        v102 = Data.init<A>(hexString:)();
        if (v103 >> 60 == 15)
        {
          sub_10040A66C(v30, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v101, v97);
        }

        else
        {
          v35 = v102;
          v107 = v103;
          v110 = v210;
          static String.Encoding.utf8.getter();
          v111 = String.data(using:allowLossyConversion:)();
          v30 = v112;

          (*(v206 + 8))(v110, v207);
          if (v30 >> 60 != 15)
          {
            (*(v220 + 56))(v205, 1, 1, v217);
            v136 = sub_100D5F668();
            if (v137 >> 60 == 15)
            {
              v98 = 0;
              v217 = 0;
            }

            else
            {
              v156 = v136;
              v157 = v137;
              v158 = sub_100313B54(v136, v137);
              v220 = v30;
              v159 = v111;
              v161 = v160;
              sub_100006654(v156, v157);
              v98 = Data.hexString.getter();
              v217 = v162;
              v163 = v161;
              v111 = v159;
              v30 = v220;
              sub_100016590(v158, v163);
            }

            v149 = sub_100D5F668();
            v220 = v98;
            if (v150 >> 60 == 15)
            {
              v164 = 0;
              v165 = 0;
LABEL_104:
              sub_10040A66C(v215, type metadata accessor for OwnedBeaconRecord);
              v199 = v216;
              *v216 = v101;
              v199[1] = v97;
              v199[2] = v35;
              v199[3] = v107;
              v199[4] = v111;
              v199[5] = v30;
              v200 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
              sub_1000D2AD8(v205, v199 + v200[7], &qword_1016980D0, &unk_10138F3B0);
              v201 = (v199 + v200[8]);
              v202 = v217;
              *v201 = v220;
              v201[1] = v202;
              v203 = (v199 + v200[9]);
              *v203 = v164;
              v203[1] = v165;
              return (*(*(v200 - 1) + 56))(v199, 0, 1, v200);
            }

            v166 = v150 >> 62;
            v214 = v111;
            if ((v150 >> 62) <= 1)
            {
              if (!v166)
              {
                v167 = v149;
                v168 = v150;
                goto LABEL_103;
              }

              LODWORD(v185) = HIDWORD(v149) - v149;
              if (__OFSUB__(HIDWORD(v149), v149))
              {
LABEL_107:
                __break(1u);
LABEL_108:

                __break(1u);
                return result;
              }

              v185 = v185;
LABEL_100:
              v168 = v150;
              v167 = v149;
              if (v185 < -1)
              {
                __break(1u);
                goto LABEL_102;
              }

LABEL_103:
              v195 = Data.subdata(in:)();
              v197 = v196;
              sub_100006654(v167, v168);
              v164 = Data.hexString.getter();
              v165 = v198;
              sub_100016590(v195, v197);
              v111 = v214;
              goto LABEL_104;
            }

LABEL_87:
            if (v166 != 2)
            {
LABEL_102:
              v168 = v150;
              v167 = v149;
              goto LABEL_103;
            }

            v184 = *(v149 + 16);
            v183 = *(v149 + 24);
            v140 = __OFSUB__(v183, v184);
            v185 = v183 - v184;
            if (v140)
            {
              __break(1u);
LABEL_91:
              LODWORD(v166) = HIDWORD(v149) - v149;
              if (__OFSUB__(HIDWORD(v149), v149))
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              v166 = v166;
              goto LABEL_93;
            }

            goto LABEL_100;
          }

          sub_10040A66C(v215, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v35, v107);
          sub_100006654(v101, v97);
        }
      }

      v113 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v113 - 8) + 56))(v216, 1, 1, v113);
    case 3:
      v70 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v71 = (v17 + v70[12]);
      v73 = *v71;
      v72 = v71[1];
      v74 = (v17 + v70[16]);
      v75 = *v74;
      v76 = v74[1];
      v77 = (v17 + v70[20]);
      v79 = *v77;
      v78 = v77[1];
      (*(v220 + 32))(v212, v17, v217);
      v218 = v75;
      v219 = v76;
      sub_1000DF96C();
      v80 = Data.init<A>(hexString:)();
      if (v81 >> 60 == 15)
      {
      }

      else
      {
        v97 = v80;
        v98 = v81;
        v218 = v73;
        v219 = v72;
        v99 = Data.init<A>(hexString:)();
        if (v100 >> 60 != 15)
        {
          v107 = v99;
          v101 = v100;
          v218 = v79;
          v219 = v78;
          v108 = Data.init<A>(hexString:)();
          if (v109 >> 60 != 15)
          {
            v213 = v109;
            v214 = v108;
            v133 = v220;
            v35 = v204;
            v134 = v217;
            (*(v220 + 16))(v204, v212, v217);
            (*(v133 + 56))(v35, 0, 1, v134);
            v125 = sub_100D5F668();
            if (v126 >> 60 == 15)
            {
              v135 = 0;
              v209 = 0;
LABEL_64:
              v149 = sub_100D5F668();
              v210 = v135;
              if (v150 >> 60 == 15)
              {
                v151 = 0;
                v152 = 0;
LABEL_97:
                (*(v220 + 8))(v212, v217);
                sub_10040A66C(v30, type metadata accessor for OwnedBeaconRecord);
                v190 = v216;
                *v216 = v97;
                v190[1] = v98;
                v190[2] = v107;
                v190[3] = v101;
                v191 = v213;
                v190[4] = v214;
                v190[5] = v191;
                v176 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
                sub_1000D2AD8(v35, v190 + v176[7], &qword_1016980D0, &unk_10138F3B0);
                v192 = (v190 + v176[8]);
                v193 = v209;
                *v192 = v210;
                v192[1] = v193;
                v194 = (v190 + v176[9]);
                *v194 = v151;
                v194[1] = v152;
                v179 = *(*(v176 - 1) + 56);
                v180 = v190;
                return v179(v180, 0, 1, v176);
              }

              v153 = v150 >> 62;
              if ((v150 >> 62) <= 1)
              {
                if (!v153)
                {
                  v154 = v149;
                  v155 = v150;
LABEL_96:
                  v186 = Data.subdata(in:)();
                  v188 = v187;
                  sub_100006654(v154, v155);
                  v151 = Data.hexString.getter();
                  v152 = v189;
                  sub_100016590(v186, v188);
                  v30 = v215;
                  v35 = v204;
                  goto LABEL_97;
                }

                goto LABEL_91;
              }

              if (v153 != 2)
              {
                goto LABEL_95;
              }

              v182 = *(v149 + 16);
              v181 = *(v149 + 24);
              v140 = __OFSUB__(v181, v182);
              v166 = v181 - v182;
              if (!v140)
              {
LABEL_93:
                v155 = v150;
                v154 = v149;
                if (v166 >= -1)
                {
                  goto LABEL_96;
                }

                __break(1u);
LABEL_95:
                v155 = v150;
                v154 = v149;
                goto LABEL_96;
              }

              __break(1u);
              goto LABEL_87;
            }

LABEL_63:
            v142 = v125;
            v143 = v126;
            v144 = sub_100313B54(v125, v126);
            v146 = v145;
            sub_100006654(v142, v143);
            v135 = Data.hexString.getter();
            v209 = v147;
            v148 = v144;
            v30 = v215;
            sub_100016590(v148, v146);
            goto LABEL_64;
          }

          sub_100006654(v97, v98);
          sub_100006654(v107, v101);
LABEL_30:
          (*(v220 + 8))(v212, v217);
          v54 = v30;
LABEL_44:
          sub_10040A66C(v54, type metadata accessor for OwnedBeaconRecord);
          v114 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
          return (*(*(v114 - 8) + 56))(v216, 1, 1, v114);
        }

        sub_100006654(v97, v98);
      }

      goto LABEL_30;
    case 2:
      v32 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v33 = (v17 + v32[12]);
      v35 = *v33;
      v34 = v33[1];
      v36 = (v17 + v32[16]);
      v38 = *v36;
      v37 = v36[1];
      v39 = (v17 + v32[20]);
      v40 = *v39;
      v41 = v39[1];

      (*(v220 + 32))(v213, v17, v217);
      v218 = v40;
      v219 = v41;
      sub_1000DF96C();
      v42 = Data.init<A>(hexString:)();
      if (v43 >> 60 == 15)
      {

        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1000076D4(v44, qword_10177C418);
        v45 = v208;
        sub_100032504(v30, v208, type metadata accessor for OwnedBeaconRecord);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v218 = v49;
          *v48 = 141558275;
          *(v48 + 4) = 1752392040;
          *(v48 + 12) = 2081;
          v50 = sub_1010DA578();
          v52 = v51;
          sub_10040A66C(v45, type metadata accessor for OwnedBeaconRecord);
          v53 = sub_1000136BC(v50, v52, &v218);

          *(v48 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v46, v47, "Invalid serialNumber for %{private,mask.hash}s", v48, 0x16u);
          sub_100007BAC(v49);
        }

        else
        {

          sub_10040A66C(v45, type metadata accessor for OwnedBeaconRecord);
        }

        (*(v220 + 8))(v213, v217);
        v54 = v30;
        goto LABEL_44;
      }

      v97 = v43;
      v212 = v42;
      if (v37)
      {
        v218 = v38;
        v219 = v37;
        v37 = Data.init<A>(hexString:)();
        v214 = v104;
        if (v34)
        {
LABEL_35:
          v218 = v35;
          v219 = v34;
          v98 = Data.init<A>(hexString:)();
          v210 = v105;
LABEL_47:
          v115 = v220;
          v107 = v209;
          v101 = v217;
          (*(v220 + 16))(v209, v213, v217);
          (*(v115 + 56))(v107, 0, 1, v101);
          v116 = sub_100D5F668();
          if (v117 >> 60 == 15)
          {
            v118 = 0;
            v119 = 0;
          }

          else
          {
            v120 = v116;
            v101 = v117;
            v107 = sub_100313B54(v116, v117);
            v35 = v37;
            v122 = v121;
            sub_100006654(v120, v101);
            v118 = Data.hexString.getter();
            v119 = v123;
            v124 = v122;
            v37 = v35;
            sub_100016590(v107, v124);
          }

          v125 = sub_100D5F668();
          if (v126 >> 60 == 15)
          {
            v127 = 0;
            v128 = 0;
LABEL_81:
            (*(v220 + 8))(v213, v217);
            sub_10040A66C(v215, type metadata accessor for OwnedBeaconRecord);
            v173 = v216;
            v174 = v214;
            *v216 = v37;
            v173[1] = v174;
            v175 = v210;
            v173[2] = v98;
            v173[3] = v175;
            v173[4] = v212;
            v173[5] = v97;
            v176 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
            sub_1000D2AD8(v209, v173 + v176[7], &qword_1016980D0, &unk_10138F3B0);
            v177 = (v173 + v176[8]);
            *v177 = v118;
            v177[1] = v119;
            v178 = (v173 + v176[9]);
            *v178 = v127;
            v178[1] = v128;
            v179 = *(*(v176 - 1) + 56);
            v180 = v173;
            return v179(v180, 0, 1, v176);
          }

          v129 = v126 >> 62;
          if ((v126 >> 62) <= 1)
          {
            if (!v129)
            {
              v130 = v37;
              v131 = v125;
              v132 = v126;
LABEL_80:
              v169 = Data.subdata(in:)();
              v171 = v170;
              sub_100006654(v131, v132);
              v127 = Data.hexString.getter();
              v128 = v172;
              sub_100016590(v169, v171);
              v37 = v130;
              goto LABEL_81;
            }

            LODWORD(v141) = HIDWORD(v125) - v125;
            if (!__OFSUB__(HIDWORD(v125), v125))
            {
              v141 = v141;
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_106;
          }

          if (v129 != 2)
          {
            goto LABEL_79;
          }

          v139 = *(v125 + 16);
          v138 = *(v125 + 24);
          v140 = __OFSUB__(v138, v139);
          v141 = v138 - v139;
          if (!v140)
          {
LABEL_77:
            v130 = v37;
            v132 = v126;
            v131 = v125;
            if (v141 >= -1)
            {
              goto LABEL_80;
            }

            __break(1u);
LABEL_79:
            v130 = v37;
            v132 = v126;
            v131 = v125;
            goto LABEL_80;
          }

          __break(1u);
          goto LABEL_63;
        }
      }

      else
      {
        v214 = 0xF000000000000000;
        if (v34)
        {
          goto LABEL_35;
        }
      }

      v98 = 0;
      v210 = 0xF000000000000000;
      goto LABEL_47;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_1000076D4(v87, qword_10177C418);
  sub_100032504(v30, v21, type metadata accessor for OwnedBeaconRecord);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v218 = v91;
    *v90 = 141558275;
    *(v90 + 4) = 1752392040;
    *(v90 + 12) = 2081;
    v92 = sub_1010DA578();
    v94 = v93;
    sub_10040A66C(v21, type metadata accessor for OwnedBeaconRecord);
    v95 = sub_1000136BC(v92, v94, &v218);

    *(v90 + 14) = v95;
    _os_log_impl(&_mh_execute_header, v88, v89, "Unsupported beacon %{private,mask.hash}s", v90, 0x16u);
    sub_100007BAC(v91);

    v96 = v215;
  }

  else
  {

    sub_10040A66C(v21, type metadata accessor for OwnedBeaconRecord);
    v96 = v30;
  }

  sub_10040A66C(v96, type metadata accessor for OwnedBeaconRecord);
  v106 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  (*(*(v106 - 8) + 56))(v216, 1, 1, v106);
  return sub_10040A66C(v17, type metadata accessor for StableIdentifier);
}

id sub_1003E6C24(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v56 = a3;
  v54 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v55 = &v52 - v7;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  sub_100032504(a1, v10, type metadata accessor for OwnedBeaconGroup);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v57 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v63[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10040A66C(v10, type metadata accessor for OwnedBeaconGroup);
    v20 = sub_1000136BC(v17, v19, v63);
    v8 = v57;

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "removeAirPodsPairingLock for %{private,mask.hash}s", v15, 0x16u);
    sub_100007BAC(v16);
  }

  else
  {

    sub_10040A66C(v10, type metadata accessor for OwnedBeaconGroup);
  }

  v21 = sub_1003CDA20(*(a1 + *(v8 + 40)));
  v22 = sub_1003E28E4(v21);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v63[0] = v26;
    *v25 = 136315138;
    type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v27 = Array.description.getter();
    v29 = sub_1000136BC(v27, v28, v63);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "unpairDevices: %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v31 = result;
    v53 = a4;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v33 = result;
      chipID = MobileGestalt_get_chipID();

      *&v63[0] = uniqueChipID;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      *&v63[0] = chipID;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = sub_100EF9784();
      v43 = v42;
      v44 = v57;
      v45 = MACAddress.udid.getter();
      *&v58 = v35;
      *(&v58 + 1) = v37;
      *&v59 = v38;
      *(&v59 + 1) = v40;
      *&v60 = v41;
      *(&v60 + 1) = v43;
      *&v61 = v45;
      *(&v61 + 1) = v46;
      LOBYTE(v62) = v54 & 1;
      *(&v62 + 1) = v22;
      v63[3] = v61;
      v63[4] = v62;
      v63[1] = v59;
      v63[2] = v60;
      v63[0] = v58;
      sub_100A2C34C();
      v47 = *(v44 + 24);
      v48 = type metadata accessor for UUID();
      v49 = *(v48 - 8);
      v50 = a1 + v47;
      v51 = v55;
      (*(v49 + 16))(v55, v50, v48);
      (*(v49 + 56))(v51, 0, 1, v48);
      sub_100925EB8(v51, v63, v56, v53);

      sub_100405A18(&v58);
      return sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E7200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032504(a2, v11, type metadata accessor for OwnedBeaconGroup);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_10040A014(v11, v14 + v12, type metadata accessor for OwnedBeaconGroup);
  *(v14 + v13) = a1;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;

  sub_1003E6C24(a2, 0, sub_100407830, v14);
}

void sub_1003E7380(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = a1;
      v34 = v16;
      *v15 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, &v34);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to remove pairing lock due to %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    type metadata accessor for UnpairError(0);
    v33 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError, &unk_10138A5C4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v34;
    a4(v34);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    sub_100032504(a2, v11, type metadata accessor for OwnedBeaconGroup);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = a5;
      v26 = v25;
      v34 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10040A66C(v11, type metadata accessor for OwnedBeaconGroup);
      v30 = sub_1000136BC(v27, v29, &v34);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully removed pairing lock for group %{private,mask.hash}s", v24, 0x16u);
      sub_100007BAC(v26);
      a5 = v32;
    }

    else
    {

      sub_10040A66C(v11, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1003E77F8(a2, 1, a4, a5);
  }
}

uint64_t sub_1003E77F8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v57 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v58 = v11;
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169F3B0, &qword_1013A0880);
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_1000BC4D4(&qword_10169F3B8, &qword_1013A0888);
  v50 = *(v16 - 8);
  v51 = v16;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = sub_1000BC4D4(&qword_10169F3C0, &qword_1013A0890);
  v52 = *(v19 - 8);
  v53 = v19;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v22 = sub_1000BC4D4(&qword_10169F3C8, &qword_1013A0898);
  v55 = *(v22 - 8);
  v56 = v22;
  __chkstk_darwin(v22);
  v54 = &v42 - v23;
  v61 = _swiftEmptyArrayStorage;
  v59 = a1;
  sub_100519FB0();
  v25 = v24;

  sub_1003FCFF8(v25, v5, &v61, v8);

  v26 = v61;
  if (v61 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v46 = v27;
    v47 = (v27 + 16);
    v60 = v26;

    sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
    v43 = v12;
    v44 = a3;
    v45 = a4;
    sub_1000BC4D4(&qword_10169F3D8, &qword_1013A08A8);
    sub_1000041A4(&qword_10169F3E0, &qword_10169F3D0, &qword_1013A08A0, &protocol conformance descriptor for Future<A, B>);
    sub_1000041A4(&qword_10169F3E8, &qword_10169F3D8, &qword_1013A08A8, &protocol conformance descriptor for [A]);
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_10169F3F0, &qword_10169F3B0, &qword_1013A0880, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v28 = v49;
    Publisher.collect()();
    (*(v48 + 8))(v15, v28);
    sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
    sub_1000041A4(&qword_10169F400, &qword_10169F3B8, &qword_1013A0888, &protocol conformance descriptor for Publishers.Collect<A>);
    v29 = v51;
    Publisher.map<A>(_:)();
    (*(v50 + 8))(v18, v29);
    sub_1000BC4D4(&qword_10169F408, &qword_1013A08B8);
    sub_1000041A4(&qword_10169F410, &qword_10169F3C0, &qword_1013A0890, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_10169F418, &qword_10169F408, &qword_1013A08B8, &protocol conformance descriptor for Just<A>);
    v30 = v53;
    v31 = v54;
    Publisher.catch<A>(_:)();
    (*(v52 + 8))(v21, v30);
    v32 = v43;
    sub_100032504(v59, v43, type metadata accessor for OwnedBeaconGroup);
    v33 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v34 = (v58 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_10040A014(v32, v35 + v33, type metadata accessor for OwnedBeaconGroup);
    v36 = (v35 + v34);
    v37 = v45;
    *v36 = v44;
    v36[1] = v37;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;
    sub_1000041A4(&qword_10169F420, &qword_10169F3C8, &qword_1013A0898, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v38 = v56;
    v39 = Publisher<>.sink(receiveValue:)();

    (*(v55 + 8))(v31, v38);
    v40 = v47;
    swift_beginAccess();
    *v40 = v39;
  }

  if (v8)
  {
    sub_100AA9390(v59, a3, a4);
  }

  else
  {
    a3(0);
  }
}

void sub_1003E7FB0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char a5, void (*a6)(void))
{
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v37 = a4;
      v21 = v20;
      v39 = a1;
      v40 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = a6;
      v25 = sub_1000136BC(v22, v23, &v40);

      *(v19 + 4) = v25;
      a6 = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to send unpair command due to %{public}s", v19, 0xCu);
      sub_100007BAC(v21);

      a3 = v38;
    }

    if (a5)
    {
      a3();
    }

    else
    {
      type metadata accessor for UnpairError(0);
      v39 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError, &unk_10138A5C4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v36 = v40;
      a6(v40);
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    sub_100032504(a2, v14, type metadata accessor for OwnedBeaconGroup);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, &v40);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully sent unpair command for group %{private,mask.hash}s", v29, 0x16u);
      sub_100007BAC(v30);
    }

    else
    {

      v35 = sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
    }

    (a3)(v35);
  }
}

uint64_t sub_1003E8454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v75 = sub_1000BC4D4(&qword_10169F340, &qword_1013A07F8);
  v5 = *(v75 - 8);
  __chkstk_darwin(v75);
  v7 = &v60 - v6;
  v8 = sub_1000BC4D4(&qword_10169F348, &qword_1013A0800);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v63 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v64 = v13;
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v60 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v61 = v18;
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C418);
  v69 = a1;
  sub_100032504(a1, v20, type metadata accessor for OwnedBeaconGroup);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v67 = a3;
  v70 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v76[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_10040A66C(v20, type metadata accessor for OwnedBeaconGroup);
    v30 = sub_1000136BC(v27, v29, v76);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Sending unpair command to all members of group %{private,mask.hash}s", v25, 0x16u);
    sub_100007BAC(v26);
  }

  else
  {

    sub_10040A66C(v20, type metadata accessor for OwnedBeaconGroup);
  }

  sub_100519FB0();
  v32 = v31;
  v33 = v68;

  v34 = sub_1003FE438(v32, v33);

  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_8;
    }

LABEL_16:

    v43 = _swiftEmptyArrayStorage;
LABEL_17:
    v44 = v69;
    sub_100A85ED4(v69, v70);
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v73 = (v46 + 16);
    v76[0] = v43;
    sub_1000BC4D4(&qword_10169F388, &qword_1013A0820);
    sub_1000041A4(&qword_10169F390, &qword_10169F388, &qword_1013A0820, &protocol conformance descriptor for [A]);
    v75 = sub_1000041A4(&qword_10169F398, &qword_10169F3A0, &qword_1013A0828, &protocol conformance descriptor for AnyPublisher<A, B>);
    v47 = Sequence<>.merged()();
    v74 = v47;

    v76[0] = v47;
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v62;
    sub_100032504(v44, v62, type metadata accessor for OwnedBeaconGroup);
    v50 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v51 = (v61 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = v45;
    v53 = v67;
    v52[4] = v66;
    v52[5] = v53;
    sub_10040A014(v49, v52 + v50, type metadata accessor for OwnedBeaconGroup);
    *(v52 + v51) = v46;
    v54 = v65;
    sub_1000D2A70(v70, v65, &unk_1016A9A20, &qword_10138B280);
    v55 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v56 = (v64 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_1000D2AD8(v54, v57 + v55, &unk_1016A9A20, &qword_10138B280);
    *(v57 + v56) = v45;
    swift_retain_n();

    sub_1000BC4D4(&qword_10169F3A0, &qword_1013A0828);
    v58 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_10000B3A8(v70, &unk_1016A9A20, &qword_10138B280);
    v59 = v73;
    swift_beginAccess();
    *v59 = v58;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_16;
  }

LABEL_8:
  v76[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = (v5 + 8);
    v39 = (v73 + 1);
    v72 = v34 & 0xC000000000000001;
    v73 = v34;
    v71 = v35;
    do
    {
      if (v72)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v34 + 8 * v37 + 32);
      }

      ++v37;
      v76[3] = v40;
      sub_1000BC4D4(&qword_10169F350, &qword_1013A0808);
      sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
      sub_1000041A4(&qword_10169F360, &qword_10169F350, &qword_1013A0808, &protocol conformance descriptor for Future<A, B>);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_10169F368, &qword_1013A0818);
      sub_1000041A4(&qword_10169F370, &qword_10169F340, &qword_1013A07F8, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_10169F378, &qword_10169F368, &qword_1013A0818, &protocol conformance descriptor for Just<A>);
      v41 = v75;
      Publisher.catch<A>(_:)();
      (*v38)(v7, v41);
      sub_1000041A4(&qword_10169F380, &qword_10169F348, &qword_1013A0800, &protocol conformance descriptor for Publishers.Catch<A, B>);
      v42 = v74;
      Publisher.eraseToAnyPublisher()();

      (*v39)(v10, v42);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 = v73;
    }

    while (v71 != v37);

    v43 = v76[0];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003E8F50(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v2);
  *(&v5 - v3) = *a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  return Just.init(_:)();
}

uint64_t sub_1003E9004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    if (*(a3 + 16))
    {
      a4(0);
    }

    else
    {
      type metadata accessor for Transaction();
      sub_100032504(a6, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
      v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      sub_10040A014(v15, v20 + v18, type metadata accessor for OwnedBeaconGroup);
      *(v20 + v19) = v17;
      v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v21 = a4;
      v21[1] = a5;

      static Transaction.asyncTask(name:block:)();

      swift_beginAccess();
      *(a7 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1003E9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003E93F0, 0, 0);
}

uint64_t sub_1003E93F0(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[19];
  v4 = v1[14];
  sub_100519FB0();
  v6 = v5;
  v7 = v5 + 56;
  v8 = -1;
  v9 = -1 << *(v5 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v5 + 56);
  v11 = (63 - v9) >> 6;
  v49 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v47 = (v4 + 8);
  v48 = (v4 + 104);
  v44 = (v3 + 56);
  v52 = v2;
  v43 = v3;
  v45 = (v3 + 48);
  v46 = (v2 + 8);

  v53 = v6;

  v16 = 0;
  v54 = _swiftEmptyArrayStorage;
  v50 = v11;
  v51 = v6 + 56;
  while (1)
  {
    v17 = v16;
    v1[25] = v54;
    if (!v10)
    {
      break;
    }

LABEL_8:
    (*(v52 + 16))(v1[24], *(v53 + 48) + *(v52 + 72) * (__clz(__rbit64(v10)) | (v16 << 6)), v1[22]);
    v55 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v18 = v1[15];
    v19 = v1[16];
    v20 = v1[13];
    v21 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = v55;
    v56 = v21;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v21, "ownedBeaconRecord(for uuid: %@)", 31, 2, v22);

    static SystemInfo.lockState.getter();
    (*v48)(v18, v49, v20);
    sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v47;
    (*v47)(v18, v20);
    v27(v19, v20);
    v28 = v1[17];
    if (v23)
    {
      v29 = v1[18];
      v30 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v56, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      (*v44)(v28, 1, 1, v29);
    }

    else
    {
      v31 = v1[24];
      v32 = sub_100025044();
      *(swift_task_alloc() + 16) = v31;
      sub_1012BBBD0(sub_10040B9D8, v32, v28);
    }

    v11 = v50;
    v7 = v51;
    v10 &= v10 - 1;
    v33 = v1[17];
    v34 = v1[18];
    (*v46)(v1[24], v1[22]);
    if ((*v45)(v33, 1, v34) == 1)
    {
      v12 = sub_10000B3A8(v1[17], &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v35 = v1[20];
      v36 = v1[21];
      sub_10040A014(v1[17], v36, type metadata accessor for OwnedBeaconRecord);
      sub_10040A014(v36, v35, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100A5C050(0, v54[2] + 1, 1, v54);
      }

      v38 = v54[2];
      v37 = v54[3];
      if (v38 >= v37 >> 1)
      {
        v54 = sub_100A5C050((v37 > 1), v38 + 1, 1, v54);
      }

      v39 = v1[20];
      v54[2] = v38 + 1;
      v12 = sub_10040A014(v39, v54 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, type metadata accessor for OwnedBeaconRecord);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return Sequence.asyncFilter(_:)(v12, v13, v14, v15);
    }

    if (v16 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v16);
    ++v17;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v1[2] = v54;
  v40 = swift_task_alloc();
  v1[26] = v40;
  v41 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v15 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0, &protocol conformance descriptor for [A]);
  *v40 = v1;
  v40[1] = sub_1003E99EC;
  v12 = &unk_1013A0840;
  v13 = 0;
  v14 = v41;

  return Sequence.asyncFilter(_:)(v12, v13, v14, v15);
}

uint64_t sub_1003E99EC(uint64_t a1)
{
  *(*v2 + 216) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003E9B2C, 0, 0);
  }
}

uint64_t sub_1003E9B2C()
{
  if (*(v0[27] + 16))
  {
    v1 = swift_task_alloc();
    v0[28] = v1;
    *v1 = v0;
    v1[1] = sub_1003E9CE0;

    return daemon.getter();
  }

  else
  {
    v2 = v0[11];

    type metadata accessor for UnpairError(0);
    v0[8] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError, &unk_10138A5C4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = v0[7];
    v2(v3);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003E9CE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 232) = a1;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003FD7F0(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1003E9EBC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003E9EBC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1003EA01C;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_1003EA204;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003EA01C()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendUnpairCommand: missing OwnerCommandService to send unpair!", v4, 2u);
  }

  v5 = v0[11];

  type metadata accessor for UnpairError(0);
  v0[4] = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError, &unk_10138A5C4);
  _BridgedStoredNSError.init(_:userInfo:)();
  v6 = v0[3];
  v5(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003EA204()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1003EA2F4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_1013A0858, v3, &type metadata for () + 1);
}

uint64_t sub_1003EA2F4()
{

  return _swift_task_switch(sub_1003EA428, 0, 0);
}

uint64_t sub_1003EA428()
{
  v1 = v0[11];
  type metadata accessor for UnpairError(0);
  v0[6] = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError, &unk_10138A5C4);
  _BridgedStoredNSError.init(_:userInfo:)();
  v2 = v0[5];
  v1(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003EA568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003EA5F8;

  return sub_100D5F8B4();
}

uint64_t sub_1003EA5F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1003EA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v4[16] = *(v6 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003EA87C, 0, 0);
}

uint64_t sub_1003EA87C()
{
  v62 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v52 = *(v0 + 176);
    v4 = *(v0 + 120);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 16);
    v59 = (v4 + 8);
    v51 = v4;
    v49 = **(v0 + 72);
    v50 = *(*(v0 + 160) + 20);
    v48 = *(v3 + 72);
    v60 = (v4 + 16);
    do
    {
      v58 = v2;
      v11 = *(v0 + 176);
      v12 = *(v0 + 152);
      v13 = *(v0 + 112);
      v57 = v5;
      sub_100032504(v5, v11, type metadata accessor for OwnedBeaconRecord);
      v14 = *v6;
      (*v6)(v12, v52 + v50, v13);
      sub_10040A66C(v11, type metadata accessor for OwnedBeaconRecord);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 112);
      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C418);
      v55 = v14;
      v14(v16, v15, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 144);
      v23 = *(v0 + 112);
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v61 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v56 = *v59;
        (*v59)(v22, v23);
        v29 = sub_1000136BC(v26, v28, &v61);

        *(v24 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "sendUnpairCommand: Sending unpair to managed peripheral %{private,mask.hash}s", v24, 0x16u);
        sub_100007BAC(v25);
      }

      else
      {

        v56 = *v59;
        (*v59)(v22, v23);
      }

      v30 = *(v0 + 152);
      v31 = *(v0 + 136);
      v32 = *(v0 + 104);
      v33 = *(v0 + 112);
      v34 = *(v0 + 88);
      v53 = v32;
      v54 = *(v0 + 96);
      v35 = type metadata accessor for TaskPriority();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v32, 1, 1, v35);
      v55(v31, v30, v33);
      v37 = (*(v51 + 80) + 40) & ~*(v51 + 80);
      v38 = swift_allocObject();
      v38[2] = 0;
      v39 = v38 + 2;
      v38[3] = 0;
      v38[4] = v34;
      (*(v51 + 32))(v38 + v37, v31, v33);
      sub_1000D2A70(v53, v54, &qword_101698C00, &qword_10138B570);
      v40 = (*(v36 + 48))(v54, 1, v35);

      v41 = *(v0 + 96);
      if (v40 == 1)
      {
        sub_10000B3A8(*(v0 + 96), &qword_101698C00, &qword_10138B570);
        if (*v39)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v36 + 8))(v41, v35);
        if (*v39)
        {
LABEL_14:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v42 = dispatch thunk of Actor.unownedExecutor.getter();
          v43 = v44;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v42 = 0;
      v43 = 0;
LABEL_15:
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_1013A0868;
      *(v45 + 24) = v38;

      if (v43 | v42)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v42;
        *(v0 + 40) = v43;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 152);
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v49;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v56(v8, v9);
      v5 = v57 + v48;
      v2 = v58 - 1;
      v6 = v60;
    }

    while (v58 != 1);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1003EAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003EAF74, 0, 0);
}

uint64_t sub_1003EAF74()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying RX Unpair...", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1003EB0CC;
  v6 = v0[3];

  return sub_10121C86C(v6, 0);
}

uint64_t sub_1003EB0CC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1003EB3E0;
  }

  else
  {
    v2 = sub_1003EB1E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EB1E0()
{
  v16 = v0;
  (*(v0[5] + 16))(v0[7], v0[3], v0[4]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v4, v5);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "RX Unpaired %{private,mask.hash}s completed successfully", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EB3E0()
{
  v18 = v0;
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v15 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "RX Unpaired %{private,mask.hash}s with error %{public}@", v7, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v16);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EB664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v70 = a2;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v4 - 8);
  v72 = &v64 - v5;
  v71 = type metadata accessor for OwnedBeaconRecord(0);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v64 - v13;
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v17);
  v19 = (&v64 - v18);
  sub_1000D2A70(a1, &v64 - v18, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C410;
    if (os_log_type_enabled(qword_10177C410, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74[0] = v24;
      *v23 = 136315138;
      v74[3] = v20;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000136BC(v25, v26, v74);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v21, "Unpair failed. %s", v23, 0xCu);
      sub_100007BAC(v24);
    }
  }

  else
  {
    v67 = v7;
    (*(v9 + 32))(v16, v19, v8);
    v29 = static os_log_type_t.default.getter();
    v30 = v16;
    v31 = v9;
    v32 = v8;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C410;
    v34 = *(v9 + 16);
    v34(v14, v30, v32);
    if (os_log_type_enabled(v33, v29))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v65 = v34;
      v66 = v9;
      v37 = v32;
      v38 = v36;
      v74[0] = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v9 + 16;
      v40 = v29;
      v41 = v30;
      v42 = v39;
      v44 = v43;
      v45 = *(v66 + 8);
      v45(v14, v37);
      v46 = v42;
      v30 = v41;
      v47 = sub_1000136BC(v46, v44, v74);

      *(v35 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v33, v40, "Unpair succeeded for beacon %{private,mask.hash}s", v35, 0x16u);
      sub_100007BAC(v38);
      v32 = v37;
      v34 = v65;
      v31 = v66;
    }

    else
    {
      v45 = *(v9 + 8);
      v45(v14, v32);
    }

    v48 = v72;
    v49 = v73;
    v50 = v71;
    sub_1000D2A70(v70, v72, &unk_1016A9A20, &qword_10138B280);
    if ((*(v69 + 48))(v48, 1, v50) == 1)
    {
      v45(v30, v32);
      sub_10000B3A8(v48, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v51 = v67;
      sub_10040A014(v48, v67, type metadata accessor for OwnedBeaconRecord);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_10040A66C(v51, type metadata accessor for OwnedBeaconRecord);
        return (v45)(v30, v32);
      }

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_10177C418);
      v34(v49, v30, v32);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v66 = v31;
        v57 = v32;
        v58 = v56;
        v74[0] = v56;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v45(v49, v57);
        v62 = sub_1000136BC(v59, v61, v74);

        *(v55 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unpair command succeeded for primary beacon %{private,mask.hash}s", v55, 0x16u);
        sub_100007BAC(v58);

        sub_10040A66C(v67, type metadata accessor for OwnedBeaconRecord);
        v45(v30, v57);
      }

      else
      {

        v45(v49, v32);
        sub_10040A66C(v67, type metadata accessor for OwnedBeaconRecord);
        v45(v30, v32);
      }
    }

    v63 = v68;
    result = swift_beginAccess();
    *(v63 + 16) = 1;
  }

  return result;
}

double sub_1003EBF10@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;

  return result;
}

uint64_t sub_1003EBF20(uint64_t *a1)
{
  swift_errorRetain();
  sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
  return Just.init(_:)();
}

uint64_t sub_1003EBF80(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if (*(a1 + 8) == 1)
  {
    v15 = *a1;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    sub_100032504(a2, v12, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1001DB7B8(v15, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a3;
      v20 = v19;
      v42[0] = swift_slowAlloc();
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
      v24 = sub_1000136BC(v21, v23, v42);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2082;
      v41 = v15;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000136BC(v25, v26, v42);

      *(v20 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to remove related records for %{private,mask.hash}s. Error %{public}s)", v20, 0x20u);
      swift_arrayDestroy();

      a3 = v40;
    }

    else
    {

      sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    sub_100032504(a2, v14, type metadata accessor for OwnedBeaconGroup);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = a3;
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
      v37 = sub_1000136BC(v34, v36, v42);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully removed related records for %{private,mask.hash}s", v31, 0x16u);
      sub_100007BAC(v33);
      a3 = v32;
    }

    else
    {

      sub_10040A66C(v14, type metadata accessor for OwnedBeaconGroup);
    }

    v15 = 0;
  }

  a3(v15);
  swift_beginAccess();
  *(a5 + 16) = 0;
}

uint64_t sub_1003EC4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1008914EC(a4);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v8 + 32))(v11 + v10, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  Future.addSuccess(block:)();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  Future.addFailure(block:)();
}

uint64_t sub_1003EC69C(_BYTE *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v7);
  v9 = (&v14 - v8);
  if (*a1 == 1)
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 16))(v9, a4, v10);
  }

  else
  {
    sub_1003FD838();
    v11 = swift_allocError();
    *v12 = 0;
    *v9 = v11;
  }

  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_10000B3A8(v9, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_1003EC7D8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  *(&v8 - v5) = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v6);
  return sub_10000B3A8(v6, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_1003EC8A4(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v16 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v46 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Failed to remove pairing lock due to %@", 39, 2, v18);

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    v43 = a6;
    v44 = a3;
    v45 = a2;
    LODWORD(v42) = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    v25 = *(v12 + 20);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v23, "Successfully removed pairing lock for %@.", 41, 2, v24);

    sub_1008914EC(a4 + v25);
    sub_100032504(a4, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v42 = a4;
    v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v30 = v29 + v14;
    v31 = (v29 + v14) & 0xFFFFFFFFFFFFFFF8;
    v32 = v31 + 8;
    v41 = v31 + 8;
    v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v40 = type metadata accessor for OwnedBeaconRecord;
    sub_10040A014(v15, v34 + v29, type metadata accessor for OwnedBeaconRecord);
    v43 &= 1u;
    *(v34 + v30) = v43;
    *(v34 + v32) = a5;
    v35 = (v34 + v33);
    v36 = v44;
    *v35 = v45;
    v35[1] = v36;

    Future.addSuccess(block:)();

    sub_100032504(v42, v15, type metadata accessor for OwnedBeaconRecord);
    v37 = swift_allocObject();
    sub_10040A014(v15, v37 + v29, v40);
    *(v37 + v30) = v43;
    *(v37 + v41) = 0;
    v38 = (v37 + v33);
    *v38 = v45;
    v38[1] = v36;
    *(v37 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = a5;

    Future.addFailure(block:)();
  }
}

uint64_t sub_1003ECD14(char *a1, uint64_t (**a2)(uint64_t a1), char a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v8 = *a1;
  v9 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138B360;
  type metadata accessor for OwnedBeaconRecord(0);
  v22 = a2;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for Bool;
  *(v11 + 104) = &protocol witness table for Bool;
  *(v11 + 72) = v8;
  *(v11 + 136) = &type metadata for Bool;
  *(v11 + 144) = &protocol witness table for Bool;
  *(v11 + 112) = a3 & 1;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Unpaired device %@ with success [%d] force [%d]", 47, 2, v11);

  if (v8 & 1) != 0 || (a3)
  {
    v18 = static os_log_type_t.default.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v20 = UUID.uuidString.getter();
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v15;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v10, "Removing beacon record %@.", 26, 2, v19);

    return sub_1003D9064(v22, 1, a5, a6);
  }

  else
  {
    sub_1003FD838();
    swift_allocError();
    *v16 = 7;
    (a5)();
  }
}

uint64_t sub_1003ECF68(uint64_t a1, uint64_t (**a2)(uint64_t a1), char a3, uint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v23 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138B360;
  type metadata accessor for OwnedBeaconRecord(0);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v21 = a2;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for Bool;
  *(v9 + 104) = &protocol witness table for Bool;
  *(v9 + 72) = a3 & 1;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v14 = String.init<A>(describing:)();
  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = v13;
  *(v9 + 112) = v14;
  *(v9 + 120) = v15;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v8, "Unpair %@ failed! Force [%d]. Error %@", 38, 2, v9);

  if ((a3 & 1) == 0)
  {
    return a5(a1);
  }

  v16 = static os_log_type_t.default.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = UUID.uuidString.getter();
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v13;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v8, "Force removing beacon record %@.", 32, 2, v17);

  return sub_1003D9064(v21, 1, a5, a6);
}

uint64_t sub_1003ED190(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v17[1] = a2;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = a4;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;

  sub_1003D9064(a3, 1, sub_100405BB0, v15);
}

uint64_t sub_1003ED37C(uint64_t a1, uint64_t a2)
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C3B0;
  os_signpost(_:dso:log:name:signpostID:)();
  if (a1)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v3, "#Durian: Remove beacon failed with error [%d].", v11);

    Future.finish(error:)();
  }

  else
  {
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v3, "#Durian: Remove beacon was successful.", 38, 2, _swiftEmptyArrayStorage);
    return Future.finish(result:)();
  }
}

uint64_t sub_1003ED538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v57 = a8;
  v56 = a7;
  v55 = a6;
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  if (a1)
  {
    swift_errorRetain();
    v21 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "#Durian: Remove pairing lock failed with error - %@", 51, 2, v23);

    Future.finish(error:)();
  }

  else
  {
    v47 = v16;
    v48 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v20;
    v50 = v15;
    v53 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = v19;
    v51 = a2;
    v28 = static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v52 = a9;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C3B0, "#Durian: Remove pairing lock completed with success", 51, 2, _swiftEmptyArrayStorage);
    static os_signpost_type_t.end.getter();
    v29 = a3;
    v30 = os_signpost(_:dso:log:name:signpostID:)();
    if (a4)
    {
      v46 = a10;
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v31 = v55;
      v45[1] = sub_1008914EC(v55 + *(v14 + 20));
      v45[0] = swift_allocObject();
      swift_weakInit();
      v33 = v48;
      v32 = v49;
      (*(v49 + 16))(v48, v29, v54);
      sub_100032504(v31, v53, type metadata accessor for OwnedBeaconRecord);
      v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v35 = v34 + v18;
      v36 = (v34 + v18) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 31) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = (*(v50 + 80) + v38 + 8) & ~*(v50 + 80);
      v40 = (v47 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      (*(v32 + 32))(v41 + v34, v33, v54);
      *(v41 + v35) = v56 & 1;
      v42 = v41 + v36;
      v44 = v51;
      v43 = v52;
      *(v42 + 8) = v57;
      *(v42 + 16) = v43;
      *(v41 + v37) = v44;
      *(v41 + v38) = v45[0];
      sub_10040A014(v53, v41 + v39, type metadata accessor for OwnedBeaconRecord);
      *(v41 + v40) = v46;

      Future.addCompletion(block:)();
    }

    else
    {
      return v57(v30);
    }
  }
}

uint64_t sub_1003EDA2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C3B0;
  result = os_signpost(_:dso:log:name:signpostID:)();
  if (a2)
  {
    swift_errorRetain();
    v15 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "#Durian: Unpair failed. Error - %@", 34, 2, v16);

    if (a4)
    {
      v20 = static os_log_type_t.error.getter();
      v21 = os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v13, "#Durian: Proceeding to remove beacon record when unpair errored because force == 1", 82, 2, _swiftEmptyArrayStorage);
      a5(v21);
    }

    else
    {
      Future.finish(error:)();
    }
  }

  else if (v12 != 2)
  {
    v22 = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    *(v23 + 56) = &type metadata for Bool;
    *(v23 + 64) = &protocol witness table for Bool;
    *(v23 + 32) = v12 & 1;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v13, "#Durian: Unpaired device with success [%d].", v25);

    if (v12 & 1) != 0 || (a4)
    {
      a5(v24);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_100A5188C(a9);
      }
    }

    else
    {
      return Future.finish(result:)();
    }
  }

  return result;
}

uint64_t sub_1003EDD10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_100400A38(a4, v5, a3, sub_100407A2C, v10);
}

uint64_t sub_1003EDDAC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_1003EDE24(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v2 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "unshare failed: %@", 18, 2, v3);
  }

  return result;
}

uint64_t sub_1003EDF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = static os_log_type_t.default.getter();
  if (a1)
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Unpair for beacon, %@, unsuccessful", 35, 2, v14);

    return v30(a1);
  }

  else
  {
    v28 = v7;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v19, "Successfully unpaired beacon %@.", 32, 2, v20);

    v30(0);
    sub_100A5188C(a2);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    sub_100032504(a2, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_10040A014(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for OwnedBeaconRecord);
    sub_10025EDD4(0, 0, v11, &unk_1013A07E0, v26);
  }
}

uint64_t sub_1003EE354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for OwnedBeaconRecord(0);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_1003EE480;

  return daemon.getter();
}

uint64_t sub_1003EE480(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_1003EE65C;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_1003EE65C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1003EEC28;
  }

  else
  {

    v4 = sub_1003EE778;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003EE778(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  UUID.init()();
  v4 = *(v3 + 20);
  v5 = swift_task_alloc();
  v1[14] = v5;
  *v5 = v1;
  v5[1] = sub_1003EE82C;
  v6 = v1[8];

  return sub_10033205C(v6, v2 + v4);
}

uint64_t sub_1003EE82C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003EEF24;
  }

  else
  {
    v5 = sub_1003EE99C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003EE99C()
{
  v17 = v0;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10040A66C(v6, type metadata accessor for OwnedBeaconRecord);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notify when found disabled for beacon %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[5];

    sub_10040A66C(v13, type metadata accessor for OwnedBeaconRecord);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EEC28()
{
  v19 = v0;

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10040A66C(v6, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[4];

    sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003EEF24()
{
  v19 = v0;

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10040A66C(v6, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[4];

    sub_10040A66C(v15, type metadata accessor for OwnedBeaconRecord);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003EF220(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1003EF2B4;

  return daemon.getter();
}

uint64_t sub_1003EF2B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003FD7F0(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1003EF490;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003EF490(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1003EF7C0, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 88) = v5;
    *v5 = v4;
    v5[1] = sub_1003EF64C;
    v6 = *(v3 + 48);

    return sub_1001A6108(v6);
  }
}

uint64_t sub_1003EF64C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003EF948;
  }

  else
  {
    v2 = sub_1003EF760;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EF760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EF7C0(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  type metadata accessor for OwnedBeaconRecord(0);
  type metadata accessor for UUID();
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Unpair for beacon, %@, unsuccessful, no BeaconSharingService found.", 67, 2, v4);

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1003EF948(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  type metadata accessor for OwnedBeaconRecord(0);
  type metadata accessor for UUID();
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_getErrorValue();
  v9 = Error.localizedDescription.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Unpair for beacon, %@, unsuccessful, can't forceStopSharing %@", 62, 2, v4);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1003EFB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v24 = v11;
    v25 = a2;
    v23 = a4;
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v26 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "declineShare failed: %@", 23, 2, v15);

    a4 = v23;
    v11 = v24;
  }

  sub_100032504(a3, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  sub_10040A014(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SharedBeaconRecord);
  v21 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a4;
  v21[1] = a5;
  swift_errorRetain();

  sub_100DDDDF4(a3, sub_100406D84, v20);
}

uint64_t sub_1003EFDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v38 - v14;
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v16 - 8);
  v18 = v38 - v17;
  if (a2)
  {
    v38[0] = a4;
    v38[1] = a5;
    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177ACC8);
    sub_100032504(a3, v13, type metadata accessor for SharedBeaconRecord);
    swift_errorRetain();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_10040A66C(v13, type metadata accessor for SharedBeaconRecord);
      v28 = sub_1000136BC(v25, v27, &v40);
      v29 = v39;

      *(v22 + 14) = v28;
      *(v22 + 22) = 2112;
      if (v29)
      {
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v22 + 24) = v30;
      *v23 = v31;
      *(v22 + 32) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 34) = v37;
      v23[1] = v37;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unpair for beacon %{private,mask.hash}s, success: %@, error: %{public}@.", v22, 0x2Au);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();

      sub_100007BAC(v24);
    }

    else
    {

      sub_10040A66C(v13, type metadata accessor for SharedBeaconRecord);
    }

    return (v38[0])(a2);
  }

  else
  {
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
    sub_100032504(a3, v15, type metadata accessor for SharedBeaconRecord);
    v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_10040A014(v15, v34 + v33, type metadata accessor for SharedBeaconRecord);
    v35 = (v34 + ((v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = a4;
    v35[1] = a5;

    sub_10025EDD4(0, 0, v18, &unk_1013A07F0, v34);
  }
}

uint64_t sub_1003F0290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for SharedBeaconRecord(0);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1003F03C0;

  return daemon.getter();
}

uint64_t sub_1003F03C0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v6 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  *v3 = v9;
  v3[1] = sub_1003F059C;

  return ActorServiceDaemon.getService<A>()(v4, found, v6, v7);
}

uint64_t sub_1003F059C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1003F0B80;
  }

  else
  {

    v4 = sub_1003F06B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003F06B8(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[2];
  UUID.init()();
  v4 = *(v2 + 20);
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v1;
  v5[1] = sub_1003F0770;
  v6 = v1[10];

  return sub_10033205C(v6, v3 + v4);
}

uint64_t sub_1003F0770()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003F0E90;
  }

  else
  {
    v5 = sub_1003F08E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003F08E0()
{
  v17 = v0;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10040A66C(v6, type metadata accessor for SharedBeaconRecord);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notify when found disabled for beacon %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = *(v0 + 56);

    sub_10040A66C(v13, type metadata accessor for SharedBeaconRecord);
  }

  (*(v0 + 24))(0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003F0B80()
{
  v19 = v0;

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10040A66C(v6, type metadata accessor for SharedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = *(v0 + 48);

    sub_10040A66C(v15, type metadata accessor for SharedBeaconRecord);
  }

  (*(v0 + 24))(0);

  v16 = *(v0 + 8);

  return v16();
}