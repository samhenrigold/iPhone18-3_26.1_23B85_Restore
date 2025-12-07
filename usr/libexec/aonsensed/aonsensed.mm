uint64_t sub_100002010(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALWiFiNotification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_beginAccess();
  v23 = *(v7 + 16);
  v23(v9, v10, v6);
  (*(*a1 + 312))(v9);
  v22 = *(v7 + 8);
  v22(v9, v6);
  corelog.getter(v5);

  v24 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v3;
    v15 = v14;
    v26 = v14;
    *v13 = 136315138;
    swift_beginAccess();
    v23(v9, v10, v6);
    v16 = ALWiFiNotification.description.getter();
    v18 = v17;
    v22(v9, v6);
    v19 = sub_10000234C(v16, v18, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "#WiFi,_onData,notif,%s", v13, 0xCu);
    sub_100002580(v15);

    return (*(v25 + 8))(v24, v21);
  }

  else
  {

    return (*(v25 + 8))(v24, v3);
  }
}

unint64_t sub_10000234C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002418(v11, 0, 0, 1, a1, a2);
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
    sub_100002524(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002580(v11);
  return v7;
}

unint64_t sub_100002418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000379E0(a5, a6);
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

uint64_t sub_100002524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002580(void *a1)
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

uint64_t sub_1000025CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002678(void *a1, int a2)
{
  LODWORD(v193) = a2;
  v186 = type metadata accessor for ALWiFiNotification();
  v171 = *(v186 - 8);
  __chkstk_darwin(v186);
  v170 = &v145[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v183 = *(v4 - 8);
  __chkstk_darwin(v4);
  v181 = &v145[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v182 = type metadata accessor for DispatchQoS();
  v180 = *(v182 - 8);
  __chkstk_darwin(v182);
  v179 = &v145[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v7 - 8);
  v178 = &v145[-v8];
  v9 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  __chkstk_darwin(v9 - 8);
  v177 = &v145[-v10];
  v163 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v172 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v145[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v12 - 8);
  v161 = &v145[-v13];
  v174 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v184 = *(v174 - 8);
  v14 = __chkstk_darwin(v174);
  v173 = &v145[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v191 = &v145[-v16];
  v17 = type metadata accessor for Logger();
  v194 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v145[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v185 = &v145[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v145[-v24];
  v26 = __chkstk_darwin(v23);
  v175 = &v145[-v27];
  __chkstk_darwin(v26);
  v29 = &v145[-v28];
  v30 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v30 - 8);
  v32 = &v145[-v31];
  v33 = type metadata accessor for ALWiFiScanResult();
  v188 = *(v33 - 8);
  v189 = v33;
  __chkstk_darwin(v33);
  v35 = &v145[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000D9B8(a1, a1[3]);
  if (dispatch thunk of Collection.count.getter() < 1)
  {
    corelog.getter(v20);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "#WiFi, empty scan cache batch", v45, 2u);
    }

    return (*(v194 + 8))(v20, v17);
  }

  v36 = machContTimeSec()();
  ALWiFiScanResult.init()();
  ALTimeStamp.init(machContinuousTimeSec:)();
  v37 = type metadata accessor for ALTimeStamp();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v176 = 1;
  v166 = v37;
  v165 = v39;
  v164 = v38 + 56;
  (v39)(v32, 0, 1);
  v192 = v35;
  v40 = ALWiFiScanResult._scanTimestamp.setter();
  v41 = v193;
  v167 = v32;
  if (v193)
  {
    v169 = 0;
    v42 = v190;
  }

  else
  {
    v42 = v190;
    v169 = (*(*v190 + 200))(v40);
    v176 = v47;
  }

  corelog.getter(v29);
  sub_10000D9FC(a1, &aBlock);

  v48 = Logger.logObject.getter();
  v49 = v42;
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v48, v50);
  v187 = v17;
  v168 = v4;
  if (v51)
  {
    v52 = swift_slowAlloc();
    *v52 = 67240960;
    *(v52 + 4) = v41 & 1;
    *(v52 + 8) = 2050;
    *(v52 + 10) = v36;
    *(v52 + 18) = 2050;
    v53 = (*(*v49 + 224))();
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = v53;
    }

    *(v52 + 20) = v55;

    *(v52 + 28) = 2050;
    sub_10000D9B8(&aBlock, AssociatedTypeWitness);
    v56 = dispatch thunk of Collection.count.getter();
    sub_100002580(&aBlock);
    *(v52 + 30) = v56;
    _os_log_impl(&_mh_execute_header, v48, v50, "#WiFi,bg,%{BOOL,public}d,now,%{public}f,last,%{public}llu,size,%{public}ld", v52, 0x26u);
    v17 = v187;
  }

  else
  {
    sub_100002580(&aBlock);
  }

  v57 = v194 + 8;
  v195 = *(v194 + 8);
  v195(v29, v17);
  v58 = sub_10000D9B8(a1, a1[3]);
  __chkstk_darwin(v58);
  (*(v60 + 16))(&v145[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000DA60(&aBlock);
  dispatch thunk of Sequence.makeIterator()();
  sub_10000DAC4(&aBlock, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v62 = v196;
  v194 = v57;
  v63 = v192;
  if (!v196)
  {
LABEL_42:
    sub_100002580(&aBlock);
    v104 = swift_allocBox();
    v106 = v105;
    ALWiFiNotification.init()();
    v107 = type metadata accessor for ALWiFiNotification.NotiType();
    v108 = *(v107 - 8);
    v109 = &enum case for ALWiFiNotification.NotiType.scanCache(_:);
    if ((v193 & 1) == 0)
    {
      v109 = &enum case for ALWiFiNotification.NotiType.scan(_:);
    }

    v110 = v177;
    (*(*(v107 - 8) + 104))(v177, *v109, v107);
    (*(v108 + 56))(v110, 0, 1, v107);
    ALWiFiNotification._type.setter();
    v111 = v167;
    static ALTimeStamp.now()();
    v165(v111, 0, 1, v166);
    ALWiFiNotification._timestamp.setter();
    v113 = v188;
    v112 = v189;
    v114 = v178;
    (*(v188 + 16))(v178, v63, v189);
    (*(v113 + 56))(v114, 0, 1, v112);
    ALWiFiNotification._scanResult.setter();
    ALWiFiNotification._associatedMac.setter();
    ALWiFiNotification._simulated.setter();
    ALWiFiNotification._available.setter();
    v115 = [objc_opt_self() mainBundle];
    v116 = [v115 bundleIdentifier];

    v191 = v106;
    if (v116)
    {
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;
    }

    else
    {
      v119 = 0xE100000000000000;
      v117 = 95;
    }

    v120 = v190;
    aBlock = v117;
    v198 = v119;

    v121._countAndFlagsBits = 0x6F6E2E696669772ELL;
    v121._object = 0xEA00000000006974;
    String.append(_:)(v121);

    String.utf8CString.getter();

    v122 = os_transaction_create();

    v124 = (*(*v120 + 128))(v123);
    v125 = swift_allocObject();
    v125[2] = v122;
    v125[3] = v120;
    v125[4] = v104;
    AssociatedConformanceWitness = sub_10000E288;
    v202 = v125;
    aBlock = _NSConcreteStackBlock;
    v198 = 1107296256;
    v199 = sub_100003EE4;
    AssociatedTypeWitness = &unk_100408050;
    v126 = _Block_copy(&aBlock);

    v193 = v122;
    swift_unknownObjectRetain();

    v127 = v179;
    static DispatchQoS.unspecified.getter();
    v196 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
    v128 = v181;
    v129 = v168;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v126);

    (*(v183 + 8))(v128, v129);
    (*(v180 + 8))(v127, v182);

    v130 = v185;
    corelog.getter(v185);

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v196 = v134;
      *v133 = 136315138;
      v135 = v191;
      swift_beginAccess();
      v136 = v171;
      v137 = v170;
      v138 = v186;
      (*(v171 + 16))(v170, v135, v186);
      v139 = ALWiFiNotification.description.getter();
      v141 = v140;
      (*(v136 + 8))(v137, v138);
      v142 = sub_10000234C(v139, v141, &v196);

      *(v133 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v131, v132, "#WiFi,processResultArray,notif,%s", v133, 0xCu);
      sub_100002580(v134);

      swift_unknownObjectRelease();

      v195(v185, v187);
    }

    else
    {
      swift_unknownObjectRelease();

      v195(v130, v187);
    }

    (*(v188 + 8))(v192, v189);
  }

  v160 = (v172 + 13);
  v159 = (v172 + 4);
  v172 += 7;
  v154 = (v184 + 16);
  v153 = v184 + 32;
  v158 = enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:);
  v152 = v184 + 8;
  v157 = enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:);
  v156 = enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:);
  v155 = enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:);
  *&v61 = 134350339;
  v150 = v61;
  while (1)
  {
    while (1)
    {
      v65 = [v62 channel];
      if (!v65)
      {
        goto LABEL_17;
      }

      v66 = v65;
      v67 = [v62 BSSID];
      if (v67)
      {
        break;
      }

LABEL_17:
      v64 = corelog.getter(v25);
      __chkstk_darwin(v64);
      v144 = v62;
      v143 = 160;
      Logger._fault(_:function:file:line:)(sub_100334D78, &v145[-32], "processResultArray(_:bg:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);

      v195(v25, v17);
      sub_10000DAC4(&aBlock, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v62 = v196;
      if (!v196)
      {
        goto LABEL_42;
      }
    }

    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    ALWiFiScanSingleAccessPoint.init()();

    v147 = v69;
    sub_10000DB14(v69, v71);
    v149 = v71;

    ALWiFiScanSingleAccessPoint._mac.setter();
    result = [v66 channel];
    if (result < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (result > 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    LOBYTE(v196) = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
    v72 = [v66 band];
    v73 = v156;
    if (v72 != 1)
    {
      v73 = v155;
    }

    if (v72 == 2)
    {
      v73 = v157;
    }

    if (v72 == 3)
    {
      v74 = v158;
    }

    else
    {
      v74 = v73;
    }

    v75 = v162;
    v76 = v163;
    (*v160)(v162, v74, v163);
    v77 = v161;
    (*v159)(v161, v75, v76);
    (*v172)(v77, 0, 1, v76);
    ALWiFiScanSingleAccessPoint._band.setter();
    result = [v62 RSSI];
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_53;
    }

    v78 = v175;
    v79 = v149;
    if (result > 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

    LOBYTE(v196) = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
    [v62 timestamp];
    NsToSec.getter();
    LOBYTE(v196) = 0;
    ALWiFiScanSingleAccessPoint._ageSec.setter();
    corelog.getter(v78);
    v80 = v62;
    v81 = v66;

    v82 = v80;
    v83 = v81;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    v146 = v85;
    v86 = os_log_type_enabled(v84, v85);
    v151 = v83;
    if (v86)
    {
      v87 = v79;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v196 = v89;
      *v88 = v150;
      *(v88 + 4) = [v82 timestamp];

      *(v88 + 12) = 2050;
      *(v88 + 14) = [v82 age];

      *(v88 + 22) = 2081;
      v90 = sub_10000234C(v147, v87, &v196);

      *(v88 + 24) = v90;
      v91 = v151;
      *(v88 + 32) = 1026;
      *(v88 + 34) = [v91 band];

      *(v88 + 38) = 2050;
      *(v88 + 40) = [v91 channel];

      *(v88 + 48) = 2050;
      *(v88 + 50) = [v82 RSSI];

      _os_log_impl(&_mh_execute_header, v84, v146, "#WiFi,scan,ts,%{public}llu,age,%{public}ld,mac,%{private}s,band,%{public}u,chan,%{public}ld,rssi,%{public}ld", v88, 0x3Au);
      sub_100002580(v89);
    }

    else
    {
    }

    v195(v175, v187);
    if ((v193 & 1) != 0 && [v82 wasConnectedDuringSleep])
    {
      v169 = ALWiFiScanSingleAccessPoint._mac.getter();
      v176 = v92;
    }

    (*v154)(v173, v191, v174);
    v93 = ALWiFiScanResult._accessPoints.modify();
    v95 = v94;
    v96 = *v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v95 = v96;
    v148 = v82;
    v98 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = sub_10000DFC4(0, v96[2] + 1, 1, v96);
      *v95 = v96;
    }

    v100 = v96[2];
    v99 = v96[3];
    if (v100 >= v99 >> 1)
    {
      v96 = sub_10000DFC4((v99 > 1), v100 + 1, 1, v96);
      *v95 = v96;
    }

    v96[2] = v100 + 1;
    v101 = v184;
    v102 = v96 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v100;
    v103 = v174;
    (*(v184 + 32))(v102, v173, v174);
    v98(&v196, 0);

    (*(v101 + 8))(v191, v103);
    sub_10000DAC4(&aBlock, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    v62 = v196;
    v17 = v187;
    v63 = v192;
    if (!v196)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_100003E78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003EC0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t *sub_100003EEC()
{
  v1 = *(type metadata accessor for ALWiFiNotification() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = (*(**(v0 + 16) + 216))();
  if (v4)
  {
    (*(*v4 + 184))(v0 + v2);
  }

  result = sub_100004064();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(**result + 184);

    v6(v3);
  }

  return result;
}

uint64_t *sub_100004064()
{
  if (qword_10048BE98 != -1)
  {
    swift_once();
  }

  return &qword_10048BEA0;
}

void sub_1000040B4()
{
  v1 = v0;
  v52 = type metadata accessor for Logger();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = machContTimeSec()();
  if (v5 - *(v1 + 72) >= *(v1 + 80))
  {
    v50 = v2;
    *(v1 + 72) = v5;
    v6 = swift_allocObject();
    v7 = sub_10032AB90(&_swiftEmptyArrayStorage);
    *(v6 + 16) = v7;
    v8 = (v1 + 48);
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v7;
    v51 = v4;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(isa, 0x6D754E7663527442, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v11 = aBlock[0];
    *(v6 + 16) = aBlock[0];
    v12 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v11;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v12, 0x5273704169666957, 0xED00006D754E7663, v13);
    v14 = aBlock[0];
    *(v6 + 16) = aBlock[0];
    v15 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v15, 0xD000000000000015, 0x80000001003B1470, v16);
    *(v6 + 16) = aBlock[0];
    sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
    v17 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v18 = *(v6 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v18;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v17, 0xD000000000000011, 0x80000001003B1490, v19);
    v20 = aBlock[0];
    *(v6 + 16) = aBlock[0];
    v21 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v20;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v21, 0xD000000000000013, 0x80000001003B14B0, v22);
    *(v6 + 16) = aBlock[0];
    v23 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v24 = *(v6 + 16);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v24;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v23, 0xD000000000000012, 0x80000001003B14D0, v25);
    *(v6 + 16) = aBlock[0];
    v26 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    v27 = *(v6 + 16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v27;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v26, 0xD000000000000010, 0x80000001003B14F0, v28);
    v29 = aBlock[0];
    *(v6 + 16) = aBlock[0];
    v30 = Bool._bridgeToObjectiveC()().super.super.isa;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v29;
    *(v6 + 16) = 0x8000000000000000;
    sub_10032A8AC(v30, 0x654432706F417349, 0xEC00000065636976, v31);
    v32 = aBlock[0];
    *(v6 + 16) = aBlock[0];
    v33 = (v1 + 24);
    v34 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v32;
    *(v6 + 16) = 0x8000000000000000;
    v36 = v51;
    sub_10032A8AC(v34, 0x4F4164656C696146, 0xEF73676E69503250, v35);
    *(v6 + 16) = aBlock[0];
    corelog.getter(v36);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      swift_beginAccess();
      sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);
      v41 = v6;
      v42 = v8;

      v43 = Dictionary.description.getter();
      v45 = v44;

      v46 = v43;
      v8 = v42;
      v6 = v41;
      v47 = sub_10000234C(v46, v45, aBlock);

      *(v39 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "CoreAnalytics, send heartbeat event: %{public}s", v39, 0xCu);
      sub_100002580(v40);

      (*(v50 + 8))(v51, v52);
    }

    else
    {

      (*(v50 + 8))(v36, v52);
    }

    v48 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10032AC9C;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032A44C;
    aBlock[3] = &unk_100407D20;
    v49 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v49);

    *v33 = 0;
    v33[1] = 0;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
  }
}

uint64_t sub_100004700()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004738(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = __CFADD__(v2, a1);
  v4 = v2 + a1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v4;
    v5 = *(v1 + 64);
    v3 = __CFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      sub_1000040B4();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_100004790(unint64_t result)
{
  if (qword_10048BE68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_10048BE70))
  {
    if (qword_10048BE78)
    {
      return result * qword_10048BE70 / qword_10048BE78;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004820(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100004830(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100004898(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  (*(*v1 + 232))(a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100004904(void *a1)
{
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v52 - 8);
  __chkstk_darwin(v52);
  v64 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALBtAdvertisement();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v58 = v14;
  __chkstk_darwin(v11);
  v16 = &v49 - v15;
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE100000000000000;
    v19 = 95;
  }

  aBlock = v19;
  v69 = v21;

  v22._countAndFlagsBits = 0x6E756F662E74622ELL;
  v22._object = 0xE900000000000064;
  String.append(_:)(v22);

  String.utf8CString.getter();

  v55 = os_transaction_create();

  sub_1000050EC(a1, v16);
  scanlog.getter(v6);
  v23 = *(v8 + 16);
  v60 = v16;
  v23(v13, v16, v7);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v51 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v49 = v6;
    v50 = v23;
    v29 = v28;
    aBlock = v28;
    *v27 = 136315138;
    v30 = ALBtAdvertisement.description.getter();
    v32 = v31;
    v33 = *(v8 + 8);
    v53 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v33;
    v33(v13, v7);
    v34 = sub_10000234C(v30, v32, &aBlock);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "#BT,onDeviceFound,%s", v27, 0xCu);
    sub_100002580(v29);
    v23 = v50;

    v35 = (*(v56 + 8))(v49, v57);
  }

  else
  {

    v36 = *(v8 + 8);
    v53 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v36;
    v36(v13, v7);
    v35 = (*(v56 + 8))(v6, v57);
  }

  v37 = v61;
  v38 = (*(*v61 + 112))(v35);
  v39 = v59;
  v40 = v60;
  v41 = v51;
  v23(v59, v60, v51);
  v42 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v55;
  *(v43 + 24) = v37;
  (*(v8 + 32))(v43 + v42, v39, v41);
  v72 = sub_100006494;
  v73 = v43;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_100003EE4;
  v71 = &unk_100408250;
  v44 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v45 = v62;
  static DispatchQoS.unspecified.getter();
  v67 = &_swiftEmptyArrayStorage;
  sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  v46 = v64;
  v47 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  swift_unknownObjectRelease();

  (*(v66 + 8))(v46, v47);
  (*(v63 + 8))(v45, v65);
  v54(v40, v41);
}

uint64_t sub_100005020()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000050EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = type metadata accessor for ALBtAdvertisement.BtType();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_1004312B8, &unk_10039A810);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_100024A2C(&unk_1004312C0, &qword_10036D750);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  v14 = __chkstk_darwin(v13 - 8);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = __chkstk_darwin(v16);
  v65 = &v58 - v20;
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v66 = a2;
  ALBtAdvertisement.init()();
  v23 = [a1 bleAdvertisementTimestampMachContinuous];
  v24 = MsInSec.getter();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (is_mul_ok(v23, v24))
  {
    v61 = v7;
    v59 = v6;
    ALBtAdvertisement._machContTimeNs.setter();
    v25 = [a1 btAddressData];
    v62 = v9;
    v64 = v18;
    if (v25)
    {
      v26 = v25;
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_100005A08(v27, v29);
      sub_100005B2C(v27, v29);
    }

    [a1 bleRSSI];
    v69 = 0;
    ALBtAdvertisement._rssidB.setter();
    [a1 bleChannel];
    v68 = 0;
    ALBtAdvertisement._channel.setter();
    v30 = [a1 bleAdvertisementData];
    v31 = v63;
    if (v30)
    {
      v32 = v30;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ALBtAdvertisement._payload.setter();
    [a1 deviceFlags];
    ALBtAdvertisement._deviceFlags.setter();
    [a1 discoveryFlags];
    ALBtAdvertisement._discoveryFlags.setter();
    [a1 vendorID];
    ALBtAdvertisement._vendorID.setter();
    v33 = [a1 identifier];
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ALBtAdvertisement._identifier.setter();
    v35 = [a1 idsDeviceID];
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v37 = v65;
    ALBtAdvertisement._idsDeviceID.setter();
    if (([a1 discoveryFlags] & 0x8000) != 0 || (objc_msgSend(a1, "discoveryFlags") & 0x4000) != 0)
    {
      (*(v4 + 104))(v22, enum case for ALBtAdvertisement.BtType.type7(_:), v31);
      (*(v4 + 56))(v22, 0, 1, v31);
      ALBtAdvertisement._type.setter();
      sub_100005B80(a1, 1);
      v38 = type metadata accessor for ALBtAdvInfoType7();
      (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
      ALBtAdvertisement._type7Info.setter();
    }

    if (([a1 discoveryFlags] & 0x10000) != 0)
    {
      v40 = enum case for ALBtAdvertisement.BtType.type7(_:);
    }

    else
    {
      v39 = [a1 discoveryFlags];
      v40 = enum case for ALBtAdvertisement.BtType.type7(_:);
      if ((v39 & 0x80) == 0)
      {
LABEL_19:
        ALBtAdvertisement.type.getter();
        v42 = v31;
        v43 = v64;
        (*(v4 + 104))(v64, v40, v42);
        (*(v4 + 56))(v43, 0, 1, v42);
        v44 = v62;
        v45 = *(v61 + 48);
        sub_100005CC4(v37, v62);
        sub_100005CC4(v43, v44 + v45);
        v46 = v4;
        v47 = v4;
        v48 = v37;
        v49 = *(v47 + 48);
        if (v49(v44, 1, v42) == 1)
        {
          sub_1000059A8(v43, &qword_100418C58, &unk_10039A820);
          sub_1000059A8(v48, &qword_100418C58, &unk_10039A820);
          if (v49(v44 + v45, 1, v42) == 1)
          {
            sub_1000059A8(v44, &qword_100418C58, &unk_10039A820);
LABEL_27:
            v52 = &selRef_proximityPairingProductID;
            goto LABEL_28;
          }
        }

        else
        {
          v50 = v60;
          sub_100005CC4(v44, v60);
          v51 = v42;
          if (v49(v44 + v45, 1, v42) != 1)
          {
            v53 = v46;
            v54 = *(v46 + 32);
            v55 = v59;
            v54(v59, v44 + v45, v42);
            sub_100005E70(&unk_1004312D0, &type metadata accessor for ALBtAdvertisement.BtType, &protocol conformance descriptor for ALBtAdvertisement.BtType);
            v56 = dispatch thunk of static Equatable.== infix(_:_:)();
            v57 = *(v53 + 8);
            v57(v55, v51);
            sub_1000059A8(v64, &qword_100418C58, &unk_10039A820);
            sub_1000059A8(v65, &qword_100418C58, &unk_10039A820);
            v57(v50, v51);
            sub_1000059A8(v44, &qword_100418C58, &unk_10039A820);
            if (v56)
            {
              goto LABEL_27;
            }

LABEL_25:
            v52 = &selRef_productID;
LABEL_28:
            [a1 *v52];
            v67 = 0;
            ALBtAdvertisement._productID.setter();

            return;
          }

          sub_1000059A8(v64, &qword_100418C58, &unk_10039A820);
          sub_1000059A8(v65, &qword_100418C58, &unk_10039A820);
          (*(v46 + 8))(v50, v42);
        }

        sub_1000059A8(v44, &qword_1004312B8, &unk_10039A810);
        goto LABEL_25;
      }
    }

    (*(v4 + 104))(v22, v40, v31);
    (*(v4 + 56))(v22, 0, 1, v31);
    ALBtAdvertisement._type.setter();
    sub_100005B80(a1, 0);
    v41 = type metadata accessor for ALBtAdvInfoType7();
    (*(*(v41 - 8) + 56))(v12, 0, 1, v41);
    ALBtAdvertisement._type7Info.setter();
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1000059A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100024A2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005A08(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
LABEL_8:
    if (v2 == 2)
    {
      v6 = *(a1 + 16);
      v7 = __DataStorage._bytes.getter();
      if (v7)
      {
        v5 = v7;
        v8 = __DataStorage._offset.getter();
        v2 = v6 - v8;
        if (!__OFSUB__(v6, v8))
        {
          goto LABEL_11;
        }

LABEL_16:
        __break(1u);
      }

      return __DataStorage._length.getter();
    }

    return ALBtAdvertisement._mac.setter();
  }

  if (!v2)
  {
    return ALBtAdvertisement._mac.setter();
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = __DataStorage._bytes.getter();
  if (!v4)
  {
    return __DataStorage._length.getter();
  }

  v5 = v4;
  a1 = __DataStorage._offset.getter();
  v2 = v3 - a1;
  if (__OFSUB__(v3, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  v9 = v2 + v5;
  result = __DataStorage._length.getter();
  if (v9)
  {
    return ALBtAdvertisement._mac.setter();
  }

  return result;
}

uint64_t sub_100005B2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100005B80(void *a1, char a2)
{
  v9 = a1;
  v3 = sub_100024A2C(&qword_100418C60, &qword_10036D758);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  ALBtAdvInfoType7.init()();
  [v9 deviceFlags];
  ALBtAdvInfoType7._isSameAccount.setter();
  [v9 deviceFlags];
  ALBtAdvInfoType7._isFamily.setter();
  [v9 deviceFlags];
  ALBtAdvInfoType7._isSharedHome.setter();
  if (a2)
  {
    [v9 deviceFlags];
  }

  ALBtAdvInfoType7._isLeftBud.setter();
  isLeft = ALBtAdvInfoType7._isLeftBud.getter();
  if (isLeft == 2)
  {
    v7 = v9;
  }

  else
  {
    sub_100337C48(v9, isLeft & 1, v5);
    ALBtAdvInfoType7._placement.setter();
  }
}

uint64_t sub_100005CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100005DF0(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100005DF0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005EB8()
{
  result = qword_100430F50;
  if (!qword_100430F50)
  {
    sub_100024BB0(&unk_10042F300, &qword_10039A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430F50);
  }

  return result;
}

uint64_t sub_100005F1C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ALBtNotification();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  ALBtNotification.init()();

  ALBtNotification._advertisements.setter();
  ALBtNotification._isScreenOn.setter();
  ALBtNotification._simulated.setter();
  static ALTimeStamp.now()();
  v18 = type metadata accessor for ALTimeStamp();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  ALBtNotification._timestamp.setter();
  scanlog.getter(v8);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v19, v20))
  {

    v29 = (*(v4 + 8))(v8, v3);
LABEL_7:
    v30 = (*(*v38 + 136))(v29);
    swift_beginAccess();
    v31 = v39;
    v32 = v40;
    (*(v39 + 16))(v15, v17, v40);
    v30(v15);
    v33 = *(v31 + 8);
    v33(v15, v32);

    return (v33)(v17, v32);
  }

  v35 = v4;
  v36 = v3;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v41[0] = v22;
  *v21 = 136446466;
  swift_beginAccess();
  v23 = ALBtNotification.description.getter();
  v25 = sub_10000234C(v23, v24, v41);

  *(v21 + 4) = v25;
  *(v21 + 12) = 2050;
  if (*(a1 + 16))
  {
    type metadata accessor for ALBtAdvertisement();
    v27 = COERCE_DOUBLE(sub_1000065B8());
    if (v28)
    {
      v27 = -1.0;
    }

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "#BT,onAdvertisements,notif,%{public}s,delayMs,%{public}f", v21, 0x16u);
    sub_100002580(v22);

    v29 = (*(v35 + 8))(v8, v36);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006494()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100374440;
  (*(v2 + 16))(v5 + v3, v0 + v3, v1);
  (*(*v4 + 248))(v5, 1);
}

uint64_t sub_1000065B8()
{
  v0 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  ALBtNotification._timestamp.getter();
  v3 = type metadata accessor for ALTimeStamp();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000059A8(v2, &qword_100418C70, qword_10039A8A0);
LABEL_3:
    *&result = 0.0;
    return result;
  }

  v6 = COERCE_DOUBLE(ALTimeStamp._machAbsoluteTimeSec.getter());
  v8 = v7;
  (*(v4 + 8))(v2, v3);
  if (v8)
  {
    *&result = v6;
  }

  else
  {
    v9 = ALBtAdvertisement._machContTimeNs.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    v11 = v9;
    v12 = v6 * MsInSec.getter();
    *&result = v12 - UsToSec.getter() * v11;
  }

  return result;
}

uint64_t sub_100006748(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v17 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(**(a2 + 56) + 200))(a1);
  if (!v2)
  {
    v16[2] = 0;
    v13 = *(ALBtNotification._advertisements.getter() + 16);

    v16[1] = *(a2 + 40);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_10001593C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100407E60;
    v15 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    aBlock[7] = &_swiftEmptyArrayStorage;
    sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v16[0] = v9;
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v11, v16[0]);
  }

  return result;
}

uint64_t sub_100006A6C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  v8 = __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*a2 + 128))(v8);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100006E78;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004080C8;
  v13 = _Block_copy(aBlock);

  v14 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_100006D3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100006D84()
{
  result = qword_100430F40;
  if (!qword_100430F40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430F40);
  }

  return result;
}

uint64_t sub_100006DDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006E78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_autoreleasePoolPush();
  sub_100006ED4(v1, v2);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100006ED4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 328))(a2);
  if (v2)
  {
    v17 = v2;
    corelog.getter(v8);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "#WiFi,eventHandler,catch,%{public}@", v13, 0xCu);
      sub_10000ACB4(v14);
    }

    (*(v6 + 8))(v8, v5);
    (*(*a1 + 296))(v17);
  }

  return result;
}

uint64_t sub_10000710C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v52 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v47[-v7];
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE100000000000000;
    v11 = 95;
  }

  v53[0] = v11;
  v53[1] = v13;

  v14._countAndFlagsBits = 0x76652E696669772ELL;
  v14._object = 0xEB00000000746E65;
  String.append(_:)(v14);

  String.utf8CString.getter();

  v15 = os_transaction_create();

  corelog.getter(v8);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51 = v15;
    v20 = v19;
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v20 = 136446210;
    v21 = [v16 description];
    v48 = v18;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v8;
    v24 = v4;
    v26 = v25;

    v27 = sub_10000234C(v23, v26, v53);
    v4 = v24;

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v48, "#WiFi, received event %{public}s", v20, 0xCu);
    sub_100002580(v50);

    v28 = *(v54 + 8);
    v28(v49, v24);
  }

  else
  {

    v28 = *(v54 + 8);
    v28(v8, v4);
  }

  v29 = [v16 type];
  if (v29 == 37)
  {
    (*(*v2 + 336))();
  }

  else if (v29 == 5)
  {
    v37 = (*(*v2 + 248))();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1000078BC();
      (*(*v38 + 176))(v39 & 1);
    }
  }

  else
  {
    if (v29 == 3)
    {
      v30 = (*(*v2 + 248))();
      if (v30)
      {
        (*(*v30 + 176))(1);
      }

      v31 = (*(*v2 + 176))(v30);
      if (v31)
      {
        v32 = v31;
        v33 = [v31 BSSID];

        if (v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v31 = v34;
LABEL_24:
          (*(*v2 + 320))(v31, v36);

          return swift_unknownObjectRelease();
        }

        v31 = 0;
      }

      v36 = 0;
      goto LABEL_24;
    }

    v40 = v16;
    v41 = v4;
    corelog.getter(v52);
    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = [v42 type];

      _os_log_impl(&_mh_execute_header, v43, v44, "#WiFi,unhandled,evtType,%{public}ld", v45, 0xCu);
    }

    else
    {

      v43 = v42;
    }

    v28(v52, v41);
  }

  return swift_unknownObjectRelease();
}

id sub_100007728()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10000776C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000777C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000778C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000779C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000780C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000781C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007838()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000078C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v60 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for Logger();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v60 - v22;
  v24 = __chkstk_darwin(v21);
  v27 = &v60 - v25;
  if ((a1 & 1) != 0 || (v28 = v2[5], v28 < 0.6))
  {
    corelog.getter(&v60 - v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "debounce.notify,force", v31, 2u);
    }

    (*(v68 + 8))(v27, v69);
    v32 = 0;
LABEL_6:
    v33 = 1;
    return sub_100008264(v32, v33);
  }

  v62 = v26;
  v35 = COERCE_DOUBLE((*(*v2 + 120))(v24));
  if (v36)
  {
    corelog.getter(v16);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "debounce.notify,1stRequest", v39, 2u);
    }

    (*(v68 + 8))(v16, v69);
    v32 = *&v35;
    goto LABEL_6;
  }

  v40 = machContTimeSec()();
  v41 = v28 + v35;
  if (v28 + v35 + -0.1 < v40)
  {
    corelog.getter(v23);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "debounce.notify,pastSchedule,%{public}f", v44, 0xCu);
    }

    (*(v68 + 8))(v23, v69);
    v32 = *&v40;
    v33 = 0;
    return sub_100008264(v32, v33);
  }

  if ((*(*v2 + 144))(v28 + v35 + -0.1))
  {

    corelog.getter(v20);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349824;
      *(v47 + 4) = v40;
      *(v47 + 12) = 2050;
      *(v47 + 14) = v35;
      *(v47 + 22) = 2050;
      *(v47 + 24) = v28;
      *(v47 + 32) = 2050;
      *(v47 + 34) = v41;
      _os_log_impl(&_mh_execute_header, v45, v46, "debounce.notify,skip,now,%{public}f,last,%{public}f,%{public}f,willRunAt,%{public}f", v47, 0x2Au);
    }

    return (*(v68 + 8))(v20, v69);
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v2;
  *(v48 + 24) = v40;
  aBlock[4] = sub_10032B278;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000025CC;
  aBlock[3] = &unk_100407D98;
  _Block_copy(aBlock);
  v70 = &_swiftEmptyArrayStorage;
  sub_100006D84();

  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  v49 = v41 + 0.6 - v40;
  result = static DispatchTime.now()();
  v50 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v61 = v35;
  if (v50 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  *v6 = v50;
  v52 = v63;
  v51 = v64;
  (*(v63 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v64);
  + infix(_:_:)();
  (*(v52 + 8))(v6, v51);
  v53 = v66;
  v54 = *(v65 + 8);
  v54(v10, v66);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  corelog.getter(v62);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134350336;
    *(v57 + 4) = v40;
    *(v57 + 12) = 2050;
    *(v57 + 14) = v61;
    *(v57 + 22) = 2050;
    *(v57 + 24) = v28;
    *(v57 + 32) = 2050;
    *(v57 + 34) = v41;
    *(v57 + 42) = 2050;
    *(v57 + 44) = 0x3FE3333333333333;
    *(v57 + 52) = 2050;
    *(v57 + 54) = v49;
    _os_log_impl(&_mh_execute_header, v55, v56, "debounce.notify,schedule,now,%{public}f,%{public}f,%{public}f,toRunAt,%{public}f,delay,%{public}f,dispatchSec,%{public}f", v57, 0x3Eu);
  }

  (*(v68 + 8))(v62, v69);
  v58 = *(*v2 + 152);

  v58(v59);

  return (v54)(v67, v53);
}

uint64_t sub_1000081F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008264(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = v11;
    *v11 = 134349312;
    v13 = *&a1;
    if (a2)
    {
      v13 = -1.0;
    }

    *(v11 + 4) = v13;
    *(v11 + 12) = 1026;
    if ((*v2)[18]())
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 14) = v14;

    _os_log_impl(&_mh_execute_header, v9, v10, "debounce.callback,now,%{public}f,scheduled,%{BOOL,public}d", v12, 0x12u);
  }

  else
  {
  }

  v15 = (*(v6 + 8))(v8, v5);
  (v2[3])(v15);
  if (a2)
  {
    a1 = machContTimeSec()();
  }

  v16 = ((*v2)[16])(a1, 0);
  if (((*v2)[18])(v16))
  {
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  return ((*v2)[19])(0);
}

void sub_1000084E8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE100000000000000;
    v10 = 95;
  }

  v40[0] = v10;
  v40[1] = v12;

  v13._object = 0x80000001003B18D0;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);

  String.utf8CString.getter();

  os_transaction_create();

  v14 = [objc_allocWithZone(CWFScanParameters) init];
  [v14 setScanType:3];
  [v14 setIncludeHiddenNetworks:1];
  sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10039A710;
  *(inited + 32) = Int._bridgeToObjectiveC()();
  *(inited + 40) = Int._bridgeToObjectiveC()();
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = Int._bridgeToObjectiveC()();
  *(inited + 64) = Int._bridgeToObjectiveC()();
  sub_100008BE8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
  sub_10000AC14();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v14 setIncludeProperties:isa];

  v17 = (*(*v1 + 224))();
  if ((v18 & 1) == 0)
  {
    if (v17 == -1)
    {
      __break(1u);
      goto LABEL_24;
    }

    [v14 setMinimumTimestamp:v17 + 1];
  }

  corelog.getter(v7);
  v14 = v14;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v14;
    *v22 = v14;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v19, v20, "#WiFi,.scanCacheUpdated,param,%{public}@", v21, 0xCu);
    sub_10000ACB4(v22);
  }

  v24 = *(v3 + 8);
  v25 = v24(v7, v2);
  v26 = (*(*v1 + 176))(v25);
  if (!v26)
  {
    swift_unknownObjectRelease();

    return;
  }

  v40[0] = 0;
  v27 = v26;
  v28 = [v26 performScanWithParameters:v14 error:v40];

  v29 = v40[0];
  if (!v28)
  {
    v33 = v40[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    corelog.getter(v39);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "#WiFi,fectchScanUpdate,catch", v37, 2u);
    }

    v24(v39, v2);
    (*(*v1 + 296))(v34);

    goto LABEL_22;
  }

  sub_10000ABCC(0, &qword_100430FC0, CWFScanResult_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v7 >> 62)
  {
LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v31 = *(v7 + 32);
    }

    v32 = v31;
    (*(*v1 + 232))([v31 timestamp], 0);
  }

LABEL_17:
  v40[3] = sub_100024A2C(&qword_100430FF0, &qword_10039A730);
  v40[4] = sub_10000D908();
  v40[0] = v7;
  (*(*v1 + 304))(v40, 0);

  sub_100002580(v40);
LABEL_22:
  swift_unknownObjectRelease();
}

void sub_100008BE8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100024A2C(&unk_1004311B0, &unk_10039A790);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100008ED8(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v28 = type metadata accessor for Logger();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v8);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = a1;
    v12 = v11;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v12 = 136446466;
    v13 = *(v5 + 80);
    v29 = v13;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = sub_10000234C(v14, v15, &v30);
    v27 = v2;
    v17 = v16;

    *(v12 + 4) = v17;
    *(v12 + 12) = 2050;
    v19 = *((*(*v1 + 144))(v18) + 16);

    *(v12 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v9, v10, "Leeching %{public}s, clients count %{public}ld", v12, 0x16u);
    sub_100002580(v25);

    a1 = v26;

    (*(v6 + 8))(v8, v28);
  }

  else
  {

    (*(v6 + 8))(v8, v28);
    v13 = *(v5 + 80);
  }

  sub_10000AB40(v13, v13);
  v20 = *(v13 - 8);
  swift_allocObject();
  v21 = static Array._adoptStorage(_:count:)();
  (*(v20 + 16))(v22, a1, v13);
  type metadata accessor for Array();
  (*(*v3 + 192))(v21, 1);
}

uint64_t sub_100009288(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DataClient(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (v2[5])(a1, a2);
  if (!v3)
  {
    v12 = result;
    v13 = v11;
    v14 = (*v2)[18]();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v17 = *(v7 + 72);
      do
      {
        sub_100015140(v16, v9);
        sub_1000151A4(v12, v13);
        sub_10001543C(v9);
        v16 += v17;
        --v15;
      }

      while (v15);
    }

    return sub_100005B2C(v12, v13);
  }

  return result;
}

uint64_t type metadata accessor for DataClient(uint64_t a1)
{
  result = qword_10048C030;
  if (!qword_10048C030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000946C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000094C4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  if (qword_100435370 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_100435378;
}

uint64_t sub_100009540(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1000095F8(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 33) = a1;
  return result;
}

uint64_t sub_1000095F8(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  __chkstk_darwin(v3 - 8);
  v51 = &v42 - v4;
  v5 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  __chkstk_darwin(v5 - 8);
  v50 = &v42 - v6;
  v7 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  __chkstk_darwin(v7 - 8);
  v49 = &v42 - v8;
  v9 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  __chkstk_darwin(v9 - 8);
  v48 = &v42 - v10;
  v11 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  __chkstk_darwin(v11 - 8);
  v43 = &v42 - v12;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1793;
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  v14 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v42 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v16 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v44 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v18 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v1 + v17, 1, 1, v18);
  v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v45 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v21 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v47 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  v19(v1 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, 1, 1, v18);
  v22 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v46 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v23 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  swift_beginAccess();
  v24 = *(a1 + 16);
  LOBYTE(v19) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v24;
  *(v1 + 24) = v19;
  swift_beginAccess();
  LODWORD(v24) = *(a1 + 28);
  LOBYTE(v19) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v24;
  *(v1 + 32) = v19;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v24;
  v25 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v26 = v43;
  sub_10000A0A4(a1 + v25, v43, &qword_100418378, &qword_10036C850);
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v13, &qword_100418378, &qword_10036C850);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v28 = v48;
  sub_10000A0A4(a1 + v27, v48, &qword_100418380, &qword_10036C858);
  v29 = v42;
  swift_beginAccess();
  sub_10000AD64(v28, v1 + v29, &qword_100418380, &qword_10036C858);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  v31 = v49;
  sub_10000A0A4(a1 + v30, v49, &qword_100418388, &qword_10036C860);
  v32 = v44;
  swift_beginAccess();
  sub_10000AD64(v31, v1 + v32, &qword_100418388, &qword_10036C860);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  v34 = v50;
  sub_10000A0A4(a1 + v33, v50, &qword_100418390, &qword_10036C868);
  v35 = v45;
  swift_beginAccess();
  sub_10000AD64(v34, v1 + v35, &qword_100418390, &qword_10036C868);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v36, v31, &qword_100418388, &qword_10036C860);
  v37 = v47;
  swift_beginAccess();
  sub_10000AD64(v31, v1 + v37, &qword_100418388, &qword_10036C860);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  v39 = v51;
  sub_10000A0A4(a1 + v38, v51, &qword_100418398, &qword_10036C870);

  v40 = v46;
  swift_beginAccess();
  sub_10000AD64(v39, v1 + v40, &qword_100418398, &qword_10036C870);
  swift_endAccess();
  return v1;
}

uint64_t sub_100009D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 10;
  }

  return result;
}

uint64_t sub_100009DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100009F10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

void *sub_10000A000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024A2C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 10;
    if (v10 >= 0xA)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static ALBtNotifications.serializedIndications(results:isLastBatch:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ALBtNotifications();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALBtNotifications.init(results:isLastBatch:)();
  v6 = ALBtNotifications.serializedData()();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t ALBtNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALBtNotifications();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  __chkstk_darwin(v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000A71C(v12);
  if (!v1)
  {
    v34 = v0;
    v35 = v5;
    v13 = v39;
    v36 = v9;
    v37 = v6;
    v38 = v7;
    sub_10000D600(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &unk_10036D208);
    v2 = Message.serializedData(partial:)();
    v15 = v14;
    sub_1000108EC(v12, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v33 = 0;
    v17 = v36;
    corelog.getter(v36);
    v18 = v13;
    v19 = v17;
    v20 = v35;
    v21 = v3;
    (*(v18 + 16))(v35, v34, v3);
    sub_1000150EC(v2, v15);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    sub_100005B2C(v2, v15);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v24 = 136446466;
      v32 = v23;
      v25 = ALBtNotifications.description()();
      (*(v18 + 8))(v20, v21);
      v26 = sub_10000234C(v25._countAndFlagsBits, v25._object, &v40);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2082;
      sub_1000150EC(v2, v15);
      v27 = Data.description.getter();
      v29 = v28;
      sub_100005B2C(v2, v15);
      v30 = sub_10000234C(v27, v29, &v40);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v32, "#BT,serializedData,notif,%{public}s,data,%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v20, v21);
    }

    (*(v38 + 8))(v19, v37);
  }

  return v2;
}

uint64_t sub_10000A71C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALBtNotification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v11 = __chkstk_darwin(v10 - 8);
  v35 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (v30 - v13);
  sub_1000094C4(a1);
  sub_100009540(6);
  sub_10000B1F0(v14);
  v15 = ALBtNotifications.results.getter();
  v16 = *(v15 + 16);
  if (v16)
  {
    v32 = v1;
    v33 = a1;
    v34 = v2;
    v30[1] = v15;
    v31 = v14;
    v17 = *v14;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v36 = *(v18 + 56);
    v37 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    v23 = v39;
    do
    {
      v24 = v22;
      v37(v9, v20, v6);
      sub_10000B208(v23);
      (*v21)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10000D334(0, v17[2] + 1, 1, v17, &qword_100418C78, &qword_10036D760, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        v17 = sub_10000D334((v25 > 1), v26 + 1, 1, v17, &qword_100418C78, &qword_10036D760, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      }

      v17[2] = v26 + 1;
      v23 = v39;
      sub_10000D510(v39, v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
      v20 += v36;
      --v16;
      v22 = v24;
    }

    while (v16);

    v14 = v31;
    *v31 = v17;
  }

  else
  {
  }

  v27 = ALBtNotifications.isLastBatch.getter();
  sub_10000D6B0(v27 & 1);
  v28 = v35;
  sub_10000D648(v14, v35, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  sub_10000D6E0(v28);
  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  sub_10000D600(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &unk_10036D208);
  static ALProtobufUtil.debug<A>(_:)();
  return sub_1000108EC(v14, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

uint64_t sub_10000AB40(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_10000ABCC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000AC14()
{
  result = qword_100430FE8;
  if (!qword_100430FE8)
  {
    sub_10000ABCC(255, &qword_100430FE0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430FE8);
  }

  return result;
}

uint64_t sub_10000ACB4(uint64_t a1)
{
  v2 = sub_100024A2C(&unk_10042F020, &qword_100399AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000AD1C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_10000AD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024A2C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10000AF94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B058@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  result = UnknownStorage.init()();
  v5 = a2 + *(v3 + 24);
  *v5 = 0;
  v5[8] = 1;
  *(a2 + *(v3 + 28)) = 2;
  return result;
}

uint64_t sub_10000B0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000B184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_10000B208(char *a1@<X8>)
{
  v3 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v37 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ALBtAdvertisement();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = type metadata accessor for ALTimeStamp();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C1C4(a1);
  ALBtNotification._timestamp.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000059A8(v13, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_10000B7CC(v10);
    sub_10000C2C0(v10);
    (*(v15 + 8))(v17, v14);
  }

  v18 = ALBtNotification._advertisements.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v32[1] = v1;
    v33 = a1;
    v20 = *a1;
    v21 = v36 + 16;
    v22 = *(v36 + 16);
    v23 = *(v36 + 80);
    v34 = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v35 = *(v36 + 72);
    v36 = v22;
    v25 = (v21 - 8);
    v26 = v38;
    do
    {
      (v36)(v7, v24, v26);
      sub_10000C378(v5);
      sub_10000C3F4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10000D334(0, v20[2] + 1, 1, v20, &qword_100418C88, &qword_10036D768, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v28 = v20[2];
      v27 = v20[3];
      if (v28 >= v27 >> 1)
      {
        v20 = sub_10000D334((v27 > 1), v28 + 1, 1, v20, &qword_100418C88, &qword_10036D768, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      }

      v26 = v38;
      (*v25)(v7, v38);
      v20[2] = v28 + 1;
      sub_10000D510(v5, v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v24 += v35;
      --v19;
    }

    while (v19);

    *v33 = v20;
  }

  else
  {
  }

  v29 = ALBtNotification._simulated.getter();
  if (v29 != 2)
  {
    sub_10000D578(v29 & 1);
  }

  isAp = ALBtNotification._isApOn.getter();
  if (isAp != 2)
  {
    sub_1002851C0(isAp & 1);
  }

  isScreen = ALBtNotification._isScreenOn.getter();
  if (isScreen != 2)
  {
    sub_10000D5A8(isScreen & 1);
  }

  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  sub_10000D600(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification, &unk_1003939E8);
  static ALProtobufUtil.debug<A>(_:)();
}

int *sub_10000B764@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10000B7CC@<X0>(uint64_t a1@<X8>)
{
  sub_10000C270(a1);
  v1 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v2 & 1) == 0)
  {
    sub_10000B840(*&v1);
  }

  v3 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v4 & 1) == 0)
  {
    sub_10000C288(*&v3);
  }

  result = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v6 & 1) == 0)
  {
    return sub_10000B878(*&result);
  }

  return result;
}

uint64_t sub_10000B840(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000B878(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000B8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B958(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  __chkstk_darwin(v3 - 8);
  v41 = &v33 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  *(v1 + 52) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 1;
  *(v1 + 60) = 0;
  v33 = (v1 + 60);
  *(v1 + 64) = 1;
  *(v1 + 72) = xmmword_10036D770;
  *(v1 + 88) = 3;
  *(v1 + 96) = 0;
  v34 = (v1 + 88);
  v35 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  v36 = (v1 + 112);
  *(v1 + 120) = 1;
  *(v1 + 124) = 0;
  v37 = (v1 + 124);
  *(v1 + 152) = 0u;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0u;
  v38 = (v1 + 136);
  v39 = (v1 + 152);
  v5 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v40 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v9 = *(a1 + 32);
  LOBYTE(v7) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v9;
  *(v1 + 40) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 44);
  LOBYTE(v7) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 44) = v9;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 52);
  LOBYTE(v7) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 52) = v9;
  *(v1 + 56) = v7;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 60);
  LOBYTE(v7) = *(a1 + 64);
  v10 = v33;
  swift_beginAccess();
  *v10 = v9;
  *(v1 + 64) = v7;
  swift_beginAccess();
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  swift_beginAccess();
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  *(v1 + 72) = v11;
  *(v1 + 80) = v12;
  sub_10000BE4C(v11, v12);
  sub_10000CA64(v13, v14);
  swift_beginAccess();
  v15 = *(a1 + 88);
  v16 = v34;
  swift_beginAccess();
  *v16 = v15;
  swift_beginAccess();
  v17 = *(a1 + 96);
  LOBYTE(v16) = *(a1 + 104);
  v18 = v35;
  swift_beginAccess();
  *v18 = v17;
  *(v1 + 104) = v16;
  swift_beginAccess();
  v19 = *(a1 + 112);
  LOBYTE(v16) = *(a1 + 120);
  v20 = v36;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 120) = v16;
  swift_beginAccess();
  LODWORD(v19) = *(a1 + 124);
  LOBYTE(v16) = *(a1 + 128);
  v21 = v37;
  swift_beginAccess();
  *v21 = v19;
  *(v1 + 128) = v16;
  swift_beginAccess();
  v23 = *(a1 + 136);
  v22 = *(a1 + 144);
  v24 = v38;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 144) = v22;

  swift_beginAccess();
  v26 = *(a1 + 152);
  v25 = *(a1 + 160);
  v27 = v39;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 160) = v25;

  v28 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v29 = a1 + v28;
  v30 = v41;
  sub_10000A0A4(v29, v41, &qword_10042B8C8, &unk_100393490);

  v31 = v40;
  swift_beginAccess();
  sub_10000CA78(v30, v1 + v31);
  swift_endAccess();
  return v1;
}

uint64_t sub_10000BE4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000150EC(result, a2);
  }

  return result;
}

uint64_t sub_10000BE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000BF4C(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 52) = a1;
  *(v6 + 56) = 0;
  return result;
}

uint64_t sub_10000BFE8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 124) = a1;
  *(v6 + 128) = 0;
  return result;
}

uint64_t sub_10000C084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_10000B958(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
}

uint64_t sub_10000C128(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 96) = a1;
  *(v6 + 104) = 0;
  return result;
}

uint64_t sub_10000C1C4@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[v2[7]] = 2;
  a1[v2[8]] = 2;
  a1[v2[9]] = 2;
  return result;
}

uint64_t sub_10000C288(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_10000C2C0(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_10000B8B0(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_10000C378@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  if (qword_10047FBA8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_10047FBB0;
}

uint64_t sub_10000C3F4()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  __chkstk_darwin(v0 - 8);
  v43 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100024A2C(&unk_1004312C0, &qword_10036D750);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v44 = type metadata accessor for ALBtAdvInfoType7();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100418C58, &unk_10039A820);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for ALBtAdvertisement.BtType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = ALBtAdvertisement._machContTimeNs.getter();
  if ((v18 & 1) == 0)
  {
    sub_10000C8FC(v17);
  }

  v19 = ALBtAdvertisement._mac.getter();
  if ((v20 & 1) == 0)
  {
    sub_10000CAE8(v19);
  }

  v21 = ALBtAdvertisement._rssidB.getter();
  if ((v21 & 0x100000000) == 0)
  {
    sub_10000CB84(v21);
  }

  v22 = ALBtAdvertisement._antennaIndex.getter();
  if ((v22 & 0x100000000) == 0)
  {
    sub_100282578(v22);
  }

  v23 = ALBtAdvertisement._payload.getter();
  if (v24 >> 60 != 15)
  {
    sub_1002828E0(v23, v24);
  }

  v25 = ALBtAdvertisement._channel.getter();
  if ((v25 & 0x100000000) == 0)
  {
    sub_10000BF4C(v25);
  }

  v26 = ALBtAdvertisement._productID.getter();
  if ((v26 & 0x100000000) == 0)
  {
    sub_10000BFE8(v26);
  }

  v27 = ALBtAdvertisement._identifier.getter();
  if (v28)
  {
    sub_10000C084(v27, v28);
  }

  v29 = ALBtAdvertisement._idsDeviceID.getter();
  if (v30)
  {
    sub_100283AF0(v29, v30);
  }

  v31 = ALBtAdvertisement._deviceFlags.getter();
  if ((v32 & 1) == 0)
  {
    sub_10000C128(v31);
  }

  v33 = ALBtAdvertisement._discoveryFlags.getter();
  if ((v34 & 1) == 0)
  {
    sub_10000CC20(v33);
  }

  ALBtAdvertisement._type.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000059A8(v9, &qword_100418C58, &unk_10039A820);
    goto LABEL_32;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v14, v16, v10);
  v35 = (*(v11 + 88))(v14, v10);
  if (v35 != enum case for ALBtAdvertisement.BtType.unknown(_:))
  {
    if (v35 == enum case for ALBtAdvertisement.BtType.type7(_:))
    {
      v36 = 1;
      goto LABEL_31;
    }

    if (v35 == enum case for ALBtAdvertisement.BtType.type18(_:))
    {
      v36 = 2;
      goto LABEL_31;
    }

    (*(v11 + 8))(v14, v10);
  }

  v36 = 0;
LABEL_31:
  sub_10000CCBC(v36);
  (*(v11 + 8))(v16, v10);
LABEL_32:
  ALBtAdvertisement._type7Info.getter();
  v37 = v44;
  if ((*(v5 + 48))(v4, 1, v44) == 1)
  {
    return sub_1000059A8(v4, &unk_1004312C0, &qword_10036D750);
  }

  v39 = v42;
  (*(v5 + 32))(v42, v4, v37);
  v40 = v43;
  sub_10000CD54(v43);
  sub_10000D1D8(v40);
  return (*(v5 + 8))(v39, v37);
}

uint64_t sub_10000C8FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

uint64_t sub_10000C9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_10000CA64(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005B2C(result, a2);
  }

  return result;
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CAE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_10000CB84(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 44) = a1;
  *(v6 + 48) = 0;
  return result;
}

uint64_t sub_10000CC20(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 112) = a1;
  *(v6 + 120) = 0;
  return result;
}

uint64_t sub_10000CCBC(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10000B958(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  return result;
}

uint64_t sub_10000CD54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100024A2C(&qword_100418C60, &qword_10036D758);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_10000D0E4(a1);
  isSame = ALBtAdvInfoType7._isSameAccount.getter();
  if (isSame != 2)
  {
    sub_10000D178(isSame & 1);
  }

  v13 = ALBtAdvInfoType7._isFamily.getter();
  if (v13 != 2)
  {
    sub_10000D148(v13 & 1);
  }

  isShared = ALBtAdvInfoType7._isSharedHome.getter();
  if (isShared != 2)
  {
    sub_10000D1A8(isShared & 1);
  }

  isLeft = ALBtAdvInfoType7._isLeftBud.getter();
  if (isLeft != 2)
  {
    sub_1002857D4(isLeft & 1);
  }

  v16 = ALBtAdvInfoType7._isCase.getter();
  if (v16 != 2)
  {
    sub_1002858DC(v16 & 1);
  }

  ALBtAdvInfoType7._placement.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000059A8(v4, &qword_100418C60, &qword_10036D758);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v9, v11, v5);
  v18 = (*(v6 + 88))(v9, v5);
  if (v18 != enum case for ALBtAdvInfoType7.Placement.unknown(_:))
  {
    if (v18 == enum case for ALBtAdvInfoType7.Placement.inEar(_:))
    {
      v19 = 1;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.outOfEar(_:))
    {
      v19 = 2;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.inCase(_:))
    {
      v19 = 3;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.onEar(_:))
    {
      v19 = 4;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.offEar(_:))
    {
      v19 = 5;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.onNeck(_:))
    {
      v19 = 6;
      goto LABEL_29;
    }

    if (v18 == enum case for ALBtAdvInfoType7.Placement.disabled(_:))
    {
      v19 = 7;
      goto LABEL_29;
    }

    (*(v6 + 8))(v9, v5);
  }

  v19 = 0;
LABEL_29:
  sub_1002859E8(v19);
  return (*(v6 + 8))(v11, v5);
}

int *sub_10000D0E4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 8;
  return result;
}

uint64_t sub_10000D148(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_10000D178(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_10000D1A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D1D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10000B958(v11);
    *(v2 + v7) = v10;
  }

  sub_10000B8B0(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000CA78(v6, v9 + v13);
  return swift_endAccess();
}

void *sub_10000D334(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10000D510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D578(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D5A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10000D600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D6B0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10000D6E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1000095F8(v11);
    *(v2 + v7) = v10;
  }

  sub_10000D84C(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418398, &qword_10036C870);
  return swift_endAccess();
}

uint64_t sub_10000D84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D8B4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  return result;
}

unint64_t sub_10000D908()
{
  result = qword_100430FF8;
  if (!qword_100430FF8)
  {
    sub_100024BB0(&qword_100430FF0, &qword_10039A730);
    sub_100006E30(&qword_100431000, &qword_100431008, &qword_10039A738, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430FF8);
  }

  return result;
}

void *sub_10000D9B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D9FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000DA60(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DAC4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10000DB14(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v33 = a1;
  v34 = a2;
  v31 = 58;
  v32 = 0xE100000000000000;
  sub_10000DF10();
  sub_10000DF64();

  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  result = v34;
  v3 = HIBYTE(v34) & 0xF;
  v4 = v33 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v5 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v34 & 0x1000000000000000) == 0)
  {
    if ((v34 & 0x2000000000000000) != 0)
    {
      v31 = v33;
      v32 = v34 & 0xFFFFFFFFFFFFFFLL;
      if (v33 == 43)
      {
        if (v3)
        {
          v6 = (v3 - 1);
          if (v3 != 1)
          {
            v9 = 0;
            v21 = &v31 + 1;
            while (1)
            {
              v22 = *v21;
              v23 = v22 - 48;
              if ((v22 - 48) >= 0xA)
              {
                if ((v22 - 65) < 6)
                {
                  v23 = v22 - 55;
                }

                else
                {
                  if ((v22 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v23 = v22 - 87;
                }
              }

              if (v9 >> 60)
              {
                break;
              }

              v9 = 16 * v9 + v23;
              ++v21;
              if (!--v6)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_84;
        }

LABEL_96:
        __break(1u);
        return result;
      }

      if (v33 != 45)
      {
        if (v3)
        {
          v9 = 0;
          v26 = &v31;
          while (1)
          {
            v27 = *v26;
            v28 = v27 - 48;
            if ((v27 - 48) >= 0xA)
            {
              if ((v27 - 65) < 6)
              {
                v28 = v27 - 55;
              }

              else
              {
                if ((v27 - 97) > 5)
                {
                  goto LABEL_84;
                }

                v28 = v27 - 87;
              }
            }

            if (v9 >> 60)
            {
              break;
            }

            v9 = 16 * v9 + v28;
            v26 = (v26 + 1);
            if (!--v3)
            {
LABEL_83:
              LOBYTE(v6) = 0;
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      if (v3)
      {
        v6 = (v3 - 1);
        if (v3 != 1)
        {
          v9 = 0;
          v14 = &v31 + 1;
          while (1)
          {
            v15 = *v14;
            v16 = v15 - 48;
            if ((v15 - 48) >= 0xA)
            {
              if ((v15 - 65) < 6)
              {
                v16 = v15 - 55;
              }

              else
              {
                if ((v15 - 97) > 5)
                {
                  goto LABEL_84;
                }

                v16 = v15 - 87;
              }
            }

            if (v9 >> 60)
            {
              break;
            }

            v13 = 16 * v9 >= v16;
            v9 = 16 * v9 - v16;
            if (!v13)
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v6 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
        result = v34;
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v17 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            if (v6)
            {
              v18 = v6 + 1;
              while (1)
              {
                v19 = *v18;
                v20 = v19 - 48;
                if ((v19 - 48) >= 0xA)
                {
                  if ((v19 - 65) < 6)
                  {
                    v20 = v19 - 55;
                  }

                  else
                  {
                    if ((v19 - 97) > 5)
                    {
                      goto LABEL_84;
                    }

                    v20 = v19 - 87;
                  }
                }

                if (v9 >> 60)
                {
                  goto LABEL_84;
                }

                v9 = 16 * v9 + v20;
                ++v18;
                if (!--v17)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_85;
          }

          goto LABEL_84;
        }

        goto LABEL_95;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v9 = 0;
          if (v6)
          {
            while (1)
            {
              v24 = *v6;
              v25 = v24 - 48;
              if ((v24 - 48) >= 0xA)
              {
                if ((v24 - 65) < 6)
                {
                  v25 = v24 - 55;
                }

                else
                {
                  if ((v24 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v25 = v24 - 87;
                }
              }

              if (v9 >> 60)
              {
                goto LABEL_84;
              }

              v9 = 16 * v9 + v25;
              ++v6;
              if (!--v4)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_85;
        }

LABEL_84:
        v9 = 0;
        LOBYTE(v6) = 1;
        goto LABEL_85;
      }

      if (v4 >= 1)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          if (v6)
          {
            v10 = v6 + 1;
            while (1)
            {
              v11 = *v10;
              v12 = v11 - 48;
              if ((v11 - 48) >= 0xA)
              {
                if ((v11 - 65) < 6)
                {
                  v12 = v11 - 55;
                }

                else
                {
                  if ((v11 - 97) > 5)
                  {
                    goto LABEL_84;
                  }

                  v12 = v11 - 87;
                }
              }

              if (v9 >> 60)
              {
                goto LABEL_84;
              }

              v13 = 16 * v9 >= v12;
              v9 = 16 * v9 - v12;
              if (!v13)
              {
                goto LABEL_84;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_83;
              }
            }
          }

LABEL_85:
          v29 = v6;
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      __break(1u);
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v9 = sub_100334590(v33, v34, 16);
  v29 = v30;
LABEL_86:

  if (v29)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

unint64_t sub_10000DF10()
{
  result = qword_1004311C8;
  if (!qword_1004311C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004311C8);
  }

  return result;
}

unint64_t sub_10000DF64()
{
  result = qword_1004311D0;
  if (!qword_1004311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004311D0);
  }

  return result;
}

void *sub_10000DFC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&qword_1004311C0, &qword_100399AB0);
  v10 = *(type metadata accessor for ALWiFiScanSingleAccessPoint() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ALWiFiScanSingleAccessPoint() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000E1E0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_10000E234(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_10000E290(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  v5 = (*(*v1 + 152))(v4);
  v5(a1);
}

uint64_t sub_10000E44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ALWiFiNotification();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v11 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = v44;
  result = (*(**(a2 + 48) + 200))(a1);
  if (!v14)
  {
    v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v9;
    v35 = a2;
    v36 = v8;
    v16 = v37;
    v44 = 0;
    ALWiFiNotification._scanResult.getter();
    v17 = type metadata accessor for ALWiFiScanResult();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      sub_1000059A8(v13, &unk_10042F310, &unk_100399860);
      v19 = 0;
    }

    else
    {
      v20 = ALWiFiScanResult._accessPoints.getter();
      (*(v18 + 8))(v13, v17);
      v19 = *(v20 + 16);
    }

    v21 = v16;
    v22 = v33;
    v23 = v34;
    v24 = v38;
    v25 = v10;
    (*(v38 + 16))(v33, a1, v34);
    v26 = v24;
    v27 = v22;
    v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v35;
    (*(v26 + 32))(v29 + v28, v27, v23);
    *(v29 + ((v25 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    aBlock[4] = sub_100003EEC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100407EB0;
    v30 = _Block_copy(aBlock);

    v31 = v36;
    static DispatchQoS.unspecified.getter();
    aBlock[7] = &_swiftEmptyArrayStorage;
    sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    v32 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v41 + 8))(v21, v32);
    (*(v39 + 8))(v31, v40);
  }

  return result;
}

uint64_t sub_10000E964()
{
  v1 = type metadata accessor for ALWiFiNotification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t static ALWiFiNotifications.serializedIndications(results:isLastBatch:)(uint64_t a1, char a2)
{
  v2 = type metadata accessor for ALWiFiNotifications();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALWiFiNotifications.init(_results:_isLastBatch:)();
  v6 = ALWiFiNotifications.serializedData()();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t ALWiFiNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALWiFiNotifications();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  __chkstk_darwin(v10);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000EF88(v12);
  if (!v1)
  {
    v37 = v0;
    v38 = v5;
    v13 = v42;
    v39 = v9;
    v40 = v6;
    v41 = v7;
    sub_100013A88(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &unk_10036D208);
    v2 = Message.serializedData(partial:)();
    v15 = v14;
    sub_100014DD8(v12, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v36 = 0;
    v17 = v39;
    corelog.getter(v39);
    v18 = v13;
    v19 = v17;
    v20 = v38;
    v21 = v3;
    (*(v18 + 16))(v38, v37, v3);
    sub_1000150EC(v2, v15);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    sub_100005B2C(v2, v15);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v24 = 136446466;
      v35 = v23;
      v25 = ALWiFiNotifications.description.getter();
      v26 = v20;
      v28 = v27;
      (*(v18 + 8))(v26, v21);
      v29 = sub_10000234C(v25, v28, &v43);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      sub_1000150EC(v2, v15);
      v30 = Data.description.getter();
      v32 = v31;
      sub_100005B2C(v2, v15);
      v33 = sub_10000234C(v30, v32, &v43);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v35, "#WiFi,serializedData,notif,%{public}s,data,%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v20, v21);
    }

    (*(v41 + 8))(v19, v40);
  }

  return v2;
}

uint64_t sub_10000EF88@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALWiFiNotification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v11 = __chkstk_darwin(v10 - 8);
  v35 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (v30 - v13);
  sub_1000094C4(a1);
  sub_100009540(4);
  sub_10000F3AC(v14);
  v15 = ALWiFiNotifications.results.getter();
  v16 = *(v15 + 16);
  if (v16)
  {
    v32 = v1;
    v33 = a1;
    v34 = v2;
    v30[1] = v15;
    v31 = v14;
    v17 = *v14;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v36 = *(v18 + 56);
    v37 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    v23 = v39;
    do
    {
      v24 = v22;
      v37(v9, v20, v6);
      sub_10000F3C4(v23);
      (*v21)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1000133BC(0, v17[2] + 1, 1, v17, &qword_10041C7A0, &qword_100374190, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        v17 = sub_1000133BC((v25 > 1), v26 + 1, 1, v17, &qword_10041C7A0, &qword_100374190, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v17[2] = v26 + 1;
      v23 = v39;
      sub_100013598(v39, v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      v20 += v36;
      --v16;
      v22 = v24;
    }

    while (v16);

    v14 = v31;
    *v31 = v17;
  }

  else
  {
  }

  v27 = ALWiFiNotifications.isLastBatch.getter();
  sub_100014654(v27 & 1);
  v28 = v35;
  sub_100014A4C(v14, v35, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  sub_100014AB4(v28);
  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  sub_100013A88(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &unk_10036D208);
  static ALProtobufUtil.debug<A>(_:)();
  return sub_100014DD8(v14, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

void sub_10000F3C4(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  __chkstk_darwin(v2 - 8);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  __chkstk_darwin(v4 - 8);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v8 - 8);
  v54 = &v47 - v9;
  v10 = type metadata accessor for ALWiFiScanResult();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  __chkstk_darwin(v12 - 8);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v53 = type metadata accessor for ALTimeStamp();
  v17 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_10041C798, &qword_100374188);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - v20;
  v22 = type metadata accessor for ALWiFiNotification.NotiType();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v47 - v27;
  sub_10000FBD0(a1);
  ALWiFiNotification._type.getter();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000059A8(v21, &qword_10041C798, &qword_100374188);
  }

  else
  {
    (*(v23 + 32))(v28, v21, v22);
    (*(v23 + 16))(v26, v28, v22);
    v29 = sub_10000FC08(v26);
    sub_10000FF18(v29);
    (*(v23 + 8))(v28, v22);
  }

  ALWiFiNotification._timestamp.getter();
  v30 = v53;
  v31 = (*(v17 + 48))(v16, 1, v53);
  v32 = v54;
  if (v31 == 1)
  {
    sub_1000059A8(v16, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    v33 = v47;
    (*(v17 + 32))(v47, v16, v30);
    v34 = v48;
    sub_10000B7CC(v48);
    sub_100010EFC(v34);
    (*(v17 + 8))(v33, v30);
  }

  ALWiFiNotification._scanResult.getter();
  v36 = v55;
  v35 = v56;
  if ((*(v55 + 48))(v32, 1, v56) == 1)
  {
    sub_1000059A8(v32, &unk_10042F310, &unk_100399860);
  }

  else
  {
    v37 = v49;
    (*(v36 + 32))(v49, v32, v35);
    v38 = v50;
    sub_10001153C(v50);
    sub_100013778(v38);
    (*(v36 + 8))(v37, v35);
  }

  v39 = ALWiFiNotification._associatedMac.getter();
  if ((v40 & 1) == 0)
  {
    v41 = v51;
    v42 = v39;
    sub_100013AE8(v51);
    sub_100013E34(1);
    v43 = v52;
    sub_100012470(v52);
    sub_100013E64(v43);
    sub_100013FB8(v43);
    sub_100012C18(v42);
    sub_100013E64(v43);
    sub_1000141E8(v41);
  }

  v44 = ALWiFiNotification._simulated.getter();
  if (v44 != 2)
  {
    sub_100014540(v44 & 1);
  }

  v45 = ALWiFiNotification._available.getter();
  if (v45 != 2)
  {
    sub_100014588(v45 & 1);
  }

  isAp = ALWiFiNotification._isApAwake.getter();
  if (isAp != 2)
  {
    sub_1001032FC(isAp & 1);
  }

  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  sub_100013A88(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &unk_10037F7D0);
  static ALProtobufUtil.debug<A>(_:)();
}

uint64_t sub_10000FB48@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_10000FC08(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiNotification.NotiType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for ALWiFiNotification.NotiType.unknown(_:))
  {
    return 0;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.available(_:))
  {
    return 1;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.power(_:))
  {
    return 2;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanReady(_:))
  {
    return 3;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scan(_:))
  {
    return 4;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanError(_:))
  {
    return 5;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanErrorBusy(_:))
  {
    return 6;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.linkStatus(_:))
  {
    return 7;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.roam(_:))
  {
    return 8;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.backgroundEntry(_:))
  {
    return 9;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.backgroundExit(_:))
  {
    return 10;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.trackingAvailable(_:))
  {
    return 11;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.wow(_:))
  {
    return 12;
  }

  if (v4 == enum case for ALWiFiNotification.NotiType.scanCache(_:))
  {
    return 13;
  }

  if (v4 != enum case for ALWiFiNotification.NotiType.peerRanging(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 14;
}

uint64_t sub_10000FE54(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    a4(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v13 + v15) = a1;
  return result;
}

uint64_t sub_10000FF80(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  __chkstk_darwin(v3 - 8);
  v49 = &v40 - v4;
  v5 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  __chkstk_darwin(v5 - 8);
  v46 = &v40 - v6;
  v7 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type) = 15;
  v14 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType) = 15;
  v41 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power) = 2;
  v15 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v42 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v43 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v44 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated) = 2;
  v45 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available) = 2;
  v47 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown) = 2;
  v48 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake) = 2;
  v19 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v9, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v20 = a1 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v19) = *v20;
  LOBYTE(v20) = *(v20 + 4);
  swift_beginAccess();
  *v12 = v19;
  *(v12 + 4) = v20;
  v21 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  swift_beginAccess();
  *(v1 + v13) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v14) = v22;
  v23 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v41;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  v26 = v46;
  sub_10000A0A4(a1 + v25, v46, &qword_10041CB30, &qword_100374560);
  v27 = v42;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_10041CB30, &qword_100374560);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  v29 = v49;
  sub_10000A0A4(a1 + v28, v49, &qword_10041CB38, &qword_100374568);
  v30 = v43;
  swift_beginAccess();
  sub_10000AD64(v29, v1 + v30, &qword_10041CB38, &qword_100374568);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v44;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v45;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v47;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v37);
  v38 = v48;
  swift_beginAccess();
  *(v1 + v38) = a1;
  return v1;
}

uint64_t sub_100010578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void *sub_1000106D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100010820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000108EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001094C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_100010A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100010B80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100010CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  result = swift_beginAccess();
  if (v9[24])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((v9[32] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[33] != 7)
  {
    sub_100010EA8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100011070(v9, a1, a2, a3);
  sub_100011314(v9, a1, a2, a3);
  sub_100011A34(v9, a1, a2, a3);
  sub_100011CF8(v9, a1, a2, a3);
  sub_100011F20(v9, a1, a2, a3);
  sub_100012148(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

unint64_t sub_100010EA8()
{
  result = qword_100418B88;
  if (!qword_100418B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418B88);
  }

  return result;
}

uint64_t sub_100010EFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v10 = swift_allocObject();
    sub_10000FF80(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

uint64_t sub_100011070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418378, &qword_10036C850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418378, &qword_10036C850);
  }

  sub_10000D84C(v7, v11, type metadata accessor for Proto_Gpsd_Response);
  sub_100012428(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response, &unk_1003948D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for Proto_Gpsd_Response);
}

uint64_t sub_1000112AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_Indication(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418380, &qword_10036C858);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418380, &qword_10036C858);
  }

  sub_10000D84C(v7, v11, type metadata accessor for Proto_Gpsd_Indication);
  sub_100012428(&qword_100418BF8, type metadata accessor for Proto_Gpsd_Indication, &unk_100394A38);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for Proto_Gpsd_Indication);
}

void sub_10001153C(char *a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v33 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ALTimeStamp();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011A1C(a1);
  ALWiFiScanResult._scanTimestamp.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000059A8(v12, &qword_100418C70, qword_10039A8A0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_10000B7CC(v9);
    sub_100012370(v9);
    (*(v14 + 8))(v16, v13);
  }

  v17 = ALWiFiScanResult._accessPoints.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v27 = a1;
    v28 = v17;
    v19 = *a1;
    v20 = v29;
    v21 = *(v33 + 16);
    v22 = v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v30 = *(v33 + 72);
    v31 = v21;
    v33 += 16;
    v23 = (v33 - 8);
    do
    {
      v31(v6, v22, v20);
      sub_100012470(v4);
      sub_100012688();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000133BC(0, v19[2] + 1, 1, v19, &qword_10041C7B0, &qword_1003741A0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        v19 = sub_1000133BC((v24 > 1), v25 + 1, 1, v19, &qword_10041C7B0, &qword_1003741A0, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      (*v23)(v6, v20);
      v19[2] = v25 + 1;
      sub_100013598(v4, v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v22 += v30;
      --v18;
    }

    while (v18);

    *v27 = v19;
  }

  else
  {
  }

  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  sub_100013A88(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F668);
  static ALProtobufUtil.debug<A>(_:)();
}

uint64_t sub_100011A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418388, &qword_10036C860);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418388, &qword_10036C860);
  }

  sub_10000D84C(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response, &unk_10036CDD0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t sub_100011C5C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  UnknownStorage.init()();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100011CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418390, &qword_10036C868);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418390, &qword_10036C868);
  }

  sub_10000D84C(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  sub_100012428(&qword_1004184A8, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication, &unk_10036CF38);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t sub_100011F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418388, &qword_10036C860);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418388, &qword_10036C860);
  }

  sub_10000D84C(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response, &unk_10036CDD0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for CLP_LogEntry_AONLoc_Response);
}

uint64_t sub_100012148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418398, &qword_10036C870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418398, &qword_10036C870);
  }

  sub_10000D84C(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  sub_100012428(&qword_1004184C0, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication, &unk_10036D0A0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v11, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
}

uint64_t sub_100012370(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100012428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *sub_100012470@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[8]) = 4;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  *(a1 + result[13]) = 4;
  v8 = a1 + result[14];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_100012524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    sub_100012428(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification, &unk_1003939E8);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100012688()
{
  v0 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  __chkstk_darwin(v0 - 8);
  v2 = &v35 - v1;
  v38 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v38 - 8);
  v4 = __chkstk_darwin(v38);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v35 - v6;
  v7 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = ALWiFiScanSingleAccessPoint._mac.getter();
  if ((v18 & 1) == 0)
  {
    sub_100012C18(v17);
  }

  v19 = ALWiFiScanSingleAccessPoint._ssid.getter();
  if (v20)
  {
    sub_1000FFAD4(v19, v20);
  }

  v21 = ALWiFiScanSingleAccessPoint._rssidB.getter();
  if ((v21 & 0x100000000) == 0)
  {
    sub_100012ED8(v21);
  }

  v22 = ALWiFiScanSingleAccessPoint._channel.getter();
  if ((v22 & 0x100000000) == 0)
  {
    sub_100012F28(v22);
  }

  v23 = ALWiFiScanSingleAccessPoint._ageSec.getter();
  if ((v23 & 0x100000000) == 0)
  {
    sub_10001330C(*&v23);
  }

  v24 = ALWiFiScanSingleAccessPoint._isMoving.getter();
  if (v24 != 2)
  {
    sub_100100104(v24 & 1);
  }

  v25 = ALWiFiScanSingleAccessPoint._frequencyKhz.getter();
  if ((v25 & 0x100000000) == 0)
  {
    sub_1001002F8(v25);
  }

  v26 = ALWiFiScanSingleAccessPoint._isAph.getter();
  if (v26 != 2)
  {
    sub_1000FFFFC(v26 & 1);
  }

  ALWiFiScanSingleAccessPoint._band.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000059A8(v9, &qword_10042F320, &qword_100399870);
    goto LABEL_28;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v14, v16, v10);
  v27 = (*(v11 + 88))(v14, v10);
  if (v27 != enum case for ALWiFiScanSingleAccessPoint.Band.unknown(_:))
  {
    if (v27 == enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:))
    {
      v28 = 1;
      goto LABEL_27;
    }

    if (v27 == enum case for ALWiFiScanSingleAccessPoint.Band.band5G(_:))
    {
      v28 = 2;
      goto LABEL_27;
    }

    if (v27 == enum case for ALWiFiScanSingleAccessPoint.Band.band6G(_:))
    {
      v28 = 3;
      goto LABEL_27;
    }

    (*(v11 + 8))(v14, v10);
  }

  v28 = 0;
LABEL_27:
  sub_100013344(v28);
  (*(v11 + 8))(v16, v10);
LABEL_28:
  ALWiFiScanSingleAccessPoint._mode.getter();
  v29 = v38;
  if ((*(v3 + 48))(v2, 1, v38) == 1)
  {
    return sub_1000059A8(v2, &qword_10041C780, &qword_100374180);
  }

  v31 = v37;
  (*(v3 + 32))(v37, v2, v29);
  v32 = v36;
  (*(v3 + 16))(v36, v31, v29);
  v33 = (*(v3 + 88))(v32, v29);
  if (v33 != enum case for ALWiFiScanSingleAccessPoint.Mode.unknown(_:))
  {
    if (v33 == enum case for ALWiFiScanSingleAccessPoint.Mode.ibss(_:))
    {
      v34 = 1;
      goto LABEL_38;
    }

    if (v33 == enum case for ALWiFiScanSingleAccessPoint.Mode.infra(_:))
    {
      v34 = 2;
      goto LABEL_38;
    }

    if (v33 == enum case for ALWiFiScanSingleAccessPoint.Mode.others(_:))
    {
      v34 = 3;
      goto LABEL_38;
    }

    (*(v3 + 8))(v32, v29);
  }

  v34 = 0;
LABEL_38:
  sub_1000FFCF0(v34);
  return (*(v3 + 8))(v31, v29);
}

uint64_t sub_100012C18(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_100012C64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100012DA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100012ED8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100012F28(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100012F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_10000B8B0(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100013374(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100013718(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10001317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012F60(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
      sub_100013374(&qword_100418C68, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &unk_1003936F0);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    if (*(v3 + v6[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + v6[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + v6[9]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10001330C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_100013344(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_100013374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000133BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100013598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + *(v7 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v4 + *(v7 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100013718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100013778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v10 = swift_allocObject();
    sub_10000FF80(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CB38, &qword_100374568);
  return swift_endAccess();
}

uint64_t sub_100013900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000139CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100013A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013AE8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(a1 + *(v2 + 20)) = 2;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_100013B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 40) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 56) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 64) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  v11 = *(v9 + 80);
  if (v11 >> 60 != 15)
  {
    v12 = *(v9 + 72);
    sub_1000150EC(v12, *(v9 + 80));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    sub_10000CA64(v12, v11);
  }

  sub_100013F1C(v9, a1, a2, a3);
  sub_10001435C(v9, a1, a2, a3);
  sub_1000143F4(v9, a1, a2, a3);
  sub_1000145D0(v9, a1, a2, a3);
  sub_100014684(v9, a1, a2, a3);
  sub_100014948(v9, a1, a2, a3);
  sub_100014720(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100013E34(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_100013E64(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CB28, &qword_100374558);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_100013F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 3)
  {
    sub_100014194();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100013FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_10041CB28, &qword_100374558);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v7[8]) = 4;
  v12 = a1 + v7[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v7[11]) = 2;
  *(a1 + v7[12]) = 2;
  *(a1 + v7[13]) = 4;
  v14 = a1 + v7[14];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CB28, &qword_100374558);
  }

  return result;
}

unint64_t sub_100014194()
{
  result = qword_1004183B8;
  if (!qword_1004183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004183B8);
  }

  return result;
}

uint64_t sub_1000141E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification._StorageClass(0);
    v10 = swift_allocObject();
    sub_10000FF80(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CB30, &qword_100374560);
  return swift_endAccess();
}

uint64_t sub_10001435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000143F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014478(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    a4(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v13 + v15) = a1 & 1;
  return result;
}

uint64_t sub_1000145D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014654(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_100014684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042B8C8, &unk_100393490);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042B8C8, &unk_100393490);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042B8C8, &unk_100393490);
  }

  sub_10000B8B0(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  sub_100013374(&qword_10042B970, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &unk_100393B50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100013718(v11, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

uint64_t sub_100014948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000149E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014AB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1000095F8(v11);
    *(v2 + v7) = v10;
  }

  sub_10000D84C(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418390, &qword_10036C868);
  return swift_endAccess();
}

int *sub_100014C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_100014E38(v5, a1, a2, a3);
  sub_100014EB0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100014D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100014DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100014E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 40)) != 8)
  {
    sub_10028A1BC();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100014F3C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse, &qword_100418378, &qword_10036C850);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication, &qword_100418380, &qword_10036C858);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse, &qword_100418388, &qword_10036C860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication, &qword_100418390, &qword_10036C868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, &qword_100418388, &qword_10036C860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication, &qword_100418398, &qword_10036C870);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100015060()
{
  sub_10000CA64(*(v0 + 72), *(v0 + 80));

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info, &qword_10042B8C8, &unk_100393490);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000150EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000151A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DataClient(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v15);
  sub_100015140(v3, v11);
  sub_100015140(v3, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v25[0] = a1;
    v25[1] = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543618;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v18 + 4) = Strong;
    *v19 = Strong;
    sub_10001543C(v11);
    *(v18 + 12) = 1024;
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    sub_10001543C(v9);
    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "leeching to %{public}@, valid %{BOOL}d", v18, 0x12u);
    sub_1000059A8(v19, &unk_10042F020, &qword_100399AE0);
  }

  else
  {
    sub_10001543C(v9);

    sub_10001543C(v11);
  }

  (*(v13 + 8))(v15, v12);
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    NSXPCConnection.onData(_:)();
  }
}

uint64_t sub_10001543C(uint64_t a1)
{
  v2 = type metadata accessor for DataClient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NSXPCConnection.onData(_:)()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  aBlock[4] = sub_1003035EC;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003035F0;
  aBlock[3] = &unk_100406A38;
  v6 = _Block_copy(aBlock);
  v7 = v0;

  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  _Block_release(v6);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100024A2C(&qword_10042EF70, &qword_1003990F8);
  if (swift_dynamicCast())
  {
    v9 = v14[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 onData:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    xpclog.getter(v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid proxy", v13, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100015720()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015758(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000157A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
    sub_100012428(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &unk_10037F7D0);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t *sub_10001593C()
{
  v1 = *(v0 + 16);
  result = sub_100004064();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(**result + 192);

    v3(v1);
  }

  return result;
}

uint64_t sub_1000159B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0) + 20));
  result = sub_100015C9C(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
    swift_beginAccess();
    if (*(v8 + v11) != 15)
    {
      sub_100015F84();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scanType;
    swift_beginAccess();
    if (*(v8 + v12) != 15)
    {
      sub_1001989AC();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__power;
    swift_beginAccess();
    if (*(v8 + v13) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100015FE4(v8, a1, a2, a3);
    sub_1000169F4(v8, a1, a2, a3);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__simulated, 8);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__available, 9);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isInvoluntaryLinkDown, 10);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isApAwake, 11);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100015C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

void sub_100015EC4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = __CFADD__(v2, a1);
  v4 = v2 + a1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = v4;
    sub_1000040B4();
  }
}

uint64_t sub_100015EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100015F84()
{
  result = qword_100423C40;
  if (!qword_100423C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100423C40);
  }

  return result;
}

uint64_t sub_100015FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB30, &qword_100374560);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CB30, &qword_100374560);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB30, &qword_100374560);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
  sub_100015EDC(&qword_10041DE50, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState, &unk_10037F500);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState);
}

uint64_t sub_10001620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_1000162D0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000162D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CB28, &qword_100374558);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CB28, &qword_100374558);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB28, &qword_100374558);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
}

int *sub_1000164EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    sub_100198A00();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100016704(v5, a1, a2, a3);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  sub_100016968(v5, a1, a2, a3);
  sub_1000168F0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100016704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10001677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000167F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100016874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000168F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if ((*(a1 + *(result + 56) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100016968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  if (*(a1 + *(result + 52)) != 4)
  {
    sub_100016F4C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000169F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CB38, &qword_100374568);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CB38, &qword_100374568);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CB38, &qword_100374568);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  sub_100015EDC(&qword_10041C790, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &unk_10037F668);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
}

uint64_t sub_100016C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100016E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016C1C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
      sub_100015EDC(&qword_10041C788, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &unk_10037F398);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

unint64_t sub_100016F4C()
{
  result = qword_1004183C0;
  if (!qword_1004183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004183C0);
  }

  return result;
}

uint64_t sub_100016FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10001703C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__associatedState, &qword_10041CB30, &qword_100374560);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__scan, &qword_10041CB38, &qword_100374568);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000170F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 249)
  {
    v12 = *(a1 + a3[8]);
    if (v12 <= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = *(a1 + a3[8]);
    }

    v14 = v13 - 6;
    if (v12 >= 6)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100024A2C(&qword_100418368, &qword_10036C840);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v17 = sub_100024A2C(&qword_100418370, &qword_10036C848);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100017284(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 249)
  {
    *(a1 + a4[8]) = a2 + 6;
    return result;
  }

  v13 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10001740C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000174B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100017618(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000176D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100017828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

unint64_t sub_100017A64(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100017A74(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100017A84(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100017A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100017B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_100017CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100017E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100017F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1000180E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_100018294(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10001844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1000185F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10001869C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xD)
    {
      v11 = 13;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 13;
    if (v10 >= 0xD)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100018804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  return result;
}

uint64_t sub_1000188BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 250)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000189F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 250)
  {
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100018B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 249)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100018C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100018DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100018EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100018FD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 251)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 4;
    if (v14 >= 4)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100019160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 251)
  {
    *(a1 + a4[7]) = a2 + 4;
  }

  else
  {
    v15 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000193C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ExtensionFieldValueSet();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_100019568(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ExtensionFieldValueSet();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_10041C5D0, &qword_100373E20);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_10041C5D8, qword_100373E28);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_100019714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100019780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000197F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000198AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100019DFC(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

uint64_t sub_100019E0C(uint64_t a1)
{
  if ((a1 + 1) < 8)
  {
    return a1 + 1;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_100019E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100019EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 4;
  }

  return result;
}

uint64_t sub_100019F9C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001A048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001A114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 183)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0x48)
    {
      v11 = 72;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 72;
    if (v10 >= 0x48)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001A248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 183)
  {
    *(a1 + *(a4 + 20)) = a2 + 72;
  }

  else
  {
    v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001A468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10001A524(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 236)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 0x13)
    {
      v15 = 19;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 19;
    if (v14 >= 0x13)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10001A6B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 236)
  {
    *(a1 + a4[7]) = a2 + 19;
  }

  else
  {
    v15 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10001A83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10001A970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001AA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001AB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_10001AC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 60));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10001AD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 60)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001AEC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10001AFF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10001B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 8;
  if (v14 >= 8)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 8;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}