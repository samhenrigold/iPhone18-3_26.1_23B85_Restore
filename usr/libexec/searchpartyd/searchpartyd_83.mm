uint64_t sub_1009284F8(uint64_t a1)
{
  v2 = sub_10093F404();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10092854C(uint64_t a1)
{
  v2 = sub_10093F2A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100928588(uint64_t a1)
{
  v2 = sub_10093F2A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1009285DC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  v5 = String._bridgeToObjectiveC()();
  [v4 setDateFormat:v5];

  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  qword_10177B6F0 = v4;
}

uint64_t sub_10092873C()
{
  result = Data.init(stringLiteral:)();
  qword_10177B6F8 = result;
  qword_10177B700 = v1;
  return result;
}

uint64_t sub_100928778()
{
  result = Data.init(stringLiteral:)();
  qword_10177B708 = result;
  unk_10177B710 = v1;
  return result;
}

uint64_t sub_1009287B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2968) = v17;
  *(v8 + 3056) = v16;
  *(v8 + 2960) = v15;
  *(v8 + 2944) = v14;
  *(v8 + 2928) = v13;
  *(v8 + 2920) = a8;
  *(v8 + 2912) = a7;
  *(v8 + 2904) = a6;
  *(v8 + 2896) = a5;
  *(v8 + 2888) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 2976) = v9;
  *(v8 + 2984) = *(v9 - 8);
  *(v8 + 2992) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 3000) = v10;
  *(v8 + 3008) = *(v10 - 8);
  *(v8 + 3016) = swift_task_alloc();

  return _swift_task_switch(sub_100928918, 0, 0);
}

uint64_t sub_100928918()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[361];
  v4 = *(v0[366] + 16);

  sub_100165278(v3, (v0 + 2));
  sub_100017D5C(v2, v1);
  v5 = swift_task_alloc();
  v0[378] = v5;
  *v5 = v0;
  v5[1] = sub_100928A14;
  v6 = v0[365];
  v7 = v0[364];
  v8 = v0[363];
  v9 = v0[362];
  v10 = v0[361];

  return sub_100B60CB4(v10, v9, v8, v7, v6, v4);
}

uint64_t sub_100928A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[379] = a1;
  v4[380] = a2;
  v4[381] = a3;

  return _swift_task_switch(sub_100928B1C, 0, 0);
}

uint64_t sub_100928B1C()
{
  v83 = v0;
  v1 = v0[379];
  if (v1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v2 = v0[361];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C448);
    sub_100165278(v2, (v0 + 46));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v82 = v7;
      *v6 = 136315138;
      v8 = Data.hexString.getter();
      v10 = sub_1000136BC(v8, v9, &v82);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = v0[361];
    sub_100165278(v11, (v0 + 90));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    sub_1001652D4(v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v82 = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, &v82);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "serialNumber: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v19 = v0[361];
    sub_100165278(v19, (v0 + 134));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_1001652D4(v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v82 = v23;
      *v22 = 136315138;
      v24 = Data.hexString.getter();
      v26 = sub_1000136BC(v24, v25, &v82);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "ECID: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = v0[361];
    sub_100165278(v27, (v0 + 178));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_1001652D4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82 = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, &v82);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "ChipId: %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = v0[361];
    sub_100165278(v35, (v0 + 222));
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_1001652D4(v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v82 = v39;
      *v38 = 136315138;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, &v82);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "SeedK1: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v43 = v0[361];
    sub_100165278(v43, (v0 + 266));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    sub_1001652D4(v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v82 = v47;
      *v46 = 136315138;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, &v82);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "H1 (hashed C2): %s", v46, 0xCu);
      sub_100007BAC(v47);
    }

    v51 = v0[381];
    v52 = v0[380];
    v53 = v0[379];
    v79 = v0[371];
    v77 = *(v0 + 3056);
    v54 = v0[370];
    v55 = v0[369];
    v56 = v0[368];
    v57 = v0[367];
    v78 = v0[366];
    v58 = v0[361];

    sub_100017D5C(v52, v51);
    sub_1004FBDB4(v1, v52, v51, 0, v54);
    sub_100165328(v53, v52, v51);
    v59 = swift_allocObject();
    v59[2] = v57;
    v59[3] = v56;
    v59[4] = v55;
    v60 = v57;

    Future.addFailure(block:)();

    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v56;
    *(v61 + 32) = v55;
    *(v61 + 40) = v77;
    memcpy((v61 + 48), v58, 0x160uLL);
    *(v61 + 400) = v78;
    *(v61 + 408) = v79;
    sub_100165278(v58, (v0 + 310));
    v62 = v60;

    Future.addSuccess(block:)();

    sub_100165328(v53, v52, v51);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000076D4(v63, qword_10177C448);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Could not create pairing lock request", v66, 2u);
    }

    v67 = v0[377];
    v80 = v0[376];
    v81 = v0[375];
    v68 = v0[374];
    v69 = v0[373];
    v70 = v0[372];
    v71 = v0[369];
    v72 = v0[368];

    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v71;
    v0[358] = sub_10093E7F0;
    v0[359] = v73;
    v0[354] = _NSConcreteStackBlock;
    v0[355] = 1107296256;
    v0[356] = sub_100006684;
    v0[357] = &unk_10163D850;
    v74 = _Block_copy(v0 + 354);

    static DispatchQoS.unspecified.getter();
    v0[360] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v74);
    (*(v69 + 8))(v68, v70);
    (*(v80 + 8))(v67, v81);
  }

  v75 = v0[1];

  return v75();
}

uint64_t sub_10092950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, const void *a6)
{
  v291 = a6;
  v288 = a5;
  v300 = a4;
  v299 = a3;
  v301 = a2;
  v297 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  __chkstk_darwin(v297);
  v289 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v304 = v8;
  v305 = v9;
  __chkstk_darwin(v8);
  v303 = &v280 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for DispatchQoS();
  v11 = *(v307 - 8);
  __chkstk_darwin(v307);
  v306 = &v280 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for Date();
  v283 = *(v287 - 8);
  v13 = __chkstk_darwin(v287);
  v285 = (&v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v284 = &v280 - v16;
  v17 = __chkstk_darwin(v15);
  v282 = &v280 - v18;
  __chkstk_darwin(v17);
  v286 = &v280 - v19;
  v20 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v21 = __chkstk_darwin(v20 - 8);
  v295 = &v280 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v292 = (&v280 - v23);
  v24 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v24 - 8);
  v296 = (&v280 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v26 = *(v298 - 8);
  v27 = __chkstk_darwin(v298);
  v29 = &v280 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v280 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v280 - v34;
  __chkstk_darwin(v33);
  v37 = &v280 - v36;
  v38 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v39 = __chkstk_darwin(v38 - 8);
  v290 = &v280 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v294 = &v280 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v280 - v44;
  __chkstk_darwin(v43);
  v47 = &v280 - v46;
  v308 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v48 = v47;
  ServerStatusCode.init(rawValue:)();
  v49 = type metadata accessor for ServerStatusCode();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v48, 1, v49);
  v302 = v48;
  if (v51 == 1)
  {
LABEL_2:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177C448);
    v53 = v298;
    (*(v26 + 16))(v29, v308, v298);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v11;
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v56 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v26 + 8))(v29, v53);
      v62 = sub_1000136BC(v59, v61, &aBlock);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Pairing lock failed: %{public}s", v56, 0xCu);
      sub_100007BAC(v58);
      v11 = v57;
    }

    else
    {

      (*(v26 + 8))(v29, v53);
    }

    v75 = swift_allocObject();
    v76 = v300;
    *(v75 + 16) = v299;
    *(v75 + 24) = v76;
    v316 = sub_10093F824;
    v317 = v75;
    aBlock = _NSConcreteStackBlock;
    v313 = 1107296256;
    v77 = &unk_10163D8F0;
    goto LABEL_13;
  }

  v293 = v11;
  sub_1000D2A70(v48, v45, &qword_101698638, &qword_1013AC450);
  v281 = *(v50 + 88);
  v63 = v281(v45, v49);
  if (v63 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    v65 = sub_1000076D4(v64, qword_10177C448);
    v66 = v298;
    (*(v26 + 16))(v37, v308, v298);
    v295 = v65;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock = v70;
      *v69 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      (*(v26 + 8))(v37, v66);
      v74 = sub_1000136BC(v71, v73, &aBlock);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "Pairing success: %{public}s", v69, 0xCu);
      sub_100007BAC(v70);
    }

    else
    {

      (*(v26 + 8))(v37, v66);
    }

    v94 = v297;
    v95 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v97 = v96;
    static String.Encoding.utf8.getter();
    v98 = String.init(data:encoding:)();
    v100 = v99;
    sub_100016590(v95, v97);
    if (v100)
    {

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        aBlock = v104;
        *v103 = 136315138;
        v105 = sub_1000136BC(v98, v100, &aBlock);

        *(v103 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v101, v102, "response data: %s", v103, 0xCu);
        sub_100007BAC(v104);
        v94 = v297;
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v116 = JSONDecoder.init()();
    v117 = swift_allocBox();
    v119 = v118;
    v120 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v122 = v121;
    sub_10093C818(&qword_101698648, type metadata accessor for AirPodsLEPairingLockCheckResponse, &unk_1013F4AB4);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v298 = v119;
    sub_100016590(v120, v122);
    v123 = v292;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v124 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v125 = *(v124 - 8);
    if ((*(v125 + 48))(v123, 1, v124) == 1)
    {
      sub_10000B3A8(v123, &qword_101698640, &unk_10138FFA0);
      v126 = v116;
    }

    else
    {
      v147 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v148 = v123;
      v149 = v147;
      v151 = v150;
      (*(v125 + 8))(v148, v124);
      v126 = v116;
      if ((v151 & 1) == 0)
      {
        v294 = v116;
        v210 = Logger.logObject.getter();
        v211 = static os_log_type_t.default.getter();
        v191 = v117;
        if (os_log_type_enabled(v210, v211))
        {
          v212 = swift_slowAlloc();
          *v212 = 134217984;
          *(v212 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v210, v211, "Server epoch: %lld", v212, 0xCu);
        }

        v193 = v298;
        goto LABEL_70;
      }
    }

    v152 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (!*(v152 + 16) || (v153 = sub_100771D58(1702125892, 0xE400000000000000), (v154 & 1) == 0))
    {

      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&_mh_execute_header, v194, v195, "Server response is missing Date header!", v196, 2u);
      }

      v197 = swift_allocObject();
      v198 = v300;
      *(v197 + 16) = v299;
      *(v197 + 24) = v198;
      v316 = sub_10093E974;
      v317 = v197;
      aBlock = _NSConcreteStackBlock;
      v313 = 1107296256;
      v314 = sub_100006684;
      v315 = &unk_10163DAD0;
      v199 = _Block_copy(&aBlock);

      v200 = v306;
      static DispatchQoS.unspecified.getter();
      v309 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v202 = v303;
      v201 = v304;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v199);
      (*(v305 + 8))(v202, v201);
      (*(v293 + 8))(v200, v307);
      goto LABEL_86;
    }

    v296 = v117;
    v155 = (*(v152 + 56) + 16 * v153);
    v157 = *v155;
    v156 = v155[1];
    swift_bridgeObjectRetain_n();

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      aBlock = v161;
      *v160 = 136446210;
      *(v160 + 4) = sub_1000136BC(v157, v156, &aBlock);
      _os_log_impl(&_mh_execute_header, v158, v159, "Server date: %{public}s", v160, 0xCu);
      sub_100007BAC(v161);
    }

    v162 = v285;
    v163 = v284;
    if (qword_101694AB0 != -1)
    {
      swift_once();
    }

    v164 = qword_10177B6F0;
    v165 = String._bridgeToObjectiveC()();

    v166 = [v164 dateFromString:v165];

    if (!v166)
    {
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&_mh_execute_header, v213, v214, "Unable to parse server Date!", v215, 2u);
      }

      v216 = swift_allocObject();
      v217 = v300;
      *(v216 + 16) = v299;
      *(v216 + 24) = v217;
      v316 = sub_10093E9A4;
      v317 = v216;
      aBlock = _NSConcreteStackBlock;
      v313 = 1107296256;
      v314 = sub_100006684;
      v315 = &unk_10163DB20;
      v218 = _Block_copy(&aBlock);

      v219 = v306;
      static DispatchQoS.unspecified.getter();
      v309 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v221 = v303;
      v220 = v304;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v218);

      (*(v305 + 8))(v221, v220);
      (*(v293 + 8))(v219, v307);
      goto LABEL_86;
    }

    v294 = v126;
    v167 = v286;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v168 = v283;
    v169 = *(v283 + 16);
    v170 = v282;
    v171 = v287;
    v169(v282, v167, v287);
    v169(v163, v167, v171);
    v169(v162, v167, v171);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      aBlock = v292;
      *v174 = 136446722;
      sub_10093C818(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v290) = v173;
      v175 = dispatch thunk of CustomStringConvertible.description.getter();
      v177 = v176;
      v178 = v162;
      v180 = v168 + 8;
      v179 = *(v168 + 8);
      v308 = v180 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v179(v170, v287);
      v181 = sub_1000136BC(v175, v177, &aBlock);

      *(v174 + 4) = v181;
      *(v174 + 12) = 2048;
      v182 = Date.epoch.getter();
      v179(v163, v287);
      *(v174 + 14) = v182;
      *(v174 + 22) = 2082;
      v285 = v172;
      v183 = v178;
      v309 = Date.epoch.getter();
      sub_100102194();
      v184 = FixedWidthInteger.data.getter();
      v186 = v185;
      v187 = Data.hexString.getter();
      v189 = v188;
      v171 = v287;
      sub_100016590(v184, v186);
      v179(v183, v171);
      v190 = sub_1000136BC(v187, v189, &aBlock);
      v191 = v296;

      *(v174 + 24) = v190;
      v192 = v285;
      _os_log_impl(&_mh_execute_header, v285, v290, "pairingEpoch: %{public}s [%lld/%{public}s]", v174, 0x20u);
      swift_arrayDestroy();

      v193 = v298;
    }

    else
    {
      v222 = *(v168 + 8);
      v308 = (v168 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v222(v163, v171);

      v222(v162, v171);
      v222(v170, v171);
      v179 = v222;
      v193 = v298;
      v191 = v296;
    }

    v223 = v286;
    v149 = Date.epoch.getter();
    v179(v223, v171);
    v94 = v297;
LABEL_70:
    *(v193 + *(v94 + 56)) = v149;
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.default.getter();
    v226 = os_log_type_enabled(v224, v225);
    v296 = v191;
    if (v226)
    {
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      aBlock = v228;
      *v227 = 141558275;
      *(v227 + 4) = 1752392040;
      *(v227 + 12) = 2081;
      v229 = "ATTEST_AUTH_TOKEN";
      if (v288)
      {
        v229 = "ATTEST_AUTH_NOTKN";
      }

      v230 = sub_1000136BC(0xD000000000000011, (v229 - 32) | 0x8000000000000000, &aBlock);

      *(v227 + 14) = v230;
      _os_log_impl(&_mh_execute_header, v224, v225, "authSuffix: %{private,mask.hash}s", v227, 0x16u);
      sub_100007BAC(v228);
    }

    else
    {
    }

    v231 = v298;
    v232 = v289;
    sub_10093C940(v298, v289, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v233 = sub_100939A24(v291, v232);
    v235 = v234;
    sub_10093C9A8(v232, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v236 = String.utf8Data.getter();
    v238 = v237;

    v309 = v233;
    v310 = v235;
    v315 = &type metadata for Data;
    v316 = &protocol witness table for Data;
    aBlock = v236;
    v313 = v238;
    v239 = sub_1000035D0(&aBlock, &type metadata for Data);
    v240 = *v239;
    v241 = v239[1];
    sub_100017D5C(v233, v235);
    sub_100017D5C(v236, v238);
    sub_100017DB0(v240, v241, &v309);
    sub_100016590(v236, v238);
    sub_100016590(v233, v235);
    sub_100007BAC(&aBlock);
    v242 = v309;
    v243 = v310;

    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.debug.getter();

    v246 = os_log_type_enabled(v244, v245);
    v308 = v243;
    if (v246)
    {
      v247 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      aBlock = v248;
      *v247 = 136315138;
      swift_beginAccess();
      v249 = *(v231 + 64);
      v250 = *(v231 + 72);
      sub_100017D5C(v249, v250);
      v251 = Data.hexString.getter();
      v253 = v252;
      sub_100016590(v249, v250);
      v254 = sub_1000136BC(v251, v253, &aBlock);

      *(v247 + 4) = v254;
      _os_log_impl(&_mh_execute_header, v244, v245, "S3: %s", v247, 0xCu);
      sub_100007BAC(v248);
      v243 = v308;
    }

    sub_100017D5C(v242, v243);
    v255 = Logger.logObject.getter();
    v256 = static os_log_type_t.debug.getter();
    sub_100016590(v242, v243);
    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      aBlock = v258;
      *v257 = 136315138;
      v259 = Data.hexString.getter();
      v261 = sub_1000136BC(v259, v260, &aBlock);

      *(v257 + 4) = v261;
      _os_log_impl(&_mh_execute_header, v255, v256, "dataForSignatureVerification: %s", v257, 0xCu);
      sub_100007BAC(v258);
    }

    v262 = *(v291 + 34);
    v263 = *(v291 + 35);
    v264 = v262;
    v265 = v263;
    if (v263 >> 60 == 15)
    {
      if (qword_1016946D8 != -1)
      {
        swift_once();
      }

      v264 = qword_10177ACE0;
      v265 = *algn_10177ACE8;
      sub_100017D5C(qword_10177ACE0, *algn_10177ACE8);
    }

    v266 = v298;
    swift_beginAccess();
    v267 = *(v266 + 64);
    v268 = *(v266 + 72);
    sub_10002E98C(v262, v263);
    sub_100017D5C(v267, v268);
    v269 = sub_100A74FAC(v264, v265, v242, v308, v267, v268, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    v298 = v242;
    sub_100016590(v267, v268);
    sub_100016590(v264, v265);
    v270 = static os_log_type_t.default.getter();
    v271 = v293;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v272 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v273 = swift_allocObject();
    *(v273 + 16) = xmmword_101385D80;
    *(v273 + 56) = &type metadata for Bool;
    *(v273 + 64) = &protocol witness table for Bool;
    *(v273 + 32) = v269 & 1;
    os_log(_:dso:log:_:_:)(v270, &_mh_execute_header, v272, "Signature S3 verified? %d", v280);

    v274 = swift_allocObject();
    v275 = v300;
    v274[2] = v299;
    v274[3] = v275;
    v274[4] = v296;
    v316 = sub_10093EA24;
    v317 = v274;
    aBlock = _NSConcreteStackBlock;
    v313 = 1107296256;
    v314 = sub_100006684;
    v315 = &unk_10163DB70;
    v276 = _Block_copy(&aBlock);

    v277 = v306;
    static DispatchQoS.unspecified.getter();
    v311 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v279 = v303;
    v278 = v304;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v276);
    sub_100016590(v298, v308);
    (*(v305 + 8))(v279, v278);
    (*(v271 + 8))(v277, v307);
LABEL_86:

    goto LABEL_14;
  }

  if (v63 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v63 == enum case for ServerStatusCode.serverConflict(_:))
    {
      v11 = v293;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_1000076D4(v106, qword_10177C448);
      v107 = v298;
      (*(v26 + 16))(v35, v308, v298);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock = v111;
        *v110 = 136446210;
        sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = v113;
        (*(v26 + 8))(v35, v107);
        v115 = sub_1000136BC(v112, v114, &aBlock);
        v11 = v293;

        *(v110 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v108, v109, "Linked to another Apple ID. %{public}s", v110, 0xCu);
        sub_100007BAC(v111);
      }

      else
      {

        (*(v26 + 8))(v35, v107);
      }

      v203 = swift_allocObject();
      v204 = v300;
      *(v203 + 16) = v299;
      *(v203 + 24) = v204;
      v316 = sub_10093E914;
      v317 = v203;
      aBlock = _NSConcreteStackBlock;
      v313 = 1107296256;
      v77 = &unk_10163DA30;
      goto LABEL_13;
    }

    (*(v50 + 8))(v45, v49);
    v11 = v293;
    goto LABEL_2;
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  v84 = sub_1000076D4(v83, qword_10177C448);
  v85 = v298;
  (*(v26 + 16))(v32, v308, v298);
  v297 = v84;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v292 = v88;
    v296 = swift_slowAlloc();
    aBlock = v296;
    *v88 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    (*(v26 + 8))(v32, v85);
    v92 = sub_1000136BC(v89, v91, &aBlock);

    v93 = v292;
    *(v292 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v86, v87, "Pairing not allowed! %{public}s", v93, 0xCu);
    sub_100007BAC(v296);
  }

  else
  {

    (*(v26 + 8))(v32, v85);
  }

  v127 = v295;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v128 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v129 = *(v128 - 8);
  if ((*(v129 + 48))(v127, 1, v128) == 1)
  {
    sub_10000B3A8(v127, &qword_101698640, &unk_10138FFA0);
    v130 = v294;
    (*(v50 + 56))(v294, 1, 1, v49);
    sub_10000B3A8(v130, &qword_101698638, &qword_1013AC450);
    v11 = v293;
LABEL_36:
    v131 = swift_allocObject();
    v132 = v300;
    *(v131 + 16) = v299;
    *(v131 + 24) = v132;
    v316 = sub_10093E884;
    v317 = v131;
    aBlock = _NSConcreteStackBlock;
    v313 = 1107296256;
    v77 = &unk_10163D940;
LABEL_13:
    v314 = sub_100006684;
    v315 = v77;
    v78 = _Block_copy(&aBlock);

    v79 = v306;
    static DispatchQoS.unspecified.getter();
    v309 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v81 = v303;
    v80 = v304;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v78);
    (*(v305 + 8))(v81, v80);
    (*(v11 + 8))(v79, v307);
    goto LABEL_14;
  }

  v133 = v294;
  FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
  (*(v129 + 8))(v127, v128);
  (*(v50 + 56))(v133, 0, 1, v49);
  v134 = v290;
  sub_1000D2AD8(v133, v290, &qword_101698638, &qword_1013AC450);
  v135 = v281(v134, v49);
  if (v135 != enum case for ServerStatusCode.preconditionFailed(_:))
  {
    v11 = v293;
    if (v135 == enum case for ServerStatusCode.locked(_:))
    {
      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&_mh_execute_header, v205, v206, "Pairing is pending from another device", v207, 2u);
      }

      v208 = swift_allocObject();
      v209 = v300;
      *(v208 + 16) = v299;
      *(v208 + 24) = v209;
      v316 = sub_10093E8B4;
      v317 = v208;
      aBlock = _NSConcreteStackBlock;
      v313 = 1107296256;
      v77 = &unk_10163D990;
      goto LABEL_13;
    }

    (*(v50 + 8))(v134, v49);
    goto LABEL_36;
  }

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.error.getter();
  v138 = os_log_type_enabled(v136, v137);
  v139 = v293;
  if (v138)
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&_mh_execute_header, v136, v137, "Pairing has been completed by another device", v140, 2u);
  }

  v141 = swift_allocObject();
  v142 = v300;
  *(v141 + 16) = v299;
  *(v141 + 24) = v142;
  v316 = sub_10093E8E4;
  v317 = v141;
  aBlock = _NSConcreteStackBlock;
  v313 = 1107296256;
  v314 = sub_100006684;
  v315 = &unk_10163D9E0;
  v143 = _Block_copy(&aBlock);

  v144 = v306;
  static DispatchQoS.unspecified.getter();
  v309 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v146 = v303;
  v145 = v304;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v143);
  (*(v305 + 8))(v146, v145);
  (*(v139 + 8))(v144, v307);
LABEL_14:

  return sub_10000B3A8(v302, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_10092C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 3160) = v16;
  *(v8 + 3248) = v15;
  *(v8 + 3152) = v14;
  *(v8 + 3136) = v13;
  *(v8 + 3128) = a8;
  *(v8 + 3120) = a7;
  *(v8 + 3112) = a6;
  *(v8 + 3104) = a5;
  *(v8 + 3096) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 3168) = v9;
  *(v8 + 3176) = *(v9 - 8);
  *(v8 + 3184) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 3192) = v10;
  *(v8 + 3200) = *(v10 - 8);
  *(v8 + 3208) = swift_task_alloc();

  return _swift_task_switch(sub_10092C2BC, 0, 0);
}

uint64_t sub_10092C2BC()
{
  v1 = v0[387];
  v2 = *(v0[390] + 16);

  sub_10093DC08(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[402] = v3;
  *v3 = v0;
  v3[1] = sub_10092C394;
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[387];

  return sub_100FCCEC0(v6, v5, v4, v2);
}

uint64_t sub_10092C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[403] = a1;
  v4[404] = a2;
  v4[405] = a3;

  return _swift_task_switch(sub_10092C49C, 0, 0);
}

uint64_t sub_10092C49C()
{
  v91 = v0;
  v1 = v0[403];
  if (v1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v2 = v0[387];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C448);
    sub_10093DC08(v2, (v0 + 44));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_10093DC70(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v90 = v7;
      *v6 = 136315138;
      v8 = Data.hexString.getter();
      v10 = sub_1000136BC(v8, v9, &v90);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = v0[387];
    sub_10093DC08(v11, (v0 + 86));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    sub_10093DC70(v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v90 = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, &v90);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "serialNumber: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v19 = v0[387];
    sub_10093DC08(v19, (v0 + 128));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_10093DC70(v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v90 = v23;
      *v22 = 136315138;
      v24 = Data.hexString.getter();
      v26 = sub_1000136BC(v24, v25, &v90);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "AltSerialNumber: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = v0[387];
    sub_10093DC08(v27, (v0 + 170));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_10093DC70(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v90 = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, &v90);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "CSR: %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = v0[387];
    sub_10093DC08(v35, (v0 + 212));
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_10093DC70(v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v90 = v39;
      *v38 = 136315138;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, &v90);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Certs: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v43 = v0[387];
    sub_10093DC08(v43, (v0 + 254));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    sub_10093DC70(v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v90 = v47;
      *v46 = 136315138;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, &v90);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "SeedK1: %s", v46, 0xCu);
      sub_100007BAC(v47);
    }

    v51 = v0[387];
    sub_10093DC08(v51, (v0 + 296));
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    sub_10093DC70(v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v90 = v55;
      *v54 = 136315138;
      v56 = Data.hexString.getter();
      v58 = sub_1000136BC(v56, v57, &v90);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "H1 (hashed C2): %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    v59 = v0[405];
    v60 = v0[404];
    v61 = v0[403];
    v87 = v0[395];
    v86 = *(v0 + 3248);
    v62 = v0[394];
    v63 = v0[393];
    v64 = v0[392];
    v65 = v0[391];
    v85 = v0[390];
    v66 = v0[387];

    sub_100017D5C(v60, v59);
    sub_1004FE550(v1, v60, v59, 0, v62);
    sub_100165328(v61, v60, v59);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v64;
    v67[4] = v63;
    v68 = v65;

    Future.addFailure(block:)();

    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v64;
    *(v69 + 32) = v63;
    *(v69 + 40) = v86;
    *(v69 + 48) = v85;
    memcpy((v69 + 56), v66, 0x150uLL);
    *(v69 + 392) = v87;
    sub_10093DC08(v66, (v0 + 338));
    v70 = v68;

    Future.addSuccess(block:)();

    sub_100165328(v61, v60, v59);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000076D4(v71, qword_10177C448);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Could not create pairing lock request", v74, 2u);
    }

    v75 = v0[401];
    v88 = v0[400];
    v89 = v0[399];
    v76 = v0[398];
    v77 = v0[397];
    v78 = v0[396];
    v79 = v0[393];
    v80 = v0[392];

    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v79;
    v0[384] = sub_10093DC40;
    v0[385] = v81;
    v0[380] = _NSConcreteStackBlock;
    v0[381] = 1107296256;
    v0[382] = sub_100006684;
    v0[383] = &unk_10163CBF8;
    v82 = _Block_copy(v0 + 380);

    static DispatchQoS.unspecified.getter();
    v0[386] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v82);
    (*(v77 + 8))(v76, v78);
    (*(v88 + 8))(v75, v89);
  }

  v83 = v0[1];

  return v83();
}

uint64_t sub_10092CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, const void *a7)
{
  v304 = a7;
  v302 = a5;
  v314 = a4;
  v313 = a3;
  v315 = a2;
  v311 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  __chkstk_darwin(v311);
  v303 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v318 = v9;
  v319 = v10;
  __chkstk_darwin(v9);
  v317 = &v294 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for DispatchQoS();
  v12 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for Date();
  v297 = *(v301 - 8);
  v14 = __chkstk_darwin(v301);
  v298 = &v294 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v299 = &v294 - v17;
  v18 = __chkstk_darwin(v16);
  v296 = &v294 - v19;
  __chkstk_darwin(v18);
  v300 = &v294 - v20;
  v21 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v22 = __chkstk_darwin(v21 - 8);
  v308 = &v294 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v306 = (&v294 - v24);
  v25 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v25 - 8);
  v310 = (&v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v312 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v27 = *(v312 - 8);
  v28 = __chkstk_darwin(v312);
  v30 = &v294 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v294 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v294 - v35;
  __chkstk_darwin(v34);
  v38 = &v294 - v37;
  v39 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v40 = __chkstk_darwin(v39 - 8);
  v305 = &v294 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v307 = (&v294 - v43);
  v44 = __chkstk_darwin(v42);
  v46 = &v294 - v45;
  __chkstk_darwin(v44);
  v48 = &v294 - v47;
  v322 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v49 = v48;
  ServerStatusCode.init(rawValue:)();
  v50 = type metadata accessor for ServerStatusCode();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v49, 1, v50);
  v316 = v49;
  if (v52 == 1)
  {
LABEL_2:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177C448);
    v54 = v312;
    (*(v27 + 16))(v30, v322, v312);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v57 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v12;
      v62 = v61;
      (*(v27 + 8))(v30, v54);
      v63 = sub_1000136BC(v59, v62, &aBlock);
      v12 = v60;

      *(v57 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "Pairing lock failed: %{public}s", v57, 0xCu);
      sub_100007BAC(v58);
    }

    else
    {

      (*(v27 + 8))(v30, v54);
    }

    v79 = swift_allocObject();
    v80 = v314;
    *(v79 + 16) = v313;
    *(v79 + 24) = v80;
    v330 = sub_10093F814;
    v331 = v79;
    aBlock = _NSConcreteStackBlock;
    v327 = 1107296256;
    v81 = &unk_10163CC98;
    goto LABEL_13;
  }

  v309 = v12;
  sub_1000D2A70(v49, v46, &qword_101698638, &qword_1013AC450);
  v295 = *(v51 + 88);
  v64 = v295(v46, v50);
  if (v64 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    v66 = sub_1000076D4(v65, qword_10177C448);
    v67 = v312;
    (*(v27 + 16))(v38, v322, v312);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v309;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v308 = v66;
      v74 = v73;
      aBlock = v73;
      *v72 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (*(v27 + 8))(v38, v67);
      v78 = sub_1000136BC(v75, v77, &aBlock);

      *(v72 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v68, v69, "Pairing success: %{public}s", v72, 0xCu);
      sub_100007BAC(v74);
      v66 = v308;
    }

    else
    {

      (*(v27 + 8))(v38, v67);
    }

    v98 = v311;
    v99 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v101 = v100;
    static String.Encoding.utf8.getter();
    v102 = String.init(data:encoding:)();
    v104 = v103;
    sub_100016590(v99, v101);
    v105 = v71;
    if (v104)
    {

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock = v109;
        *v108 = 136315138;
        v110 = sub_1000136BC(v102, v104, &aBlock);

        *(v108 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v106, v107, "response data: %s", v108, 0xCu);
        sub_100007BAC(v109);
        v98 = v311;
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v121 = JSONDecoder.init()();
    v322 = swift_allocBox();
    v123 = v122;
    v124 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v126 = v125;
    sub_10093C818(&qword_1016AED10, type metadata accessor for AirPodsSWPairingLockCheckResponse, &unk_1013EBFB4);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v312 = v123;
    sub_100016590(v124, v126);
    v141 = v306;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v142 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v143 = *(v142 - 8);
    if ((*(v143 + 48))(v141, 1, v142) == 1)
    {
      sub_10000B3A8(v141, &qword_101698640, &unk_10138FFA0);
    }

    else
    {
      v164 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v165 = v141;
      v166 = v164;
      v168 = v167;
      (*(v143 + 8))(v165, v142);
      if ((v168 & 1) == 0)
      {
        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          *v231 = 134217984;
          *(v231 + 4) = v166;
          _os_log_impl(&_mh_execute_header, v229, v230, "Server epoch: %lld", v231, 0xCu);
        }

        v232 = v312;
        goto LABEL_76;
      }
    }

    v169 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v169 + 16) && (v170 = sub_100771D58(1702125892, 0xE400000000000000), (v171 & 1) != 0))
    {
      v172 = (*(v169 + 56) + 16 * v170);
      v174 = *v172;
      v173 = v172[1];
      swift_bridgeObjectRetain_n();

      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        aBlock = v178;
        *v177 = 136446210;
        *(v177 + 4) = sub_1000136BC(v174, v173, &aBlock);
        _os_log_impl(&_mh_execute_header, v175, v176, "Server date: %{public}s", v177, 0xCu);
        sub_100007BAC(v178);
        v105 = v309;
      }

      v179 = v300;
      v180 = v299;
      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v181 = qword_10177B6F0;
      v182 = String._bridgeToObjectiveC()();

      v183 = [v181 dateFromString:v182];

      if (v183)
      {
        v310 = v121;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v184 = v297;
        v185 = *(v297 + 16);
        v186 = v296;
        v187 = v301;
        v185(v296, v179, v301);
        v185(v180, v179, v187);
        v188 = v298;
        v185(v298, v179, v187);
        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v307 = swift_slowAlloc();
          aBlock = v307;
          *v191 = 136446722;
          sub_10093C818(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v306 = v189;
          v192 = dispatch thunk of CustomStringConvertible.description.getter();
          v194 = v193;
          v195 = v186;
          v196 = *(v184 + 8);
          v308 = ((v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v196(v195, v301);
          v197 = sub_1000136BC(v192, v194, &aBlock);

          *(v191 + 4) = v197;
          *(v191 + 12) = 2048;
          v198 = Date.epoch.getter();
          v196(v180, v301);
          *(v191 + 14) = v198;
          *(v191 + 22) = 2082;
          v199 = v298;
          v323 = Date.epoch.getter();
          sub_100102194();
          v200 = FixedWidthInteger.data.getter();
          v202 = v201;
          v203 = Data.hexString.getter();
          LODWORD(v305) = v190;
          v204 = v66;
          v205 = v203;
          v207 = v206;
          v208 = v202;
          v187 = v301;
          sub_100016590(v200, v208);
          v209 = v199;
          v179 = v300;
          v196(v209, v187);
          v210 = v205;
          v66 = v204;
          v211 = sub_1000136BC(v210, v207, &aBlock);

          *(v191 + 24) = v211;
          v212 = v306;
          _os_log_impl(&_mh_execute_header, v306, v305, "pairingEpoch: %{public}s [%lld/%{public}s]", v191, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v239 = v186;
          v196 = *(v184 + 8);
          v308 = ((v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v196(v180, v187);

          v196(v188, v187);
          v196(v239, v187);
        }

        v232 = v312;
        v166 = Date.epoch.getter();
        v196(v179, v187);
        v98 = v311;
LABEL_76:
        *(v232 + *(v98 + 44)) = v166;
        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          aBlock = v243;
          *v242 = 141558275;
          *(v242 + 4) = 1752392040;
          *(v242 + 12) = 2081;
          v244 = "ATTEST_AUTH_TOKEN";
          if (v302)
          {
            v244 = "ATTEST_AUTH_NOTKN";
          }

          v245 = sub_1000136BC(0xD000000000000011, (v244 - 32) | 0x8000000000000000, &aBlock);

          *(v242 + 14) = v245;
          _os_log_impl(&_mh_execute_header, v240, v241, "authSuffix: %{private,mask.hash}s", v242, 0x16u);
          sub_100007BAC(v243);
        }

        else
        {
        }

        v246 = v312;
        v247 = v303;
        sub_10093C940(v312, v303, type metadata accessor for AirPodsSWPairingLockCheckResponse);
        v248 = sub_10093CF98(v304, v247);
        v250 = v249;
        sub_10093C9A8(v247, type metadata accessor for AirPodsSWPairingLockCheckResponse);
        v251 = String.utf8Data.getter();
        v253 = v252;

        v323 = v248;
        v324 = v250;
        v329 = &type metadata for Data;
        v330 = &protocol witness table for Data;
        aBlock = v251;
        v327 = v253;
        v254 = sub_1000035D0(&aBlock, &type metadata for Data);
        v255 = *v254;
        v256 = v254[1];
        sub_100017D5C(v248, v250);
        sub_100017D5C(v251, v253);
        sub_100017DB0(v255, v256, &v323);
        v310 = 0;
        sub_100016590(v251, v253);
        sub_100016590(v248, v250);
        sub_100007BAC(&aBlock);
        v257 = v323;
        v311 = v324;

        v258 = Logger.logObject.getter();
        v259 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v258, v259))
        {
          v260 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          aBlock = v261;
          *v260 = 136315138;
          swift_beginAccess();
          v308 = v66;
          v262 = *(v246 + 48);
          v263 = *(v246 + 56);
          sub_100017D5C(v262, v263);
          v264 = Data.hexString.getter();
          v266 = v265;
          sub_100016590(v262, v263);
          v267 = sub_1000136BC(v264, v266, &aBlock);

          *(v260 + 4) = v267;
          _os_log_impl(&_mh_execute_header, v258, v259, "S3: %s", v260, 0xCu);
          sub_100007BAC(v261);
        }

        v268 = v311;
        sub_100017D5C(v257, v311);
        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.debug.getter();
        sub_100016590(v257, v268);
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          aBlock = v272;
          *v271 = 136315138;
          v273 = Data.hexString.getter();
          v275 = sub_1000136BC(v273, v274, &aBlock);

          *(v271 + 4) = v275;
          _os_log_impl(&_mh_execute_header, v269, v270, "dataForSignatureVerification: %s", v271, 0xCu);
          sub_100007BAC(v272);
        }

        v276 = v312;
        if (qword_101694AC0 != -1)
        {
          swift_once();
        }

        v277 = qword_10177B708;
        v278 = unk_10177B710;
        swift_beginAccess();
        v279 = *(v276 + 48);
        v280 = *(v276 + 56);
        sub_100017D5C(v279, v280);
        v281 = v310;
        v282 = sub_100A74FAC(v277, v278, v257, v268, v279, v280, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
        if (v281)
        {
          sub_100016590(v279, v280);
          sub_100016590(v257, v268);

          v134 = v309;
          swift_errorRetain();
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            aBlock = v130;
            *v129 = 136446210;
            v325 = v281;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v131 = String.init<A>(describing:)();
            v133 = sub_1000136BC(v131, v132, &aBlock);

            *(v129 + 4) = v133;
            v134 = v309;
            _os_log_impl(&_mh_execute_header, v127, v128, "Decode error: %{public}s", v129, 0xCu);
            sub_100007BAC(v130);
          }

          v135 = swift_allocObject();
          v136 = v314;
          *(v135 + 16) = v313;
          *(v135 + 24) = v136;
          v330 = sub_10093DDC8;
          v331 = v135;
          aBlock = _NSConcreteStackBlock;
          v327 = 1107296256;
          v328 = sub_100006684;
          v329 = &unk_10163CE28;
          v137 = _Block_copy(&aBlock);

          v138 = v320;
          static DispatchQoS.unspecified.getter();
          v325 = _swiftEmptyArrayStorage;
          sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v140 = v317;
          v139 = v318;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v137);

          (*(v319 + 8))(v140, v139);
          (*(v134 + 8))(v138, v321);
          goto LABEL_14;
        }

        v283 = v282;
        v312 = v257;
        sub_100016590(v279, v280);
        v284 = static os_log_type_t.default.getter();
        v285 = v309;
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        v286 = qword_10177C410;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v287 = swift_allocObject();
        *(v287 + 16) = xmmword_101385D80;
        *(v287 + 56) = &type metadata for Bool;
        *(v287 + 64) = &protocol witness table for Bool;
        *(v287 + 32) = v283 & 1;
        os_log(_:dso:log:_:_:)(v284, &_mh_execute_header, v286, "Signature S3 verified? %d", v294);

        v288 = swift_allocObject();
        v289 = v314;
        v288[2] = v313;
        v288[3] = v289;
        v288[4] = v322;
        v330 = sub_10093DE58;
        v331 = v288;
        aBlock = _NSConcreteStackBlock;
        v327 = 1107296256;
        v328 = sub_100006684;
        v329 = &unk_10163CF18;
        v290 = _Block_copy(&aBlock);

        v291 = v320;
        static DispatchQoS.unspecified.getter();
        v325 = _swiftEmptyArrayStorage;
        sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v293 = v317;
        v292 = v318;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v290);
        sub_100016590(v312, v311);
        (*(v319 + 8))(v293, v292);
        (*(v285 + 8))(v291, v321);
LABEL_60:

        goto LABEL_14;
      }

      v233 = Logger.logObject.getter();
      v234 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        *v235 = 0;
        _os_log_impl(&_mh_execute_header, v233, v234, "Unable to parse server Date!", v235, 2u);
      }

      v236 = swift_allocObject();
      v237 = v314;
      *(v236 + 16) = v313;
      *(v236 + 24) = v237;
      v330 = sub_10093DE28;
      v331 = v236;
      aBlock = _NSConcreteStackBlock;
      v327 = 1107296256;
      v328 = sub_100006684;
      v329 = &unk_10163CEC8;
      v238 = _Block_copy(&aBlock);

      v219 = v320;
      static DispatchQoS.unspecified.getter();
      v323 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v221 = v317;
      v220 = v318;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v238);
    }

    else
    {

      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&_mh_execute_header, v213, v214, "Server response is missing Date header!", v215, 2u);
      }

      v216 = swift_allocObject();
      v217 = v314;
      *(v216 + 16) = v313;
      *(v216 + 24) = v217;
      v330 = sub_10093DDF8;
      v331 = v216;
      aBlock = _NSConcreteStackBlock;
      v327 = 1107296256;
      v328 = sub_100006684;
      v329 = &unk_10163CE78;
      v218 = _Block_copy(&aBlock);

      v219 = v320;
      static DispatchQoS.unspecified.getter();
      v323 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v221 = v317;
      v220 = v318;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v218);
    }

    (*(v319 + 8))(v221, v220);
    (*(v105 + 8))(v219, v321);
    goto LABEL_60;
  }

  if (v64 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v64 == enum case for ServerStatusCode.serverConflict(_:))
    {
      v12 = v309;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_1000076D4(v111, qword_10177C448);
      v112 = v312;
      (*(v27 + 16))(v36, v322, v312);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        aBlock = v116;
        *v115 = 136446210;
        sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v119 = v118;
        (*(v27 + 8))(v36, v112);
        v120 = sub_1000136BC(v117, v119, &aBlock);
        v12 = v309;

        *(v115 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v113, v114, "Linked to another Apple ID. %{public}s", v115, 0xCu);
        sub_100007BAC(v116);
      }

      else
      {

        (*(v27 + 8))(v36, v112);
      }

      v222 = swift_allocObject();
      v223 = v314;
      *(v222 + 16) = v313;
      *(v222 + 24) = v223;
      v330 = sub_10093DD98;
      v331 = v222;
      aBlock = _NSConcreteStackBlock;
      v327 = 1107296256;
      v81 = &unk_10163CDD8;
      goto LABEL_13;
    }

    (*(v51 + 8))(v46, v50);
    v12 = v309;
    goto LABEL_2;
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  v88 = sub_1000076D4(v87, qword_10177C448);
  v89 = v312;
  (*(v27 + 16))(v33, v322, v312);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v306 = v92;
    v310 = swift_slowAlloc();
    aBlock = v310;
    LODWORD(v92->isa) = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v311 = v88;
    v95 = v94;
    (*(v27 + 8))(v33, v89);
    v96 = sub_1000136BC(v93, v95, &aBlock);

    v97 = v306;
    *(&v306->isa + 4) = v96;
    _os_log_impl(&_mh_execute_header, v90, v91, "Pairing not allowed! %{public}s", v97, 0xCu);
    sub_100007BAC(v310);
  }

  else
  {

    (*(v27 + 8))(v33, v89);
  }

  v144 = v308;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v145 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v146 = *(v145 - 8);
  if ((*(v146 + 48))(v144, 1, v145) == 1)
  {
    sub_10000B3A8(v144, &qword_101698640, &unk_10138FFA0);
    v147 = v307;
    (*(v51 + 56))(v307, 1, 1, v50);
    sub_10000B3A8(v147, &qword_101698638, &qword_1013AC450);
    v12 = v309;
LABEL_40:
    v148 = swift_allocObject();
    v149 = v314;
    *(v148 + 16) = v313;
    *(v148 + 24) = v149;
    v330 = sub_10093DD08;
    v331 = v148;
    aBlock = _NSConcreteStackBlock;
    v327 = 1107296256;
    v81 = &unk_10163CCE8;
LABEL_13:
    v328 = sub_100006684;
    v329 = v81;
    v82 = _Block_copy(&aBlock);

    v83 = v320;
    static DispatchQoS.unspecified.getter();
    v323 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v85 = v317;
    v84 = v318;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v82);
    (*(v319 + 8))(v85, v84);
    (*(v12 + 8))(v83, v321);
    goto LABEL_14;
  }

  v150 = v307;
  FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
  (*(v146 + 8))(v144, v145);
  (*(v51 + 56))(v150, 0, 1, v50);
  v151 = v305;
  sub_1000D2AD8(v150, v305, &qword_101698638, &qword_1013AC450);
  v152 = v295(v151, v50);
  if (v152 != enum case for ServerStatusCode.preconditionFailed(_:))
  {
    v12 = v309;
    if (v152 == enum case for ServerStatusCode.locked(_:))
    {
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        *v226 = 0;
        _os_log_impl(&_mh_execute_header, v224, v225, "Pairing is pending from another device", v226, 2u);
      }

      v227 = swift_allocObject();
      v228 = v314;
      *(v227 + 16) = v313;
      *(v227 + 24) = v228;
      v330 = sub_10093DD38;
      v331 = v227;
      aBlock = _NSConcreteStackBlock;
      v327 = 1107296256;
      v81 = &unk_10163CD38;
      goto LABEL_13;
    }

    (*(v51 + 8))(v151, v50);
    goto LABEL_40;
  }

  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.error.getter();
  v155 = os_log_type_enabled(v153, v154);
  v156 = v309;
  if (v155)
  {
    v157 = swift_slowAlloc();
    *v157 = 0;
    _os_log_impl(&_mh_execute_header, v153, v154, "Pairing has been completed by another device", v157, 2u);
  }

  v158 = swift_allocObject();
  v159 = v314;
  *(v158 + 16) = v313;
  *(v158 + 24) = v159;
  v330 = sub_10093DD68;
  v331 = v158;
  aBlock = _NSConcreteStackBlock;
  v327 = 1107296256;
  v328 = sub_100006684;
  v329 = &unk_10163CD88;
  v160 = _Block_copy(&aBlock);

  v161 = v320;
  static DispatchQoS.unspecified.getter();
  v323 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v163 = v317;
  v162 = v318;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v160);
  (*(v319 + 8))(v163, v162);
  (*(v156 + 8))(v161, v321);
LABEL_14:

  return sub_10000B3A8(v316, &qword_101698638, &qword_1013AC450);
}

id sub_10092FB14(const void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v60 = a1;
  v59 = *v3;
  v62 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  __chkstk_darwin(v62);
  v63 = (&v52 - v4);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v58 = &v52 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v53);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v12 - 8);
  v67 = &v52 - v13;
  v14 = type metadata accessor for FMNAccountType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirPodsPairingLockCheckEndPoint(0);
  v19 = __chkstk_darwin(v18);
  v66 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100008C00();
  *(v25 + 32) = 0xD000000000000034;
  *(v25 + 40) = 0x8000000101365AD0;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "%@", 2, 2, v25);

  v26 = enum case for FMNAccountType.w2Accessory(_:);
  v27 = *(v15 + 104);
  v27(v17, enum case for FMNAccountType.w2Accessory(_:), v14);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v22 = sub_1010B32C8(v17);
  v27(&v22[*(v18 + 20)], v26, v14);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v67, 1, 1, v28);
  v29 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v30 = swift_allocObject();
  v31 = v66;
  sub_10093C940(v22, v66, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  v32 = sub_10062362C(v31, v29, v30);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v34 = result;
    v35 = v22;
    v36 = sub_100513CD8();

    if (v36 && (v37 = sub_100513FCC(), v39 = v38, v36, v39))
    {
      sub_1000BC488();
      v66 = v37;
      static DispatchQoS.unspecified.getter();
      v68[0] = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      v67 = v35;
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v56 + 104))(v55, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v57);
      v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v41 = type metadata accessor for TaskPriority();
      v42 = v58;
      (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v44 = v60;
      memcpy(v43 + 4, v60, 0x140uLL);
      v45 = v65;
      v43[44] = v66;
      v43[45] = v39;
      v43[46] = v61;
      v43[47] = v40;
      v43[48] = v64;
      v43[49] = v45;
      v46 = v59;
      v43[50] = v32;
      v43[51] = v46;
      sub_1008372F4(v44, v68);

      v47 = v40;

      sub_10025EDD4(0, 0, v42, &unk_1013C82A8, v43);

      v48 = v67;
    }

    else
    {
      v49 = static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        v51 = v49;
        swift_once();
        v49 = v51;
      }

      os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, qword_10177C3B0, "Unable to retrieve masked identifier", 36, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPPairingSessionError(0);
      v68[40] = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v50 = v63;
      *v63 = v68[0];
      swift_storeEnumTagMultiPayload();
      v64(v50);

      sub_10000B3A8(v50, &qword_1016AED28, &qword_1013C8298);
      v48 = v35;
    }

    return sub_10093C9A8(v48, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100930448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 776) = v15;
  *(v8 + 768) = v14;
  *(v8 + 752) = v13;
  *(v8 + 744) = a8;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 720) = a5;
  *(v8 + 712) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 784) = v9;
  *(v8 + 792) = *(v9 - 8);
  *(v8 + 800) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 808) = v10;
  *(v8 + 816) = *(v10 - 8);
  *(v8 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_10093058C, 0, 0);
}

uint64_t sub_10093058C()
{
  v1 = v0[89];
  v2 = *(v0[92] + 16);

  sub_1008372F4(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[104] = v3;
  *v3 = v0;
  v3[1] = sub_10093066C;
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];

  return sub_100835E70(v6, v5, v4, v2);
}

uint64_t sub_10093066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[105] = a1;
  v4[106] = a2;
  v4[107] = a3;

  return _swift_task_switch(sub_100930774, 0, 0);
}

uint64_t sub_100930774(uint64_t a1)
{
  v2 = v1[105];
  if (v2)
  {
    v3 = static os_log_type_t.debug.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v54 = v1[97];
    v55 = v1[107];
    v47 = v1[106];
    v48 = v1[96];
    v51 = v1[94];
    v52 = v1[95];
    v49 = v1[105];
    v50 = v1[93];
    v53 = v1[92];
    v4 = v1[89];
    v5 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    v7 = Data.hexString.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    v10 = sub_100008C00();
    *(v6 + 64) = v10;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v5, "nonce: %@", 9, 2, v6);

    v11 = static os_log_type_t.debug.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v13 = Data.hexString.getter();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v10;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v5, "serialNumber: %@", 16, 2, v12);

    v15 = static os_log_type_t.debug.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = Data.hexString.getter();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v10;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v5, "ECID: %@", 8, 2, v16);

    v19 = static os_log_type_t.debug.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = Data.hexString.getter();
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v10;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v5, "ChipId: %@", 10, 2, v20);

    v23 = static os_log_type_t.debug.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    v25 = Data.hexString.getter();
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v10;
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v5, "SeedK1: %@", 10, 2, v24);

    v27 = static os_log_type_t.debug.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = Data.hexString.getter();
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v10;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v5, "H1 (hashed C2): %@", 18, 2, v28);

    sub_100017D5C(v47, v55);
    sub_1004FE85C(v2, v47, v55, 0, v48);
    sub_100165328(v49, v47, v55);
    v31 = swift_allocObject();
    v31[2] = v50;
    v31[3] = v51;
    v31[4] = v52;
    v32 = v50;

    Future.addFailure(block:)();

    v33 = swift_allocObject();
    memcpy(v33 + 2, v4, 0x140uLL);
    v33[42] = v53;
    v33[43] = v32;
    v33[44] = v51;
    v33[45] = v52;
    v33[46] = v54;
    sub_1008372F4(v4, (v1 + 42));
    v34 = v32;

    Future.addSuccess(block:)();

    sub_100165328(v49, v47, v55);
  }

  else
  {
    v35 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v46 = v35;
      swift_once();
      v35 = v46;
    }

    v36 = v1[103];
    v56 = v1[102];
    v57 = v1[101];
    v37 = v1[100];
    v38 = v1[99];
    v39 = v1[98];
    v40 = v1[95];
    v41 = v1[94];
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_10177C410, "Could not create pairing lock request", 37, 2, _swiftEmptyArrayStorage);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;
    v1[86] = sub_10093E270;
    v1[87] = v42;
    v1[82] = _NSConcreteStackBlock;
    v1[83] = 1107296256;
    v1[84] = sub_100006684;
    v1[85] = &unk_10163D210;
    v43 = _Block_copy(v1 + 82);

    static DispatchQoS.unspecified.getter();
    v1[88] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);
    (*(v38 + 8))(v37, v39);
    (*(v56 + 8))(v36, v57);
  }

  v44 = v1[1];

  return v44();
}

uint64_t sub_100930E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Error in verify pairing request. Error - %@", 43, 2, v13);

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10093E408;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163D508;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_100931224(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v251 = a5;
  v252 = a6;
  v254 = a4;
  v245 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v257 = *(v7 - 8);
  v258 = v7;
  __chkstk_darwin(v7);
  v255 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v259 = *(v9 - 8);
  __chkstk_darwin(v9);
  v256 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  __chkstk_darwin(v249);
  v244 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for Date();
  v236 = *(v238 - 8);
  v12 = __chkstk_darwin(v238);
  v239 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v243 = &v234 - v15;
  v16 = __chkstk_darwin(v14);
  v237 = &v234 - v17;
  __chkstk_darwin(v16);
  v240 = &v234 - v18;
  v19 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v20 = __chkstk_darwin(v19 - 8);
  v247 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v242 = &v234 - v22;
  v23 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v23 - 8);
  v248 = (&v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v25 = *(v250 - 8);
  v26 = __chkstk_darwin(v250);
  v28 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v234 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v234 - v33;
  __chkstk_darwin(v32);
  v36 = &v234 - v35;
  v37 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v38 = __chkstk_darwin(v37 - 8);
  v241 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v246 = (&v234 - v41);
  v42 = __chkstk_darwin(v40);
  v44 = &v234 - v43;
  __chkstk_darwin(v42);
  v46 = &v234 - v45;
  v260 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v47 = v46;
  ServerStatusCode.init(rawValue:)();
  v48 = type metadata accessor for ServerStatusCode();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v47, 1, v48);
  v253 = v47;
  if (v50 == 1)
  {
    goto LABEL_2;
  }

  v235 = v9;
  sub_1000D2A70(v47, v44, &qword_101698638, &qword_1013AC450);
  v234 = *(v49 + 88);
  v61 = v234(v44, v48);
  if (v61 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177C418);
    v63 = v250;
    (*(v25 + 16))(v36, v260, v250);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v25 + 8))(v36, v63);
      v71 = sub_1000136BC(v68, v70, &aBlock);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Pairing success: %{public}s", v66, 0xCu);
      sub_100007BAC(v67);
    }

    else
    {

      (*(v25 + 8))(v36, v63);
    }

    v89 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v91 = v90;
    static String.Encoding.utf8.getter();
    v92 = String.init(data:encoding:)();
    v94 = v93;
    sub_100016590(v89, v91);
    v95 = v249;
    if (v94)
    {

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136315138;
        v100 = sub_1000136BC(v92, v94, &aBlock);

        *(v98 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v96, v97, "response data: %s", v98, 0xCu);
        sub_100007BAC(v99);
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v112 = JSONDecoder.init()();
    v113 = swift_allocBox();
    v115 = v114;
    v116 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v118 = v117;
    sub_10093C818(&qword_1016AED30, type metadata accessor for AirPodsPairingLockCheckResponse, &unk_1013F65C0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v260 = v115;
    v248 = v113;
    sub_100016590(v116, v118);
    v119 = v242;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v120 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v121 = *(v120 - 8);
    v122 = (*(v121 + 48))(v119, 1, v120);
    v250 = v112;
    if (v122 == 1)
    {
      sub_10000B3A8(v119, &qword_101698640, &unk_10138FFA0);
      v123 = v243;
    }

    else
    {
      v141 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v143 = v142;
      (*(v121 + 8))(v119, v120);
      v123 = v243;
      if ((v143 & 1) == 0)
      {
        v206 = Logger.logObject.getter();
        v207 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          *v208 = 134217984;
          *(v208 + 4) = v141;
          _os_log_impl(&_mh_execute_header, v206, v207, "Server epoch: %lld", v208, 0xCu);
        }

        v189 = v260;
        *(v260 + *(v95 + 12)) = v141;
        goto LABEL_69;
      }
    }

    v144 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v144 + 16) && (v145 = sub_100771D58(1702125892, 0xE400000000000000), (v146 & 1) != 0))
    {
      v147 = (*(v144 + 56) + 16 * v145);
      v149 = *v147;
      v148 = v147[1];
      swift_bridgeObjectRetain_n();

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        aBlock = v153;
        *v152 = 136446210;
        *(v152 + 4) = sub_1000136BC(v149, v148, &aBlock);
        _os_log_impl(&_mh_execute_header, v150, v151, "Server date: %{public}s", v152, 0xCu);
        sub_100007BAC(v153);
      }

      v154 = v240;
      v155 = v239;
      v156 = v237;
      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v157 = qword_10177B6F0;
      v158 = String._bridgeToObjectiveC()();

      v159 = [v157 dateFromString:v158];

      if (v159)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        *(v260 + *(v249 + 12)) = Date.epoch.getter();
        v160 = v236;
        v161 = *(v236 + 16);
        v162 = v238;
        v161(v156, v154, v238);
        v161(v123, v154, v162);
        v161(v155, v154, v162);
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = v160;
          v166 = swift_slowAlloc();
          v243 = v166;
          v249 = swift_slowAlloc();
          aBlock = v249;
          *v166 = 136446722;
          sub_10093C818(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          LODWORD(v247) = v164;
          v167 = v156;
          v168 = v238;
          v169 = dispatch thunk of CustomStringConvertible.description.getter();
          v171 = v170;
          v246 = v163;
          v172 = *(v165 + 8);
          v172(v167, v168);
          v173 = sub_1000136BC(v169, v171, &aBlock);

          v174 = v243;
          *(v243 + 4) = v173;
          *(v174 + 6) = 2048;
          v175 = Date.epoch.getter();
          v172(v123, v168);
          *(v174 + 14) = v175;
          *(v174 + 11) = 2082;
          v176 = v239;
          v261 = Date.epoch.getter();
          sub_100102194();
          v177 = FixedWidthInteger.data.getter();
          v179 = v178;
          v180 = Data.hexString.getter();
          v182 = v181;
          sub_100016590(v177, v179);
          v183 = v238;
          v172(v176, v238);
          v184 = sub_1000136BC(v180, v182, &aBlock);

          *(v174 + 3) = v184;
          v185 = v246;
          _os_log_impl(&_mh_execute_header, v246, v247, "pairingEpoch: %{public}s [%lld/%{public}s]", v174, 0x20u);
          swift_arrayDestroy();

          v172(v240, v183);
        }

        else
        {
          v212 = *(v160 + 8);
          v212(v123, v162);

          v212(v155, v162);
          v212(v156, v162);
          v212(v154, v162);
        }
      }

      else
      {
        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          *v211 = 0;
          _os_log_impl(&_mh_execute_header, v209, v210, "Unable to parse server Date!", v211, 2u);
        }
      }

      v189 = v260;
    }

    else
    {

      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.error.getter();
      v188 = os_log_type_enabled(v186, v187);
      v189 = v260;
      if (v188)
      {
        v190 = swift_slowAlloc();
        *v190 = 0;
        _os_log_impl(&_mh_execute_header, v186, v187, "Server response is missing Date header!", v190, 2u);
      }
    }

LABEL_69:
    v213 = v244;
    sub_10093C940(v189, v244, type metadata accessor for AirPodsPairingLockCheckResponse);
    v214 = v245;
    v215 = sub_10093A184(v245, v213);
    v260 = v216;
    sub_10093C9A8(v213, type metadata accessor for AirPodsPairingLockCheckResponse);
    v217 = *(v214 + 34);
    v218 = *(v214 + 35);
    v219 = v217;
    v220 = v218;
    if (v218 >> 60 == 15)
    {
      if (qword_101694AB8 != -1)
      {
        swift_once();
      }

      v219 = qword_10177B6F8;
      v220 = qword_10177B700;
      sub_100017D5C(qword_10177B6F8, qword_10177B700);
    }

    v221 = *(v189 + 64);
    v222 = *(v189 + 72);
    sub_10002E98C(v217, v218);
    sub_100017D5C(v221, v222);
    v224 = sub_100A74FAC(v219, v220, v215, v260, v221, v222, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100016590(v221, v222);
    sub_100016590(v219, v220);
    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      *v227 = 67109120;
      *(v227 + 4) = v224 & 1;
      _os_log_impl(&_mh_execute_header, v225, v226, "Signature S3 verified? %{BOOL}d", v227, 8u);
    }

    v228 = swift_allocObject();
    v229 = v252;
    v228[2] = v251;
    v228[3] = v229;
    v228[4] = v248;
    v266 = sub_10093E3B0;
    v267 = v228;
    aBlock = _NSConcreteStackBlock;
    v263 = 1107296256;
    v264 = sub_100006684;
    v265 = &unk_10163D490;
    v230 = _Block_copy(&aBlock);

    v231 = v256;
    static DispatchQoS.unspecified.getter();
    v261 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v232 = v255;
    v233 = v258;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v215, v260);
    _Block_release(v230);

    (*(v257 + 8))(v232, v233);
    (*(v259 + 8))(v231, v235);

    goto LABEL_74;
  }

  if (v61 == enum case for ServerStatusCode.forbidden(_:))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    v79 = sub_1000076D4(v78, qword_10177C418);
    v80 = v250;
    (*(v25 + 16))(v31, v260, v250);
    v249 = v79;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v245 = v83;
      v248 = swift_slowAlloc();
      aBlock = v248;
      *v83 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*(v25 + 8))(v31, v80);
      v87 = sub_1000136BC(v84, v86, &aBlock);

      v88 = v245;
      *(v245 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Pairing not allowed! %{public}s", v88, 0xCu);
      sub_100007BAC(v248);
    }

    else
    {

      (*(v25 + 8))(v31, v80);
    }

    v124 = v247;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v125 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v126 = *(v125 - 8);
    if ((*(v126 + 48))(v124, 1, v125) == 1)
    {
      sub_10000B3A8(v124, &qword_101698640, &unk_10138FFA0);
      v127 = v246;
      (*(v49 + 56))(v246, 1, 1, v48);
      sub_10000B3A8(v127, &qword_101698638, &qword_1013AC450);
      v128 = v235;
    }

    else
    {
      v132 = v246;
      FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
      (*(v126 + 8))(v124, v125);
      (*(v49 + 56))(v132, 0, 1, v48);
      v133 = v241;
      sub_1000D2AD8(v132, v241, &qword_101698638, &qword_1013AC450);
      v134 = v234(v133, v48);
      if (v134 == enum case for ServerStatusCode.preconditionFailed(_:))
      {
        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.error.getter();
        v137 = os_log_type_enabled(v135, v136);
        v128 = v235;
        if (v137)
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&_mh_execute_header, v135, v136, "Pairing has been completed by another device", v138, 2u);
        }

        v139 = swift_allocObject();
        v140 = v252;
        *(v139 + 16) = v251;
        *(v139 + 24) = v140;
        v266 = sub_10093E320;
        v267 = v139;
        aBlock = _NSConcreteStackBlock;
        v263 = 1107296256;
        v131 = &unk_10163D3A0;
        goto LABEL_59;
      }

      v128 = v235;
      if (v134 == enum case for ServerStatusCode.locked(_:))
      {
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          *v199 = 0;
          _os_log_impl(&_mh_execute_header, v197, v198, "Pairing is pending from another device", v199, 2u);
        }

        v200 = swift_allocObject();
        v201 = v252;
        *(v200 + 16) = v251;
        *(v200 + 24) = v201;
        v266 = sub_10093E2F0;
        v267 = v200;
        aBlock = _NSConcreteStackBlock;
        v263 = 1107296256;
        v131 = &unk_10163D350;
        goto LABEL_59;
      }

      (*(v49 + 8))(v133, v48);
    }

    v129 = swift_allocObject();
    v130 = v252;
    *(v129 + 16) = v251;
    *(v129 + 24) = v130;
    v266 = sub_10093E2C0;
    v267 = v129;
    aBlock = _NSConcreteStackBlock;
    v263 = 1107296256;
    v131 = &unk_10163D300;
LABEL_59:
    v264 = sub_100006684;
    v265 = v131;
    v202 = _Block_copy(&aBlock);

    v203 = v256;
    static DispatchQoS.unspecified.getter();
    v261 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v204 = v255;
    v205 = v258;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v202);
    (*(v257 + 8))(v204, v205);
    (*(v259 + 8))(v203, v128);
    goto LABEL_74;
  }

  if (v61 != enum case for ServerStatusCode.serverConflict(_:))
  {
    (*(v49 + 8))(v44, v48);
    v9 = v235;
LABEL_2:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177C418);
    v52 = v250;
    (*(v25 + 16))(v28, v260, v250);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v25 + 8))(v28, v52);
      v60 = sub_1000136BC(v57, v59, &aBlock);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "Pairing lock failed: %{public}s", v55, 0xCu);
      sub_100007BAC(v56);
    }

    else
    {

      (*(v25 + 8))(v28, v52);
    }

    v72 = swift_allocObject();
    v73 = v252;
    *(v72 + 16) = v251;
    *(v72 + 24) = v73;
    v266 = sub_10093F81C;
    v267 = v72;
    aBlock = _NSConcreteStackBlock;
    v263 = 1107296256;
    v264 = sub_100006684;
    v265 = &unk_10163D2B0;
    v74 = _Block_copy(&aBlock);

    v75 = v256;
    static DispatchQoS.unspecified.getter();
    v261 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v76 = v255;
    v77 = v258;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v74);
    (*(v257 + 8))(v76, v77);
    (*(v259 + 8))(v75, v9);
    goto LABEL_74;
  }

  v101 = v235;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_1000076D4(v102, qword_10177C418);
  v103 = v250;
  (*(v25 + 16))(v34, v260, v250);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock = v107;
    *v106 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    v110 = v109;
    (*(v25 + 8))(v34, v103);
    v111 = sub_1000136BC(v108, v110, &aBlock);

    *(v106 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v104, v105, "Linked to another Apple ID. %{public}s", v106, 0xCu);
    sub_100007BAC(v107);
  }

  else
  {

    (*(v25 + 8))(v34, v103);
  }

  v191 = swift_allocObject();
  v192 = v252;
  *(v191 + 16) = v251;
  *(v191 + 24) = v192;
  v266 = sub_10093E350;
  v267 = v191;
  aBlock = _NSConcreteStackBlock;
  v263 = 1107296256;
  v264 = sub_100006684;
  v265 = &unk_10163D3F0;
  v193 = _Block_copy(&aBlock);

  v194 = v256;
  static DispatchQoS.unspecified.getter();
  v261 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v195 = v255;
  v196 = v258;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v193);
  (*(v257 + 8))(v195, v196);
  (*(v259 + 8))(v194, v101);
LABEL_74:

  return sub_10000B3A8(v253, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_1009336CC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(void))
{
  v12 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  a6(0);
  v15 = swift_projectBox();
  swift_beginAccess();
  sub_10093C940(v15, v14, a7);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_10000B3A8(v14, a4, a5);
}

uint64_t sub_1009337E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v13;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_10093390C, 0, 0);
}

uint64_t sub_10093390C()
{
  v1 = v0[23];
  v2 = *(v0[24] + 16);

  sub_1009399EC(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1009339D8;
  v4 = v0[23];

  return sub_1008DB1C0(v4, v2);
}

uint64_t sub_1009339D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[18] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[36] = a1;

  return _swift_task_switch(sub_100933AE0, 0, 0);
}

uint64_t sub_100933AE0(uint64_t a1)
{
  v2 = v1[36];
  if (v2)
  {
    v3 = v1[20];
    v4 = v1[21];
    v6 = v1[27];
    v5 = v1[28];
    v7 = v1[25];
    v8 = v1[26];

    sub_100017D5C(v3, v4);
    sub_1004FEB68(v2, v3, v4, 0, v5);
    sub_100165328(v2, v3, v4);
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = v7;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v6;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v2, v3, v4);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v14 = v1[34];
    v15 = v1[31];
    v25 = v1[33];
    v26 = v1[32];
    v16 = v1[29];
    v17 = v1[30];
    v18 = v1[26];
    v19 = v1[27];
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C410, "Could not create unpair command", 31, 2, _swiftEmptyArrayStorage, v1[25]);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v1[16] = sub_10093C7F8;
    v1[17] = v20;
    v1[12] = _NSConcreteStackBlock;
    v1[13] = 1107296256;
    v1[14] = sub_100006684;
    v1[15] = &unk_10163C838;
    v21 = _Block_copy(v1 + 12);

    static DispatchQoS.unspecified.getter();
    v1[22] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v17 + 8))(v15, v16);
    (*(v25 + 8))(v14, v26);
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_100933E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Remove pairing lock command failed. Error - %@", 46, 2, v13);

  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v22;
  v17[3] = v18;
  v17[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163C978;
  v19 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

uint64_t sub_100934250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v44 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  (*(v10 + 16))(v12, a1, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136446210;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = sub_1000136BC(v18, v20, &aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Remove pairing lock response %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v22 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v23 = static os_log_type_t.default.getter();
  if (v22 == 200)
  {
    if (qword_1016950C8 != -1)
    {
      v39 = v23;
      swift_once();
      v23 = v39;
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C410, "Remove pairing lock was successful.", 35, 2, _swiftEmptyArrayStorage, v40, v41);
    v24 = swift_allocObject();
    v25 = v41;
    *(v24 + 16) = v40;
    *(v24 + 24) = v25;
    v54 = sub_10041ABC0;
    v55 = v24;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100006684;
    v53 = &unk_10163C928;
    v26 = _Block_copy(&aBlock);

    v27 = v42;
    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = v23;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    aBlock = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Remove pairing lock failed. Status code - %@", 44, 2, v30);

    v34 = swift_allocObject();
    v35 = v41;
    *(v34 + 16) = v40;
    *(v34 + 24) = v35;
    v54 = sub_10093C878;
    v55 = v34;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100006684;
    v53 = &unk_10163C8D8;
    v26 = _Block_copy(&aBlock);

    v27 = v42;
    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
  }

  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v36 = v43;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v47 + 8))(v36, v37);
  (*(v45 + 8))(v27, v46);
}

void sub_10093493C(void (*a1)(), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_1009349F8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v51 = &v44 - v5;
  v50 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v47);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for FMNAccountType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AirPodsPairingLockAckEndPoint(0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = (&v44 - v22);
  v24 = enum case for FMNAccountType.w2Accessory(_:);
  v25 = *(v14 + 104);
  v25(v16, enum case for FMNAccountType.w2Accessory(_:), v13);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v23 = sub_1010B32C8(v16);
  v26 = v23 + *(v18 + 28);
  v45 = v23;
  v25(v26, v24, v13);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v27 = type metadata accessor for FMNMockingPreferences();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v29 = swift_allocObject();
  sub_10093C940(v23, v21, type metadata accessor for AirPodsPairingLockAckEndPoint);
  v30 = sub_100623A44(v21, v28, v29);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v55[0] = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v49 + 104))(v48, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = type metadata accessor for TaskPriority();
  v33 = v51;
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = a1[11];
  *(v34 + 192) = a1[10];
  *(v34 + 208) = v35;
  *(v34 + 224) = a1[12];
  v36 = a1[7];
  *(v34 + 128) = a1[6];
  *(v34 + 144) = v36;
  v37 = a1[9];
  *(v34 + 160) = a1[8];
  *(v34 + 176) = v37;
  v38 = a1[3];
  *(v34 + 64) = a1[2];
  *(v34 + 80) = v38;
  v39 = a1[5];
  *(v34 + 96) = a1[4];
  *(v34 + 112) = v39;
  v40 = a1[1];
  *(v34 + 32) = *a1;
  *(v34 + 48) = v40;
  *(v34 + 240) = v52;
  *(v34 + 248) = v31;
  v41 = v54;
  *(v34 + 256) = v53;
  *(v34 + 264) = v41;
  *(v34 + 272) = v30;
  sub_10093DFCC(a1, v55);

  v42 = v31;

  sub_10025EDD4(0, 0, v33, &unk_1013C8288, v34);

  return sub_10093C9A8(v45, type metadata accessor for AirPodsPairingLockAckEndPoint);
}

uint64_t sub_1009350AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = a8;
  v8[44] = v13;
  v8[41] = a6;
  v8[42] = a7;
  v8[39] = a4;
  v8[40] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[45] = v9;
  v8[46] = *(v9 - 8);
  v8[47] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[48] = v10;
  v8[49] = *(v10 - 8);
  v8[50] = swift_task_alloc();

  return _swift_task_switch(sub_1009351D8, 0, 0);
}

uint64_t sub_1009351D8()
{
  v1 = v0[39];
  v2 = *(v0[40] + 16);

  sub_10093DFCC(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_1009352A4;
  v4 = v0[39];

  return sub_100E99008(v4, v2);
}

uint64_t sub_1009352A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[34] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[52] = a1;

  return _swift_task_switch(sub_1009353AC, 0, 0);
}

uint64_t sub_1009353AC(uint64_t a1)
{
  v2 = v1[52];
  if (v2)
  {
    v3 = v1[36];
    v4 = v1[37];
    v6 = v1[43];
    v5 = v1[44];
    v7 = v1[41];
    v8 = v1[42];

    sub_100017D5C(v3, v4);
    sub_1004FEE74(v2, v3, v4, 0, v5);
    sub_100165328(v2, v3, v4);
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = v7;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v6;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v2, v3, v4);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v14 = v1[50];
    v15 = v1[47];
    v25 = v1[49];
    v26 = v1[48];
    v16 = v1[45];
    v17 = v1[46];
    v18 = v1[42];
    v19 = v1[43];
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C410, "Could not create pairing ack request", 36, 2, _swiftEmptyArrayStorage, v1[41]);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v1[32] = sub_10093E004;
    v1[33] = v20;
    v1[28] = _NSConcreteStackBlock;
    v1[29] = 1107296256;
    v1[30] = sub_100006684;
    v1[31] = &unk_10163D008;
    v21 = _Block_copy(v1 + 28);

    static DispatchQoS.unspecified.getter();
    v1[38] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v17 + 8))(v15, v16);
    (*(v25 + 8))(v14, v26);
  }

  v22 = v1[1];

  return v22();
}

uint64_t sub_100935764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Ack pairing failed. Error - %@", 30, 2, v13);

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10093E140;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163D198;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

uint64_t sub_100935B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v65 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for AirPodsPairingLockAckResponse(0);
  v60 = *(v62 - 8);
  v11 = *(v60 + 64);
  v12 = __chkstk_darwin(v62);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v58 = v9;
    v59 = v8;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_1000076D4(v19, qword_10177C418);
    (*(v16 + 16))(v18, v68, v15);
    v57 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v56 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v55 = v6;
      v54 = v25;
      aBlock = v25;
      *v24 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v14;
      v29 = v28;
      (*(v16 + 8))(v18, v15);
      v30 = sub_1000136BC(v26, v29, &aBlock);
      v14 = v27;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ack pairing success: %{public}s", v24, 0xCu);
      sub_100007BAC(v54);
      v6 = v55;

      v5 = v56;
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v42 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v44 = v43;
    sub_10093C818(&qword_1016AED18, type metadata accessor for AirPodsPairingLockAckResponse, &unk_1013C1EE0);
    v45 = v14;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v42, v44);
    v46 = v61;
    sub_10093C940(v14, v61, type metadata accessor for AirPodsPairingLockAckResponse);
    v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v48 = swift_allocObject();
    v49 = v64;
    *(v48 + 16) = v63;
    *(v48 + 24) = v49;
    sub_10093E600(v46, v48 + v47, type metadata accessor for AirPodsPairingLockAckResponse);
    v74 = sub_10093E07C;
    v75 = v48;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100006684;
    v73 = &unk_10163D148;
    v50 = _Block_copy(&aBlock);

    v51 = v66;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v52 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v6 + 8))(v52, v5);
    (*(v58 + 8))(v51, v59);
    sub_10093C9A8(v45, type metadata accessor for AirPodsPairingLockAckResponse);
  }

  else
  {
    v31 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v32 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Ack pairing failed. Response %@", 31, 2, v33);

    v37 = swift_allocObject();
    v38 = v64;
    *(v37 + 16) = v63;
    *(v37 + 24) = v38;
    v74 = sub_10093F818;
    v75 = v37;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100006684;
    v73 = &unk_10163D0A8;
    v39 = _Block_copy(&aBlock);

    v40 = v66;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v41 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);
    (*(v6 + 8))(v41, v5);
    (*(v9 + 8))(v40, v8);
  }
}

uint64_t sub_100936718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v14;
  *(v8 + 416) = v13;
  *(v8 + 400) = a7;
  *(v8 + 408) = a8;
  *(v8 + 384) = a5;
  *(v8 + 392) = a6;
  *(v8 + 376) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 440) = v9;
  *(v8 + 448) = *(v9 - 8);
  *(v8 + 456) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 464) = v10;
  *(v8 + 472) = *(v10 - 8);
  *(v8 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100936850, 0, 0);
}

uint64_t sub_100936850()
{
  v1 = v0[49];
  v3 = v0[47];
  v2 = v0[48];
  v4 = *(v0[50] + 16);

  sub_100164F7C(v3, (v0 + 2));
  sub_100017D5C(v2, v1);
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_100936938;
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[47];

  return sub_10028733C(v8, v6, v7, v4);
}

uint64_t sub_100936938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[42] = v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;
  v4[62] = a1;

  return _swift_task_switch(sub_100936A40, 0, 0);
}

uint64_t sub_100936A40()
{
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[44];
    v3 = v0[45];
    v5 = v0[53];
    v4 = v0[54];
    v6 = v0[51];
    v7 = v0[52];

    sub_100017D5C(v2, v3);
    sub_1004FC0C0(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = v6;

    Future.addFailure(block:)();

    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v5;
    v11 = v9;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C448);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not create pairing ack request", v15, 2u);
    }

    v16 = v0[60];
    v17 = v0[57];
    v26 = v0[59];
    v27 = v0[58];
    v18 = v0[55];
    v19 = v0[56];
    v20 = v0[52];
    v21 = v0[53];

    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v0[40] = sub_10093E548;
    v0[41] = v22;
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_100006684;
    v0[39] = &unk_10163D648;
    v23 = _Block_copy(v0 + 36);

    static DispatchQoS.unspecified.getter();
    v0[46] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v19 + 8))(v17, v18);
    (*(v26 + 8))(v16, v27);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100936E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v39 = a6;
  v40 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C448);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a2;
    v23 = v22;
    v35 = swift_slowAlloc();
    v36 = a8;
    v44 = a1;
    aBlock[0] = v35;
    *v23 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v24 = String.init<A>(describing:)();
    v26 = v18;
    v27 = v15;
    v28 = v13;
    v29 = a7;
    v30 = a4;
    v31 = sub_1000136BC(v24, v25, aBlock);

    *(v23 + 4) = v31;
    a4 = v30;
    a7 = v29;
    v13 = v28;
    v15 = v27;
    v18 = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, v38, v23, 0xCu);
    sub_100007BAC(v35);
    a8 = v36;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  *(v32 + 24) = a4;
  aBlock[4] = a7;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a8;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v43 + 8))(v15, v13);
  (*(v41 + 8))(v18, v42);
}

uint64_t sub_100937268(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v65 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v67 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v60 = *(v62 - 8);
  v10 = *(v60 + 64);
  v11 = __chkstk_darwin(v62);
  v61 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v58 - v12;
  v14 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v58 - v19;
  v71 = a1;
  v21 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v70 = v6;
  if (v21 == 200)
  {
    v63 = a4;
    v59 = v8;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C448);
    (*(v15 + 16))(v20, v71, v14);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      aBlock = v58[0];
      *v26 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v58[1] = v23;
      v28 = v13;
      v30 = v29;
      (*(v15 + 8))(v20, v14);
      v31 = sub_1000136BC(v27, v30, &aBlock);
      v13 = v28;

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Ack pairing success: %{public}s", v26, 0xCu);
      sub_100007BAC(v58[0]);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    v40 = v70;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v41 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v43 = v42;
    sub_10093C818(&qword_101698600, type metadata accessor for AirPodsLEPairingLockAckResponse, &unk_10139F6F0);
    v44 = v13;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v45 = v63;
    sub_100016590(v41, v43);
    v52 = v61;
    sub_10093C940(v44, v61, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v53 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v64;
    *(v54 + 24) = v45;
    sub_10093E600(v52, v54 + v53, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v77 = sub_10093E668;
    v78 = v54;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100006684;
    v76 = &unk_10163D788;
    v55 = _Block_copy(&aBlock);

    v56 = v66;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v57 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);

    (*(v69 + 8))(v57, v40);
    (*(v68 + 8))(v56, v59);
    sub_10093C9A8(v44, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177C448);
    (*(v15 + 16))(v18, v71, v14);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v35 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = a4;
      v38 = v37;
      (*(v15 + 8))(v18, v14);
      v39 = sub_1000136BC(v36, v38, &aBlock);
      a4 = v63;

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ack pairing failed. Response %{public}s", v35, 0xCu);
      sub_100007BAC(v71);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    *(v46 + 24) = a4;
    v77 = sub_10093F820;
    v78 = v46;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100006684;
    v76 = &unk_10163D6E8;
    v47 = _Block_copy(&aBlock);

    v48 = v66;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v49 = v67;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);
    (*(v69 + 8))(v49, v50);
    (*(v68 + 8))(v48, v8);
  }
}

uint64_t sub_100937F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v13;
  v8[43] = a6;
  v8[44] = a7;
  v8[41] = a4;
  v8[42] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[47] = v9;
  v8[48] = *(v9 - 8);
  v8[49] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[50] = v10;
  v8[51] = *(v10 - 8);
  v8[52] = swift_task_alloc();

  return _swift_task_switch(sub_100938080, 0, 0);
}

uint64_t sub_100938080()
{
  v1 = v0[41];
  v2 = *(v0[42] + 16);

  sub_10093CBF0(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_10093814C;
  v4 = v0[41];

  return sub_100EF4374(v4, v2);
}

uint64_t sub_10093814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[36] = v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = a3;
  v4[54] = a1;

  return _swift_task_switch(sub_100938254, 0, 0);
}

uint64_t sub_100938254()
{
  v1 = v0[54];
  if (v1)
  {
    v2 = v0[38];
    v3 = v0[39];
    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[43];
    v7 = v0[44];

    sub_100017D5C(v2, v3);
    sub_1004FF180(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = v6;

    Future.addFailure(block:)();

    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v5;
    v11 = v9;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C448);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not create pairing ack request", v15, 2u);
    }

    v16 = v0[52];
    v17 = v0[49];
    v26 = v0[51];
    v27 = v0[50];
    v18 = v0[47];
    v19 = v0[48];
    v20 = v0[44];
    v21 = v0[45];

    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v0[34] = sub_10093D9D0;
    v0[35] = v22;
    v0[30] = _NSConcreteStackBlock;
    v0[31] = 1107296256;
    v0[32] = sub_100006684;
    v0[33] = &unk_10163C9F0;
    v23 = _Block_copy(v0 + 30);

    static DispatchQoS.unspecified.getter();
    v0[40] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v19 + 8))(v17, v18);
    (*(v26 + 8))(v16, v27);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100938658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a3;
  v34 = a7;
  v31 = a5;
  v32 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v14 = *(v35 - 8);
  __chkstk_darwin(v35);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C448);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29[1] = a2;
    v30 = a4;
    v21 = v20;
    v22 = a8;
    v23 = swift_slowAlloc();
    *v21 = 138543362;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, v31, v21, 0xCu);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);
    a8 = v22;

    a4 = v30;
  }

  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v33;
  *(v25 + 24) = a4;
  aBlock[4] = v26;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a8;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v36 + 8))(v13, v11);
  (*(v14 + 8))(v16, v35);
}

uint64_t sub_100938A34(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v70 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v71 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for AirPodsSWPairingLockAckResponse(0);
  v64 = *(v66 - 8);
  v11 = *(v64 + 64);
  v12 = __chkstk_darwin(v66);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v74 = a1;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v67 = v10;
    v63 = v6;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C448);
    (*(v16 + 16))(v21, v74, v15);
    v62 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v61 = v5;
      v60 = v27;
      aBlock = v27;
      *v26 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v14;
      v31 = v30;
      (*(v16 + 8))(v21, v15);
      v32 = sub_1000136BC(v28, v31, &aBlock);
      v14 = v29;

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Ack pairing success: %{public}s", v26, 0xCu);
      sub_100007BAC(v60);
      v5 = v61;
    }

    else
    {

      (*(v16 + 8))(v21, v15);
    }

    v43 = v63;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v46 = v45;
    sub_10093C818(&qword_1016AED08, type metadata accessor for AirPodsSWPairingLockAckResponse, &unk_1013B5AB0);
    v47 = v14;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v48 = v67;
    sub_100016590(v44, v46);
    v54 = v65;
    sub_10093C940(v14, v65, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v55 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v56 = swift_allocObject();
    v57 = v69;
    *(v56 + 16) = v68;
    *(v56 + 24) = v57;
    sub_10093E600(v54, v56 + v55, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v80 = sub_10093DA88;
    v81 = v56;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_100006684;
    v79 = &unk_10163CB30;
    v58 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v75 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v59 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v58);

    (*(v43 + 8))(v59, v5);
    (*(v72 + 8))(v48, v73);
    sub_10093C9A8(v47, type metadata accessor for AirPodsSWPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177C448);
    (*(v16 + 16))(v19, v74, v15);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock = v74;
      *v36 = 136446210;
      sub_10093C818(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v10;
      v38 = v6;
      v39 = v5;
      v41 = v40;
      (*(v16 + 8))(v19, v15);
      v42 = sub_1000136BC(v37, v41, &aBlock);
      v5 = v39;
      v6 = v38;
      v10 = v67;

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Ack pairing failed. Response %{public}s", v36, 0xCu);
      sub_100007BAC(v74);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v49 = swift_allocObject();
    v50 = v69;
    *(v49 + 16) = v68;
    *(v49 + 24) = v50;
    v80 = sub_10093F810;
    v81 = v49;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_100006684;
    v79 = &unk_10163CA90;
    v51 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v75 = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v52 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);
    (*(v6 + 8))(v52, v5);
    (*(v72 + 8))(v10, v73);
  }
}

uint64_t sub_1009396E0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_10093C940(a3, &v15 - v12, a6);
  swift_storeEnumTagMultiPayload();
  a1(v13);
  return sub_10000B3A8(v13, a4, a5);
}

uint64_t sub_1009397BC(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  __chkstk_darwin(v9);
  v11 = (v13 - v10);
  type metadata accessor for SPPairingSessionError(0);
  v13[0] = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v11 = v13[1];
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_10000B3A8(v11, a3, a4);
}

uint64_t sub_100939900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_1009337E0(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_100939A24(const void *a1, uint64_t a2)
{
  v88[3] = &type metadata for AirPodsLEPairingCheckData;
  v88[4] = &off_10163C7C8;
  v88[0] = swift_allocObject();
  v4 = v88[0];
  memcpy((v88[0] + 16), a1, 0x160uLL);
  v86 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v87 = &off_10165C740;
  v81 = sub_1000280DC(v85);
  sub_10093C940(a2, v81, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_100165278(a1, &v83);
  v5 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v79 = sub_1000035D0(v88, &type metadata for AirPodsLEPairingCheckData);
  v82 = v4;
  v8 = v4[32];
  v9 = v4[33];
  sub_100017D5C(v8, v9);
  v10 = Data.hexString.getter();
  v12 = v11;
  sub_100016590(v8, v9);
  *(v7 + 56) = &type metadata for String;
  v80 = sub_100008C00();
  *(v7 + 64) = v80;
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  v13 = v6;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "nonce: %@", 9, 2, v7);

  v14 = static os_log_type_t.debug.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v78 = sub_1000035D0(v85, v86);
  v16 = v81;
  v18 = v81[4];
  v17 = v81[5];
  sub_100017D5C(v18, v17);
  v19 = Data.hexString.getter();
  v21 = v20;
  sub_100016590(v18, v17);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = v80;
  *(v15 + 32) = v19;
  *(v15 + 40) = v21;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "serialNumber: %@", 16, 2, v15);

  v22 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v24 = *v81;
  v25 = v81[1];
  sub_100017D5C(*v16, v16[1]);
  v26 = Data.hexString.getter();
  v28 = v27;
  sub_100016590(v24, v25);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v80;
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v13, "ECID: %@", 8, 2, v23);

  v29 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = v81[2];
  v32 = v81[3];
  sub_100017D5C(v16[2], v16[3]);
  v33 = Data.hexString.getter();
  v35 = v34;
  sub_100016590(v31, v32);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v80;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v13, "ChipId: %@", 10, 2, v30);

  v36 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  v38 = v82[26];
  v39 = v82[27];
  sub_100017D5C(v38, v39);
  v40 = Data.hexString.getter();
  v42 = v41;
  sub_100016590(v38, v39);
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v80;
  *(v37 + 32) = v40;
  *(v37 + 40) = v42;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v13, "SeedK1: %@", 10, 2, v37);

  v43 = static os_log_type_t.debug.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_101385D80;
  v45 = v82[2];
  v46 = v82[3];
  sub_100017D5C(v45, v46);
  v47 = Data.hexString.getter();
  v49 = v48;
  sub_100016590(v45, v46);
  v50 = v81;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = v80;
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v13, "H1 (hashed C2): %@", 18, 2, v44);

  v51 = static os_log_type_t.debug.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_101385D80;
  v53 = v81[6];
  v54 = v81[7];
  sub_100017D5C(v50[6], v50[7]);
  v55 = Data.hexString.getter();
  v57 = v56;
  sub_100016590(v53, v54);
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = v80;
  *(v52 + 32) = v55;
  *(v52 + 40) = v57;
  os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v13, "SeedS: %@", 9, 2, v52);

  v58 = v79[31];
  v83 = v79[30];
  v84 = v58;
  v59 = v78[4];
  v60 = v78[5];
  sub_100017D5C(v83, v58);
  sub_100017D5C(v59, v60);
  Data.append(_:)();
  sub_100016590(v59, v60);
  v61 = *v81;
  v62 = v81[1];
  sub_100017D5C(*v50, v50[1]);
  Data.append(_:)();
  sub_100016590(v61, v62);
  v63 = v81[2];
  v64 = v81[3];
  sub_100017D5C(v50[2], v50[3]);
  Data.append(_:)();
  sub_100016590(v63, v64);
  v65 = v82[26];
  v66 = v82[27];
  sub_100017D5C(v65, v66);
  Data.append(_:)();
  sub_100016590(v65, v66);
  v67 = v82[2];
  v68 = v82[3];
  sub_100017D5C(v67, v68);
  Data.append(_:)();
  sub_100016590(v67, v68);
  v69 = v81[6];
  v70 = v81[7];
  sub_100017D5C(v69, v70);
  Data.append(_:)();
  sub_100016590(v69, v70);
  v71 = static os_log_type_t.debug.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_101385D80;
  v73 = v83;
  v74 = v84;
  v75 = Data.hexString.getter();
  *(v72 + 56) = &type metadata for String;
  *(v72 + 64) = v80;
  *(v72 + 32) = v75;
  *(v72 + 40) = v76;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v13, "dataForSignatureVerification: %@", 32, 2, v72);

  sub_100017D5C(v73, v74);
  sub_100016590(v73, v74);
  sub_100007BAC(v88);
  sub_100007BAC(v85);
  return v73;
}

uint64_t sub_10093A184(const void *a1, uint64_t a2)
{
  v88[3] = &type metadata for AirPodsPairingCheckData;
  v88[4] = &off_10163E108;
  v88[0] = swift_allocObject();
  v4 = v88[0];
  memcpy((v88[0] + 16), a1, 0x140uLL);
  v86 = type metadata accessor for AirPodsPairingLockCheckResponse(0);
  v87 = &off_10165E738;
  v81 = sub_1000280DC(v85);
  sub_10093C940(a2, v81, type metadata accessor for AirPodsPairingLockCheckResponse);
  sub_1008372F4(a1, &v83);
  v5 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v79 = sub_1000035D0(v88, &type metadata for AirPodsPairingCheckData);
  v82 = v4;
  v8 = v4[32];
  v9 = v4[33];
  sub_100017D5C(v8, v9);
  v10 = Data.hexString.getter();
  v12 = v11;
  sub_100016590(v8, v9);
  *(v7 + 56) = &type metadata for String;
  v80 = sub_100008C00();
  *(v7 + 64) = v80;
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  v13 = v6;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "nonce: %@", 9, 2, v7);

  v14 = static os_log_type_t.debug.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v78 = sub_1000035D0(v85, v86);
  v16 = v81;
  v18 = v81[4];
  v17 = v81[5];
  sub_100017D5C(v18, v17);
  v19 = Data.hexString.getter();
  v21 = v20;
  sub_100016590(v18, v17);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = v80;
  *(v15 + 32) = v19;
  *(v15 + 40) = v21;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "serialNumber: %@", 16, 2, v15);

  v22 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v24 = *v81;
  v25 = v81[1];
  sub_100017D5C(*v16, v16[1]);
  v26 = Data.hexString.getter();
  v28 = v27;
  sub_100016590(v24, v25);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v80;
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v13, "ECID: %@", 8, 2, v23);

  v29 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = v81[2];
  v32 = v81[3];
  sub_100017D5C(v16[2], v16[3]);
  v33 = Data.hexString.getter();
  v35 = v34;
  sub_100016590(v31, v32);
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v80;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v13, "ChipId: %@", 10, 2, v30);

  v36 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  v38 = v82[26];
  v39 = v82[27];
  sub_100017D5C(v38, v39);
  v40 = Data.hexString.getter();
  v42 = v41;
  sub_100016590(v38, v39);
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v80;
  *(v37 + 32) = v40;
  *(v37 + 40) = v42;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v13, "SeedK1: %@", 10, 2, v37);

  v43 = static os_log_type_t.debug.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_101385D80;
  v45 = v82[2];
  v46 = v82[3];
  sub_100017D5C(v45, v46);
  v47 = Data.hexString.getter();
  v49 = v48;
  sub_100016590(v45, v46);
  v50 = v81;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 64) = v80;
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v13, "H1 (hashed C2): %@", 18, 2, v44);

  v51 = static os_log_type_t.debug.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_101385D80;
  v53 = v81[6];
  v54 = v81[7];
  sub_100017D5C(v50[6], v50[7]);
  v55 = Data.hexString.getter();
  v57 = v56;
  sub_100016590(v53, v54);
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = v80;
  *(v52 + 32) = v55;
  *(v52 + 40) = v57;
  os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v13, "SeedS: %@", 9, 2, v52);

  v58 = v79[31];
  v83 = v79[30];
  v84 = v58;
  v59 = v78[4];
  v60 = v78[5];
  sub_100017D5C(v83, v58);
  sub_100017D5C(v59, v60);
  Data.append(_:)();
  sub_100016590(v59, v60);
  v61 = *v81;
  v62 = v81[1];
  sub_100017D5C(*v50, v50[1]);
  Data.append(_:)();
  sub_100016590(v61, v62);
  v63 = v81[2];
  v64 = v81[3];
  sub_100017D5C(v50[2], v50[3]);
  Data.append(_:)();
  sub_100016590(v63, v64);
  v65 = v82[26];
  v66 = v82[27];
  sub_100017D5C(v65, v66);
  Data.append(_:)();
  sub_100016590(v65, v66);
  v67 = v82[2];
  v68 = v82[3];
  sub_100017D5C(v67, v68);
  Data.append(_:)();
  sub_100016590(v67, v68);
  v69 = v81[6];
  v70 = v81[7];
  sub_100017D5C(v69, v70);
  Data.append(_:)();
  sub_100016590(v69, v70);
  v71 = static os_log_type_t.debug.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_101385D80;
  v73 = v83;
  v74 = v84;
  v75 = Data.hexString.getter();
  *(v72 + 56) = &type metadata for String;
  *(v72 + 64) = v80;
  *(v72 + 32) = v75;
  *(v72 + 40) = v76;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v13, "dataForSignatureVerification: %@", 32, 2, v72);

  sub_100017D5C(v73, v74);
  sub_100016590(v73, v74);
  sub_100007BAC(v88);
  sub_100007BAC(v85);
  return v73;
}

uint64_t sub_10093A8E4(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 120);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 104);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 320);
  v12 = *(a1 + 328);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  *&v50 = v11;
  *(&v50 + 1) = &off_101608300;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 216);
  v30 = *(a1 + 208);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_10093AF34(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 96);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 80);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 208);
  v12 = *(a1 + 216);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  *&v50 = v11;
  *(&v50 + 1) = &off_1016083C0;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 152);
  v30 = *(a1 + 144);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_10093B584(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = a2;
  v72 = a3;
  v63 = a1;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v73 = &v60 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v66);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v14 - 8);
  v64 = &v60 - v15;
  v16 = type metadata accessor for FMNAccountType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for AirPodsUnpairEndPoint(0);
  v20 = __chkstk_darwin(v62);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v74 = v28;
  v29 = objc_opt_self();

  v61 = a5;
  v30 = [v29 defaultStore];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 aa_primaryAppleAccount];

    if (v32)
    {

      v33 = static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v34 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_101385D80;
      sub_1000D2A70(v63, v27, &qword_1016980D0, &unk_10138F3B0);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_100008C00();
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Removing pairing lock for UUID - %@", 35, 2, v35);

      v39 = enum case for FMNAccountType.w2Accessory(_:);
      v40 = *(v17 + 104);
      v40(v19, enum case for FMNAccountType.w2Accessory(_:), v16);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      *v24 = sub_1010B32C8(v19);
      v40(&v24[*(v62 + 20)], v39, v16);
      type metadata accessor for SearchPartyURLSessionFactory(0);
      swift_allocObject();
      v41 = type metadata accessor for FMNMockingPreferences();
      (*(*(v41 - 8) + 56))(v64, 1, 1, v41);
      v42 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      type metadata accessor for ServerInteractionController(0);
      v43 = swift_allocObject();
      sub_10093C940(v24, v22, type metadata accessor for AirPodsUnpairEndPoint);
      v44 = sub_10062156C(v22, v42, v43);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v75 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v69 + 104))(v68, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
      v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v46 = type metadata accessor for TaskPriority();
      v47 = v73;
      (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      v49 = v71;
      v50 = v72;
      v51 = v71[3];
      *(v48 + 64) = v71[2];
      *(v48 + 80) = v51;
      *(v48 + 96) = v49[4];
      v52 = v49[1];
      *(v48 + 32) = *v49;
      *(v48 + 48) = v52;
      *(v48 + 112) = v50;
      *(v48 + 120) = v45;
      v53 = v74;
      *(v48 + 128) = sub_10093E444;
      *(v48 + 136) = v53;
      *(v48 + 144) = v44;
      sub_1009399EC(v49, &v75);

      v54 = v45;

      sub_10025EDD4(0, 0, v47, &unk_1013C82B8, v48);

      sub_10093C9A8(v24, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_1000076D4(v55, qword_10177C418);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "iCloud not signed in: Skip pairing lock removal.", v58, 2u);
      }

      swift_beginAccess();
      *(a4 + 16) = 0;

      dispatch_group_leave(v61);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_10093BEA0(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v75 = a2;
  v76 = a3;
  v65 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v77 = &v61 - v10;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v70);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v16 - 8);
  v67 = &v61 - v17;
  v18 = type metadata accessor for FMNAccountType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AirPodsUnpairEndPoint(0);
  v22 = __chkstk_darwin(v64);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v68 = (&v61 - v24);
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v29 = objc_opt_self();
  v62 = a4;
  v63 = a5;

  v30 = [v29 defaultStore];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 aa_primaryAppleAccount];

    if (v32)
    {

      v33 = static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v34 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_101385D80;
      sub_1000D2A70(v65, v27, &qword_1016980D0, &unk_10138F3B0);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_100008C00();
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Removing pairing lock for UUID - %@", 35, 2, v35);

      v39 = enum case for FMNAccountType.w2Accessory(_:);
      v40 = *(v19 + 104);
      v40(v21, enum case for FMNAccountType.w2Accessory(_:), v18);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v41 = sub_1010B32C8(v21);
      v42 = v68;
      *v68 = v41;
      v40((v42 + *(v64 + 20)), v39, v18);
      type metadata accessor for SearchPartyURLSessionFactory(0);
      swift_allocObject();
      v43 = type metadata accessor for FMNMockingPreferences();
      (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
      v44 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      type metadata accessor for ServerInteractionController(0);
      v45 = swift_allocObject();
      v46 = v66;
      sub_10093C940(v42, v66, type metadata accessor for AirPodsUnpairEndPoint);
      v47 = sub_10062156C(v46, v44, v45);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v73 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v74);
      v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v49 = type metadata accessor for TaskPriority();
      v50 = v77;
      (*(*(v49 - 8) + 56))(v77, 1, 1, v49);
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      v52 = v75;
      v53 = v76;
      v54 = v75[3];
      *(v51 + 64) = v75[2];
      *(v51 + 80) = v54;
      *(v51 + 96) = v52[4];
      v55 = v52[1];
      *(v51 + 32) = *v52;
      *(v51 + 48) = v55;
      *(v51 + 112) = v53;
      *(v51 + 120) = v48;
      *(v51 + 128) = sub_10093E438;
      *(v51 + 136) = v28;
      *(v51 + 144) = v47;
      sub_1009399EC(v52, &v78);

      v56 = v48;

      sub_10025EDD4(0, 0, v50, &unk_1013C82B0, v51);

      sub_10093C9A8(v42, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_1000076D4(v57, qword_10177C418);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "iCloud not signed in: Skip pairing lock removal.", v60, 2u);
      }

      Transaction.capture()();
      swift_beginAccess();
      *(a6 + 16) = 0;

      dispatch_group_leave(v62);
    }
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_10093C818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10093C898()
{
  result = qword_1016AECD8;
  if (!qword_1016AECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECD8);
  }

  return result;
}

unint64_t sub_10093C8EC()
{
  result = qword_1016AECE0;
  if (!qword_1016AECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECE0);
  }

  return result;
}

uint64_t sub_10093C940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10093C9A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10093CA08()
{
  result = qword_1016AECF0;
  if (!qword_1016AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECF0);
  }

  return result;
}

unint64_t sub_10093CA5C()
{
  result = qword_1016AECF8;
  if (!qword_1016AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECF8);
  }

  return result;
}

unint64_t sub_10093CAB0()
{
  result = qword_1016AED00;
  if (!qword_1016AED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AED00);
  }

  return result;
}

uint64_t sub_10093CB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  v9 = v1[35];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100937F54(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10093CC28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726170 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10093CD98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10093CF98(const void *a1, uint64_t a2)
{
  v107[3] = &type metadata for AirPodsSWPairingCheckData;
  v107[4] = &off_10163E128;
  v4 = swift_allocObject();
  v107[0] = v4;
  memcpy(v4 + 2, a1, 0x150uLL);
  v105 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  v106 = &off_101657920;
  v5 = sub_1000280DC(v104);
  sub_10093C940(a2, v5, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  sub_10093DC08(a1, v102);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C448);
  sub_10001F280(v107, v102);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v100 = v10;
    *v9 = 136315138;
    v11 = sub_1000035D0(v102, v103);
    v12 = v11[34];
    v13 = v11[35];
    sub_100017D5C(v12, v13);
    v14 = Data.hexString.getter();
    v16 = v15;
    sub_100016590(v12, v13);
    sub_100007BAC(v102);
    v17 = sub_1000136BC(v14, v16, &v100);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "nonce: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v100 = v21;
    *v20 = 136315138;
    v22 = sub_1000035D0(v102, v103);
    v23 = *v22;
    v24 = v22[1];
    sub_100017D5C(*v22, v24);
    v25 = Data.hexString.getter();
    v27 = v26;
    sub_100016590(v23, v24);
    sub_100007BAC(v102);
    v28 = sub_1000136BC(v25, v27, &v100);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "serialNumber: %s", v20, 0xCu);
    sub_100007BAC(v21);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v100 = v32;
    *v31 = 136315138;
    v33 = sub_1000035D0(v102, v103);
    v34 = v33[2];
    v35 = v33[3];
    sub_100017D5C(v34, v35);
    v36 = Data.hexString.getter();
    v38 = v37;
    sub_100016590(v34, v35);
    sub_100007BAC(v102);
    v39 = sub_1000136BC(v36, v38, &v100);

    *(v31 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "altSerialNumber: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v107, v102);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v100 = v43;
    *v42 = 136315138;
    v44 = sub_1000035D0(v102, v103);
    v45 = v44[24];
    v46 = v44[25];
    sub_100017D5C(v45, v46);
    v47 = Data.hexString.getter();
    v49 = v48;
    sub_100016590(v45, v46);
    sub_100007BAC(v102);
    v50 = sub_1000136BC(v47, v49, &v100);

    *(v42 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "SeedK1: %s", v42, 0xCu);
    sub_100007BAC(v43);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v107, v102);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v100 = v54;
    *v53 = 136315138;
    v55 = sub_1000035D0(v102, v103);
    v56 = *v55;
    v57 = v55[1];
    sub_100017D5C(*v55, v57);
    v58 = Data.hexString.getter();
    v60 = v59;
    sub_100016590(v56, v57);
    sub_100007BAC(v102);
    v61 = sub_1000136BC(v58, v60, &v100);

    *(v53 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v51, v52, "H1 (hashed C2): %s", v53, 0xCu);
    sub_100007BAC(v54);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v100 = v65;
    *v64 = 136315138;
    v66 = sub_1000035D0(v102, v103);
    v67 = v66[4];
    v68 = v66[5];
    sub_100017D5C(v67, v68);
    v69 = Data.hexString.getter();
    v71 = v70;
    sub_100016590(v67, v68);
    sub_100007BAC(v102);
    v72 = sub_1000136BC(v69, v71, &v100);

    *(v64 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v62, v63, "SeedS: %s", v64, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {

    sub_100007BAC(v102);
  }

  v74 = v4[37];
  v100 = v4[36];
  v73 = v100;
  v101 = v74;
  v75 = sub_1000035D0(v104, v105);
  v76 = *v75;
  v77 = v75[1];
  sub_100017D5C(v73, v74);
  sub_100017D5C(v76, v77);
  Data.append(_:)();
  sub_100016590(v76, v77);
  v78 = sub_1000035D0(v104, v105);
  v79 = v78[2];
  v80 = v78[3];
  sub_100017D5C(v79, v80);
  Data.append(_:)();
  sub_100016590(v79, v80);
  v81 = v4[26];
  v82 = v4[27];
  sub_100017D5C(v81, v82);
  Data.append(_:)();
  sub_100016590(v81, v82);
  v84 = v4[2];
  v83 = v4[3];
  sub_100017D5C(v84, v83);
  Data.append(_:)();
  sub_100016590(v84, v83);
  v85 = sub_1000035D0(v104, v105);
  v86 = v85[4];
  v87 = v85[5];
  sub_100017D5C(v86, v87);
  Data.append(_:)();
  sub_100016590(v86, v87);
  v88 = v100;
  v89 = v101;
  sub_100017D5C(v100, v101);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  sub_100016590(v88, v89);
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v102[0] = v93;
    *v92 = 136315138;
    v94 = Data.hexString.getter();
    v96 = sub_1000136BC(v94, v95, v102);

    *(v92 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v90, v91, "dataForSignatureVerification: %s", v92, 0xCu);
    sub_100007BAC(v93);
  }

  swift_beginAccess();
  v97 = v100;
  v98 = v101;
  sub_100017D5C(v100, v101);
  sub_100016590(v97, v98);
  sub_100007BAC(v107);
  sub_100007BAC(v104);
  return v97;
}

uint64_t sub_10093DAF4(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[46];
  v5 = v1[47];
  v6 = v1[48];
  v7 = v1[49];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10092C15C(a1, v12, v10, (v1 + 4), v4, v5, v6, v7);
}

uint64_t sub_10093DEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[33];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_1009350AC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10093E170(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[44];
  v6 = v1[45];
  v7 = v1[46];
  v8 = v1[47];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100930448(a1, v11, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t sub_10093E44C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[38];
  v7 = v1[39];
  v8 = v1[40];
  v9 = v1[41];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100936718(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10093E600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10093E6D4(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[48];
  v5 = v1[49];
  v6 = v1[50];
  v7 = v1[51];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1009287B4(a1, v12, v10, (v1 + 4), v4, v5, v6, v7);
}

uint64_t sub_10093E9D4(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

__n128 sub_10093EAAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_10093EAE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093EB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10093EBE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10093EC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10093ECD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10093ED18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10093EDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10093EDFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093EE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_10093EF4C(uint64_t a1)
{
  sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_10093F030(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10093F030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10093F09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093F0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10093F1A4()
{
  result = qword_1016AEDD8;
  if (!qword_1016AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDD8);
  }

  return result;
}

unint64_t sub_10093F1FC()
{
  result = qword_1016AEDE0;
  if (!qword_1016AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDE0);
  }

  return result;
}

unint64_t sub_10093F254()
{
  result = qword_1016AEDE8;
  if (!qword_1016AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDE8);
  }

  return result;
}

unint64_t sub_10093F2A8()
{
  result = qword_1016AEDF8;
  if (!qword_1016AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDF8);
  }

  return result;
}

unint64_t sub_10093F2FC()
{
  result = qword_1016AEE00;
  if (!qword_1016AEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE00);
  }

  return result;
}

unint64_t sub_10093F350()
{
  result = qword_1016AEE10;
  if (!qword_1016AEE10)
  {
    sub_1000BC580(&qword_1016AEE08, &qword_1013CA1E8);
    sub_10093C818(&qword_1016AEE18, type metadata accessor for AirPodsUnpairData.DeviceUnpairData, &unk_1013CA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE10);
  }

  return result;
}

unint64_t sub_10093F404()
{
  result = qword_1016AEE28;
  if (!qword_1016AEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE28);
  }

  return result;
}

unint64_t sub_10093F48C()
{
  result = qword_1016AEE30;
  if (!qword_1016AEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE30);
  }

  return result;
}

unint64_t sub_10093F4E4()
{
  result = qword_1016AEE38;
  if (!qword_1016AEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE38);
  }

  return result;
}

unint64_t sub_10093F53C()
{
  result = qword_1016AEE40;
  if (!qword_1016AEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE40);
  }

  return result;
}

unint64_t sub_10093F594()
{
  result = qword_1016AEE48;
  if (!qword_1016AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE48);
  }

  return result;
}

unint64_t sub_10093F5EC()
{
  result = qword_1016AEE50;
  if (!qword_1016AEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE50);
  }

  return result;
}

unint64_t sub_10093F644()
{
  result = qword_1016AEE58;
  if (!qword_1016AEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE58);
  }

  return result;
}

unint64_t sub_10093F69C()
{
  result = qword_1016AEE60;
  if (!qword_1016AEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE60);
  }

  return result;
}

unint64_t sub_10093F6F0()
{
  result = qword_1016AEE68;
  if (!qword_1016AEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE68);
  }

  return result;
}

uint64_t sub_10093F8F4()
{

  return swift_deallocClassInstance();
}

void *sub_10093F960(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[4] = _swiftEmptyArrayStorage;
  v2[5] = a1;
  sub_1000BC4D4(&qword_1016AF068, &qword_1013CA5E8);
  swift_allocObject();

  v2[2] = CurrentValueSubject.init(_:)();

  v3 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

  v2[3] = v3;
  return v2;
}

id sub_10093FA28()
{
  My = type metadata accessor for Feature.FindMy();
  v19 = My;
  v20 = sub_10004521C();
  v1 = sub_1000280DC(&v18._countAndFlagsBits);
  (*(*(My - 8) + 104))(v1, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v18);
  if (My)
  {
    v2 = static os_log_type_t.default.getter();
    if (qword_101694760 != -1)
    {
      v13 = v2;
      swift_once();
      v2 = v13;
    }

    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177ADF0, "Persisting connections is disabled when spPlaySoundAll is enabled.", 66, 2, _swiftEmptyArrayStorage);
LABEL_21:
    LOBYTE(v18._countAndFlagsBits) = 0;
    return CurrentValueSubject.send(_:)();
  }

  AnyCurrentValuePublisher.value.getter();
  if (LOBYTE(v18._countAndFlagsBits) == 1)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = result;
    v5 = MobileGestalt_copy_productType_obj();

    if (v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v6 = String.lowercased()();

    v18 = v6;
    sub_100940340();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    if ((v17 & 1) == 0)
    {
      v9 = static os_log_type_t.default.getter();
      if (qword_101694760 != -1)
      {
        v15 = v9;
        swift_once();
        v9 = v15;
      }

      goto LABEL_25;
    }
  }

  AnyCurrentValuePublisher.value.getter();
  if (v18._countAndFlagsBits != 1)
  {
LABEL_18:
    v11 = static os_log_type_t.default.getter();
    if (qword_101694760 != -1)
    {
      v14 = v11;
      swift_once();
      v11 = v14;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177ADF0, "This device does not support Persistent Connections.", 52, 2, _swiftEmptyArrayStorage);
    goto LABEL_21;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    v8 = MobileGestalt_copy_productType_obj();

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v10 = String.lowercased()();

    v18 = v10;
    sub_100940340();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    if (v17)
    {
      goto LABEL_18;
    }

    v12 = static os_log_type_t.default.getter();
    if (qword_101694760 != -1)
    {
      v16 = v12;
      swift_once();
      v12 = v16;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177ADF0, "This is the only device which supports Persistent Connections.", 62, 2, _swiftEmptyArrayStorage);
LABEL_25:
    LOBYTE(v18._countAndFlagsBits) = 1;
    return CurrentValueSubject.send(_:)();
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_10093FE18(uint64_t a1)
{
  AnyCurrentValuePublisher.publisher.getter();
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  AnyCurrentValuePublisher.publisher.getter();
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return sub_10093FA28();
}

uint64_t sub_100940080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10093FA28();
  }

  return result;
}

Swift::Int sub_1009400D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10094013C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100940188@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C9C0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100940204()
{
}

uint64_t sub_100940234()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1009402E4()
{
  result = qword_1016AF060;
  if (!qword_1016AF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF060);
  }

  return result;
}

unint64_t sub_100940340()
{
  result = qword_1016AF070;
  if (!qword_1016AF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF070);
  }

  return result;
}

unint64_t sub_1009403EC()
{
  result = qword_1016AF088;
  if (!qword_1016AF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF088);
  }

  return result;
}

unint64_t sub_100940444()
{
  result = qword_1016AF090;
  if (!qword_1016AF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF090);
  }

  return result;
}

unint64_t sub_10094049C()
{
  result = qword_1016AF098;
  if (!qword_1016AF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF098);
  }

  return result;
}

uint64_t sub_1009404F0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B718);
  sub_1000076D4(v0, qword_10177B718);
  return Logger.init(subsystem:category:)();
}

NSString sub_10094059C()
{
  result = String._bridgeToObjectiveC()();
  qword_10177B730 = result;
  return result;
}

uint64_t sub_1009405D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  __chkstk_darwin(v1);
  v41 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v30[2] = "erver response. Error - %@";
  v32 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v31 = *(v10 + 104);
  v31(v12);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v30[1] = sub_100946848(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v30[0] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v35 = &protocol conformance descriptor for [A];
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v33;
  v15 = v34;
  *(v34 + 24) = v13;
  (v31)(v12, v32, v14);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v9;
  *(v15 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  PressuredExitTransactionManager.init()();
  *(v15 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress) = 0;
  *(v15 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress) = 0;
  *(v15 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_macConfigUpdateInProgress) = 0;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = sub_100940DB4;
  v17[4] = 0;

  unsafeFromAsyncTask<A>(_:)();

  v18 = [objc_opt_self() defaultCenter];
  v19 = swift_allocObject();
  swift_weakInit();
  v49 = sub_100946838;
  v50 = v19;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100F0FA50;
  v48 = &unk_10163ED68;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  v23 = v36;
  v22 = v37;
  v24 = v38;
  (*(v37 + 104))(v36, enum case for DispatchQoS.QoSClass.default(_:), v38);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v23, v24);
  v49 = sub_100946840;
  v50 = v15;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100006684;
  v48 = &unk_10163ED90;
  v26 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, v35);
  v28 = v41;
  v27 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v43 + 8))(v28, v27);
  (*(v39 + 8))(v16, v40);

  return v15;
}

uint64_t sub_100940DB4()
{
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B718);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Language change notification received. Exiting at next opportunity.", v3, 2u);
  }

  return _xpc_transaction_exit_clean();
}

uint64_t sub_100940E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100940F6C;

  return daemon.getter();
}

uint64_t sub_100940F6C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_100946848(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009410C4, v3, v2);
}

uint64_t sub_1009410C4()
{
  *(v0 + 64) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100941138, 0, 0);
}

uint64_t sub_100941138()
{
  if (qword_101694AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B730;
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  swift_weakInit();
  v5 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100941270;

  return v5(v1, &unk_1013CA848, v2);
}

uint64_t sub_100941270(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100941394, 0, 0);
}

uint64_t sub_100941394()
{
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[13] = v7;
  v0[14] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013CA858, v8);

  sub_10022D788(v2);
  v9 = swift_allocObject();
  v0[15] = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v12 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_10094155C;

  return v12(0xD00000000000002BLL, 0x80000001013662A0, &unk_1013CA868, v9);
}

uint64_t sub_10094155C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10094167C, 0, 0);
}

uint64_t sub_10094167C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  (*(v0 + 104))(v3, 1, 1, *(v0 + 96));
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_1013CA878, v5);

  sub_10022D788(v3);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  *(v0 + 144) = v7;
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v2;
  v12 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_100941818;

  return v12(v6, v8, &unk_1013CA888, v9);
}

uint64_t sub_100941818(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100941954, 0, 0);
}

uint64_t sub_100941954()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  (*(v0 + 104))(v2, 1, 1, *(v0 + 96));
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013CA898, v3);

  sub_10022D788(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100941A88()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100941FE8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100941B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100941B34, 0, 0);
}

uint64_t sub_100941B34()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100941B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100946D0C, 0, 0);
}

uint64_t sub_100941BB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100941FE8();
  }

  return result;
}

uint64_t sub_100941C10(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v35 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  static Locale.current.getter();
  v15 = Locale.languageCode.getter();
  v17 = v16;
  v18 = *(v3 + 8);
  result = v18(v8, v2);
  if (v17)
  {
    if (v14)
    {
      if (v15 == v12 && v17 == v14)
      {
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
      }
    }

    else
    {
    }
  }

  else if (!v14)
  {
    return result;
  }

  v36 = v12;
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177B718);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    v39 = v35[0];
    *v25 = 136446466;
    static Locale.current.getter();
    v26 = Locale.languageCode.getter();
    v35[1] = a1;
    v28 = v27;
    v18(v6, v2);
    v37 = v26;
    v38 = v28;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000136BC(v29, v30, &v39);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v37 = v36;
    v38 = v14;
    v32 = String.init<A>(describing:)();
    v34 = sub_1000136BC(v32, v33, &v39);

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Current locale (%{public}s) does not match last one we know (%{public}s). Updating configuration.", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100941FE8();
}

uint64_t sub_100941FE8()
{
  v1 = v0;
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v1 + 24);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.notOnQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v16 = (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_100946848(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v8, v2);
  if (v17)
  {
    v16 = static os_log_type_t.default.getter();
    if (qword_101695008 == -1)
    {
      return os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C340, "updateConfiguration aborted because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    }

LABEL_11:
    v22 = v16;
    swift_once();
    v16 = v22;
    return os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C340, "updateConfiguration aborted because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v24[15] == 1)
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v20 = sub_100945DA0();
    *&v24[-32] = __chkstk_darwin(v20);
    *&v24[-24] = v1;
    *&v24[-16] = v14;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v21 = static os_log_type_t.default.getter();
    if (qword_101695008 != -1)
    {
      v23 = v21;
      swift_once();
      v21 = v23;
    }

    return os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10177C340, "updateConfiguration aborted because we already started updating.", 64, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100942414(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  v8 = a4;
  Future.addFailure(block:)();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = v8;

  v10 = v8;
  Future.addSuccess(block:)();
}

uint64_t sub_100942514(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Transaction.capture()();
  v23 = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *a3;
  sub_1000BC4D4(&qword_1016AF250, &qword_1013CA810);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v17 = String.init<A>(describing:)();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v18;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v19, "%@: Error getting roles from server. Error - %@", 47, 2, v12);

  aBlock[4] = sub_100946D04;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EC28;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v8, v6);
  (*(v24 + 8))(v11, v25);
}

uint64_t sub_100942904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  Transaction.capture()();
  static Locale.current.getter();
  v13 = Locale.languageCode.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (!v15)
  {
    v15 = 0xE700000000000000;
  }

  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B718);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v20 = 136446466;
    *(v20 + 4) = sub_1000136BC(v16, v15, aBlock);
    *(v20 + 12) = 2080;
    v39 = v12;

    v21 = String.init<A>(describing:)();
    v32 = v18;
    v23 = sub_1000136BC(v21, v22, aBlock);

    *(v20 + 14) = v23;
    v18 = v32;
    _os_log_impl(&_mh_execute_header, v32, v19, "Received [%{public}s] roles from server %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v34;
  sub_1009453BC(v12, 2, v34);
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();
  [v25 setObject:v26 forKey:v27];

  aBlock[4] = sub_10094615C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EB60;
  v28 = _Block_copy(aBlock);

  v29 = v35;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v5 + 8))(v30, v4);
  (*(v36 + 8))(v29, v38);
}

uint64_t sub_100942EE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_10094627C();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = a2;

  v6 = v4;

  Future.addFailure(block:)();

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;

  v8 = v6;

  Future.addSuccess(block:)();
}

uint64_t sub_100942FF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B718);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24[1] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = a1;
    aBlock[0] = v18;
    *v17 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000136BC(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to update server config due to %{public}s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  aBlock[4] = sub_100946D08;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ED18;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1009433F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConfigurationResponse(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  Transaction.capture()();
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177B718);
  sub_1009466B0(a1, v17, type metadata accessor for ConfigurationResponse);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = a1;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v34 = v11;
    v25 = v8;
    v26 = a3;
    sub_1009466B0(v17, v15, type metadata accessor for ConfigurationResponse);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100946718(v17, type metadata accessor for ConfigurationResponse);
    v30 = sub_1000136BC(v27, v29, aBlock);

    *(v22 + 4) = v30;
    a3 = v26;
    v8 = v25;
    v11 = v34;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received server config %s", v22, 0xCu);
    sub_100007BAC(v24);
    a1 = v33;

    v6 = v35;
  }

  else
  {

    sub_100946718(v17, type metadata accessor for ConfigurationResponse);
  }

  sub_100945710(a1, 1, a3);
  aBlock[4] = sub_100946660;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ECA0;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v38 + 8))(v8, v6);
  (*(v36 + 8))(v11, v37);
}

uint64_t sub_1009438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v9 = *(v2 + 32);
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100945CA4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10163EAE8;
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

uint64_t sub_100943B8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100943DB0(a1);
  }

  return result;
}

uint64_t sub_100943C10(uint64_t a1, uint64_t a2)
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

uint64_t sub_100943DB0(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = *(v1 + 32);
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100945C50;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10163EA48;
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

uint64_t sub_100943FE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v6[2] = a2;

  *(a1 + 16) = sub_10013DE8C(sub_100945C68, v6, v4);
}

BOOL sub_100944074(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  sub_1000041A4(&qword_1016AF240, &qword_101697DE8, &unk_1013CA800, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100944118(uint64_t a1, uint64_t a2, int a3)
{
  v58 = a3;
  v57 = a2;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v59 - 8);
  __chkstk_darwin(v59);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v62);
  v61 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v39 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v9;
    v17 = result;
    swift_beginAccess();
    v18 = *(v17 + 16);

    v19 = v18;

    v20 = *(v18 + 16);
    if (v20)
    {
      v54 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v22 = *(v12 + 16);
      v21 = v12 + 16;
      v53 = v22;
      v23 = *(v21 + 64);
      v39 = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v51 = (v10 + 104);
      v50 = (v10 + 8);
      v49 = *(v21 + 56);
      v47 = v4;
      v46 = (v21 + 16);
      v45 = enum case for DispatchQoS.QoSClass.default(_:);
      v52 = v23;
      v44 = (v23 + 16) & ~v23;
      v43 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = v66;
      ++v41;
      v40 = (v6 + 8);
      v55 = v5;
      v48 = v21;
      do
      {
        v25 = v60;
        v26 = v62;
        v53(v60, v24, v62);
        v27 = v63;
        v28 = v56;
        (*v51)(v63, v45, v56);
        v29 = static OS_dispatch_queue.global(qos:)();
        (*v50)(v27, v28);
        v30 = *v46;
        v31 = v61;
        (*v46)(v61, v25, v26);
        sub_10001F280(v57, &v67);
        v32 = v43;
        v33 = swift_allocObject();
        v30((v33 + v44), v31, v26);
        sub_10000A748(&v67, v33 + v32);
        *(v33 + v32 + 40) = v58;
        v66[2] = sub_10094617C;
        v66[3] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v66[0] = sub_100006684;
        v66[1] = &unk_10163EC00;
        v34 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v35 = v47;
        v36 = v59;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v37 = v34;
        v38 = v55;
        _Block_release(v37);

        (*v41)(v35, v36);
        (*v40)(v8, v38);

        v24 += v49;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t sub_100944808(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  Subscription.subscriber.getter();
  v5 = *sub_1000035D0(v10, v10[3]);
  v6 = a2[3];
  v7 = a2[4];
  v8 = sub_1000035D0(a2, v6);
  sub_1001503B4(v8, a3, 1, 0, 0, v5, v6, v7);
  return sub_100007BAC(v10);
}

uint64_t sub_1009448AC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = type metadata accessor for ConfigurationResponse(0);
  __chkstk_darwin(v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v10 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v12 = v11;
  static String.Encoding.utf8.getter();
  v13 = String.init(data:encoding:)();
  v15 = v14;
  sub_100016590(v10, v12);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v15)
  {
    if (qword_101694AC8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B718);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = a1;
      v22 = v4;
      v23 = v21;
      v43[0] = v21;
      *v20 = 136315138;
      v24 = sub_1000136BC(v13, v15, v43);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "serverConfiguration raw data: %s", v20, 0xCu);
      sub_100007BAC(v23);
      v4 = v22;
      a1 = v40;

      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    }

    else
    {
    }
  }

  if (p_weak_ivar_lyt[345] != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B718);
  (*(v6 + 16))(v8, a1, v5);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136315138;
    sub_100946848(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v4;
    v33 = v32;
    (*(v6 + 8))(v8, v5);
    v34 = sub_1000136BC(v30, v33, v43);
    v4 = v31;

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "serverConfiguration: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v35 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v37 = v36;
  sub_100946848(qword_1016AF270, type metadata accessor for ConfigurationResponse, &unk_1013CF4D8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v35, v37);
  Future.finish(result:)();

  return sub_100946718(v4, type metadata accessor for ConfigurationResponse);
}

uint64_t sub_100944F04(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v6, "Request to get roles from server failed with error - %@", 55, 2, v2);

  return Future.finish(error:)();
}

uint64_t sub_100945028()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v0 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v2 = v1;
  sub_100946228();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v0, v2);
  Future.finish(result:)();
}

uint64_t sub_10094517C()
{

  v1 = OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_transactionManager;
  v2 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerConfigurationProvider(uint64_t a1)
{
  result = qword_1016AF0E0;
  if (!qword_1016AF0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100945284(uint64_t a1)
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

uint64_t sub_100945364(uint64_t a1)
{
  result = sub_100946848(&qword_1016AF238, type metadata accessor for ServerConfigurationProvider, &unk_1013CA788);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1009453BC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = &type metadata for RolesResponse;
  v22[4] = &off_101630380;
  v22[0] = a1;
  v16[1] = *(a3 + 32);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v22, v21);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_10000A748(v21, v13 + 24);
  *(v13 + 64) = a2;
  aBlock[4] = sub_10094616C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EBB0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);

  return sub_100007BAC(v22);
}

uint64_t sub_100945710(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for ConfigurationResponse(0);
  v23[4] = &off_10163E450;
  v12 = sub_1000280DC(v23);
  sub_1009466B0(a1, v12, type metadata accessor for ConfigurationResponse);
  v17[1] = *(a3 + 32);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v23, v22);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_10000A748(v22, v14 + 24);
  *(v14 + 64) = a2;
  aBlock[4] = sub_100946D38;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ECF0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);

  return sub_100007BAC(v23);
}

void sub_100945A80(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073B58(v9);

  if (v2 != a1)
  {
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v3)
    {
      v4 = v3;
      if (qword_101694AD0 != -1)
      {
        swift_once();
      }

      v5 = qword_10177B730;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v6 = static OS_os_log.default.getter();
      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Posting com.apple.icloud.searchpartyd.fetchServerConfiguration Darwin notification", 82, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

      CFNotificationCenterPostNotification(v4, v5, 0, 0, 1u);
    }

    else
    {
      v8 = static os_log_type_t.error.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v4 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v4, "CFNotificationCenterGetDarwinNotifyCenter return nil!", 53, 2, _swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_100945CBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100945D40(_BYTE *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress;
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress))
  {
    *a1 = 0;
  }

  else if (*(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress))
  {
    *a1 = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress) = 1;
    *(v1 + v2) = 1;
    *a1 = 1;
  }
}

uint64_t sub_100945DA0()
{
  v0 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - v1;
  v2 = type metadata accessor for FMNAccountType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoleCategoriesEndpoint(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_1000BC4D4(&qword_1016AF258, &qword_1013CA818);
  swift_allocObject();
  v13 = Future.init()();
  v14 = enum case for FMNAccountType.searchParty(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FMNAccountType.searchParty(_:), v2);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v12 = sub_1010B32C8(v5);
  v15(&v12[*(v7 + 28)], v14, v2);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v16 = type metadata accessor for FMNMockingPreferences();
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v18 = swift_allocObject();
  sub_1009466B0(v12, v10, type metadata accessor for RoleCategoriesEndpoint);
  v19 = sub_100623E5C(v10, v17, v18);
  sub_100946718(v12, type metadata accessor for RoleCategoriesEndpoint);
  sub_1013166B0();
  v21 = v20;
  v23 = v22;
  sub_1008B4A24(v24, v20, v22, v19);

  sub_100016590(v21, v23);

  Future.addFailure(block:)();

  Future.addSuccess(block:)();

  return v13;
}

uint64_t sub_10094617C()
{
  v1 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v3 + 40);

  return sub_100944808(v0 + v2, v3, v4);
}

unint64_t sub_100946228()
{
  result = qword_1016AF260;
  if (!qword_1016AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF260);
  }

  return result;
}

uint64_t sub_10094627C()
{
  v0 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - v1;
  v2 = type metadata accessor for FMNAccountType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfigurationEndpoint(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_1000BC4D4(&qword_1016AF268, &unk_1013CA820);
  swift_allocObject();
  v13 = Future.init()();
  v14 = enum case for FMNAccountType.searchParty(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FMNAccountType.searchParty(_:), v2);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v12 = sub_1010B32C8(v5);
  v15(&v12[*(v7 + 28)], v14, v2);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v16 = type metadata accessor for FMNMockingPreferences();
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v18 = swift_allocObject();
  sub_1009466B0(v12, v10, type metadata accessor for ConfigurationEndpoint);
  v19 = sub_100624274(v10, v17, v18);
  sub_100946718(v12, type metadata accessor for ConfigurationEndpoint);
  sub_1013166B0();
  v21 = v20;
  v23 = v22;
  sub_1008B4A24(v24, v20, v22, v19);

  sub_100016590(v21, v23);

  Future.addFailure(block:)();

  Future.addSuccess(block:)();

  return v13;
}

uint64_t sub_10094660C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100946670()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_1009466B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100946718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100946784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100940E9C(a1, v4, v5, v6);
}

uint64_t sub_100946848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100946890(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100941A68(a1, v1);
}

uint64_t sub_100946928()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1009469DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100941B14(a1, v5, v4);
}

uint64_t sub_100946A84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100946B38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100941B98(a1, v5, v4);
}

uint64_t sub_100946BE0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100946C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100946D3C()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100946DD0;

  return daemon.getter();
}

uint64_t sub_100946DD0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000195D0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000195D0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100946FAC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100946FAC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 24);

    v5 = sub_1009473A4;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_100947104;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_100947104()
{

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1009471E4;
  v3 = *(v0 + 56);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1009471E4()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1009472FC, v1, 0);
}

uint64_t sub_1009472FC()
{
  v1 = v0[3];
  v0[9] = v0[2];
  return _swift_task_switch(sub_10094731C, v1, 0);
}

uint64_t sub_10094731C()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1009473A4()
{
  v9 = v0;
  if (qword_1016954A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x80000001013662D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s No BeaconStore available!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_10094751C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for BeaconIdentifier(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v3[14] = *(v6 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[21] = v8;
  *v8 = v3;
  v8[1] = sub_100947754;

  return daemon.getter();
}

uint64_t sub_100947754(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[22] = a1;

  v3 = swift_task_alloc();
  v2[23] = v3;
  v4 = type metadata accessor for Daemon();
  v2[24] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000195D0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[25] = v6;
  v7 = sub_1000195D0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100947934;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100947934(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100948BA4;
  }

  else
  {
    v7 = *(v4 + 64);

    *(v4 + 304) = *(v7 + 20);
    v6 = sub_100947A78;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100947A78()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(v4 + 16))(v2, *(v0 + 24) + *(v0 + 304), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 224) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_100947BE0;
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v6, v9);
}

uint64_t sub_100947BE0()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100947D0C, v1, 0);
}

uint64_t sub_100947D0C()
{
  v36 = v0;
  v1 = v0[17];
  if ((*(v0[19] + 48))(v1, 1, v0[18]) == 1)
  {
    sub_100948E18(v1);
    if (qword_1016954A8 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177CDA0);
    sub_100429A68(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[9];
      v8 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v8 = 136315651;
      *(v8 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013662F0, &v33);
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      sub_1000195D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v9;
      v10._countAndFlagsBits = 47;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12 = v34;
      v13 = v35;
      sub_100948E80(v7, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v12, v13, &v33);

      *(v8 + 24) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s no beacon record for %{private,mask.hash}s. Looking up standalone beacons...", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = v0[9];

      sub_100948E80(v28, type metadata accessor for BeaconIdentifier);
    }

    v29 = swift_task_alloc();
    v0[31] = v29;
    *v29 = v0;
    v29[1] = sub_10094866C;

    return daemon.getter();
  }

  else
  {
    sub_10002ABDC(v1, v0[20], type metadata accessor for OwnedBeaconRecord);
    if (qword_1016954A8 != -1)
    {
      swift_once();
    }

    v15 = v0[11];
    v16 = v0[3];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177CDA0);
    sub_100429A68(v16, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[11];
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v21 = 136315651;
      *(v21 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013662F0, &v33);
      *(v21 + 12) = 2160;
      *(v21 + 14) = 1752392040;
      *(v21 + 22) = 2081;
      sub_1000195D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v22;
      v23._countAndFlagsBits = 47;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25 = v34;
      v26 = v35;
      sub_100948E80(v20, type metadata accessor for BeaconIdentifier);
      v27 = sub_1000136BC(v25, v26, &v33);

      *(v21 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s found beacon record for %{private,mask.hash}s!", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v30 = v0[11];

      sub_100948E80(v30, type metadata accessor for BeaconIdentifier);
    }

    v31 = swift_task_alloc();
    v0[30] = v31;
    *v31 = v0;
    v31[1] = sub_10094830C;

    return sub_100D5F8B4();
  }
}

uint64_t sub_10094830C(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 308) = a1;

  return _swift_task_switch(sub_100948424, v2, 0);
}

uint64_t sub_100948424()
{
  v28 = *(v0 + 308);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v27 = v5;
  v6 = *(v0 + 40);
  v25 = v3;
  v26 = v6;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  sub_100429A68(v8, v3);
  (*(v4 + 16))(v5, v1 + v2[8], v6);
  v9 = (v1 + v2[12]);
  v11 = *v9;
  v10 = v9[1];
  v12 = v2[10];
  v13 = (v1 + v2[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v1 + v12);
  v17 = *(v1 + v12 + 8);
  sub_100017D5C(v11, v10);
  sub_100017D5C(v14, v15);
  sub_1002DBC68(v16, v17);
  sub_100948E80(v1, type metadata accessor for OwnedBeaconRecord);
  if (v28)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v29 = v18;
  sub_10002ABDC(v25, v7, type metadata accessor for BeaconIdentifier);
  v19 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(v4 + 32))(v7 + v19[5], v27, v26);
  v20 = v7 + v19[6];
  *&v21 = v11;
  *(&v21 + 1) = v10;
  *&v22 = v14;
  *(&v22 + 1) = v15;
  *v20 = v21;
  *(v20 + 16) = v22;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  *(v7 + v19[7]) = v29;
  (*(*(v19 - 1) + 56))(v7, 0, 1, v19);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10094866C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 256) = a1;

  v5 = swift_task_alloc();
  *(v3 + 264) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_1000195D0(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100948820;
  v8 = *(v2 + 200);
  v9 = *(v2 + 192);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100948820(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_100948C70, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[36] = v6;
    *v6 = v4;
    v6[1] = sub_1009489AC;
    v7 = v3[2];
    v8 = v3[3];

    return sub_10098F404(v7, v8);
  }
}

uint64_t sub_1009489AC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100948D44;
  }

  else
  {
    v4 = sub_100948AD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100948AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100948BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100948C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100948D44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100948E18(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100948E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100948F40(uint64_t a1, unsigned int a2)
{
  v43 = a2;
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v31 = v2;
  v47 = _swiftEmptyArrayStorage;
  sub_101125468(0, v9, 0);
  v10 = v47;
  v11 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v13 = v4;
  v14 = result;
  v15 = 0;
  v37 = a1 + 56;
  v38 = v13;
  v35 = v13 + 8;
  v36 = v13 + 16;
  v32 = a1 + 64;
  v33 = v9;
  v34 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v44 = v15;
    v45 = *(a1 + 36);
    v46 = v14 >> 6;
    v17 = v38;
    v18 = *(a1 + 48) + *(v38 + 72) * v14;
    v19 = *(v38 + 16);
    v20 = v41;
    v21 = v42;
    v19(v41, v18, v42);
    v19(v8, v20, v21);
    swift_storeEnumTagMultiPayload();
    (*(v17 + 8))(v20, v21);
    v47 = v10;
    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      sub_101125468((v22 > 1), v23 + 1, 1);
      v10 = v47;
    }

    v10[2] = v23 + 1;
    result = sub_100986170(v8, v10 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
    a1 = v34;
    v16 = 1 << *(v34 + 32);
    v11 = v37;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v24 = *(v37 + 8 * v46);
    if ((v24 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v14 & 0x3F));
    if (v25)
    {
      v16 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v46 << 6;
      v27 = v46 + 1;
      v28 = (v32 + 8 * v46);
      while (v27 < (v16 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_10040BA00(v14, v45, 0);
          v16 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v14, v45, 0);
    }

LABEL_4:
    v15 = v44 + 1;
    v14 = v16;
    if (v44 + 1 == v33)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100949310()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B740);
  sub_1000076D4(v0, qword_10177B740);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100949390(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v19 = *a3;
  v6 = *(a3 + 2);
  v7 = *(a3 + 24);
  v8 = *(a3 + 8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[3];
  v18 = a3[2];
  v17 = v13;
  XPCSession.identifier.getter();
  swift_beginAccess();

  sub_1009871D4(a3, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 72);
  v26 = v8;
  v27[0] = v15;
  *(a1 + 72) = 0x8000000000000000;
  v20 = a2;
  v21 = v19;
  v22 = v6;
  v23 = v7 & 1;
  v24 = v18;
  v25 = v17;
  sub_100FFFAD4(&v20, v12, isUniquelyReferenced_nonNull_native);
  (*(v10 + 8))(v12, v9);
  *(a1 + 72) = v27[0];
  return swift_endAccess();
}