void sub_100700AF8(uint64_t a1, unsigned __int8 *a2, void (**a3)(void, void))
{
  v174 = a3;
  v5 = type metadata accessor for ShareRecord(0);
  v160 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v161 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v146);
  v147 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v153 = *(v159 - 8);
  __chkstk_darwin(v159);
  v152 = &v145 - v8;
  v9 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v9 - 8);
  v151 = (&v145 - v10);
  v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v11 - 8);
  v158 = &v145 - v12;
  v157 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v150 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v145 - v13;
  v14 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v14 - 8);
  v149 = (&v145 - v15);
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v155 = &v145 - v17;
  v165 = type metadata accessor for OwnedBeaconRecord(0);
  v154 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v19 - 8);
  v167 = &v145 - v20;
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v21 - 8);
  v171 = &v145 - v22;
  v23 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v23 - 8);
  v25 = &v145 - v24;
  v175 = type metadata accessor for DirectorySequence();
  v179 = *(v175 - 8);
  __chkstk_darwin(v175);
  v181 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for URL();
  v178 = *(v173 - 8);
  v27 = __chkstk_darwin(v173);
  v156 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v172 = &v145 - v30;
  v31 = __chkstk_darwin(v29);
  v168 = &v145 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v145 - v34;
  __chkstk_darwin(v33);
  v177 = &v145 - v36;
  v37 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C370;
  v176 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  v169 = xmmword_10138BBE0;
  *(v39 + 16) = xmmword_10138BBE0;
  v185 = *a2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v40 = String.init<A>(describing:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  v43 = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v43;
  v170 = v43;
  *(v39 + 64) = v43;
  *(v39 + 72) = 0xD000000000000017;
  *(v39 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "%@: %@", 6, 2, v39);

  v44 = *(a2 + 35);
  sub_100025020(a1, &v183);
  if (!v184)
  {
    sub_10000B3A8(&v183, &qword_101696920, &unk_10138B200);
    v174[2](v174, 0);
    return;
  }

  v45 = a1;
  sub_10000A748(&v183, &v185);
  v180 = *(v44 + 168);
  v46 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v162 = a2;
  v47 = v173;
  sub_1000076D4(v173, qword_10177A518);
  v163 = v45;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v46);
  v182 = _swiftEmptyArrayStorage;
  *&v183 = _swiftEmptyArrayStorage;
  v48 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v49 = v47;
  v50 = v178;
  v51 = *(v178 + 6);
  v52 = v51(v25, 1, v47);
  v166 = v44;
  if (v52 != 1)
  {
    v53 = *(v50 + 4);
    do
    {
      v53(v35, v25, v49);
      v54 = v49;
      v55 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v35, v180, &v183, &v182);
      objc_autoreleasePoolPop(v55);
      (*(v50 + 1))(v35, v54);
      DirectorySequence.next()();
      v49 = v54;
    }

    while (v51(v25, 1, v54) != 1);
  }

  (*(v179 + 8))(v181, v175);
  v56 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v57 = static OS_os_log.default.getter();
  v58 = swift_allocObject();
  *(v58 + 16) = v169;
  v59 = v183;
  v60 = *(v183 + 16);
  *(v58 + 56) = &type metadata for Int;
  *(v58 + 64) = &protocol witness table for Int;
  *(v58 + 32) = v60;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v61 = v177;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v63 = v170;
  *(v58 + 96) = &type metadata for String;
  *(v58 + 104) = v63;
  *(v58 + 72) = v62;
  *(v58 + 80) = v64;
  os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v57, "Found %i records at %@", 22, 2, v58);

  v65 = v178 + 8;
  v180 = *(v178 + 1);
  v180(v61, v49);

  v66 = *(v59 + 16);
  v181 = v65;
  if (v66)
  {
    *&v183 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v67 = v59 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v68 = *(v160 + 72);
    v69 = v161;
    do
    {
      sub_100721C9C(v67, v69, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v69, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v67 += v68;
      --v66;
    }

    while (v66);

    v70 = v183;
  }

  else
  {

    v70 = _swiftEmptyArrayStorage;
  }

  sub_10112A654(v70);

  v71 = v186;
  v72 = v187;
  v73 = sub_1000035D0(&v185, v186);
  v74 = sub_100B005BC(v73, v166, v71, v72);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v74 setShares:isa];

  v76 = v162;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v77 = v163;
  v78 = sub_1011A30E0(v163);
  [v74 setSeparationState:v78];

  v79 = type metadata accessor for UUID();
  v80 = *(v79 - 8);
  v81 = v171;
  (*(v80 + 16))(v171, v77, v79);
  v170 = v80;
  v82 = *(v80 + 56);
  v177 = v79;
  v82(v81, 0, 1, v79);
  v83 = sub_1009C75D0(4, v81);
  sub_10000B3A8(v81, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v83);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
  v84 = Set._bridgeToObjectiveC()().super.isa;

  [v74 setSafeLocations:v84];

  v85 = v186;
  v86 = v187;
  v87 = sub_1000035D0(&v185, v186);
  [v74 setCanBeLeashedByHost:{sub_100A05A00(v87, v76, v85, v86) & 1}];
  [v74 setBeaconSeparationState:sub_1009C7E64(v77)];
  v88 = *(v76 + 40);
  v89 = v172;
  if (v88)
  {
    v90 = v88[280];

    v91 = static os_log_type_t.info.getter();
    v92 = v179;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v93 = qword_10177C378;
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_101385D80;
    *(v94 + 56) = &type metadata for Bool;
    *(v94 + 64) = &protocol witness table for Bool;
    *(v94 + 32) = v90;
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v93, "thisDeviceConnectionAllowed: %i", v145);

    [v74 setConnectionAllowed:v90];
    sub_10001F280(&v185, &v183);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v95 = type metadata accessor for SharedBeaconRecord(0);
    v96 = v167;
    v97 = swift_dynamicCast();
    v98 = *(*(v95 - 8) + 56);
    if (v97)
    {
      v98(v96, 0, 1, v95);
      sub_10000B3A8(v96, &unk_101698C30, &unk_101392630);
      [v74 setConnectableDeviceCount:0];
LABEL_36:
      (v174)[2](v174, v74);

      sub_100007BAC(&v185);
      return;
    }

    v98(v96, 1, 1, v95);
    sub_10000B3A8(v96, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v185, &v183);
    v99 = v155;
    v100 = v165;
    v101 = swift_dynamicCast();
    v102 = *(v154 + 56);
    if ((v101 & 1) == 0)
    {
      v102(v99, 1, 1, v100);
      sub_10000B3A8(v99, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_36;
    }

    v167 = v74;
    v102(v99, 0, 1, v100);
    sub_10002AB74(v99, v164, type metadata accessor for OwnedBeaconRecord);
    v103 = *(v166 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v104 = v173;
    v105 = sub_1000076D4(v173, qword_10177C0D8);
    v106 = *(v178 + 2);
    v107 = v168;
    v106(v168, v105, v104);
    v106(v89, v107, v104);
    v108 = v89;
    v171 = *(v157 + 40);
    v109 = v157;
    v110 = *(v92 + 56);
    v179 = v92 + 56;
    v111 = v148;
    v110(&v148[v171], 1, 1, v175);
    v106(v111, v108, v104);
    *(v111 + *(v109 + 36)) = v103;
    v176 = v106;
    v106(v156, v108, v104);

    v112 = v158;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v113 = v108;
    v114 = v180;
    v180(v113, v104);
    v114(v168, v104);
    v178 = v110;
    v110(v112, 0, 1, v175);
    sub_10002311C(v112, v111 + v171, &qword_1016A5970, &unk_1013B3470);
    v115 = *(v150 + 56);
    v116 = v149;
    v117 = v157;
    v115(v149, 1, 1, v157);
    sub_10000B3A8(v116, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v111, v116, &qword_1016A7828, &unk_1013D7340);
    v115(v116, 0, 1, v117);
    v171 = sub_100B34BBC(v116);
    sub_10000B3A8(v116, &qword_1016A7830, &unk_1013D69E0);
    v118 = *(v166 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v119 = sub_1000076D4(v104, qword_10177AC60);
    v120 = v168;
    v121 = v176;
    v176(v168, v119, v104);
    v122 = v172;
    v121(v172, v120, v104);
    *&v169 = *(v159 + 40);
    v123 = v159;
    v124 = v152;
    v125 = v178;
    v178(&v152[v169], 1, 1, v175);
    v121(v124, v122, v104);
    *(v124 + *(v123 + 36)) = v118;
    v121(v156, v122, v104);

    v126 = v158;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v127 = v180;
    v180(v122, v104);
    v127(v168, v104);
    v125(v126, 0, 1, v175);
    sub_10002311C(v126, v124 + v169, &qword_1016A5970, &unk_1013B3470);
    v128 = *(v153 + 56);
    v129 = v151;
    v130 = v159;
    v128(v151, 1, 1, v159);
    sub_10000B3A8(v129, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v124, v129, &qword_1016A5978, &qword_101410D20);
    v128(v129, 0, 1, v130);
    v131 = sub_100B33E08(v129);
    v132 = sub_10000B3A8(v129, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v132);
    v133 = v163;
    *(&v145 - 2) = v163;
    v134 = sub_10013CF58(sub_100721E70, (&v145 - 8), v171)[2];

    __chkstk_darwin(v135);
    *(&v145 - 2) = v133;
    v88 = sub_10013CEF0(sub_10062CF74, (&v145 - 8), v131)[2];

    v136 = &v88[v134];
    if (__OFADD__(v134, v88))
    {
      __break(1u);
    }

    else
    {
      v137 = v162;
      CurrentValueSubject.value.getter();
      v138 = v183;
      v88 = v137;
      sub_10069CA80(v133, v183);
      v139 = v147;
      v74 = v167;
      if (!__OFADD__(v138, v136))
      {
        [v167 setConnectableDeviceCount:&v136[v138]];
        sub_100721C9C(v164 + *(v165 + 24), v139, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {

          v142 = String._bridgeToObjectiveC()();

          [v74 setSerialNumber:v142];

          v143 = type metadata accessor for OwnedBeaconRecord;
          v144 = v164;
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

            v141 = String._bridgeToObjectiveC()();

            [v74 setSerialNumber:v141];

            sub_100721D04(v164, type metadata accessor for OwnedBeaconRecord);
            (*(v170 + 8))(v139, v177);
            goto LABEL_36;
          }

          [v74 setSerialNumber:0];
          sub_100721D04(v164, type metadata accessor for OwnedBeaconRecord);
          v143 = type metadata accessor for StableIdentifier;
          v144 = v139;
        }

        sub_100721D04(v144, v143);
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  _Block_release(v174);
  __break(1u);
  _Block_release(v174);
  objc_autoreleasePoolPop(v88);
  __break(1u);
}

uint64_t sub_100702488()
{
  v1 = type metadata accessor for StandaloneBeacon(0);
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100702544, 0, 0);
}

uint64_t sub_100702544()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100702774;

    return daemon.getter();
  }

  else
  {
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B7F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "managedCBPeripheral FF is disabled!", v7, 2u);
    }

    v8 = v0[1];

    return v8(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_100702774(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100702950;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100702950(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  if (v1)
  {
    v5 = sub_100702FB0;
    v6 = 0;
  }

  else
  {

    v5 = sub_100702A88;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100702A88()
{
  v1 = v0[15];
  sub_100F855A4(*(v0[14] + 128));
  v0[16] = v1;
  if (v1)
  {
    v2 = sub_100702DCC;
  }

  else
  {
    v0[17] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100702B28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100702B28()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = *(v3 + 72);
    v26 = v0;
    do
    {
      v25 = v2;
      v5 = v26[10];
      sub_100721C9C(v4, v5, type metadata accessor for StandaloneBeacon);
      v6 = MACAddress.dataRepresentation.getter();
      v23 = v7;
      v24 = v6;
      v8 = MACAddress.dataRepresentation.getter();
      v10 = v9;
      v22 = v8;
      v21 = objc_allocWithZone(SPStandaloneBeacon);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v11 = Data._bridgeToObjectiveC()().super.isa;
      v12 = Data._bridgeToObjectiveC()().super.isa;
      v13 = String._bridgeToObjectiveC()();
      v14 = Date._bridgeToObjectiveC()().super.isa;
      v15 = Data._bridgeToObjectiveC()().super.isa;
      [v21 initWithIdentifier:isa macAddress:v11 classicMacAddress:v12 serialNumber:v13 pairingDate:v14 productData:v15];

      sub_100016590(v22, v10);
      sub_100016590(v24, v23);
      v0 = v26;
      sub_100721D04(v5, type metadata accessor for StandaloneBeacon);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += v19;
      v2 = v25 - 1;
    }

    while (v25 != 1);
  }

  v16 = sub_10112AF70(_swiftEmptyArrayStorage);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_100702DCC()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[7] = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "standaloneBeacons error %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(&_swiftEmptySetSingleton);
}

uint64_t sub_100702FB0()
{
  v13 = v0;

  v1 = v0[15];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[7] = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "standaloneBeacons error %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(&_swiftEmptySetSingleton);
}

uint64_t sub_100703194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v83 = type metadata accessor for OwnedBeaconGroup(0);
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v74 = &v72 - v16;
  v17 = __chkstk_darwin(v15);
  v75 = &v72 - v18;
  v19 = __chkstk_darwin(v17);
  v77 = &v72 - v20;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v23 = type metadata accessor for MACAddress();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177C418);
  v29 = *(v24 + 16);
  v82 = a1;
  v29(v26, a1, v23);
  v76 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v84 = v7;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v73 = v9;
    v34 = v33;
    v72 = swift_slowAlloc();
    v85 = v72;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v22;
    v37 = a3;
    v39 = v38;
    (*(v24 + 8))(v26, v23);
    v40 = sub_1000136BC(v35, v39, &v85);
    a3 = v37;
    v22 = v36;

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "beaconingIdentifier for %{private,mask.hash}s", v34, 0x16u);
    sub_100007BAC(v72);

    v9 = v73;
  }

  else
  {

    (*(v24 + 8))(v26, v23);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v41 = qword_10177C218;
  v42 = [objc_opt_self() sharedInstance];
  v43 = [v42 isInternalBuild];

  if (v43)
  {
    v44 = String._bridgeToObjectiveC()();
    v45 = [v41 stringForKey:v44];

    if (v45)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v85 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1000136BC(v46, v48, &v85);
        _os_log_impl(&_mh_execute_header, v49, v50, "beaconingIdentifierOverride: %s", v51, 0xCu);
        sub_100007BAC(v52);
      }

      UUID.init(uuidString:)();

      v53 = v77;
      sub_1000D2A70(v22, v77, &qword_1016980D0, &unk_10138F3B0);
      v54 = type metadata accessor for UUID();
      v55 = *(v54 - 8);
      isa = 0;
      if ((*(v55 + 48))(v53, 1, v54) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v55 + 8))(v53, v54);
      }

      (*(a3 + 16))(a3, isa);

      v57 = v22;
      return sub_10000B3A8(v57, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  v58 = v84;
  sub_100AC5D4C(v82, v84);
  v59 = v83;
  if ((*(v80 + 48))(v58, 1, v83) == 1)
  {
    sub_10000B3A8(v58, &unk_1016AF8B0, &unk_1013A0700);
LABEL_22:
    v67 = type metadata accessor for UUID();
    v68 = *(v67 - 8);
    v69 = v79;
    (*(v68 + 56))(v79, 1, 1, v67);
    v70 = v78;
    sub_1000D2A70(v69, v78, &qword_1016980D0, &unk_10138F3B0);
    v71 = 0;
    if ((*(v68 + 48))(v70, 1, v67) != 1)
    {
      v71 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v68 + 8))(v70, v67);
    }

    (*(a3 + 16))(a3, v71);

    v57 = v69;
    return sub_10000B3A8(v57, &qword_1016980D0, &unk_10138F3B0);
  }

  sub_10002AB74(v58, v9, type metadata accessor for OwnedBeaconGroup);
  if ((v9[*(v59 + 32)] & 1) == 0)
  {
    sub_100721D04(v9, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_22;
  }

  v60 = *(v59 + 24);
  v61 = type metadata accessor for UUID();
  v62 = *(v61 - 8);
  v63 = v75;
  (*(v62 + 16))(v75, &v9[v60], v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = v74;
  sub_1000D2A70(v63, v74, &qword_1016980D0, &unk_10138F3B0);
  v65 = 0;
  if ((*(v62 + 48))(v64, 1, v61) != 1)
  {
    v65 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v64, v61);
  }

  (*(a3 + 16))(a3, v65);

  sub_10000B3A8(v63, &qword_1016980D0, &unk_10138F3B0);
  return sub_100721D04(v9, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100703BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v56 = type metadata accessor for OwnedBeaconGroup(0);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177C418);
  v49 = *(v10 + 16);
  v50 = v10 + 16;
  v49(v15, a1, v9);
  v51 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v53 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v48 = a1;
    v22 = v21;
    v46 = swift_slowAlloc();
    v57 = v46;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v7;
    v24 = v13;
    v25 = a3;
    v27 = v26;
    v28 = v15;
    v29 = *(v10 + 8);
    v29(v28, v9);
    v30 = sub_1000136BC(v23, v27, &v57);
    a3 = v25;
    v13 = v24;
    v7 = v47;

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "fetchFindMyNetworkStatus for %{private,mask.hash}s", v22, 0x16u);
    sub_100007BAC(v46);

    a1 = v48;
  }

  else
  {

    v31 = v15;
    v29 = *(v10 + 8);
    v29(v31, v9);
  }

  sub_100AC5D4C(a1, v7);
  v32 = v56;
  if ((*(v54 + 48))(v7, 1, v56) == 1)
  {
    sub_10000B3A8(v7, &unk_1016AF8B0, &unk_1013A0700);
    v49(v13, a1, v9);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136315138;
      sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v13;
      v40 = v39;
      v29(v38, v9);
      v41 = sub_1000136BC(v37, v40, &v57);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "No beacon group for %s", v35, 0xCu);
      sub_100007BAC(v36);
    }

    else
    {

      v29(v13, v9);
    }

    sub_1003FD838();
    swift_allocError();
    *v44 = 1;
    v45 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v45);
  }

  else
  {
    v42 = v52;
    sub_10002AB74(v7, v52, type metadata accessor for OwnedBeaconGroup);
    (*(a3 + 16))(a3, *(v42 + *(v32 + 32)), 0);
    return sub_100721D04(v42, type metadata accessor for OwnedBeaconGroup);
  }
}

uint64_t sub_1007041C4(uint64_t a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  LODWORD(v216) = a2;
  v191 = sub_1000BC4D4(&qword_10169F3B0, &qword_1013A0880);
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v184 - v7;
  v193 = sub_1000BC4D4(&qword_10169F3B8, &qword_1013A0888);
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v190 = &v184 - v8;
  v196 = sub_1000BC4D4(&qword_10169F3C0, &qword_1013A0890);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v184 - v9;
  v199 = sub_1000BC4D4(&qword_10169F3C8, &qword_1013A0898);
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v184 - v10;
  v206 = type metadata accessor for DispatchTime();
  v213 = *(v206 - 8);
  v11 = __chkstk_darwin(v206);
  v204 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v205 = &v184 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v14 - 8);
  v215 = (&v184 - v15);
  v214 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(v214 - 8);
  v17 = __chkstk_darwin(v214);
  v187 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v202 = &v184 - v20;
  v21 = __chkstk_darwin(v19);
  v201 = &v184 - v22;
  v23 = __chkstk_darwin(v21);
  v203 = &v184 - v24;
  v186 = v25;
  __chkstk_darwin(v23);
  v218 = &v184 - v26;
  v27 = type metadata accessor for MACAddress();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v210 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v184 - v31;
  v217 = swift_allocObject();
  *(v217 + 2) = a4;
  _Block_copy(a4);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_1000076D4(v33, qword_10177C418);
  v35 = *(v28 + 16);
  v209 = v28 + 16;
  v208 = v35;
  v35(v32, a1, v27);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v211 = v28;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v200 = a4;
    v40 = v39;
    v41 = swift_slowAlloc();
    v212 = v34;
    v184 = v41;
    v222 = v41;
    *v40 = 67240450;
    *(v40 + 4) = v216 & 1;
    *(v40 + 8) = 2082;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = a1;
    v43 = a3;
    v44 = v16;
    v46 = v45;
    v207 = *(v28 + 8);
    v207(v32, v27);
    v47 = sub_1000136BC(v42, v46, &v222);
    v16 = v44;
    a3 = v43;
    a1 = v185;

    *(v40 + 10) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "setFindMyNetworkStatus %{BOOL,public}d for %{public}s", v40, 0x12u);
    sub_100007BAC(v184);
    v48 = v212;

    a4 = v200;
  }

  else
  {

    v207 = *(v28 + 8);
    v207(v32, v27);
    v48 = v34;
  }

  v49 = v215;
  sub_100AC5D4C(a1, v215);
  if ((*(v16 + 48))(v49, 1, v214) != 1)
  {
    sub_10002AB74(v49, v218, type metadata accessor for OwnedBeaconGroup);
    if (v216)
    {
      v59 = v218;
      sub_100698438(1, v218, sub_10001E370, v217);
      sub_100721D04(v59, type metadata accessor for OwnedBeaconGroup);
    }

    v211 = v16;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = (v62 + 16);
    v64 = dispatch_group_create();
    dispatch_group_enter(v64);

    v65 = v64;
    v216 = a3;
    sub_10040B2B8(v218, 1, a3, v62, v65);

    v66 = v204;
    static DispatchTime.now()();
    v67 = v205;
    + infix(_:_:)();
    v68 = v213 + 8;
    v69 = *(v213 + 8);
    v70 = v206;
    v69(v66, v206);
    OS_dispatch_group.wait(timeout:)();
    v215 = v69;
    v69(v67, v70);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v71 = v203;
      sub_100721C9C(v218, v203, type metadata accessor for OwnedBeaconGroup);
      v212 = v48;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v213 = v68;
        v75 = v74;
        v76 = swift_slowAlloc();
        v214 = v62;
        v77 = v76;
        v222 = v76;
        *v75 = 136315138;
        v78 = sub_10051F7B0();
        v79 = v63;
        v81 = v80;
        sub_100721D04(v71, type metadata accessor for OwnedBeaconGroup);
        v82 = sub_1000136BC(v78, v81, &v222);
        v63 = v79;

        *(v75 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v72, v73, "Timed out waiting for pairing lock removal %s", v75, 0xCu);
        sub_100007BAC(v77);
        v62 = v214;

        v68 = v213;
      }

      else
      {

        sub_100721D04(v71, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v83 = swift_allocError();
      *v84 = 9;
      swift_beginAccess();
      *v63 = v83;

      v48 = v212;
    }

    swift_beginAccess();
    v85 = *v63;
    if (*v63)
    {
      swift_errorRetain();
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v220 = v89;
        *v88 = 136446210;
        v221 = v85;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v90 = String.init<A>(describing:)();
        v92 = a4;
        v93 = sub_1000136BC(v90, v91, &v220);

        *(v88 + 4) = v93;
        a4 = v92;
        v94 = "Unable to remove pairing lock. Error %{public}s";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v86, v87, v94, v88, 0xCu);
        sub_100007BAC(v89);

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    dispatch_group_enter(v65);
    v95 = swift_allocObject();
    *(v95 + 16) = v62;
    *(v95 + 24) = v65;

    v96 = v65;
    sub_1003E8454(v218, sub_100721A80, v95);

    v97 = v204;
    static DispatchTime.now()();
    v98 = v205;
    + infix(_:_:)();
    v99 = v97;
    v100 = v206;
    v101 = v215;
    v215(v99, v206);
    OS_dispatch_group.wait(timeout:)();
    v101(v98, v100);
    v102 = static DispatchTimeoutResult.== infix(_:_:)();
    v214 = v62;
    v212 = v48;
    if (v102)
    {
      v103 = v201;
      sub_100721C9C(v218, v201, type metadata accessor for OwnedBeaconGroup);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v213 = v68;
        v107 = v106;
        v108 = swift_slowAlloc();
        v220 = v108;
        *v107 = 136315138;
        v109 = sub_10051F7B0();
        v110 = v96;
        v111 = v63;
        v113 = v112;
        sub_100721D04(v103, type metadata accessor for OwnedBeaconGroup);
        v114 = sub_1000136BC(v109, v113, &v220);
        v63 = v111;
        v96 = v110;

        *(v107 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v104, v105, "Timed out waiting for unpair command response %s", v107, 0xCu);
        sub_100007BAC(v108);
        v62 = v214;

        v68 = v213;
      }

      else
      {

        sub_100721D04(v103, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v115 = swift_allocError();
      *v116 = 9;
      *v63 = v115;
    }

    v117 = *v63;
    if (*v63)
    {
      v213 = v68;
      swift_errorRetain();
      swift_errorRetain();
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v220 = v121;
        *v120 = 136446210;
        v221 = v117;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v122 = String.init<A>(describing:)();
        v124 = v96;
        v125 = a4;
        v126 = sub_1000136BC(v122, v123, &v220);

        *(v120 + 4) = v126;
        a4 = v125;
        v96 = v124;
        _os_log_impl(&_mh_execute_header, v118, v119, "Unpair command failed. Error %{public}s", v120, 0xCu);
        sub_100007BAC(v121);
        v62 = v214;
      }

      else
      {
      }

      *v63 = 0;
    }

    dispatch_group_enter(v96);
    v127 = swift_allocObject();
    *(v127 + 16) = v62;
    *(v127 + 24) = v96;

    v65 = v96;
    sub_100698438(0, v218, sub_100721F34, v127);

    v128 = v204;
    static DispatchTime.now()();
    v129 = v205;
    + infix(_:_:)();
    v130 = v206;
    v131 = v215;
    v215(v128, v206);
    OS_dispatch_group.wait(timeout:)();
    v131(v129, v130);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v132 = v202;
      sub_100721C9C(v218, v202, type metadata accessor for OwnedBeaconGroup);
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v220 = v136;
        *v135 = 136315138;
        v137 = sub_10051F7B0();
        v138 = v132;
        v139 = v63;
        v141 = v140;
        sub_100721D04(v138, type metadata accessor for OwnedBeaconGroup);
        v142 = sub_1000136BC(v137, v141, &v220);
        v63 = v139;

        *(v135 + 4) = v142;
        _os_log_impl(&_mh_execute_header, v133, v134, "Timed out waiting for FMNS status update %s", v135, 0xCu);
        sub_100007BAC(v136);
        v62 = v214;
      }

      else
      {

        sub_100721D04(v132, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v143 = swift_allocError();
      *v144 = 9;
      *v63 = v143;
    }

    v145 = *v63;
    if (*v63)
    {
      swift_errorRetain();
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v220 = v89;
        *v88 = 136446210;
        v221 = v145;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v146 = String.init<A>(describing:)();
        v148 = a4;
        v149 = sub_1000136BC(v146, v147, &v220);

        *(v88 + 4) = v149;
        a4 = v148;
        v94 = "Unable to update FMNS status. Error %{public}s";
        goto LABEL_39;
      }

LABEL_40:

      swift_errorRetain();
      v150 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v150);

LABEL_41:
      sub_100721D04(v218, type metadata accessor for OwnedBeaconGroup);
    }

    dispatch_group_enter(v65);
    v152 = swift_allocObject();
    *(v152 + 16) = v62;
    *(v152 + 24) = v65;
    v221 = _swiftEmptyArrayStorage;

    v153 = v65;
    sub_100519FB0();
    v155 = v154;
    v156 = v216;

    sub_1003FCFF8(v155, v156, &v221, 0);

    v157 = v221;
    if (v221 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }
    }

    else if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:
      v158 = swift_allocObject();
      v215 = v158;
      *(v158 + 2) = 0;
      v159 = (v158 + 16);
      v220 = v157;

      v216 = v63;
      sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
      v200 = a4;
      sub_1000BC4D4(&qword_10169F3D8, &qword_1013A08A8);
      sub_1000041A4(&qword_10169F3E0, &qword_10169F3D0, &qword_1013A08A0, &protocol conformance descriptor for Future<A, B>);
      sub_1000041A4(&qword_10169F3E8, &qword_10169F3D8, &qword_1013A08A8, &protocol conformance descriptor for [A]);
      v160 = v188;
      Publishers.MergeMany.init<A>(_:)();
      sub_1000041A4(&qword_10169F3F0, &qword_10169F3B0, &qword_1013A0880, &protocol conformance descriptor for Publishers.MergeMany<A>);
      v161 = v190;
      v162 = v191;
      Publisher.collect()();
      (*(v189 + 8))(v160, v162);
      sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
      sub_1000041A4(&qword_10169F400, &qword_10169F3B8, &qword_1013A0888, &protocol conformance descriptor for Publishers.Collect<A>);
      v163 = v194;
      v164 = v193;
      Publisher.map<A>(_:)();
      (*(v192 + 8))(v161, v164);
      sub_1000BC4D4(&qword_10169F408, &qword_1013A08B8);
      sub_1000041A4(&qword_10169F410, &qword_10169F3C0, &qword_1013A0890, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_10169F418, &qword_10169F408, &qword_1013A08B8, &protocol conformance descriptor for Just<A>);
      v165 = v197;
      v166 = v196;
      Publisher.catch<A>(_:)();
      (*(v195 + 8))(v163, v166);
      v167 = v187;
      sub_100721C9C(v218, v187, type metadata accessor for OwnedBeaconGroup);
      v168 = (*(v211 + 80) + 16) & ~*(v211 + 80);
      v169 = (v186 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
      v170 = swift_allocObject();
      sub_10002AB74(v167, v170 + v168, type metadata accessor for OwnedBeaconGroup);
      v171 = (v170 + v169);
      *v171 = sub_100721F34;
      v171[1] = v152;
      *(v170 + ((v169 + 23) & 0xFFFFFFFFFFFFFFF8)) = v215;
      a4 = v200;
      sub_1000041A4(&qword_10169F420, &qword_10169F3C8, &qword_1013A0898, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v172 = v199;
      v173 = Publisher<>.sink(receiveValue:)();

      v174 = v172;
      v63 = v216;
      (*(v198 + 8))(v165, v174);
      swift_beginAccess();
      *v159 = v173;

LABEL_48:

      v175 = *v63;
      if (*v63)
      {
        swift_errorRetain();
        swift_errorRetain();
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v221 = v179;
          *v178 = 136446210;
          v219 = v175;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v180 = String.init<A>(describing:)();
          v182 = sub_1000136BC(v180, v181, &v221);

          *(v178 + 4) = v182;
          _os_log_impl(&_mh_execute_header, v176, v177, "Unable to remove related records. Error %{public}s", v178, 0xCu);
          sub_100007BAC(v179);
        }

        swift_errorRetain();
        v183 = _convertErrorToNSError(_:)();
        (a4)[2](a4, v183);
      }

      else
      {
        a4[2](a4, 0);
      }

      goto LABEL_41;
    }

    *v63 = 0;

    dispatch_group_leave(v153);

    goto LABEL_48;
  }

  sub_10000B3A8(v49, &unk_1016AF8B0, &unk_1013A0700);
  v50 = v210;
  v208(v210, a1, v27);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v222 = v54;
    *v53 = 136446210;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v207(v50, v27);
    v58 = sub_1000136BC(v55, v57, &v222);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "No beacon group for %{public}s", v53, 0xCu);
    sub_100007BAC(v54);
  }

  else
  {

    v207(v50, v27);
  }

  sub_1003FD838();
  swift_allocError();
  *v60 = 1;
  v61 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v61);
}

uint64_t sub_100705E18(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v14;
    v18 = sub_1000136BC(v16, v17, &v36);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000136BC(a2, a3, &v36);
    _os_log_impl(&_mh_execute_header, v13, v35, "simulateAccessoryPairing type: %s name: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

LABEL_14:
    if ((sub_10110F67C(a2, a3) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_14;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      sub_1003FD838();
      swift_allocError();
      *v34 = 6;
      goto LABEL_21;
    }
  }

  if ((sub_101110550(a2, a3, a4 & 1) & 1) == 0)
  {
LABEL_20:
    sub_1003FD838();
    swift_allocError();
    *v32 = 0;
LABEL_21:
    v33 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, v33);
  }

LABEL_15:
  v29 = *(a6 + 16);

  return v29(a6, 0);
}

uint64_t sub_1007061DC(uint64_t a1, uint64_t a2)
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B2D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100706394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v41 = &v34[-v7];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v40 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B7F8);
  v39 = *(v9 + 16);
  v39(v13, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v10;
    v18 = v17;
    v37 = swift_slowAlloc();
    v42 = v37;
    *v18 = 136315651;
    *(v18 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v42);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v16;
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v24 = v23;
    (*(v9 + 8))(v13, v8);
    v25 = sub_1000136BC(v19, v24, &v42);
    a3 = v22;
    a2 = v21;
    a1 = v20;

    *(v18 + 24) = v25;
    v26 = v36;
    _os_log_impl(&_mh_execute_header, v36, v35, "%s for beaconUUID: %{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();

    v10 = v38;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = type metadata accessor for TaskPriority();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  v29 = v40;
  v39(v40, a1, v8);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  (*(v9 + 32))(v31 + v30, v29, v8);
  v32 = (v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = a2;
  v32[1] = a3;

  sub_10025EDD4(0, 0, v28, &unk_1013B6930, v31);
}

uint64_t sub_1007067F8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, int *), unint64_t a3)
{
  v144 = a2;
  v148 = type metadata accessor for Date();
  v126 = *(v148 - 8);
  __chkstk_darwin(v148);
  v127 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for HashAlgorithm();
  v125 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v154 = *(v7 - 1);
  __chkstk_darwin(v7);
  v149 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v125 - v10);
  v12 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v12 - 8);
  v155 = &v125 - v13;
  v14 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v156 = *(v14 - 8);
  v157 = v14;
  __chkstk_darwin(v14);
  v142 = &v125 - v15;
  v138 = type metadata accessor for URL();
  v141 = *(v138 - 1);
  v16 = __chkstk_darwin(v138);
  v139 = (&v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v140 = (&v125 - v19);
  __chkstk_darwin(v18);
  v21 = (&v125 - v20);
  v22 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  __chkstk_darwin(v22 - 8);
  v145 = &v125 - v23;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v134 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v159 = &v125 - v29;
  v30 = __chkstk_darwin(v28);
  v158 = &v125 - v31;
  __chkstk_darwin(v30);
  v33 = &v125 - v32;
  if (qword_1016954F0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v128 = type metadata accessor for Logger();
    sub_1000076D4(v128, qword_10177CE28);
    v34 = *(v25 + 16);
    v136 = a1;
    v150 = v34;
    v151 = v25 + 16;
    v34(v33, a1, v24);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v152 = v11;
    v153 = v7;
    v129 = a3;
    v135 = v25;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v161[0] = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v25 + 8))(v33, v24);
      v43 = sub_1000136BC(v40, v42, v161);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "OwnedDeviceKeyRecord for uuid %{private,mask.hash}s.", v38, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {

      (*(v25 + 8))(v33, v24);
    }

    v133 = *(*(v144 + 35) + 168);
    if (qword_101695268 != -1)
    {
      swift_once();
    }

    v44 = v138;
    sub_1000076D4(v138, qword_10177C680);
    UUID.uuidString.getter();
    v137 = v21;
    URL.appendingPathComponent(_:isDirectory:)();

    v45 = v141;
    v46 = *(v141 + 16);
    v47 = v140;
    v46(v140, v21, v44);
    v48 = v157;
    v49 = *(v157 + 10);
    v144 = v49;
    v131 = type metadata accessor for DirectorySequence();
    v50 = *(v131 - 8);
    v130 = *(v50 + 56);
    v132 = v50 + 56;
    v51 = v142;
    v130(v49 + v142, 1, 1, v131);
    v46(v51, v47, v44);
    *(v51 + *(v48 + 9)) = v133;
    v46(v139, v47, v44);

    v7 = v155;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v52 = *(v45 + 8);
    v52(v47, v44);
    v52(v137, v44);
    v130(v7, 0, 1, v131);
    sub_10002311C(v7, v144 + v51, &qword_1016A5970, &unk_1013B3470);
    v53 = v157;
    v54 = v156[7];
    v55 = v145;
    v54(v145, 1, 1, v157);
    sub_10000B3A8(v55, &qword_1016A78B8, &unk_1013D6710);
    sub_1000D2AD8(v51, v55, &qword_1016A78A8, &unk_1013D66E0);
    v54(v55, 0, 1, v53);
    sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
    v56 = swift_allocObject();
    sub_1000D2AD8(v55, v56 + *(*v56 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
    v57 = _swiftEmptyArrayStorage;
    v162 = _swiftEmptyArrayStorage;
    v58 = *(*v56 + class metadata base offset for _SequenceBox + 16);
    sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
    v11 = swift_allocObject();
    sub_1000D2A70(v56 + v58, v11 + *(*v11 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
    v145 = *(*v11 + class metadata base offset for _IteratorBox + 16);
    v59 = v152;
    sub_100AF5B10(v152);
    v60 = v153;
    v61 = *(v154 + 48);
    v154 += 48;
    v144 = v61;
    if (v61(v59, 1, v153) == 1)
    {
      break;
    }

    v133 = v56;
    a3 = 0;
    v141 = v125 + 104;
    v140 = (v125 + 8);
    LODWORD(v139) = enum case for HashAlgorithm.sha256(_:);
    v138 = (v126 + 8);
    v137 = (v135 + 8);
    v21 = v127;
    v62 = v149;
    v143 = v24;
    v142 = v11;
    while (1)
    {
      sub_10002AB74(v59, v62, type metadata accessor for OwnedDeviceKeyRecord);
      v63 = v150;
      v150(v158, v62 + v60[5], v24);
      v63(v159, v62 + v60[6], v24);
      a1 = (v62 + v60[7]);
      v64 = sub_100A7A194(*a1, a1[1], 0, 0);
      if (a3)
      {
        goto LABEL_63;
      }

      v65 = v64;
      v66 = v62;
      v33 = sub_100A7829C(v64, 0, 2);
      v25 = v67;
      CCECCryptorRelease();
      v68 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        break;
      }

      if (v68)
      {
        LODWORD(v69) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_42;
        }

        v69 = v69;
      }

      else
      {
        v69 = BYTE6(v25);
      }

LABEL_19:
      if (v69 != 28)
      {
        if (v68 != 1)
        {
          goto LABEL_55;
        }

        LODWORD(v74) = HIDWORD(v33) - v33;
        if (!__OFSUB__(HIDWORD(v33), v33))
        {
          v65 = v74;
          goto LABEL_68;
        }

        __break(1u);
LABEL_51:
        if (v74 == 1)
        {
          LODWORD(v68) = HIDWORD(v33) - v33;
          if (!__OFSUB__(HIDWORD(v33), v33))
          {
            a3 = v68;
            goto LABEL_70;
          }

          __break(1u);
LABEL_55:
          if (v68 != 2)
          {
            v65 = BYTE6(v25);
            goto LABEL_68;
          }

          v110 = *(v33 + 2);
          v74 = *(v33 + 3);
          v65 = v74 - v110;
          if (!__OFSUB__(v74, v110))
          {
            goto LABEL_68;
          }

          __break(1u);
        }

        if (v74 == 2)
        {
          v112 = *(v33 + 2);
          v111 = *(v33 + 3);
          a3 = v111 - v112;
          if (__OFSUB__(v111, v112))
          {
            __break(1u);
LABEL_63:
            v113 = a3;
            v114 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v115 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v116 = swift_allocObject();
            *(v116 + 16) = xmmword_101385D80;
            v161[0] = v113;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v33 = String.init<A>(describing:)();
            v25 = v117;
            *(v116 + 56) = &type metadata for String;
            *(v116 + 64) = sub_100008C00();
            *(v116 + 32) = v33;
            *(v116 + 40) = v25;
            os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, v115, "Error deriving advertisementKey: %@", 35, 2, v116);

            sub_1001BAF88();
            v118 = swift_allocError();
            *v119 = 0;
            swift_willThrow();

            goto LABEL_66;
          }
        }

        else
        {
          a3 = BYTE6(v65);
        }

LABEL_70:
        sub_100018350();
        v118 = swift_allocError();
        *v124 = 28;
        *(v124 + 8) = a3;
        *(v124 + 16) = 0;
        swift_willThrow();
        v122 = v33;
        for (i = v65; ; i = v25)
        {
          sub_100016590(v122, i);
LABEL_66:
          v161[0] = 0;
          v161[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v120._object = 0x800000010134CB30;
          v120._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v120);
          v160 = v118;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _Block_release(v129);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          _Block_release(v129);
          objc_autoreleasePoolPop(v161);
          __break(1u);
LABEL_67:
          v65 = 0;
LABEL_68:
          sub_100018350();
          v118 = swift_allocError();
          *v121 = 28;
          *(v121 + 8) = v65;
          *(v121 + 16) = 0;
          swift_willThrow();
          v122 = v33;
        }
      }

      v157 = v33;
      v7 = sub_100A7A194(*a1, a1[1], 0, 0);
      v33 = sub_100A7829C(v7, 0, 2);
      v65 = v73;
      CCECCryptorRelease();
      v74 = v65 >> 62;
      if ((v65 >> 62) > 1)
      {
        if (v74 != 2)
        {
          a3 = 0;
          goto LABEL_70;
        }

        v77 = *(v33 + 2);
        v76 = *(v33 + 3);
        v72 = __OFSUB__(v76, v77);
        v75 = v76 - v77;
        if (v72)
        {
          goto LABEL_43;
        }
      }

      else if (v74)
      {
        LODWORD(v75) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_44;
        }

        v75 = v75;
      }

      else
      {
        v75 = BYTE6(v65);
      }

      if (v75 != 28)
      {
        goto LABEL_51;
      }

      v78 = v25;
      v80 = v146;
      v79 = v147;
      (*v141)(v146, v139, v147);
      v81 = Data.hash(algorithm:)();
      v7 = v82;
      sub_100016590(v33, v65);
      (*v140)(v80, v79);
      v83 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v66, v21);
      v156 = 0;
      v84 = v21;
      objc_autoreleasePoolPop(v83);
      v155 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v86 = UUID._bridgeToObjectiveC()().super.isa;
      v87 = v157;
      v88 = v78;
      v89 = Data._bridgeToObjectiveC()().super.isa;
      v90 = Data._bridgeToObjectiveC()().super.isa;
      v91 = Date._bridgeToObjectiveC()().super.isa;
      v155 = [v155 initWithIdentifier:isa deviceIdentifier:v86 advertisement:v89 hashedAdvertisement:v90 creationDate:v91];

      sub_100016590(v81, v7);
      sub_100016590(v87, v88);
      (*v138)(v84, v148);
      v92 = *v137;
      v24 = v143;
      (*v137)(v159, v143);
      v92(v158, v24);
      v93 = v155;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = v84;
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v57 = v162;
      v62 = v149;
      sub_100721D04(v149, type metadata accessor for OwnedDeviceKeyRecord);
      v11 = v142;
      v59 = v152;
      sub_100AF5B10(v152);
      v60 = v153;
      v94 = v144(v59, 1, v153);
      a3 = v156;
      if (v94 == 1)
      {
        v56 = v133;
        goto LABEL_34;
      }
    }

    if (v68 != 2)
    {
      goto LABEL_67;
    }

    v71 = *(v33 + 2);
    v70 = *(v33 + 3);
    v72 = __OFSUB__(v70, v71);
    v69 = v70 - v71;
    if (!v72)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_34:
  swift_setDeallocating();
  sub_10000B3A8(v11 + *(*v11 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  swift_deallocClassInstance();
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v128, qword_10177B7F8);
  v95 = v134;
  v150(v134, v136, v24);

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = v56;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v161[0] = v100;
    *v99 = 134218499;
    if (v57 >> 62)
    {
      v101 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v101 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v99 + 4) = v101;
    *(v99 + 12) = 2160;
    *(v99 + 14) = 1752392040;
    *(v99 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v102 = v134;
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    (*(v135 + 8))(v102, v24);
    v106 = sub_1000136BC(v103, v105, v161);

    *(v99 + 24) = v106;

    _os_log_impl(&_mh_execute_header, v96, v97, "Got %ld ownedDeviceKeyRecord for %{private,mask.hash}s.", v99, 0x20u);
    sub_100007BAC(v100);

    v107 = v129;
    v56 = v98;
  }

  else
  {

    (*(v135 + 8))(v95, v24);

    v107 = v129;
  }

  sub_100008BB8(0, &qword_1016A78D0, SPOwnedDeviceKeyRecord_ptr);
  v108 = Array._bridgeToObjectiveC()().super.isa;
  v107[2](v107, v108);

  swift_setDeallocating();
  sub_10000B3A8(v56 + *(*v56 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  swift_deallocClassInstance();
}

uint64_t sub_100707E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a2;
  v97 = type metadata accessor for Date();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for HashAlgorithm();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v7 = __chkstk_darwin(v100);
  v99 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v88 - v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v101 = &v88 - v17;
  v18 = __chkstk_darwin(v16);
  v110 = &v88 - v19;
  v20 = __chkstk_darwin(v18);
  v109 = &v88 - v21;
  __chkstk_darwin(v20);
  v23 = &v88 - v22;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000076D4(v24, qword_10177CE28);
  v107 = *(v12 + 16);
  v108 = v12 + 16;
  v107(v23, a1, v11);
  v105 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v98 = v15;
  v106 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v103 = v10;
    v30 = v29;
    v31 = swift_slowAlloc();
    v102 = a3;
    v32 = v31;
    v112[0] = v31;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = a1;
    v36 = v35;
    v111 = *(v12 + 8);
    v111(v23, v11);
    v37 = sub_1000136BC(v33, v36, v112);
    a1 = v34;

    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Creating ownedDeviceKeyRecord for uuid %{private,mask.hash}s", v30, 0x16u);
    sub_100007BAC(v32);
    a3 = v102;

    v10 = v103;
  }

  else
  {

    v111 = *(v12 + 8);
    v111(v23, v11);
  }

  v38 = v11;
  sub_100A88B5C(a1, v10);
  v39 = v110;
  v104 = a1;
  v102 = a3;
  v40 = v107;
  v41 = v100;
  v107(v109, v10 + *(v100 + 20), v38);
  v40(v39, v10 + *(v41 + 24), v38);
  v42 = v10 + *(v41 + 28);
  v91 = PublicKey.advertisement.getter(*v42, *(v42 + 1));
  v90 = v43;
  v44 = PublicKey.advertisement.getter(*v42, *(v42 + 1));
  v46 = v45;
  v47 = v93;
  v48 = v92;
  v49 = v94;
  (*(v93 + 104))(v92, enum case for HashAlgorithm.sha256(_:), v94);
  v50 = Data.hash(algorithm:)();
  v101 = v38;
  v51 = v50;
  v89 = v52;
  sub_100016590(v44, v46);
  v53 = v48;
  v54 = v95;
  (*(v47 + 8))(v53, v49);
  v55 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v10, v54);
  v103 = v10;
  objc_autoreleasePoolPop(v55);
  v56 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v58 = UUID._bridgeToObjectiveC()().super.isa;
  v59 = v91;
  v60 = v90;
  v61 = Data._bridgeToObjectiveC()().super.isa;
  v88 = v51;
  v62 = v89;
  v63 = Data._bridgeToObjectiveC()().super.isa;
  v64 = Date._bridgeToObjectiveC()().super.isa;
  v65 = [v56 initWithIdentifier:isa deviceIdentifier:v58 advertisement:v61 hashedAdvertisement:v63 creationDate:v64];
  v66 = v54;
  v67 = v65;

  sub_100016590(v88, v62);
  sub_100016590(v59, v60);
  (*(v96 + 8))(v66, v97);
  v68 = v111;
  v69 = v101;
  v111(v110, v101);
  v68(v109, v69);
  v70 = v103;
  v71 = v99;
  sub_100721C9C(v103, v99, type metadata accessor for OwnedDeviceKeyRecord);
  v72 = v98;
  v107(v98, v104, v69);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v110 = v67;
    v112[0] = v76;
    *v75 = 141558787;
    *(v75 + 4) = 1752392040;
    *(v75 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v111 = v68;
    v77 = v72;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v71;
    v81 = v80;
    sub_100721D04(v79, type metadata accessor for OwnedDeviceKeyRecord);
    v82 = sub_1000136BC(v78, v81, v112);

    *(v75 + 14) = v82;
    *(v75 + 22) = 2160;
    *(v75 + 24) = 1752392040;
    *(v75 + 32) = 2081;
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v84;
    v111(v77, v69);
    v86 = sub_1000136BC(v83, v85, v112);

    *(v75 + 34) = v86;
    _os_log_impl(&_mh_execute_header, v73, v74, "New OwnedDeviceKeyRecord with uuid: %{private,mask.hash}s created for %{private,mask.hash}s.", v75, 0x2Au);
    swift_arrayDestroy();
    v67 = v110;

    v70 = v103;
  }

  else
  {

    v68(v72, v69);
    sub_100721D04(v71, type metadata accessor for OwnedDeviceKeyRecord);
  }

  (*(v102 + 16))(v102, v67, 0);

  return sub_100721D04(v70, type metadata accessor for OwnedDeviceKeyRecord);
}

void sub_100708A5C(void *a1, uint64_t a2, void *a3)
{
  v152 = a2;
  v141 = type metadata accessor for Date();
  v5 = *(v141 - 8);
  __chkstk_darwin(v141);
  v133 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for HashAlgorithm();
  v114 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v153 = *(v138 - 8);
  __chkstk_darwin(v138);
  v146 = (&v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v9 - 8);
  v148 = &v113 - v10;
  v154 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v151 = *(v154 - 8);
  __chkstk_darwin(v154);
  v132 = &v113 - v11;
  v130 = type metadata accessor for URL();
  v150 = *(v130 - 1);
  v12 = __chkstk_darwin(v130);
  v135 = (&v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v128 = &v113 - v15;
  __chkstk_darwin(v14);
  v149 = &v113 - v16;
  v17 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  __chkstk_darwin(v17 - 8);
  v147 = &v113 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v143 = &v113 - v25;
  __chkstk_darwin(v24);
  v27 = (&v113 - v26);
  if (qword_1016954F0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_1000076D4(v28, qword_10177CE28);
  v30 = *(v20 + 16);
  v31 = a1;
  v137 = v20 + 16;
  v136 = v30;
  v30(v27, a1, v19);
  v131 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v117 = a3;
  v144 = v23;
  v115 = v5;
  v129 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v155 = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v20;
    v40 = v39;
    (*(v38 + 8))(v27, v19);
    v41 = sub_1000136BC(v37, v40, &v155);

    *(v35 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Purging ownedDeviceKeyRecord for uuid %{private,mask.hash}s.", v35, 0x16u);
    sub_100007BAC(v36);
  }

  else
  {

    (*(v20 + 8))(v27, v19);
  }

  v145 = v19;
  v127 = *(v152 + 280);
  v152 = *(v127 + 168);
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  v42 = v130;
  v126 = sub_1000076D4(v130, qword_10177C680);
  v125 = v31;
  UUID.uuidString.getter();
  v43 = v149;
  URL.appendingPathComponent(_:isDirectory:)();

  v44 = v150;
  v46 = v150 + 16;
  v45 = *(v150 + 16);
  v47 = v128;
  v45(v128, v43, v42);
  v48 = v45;
  v49 = v154;
  v50 = *(v154 + 40);
  v142 = v50;
  v134 = type metadata accessor for DirectorySequence();
  v51 = *(v134 - 8);
  v52 = *(v51 + 56);
  v53 = v51 + 56;
  v54 = v132;
  v52(v50 + v132, 1, 1, v134);
  v118 = v53;
  v119 = v52;
  v123 = v48;
  v122 = v46;
  v48(v54, v47, v42);
  *&v54[*(v49 + 36)] = v152;
  v55 = v54;
  v48(v135, v47, v42);

  v56 = v148;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v57 = *(v44 + 8);
  v150 = v44 + 8;
  v124 = v57;
  v57(v47, v42);
  v58 = v149;
  v57(v149, v42);
  v52(v56, 0, 1, v134);
  v59 = v55;
  sub_10002311C(v56, v142 + v55, &qword_1016A5970, &unk_1013B3470);
  v60 = v151 + 56;
  v61 = *(v151 + 7);
  v62 = v147;
  v63 = v154;
  v61(v147, 1, 1, v154);
  v120 = v61;
  v151 = v60;
  sub_10000B3A8(v62, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v59, v62, &qword_1016A78A8, &unk_1013D66E0);
  v61(v62, 0, 1, v63);
  v121 = sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
  v64 = swift_allocObject();
  sub_1000D2AD8(v62, v64 + *(*v64 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v142 = sub_100B38224((v64 + *(*v64 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v64 + *(*v64 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  swift_deallocClassInstance();
  v65 = v127;
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v152 = 0;
  v116 = sub_1012E34AC(v125);

  v66 = *(v65 + 168);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v67 = v123;
  v123(v47, v58, v42);
  v68 = v154;
  v127 = *(v154 + 40);
  v69 = v134;
  v70 = v119;
  v119((v59 + v127), 1, 1, v134);
  v67(v59, v47, v42);
  *(v59 + *(v68 + 36)) = v66;
  v67(v135, v47, v42);
  v71 = v142;

  v72 = v148;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v73 = v47;
  v74 = v124;
  v124(v73, v42);
  v74(v149, v42);
  v70(v72, 0, 1, v69);
  sub_10002311C(v72, v59 + v127, &qword_1016A5970, &unk_1013B3470);
  v75 = v147;
  v76 = v154;
  v77 = v120;
  v120(v147, 1, 1, v154);
  sub_10000B3A8(v75, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v59, v75, &qword_1016A78A8, &unk_1013D66E0);
  v77(v75, 0, 1, v76);
  v78 = swift_allocObject();
  sub_1000D2AD8(v75, v78 + *(*v78 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  a3 = sub_100B38224((v78 + *(*v78 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v78 + *(*v78 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  swift_deallocClassInstance();

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134218240;
    *(v81 + 4) = v71[2];

    *(v81 + 12) = 2048;
    *(v81 + 14) = a3[2];

    _os_log_impl(&_mh_execute_header, v79, v80, "OldRecords count = %ld recordsAfterPurge count = %ld.", v81, 0x16u);
  }

  else
  {
  }

  v19 = v133;
  v82 = v145;
  v27 = v146;
  v83 = v143;
  v23 = v144;
  a1 = _swiftEmptyArrayStorage;
  v155 = _swiftEmptyArrayStorage;
  v20 = v71[2];
  if (v20)
  {
    v5 = 0;
    v151 = v71 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    LODWORD(v133) = enum case for HashAlgorithm.sha256(_:);
    v132 = (v114 + 104);
    v131 = (v114 + 8);
    v130 = (v115 + 8);
    ++v129;
    v135 = a3;
    v134 = v20;
    do
    {
      if (v5 >= v71[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_100721C9C(&v151[*(v153 + 72) * v5], v27, type metadata accessor for OwnedDeviceKeyRecord);
      if ((sub_1005C9000(v27, a3) & 1) == 0)
      {
        v84 = v138;
        v85 = v136;
        v136(v83, v27 + *(v138 + 20), v82);
        v85(v23, v27 + *(v84 + 24), v82);
        v86 = v27 + *(v84 + 28);
        v154 = PublicKey.advertisement.getter(*v86, *(v86 + 1));
        v150 = v87;
        v88 = PublicKey.advertisement.getter(*v86, *(v86 + 1));
        v90 = v89;
        v92 = v139;
        v91 = v140;
        (*v132)(v139, v133, v140);
        v93 = Data.hash(algorithm:)();
        v148 = v94;
        v149 = v93;
        sub_100016590(v88, v90);
        (*v131)(v92, v91);
        v95 = objc_autoreleasePoolPush();
        v96 = v152;
        sub_100E7AB5C(v27, v19);
        v152 = v96;
        if (v96)
        {
          _Block_release(v117);
          objc_autoreleasePoolPop(v95);
          __break(1u);
          return;
        }

        v97 = v19;
        objc_autoreleasePoolPop(v95);
        v147 = objc_allocWithZone(SPOwnedDeviceKeyRecord);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v99 = UUID._bridgeToObjectiveC()().super.isa;
        v100 = v150;
        v101 = Data._bridgeToObjectiveC()().super.isa;
        v103 = v148;
        v102 = v149;
        v104 = Data._bridgeToObjectiveC()().super.isa;
        v105 = Date._bridgeToObjectiveC()().super.isa;
        v147 = [v147 initWithIdentifier:isa deviceIdentifier:v99 advertisement:v101 hashedAdvertisement:v104 creationDate:v105];

        sub_100016590(v102, v103);
        sub_100016590(v154, v100);
        (*v130)(v97, v141);
        v106 = *v129;
        v23 = v144;
        v82 = v145;
        (*v129)(v144, v145);
        v83 = v143;
        v106(v143, v82);
        v107 = v147;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = v97;
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        a1 = v155;
        v27 = v146;
        v71 = v142;
        a3 = v135;
        v20 = v134;
      }

      ++v5;
      sub_100721D04(v27, type metadata accessor for OwnedDeviceKeyRecord);
    }

    while (v20 != v5);
  }

  if (v116)
  {
    v108 = 0;
  }

  else
  {
    sub_100720740();
    v108 = swift_allocError();
    *v109 = 9;
  }

  v110 = v117;
  sub_100008BB8(0, &qword_1016A78D0, SPOwnedDeviceKeyRecord_ptr);
  v111.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v108)
  {
    v112 = _convertErrorToNSError(_:)();
  }

  else
  {
    v112 = 0;
  }

  v110[2](v110, v111.super.isa, v112);
}

uint64_t sub_100709DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v119 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v5 - 8);
  v106 = (&v102 - v6);
  v109 = type metadata accessor for OwnedBeaconGroup(0);
  v105 = *(v109 - 8);
  v7 = __chkstk_darwin(v109);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = &v102 - v9;
  v10 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v10 - 8);
  v12 = &v102 - v11;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v111 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v120 = (&v102 - v17);
  __chkstk_darwin(v16);
  v121 = &v102 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v112 = v20;
  v21 = __chkstk_darwin(v19);
  v102 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v103 = &v102 - v24;
  v25 = __chkstk_darwin(v23);
  v110 = &v102 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v102 - v28;
  __chkstk_darwin(v27);
  v31 = &v102 - v30;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_10177B7F8);
  v114 = *(v20 + 16);
  v115 = v20 + 16;
  v114(v31, a1, v19);
  v116 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v117 = a1;
  v118 = v29;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v108 = a3;
    v38 = v37;
    v39 = swift_slowAlloc();
    v126[0] = v39;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v113 = *(v20 + 8);
    v113(v31, v19);
    v43 = sub_1000136BC(v40, v42, v126);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "notificationBeacon for subscriptionId %{private,mask.hash}s", v38, 0x16u);
    sub_100007BAC(v39);
    a1 = v117;

    a3 = v108;
  }

  else
  {

    v113 = *(v20 + 8);
    v113(v31, v19);
  }

  v44 = *(v119 + 280);
  sub_100B2DFEC(a1, v12);
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v46 = (*(*(found - 8) + 48))(v12, 1, found);
  v47 = v120;
  v48 = v121;
  if (v46 == 1)
  {
    sub_10000B3A8(v12, &qword_10169E328, &unk_10139D740);
    (*(v20 + 56))(v47, 1, 1, v19);
    sub_100A89AEC(a1, v48);
    v49 = *(v20 + 48);
    if (v49(v47, 1, v19) != 1)
    {
      sub_10000B3A8(v47, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v114(v120, &v12[*(found + 24)], v19);
    sub_100721D04(v12, type metadata accessor for NotifyWhenFoundRecord);
    v50 = *(v20 + 56);
    v50(v47, 0, 1, v19);
    (*(v20 + 32))(v48, v47, v19);
    v50(v48, 0, 1, v19);
    v49 = *(v20 + 48);
  }

  if (v49(v48, 1, v19) != 1)
  {
    v55 = *(v20 + 32);
    v56 = v118;
    v55(v118, v48, v19);
    sub_100025020(v56, &v123);
    if (!v124)
    {
      sub_10000B3A8(&v123, &qword_101696920, &unk_10138B200);
      (*(a3 + 16))(a3, 0, 0);
      return (v113)(v56, v19);
    }

    sub_10000A748(&v123, v126);
    v57 = v19;
    v58 = v127;
    v59 = v128;
    sub_1000035D0(v126, v127);
    v60 = v58;
    v61 = v111;
    (*(v59 + 200))(v60, v59);
    if (v49(v61, 1, v57) == 1)
    {
      sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
      v62 = v118;
      v63 = v113;
    }

    else
    {
      v64 = v110;
      v55(v110, v61, v57);
      v65 = v106;
      sub_100AC53EC(v64, v106);
      if ((*(v105 + 48))(v65, 1, v109) != 1)
      {
        v108 = a3;
        v70 = v107;
        sub_10002AB74(v65, v107, type metadata accessor for OwnedBeaconGroup);
        v71 = v103;
        v114(v103, v117, v57);
        sub_10001F280(v126, &v123);
        v72 = v104;
        sub_100721C9C(v70, v104, type metadata accessor for OwnedBeaconGroup);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v122 = v121;
          *v75 = 141559299;
          *(v75 + 4) = 1752392040;
          *(v75 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v120 = v73;
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v71;
          v79 = v78;
          v80 = v113;
          v113(v77, v57);
          v81 = sub_1000136BC(v76, v79, &v122);

          *(v75 + 14) = v81;
          *(v75 + 22) = 2160;
          *(v75 + 24) = 1752392040;
          *(v75 + 32) = 2081;
          v83 = v124;
          v82 = v125;
          sub_1000035D0(&v123, v124);
          v84 = *(*(*(v82 + 8) + 8) + 32);
          LODWORD(v119) = v74;
          v85 = v102;
          v84(v83);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          v80(v85, v57);
          sub_100007BAC(&v123);
          v89 = sub_1000136BC(v86, v88, &v122);

          *(v75 + 34) = v89;
          *(v75 + 42) = 2160;
          *(v75 + 44) = 1752392040;
          *(v75 + 52) = 2081;
          v90 = v104;
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;
          sub_100721D04(v90, type metadata accessor for OwnedBeaconGroup);
          v94 = sub_1000136BC(v91, v93, &v122);

          *(v75 + 54) = v94;
          v95 = v120;
          _os_log_impl(&_mh_execute_header, v120, v119, "Subscription %{private,mask.hash}s. Beacon %{private,mask.hash}s.\nGroup %{private,mask.hash}s", v75, 0x3Eu);
          swift_arrayDestroy();

          v64 = v110;
        }

        else
        {

          sub_100721D04(v72, type metadata accessor for OwnedBeaconGroup);
          v80 = v113;
          v113(v71, v57);
          sub_100007BAC(&v123);
        }

        v96 = v127;
        v97 = v128;
        v98 = sub_1000035D0(v126, v127);
        v99 = sub_100B005BC(v98, v44, v96, v97);
        v100 = v107;
        v101 = sub_100AC30F0(v107);
        (*(v108 + 16))(v108, v99, v101);

        sub_100721D04(v100, type metadata accessor for OwnedBeaconGroup);
        v80(v64, v57);
        v80(v118, v57);
        return sub_100007BAC(v126);
      }

      v63 = v113;
      v113(v64, v57);
      sub_10000B3A8(v65, &unk_1016AF8B0, &unk_1013A0700);
      v62 = v118;
    }

    v66 = v127;
    v67 = v128;
    v68 = sub_1000035D0(v126, v127);
    v69 = sub_100B005BC(v68, v44, v66, v67);
    (*(a3 + 16))(a3, v69, 0);

    v63(v62, v57);
    return sub_100007BAC(v126);
  }

  sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "No record found for notify subscriptionId", v53, 2u);
  }

  return (*(a3 + 16))(a3, 0, 0);
}

void sub_10070ABB8(unint64_t a1, uint64_t a2, int a3, void *a4, void (**a5)(const void *, Class))
{
  LODWORD(v99) = a3;
  v101 = a2;
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TimeBasedKey(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v14 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v103 = *(v15 - 8);
  v104 = v15;
  __chkstk_darwin(v15);
  v100 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = swift_allocObject();
  *(v105 + 16) = a5;
  v89 = a5;
  _Block_copy(a5);
  v17 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = qword_10177C370;
  v106 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  *&aBlock = *a4;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  v24 = v23;
  *(v19 + 64) = v23;
  *(v19 + 72) = 0xD00000000000003CLL;
  *(v19 + 80) = 0x800000010135D610;
  v102 = v18;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "%@: %@", 6, 2, v19);

  v25 = a4[35];
  sub_100025020(a1, &aBlock);
  if (v109)
  {
    sub_10000A748(&aBlock, v113);
    v26 = v114;
    v27 = v115;
    v28 = sub_1000035D0(v113, v114);
    v29 = v101;
    v30 = sub_100B03A58(v28, v101, 0, 1, v99 & 1, v25, v26, v27);
    v33 = v30;
    if (v32 > 1u)
    {
      v34 = v100;
      if (v32 == 2)
      {
        sub_100359088(v30, v31, 2u);
      }

      v47 = static os_log_type_t.default.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_101385D80;
      v50 = v114;
      v49 = v115;
      sub_1000035D0(v113, v114);
      (*(*(*(v49 + 8) + 8) + 32))(v50);
      v51 = UUID.uuidString.getter();
      v53 = v52;
      (*(v103 + 8))(v34, v104);
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v24;
      *(v48 + 32) = v51;
      *(v48 + 40) = v53;

      v33 = _swiftEmptyArrayStorage;
    }

    else
    {
      v34 = v100;
      if (!v32)
      {
        v99 = v31;

        v88 = static os_log_type_t.default.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_101385D80;
        v37 = v114;
        v36 = v115;
        sub_1000035D0(v113, v114);
        (*(*(*(v36 + 8) + 8) + 32))(v37);
        v38 = UUID.uuidString.getter();
        v40 = v39;
        (*(v103 + 8))(v34, v104);
        *(v35 + 56) = &type metadata for String;
        *(v35 + 64) = v24;
        *(v35 + 32) = v38;
        *(v35 + 40) = v40;
        sub_100359088(v33, v99, 0);
      }
    }

    v54 = v114;
    v55 = v115;
    v56 = sub_1000035D0(v113, v114);
    v57 = sub_100B03A58(v56, v29, 1, 1, 0, v25, v54, v55);
    v60 = v57;
    if (v59 > 1u)
    {
      if (v59 == 2)
      {
        sub_100359088(v57, v58, 2u);
      }

      v68 = static os_log_type_t.default.getter();
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_101385D80;
      v71 = v114;
      v70 = v115;
      sub_1000035D0(v113, v114);
      (*(*(*(v70 + 8) + 8) + 32))(v71);
      v72 = UUID.uuidString.getter();
      v74 = v73;
      (*(v103 + 8))(v34, v104);
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = v24;
      *(v69 + 32) = v72;
      *(v69 + 40) = v74;

      v60 = _swiftEmptyArrayStorage;
    }

    else if (!v59)
    {
      v101 = v58;

      v61 = static os_log_type_t.default.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_101385D80;
      v64 = v114;
      v63 = v115;
      sub_1000035D0(v113, v114);
      (*(*(*(v63 + 8) + 8) + 32))(v64);
      v65 = UUID.uuidString.getter();
      v67 = v66;
      (*(v103 + 8))(v34, v104);
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = v24;
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      sub_100359088(v60, v101, 0);
    }

    *&aBlock = _swiftEmptyArrayStorage;
    v75 = v33[2];
    if (v75)
    {
      v76 = 0;
      v17 = 0;
      v106 = v75 - 1;
      a4 = _swiftEmptyArrayStorage;
      do
      {
        a1 = v76;
        while (1)
        {
          if (a1 >= v33[2])
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_100721C9C(v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a1, v14, type metadata accessor for TimeBasedKey);
          sub_1006B4308(v14, v60, &v112);
          sub_100721D04(v14, type metadata accessor for TimeBasedKey);
          if (v112)
          {
            break;
          }

          if (v75 == ++a1)
          {
            goto LABEL_30;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v76 = a1 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a4 = aBlock;
      }

      while (v106 != a1);
    }

    else
    {
      a4 = _swiftEmptyArrayStorage;
    }

LABEL_30:

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v77 = v91;
    v78 = v90;
    v79 = v92;
    (*(v91 + 104))(v90, enum case for DispatchQoS.QoSClass.default(_:), v92);
    v80 = static OS_dispatch_queue.global(qos:)();
    (*(v77 + 8))(v78, v79);
    v81 = swift_allocObject();
    v82 = v105;
    v81[2] = sub_100720574;
    v81[3] = v82;
    v81[4] = a4;
    v110 = sub_100721F48;
    v111 = v81;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v108 = sub_100006684;
    v109 = &unk_10162EDB0;
    v83 = _Block_copy(&aBlock);

    v84 = v93;
    static DispatchQoS.unspecified.getter();
    v112 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v85 = v95;
    v86 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v83);

    (*(v97 + 8))(v85, v86);
    (*(v94 + 8))(v84, v96);

    sub_100007BAC(v113);
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v41 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v42 = qword_10177C398;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_101385D80;
    v44 = UUID.uuidString.getter();
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v24;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "allBeaconingKeys failed to retrieve beacon record for %@", 56, 2, v43);

    sub_100008BB8(0, &qword_1016A7898, SPBeaconingKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v89[2](v89, isa);
  }
}

void sub_10070B938(unint64_t a1, void (**a2)(const void *, Class, void))
{
  v100 = type metadata accessor for OwnedBeaconRecord(0);
  v4 = *(v100 - 8);
  v5 = __chkstk_darwin(v100);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v86 - v7;
  v99 = type metadata accessor for UUID();
  v89 = *(v99 - 8);
  __chkstk_darwin(v99);
  v93 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for SharedBeaconRecord(0);
  v87 = *(v96 - 8);
  v10 = __chkstk_darwin(v96);
  v92 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v86 - v12;
  v88 = a2;
  _Block_copy(a2);
  v13 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    goto LABEL_72;
  }

  while (2)
  {
    v14 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138BBE0;
    v106[0] = *a1;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v16 = String.init<A>(describing:)();
    v94 = a1;
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v20 = v94;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    *(v15 + 64) = v19;
    *(v15 + 72) = 0xD00000000000002ALL;
    *(v15 + 80) = 0x800000010135D460;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "%{public}@: %{public}@", 22, 2, v15);

    v21 = sub_10090A010(_swiftEmptyArrayStorage);
    v101 = *(v20 + 280);
    v22 = sub_100025044();
    v24 = v22[2];
    v25 = &unk_1016B4000;
    v26 = &unk_10138A000;
    if (!v24)
    {

      v105 = 0;
      goto LABEL_36;
    }

    v104 = v8;
    v27 = 0;
    v98 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
    v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v86 = v22;
    a1 = v22 + v28;
    *&v97 = *(v4 + 9);
    v91 = (v89 + 16);
    *&v23 = 141558275;
    v90 = v23;
    while (1)
    {
      v103 = v24;
      v29 = v21;
      v30 = v104;
      sub_100721C9C(a1, v104, type metadata accessor for OwnedBeaconRecord);
      v13 = *(v98 + v101);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v105 = v27;
      v8 = *(v100 + 20);
      v106[0] = _swiftEmptyArrayStorage;
      v31 = sub_10130A99C(v30 + v8, 0, 0);
      if (v31)
      {
        v13 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v32 = v106[0];
      }

      else
      {
        v32 = _swiftEmptyArrayStorage;
      }

      v21 = v29;
      v4 = v104;
      v33 = sub_10130A99C(v104 + v8, 1, 0);
      if (v33)
      {
        break;
      }

      if (v32 >> 62)
      {
        goto LABEL_21;
      }

LABEL_15:
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

LABEL_4:
      sub_100721D04(v4, type metadata accessor for OwnedBeaconRecord);

LABEL_5:
      v27 = v105;
      a1 += v97;
      v24 = v103 - 1;
      if (v103 == 1)
      {

        v26 = &unk_10138A000;
        v25 = &unk_1016B4000;
LABEL_36:
        v53 = sub_100030068();
        v8 = *(v53 + 2);
        v55 = v102;
        if (!v8)
        {
LABEL_69:

          v84 = v88;
          _Block_copy(v88);
          sub_1000BC4D4(&qword_1016A7888, &qword_1013B6818);
          sub_100003E8C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          v84[2](v84, isa, 0);

          _Block_release(v84);

          _Block_release(v84);
          return;
        }

        v56 = *(v87 + 80);
        v95 = v53;
        v57 = &v53[(v56 + 32) & ~v56];
        v103 = v25[312];
        v58 = *(v87 + 72);
        v98 = (v89 + 16);
        *&v54 = v26[485];
        v97 = v54;
        v100 = v58;
        while (1)
        {
          sub_100721C9C(v57, v55, type metadata accessor for SharedBeaconRecord);
          if ((sub_1006BEE58(v55) & 1) == 0)
          {
            sub_100721D04(v55, type metadata accessor for SharedBeaconRecord);
            goto LABEL_39;
          }

          type metadata accessor for BeaconKeyManager(0);
          v59 = v105;
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v105 = v59;
          v60 = *(v96 + 20);
          v13 = _swiftEmptyArrayStorage;
          v106[0] = _swiftEmptyArrayStorage;
          v61 = sub_10130A99C(v55 + v60, 0, 0);
          if (v61)
          {
            v13 = v61;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            a1 = v106[0];
          }

          else
          {
            a1 = _swiftEmptyArrayStorage;
          }

          v62 = sub_10130A99C(v102 + v60, 1, 0);
          if (v62)
          {
            v13 = v62;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            a1 = v106[0];
            if (v106[0] >> 62)
            {
LABEL_56:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_57:
                v71 = v102;
                sub_100721D04(v102, type metadata accessor for SharedBeaconRecord);
                v55 = v71;

                v58 = v100;
                goto LABEL_39;
              }

              goto LABEL_51;
            }
          }

          else
          {

            if (a1 >> 62)
            {
              goto LABEL_56;
            }
          }

          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

LABEL_51:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v21;
          v64 = sub_1000210EC(v102 + v60);
          v66 = *(v21 + 16);
          v67 = (v65 & 1) == 0;
          v39 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (v39)
          {
            goto LABEL_71;
          }

          v69 = v65;
          if (*(v21 + 24) >= v68)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v83 = v64;
              sub_10100B104();
              v64 = v83;
            }
          }

          else
          {
            sub_100FF2040(v68, isUniquelyReferenced_nonNull_native);
            v64 = sub_1000210EC(v102 + v60);
            if ((v69 & 1) != (v70 & 1))
            {
              goto LABEL_73;
            }
          }

          v104 = v106[0];
          if (v69)
          {
            *(*(v106[0] + 56) + 8 * v64) = a1;
          }

          else
          {
            (*v98)(v93, v102 + v60, v99);
            sub_101012DD4();
          }

          v72 = v92;
          v73 = static os_log_type_t.info.getter();
          if (qword_101694A20 != -1)
          {
            swift_once();
          }

          v74 = qword_10177B550;
          v55 = v102;
          sub_100721C9C(v102, v72, type metadata accessor for SharedBeaconRecord);
          if (os_log_type_enabled(v74, v73))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v106[0] = v76;
            *v75 = v97;
            *(v75 + 4) = 1752392040;
            *(v75 + 12) = 2081;
            v77 = v72;
            sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v78 = dispatch thunk of CustomStringConvertible.description.getter();
            v80 = v79;
            v4 = type metadata accessor for SharedBeaconRecord;
            v81 = v77;
            v55 = v102;
            sub_100721D04(v81, type metadata accessor for SharedBeaconRecord);
            v82 = sub_1000136BC(v78, v80, v106);

            *(v75 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v74, v73, "KeyMap reconciler for shared beacon %{private,mask.hash}s.", v75, 0x16u);
            sub_100007BAC(v76);
          }

          else
          {
            sub_100721D04(v72, type metadata accessor for SharedBeaconRecord);
          }

          sub_100721D04(v55, type metadata accessor for SharedBeaconRecord);
          v21 = v104;
          v58 = v100;
LABEL_39:
          v57 += v58;
          if (!--v8)
          {
            goto LABEL_69;
          }
        }
      }
    }

    v13 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v32 = v106[0];
    if (!(v106[0] >> 62))
    {
      goto LABEL_15;
    }

LABEL_21:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_16:
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v106[0] = v21;
    v35 = sub_1000210EC(v4 + v8);
    v37 = *(v21 + 16);
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      swift_once();
      continue;
    }

    break;
  }

  v41 = v36;
  if (*(v21 + 24) >= v40)
  {
    if ((v34 & 1) == 0)
    {
      v52 = v35;
      sub_10100B104();
      v35 = v52;
    }

    goto LABEL_25;
  }

  sub_100FF2040(v40, v34);
  v35 = sub_1000210EC(v4 + v8);
  if ((v41 & 1) == (v42 & 1))
  {
LABEL_25:
    v43 = v95;
    v21 = v106[0];
    if (v41)
    {
      *(*(v106[0] + 56) + 8 * v35) = v32;
    }

    else
    {
      (*v91)(v93, v4 + v8, v99);
      sub_101012DD4();
    }

    v44 = static os_log_type_t.info.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v45 = qword_10177B550;
    sub_100721C9C(v4, v43, type metadata accessor for OwnedBeaconRecord);
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v106[0] = v47;
      *v46 = v90;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v49;
      sub_100721D04(v43, type metadata accessor for OwnedBeaconRecord);
      v50 = sub_1000136BC(v48, v4, v106);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v45, v44, "KeyMap reconciler for owned beacon %{private,mask.hash}s.", v46, 0x16u);
      sub_100007BAC(v47);

      v51 = v104;
    }

    else
    {
      sub_100721D04(v43, type metadata accessor for OwnedBeaconRecord);
      v51 = v4;
    }

    sub_100721D04(v51, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

LABEL_73:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10070C7F8(uint64_t *a1, uint64_t a2)
{
  v3 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v4 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10138BBE0;
    v35 = *a1;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 64) = v9;
    *(v5 + 72) = 0xD00000000000001BLL;
    *(v5 + 80) = 0x800000010135D420;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "%@: %@", 6, 2, v5);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v10 = sub_101073D24(v35);

    v3 = swift_allocObject();
    v3[1] = xmmword_101385D80;
    *(v3 + 7) = sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    *(v3 + 8) = sub_1000041A4(&qword_1016A7870, &qword_101697EA0, &qword_10138EB60, &protocol conformance descriptor for [A]);
    *(v3 + 4) = v10;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);

    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Got categories - %@", 19, 2, &_mh_execute_header, v11, v12, v3);

    v13 = *(v10 + 16);
    if (!v13)
    {
      break;
    }

    specialized ContiguousArray.reserveCapacity(_:)();
    a1 = 0;
    v31 = v10;
    v32 = v10 + 32;
    v14 = &_s8SPShared19LocalizationUtilityO5TableO7defaultyA2EmFWC_ptr;
    v30 = v13;
    while (a1 < *(v10 + 16))
    {
      v18 = (v32 + 32 * a1);
      v34 = *v18;
      v19 = v18[3];
      v20 = *(v19 + 16);
      if (v20)
      {
        v33 = a1;

        specialized ContiguousArray.reserveCapacity(_:)();
        v21 = v19 + 64;
        do
        {
          v22 = *(v21 - 32);
          v21 += 40;
          v23 = v14;
          v24 = objc_allocWithZone(v14[57]);

          v25 = String._bridgeToObjectiveC()();

          v26 = String._bridgeToObjectiveC()();

          v27 = v24;
          v14 = v23;
          [v27 initWithRoleId:v22 role:v25 roleEmoji:v26];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v20;
        }

        while (v20);
        v13 = v30;
        v10 = v31;
        a1 = v33;
      }

      else
      {
      }

      a1 = (a1 + 1);
      v15 = objc_allocWithZone(SPBeaconRoleCategory);
      v16 = String._bridgeToObjectiveC()();

      sub_100008BB8(0, &qword_1016A7878, SPBeaconRole_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v3 = [v15 initWithCategoryId:v34 category:v16 roles:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (a1 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_13:

  sub_100008BB8(0, &qword_1016A7880, SPBeaconRoleCategory_ptr);
  v28 = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, v28);
}

void sub_10070CD88(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t a1))
{
  v87 = a1;
  v83 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v83);
  v84 = &v76 - v7;
  v82 = type metadata accessor for BeaconNamingRecord(0);
  v86 = *(v82 - 8);
  v8 = __chkstk_darwin(v82);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v9;
  __chkstk_darwin(v8);
  v85 = (&v76 - v10);
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v11 - 8);
  v13 = &v76 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  v94 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v16;
  __chkstk_darwin(v15);
  v89 = &v76 - v17;
  v95 = swift_allocObject();
  *(v95 + 16) = a4;
  v93 = a4;
  _Block_copy(a4);
  v18 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C370;
  v91 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  v76 = xmmword_10138BBE0;
  *(v20 + 16) = xmmword_10138BBE0;
  v96[0] = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v24;
  v25 = v24;
  *(v20 + 64) = v24;
  *(v20 + 72) = 0xD00000000000001FLL;
  *(v20 + 80) = 0x800000010135D350;
  v92 = v19;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "%@: %@", 6, 2, v20);

  v79 = a3;
  v26 = a3[35];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v90 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  (*(v28 + 16))(v30 + v29, a2, v27);
  v88 = v26;
  v31 = sub_100AA56A8(v30);
  swift_setDeallocating();
  (*(v28 + 8))(v30 + v29, v27);
  swift_deallocClassInstance();
  if (!v31[2])
  {

    v94[7](v13, 1, 1, v14);
    goto LABEL_9;
  }

  sub_10001F280((v31 + 4), v96);

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v32 = swift_dynamicCast();
  v33 = v94;
  v94[7](v13, v32 ^ 1u, 1, v14);
  if (v33[6](v13, 1, v14) == 1)
  {
LABEL_9:
    sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
    v40 = static os_log_type_t.error.getter();
    v41 = swift_allocObject();
    *(v41 + 16) = v90;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v25;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v92, "Beacon with the identifier not found - %@", 41, 2, v41);

    (*(v93 + 2))(v93, 0);
LABEL_17:

    return;
  }

  v34 = v89;
  sub_10002AB74(v13, v89, type metadata accessor for OwnedBeaconRecord);
  v35 = sub_1012BD7E8(v87);
  if (!v35)
  {
    v44 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v92, "Valid role not found.", 21, 2, _swiftEmptyArrayStorage);
    (*(v93 + 2))(v93, 0);
    goto LABEL_11;
  }

  v36 = v35;
  __chkstk_darwin(v35);
  *(&v76 - 2) = v37;
  *(&v76 - 1) = a2;
  v38 = v84;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if ((*(v86 + 48))(v38, 1, v82) == 1)
  {
    sub_10000B3A8(v38, &unk_1016B29E0, &unk_1013B70E0);
    v39 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v92, "Valid role not found.", 21, 2, _swiftEmptyArrayStorage);
    (*(v93 + 2))(v93, 0);

LABEL_11:
    v45 = type metadata accessor for OwnedBeaconRecord;
    v46 = v34;
LABEL_16:
    sub_100721D04(v46, v45);
    goto LABEL_17;
  }

  v83 = 0;
  v47 = v38;
  v48 = v85;
  sub_10002AB74(v47, v85, type metadata accessor for BeaconNamingRecord);
  v49 = swift_allocObject();
  *(v49 + 16) = v76;
  sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = v25;
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  v52 = [v36 roleId];
  *(v49 + 96) = &type metadata for Int;
  *(v49 + 104) = &protocol witness table for Int;
  *(v49 + 72) = v52;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v53 = static OS_os_log.default.getter();
  v54 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating beacon [%@] with role - %i", 35, 2, &_mh_execute_header, v53, v54, v49);

  v92 = swift_allocObject();
  *(v92 + 16) = v36;
  v55 = v34;
  v56 = v78;
  sub_100721C9C(v55, v78, type metadata accessor for OwnedBeaconRecord);
  v57 = (*(v94 + 80) + 40) & ~*(v94 + 80);
  v58 = swift_allocObject();
  v59 = v95;
  *(v58 + 2) = sub_1001BC2E0;
  *(v58 + 3) = v59;
  *(v58 + 4) = v79;
  sub_10002AB74(v56, v58 + v57, type metadata accessor for OwnedBeaconRecord);
  v87 = v36;

  v60 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v61 = qword_10177C380;
  v62 = swift_allocObject();
  *(v62 + 16) = v90;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v25;
  *(v62 + 32) = 0x65736C6166;
  *(v62 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v61, "Modify record. Disk First? (%@)", 31, 2, v62);

  v63 = objc_autoreleasePoolPush();
  v64 = v83;
  sub_101121DD0(v48);
  v94 = v65;
  if (!v64)
  {
    objc_autoreleasePoolPop(v63);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v93 = type metadata accessor for BeaconNamingRecord;
    v66 = v81;
    sub_100721C9C(v48, v81, type metadata accessor for BeaconNamingRecord);
    v67 = *(v86 + 80);
    v68 = v80;
    v69 = swift_allocObject();
    v70 = v92;
    *(v69 + 16) = sub_10071FC64;
    *(v69 + 24) = v70;
    sub_10002AB74(v66, v69 + ((v67 + 32) & ~v67), type metadata accessor for BeaconNamingRecord);

    sub_100FDCA40(v94, sub_100721F08, v69);

    v71 = swift_allocObject();
    *(v71 + 16) = sub_10071FCA8;
    *(v71 + 24) = v58;

    Future.addFailure(block:)();

    sub_100721C9C(v48, v66, v93);
    v72 = (v67 + 16) & ~v67;
    v73 = (v68 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    sub_10002AB74(v66, v74 + v72, type metadata accessor for BeaconNamingRecord);
    *(v74 + v73) = v88;
    v75 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v75 = sub_10071FCA8;
    v75[1] = v58;

    Future.addSuccess(block:)();

    sub_100721D04(v89, type metadata accessor for OwnedBeaconRecord);
    v45 = type metadata accessor for BeaconNamingRecord;
    v46 = v85;
    goto LABEL_16;
  }

  _Block_release(v93);
  objc_autoreleasePoolPop(v63);
  __break(1u);
}

uint64_t sub_10070DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v5);
  v7 = (v18 - v6);
  sub_1000D2A70(a1, v18 - v6, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v18[1] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "create BeaconNameRecord failed %@.", 34, 2, v11);

    (*(a3 + 16))(a3, 0);
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v17 = v16;
      swift_once();
      v16 = v17;
    }

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C380, "create BeaconNameRecord success.", 32, 2, _swiftEmptyArrayStorage);
    (*(a3 + 16))(a3, 1);
    sub_100A8306C(0xDu);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    PassthroughSubject.send(_:)();

    return sub_10000B3A8(v7, &qword_1016A7808, &qword_1013D6750);
  }
}

void sub_10070DDC0(void (*a1)(char *, uint64_t), void *a2, void *a3, const void *a4)
{
  v186 = a2;
  v190 = a1;
  v173 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v173);
  v174 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v7 = __chkstk_darwin(v182);
  v169 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v181 = (&v163 - v9);
  v183 = type metadata accessor for BeaconNamingRecord(0);
  v185 = *(v183 - 8);
  v10 = __chkstk_darwin(v183);
  v165 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v170 = &v163 - v13;
  v14 = __chkstk_darwin(v12);
  v175 = (&v163 - v15);
  __chkstk_darwin(v14);
  v184 = (&v163 - v16);
  v187 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v187);
  v19 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v163 - v20;
  v22 = type metadata accessor for UUID();
  v192 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v166 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v172 = &v163 - v26;
  v27 = __chkstk_darwin(v25);
  v168 = &v163 - v28;
  v29 = __chkstk_darwin(v27);
  v167 = &v163 - v30;
  v31 = __chkstk_darwin(v29);
  v180 = &v163 - v32;
  v33 = __chkstk_darwin(v31);
  v179 = &v163 - v34;
  v171 = v35;
  __chkstk_darwin(v33);
  v191 = &v163 - v36;
  v189 = swift_allocObject();
  *(v189 + 16) = a4;
  _Block_copy(a4);
  v188 = a4;
  _Block_copy(a4);
  v37 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C370;
  v177 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10138BBE0;
  v195 = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v40 = String.init<A>(describing:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  v43 = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v43;
  v178 = v43;
  *(v39 + 64) = v43;
  *(v39 + 72) = 0xD000000000000023;
  *(v39 + 80) = 0x800000010135D0A0;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "%@: %@", 6, 2, v39);

  v176 = a3;
  v44 = a3[35];
  sub_100030068();

  __chkstk_darwin(v45);
  v46 = v190;
  *(&v163 - 2) = v44;
  *(&v163 - 1) = v46;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1000D2AD8(v19, v21, &qword_1016980D0, &unk_10138F3B0);
  v47 = v192;
  v48 = *(v192 + 48);
  v49 = v22;
  if (v48(v21, 1, v22) == 1)
  {
    v50 = v191;
    (*(v47 + 16))(v191, v190, v49);
    if (v48(v21, 1, v49) != 1)
    {
      sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v50 = v191;
    (*(v47 + 32))(v191, v21, v49);
  }

  sub_100025020(v50, &v193);
  if (!v194)
  {
    sub_10000B3A8(&v193, &qword_101696920, &unk_10138B200);
    v61 = static os_log_type_t.error.getter();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_101385D80;
    v63 = UUID.uuidString.getter();
    v64 = v178;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = v64;
    *(v62 + 32) = v63;
    *(v62 + 40) = v65;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v66 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v66, "Beacon with the identifier not found - %@", 41, 2, v62);

    v67 = v188;
    (*(v188 + 2))(v188, 0);
    (*(v47 + 8))(v50, v49);
LABEL_39:

    v141 = v67;
    goto LABEL_40;
  }

  v51 = sub_10000A748(&v193, &v195);
  __chkstk_darwin(v51);
  *(&v163 - 2) = v44;
  *(&v163 - 1) = v50;
  v52 = v181;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v53 = v185 + 48;
  v54 = *(v185 + 48);
  v55 = v183;
  if (v54(v52, 1, v183) == 1)
  {
    sub_10000B3A8(v52, &unk_1016B29E0, &unk_1013B70E0);
    UUID.init()();
    (*(v192 + 16))(v180, v50, v49);
    v56 = v186;
    v190 = [v186 roleId];
    v57 = [v56 name];
    if (v57)
    {
      v58 = v57;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v60;
    }

    else
    {
      v187 = 0xE700000000000000;
      v59 = 0x4E574F4E4B4E55;
    }

    v106 = [v56 emoji];
    v107 = v49;
    if (v106)
    {
      v108 = v106;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;
    }

    else
    {
      v109 = 0;
      v111 = 0;
    }

    v112 = v175;
    *v175 = xmmword_10138C660;
    v113 = v192;
    v114 = *(v192 + 32);
    v114(v112 + v55[5], v179, v107);
    v114(v112 + v55[6], v180, v107);
    v49 = v107;
    *(v112 + v55[7]) = v190;
    v115 = (v112 + v55[8]);
    v116 = v187;
    v67 = v188;
    *v115 = v59;
    v115[1] = v116;
    v117 = (v112 + v55[9]);
    *v117 = v109;
    v117[1] = v111;
    v96 = v113;
    _Block_copy(v67);

    v118 = v176;

    sub_100B12498(v112, 0, v44, v118, v67);
    _Block_release(v67);

    v105 = v112;
    v50 = v191;
LABEL_27:
    sub_100721D04(v105, type metadata accessor for BeaconNamingRecord);
    sub_100007BAC(&v195);
    (*(v96 + 8))(v50, v49);
    goto LABEL_39;
  }

  sub_10002AB74(v52, v184, type metadata accessor for BeaconNamingRecord);
  v68 = v186;
  if (([v186 restoreDefaultName] & 1) == 0)
  {
    v84 = [v68 name];
    if (v84)
    {
      v85 = v84;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v90 = qword_10177C380;
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_101385D80;
      v92 = UUID.uuidString.getter();
      v93 = v178;
      *(v91 + 56) = &type metadata for String;
      *(v91 + 64) = v93;
      *(v91 + 32) = v92;
      *(v91 + 40) = v94;
      os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v90, "updating existing record id %@", 30, 2, v91);

      sub_10001F280(&v195, &v193);
      v95 = swift_allocObject();
      v95[2] = v186;
      v95[3] = v86;
      v95[4] = v88;
      sub_10000A748(&v193, (v95 + 5));
      v96 = v192;
      v97 = v172;
      (*(v192 + 16))(v172, v50, v49);
      v98 = (*(v96 + 80) + 24) & ~*(v96 + 80);
      v99 = (v171 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      *(v100 + 16) = v176;
      (*(v96 + 32))(v100 + v98, v97, v49);
      v101 = (v100 + v99);
      v102 = v189;
      *v101 = sub_100721F40;
      v101[1] = v102;

      v103 = v186;

      v104 = v184;
      sub_1006E90BC(v184, 1, sub_10071F4F0, v95, sub_10071F500, v100);

      v105 = v104;
      v67 = v188;
      goto LABEL_27;
    }

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    sub_1000076D4(v134, qword_10177BA08);
    v120 = v192;
    v121 = v166;
    (*(v192 + 16))(v166, v50, v49);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v193 = v125;
      *v124 = 141558275;
      *(v124 + 4) = 1752392040;
      *(v124 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v135 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v120;
      v138 = v137;
      v130 = v49;
      v131 = *(v136 + 8);
      v131(v121, v130);
      v139 = sub_1000136BC(v135, v138, &v193);

      *(v124 + 14) = v139;
      v133 = "Cannot set empty name for item. Beacon: %{private,mask.hash}s.";
      goto LABEL_36;
    }

LABEL_37:

    v130 = v49;
    v131 = *(v120 + 8);
    v131(v121, v130);
    goto LABEL_38;
  }

  sub_10001F280(&v195, &v193);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v69 = v174;
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_1000076D4(v119, qword_10177BA08);
    v120 = v192;
    v121 = v168;
    (*(v192 + 16))(v168, v50, v49);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v193 = v125;
      *v124 = 141558275;
      *(v124 + 4) = 1752392040;
      *(v124 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v120;
      v129 = v128;
      v130 = v49;
      v131 = *(v127 + 8);
      v131(v121, v130);
      v132 = sub_1000136BC(v126, v129, &v193);

      *(v124 + 14) = v132;
      v133 = "Cannot restore default name for owned item yet. Beacon: %{private,mask.hash}s.";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v122, v123, v133, v124, 0x16u);
      sub_100007BAC(v125);

LABEL_38:
      v67 = v188;
      v140 = v184;
      (*(v188 + 2))(v188, 0);
      sub_100721D04(v140, type metadata accessor for BeaconNamingRecord);
      sub_100007BAC(&v195);
      v131(v191, v130);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v185 = v53;
  sub_100721D04(v69, type metadata accessor for SharedBeaconRecord);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_1000076D4(v70, qword_10177BA08);
  v71 = v192;
  v72 = v167;
  v186 = *(v192 + 16);
  v187 = v192 + 16;
  (v186)(v167, v50, v49);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v164 = v49;
  if (v75)
  {
    v76 = swift_slowAlloc();
    LODWORD(v180) = v74;
    v77 = v72;
    v78 = v76;
    v181 = swift_slowAlloc();
    *&v193 = v181;
    *v78 = 141558275;
    *(v78 + 4) = 1752392040;
    *(v78 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v49;
    v82 = v81;
    v190 = *(v71 + 8);
    v190(v77, v80);
    v83 = sub_1000136BC(v79, v82, &v193);

    *(v78 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v73, v180, "Restoring default name for shared item Beacon: %{private,mask.hash}s.", v78, 0x16u);
    sub_100007BAC(v181);
  }

  else
  {

    v190 = *(v71 + 8);
    v190(v72, v49);
  }

  v142 = swift_allocObject();
  *(v142 + 16) = sub_100721F40;
  v143 = v189;
  *(v142 + 24) = v189;
  __chkstk_darwin(v143);
  v144 = v191;
  *(&v163 - 2) = v44;
  *(&v163 - 1) = v144;

  v145 = v169;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v146 = v54(v145, 1, v183);
  v147 = v170;
  if (v146 == 1)
  {
    sub_10000B3A8(v145, &unk_1016B29E0, &unk_1013B70E0);
    v148 = v188;
    (*(v188 + 2))(v188, 1);

    v149 = v164;
  }

  else
  {
    sub_10002AB74(v145, v170, type metadata accessor for BeaconNamingRecord);
    v150 = v144;
    v151 = v172;
    v149 = v164;
    (v186)(v172, v150, v164);
    v152 = v192;
    v153 = (*(v192 + 80) + 24) & ~*(v192 + 80);
    v154 = (v171 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
    v155 = swift_allocObject();
    *(v155 + 16) = v44;
    (*(v152 + 32))(v155 + v153, v151, v149);
    v156 = (v155 + v154);
    *v156 = sub_10071F5A4;
    v156[1] = v142;

    v157 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v158 = qword_10177C380;
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_101385D80;
    sub_100721C9C(v147, v165, type metadata accessor for BeaconNamingRecord);
    v160 = String.init<A>(describing:)();
    v161 = v178;
    *(v159 + 56) = &type metadata for String;
    *(v159 + 64) = v161;
    *(v159 + 32) = v160;
    *(v159 + 40) = v162;
    os_log(_:dso:log:_:_:)(v157, &_mh_execute_header, v158, "Attempting to remove: %@", 24, 2, v159);

    sub_100B1145C(v147, v44, sub_10071F5CC, v155);

    sub_100721D04(v147, type metadata accessor for BeaconNamingRecord);
    v148 = v188;
    v144 = v191;
  }

  sub_100721D04(v184, type metadata accessor for BeaconNamingRecord);
  sub_100007BAC(&v195);
  v190(v144, v149);

  v141 = v148;
LABEL_40:
  _Block_release(v141);
}

uint64_t sub_10070F468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000002BLL;
  *(v6 + 80) = 0x800000010135CFD0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%@: %@", 6, 2, v6);

  v11 = static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Could not update key roll interval - not implemented.", 53, 2, _swiftEmptyArrayStorage);

  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_10070F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v82 = a1;
  v83 = a6;
  v79 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v75 - v15;
  __chkstk_darwin(v14);
  v18 = v75 - v17;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000076D4(v19, qword_10177B7F8);

  v85 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v84 = a3;
  v76 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v80 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    *v25 = 136315394;
    v86 = *a5;
    v87 = v26;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000136BC(v27, v28, &v87);

    *(v25 + 4) = v29;
    a3 = v84;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1000136BC(0xD00000000000003ALL, 0x800000010135D060, &v87);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: %s", v25, 0x16u);
    swift_arrayDestroy();

    v9 = v80;
  }

  v80 = *(v10 + 16);
  v80(v18, a4, v9);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v81 = v10;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v78 = v13;
    v34 = v9;
    v35 = v33;
    v36 = swift_slowAlloc();
    v77 = a4;
    v37 = v36;
    v87 = v36;
    *v35 = 134219011;
    v75[1] = v10 + 16;
    v38 = v82;
    *(v35 + 4) = v82;
    *(v35 + 12) = 2048;
    *(v35 + 14) = v79;
    *(v35 + 22) = 2048;
    *(v35 + 24) = a3;
    *(v35 + 32) = 2160;
    *(v35 + 34) = 1752392040;
    *(v35 + 42) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v10 + 8);
    v42(v18, v34);
    v43 = sub_1000136BC(v39, v41, &v87);

    *(v35 + 44) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "setWildKeyBase called:\nbase: %lu,\ninterval: %lu,\nfallback: %lu\nbeaconUUID: %{private,mask.hash}s", v35, 0x34u);
    sub_100007BAC(v37);
    a4 = v77;

    v9 = v34;
    v13 = v78;

    if (v38)
    {
      goto LABEL_7;
    }

LABEL_10:
    v52 = v76;
    v80(v76, a4, v9);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v44 = v84;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v78 = v13;
      v57 = v9;
      v58 = v56;
      v59 = swift_slowAlloc();
      v77 = a4;
      v60 = v59;
      v87 = v59;
      *v58 = 141558787;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v82) = v54;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v42(v52, v57);
      v64 = sub_1000136BC(v61, v63, &v87);

      *(v58 + 14) = v64;
      *(v58 + 22) = 2048;
      *(v58 + 24) = 1;
      *(v58 + 32) = 2048;
      *(v58 + 34) = 0;
      _os_log_impl(&_mh_execute_header, v53, v82, "Ignoring setWildKeyBase update because wildIndexBase for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v58, 0x2Au);
      sub_100007BAC(v60);
      a4 = v77;

      v9 = v57;
      v13 = v78;

      if (!v44)
      {
LABEL_14:
        v80(v13, a4, v9);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v9;
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v87 = v69;
          *v68 = 141558787;
          *(v68 + 4) = 1752392040;
          *(v68 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v71;
          v42(v13, v67);
          v73 = sub_1000136BC(v70, v72, &v87);

          *(v68 + 14) = v73;
          *(v68 + 22) = 2048;
          *(v68 + 24) = 1;
          *(v68 + 32) = 2048;
          *(v68 + 34) = v44;
          _os_log_impl(&_mh_execute_header, v65, v66, "Ignoring setWildKeyBase update because wildIndexFallback for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v68, 0x2Au);
          sub_100007BAC(v69);
        }

        else
        {

          v42(v13, v9);
        }
      }
    }

    else
    {

      v42(v52, v9);
      if (!v44)
      {
        goto LABEL_14;
      }
    }

    v51 = 0;
    return (*(v83 + 16))(v83, v51);
  }

  v42 = *(v10 + 8);
  v42(v18, v9);
  if (!v82)
  {
    goto LABEL_10;
  }

LABEL_7:
  v44 = v84;
  if (!v84)
  {
    goto LABEL_14;
  }

  v45 = static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101385D80;
  v47 = UUID.uuidString.getter();
  v49 = v48;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_100008C00();
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v50 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v50, "Ignoring wild base update - %@", 30, 2, v46);

  v51 = 1;
  return (*(v83 + 16))(v83, v51);
}

void sub_10070FF28(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v70 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v65 = &v63 - v13;
  __chkstk_darwin(v12);
  v15 = &v63 - v14;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177B7F8);

  v69 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v68 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v67 = v15;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136315394;
    v71 = *a3;
    v72 = v23;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v24 = String.init<A>(describing:)();
    v26 = sub_1000136BC(v24, v25, &v72);

    *(v22 + 4) = v26;
    a1 = v68;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1000136BC(0xD00000000000002FLL, 0x800000010135CFA0, &v72);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: %s", v22, 0x16u);
    swift_arrayDestroy();

    v15 = v67;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v67 = a4;
    v27 = *(v8 + 16);
    v27(v15, v70, v7);
    v28 = Logger.logObject.getter();
    v29 = v15;
    v30 = static os_log_type_t.info.getter();
    v31 = os_log_type_enabled(v28, v30);
    v66 = v8;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v63 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      v64 = v11;
      v35 = v7;
      v36 = v34;
      v72 = v34;
      *v33 = 134218499;
      *(v33 + 4) = a1;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v8 + 8);
      v40(v29, v35);
      v41 = sub_1000136BC(v37, v39, &v72);
      a1 = v68;

      *(v33 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v28, v30, "setCurrentWildKeyIndex called: index: %llu, beaconUUID: %{private,mask.hash}s", v33, 0x20u);
      sub_100007BAC(v36);
      v7 = v35;
      v11 = v64;

      v27 = v63;

      if (!a1)
      {
LABEL_8:
        v42 = v40;
        v43 = v65;
        v27(v65, v70, v7);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = v7;
          v48 = swift_slowAlloc();
          v72 = v48;
          *v46 = 141558787;
          *(v46 + 4) = 1752392040;
          *(v46 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          v42(v43, v47);
          v52 = sub_1000136BC(v49, v51, &v72);

          *(v46 + 14) = v52;
          *(v46 + 22) = 2048;
          *(v46 + 24) = 1;
          *(v46 + 32) = 2048;
          *(v46 + 34) = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Ignoring setCurrentWildKeyindex update because wildIndexFallback for beacon %{private,mask.hash}s:\nexisting: %llu new: %llu", v46, 0x2Au);
          sub_100007BAC(v48);
        }

        else
        {

          v42(v43, v7);
        }

        v62 = v67;
        a1 = v68;
LABEL_17:
        (*(v62 + 2))(v62, a1 != 0);
        return;
      }
    }

    else
    {

      v40 = *(v8 + 8);
      v40(v29, v7);
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    v27(v11, v70, v7);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v7;
      v57 = swift_slowAlloc();
      v72 = v57;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v40(v11, v56);
      v61 = sub_1000136BC(v58, v60, &v72);
      a1 = v68;

      *(v55 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Ignoring update for wild key index for %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v57);
    }

    else
    {

      v40(v11, v7);
    }

    v62 = v67;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1007106F0(uint64_t a1, char *a2, char *a3, void (**a4)(const void *, void))
{
  v76 = a2;
  v80 = a1;
  v70 = type metadata accessor for UUID();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v6;
  v68 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v74 = v65 - v8;
  v9 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v9 - 8);
  v11 = v65 - v10;
  v72 = type metadata accessor for KeyAlignmentRecord(0);
  v12 = *(v72 - 8);
  __chkstk_darwin(v72);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = __chkstk_darwin(v14);
  v73 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[2] = v16;
  __chkstk_darwin(v15);
  v18 = v65 - v17;
  v77 = swift_allocObject();
  *(v77 + 16) = a4;
  v66 = a4;
  _Block_copy(a4);
  LODWORD(v71) = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C370;
  v65[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  v83[0] = *a3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v21 = a3;
  v22 = String.init<A>(describing:)();
  v24 = v23;
  *(v20 + 56) = &type metadata for String;
  v25 = sub_100008C00();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v26 = v21;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v25;
  *(v20 + 64) = v25;
  *(v20 + 72) = 0xD000000000000029;
  *(v20 + 80) = 0x800000010135CE10;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v19, "%@: %@", 6, 2, v20);

  static Date.trustedNow.getter(v18);
  v27 = *(v21 + 35);
  v28 = v80;
  sub_100B2DA4C(v11);
  if ((*(v12 + 48))(v11, 1, v72) == 1)
  {
    sub_10000B3A8(v11, &qword_10169F328, &unk_1013CB040);
    v29 = static os_log_type_t.error.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v31 = UUID.uuidString.getter();
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v25;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v33 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v33, "KeySyncRecord with the identifier not found - %@", 48, 2, v30);

    v66[2](v66, 0);
    (*(v78 + 8))(v18, v79);
  }

  else
  {
    v34 = v75;
    sub_10002AB74(v11, v75, type metadata accessor for KeyAlignmentRecord);
    v35 = type metadata accessor for Transaction();
    __chkstk_darwin(v35);
    v65[-4] = v26;
    v65[-3] = v34;
    v65[-2] = v76;
    v71 = v36;
    static Transaction.named<A>(_:with:)();
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v74, 1, 1, v37);
    v38 = v69;
    v39 = *(v69 + 16);
    v72 = v27;
    v40 = v68;
    v41 = v18;
    v65[0] = v18;
    v42 = v70;
    v39(v68, v28, v70);
    v43 = v78;
    v44 = v41;
    v45 = v79;
    (*(v78 + 16))(v73, v44, v79);
    v46 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v47 = (v67 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    *(v49 + 2) = 0;
    *(v49 + 3) = 0;
    v50 = v77;
    *(v49 + 4) = sub_1002FB454;
    *(v49 + 5) = v50;
    v51 = v40;
    v52 = v72;
    (*(v38 + 32))(&v49[v46], v51, v42);
    v53 = v76;
    *&v49[v47] = v76;
    v54 = v53;
    v55 = &v49[v48];
    v56 = v45;
    (*(v43 + 32))(v55, v73, v45);

    v57 = v52;
    sub_10025EDD4(0, 0, v74, &unk_1013B67F0, v49);

    sub_100025020(v80, &v81);
    if (v82)
    {
      sub_10000A748(&v81, v83);
      v58 = v84;
      v59 = v85;
      v60 = sub_1000035D0(v83, v84);
      v61 = sub_100B005BC(v60, v57, v58, v59);
      v62 = swift_allocObject();
      *(v62 + 16) = v54;
      *(v62 + 24) = v61;
      v63 = v61;
      static Transaction.asyncTask(name:block:)();

      (*(v43 + 8))(v65[0], v56);
      sub_100007BAC(v83);
    }

    else
    {
      (*(v43 + 8))(v65[0], v56);
      sub_10000B3A8(&v81, &qword_101696920, &unk_10138B200);
    }

    sub_100721D04(v75, type metadata accessor for KeyAlignmentRecord);
  }
}

uint64_t sub_100710F8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v260 = a4;
  v257 = a1;
  v313 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v9 = __chkstk_darwin(v313);
  v285 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v287 = &v256 - v12;
  v13 = __chkstk_darwin(v11);
  v265 = &v256 - v14;
  __chkstk_darwin(v13);
  v267 = &v256 - v15;
  v16 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v17 = __chkstk_darwin(v16 - 8);
  v284 = &v256 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v286 = &v256 - v20;
  v21 = __chkstk_darwin(v19);
  v264 = &v256 - v22;
  __chkstk_darwin(v21);
  v274 = &v256 - v23;
  v312 = type metadata accessor for UUID();
  v24 = *(v312 - 8);
  v25 = __chkstk_darwin(v312);
  v296 = &v256 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v306 = &v256 - v28;
  v29 = __chkstk_darwin(v27);
  v273 = &v256 - v30;
  __chkstk_darwin(v29);
  v276 = &v256 - v31;
  v32 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v33 = __chkstk_darwin(v32 - 8);
  v283 = &v256 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v256 - v36;
  v38 = __chkstk_darwin(v35);
  v263 = &v256 - v39;
  __chkstk_darwin(v38);
  v272 = &v256 - v40;
  v309 = type metadata accessor for Date();
  v41 = __chkstk_darwin(v309);
  v281 = &v256 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v280 = &v256 - v44;
  v45 = __chkstk_darwin(v43);
  v282 = &v256 - v46;
  v47 = __chkstk_darwin(v45);
  v295 = &v256 - v48;
  v49 = __chkstk_darwin(v47);
  v259 = &v256 - v50;
  v51 = __chkstk_darwin(v49);
  v258 = &v256 - v52;
  v53 = __chkstk_darwin(v51);
  v262 = &v256 - v54;
  __chkstk_darwin(v53);
  v271 = &v256 - v56;
  v275 = a3;
  v57 = a3[1];
  v278 = a5;
  if (v57 < 1)
  {
    swift_retain_n();
    v59 = _swiftEmptyArrayStorage;
LABEL_126:
    v314 = *v257;
    if (!v314)
    {
      goto LABEL_166;
    }

    v245 = v59;
    swift_retain_n();
    a5 = v245;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_160;
    }

    v246 = v245;
LABEL_129:
    v321 = v246;
    v247 = *(v246 + 2);
    if (v247 >= 2)
    {
      do
      {
        v248 = *v275;
        if (!*v275)
        {
          goto LABEL_164;
        }

        v249 = *&v246[16 * v247];
        a5 = v246;
        v250 = *&v246[16 * v247 + 24];
        v251 = (v248 + 40 * v249);
        v252 = (v248 + 40 * *&v246[16 * v247 + 16]);
        v253 = v248 + 40 * v250;
        v254 = v278;

        sub_1006EA730(v251, v252, v253, v314, v254);
        if (v6)
        {
          break;
        }

        if (v250 < v249)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a5 = sub_100B31E68(a5);
        }

        if (v247 - 2 >= *(a5 + 16))
        {
          goto LABEL_154;
        }

        v255 = (a5 + 16 * v247);
        *v255 = v249;
        v255[1] = v250;
        v321 = a5;
        sub_100B31DDC(v247 - 1);
        v246 = v321;
        v247 = *(v321 + 16);
      }

      while (v247 > 1);
    }
  }

  v310 = (v24 + 8);
  v307 = (v55 + 32);
  v308 = (v55 + 16);
  v288 = (v55 + 8);
  swift_retain_n();
  v58 = 0;
  v59 = _swiftEmptyArrayStorage;
  v60 = &qword_10169DBE0;
  v289 = v37;
  while (1)
  {
    v266 = v59;
    v261 = v58;
    if (v58 + 1 >= v57)
    {
      v67 = v58 + 1;
      v117 = v260;
    }

    else
    {
      v277 = v57;
      v61 = *v275;
      sub_10001F280(*v275 + 40 * (v58 + 1), &v318);
      sub_10001F280(v61 + 40 * v58, &v315);
      LODWORD(v293) = sub_1006CD3D4(&v318, &v315, v278);
      if (v6)
      {
        sub_100007BAC(&v315);
        sub_100007BAC(&v318);
      }

      v314 = 0;
      sub_100007BAC(&v315);
      sub_100007BAC(&v318);
      v62 = v58 + 2;
      v279 = 40 * v58;
      a5 = v61 + 40 * v58 + 80;
      v63 = v267;
      while (1)
      {
        v67 = v277;
        if (v277 == v62)
        {
          break;
        }

        v305 = v62;
        sub_10001F280(a5, &v318);
        v304 = a5;
        sub_10001F280(a5 - 40, &v315);
        v68 = *(v278 + 280);
        v70 = v319;
        v69 = v320;
        sub_1000035D0(&v318, v319);
        v71 = v276;
        (*(*(*(v69 + 8) + 8) + 32))(v70);
        v72._object = (v311 | 0x8000000000000000);
        v72._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v72);
        v302 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
        __chkstk_darwin(v73);
        v303 = v68;
        *(&v256 - 2) = v68;
        *(&v256 - 1) = v71;
        v74 = v314;
        OS_dispatch_queue.sync<A>(execute:)();
        v314 = v74;
        v75 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
        v76 = *(v75 - 8);
        v301 = *(v76 + 48);
        v300 = (v76 + 48);
        if (v301(v63, 1, v75) == 1)
        {
          sub_10000B3A8(v63, &qword_101699848, &unk_1013D6610);
          v77 = sub_1000BC4D4(v60, &unk_1013BD7D0);
          v78 = v274;
          (*(*(v77 - 8) + 56))(v274, 1, 1, v77);
        }

        else
        {
          v79 = *(v63 + *(v75 + 48));
          v80 = sub_1000BC4D4(v60, &unk_1013BD7D0);
          v81 = *(v80 + 48);
          v78 = v274;
          sub_10002AB74(v63, v274, type metadata accessor for BeaconStatus);
          *(v78 + v81) = v79;
          (*(*(v80 - 8) + 56))(v78, 0, 1, v80);
        }

        v82 = v272;
        v299 = *v310;
        v299(v276, v312);
        v83 = sub_1000BC4D4(v60, &unk_1013BD7D0);
        v84 = *(v83 - 8);
        v298 = *(v84 + 48);
        if (v298(v78, 1, v83) == 1)
        {
          sub_10000B3A8(v78, &qword_10169DBD0, &unk_1013D6790);
          v85 = 1;
        }

        else
        {
          sub_10002AB74(v78, v82, type metadata accessor for BeaconStatus);
          v85 = 0;
        }

        v86 = type metadata accessor for BeaconStatus(0);
        v87 = *(v86 - 8);
        v88 = v87;
        v297 = *(v87 + 56);
        v294 = v87 + 56;
        (v297)(v82, v85, 1, v86);
        v89 = *(v88 + 48);
        if (v89(v82, 1, v86) == 1)
        {
          sub_10000B3A8(v82, &qword_10169DBD8, &qword_1013BF910);
          v64 = 0;
          v37 = v289;
          v60 = &qword_10169DBE0;
        }

        else
        {
          v292 = v89;
          v90 = v309;
          v91 = v82 + *(v86 + 24);
          v92 = v262;
          v291 = *v308;
          v291(v262, v91, v309);
          sub_100721D04(v82, type metadata accessor for BeaconStatus);
          v290 = *v307;
          v290(v271, v92, v90);
          v94 = v316;
          v93 = v317;
          sub_1000035D0(&v315, v316);
          v95 = v273;
          (*(*(*(v93 + 8) + 8) + 32))(v94);
          v96._object = (v311 | 0x8000000000000000);
          v96._countAndFlagsBits = 0xD000000000000015;
          prohibitAsyncContext(functionName:)(v96);
          __chkstk_darwin(v97);
          *(&v256 - 2) = v98;
          *(&v256 - 1) = v95;
          v99 = v265;
          v100 = v314;
          OS_dispatch_queue.sync<A>(execute:)();
          v314 = v100;
          if (v301(v99, 1, v75) == 1)
          {
            sub_10000B3A8(v99, &qword_101699848, &unk_1013D6610);
            v101 = 1;
            v102 = v264;
          }

          else
          {
            v103 = *(v99 + *(v75 + 48));
            v104 = *(v83 + 48);
            v105 = v264;
            sub_10002AB74(v99, v264, type metadata accessor for BeaconStatus);
            v101 = 0;
            *(v105 + v104) = v103;
            v102 = v105;
          }

          v106 = v299;
          v107 = v298;
          (*(v84 + 56))(v102, v101, 1, v83);
          v106(v273, v312);
          v108 = v107(v102, 1, v83);
          v63 = v267;
          if (v108 == 1)
          {
            sub_10000B3A8(v102, &qword_10169DBD0, &unk_1013D6790);
            v109 = 1;
            v37 = v289;
            v110 = v263;
          }

          else
          {
            v111 = v102;
            v110 = v263;
            sub_10002AB74(v111, v263, type metadata accessor for BeaconStatus);
            v109 = 0;
            v37 = v289;
          }

          v60 = &qword_10169DBE0;
          (v297)(v110, v109, 1, v86);
          if (v292(v110, 1, v86) == 1)
          {
            (*v288)(v271, v309);
            sub_10000B3A8(v110, &qword_10169DBD8, &qword_1013BF910);
            v64 = 0;
          }

          else
          {
            v112 = v259;
            v113 = v309;
            v291(v259, v110 + *(v86 + 24), v309);
            sub_100721D04(v110, type metadata accessor for BeaconStatus);
            v114 = v258;
            v290(v258, v112, v113);
            v115 = v271;
            v64 = static Date.> infix(_:_:)();
            v116 = *v288;
            (*v288)(v114, v113);
            v116(v115, v113);
          }
        }

        v65 = v304;
        v66 = v305;
        sub_100007BAC(&v315);
        sub_100007BAC(&v318);
        v62 = v66 + 1;
        a5 = v65 + 40;
        if ((v293 & 1) != (v64 & 1))
        {
          v67 = v62 - 1;
          break;
        }
      }

      v6 = v314;
      v117 = v260;
      if (v293)
      {
        v118 = v261;
        if (v67 < v261)
        {
          goto LABEL_159;
        }

        if (v261 < v67)
        {
          a5 = 40 * v67 - 40;
          v119 = v67;
          v120 = v279;
          do
          {
            if (v118 != --v119)
            {
              v121 = v120;
              v314 = v6;
              v122 = *v275;
              if (!*v275)
              {
                goto LABEL_163;
              }

              v123 = v60;
              v124 = v67;
              v279 = v121;
              v125 = v122 + v121;
              v126 = v122 + a5;
              sub_10000A748((v122 + v121), &v318);
              v127 = *(v126 + 32);
              v128 = *(v126 + 16);
              *v125 = *v126;
              *(v125 + 16) = v128;
              *(v125 + 32) = v127;
              sub_10000A748(&v318, v126);
              v120 = v279;
              v117 = v260;
              v67 = v124;
              v60 = v123;
              v6 = v314;
            }

            ++v118;
            a5 -= 40;
            v120 += 40;
          }

          while (v118 < v119);
        }
      }
    }

    v129 = v275[1];
    if (v67 < v129)
    {
      if (__OFSUB__(v67, v261))
      {
        goto LABEL_156;
      }

      if (v67 - v261 < v117)
      {
        if (__OFADD__(v261, v117))
        {
          goto LABEL_157;
        }

        if (v261 + v117 >= v129)
        {
          a5 = v275[1];
        }

        else
        {
          a5 = v261 + v117;
        }

        if (a5 < v261)
        {
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          v246 = sub_100B31E68(a5);
          goto LABEL_129;
        }

        if (v67 != a5)
        {
          break;
        }
      }
    }

    a5 = v67;
LABEL_46:
    if (a5 < v261)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v268 = a5;
    if (isUniquelyReferenced_nonNull_native)
    {
      v59 = v266;
    }

    else
    {
      v59 = sub_100A5B430(0, *(v266 + 2) + 1, 1, v266);
    }

    a5 = *(v59 + 2);
    v131 = *(v59 + 3);
    v132 = a5 + 1;
    v133 = v261;
    if (a5 >= v131 >> 1)
    {
      v59 = sub_100A5B430((v131 > 1), a5 + 1, 1, v59);
      v133 = v261;
    }

    *(v59 + 2) = v132;
    v134 = &v59[16 * a5];
    *(v134 + 4) = v133;
    *(v134 + 5) = v268;
    v314 = *v257;
    if (!v314)
    {
      goto LABEL_165;
    }

    if (a5)
    {
      while (1)
      {
        v135 = v132 - 1;
        if (v132 >= 4)
        {
          break;
        }

        if (v132 == 3)
        {
          v136 = *(v59 + 4);
          v137 = *(v59 + 5);
          v146 = __OFSUB__(v137, v136);
          v138 = v137 - v136;
          v139 = v146;
LABEL_66:
          if (v139)
          {
            goto LABEL_144;
          }

          v152 = &v59[16 * v132];
          v154 = *v152;
          v153 = *(v152 + 1);
          v155 = __OFSUB__(v153, v154);
          v156 = v153 - v154;
          v157 = v155;
          if (v155)
          {
            goto LABEL_147;
          }

          v158 = &v59[16 * v135 + 32];
          v160 = *v158;
          v159 = *(v158 + 1);
          v146 = __OFSUB__(v159, v160);
          v161 = v159 - v160;
          if (v146)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v156, v161))
          {
            goto LABEL_151;
          }

          if (v156 + v161 >= v138)
          {
            if (v138 < v161)
            {
              v135 = v132 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v162 = &v59[16 * v132];
        v164 = *v162;
        v163 = *(v162 + 1);
        v146 = __OFSUB__(v163, v164);
        v156 = v163 - v164;
        v157 = v146;
LABEL_80:
        if (v157)
        {
          goto LABEL_146;
        }

        v165 = &v59[16 * v135];
        v167 = *(v165 + 4);
        v166 = *(v165 + 5);
        v146 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v146)
        {
          goto LABEL_149;
        }

        if (v168 < v156)
        {
          goto LABEL_3;
        }

LABEL_87:
        a5 = v135 - 1;
        if (v135 - 1 >= v132)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v173 = *v275;
        if (!*v275)
        {
          goto LABEL_162;
        }

        v174 = v59;
        v175 = *&v59[16 * a5 + 32];
        v176 = *&v59[16 * v135 + 40];
        v177 = (v173 + 40 * v175);
        v178 = (v173 + 40 * *&v59[16 * v135 + 32]);
        v179 = v173 + 40 * v176;
        v180 = v278;

        sub_1006EA730(v177, v178, v179, v314, v180);
        if (v6)
        {
        }

        if (v176 < v175)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = sub_100B31E68(v174);
        }

        v60 = &qword_10169DBE0;
        if (a5 >= *(v174 + 2))
        {
          goto LABEL_141;
        }

        v181 = &v174[16 * a5];
        *(v181 + 4) = v175;
        *(v181 + 5) = v176;
        v321 = v174;
        sub_100B31DDC(v135);
        v59 = v321;
        v132 = *(v321 + 16);
        v37 = v289;
        if (v132 <= 1)
        {
          goto LABEL_3;
        }
      }

      v140 = &v59[16 * v132 + 32];
      v141 = *(v140 - 64);
      v142 = *(v140 - 56);
      v146 = __OFSUB__(v142, v141);
      v143 = v142 - v141;
      if (v146)
      {
        goto LABEL_142;
      }

      v145 = *(v140 - 48);
      v144 = *(v140 - 40);
      v146 = __OFSUB__(v144, v145);
      v138 = v144 - v145;
      v139 = v146;
      if (v146)
      {
        goto LABEL_143;
      }

      v147 = &v59[16 * v132];
      v149 = *v147;
      v148 = *(v147 + 1);
      v146 = __OFSUB__(v148, v149);
      v150 = v148 - v149;
      if (v146)
      {
        goto LABEL_145;
      }

      v146 = __OFADD__(v138, v150);
      v151 = v138 + v150;
      if (v146)
      {
        goto LABEL_148;
      }

      if (v151 >= v143)
      {
        v169 = &v59[16 * v135 + 32];
        v171 = *v169;
        v170 = *(v169 + 1);
        v146 = __OFSUB__(v170, v171);
        v172 = v170 - v171;
        if (v146)
        {
          goto LABEL_152;
        }

        if (v138 < v172)
        {
          v135 = v132 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v57 = v275[1];
    v58 = v268;
    if (v268 >= v57)
    {
      goto LABEL_126;
    }
  }

  v182 = *v275;
  v183 = *(v278 + 280);
  v304 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
  v305 = v183;
  v279 = v182;
  v184 = v182 + 40 * v67;
  v185 = v261 - v67;
  v268 = a5;
LABEL_100:
  v277 = v67;
  v269 = v185;
  v187 = v185;
  v270 = v184;
  while (1)
  {
    v294 = v187;
    sub_10001F280(v184, &v318);
    v293 = v184;
    v292 = (v184 - 40);
    sub_10001F280(v184 - 40, &v315);
    v189 = v319;
    v188 = v320;
    sub_1000035D0(&v318, v319);
    v190 = v306;
    (*(*(*(v188 + 8) + 8) + 32))(v189);
    v191._object = (v311 | 0x8000000000000000);
    v191._countAndFlagsBits = 0xD000000000000015;
    prohibitAsyncContext(functionName:)(v191);
    __chkstk_darwin(v192);
    *(&v256 - 2) = v193;
    *(&v256 - 1) = v190;
    v194 = v287;
    OS_dispatch_queue.sync<A>(execute:)();
    v195 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
    v196 = *(v195 - 8);
    v302 = *(v196 + 48);
    v301 = (v196 + 48);
    v197 = v302(v194, 1, v195);
    v303 = v195;
    if (v197 == 1)
    {
      sub_10000B3A8(v194, &qword_101699848, &unk_1013D6610);
      v198 = sub_1000BC4D4(v60, &unk_1013BD7D0);
      v199 = v286;
      (*(*(v198 - 8) + 56))(v286, 1, 1, v198);
    }

    else
    {
      v200 = *(v194 + *(v195 + 48));
      v201 = sub_1000BC4D4(v60, &unk_1013BD7D0);
      v202 = v194;
      v203 = *(v201 + 48);
      v199 = v286;
      sub_10002AB74(v202, v286, type metadata accessor for BeaconStatus);
      *(v199 + v203) = v200;
      (*(*(v201 - 8) + 56))(v199, 0, 1, v201);
    }

    v300 = *v310;
    v300(v306, v312);
    v204 = sub_1000BC4D4(v60, &unk_1013BD7D0);
    v297 = *(v204 - 8);
    v205 = *(v297 + 48);
    v299 = (v297 + 48);
    v298 = v205;
    v206 = v205(v199, 1, v204);
    v314 = v6;
    if (v206 == 1)
    {
      sub_10000B3A8(v199, &qword_10169DBD0, &unk_1013D6790);
      v207 = 1;
    }

    else
    {
      sub_10002AB74(v199, v37, type metadata accessor for BeaconStatus);
      v207 = 0;
    }

    v208 = type metadata accessor for BeaconStatus(0);
    v209 = *(v208 - 8);
    v210 = *(v209 + 56);
    v210(v37, v207, 1, v208);
    v211 = *(v209 + 48);
    if (v211(v37, 1, v208) == 1)
    {
      v186 = v37;
LABEL_98:
      v6 = v314;
      sub_10000B3A8(v186, &qword_10169DBD8, &qword_1013BF910);
      sub_100007BAC(&v315);
      sub_100007BAC(&v318);
LABEL_99:
      v67 = v277 + 1;
      v184 = v270 + 40;
      v185 = v269 - 1;
      a5 = v268;
      if (v277 + 1 == v268)
      {
        goto LABEL_46;
      }

      goto LABEL_100;
    }

    v212 = v309;
    v213 = &v37[*(v208 + 24)];
    v214 = v282;
    v291 = *v308;
    v291(v282, v213, v309);
    sub_100721D04(v37, type metadata accessor for BeaconStatus);
    v290 = *v307;
    v290(v295, v214, v212);
    v216 = v316;
    v215 = v317;
    sub_1000035D0(&v315, v316);
    v217 = v296;
    (*(*(*(v215 + 8) + 8) + 32))(v216);
    v218._object = (v311 | 0x8000000000000000);
    v218._countAndFlagsBits = 0xD000000000000015;
    prohibitAsyncContext(functionName:)(v218);
    __chkstk_darwin(v219);
    *(&v256 - 2) = v220;
    *(&v256 - 1) = v217;
    v221 = v285;
    v222 = v314;
    OS_dispatch_queue.sync<A>(execute:)();
    v314 = v222;
    v223 = v303;
    if (v302(v221, 1, v303) == 1)
    {
      sub_10000B3A8(v221, &qword_101699848, &unk_1013D6610);
      v224 = 1;
      v225 = v284;
    }

    else
    {
      v226 = *(v221 + *(v223 + 48));
      v227 = *(v204 + 48);
      v228 = v221;
      v229 = v284;
      sub_10002AB74(v228, v284, type metadata accessor for BeaconStatus);
      v224 = 0;
      *(v229 + v227) = v226;
      v225 = v229;
    }

    (*(v297 + 56))(v225, v224, 1, v204);
    v300(v296, v312);
    v230 = v298(v225, 1, v204);
    v37 = v289;
    v60 = &qword_10169DBE0;
    if (v230 == 1)
    {
      sub_10000B3A8(v225, &qword_10169DBD0, &unk_1013D6790);
      v231 = 1;
      v232 = v283;
    }

    else
    {
      v233 = v225;
      v232 = v283;
      sub_10002AB74(v233, v283, type metadata accessor for BeaconStatus);
      v231 = 0;
    }

    v210(v232, v231, 1, v208);
    if (v211(v232, 1, v208) == 1)
    {
      (*v288)(v295, v309);
      v186 = v232;
      goto LABEL_98;
    }

    v234 = v281;
    v235 = v309;
    v291(v281, v232 + *(v208 + 24), v309);
    sub_100721D04(v232, type metadata accessor for BeaconStatus);
    v236 = v280;
    v290(v280, v234, v235);
    v237 = v295;
    v238 = static Date.> infix(_:_:)();
    v239 = *v288;
    (*v288)(v236, v235);
    v239(v237, v235);
    sub_100007BAC(&v315);
    sub_100007BAC(&v318);
    v6 = v314;
    if ((v238 & 1) == 0)
    {
      goto LABEL_99;
    }

    v240 = v294;
    if (!v279)
    {
      break;
    }

    v241 = v293;
    sub_10000A748(v293, &v318);
    v184 = v292;
    v242 = *(v292 + 1);
    *v241 = *v292;
    v241[1] = v242;
    *(v241 + 4) = *(v184 + 32);
    sub_10000A748(&v318, v184);
    v243 = __CFADD__(v240, 1);
    v187 = v240 + 1;
    if (v243)
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_162:

  __break(1u);
LABEL_163:

  __break(1u);
LABEL_164:

  __break(1u);
LABEL_165:

  __break(1u);
LABEL_166:

  __break(1u);
  return result;
}

uint64_t sub_100712D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v141 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v12 = __chkstk_darwin(v141);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v94 - v14;
  v16 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v17 = __chkstk_darwin(v16 - 8);
  v105 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v94 - v19;
  v134 = type metadata accessor for UUID();
  v20 = *(v134 - 8);
  v21 = __chkstk_darwin(v134);
  v121 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v94 - v23;
  v24 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v25 = __chkstk_darwin(v24 - 8);
  v104 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v110 = &v94 - v27;
  v120 = type metadata accessor for Date();
  v28 = __chkstk_darwin(v120);
  v101 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v100 = &v94 - v31;
  v32 = __chkstk_darwin(v30);
  v103 = &v94 - v33;
  result = __chkstk_darwin(v32);
  v119 = &v94 - v36;
  v95 = a2;
  if (a3 != a2)
  {
    v37 = *a4;
    v132 = *(a5 + 280);
    v131 = (v20 + 8);
    v117 = (v35 + 16);
    v130 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
    v116 = (v35 + 32);
    v102 = (v35 + 8);
    v99 = v37;
    v38 = v37 + 40 * a3;
    v39 = a1 - a3;
    v108 = v15;
    v40 = v107;
    while (2)
    {
      v98 = a3;
      v96 = v39;
      v42 = v39;
      v97 = v38;
      v43 = v110;
      while (1)
      {
        v115 = v42;
        sub_10001F280(v38, &v138);
        v114 = v38;
        v113 = (v38 - 40);
        sub_10001F280(v38 - 40, &v135);
        v44 = v139;
        v45 = v140;
        sub_1000035D0(&v138, v139);
        (*(*(*(v45 + 8) + 8) + 32))(v44);
        v46._object = (v133 | 0x8000000000000000);
        v46._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v46);
        __chkstk_darwin(v47);
        *(&v94 - 2) = v48;
        *(&v94 - 1) = v40;
        v49 = v6;
        OS_dispatch_queue.sync<A>(execute:)();
        v50 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
        v51 = *(v50 - 8);
        v52 = *(v51 + 48);
        v127 = v51 + 48;
        v128 = v52;
        v53 = v52(v15, 1, v50);
        v129 = v50;
        if (v53 == 1)
        {
          sub_10000B3A8(v15, &qword_101699848, &unk_1013D6610);
          v54 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
          v55 = v109;
          (*(*(v54 - 8) + 56))(v109, 1, 1, v54);
        }

        else
        {
          v56 = v15[*(v50 + 48)];
          v57 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
          v58 = *(v57 + 48);
          v55 = v109;
          sub_10002AB74(v15, v109, type metadata accessor for BeaconStatus);
          *(v55 + v58) = v56;
          v43 = v110;
          (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
        }

        v126 = *v131;
        v126(v40, v134);
        v59 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
        v123 = *(v59 - 8);
        v124 = *(v123 + 48);
        v125 = v123 + 48;
        if (v124(v55, 1, v59) == 1)
        {
          sub_10000B3A8(v55, &qword_10169DBD0, &unk_1013D6790);
          v60 = 1;
        }

        else
        {
          sub_10002AB74(v55, v43, type metadata accessor for BeaconStatus);
          v60 = 0;
        }

        v61 = type metadata accessor for BeaconStatus(0);
        v62 = *(v61 - 8);
        v122 = *(v62 + 56);
        v122(v43, v60, 1, v61);
        v63 = *(v62 + 48);
        if (v63(v43, 1, v61) == 1)
        {
          v41 = v43;
          goto LABEL_5;
        }

        v64 = v43 + *(v61 + 24);
        v65 = v103;
        v66 = v120;
        v112 = *v117;
        v112(v103, v64, v120);
        sub_100721D04(v43, type metadata accessor for BeaconStatus);
        v111 = *v116;
        v111(v119, v65, v66);
        v68 = v136;
        v67 = v137;
        sub_1000035D0(&v135, v136);
        v69 = v121;
        (*(*(*(v67 + 8) + 8) + 32))(v68);
        v70._object = (v133 | 0x8000000000000000);
        v70._countAndFlagsBits = 0xD000000000000015;
        prohibitAsyncContext(functionName:)(v70);
        __chkstk_darwin(v71);
        *(&v94 - 2) = v72;
        *(&v94 - 1) = v69;
        v73 = v106;
        OS_dispatch_queue.sync<A>(execute:)();
        v118 = v49;
        v74 = v129;
        if (v128(v73, 1, v129) == 1)
        {
          sub_10000B3A8(v73, &qword_101699848, &unk_1013D6610);
          v75 = 1;
          v76 = v105;
        }

        else
        {
          v77 = *(v73 + *(v74 + 48));
          v78 = *(v59 + 48);
          v79 = v73;
          v80 = v105;
          sub_10002AB74(v79, v105, type metadata accessor for BeaconStatus);
          v75 = 0;
          *(v80 + v78) = v77;
          v76 = v80;
        }

        (*(v123 + 56))(v76, v75, 1, v59);
        v126(v121, v134);
        v81 = v124(v76, 1, v59);
        v6 = v118;
        v40 = v107;
        v43 = v110;
        if (v81 == 1)
        {
          sub_10000B3A8(v76, &qword_10169DBD0, &unk_1013D6790);
          v82 = 1;
          v83 = v104;
        }

        else
        {
          v84 = v76;
          v83 = v104;
          sub_10002AB74(v84, v104, type metadata accessor for BeaconStatus);
          v82 = 0;
        }

        v122(v83, v82, 1, v61);
        if (v63(v83, 1, v61) == 1)
        {
          break;
        }

        v85 = v101;
        v86 = v120;
        v112(v101, v83 + *(v61 + 24), v120);
        sub_100721D04(v83, type metadata accessor for BeaconStatus);
        v87 = v100;
        v111(v100, v85, v86);
        v88 = v119;
        LOBYTE(v85) = static Date.> infix(_:_:)();
        v89 = *v102;
        (*v102)(v87, v86);
        v89(v88, v86);
        sub_100007BAC(&v135);
        result = sub_100007BAC(&v138);
        if ((v85 & 1) == 0)
        {
          v15 = v108;
          goto LABEL_6;
        }

        v15 = v108;
        v90 = v115;
        if (!v99)
        {
          __break(1u);
          return result;
        }

        v91 = v114;
        sub_10000A748(v114, &v138);
        v38 = v113;
        v92 = v113[1];
        *v91 = *v113;
        v91[1] = v92;
        *(v91 + 4) = *(v38 + 32);
        result = sub_10000A748(&v138, v38);
        v93 = __CFADD__(v90, 1);
        v42 = v90 + 1;
        if (v93)
        {
          goto LABEL_6;
        }
      }

      (*v102)(v119, v120);
      v41 = v83;
LABEL_5:
      sub_10000B3A8(v41, &qword_10169DBD8, &qword_1013BF910);
      sub_100007BAC(&v135);
      result = sub_100007BAC(&v138);
      v15 = v108;
LABEL_6:
      a3 = v98 + 1;
      v38 = v97 + 40;
      v39 = v96 - 1;
      if (v98 + 1 == v95)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

Swift::Int sub_100713A5C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      sub_100710F8C(v9, v10, a1, v6, a2);

      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100712D90(0, v4, 1, a1, a2);
  }
}

uint64_t sub_100713BB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100B32110(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_100713A5C(v7, a2);

  *a1 = v4;
}

uint64_t sub_100713C58(unint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v176 = a3;
  v181 = a2;
  v180 = type metadata accessor for BeaconEstimatedLocation(0);
  __chkstk_darwin(v180);
  v179 = (&v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v5 - 8);
  v187 = &v175 - v6;
  v189 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v189 - 8);
  v8 = __chkstk_darwin(v189);
  v186 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v185 = &v175 - v10;
  v206 = type metadata accessor for BeaconObservation(0);
  v190 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for SystemInfo.DeviceLockState();
  v12 = *(v202 - 8);
  v13 = __chkstk_darwin(v202);
  v201 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v200 = &v175 - v15;
  v216 = type metadata accessor for Date();
  v16 = *(v216 - 8);
  v17 = __chkstk_darwin(v216);
  v218 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v193 = &v175 - v19;
  v215 = type metadata accessor for UUID();
  v20 = *(v215 - 8);
  v21 = __chkstk_darwin(v215);
  v23 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v208 = &v175 - v26;
  if (a1 >> 62)
  {
LABEL_63:
    v170 = v24;
    v171 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v170;
    v27 = v171;
    if (v171)
    {
      goto LABEL_3;
    }

    return v176[2](v176, 0);
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    return v176[2](v176, 0);
  }

LABEL_3:
  v28 = 0;
  v217 = 0;
  v194 = *(v181 + 280);
  v199 = v24 & 0xC000000000000001;
  v182 = v24 & 0xFFFFFFFFFFFFFF8;
  v214 = v20 + 1;
  v210 = (v16 + 8);
  v197 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v196 = (v12 + 104);
  v195 = (v12 + 8);
  v192 = (v16 + 16);
  v183 = v7 + 6;
  v178 = (v16 + 56);
  *&v25 = 141560067;
  v188 = v25;
  v29 = &_mh_execute_header;
  *(&v30 + 1) = 2;
  v211 = xmmword_101385D80;
  *&v30 = 141558275;
  v184 = v30;
  v177 = xmmword_10138C660;
  v198 = v24;
  v204 = v23;
  v203 = v27;
  while (1)
  {
    if (v199)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *(v182 + 16))
      {
        goto LABEL_62;
      }

      v34 = *(v24 + 8 * v28 + 32);
    }

    v7 = v34;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v212 = v28 + 1;
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    v36 = sub_1000076D4(v35, qword_10177B7F8);
    v37 = v7;
    v209 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v213 = v28;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&v219 = v207;
      *v41 = v188;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v42 = [v37 beaconIdentifier];
      v43 = v208;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = v215;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*v214)(v43, v44);
      v48 = sub_1000136BC(v45, v47, &v219);

      *(v41 + 14) = v48;
      *(v41 + 22) = 2082;
      v49 = SPBeaconObservationType.description.getter([v37 type]);
      v51 = sub_1000136BC(v49, v50, &v219);

      *(v41 + 24) = v51;
      *(v41 + 32) = 2082;
      v52 = [v37 date];
      v53 = v193;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v54 = v216;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = *v210;
      (*v210)(v53, v54);
      v59 = sub_1000136BC(v55, v57, &v219);

      *(v41 + 34) = v59;
      *(v41 + 42) = 2082;
      v60 = [v37 location];
      if (v60)
      {

        v61 = 0xE300000000000000;
        v62 = 7562617;
      }

      else
      {
        v61 = 0xE200000000000000;
        v62 = 28526;
      }

      v63 = sub_1000136BC(v62, v61, &v219);

      *(v41 + 44) = v63;
      *(v41 + 52) = 2082;
      v64 = [v37 location];
      if (v64)
      {
        v65 = v64;
        v66 = [v64 timestamp];

        v67 = v193;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = Date.debugDescription.getter();
        v70 = v69;
        v58(v67, v216);
      }

      else
      {
        v68 = 0;
        v70 = 0xE000000000000000;
      }

      v29 = &_mh_execute_header;
      v71 = sub_1000136BC(v68, v70, &v219);

      *(v41 + 54) = v71;
      *(v41 + 62) = 2049;
      v72 = [v37 location];
      v73 = -1.0;
      v74 = -1.0;
      if (v72)
      {
        v75 = v72;
        [v72 latitude];
        v74 = v76;
      }

      *(v41 + 64) = v74;
      *(v41 + 72) = 2049;
      v77 = [v37 location];
      if (v77)
      {
        v78 = v77;
        [v77 longitude];
        v73 = v79;
      }

      *(v41 + 74) = v73;
      *(v41 + 82) = 2050;
      v80 = [v37 location];
      if (v80)
      {
        v81 = v80;
        [v80 horizontalAccuracy];
        v83 = v82;
      }

      else
      {
        v83 = -1.0;
      }

      *(v41 + 84) = v83;
      _os_log_impl(&_mh_execute_header, v38, v39, "Updating Beacon %{private,mask.hash}s observation type: %{public}s, date: %{public}s. With location: %{public}s, timestamp: %{public}s, lat: %{private}f, lon: %{private}f, acc: %{public}f.", v41, 0x5Cu);
      swift_arrayDestroy();

      v23 = v204;
    }

    else
    {
    }

    v84 = [v37 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = [v37 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v87 = qword_10177C380;
    v207 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v88 = swift_allocObject();
    *(v88 + 16) = v211;
    v89 = UUID.uuidString.getter();
    v90 = v23;
    v92 = v91;
    *(v88 + 56) = &type metadata for String;
    *(v88 + 64) = sub_100008C00();
    *(v88 + 32) = v89;
    *(v88 + 40) = v92;
    os_log(_:dso:log:_:_:)(v86, v29, v87, "beaconRecord(for uuid: %@)", 26, 2, v88);

    v93 = v200;
    static SystemInfo.lockState.getter();
    v94 = v201;
    v95 = v202;
    (*v196)(v201, v197, v202);
    sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
    v96 = *v195;
    (*v195)(v94, v95);
    v96(v93, v95);
    if (v88)
    {
      v97 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v97, v29, v87, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      v221 = 0;
      v219 = 0u;
      v220 = 0u;
    }

    else
    {
      v98 = sub_100007F54();
      __chkstk_darwin(v98);
      v173 = v90;
      v99 = v217;
      sub_1000314D0(sub_1004E4EC0, v98, &v219);
      v217 = v99;
    }

    v23 = v90;
    v100 = *v214;
    (*v214)(v23, v215);
    v101 = *(&v220 + 1);
    sub_10000B3A8(&v219, &qword_101696920, &unk_10138B200);
    if (v101)
    {
      break;
    }

    v12 = v37;
    v7 = v209;
    v16 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v20))
    {
      v109 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v219 = v209;
      *v109 = v184;
      *(v109 + 4) = 1752392040;
      *(v109 + 12) = 2081;
      v110 = [v12 beaconIdentifier];
      v111 = v208;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v112 = v29;
      v113 = v100;
      v114 = v215;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v116;
      v113(v111, v114);
      v29 = v112;
      v117 = sub_1000136BC(v115, v7, &v219);

      *(v109 + 14) = v117;
      _os_log_impl(v112, v16, v20, "No beacon found to updateBeaconObservations %{private,mask.hash}s.", v109, 0x16u);
      sub_100007BAC(v209);
LABEL_52:
      v23 = v204;

      goto LABEL_5;
    }

LABEL_5:
    (*v210)(v218, v216);
    v24 = v198;
    v31 = v213;
LABEL_6:
    v32 = v212;
    v33 = v203;
LABEL_7:
    v28 = v31 + 1;
    if (v32 == v33)
    {
      return v176[2](v176, 0);
    }
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v102 = qword_10177B2E8;
  v103 = [v37 beaconIdentifier];
  v104 = v205;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = *v192;
  (*v192)(&v104[*(v206 + 20)], v218, v216);
  v106 = [v37 type];
  v107 = v106;
  v191 = v105;
  if (v106 >= 4)
  {
    v118 = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v119 = qword_10177C370;
    v120 = swift_allocObject();
    *(v120 + 16) = v211;
    *(v120 + 56) = &type metadata for Int;
    *(v120 + 64) = &protocol witness table for Int;
    *(v120 + 32) = v107;
    os_log(_:dso:log:_:_:)(v118, v29, v119, "unsupported beaconObservationType, %d", v175);

    v108 = 32;
  }

  else
  {
    v108 = v106 | 0x20;
  }

  v121 = v205;
  v205[*(v206 + 24)] = v108;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v122 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = v211;
  sub_100721C9C(v121, v123 + v122, type metadata accessor for BeaconObservation);
  v124 = type metadata accessor for Transaction();
  __chkstk_darwin(v124);
  *(&v175 - 4) = v102;
  *(&v175 - 3) = v123;
  v173 = 0;
  v174 = 0;
  v125 = v217;
  static Transaction.named<A>(_:with:)();

  sub_100721D04(v121, type metadata accessor for BeaconObservation);
  v126 = [v37 location];
  v217 = v125;
  if (!v126)
  {
    v12 = v37;
    v7 = v209;
    v16 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v16, v20))
    {

      (*v210)(v218, v216);
      v24 = v198;
      goto LABEL_60;
    }

    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v219 = v141;
    *v140 = v184;
    *(v140 + 4) = 1752392040;
    *(v140 + 12) = 2081;
    v142 = [v12 beaconIdentifier];
    v143 = v208;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v144 = v215;
    v145 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v146;
    v100(v143, v144);
    v147 = sub_1000136BC(v145, v7, &v219);

    *(v140 + 14) = v147;
    v29 = &_mh_execute_header;
    _os_log_impl(&_mh_execute_header, v16, v20, "No location in observation for beacon %{private,mask.hash}s. Update completed.", v140, 0x16u);
    sub_100007BAC(v141);
    goto LABEL_52;
  }

  v20 = v126;
  v127 = [v37 beaconIdentifier];
  v128 = v208;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v129 = v187;
  sub_100AA33AC(v128, v187);
  v100(v128, v215);
  if ((*v183)(v129, 1, v189) == 1)
  {
    sub_10000B3A8(v129, &unk_1016A9A20, &qword_10138B280);
    v12 = v37;
    v7 = v209;
    v16 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();

    v131 = os_log_type_enabled(v16, v130);
    v33 = v203;
    if (v131)
    {
      v132 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v219 = v209;
      *v132 = v184;
      *(v132 + 4) = 1752392040;
      *(v132 + 12) = 2081;
      v133 = [v12 beaconIdentifier];
      v134 = v208;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v135 = v215;
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v137;
      v138 = v135;
      v33 = v203;
      v100(v134, v138);
      v139 = sub_1000136BC(v136, v7, &v219);

      *(v132 + 14) = v139;
      v29 = &_mh_execute_header;
      _os_log_impl(&_mh_execute_header, v16, v130, "Beacon %{private,mask.hash}s is not an owned beacon. Cannot update beacon observation.", v132, 0x16u);
      sub_100007BAC(v209);

      v23 = v204;

      (*v210)(v218, v216);
      v24 = v198;
      v32 = v212;
      v31 = v213;
    }

    else
    {

      (*v210)(v218, v216);
      v24 = v198;
      v32 = v212;
      v31 = v213;
      v29 = &_mh_execute_header;
    }

    goto LABEL_7;
  }

  v148 = v129;
  v149 = v185;
  sub_10002AB74(v148, v185, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(v149, v186, type metadata accessor for OwnedBeaconRecord);
  v150 = [v37 type];
  v207 = v124;
  if ((v150 - 1) < 3)
  {
    v151 = v150 + 1;
    goto LABEL_59;
  }

  v152 = [objc_opt_self() sharedInstance];
  v153 = [v152 isInternalBuild];

  if (!v153)
  {
    v151 = 0;
LABEL_59:
    *(&v220 + 1) = v189;
    v221 = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v154 = sub_1000280DC(&v219);
    v155 = v186;
    sub_100721C9C(v186, v154, type metadata accessor for OwnedBeaconRecord);
    v16 = v180;
    v156 = v179;
    UUID.init()();
    v157 = *(&v220 + 1);
    v158 = v221;
    sub_1000035D0(&v219, *(&v220 + 1));
    (*(*(*(v158 + 8) + 8) + 32))(v157);
    [v20 latitude];
    v160 = v159;
    [v20 longitude];
    v162 = v161;
    [v20 horizontalAccuracy];
    v164 = v163;
    v165 = [v20 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v166 = *(v16 + 48);
    v12 = v218;
    v167 = v216;
    v191(v156 + v166, v218, v216);
    v168 = (*v178)(v156 + v166, 0, 1, v167);
    *v156 = v177;
    *(v156 + *(v16 + 28)) = v160;
    *(v156 + *(v16 + 32)) = v162;
    *(v156 + *(v16 + 36)) = v164;
    *(v156 + *(v16 + 44)) = v151;
    *(v156 + *(v16 + 52)) = 0;
    __chkstk_darwin(v168);
    *(&v175 - 4) = v181;
    *(&v175 - 3) = v156;
    v173 = &v219;
    LOBYTE(v174) = v151;
    v7 = v207;
    v169 = v217;
    static Transaction.named<A>(_:with:)();
    v217 = v169;

    sub_100721D04(v155, type metadata accessor for OwnedBeaconRecord);
    sub_100721D04(v185, type metadata accessor for OwnedBeaconRecord);
    (*v210)(v12, v167);
    sub_100721D04(v156, type metadata accessor for BeaconEstimatedLocation);
    sub_100007BAC(&v219);
    v24 = v198;
    v23 = v204;
LABEL_60:
    v31 = v213;
    v29 = &_mh_execute_header;
    goto LABEL_6;
  }

  _Block_release(v176);
  LODWORD(v174) = 0;
  v173 = 3827;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10071569C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v29 = a1;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v28 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v28);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  _Block_copy(a3);
  if (qword_101694840 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B060);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v8;
    *v16 = 134217984;
    *(v16 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "offlineAdvertisingKeys for reason: %ld", v16, 0xCu);
    v8 = v27;
  }

  sub_1003DB678(v6);
  if ((*(v7 + 48))(v6, 1, v28) == 1)
  {
    sub_10000B3A8(v6, &unk_1016A9A20, &qword_10138B280);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "offlineAdvertisingKeys requested with no localBeaconRecord", v19, 2u);
    }

    sub_100008BB8(0, &qword_1016A78A0, SPOfflineAdvertisingKeys_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, isa);
  }

  else
  {
    sub_10002AB74(v6, v12, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v21 = v31;
    v22 = v7;
    v23 = swift_allocObject();
    swift_weakInit();
    sub_100721C9C(v12, v10, type metadata accessor for OwnedBeaconRecord);
    v24 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = sub_1007205A0;
    v25[4] = v30;
    sub_10002AB74(v10, v25 + v24, type metadata accessor for OwnedBeaconRecord);
    *(v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v26 = type metadata accessor for Transaction();
    __chkstk_darwin(v26);
    *(&v27 - 6) = v21;
    *(&v27 - 5) = v12;
    *(&v27 - 32) = 2;
    *(&v27 - 3) = sub_1007205CC;
    *(&v27 - 2) = v25;

    static Transaction.named<A>(_:with:)();

    sub_100721D04(v12, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100715BF4()
{
  v1 = type metadata accessor for KeySyncMetadata(0);
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v2 = type metadata accessor for KeySyncMetadataDisplay(0);
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v0[18] = v3;
  v0[19] = *(v3 - 8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100715DB0;

  return daemon.getter();
}

uint64_t sub_100715DB0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[23] = a1;

  v3 = swift_task_alloc();
  v2[24] = v3;
  v4 = type metadata accessor for Daemon();
  v2[25] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[26] = v6;
  v7 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100715F90;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100715F90(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100716F5C, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[29] = v4;
    *v4 = v3;
    v4[1] = sub_100716104;

    return daemon.getter();
  }
}

uint64_t sub_100716104(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 240) = a1;

  v5 = swift_task_alloc();
  *(v3 + 248) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1007162B8;
  v8 = *(v2 + 208);
  v9 = *(v2 + 200);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007162B8(uint64_t a1)
{
  v4 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {
    v5 = sub_100717000;
    v6 = 0;
  }

  else
  {

    v4[7] = _swiftEmptyArrayStorage;
    v5 = sub_1007163FC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007163FC()
{

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_1007164E8;
  v3 = *(v0 + 256);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_1007164E8()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100716600, v1, 0);
}

void sub_100716624()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[36] = v2;
  if (v2)
  {
    v0[37] = 0;
    if (*(v1 + 16))
    {
      sub_10001F280(v1 + 32, (v0 + 2));
      v4 = v0[5];
      v3 = v0[6];
      sub_1000035D0(v0 + 2, v4);
      (*(*(*(v3 + 8) + 8) + 32))(v4);
      sub_100007BAC(v0 + 2);
      v5 = swift_task_alloc();
      v0[38] = v5;
      *v5 = v0;
      v5[1] = sub_1007167DC;
      v6 = v0[21];

      sub_1010CE238(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = v0[7];

    v8 = v0[1];

    v8(v7);
  }
}

uint64_t sub_1007167DC(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v4 = v3[21];
    v5 = v3[18];
    v6 = v3[19];

    (*(v6 + 8))(v4, v5);

    v7 = sub_1007170B0;
  }

  else
  {
    (*(v3[19] + 8))(v3[21], v3[18]);
    v7 = sub_100716940;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100716940()
{
  v1 = v0[39];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v0[9] = _swiftEmptyArrayStorage;
    sub_101124FF4(0, v2, 0);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = v0[9];
    v48 = *(v3 + 72);
    while (1)
    {
      v54 = v4;
      v55 = v5;
      v6 = v0[19];
      v7 = v0[20];
      v8 = v0[18];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[11];
      sub_100721C9C(v4, v9, type metadata accessor for KeySyncMetadata);
      sub_100721C9C(v9, v10, type metadata accessor for KeySyncMetadata);
      (*(v6 + 16))(v7, v10, v8);
      v12 = *(v10 + *(v11 + 20));
      v56 = v2;
      if (v12 <= 3)
      {
        if (*(v10 + *(v11 + 20)) <= 1u)
        {
          if (*(v10 + *(v11 + 20)))
          {
            v14 = 0xEA00000000007265;
            v15 = 0x4F7261656E2ELL;
          }

          else
          {
            v14 = 0xE800000000000000;
            v15 = 0x6F6E6B6E752ELL;
          }

          v52 = v14;
          v53 = v15 & 0xFFFFFFFFFFFFLL | 0x6E77000000000000;
          goto LABEL_22;
        }

        if (v12 == 2)
        {
          v53 = 0x6553686374616C2ELL;
          v13 = 0xEF64657461726170;
        }

        else
        {
          v53 = 0xD00000000000001CLL;
          v13 = 0x800000010134B930;
        }
      }

      else if (*(v10 + *(v11 + 20)) <= 5u)
      {
        if (v12 == 4)
        {
          v53 = 0xD000000000000018;
          v13 = 0x800000010134B910;
        }

        else
        {
          v53 = 0x697250646C69772ELL;
          v13 = 0xEC0000007972616DLL;
        }
      }

      else if (v12 == 6)
      {
        v53 = 0x636553646C69772ELL;
        v13 = 0xEE00797261646E6FLL;
      }

      else if (v12 == 7)
      {
        v53 = 0x736142746E69682ELL;
        v13 = 0xEA00000000006465;
      }

      else
      {
        v53 = 0x67696C4179656B2ELL;
        v13 = 0xED0000746E656D6ELL;
      }

      v52 = v13;
LABEL_22:
      v16 = v0[19];
      v17 = v0[17];
      v50 = v0[18];
      v51 = v0[20];
      v19 = v0[14];
      v18 = v0[15];
      v20 = v0[13];
      v21 = v0[11];
      v22 = (v20 + *(v21 + 24));
      sub_1000035D0(v22, v22[3]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v49 = v0[10];
      v24 = v22[3];
      v23 = v22[4];
      sub_1000035D0(v22, v24);
      v25 = sub_10002BD40(v24, v23);
      if (v25)
      {
        v26 = 0x61646E6F6365732ELL;
      }

      else
      {
        v26 = 0x7972616D6972702ELL;
      }

      if (v25)
      {
        v27 = 0xEA00000000007972;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      sub_100721D04(v19, type metadata accessor for KeySyncMetadata);
      v28 = *(v21 + 28);
      v29 = v18[8];
      v30 = type metadata accessor for Date();
      (*(*(v30 - 8) + 16))(v17 + v29, v20 + v28, v30);
      (*(v16 + 32))(v17, v51, v50);
      v31 = (v17 + v18[5]);
      *v31 = v53;
      v31[1] = v52;
      *(v17 + v18[6]) = v49;
      v32 = (v17 + v18[7]);
      *v32 = v26;
      v32[1] = v27;
      sub_100721D04(v20, type metadata accessor for KeySyncMetadata);
      v5 = v55;
      v0[9] = v55;
      v34 = v55[2];
      v33 = v55[3];
      if (v34 >= v33 >> 1)
      {
        sub_101124FF4((v33 > 1), v34 + 1, 1);
        v5 = v0[9];
      }

      v36 = v0[16];
      v35 = v0[17];
      v5[2] = v34 + 1;
      sub_10002AB74(v35, v5 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, type metadata accessor for KeySyncMetadataDisplay);
      v4 = v54 + v48;
      v2 = v56 - 1;
      if (v56 == 1)
      {

        goto LABEL_33;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_33:
  v37 = v0[36];
  v38 = v0[37] + 1;
  result = sub_10039A12C(v5);
  if (v38 == v37)
  {

    v40 = v0[7];

    v41 = v0[1];

    return v41(v40);
  }

  else
  {
    v42 = v0[37] + 1;
    v0[37] = v42;
    v43 = v0[35];
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10001F280(v43 + 40 * v42 + 32, (v0 + 2));
      v44 = v0[5];
      v45 = v0[6];
      sub_1000035D0(v0 + 2, v44);
      (*(*(*(v45 + 8) + 8) + 32))(v44);
      sub_100007BAC(v0 + 2);
      v46 = swift_task_alloc();
      v0[38] = v46;
      *v46 = v0;
      v46[1] = sub_1007167DC;
      v47 = v0[21];

      return sub_1010CE238(v47);
    }
  }

  return result;
}

uint64_t sub_100716F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100717000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007170B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100717160(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  sub_100721C9C(a1 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v17 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    v18 = &v4[*(v17 + 80)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v30 = v20;
    v31 = v19;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v14 = &v4[*(v13 + 80)];
    v15 = *v14;
    v16 = *(v14 + 1);

    v30 = v15;
    v31 = v16;
LABEL_9:
    sub_1000DF96C();
    v21 = Data.init<A>(hexString:)();
    if (v22 >> 60 == 15)
    {
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 8))(v4, v23);
      return 0;
    }

    v24 = v21;
    v25 = v22;
    v30 = v21;
    v31 = v22;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v26 = 0;
    }

    else
    {
      v26 = Data.trimmed.getter();
    }

    sub_100006654(v24, v25);
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 8))(v4, v28);
    return v26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100721D04(v4, type metadata accessor for StableIdentifier);
    return 0;
  }

  v7 = *(v4 + 4);
  v8 = *(v4 + 5);

  v30 = v7;
  v31 = v8;
  sub_1000DF96C();
  v9 = Data.init<A>(hexString:)();
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v30 = v9;
  v31 = v10;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v11, v12);
    return 0;
  }

  v29 = Data.trimmed.getter();
  sub_100006654(v11, v12);
  return v29;
}

void sub_100717498(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1006D54D0(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_100717544()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100717760(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

void sub_100717854(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for OwnedDeviceKeyRecord, &qword_1016A7810, &qword_1013B66C0, type metadata accessor for OwnedDeviceKeyRecord, sub_1009EFD9C, type metadata accessor for OwnedDeviceKeyRecord);
}

uint64_t sub_100717A2C(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v98 = a2;
  v99 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v91 = &v80 - v7;
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v8 - 8);
  v87 = &v80 - v9;
  v94 = type metadata accessor for MACAddress();
  v90 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v11;
  __chkstk_darwin(v10);
  v96 = &v80 - v13;
  v93 = type metadata accessor for TimeBasedKey(0);
  v95 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  __chkstk_darwin(v15);
  v17 = (&v80 - v16);
  v18 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v19 = __chkstk_darwin(v18 - 8);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = &v80 - v21;
  v22 = type metadata accessor for Date();
  __chkstk_darwin(v22 - 8);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v88 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = a3;
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v30 = v98[35];

  sub_100025020(v99, &v101);
  if (!v102)
  {
    sub_10000B3A8(&v101, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    *&v101 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v17 = v103[0];
    swift_storeEnumTagMultiPayload();
    sub_1007B7298(v17, v29, a4);
    sub_10000B3A8(v17, &unk_1016A99D0, &unk_1013BB9A0);
  }

  v85 = v15;
  v98 = v17;
  v81 = v12;
  v84 = v25;
  v31 = v91;
  v32 = v28;
  v82 = a4;
  sub_10000A748(&v101, v103);
  static Date.trustedNow.getter(v24);
  DateInterval.init(start:duration:)();
  v33 = v104;
  v34 = v105;
  v35 = sub_1000035D0(v103, v104);
  v99 = v27;
  v36 = sub_100B03A58(v35, v27, 0, 0, 0, v30, v33, v34);
  v83 = v32;
  if (v38 <= 1u)
  {
    v39 = v94;
    v40 = v29;
    v41 = v98;
    if (v38)
    {
      v42 = v31;
      v43 = v97;
      v44 = v99;
      if (!*(v36 + 16))
      {
        v38 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v42 = v31;
      v43 = v97;
      v44 = v99;
      if (!*(v36 + 16))
      {
        v38 = 0;
LABEL_12:
        v45 = 1;
        goto LABEL_13;
      }
    }

    v46 = v36;
    v47 = v37;
    v48 = v94;
    v49 = v38;
    sub_100721C9C(v36 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v43, type metadata accessor for TimeBasedKey);
    v38 = v49;
    v39 = v48;
    v37 = v47;
    v36 = v46;
    v45 = 0;
LABEL_13:
    sub_100359088(v36, v37, v38);
    goto LABEL_14;
  }

  v45 = 1;
  v42 = v31;
  v39 = v94;
  v43 = v97;
  v41 = v98;
  v40 = v29;
  v44 = v99;
  if (v38 == 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v50 = v95;
  v51 = v45;
  v52 = v93;
  (*(v95 + 56))(v43, v51, 1, v93);
  v53 = v92;
  sub_1000D2A70(v43, v92, &qword_10169BA30, &unk_101395620);
  if ((*(v50 + 48))(v53, 1, v52) == 1)
  {
    sub_10000B3A8(v53, &qword_10169BA30, &unk_101395620);
    type metadata accessor for SPOwnerSessionError(0);
    v100 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v41 = v101;
    swift_storeEnumTagMultiPayload();
    sub_1007B7298(v41, v40, v82);
    sub_10000B3A8(v41, &unk_1016A99D0, &unk_1013BB9A0);
    sub_10000B3A8(v43, &qword_10169BA30, &unk_101395620);
    (*(v88 + 8))(v44, v84);
    sub_100007BAC(v103);
  }

  v54 = v42;
  v55 = v89;
  sub_10002AB74(v53, v89, type metadata accessor for TimeBasedKey);
  v56 = PublicKey.advertisement.getter(*(v55 + *(v52 + 24) + 16), *(v55 + *(v52 + 24) + 24));
  sub_10002EA98(6, v56, v57, &v101);
  v58 = v101;
  sub_100017D5C(v101, *(&v101 + 1));
  v59 = v87;
  MACAddress.init(addressToSanitize:type:)();
  v60 = v90;
  if ((*(v90 + 48))(v59, 1, v39) != 1)
  {
    sub_100016590(v58, *(&v58 + 1));
    v98 = *(v60 + 32);
    (v98)(v96, v59, v39);
    v61 = v104;
    v62 = v105;
    sub_1000035D0(v103, v104);
    v63 = (*(v62 + 176))(v61, v62);
    v65 = 2;
    if (v64 >> 60 != 15)
    {
      v66 = v63;
      v67 = v64;
      v68 = sub_100DE68F4(v63, v64);
      sub_100006654(v66, v67);
      if (v68)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }
    }

    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v54, 1, 1, v69);
    v70 = v90;
    v71 = v81;
    (*(v90 + 16))(v81, v96, v39);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = v72 + v86;
    v74 = v39;
    v75 = (v72 + v86) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    (v98)(v76 + v72, v71, v74);
    *(v76 + v73) = v65;
    v77 = v76 + v75;
    v78 = v83;
    *(v77 + 8) = sub_100720FB0;
    *(v77 + 16) = v78;

    sub_10025EDD4(0, 0, v54, &unk_1013B68D0, v76);

    (*(v70 + 8))(v96, v74);
    sub_10000B3A8(v97, &qword_10169BA30, &unk_101395620);
    (*(v88 + 8))(v99, v84);
    sub_100721D04(v89, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v103);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007184D0(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v98 = a2;
  v99 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v91 = &v80 - v7;
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v8 - 8);
  v87 = &v80 - v9;
  v94 = type metadata accessor for MACAddress();
  v90 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v11;
  __chkstk_darwin(v10);
  v96 = &v80 - v13;
  v93 = type metadata accessor for TimeBasedKey(0);
  v95 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v15);
  v17 = (&v80 - v16);
  v18 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v19 = __chkstk_darwin(v18 - 8);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = &v80 - v21;
  v22 = type metadata accessor for Date();
  __chkstk_darwin(v22 - 8);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v88 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = a3;
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v30 = v98[35];

  sub_100025020(v99, &v101);
  if (!v102)
  {
    sub_10000B3A8(&v101, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    *&v101 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v17 = v103[0];
    swift_storeEnumTagMultiPayload();
    sub_1007B7490(v17, v29, a4);
    sub_10000B3A8(v17, &unk_1016A99C0, &unk_1013BB530);
  }

  v85 = v15;
  v98 = v17;
  v81 = v12;
  v84 = v25;
  v31 = v91;
  v32 = v28;
  v82 = a4;
  sub_10000A748(&v101, v103);
  static Date.trustedNow.getter(v24);
  DateInterval.init(start:duration:)();
  v33 = v104;
  v34 = v105;
  v35 = sub_1000035D0(v103, v104);
  v99 = v27;
  v36 = sub_100B03A58(v35, v27, 0, 0, 0, v30, v33, v34);
  v83 = v32;
  if (v38 <= 1u)
  {
    v39 = v94;
    v40 = v29;
    v41 = v98;
    if (v38)
    {
      v42 = v31;
      v43 = v97;
      v44 = v99;
      if (!*(v36 + 16))
      {
        v38 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v42 = v31;
      v43 = v97;
      v44 = v99;
      if (!*(v36 + 16))
      {
        v38 = 0;
LABEL_12:
        v45 = 1;
        goto LABEL_13;
      }
    }

    v46 = v36;
    v47 = v37;
    v48 = v94;
    v49 = v38;
    sub_100721C9C(v36 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v43, type metadata accessor for TimeBasedKey);
    v38 = v49;
    v39 = v48;
    v37 = v47;
    v36 = v46;
    v45 = 0;
LABEL_13:
    sub_100359088(v36, v37, v38);
    goto LABEL_14;
  }

  v45 = 1;
  v42 = v31;
  v39 = v94;
  v43 = v97;
  v41 = v98;
  v40 = v29;
  v44 = v99;
  if (v38 == 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v50 = v95;
  v51 = v45;
  v52 = v93;
  (*(v95 + 56))(v43, v51, 1, v93);
  v53 = v92;
  sub_1000D2A70(v43, v92, &qword_10169BA30, &unk_101395620);
  if ((*(v50 + 48))(v53, 1, v52) == 1)
  {
    sub_10000B3A8(v53, &qword_10169BA30, &unk_101395620);
    type metadata accessor for SPOwnerSessionError(0);
    v100 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v41 = v101;
    swift_storeEnumTagMultiPayload();
    sub_1007B7490(v41, v40, v82);
    sub_10000B3A8(v41, &unk_1016A99C0, &unk_1013BB530);
    sub_10000B3A8(v43, &qword_10169BA30, &unk_101395620);
    (*(v88 + 8))(v44, v84);
    sub_100007BAC(v103);
  }

  v54 = v42;
  v55 = v89;
  sub_10002AB74(v53, v89, type metadata accessor for TimeBasedKey);
  v56 = PublicKey.advertisement.getter(*(v55 + *(v52 + 24) + 16), *(v55 + *(v52 + 24) + 24));
  sub_10002EA98(6, v56, v57, &v101);
  v58 = v101;
  sub_100017D5C(v101, *(&v101 + 1));
  v59 = v87;
  MACAddress.init(addressToSanitize:type:)();
  v60 = v90;
  if ((*(v90 + 48))(v59, 1, v39) != 1)
  {
    sub_100016590(v58, *(&v58 + 1));
    v98 = *(v60 + 32);
    (v98)(v96, v59, v39);
    v61 = v104;
    v62 = v105;
    sub_1000035D0(v103, v104);
    v63 = (*(v62 + 176))(v61, v62);
    v65 = 2;
    if (v64 >> 60 != 15)
    {
      v66 = v63;
      v67 = v64;
      v68 = sub_100DE68F4(v63, v64);
      sub_100006654(v66, v67);
      if (v68)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }
    }

    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v54, 1, 1, v69);
    v70 = v90;
    v71 = v81;
    (*(v90 + 16))(v81, v96, v39);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = v72 + v86;
    v74 = v39;
    v75 = (v72 + v86) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    (v98)(v76 + v72, v71, v74);
    *(v76 + v73) = v65;
    v77 = v76 + v75;
    v78 = v83;
    *(v77 + 8) = sub_100720E74;
    *(v77 + 16) = v78;

    sub_10025EDD4(0, 0, v54, &unk_1013B68C0, v76);

    (*(v70 + 8))(v96, v74);
    sub_10000B3A8(v97, &qword_10169BA30, &unk_101395620);
    (*(v88 + 8))(v99, v84);
    sub_100721D04(v89, type metadata accessor for TimeBasedKey);
    sub_100007BAC(v103);
  }

  __break(1u);
  return result;
}

uint64_t sub_100718F74(uint64_t a1)
{
  v1[31] = a1;
  v1[32] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[33] = swift_task_alloc();
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for AccessoryCommand(0);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v1[44] = swift_task_alloc();
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[48] = v4;
  v5 = *(v4 - 8);
  v1[49] = v5;
  v1[50] = *(v5 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_100719248, 0, 0);
}

uint64_t sub_100719248()
{
  v22 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  v0[58] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[59] = v6;
  v0[60] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[57];
  v11 = v0[48];
  v12 = v0[49];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315651;
    *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[61] = v17;
  v19 = swift_task_alloc();
  v0[62] = v19;
  *v19 = v0;
  v19[1] = sub_100719518;

  return daemon.getter();
}

uint64_t sub_100719518(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[63] = a1;

  v3 = swift_task_alloc();
  v2[64] = v3;
  v4 = type metadata accessor for Daemon();
  v2[65] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[66] = v6;
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1007196F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007196F8(uint64_t a1)
{
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100721F00, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[69] = v4;
    *v4 = v3;
    v4[1] = sub_100719870;

    return daemon.getter();
  }
}

uint64_t sub_100719870(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 560) = a1;

  v5 = swift_task_alloc();
  *(v3 + 568) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_100719A24;
  v8 = *(v2 + 528);
  v9 = *(v2 + 520);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100719A24(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 576) = a1;
  *(v4 + 584) = v1;

  if (v1)
  {
    v5 = sub_100721E44;
    v6 = 0;
  }

  else
  {

    v5 = sub_100719B60;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100719B60()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 448);
  v3 = *(v0 + 392);
  v4 = *(v0 + 384);
  (*(v0 + 472))(v2, *(v0 + 248), v4);
  v5 = *(v3 + 80);
  *(v0 + 244) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 592) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 600) = v8;
  *(v0 + 608) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 616) = v9;
  *v9 = v0;
  v9[1] = sub_100719CD0;
  v10 = *(v0 + 352);
  v11 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F60, v7, v11);
}

uint64_t sub_100719CD0()
{

  if (v0)
  {

    v1 = sub_10071A0CC;
  }

  else
  {

    v1 = sub_100719E18;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100719E18()
{
  v28 = v0[59];
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[31];
  (*(v0[46] + 56))(v6, 0, 1, v5);
  sub_10002AB74(v6, v4, type metadata accessor for WildModeAssociationRecord);
  (*(v3 + 56))(v7, 1, 1, v2);
  v28(v1, v9, v2);
  v10 = *(v4 + *(v5 + 52));
  sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v3 + 48);
  if (v11(v8, 1, v2) == 1)
  {
    v12 = v0[48];
    v14 = v0[39];
    v13 = v0[40];
    UUID.init()();
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    if (v11(v14, 1, v12) != 1)
    {
      sub_10000B3A8(v0[39], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v15 = v0[75];
    v16 = v0[54];
    v17 = v0[48];
    v18 = v0[39];
    sub_10000B3A8(v0[40], &qword_1016980D0, &unk_10138F3B0);
    v15(v16, v18, v17);
  }

  v19 = v0[75];
  v20 = v0[55];
  v21 = v0[48];
  v22 = v0[43];
  v23 = v0[41];
  v19(v22, v0[54], v21);
  v19(v22 + v23[5], v20, v21);
  v24 = v22 + v23[6];
  *v24 = xmmword_1013B6610;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = xmmword_10139BF70;
  *(v22 + v23[7]) = v10 == 3;
  *(v22 + v23[8]) = 1;
  v25 = swift_task_alloc();
  v0[80] = v25;
  *v25 = v0;
  v25[1] = sub_10071AA50;
  v26 = v0[43];

  return sub_10121B780((v0 + 20), v26, 3);
}

uint64_t sub_10071A0CC()
{
  v1 = v0[72];
  v2 = v0[44];
  (*(v0[46] + 56))(v2, 1, 1, v0[45]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_10071A16C, v1, 0);
}

uint64_t sub_10071A16C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);
  v5 = (*(v0 + 244) + 24) & ~*(v0 + 244);
  (*(v0 + 472))(v3, *(v0 + 248), v4);
  v6 = swift_allocObject();
  *(v0 + 624) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 632) = v7;
  *v7 = v0;
  v7[1] = sub_10071A2C0;
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100721F04, v6, v9);
}

uint64_t sub_10071A2C0()
{

  return _swift_task_switch(sub_10071A3D8, 0, 0);
}

uint64_t sub_10071A3D8()
{
  v52 = v0;
  v1 = v0[33];
  v2 = (*(v0[35] + 48))(v1, 1, v0[34]);
  v3 = v0[59];
  v4 = v0[48];
  if (v2 == 1)
  {
    v5 = v0[51];
    v6 = v0[31];
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3(v5, v6, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[61];
    v11 = v0[51];
    v12 = v0[48];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v13 = 136315651;
      *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, v51);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v10(v11, v12);
      v17 = sub_1000136BC(v14, v16, v51);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s No beacon matching %{private,mask.hash}s!", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v10(v11, v12);
    }

    type metadata accessor for OwnerCommandService.Error(0);
    sub_100003E8C(&qword_1016A7818, type metadata accessor for OwnerCommandService.Error, &unk_10140DE5C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }

  else
  {
    v18 = v0[53];
    v19 = v0[49];
    v20 = v0[38];
    v21 = v0[31];
    sub_10002AB74(v1, v0[36], type metadata accessor for OwnedBeaconRecord);
    v22 = 1;
    (*(v19 + 56))(v20, 1, 1, v4);
    v3(v18, v21, v4);
    v23 = sub_100D60CD0();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v29 = v0[48];
    v30 = v0[49];
    v32 = v0[37];
    v31 = v0[38];

    sub_1000D2A70(v31, v32, &qword_1016980D0, &unk_10138F3B0);
    v33 = *(v30 + 48);
    if (v33(v32, 1, v29) == 1)
    {
      v34 = v0[48];
      v36 = v0[37];
      v35 = v0[38];
      UUID.init()();
      sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
      if (v33(v36, 1, v34) != 1)
      {
        sub_10000B3A8(v0[37], &qword_1016980D0, &unk_10138F3B0);
      }
    }

    else
    {
      v39 = v0[75];
      v40 = v0[52];
      v41 = v0[48];
      v42 = v0[37];
      sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      v39(v40, v42, v41);
    }

    v43 = v0[75];
    v44 = v0[53];
    v45 = v0[48];
    v47 = v0[41];
    v46 = v0[42];
    v43(v46, v0[52], v45);
    v43(v46 + v47[5], v44, v45);
    v48 = v46 + v47[6];
    *v48 = xmmword_1013B6610;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = xmmword_10139BF70;
    *(v46 + v47[7]) = v22 & 1;
    *(v46 + v47[8]) = 1;
    v49 = swift_task_alloc();
    v0[82] = v49;
    *v49 = v0;
    v49[1] = sub_10071AFFC;
    v50 = v0[42];

    return sub_10121B780((v0 + 8), v50, 2);
  }
}

uint64_t sub_10071AA50()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_100721E94;
  }

  else
  {
    v2 = sub_10071AB64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071AB64()
{
  v15 = v0;
  v1 = *(v0 + 376);
  sub_100721D04(*(v0 + 344), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for WildModeAssociationRecord);
  v2 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 192);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (!*(v0 + 136))
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
    goto LABEL_6;
  }

  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Invalid primaryKeyResponse!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    sub_1003FD838();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

    v11 = *(v0 + 8);

    return v11();
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 232);
  if ((v5 >> 60) & 3 | (4 * *(v0 + 240)))
  {
    sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v5, *(v0 + 240));
    goto LABEL_6;
  }

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v13 = *(v0 + 8);

  return v13(v4, v3);
}

uint64_t sub_10071AFFC()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_100721E6C;
  }

  else
  {
    v2 = sub_10071B110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071B110()
{
  v15 = v0;
  v1 = *(v0 + 288);
  sub_100721D04(*(v0 + 336), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for OwnedBeaconRecord);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (!*(v0 + 136))
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
    goto LABEL_6;
  }

  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010135C820, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Invalid primaryKeyResponse!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    sub_1003FD838();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

    v11 = *(v0 + 8);

    return v11();
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 232);
  if ((v5 >> 60) & 3 | (4 * *(v0 + 240)))
  {
    sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v5, *(v0 + 240));
    goto LABEL_6;
  }

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v13 = *(v0 + 8);

  return v13(v4, v3);
}

uint64_t sub_10071B5A8(uint64_t a1)
{
  v1[31] = a1;
  v1[32] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[33] = swift_task_alloc();
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for AccessoryCommand(0);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v1[44] = swift_task_alloc();
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[48] = v4;
  v5 = *(v4 - 8);
  v1[49] = v5;
  v1[50] = *(v5 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10071B87C, 0, 0);
}

uint64_t sub_10071B87C()
{
  v22 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  v0[58] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[59] = v6;
  v0[60] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[57];
  v11 = v0[48];
  v12 = v0[49];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315651;
    *(v13 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[61] = v17;
  v19 = swift_task_alloc();
  v0[62] = v19;
  *v19 = v0;
  v19[1] = sub_10071BB4C;

  return daemon.getter();
}

uint64_t sub_10071BB4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[63] = a1;

  v3 = swift_task_alloc();
  v2[64] = v3;
  v4 = type metadata accessor for Daemon();
  v2[65] = v4;
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[66] = v6;
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_10071BD2C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10071BD2C(uint64_t a1)
{
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10071DBCC, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[69] = v4;
    *v4 = v3;
    v4[1] = sub_10071BEA4;

    return daemon.getter();
  }
}

uint64_t sub_10071BEA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 560) = a1;

  v5 = swift_task_alloc();
  *(v3 + 568) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10071C058;
  v8 = *(v2 + 528);
  v9 = *(v2 + 520);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10071C058(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 576) = a1;
  *(v4 + 584) = v1;

  if (v1)
  {
    v5 = sub_10071DD18;
    v6 = 0;
  }

  else
  {

    v5 = sub_10071C194;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10071C194()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 448);
  v3 = *(v0 + 392);
  v4 = *(v0 + 384);
  (*(v0 + 472))(v2, *(v0 + 248), v4);
  v5 = *(v3 + 80);
  *(v0 + 244) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 592) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 600) = v8;
  *(v0 + 608) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 616) = v9;
  *v9 = v0;
  v9[1] = sub_10071C304;
  v10 = *(v0 + 352);
  v11 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1004E36F8, v7, v11);
}

uint64_t sub_10071C304()
{

  if (v0)
  {

    v1 = sub_10071C700;
  }

  else
  {

    v1 = sub_10071C44C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10071C44C()
{
  v28 = v0[59];
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[31];
  (*(v0[46] + 56))(v6, 0, 1, v5);
  sub_10002AB74(v6, v4, type metadata accessor for WildModeAssociationRecord);
  (*(v3 + 56))(v7, 1, 1, v2);
  v28(v1, v9, v2);
  v10 = *(v4 + *(v5 + 52));
  sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v3 + 48);
  if (v11(v8, 1, v2) == 1)
  {
    v12 = v0[48];
    v14 = v0[39];
    v13 = v0[40];
    UUID.init()();
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    if (v11(v14, 1, v12) != 1)
    {
      sub_10000B3A8(v0[39], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v15 = v0[75];
    v16 = v0[54];
    v17 = v0[48];
    v18 = v0[39];
    sub_10000B3A8(v0[40], &qword_1016980D0, &unk_10138F3B0);
    v15(v16, v18, v17);
  }

  v19 = v0[75];
  v20 = v0[55];
  v21 = v0[48];
  v22 = v0[43];
  v23 = v0[41];
  v19(v22, v0[54], v21);
  v19(v22 + v23[5], v20, v21);
  v24 = v22 + v23[6];
  *v24 = xmmword_1013B6620;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = xmmword_10139BF70;
  *(v22 + v23[7]) = v10 == 3;
  *(v22 + v23[8]) = 1;
  v25 = swift_task_alloc();
  v0[80] = v25;
  *v25 = v0;
  v25[1] = sub_10071D084;
  v26 = v0[43];

  return sub_10121B780((v0 + 20), v26, 3);
}

uint64_t sub_10071C700()
{
  v1 = v0[72];
  v2 = v0[44];
  (*(v0[46] + 56))(v2, 1, 1, v0[45]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_10071C7A0, v1, 0);
}

uint64_t sub_10071C7A0()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);
  v5 = (*(v0 + 244) + 24) & ~*(v0 + 244);
  (*(v0 + 472))(v3, *(v0 + 248), v4);
  v6 = swift_allocObject();
  *(v0 + 624) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 632) = v7;
  *v7 = v0;
  v7[1] = sub_10071C8F4;
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10071E1A0, v6, v9);
}

uint64_t sub_10071C8F4()
{

  return _swift_task_switch(sub_10071CA0C, 0, 0);
}

uint64_t sub_10071CA0C()
{
  v52 = v0;
  v1 = v0[33];
  v2 = (*(v0[35] + 48))(v1, 1, v0[34]);
  v3 = v0[59];
  v4 = v0[48];
  if (v2 == 1)
  {
    v5 = v0[51];
    v6 = v0[31];
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3(v5, v6, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[61];
    v11 = v0[51];
    v12 = v0[48];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v13 = 136315651;
      *(v13 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, v51);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v10(v11, v12);
      v17 = sub_1000136BC(v14, v16, v51);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s No beacon matching %{private,mask.hash}s!", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v10(v11, v12);
    }

    type metadata accessor for OwnerCommandService.Error(0);
    sub_100003E8C(&qword_1016A7818, type metadata accessor for OwnerCommandService.Error, &unk_10140DE5C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }

  else
  {
    v18 = v0[53];
    v19 = v0[49];
    v20 = v0[38];
    v21 = v0[31];
    sub_10002AB74(v1, v0[36], type metadata accessor for OwnedBeaconRecord);
    v22 = 1;
    (*(v19 + 56))(v20, 1, 1, v4);
    v3(v18, v21, v4);
    v23 = sub_100D60CD0();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v29 = v0[48];
    v30 = v0[49];
    v32 = v0[37];
    v31 = v0[38];

    sub_1000D2A70(v31, v32, &qword_1016980D0, &unk_10138F3B0);
    v33 = *(v30 + 48);
    if (v33(v32, 1, v29) == 1)
    {
      v34 = v0[48];
      v36 = v0[37];
      v35 = v0[38];
      UUID.init()();
      sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
      if (v33(v36, 1, v34) != 1)
      {
        sub_10000B3A8(v0[37], &qword_1016980D0, &unk_10138F3B0);
      }
    }

    else
    {
      v39 = v0[75];
      v40 = v0[52];
      v41 = v0[48];
      v42 = v0[37];
      sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      v39(v40, v42, v41);
    }

    v43 = v0[75];
    v44 = v0[53];
    v45 = v0[48];
    v47 = v0[41];
    v46 = v0[42];
    v43(v46, v0[52], v45);
    v43(v46 + v47[5], v44, v45);
    v48 = v46 + v47[6];
    *v48 = xmmword_1013B6620;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = xmmword_10139BF70;
    *(v46 + v47[7]) = v22 & 1;
    *(v46 + v47[8]) = 1;
    v49 = swift_task_alloc();
    v0[82] = v49;
    *v49 = v0;
    v49[1] = sub_10071D628;
    v50 = v0[42];

    return sub_10121B780((v0 + 8), v50, 2);
  }
}

uint64_t sub_10071D084()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_10071DE70;
  }

  else
  {
    v2 = sub_10071D198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D198()
{
  v15 = v0;
  v1 = *(v0 + 376);
  sub_100721D04(*(v0 + 344), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for WildModeAssociationRecord);
  v2 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 192);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 136))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 232);
      if (((v3 >> 60) & 3 | (4 * *(v0 + 240))) == 1)
      {
        v12 = *(v0 + 208);
        v13 = *(v0 + 216);
        sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

        v4 = *(v0 + 8);

        return v4(v12, v13);
      }

      sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v3, *(v0 + 240));
    }
  }

  else
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Invalid iCloudResponse!", v8, 0xCu);
    sub_100007BAC(v9);
  }

  sub_1003FD838();
  swift_allocError();
  *v10 = 3;
  swift_willThrow();

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10071D628()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_10071E008;
  }

  else
  {
    v2 = sub_10071D73C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10071D73C()
{
  v15 = v0;
  v1 = *(v0 + 288);
  sub_100721D04(*(v0 + 336), type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for OwnedBeaconRecord);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  sub_1000D2A70(v0 + 16, v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 136))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 232);
      if (((v3 >> 60) & 3 | (4 * *(v0 + 240))) == 1)
      {
        v12 = *(v0 + 208);
        v13 = *(v0 + 216);
        sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

        v4 = *(v0 + 8);

        return v4(v12, v13);
      }

      sub_10071E1B8(*(v0 + 208), *(v0 + 216), *(v0 + 224), v3, *(v0 + 240));
    }
  }

  else
  {
    sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010135C7F0, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Invalid iCloudResponse!", v8, 0xCu);
    sub_100007BAC(v9);
  }

  sub_1003FD838();
  swift_allocError();
  *v10 = 3;
  swift_willThrow();

  sub_10000B3A8(v0 + 16, &qword_1016A24A8, &unk_1013F60E0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10071DBCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10071DD18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10071DE70()
{
  v1 = v0[47];
  v2 = v0[43];

  sub_100721D04(v2, type metadata accessor for AccessoryCommand);
  sub_100721D04(v1, type metadata accessor for WildModeAssociationRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10071E008()
{
  v1 = v0[42];
  v2 = v0[36];

  sub_100721D04(v1, type metadata accessor for AccessoryCommand);
  sub_100721D04(v2, type metadata accessor for OwnedBeaconRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10071E1B8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
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
      sub_100016590(result, a2);
      a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
      result = a3;

      return sub_100016590(result, a2);
    }

    if (v6 != 4)
    {
      return result;
    }

LABEL_12:

    return sub_100016590(result, a2);
  }

  if (v6 == 6)
  {
    goto LABEL_12;
  }

  if (v6 == 7)
  {
  }

  return result;
}

void sub_10071E318(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for ShareRecord, &unk_1016B1650, &unk_1013B1110, type metadata accessor for ShareRecord, sub_1009F0E90, type metadata accessor for ShareRecord);
}

uint64_t sub_10071E4C8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1006C8A94(v9, v0 + v2, v10, v0 + v5, v0 + v8, v12, v13);
}

uint64_t sub_10071E654(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100014744;

  return sub_1006C9B18(a1, v12, v13, v1 + v4, v1 + v7, v11, v1 + v10, v14);
}

uint64_t sub_10071E860(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for ShareRecord(0);
  *(a1 + *(result + 44)) = v3;
  return result;
}

uint64_t sub_10071E894(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShareRecord(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1006CA104(a1, v7, v1 + v4, v8);
}

uint64_t sub_10071EA4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1006C3530(a1, v4, (v1 + 24));
}

uint64_t sub_10071EAF8(uint64_t a1)
{

  sub_100007BAC((v1 + 24));

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10071EB9C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001E61D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10071EBB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1006C2E40(a1);
}

uint64_t sub_10071EC60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1006C2E20(a1);
}