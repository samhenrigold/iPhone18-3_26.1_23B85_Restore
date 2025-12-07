uint64_t sub_1009CC97C(uint64_t a1)
{
  sub_1009CCAA8(sub_100A1A8A0, &unk_101642C30);
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009CCAA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 104);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

BOOL sub_1009CCD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v6, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
    return 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = type metadata accessor for SafeLocation(0);
    v11 = sub_1005C8A30(v10, *(a1 + *(v12 + 52)));
    (*(v8 + 8))(v10, v7);
  }

  return v11;
}

uint64_t sub_1009CCF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v15;
  v8[12] = v16;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for Date();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for SystemInfo.DeviceLockState();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v8[21] = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[27] = v12;
  v8[28] = *(v12 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1009CD1A8, 0, 0);
}

uint64_t sub_1009CD1A8()
{
  v154 = v0;
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v0 + 280) = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 32);
  *(v0 + 340) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  *(v0 + 336) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);

  v7 = 0;
  while (v6)
  {
    v9 = *(v0 + 48);
LABEL_12:
    *(v0 + 288) = v6;
    *(v0 + 296) = v7;
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v13 + 16);
    v16 = *(v9 + 48) + *(v13 + 72) * (__clz(__rbit64(v6)) | (v7 << 6));
    *(v0 + 304) = v15;
    *(v0 + 312) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v140 = v15;
    v15(v12, v16, v14);
    (*(v13 + 32))(v11, v12, v14);
    v149 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v139 = (v6 - 1) & v6;
    v145 = *(v0 + 336);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
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
    os_log(_:dso:log:_:_:)(v149, &_mh_execute_header, v21, "ownedBeaconRecord(for uuid: %@)", 31, 2, v22);

    static SystemInfo.lockState.getter();
    (*(v19 + 104))(v18, v145, v20);
    sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v19 + 8);
    v26(v18, v20);
    v26(v17, v20);
    if (v23)
    {
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 168);
      v30 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v21, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      (*(v28 + 56))(v29, 1, 1, v27);
      goto LABEL_17;
    }

    v31 = *(v0 + 264);
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
    v35 = sub_100025044();
    *(swift_task_alloc() + 16) = v31;
    sub_1012BBBD0(sub_100406F84, v35, v34);
    *(v0 + 320) = 0;

    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
LABEL_17:
      sub_10000B3A8(*(v0 + 168), &unk_1016A9A20, &qword_10138B280);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 256);
      v37 = *(v0 + 264);
      v38 = *(v0 + 216);
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177B780);
      v140(v36, v37, v38);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 256);
      v44 = *(v0 + 264);
      v45 = *(v0 + 216);
      v46 = *(v0 + 224);
      if (v42)
      {
        v47 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v153[0] = v150;
        *v47 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v146 = v44;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v41;
        v50 = v49;
        v51 = *(v46 + 8);
        v51(v43, v45);
        v52 = sub_1000136BC(v48, v50, v153);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v40, v143, "Received separation alert request for unknown beacon: %s", v47, 0xCu);
        sub_100007BAC(v150);

        v51(v146, v45);
      }

      else
      {

        v8 = *(v46 + 8);
        v8(v43, v45);
        v8(v44, v45);
      }

      v6 = v139;
    }

    else
    {
      v53 = *(v0 + 264);
      v54 = *(v0 + 64);
      sub_100A18C9C(*(v0 + 168), *(v0 + 208), type metadata accessor for OwnedBeaconRecord);
      v55 = type metadata accessor for LeashRecord(0);
      if (sub_1005C8A30(v53, *(v54 + *(v55 + 24))))
      {
        if (sub_1006FBA08(*(v0 + 208), *(v0 + 56)))
        {
          v137 = swift_task_alloc();
          *(v0 + 328) = v137;
          *v137 = v0;
          v137[1] = sub_1009CE210;
          v138 = *(v0 + 208);

          return sub_100A078AC(v138);
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 264);
        v57 = *(v0 + 240);
        v58 = *(v0 + 216);
        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B780);
        v140(v57, v56, v58);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 264);
        v64 = *(v0 + 240);
        v66 = *(v0 + 216);
        v65 = *(v0 + 224);
        v67 = *(v0 + 208);
        if (v62)
        {
          v68 = swift_slowAlloc();
          v151 = v67;
          v153[0] = swift_slowAlloc();
          v144 = v153[0];
          *v68 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v147 = v63;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v141 = v61;
          v71 = v70;
          v72 = *(v65 + 8);
          v72(v64, v66);
          v73 = sub_1000136BC(v69, v71, v153);

          *(v68 + 4) = v73;
          v74 = v141;
          v75 = v60;
          v76 = "Received separation alert request for unsupported beacon: %s";
          goto LABEL_32;
        }

LABEL_33:

        v87 = *(v65 + 8);
        v87(v64, v66);
        sub_100A1B3C0(v67, type metadata accessor for OwnedBeaconRecord);
        v87(v63, v66);
        v6 = v139;
      }

      else
      {
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 264);
        v78 = *(v0 + 232);
        v79 = *(v0 + 216);
        v80 = type metadata accessor for Logger();
        sub_1000076D4(v80, qword_10177B780);
        v140(v78, v77, v79);
        v60 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        v82 = os_log_type_enabled(v60, v81);
        v63 = *(v0 + 264);
        v65 = *(v0 + 224);
        v64 = *(v0 + 232);
        v67 = *(v0 + 208);
        v66 = *(v0 + 216);
        if (!v82)
        {
          goto LABEL_33;
        }

        v68 = swift_slowAlloc();
        v151 = v67;
        v153[0] = swift_slowAlloc();
        v144 = v153[0];
        *v68 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v147 = v63;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v81;
        v85 = v84;
        v72 = *(v65 + 8);
        v72(v64, v66);
        v86 = sub_1000136BC(v83, v85, v153);

        *(v68 + 4) = v86;
        v74 = v142;
        v75 = v60;
        v76 = "Received separation alert request for non-leashed beacon: %s";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v75, v74, v76, v68, 0xCu);
        sub_100007BAC(v144);

        sub_100A1B3C0(v151, type metadata accessor for OwnedBeaconRecord);
        v72(v147, v66);
        v6 = v139;
      }
    }
  }

  while (2)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v10 < (((1 << *(v0 + 340)) + 63) >> 6))
    {
      v9 = *(v0 + 48);
      v6 = *(v9 + 8 * v10 + 56);
      ++v7;
      if (v6)
      {
        v7 = v10;
        goto LABEL_12;
      }

      continue;
    }

    break;
  }

  v88 = *(v0 + 280);

  if (*(*(v88 + 16) + 16))
  {
    v89 = *(v0 + 280);
    static Date.trustedNow.getter(*(v0 + 128));
    v90 = *(v89 + 16);
    v91 = *(v90 + 16);
    if (v91)
    {
      v92 = *(v0 + 184);
      v93 = v90 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v94 = *(v92 + 72);

      do
      {
        v95 = *(v0 + 192);
        v96 = *(v0 + 128);
        sub_100A1B358(v93, v95, type metadata accessor for OwnedBeaconRecord);
        sub_100A17920(v95, v96);
        sub_100A1B3C0(v95, type metadata accessor for OwnedBeaconRecord);
        v93 += v94;
        --v91;
      }

      while (v91);
    }

    v98 = *(v0 + 112);
    v97 = *(v0 + 120);
    v99 = *(v0 + 104);
    v100 = *(v0 + 88);
    [v100 center];
    v102 = v101;
    v104 = v103;
    [v100 radius];
    v106 = v105;
    [v100 radius];
    v108 = v107;
    Date.init()();
    v109 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v111 = [v109 initWithCoordinate:isa altitude:v102 horizontalAccuracy:v104 verticalAccuracy:-1.0 course:v106 courseAccuracy:v108 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v112 = *(v98 + 8);
    v112(v97, v99);
    [v111 setReferenceFrame:{objc_msgSend(v100, "geoReferenceFrame")}];
    v113 = sub_1010E1130();
    v114 = *(v0 + 280);
    v115 = *(v0 + 128);
    v152 = *(v0 + 104);
    if (v113)
    {
      v116 = *(v0 + 72);
      type metadata accessor for SPSeparationMonitoringError(0);
      *(v0 + 24) = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v117 = *(v0 + 16);
      v116(v117, 1);

      v118 = v115;
    }

    else
    {
      v129 = *(v0 + 96);
      v148 = *(v0 + 128);
      v131 = *(v0 + 72);
      v130 = *(v0 + 80);
      v132 = *(v0 + 56);
      v133 = swift_allocObject();
      v133[2] = v111;
      v133[3] = v132;
      v133[4] = v131;
      v133[5] = v130;
      v133[6] = v114;
      v133[7] = v129;
      v134 = v111;

      sub_100A17E74(v134, sub_100A1AB04, v133);

      v118 = v148;
    }

    v112(v118, v152);
    goto LABEL_47;
  }

  if (qword_101694B70 != -1)
  {
LABEL_54:
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  sub_1000076D4(v119, qword_10177B780);

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v153[0] = v123;
    *v122 = 136315138;
    sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v124 = Set.description.getter();
    v126 = sub_1000136BC(v124, v125, v153);

    *(v122 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v120, v121, "Received separation alert for unknown beacons: %s", v122, 0xCu);
    sub_100007BAC(v123);
  }

  v127 = *(v0 + 72);
  type metadata accessor for SPSeparationMonitoringError(0);
  *(v0 + 40) = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v128 = *(v0 + 32);
  v127(v128, 1);

LABEL_47:

  v135 = *(v0 + 8);

  return v135();
}

uint64_t sub_1009CE210(char a1)
{
  *(*v1 + 341) = a1;

  return _swift_task_switch(sub_1009CE310, 0, 0);
}

uint64_t sub_1009CE310()
{
  v186 = v0;
  v1 = &unk_10138B000;
  if (*(v0 + 341))
  {
    if (qword_101694B70 != -1)
    {
LABEL_62:
      swift_once();
    }

    v2 = v0[38];
    v3 = v0[33];
    v4 = v0[31];
    v5 = v0[27];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B780);
    v2(v4, v3, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[33];
    v11 = v0[31];
    v12 = v0[27];
    v13 = v0[28];
    v14 = v0[26];
    if (v9)
    {
      v180 = v0[33];
      v15 = swift_slowAlloc();
      v175 = v14;
      v16 = swift_slowAlloc();
      v185[0] = v16;
      *v15 = v1[107];
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v11, v12);
      v21 = v17;
      v1 = &unk_10138B000;
      v0 = v169;
      v22 = sub_1000136BC(v21, v19, v185);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received separation alert request for paused beacon: %s", v15, 0xCu);
      sub_100007BAC(v16);

      sub_100A1B3C0(v175, type metadata accessor for OwnedBeaconRecord);
      v20(v180, v12);
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v11, v12);
      sub_100A1B3C0(v14, type metadata accessor for OwnedBeaconRecord);
      v35(v10, v12);
    }
  }

  else
  {
    v23 = v0[35];
    sub_100A1B358(v0[26], v0[25], type metadata accessor for OwnedBeaconRecord);
    v24 = *(v23 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 16) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v166 = v0[35];
      v24 = sub_100A5C050(0, v24[2] + 1, 1, v24);
      *(v166 + 16) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v167 = v0[35];
      *(v167 + 16) = sub_100A5C050((v26 > 1), v27 + 1, 1, v24);
    }

    v28 = v0[35];
    v29 = v0[33];
    v30 = v0[27];
    v31 = v0[28];
    v32 = v0[25];
    v33 = v0[23];
    sub_100A1B3C0(v0[26], type metadata accessor for OwnedBeaconRecord);
    (*(v31 + 8))(v29, v30);
    v34 = *(v28 + 16);
    *(v34 + 16) = v27 + 1;
    sub_100A18C9C(v32, v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, type metadata accessor for OwnedBeaconRecord);
  }

  v36 = v0[37];
  v37 = (v0[36] - 1) & v0[36];
  v170 = v0[40];
  v168 = v1[107];
  while (v37)
  {
    v39 = v0[6];
LABEL_20:
    v0[36] = v37;
    v0[37] = v36;
    v41 = v0[33];
    v42 = v0[34];
    v44 = v0[27];
    v43 = v0[28];
    v45 = *(v43 + 16);
    v46 = *(v39 + 48) + *(v43 + 72) * (__clz(__rbit64(v37)) | (v36 << 6));
    v0[38] = v45;
    v0[39] = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v171 = v45;
    v45(v42, v46, v44);
    (*(v43 + 32))(v41, v42, v44);
    v181 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v174 = (v37 - 1) & v37;
    v176 = *(v0 + 84);
    v48 = v0[19];
    v47 = v0[20];
    v1 = v0[17];
    v49 = v0[18];
    v50 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_101385D80;
    v52 = UUID.uuidString.getter();
    v54 = v53;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_100008C00();
    *(v51 + 32) = v52;
    *(v51 + 40) = v54;
    os_log(_:dso:log:_:_:)(v181, &_mh_execute_header, v50, "ownedBeaconRecord(for uuid: %@)", 31, 2, v51);

    static SystemInfo.lockState.getter();
    (*(v49 + 104))(v48, v176, v1);
    sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = *(v49 + 8);
    v55(v48, v1);
    v55(v47, v1);
    if (v52)
    {
      v56 = v0[22];
      v57 = v0[23];
      v58 = v0[21];
      v59 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v50, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      (*(v57 + 56))(v58, 1, 1, v56);
LABEL_25:
      sub_10000B3A8(v0[21], &unk_1016A9A20, &qword_10138B280);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v65 = v0[32];
      v66 = v0[33];
      v67 = v0[27];
      v68 = type metadata accessor for Logger();
      sub_1000076D4(v68, qword_10177B780);
      v171(v65, v66, v67);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v0[32];
      v73 = v0[33];
      v75 = v0[27];
      v74 = v0[28];
      if (v71)
      {
        v76 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v185[0] = v182;
        *v76 = v168;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v177 = v73;
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v1 = v78;
        v79 = *(v74 + 8);
        v79(v72, v75);
        v80 = sub_1000136BC(v77, v1, v185);
        v0 = v169;

        *(v76 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v69, v70, "Received separation alert request for unknown beacon: %s", v76, 0xCu);
        sub_100007BAC(v182);

        v79(v177, v75);
      }

      else
      {

        v38 = *(v74 + 8);
        v38(v72, v75);
        v38(v73, v75);
      }

      goto LABEL_13;
    }

    v60 = v0[33];
    v61 = v0[22];
    v62 = v0[23];
    v63 = v0[21];
    v64 = sub_100025044();
    *(swift_task_alloc() + 16) = v60;
    sub_1012BBBD0(sub_100406F84, v64, v63);
    v0[40] = v170;

    if ((*(v62 + 48))(v63, 1, v61) == 1)
    {
      goto LABEL_25;
    }

    v81 = v0[33];
    v82 = v0[8];
    sub_100A18C9C(v0[21], v0[26], type metadata accessor for OwnedBeaconRecord);
    v83 = type metadata accessor for LeashRecord(0);
    if (sub_1005C8A30(v81, *(v82 + *(v83 + 24))))
    {
      if (sub_1006FBA08(v0[26], v0[7]))
      {
        v164 = swift_task_alloc();
        v0[41] = v164;
        *v164 = v0;
        v164[1] = sub_1009CE210;
        v165 = v0[26];

        return sub_100A078AC(v165);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v84 = v0[33];
      v85 = v0[30];
      v86 = v0[27];
      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_10177B780);
      v171(v85, v84, v86);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      v90 = os_log_type_enabled(v88, v89);
      v91 = v0[33];
      v92 = v0[30];
      v1 = v0[27];
      v93 = v0[28];
      v94 = v0[26];
      if (v90)
      {
        v183 = v0[26];
        v95 = swift_slowAlloc();
        v178 = v91;
        v96 = swift_slowAlloc();
        v185[0] = v96;
        *v95 = v168;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v1;
        v173 = v1;
        v1 = v99;
        v172 = *(v93 + 8);
        v172(v92, v98);
        v100 = sub_1000136BC(v97, v1, v185);
        v0 = v169;

        *(v95 + 4) = v100;
        v101 = v89;
        v102 = v88;
        v103 = "Received separation alert request for unsupported beacon: %s";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v102, v101, v103, v95, 0xCu);
        sub_100007BAC(v96);

        sub_100A1B3C0(v183, type metadata accessor for OwnedBeaconRecord);
        v172(v178, v173);
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v104 = v0[33];
      v105 = v0[29];
      v106 = v0[27];
      v107 = type metadata accessor for Logger();
      sub_1000076D4(v107, qword_10177B780);
      v171(v105, v104, v106);
      v88 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      v109 = os_log_type_enabled(v88, v108);
      v91 = v0[33];
      v93 = v0[28];
      v92 = v0[29];
      v94 = v0[26];
      v1 = v0[27];
      if (v109)
      {
        v183 = v0[26];
        v95 = swift_slowAlloc();
        v178 = v91;
        v96 = swift_slowAlloc();
        v185[0] = v96;
        *v95 = v168;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v1;
        v173 = v1;
        v1 = v112;
        v172 = *(v93 + 8);
        v172(v92, v111);
        v113 = sub_1000136BC(v110, v1, v185);
        v0 = v169;

        *(v95 + 4) = v113;
        v101 = v108;
        v102 = v88;
        v103 = "Received separation alert request for non-leashed beacon: %s";
        goto LABEL_39;
      }
    }

    v114 = *(v93 + 8);
    v114(v92, v1);
    sub_100A1B3C0(v94, type metadata accessor for OwnedBeaconRecord);
    v114(v91, v1);
LABEL_13:
    v37 = v174;
  }

  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v40 >= (((1 << *(v0 + 340)) + 63) >> 6))
    {
      break;
    }

    v39 = v0[6];
    v37 = *(v39 + 8 * v40 + 56);
    ++v36;
    if (v37)
    {
      v36 = v40;
      goto LABEL_20;
    }
  }

  v115 = v0[35];

  if (*(*(v115 + 16) + 16))
  {
    v116 = v0[35];
    static Date.trustedNow.getter(v0[16]);
    v117 = *(v116 + 16);
    v118 = *(v117 + 16);
    if (v118)
    {
      v119 = v0[23];
      v120 = v117 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v121 = *(v119 + 72);

      do
      {
        v122 = v0[24];
        v123 = v0[16];
        sub_100A1B358(v120, v122, type metadata accessor for OwnedBeaconRecord);
        sub_100A17920(v122, v123);
        sub_100A1B3C0(v122, type metadata accessor for OwnedBeaconRecord);
        v120 += v121;
        --v118;
      }

      while (v118);
    }

    v125 = v0[14];
    v124 = v0[15];
    v126 = v0[13];
    v127 = v0[11];
    [v127 center];
    v129 = v128;
    v131 = v130;
    [v127 radius];
    v133 = v132;
    [v127 radius];
    v135 = v134;
    Date.init()();
    v136 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v138 = [v136 initWithCoordinate:isa altitude:v129 horizontalAccuracy:v131 verticalAccuracy:-1.0 course:v133 courseAccuracy:v135 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v139 = *(v125 + 8);
    v139(v124, v126);
    [v138 setReferenceFrame:{objc_msgSend(v127, "geoReferenceFrame")}];
    v140 = sub_1010E1130();
    v141 = v0[35];
    v142 = v0[16];
    v184 = v0[13];
    if (v140)
    {
      v143 = v0[9];
      type metadata accessor for SPSeparationMonitoringError(0);
      v0[3] = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v144 = v0[2];
      v143(v144, 1);

      v145 = v142;
    }

    else
    {
      v179 = v0[16];
      v156 = v169[12];
      v157 = v169[10];
      v158 = v169[9];
      v159 = v169[7];
      v160 = swift_allocObject();
      v160[2] = v138;
      v160[3] = v159;
      v160[4] = v158;
      v160[5] = v157;
      v160[6] = v141;
      v160[7] = v156;
      v0 = v169;
      v161 = v138;

      sub_100A17E74(v161, sub_100A1AB04, v160);

      v145 = v179;
    }

    v139(v145, v184);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v146 = type metadata accessor for Logger();
    sub_1000076D4(v146, qword_10177B780);

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v185[0] = v150;
      *v149 = v168;
      sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v151 = Set.description.getter();
      v153 = sub_1000136BC(v151, v152, v185);

      *(v149 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v147, v148, "Received separation alert for unknown beacons: %s", v149, 0xCu);
      sub_100007BAC(v150);
    }

    v154 = v0[9];
    type metadata accessor for SPSeparationMonitoringError(0);
    v0[5] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v155 = v0[4];
    v154(v155, 1);
  }

  v162 = v0[1];

  return v162();
}

void sub_1009CF694(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v42 = a4;
  if (a3)
  {
    *&v44 = a1;
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError, &unk_101389BEC);
    swift_willThrowTypedImpl();
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B780);
    sub_100A1AB44(a1, a2, 1);
    v20 = a4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    sub_100A1AB54(a1, a2, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39 = a7;
      v24 = v23;
      v25 = swift_slowAlloc();
      v40 = a8;
      v26 = v25;
      v38 = swift_slowAlloc();
      *&v43[0] = v38;
      *v24 = 138412546;
      *(v24 + 4) = v20;
      *v26 = v20;
      *(v24 + 12) = 2080;
      *&v44 = a1;
      *(&v44 + 1) = a2;
      LOBYTE(v45) = 1;
      sub_100A1AB44(a1, a2, 1);
      v27 = v20;
      sub_1000BC4D4(&qword_1016B1758, &qword_1013D0AF8);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000136BC(v28, v29, v43);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to reverse geocode location %@ for notification, result: %s", v24, 0x16u);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
      a8 = v40;

      sub_100007BAC(v38);

      a7 = v39;
    }

    a1 = 0;
    a2 = 0;
  }

  else
  {
  }

  if (*(a5 + 40))
  {

    sub_1005323CC(v43);

    v50 = v43[6];
    v51 = v43[7];
    v52 = v43[8];
    v53 = v43[9];
    v46 = v43[2];
    v47 = v43[3];
    v48 = v43[4];
    v49 = v43[5];
    v44 = v43[0];
    v45 = v43[1];
    v31 = sub_10058B134(&v44);
    if (v31 != 1)
    {
      sub_10000B3A8(v43, &qword_1016B1750, &qword_1013B1358);
    }

    v32 = v31 != 1;
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    v35 = v42;
    *(v34 + 32) = v41;
    *(v34 + 40) = a7;
    *(v34 + 48) = a8;
    *(v34 + 56) = a5;
    *(v34 + 64) = v35;
    *(v34 + 72) = a9;
    *(v34 + 80) = v32;
    *(v34 + 88) = a1;
    *(v34 + 96) = a2;
    v36 = v35;

    sub_100A838D4(0, 0, v18, &unk_1013D0AF0, v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009CFAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v19;
  *(v8 + 320) = v20;
  *(v8 + 769) = v18;
  *(v8 + 296) = a8;
  *(v8 + 304) = v17;
  *(v8 + 280) = a6;
  *(v8 + 288) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  *(v8 + 328) = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v9 = type metadata accessor for SafeLocation(0);
  *(v8 + 360) = v9;
  *(v8 + 368) = *(v9 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  v10 = type metadata accessor for AnyAnalyticsEvent();
  *(v8 + 400) = v10;
  *(v8 + 408) = *(v10 - 8);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = type metadata accessor for StableIdentifier(0);
  *(v8 + 432) = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  *(v8 + 440) = v11;
  v12 = *(v11 - 8);
  *(v8 + 448) = v12;
  *(v8 + 456) = *(v12 + 64);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v8 + 512) = v13;
  *(v8 + 520) = *(v13 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v8 + 552) = v14;
  *v14 = v8;
  v14[1] = sub_1009CFDE0;

  return daemon.getter();
}

uint64_t sub_1009CFDE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 560) = a1;

  v3 = swift_task_alloc();
  *(v2 + 568) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FMIPService();
  v6 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003F64(&unk_1016B1100, type metadata accessor for FMIPService, &unk_10138C708);
  *v3 = v9;
  v3[1] = sub_1009CFFBC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1009CFFBC(uint64_t a1)
{
  *(*v2 + 576) = a1;

  if (v1)
  {

    v3 = sub_1009D010C;
  }

  else
  {

    v3 = sub_1009D02E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1009D010C()
{
  v1 = v0[33];
  type metadata accessor for SPSeparationMonitoringError(0);
  v0[29] = 12;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v2 = v0[28];
  v1(v2, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1009D02E0()
{
  v1 = v0[35];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[65];
    v5 = v0[56];
    v19 = v0[55];

    sub_101123D4C(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      v7 = v0[68];
      v9 = v0[63];
      v8 = v0[64];
      sub_100A1B358(v6, v9, type metadata accessor for OwnedBeaconRecord);
      (*(v4 + 16))(v7, v9 + *(v19 + 20), v8);
      sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_101123D4C((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[68];
      v13 = v0[64];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v18;
      --v3;
    }

    while (v3);
  }

  v14 = v0[35];
  v0[73] = sub_10000954C(_swiftEmptyArrayStorage);

  swift_beginAccess();
  v15 = *(v14 + 16);
  v0[74] = v15;

  v16 = swift_task_alloc();
  v0[75] = v16;
  *v16 = v0;
  v16[1] = sub_1009D053C;

  return sub_10012F63C(v15);
}

uint64_t sub_1009D053C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1009D1178;
  }

  else
  {

    *(v4 + 608) = a1;
    v5 = sub_1009D0690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1009D0690()
{
  v88 = v0;
  v1 = *(v0 + 608);
  *(v0 + 616) = v1;
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 448);
    v86 = *(v0 + 440);
    v87 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v85 = *(v5 + 72);
    do
    {
      v7 = *(v0 + 536);
      v9 = *(v0 + 504);
      v8 = *(v0 + 512);
      sub_100A1B358(v6, v9, type metadata accessor for OwnedBeaconRecord);
      (*(v4 + 16))(v7, v9 + *(v86 + 20), v8);
      sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
      v87 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_101123D4C((v10 > 1), v11 + 1, 1);
        v3 = v87;
      }

      v12 = *(v0 + 536);
      v13 = *(v0 + 512);
      v3[2] = v11 + 1;
      (*(v4 + 32))(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v85;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 584);
  v15 = sub_10000954C(v3);

  if (*(v15 + 16) <= *(v14 + 16) >> 3)
  {
    v87 = *(v0 + 584);
    sub_10087D5B4(v15);

    v16 = v87;
  }

  else
  {
    v16 = sub_100610BC8(v15, *(v0 + 584));
  }

  *(v0 + 624) = v16;
  v17 = *(v0 + 280);
  swift_beginAccess();
  v18 = *(v17 + 16);
  *(v0 + 632) = v18;
  v19 = *(v18 + 16);
  *(v0 + 640) = v19;
  if (!v19)
  {
LABEL_26:
    v43 = *(v0 + 616);

    v44 = *(v43 + 16);
    *(v0 + 656) = v44;
    if (v44)
    {
      v45 = *(v0 + 616);
      v46 = *(v0 + 448);
      v47 = *(v46 + 80);
      *(v0 + 764) = v47;
      v48 = (v47 + 32) & ~v47;
      *(v0 + 664) = *(v46 + 72);
      *(v0 + 720) = _swiftEmptyArrayStorage;
      *(v0 + 712) = 0;
      v49 = *(v0 + 504);
      v50 = *(v0 + 480);
      v51 = *(v0 + 288);
      v52 = *(v0 + 296);
      sub_100A1B358(v45 + v48, v50, type metadata accessor for OwnedBeaconRecord);
      sub_100A1B358(v50, v49, type metadata accessor for OwnedBeaconRecord);
      v53 = swift_allocObject();
      *(v0 + 728) = v53;
      *(v53 + 16) = v51;
      *(v53 + 24) = v52;
      sub_100A18C9C(v49, v53 + v48, type metadata accessor for OwnedBeaconRecord);

      v54 = v52;
      v55 = swift_task_alloc();
      *(v0 + 736) = v55;
      *v55 = v0;
      v55[1] = sub_1009D2A44;
      v56 = &type metadata for Bool;
      v57 = sub_100A1AC64;
      v58 = v0 + 768;
      goto LABEL_28;
    }

    *(v0 + 704) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v59 = *(v0 + 304);
      if (v59 != 1)
      {
        if (v59)
        {

          if (qword_101694B70 == -1)
          {
LABEL_38:
            v72 = type metadata accessor for Logger();
            sub_1000076D4(v72, qword_10177B780);
            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = *(v0 + 304);
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v87 = v77;
              *v76 = 136315138;
              *(v0 + 256) = v75;
              type metadata accessor for SPSeparationEventType(0);
              v78 = String.init<A>(describing:)();
              v80 = sub_1000136BC(v78, v79, &v87);

              *(v76 + 4) = v80;
              _os_log_impl(&_mh_execute_header, v73, v74, "Received unknown eventType: %s", v76, 0xCu);
              sub_100007BAC(v77);
            }

            v81 = *(v0 + 264);
            type metadata accessor for SPSeparationMonitoringError(0);
            *(v0 + 248) = 12;
            sub_100032898(_swiftEmptyArrayStorage);
            sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
            _BridgedStoredNSError.init(_:userInfo:)();
            v82 = *(v0 + 240);
            v81(v82, 1);

            goto LABEL_41;
          }

LABEL_45:
          swift_once();
          goto LABEL_38;
        }

        v60 = *(v0 + 288);
        v61 = *(v0 + 296);
        v53 = swift_allocObject();
        *(v0 + 744) = v53;
        *(v53 + 16) = v60;
        *(v53 + 24) = v61;

        v62 = v61;
        v63 = swift_task_alloc();
        *(v0 + 752) = v63;
        *v63 = v0;
        v63[1] = sub_1009D3474;
        v58 = *(v0 + 352);
        v56 = *(v0 + 328);
        v57 = sub_100A1ACD8;
LABEL_28:

        return unsafeBlocking<A>(_:)(v58, v57, v53, v56);
      }

      v65 = *(v0 + 312);
      v66 = *(v0 + 320);
      v67 = *(v0 + 769);
      v68 = *(v0 + 296);
      v70 = *(v0 + 264);
      v69 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = _swiftEmptyArrayStorage;
      *(v0 + 32) = v67;
      *(v0 + 40) = 0;
      *(v0 + 48) = v65;
      *(v0 + 56) = v66;
      *(v0 + 64) = v68;

      v71 = v68;
      sub_1009D4C58((v0 + 16), v70, v69);
    }

    else
    {
      v64 = *(v0 + 264);

      v64(0, 0);
    }

LABEL_41:

    v83 = *(v0 + 8);

    return v83();
  }

  *(v0 + 760) = *(*(v0 + 448) + 80);
  *(v0 + 648) = 0;
  v20 = *(v18 + 16);

  if (!v20)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = 0;
  while (1)
  {
    v23 = *(v0 + 496);
    v24 = *(v0 + 440);
    v25 = *(v0 + 432);
    sub_100A1B358(v21 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v22, v23, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v23 + *(v24 + 24), v25, type metadata accessor for StableIdentifier);
    LODWORD(v23) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v25, type metadata accessor for StableIdentifier);
    if (!v23)
    {
      v28 = *(v0 + 624);
      if (*(v28 + 16))
      {
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = -1 << *(v28 + 32);
        v31 = v29 & ~v30;
        if ((*(v28 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31))
        {
          break;
        }
      }
    }

LABEL_13:
    v26 = *(v0 + 640);
    v27 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v27 == v26)
    {

      goto LABEL_26;
    }

    v22 = *(v0 + 648) + 1;
    *(v0 + 648) = v22;
    v21 = *(v0 + 632);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_44;
    }
  }

  v32 = ~v30;
  v33 = *(v0 + 520);
  v34 = *(v33 + 72);
  v35 = *(v33 + 16);
  v36 = *(v0 + 624);
  while (1)
  {
    v37 = *(v0 + 528);
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);
    v35(v37, *(v36 + 48) + v31 * v34, v39);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v38 + 8))(v37, v39);
    if (v40)
    {
      break;
    }

    v36 = *(v0 + 624);
    v31 = (v31 + 1) & v32;
    if (((*(v36 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00, &protocol conformance descriptor for AnalyticsEvent<A, B>);
  v42 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v42, v41);
}

uint64_t sub_1009D1178()
{
  v89 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 616) = v2;
  v3 = *(v2 + 16);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = *(v0 + 520);
    v6 = *(v0 + 448);
    v87 = *(v0 + 440);
    v88 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v86 = *(v6 + 72);
    do
    {
      v8 = *(v0 + 536);
      v10 = *(v0 + 504);
      v9 = *(v0 + 512);
      sub_100A1B358(v7, v10, type metadata accessor for OwnedBeaconRecord);
      (*(v5 + 16))(v8, v10 + *(v87 + 20), v9);
      sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
      v88 = v4;
      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C((v11 > 1), v12 + 1, 1);
        v4 = v88;
      }

      v13 = *(v0 + 536);
      v14 = *(v0 + 512);
      v4[2] = v12 + 1;
      (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      v7 += v86;
      --v3;
    }

    while (v3);
  }

  v15 = *(v0 + 584);
  v16 = sub_10000954C(v4);

  if (*(v16 + 16) <= *(v15 + 16) >> 3)
  {
    v88 = *(v0 + 584);
    sub_10087D5B4(v16);

    v17 = v88;
  }

  else
  {
    v17 = sub_100610BC8(v16, *(v0 + 584));
  }

  *(v0 + 624) = v17;
  v18 = *(v0 + 280);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v0 + 632) = v19;
  v20 = *(v19 + 16);
  *(v0 + 640) = v20;
  if (!v20)
  {
LABEL_26:
    v44 = *(v0 + 616);

    v45 = *(v44 + 16);
    *(v0 + 656) = v45;
    if (v45)
    {
      v46 = *(v0 + 616);
      v47 = *(v0 + 448);
      v48 = *(v47 + 80);
      *(v0 + 764) = v48;
      v49 = (v48 + 32) & ~v48;
      *(v0 + 664) = *(v47 + 72);
      *(v0 + 720) = _swiftEmptyArrayStorage;
      *(v0 + 712) = 0;
      v50 = *(v0 + 504);
      v51 = *(v0 + 480);
      v52 = *(v0 + 288);
      v53 = *(v0 + 296);
      sub_100A1B358(v46 + v49, v51, type metadata accessor for OwnedBeaconRecord);
      sub_100A1B358(v51, v50, type metadata accessor for OwnedBeaconRecord);
      v54 = swift_allocObject();
      *(v0 + 728) = v54;
      *(v54 + 16) = v52;
      *(v54 + 24) = v53;
      sub_100A18C9C(v50, v54 + v49, type metadata accessor for OwnedBeaconRecord);

      v55 = v53;
      v56 = swift_task_alloc();
      *(v0 + 736) = v56;
      *v56 = v0;
      v56[1] = sub_1009D2A44;
      v57 = &type metadata for Bool;
      v58 = sub_100A1AC64;
      v59 = v0 + 768;
      goto LABEL_28;
    }

    *(v0 + 704) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v60 = *(v0 + 304);
      if (v60 != 1)
      {
        if (v60)
        {

          if (qword_101694B70 == -1)
          {
LABEL_38:
            v73 = type metadata accessor for Logger();
            sub_1000076D4(v73, qword_10177B780);
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = *(v0 + 304);
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v88 = v78;
              *v77 = 136315138;
              *(v0 + 256) = v76;
              type metadata accessor for SPSeparationEventType(0);
              v79 = String.init<A>(describing:)();
              v81 = sub_1000136BC(v79, v80, &v88);

              *(v77 + 4) = v81;
              _os_log_impl(&_mh_execute_header, v74, v75, "Received unknown eventType: %s", v77, 0xCu);
              sub_100007BAC(v78);
            }

            v82 = *(v0 + 264);
            type metadata accessor for SPSeparationMonitoringError(0);
            *(v0 + 248) = 12;
            sub_100032898(_swiftEmptyArrayStorage);
            sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
            _BridgedStoredNSError.init(_:userInfo:)();
            v83 = *(v0 + 240);
            v82(v83, 1);

            goto LABEL_41;
          }

LABEL_45:
          swift_once();
          goto LABEL_38;
        }

        v61 = *(v0 + 288);
        v62 = *(v0 + 296);
        v54 = swift_allocObject();
        *(v0 + 744) = v54;
        *(v54 + 16) = v61;
        *(v54 + 24) = v62;

        v63 = v62;
        v64 = swift_task_alloc();
        *(v0 + 752) = v64;
        *v64 = v0;
        v64[1] = sub_1009D3474;
        v59 = *(v0 + 352);
        v57 = *(v0 + 328);
        v58 = sub_100A1ACD8;
LABEL_28:

        return unsafeBlocking<A>(_:)(v59, v58, v54, v57);
      }

      v66 = *(v0 + 312);
      v67 = *(v0 + 320);
      v68 = *(v0 + 769);
      v69 = *(v0 + 296);
      v71 = *(v0 + 264);
      v70 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = _swiftEmptyArrayStorage;
      *(v0 + 32) = v68;
      *(v0 + 40) = 0;
      *(v0 + 48) = v66;
      *(v0 + 56) = v67;
      *(v0 + 64) = v69;

      v72 = v69;
      sub_1009D4C58((v0 + 16), v71, v70);
    }

    else
    {
      v65 = *(v0 + 264);

      v65(0, 0);
    }

LABEL_41:

    v84 = *(v0 + 8);

    return v84();
  }

  *(v0 + 760) = *(*(v0 + 448) + 80);
  *(v0 + 648) = 0;
  v21 = *(v19 + 16);

  if (!v21)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = 0;
  while (1)
  {
    v24 = *(v0 + 496);
    v25 = *(v0 + 440);
    v26 = *(v0 + 432);
    sub_100A1B358(v22 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v23, v24, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v24 + *(v25 + 24), v26, type metadata accessor for StableIdentifier);
    LODWORD(v24) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v26, type metadata accessor for StableIdentifier);
    if (!v24)
    {
      v29 = *(v0 + 624);
      if (*(v29 + 16))
      {
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v31 = -1 << *(v29 + 32);
        v32 = v30 & ~v31;
        if ((*(v29 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
        {
          break;
        }
      }
    }

LABEL_13:
    v27 = *(v0 + 640);
    v28 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v28 == v27)
    {

      goto LABEL_26;
    }

    v23 = *(v0 + 648) + 1;
    *(v0 + 648) = v23;
    v22 = *(v0 + 632);
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_44;
    }
  }

  v33 = ~v31;
  v34 = *(v0 + 520);
  v35 = *(v34 + 72);
  v36 = *(v34 + 16);
  v37 = *(v0 + 624);
  while (1)
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v40 = *(v0 + 512);
    v36(v38, *(v37 + 48) + v32 * v35, v40);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v39 + 8))(v38, v40);
    if (v41)
    {
      break;
    }

    v37 = *(v0 + 624);
    v32 = (v32 + 1) & v33;
    if (((*(v37 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00, &protocol conformance descriptor for AnalyticsEvent<A, B>);
  v43 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v43, v42);
}

uint64_t sub_1009D1C80(uint64_t a1)
{
  dispatch thunk of AnalyticsEvent.anyAnalyticsEvent.getter();

  return _swift_task_switch(sub_1009D1CEC, 0, 0);
}

uint64_t sub_1009D1CEC()
{
  v23 = v0;
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  static AnalyticsPublisher.publish(event:)();
  (*(v2 + 8))(v1, v3);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v4 = v0[61];
  v5 = v0[62];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  sub_100A1B358(v5, v4, type metadata accessor for OwnedBeaconRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[61];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
    v15 = sub_1000136BC(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring separation monitor alert for unregistered self-beaconing device: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {
    v16 = v0[61];

    sub_100A1B3C0(v16, type metadata accessor for OwnedBeaconRecord);
  }

  v17 = v0[62];
  v18 = v0[36];
  v19 = swift_task_alloc();
  v0[85] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = swift_task_alloc();
  v0[86] = v20;
  *v20 = v0;
  v20[1] = sub_1009D1FEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, 0, 0, 0xD00000000000003FLL, 0x8000000101367980, sub_100A1ACE0, v19, &type metadata for () + 1);
}

uint64_t sub_1009D1FEC()
{
  *(*v1 + 696) = v0;

  if (v0)
  {

    v2 = sub_1009D3944;
  }

  else
  {

    v2 = sub_1009D214C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009D214C()
{
  v66 = v0;

  while (1)
  {
LABEL_2:
    v1 = *(v0 + 640);
    v2 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v2 == v1)
    {

      v21 = *(v0 + 616);

      v22 = *(v21 + 16);
      *(v0 + 656) = v22;
      if (v22)
      {
        v23 = *(v0 + 616);
        v24 = *(v0 + 448);
        v25 = *(v24 + 80);
        *(v0 + 764) = v25;
        v26 = (v25 + 32) & ~v25;
        *(v0 + 664) = *(v24 + 72);
        *(v0 + 720) = _swiftEmptyArrayStorage;
        *(v0 + 712) = 0;
        v27 = *(v0 + 504);
        v28 = *(v0 + 480);
        v29 = *(v0 + 288);
        v30 = *(v0 + 296);
        sub_100A1B358(v23 + v26, v28, type metadata accessor for OwnedBeaconRecord);
        sub_100A1B358(v28, v27, type metadata accessor for OwnedBeaconRecord);
        v31 = swift_allocObject();
        *(v0 + 728) = v31;
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        sub_100A18C9C(v27, v31 + v26, type metadata accessor for OwnedBeaconRecord);

        v32 = v30;
        v33 = swift_task_alloc();
        *(v0 + 736) = v33;
        *v33 = v0;
        v33[1] = sub_1009D2A44;
        v34 = &type metadata for Bool;
        v35 = sub_100A1AC64;
        v36 = v0 + 768;
        goto LABEL_13;
      }

      *(v0 + 704) = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
        v39 = *(v0 + 304);
        if (v39 != 1)
        {
          if (v39)
          {

            if (qword_101694B70 == -1)
            {
LABEL_26:
              v52 = type metadata accessor for Logger();
              sub_1000076D4(v52, qword_10177B780);
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = *(v0 + 304);
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v65 = v57;
                *v56 = 136315138;
                *(v0 + 256) = v55;
                type metadata accessor for SPSeparationEventType(0);
                v58 = String.init<A>(describing:)();
                v60 = sub_1000136BC(v58, v59, &v65);

                *(v56 + 4) = v60;
                _os_log_impl(&_mh_execute_header, v53, v54, "Received unknown eventType: %s", v56, 0xCu);
                sub_100007BAC(v57);
              }

              v61 = *(v0 + 264);
              type metadata accessor for SPSeparationMonitoringError(0);
              *(v0 + 248) = 12;
              sub_100032898(_swiftEmptyArrayStorage);
              sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v62 = *(v0 + 240);
              v61(v62, 1);

              goto LABEL_29;
            }

LABEL_33:
            swift_once();
            goto LABEL_26;
          }

          v40 = *(v0 + 288);
          v41 = *(v0 + 296);
          v31 = swift_allocObject();
          *(v0 + 744) = v31;
          *(v31 + 16) = v40;
          *(v31 + 24) = v41;

          v42 = v41;
          v43 = swift_task_alloc();
          *(v0 + 752) = v43;
          *v43 = v0;
          v43[1] = sub_1009D3474;
          v36 = *(v0 + 352);
          v34 = *(v0 + 328);
          v35 = sub_100A1ACD8;
LABEL_13:

          return unsafeBlocking<A>(_:)(v36, v35, v31, v34);
        }

        v45 = *(v0 + 312);
        v46 = *(v0 + 320);
        v47 = *(v0 + 769);
        v48 = *(v0 + 296);
        v50 = *(v0 + 264);
        v49 = *(v0 + 272);
        *(v0 + 16) = 1;
        *(v0 + 24) = _swiftEmptyArrayStorage;
        *(v0 + 32) = v47;
        *(v0 + 40) = 0;
        *(v0 + 48) = v45;
        *(v0 + 56) = v46;
        *(v0 + 64) = v48;

        v51 = v48;
        sub_1009D4C58((v0 + 16), v50, v49);
      }

      else
      {
        v44 = *(v0 + 264);

        v44(0, 0);
      }

LABEL_29:

      v63 = *(v0 + 8);

      return v63();
    }

    v3 = *(v0 + 648) + 1;
    *(v0 + 648) = v3;
    v4 = *(v0 + 632);
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v5 = *(v0 + 496);
    v6 = *(v0 + 440);
    v7 = *(v0 + 432);
    sub_100A1B358(v4 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v3, v5, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v5 + *(v6 + 24), v7, type metadata accessor for StableIdentifier);
    LODWORD(v5) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v7, type metadata accessor for StableIdentifier);
    if (!v5)
    {
      v8 = *(v0 + 624);
      if (*(v8 + 16))
      {
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11))
        {
          break;
        }
      }
    }
  }

  v12 = ~v10;
  v13 = *(v0 + 520);
  v14 = *(v13 + 72);
  v15 = *(v13 + 16);
  v16 = *(v0 + 624);
  while (1)
  {
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);
    v15(v17, *(v16 + 48) + v11 * v14, v19);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v18 + 8))(v17, v19);
    if (v20)
    {
      break;
    }

    v16 = *(v0 + 624);
    v11 = (v11 + 1) & v12;
    if (((*(v16 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v11) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00, &protocol conformance descriptor for AnalyticsEvent<A, B>);
  v38 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v38, v37);
}

uint64_t sub_1009D2A44()
{

  return _swift_task_switch(sub_1009D2B5C, 0, 0);
}

uint64_t sub_1009D2B5C()
{
  v68 = v0;
  if (*(v0 + 768))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 480);
    v2 = *(v0 + 464);
    v3 = *(v0 + 296);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B780);
    sub_100A1B358(v1, v2, type metadata accessor for OwnedBeaconRecord);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v66 = *(v0 + 480);
      v8 = *(v0 + 464);
      v9 = *(v0 + 296);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v67 = v12;
      *v10 = 138412803;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = v9;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100A1B3C0(v8, type metadata accessor for OwnedBeaconRecord);
      v17 = sub_1000136BC(v14, v16, &v67);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Location is in safe location - not posting separation notification at %@ for beacon %{private,mask.hash}s.", v10, 0x20u);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v12);

      v18 = v66;
    }

    else
    {
      v26 = *(v0 + 480);
      v27 = *(v0 + 464);

      sub_100A1B3C0(v27, type metadata accessor for OwnedBeaconRecord);
      v18 = v26;
    }

    sub_100A1B3C0(v18, type metadata accessor for OwnedBeaconRecord);
    v20 = *(v0 + 720);
  }

  else
  {
    sub_100A1B358(*(v0 + 480), *(v0 + 472), type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v0 + 720);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_100A5C050(0, v20[2] + 1, 1, *(v0 + 720));
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_100A5C050((v21 > 1), v22 + 1, 1, v20);
    }

    v23 = *(v0 + 664);
    v24 = *(v0 + 472);
    v25 = (*(v0 + 764) + 32) & ~*(v0 + 764);
    sub_100A1B3C0(*(v0 + 480), type metadata accessor for OwnedBeaconRecord);
    v20[2] = v22 + 1;
    sub_100A18C9C(v24, v20 + v25 + v23 * v22, type metadata accessor for OwnedBeaconRecord);
  }

  v28 = *(v0 + 712) + 1;
  if (v28 != *(v0 + 656))
  {
    *(v0 + 720) = v20;
    *(v0 + 712) = v28;
    v38 = *(v0 + 504);
    v39 = *(v0 + 480);
    v40 = *(v0 + 288);
    v41 = *(v0 + 296);
    v42 = (*(v0 + 764) + 32) & ~*(v0 + 764);
    sub_100A1B358(*(v0 + 616) + v42 + *(v0 + 664) * v28, v39, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v39, v38, type metadata accessor for OwnedBeaconRecord);
    v32 = swift_allocObject();
    *(v0 + 728) = v32;
    *(v32 + 16) = v40;
    *(v32 + 24) = v41;
    sub_100A18C9C(v38, v32 + v42, type metadata accessor for OwnedBeaconRecord);

    v43 = v41;
    v44 = swift_task_alloc();
    *(v0 + 736) = v44;
    *v44 = v0;
    v44[1] = sub_1009D2A44;
    v36 = &type metadata for Bool;
    v37 = sub_100A1AC64;
    v35 = v0 + 768;
    goto LABEL_19;
  }

  *(v0 + 704) = v20;
  if (v20[2])
  {
    v29 = *(v0 + 304);
    if (v29 == 1)
    {
      v46 = *(v0 + 312);
      v47 = *(v0 + 320);
      v48 = *(v0 + 769);
      v49 = *(v0 + 296);
      v51 = *(v0 + 264);
      v50 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = v20;
      *(v0 + 32) = v48;
      *(v0 + 40) = 0;
      *(v0 + 48) = v46;
      *(v0 + 56) = v47;
      *(v0 + 64) = v49;

      v52 = v49;
      sub_1009D4C58((v0 + 16), v51, v50);
    }

    else
    {
      if (!v29)
      {
        v30 = *(v0 + 288);
        v31 = *(v0 + 296);
        v32 = swift_allocObject();
        *(v0 + 744) = v32;
        *(v32 + 16) = v30;
        *(v32 + 24) = v31;

        v33 = v31;
        v34 = swift_task_alloc();
        *(v0 + 752) = v34;
        *v34 = v0;
        v34[1] = sub_1009D3474;
        v35 = *(v0 + 352);
        v36 = *(v0 + 328);
        v37 = sub_100A1ACD8;
LABEL_19:

        return unsafeBlocking<A>(_:)(v35, v37, v32, v36);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177B780);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v0 + 304);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v67 = v58;
        *v57 = 136315138;
        *(v0 + 256) = v56;
        type metadata accessor for SPSeparationEventType(0);
        v59 = String.init<A>(describing:)();
        v61 = sub_1000136BC(v59, v60, &v67);

        *(v57 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Received unknown eventType: %s", v57, 0xCu);
        sub_100007BAC(v58);
      }

      v62 = *(v0 + 264);
      type metadata accessor for SPSeparationMonitoringError(0);
      *(v0 + 248) = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v63 = *(v0 + 240);
      v62(v63, 1);
    }
  }

  else
  {
    v45 = *(v0 + 264);

    v45(0, 0);
  }

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1009D3474()
{

  return _swift_task_switch(sub_1009D358C, 0, 0);
}

uint64_t sub_1009D358C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  v3 = *(*(v0 + 368) + 48);
  if (v3(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA10, &qword_1013CB000);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 392);
    sub_100A18C9C(v2, v5, type metadata accessor for SafeLocation);
    if (*(v5 + *(v1 + 48)) == 3)
    {
      v6 = 1;
    }

    else
    {
      sub_100A1B358(*(v0 + 392), *(v0 + 344), type metadata accessor for SafeLocation);
      v6 = 0;
    }

    v7 = *(v0 + 360);
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    (*(*(v0 + 368) + 56))(v8, v6, 1, v7);
    sub_1000D2A70(v8, v9, &unk_1016AFA10, &qword_1013CB000);
    v10 = v3(v9, 1, v7);
    v11 = *(v0 + 392);
    if (v10 == 1)
    {
      sub_10000B3A8(*(v0 + 344), &unk_1016AFA10, &qword_1013CB000);
      sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
      v4 = 0;
    }

    else
    {
      v12 = *(v0 + 376);
      v13 = *(v0 + 384);
      v14 = *(v0 + 344);
      sub_100A18C9C(*(v0 + 336), v13, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100A1B358(v13, v12, type metadata accessor for SafeLocation);
      v4 = sub_1009C859C(v12);
      sub_100A1B3C0(v13, type metadata accessor for SafeLocation);
      sub_10000B3A8(v14, &unk_1016AFA10, &qword_1013CB000);
      sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
    }

    v15 = v4;
  }

  v16 = *(v0 + 704);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 769);
  v20 = *(v0 + 296);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  *(v0 + 72) = 0;
  *(v0 + 80) = v16;
  *(v0 + 88) = v19;
  *(v0 + 96) = v4;
  *(v0 + 104) = v17;
  *(v0 + 112) = v18;
  *(v0 + 120) = v20;

  v23 = v20;
  sub_1009D4C58((v0 + 72), v22, v21);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009D3944()
{
  v1 = *(v0 + 496);

  sub_100A1B3C0(v1, type metadata accessor for OwnedBeaconRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009D3ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_100A1B358(a3, v12, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 16))(v8, v22, v5);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  sub_100A18C9C(v12, &v19[v17], type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 32))(&v19[v18], v8, v5);

  sub_10025EDD4(0, 0, v15, &unk_1013D0B10, v19);
}

uint64_t sub_1009D3D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1009D3EB4, 0, 0);
}

uint64_t sub_1009D3EB4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  sub_100A1B358(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 16))(v3, v6, v7);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v2 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v8;
  sub_100A18C9C(v1, v11 + v9, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 32))(v11 + v10, v3, v7);

  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1009D4068;
  v13 = v0[2];

  return unsafeBlocking<A>(_:)(v13, sub_100A1AE54, v11, &type metadata for () + 1);
}

uint64_t sub_1009D4068()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1009D41B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v63 = type metadata accessor for OwnedBeaconRecord(0);
  v57 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = v4;
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v56 = *(a1 + 280);
  v17 = *(v12 + 16);
  v17(&v53 - v15, v62, v11);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v58, v16, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v60 = v12;
  v20 = *(v12 + 32);
  v55 = v19;
  v62 = v11;
  v20(v19 + v18, v16, v11);
  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v53 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  v24 = *(v63 + 20);
  v25 = type metadata accessor for UUID();
  sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v63 = v24;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Unpair owned beacon: %@", 23, 2, v23);

  static SystemInfo.lockState.getter();
  v29 = v54;
  (*(v6 + 104))(v54, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = *(v6 + 8);
  v30(v29, v5);
  v30(v10, v5);
  v31 = v62;
  v32 = v58;
  if (v66 == v65)
  {
    v33 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v22, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    v34 = swift_allocError();
    *v35 = 0;
    v66 = v34;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    CheckedContinuation.resume(returning:)();
  }

  v36 = dispatch_group_create();
  dispatch_group_enter(v36);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v37 = *(v25 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v53;
  v40 = v64;
  (*(v37 + 16))(v39 + v38, v64 + v63, v25);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v42 = v36;
  v43 = v56;
  sub_1009C99E8(v39, sub_10040616C, v41, &unk_101641E30, sub_100A18748, &unk_101641E48);

  OS_dispatch_group.wait()();
  v44 = v61;
  sub_100A1B358(v40, v61, type metadata accessor for OwnedBeaconRecord);
  v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v46 = (v59 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_100A18C9C(v44, v48 + v45, type metadata accessor for OwnedBeaconRecord);
  v49 = (v48 + v46);
  v50 = v55;
  *v49 = sub_100A1AF38;
  v49[1] = v50;
  v51 = v48 + v47;
  *v51 = v43;
  *(v51 + 8) = 257;

  sub_100AAA40C(v40, sub_10040AE98, v48);

  return (*(v60 + 8))(v32, v31);
}

uint64_t sub_1009D4908(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(throwing:)();
  }

  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1009D4978@<X0>(void *a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v9 = a2 + *(type metadata accessor for OwnedBeaconRecord(0) + 20);
  v10 = sub_1009E4988(a1);
  v15 = v9;
  sub_1012BC8D8(sub_100A1B250, v10, v8);

  v11 = type metadata accessor for SafeLocation(0);
  v12 = (*(*(v11 - 8) + 48))(v8, 1, v11) != 1;
  result = sub_10000B3A8(v8, &unk_1016AFA10, &qword_1013CB000);
  *a3 = v12;
  return result;
}

void *sub_1009D4AC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 280);
  v10 = *(v9 + 104);
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    __chkstk_darwin(result);
    *&v13[-32] = v9;
    *&v13[-24] = a2;
    *&v13[-16] = 0;
    *&v13[-8] = 0;
    sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009D4C58(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_1000BC4D4(&qword_1016B1788, &qword_1013D0B18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - v9;
  v41 = sub_1000BC4D4(&qword_1016B1790, &qword_1013D0B20);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = v34 - v11;
  v12 = sub_1000BC4D4(&qword_1016B1798, &qword_1013D0B28);
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = v34 - v13;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C138;
  v15 = *(v4 + 280);
  type metadata accessor for SeparationAlertCoalescer();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;

  v43 = a1;
  v44 = v16;
  v17 = sub_101260E5C(a1);
  v18 = v17[2];
  if (v18)
  {
    v35 = v12;
    v36 = a3;
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34[1] = v17;
    v19 = (v17 + 4);
    v45 = v4;
    v46 = (v8 + 8);
    v20 = v43;
    v21 = v44;
    do
    {
      sub_10001F280(v19, v48);
      sub_10001F280(v48, v47);
      v22 = swift_allocObject();
      *(v22 + 16) = v45;
      v23 = *(v20 + 16);
      *(v22 + 24) = *v20;
      *(v22 + 40) = v23;
      *(v22 + 56) = *(v20 + 32);
      *(v22 + 72) = *(v20 + 48);
      *(v22 + 80) = v21;
      sub_10000A748(v47, v22 + 88);
      sub_100A1B098(v20, v47);

      sub_1000BC4D4(&qword_1016B17A0, &qword_1013D0B30);
      sub_1000041A4(&qword_1016B17A8, &qword_1016B17A0, &qword_1013D0B30, &protocol conformance descriptor for Future<A, B>);
      Deferred.init(createPublisher:)();
      sub_1000041A4(&qword_1016B17B0, &qword_1016B1788, &qword_1013D0B18, &protocol conformance descriptor for Deferred<A>);
      Publisher.eraseToAnyPublisher()();
      (*v46)(v10, v7);
      sub_100007BAC(v48);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v19 += 40;
      --v18;
    }

    while (v18);

    v24 = v49;
    a3 = v36;
    v12 = v35;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  *&v47[0] = v24;
  sub_1000BC4D4(&qword_1016B17B8, &qword_1013D0B38);
  sub_1000BC4D4(&qword_1016B17C0, &qword_1013D0B40);
  sub_1000041A4(&qword_1016B17C8, &qword_1016B17B8, &qword_1013D0B38, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000041A4(&qword_1016B17D0, &qword_1016B17C0, &qword_1013D0B40, &protocol conformance descriptor for [A]);
  v25 = v37;
  Publishers.MergeMany.init<A>(_:)();
  sub_1000041A4(&qword_1016B17D8, &qword_1016B1790, &qword_1013D0B20, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v26 = v38;
  v27 = v41;
  Publisher.collect()();
  (*(v39 + 8))(v25, v27);
  sub_1000041A4(&qword_1016B17E0, &qword_1016B1798, &qword_1013D0B28, &protocol conformance descriptor for Publishers.Collect<A>);
  v28 = Publisher.eraseToAnyPublisher()();
  (*(v40 + 8))(v26, v12);
  v48[0] = v28;
  v29 = swift_allocObject();
  v30 = v43;
  v31 = v43[1];
  *(v29 + 16) = *v43;
  *(v29 + 32) = v31;
  *(v29 + 48) = *(v30 + 32);
  v32 = v42;
  *(v29 + 64) = *(v30 + 48);
  *(v29 + 72) = v32;
  *(v29 + 80) = a3;
  sub_100A1B098(v30, v47);

  sub_1000BC4D4(&qword_1016B17E8, &qword_1013D0B48);
  sub_1000041A4(&qword_1016B17F0, &qword_1016B17E8, &qword_1013D0B48, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();
}

uint64_t sub_1009D5310(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v77 - v5;
  v7 = type metadata accessor for UUID();
  v91 = *(v7 - 8);
  v92 = v7;
  __chkstk_darwin(v7);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    v10 = sub_1000076D4(v9, qword_10177B780);

    v83 = v10;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v98[0] = v14;
      *v13 = 136315138;
      sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = Set.description.getter();
      v17 = sub_1000136BC(v15, v16, v98);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Will publish unification event for beacons: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C138;
    v19 = v2[35];
    type metadata accessor for SeparationAlertCoalescer();
    inited = swift_initStackObject();
    *(inited + 16) = v19;
    *(inited + 24) = v18;
    v80 = inited;

    sub_100E1F694(&off_101609F60, v21);
    v85 = v22;
    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        break;
      }

      goto LABEL_8;
    }

    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      break;
    }

LABEL_8:
    v24 = 0;
    v88 = v85 & 0xC000000000000001;
    v82 = v85 & 0xFFFFFFFFFFFFFF8;
    v87 = SPSeparationAlertUserInfoBeaconIdentifiersKey;
    v81 = v85 + 32;
    v25 = (v91 + 48);
    v93 = (v91 + 32);
    v79 = "followingPlaySound&id=";
    *(&v26 + 1) = 2;
    v78 = xmmword_101385D80;
    *&v26 = 136315138;
    v77 = v26;
    v84 = a1;
    v86 = v23;
    while (1)
    {
      if (v88)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v82 + 16))
        {
          goto LABEL_57;
        }

        v27 = *(v81 + 8 * v24);
      }

      v28 = v27;
      v29 = __OFADD__(v24, 1);
      v30 = v24 + 1;
      a1 = v92;
      if (v29)
      {
        break;
      }

      v89 = v30;
      v31 = [v27 request];
      v32 = [v31 content];

      v33 = [v32 userInfo];
      v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v96 + 1) = v35;
      AnyHashable.init<A>(_:)();
      if (!*(v34 + 16) || (v36 = sub_100771E5C(v98), (v37 & 1) == 0))
      {

        sub_100476E48(v98);
LABEL_21:
        v38 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }

      sub_100013894(*(v34 + 56) + 32 * v36, &v96);
      sub_100476E48(v98);

      sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      v38 = v95;
LABEL_22:
      v90 = v28;
      v39 = v38[2];
      if (v39)
      {
        v2 = 0;
        v40 = v38 + 5;
        v41 = _swiftEmptyArrayStorage;
        while (v2 < v38[2])
        {

          UUID.init(uuidString:)();

          if ((*v25)(v6, 1, a1) == 1)
          {
            sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
          }

          else
          {
            v42 = *v93;
            (*v93)(v94, v6, a1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_100A5BFE0(0, v41[2] + 1, 1, v41);
            }

            v44 = v41[2];
            v43 = v41[3];
            if (v44 >= v43 >> 1)
            {
              v41 = sub_100A5BFE0((v43 > 1), v44 + 1, 1, v41);
            }

            v41[2] = v44 + 1;
            v45 = v41 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v44;
            a1 = v92;
            v42(v45, v94, v92);
          }

          v2 = (v2 + 1);
          v40 += 2;
          if (v39 == v2)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        break;
      }

      v41 = _swiftEmptyArrayStorage;
LABEL_34:

      v46 = sub_10000954C(v41);

      v47 = v46[2];
      if (v47)
      {
        v48 = v84;
        v2 = v90;
        if (v84[2].isa <= (v47 >> 3))
        {
          v98[0] = v46;

          sub_10087D5B4(v48);
          v49 = v98[0];
        }

        else
        {

          v49 = sub_100610BC8(v48, v46);
        }

        v50 = sub_100A0405C(v48, v46, sub_100A046E0, sub_100A046E0);
        v51 = [v2 request];
        v52 = [v51 identifier];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        a1 = v49[2];

        if (!a1)
        {

          v64 = objc_allocWithZone(UNUserNotificationCenter);
          v65 = String._bridgeToObjectiveC()();
          v66 = [v64 initWithBundleIdentifier:v65];

          sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
          v67 = swift_allocObject();
          *(v67 + 16) = v78;
          *(v67 + 32) = v53;
          *(v67 + 40) = v55;

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v66 removeDeliveredNotificationsWithIdentifiers:isa];

          a1 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(a1, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v98[0] = v71;
            *v70 = v77;
            v72 = sub_1000136BC(v53, v55, v98);

            *(v70 + 4) = v72;
            _os_log_impl(&_mh_execute_header, a1, v69, "Did remove a left behind notification with identifier: %s", v70, 0xCu);
            sub_100007BAC(v71);
          }

          else
          {
          }

          goto LABEL_48;
        }

        v56 = v50[2];

        if (!v56)
        {

LABEL_48:

          goto LABEL_10;
        }

        sub_101263AF0(v2, v48, &v96);
        if (!v97)
        {

          sub_10000B3A8(&v96, &qword_1016B1548, &qword_1013D0A70);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v73, v74, "Failed to create an updatedNotification", v75, 2u);
          }

          goto LABEL_10;
        }

        sub_10000A748(&v96, v98);
        v57 = v99;
        v58 = v100;
        v59 = sub_1000035D0(v98, v99);
        sub_100E1FB1C(v53, v55, v59, v57, *(v58 + 8));

        a1 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(a1, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v96 = v62;
          *v61 = v77;
          v63 = sub_1000136BC(v53, v55, &v96);

          *(v61 + 4) = v63;
          _os_log_impl(&_mh_execute_header, a1, v60, "Did replace a left behind notification with identifier: %s", v61, 0xCu);
          sub_100007BAC(v62);
        }

        else
        {
        }

        v24 = v89;
        sub_100007BAC(v98);
        if (v24 == v86)
        {
          goto LABEL_54;
        }
      }

      else
      {

LABEL_10:
        v24 = v89;
        if (v89 == v86)
        {
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_54:

  swift_setDeallocating();
}

uint64_t sub_1009D5ED4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a4, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *(a2 + 16);
  *(v10 + 24) = *a2;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(a2 + 32);
  *(v10 + 72) = *(a2 + 48);
  *(v10 + 80) = a3;
  sub_10000A748(v13, v10 + 88);
  sub_1000BC4D4(&qword_1016B17A0, &qword_1013D0B30);
  swift_allocObject();
  sub_100A1B098(a2, v13);

  result = Future.init(_:)();
  *a5 = result;
  return result;
}

uint64_t sub_1009D5FEC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = swift_allocObject();
    v22 = v11;
    v17 = a5;
    v18 = v16;
    swift_weakInit();
    sub_10001F280(a6, v25);
    v19 = swift_allocObject();
    v20 = *(a4 + 16);
    *(v19 + 40) = *a4;
    *(v19 + 16) = v18;
    *(v19 + 24) = sub_100A1B1D0;
    *(v19 + 32) = v15;
    *(v19 + 56) = v20;
    *(v19 + 72) = *(a4 + 32);
    *(v19 + 88) = *(a4 + 48);
    *(v19 + 96) = v17;
    sub_10000A748(v25, v19 + 104);

    sub_100A1B098(a4, &v23);

    UUID.init()();
    Sequencer.perform(identifier:_:enqueueCompletion:)();

    (*(v12 + 8))(v14, v22);
  }

  else
  {

    v23 = 0;
    v24 = 1;
    return a1(&v23);
  }
}

uint64_t sub_1009D624C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, __int128 *a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v49 = a4;
    v51 = a5;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);
    sub_100A1B098(a6, &v59);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_100A1B100(a6);
    v50 = a1;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v58[0] = v18;
      *v17 = 136315138;
      v19 = a6[1];
      v59 = *a6;
      v60 = v19;
      v61 = a6[2];
      v62 = *(a6 + 6);
      sub_100A1B098(a6, v52);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000136BC(v20, v21, v58);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Attempting to coallesce notification with context: %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    sub_101262354(&v59, v52, a8);
    sub_1000D2A70(v52, &v56, &qword_1016B17F8, &qword_1013D0B50);
    if (v57)
    {
      sub_10000A748(&v56, v58);
      sub_10001F280(v58, &v56);
      sub_10001F280(&v59, v55);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v25 = 136315394;
        sub_10001F280(&v56, v53);
        sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
        v26 = String.init<A>(describing:)();
        v28 = v27;
        sub_100007BAC(&v56);
        v29 = sub_1000136BC(v26, v28, &v54);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        sub_10001F280(v55, v53);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        sub_100007BAC(v55);
        v33 = sub_1000136BC(v30, v32, &v54);

        *(v25 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "Replacing notification %s with %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100007BAC(v55);
        sub_100007BAC(&v56);
      }

      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10001F280(v58, &v56);
      sub_10001F280(&v59, v55);
      v44 = swift_allocObject();
      sub_10000A748(&v56, (v44 + 2));
      sub_10000A748(v55, (v44 + 7));
      v44[12] = v49;
      v44[13] = v51;
      v44[14] = v50;
      v44[15] = a2;

      sub_100E2033C(v58, &v59, sub_100A1B200, v44);

      sub_100007BAC(v58);
    }

    else
    {
      sub_10000B3A8(&v56, &qword_1016B17F8, &qword_1013D0B50);
      sub_10001F280(&v59, v58);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v55[0] = v39;
        *v38 = 136315138;
        sub_10001F280(v58, &v56);
        sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
        v40 = String.init<A>(describing:)();
        v42 = v41;
        sub_100007BAC(v58);
        v43 = sub_1000136BC(v40, v42, v55);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Posting notification %s", v38, 0xCu);
        sub_100007BAC(v39);
      }

      else
      {

        sub_100007BAC(v58);
      }

      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10001F280(&v59, v58);
      v45 = swift_allocObject();
      sub_10000A748(v58, (v45 + 2));
      v45[7] = v49;
      v45[8] = v51;
      v45[9] = v50;
      v45[10] = a2;
      v46 = *(&v60 + 1);
      v47 = v61;
      v48 = sub_1000035D0(&v59, *(&v60 + 1));

      sub_100E1EF8C(v48, sub_100A1B1EC, v45, v46, v47);
    }

    sub_10000B3A8(v52, &qword_1016B17F8, &qword_1013D0B50);
    return sub_100007BAC(&v59);
  }

  else
  {
    v34 = a4(0, 1);
    return a1(v34);
  }
}

uint64_t sub_1009D6934(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t (*a7)(void))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B780);
  sub_10001F280(a3, v36);
  sub_10001F280(a4, v35);
  sub_100A1B218(a1, a2 & 1);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_100A1B234(a1, a2 & 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136315650;
    sub_10001F280(v36, &v32);
    sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
    v31 = a7;
    v17 = String.init<A>(describing:)();
    v30 = a5;
    v19 = v18;
    sub_100007BAC(v36);
    v20 = sub_1000136BC(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_10001F280(v35, &v32);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100007BAC(v35);
    v24 = sub_1000136BC(v21, v23, &v34);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    a5 = v30;
    v32 = a1;
    v33 = a2 & 1;
    sub_100A1B218(a1, a2 & 1);
    sub_1000BC4D4(&qword_1016B1808, &qword_1013D0B58);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000136BC(v25, v26, &v34);

    *(v16 + 24) = v27;
    a7 = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Completed replacing old separation notification: %s with %s - result: %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v35);
    sub_100007BAC(v36);
  }

  v28 = a5(a1, a2 & 1);
  return a7(v28);
}

uint64_t sub_1009D6C30(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B780);
  sub_10001F280(a3, v30);
  v12 = a2 & 1;
  sub_100A1B218(a1, a2 & 1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_100A1B234(a1, a2 & 1);
  if (os_log_type_enabled(v13, v14))
  {
    v25 = a2;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136315394;
    sub_10001F280(v30, &v27);
    sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
    v26 = a6;
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_100007BAC(v30);
    v19 = sub_1000136BC(v16, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v27 = a1;
    v28 = v12;
    sub_100A1B218(a1, v12);
    sub_1000BC4D4(&qword_1016B1808, &qword_1013D0B58);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000136BC(v20, v21, &v29);

    *(v15 + 14) = v22;
    a6 = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "Completed posting new separation notification: %s - result: %s", v15, 0x16u);
    swift_arrayDestroy();

    a2 = v25;
  }

  else
  {

    sub_100007BAC(v30);
  }

  v23 = a4(a1, a2 & 1);
  return a6(v23);
}

void sub_1009D6EB8(uint64_t a1, __int128 *a2, void (*a3)(void, uint64_t))
{
  if (*(a1 + 8))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B780);
    sub_100A1B098(a2, &v26);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100A1B100(a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      v10 = a2[1];
      v26 = *a2;
      v27 = v10;
      v28 = a2[2];
      v29 = *(a2 + 6);
      sub_100A1B098(a2, v24);
      v11 = String.init<A>(describing:)();
      v13 = sub_1000136BC(v11, v12, &v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post separation notifications for context: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v24[0] = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v26;
    a3(v26, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B780);
    sub_100A1B098(a2, &v26);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    sub_100A1B100(a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = a2[1];
      v26 = *a2;
      v27 = v20;
      v28 = a2[2];
      v29 = *(a2 + 6);
      sub_100A1B098(a2, v24);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfuly posted separation notifications for context: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    a3(0, 0);
  }
}

void sub_1009D7238(unint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v22 = a1;
    v5 = a5;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    a5 = v5;
    v24 = v23;
    a1 = v22;
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v26, 0, 1);

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = a5;
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = a5;
    v10 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v11 = [v10 name];
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v12 = v11;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v13;

  if (qword_101694B70 != -1)
  {
LABEL_20:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B780);
  v15 = v6;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2080;
    v21 = v15;
    *(v18 + 14) = sub_1000136BC(v25, v5, &v26);
    _os_log_impl(&_mh_execute_header, v16, v17, "Received reverse geocoded address for location: %@: %s", v18, 0x16u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v20);

    v7 = v25;
  }

  a3(v7, v5, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_1009D758C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000BC4D4(&qword_1016B1748, &qword_1013D0AE0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_1009D762C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [result getActivePairedDevice];

    if (v7)
    {
      if ([v7 valueForProperty:NRDevicePropertyUDID])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v17[0] = v15;
      v17[1] = v16;
      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = v14;
          v9 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v9 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (v9)
          {
            *v4 = v13;
            v4[1] = v8;
            swift_storeEnumTagMultiPayload();
            v10 = sub_100025044();
            __chkstk_darwin(v10);
            *&v12[-16] = v4;
            sub_1012BBBD0(sub_10040A578, v10, a1);

            return sub_100A1B3C0(v4, type metadata accessor for StableIdentifier);
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000B3A8(v17, &unk_1016A0B10, &qword_10139BF40);
      }
    }

    v11 = type metadata accessor for OwnedBeaconRecord(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009D78A4()
{
  if (!*(*v0 + 216))
  {
    return 6;
  }

  CurrentValueSubject.value.getter();

  return v2;
}

uint64_t sub_1009D78FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = a4;
  v162 = a3;
  v169 = a2;
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v139 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v141 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v7;
  __chkstk_darwin(v6);
  v148 = (&v135 - v8);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v164 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v165 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for DispatchPredicate();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = (&v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v146);
  v147 = &v135 - v20;
  v21 = type metadata accessor for UUID();
  v171 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v153 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v135 = &v135 - v25;
  __chkstk_darwin(v24);
  v170 = &v135 - v26;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v157 = v18;
  v158 = v16;
  v159 = v15;
  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177B780);

  v154 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = a1;
  v166 = v12;
  v161 = v13;
  v160 = v9;
  v167 = v10;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    v35 = Array.description.getter();
    v37 = sub_1000136BC(v35, v36, &aBlock);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Enabling separation monitoring for beacons: %s", v33, 0xCu);
    sub_100007BAC(v34);
  }

  v38 = v169;
  v152 = *(v32 + 16);
  if (v152)
  {
    v39 = 0;
    v40 = *(v171 + 2);
    v145 = 0x8000000101348120;
    v144 = 0x80000001013480F0;
    v143 = 0x8000000101348010;
    v142 = 0x8000000101347FF0;
    v156 = (v171 + 8);
    v41 = v32 + ((v171[80] + 32) & ~v171[80]);
    v171 += 16;
    v42 = *(v171 + 7);
    v138 = v32;
    v155 = v40;
    v168 = v21;
    v137 = v41;
    v136 = v42;
    while (1)
    {
      v43 = v170;
      v40(v170, (v41 + v42 * v39), v21);
      sub_100025020(v43, &aBlock);
      if (!v175)
      {
        break;
      }

      sub_10000A748(&aBlock, &v178);
      v44 = v179;
      v45 = v180;
      v46 = sub_1000035D0(&v178, v179);
      v47 = sub_1009C5A54(v46, v38, v44, v45);
      if (!v47[2] || (Hasher.init(_seed:)(), String.hash(into:)(), v48 = Hasher._finalize()(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0))
      {
LABEL_20:

        v73 = v153;
        v74 = v168;
        v155(v153, v170, v168);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&aBlock = v78;
          *v77 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v171 = *v156;
          (v171)(v73, v74);
          v82 = sub_1000136BC(v79, v81, &aBlock);

          *(v77 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v75, v76, "Failed to enable separation monitoring for unsupported beacon: %s", v77, 0xCu);
          sub_100007BAC(v78);
        }

        else
        {

          v171 = *v156;
          (v171)(v73, v74);
        }

        v83 = v161;
        v84 = v160;
        v85 = v163;
        v86 = v162;
        v87 = v159;
        v88 = v158;
        v89 = v157;
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        (*(v88 + 104))(v89, enum case for DispatchQoS.QoSClass.default(_:), v87);
        v90 = static OS_dispatch_queue.global(qos:)();
        (*(v88 + 8))(v89, v87);
        v91 = swift_allocObject();
        *(v91 + 16) = v86;
        *(v91 + 24) = v85;
        v176 = sub_100A18D60;
        v177 = v91;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v174 = sub_100006684;
        v175 = &unk_101642230;
        v92 = _Block_copy(&aBlock);

        v93 = v165;
        static DispatchQoS.unspecified.getter();
        v172 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v94 = v164;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v92);

        (*(v167 + 8))(v94, v84);
        (*(v83 + 8))(v93, v166);
        (v171)(v170, v168);
        sub_100007BAC(&v178);
      }

      ++v39;
      v51 = ~v49;
      while (2)
      {
        switch(*(v47[6] + v50))
        {
          case 8:

            goto LABEL_16;
          default:
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v52 & 1) == 0)
            {
              v50 = (v50 + 1) & v51;
              if (((*(v47 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0)
              {
                goto LABEL_20;
              }

              continue;
            }

LABEL_16:

            v21 = v168;
            (*v156)(v170, v168);
            sub_100007BAC(&v178);
            v38 = v169;
            v32 = v138;
            v40 = v155;
            v41 = v137;
            v42 = v136;
            if (v39 == v152)
            {
              goto LABEL_17;
            }

            break;
        }

        break;
      }
    }

    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v114 = v135;
    v40(v135, v170, v21);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&aBlock = v118;
      *v117 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      v171 = *v156;
      (v171)(v114, v21);
      v122 = sub_1000136BC(v119, v121, &aBlock);

      *(v117 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v115, v116, "Failed to enable separation monitoring for unknown beacon: %s", v117, 0xCu);
      sub_100007BAC(v118);
    }

    else
    {

      v171 = *v156;
      (v171)(v114, v21);
    }

    v123 = v167;
    v124 = v163;
    v125 = v162;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v126 = v158;
    v127 = v157;
    v128 = v159;
    (*(v158 + 104))(v157, enum case for DispatchQoS.QoSClass.default(_:), v159);
    v129 = static OS_dispatch_queue.global(qos:)();
    (*(v126 + 8))(v127, v128);
    v130 = swift_allocObject();
    *(v130 + 16) = v125;
    *(v130 + 24) = v124;
    v176 = sub_100A1B70C;
    v177 = v130;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v174 = sub_100006684;
    v175 = &unk_1016421E0;
    v131 = _Block_copy(&aBlock);

    v132 = v165;
    static DispatchQoS.unspecified.getter();
    v178 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v133 = v164;
    v134 = v160;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v131);

    (*(v123 + 8))(v133, v134);
    (*(v161 + 8))(v132, v166);
    (v171)(v170, v168);
  }

  else
  {
LABEL_17:
    v53 = *(v38 + 104);
    v54 = v149;
    *v149 = v53;
    v55 = v150;
    v56 = v151;
    (*(v150 + 104))(v54, enum case for DispatchPredicate.notOnQueue(_:), v151);
    v57 = v53;
    v58 = _dispatchPreconditionTest(_:)();
    result = (*(v55 + 8))(v54, v56);
    if (v58)
    {
      v60 = v147;
      OS_dispatch_queue.sync<A>(execute:)();
      v61 = type metadata accessor for LeashRecord(0);
      v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
      sub_10000B3A8(v60, &qword_1016B1500, &unk_1013C57F0);
      if (v62 == 1)
      {
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v63 = v158;
        v64 = v157;
        v65 = v159;
        (*(v158 + 104))(v157, enum case for DispatchQoS.QoSClass.default(_:), v159);
        v66 = static OS_dispatch_queue.global(qos:)();
        (*(v63 + 8))(v64, v65);
        v67 = swift_allocObject();
        v68 = v163;
        *(v67 + 16) = v162;
        *(v67 + 24) = v68;
        v176 = sub_100A18D9C;
        v177 = v67;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v174 = sub_100006684;
        v175 = &unk_101642280;
        v69 = _Block_copy(&aBlock);

        v70 = v165;
        static DispatchQoS.unspecified.getter();
        v178 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v71 = v164;
        v72 = v160;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v69);

        (*(v167 + 8))(v71, v72);
        (*(v161 + 8))(v70, v166);
      }

      else
      {
        v95 = swift_allocObject();
        *(v95 + 16) = v32;

        v96 = v38;
        v97 = v148;
        sub_1009D954C(sub_100A18DA4, v96, sub_100A18DA8, v95, &qword_1016A78E0, &qword_1013B6888, sub_100A187B4, v148);

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v98 = v158;
        v99 = v157;
        v100 = v159;
        (*(v158 + 104))(v157, enum case for DispatchQoS.QoSClass.default(_:), v159);
        v171 = static OS_dispatch_queue.global(qos:)();
        (*(v98 + 8))(v99, v100);
        v101 = v97;
        v102 = v141;
        sub_1000D2A70(v101, v141, &qword_1016A78E0, &qword_1013B6888);
        v103 = (*(v139 + 80) + 16) & ~*(v139 + 80);
        v104 = (v140 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        v106 = swift_allocObject();
        sub_1000D2AD8(v102, v106 + v103, &qword_1016A78E0, &qword_1013B6888);
        *(v106 + v104) = v32;
        v107 = (v106 + v105);
        v108 = v163;
        *v107 = v162;
        v107[1] = v108;
        *(v106 + ((v105 + 23) & 0xFFFFFFFFFFFFFFF8)) = v96;
        v176 = sub_100A18F1C;
        v177 = v106;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v174 = sub_100006684;
        v175 = &unk_1016422F8;
        v109 = _Block_copy(&aBlock);

        v110 = v165;
        static DispatchQoS.unspecified.getter();
        v178 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v111 = v164;
        v112 = v160;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v113 = v171;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v109);

        (*(v167 + 8))(v111, v112);
        (*(v161 + 8))(v110, v166);
        sub_10000B3A8(v148, &qword_1016A78E0, &qword_1013B6888);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1009D92A4(void (*a1)(void *, uint64_t))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to enable separation monitoring due to missing leash record.", v5, 2u);
  }

  type metadata accessor for SPSeparationMonitoringError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v6, 1);
}

uint64_t sub_1009D9420(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for LeashRecord(0) + 24);
  v11 = *(a1 + v3);

  sub_100398278(v4);
  v5 = sub_10000954C(v11);

  v6 = *(v5 + 16);
  if (!v6)
  {

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v7 = sub_1003A85FC(*(v5 + 16), 0);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = sub_1003A9D58(&v11, &v7[(*(v8 + 80) + 32) & ~*(v8 + 80)], v6, v5);
  result = sub_1000128F8(v11);
  if (v9 == v6)
  {

LABEL_5:
    *(a1 + v3) = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1009D954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v51 = a6;
  v52 = a7;
  v49 = a4;
  v50 = a5;
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v44 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v43 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v8;
  v20 = *(v8 + 104);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.notOnQueue(_:), v16);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    v43[1] = v21;
    v43[2] = a8;
    UUID.init()();
    v19 = v15;
    if (qword_101694B70 == -1)
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
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177B780);
  v24 = v44;
  (*(v11 + 16))(v44, v19, v10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43[0] = v19;
    v28 = v27;
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v24;
    v33 = v32;
    v34 = *(v11 + 8);
    v34(v31, v10);
    v35 = sub_1000136BC(v30, v33, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Queueing synced modify operation with identifier: %s", v28, 0xCu);
    sub_100007BAC(v29);

    v19 = v43[0];
  }

  else
  {

    v34 = *(v11 + 8);
    v36 = (v34)(v24, v10);
  }

  __chkstk_darwin(v36);
  v37 = v45;
  v38 = v46;
  v43[-6] = v19;
  v43[-5] = v37;
  v39 = v47;
  v40 = v48;
  v43[-4] = v38;
  v43[-3] = v40;
  v43[-2] = v39;
  v41 = v50;
  v43[-1] = v49;
  sub_1000BC4D4(v41, v51);
  OS_dispatch_queue.sync<A>(execute:)();
  return (v34)(v19, v10);
}

uint64_t sub_1009D9970(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  sub_1000D2A70(a1, &v24 - v6, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B780);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to modify leash record due to: %{public}@", v11, 0xCu);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v24 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v25;
    a3(v25, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B780);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      type metadata accessor for UUID();
      v20 = Array.description.getter();
      v22 = sub_1000136BC(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Completed enabling separation monitoring for beacons: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    a3(0, 0);
    sub_10000B3A8(v7, &qword_1016A78E0, &qword_1013B6888);
  }

  sub_100A83364(0);
  return sub_100A8306C(0xEu);
}

uint64_t sub_1009D9D6C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v135 = a3;
  v136 = a4;
  v146 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v138 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchQoS();
  v8 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v133 = *(v10 - 8);
  v134 = v10;
  __chkstk_darwin(v10);
  v132 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v125 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v14;
  __chkstk_darwin(v13);
  v17 = (v122 - v16);
  v145 = type metadata accessor for UUID();
  v128 = *(v145 - 8);
  v18 = __chkstk_darwin(v145);
  v124 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v123 = v122 - v21;
  __chkstk_darwin(v20);
  v130 = v122 - v22;
  v23 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v23 - 8);
  v25 = v122 - v24;
  v143 = type metadata accessor for LeashRecord(0);
  v131 = *(v143 - 8);
  __chkstk_darwin(v143);
  v144 = v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177B780);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v139 = v5;
  v140 = v8;
  v142 = a1;
  v129 = v17;
  v127 = v15;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    v34 = Array.description.getter();
    v36 = sub_1000136BC(v34, v35, &aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Disabling separation monitoring for beacons: %s", v32, 0xCu);
    sub_100007BAC(v33);
  }

  sub_100ABD310(v25);
  if ((*(v131 + 6))(v25, 1, v143) == 1)
  {
    sub_10000B3A8(v25, &qword_1016B1500, &unk_1013C57F0);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      v41 = Array.description.getter();
      v43 = sub_1000136BC(v41, v42, &aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to disable separation monitoring for beacons: %s due to missing leash record", v39, 0xCu);
      sub_100007BAC(v40);
    }

    v45 = v137;
    v44 = v138;
    v46 = v135;
    v47 = v136;
    v49 = v133;
    v48 = v134;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v50 = v132;
    (*(v49 + 104))(v132, enum case for DispatchQoS.QoSClass.default(_:), v48);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v49 + 8))(v50, v48);
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    *(v52 + 24) = v47;
    v152 = sub_100A18754;
    v153 = v52;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_100006684;
    v151 = &unk_101641E98;
    v53 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v147 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v54 = v139;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);

    (*(v44 + 8))(v7, v54);
    (*(v140 + 8))(v45, v141);
  }

  else
  {
    v122[1] = v28;
    v131 = v7;
    sub_100A18C9C(v25, v144, type metadata accessor for LeashRecord);
    v55 = *(v142 + 16);
    v56 = v145;
    v57 = v130;
    if (v55)
    {
      v58 = *(v128 + 16);
      v59 = (v128 + 8);
      v60 = v142 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v61 = *(v128 + 72);
      while (1)
      {
        v58(v57, v60, v56);
        sub_100025020(v57, &aBlock);
        v62 = v151;
        sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
        if (!v62)
        {
          break;
        }

        if (!sub_1005C8A30(v57, *(v144 + *(v143 + 24))))
        {
          v93 = v123;
          v83 = v145;
          v58(v123, v57, v145);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            aBlock = v97;
            *v96 = 136315138;
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v99 = v93;
            v101 = v100;
            v146 = *v59;
            v146(v99, v83);
            v102 = sub_1000136BC(v98, v101, &aBlock);

            *(v96 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v94, v95, "Failed to disable separation monitoring for unleashed beacon: %s", v96, 0xCu);
            sub_100007BAC(v97);
          }

          else
          {

            v146 = *v59;
            v146(v93, v83);
          }

          v112 = v135;
          v111 = v136;
          v114 = v133;
          v113 = v134;
          v115 = v132;
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          (*(v114 + 104))(v115, enum case for DispatchQoS.QoSClass.default(_:), v113);
          v108 = static OS_dispatch_queue.global(qos:)();
          (*(v114 + 8))(v115, v113);
          v116 = swift_allocObject();
          *(v116 + 16) = v112;
          *(v116 + 24) = v111;
          v152 = sub_100A18774;
          v153 = v116;
          aBlock = _NSConcreteStackBlock;
          v149 = 1107296256;
          v110 = &unk_101641F38;
          goto LABEL_23;
        }

        v56 = v145;
        (*v59)(v57, v145);
        v60 += v61;
        if (!--v55)
        {
          goto LABEL_14;
        }
      }

      v82 = v124;
      v83 = v145;
      v58(v124, v57, v145);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        aBlock = v87;
        *v86 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v82;
        v91 = v90;
        v146 = *v59;
        v146(v89, v83);
        v92 = sub_1000136BC(v88, v91, &aBlock);

        *(v86 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v84, v85, "Failed to disable separation monitoring for unknown beacon: %s", v86, 0xCu);
        sub_100007BAC(v87);
      }

      else
      {

        v146 = *v59;
        v146(v82, v83);
      }

      v104 = v135;
      v103 = v136;
      v106 = v133;
      v105 = v134;
      v107 = v132;
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v106 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v105);
      v108 = static OS_dispatch_queue.global(qos:)();
      (*(v106 + 8))(v107, v105);
      v109 = swift_allocObject();
      *(v109 + 16) = v104;
      *(v109 + 24) = v103;
      v152 = sub_100A1B70C;
      v153 = v109;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v110 = &unk_101641EE8;
LABEL_23:
      v150 = sub_100006684;
      v151 = v110;
      v117 = _Block_copy(&aBlock);

      v118 = v137;
      static DispatchQoS.unspecified.getter();
      v147 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v119 = v131;
      v120 = v139;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v117);

      (*(v138 + 8))(v119, v120);
      (*(v140 + 8))(v118, v141);
      v146(v130, v83);
    }

    else
    {
LABEL_14:
      v63 = swift_allocObject();
      v64 = v142;
      *(v63 + 16) = v142;

      v65 = v146;

      v66 = v129;
      sub_1009D954C(sub_100A1B79C, v65, sub_100A18794, v63, &qword_1016A78E0, &qword_1013B6888, sub_100A187B4, v129);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v68 = v133;
      v67 = v134;
      v69 = v132;
      (*(v133 + 104))(v132, enum case for DispatchQoS.QoSClass.default(_:), v134);
      v145 = static OS_dispatch_queue.global(qos:)();
      (*(v68 + 8))(v69, v67);
      v70 = v127;
      sub_1000D2A70(v66, v127, &qword_1016A78E0, &qword_1013B6888);
      v71 = (*(v125 + 80) + 16) & ~*(v125 + 80);
      v72 = (v126 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      sub_1000D2AD8(v70, v74 + v71, &qword_1016A78E0, &qword_1013B6888);
      *(v74 + v72) = v64;
      v75 = (v74 + v73);
      v76 = v136;
      *v75 = v135;
      v75[1] = v76;
      *(v74 + ((v73 + 23) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v152 = sub_100A1879C;
      v153 = v74;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v150 = sub_100006684;
      v151 = &unk_101641FB0;
      v77 = _Block_copy(&aBlock);

      v78 = v137;
      static DispatchQoS.unspecified.getter();
      v147 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v79 = v131;
      v80 = v139;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v81 = v145;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v77);

      (*(v138 + 8))(v79, v80);
      (*(v140 + 8))(v78, v141);
      sub_10000B3A8(v129, &qword_1016A78E0, &qword_1013B6888);
    }

    sub_100A1B3C0(v144, type metadata accessor for LeashRecord);
  }
}

unint64_t sub_1009DB0B8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LeashRecord(0) + 24);

  v5 = sub_100A18384((a1 + v4), a2);

  v7 = *(*(a1 + v4) + 16);
  if (v7 >= v5)
  {
    return sub_100A07658(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1009DB13C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_1000D2A70(a1, &v22 - v6, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v7, &qword_1016A78E0, &qword_1013B6888);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B780);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to disable separation monitoring due to leash record update failure.", v11, 2u);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v22 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v23;
    a3(v23, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B780);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      type metadata accessor for UUID();
      v18 = Array.description.getter();
      v20 = sub_1000136BC(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Completed separation monitoring for beacons: %s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    a3(0, 0);
    sub_10000B3A8(v7, &qword_1016A78E0, &qword_1013B6888);
  }

  sub_100A83364(0);
  return sub_100A8306C(0xEu);
}

void sub_1009DB4DC(char *a1, int a2, void **a3, unint64_t a4)
{
  v192 = a2;
  v188 = type metadata accessor for DispatchTime();
  v187 = *(v188 - 8);
  v7 = __chkstk_darwin(v188);
  v185 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v186 = &v180 - v9;
  v203 = type metadata accessor for DispatchWorkItemFlags();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v199 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for DispatchQoS();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for DispatchQoS.QoSClass();
  v197 = *(v195 - 8);
  __chkstk_darwin(v195);
  v196 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v13 - 8);
  v184 = &v180 - v14;
  v183 = type metadata accessor for DirectorySequence();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v216 = (&v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = type metadata accessor for URL();
  v194 = *(v211 - 1);
  v16 = __chkstk_darwin(v211);
  v181 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v193 = &v180 - v18;
  v19 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v19 - 8);
  v205 = &v180 - v20;
  v214 = type metadata accessor for Date();
  v217 = *(v214 - 1);
  __chkstk_darwin(v214);
  v213 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SafeLocation(0);
  v212 = *(v22 - 1);
  v23 = __chkstk_darwin(v22);
  v25 = (&v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v23);
  v28 = &v180 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = (&v180 - v30);
  v189 = v32;
  __chkstk_darwin(v29);
  v34 = (&v180 - v33);
  if (qword_101694B70 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v35 = type metadata accessor for Logger();
    v36 = sub_1000076D4(v35, qword_10177B780);
    sub_100A1B358(a1, v34, type metadata accessor for SafeLocation);
    v191 = v36;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v209 = v28;
    v215 = v22;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v210 = a1;
      v41 = v40;
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      sub_100A1B358(v34, v31, type metadata accessor for SafeLocation);
      v43 = String.init<A>(describing:)();
      v190 = v31;
      v44 = v25;
      v45 = a3;
      v46 = v43;
      v47 = a4;
      v49 = v48;
      sub_100A1B3C0(v34, type metadata accessor for SafeLocation);
      v50 = sub_1000136BC(v46, v49, &aBlock);
      a4 = v47;

      *(v41 + 4) = v50;
      a3 = v45;
      v25 = v44;
      v31 = v190;
      _os_log_impl(&_mh_execute_header, v37, v38, "Adding safe location: %s", v41, 0xCu);
      sub_100007BAC(v42);
      v22 = v215;

      a1 = v210;
    }

    else
    {

      sub_100A1B3C0(v34, type metadata accessor for SafeLocation);
    }

    v51 = *&a1[v22[8]];
    v52 = *&a1[v22[9]];
    v53 = *&a1[v22[10]];
    v54 = v213;
    Date.init()();
    v55 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v55 initWithCoordinate:isa altitude:v51 horizontalAccuracy:v52 verticalAccuracy:0.0 course:v53 courseAccuracy:v53 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v58 = v217[1].isa;
    ++v217;
    v208 = v58;
    v58(v54, v214);
    v207 = a1[v22[11]];
    [v57 setReferenceFrame:?];
    LOBYTE(isa) = sub_1010E1130();

    if (isa)
    {
      type metadata accessor for SPSeparationMonitoringError(0);
      v224 = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v59 = aBlock;
      (a3)(aBlock, 1);

      return;
    }

    v206 = v22[5];
    v60 = v205;
    sub_100AC09B4();
    v61 = (*(v212 + 48))(v60, 1, v22);
    sub_10000B3A8(v60, &unk_1016AFA10, &qword_1013CB000);
    if (v61 != 1)
    {
      break;
    }

    v191 = a4;
    v180 = a3;
    v210 = a1;
    if (v192)
    {
      goto LABEL_29;
    }

    v190 = v31;
    v62 = *(v204 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v63 = v211;
    v64 = sub_1000076D4(v211, qword_10177C268);
    v65 = v194;
    (*(v194 + 16))(v193, v64, v63);
    aBlock = _swiftEmptyArrayStorage;
    v224 = _swiftEmptyArrayStorage;
    v66 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v67 = v184;
    DirectorySequence.next()();
    v68 = *(v65 + 48);
    v69 = v68(v67, 1, v63);
    v70 = v181;
    v205 = v62;
    if (v69 != 1)
    {
      v71 = *(v194 + 32);
      v72 = (v194 + 8);
      do
      {
        v73 = v211;
        v71(v70, v67, v211);
        v74 = objc_autoreleasePoolPush();
        sub_1006005CC(v70, v205, &aBlock, &v224);
        objc_autoreleasePoolPop(v74);
        (*v72)(v70, v73);
        DirectorySequence.next()();
      }

      while (v68(v67, 1, v73) != 1);
    }

    (*(v182 + 8))(v216, v183);
    v75 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    a1 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 1) = xmmword_10138BBE0;
    a3 = aBlock;
    v76 = aBlock[2];
    v34[7] = &type metadata for Int;
    v34[8] = &protocol witness table for Int;
    v34[4] = v76;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v77 = v193;
    v31 = v211;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    v34[12] = &type metadata for String;
    v34[13] = sub_100008C00();
    v34[9] = v78;
    v34[10] = v80;
    os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, a1, "Found %i records at %@", 22, 2, v34);

    (*(v194 + 8))(v77, v31);

    v216 = a3;
    v28 = v209;
    v22 = v215;
    v211 = a3[2];
    if (!v211)
    {
LABEL_28:

      a1 = v210;
      v31 = v190;
LABEL_29:
      v150 = dispatch_group_create();
      dispatch_group_enter(v150);
      sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
      v151 = swift_allocBox();
      v153 = v152;
      v154 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
      (*(*(v154 - 8) + 56))(v153, 1, 1, v154);
      v216 = type metadata accessor for SafeLocation;
      sub_100A1B358(a1, v31, type metadata accessor for SafeLocation);
      v155 = *(v212 + 80);
      v156 = (v155 + 24) & ~v155;
      v215 = (v189 + 7);
      v157 = (v189 + 7 + v156) & 0xFFFFFFFFFFFFFFF8;
      v158 = v31;
      v159 = v204;
      v160 = v195;
      v161 = swift_allocObject();
      *(v161 + 16) = v159;
      v214 = type metadata accessor for SafeLocation;
      sub_100A18C9C(v158, v161 + v156, type metadata accessor for SafeLocation);
      v213 = v151;
      *(v161 + v157) = v151;
      *(v161 + ((v157 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;

      v217 = v150;
      sub_100ABC770(sub_100A19138, v161);

      v162 = v185;
      static DispatchTime.now()();
      v163 = v186;
      + infix(_:_:)();
      v164 = *(v187 + 8);
      v165 = v188;
      v164(v162, v188);
      LOBYTE(v157) = OS_dispatch_group.wait(timeout:)();
      v164(v163, v165);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v166 = v197;
      v167 = v196;
      (*(v197 + 104))(v196, enum case for DispatchQoS.QoSClass.default(_:), v160);
      v168 = static OS_dispatch_queue.global(qos:)();
      (*(v166 + 8))(v167, v160);
      v169 = v158;
      sub_100A1B358(v210, v158, v216);
      v170 = (v155 + 17) & ~v155;
      v171 = (v215 + v170) & 0xFFFFFFFFFFFFFFF8;
      v172 = (v171 + 23) & 0xFFFFFFFFFFFFFFF8;
      v173 = swift_allocObject();
      *(v173 + 16) = v157 & 1;
      sub_100A18C9C(v169, v173 + v170, v214);
      v174 = (v173 + v171);
      v175 = v191;
      *v174 = v180;
      v174[1] = v175;
      *(v173 + v172) = v213;
      *(v173 + ((v172 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;
      v222 = sub_100A191E4;
      v223 = v173;
      aBlock = _NSConcreteStackBlock;
      v219 = 1107296256;
      v220 = sub_100006684;
      v221 = &unk_101642438;
      v176 = _Block_copy(&aBlock);

      v177 = v198;
      static DispatchQoS.unspecified.getter();
      v224 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v178 = v199;
      v179 = v203;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v176);

      (*(v202 + 8))(v178, v179);
      (*(v200 + 8))(v177, v201);

      goto LABEL_30;
    }

    a4 = 0;
    v81 = *(v212 + 80);
    v193 = ~v81;
    v194 = v81;
    v205 = v216 + ((v81 + 32) & ~v81);
    v25 = v217;
    while (a4 < *(v216 + 2))
    {
      sub_100A1B358(v205 + *(v212 + 72) * a4, v28, type metadata accessor for SafeLocation);
      v82 = *&v28[v22[8]];
      v83 = *&v28[v22[9]];
      v84 = *&v28[v22[10]];
      v85 = v213;
      Date.init()();
      v86 = objc_allocWithZone(CLLocation);
      v87 = Date._bridgeToObjectiveC()().super.isa;
      v88 = [v86 initWithCoordinate:v87 altitude:v82 horizontalAccuracy:v83 verticalAccuracy:0.0 course:v84 courseAccuracy:v84 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

      a3 = v214;
      v89 = v208;
      v208(v85, v214);
      [v88 setReferenceFrame:v28[v22[11]]];
      [v88 coordinate];
      v91 = v90;
      v93 = v92;

      UUID.uuidString.getter();
      v94 = objc_allocWithZone(CLCircularRegion);
      v95 = String._bridgeToObjectiveC()();

      v34 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      a1 = [v94 initWithCenter:v95 radius:v91 identifier:{v93, v84}];

      Date.init()();
      v96 = objc_allocWithZone(CLLocation);
      v97 = Date._bridgeToObjectiveC()().super.isa;
      v98 = [v96 initWithCoordinate:v97 altitude:v51 horizontalAccuracy:v52 verticalAccuracy:0.0 course:v53 courseAccuracy:v53 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

      v89(v85, a3);
      [v98 setReferenceFrame:v207];
      [v98 coordinate];
      v100 = v99;
      v102 = v101;

      UUID.uuidString.getter();
      v103 = objc_allocWithZone(CLCircularRegion);
      v104 = String._bridgeToObjectiveC()();

      v105 = v103;
      v22 = v215;
      v106 = [v105 initWithCenter:v104 radius:v100 identifier:{v102, v53}];

      v107 = sub_100EE8968(v106);
      v31 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      [a1 radius];
      v109 = v108;
      [a1 radius];
      v111 = v109 * v110 * 3.14159265;
      [v106 radius];
      v113 = v112;
      [v106 radius];
      v115 = v114;

      v28 = v209;
      v116 = v113 * v115 * 3.14159265;
      if (v116 >= v111)
      {
        v116 = v111;
      }

      if (v116 > 0.0 && v107 / v116 > 0.5 && v28[v22[12]] != 3)
      {

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v117 = v197;
        v118 = v196;
        v119 = v195;
        (*(v197 + 104))(v196, enum case for DispatchQoS.QoSClass.default(_:), v195);
        v120 = static OS_dispatch_queue.global(qos:)();
        (*(v117 + 8))(v118, v119);
        v121 = v28;
        v122 = v28;
        v123 = v190;
        sub_100A1B358(v121, v190, type metadata accessor for SafeLocation);
        v124 = (v194 + 16) & v193;
        v125 = (v189 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
        v126 = swift_allocObject();
        sub_100A18C9C(v123, v126 + v124, type metadata accessor for SafeLocation);
        v127 = (v126 + v125);
        v128 = v191;
        *v127 = v180;
        v127[1] = v128;
        v222 = sub_100A19290;
        v223 = v126;
        aBlock = _NSConcreteStackBlock;
        v219 = 1107296256;
        v220 = sub_100006684;
        v221 = &unk_101642488;
        v129 = _Block_copy(&aBlock);

        v130 = v198;
        static DispatchQoS.unspecified.getter();
        v224 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v131 = v199;
        v132 = v203;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v129);

        (*(v202 + 8))(v131, v132);
        (*(v200 + 8))(v130, v201);
        sub_100A1B3C0(v122, type metadata accessor for SafeLocation);
        goto LABEL_30;
      }

      ++a4;
      sub_100A1B3C0(v28, type metadata accessor for SafeLocation);
      if (v211 == a4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  sub_100A1B358(a1, v25, type metadata accessor for SafeLocation);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    aBlock = v136;
    *v135 = 136315138;
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v137 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = v138;
    sub_100A1B3C0(v25, type metadata accessor for SafeLocation);
    v140 = sub_1000136BC(v137, v139, &aBlock);

    *(v135 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v133, v134, "Safe location with identifier: %s already exists", v135, 0xCu);
    sub_100007BAC(v136);
  }

  else
  {

    sub_100A1B3C0(v25, type metadata accessor for SafeLocation);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v141 = v197;
  v142 = v196;
  v143 = v195;
  (*(v197 + 104))(v196, enum case for DispatchQoS.QoSClass.default(_:), v195);
  v144 = static OS_dispatch_queue.global(qos:)();
  (*(v141 + 8))(v142, v143);
  v145 = swift_allocObject();
  *(v145 + 16) = a3;
  *(v145 + 24) = a4;
  v222 = sub_100A19320;
  v223 = v145;
  aBlock = _NSConcreteStackBlock;
  v219 = 1107296256;
  v220 = sub_100006684;
  v221 = &unk_1016424D8;
  v146 = _Block_copy(&aBlock);

  v147 = v198;
  static DispatchQoS.unspecified.getter();
  v224 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v148 = v199;
  v149 = v203;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v146);

  (*(v202 + 8))(v148, v149);
  (*(v200 + 8))(v147, v201);
LABEL_30:
}

void sub_1009DD1A8(uint64_t a1, void (*a2)(void *, uint64_t))
{
  type metadata accessor for SPSeparationMonitoringError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = *(type metadata accessor for SafeLocation(0) + 20);
  v7 = type metadata accessor for UUID();
  *(inited + 72) = v7;
  v8 = sub_1000280DC((inited + 48));
  (*(*(v7 - 8) + 16))(v8, a1 + v6, v7);
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B780);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Overlapping Safe Location detected, failing.", v12, 2u);
  }

  v13 = v14;
  a2(v14, 1);
}

void sub_1009DD3F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{

  v9 = a5;
  sub_100B16E14(a3, 0, a2, a4, v9);
}

void sub_1009DD498(char a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v73 = a4;
  v74 = a3;
  v72 = a2;
  v71 = type metadata accessor for SafeLocation(0);
  v6 = __chkstk_darwin(v71);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v68 = &v68 - v10;
  v11 = __chkstk_darwin(v9);
  v69 = &v68 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v68 - v14;
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  __chkstk_darwin(v18 - 8);
  v20 = &v68 - v19;
  v21 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v68 - v26;
  v28 = swift_projectBox();
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177B780);
    sub_100A1B358(v72, v8, type metadata accessor for SafeLocation);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v77[0] = v33;
      *v32 = 136315138;
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100A1B3C0(v8, type metadata accessor for SafeLocation);
      v37 = sub_1000136BC(v34, v36, v77);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Adding safe location with identifier: %s failed due to timeout.", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      sub_100A1B3C0(v8, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v76 = 19;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v77[0];
LABEL_20:
    v74(v47, 1);

    return;
  }

  swift_beginAccess();
  sub_1000D2A70(v28, v20, &unk_1016B14A0, &unk_1013D68C0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016B14A0, &unk_1013D68C0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177B780);
    sub_100A1B358(v72, v17, type metadata accessor for SafeLocation);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76 = v42;
      *v41 = 136315138;
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      sub_100A1B3C0(v17, type metadata accessor for SafeLocation);
      v46 = sub_1000136BC(v43, v45, &v76);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Adding safe location with identifier: %s failed due to unknown error.", v41, 0xCu);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100A1B3C0(v17, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v75 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v76;
    goto LABEL_20;
  }

  sub_1000D2AD8(v20, v27, &unk_1016B1480, &qword_1013B6890);
  sub_1000D2A70(v27, v25, &unk_1016B1480, &qword_1013B6890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v25, &unk_1016B1480, &qword_1013B6890);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B780);
    v49 = v68;
    sub_100A1B358(v72, v68, type metadata accessor for SafeLocation);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76 = v53;
      *v52 = 136315138;
      sub_100A1B358(v49, v69, type metadata accessor for SafeLocation);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      sub_100A1B3C0(v49, type metadata accessor for SafeLocation);
      v57 = sub_1000136BC(v54, v56, &v76);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to add safe location: %s", v52, 0xCu);
      sub_100007BAC(v53);
    }

    else
    {

      sub_100A1B3C0(v49, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v75 = 15;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v67 = v76;
    v74(v76, 1);

    sub_10000B3A8(v27, &unk_1016B1480, &qword_1013B6890);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177B780);
    sub_100A1B358(v72, v15, type metadata accessor for SafeLocation);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v76 = v62;
      *v61 = 136315138;
      sub_100A1B358(v15, v69, type metadata accessor for SafeLocation);
      v63 = String.init<A>(describing:)();
      v65 = v64;
      sub_100A1B3C0(v15, type metadata accessor for SafeLocation);
      v66 = sub_1000136BC(v63, v65, &v76);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Completed adding safe location: %s", v61, 0xCu);
      sub_100007BAC(v62);
    }

    else
    {

      sub_100A1B3C0(v15, type metadata accessor for SafeLocation);
    }

    v74(0, 0);
    sub_100A8338C();
    sub_10000B3A8(v27, &unk_1016B1480, &qword_1013B6890);
    sub_10000B3A8(v25, &unk_1016B1480, &qword_1013B6890);
  }
}

uint64_t sub_1009DE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a3;
  v118 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v6 - 8);
  v124 = v6;
  __chkstk_darwin(v6);
  v120 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v121 = *(v8 - 8);
  v122 = v8;
  __chkstk_darwin(v8);
  v119 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchTime();
  v105 = *(v106 - 8);
  v12 = __chkstk_darwin(v106);
  v102 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v96 - v14;
  v15 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v15 - 8);
  v108 = (&v96 - v16);
  v109 = type metadata accessor for SafeLocation(0);
  v125 = *(v109 - 8);
  v17 = *(v125 + 64);
  v18 = __chkstk_darwin(v109);
  v107 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v104 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v100 = &v96 - v26;
  v101 = v27;
  __chkstk_darwin(v25);
  v29 = &v96 - v28;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_1000076D4(v30, qword_10177B780);
  v32 = *(v22 + 16);
  v111 = v22 + 16;
  v110 = v32;
  v32(v29, a1, v21);
  v99 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v112 = a1;
  v113 = a2;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock = v96;
    *v36 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v20;
    v40 = v39;
    v98 = *(v22 + 8);
    v98(v29, v21);
    v41 = sub_1000136BC(v37, v40, &aBlock);
    v20 = v38;

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Removing safe location with identifier: %s", v36, 0xCu);
    sub_100007BAC(v96);
    a2 = v113;

    a1 = v112;
  }

  else
  {

    v98 = *(v22 + 8);
    v98(v29, v21);
  }

  v42 = v108;
  sub_100AC09B4();
  if ((*(v125 + 48))(v42, 1, v109) == 1)
  {
    sub_10000B3A8(v42, &unk_1016AFA10, &qword_1013CB000);
    v43 = v100;
    v110(v100, a1, v21);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v98(v43, v21);
      v51 = sub_1000136BC(v48, v50, &aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Safe location with identifier: %s not found", v46, 0xCu);
      sub_100007BAC(v47);
    }

    else
    {

      v98(v43, v21);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v86 = v114;
    v85 = v115;
    v87 = v116;
    (*(v115 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v116);
    v88 = static OS_dispatch_queue.global(qos:)();
    (*(v85 + 8))(v86, v87);
    v89 = swift_allocObject();
    v90 = v118;
    *(v89 + 16) = v117;
    *(v89 + 24) = v90;
    v131 = sub_100A1B710;
    v132 = v89;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_100006684;
    v130 = &unk_1016425F0;
    v91 = _Block_copy(&aBlock);

    v92 = v119;
    static DispatchQoS.unspecified.getter();
    v126 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v93 = v120;
    v94 = v124;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v91);

    (*(v123 + 8))(v93, v94);
    (*(v121 + 8))(v92, v122);
  }

  else
  {
    v99 = v22;
    v100 = v21;
    sub_100A18C9C(v42, v20, type metadata accessor for SafeLocation);
    v52 = dispatch_group_create();
    dispatch_group_enter(v52);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = -1;
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    *(v54 + 24) = v52;
    v98 = v53;

    v108 = v52;
    v55 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v56 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_101385D80;
    v96 = type metadata accessor for SafeLocation;
    v58 = v107;
    sub_100A1B358(v20, v107, type metadata accessor for SafeLocation);
    v59 = v20;
    v60 = String.init<A>(describing:)();
    v62 = v61;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_100008C00();
    *(v57 + 32) = v60;
    *(v57 + 40) = v62;
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "Attempting to remove: %@", 24, 2, v57);

    v97 = v59;
    sub_100B176D4(v59, a2, sub_100A1935C, v54);

    v63 = v102;
    static DispatchTime.now()();
    v64 = v103;
    + infix(_:_:)();
    v65 = *(v105 + 8);
    v66 = v106;
    v65(v63, v106);
    LODWORD(v105) = OS_dispatch_group.wait(timeout:)();
    v65(v64, v66);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v68 = v114;
    v67 = v115;
    v69 = v116;
    (*(v115 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v116);
    v109 = static OS_dispatch_queue.global(qos:)();
    (*(v67 + 8))(v68, v69);
    v70 = v104;
    v71 = v100;
    v110(v104, v112, v100);
    sub_100A1B358(v59, v58, v96);
    v72 = v99;
    v73 = (*(v99 + 80) + 17) & ~*(v99 + 80);
    v74 = (v101 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v125 + 80) + v75 + 8) & ~*(v125 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v105 & 1;
    (*(v72 + 32))(v77 + v73, v70, v71);
    v78 = (v77 + v74);
    v79 = v118;
    *v78 = v117;
    v78[1] = v79;
    *(v77 + v75) = v98;
    sub_100A18C9C(v58, v77 + v76, type metadata accessor for SafeLocation);
    *(v77 + ((v17 + v76 + 7) & 0xFFFFFFFFFFFFFFF8)) = v113;
    v131 = sub_100A19364;
    v132 = v77;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_100006684;
    v130 = &unk_101642690;
    v80 = _Block_copy(&aBlock);

    v81 = v119;
    static DispatchQoS.unspecified.getter();
    v126 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v82 = v120;
    v83 = v124;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v84 = v109;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v80);

    (*(v123 + 8))(v82, v83);
    (*(v121 + 8))(v81, v122);
    sub_100A1B3C0(v97, type metadata accessor for SafeLocation);
  }
}

void sub_1009DF068(char a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v9;
    v6 = 1;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
  v8 = *(a2 + 24);
  *(a2 + 24) = v6;
  sub_100A19480(v7, v8);
  dispatch_group_leave(a3);
}

void sub_1009DF154(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v57[-v17];
  __chkstk_darwin(v16);
  v20 = &v57[-v19];
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177B780);
    (*(v12 + 16))(v15, a2, v11);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = a3;
      v26 = swift_slowAlloc();
      v66[0] = v26;
      *v24 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v12 + 8))(v15, v11);
      v30 = sub_1000136BC(v27, v29, v66);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Removing safe location with identifier: %s failed due to timeout.", v24, 0xCu);
      sub_100007BAC(v26);
      a3 = v25;
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v63 = 19;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v66[0];
LABEL_23:
    a3(v46, 1);

    return;
  }

  swift_beginAccess();
  v31 = *(a5 + 24);
  if (v31 == 255)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177B780);
    (*(v12 + 16))(v20, a2, v11);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = a3;
      v52 = swift_slowAlloc();
      v63 = v52;
      *v50 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v12 + 8))(v20, v11);
      v56 = sub_1000136BC(v53, v55, &v63);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Removing safe location with identifier: %s failed due to unknown error.", v50, 0xCu);
      sub_100007BAC(v52);
      a3 = v51;
    }

    else
    {

      (*(v12 + 8))(v20, v11);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v65 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v63;
    goto LABEL_23;
  }

  v60 = a7;
  v32 = *(a5 + 16);
  sub_1004081B0(v32, v31 & 1);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177B780);
  (*(v12 + 16))(v18, a2, v11);
  sub_1004081B0(v32, v31 & 1);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  sub_100A19480(v32, v31);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v58 = v35;
    v37 = v36;
    v59 = swift_slowAlloc();
    v65 = v59;
    *v37 = 136315394;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = a3;
    v41 = v40;
    (*(v12 + 8))(v18, v11);
    v42 = sub_1000136BC(v38, v41, &v65);
    a3 = v39;

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v63 = v32;
    v64 = v31 & 1;
    sub_1004081B0(v32, v31 & 1);
    sub_1000BC4D4(&qword_1016B16B0, &qword_1013D0A90);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000136BC(v43, v44, &v65);

    *(v37 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v34, v58, "Removing safe location with identifier: %s completed with result: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  a3(v32, v31 & 1);
  if (*(*(v61 + *(type metadata accessor for SafeLocation(0) + 52)) + 16))
  {
    sub_100A83364(0);
    sub_100A8306C(0xEu);
  }

  sub_100A8338C();
  sub_100A19480(v32, v31);
}

void sub_1009DF9B4(uint64_t a1, void (*a2)(void **, uint64_t), void (*a3)(void **, uint64_t), uint64_t a4)
{
  v103 = a2;
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v93 - 8);
  __chkstk_darwin(v93);
  v97 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v96 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v11 = __chkstk_darwin(v84);
  v83 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v82 - v13);
  v15 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v15 - 8);
  v86 = &v82 - v16;
  v17 = type metadata accessor for Date();
  v101 = *(v17 - 8);
  v102 = v17;
  __chkstk_darwin(v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SafeLocation(0);
  v87 = *(v20 - 1);
  v21 = __chkstk_darwin(v20);
  v89 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v22;
  __chkstk_darwin(v21);
  v24 = &v82 - v23;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B780);
  sub_100A1B358(a1, v24, type metadata accessor for SafeLocation);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v94 = v14;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v95 = a3;
    v30 = v29;
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    type metadata accessor for UUID();
    v85 = a4;
    v32 = a1;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_100A1B3C0(v24, type metadata accessor for SafeLocation);
    v36 = sub_1000136BC(v33, v35, &aBlock);
    a1 = v32;
    a4 = v85;

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Updating safe location with identifier: %s", v30, 0xCu);
    sub_100007BAC(v31);

    a3 = v95;
  }

  else
  {

    sub_100A1B3C0(v24, type metadata accessor for SafeLocation);
  }

  v37 = *(a1 + v20[8]);
  v38 = *(a1 + v20[9]);
  v39 = *(a1 + v20[10]);
  Date.init()();
  v40 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v42 = [v40 initWithCoordinate:isa altitude:v37 horizontalAccuracy:v38 verticalAccuracy:0.0 course:v39 courseAccuracy:v39 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v101 + 8))(v19, v102);
  [v42 setReferenceFrame:*(a1 + v20[11])];
  LOBYTE(isa) = sub_1010E1130();

  if (isa)
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v104 = 21;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = aBlock;
    v103(aBlock, 1);
  }

  else
  {
    v44 = v86;
    sub_100AC09B4();
    v45 = v87;
    v46 = (*(v87 + 48))(v44, 1, v20);
    sub_10000B3A8(v44, &unk_1016AFA10, &qword_1013CB000);
    if (v46 == 1)
    {
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v47 = v91;
      v48 = v90;
      v49 = v92;
      (*(v91 + 104))(v90, enum case for DispatchQoS.QoSClass.default(_:), v92);
      v50 = static OS_dispatch_queue.global(qos:)();
      (*(v47 + 8))(v48, v49);
      v51 = v89;
      sub_100A1B358(a1, v89, type metadata accessor for SafeLocation);
      v52 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v53 = (v88 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      sub_100A18C9C(v51, v54 + v52, type metadata accessor for SafeLocation);
      v55 = (v54 + v53);
      *v55 = v103;
      v55[1] = a3;
      v109 = sub_100A19560;
      v110 = v54;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_100006684;
      v108 = &unk_1016427A8;
      v56 = _Block_copy(&aBlock);

      v57 = v96;
      static DispatchQoS.unspecified.getter();
      v104 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v58 = v97;
      v59 = v93;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v56);

      (*(v100 + 8))(v58, v59);
      (*(v98 + 8))(v57, v99);
    }

    else
    {
      v95 = a3;
      v60 = v89;
      sub_100A1B358(a1, v89, type metadata accessor for SafeLocation);
      v61 = *(v45 + 80);
      v82 = a1;
      v62 = a4;
      v63 = v88;
      v64 = swift_allocObject();
      *(v64 + 16) = a4;
      sub_100A18C9C(v60, v64 + ((v61 + 24) & ~v61), type metadata accessor for SafeLocation);
      sub_100A1B358(a1, v60, type metadata accessor for SafeLocation);
      v65 = (v61 + 16) & ~v61;
      v101 = v65 + v63;
      v66 = swift_allocObject();
      sub_100A18C9C(v60, v66 + v65, type metadata accessor for SafeLocation);

      v67 = v94;
      v85 = v62;
      sub_1009D954C(sub_100A19728, v64, sub_100A1979C, v66, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v94);

      v68 = v83;
      sub_1000D2A70(v67, v83, &unk_1016B1480, &qword_1013B6890);
      LODWORD(v66) = swift_getEnumCaseMultiPayload();
      sub_10000B3A8(v68, &unk_1016B1480, &qword_1013B6890);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v69 = v91;
      v70 = v90;
      v71 = v92;
      (*(v91 + 104))(v90, enum case for DispatchQoS.QoSClass.default(_:), v92);
      v102 = static OS_dispatch_queue.global(qos:)();
      (*(v69 + 8))(v70, v71);
      sub_100A1B358(v82, v60, type metadata accessor for SafeLocation);
      v72 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      sub_100A18C9C(v60, v73 + v65, type metadata accessor for SafeLocation);
      v74 = (v73 + v72);
      if (v66 == 1)
      {
        v75 = v95;
        *v74 = v103;
        v74[1] = v75;
        v109 = sub_100A19928;
        v110 = v73;
        aBlock = _NSConcreteStackBlock;
        v106 = 1107296256;
        v107 = sub_100006684;
        v108 = &unk_101642848;
        v76 = _Block_copy(&aBlock);
      }

      else
      {
        v77 = v95;
        *v74 = v103;
        v74[1] = v77;
        *(v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8)) = v85;
        v109 = sub_100A19A6C;
        v110 = v73;
        aBlock = _NSConcreteStackBlock;
        v106 = 1107296256;
        v107 = sub_100006684;
        v108 = &unk_101642898;
        v76 = _Block_copy(&aBlock);
      }

      v78 = v96;
      static DispatchQoS.unspecified.getter();
      v104 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v79 = v97;
      v80 = v93;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v81 = v102;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*(v100 + 8))(v79, v80);
      (*(v98 + 8))(v78, v99);
      sub_10000B3A8(v94, &unk_1016B1480, &qword_1013B6890);
    }
  }
}

uint64_t sub_1009E08D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation(0);
  v5 = v4[7];
  v7 = *(a2 + v5);
  v6 = *(a2 + v5 + 8);
  v8 = (a1 + v5);

  *v8 = v7;
  v8[1] = v6;
  *(a1 + v4[8]) = *(a2 + v4[8]);
  *(a1 + v4[9]) = *(a2 + v4[9]);
  *(a1 + v4[10]) = *(a2 + v4[10]);
  *(a1 + v4[11]) = *(a2 + v4[11]);
  v9 = v4[12];
  v10 = *(a2 + v9);
  *(a1 + v9) = v10;
  *(a1 + v4[6]) = *(a2 + v4[6]);
  v11 = v4[13];
  v12 = *(a2 + v11);

  *(a1 + v11) = v12;
  if (v10 != 1)
  {

    *(a1 + v11) = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1009E09CC(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4, uint64_t a5)
{
  v9 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B780);
  sub_100A1B358(a1, v11, type metadata accessor for SafeLocation);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a5;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
    v22 = sub_1000136BC(v19, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, a4, v17, 0xCu);
    sub_100007BAC(v18);

    a2 = v16;
    a5 = v25;
  }

  else
  {

    sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
  }

  type metadata accessor for SPSeparationMonitoringError(0);
  v26 = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v23 = v27;
  a2(v27, 1);
}

uint64_t sub_1009E0CD0(uint64_t a1, void (*a2)(void, void))
{
  v4 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B780);
  sub_100A1B358(a1, v6, type metadata accessor for SafeLocation);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100A1B3C0(v6, type metadata accessor for SafeLocation);
    v15 = sub_1000136BC(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfuly updated safe location with identifier: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100A1B3C0(v6, type metadata accessor for SafeLocation);
  }

  a2(0, 0);
  sub_100A8306C(0xEu);
  sub_100A83364(0);
  return sub_100A8338C();
}

uint64_t sub_1009E0F64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v189 = a5;
  v188 = a4;
  v204 = a3;
  v185 = type metadata accessor for DispatchWorkItemFlags();
  v187 = *(v185 - 8);
  __chkstk_darwin(v185);
  v182 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v183 = *(v8 - 8);
  __chkstk_darwin(v8);
  v181 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v179 = *(v10 - 8);
  __chkstk_darwin(v10);
  v178 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SystemInfo.DeviceLockState();
  v196 = *(v201 - 8);
  v12 = __chkstk_darwin(v201);
  v200 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v199 = &v168 - v14;
  v173 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v15 = __chkstk_darwin(v173);
  v172 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v174 = (&v168 - v17);
  v18 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v18 - 8);
  v197 = &v168 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v186 = v21;
  v22 = __chkstk_darwin(v20);
  v207 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v168 = &v168 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v168 - v27;
  v28 = __chkstk_darwin(v26);
  v169 = &v168 - v29;
  v30 = __chkstk_darwin(v28);
  v176 = &v168 - v31;
  v32 = __chkstk_darwin(v30);
  v203 = &v168 - v33;
  v171 = v34;
  __chkstk_darwin(v32);
  v36 = &v168 - v35;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B780);
  v39 = *(v21 + 16);
  v191 = a2;
  v205 = v39;
  v206 = v21 + 16;
  v39(v36, a2, v20);

  v177 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v184 = v8;
  v180 = v10;
  v190 = a1;
  v175 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v43 = 136315394;
    v44 = Array.description.getter();
    v46 = sub_1000136BC(v44, v45, &aBlock);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v21 + 8);
    v50(v36, v20);
    v51 = sub_1000136BC(v47, v49, &aBlock);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Assigning beacons: %s to safe location with identifier: %s", v43, 0x16u);
    swift_arrayDestroy();

    v52 = v50;
  }

  else
  {

    v52 = *(v21 + 8);
    v52(v36, v20);
  }

  v53 = v197;
  v54 = v191;
  v55 = v204;
  sub_100AC09B4();
  v56 = type metadata accessor for SafeLocation(0);
  v57 = (*(*(v56 - 8) + 48))(v53, 1, v56);
  sub_10000B3A8(v53, &unk_1016AFA10, &qword_1013CB000);
  v58 = v207;
  if (v57 == 1)
  {
    v205(v207, v54, v20);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v61 = 136315394;
      v62 = Array.description.getter();
      v64 = v52;
      v65 = v20;
      v66 = sub_1000136BC(v62, v63, &aBlock);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v64(v58, v65);
      v70 = sub_1000136BC(v67, v69, &aBlock);

      *(v61 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Unable to assign beacons %s to non-existant safe location with UUID: %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v52(v58, v20);
    }

    v108 = v188;
    v109 = v180;
    v110 = v179;
    v111 = v178;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v110 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v112 = static OS_dispatch_queue.global(qos:)();
    (*(v110 + 8))(v111, v109);
    v113 = swift_allocObject();
    v114 = v189;
    *(v113 + 16) = v108;
    *(v113 + 24) = v114;
    v211 = sub_100A19ED0;
    v212 = v113;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101642A78;
    v115 = _Block_copy(&aBlock);

    v116 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v117 = v182;
    v118 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v115);

    (*(v187 + 8))(v117, v118);
    (*(v183 + 8))(v116, v184);
  }

  v71 = *(v190 + 16);
  v198 = v52;
  v72 = v176;
  v73 = v203;
  v74 = v205;
  v202 = v20;
  if (v71)
  {
    v75 = v196++;
    v197 = (v75 + 13);
    v193 = v186 + 8;
    v76 = *(v175 + 80);
    v195 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v77 = v190 + ((v76 + 32) & ~v76);
    v192 = *(v175 + 72);
    v194 = xmmword_101385D80;
    v78 = v199;
    while (1)
    {
      v207 = v71;
      v74(v72, v77, v20);
      v79 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v80 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = v194;
      v82 = UUID.uuidString.getter();
      v84 = v83;
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "beaconRecord(for uuid: %@)", 26, 2, v81);

      static SystemInfo.lockState.getter();
      v86 = v200;
      v85 = v201;
      (*v197)(v200, v195, v201);
      sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *v196;
      (*v196)(v86, v85);
      v87(v78, v85);
      if (v82)
      {
        break;
      }

      v55 = v204;
      v88 = sub_100007F54();
      __chkstk_darwin(v88);
      *(&v168 - 2) = v72;
      sub_1000314D0(sub_1004E4EC0, v88, &aBlock);

      v20 = v202;
      v73 = v203;
      if (!*(&v210 + 1))
      {
        goto LABEL_23;
      }

      sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
      v198(v72, v20);
      v77 += v192;
      v71 = v207 - 1;
      v74 = v205;
      if (v207 == 1)
      {
        goto LABEL_16;
      }
    }

    v133 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v133, &_mh_execute_header, v80, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v211 = 0;
    aBlock = 0u;
    v210 = 0u;
    v20 = v202;
LABEL_23:
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v134 = v169;
    v135 = v205;
    v205(v169, v72, v20);
    v136 = v170;
    v135(v170, v191, v20);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();
    v139 = os_log_type_enabled(v137, v138);
    v140 = v187;
    if (v139)
    {
      v141 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&aBlock = v207;
      *v141 = 136315394;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v206) = v138;
      v142 = dispatch thunk of CustomStringConvertible.description.getter();
      v143 = v134;
      v145 = v144;
      v146 = v198;
      v198(v143, v20);
      v147 = sub_1000136BC(v142, v145, &aBlock);

      *(v141 + 4) = v147;
      *(v141 + 12) = 2080;
      v148 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v149;
      v146(v136, v20);
      v140 = v187;
      v151 = sub_1000136BC(v148, v150, &aBlock);

      *(v141 + 14) = v151;
      _os_log_impl(&_mh_execute_header, v137, v206, "Unable to assign non-existant beacon %s to safe location with UUID: %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v152 = v198;
      v198(v136, v20);
      v152(v134, v20);
    }

    v153 = v189;
    v154 = v188;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v155 = v179;
    v156 = v178;
    v157 = v180;
    (*(v179 + 104))(v178, enum case for DispatchQoS.QoSClass.default(_:), v180);
    v158 = static OS_dispatch_queue.global(qos:)();
    (*(v155 + 8))(v156, v157);
    v159 = swift_allocObject();
    *(v159 + 16) = v154;
    *(v159 + 24) = v153;
    v211 = sub_100A19EF0;
    v212 = v159;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101642AC8;
    v160 = _Block_copy(&aBlock);

    v161 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v162 = v182;
    v163 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v160);

    (*(v140 + 8))(v162, v163);
    (*(v183 + 8))(v161, v184);
    v198(v176, v202);
  }

LABEL_16:
  v74(v73, v191, v20);
  v89 = v175;
  v90 = (*(v175 + 80) + 24) & ~*(v175 + 80);
  v201 = v90 + v171;
  v91 = swift_allocObject();
  *(v91 + 16) = v55;
  v207 = *(v89 + 32);
  (v207)(v91 + v90, v73, v20);
  v92 = swift_allocObject();
  v93 = v190;
  *(v92 + 16) = v190;

  v94 = v174;
  sub_1009D954C(sub_100A19F10, v91, sub_100A19F80, v92, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v174);

  v95 = v172;
  sub_1000D2A70(v94, v172, &unk_1016B1480, &qword_1013B6890);
  LODWORD(v91) = swift_getEnumCaseMultiPayload();
  sub_10000B3A8(v95, &unk_1016B1480, &qword_1013B6890);
  if (v91 != 1)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v119 = v179;
    v120 = v178;
    v121 = v180;
    (*(v179 + 104))(v178, enum case for DispatchQoS.QoSClass.default(_:), v180);
    v122 = static OS_dispatch_queue.global(qos:)();
    (*(v119 + 8))(v120, v121);
    v123 = v202;
    v124 = v203;
    v205(v203, v191, v202);
    v125 = (v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *(v126 + 16) = v93;
    (v207)(v126 + v90, v124, v123);
    v127 = (v126 + v125);
    v128 = v189;
    *v127 = v188;
    v127[1] = v128;
    *(v126 + ((v125 + 23) & 0xFFFFFFFFFFFFFFF8)) = v204;
    v211 = sub_100A1A07C;
    v212 = v126;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101642B68;
    v129 = _Block_copy(&aBlock);

    v130 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v131 = v182;
    v132 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v129);

    (*(v187 + 8))(v131, v132);
    (*(v183 + 8))(v130, v184);
    sub_10000B3A8(v174, &unk_1016B1480, &qword_1013B6890);
  }

  v96 = v168;
  v97 = v202;
  v205(v168, v191, v202);

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v100 = 136315394;
    v101 = Array.description.getter();
    v103 = sub_1000136BC(v101, v102, &aBlock);

    *(v100 + 4) = v103;
    *(v100 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v198(v96, v97);
    v107 = sub_1000136BC(v104, v106, &aBlock);

    *(v100 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v98, v99, "Failed to assign %s to safe location with UUID: %s", v100, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v198(v96, v97);
  }

  v165 = v188;
  v166 = v174;
  type metadata accessor for SPSeparationMonitoringError(0);
  v208 = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v167 = aBlock;
  v165(aBlock, 1);

  return sub_10000B3A8(v166, &unk_1016B1480, &qword_1013B6890);
}

uint64_t sub_1009E2A14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SafeLocation(0);

  result = sub_100398278(v4);
  *(a1 + *(v3 + 48)) = 1;
  return result;
}

uint64_t sub_1009E2A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v189 = a5;
  v188 = a4;
  v204 = a3;
  v185 = type metadata accessor for DispatchWorkItemFlags();
  v187 = *(v185 - 8);
  __chkstk_darwin(v185);
  v182 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v183 = *(v8 - 8);
  __chkstk_darwin(v8);
  v181 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v179 = *(v10 - 8);
  __chkstk_darwin(v10);
  v178 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SystemInfo.DeviceLockState();
  v196 = *(v201 - 8);
  v12 = __chkstk_darwin(v201);
  v200 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v199 = &v168 - v14;
  v173 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v15 = __chkstk_darwin(v173);
  v172 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v174 = (&v168 - v17);
  v18 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v18 - 8);
  v197 = &v168 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v186 = v21;
  v22 = __chkstk_darwin(v20);
  v207 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v168 = &v168 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v168 - v27;
  v28 = __chkstk_darwin(v26);
  v169 = &v168 - v29;
  v30 = __chkstk_darwin(v28);
  v176 = &v168 - v31;
  v32 = __chkstk_darwin(v30);
  v203 = &v168 - v33;
  v171 = v34;
  __chkstk_darwin(v32);
  v36 = &v168 - v35;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B780);
  v39 = *(v21 + 16);
  v191 = a2;
  v205 = v39;
  v206 = v21 + 16;
  v39(v36, a2, v20);

  v177 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v184 = v8;
  v180 = v10;
  v190 = a1;
  v175 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v43 = 136315394;
    v44 = Array.description.getter();
    v46 = sub_1000136BC(v44, v45, &aBlock);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v21 + 8);
    v50(v36, v20);
    v51 = sub_1000136BC(v47, v49, &aBlock);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unassigning beacons: %s from safe location with identifier: %s", v43, 0x16u);
    swift_arrayDestroy();

    v52 = v50;
  }

  else
  {

    v52 = *(v21 + 8);
    v52(v36, v20);
  }

  v53 = v197;
  v54 = v191;
  v55 = v204;
  sub_100AC09B4();
  v56 = type metadata accessor for SafeLocation(0);
  v57 = (*(*(v56 - 8) + 48))(v53, 1, v56);
  sub_10000B3A8(v53, &unk_1016AFA10, &qword_1013CB000);
  v58 = v207;
  if (v57 == 1)
  {
    v205(v207, v54, v20);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v61 = 136315394;
      v62 = Array.description.getter();
      v64 = v52;
      v65 = v20;
      v66 = sub_1000136BC(v62, v63, &aBlock);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v64(v58, v65);
      v70 = sub_1000136BC(v67, v69, &aBlock);

      *(v61 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Unable to unassign beacons %s from non-existent safe location with UUID: %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v52(v58, v20);
    }

    v108 = v188;
    v109 = v180;
    v110 = v179;
    v111 = v178;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v110 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v112 = static OS_dispatch_queue.global(qos:)();
    (*(v110 + 8))(v111, v109);
    v113 = swift_allocObject();
    v114 = v189;
    *(v113 + 16) = v108;
    *(v113 + 24) = v114;
    v211 = sub_100A1B710;
    v212 = v113;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101641C18;
    v115 = _Block_copy(&aBlock);

    v116 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v117 = v182;
    v118 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v115);

    (*(v187 + 8))(v117, v118);
    (*(v183 + 8))(v116, v184);
  }

  v71 = *(v190 + 16);
  v198 = v52;
  v72 = v176;
  v73 = v203;
  v74 = v205;
  v202 = v20;
  if (v71)
  {
    v75 = v196++;
    v197 = (v75 + 13);
    v193 = v186 + 8;
    v76 = *(v175 + 80);
    v195 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v77 = v190 + ((v76 + 32) & ~v76);
    v192 = *(v175 + 72);
    v194 = xmmword_101385D80;
    v78 = v199;
    while (1)
    {
      v207 = v71;
      v74(v72, v77, v20);
      v79 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v80 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = v194;
      v82 = UUID.uuidString.getter();
      v84 = v83;
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "beaconRecord(for uuid: %@)", 26, 2, v81);

      static SystemInfo.lockState.getter();
      v86 = v200;
      v85 = v201;
      (*v197)(v200, v195, v201);
      sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *v196;
      (*v196)(v86, v85);
      v87(v78, v85);
      if (v82)
      {
        break;
      }

      v55 = v204;
      v88 = sub_100007F54();
      __chkstk_darwin(v88);
      *(&v168 - 2) = v72;
      sub_1000314D0(sub_100030E14, v88, &aBlock);

      v20 = v202;
      v73 = v203;
      if (!*(&v210 + 1))
      {
        goto LABEL_23;
      }

      sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
      v198(v72, v20);
      v77 += v192;
      v71 = v207 - 1;
      v74 = v205;
      if (v207 == 1)
      {
        goto LABEL_16;
      }
    }

    v133 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v133, &_mh_execute_header, v80, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v211 = 0;
    aBlock = 0u;
    v210 = 0u;
    v20 = v202;
LABEL_23:
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v134 = v169;
    v135 = v205;
    v205(v169, v72, v20);
    v136 = v170;
    v135(v170, v191, v20);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();
    v139 = os_log_type_enabled(v137, v138);
    v140 = v187;
    if (v139)
    {
      v141 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&aBlock = v207;
      *v141 = 136315394;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v206) = v138;
      v142 = dispatch thunk of CustomStringConvertible.description.getter();
      v143 = v134;
      v145 = v144;
      v146 = v198;
      v198(v143, v20);
      v147 = sub_1000136BC(v142, v145, &aBlock);

      *(v141 + 4) = v147;
      *(v141 + 12) = 2080;
      v148 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v149;
      v146(v136, v20);
      v140 = v187;
      v151 = sub_1000136BC(v148, v150, &aBlock);

      *(v141 + 14) = v151;
      _os_log_impl(&_mh_execute_header, v137, v206, "Unable to unassign non-existent beacon %s to safe location with UUID: %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v152 = v198;
      v198(v136, v20);
      v152(v134, v20);
    }

    v153 = v189;
    v154 = v188;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v155 = v179;
    v156 = v178;
    v157 = v180;
    (*(v179 + 104))(v178, enum case for DispatchQoS.QoSClass.default(_:), v180);
    v158 = static OS_dispatch_queue.global(qos:)();
    (*(v155 + 8))(v156, v157);
    v159 = swift_allocObject();
    *(v159 + 16) = v154;
    *(v159 + 24) = v153;
    v211 = sub_100A1B70C;
    v212 = v159;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101641C68;
    v160 = _Block_copy(&aBlock);

    v161 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v162 = v182;
    v163 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v160);

    (*(v140 + 8))(v162, v163);
    (*(v183 + 8))(v161, v184);
    v198(v176, v202);
  }

LABEL_16:
  v74(v73, v191, v20);
  v89 = v175;
  v90 = (*(v175 + 80) + 24) & ~*(v175 + 80);
  v201 = v90 + v171;
  v91 = swift_allocObject();
  *(v91 + 16) = v55;
  v207 = *(v89 + 32);
  (v207)(v91 + v90, v73, v20);
  v92 = swift_allocObject();
  v93 = v190;
  *(v92 + 16) = v190;

  v94 = v174;
  sub_1009D954C(sub_100A1B7A0, v91, sub_100A02DB8, v92, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v174);

  v95 = v172;
  sub_1000D2A70(v94, v172, &unk_1016B1480, &qword_1013B6890);
  LODWORD(v91) = swift_getEnumCaseMultiPayload();
  sub_10000B3A8(v95, &unk_1016B1480, &qword_1013B6890);
  if (v91 != 1)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v119 = v179;
    v120 = v178;
    v121 = v180;
    (*(v179 + 104))(v178, enum case for DispatchQoS.QoSClass.default(_:), v180);
    v122 = static OS_dispatch_queue.global(qos:)();
    (*(v119 + 8))(v120, v121);
    v123 = v202;
    v124 = v203;
    v205(v203, v191, v202);
    v125 = (v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *(v126 + 16) = v93;
    (v207)(v126 + v90, v124, v123);
    v127 = (v126 + v125);
    v128 = v189;
    *v127 = v188;
    v127[1] = v128;
    *(v126 + ((v125 + 23) & 0xFFFFFFFFFFFFFFF8)) = v204;
    v211 = sub_100A074B8;
    v212 = v126;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_100006684;
    *(&v210 + 1) = &unk_101641D08;
    v129 = _Block_copy(&aBlock);

    v130 = v181;
    static DispatchQoS.unspecified.getter();
    v208 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v131 = v182;
    v132 = v185;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v129);

    (*(v187 + 8))(v131, v132);
    (*(v183 + 8))(v130, v184);
    sub_10000B3A8(v174, &unk_1016B1480, &qword_1013B6890);
  }

  v96 = v168;
  v97 = v202;
  v205(v168, v191, v202);

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v100 = 136315394;
    v101 = Array.description.getter();
    v103 = sub_1000136BC(v101, v102, &aBlock);

    *(v100 + 4) = v103;
    *(v100 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v198(v96, v97);
    v107 = sub_1000136BC(v104, v106, &aBlock);

    *(v100 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v98, v99, "Failed to unassign %s from safe location with UUID: %s", v100, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v198(v96, v97);
  }

  v165 = v188;
  v166 = v174;
  type metadata accessor for SPSeparationMonitoringError(0);
  v208 = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v167 = aBlock;
  v165(aBlock, 1);

  return sub_10000B3A8(v166, &unk_1016B1480, &qword_1013B6890);
}

void sub_1009E451C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPSeparationMonitoringError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v4, 1);
}

uint64_t sub_1009E45DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation(0);
  v5 = *(v4 + 52);

  v6 = sub_100A18384((a1 + v5), a2);

  v8 = *(*(a1 + v5) + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    result = sub_100A07658(v6, v8);
    if (*(*(a1 + v5) + 16))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *(a1 + *(v4 + 48)) = v9;
  }

  return result;
}

uint64_t sub_1009E4688(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, const char *a6)
{
  v26 = a6;
  v27 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B780);
  (*(v9 + 16))(v11, a2, v8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a3;
    v16 = v15;
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = Array.description.getter();
    v19 = sub_1000136BC(v17, v18, &v28);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, v26, v16, 0x16u);
    swift_arrayDestroy();

    a3 = v25;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  a3(0, 0);
  sub_100A8306C(0xEu);
  sub_100A83364(0);
  return sub_100A8338C();
}

void *sub_1009E4988(void *a1)
{
  v126 = type metadata accessor for SafeLocation(0);
  v115 = *(v126 - 1);
  __chkstk_darwin(v126);
  v116 = (&v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for Date();
  v109 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v117 = *(v129 - 8);
  v4 = __chkstk_darwin(v129);
  v123 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v122 = &v109 - v7;
  v8 = __chkstk_darwin(v6);
  v121 = &v109 - v9;
  v10 = __chkstk_darwin(v8);
  v120 = (&v109 - v11);
  __chkstk_darwin(v10);
  v127 = (&v109 - v12);
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v13 - 8);
  v15 = (&v109 - v14);
  v112 = type metadata accessor for DirectorySequence();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v17 = (&v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 1);
  v20 = __chkstk_darwin(v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v109 - v23;
  [a1 coordinate];
  v26 = v25;
  v28 = v27;
  [a1 horizontalAccuracy];
  v30 = v29;
  v31 = objc_allocWithZone(CLCircularRegion);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 initWithCenter:v32 radius:v26 identifier:{v28, v30}];

  v34 = [a1 referenceFrame];
  v128 = v33;
  [v33 setGeoReferenceFrame:v34];
  v35 = *(v119 + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v36 = sub_1000076D4(v18, qword_10177C268);
    (v19[2])(v24, v36, v18);
    v130 = _swiftEmptyArrayStorage;
    v131[0] = _swiftEmptyArrayStorage;
    v37 = [objc_opt_self() defaultManager];
    v113 = v24;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v38 = v18;
    v39 = v17;
    DirectorySequence.next()();
    v40 = v19[6];
    v17 = v15;
    v41 = v15;
    v42 = v38;
    v43 = v40(v41, 1, v38);
    v114 = v19;
    if (v43 != 1)
    {
      v119 = v35;
      v118 = v19[4];
      do
      {
        (v118)(v22, v17, v38);
        v44 = objc_autoreleasePoolPush();
        sub_1006005CC(v22, v119, v131, &v130);
        objc_autoreleasePoolPop(v44);
        (v19[1])(v22, v38);
        DirectorySequence.next()();
      }

      while (v40(v17, 1, v38) != 1);
    }

    v110 = 0;
    (*(v111 + 8))(v39, v112);
    v45 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v46 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10138BBE0;
    v48 = v131[0];
    v49 = *(v131[0] + 16);
    *(v47 + 56) = &type metadata for Int;
    *(v47 + 64) = &protocol witness table for Int;
    *(v47 + 32) = v49;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v50 = v113;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    *(v47 + 96) = &type metadata for String;
    *(v47 + 104) = sub_100008C00();
    *(v47 + 72) = v51;
    *(v47 + 80) = v53;
    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "Found %i records at %@", 22, 2, v47);

    (*(v114 + 8))(v50, v42);

    v54 = *(v48 + 16);
    if (v54)
    {
      v131[0] = _swiftEmptyArrayStorage;
      sub_1011255C0(0, v54, 0);
      v18 = v131[0];
      v55 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v114 = v48;
      v56 = v48 + v55;
      v119 = *(v115 + 72);
      v118 = (v109 + 8);
      v35 = v117;
      v17 = v127;
      do
      {
        v57 = v17 + *(v129 + 48);
        sub_100A1B358(v56, v57, type metadata accessor for SafeLocation);
        v58 = v126;
        v59 = *(v57 + v126[8]);
        v60 = *(v57 + v126[9]);
        v61 = *(v57 + v126[10]);
        v62 = v124;
        Date.init()();
        v63 = objc_allocWithZone(CLLocation);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v65 = [v63 initWithCoordinate:isa altitude:v59 horizontalAccuracy:v60 verticalAccuracy:0.0 course:v61 courseAccuracy:v61 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

        v66 = v62;
        v17 = v127;
        (*v118)(v66, v125);
        [v65 setReferenceFrame:*(v57 + v58[11])];
        [v65 coordinate];
        v68 = v67;
        v70 = v69;

        UUID.uuidString.getter();
        v71 = objc_allocWithZone(CLCircularRegion);
        v72 = String._bridgeToObjectiveC()();

        v73 = [v71 initWithCenter:v72 radius:v68 identifier:{v70, v61}];

        v74 = v128;
        v75 = sub_100EE8968(v73);
        [v74 radius];
        v77 = v76;
        [v74 radius];
        v79 = v77 * v78 * 3.14159265;
        [v73 radius];
        v81 = v80;
        [v73 radius];
        v83 = v82;

        v84 = v81 * v83 * 3.14159265;
        if (v84 >= v79)
        {
          v84 = v79;
        }

        if (v84 <= 0.0)
        {
          v85 = 0.0;
        }

        else
        {
          v85 = v75 / v84;
        }

        *v17 = v85;
        v131[0] = v18;
        v87 = v18[2];
        v86 = v18[3];
        if (v87 >= v86 >> 1)
        {
          sub_1011255C0((v86 > 1), v87 + 1, 1);
          v18 = v131[0];
        }

        v18[2] = v87 + 1;
        sub_1000D2AD8(v17, v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v87, &qword_1016B1780, &unk_1013B36E0);
        v56 += v119;
        --v54;
      }

      while (v54);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
      v35 = v117;
    }

    v88 = _swiftEmptyArrayStorage;
    v15 = v116;
    v127 = v18[2];
    if (!v127)
    {
      break;
    }

    v22 = 0;
    v19 = &qword_1016B1780;
    v24 = &unk_1013B36E0;
    while (v22 < v18[2])
    {
      v17 = ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v89 = *(v35 + 72);
      v90 = v19;
      v91 = v120;
      sub_1000D2A70(v17 + v18 + v89 * v22, v120, v90, &unk_1013B36E0);
      if (*v91 <= 0.5)
      {
        sub_10000B3A8(v91, v90, &unk_1013B36E0);
        v19 = v90;
      }

      else
      {
        sub_1000D2AD8(v91, v121, v90, &unk_1013B36E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v88;
        v19 = v90;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1011255C0(0, v88[2] + 1, 1);
          v88 = v131[0];
        }

        v94 = v88[2];
        v93 = v88[3];
        if (v94 >= v93 >> 1)
        {
          sub_1011255C0((v93 > 1), v94 + 1, 1);
          v88 = v131[0];
        }

        v88[2] = v94 + 1;
        v24 = &unk_1013B36E0;
        sub_1000D2AD8(v121, v17 + v88 + v94 * v89, v90, &unk_1013B36E0);
        v15 = v116;
        v35 = v117;
      }

      if (v127 == ++v22)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_28:

  v131[0] = v88;

  v95 = v110;
  sub_1009C84E8(v131);
  if (v95)
  {

    __break(1u);
  }

  else
  {

    v96 = v131[0];
    v97 = *(v131[0] + 16);
    v98 = v115;
    if (v97)
    {
      v131[0] = _swiftEmptyArrayStorage;
      sub_10112483C(0, v97, 0);
      v99 = v131[0];
      v100 = *(v117 + 80);
      v127 = v96;
      v101 = v96 + ((v100 + 32) & ~v100);
      v102 = *(v117 + 72);
      do
      {
        v103 = v122;
        sub_1000D2A70(v101, v122, &qword_1016B1780, &unk_1013B36E0);
        v104 = v103;
        v105 = v123;
        sub_1000D2AD8(v104, v123, &qword_1016B1780, &unk_1013B36E0);
        sub_100A18C9C(v105 + *(v129 + 48), v15, type metadata accessor for SafeLocation);
        v131[0] = v99;
        v107 = *(v99 + 16);
        v106 = *(v99 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_10112483C((v106 > 1), v107 + 1, 1);
          v99 = v131[0];
        }

        *(v99 + 16) = v107 + 1;
        sub_100A18C9C(v15, v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v107, type metadata accessor for SafeLocation);
        v101 += v102;
        --v97;
      }

      while (v97);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v99;
  }

  return result;
}

uint64_t sub_1009E57C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a5;
  v81 = a3;
  v82 = a4;
  v84 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v84);
  v77 = &v70 - v7;
  v8 = type metadata accessor for DispatchTime();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = __chkstk_darwin(v8);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v70 - v11;
  v79 = type metadata accessor for UUID();
  v83 = *(v79 - 8);
  v12 = __chkstk_darwin(v79);
  v80 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v70 - v14;
  v16 = type metadata accessor for SafeLocation(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  __chkstk_darwin(v19);
  v21 = &v70 - v20;
  v22 = sub_1009E4988(a2);
  if (v22[2])
  {
    v23 = v89;
    sub_100A1B358(v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v89, type metadata accessor for SafeLocation);

    return (*(v17 + 56))(v23, 0, 1, v16);
  }

  else
  {
    v71 = a2;
    v72 = v15;
    v25 = v79;
    v73 = v18;
    v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v21;
    v76 = a1;
    v78 = v17;

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_1000076D4(v26, qword_10177B780);
    v28 = v71;
    v71 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v16;
    v33 = v75;
    if (v31)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v28;
      *v35 = v28;
      v36 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "No suggested safe location for: %@ creating new one.", v34, 0xCu);
      sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);
    }

    v37 = v81;
    if (!v82)
    {
      v37 = 0;
    }

    v81 = v37;
    if (v82)
    {
      v38 = v82;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v39 = v72;
    UUID.init()();
    v40 = v83;
    v41 = v80;
    (*(v83 + 16))(v80, v39, v25);
    [v28 coordinate];
    v43 = v42;
    [v28 coordinate];
    v45 = v44;
    [v28 horizontalAccuracy];
    v47 = v46;
    v48 = [v28 referenceFrame];
    if (v48 == 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2 * (v48 == 2);
    }

    (*(v40 + 8))(v39, v25);
    *v33 = xmmword_10138C660;
    (*(v40 + 32))(&v33[v32[5]], v41, v25);
    v33[v32[6]] = 1;
    v50 = &v33[v32[7]];
    *v50 = v81;
    v50[1] = v38;
    *&v33[v32[8]] = v43;
    *&v33[v32[9]] = v45;
    *&v33[v32[10]] = v47;
    v33[v32[11]] = v49;
    v33[v32[12]] = 2;
    *&v33[v32[13]] = _swiftEmptyArrayStorage;
    v51 = dispatch_group_create();
    v52 = swift_allocBox();
    v54 = v53;
    v55 = v78 + 56;
    v83 = *(v78 + 56);
    (v83)(v53, 1, 1, v32);
    dispatch_group_enter(v51);
    v56 = v74;
    sub_100A1B358(v33, v74, type metadata accessor for SafeLocation);
    v78 = v55;
    v57 = (*(v55 + 24) + 24) & ~*(v55 + 24);
    v58 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v52;
    sub_100A18C9C(v56, v59 + v57, type metadata accessor for SafeLocation);
    *(v59 + v58) = v51;
    v84 = v52;

    v60 = v51;
    sub_1009DB4DC(v33, 0, sub_100A1AFD4, v59);

    v61 = v85;
    static DispatchTime.now()();
    v62 = v86;
    + infix(_:_:)();
    v63 = v88;
    v64 = *(v87 + 8);
    v64(v61, v88);
    OS_dispatch_group.wait(timeout:)();
    v64(v62, v63);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Failed to create safe location suggestion due to timeout", v67, 2u);

        v68 = v60;
      }

      else
      {
        v68 = v65;
        v65 = v60;
      }

      sub_100A1B3C0(v33, type metadata accessor for SafeLocation);
      v69 = v77;
      (v83)(v77, 1, 1, v32);
      swift_beginAccess();
      sub_10002311C(v69, v54, &unk_1016AFA10, &qword_1013CB000);
    }

    else
    {
      sub_100A1B3C0(v33, type metadata accessor for SafeLocation);
    }

    swift_beginAccess();
    sub_1000D2A70(v54, v89, &unk_1016AFA10, &qword_1013CB000);
  }
}

void sub_1009E6080(void *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-1] - v10;
  v12 = swift_projectBox();
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B780);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v14;
      v25[0] = v18;
      *v17 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError, &unk_101389BEC);
      v19 = Error.localizedDescription.getter();
      v21 = sub_1000136BC(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create new safe location suggestion due to: %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    v22 = type metadata accessor for SafeLocation(0);
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  }

  else
  {
    sub_100A1B358(a4, v11, type metadata accessor for SafeLocation);
    v23 = type metadata accessor for SafeLocation(0);
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  }

  swift_beginAccess();
  sub_10002311C(v11, v12, &unk_1016AFA10, &qword_1013CB000);
  dispatch_group_leave(a5);
}

void sub_1009E6368(uint64_t a1)
{
  v61 = type metadata accessor for LeashRecord(0);
  v58 = *(v61 - 8);
  v2 = __chkstk_darwin(v61);
  v59 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v66 = &v57 - v4;
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = type metadata accessor for DirectorySequence();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v60 = a1;
  v18 = *(a1 + 168);
  if (qword_1016954B8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v19 = sub_1000076D4(v11, qword_10177CDB8);
    (*(v12 + 16))(v17, v19, v11);
    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v20 = [objc_opt_self() defaultManager];
    v64 = v17;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    DirectorySequence.next()();
    v65 = v12;
    v21 = *(v12 + 48);
    v22 = v21(v7, 1, v11);
    v67 = v18;
    v68 = v10;
    if (v22 != 1)
    {
      v23 = *(v65 + 32);
      v24 = (v65 + 8);
      do
      {
        v23(v15, v7, v11);
        v25 = objc_autoreleasePoolPush();
        sub_1006041CC(v15, v67, &v70, &v69);
        objc_autoreleasePoolPop(v25);
        (*v24)(v15, v11);
        DirectorySequence.next()();
      }

      while (v21(v7, 1, v11) != 1);
    }

    (*(v62 + 8))(v68, v63);
    v26 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10138BBE0;
    v29 = v70;
    v30 = v70[2];
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v30;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v31 = v64;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = sub_100008C00();
    *(v28 + 72) = v32;
    *(v28 + 80) = v34;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Found %i records at %@", 22, 2, v28);

    (*(v65 + 8))(v31, v11);

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177B780);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Attempting to merge leash records if needed.", v38, 2u);
    }

    if (*(v29 + 16) < 2uLL)
    {
      break;
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = *(v29 + 16);

      _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld leash records, cleaning up.", v41, 0xCu);

      v11 = *(v29 + 16);
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v11 = *(v29 + 16);
      if (!v11)
      {
LABEL_32:
        type metadata accessor for UUID();
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = Array<A>.uniqued()();

        v54 = v61;
        v55 = v59;
        UUID.init()();
        *v55 = xmmword_10138C660;
        *(v55 + *(v54 + 24)) = v53;

        v56 = v60;

        sub_100B1982C(v55, 0, v56, v29, v56);
        swift_bridgeObjectRelease_n();

        sub_100A1B3C0(v55, type metadata accessor for LeashRecord);
        return;
      }
    }

    v42 = *(v61 + 24);
    v15 = (v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
    v12 = *(v58 + 72);
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      v44 = v66;
      sub_100A1B358(v15, v66, type metadata accessor for LeashRecord);
      v17 = *(v44 + v42);

      sub_100A1B3C0(v44, type metadata accessor for LeashRecord);
      v10 = *(v17 + 2);
      v18 = v43[2];
      v7 = &v10[v18];
      if (__OFADD__(v18, v10))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v7 <= v43[3] >> 1)
      {
        if (*(v17 + 2))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v18 <= v7)
        {
          v46 = &v10[v18];
        }

        else
        {
          v46 = v18;
        }

        v43 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v46, 1, v43);
        if (*(v17 + 2))
        {
LABEL_24:
          v18 = v43[2];
          v7 = ((v43[3] >> 1) - v18);
          type metadata accessor for UUID();
          if (v7 < v10)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v47 = v43[2];
            v48 = __OFADD__(v47, v10);
            v49 = &v10[v47];
            if (v48)
            {
              goto LABEL_36;
            }

            v43[2] = v49;
          }

          goto LABEL_14;
        }
      }

      if (v10)
      {
        goto LABEL_34;
      }

LABEL_14:
      v15 += v12;
      if (!--v11)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No duplicated leash records found, no need to merge.", v52, 2u);
  }
}

void sub_1009E6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v48 = type metadata accessor for LeashRecord(0);
  v5 = *(v48 - 8);
  v6 = __chkstk_darwin(v48);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v45 = &v40 - v9;
  v47 = v10;
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  sub_1000D2A70(a1, &v40 - v14, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B780);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1000136BC(v21, v22, &v50);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create a new merged leash record, bailing out - %s", v19, 0xCu);
      sub_100007BAC(v20);
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

    v41 = v15;
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B780);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully created a merged leash record, removing existing ones.", v27, 2u);
    }

    v28 = *(a2 + 16);
    if (v28)
    {
      v29 = *(v5 + 80);
      v30 = a2 + ((v29 + 32) & ~v29);
      v43 = *(v5 + 72);
      v44 = v29;
      v31 = (v29 + 16) & ~v29;
      v42 = xmmword_101385D80;
      do
      {
        sub_100A1B358(v30, v12, type metadata accessor for LeashRecord);
        v32 = v45;
        sub_100A1B358(v12, v45, type metadata accessor for LeashRecord);
        v33 = swift_allocObject();
        sub_100A18C9C(v32, v33 + v31, type metadata accessor for LeashRecord);
        v34 = static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v35 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v36 = swift_allocObject();
        *(v36 + 16) = v42;
        sub_100A1B358(v12, v46, type metadata accessor for LeashRecord);
        v37 = String.init<A>(describing:)();
        v39 = v38;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = sub_100008C00();
        *(v36 + 32) = v37;
        *(v36 + 40) = v39;
        os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Attempting to remove: %@", 24, 2, v36);

        sub_100B18780(v12, v49, sub_100A1A8A8, v33);

        sub_100A1B3C0(v12, type metadata accessor for LeashRecord);
        v30 += v43;
        --v28;
      }

      while (v28);
    }

    sub_10000B3A8(v41, &qword_1016A78E0, &qword_1013B6888);
  }
}

void sub_1009E7290(char a1, uint64_t a2)
{
  v4 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B780);
  sub_100A1B358(a2, v6, type metadata accessor for LeashRecord);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100A1B3C0(v6, type metadata accessor for LeashRecord);
    v15 = sub_1000136BC(v12, v14, &v17);

    *(v10 + 4) = v15;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Removed duplicated leash record: %s: %{BOOL}d.", v10, 0x12u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100A1B3C0(v6, type metadata accessor for LeashRecord);
  }
}

uint64_t sub_1009E74F8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v100 = *(v8 - 8);
  __chkstk_darwin(v8);
  v78 = v9;
  v92 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SafeLocation(0);
  v87 = *(v76 - 8);
  v10 = __chkstk_darwin(v76);
  v91 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v90 = &v76 - v13;
  v14 = __chkstk_darwin(v12);
  v98 = &v76 - v15;
  v77 = v16;
  __chkstk_darwin(v14);
  v88 = (&v76 - v17);
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v18 - 8);
  v81 = &v76 - v19;
  v83 = type metadata accessor for DirectorySequence();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v84 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URL();
  v86 = *(v101 - 1);
  v21 = __chkstk_darwin(v101);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v85 = &v76 - v24;
  if (qword_101694B70 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B780);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v93 = v8;
    if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to clean unused separation alert safe locations", v29, 2u);
    }

    v95 = v5;

    v99 = a1;
    v30 = *(a1 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v94 = v7;
    v96 = v4;
    v97 = v2;
    v31 = v101;
    v32 = sub_1000076D4(v101, qword_10177C268);
    v7 = v86;
    (*(v86 + 2))(v85, v32, v31);
    aBlock[0] = _swiftEmptyArrayStorage;
    v104 = _swiftEmptyArrayStorage;
    v33 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v34 = v81;
    DirectorySequence.next()();
    v35 = *(v7 + 48);
    if (v35(v34, 1, v31) == 1)
    {
      v8 = 0;
      v36 = v84;
    }

    else
    {
      v37 = v34;
      v8 = 0;
      v38 = *(v7 + 32);
      v7 += 32;
      v89 = v38;
      v36 = v84;
      do
      {
        v89(v23, v37, v31);
        v39 = objc_autoreleasePoolPush();
        sub_1006005CC(v23, v30, aBlock, &v104);
        v40 = v39;
        v31 = v101;
        objc_autoreleasePoolPop(v40);
        (*(v7 - 24))(v23, v31);
        DirectorySequence.next()();
      }

      while (v35(v37, 1, v31) != 1);
    }

    (*(v82 + 8))(v36, v83);
    v41 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v42 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 1) = xmmword_10138BBE0;
    v43 = aBlock[0];
    v44 = *(aBlock[0] + 16);
    *(v23 + 7) = &type metadata for Int;
    *(v23 + 8) = &protocol witness table for Int;
    *(v23 + 4) = v44;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v45 = v31;

    v5 = v85;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    *(v23 + 12) = &type metadata for String;
    *(v23 + 13) = sub_100008C00();
    *(v23 + 9) = v46;
    *(v23 + 10) = v48;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "Found %i records at %@", 22, 2, v23);

    (*(v86 + 1))(v5, v45);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074994(aBlock[0]);
    v50 = v49;

    a1 = *(v43 + 16);
    v2 = v100;
    if (!a1)
    {
      break;
    }

    v4 = 0;
    v101 = _swiftEmptyArrayStorage;
    v51 = v87;
    v52 = v88;
    while (v4 < *(v43 + 16))
    {
      v23 = ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v5 = *(v51 + 72);
      sub_100A1B358(&v23[v43 + v5 * v4], v52, type metadata accessor for SafeLocation);
      sub_1009E83A4(v52, v50);
      if (v53)
      {
        sub_100A18C9C(v52, v90, type metadata accessor for SafeLocation);
        v54 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112483C(0, v54[2] + 1, 1);
          v51 = v87;
          v54 = aBlock[0];
        }

        v7 = v54[2];
        v56 = v54[3];
        v57 = v54;
        if (v7 >= v56 >> 1)
        {
          sub_10112483C((v56 > 1), v7 + 1, 1);
          v51 = v87;
          v57 = aBlock[0];
        }

        *(v57 + 16) = v7 + 1;
        v101 = v57;
        sub_100A18C9C(v90, &v23[v57 + v7 * v5], type metadata accessor for SafeLocation);
        v52 = v88;
      }

      else
      {
        sub_100A1B3C0(v52, type metadata accessor for SafeLocation);
      }

      if (a1 == ++v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v101 = _swiftEmptyArrayStorage;
  v51 = v87;
LABEL_24:

  v58 = v101[2];
  if (v58)
  {
    v59 = v98;
    v90 = &v98[*(v76 + 20)];
    v60 = *(v51 + 80);
    v61 = v101 + ((v60 + 32) & ~v60);
    v89 = v60;
    v87 = *(v99 + 96);
    v88 = ((v60 + 16) & ~v60);
    v86 = v88 + v77;
    v85 = (v2 + 16);
    v84 = *(v51 + 72);
    v83 = v78 + 7;
    v82 = v2 + 32;
    v81 = v103;
    ++v80;
    ++v79;
    v62 = v93;
    do
    {
      sub_100A1B358(v61, v59, type metadata accessor for SafeLocation);
      v63 = v91;
      sub_100A1B358(v59, v91, type metadata accessor for SafeLocation);
      v64 = swift_allocObject();
      sub_100A18C9C(v63, v88 + v64, type metadata accessor for SafeLocation);
      v65 = v100;
      v66 = v92;
      (*(v100 + 16))(v92, v90, v62);
      v67 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v68 = (v83 + v67) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      (*(v65 + 32))(v69 + v67, v66, v62);
      *(v69 + v68) = v99;
      v70 = (v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v70 = sub_100A1A6D4;
      v70[1] = v64;
      v103[2] = sub_100A1B6D4;
      v103[3] = v69;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v103[0] = sub_100006684;
      v103[1] = &unk_101642C08;
      v71 = _Block_copy(aBlock);

      v72 = v94;
      static DispatchQoS.unspecified.getter();
      v104 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v74 = v96;
      v73 = v97;
      v59 = v98;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v71);

      (*v80)(v74, v73);
      (*v79)(v72, v95);
      sub_100A1B3C0(v59, type metadata accessor for SafeLocation);

      v61 += v84;
      --v58;
    }

    while (v58);
  }
}

void sub_1009E83A4(uint64_t *a1, double a2)
{
  v48 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v48);
  v49 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v47 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v45[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v45[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v45[-v16];
  __chkstk_darwin(v15);
  v19 = &v45[-v18];
  v20 = objc_autoreleasePoolPush();
  sub_100E7AB5C(a1, v19);
  if (v2)
  {
    objc_autoreleasePoolPop(v20);
    __break(1u);
    goto LABEL_20;
  }

  objc_autoreleasePoolPop(v20);
  v21 = objc_autoreleasePoolPush();
  v50 = a1;
  sub_100D148E0(a1, v17);
  v51 = 0;
  objc_autoreleasePoolPop(v21);
  v22 = static Date.== infix(_:_:)();
  v23 = *(v6 + 8);
  v23(v17, v5);
  v23(v19, v5);
  v46 = v22;
  if ((v22 & 1) == 0)
  {
    v29 = 0;
    v30 = 0;
    v32 = 0;
LABEL_12:
    v34 = v49;
    v33 = v50;
    goto LABEL_13;
  }

  v24 = v50;
  v25 = *(v50 + *(v48 + 48));
  v26 = *(*(v50 + *(v48 + 52)) + 16);
  v19 = objc_autoreleasePoolPush();
  v27 = v51;
  sub_100E7AB5C(v24, v11);
  v51 = v27;
  if (v27)
  {
LABEL_20:
    objc_autoreleasePoolPop(v19);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v19);
  Date.addingTimeInterval(_:)();
  v23(v11, v5);
  v28 = v47;
  static Date.trustedNow.getter(v47);
  v29 = static Date.< infix(_:_:)();
  v23(v28, v5);
  v23(v14, v5);
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = v25 != 2;
  }

  v31 = v25 == 2;
  v32 = v25 == 2;
  if (!v31)
  {
    goto LABEL_12;
  }

  v34 = v49;
  v33 = v50;
  if (v26)
  {
LABEL_13:
    LODWORD(v47) = v29;
    LOBYTE(v29) = 0;
    goto LABEL_14;
  }

  v30 = 1;
  LODWORD(v47) = v29;
  v32 = 1;
LABEL_14:
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177B780);
  sub_100A1B358(v33, v34, type metadata accessor for SafeLocation);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    LODWORD(v50) = v30;
    v39 = v38;
    v40 = swift_slowAlloc();
    v52 = v40;
    *v39 = 136447490;
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100A1B3C0(v34, type metadata accessor for SafeLocation);
    v44 = sub_1000136BC(v41, v43, &v52);

    *(v39 + 4) = v44;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v29 & 1;
    *(v39 + 18) = 1024;
    *(v39 + 20) = v46 & 1;
    *(v39 + 24) = 1024;
    *(v39 + 26) = v32;
    *(v39 + 30) = 1024;
    *(v39 + 32) = v50;
    *(v39 + 36) = 1024;
    *(v39 + 38) = v47 & 1;
    _os_log_impl(&_mh_execute_header, v36, v37, "Should cleanup safe location %{public}s: %{BOOL}d\nreasons: (hasNeverBeenModified: %{BOOL}d, hasAlwaysBeenASuggestion: %{BOOL}d, hasNoAssociatedBeacons: %{BOOL}d), hasBeenCreatedLongAgo: %{BOOL}d)", v39, 0x2Au);
    sub_100007BAC(v40);
  }

  else
  {

    sub_100A1B3C0(v34, type metadata accessor for SafeLocation);
  }
}

void sub_1009E890C(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for SafeLocation(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177B780);
    sub_100A1B358(a3, v9, type metadata accessor for SafeLocation);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v16 = 136315394;
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_100A1B3C0(v9, type metadata accessor for SafeLocation);
      v20 = sub_1000136BC(v17, v19, &v35);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v34 = v13;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError, &unk_101389BEC);
      v21 = Error.localizedDescription.getter();
      v23 = sub_1000136BC(v21, v22, &v35);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to remove unused safe location: %s due to error: %s", v16, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v33 = v9;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B780);
    sub_100A1B358(a3, v11, type metadata accessor for SafeLocation);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
      v32 = sub_1000136BC(v29, v31, &v35);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfuly removed unused safe location: %s", v27, 0xCu);
      sub_100007BAC(v28);

      return;
    }

    v33 = v11;
  }

  sub_100A1B3C0(v33, type metadata accessor for SafeLocation);
}

uint64_t sub_1009E8DEC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for LeashRecord(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v15 = __chkstk_darwin(v14);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  sub_100ABD310(&v35 - v17);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v39 = a2;
    sub_10000B3A8(v18, &qword_1016B1500, &unk_1013C57F0);
    UUID.init()();
    *v13 = xmmword_10138C660;
    *(v13 + *(v10 + 24)) = _swiftEmptyArrayStorage;
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    v20 = swift_allocBox();
    v36 = *(v11 + 56);
    v37 = v21;
    v36(v21, 1, 1, v10);
    v22 = v19;
    v38 = v20;
    sub_100B19F38(v13, 0, a1, v20, v22);

    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v41 + 8);
    v24 = v7;
    v25 = v42;
    v23(v24, v42);
    OS_dispatch_group.wait(timeout:)();
    v23(v9, v25);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177B780);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create new leash record due to timeout", v29, 2u);

        v30 = v22;
      }

      else
      {
        v30 = v27;
        v27 = v22;
      }

      sub_100A1B3C0(v13, type metadata accessor for LeashRecord);
      v34 = v40;
      v36(v40, 1, 1, v10);
      v33 = v37;
      swift_beginAccess();
      sub_10002311C(v34, v33, &qword_1016B1500, &unk_1013C57F0);
      v32 = v39;
    }

    else
    {
      sub_100A1B3C0(v13, type metadata accessor for LeashRecord);

      v32 = v39;
      v33 = v37;
    }

    swift_beginAccess();
    sub_1000D2A70(v33, v32, &qword_1016B1500, &unk_1013C57F0);
  }

  else
  {
    sub_100A18C9C(v18, a2, type metadata accessor for LeashRecord);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }
}

void sub_1009E9304(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v32 = type metadata accessor for LeashRecord(0);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = swift_projectBox();
  sub_1000D2A70(a1, v13, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B780);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v18 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = v10;
      v22 = v5;
      v23 = v14;
      v24 = a3;
      v25 = sub_1000136BC(v19, v20, v33);

      *(v18 + 4) = v25;
      a3 = v24;
      v14 = v23;
      v5 = v22;
      v10 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create new leash record due to: %s", v18, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {
    }

    (*(v5 + 56))(v10, 1, 1, v32);
  }

  else
  {
    sub_100A18C9C(v13, v7, type metadata accessor for LeashRecord);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B780);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfuly created new leash record.", v29, 2u);
    }

    sub_100A18C9C(v7, v10, type metadata accessor for LeashRecord);
    (*(v5 + 56))(v10, 0, 1, v32);
  }

  swift_beginAccess();
  sub_10002311C(v10, v14, &qword_1016B1500, &unk_1013C57F0);
  dispatch_group_leave(a3);
}

uint64_t sub_1009E979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009C99E8(a4, sub_100A1B7B0, v8, &unk_101642178, sub_100A18D54, &unk_101642190);
}

uint64_t sub_1009E9880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  swift_allocObject();

  result = Future.init(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1009E9A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100A1B7AC;
  *(v10 + 24) = v9;

  sub_1009CAAD0(a4, a5, sub_100A1B7B0, v10, &unk_101642A10, sub_100A19E04, &unk_101642A28);
}

uint64_t sub_1009E9B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SafeLocation(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100A1B358(a2, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_100A18C9C(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SafeLocation);
  *(v12 + v11 + v10) = a3;
  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  swift_allocObject();

  result = Future.init(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1009E9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100A1B7AC;
  *(v10 + 24) = v9;

  sub_1009C9D88(a4, a5, sub_100A190A0, v10);
}

uint64_t sub_1009E9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(type metadata accessor for SafeLocation(0) + 20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100A1B7AC;
  *(v9 + 24) = v7;

  sub_1009CA164(a4 + v8, sub_100A1B7B0, v9);
}

uint64_t sub_1009E9E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v8 = type metadata accessor for SafeLocation(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100A1B358(a2, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_100A18C9C(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SafeLocation);
  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  swift_allocObject();

  result = Future.init(_:)();
  *a5 = result;
  return result;
}

uint64_t sub_1009E9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009CA64C(a4, sub_100A1B7B0, v8);
}

uint64_t sub_1009EA094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  swift_allocObject();

  result = Future.init(_:)();
  *a5 = result;
  return result;
}

uint64_t sub_1009EA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009C8978(a4, sub_100A1B7B0, v8);
}

void sub_1009EA1F0(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v130 = a6;
  v129 = a5;
  v142 = a4;
  v137 = a3;
  v138 = a2;
  v148 = a7;
  v126 = sub_1000BC4D4(&qword_1016B1508, &qword_1013D0A68);
  __chkstk_darwin(v126);
  v124 = &v118 - v10;
  v11 = type metadata accessor for DispatchTime();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = __chkstk_darwin(v11);
  v131 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v118 - v14;
  v15 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v15 - 8);
  v136 = &v118 - v16;
  v135 = type metadata accessor for LeashRecord(0);
  v17 = *(v135 - 8);
  v18 = __chkstk_darwin(v135);
  v128 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v19;
  __chkstk_darwin(v18);
  v21 = (&v118 - v20);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v123 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v122 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v125 = &v118 - v29;
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_10177B780);
  v34 = *(v23 + 16);
  v144 = a1;
  v139 = v34;
  v140 = v23 + 16;
  v34(v31, a1, v22);
  v141 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v146 = v22;
  v147 = v21;
  v145 = v23;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v121 = v17;
    v40 = v39;
    v150 = v39;
    *v38 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v143 = *(v23 + 8);
    v143(v31, v22);
    v44 = sub_1000136BC(v41, v43, &v150);
    v8 = v7;

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Executing synced modify operation with identifier: %s", v38, 0xCu);
    sub_100007BAC(v40);
    v17 = v121;

    v21 = v147;
  }

  else
  {

    v143 = *(v23 + 8);
    v143(v31, v22);
  }

  v45 = dispatch_group_create();
  v46 = v136;
  v138();
  if ((*(v17 + 6))(v46, 1, v135) == 1)
  {
    sub_10000B3A8(v46, &qword_1016B1500, &unk_1013C57F0);
    v47 = v125;
    v48 = v146;
    v139(v125, v144, v146);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v150 = v52;
      *v51 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v47;
      v56 = v55;
      v143(v54, v48);
      v57 = sub_1000136BC(v53, v56, &v150);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Synced modify operation with identifier: %s failed due to missing record.", v51, 0xCu);
      sub_100007BAC(v52);
    }

    else
    {

      v143(v47, v48);
    }

    sub_100139CA0();
    v99 = swift_allocError();
    *v100 = 11;

    *v148 = v99;
    sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_100A18C9C(v46, v21, type metadata accessor for LeashRecord);
    v58 = swift_allocBox();
    v60 = v59;
    v61 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
    v120 = *(v61 - 8);
    v62 = *(v120 + 56);
    v119 = v60;
    v62(v60, 1, 1, v61);
    dispatch_group_enter(v45);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    *(v63 + 24) = v45;
    v126 = v63;
    v137 = v58;

    v64 = v45;
    v65 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v135 = v64;
    v136 = v61;
    v66 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100008C00();
    *(v67 + 32) = 0x65736C6166;
    *(v67 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v66, "Modify record. Disk First? (%@)", 31, 2, v67);

    v68 = objc_autoreleasePoolPush();
    sub_101121434(v21);
    if (v8)
    {
      objc_autoreleasePoolPop(v68);
      __break(1u);
    }

    else
    {
      v70 = v69;
      objc_autoreleasePoolPop(v68);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v138 = 0;
      v121 = type metadata accessor for LeashRecord;
      v71 = v21;
      v72 = v21;
      v73 = v128;
      sub_100A1B358(v71, v128, type metadata accessor for LeashRecord);
      v74 = *(v17 + 80);
      v75 = v127;
      v76 = swift_allocObject();
      v77 = v130;
      *(v76 + 16) = v129;
      *(v76 + 24) = v77;
      v129 = type metadata accessor for LeashRecord;
      sub_100A18C9C(v73, v76 + ((v74 + 32) & ~v74), type metadata accessor for LeashRecord);

      v125 = v70;
      sub_100FDCA40(v70, sub_100A18848, v76);

      v78 = swift_allocObject();
      v79 = v126;
      *(v78 + 16) = sub_100A1880C;
      *(v78 + 24) = v79;

      Future.addFailure(block:)();

      sub_100A1B358(v72, v73, v121);
      v80 = (v74 + 16) & ~v74;
      v81 = (v75 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      sub_100A18C9C(v73, v82 + v80, v129);
      *(v82 + v81) = v142;
      v83 = (v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v83 = sub_100A1880C;
      v83[1] = v79;

      Future.addSuccess(block:)();

      v84 = v131;
      static DispatchTime.now()();
      v85 = v132;
      + infix(_:_:)();
      v86 = v134;
      v87 = *(v133 + 8);
      v87(v84, v134);
      v88 = v135;
      OS_dispatch_group.wait(timeout:)();
      v87(v85, v86);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v89 = v122;
        v90 = v146;
        v139(v122, v144, v146);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v150 = v94;
          *v93 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          v143(v89, v90);
          v98 = sub_1000136BC(v95, v97, &v150);

          *(v93 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v91, v92, "Synced modify operation with identifier: %s failed due to timeout.", v93, 0xCu);
          sub_100007BAC(v94);
        }

        else
        {

          v143(v89, v90);
        }

        v111 = v147;
        type metadata accessor for SPSeparationMonitoringError(0);
        v151 = 19;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
        _BridgedStoredNSError.init(_:userInfo:)();

        sub_100A1B3C0(v111, type metadata accessor for LeashRecord);
        *v148 = v150;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v101 = v123;
        v102 = v146;
        v139(v123, v144, v146);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v150 = v106;
          *v105 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v143(v101, v102);
          v110 = sub_1000136BC(v107, v109, &v150);

          *(v105 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v103, v104, "Finished synced modify operation with identifier: %s.", v105, 0xCu);
          sub_100007BAC(v106);
        }

        else
        {

          v143(v101, v102);
        }

        v112 = v147;
        v113 = v124;
        v114 = v136;
        v115 = v120;
        v116 = v119;
        swift_beginAccess();
        sub_1000D2A70(v116, v113, &qword_1016B1508, &qword_1013D0A68);
        v117 = *(v115 + 48);
        if (v117(v113, 1, v114) == 1)
        {
          type metadata accessor for SPSeparationMonitoringError(0);
          v149 = 0;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
          _BridgedStoredNSError.init(_:userInfo:)();

          sub_100A1B3C0(v112, type metadata accessor for LeashRecord);
          *v148 = v151;
          swift_storeEnumTagMultiPayload();
          if (v117(v113, 1, v114) != 1)
          {
            sub_10000B3A8(v113, &qword_1016B1508, &qword_1013D0A68);
          }
        }

        else
        {
          sub_100A1B3C0(v112, type metadata accessor for LeashRecord);

          sub_1000D2AD8(v113, v148, &qword_1016A78E0, &qword_1013B6888);
        }
      }
    }
  }
}