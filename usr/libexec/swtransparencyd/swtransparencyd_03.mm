uint64_t sub_10005A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[91] = a1;
  v5[92] = a2;
  v5[93] = a3;
  v5[94] = v3;

  if (v3)
  {
    v6 = sub_10005C4D0;
  }

  else
  {
    v6 = sub_10005A8E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10005A8E8()
{
  v233 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 744);
  MachTime.seconds.getter(v1);
  static Date.now.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v9 = *(v0 + 688);
    v10 = *(v0 + 648);
    v11 = *(v0 + 632);
    v12 = *(v0 + 608);

    v9(v11, v10, v12);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 592);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v232[0] = v17;
      *v16 = 136315138;
      URLRequest.url.getter();
      v18 = type metadata accessor for URL();
      v19 = *(v18 - 8);
      v20 = (*(v19 + 48))(v15, 1, v18);
      v21 = *(v0 + 592);
      if (v20 == 1)
      {
        sub_10002533C(*(v0 + 592), &qword_100152F00, &qword_1001042C0);
        v22 = 0xEB000000004C5255;
        v23 = 0x206E776F6E6B6E75;
      }

      else
      {
        v23 = URL.description.getter();
        v22 = v103;
        (*(v19 + 8))(v21, v18);
      }

      (*(v0 + 704))(*(v0 + 632), *(v0 + 608));
      v104 = sub_100021D24(v23, v22, v232);

      *(v16 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v13, v14, "Bad URL response from %s", v16, 0xCu);
      sub_100024E14(v17);
    }

    else
    {
      v69 = *(v0 + 704);
      v70 = *(v0 + 632);
      v71 = *(v0 + 608);

      v69(v70, v71);
    }

    v105 = *(*(v0 + 544) + 120);
    v106 = *(v0 + 736);
    v216 = *(v0 + 744);
    v223 = *(v0 + 728);
    v107 = *(v0 + 704);
    v108 = *(v0 + 648);
    v109 = *(v0 + 608);
    v110 = *(v0 + 576);
    v111 = *(v0 + 568);
    v229 = *(v0 + 560);
    if (v105)
    {
      swift_beginAccess();
      v204 = v106;

      v112 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v113 = 1;
      *(v113 + 8) = 1;
      v197 = v108;
      v114 = _convertErrorToNSError(_:)();
      v115 = v109;
      v116 = _convertErrorToNSError(_:)();

      [v105 logResultForEvent:v112 hardFailure:1 result:v116];

      swift_allocError();
      *v117 = 1;
      *(v117 + 8) = 1;
      swift_willThrow();

      sub_100026FB0(v223, v204);
      (*(v111 + 8))(v110, v229);
      v107(v197, v115);
    }

    else
    {
      sub_10005CB24();
      swift_allocError();
      *v120 = 1;
      *(v120 + 8) = 1;
      swift_willThrow();

      sub_100026FB0(v223, v106);
      (*(v111 + 8))(v110, v229);
      v107(v108, v109);
    }

    goto LABEL_34;
  }

  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 valueForHTTPHeaderField:v5];

  if (v6)
  {
    v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
    v219 = 0x3E4853206F6E3CLL;
  }

  v24 = *(v0 + 744);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 744);
  v29 = &stru_10014B000;
  v227 = v8;
  if (v27)
  {
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);
    v211 = *(v0 + 656);
    v32 = *(v0 + 808);
    v33 = swift_slowAlloc();
    v232[0] = swift_slowAlloc();
    *v33 = 134218498;
    *(v33 + 4) = [v4 statusCode];

    *(v33 + 12) = 2080;
    *(v0 + 272) = v30;
    *(v0 + 280) = v31;
    *(v0 + 288) = v32;
    *(v0 + 296) = v211;
    sub_10005CB8C();
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_100021D24(v34, v35, v232);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_100021D24(v219, v227, v232);
    _os_log_impl(&_mh_execute_header, v25, v26, "Received %ld response for %s with %s", v33, 0x20u);
    swift_arrayDestroy();
    v29 = &stru_10014B000;
  }

  else
  {
  }

  v37 = [v4 v29[38].name];
  v38 = *(v0 + 544);
  if (v37 != 200)
  {

    v52 = [v4 v29[38].name];
    v53 = *(v38 + 120);
    if (v53)
    {
      swift_beginAccess();

      v54 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v55 = v52;
      *(v55 + 8) = 0;
      v56 = _convertErrorToNSError(_:)();
      v57 = _convertErrorToNSError(_:)();

      [v53 logResultForEvent:v54 hardFailure:1 result:v57];
    }

    sub_100025834(*(v0 + 544) + 128, v0 + 16, &qword_100153B58, &qword_100105C68);
    v58 = *(v0 + 40);
    v228 = v52;
    if (v58)
    {
      v213 = *(v0 + 48);
      v220 = *(v0 + 544);
      sub_100026F6C((v0 + 16), v58);
      sub_10005CB24();
      v59 = swift_allocError();
      *v60 = v52;
      *(v60 + 8) = 0;
      sub_100024248(&qword_1001535C8, &qword_100104BE8);
      v61 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100104980;
      v65 = (v64 + v63);
      *v65 = 7368801;
      v65[1] = 0xE300000000000000;
      EventValue.init(integerLiteral:)();
      v66 = (v65 + v62);
      *v66 = 0x6D69546863746566;
      v66[1] = 0xE900000000000065;
      EventValue.init(floatLiteral:)();
      v67 = (v65 + 2 * v62);
      *v67 = 7761509;
      v67[1] = 0xE300000000000000;
      v48 = [*(v220 + 8) currentEnvironment];
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      EventValue.init(integerLiteral:)();
      v68 = sub_10004C674(v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v213 + 8))(0x73656C696D747753, 0xEC000000656E6F74, v59, v68, v58);

      sub_100024E14((v0 + 16));
    }

    else
    {
      sub_10002533C(v0 + 16, &qword_100153B58, &qword_100105C68);
    }

    v85 = *(v0 + 744);
    v86 = *(v0 + 736);
    v87 = *(v0 + 728);
    v215 = *(v0 + 648);
    v222 = *(v0 + 704);
    v206 = *(v0 + 608);
    v88 = *(v0 + 576);
    v89 = *(v0 + 568);
    v90 = *(v0 + 560);
    sub_10005CB24();
    swift_allocError();
    *v91 = v228;
    *(v91 + 8) = 0;
    swift_willThrow();

    sub_100026FB0(v87, v86);
    (*(v89 + 8))(v88, v90);
    v222(v215, v206);
    goto LABEL_34;
  }

  v203 = *(v0 + 544);
  sub_100025834(v38 + 128, v0 + 56, &qword_100153B58, &qword_100105C68);
  v39 = *(v0 + 80);
  if (v39)
  {
    v40 = *(v0 + 544);
    v212 = *(v0 + 88);
    sub_100026F6C((v0 + 56), v39);
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v41 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
    v42 = *(*(v41 - 8) + 72);
    v43 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100104980;
    v45 = (v44 + v43);
    *v45 = 7368801;
    v45[1] = 0xE300000000000000;
    EventValue.init(integerLiteral:)();
    v46 = (v44 + v43 + v42);
    *v46 = 0x6D69546863746566;
    v46[1] = 0xE900000000000065;
    EventValue.init(floatLiteral:)();
    v47 = (v44 + v43 + 2 * v42);
    *v47 = 7761509;
    v47[1] = 0xE300000000000000;
    v48 = [*(v40 + 8) currentEnvironment];
    if ((v48 & 0x8000000000000000) == 0)
    {
      EventValue.init(integerLiteral:)();
      v51 = sub_10004C674(v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v212 + 8))(0x73656C696D747753, 0xEC000000656E6F74, 0, v51, v39);

      sub_100024E14((v0 + 56));
      goto LABEL_22;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_10002533C(v0 + 56, &qword_100153B58, &qword_100105C68);
LABEL_22:
  v72 = *(*(v0 + 544) + 120);
  if (v72)
  {
    swift_beginAccess();

    v73 = String._bridgeToObjectiveC()();

    [v72 logResultForEvent:v73 hardFailure:0 result:0];
  }

  v74 = *(v0 + 752);
  v75 = *(v0 + 736);
  v76 = *(v0 + 728);
  objc_allocWithZone(MilestoneRootsResponse);
  sub_100027004(v76, v75);
  v77 = sub_1000330B8();
  *(v0 + 760) = v77;
  if (!v74)
  {
    v92 = v77;
    v93 = *(v0 + 576);
    v94 = *(v0 + 568);
    v95 = *(v0 + 560);
    v96 = *(v0 + 552);
    v97 = *(v0 + 544);
    sub_100026FB0(*(v0 + 728), *(v0 + 736));
    sub_1000331C0(v97 + 24, v0 + 96);
    sub_100069D48(v0 + 96);
    (*(v94 + 16))(v96, v93, v95);
    (*(v94 + 56))(v96, 0, 1, v95);
    MilestoneRootsResponse.receiptTime.setter(v96);
    v98 = *(v97 + 8);
    v99 = v98;
    MilestoneRootsResponse.configBag.setter(v98);
    v100 = *(v97 + 16);
    v100;
    MilestoneRootsResponse.keyBag.setter(v100);
    v101 = MilestoneRootsResponse.isNewEpoch()();
    if (v102)
    {
    }

    else if (v101)
    {
      v121 = *(v0 + 544);

      sub_10007F3F0();
      v49 = *(v121 + 104);
      *(v0 + 768) = v49;
      if (!v49)
      {

        v181 = *(v0 + 744);
        v182 = *(v0 + 704);
        v183 = *(v0 + 648);
        v184 = *(v0 + 608);
        v185 = *(v0 + 576);
        v186 = *(v0 + 568);
        v187 = *(v0 + 560);
        sub_100026FB0(*(v0 + 728), *(v0 + 736));

        (*(v186 + 8))(v185, v187);
        v182(v183, v184);
        goto LABEL_34;
      }

      v122 = *v49 + 184;
      *(v0 + 776) = *v122;
      *(v0 + 784) = v122 & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
      v48 = sub_10005C27C;
      v50 = 0;

      return _swift_task_switch(v48, v49, v50);
    }

    MilestoneRootsResponse.verify()();
    if (v123 == 1)
    {
      if (v72)
      {
        swift_beginAccess();

        v124 = String._bridgeToObjectiveC()();

        [v72 logResultForEvent:v124 hardFailure:0 result:0];
      }

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      v127 = os_log_type_enabled(v125, v126);
      v205 = *(v0 + 728);
      v207 = *(v0 + 736);
      v217 = *(v0 + 704);
      if (v127)
      {
        v128 = *(v0 + 672);
        v129 = *(v0 + 664);
        v188 = *(v0 + 656);
        v189 = *(v0 + 744);
        v130 = *(v0 + 808);
        v199 = *(v0 + 608);
        v201 = *(v0 + 648);
        v195 = *(v0 + 576);
        v191 = *(v0 + 568);
        v193 = *(v0 + 560);
        v131 = swift_slowAlloc();
        v232[0] = swift_slowAlloc();
        *v131 = 136315394;
        *(v0 + 240) = v128;
        *(v0 + 248) = v129;
        *(v0 + 256) = v130;
        *(v0 + 264) = v188;
        sub_10005CB8C();
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = sub_100021D24(v132, v133, v232);

        *(v131 + 4) = v134;
        *(v131 + 12) = 2080;
        v135 = sub_100021D24(v219, v227, v232);

        *(v131 + 14) = v135;
        _os_log_impl(&_mh_execute_header, v125, v126, "Verified response for %s with %s", v131, 0x16u);
        swift_arrayDestroy();

        sub_100026FB0(v205, v207);
        (*(v191 + 8))(v195, v193);
        v136 = v199;
        v137 = v201;
      }

      else
      {
        v226 = *(v0 + 648);
        v176 = *(v0 + 608);
        v177 = *(v0 + 576);
        v178 = *(v0 + 568);
        v179 = *(v0 + 560);
        v180 = *(v0 + 744);

        sub_100026FB0(v205, v207);

        (*(v178 + 8))(v177, v179);
        v137 = v226;
        v136 = v176;
      }

      v217(v137, v136);
      goto LABEL_34;
    }

    if (v72)
    {
      swift_beginAccess();

      v138 = String._bridgeToObjectiveC()();

      sub_10005CB24();
      swift_allocError();
      *v139 = 2;
      *(v139 + 8) = 1;
      v140 = _convertErrorToNSError(_:)();
      v141 = _convertErrorToNSError(_:)();

      [v72 logResultForEvent:v138 hardFailure:1 result:v141];
    }

    sub_10005CB24();
    v142 = swift_allocError();
    *v143 = 2;
    *(v143 + 8) = 1;
    swift_willThrow();
    if (v72)
    {
      swift_beginAccess();

      v144 = String._bridgeToObjectiveC()();

      v145 = _convertErrorToNSError(_:)();
      v146 = _convertErrorToNSError(_:)();

      [v72 logResultForEvent:v144 hardFailure:1 result:v146];
    }

    swift_errorRetain();
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    v208 = v99;
    v218 = v142;
    if (os_log_type_enabled(v147, v148))
    {
      v149 = *(v0 + 672);
      v150 = *(v0 + 664);
      v151 = *(v0 + 656);
      v152 = *(v0 + 808);
      v153 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v232[0] = swift_slowAlloc();
      *v153 = 136315650;
      *(v0 + 208) = v149;
      *(v0 + 216) = v150;
      *(v0 + 224) = v152;
      *(v0 + 232) = v151;
      sub_10005CB8C();
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = sub_100021D24(v154, v155, v232);

      *(v153 + 4) = v156;
      *(v153 + 12) = 2080;
      v157 = sub_100021D24(v219, v227, v232);

      *(v153 + 14) = v157;
      *(v153 + 22) = 2112;
      swift_errorRetain();
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v153 + 24) = v158;
      *v200 = v158;
      _os_log_impl(&_mh_execute_header, v147, v148, "Response for %s with %s failed: %@", v153, 0x20u);
      sub_10002533C(v200, &qword_100153450, &unk_100104140);

      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100025834(v203 + 128, v0 + 136, &qword_100153B58, &qword_100105C68);
    v159 = *(v0 + 160);
    if (!v159)
    {
      v170 = *(v0 + 744);
      v171 = *(v0 + 736);
      v172 = *(v0 + 728);
      v225 = *(v0 + 648);
      v231 = *(v0 + 704);
      v210 = *(v0 + 608);
      v173 = *(v0 + 576);
      v174 = *(v0 + 568);
      v175 = *(v0 + 560);
      sub_10002533C(v0 + 136, &qword_100153B58, &qword_100105C68);
      swift_willThrow();

      sub_100026FB0(v172, v171);
      (*(v174 + 8))(v173, v175);
      v231(v225, v210);
      goto LABEL_34;
    }

    v224 = *(v0 + 168);
    v230 = *(v0 + 160);
    sub_100026F6C((v0 + 136), v159);
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v160 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
    v161 = *(v160 + 72);
    v162 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_100104980;
    v164 = (v163 + v162);
    *v164 = 7368801;
    v164[1] = 0xE300000000000000;
    swift_errorRetain();
    EventValue.init(integerLiteral:)();
    v165 = (v163 + v162 + v161);
    *v165 = 0x6D69546863746566;
    v165[1] = 0xE900000000000065;
    EventValue.init(floatLiteral:)();
    v166 = (v163 + v162 + 2 * v161);
    *v166 = 7761509;
    v166[1] = 0xE300000000000000;
    v48 = [v208 currentEnvironment];
    if ((v48 & 0x8000000000000000) == 0)
    {
      v167 = *(v0 + 744);
      v190 = *(v0 + 728);
      v192 = *(v0 + 736);
      v209 = *(v0 + 648);
      v198 = *(v0 + 704);
      v202 = *(v0 + 608);
      v168 = *(v0 + 568);
      v194 = *(v0 + 560);
      v196 = *(v0 + 576);
      EventValue.init(integerLiteral:)();
      v169 = sub_10004C674(v163);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v224 + 8))(0x73656C696D747753, 0xEC000000656E6F74, v218, v169, v230);

      sub_100024E14((v0 + 136));
      swift_willThrow();

      sub_100026FB0(v190, v192);
      (*(v168 + 8))(v196, v194);
      v198(v209, v202);
      goto LABEL_34;
    }

LABEL_64:
    __break(1u);
    return _swift_task_switch(v48, v49, v50);
  }

  v78 = *(v0 + 744);
  v79 = *(v0 + 736);
  v80 = *(v0 + 728);
  v214 = *(v0 + 648);
  v221 = *(v0 + 704);
  v81 = *(v0 + 608);
  v82 = *(v0 + 576);
  v83 = *(v0 + 568);
  v84 = *(v0 + 560);
  sub_100026FB0(v80, v79);

  sub_100026FB0(v80, v79);

  (*(v83 + 8))(v82, v84);
  v221(v214, v81);
LABEL_34:

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_10005C27C()
{
  v1 = *(v0 + 768);
  (*(v0 + 776))(1);
  v2 = *v1 + 184;
  *(v0 + 792) = *v2;
  *(v0 + 800) = v2 & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
  v3 = *(v0 + 768);

  return _swift_task_switch(sub_10005C310, v3, 0);
}

uint64_t sub_10005C310()
{
  (*(v0 + 792))(4);

  return _swift_task_switch(sub_10005C384, 0, 0);
}

uint64_t sub_10005C384()
{
  v1 = *(v0 + 760);

  v2 = *(v0 + 744);
  v3 = *(v0 + 704);
  v4 = *(v0 + 648);
  v5 = *(v0 + 608);
  v6 = *(v0 + 576);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  sub_100026FB0(*(v0 + 728), *(v0 + 736));

  (*(v7 + 8))(v6, v8);
  v3(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10005C4D0()
{
  v35 = v0;
  v1 = *(*(v0 + 544) + 120);
  if (v1)
  {
    swift_beginAccess();

    v2 = String._bridgeToObjectiveC()();

    v3 = _convertErrorToNSError(_:)();
    v4 = _convertErrorToNSError(_:)();

    [v1 logResultForEvent:v2 hardFailure:1 result:v4];
  }

  (*(v0 + 688))(*(v0 + 624), *(v0 + 648), *(v0 + 608));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    v9 = *(v0 + 656);
    v10 = *(v0 + 808);
    v11 = *(v0 + 584);
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v0 + 176) = v7;
    *(v0 + 184) = v8;
    *(v0 + 192) = v10;
    *(v0 + 200) = v9;
    sub_10005CB8C();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_100021D24(v13, v14, v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    URLRequest.url.getter();
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v11, 1, v16);
    v19 = *(v0 + 584);
    if (v18 == 1)
    {
      sub_10002533C(*(v0 + 584), &qword_100152F00, &qword_1001042C0);
      v20 = 0xEB000000004C5255;
      v21 = 0x206E776F6E6B6E75;
    }

    else
    {
      v21 = URL.description.getter();
      v20 = v25;
      (*(v17 + 8))(v19, v16);
    }

    (*(v0 + 704))(*(v0 + 624), *(v0 + 608));
    v26 = sub_100021D24(v21, v20, v34);

    *(v12 + 14) = v26;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v27;
    *v33 = v27;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch %s from %s: %@", v12, 0x20u);
    sub_10002533C(v33, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 704);
    v23 = *(v0 + 624);
    v24 = *(v0 + 608);

    v22(v23, v24);
  }

  v28 = *(v0 + 704);
  v29 = *(v0 + 648);
  v30 = *(v0 + 608);
  swift_willThrow();
  v28(v29, v30);

  v31 = *(v0 + 8);

  return v31();
}

void *sub_10005C94C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024248(&qword_100153B88, &unk_100105E70);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
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
  v15 = *(type metadata accessor for URLQueryItem() - 8);
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

unint64_t sub_10005CB24()
{
  result = qword_100153B60;
  if (!qword_100153B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B60);
  }

  return result;
}

uint64_t sub_10005CB78(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_10005CB8C()
{
  result = qword_100153B68;
  if (!qword_100153B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B68);
  }

  return result;
}

uint64_t sub_10005CC04(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005CC1C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10005CC58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10005CCA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005CD18()
{
  result = qword_100153B70;
  if (!qword_100153B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B70);
  }

  return result;
}

unint64_t sub_10005CD6C()
{
  result = qword_100153B80;
  if (!qword_100153B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153B80);
  }

  return result;
}

uint64_t sub_10005CDE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    return 7;
  }

  if (a1 >> 62 == 1)
  {
    return 8;
  }

  v4 = a3 | a2;
  if (a1 == 0x8000000000000000 && !v4)
  {
    return 1;
  }

  if (a1 == 0x8000000000000008 && !v4)
  {
    return 2;
  }

  if (a1 == 0x8000000000000010 && !v4)
  {
    return 3;
  }

  if (a1 == 0x8000000000000018 && !v4)
  {
    return 4;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 0x8000000000000020;
  }

  if (v5)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

unint64_t sub_10005CE84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62 == 1)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    swift_getErrorValue();
    *(inited + 72) = v14;
    v11 = sub_100045004((inited + 48));
    (*(*(v14 - 8) + 16))(v11);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }

  if (!(a1 >> 62))
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100104980;
    *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 40) = v6;
    swift_getErrorValue();
    *(v5 + 72) = v13;
    v7 = sub_100045004((v5 + 48));
    (*(*(v13 - 8) + 16))(v7);
    *(v5 + 80) = 0x736D42747773;
    *(v5 + 88) = 0xE600000000000000;
    *(v5 + 96) = a2;
    *(v5 + 120) = &type metadata for UInt64;
    *(v5 + 128) = 0x736D50747773;
    *(v5 + 168) = &type metadata for UInt64;
    *(v5 + 136) = 0xE600000000000000;
    *(v5 + 144) = a3;
    v8 = sub_100061318(v5);
    swift_setDeallocating();
    sub_100024248(&qword_100153B98, &qword_100107EA0);
    swift_arrayDestroy();
    return v8;
  }

  return sub_100061318(_swiftEmptyArrayStorage);
}

uint64_t sub_10005D0E8(uint64_t a1)
{
  v2 = sub_100061770();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10005D124(uint64_t a1)
{
  v2 = sub_100061770();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10005D160()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 7;
  }

  if (v2 == 1)
  {
    return 8;
  }

  if (v1 == 0x8000000000000000 && *(v0 + 1) == 0)
  {
    return 1;
  }

  if (v1 == 0x8000000000000008 && *(v0 + 1) == 0)
  {
    return 2;
  }

  if (v1 == 0x8000000000000010 && *(v0 + 1) == 0)
  {
    return 3;
  }

  if (v1 == 0x8000000000000018 && *(v0 + 1) == 0)
  {
    return 4;
  }

  if (*(v0 + 1) == 0 && v1 == 0x8000000000000020)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10005D214()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A1E8 = result;
  return result;
}

uint64_t sub_10005D248()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A1F8 = result;
  return result;
}

uint64_t sub_10005D27C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A208 = result;
  return result;
}

uint64_t sub_10005D2B0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A218 = result;
  return result;
}

uint64_t sub_10005D2E4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A228 = result;
  return result;
}

uint64_t sub_10005D318()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A238 = result;
  return result;
}

uint64_t sub_10005D34C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A248 = result;
  return result;
}

uint64_t sub_10005D380(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v18 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100027004(a1, a2);
  sub_100061058(a1, a2, v7);
  sub_100026FB0(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v5 + 8))(v7, v4);
  v22 = v8;
  v23 = sub_100061448(&qword_100153BA8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v11 = sub_100045004(v21);
  v12 = v18;
  (*(v18 + 16))(v11, v10, v8);
  sub_100026F6C(v21, v22);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v12 + 8))(v10, v8);
  v13 = v19;
  v14 = v20;
  sub_100024E14(v21);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_100026FB0(v13, v14);
  return countAndFlagsBits;
}

uint64_t sub_10005D65C()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D230);
  sub_100025AE0(v0, qword_10015D230);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005D6DC()
{
  if (qword_10015A250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D230);
}

uint64_t sub_10005D740@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A250 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ATLogProofs.configBag.getter()
{
  if (qword_10015A1E0 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A1E8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530D8, off_1001312F8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.configBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.configBag.getter();
  return sub_10005D9AC;
}

uint64_t ATLogProofs.keyBag.getter()
{
  if (qword_10015A1F0 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A1F8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.keyBag.getter();
  return sub_10005DB94;
}

double sub_10005DBB8@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A200 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A208;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10005DCE8(uint64_t a1)
{
  if (qword_10015A200 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A208;
  sub_100025834(a1, v12, &qword_100152D88, &unk_100103DC0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_10005DEAC(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10005DBB8(v3);
  return sub_10005DF24;
}

uint64_t ATLogProofs.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A210 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A218;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t ATLogProofs.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_10015A210 != -1)
  {
    swift_once();
  }

  v7 = qword_10015A218;
  sub_100025834(a1, v6, &qword_100152D90, &qword_100105620);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v7 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*ATLogProofs.receiptTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ATLogProofs.receiptTime.getter(v4);
  return sub_10005E340;
}

void sub_10005E340(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100025834(*(a1 + 16), v2, &qword_100152D90, &qword_100105620);
    ATLogProofs.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    ATLogProofs.receiptTime.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

double ATLogProofs.fetcher.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A220 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A228;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100153BB0, &qword_100105E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ATLogProofs.fetcher.setter(uint64_t a1)
{
  if (qword_10015A220 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A228;
  sub_100025834(a1, v12, &qword_100153BB8, &qword_100105E98);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100153BB8, &qword_100105E98);
}

void (*ATLogProofs.fetcher.modify(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  ATLogProofs.fetcher.getter(v3);
  return sub_10005E748;
}

uint64_t ATLogProofs.analytics.getter()
{
  if (qword_10015A230 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A238;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530E0, TransparencyAnalytics_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*ATLogProofs.analytics.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ATLogProofs.analytics.getter();
  return sub_10005E934;
}

double sub_10005E958@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A240 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A248;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100153BC0, &qword_100105EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10005EA88(uint64_t a1)
{
  if (qword_10015A240 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A248;
  sub_100025834(a1, v12, &qword_100153B58, &qword_100105C68);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100153B58, &qword_100105C68);
}

void (*sub_10005EC4C(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10005E958(v3);
  return sub_10005ECC4;
}

void sub_10005ECEC(char **a1, char a2, void (*a3)(char *), uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  if (a2)
  {
    sub_100025834(*a1, (v6 + 40), a4, a5);
    a3(v6 + 40);
    sub_10002533C(v6, a4, a5);
  }

  else
  {
    a3(*a1);
  }

  free(v6);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ATLogProofs.isNewEpoch()()
{
  v3 = v0;
  if (![v0 hasMilestoneConsistency])
  {
    goto LABEL_24;
  }

  v4 = [v0 milestoneConsistency];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = ATLogProofs.keyBag.getter();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 patLogBeginningMs];
    v9 = [v7 tltLogBeginningMs];
    if ([v5 hasTltInclusionProof])
    {
      v10 = [v5 tltInclusionProof];
      if (v10)
      {
        v11 = v10;
        v12 = sub_100025DB0(v10, v9);
        if ((v15 & 0x100) == 0)
        {
          v16 = v12;
          v17 = v15;
          v79 = v14;
          v82 = v13;
          if (qword_10015A250 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_100025AE0(v18, qword_10015D230);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = v16;
            v22 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *&v84 = v77;
            *v22 = 136446210;
            v87 = v21;
            v88 = v82;
            v89 = v79;
            LOBYTE(v90) = v17 & 1;
            sub_100061490();
            v23 = dispatch thunk of CustomStringConvertible.description.getter();
            v25 = sub_100021D24(v23, v24, &v84);

            *(v22 + 4) = v25;
            _os_log_impl(&_mh_execute_header, v19, v20, "Detected new TLT epoch: %{public}s", v22, 0xCu);
            sub_100024E14(v77);
          }

          v26 = 1;
          goto LABEL_30;
        }
      }
    }

    if ([v5 hasPatInclusionProof])
    {
      v28 = [v5 patInclusionProof];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100025DB0(v28, v8);
        if ((v33 & 0x100) == 0)
        {
          v34 = v30;
          v35 = v33;
          v80 = v32;
          v83 = v31;
          if (qword_10015A250 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_100025AE0(v36, qword_10015D230);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = v34;
            v40 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *&v84 = v78;
            *v40 = 136446210;
            v87 = v39;
            v88 = v83;
            v89 = v80;
            LOBYTE(v90) = v35 & 1;
            sub_100061490();
            v41 = dispatch thunk of CustomStringConvertible.description.getter();
            v43 = sub_100021D24(v41, v42, &v84);

            *(v40 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v37, v38, "Detected new PAT epoch: %{public}s", v40, 0xCu);
            sub_100024E14(v78);
          }

          v26 = 1;
          goto LABEL_30;
        }
      }
    }

LABEL_24:
    sub_10005DBB8(&v84);
    if (!v86)
    {
      sub_10002533C(&v84, &qword_100152D88, &unk_100103DC0);
      sub_10002FB04();
      swift_allocError();
      v52[1] = 0;
      v52[2] = 0;
      *v52 = 0x8000000000000018;
      swift_willThrow();
      goto LABEL_30;
    }

    sub_100037608(&v84, &v87);
    v44 = &stru_10014B000;
    v45 = [v3 inclusionProof];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 slh];

      if (v47)
      {
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        v48 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v47];

        v49 = sub_100061A44();
        if (v1)
        {

          sub_10002FB04();
          swift_allocError();
          v51[1] = 0;
          v51[2] = 0;
          *v51 = 0x8000000000000028;
          swift_willThrow();

          sub_100024E14(&v87);
          goto LABEL_30;
        }

        v53 = v50;
        v54 = v90;
        v55 = v91;
        v56 = v49;
        v57 = 0;
        sub_100026F6C(&v87, v90);
        (*(v55 + 112))(v56, v53, 0, 1, 5, 1, v54, v55);
        v59 = v58;
        v45 = [v3 inclusionProof];
        if (v45)
        {
          v60 = v45;

          if ((v59 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v57 = sub_100025DB0(v60, v59);
            v44 = v61;
            v63 = v62;
            v2 = v64;

            if ((v2 & 0x100) != 0)
            {

              sub_100024E14(&v87);
              v26 = 0;
              goto LABEL_30;
            }

            v81 = v63;
            if (qword_10015A250 == -1)
            {
LABEL_35:
              v65 = type metadata accessor for Logger();
              sub_100025AE0(v65, qword_10015D230);
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = v57;
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v71 = v44;
                v72 = v70;
                v92 = v70;
                *v69 = 136446466;
                *&v84 = v68;
                *(&v84 + 1) = v71;
                v85 = v81;
                LOBYTE(v86) = v2 & 1;
                sub_100061490();
                v73 = dispatch thunk of CustomStringConvertible.description.getter();
                v75 = sub_100021D24(v73, v74, &v92);

                *(v69 + 4) = v75;
                *(v69 + 12) = 2050;
                *(v69 + 14) = v59;
                _os_log_impl(&_mh_execute_header, v66, v67, "Detected new ATL epoch: %{public}s - %{public}lld", v69, 0x16u);
                sub_100024E14(v72);
              }

              sub_100024E14(&v87);
              v26 = 1;
              goto LABEL_30;
            }
          }

          swift_once();
          goto LABEL_35;
        }

LABEL_43:
        __break(1u);
        return v45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_10002FB04();
  swift_allocError();
  v27[1] = 0;
  v27[2] = 0;
  *v27 = 0x8000000000000000;
  swift_willThrow();

LABEL_30:
  LOBYTE(v45) = v26 & 1;
  return v45;
}

void sub_10005F694()
{
  sub_10005DBB8(&v22);
  if (!*(&v23 + 1))
  {
    sub_10002533C(&v22, &qword_100152D88, &unk_100103DC0);
    sub_10002FB04();
    swift_allocError();
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0x8000000000000018;
    swift_willThrow();
    return;
  }

  sub_100037608(&v22, v26);
  v2 = [v0 inclusionProof];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v2 slh];

  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v5 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v4];

  sub_100061CE4(v29);
  if (v1)
  {

    sub_100024E14(v26);
  }

  else
  {
    v6 = v27;
    v7 = v28;
    sub_100026F6C(v26, v27);
    if ((*(v7 + 128))(v29, 1, 1, 1, v6, v7) < 1)
    {
      sub_1000270C0(v29);
    }

    else
    {
      if (qword_10015A250 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100025AE0(v9, qword_10015D230);
      sub_100027114(v29, &v22);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      sub_1000270C0(v29);
      if (os_log_type_enabled(v10, v11))
      {
        v31 = v11;
        v12 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v12 = 136315138;
        v22 = v29[0];
        v23 = v29[1];
        v24 = v29[2];
        v25 = v30;
        sub_100027114(v29, v20);
        sub_100027584();
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        v17 = *(&v24 + 1);
        v16 = v25;

        sub_100026FB0(v17, v16);
        v18 = sub_100021D24(v13, v15, &v21);

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v10, v31, "Verified ATLogProof inclusion to verified head %s", v12, 0xCu);
        sub_100024E14(v19);

        sub_1000270C0(v29);
      }

      else
      {

        sub_1000270C0(v29);
      }
    }

    sub_100024E14(v26);
  }
}

uint64_t ATLogProofs.verify(digest:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  sub_100024248(&qword_100152D90, &qword_100105620);
  v3[77] = swift_task_alloc();

  return _swift_task_switch(sub_10005FAC8, 0, 0);
}

uint64_t sub_10005FAC8()
{
  v73 = v0;
  v1 = ATLogProofs.keyBag.getter();
  *(v0 + 624) = v1;
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 608) hasInclusionProof] && (v3 = objc_msgSend(*(v0 + 608), "inclusionProof"), (*(v0 + 632) = v3) != 0))
    {
      v4 = v3;
      v5 = [v2 appSthKeyStore];
      v6 = &stru_10014B000;
      v7 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v5];
      *(v0 + 640) = v7;

      v8 = [v2 tltKeyStore];
      v9 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v8];
      *(v0 + 648) = v9;

      [v4 setVerifier:v7];
      v10 = v4;
      v11 = 0;
      v68 = sub_1000587C8();
      v17 = [v4 nodeType];
      if (v17 == 7)
      {
        v69 = v9;
        v67 = v7;
        v18 = [v4 nodeBytes];
        if (v18)
        {
          v19 = v18;
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v7 = v21;

          v10 = objc_allocWithZone(ChangeLogNodeV2);
          v11 = sub_1000330B8();
          sub_100026FB0(v20, v7);
          v18 = [v11 mutation];
          if (v18)
          {
            v22 = v18;
            static Data._unconditionallyBridgeFromObjectiveC(_:)();

            TransparencyByteBuffer.init(data:)();
            *&v71 = v23;
            *(&v71 + 1) = v24;
            v72 = v25;
            sub_10002B924(v0 + 184);
            *(v0 + 656) = *(v0 + 224);
            [objc_opt_self() kt_currentTimeMs];
            v28 = v69;
            if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v27 > -1.0)
            {
              if (v27 < 1.84467441e19)
              {
                sub_10004C930(*(v0 + 592), *(v0 + 600), v27);
                sub_100026FB0(v71, *(&v71 + 1));

                sub_10005F694();
                v7 = v67;
                if (v29)
                {
                  goto LABEL_21;
                }

                if ([*(v0 + 608) hasMilestoneConsistency])
                {
                  v32 = [*(v0 + 608) milestoneConsistency];
                  if (v32)
                  {
                    v33 = v32;
                    if (qword_10015A250 != -1)
                    {
                      swift_once();
                    }

                    v34 = type metadata accessor for Logger();
                    sub_100025AE0(v34, qword_10015D230);
                    v35 = Logger.logObject.getter();
                    v36 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v35, v36))
                    {
                      v37 = swift_slowAlloc();
                      *v37 = 0;
                      _os_log_impl(&_mh_execute_header, v35, v36, "Verifiying included bridging consistency proof", v37, 2u);
                    }

                    v38 = *(v0 + 616);

                    v39 = [v2 appSthKeyStore];
                    v40 = [objc_allocWithZone(TransparencyConsistencyProofVerifier) initWithTrustedKeyStore:v39];

                    LogConsistency.consistencyVerifier.setter(v40);
                    v6 = v67;
                    LogConsistency.patVerifier.setter(v67);
                    v69;
                    LogConsistency.tltVerifier.setter(v69);
                    sub_10005DBB8(&v71);
                    sub_1000629AC(&v71);
                    ATLogProofs.receiptTime.getter(v38);
                    LogConsistency.receiptTime.setter(v38);
                    v68 = LogConsistency.verify()();
                    sub_10005F694();
                    LOBYTE(v39) = v41;

                    v7 = v67;
                    v28 = v69;
                    if (v39)
                    {
LABEL_21:

                      sub_1000614E4(v0 + 184);

                      v30 = *(v0 + 8);
                      v31 = *(v0 + 656);

                      return v30(v68, v31);
                    }
                  }
                }

                *(v0 + 664) = v68;
                if (qword_10015A250 == -1)
                {
LABEL_32:
                  v42 = type metadata accessor for Logger();
                  *(v0 + 672) = sub_100025AE0(v42, qword_10015D230);
                  v43 = Logger.logObject.getter();
                  v44 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v43, v44))
                  {
                    v45 = swift_slowAlloc();
                    *v45 = 0;
                    _os_log_impl(&_mh_execute_header, v43, v44, "Downloading milestone proof to verify ATLogProof", v45, 2u);
                    v28 = v69;
                  }

                  v46 = ATLogProofs.configBag.getter();
                  *(v0 + 680) = v46;
                  if (v46)
                  {
                    v11 = v46;
                    v10 = *(v0 + 608);
                    sub_10005DBB8(v0 + 352);
                    if (*(v0 + 376))
                    {
                      sub_100037608((v0 + 352), v0 + 312);
                      v18 = [v4 slh];
                      if (v18)
                      {
                        v47 = v18;
                        sub_100033178(0, &qword_100152A98, off_1001312E8);
                        v48 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v47];
                        *(v0 + 688) = v48;

                        v49 = [v48 parsedLogHead];
                        *(v0 + 696) = v49;
                        if (v49)
                        {
                          v50 = v49;
                          ATLogProofs.fetcher.getter(v0 + 432);
                          if (*(v0 + 456))
                          {
                            sub_100037608((v0 + 432), v0 + 392);
                            v51 = [v50 application];
                            sub_1000331C0(v0 + 312, v0 + 512);
                            sub_1000331C0(v0 + 392, v0 + 552);
                            v52 = v11;
                            v53 = v2;
                            v54 = v50;
                            v55 = ATLogProofs.analytics.getter();
                            sub_10005E958(&v71);
                            sub_1000593E8(v51, v52, v53, (v0 + 512), 0, (v0 + 552), v50, v55, v0 + 16, &v71);
                            sub_100024E14((v0 + 392));
                          }

                          else
                          {
                            sub_10002533C(v0 + 432, &qword_100153BB8, &qword_100105E98);
                            v58 = [v50 application];
                            sub_1000331C0(v0 + 312, v0 + 472);
                            v59 = v11;
                            v60 = v2;
                            v61 = v50;
                            v62 = ATLogProofs.analytics.getter();
                            sub_10005E958(v70);
                            sub_1000593D0(&v71);
                            sub_1000593E8(v58, v59, v60, (v0 + 472), 0, &v71, v50, v62, v0 + 16, v70);
                          }

                          [objc_opt_self() uiBlockingNetworkTimeout];
                          v64 = v63;
                          v65 = swift_task_alloc();
                          *(v0 + 704) = v65;
                          *v65 = v0;
                          v65[1] = sub_100060A1C;

                          return sub_100059E18(v64);
                        }

                        sub_100061538();
                        swift_allocError();
                        *v57 = 0;
                        *(v57 + 4) = 1;
                        swift_willThrow();

                        sub_100024E14((v0 + 312));
                        goto LABEL_19;
                      }

LABEL_53:
                      __break(1u);
                      v66 = v18;
                      sub_10002FB04();
                      swift_allocError();
                      *v12 = v11;
                      v12[1] = v66;
                      v12[2] = v10;
                      swift_willThrow();
                      swift_errorRetain();

                      goto LABEL_7;
                    }

                    sub_10002533C(v0 + 352, &qword_100152D88, &unk_100103DC0);
                  }

                  sub_10002FB04();
                  swift_allocError();
                  v56[1] = 0;
                  v56[2] = 0;
                  *v56 = 0x8000000000000020;
                  swift_willThrow();

LABEL_19:
                  sub_1000614E4(v0 + 184);
                  goto LABEL_7;
                }

LABEL_50:
                swift_once();
                goto LABEL_32;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_53;
      }

      sub_10002FB04();
      swift_allocError();
      v26[1] = 0;
      v26[2] = 0;
      *v26 = 0x8000000000000010;
      swift_willThrow();
    }

    else
    {
      sub_10002FB04();
      swift_allocError();
      v13[1] = 0;
      v13[2] = 0;
      *v13 = 0x8000000000000008;
      swift_willThrow();
    }
  }

  else
  {
    sub_10002FB04();
    swift_allocError();
    v14[1] = 0;
    v14[2] = 0;
    *v14 = 0x8000000000000000;
    swift_willThrow();
  }

LABEL_7:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100060A1C()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_100060E8C;
  }

  else
  {
    v2 = sub_100060B30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060B30()
{
  v1 = *(v0 + 712);
  sub_10005F694();
  if (v1)
  {
    v3 = *(v0 + 696);
    v4 = *(v0 + 680);
    v5 = *(v0 + 648);
    v6 = *(v0 + 640);
    v7 = *(v0 + 632);
    v8 = *(v0 + 624);

LABEL_3:
    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);

    v9 = *(v0 + 8);

    return v9();
  }

  if (v2)
  {
    v11 = *(v0 + 696);
    v12 = *(v0 + 680);
    v13 = *(v0 + 648);
    v14 = *(v0 + 640);
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);

    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);
    v17 = *(v0 + 664);
  }

  else
  {
    if (![*(v0 + 608) hasMilestoneConsistency])
    {
      goto LABEL_17;
    }

    v20 = [*(v0 + 608) milestoneConsistency];
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Verifiying included bridging consistency proof after milestone refresh", v24, 2u);
    }

    v17 = LogConsistency.verify()();
    sub_10005F694();
    v26 = v25;

    if ((v26 & 1) == 0)
    {
LABEL_17:
      v33 = *(v0 + 696);
      v34 = *(v0 + 688);
      v4 = *(v0 + 680);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);
      v8 = *(v0 + 632);
      v37 = *(v0 + 624);
      sub_10002FB04();
      swift_allocError();
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0x8000000000000020;
      swift_willThrow();

      goto LABEL_3;
    }

    v27 = *(v0 + 696);
    v28 = *(v0 + 680);
    v29 = *(v0 + 648);
    v30 = *(v0 + 640);
    v31 = *(v0 + 632);
    v32 = *(v0 + 624);

    sub_10006158C(v0 + 16);
    sub_100024E14((v0 + 312));
    sub_1000614E4(v0 + 184);
  }

  v18 = *(v0 + 8);
  v19 = *(v0 + 656);

  return v18(v17, v19);
}

uint64_t sub_100060E8C()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[81];
  v6 = v0[80];
  v11 = v0[79];
  v7 = v0[78];
  sub_10002FB04();
  swift_allocError();
  v8[1] = 0;
  v8[2] = 0;
  *v8 = v1 | 0x4000000000000000;
  swift_willThrow();
  swift_errorRetain();

  sub_10006158C((v0 + 2));
  sub_100024E14(v0 + 39);
  sub_1000614E4((v0 + 23));

  v9 = v0[1];

  return v9();
}

_BYTE *sub_100060FC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000617C4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10006187C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000618F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100061058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100061238(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100061238(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100061238(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100061448(&qword_100153BA0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100061318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153BE0, &unk_100106EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100025834(v4, &v13, &qword_100153B98, &qword_100107EA0);
      v5 = v13;
      v6 = v14;
      result = sub_1000435B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100032F28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100061448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100061490()
{
  result = qword_100153BC8;
  if (!qword_100153BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BC8);
  }

  return result;
}

unint64_t sub_100061538()
{
  result = qword_100153BD0;
  if (!qword_100153BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BD0);
  }

  return result;
}

unint64_t sub_1000615E4(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_100061600(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100061614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100061670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000616D8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t _s18VerificationResultVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18VerificationResultVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100061770()
{
  result = qword_100153BD8;
  if (!qword_100153BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BD8);
  }

  return result;
}

uint64_t sub_1000617C4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10006187C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000618F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000619A8(uint64_t a1)
{
  if ((a1 & &_mh_execute_header) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000619B8(uint64_t a1)
{
  v2 = sub_10006202C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000619F4(uint64_t a1)
{
  v2 = sub_10006202C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100061A30()
{
  if (*(v0 + 4))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_100061A44()
{
  v2 = [v0 parsedLogHead];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10004CE5C([v2 application]);
    if (v5)
    {
      v1 = v4;
    }

    else
    {
      v1 = [v3 application];
      sub_100061538();
      swift_allocError();
      *v7 = v1;
      *(v7 + 4) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

id sub_100061B60()
{
  v1 = [v0 parsedLogHead];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 logType];

    return v3;
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    return swift_willThrow();
  }
}

id sub_100061C1C()
{
  v1 = [v0 parsedLogHead];
  if (v1)
  {
    v2 = v1;
    result = [v1 logHeadHash];
    if (result)
    {
      v4 = result;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100061538();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_100061CE4(uint64_t a1@<X8>)
{
  v3 = [v1 parsedLogHead];
  if (!v3)
  {
    sub_100061538();
    swift_allocError();
    *v20 = 0;
    *(v20 + 4) = 1;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_10004CE5C([v3 application]);
  if (!v6)
  {
    v21 = [v4 application];
    sub_100061538();
    swift_allocError();
    *v22 = v21;
    *(v22 + 4) = 0;
    swift_willThrow();

    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = [v4 logBeginningMs];
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
    v11 = [v4 logType];
    v12 = [v4 revision];
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = v12;
      v23 = v11;
      v26 = v7;
      v14 = [v4 logHeadHash];
      if (v14)
      {
        v15 = v14;
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        sub_10004D84C(v26, v8, v10, v23, v13, v16, v18, v24);
        v19 = v24[1];
        *a1 = v24[0];
        *(a1 + 16) = v19;
        *(a1 + 32) = v24[2];
        *(a1 + 48) = v25;
        return;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100061EDC(SEL *a1)
{
  v3 = [v1 parsedLogHead];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 *a1];

    result = v5;
    if ((v5 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_100061538();
  swift_allocError();
  *v7 = 0;
  *(v7 + 4) = 1;
  return swift_willThrow();
}

uint64_t initializeBufferWithCopyOfBuffer for SignedLogHeadError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SignedLogHeadError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignedLogHeadError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100061FE0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100061FFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_10006202C()
{
  result = qword_100153BE8;
  if (!qword_100153BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BE8);
  }

  return result;
}

uint64_t sub_1000620AC(uint64_t a1)
{
  v2 = sub_100068538();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000620E8(uint64_t a1)
{
  v2 = sub_100068538();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100062124()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A568 = result;
  return result;
}

uint64_t sub_100062158()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A578 = result;
  return result;
}

uint64_t sub_10006218C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A588 = result;
  return result;
}

uint64_t sub_1000621C0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A598 = result;
  return result;
}

uint64_t sub_1000621F4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A5A8 = result;
  return result;
}

uint64_t sub_100062228()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D248);
  sub_100025AE0(v0, qword_10015D248);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000622AC()
{
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D248);
}

uint64_t sub_100062310@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LogConsistency.consistencyVerifier.getter()
{
  if (qword_10015A560 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A568;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152DD0, off_100131300);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*LogConsistency.consistencyVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.consistencyVerifier.getter();
  return sub_10006257C;
}

void (*LogConsistency.patVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.patVerifier.getter();
  return sub_100062660;
}

uint64_t sub_1000626A8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v4 = *a2;
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v3, (v4 + 16));
  swift_endAccess();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_100033178(0, &qword_100153BF0, off_100131308);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*LogConsistency.tltVerifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = LogConsistency.tltVerifier.getter();
  return sub_100062858;
}

double sub_10006287C@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A590 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A598;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000629AC(uint64_t a1)
{
  if (qword_10015A590 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A598;
  sub_100025834(a1, v12, &qword_100152D88, &unk_100103DC0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100062B70(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10006287C(v3);
  return sub_100062BE8;
}

void sub_100062BE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_1000629AC(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_1000629AC(*a1);
  }

  free(v2);
}

uint64_t LogConsistency.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A5A0 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A5A8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t LogConsistency.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_10015A5A0 != -1)
  {
    swift_once();
  }

  v7 = qword_10015A5A8;
  sub_100025834(a1, v6, &qword_100152D90, &qword_100105620);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v7 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*LogConsistency.receiptTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  LogConsistency.receiptTime.getter(v4);
  return sub_10006306C;
}

void sub_10006306C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100025834(*(a1 + 16), v2, &qword_100152D90, &qword_100105620);
    LogConsistency.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    LogConsistency.receiptTime.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

char *sub_100063108()
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v78 - v6;
  v8 = type metadata accessor for Date();
  v102 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v11 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v78 - v12;
  v14 = LogConsistency.consistencyVerifier.getter();
  if (v14)
  {
    v15 = v14;
    v88 = v8;
    if ([v0 hasStartSlh] && (v16 = objc_msgSend(v0, "startSlh")) != 0)
    {
      v17 = v16;
      if ([v0 hasEndSlh] && (v18 = objc_msgSend(v0, "endSlh")) != 0)
      {
        v82 = v0;
        v19 = v18;
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v87 = [ObjCClassFromMetadata signedTypeWithObject:v17];
        v20 = [v15 trustedKeyStore];
        v84 = v17;
        v21 = v19;
        v22 = v20;
        v23 = [v20 signatureVerifier];
        v86 = v15;
        v24 = v23;

        v25 = v87;
        [v87 setVerifier:v24];

        v83 = v21;
        v26 = [ObjCClassFromMetadata signedTypeWithObject:v21];
        v27 = [v86 trustedKeyStore];
        v28 = [v27 signatureVerifier];

        [v26 setVerifier:v28];
        ObjCClassFromMetadata = v26;

        v29 = v87;
        sub_100061CE4(v97);
        if (v1)
        {
        }

        else
        {
          sub_100061CE4(v99);
          sub_10006287C(&v93);
          if (*(&v94 + 1))
          {
            sub_1000331C0(&v93, v89);
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
            v79 = v91;
            v80 = v90;
            v78[1] = sub_100026F6C(v89, v90);
            LogConsistency.receiptTime.getter(v7);
            v34 = v102;
            v35 = v88;
            isa = v102[6].isa;
            if (isa(v7, 1, v88) == 1)
            {
              static Date.now.getter();
              if (isa(v7, 1, v35) != 1)
              {
                sub_10002533C(v7, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v34[4].isa)(v13, v7, v35);
            }

            v42 = [v87 data];
            v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v46 = sub_100061EBC();
            (v79[3])(v97, v13, v43, v45, v46, v80);
            (v102[1].isa)(v13, v88);
            sub_100026FB0(v43, v45);
            sub_100024E14(v89);
          }

          else
          {
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
          }

          v37 = ObjCClassFromMetadata;
          v36 = v86;
          sub_10006287C(&v93);
          if (*(&v94 + 1))
          {
            v38 = v37;
            sub_1000331C0(&v93, v89);
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
            v80 = v91;
            isa = v90;
            v79 = sub_100026F6C(v89, v90);
            LogConsistency.receiptTime.getter(v5);
            v39 = v102;
            v40 = v102[6].isa;
            v41 = v88;
            if (v40(v5, 1, v88) == 1)
            {
              static Date.now.getter();
              if (v40(v5, 1, v41) != 1)
              {
                sub_10002533C(v5, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v39[4].isa)(v11, v5, v41);
            }

            v37 = v38;
            v47 = [v38 data];
            v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v51 = sub_100061EBC();
            (*(v80 + 24))(v99, v11, v48, v50, v51, isa);
            v36 = v86;
            (v102[1].isa)(v11, v88);
            sub_100026FB0(v48, v50);
            sub_100024E14(v89);
          }

          else
          {
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
          }

          v11 = sub_1000587C8();
          sub_10006287C(&v93);
          if (*(&v94 + 1))
          {
            sub_1000331C0(&v93, v89);
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
            v52 = v90;
            v53 = v91;
            sub_100026F6C(v89, v90);
            (v53[6])(v97, v11, v52, v53);
            sub_100024E14(v89);
          }

          else
          {
            sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
          }

          v54 = v84;
          if (v11 == 1)
          {
            if (qword_10015A5B0 != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            v56 = sub_100025AE0(v55, qword_10015D248);
            sub_100027114(v97, &v93);
            v102 = v56;
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.debug.getter();
            sub_1000270C0(v97);
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v92 = v88;
              *v59 = 136315138;
              v93 = v97[0];
              v94 = v97[1];
              v95 = v97[2];
              v96 = v98;
              sub_100027114(v97, v89);
              sub_100027584();
              v60 = dispatch thunk of CustomStringConvertible.description.getter();
              v62 = v61;
              v63 = *(&v95 + 1);
              v64 = v96;

              sub_100026FB0(v63, v64);
              v65 = sub_100021D24(v60, v62, &v92);

              *(v59 + 4) = v65;
              _os_log_impl(&_mh_execute_header, v57, v58, "Verified signature for %s", v59, 0xCu);
              sub_100024E14(v88);
            }

            v11 = sub_1000587C8();
            sub_10006287C(&v93);
            if (*(&v94 + 1))
            {
              sub_1000331C0(&v93, v89);
              sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
              v66 = v90;
              v67 = v91;
              sub_100026F6C(v89, v90);
              sub_100061CE4(v101);
              (v67[6])(v101, v11, v66, v67);
              sub_1000270C0(v101);
              sub_100024E14(v89);
            }

            else
            {
              sub_10002533C(&v93, &qword_100152D88, &unk_100103DC0);
            }

            sub_100027114(v99, &v93);
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.debug.getter();
            sub_1000270C0(v99);
            v102 = v68;
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v92 = v88;
              *v70 = 136315138;
              v93 = v99[0];
              v94 = v99[1];
              v95 = v99[2];
              v96 = v100;
              sub_100027114(v99, v89);
              sub_100027584();
              v71 = dispatch thunk of CustomStringConvertible.description.getter();
              v73 = v72;
              v74 = *(&v95 + 1);
              v75 = v96;

              sub_100026FB0(v74, v75);
              v76 = sub_100021D24(v71, v73, &v92);

              *(v70 + 4) = v76;
              v77 = v102;
              _os_log_impl(&_mh_execute_header, v102, v69, "Verified signature for %s", v70, 0xCu);
              sub_100024E14(v88);

              sub_1000270C0(v97);
              sub_1000270C0(v99);
            }

            else
            {
              sub_1000270C0(v97);

              sub_1000270C0(v99);
            }
          }

          else
          {
            sub_1000270C0(v99);
            sub_1000270C0(v97);
          }
        }
      }

      else
      {
        sub_100068394();
        swift_allocError();
        *v32 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_100068394();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100068394();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t *sub_100064564()
{
  v2 = v0;
  v3 = type metadata accessor for KTSWDB.SignedLogHead(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = LogConsistency.consistencyVerifier.getter();
  if (!v6)
  {
    sub_100068394();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return v5;
  }

  v7 = v6;
  if (![v0 hasStartSlh] || (v8 = objc_msgSend(v0, "startSlh")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    return v5;
  }

  v9 = v8;
  if (![v0 hasEndSlh] || (v10 = objc_msgSend(v0, "endSlh")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();

    return v5;
  }

  v11 = v10;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata signedTypeWithObject:v9];
  v14 = [v7 trustedKeyStore];
  v105 = v9;
  v15 = v14;
  v16 = [v14 signatureVerifier];

  [v13 setVerifier:v16];
  v122 = v11;
  v17 = [ObjCClassFromMetadata signedTypeWithObject:v11];
  v18 = [v7 trustedKeyStore];
  v19 = [v18 signatureVerifier];

  [v17 setVerifier:v19];
  sub_100061CE4(&v114);
  if (v1)
  {

    return v5;
  }

  v104 = v7;
  sub_100061CE4(&v118);
  v103 = v13;
  if (!v116)
  {
    sub_10006287C(&v110);
    if (*(&v111 + 1))
    {
      sub_1000331C0(&v110, &v106);
      sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
      v27 = v107;
      v28 = v108;
      sub_100026F6C(&v106, v107);
      (*(v28 + 32))(&v114, 1, v27, v28);
      sub_100024E14(&v106);
    }

    else
    {
      sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
    }

    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100025AE0(v32, qword_10015D248);
    sub_100027114(&v114, &v110);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    sub_1000270C0(&v114);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v101 = v35;
      v36 = swift_slowAlloc();
      v109 = v36;
      *v35 = 136315138;
      v110 = v114;
      v111 = v115;
      v112 = v116;
      v113 = v117;
      sub_100027114(&v114, &v106);
      sub_100027584();
      LODWORD(v100) = v34;
      v37 = v33;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v41 = *(&v112 + 1);
      v40 = v113;

      sub_100026FB0(v41, v40);
      v42 = sub_100021D24(v99, v39, &v109);

      v43 = v101;
      *(v101 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v37, v100, "Verified consistency for %s", v43, 0xCu);
      sub_100024E14(v36);
    }

    else
    {
    }
  }

  v102 = v17;
  sub_10006287C(&v110);
  v24 = *(&v111 + 1);
  if (*(&v111 + 1))
  {
    sub_1000331C0(&v110, &v106);
    sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
    v25 = v107;
    v26 = v108;
    sub_100026F6C(&v106, v107);
    (*(v26 + 64))(&v114, v25, v26);
    v29 = *v5;
    sub_10002763C(v5);
    sub_100024E14(&v106);
  }

  else
  {
    sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
    v29 = 0;
  }

  v30 = [v2 proofHashesArray];
  if (v30)
  {
    *&v110 = 0;
    v31 = v30;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v110)
    {
      if (*(v110 + 16))
      {
        v5 = sub_100058624(v110, v103, v102);

        goto LABEL_31;
      }
    }
  }

  sub_100033178(0, &qword_100152DC8, off_1001312D8);
  v5 = sub_100035B60(v103, v102);
LABEL_31:
  if (!v24)
  {
    goto LABEL_49;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (qword_10015A5B0 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100025AE0(v81, qword_10015D248);
      sub_100027114(&v114, &v110);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.info.getter();
      sub_1000270C0(&v114);
      LODWORD(v101) = v83;
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v109 = v100;
        *v84 = 136315138;
        v110 = v114;
        v111 = v115;
        v112 = v116;
        v113 = v117;
        sub_100027114(&v114, &v106);
        sub_100027584();
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        v88 = *(&v112 + 1);
        v87 = v113;

        sub_100026FB0(v88, v87);
        v89 = sub_100021D24(v99, v86, &v109);

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v82, v101, "Consistency for start %s still pending due to disjoint proof", v84, 0xCu);
        sub_100024E14(v100);
      }

      sub_100027114(&v118, &v110);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      sub_1000270C0(&v118);
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v109 = v101;
        *v92 = 136315138;
        v110 = v118;
        v111 = v119;
        v112 = v120;
        v113 = v121;
        sub_100027114(&v118, &v106);
        sub_100027584();
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        v96 = *(&v112 + 1);
        v95 = v113;

        sub_100026FB0(v96, v95);
        v97 = sub_100021D24(v100, v94, &v109);

        *(v92 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v90, v91, "Consistency for end %s still pending due to disjoint proof", v92, 0xCu);
        sub_100024E14(v101);
      }

      goto LABEL_54;
    }

    if (v29 != 3)
    {
      goto LABEL_49;
    }
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      if (qword_10015A5B0 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100025AE0(v44, qword_10015D248);
      sub_100027114(&v118, &v110);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      sub_1000270C0(&v118);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v109 = v101;
        *v47 = 136315138;
        v110 = v118;
        v111 = v119;
        v112 = v120;
        v113 = v121;
        sub_100027114(&v118, &v106);
        sub_100027584();
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v51 = *(&v112 + 1);
        v50 = v113;

        sub_100026FB0(v51, v50);
        v52 = sub_100021D24(v100, v49, &v109);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "Verified consistency for %s", v47, 0xCu);
        sub_100024E14(v101);
      }

      sub_10006287C(&v110);
      if (!*(&v111 + 1))
      {
        sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
        goto LABEL_54;
      }

      sub_1000331C0(&v110, &v106);
      sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
      v53 = v107;
      v54 = v108;
      sub_100026F6C(&v106, v107);
      (*(v54 + 32))(&v118, v5, v53, v54);
LABEL_66:
      sub_100024E14(&v106);
LABEL_54:
      v64 = v105;
      goto LABEL_55;
    }

LABEL_49:
    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100025AE0(v67, qword_10015D248);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Unknown startSlh consistency verification state", v70, 2u);
    }

    goto LABEL_54;
  }

  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100025AE0(v55, qword_10015D248);
  sub_100027114(&v118, &v110);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  sub_1000270C0(&v118);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109 = v101;
    *v58 = 136315138;
    v110 = v118;
    v111 = v119;
    v112 = v120;
    v113 = v121;
    sub_100027114(&v118, &v106);
    sub_100027584();
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v62 = *(&v112 + 1);
    v61 = v113;

    sub_100026FB0(v62, v61);
    v63 = sub_100021D24(v100, v60, &v109);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Verified consistency for %s following split", v58, 0xCu);
    sub_100024E14(v101);
  }

  v64 = v105;
  sub_10006287C(&v110);
  if (*(&v111 + 1))
  {
    sub_1000331C0(&v110, &v106);
    sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
    v65 = v107;
    v66 = v108;
    sub_100026F6C(&v106, v107);
    (*(v66 + 32))(&v118, 1, v65, v66);
    goto LABEL_66;
  }

  sub_10002533C(&v110, &qword_100152D88, &unk_100103DC0);
LABEL_55:
  sub_10006287C(&v106);
  if (v107)
  {
    sub_100037608(&v106, &v110);
    v71 = v104;
    v72 = [v104 trustedKeyStore];
    v73 = [v72 signatureVerifier];

    v74 = v102;
    sub_100025F18(&v110, v102, v73);

    sub_100024248(&unk_100153C20, qword_1001062C8);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100106150;
    v78 = v103;
    *(v77 + 32) = v103;
    *(v77 + 40) = v74;
    v79 = v78;
    v80 = v74;

    sub_1000270C0(&v114);
    sub_1000270C0(&v118);

    sub_100024E14(&v110);
  }

  else
  {
    sub_10002533C(&v106, &qword_100152D88, &unk_100103DC0);
    sub_100024248(&unk_100153C20, qword_1001062C8);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_100106150;
    v76 = v102;
    *(v75 + 32) = v103;
    *(v75 + 40) = v76;
    sub_1000270C0(&v118);

    sub_1000270C0(&v114);
  }

  return v5;
}

char *sub_100065AB0(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LogConsistency.patVerifier.getter();
  if (!v13)
  {
    sub_100068394();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return v9;
  }

  v14 = v13;
  if (![v4 hasPatInclusionProof] || (v15 = objc_msgSend(v4, "patInclusionProof")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();

    return v9;
  }

  v103 = a1;
  v105 = v15;
  v106 = v14;
  v16 = [v15 slh];
  if (!v16)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v17 = v16;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v18 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v17];

  sub_10006287C(&v111);
  if (*(&v112 + 1))
  {
    v102 = v10;
    v104 = v4;
    sub_1000331C0(&v111, v107);
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    v19 = v18;
    v20 = v108;
    v21 = v109;
    v22 = sub_100026F6C(v107, v108);
    sub_100061CE4(v115);
    if (v2)
    {

      sub_100024E14(v107);
      return v9;
    }

    v97 = v22;
    v98 = v21;
    v99 = v20;
    v101 = v19;
    LogConsistency.receiptTime.getter(v8);
    v28 = v102;
    v29 = *(v102 + 48);
    if (v29(v8, 1, v9) == 1)
    {
      static Date.now.getter();
      if (v29(v8, 1, v9) != 1)
      {
        sub_10002533C(v8, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (*(v28 + 32))(v12, v8, v9);
    }

    v18 = v101;
    v30 = [v101 data];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v32;

    v33 = sub_100061EBC();
    v4 = v104;
    (*(v98 + 3))(v115, v12, v31, v100, v33, v99);
    v3 = 0;
    (*(v28 + 8))(v12, v9);
    sub_100026FB0(v31, v100);
    sub_1000270C0(v115);
    sub_100024E14(v107);
  }

  else
  {
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
  }

  v26 = v106;
  v27 = [v106 trustedKeyStore];
  v8 = [v27 signatureVerifier];

  [v18 setVerifier:v8];
  sub_100061CE4(v116);
  if (v3)
  {

    return v9;
  }

  v3 = 0;
  v9 = sub_1000587C8();
  sub_10006287C(&v111);
  if (*(&v112 + 1))
  {
    v97 = v8;
    v34 = v18;
    sub_1000331C0(&v111, v107);
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
    v35 = v108;
    v36 = v109;
    sub_100026F6C(v107, v108);
    (*(v36 + 6))(v116, v9, v35, v36);
    sub_100024E14(v107);
    v18 = v34;
    v8 = v97;
  }

  else
  {
    sub_10002533C(&v111, &qword_100152D88, &unk_100103DC0);
  }

  if (v9 != 1)
  {
    sub_1000270C0(v116);
    v52 = v105;
LABEL_30:

    return v9;
  }

  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100025AE0(v37, qword_10015D248);
  sub_100027114(v116, &v111);
  v102 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  sub_1000270C0(v116);
  v41 = os_log_type_enabled(v39, v40);
  v101 = v18;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v99 = v42;
    v100 = swift_slowAlloc();
    v110 = v100;
    *v42 = 136315138;
    v111 = v116[0];
    v112 = v116[1];
    v113 = v116[2];
    v114 = v117;
    sub_100027114(v116, v107);
    sub_100027584();
    LODWORD(v98) = v40;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v8;
    v45 = v44;
    v46 = *(&v113 + 1);
    v47 = v114;

    sub_100026FB0(v46, v47);
    v48 = sub_100021D24(v43, v45, &v110);
    v8 = v97;

    v49 = v99;
    *(v99 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v98, "Verified signature for %s", v49, 0xCu);
    sub_100024E14(v100);
  }

  v50 = v105;
  v51 = v106;
  [v105 setVerifier:v106];
  v9 = sub_1000587C8();
  if ([v50 nodeType] != 1)
  {
    sub_100068394();
    swift_allocError();
    *v70 = 8;
    swift_willThrow();
    sub_1000270C0(v116);

    goto LABEL_45;
  }

  v97 = v8;
  result = [v50 nodeBytes];
  if (!result)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v53 = result;
  sub_100033178(0, &qword_100153C18, off_1001312E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v55, v57);
  *&v111 = 0;
  v59 = [ObjCClassFromMetadata parseFromData:isa error:&v111];

  a1 = v111;
  if (!v59)
  {
    v71 = v111;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v116);

    return v9;
  }

  v8 = v97;
  if (v103 >> 62)
  {
    goto LABEL_74;
  }

  result = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_75:
    v84 = 0x206E776F6E6B6E75;
    v87 = a1;
    v83 = 0;
LABEL_76:
    v86 = 0xEB00000000686C73;
    goto LABEL_77;
  }

  while (1)
  {
    v60 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      v94 = a1;
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_41;
    }

    v99 = v59;
    v100 = (v103 & 0xC000000000000001);
    v98 = result;
    v104 = v4;
    if ((v103 & 0xC000000000000001) != 0)
    {
      goto LABEL_84;
    }

    if ((v60 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v60 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v61 = *(v103 + 8 * v60 + 32);
    v62 = a1;
    v63 = v61;
LABEL_41:
    v64 = v63;
    v59 = v99;
    if (([v99 hasObjectMapHead] & 1) == 0)
    {
      goto LABEL_70;
    }

    v96 = v64;
    v65 = [v64 logHead];
    if (v65)
    {
      v66 = v65;
      v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
    }

    else
    {
      v67 = 0;
      v69 = 0xF000000000000000;
    }

    result = [v59 objectMapHead];
    if (!result)
    {
      goto LABEL_88;
    }

    v72 = result;
    v95 = v67;
    v73 = [result object];

    if (!v73)
    {
      break;
    }

    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v75;

    v76 = v69;
    if (v69 >> 60 == 15)
    {
      if (v8 >> 60 != 15)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    }

    if (v8 >> 60 == 15)
    {
      goto LABEL_69;
    }

    v80 = v95;
    sub_100037620(v95, v76);
    sub_100037620(v74, v8);
    v81 = sub_100027800(v80, v76, v74, v8);
    sub_10002BEE0(v74, v8);
    sub_10002BEE0(v74, v8);
    sub_10002BEE0(v80, v76);
    sub_10002BEE0(v80, v76);
    v64 = v96;
    v8 = v97;
    v59 = v99;
    if (!v81)
    {
      goto LABEL_70;
    }

LABEL_55:
    a1 = 0;
    v59 = (v103 & 0xFFFFFFFFFFFFFF8);
    v77 = v98;
    v4 = v104;
    while (1)
    {
      if (v100)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v59 + 2))
        {
          goto LABEL_82;
        }

        v78 = *(v103 + 8 * a1 + 32);
      }

      v79 = v78;
      v8 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      *&v111 = v78;
      sub_10006858C(&v111, v4, v9);
      if (v3)
      {

        sub_1000270C0(v116);
        return v9;
      }

      ++a1;
      if (v8 == v77)
      {
        sub_1000270C0(v116);

        v8 = v96;
        v106 = v97;
        v52 = v99;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_74:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_75;
    }
  }

  v76 = v69;
  if (v69 >> 60 == 15)
  {
LABEL_54:

    sub_10002BEE0(v95, v76);
    goto LABEL_55;
  }

  v74 = 0;
  v8 = 0xF000000000000000;
LABEL_69:
  v64 = v96;

  sub_10002BEE0(v95, v76);
  sub_10002BEE0(v74, v8);
  v82 = v64;
  v8 = v97;
  v59 = v99;
LABEL_70:
  sub_100061CE4(v118);
  v83 = v64;
  if (v3)
  {
    v84 = 0x206E776F6E6B6E75;

    goto LABEL_76;
  }

  v84 = KTSWDB.STHKey.description.getter();
  v86 = v85;
  sub_1000270C0(v118);
LABEL_77:

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v9 = swift_slowAlloc();
    v90 = v83;
    v91 = swift_slowAlloc();
    *&v111 = v91;
    *v9 = 136315138;
    v92 = sub_100021D24(v84, v86, &v111);

    *(v9 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v88, v89, "Failed to verify inclusion proof for %s", v9, 0xCu);
    sub_100024E14(v91);
    v83 = v90;
    v8 = v97;
  }

  else
  {
  }

  sub_100068394();
  swift_allocError();
  *v93 = 6;
  swift_willThrow();

  sub_1000270C0(v116);
LABEL_45:

  return v9;
}

id sub_100066D3C(NSObject *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v6 - 8);
  v8 = &v100 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LogConsistency.tltVerifier.getter();
  if (!v13)
  {
    sub_100068394();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return v9;
  }

  v14 = v13;
  if (![v4 hasTltInclusionProof] || (v15 = objc_msgSend(v4, "tltInclusionProof")) == 0)
  {
    sub_100068394();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();

    return v9;
  }

  v105 = a1;
  v108 = v15;
  v109 = v14;
  result = [v15 slh];
  if (!result)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v17 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v18 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v17];

  sub_10006287C(&v114);
  if (*(&v115 + 1))
  {
    v104 = v10;
    v106 = v4;
    sub_1000331C0(&v114, v110);
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
    v19 = v111;
    v103 = v112;
    v20 = sub_100026F6C(v110, v111);
    sub_100061CE4(v118);
    if (v2)
    {

      sub_100024E14(v110);
      return v9;
    }

    v100 = v20;
    v101 = v19;
    v107 = v18;
    LogConsistency.receiptTime.getter(v8);
    v28 = v104;
    v29 = v104[6];
    if (v29(v8, 1, v9) == 1)
    {
      static Date.now.getter();
      if (v29(v8, 1, v9) != 1)
      {
        sub_10002533C(v8, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v28[4])(v12, v8, v9);
    }

    v30 = [v107 data];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v32;

    v33 = sub_100061EBC();
    v34 = v31;
    v35 = v31;
    v36 = v102;
    (*(v103 + 24))(v118, v12, v35, v102, v33, v101);
    v3 = 0;
    (v28[1])(v12, v9);
    sub_100026FB0(v34, v36);
    sub_1000270C0(v118);
    sub_100024E14(v110);
  }

  else
  {
    v107 = v18;
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
  }

  v23 = v109;
  v24 = [v109 trustedKeyStore];
  v25 = [v24 signatureVerifier];

  v26 = &selRef_initWithValidationFunction_rawValues_count_;
  v27 = v107;
  v106 = v25;
  [v107 setVerifier:v25];
  sub_100061CE4(v119);
  if (v3)
  {

LABEL_30:
LABEL_31:

    return v9;
  }

  v9 = sub_1000587C8();
  if (qword_10015A5B0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100025AE0(v37, qword_10015D248);
  sub_100027114(v119, &v114);
  v103 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  sub_1000270C0(v119);
  LODWORD(v104) = v40;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v113 = v102;
    *v41 = 136315138;
    v114 = v119[0];
    v115 = v119[1];
    v116 = v119[2];
    v117 = v120;
    sub_100027114(v119, v110);
    sub_100027584();
    v101 = v39;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v107 = v27;
    v46 = *(&v116 + 1);
    v45 = v117;

    v47 = v46;
    v27 = v107;
    sub_100026FB0(v47, v45);
    v48 = sub_100021D24(v42, v44, &v113);
    v26 = &selRef_initWithValidationFunction_rawValues_count_;

    *(v41 + 4) = v48;
    v49 = v101;
    _os_log_impl(&_mh_execute_header, v101, v104, "Verified signature for %s", v41, 0xCu);
    sub_100024E14(v102);
  }

  else
  {
  }

  sub_10006287C(&v114);
  if (*(&v115 + 1))
  {
    sub_1000331C0(&v114, v110);
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
    v50 = v111;
    v51 = v112;
    sub_100026F6C(v110, v111);
    (*(v51 + 48))(v119, v9, v50, v51);
    sub_100024E14(v110);
    v26 = &selRef_initWithValidationFunction_rawValues_count_;
  }

  else
  {
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
  }

  sub_10006287C(&v114);
  if (*(&v115 + 1))
  {
    sub_1000331C0(&v114, v110);
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
    v52 = v111;
    v53 = v112;
    sub_100026F6C(v110, v111);
    (*(v53 + 40))(v119, 1, v52, v53);
    sub_100024E14(v110);
    v54 = v109;
    v26 = &selRef_initWithValidationFunction_rawValues_count_;
  }

  else
  {
    sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
    v54 = v109;
  }

  if (v9 != 1)
  {
    sub_1000270C0(v119);

    return v9;
  }

  v55 = v108;
  [v108 v26[262]];
  v9 = sub_1000587C8();
  if ([v55 nodeType] != 3)
  {
    sub_100068394();
    swift_allocError();
    *v66 = 9;
    swift_willThrow();
    sub_1000270C0(v119);

    goto LABEL_30;
  }

  v107 = v27;
  v56 = v55;
  result = [v55 nodeBytes];
  if (!result)
  {
    goto LABEL_68;
  }

  v57 = result;
  sub_100033178(0, &qword_100153C10, off_1001312F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v59, v61);
  *&v114 = 0;
  v63 = [ObjCClassFromMetadata parseFromData:isa error:&v114];

  if (!v63)
  {
    v67 = v114;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v119);

    goto LABEL_31;
  }

  v64 = v114;
  v65 = v105;
  sub_100061CE4(&v121);
  v102 = 0;
  v104 = v63;
  if (![v63 hasPatHead])
  {
LABEL_63:
    sub_100027114(&v121, &v114);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    sub_1000270C0(&v121);
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v113 = v105;
      *v93 = 136446210;
      v114 = v121;
      v115 = v122;
      v116 = v123;
      v117 = v124;
      sub_100027114(&v121, v110);
      sub_100027584();
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      v9 = *(&v116 + 1);
      v97 = v117;

      sub_100026FB0(v9, v97);
      v98 = sub_100021D24(v94, v96, &v113);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to verify inclusion proof for %{public}s", v93, 0xCu);
      sub_100024E14(v105);
    }

    sub_100068394();
    swift_allocError();
    *v99 = 7;
    swift_willThrow();
    sub_1000270C0(&v121);

    sub_1000270C0(v119);
    goto LABEL_31;
  }

  v68 = [v65 logHead];
  if (v68)
  {
    v69 = v68;
    v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v105 = 0;
    v71 = 0xF000000000000000;
  }

  result = [v104 patHead];
  if (result)
  {
    v72 = result;
    v73 = [result object];

    if (v73)
    {
      v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      if (v71 >> 60 == 15)
      {
        if (v76 >> 60 != 15)
        {
          goto LABEL_62;
        }

        goto LABEL_52;
      }

      if (v76 >> 60 != 15)
      {
        v87 = v105;
        sub_100037620(v105, v71);
        sub_100037620(v74, v76);
        v88 = sub_100027800(v87, v71, v74, v76);
        sub_10002BEE0(v74, v76);
        sub_10002BEE0(v74, v76);
        sub_10002BEE0(v87, v71);
        sub_10002BEE0(v87, v71);
        if (!v88)
        {
          goto LABEL_63;
        }

LABEL_53:
        sub_100027114(&v121, &v114);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        sub_1000270C0(&v121);
        LODWORD(v103) = v78;
        v105 = v77;
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v113 = v101;
          *v79 = 136315138;
          v114 = v121;
          v115 = v122;
          v116 = v123;
          v117 = v124;
          sub_100027114(&v121, v110);
          sub_100027584();
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v81;
          v84 = *(&v116 + 1);
          v83 = v117;

          sub_100026FB0(v84, v83);
          v85 = sub_100021D24(v80, v82, &v113);

          *(v79 + 4) = v85;
          v86 = v105;
          _os_log_impl(&_mh_execute_header, v105, v103, "Verified inclusion for %s", v79, 0xCu);
          sub_100024E14(v101);
        }

        else
        {
        }

        sub_10006287C(&v114);
        if (*(&v115 + 1))
        {
          sub_1000331C0(&v114, v110);
          sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
          v89 = v111;
          v90 = v112;
          sub_100026F6C(v110, v111);
          (*(v90 + 40))(&v121, v9, v89, v90);
          sub_1000270C0(v119);
          sub_1000270C0(&v121);

          sub_100024E14(v110);
        }

        else
        {
          sub_1000270C0(v119);
          sub_1000270C0(&v121);

          sub_10002533C(&v114, &qword_100152D88, &unk_100103DC0);
        }

        return v9;
      }
    }

    else
    {
      if (v71 >> 60 == 15)
      {
LABEL_52:
        sub_10002BEE0(v105, v71);
        goto LABEL_53;
      }

      v74 = 0;
      v76 = 0xF000000000000000;
    }

LABEL_62:
    sub_10002BEE0(v105, v71);
    sub_10002BEE0(v74, v76);
    goto LABEL_63;
  }

LABEL_69:
  __break(1u);
  return result;
}

void *LogConsistency.verify()()
{
  v2 = objc_autoreleasePoolPush();
  if (![v0 hasStartSlh])
  {
    sub_100068394();
    swift_allocError();
    v6 = 1;
LABEL_13:
    *v5 = v6;
    swift_willThrow();
    goto LABEL_14;
  }

  if (![v0 hasEndSlh])
  {
    sub_100068394();
    swift_allocError();
    v6 = 2;
    goto LABEL_13;
  }

  if (![v0 hasPatInclusionProof])
  {
    sub_100068394();
    swift_allocError();
    v6 = 4;
    goto LABEL_13;
  }

  if (![v0 hasTltInclusionProof])
  {
    sub_100068394();
    swift_allocError();
    v6 = 5;
    goto LABEL_13;
  }

  v3 = sub_100063108();
  if (!v1)
  {
    v0 = v3;
    if (v3 == 1)
    {
      v0 = sub_100064564();
      if (v0 == 1)
      {
        v0 = sub_100065AB0(v4);
        v9 = v8;

        if (v0 == 1)
        {
          v9 = v9;
          v0 = sub_100066D3C(v9);
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  objc_autoreleasePoolPop(v2);
  return v0;
}

unint64_t sub_10006833C()
{
  result = qword_100153BF8;
  if (!qword_100153BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153BF8);
  }

  return result;
}

unint64_t sub_100068394()
{
  result = qword_100153C00;
  if (!qword_100153C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogConsistencyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100068538()
{
  result = qword_100153C08;
  if (!qword_100153C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153C08);
  }

  return result;
}

void sub_10006858C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100061CE4(v26);
  if (!v3)
  {
    if (qword_10015A5B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100025AE0(v5, qword_10015D248);
    sub_100027114(v26, &v22);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    sub_1000270C0(v26);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v8 = 136315138;
      v22 = v26[0];
      v23 = v26[1];
      v24 = v26[2];
      v25 = v27;
      sub_100027114(v26, v19);
      sub_100027584();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v18 = a3;
      v12 = *(&v24 + 1);
      v13 = v25;

      sub_100026FB0(v12, v13);
      v14 = sub_100021D24(v9, v11, &v29);

      *(v8 + 4) = v14;
      a3 = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Verified inclusion for %s", v8, 0xCu);
      sub_100024E14(v17);
    }

    sub_10006287C(&v22);
    if (*(&v23 + 1))
    {
      sub_1000331C0(&v22, v19);
      sub_10002533C(&v22, &qword_100152D88, &unk_100103DC0);
      v15 = v20;
      v16 = v21;
      sub_100026F6C(v19, v20);
      sub_100061CE4(v28);
      (*(v16 + 40))(v28, a3, v15, v16);
      sub_1000270C0(v26);
      sub_1000270C0(v28);
      sub_100024E14(v19);
    }

    else
    {
      sub_1000270C0(v26);
      sub_10002533C(&v22, &qword_100152D88, &unk_100103DC0);
    }
  }
}

uint64_t sub_100068858()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D260);
  sub_100025AE0(v0, qword_10015D260);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000688D8()
{
  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D260);
}

uint64_t sub_10006893C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100068A34(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100068AA0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100068B40;
}

void sub_100068B40(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_100068C24(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t), uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon];
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener] = a2(0xD000000000000019, 0x800000010010C1F0);
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface] = a4;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine] = a1;
  swift_beginAccess();
  *(v9 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = a4;

  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener;
  v13 = *&v11[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener];
  v14 = v11;
  [v13 setDelegate:v14];
  [*&v11[v12] resume];

  return v14;
}

char *sub_100068D78(uint64_t a1)
{
  v3 = [objc_opt_self() swTransparencyXPCInterface];
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon];
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener] = v8;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface] = v3;
  *&v4[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine] = a1;
  swift_beginAccess();
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v15.receiver = v4;
  v15.super_class = v1;
  v9 = v3;

  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener;
  v12 = *&v10[OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_listener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];

  return v13;
}

__SecTask *sub_100068F04(void *a1)
{
  [a1 auditToken];
  result = SecTaskCreateWithAuditToken(0, &v6);
  if (result)
  {
    v2 = result;
    v3 = SecTaskCopySigningIdentifier(result, 0);
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100069000()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100069094()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100069138(void *a1)
{
  v2 = v1;
  v4 = 0x6E776F6E6B6E75;
  [a1 auditToken];
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopySigningIdentifier(v5, 0);
    if (v7)
    {
      v8 = v7;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      goto LABEL_6;
    }
  }

  v10 = 0xE700000000000000;
LABEL_6:
  *token.val = v4;
  *&token.val[2] = v10;

  v11._countAndFlagsBits = 91;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = &stru_10014B000;
  v38.val[0] = [a1 processIdentifier];
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v16 = *token.val;
  v15 = *&token.val[2];
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 valueForEntitlement:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  token = v38;
  if (*&v38.val[6])
  {
    if (swift_dynamicCast() & 1) != 0 && (v37)
    {
      if (qword_10015A840 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100025AE0(v19, qword_10015D260);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *token.val = v23;
        *v22 = 136446210;
        v24 = sub_100021D24(v16, v15, &token);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Accepting new connection from %{public}s", v22, 0xCu);
        sub_100024E14(v23);

        v12 = &stru_10014B000;
      }

      else
      {
      }

      type metadata accessor for SWTransparencyXPCImplementation();
      v32 = *(v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_stateMachine);
      v33 = v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v35 = *(v33 + 8);

      v36 = sub_10006F8E8(v32, Strong, v35, v4, v10, [a1 v12[62].name]);
      [a1 setExportedInterface:*(v2 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_xpcInterface)];
      [a1 setExportedObject:v36];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100069698(&token);
  }

  if (qword_10015A840 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100025AE0(v25, qword_10015D260);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *token.val = v29;
    *v28 = 136446210;
    v30 = sub_100021D24(v16, v15, &token);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Rejecting connection from unauthorized client %{public}s because it's missing the com.apple.transparency.privateCloudCompute entitlement", v28, 0xCu);
    sub_100024E14(v29);
  }

  else
  {
  }

  [a1 invalidate];
  return 0;
}

uint64_t sub_100069698(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152D70, &qword_100103DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100069728(uint64_t a1)
{
  if ((a1 & &_mh_execute_header) != 0)
  {
    return a1 + 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10006973C(uint64_t a1)
{
  v2 = sub_10006F10C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100069778(uint64_t a1)
{
  v2 = sub_10006F10C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000697B4()
{
  if (*(v0 + 4) == 1)
  {
    return *v0 + 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000697D4()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A858 = result;
  return result;
}

uint64_t sub_100069808()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A868 = result;
  return result;
}

uint64_t sub_10006983C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A878 = result;
  return result;
}

uint64_t sub_100069870()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_10015A888 = result;
  return result;
}

uint64_t sub_1000698A4()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D278);
  sub_100025AE0(v0, qword_10015D278);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100069924()
{
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D278);
}

uint64_t sub_100069988@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MilestoneRootsResponse.keyBag.getter()
{
  if (qword_10015A850 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A858;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneRootsResponse.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneRootsResponse.keyBag.getter();
  return sub_100069BF4;
}

double sub_100069C18@<D0>(uint64_t a1@<X8>)
{
  if (qword_10015A860 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A868;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100069D48(uint64_t a1)
{
  if (qword_10015A860 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A868;
  sub_100025834(a1, v12, &qword_100152D88, &unk_100103DC0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_100026F6C(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_100024E14(v12);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100069F0C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_100069C18(v3);
  return sub_100069F84;
}

void sub_100069F84(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_100069D48(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_100069D48(*a1);
  }

  free(v2);
}

uint64_t MilestoneRootsResponse.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A870 != -1)
  {
    swift_once();
  }

  v3 = qword_10015A878;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t MilestoneRootsResponse.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  if (qword_10015A870 != -1)
  {
    swift_once();
  }

  v7 = qword_10015A878;
  sub_100025834(a1, v6, &qword_100152D90, &qword_100105620);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v7 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*MilestoneRootsResponse.receiptTime.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MilestoneRootsResponse.receiptTime.getter(v4);
  return sub_10006A408;
}

void sub_10006A408(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100025834(*(a1 + 16), v2, &qword_100152D90, &qword_100105620);
    MilestoneRootsResponse.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    MilestoneRootsResponse.receiptTime.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t MilestoneRootsResponse.configBag.getter()
{
  if (qword_10015A880 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A888;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_1001530D8, off_1001312F8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneRootsResponse.configBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneRootsResponse.configBag.getter();
  return sub_10006A668;
}

void sub_10006A68C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Date();
  v6 = __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v14 = &v44 - v13;
  if (a2)
  {
    v54 = a1;
    v60 = v12;
    v15 = a2;
    v16 = sub_100061A44();
    if (v2)
    {
    }

    else
    {
      v19 = v17;
      v52 = v16;
      v20 = MilestoneRootsResponse.configBag.getter();
      if (v20)
      {
        v53 = v19;
        v21 = v20;
        v22 = String._bridgeToObjectiveC()();
        [v21 doubleForKey:v22];
        v24 = v23;

        if (v24 <= 0.0)
        {

          sub_10006F0A8();
          swift_allocError();
          *v29 = 9;
          *(v29 + 4) = 1;
          swift_willThrow();
        }

        else
        {
          v51 = v21;
          sub_100069C18(v58);
          if (v59)
          {
            sub_1000331C0(v58, v55);
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
            v48 = v57;
            v50 = v56;
            v49 = sub_100026F6C(v55, v56);
            v25 = sub_100061B40();
            v26 = (*(v48 + 136))(v52, v53, v25, 5, 1, 1, 1, v50, v48);
            v27 = *(v26 + 16);
            LODWORD(v50) = v27 == 0;
            if (v27)
            {
              v49 = *(v26 + 8 * v27 + 24);
            }

            else
            {
              v49 = 0;
            }

            sub_100024E14(v55);
          }

          else
          {
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
            v49 = 0;
            LODWORD(v50) = 1;
          }

          if (qword_10015A890 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_100025AE0(v30, qword_10015D278);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v48 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v58[0] = v47;
            *v48 = 136315138;
            v33 = v49;
            if (v50)
            {
              v33 = 0;
            }

            v55[0] = v33;
            v45 = v31;
            LODWORD(v46) = v32;
            v34 = dispatch thunk of CustomStringConvertible.description.getter();
            v44 = sub_100021D24(v34, v35, v58);

            v36 = v48;
            *(v48 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v31, v46, "GC: Keeping verified milestone revision %s", v36, 0xCu);
            sub_100024E14(v47);
          }

          else
          {
          }

          v47 = *(v60 + 16);
          v48 = v60 + 16;
          v47(v11, v54, v5);
          Date.init(timeInterval:since:)();
          sub_100069C18(v58);
          if (v59)
          {
            sub_1000331C0(v58, v55);
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
            v37 = v57;
            v45 = v56;
            v46 = sub_100026F6C(v55, v56);
            v38 = sub_100061B40();
            (*(v37 + 88))(v52, v53, v38, 5, v14, 1, 1, 1, v49, v50, v45, v37);
            sub_100024E14(v55);
          }

          else
          {
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
          }

          v47(v11, v54, v5);
          Date.init(timeInterval:since:)();
          sub_100069C18(v58);
          if (v59)
          {
            sub_1000331C0(v58, v55);
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
            v39 = v56;
            v40 = v57;
            sub_100026F6C(v55, v56);
            v41 = sub_100061B40();
            (*(v40 + 96))(v52, v53, v41, 5, v8, v39, v40);

            v42 = *(v60 + 8);
            v42(v8, v5);
            v42(v14, v5);
            sub_100024E14(v55);
          }

          else
          {

            v43 = *(v60 + 8);
            v43(v8, v5);
            v43(v14, v5);
            sub_10002533C(v58, &qword_100152D88, &unk_100103DC0);
          }
        }
      }

      else
      {

        sub_10006F0A8();
        swift_allocError();
        *v28 = 9;
        *(v28 + 4) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10006F0A8();
    swift_allocError();
    *v18 = 1;
    *(v18 + 4) = 1;
    swift_willThrow();
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MilestoneRootsResponse.isNewEpoch()()
{
  v1 = MilestoneRootsResponse.keyBag.getter();
  if (!v1)
  {
    sub_10002FB04();
    swift_allocError();
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0x8000000000000000;
    swift_willThrow();
    return v16 & 1;
  }

  v2 = v1;
  v3 = [v1 patLogBeginningMs];
  v4 = [v2 tltLogBeginningMs];
  if ([v0 hasTltInclusionProof])
  {
    v5 = [v0 tltInclusionProof];
    if (v5)
    {
      v6 = v5;
      sub_100025DB0(v5, v4);
      if ((v7 & 0x100) == 0)
      {
        if (qword_10015A890 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100025AE0(v8, qword_10015D278);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v30 = v12;
          *v11 = 136446210;
          sub_100061490();
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = sub_100021D24(v13, v14, &v30);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v9, v10, "Detected new TLT epoch: %{public}s", v11, 0xCu);
          sub_100024E14(v12);
        }

        v16 = 1;
        return v16 & 1;
      }
    }
  }

  if (![v0 hasPatInclusionProof] || (v18 = objc_msgSend(v0, "patInclusionProof")) == 0)
  {
LABEL_21:

    v16 = 0;
    return v16 & 1;
  }

  v19 = v18;
  sub_100025DB0(v18, v3);
  if ((v20 & 0x100) != 0)
  {

    goto LABEL_21;
  }

  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100025AE0(v21, qword_10015D278);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446210;
    sub_100061490();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_100021D24(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Detected new PAT epoch: %{public}s", v24, 0xCu);
    sub_100024E14(v25);
  }

  v16 = 1;
  return v16 & 1;
}

id sub_10006B288()
{
  v3 = v0;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = MilestoneRootsResponse.keyBag.getter();
  if (!v7)
  {
    sub_10006F0A8();
    swift_allocError();
    *v14 = 0;
    *(v14 + 4) = 1;
    swift_willThrow();
    return v2;
  }

  v8 = v7;
  v9 = [v0 milestonesArray];
  if (!v9 || (v10 = v9, *&v77 = 0, sub_100033178(0, &qword_100152DC8, off_1001312D8), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v10, (v11 = v77) == 0))
  {
    sub_10006F0A8();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();

    return v2;
  }

  v63 = v77 >> 62;
  if (v77 >> 62)
  {
LABEL_80:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v11;
  v68 = v3;
  if (v12)
  {
    v2 = 2;
  }

  else
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100025AE0(v16, qword_10015D278);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No new milestones. Verifying inclusion only.", v19, 2u);
      v3 = v68;
    }

    v2 = 1;
  }

  result = [v3 startSlh];
  if (result)
  {
    v20 = result;
    sub_100033178(0, &qword_100152A98, off_1001312E8);
    v11 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v20];

    sub_100024248(&unk_100153C20, qword_1001062C8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100106300;
    *(v21 + 32) = v11;
    v80 = v21;
    v22 = v71;
    if (v63)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v11;
    if (v23)
    {
      v64 = v23;
      v25 = 0;
      v67 = v22 & 0xC000000000000001;
      v26 = v22 & 0xFFFFFFFFFFFFFF8;
      v69 = v8;
      v70 = v22 & 0xFFFFFFFFFFFFFF8;
      if (v22 < 0)
      {
        v26 = v22;
      }

      v61[1] = v26;
      *&v24 = 134218240;
      v62 = v24;
      while (1)
      {
        v66 = v21;
        if (v67)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v70 + 16))
          {
            goto LABEL_79;
          }

          v27 = *(v22 + 8 * v25 + 32);
        }

        v28 = v27;
        v8 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (qword_10015A890 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        v30 = sub_100025AE0(v29, qword_10015D278);

        v65 = v30;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = v62;
          *(v33 + 4) = v25;
          *(v33 + 12) = 2048;
          if (v63)
          {
            v34 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v34 = *(v70 + 16);
          }

          *(v33 + 14) = v34;

          _os_log_impl(&_mh_execute_header, v31, v32, "Verifying milestone consistency proof %ld of %ld", v33, 0x16u);
        }

        else
        {
        }

        v35 = [v69 appSthKeyStore];
        v36 = [objc_allocWithZone(TransparencyConsistencyProofVerifier) initWithTrustedKeyStore:v35];

        MilestoneConsistency.verifier.setter(v36);
        v72 = v3;
        MilestoneConsistency.startSlh.setter(v3);
        v2 = v6;
        if (qword_10015A860 != -1)
        {
          swift_once();
        }

        v37 = qword_10015A868;
        swift_beginAccess();
        v38 = v68;
        v39 = objc_getAssociatedObject(v68, (v37 + 16));
        swift_endAccess();
        v22 = v71;
        if (v39)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
        }

        v75 = v73;
        v76 = v74;
        if (*(&v74 + 1))
        {
          sub_100024248(&qword_100152D80, &qword_100103DB8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v79 = 0;
            v77 = 0u;
            v78 = 0u;
          }
        }

        else
        {
          sub_10002533C(&v75, &qword_100152D70, &qword_100103DB0);
          v77 = 0u;
          v78 = 0u;
          v79 = 0;
        }

        sub_100033D54(&v77);
        if (qword_10015A870 != -1)
        {
          swift_once();
        }

        v40 = qword_10015A878;
        swift_beginAccess();
        v41 = objc_getAssociatedObject(v38, (v40 + 16));
        swift_endAccess();
        if (v41)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v77 = v75;
        v78 = v76;
        if (*(&v76 + 1))
        {
          v42 = type metadata accessor for Date();
          v43 = swift_dynamicCast();
          (*(*(v42 - 8) + 56))(v6, v43 ^ 1u, 1, v42);
        }

        else
        {
          sub_10002533C(&v77, &qword_100152D70, &qword_100103DB0);
          v44 = type metadata accessor for Date();
          (*(*(v44 - 8) + 56))(v6, 1, 1, v44);
        }

        MilestoneConsistency.receiptTime.setter(v6);
        v45 = MilestoneConsistency.verify()();
        if (v1)
        {
          break;
        }

        v2 = v45;
        if (v45 != 1)
        {

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = v62;
            *(v54 + 4) = v25;
            *(v54 + 12) = 2048;
            v55 = v72;
            if (v63)
            {
              v56 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v56 = *(v70 + 16);
            }

            *(v54 + 14) = v56;

            _os_log_impl(&_mh_execute_header, v52, v53, "Milestone consistency proof %ld of %ld failed", v54, 0x16u);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return v2;
        }

        v46 = MilestoneConsistency.endSlh.getter();
        if (!v46)
        {

          sub_10006F0A8();
          swift_allocError();
          *v57 = 4;
          *(v57 + 4) = 1;
          swift_willThrow();

          return v2;
        }

        result = MilestoneConsistency.endSlh.getter();
        if (!result)
        {
          __break(1u);
          goto LABEL_82;
        }

        v47 = result;

        v3 = v47;
        v11 = &v80;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v71;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v80;
        ++v25;
        if (v8 == v64)
        {
          v2 = 1;
          v8 = v69;
          goto LABEL_69;
        }
      }

      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        *v50 = 134218498;
        *(v50 + 4) = v25;
        *(v50 + 12) = 2048;
        if (v63)
        {
          v51 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v51 = *(v70 + 16);
        }

        v58 = v69;

        *(v50 + 14) = v51;

        *(v50 + 22) = 2112;
        swift_errorRetain();
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 24) = v59;
        *v2 = v59;
        _os_log_impl(&_mh_execute_header, v48, v49, "Milestone consistency proof %ld of %ld failed: %@", v50, 0x20u);
        sub_10002533C(v2, &qword_100153450, &unk_100104140);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v58 = v69;
      }

      v60 = v72;
      swift_willThrow();
    }

    else
    {
LABEL_69:
    }

    return v2;
  }

LABEL_82:
  __break(1u);
  return result;
}

NSObject *sub_10006BE0C(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v6 - 8);
  v8 = &v105 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MilestoneRootsResponse.keyBag.getter();
  if (!v13)
  {
    sub_10006F0A8();
    swift_allocError();
    *v24 = 0;
    *(v24 + 4) = 1;
    swift_willThrow();
    return v9;
  }

  v14 = v13;
  if (![v4 hasPatInclusionProof] || (v15 = objc_msgSend(v4, "patInclusionProof")) == 0)
  {
    sub_10006F0A8();
    swift_allocError();
    *v23 = 3;
    *(v23 + 4) = 1;
    swift_willThrow();

    return v9;
  }

  v113 = a1;
  v115 = v15;
  v116 = v14;
  result = [v15 slh];
  if (!result)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v17 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v18 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v17];

  sub_100069C18(&v121);
  if (*(&v122 + 1))
  {
    v112 = v10;
    v114 = v4;
    sub_1000331C0(&v121, v117);
    sub_10002533C(&v121, &qword_100152D88, &unk_100103DC0);
    v19 = v18;
    v20 = v118;
    v21 = v119;
    v22 = sub_100026F6C(v117, v118);
    sub_100061CE4(v125);
    if (v2)
    {

      sub_100024E14(v117);
      return v9;
    }

    v107 = v22;
    v108 = v21;
    v109 = v20;
    v111 = v19;
    MilestoneRootsResponse.receiptTime.getter(v8);
    v28 = v112;
    v29 = v112[6];
    if (v29(v8, 1, v9) == 1)
    {
      static Date.now.getter();
      if (v29(v8, 1, v9) != 1)
      {
        sub_10002533C(v8, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v28[4])(v12, v8, v9);
    }

    v18 = v111;
    v30 = [v111 data];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v32;

    v33 = sub_100061EBC();
    v4 = v114;
    (v108[3].isa)(v125, v12, v31, v110, v33, v109);
    v3 = 0;
    (v28[1])(v12, v9);
    sub_100026FB0(v31, v110);
    sub_1000270C0(v125);
    sub_100024E14(v117);
  }

  else
  {
    sub_10002533C(&v121, &qword_100152D88, &unk_100103DC0);
  }

  v25 = v116;
  v26 = [v116 appSthKeyStore];
  v27 = [v26 signatureVerifier];

  [v18 setVerifier:v27];
  sub_100061CE4(v126);
  if (v3)
  {

    return v9;
  }

  v112 = v27;
  v9 = sub_1000587C8();
  sub_100069C18(&v121);
  if (*(&v122 + 1))
  {
    v34 = v18;
    sub_1000331C0(&v121, v117);
    sub_10002533C(&v121, &qword_100152D88, &unk_100103DC0);
    v35 = v118;
    v36 = v119;
    sub_100026F6C(v117, v118);
    (v36[6].isa)(v126, v9, v35, v36);
    sub_100024E14(v117);
    v18 = v34;
  }

  else
  {
    sub_10002533C(&v121, &qword_100152D88, &unk_100103DC0);
  }

  if (v9 != 1)
  {
    sub_1000270C0(v126);
    v53 = v115;
    v54 = v112;
LABEL_29:

    return v9;
  }

  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100025AE0(v37, qword_10015D278);
  sub_100027114(v126, &v121);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  sub_1000270C0(v126);
  v41 = os_log_type_enabled(v39, v40);
  v111 = v18;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v109 = v42;
    v110 = swift_slowAlloc();
    v120 = v110;
    *v42 = 136315138;
    v121 = v126[0];
    v122 = v126[1];
    v123 = v126[2];
    v124 = v127;
    sub_100027114(v126, v117);
    sub_100027584();
    v114 = v38;
    v108 = v39;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v40;
    v47 = *(&v123 + 1);
    v48 = v124;

    sub_100026FB0(v47, v48);
    v49 = sub_100021D24(v43, v45, &v120);

    v50 = v109;
    *(v109 + 4) = v49;
    v51 = v46;
    v52 = v108;
    _os_log_impl(&_mh_execute_header, v108, v51, "Verified signature for %s", v50, 0xCu);
    sub_100024E14(v110);
  }

  else
  {
  }

  v55 = [v116 appSthKeyStore];
  v56 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v55];

  v57 = v115;
  [v115 setVerifier:v56];

  v9 = sub_1000587C8();
  if ([v57 nodeType] != 1)
  {
    sub_10006F0A8();
    swift_allocError();
    *v76 = 7;
    *(v76 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(v126);

    v77 = v111;
LABEL_45:

    return v9;
  }

  result = [v57 nodeBytes];
  if (!result)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v58 = result;
  sub_100033178(0, &qword_100153C18, off_1001312E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v60, v62);
  *&v121 = 0;
  v64 = [ObjCClassFromMetadata parseFromData:isa error:&v121];

  v65 = v121;
  if (!v64)
  {
    v78 = v121;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v126);

    v77 = v115;
    goto LABEL_45;
  }

  if (!(v113 >> 62))
  {
    result = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_36;
    }

LABEL_71:
    v93 = 0x206E776F6E6B6E75;
    v96 = v65;
    v92 = 0;
    v95 = 0xEB00000000686C73;
    goto LABEL_72;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_71;
  }

LABEL_36:
  v66 = &result[-1].isa + 7;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_77;
  }

  v109 = v64;
  v110 = (v113 & 0xC000000000000001);
  v108 = result;
  if ((v113 & 0xC000000000000001) == 0)
  {
    if ((v66 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v66 < *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v67 = *(v113 + 8 * v66 + 32);
      v68 = v65;
      v69 = v67;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_78:
  v104 = v65;
  v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
  v70 = v69;
  if (([v109 hasObjectMapHead] & 1) == 0)
  {
    goto LABEL_68;
  }

  v107 = v70;
  v71 = [v70 logHead];
  if (v71)
  {
    v72 = v71;
    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0xF000000000000000;
  }

  result = [v109 objectMapHead];
  if (result)
  {
    v79 = result;
    v106 = v73;
    v80 = [result object];

    if (v80)
    {
      v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      if (v75 >> 60 == 15)
      {
        v84 = v75;
        if (v83 >> 60 != 15)
        {
          goto LABEL_67;
        }

        goto LABEL_54;
      }

      v114 = v4;
      v84 = v75;
      if (v83 >> 60 != 15)
      {
        v89 = v106;
        sub_100037620(v106, v75);
        sub_100037620(v81, v83);
        v90 = sub_100027800(v89, v75, v81, v83);
        sub_10002BEE0(v81, v83);
        sub_10002BEE0(v81, v83);
        sub_10002BEE0(v89, v75);
        sub_10002BEE0(v89, v75);
        v70 = v107;
        v4 = v114;
        if (v90)
        {

          goto LABEL_55;
        }

LABEL_68:
        sub_100061CE4(v128);
        v92 = v70;

        v93 = KTSWDB.STHKey.description.getter();
        v95 = v94;
        sub_1000270C0(v128);
        v64 = v109;
LABEL_72:

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v9 = swift_slowAlloc();
          v99 = v92;
          v100 = swift_slowAlloc();
          *&v121 = v100;
          *v9 = 136446210;
          v101 = sub_100021D24(v93, v95, &v121);

          *(v9 + 4) = v101;
          _os_log_impl(&_mh_execute_header, v97, v98, "Failed to verify inclusion proof for %{public}s", v9, 0xCu);
          sub_100024E14(v100);
          v92 = v99;
        }

        else
        {
        }

        v102 = v112;
        sub_10006F0A8();
        swift_allocError();
        *v103 = 5;
        *(v103 + 4) = 1;
        swift_willThrow();

        sub_1000270C0(v126);
        return v9;
      }
    }

    else
    {
      v84 = v75;
      if (v75 >> 60 == 15)
      {
LABEL_54:

        sub_10002BEE0(v106, v84);
LABEL_55:
        v65 = 0;
        v85 = v113 & 0xFFFFFFFFFFFFFF8;
        v86 = v108;
        while (1)
        {
          if (v110)
          {
            v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v65 >= *(v85 + 16))
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v87 = *(v113 + 8 * v65 + 32);
          }

          v88 = v87;
          v64 = (v65 + 1);
          if (__OFADD__(v65, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          *&v121 = v87;
          sub_10006F160(&v121, v4, v9);

          ++v65;
          if (v64 == v86)
          {
            sub_1000270C0(v126);

            v116 = v112;
            v53 = v109;
            v54 = v107;
            goto LABEL_29;
          }
        }
      }

      v81 = 0;
      v83 = 0xF000000000000000;
    }

LABEL_67:
    v70 = v107;

    sub_10002BEE0(v106, v84);
    sub_10002BEE0(v81, v83);
    v91 = v70;
    goto LABEL_68;
  }

LABEL_83:
  __break(1u);
  return result;
}

id sub_10006D0FC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v6 - 8);
  v8 = &v108 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MilestoneRootsResponse.keyBag.getter();
  if (!v13)
  {
    sub_10006F0A8();
    swift_allocError();
    *v22 = 0;
    *(v22 + 4) = 1;
    swift_willThrow();
    return v9;
  }

  v14 = v13;
  if (![v4 hasTltInclusionProof] || (v15 = objc_msgSend(v4, "tltInclusionProof")) == 0)
  {
    sub_10006F0A8();
    swift_allocError();
    *v21 = 3;
    *(v21 + 4) = 1;
    swift_willThrow();

    return v9;
  }

  v113 = a1;
  v116 = v15;
  v117 = v14;
  result = [v15 slh];
  if (!result)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v17 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v18 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v17];

  sub_100069C18(&v122);
  if (*(&v123 + 1))
  {
    v112 = v10;
    v114 = v4;
    sub_1000331C0(&v122, v118);
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
    v19 = v119;
    v111 = v120;
    v20 = sub_100026F6C(v118, v119);
    sub_100061CE4(v126);
    if (v2)
    {

      sub_100024E14(v118);
      return v9;
    }

    v108 = v20;
    v109 = v19;
    v115 = v18;
    MilestoneRootsResponse.receiptTime.getter(v8);
    v27 = v112;
    v28 = *(v112 + 48);
    if (v28(v8, 1, v9) == 1)
    {
      static Date.now.getter();
      if (v28(v8, 1, v9) != 1)
      {
        sub_10002533C(v8, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (*(v27 + 32))(v12, v8, v9);
    }

    v29 = [v115 data];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v31;

    v32 = sub_100061EBC();
    v4 = v114;
    v33 = v30;
    v34 = v30;
    v35 = v110;
    (v111[3])(v126, v12, v34, v110, v32, v109);
    v3 = 0;
    (*(v27 + 8))(v12, v9);
    sub_100026FB0(v33, v35);
    sub_1000270C0(v126);
    sub_100024E14(v118);
  }

  else
  {
    v115 = v18;
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
  }

  v23 = v117;
  v24 = [v117 tltKeyStore];
  v25 = [v24 signatureVerifier];

  v26 = v115;
  [v115 setVerifier:v25];
  sub_100061CE4(v127);
  if (v3)
  {

    return v9;
  }

  v9 = sub_1000587C8();
  if (qword_10015A890 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_100025AE0(v36, qword_10015D278);
  sub_100027114(v127, &v122);
  v112 = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  sub_1000270C0(v127);
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v110 = v40;
    v111 = swift_slowAlloc();
    v121 = v111;
    *v40 = 136315138;
    v122 = v127[0];
    v123 = v127[1];
    v124 = v127[2];
    v125 = v128;
    sub_100027114(v127, v118);
    sub_100027584();
    v109 = v38;
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v25;
    v44 = v39;
    v46 = *(&v124 + 1);
    v45 = v125;

    v47 = v46;
    v25 = v43;
    sub_100026FB0(v47, v45);
    v48 = sub_100021D24(v108, v42, &v121);

    v49 = v110;
    *(v110 + 1) = v48;
    v50 = v44;
    v51 = v109;
    _os_log_impl(&_mh_execute_header, v109, v50, "Verified signature for %s", v49, 0xCu);
    sub_100024E14(v111);
  }

  else
  {
  }

  sub_100069C18(&v122);
  if (*(&v123 + 1))
  {
    sub_1000331C0(&v122, v118);
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
    v52 = v119;
    v53 = v120;
    sub_100026F6C(v118, v119);
    (v53[6])(v127, v9, v52, v53);
    sub_100024E14(v118);
  }

  else
  {
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
  }

  sub_100069C18(&v122);
  if (*(&v123 + 1))
  {
    sub_1000331C0(&v122, v118);
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
    v54 = v119;
    v55 = v120;
    sub_100026F6C(v118, v119);
    (v55[5])(v127, 1, v54, v55);
    sub_100024E14(v118);
  }

  else
  {
    sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
  }

  v56 = v117;
  if (v9 != 1)
  {
    sub_1000270C0(v127);

    return v9;
  }

  v57 = [v117 tltKeyStore];
  v58 = [objc_allocWithZone(TransparencyLogEntryVerifier) initWithTrustedKeyStore:v57];

  v59 = v116;
  [v116 setVerifier:v58];

  v9 = sub_1000587C8();
  if ([v59 nodeType] != 3)
  {
    sub_10006F0A8();
    swift_allocError();
    *v69 = 8;
    *(v69 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(v127);

    return v9;
  }

  v111 = v25;
  result = [v59 nodeBytes];
  if (!result)
  {
    goto LABEL_67;
  }

  v60 = result;
  sub_100033178(0, &qword_100153C10, off_1001312F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026FB0(v62, v64);
  *&v122 = 0;
  v66 = [ObjCClassFromMetadata parseFromData:isa error:&v122];

  if (!v66)
  {
    v70 = v122;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000270C0(v127);

    v71 = v116;
LABEL_62:

    return v9;
  }

  v67 = v122;
  v68 = v113;
  sub_100061CE4(&v129);
  if (![v66 hasPatHead])
  {
LABEL_59:
    sub_100027114(&v129, &v122);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    sub_1000270C0(&v129);
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v121 = v114;
      *v97 = 136446210;
      v122 = v129;
      v123 = v130;
      v124 = v131;
      v125 = v132;
      sub_100027114(&v129, v118);
      sub_100027584();
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v101 = v66;
      v9 = *(&v124 + 1);
      v102 = v125;

      v103 = v102;
      v66 = v101;
      sub_100026FB0(v9, v103);
      v104 = sub_100021D24(v98, v100, &v121);

      *(v97 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v95, v96, "Failed to verify inclusion proof for %{public}s", v97, 0xCu);
      sub_100024E14(v114);
    }

    sub_10006F0A8();
    swift_allocError();
    *v105 = 6;
    *(v105 + 4) = 1;
    swift_willThrow();
    sub_1000270C0(&v129);

    sub_1000270C0(v127);
    v71 = v115;
    goto LABEL_62;
  }

  v72 = [v68 logHead];
  if (v72)
  {
    v73 = v72;
    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xF000000000000000;
  }

  result = [v66 patHead];
  if (result)
  {
    v77 = result;
    v113 = v66;
    v78 = [result object];

    v110 = 0;
    if (v78)
    {
      v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = v76;
      if (v76 >> 60 != 15)
      {
        if (v81 >> 60 == 15)
        {
          goto LABEL_58;
        }

        v106 = v74;
        sub_100037620(v74, v82);
        sub_100037620(v79, v81);
        v107 = sub_100027800(v74, v82, v79, v81);
        sub_10002BEE0(v79, v81);
        sub_10002BEE0(v79, v81);
        sub_10002BEE0(v106, v82);
        sub_10002BEE0(v106, v82);
        v66 = v113;
        if (!v107)
        {
          goto LABEL_59;
        }

LABEL_51:
        v114 = v4;
        sub_100027114(&v129, &v122);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        sub_1000270C0(&v129);
        LODWORD(v112) = v84;
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v121 = v86;
          *v85 = 136315138;
          v122 = v129;
          v123 = v130;
          v124 = v131;
          v125 = v132;
          sub_100027114(&v129, v118);
          sub_100027584();
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v88;
          v91 = *(&v124 + 1);
          v90 = v125;

          sub_100026FB0(v91, v90);
          v92 = sub_100021D24(v87, v89, &v121);

          *(v85 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v83, v112, "Verified inclusion for %s", v85, 0xCu);
          sub_100024E14(v86);
        }

        sub_100069C18(&v122);
        if (*(&v123 + 1))
        {
          sub_1000331C0(&v122, v118);
          sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
          v93 = v119;
          v94 = v120;
          sub_100026F6C(v118, v119);
          (v94[5])(&v129, v9, v93, v94);
          sub_1000270C0(v127);
          sub_1000270C0(&v129);

          sub_100024E14(v118);
        }

        else
        {
          sub_1000270C0(v127);
          sub_1000270C0(&v129);

          sub_10002533C(&v122, &qword_100152D88, &unk_100103DC0);
        }

        return v9;
      }

      if (v81 >> 60 != 15)
      {
        goto LABEL_58;
      }
    }

    else if (v76 >> 60 != 15)
    {
      v79 = 0;
      v81 = 0xF000000000000000;
LABEL_58:
      sub_10002BEE0(v74, v76);
      sub_10002BEE0(v79, v81);
      v66 = v113;
      goto LABEL_59;
    }

    sub_10002BEE0(v74, v76);
    goto LABEL_51;
  }

LABEL_68:
  __break(1u);
  return result;
}

void MilestoneRootsResponse.verify()()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_10006E600(v1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_10006E600(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v8 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] != 1 && objc_msgSend(a1, "status") != 7)
  {
    v28 = [a1 status];
    sub_10006F0A8();
    v5 = swift_allocError();
    *v29 = v28;
    *(v29 + 4) = 0;
LABEL_23:
    swift_willThrow();
    *a2 = v5;
    return;
  }

  if ([a1 status] == 7)
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100025AE0(v15, qword_10015D278);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Newer milestone not found", v18, 2u);
    }

    v19 = 1;
    goto LABEL_9;
  }

  if (![a1 hasStartSlh])
  {
    sub_10006F0A8();
    v5 = swift_allocError();
    *v30 = 1;
LABEL_22:
    *(v30 + 4) = 1;
    goto LABEL_23;
  }

  if (![a1 hasPatInclusionProof] || !objc_msgSend(a1, "hasTltInclusionProof"))
  {
    sub_10006F0A8();
    v5 = swift_allocError();
    *v30 = 3;
    goto LABEL_22;
  }

  v20 = sub_10006B288();
  if (v3)
  {
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100025AE0(v22, qword_10015D278);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to verify milestones: %@", v25, 0xCu);
      sub_10002533C(v26, &qword_100153450, &unk_100104140);
    }

    goto LABEL_23;
  }

  if (v20 == 1)
  {
    v31 = v21;
    v32 = sub_10006BE0C(v21);
    if (v32 == 1)
    {
      v55 = v33;
      v54 = sub_10006D0FC(v33);
      MilestoneRootsResponse.receiptTime.getter(v10);
      v53 = *(v12 + 48);
      if (v53(v10, 1, v11) == 1)
      {
        static Date.now.getter();
        if (v53(v10, 1, v11) != 1)
        {
          sub_10002533C(v10, &qword_100152D90, &qword_100105620);
        }
      }

      else
      {
        (*(v12 + 32))(v14, v10, v11);
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v47 = type metadata accessor for Logger();
          sub_100025AE0(v47, qword_10015D278);
          swift_errorRetain();
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            *v50 = 138412290;
            swift_errorRetain();
            v52 = _swift_stdlib_bridgeErrorToNSError();
            *(v50 + 4) = v52;
            *v51 = v52;
            _os_log_impl(&_mh_execute_header, v48, v49, "Failed to GC milestones: %@", v50, 0xCu);
            sub_10002533C(v51, &qword_100153450, &unk_100104140);
          }

          else
          {
          }

          goto LABEL_49;
        }

        v45 = *(v31 + 32);
      }

      v46 = v45;

      sub_10006A68C(v14, v46);
      (*(v12 + 8))(v14, v11);

LABEL_49:
      v19 = v54;
LABEL_9:
      *a3 = v19;
      return;
    }

    v39 = v32;
    v40 = v33;

    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100025AE0(v41, qword_10015D278);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to verify TLT inclusion", v44, 2u);
    }

    *a3 = v39;
  }

  else
  {
    v34 = v20;

    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100025AE0(v35, qword_10015D278);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to verify milestones", v38, 2u);
    }

    *a3 = v34;
  }
}

unint64_t sub_10006F0A8()
{
  result = qword_100153CD8;
  if (!qword_100153CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153CD8);
  }

  return result;
}

unint64_t sub_10006F10C()
{
  result = qword_100153CE0;
  if (!qword_100153CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153CE0);
  }

  return result;
}

void sub_10006F160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100061CE4(v27);
  if (!v3)
  {
    v29 = 0;
    if (qword_10015A890 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100025AE0(v5, qword_10015D278);
    sub_100027114(v27, &v23);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    sub_1000270C0(v27);
    if (os_log_type_enabled(v6, v7))
    {
      v18 = a3;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      v23 = v27[0];
      v24 = v27[1];
      v25 = v27[2];
      v26 = v28;
      sub_100027114(v27, v19);
      sub_100027584();
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      v13 = *(&v25 + 1);
      v14 = v26;

      sub_100026FB0(v13, v14);
      v15 = sub_100021D24(v10, v12, &v22);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Verified inclusion for %s", v8, 0xCu);
      sub_100024E14(v9);

      a3 = v18;
    }

    sub_100069C18(&v23);
    if (*(&v24 + 1))
    {
      sub_1000331C0(&v23, v19);
      sub_10002533C(&v23, &qword_100152D88, &unk_100103DC0);
      v16 = v20;
      v17 = v21;
      sub_100026F6C(v19, v20);
      (*(v17 + 40))(v27, a3, v16, v17);
      sub_1000270C0(v27);
      sub_100024E14(v19);
    }

    else
    {
      sub_1000270C0(v27);
      sub_10002533C(&v23, &qword_100152D88, &unk_100103DC0);
    }
  }
}

uint64_t sub_10006F424(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 3;
  }

  else
  {
    return qword_100106988[a2];
  }
}

unint64_t sub_10006F444(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_1000798B8(a1, a2);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }

  else
  {

    return sub_100061318(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10006F534(uint64_t a1)
{
  v2 = sub_10007A3B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006F570(uint64_t a1)
{
  v2 = sub_10007A3B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10006F5AC()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    return 3;
  }

  else
  {
    return qword_100106988[v1];
  }
}

unint64_t sub_10006F5D0()
{
  v1 = v0[1];
  if (v1 >= 3)
  {
    v3 = *v0;
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = v3;
    *(inited + 56) = v1;
    sub_1000798B8(v3, v1);
    v6 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v6;
  }

  else
  {

    return sub_100061318(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10006F6CC()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D290);
  sub_100025AE0(v0, qword_10015D290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006F74C()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D290);
}

uint64_t sub_10006F7B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10006F89C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName);

  return v1;
}

id sub_10006F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine] = a1;
  v14 = &v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName];
  *v15 = a4;
  *(v15 + 1) = a5;
  *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_10006F990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine] = a1;
  v14 = &v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName];
  *v15 = a4;
  *(v15 + 1) = a5;
  *&v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid] = a6;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10006FA38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_10006FB30;

  return v6(a1);
}

uint64_t sub_10006FB30()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007A9AC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10006FC84()
{
  v13 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_100025AE0(v2, qword_10015D290);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100021D24(*(v6 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName), *(v6 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName + 8), &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "Refreshing milestones: %{public}s", v7, 0xCu);
    sub_100024E14(v8);
  }

  v11 = (*(**(*(v0 + 40) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 160) + **(**(*(v0 + 40) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 160));
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_10006FECC;

  return v11();
}

uint64_t sub_10006FECC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100070000, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100070000()
{
  v1 = objc_opt_self();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v1 cleanseErrorForXPC:v2];

  if (!v3)
  {
    v0[4] = v0[7];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v4 = v0[2];
    v5 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000702AC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_10006FC64();
}

uint64_t sub_100070374()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Verifying PAT consistency", v4, 2u);
  }

  v5 = *(v0 + 40);

  v8 = (*(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 168) + **(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 168));
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_100070550;

  return v8();
}

uint64_t sub_100070550()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007A9A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000707F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100070354();
}

uint64_t sub_1000708C0()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Public keybag refresh", v4, 2u);
  }

  v5 = *(v0 + 40);

  v8 = (*(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176) + **(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176));
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_100070550;

  return v8();
}

uint64_t sub_100070C10(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_1000708A0();
}

void sub_100070D44(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v7 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100106420;
  v11 = (v10 + v9);
  *v11 = 0x73736563637573;
  v11[1] = 0xE700000000000000;
  EventValue.init(BOOLeanLiteral:)();
  v12 = (v10 + v9 + v8);
  *v12 = 0x746E65696C63;
  v12[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v13 = (v11 + 2 * v8);
  *v13 = 7761509;
  v13[1] = 0xE300000000000000;
  v14 = a1[3];
  v15 = a1[4];
  sub_100026F6C(a1, v14);
  v16 = (*(v15 + 48))(v14, v15);
  v17 = [v16 currentEnvironment];

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v18 = (v11 + 3 * v8);
    *v18 = 0x6E6F73616572;
    v18[1] = 0xE600000000000000;
    if (a4)
    {
      v19 = [a4 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    EventValue.init(stringLiteral:)();
    v20 = sub_10004C674(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = a1[3];
    v22 = a1[4];
    sub_100026F6C(a1, v21);
    (*(v22 + 88))(v27, v21, v22);
    v23 = v28;
    v24 = v29;
    sub_100026F6C(v27, v28);
    (*(v24 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, a6, v20, v23, v24);

    sub_100024E14(v27);
  }
}

uint64_t sub_10007104C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10007106C, 0, 0);
}

uint64_t sub_10007106C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_7;
  }

  [*(v0 + 16) timeout];
  if (v2.n128_f64[0] > 0.0)
  {
    goto LABEL_8;
  }

  v3 = [v1 qualityOfService];
  v4 = v3 + 1;
  if (v3 + 1 > 0x22)
  {
    goto LABEL_7;
  }

  if (((1 << v4) & 0x40401) != 0)
  {
    v2.n128_u64[0] = 0x404E000000000000;
    goto LABEL_8;
  }

  v2.n128_u64[0] = 5.0;
  if (((1 << v4) & 0x404000000) == 0)
  {
LABEL_7:
    [*(v0 + 24) uiBlockingNetworkTimeout];
  }

LABEL_8:
  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_100071150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *v12 = v6;
  v12[1] = sub_100071220;

  return sub_100071488(v6 + 32, v5, a1, a2, a5, a3, a4);
}

uint64_t sub_100071220()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100071350;
  }

  else
  {
    v2 = sub_100071334;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100071350()
{
  v1 = objc_opt_self();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v1 cleanseErrorForXPC:v2];

  if (!v3)
  {
    v0[5] = v0[7];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v4 = v0[2];
    v5 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v6 = v4;
    v6[1] = v5;
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100071488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[90] = a7;
  v7[89] = a6;
  v7[88] = a5;
  v7[87] = a4;
  v7[86] = a3;
  v7[85] = a2;
  v7[84] = a1;
  v8 = type metadata accessor for Date();
  v7[91] = v8;
  v7[92] = *(v8 - 8);
  v7[93] = swift_task_alloc();
  v9 = type metadata accessor for SuspendingClock();
  v7[94] = v9;
  v7[95] = *(v9 - 8);
  v7[96] = swift_task_alloc();
  sub_100024248(&unk_100152620, &unk_1001031E0);
  v7[97] = swift_task_alloc();
  v10 = type metadata accessor for SuspendingClock.Instant();
  v7[98] = v10;
  v7[99] = *(v10 - 8);
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();

  return _swift_task_switch(sub_10007165C, 0, 0);
}

uint64_t sub_10007165C()
{
  if ([objc_opt_self() isAvailable])
  {
    v1 = v0[85];
    static SuspendingClock.now.getter();
    v2 = *(v1 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine);
    v0[102] = v2;

    return _swift_task_switch(sub_1000717A0, v2, 0);
  }

  else
  {
    sub_10007997C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000717A0()
{
  sub_1000331C0(*(v0 + 816) + 112, v0 + 368);

  return _swift_task_switch(sub_100071810, 0, 0);
}

void sub_100071810()
{
  v106 = v0;
  v1 = 0xEF50534E73666F6FLL;
  v2 = (*(v0 + 680) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName);
  v3 = *v2;
  *(v0 + 824) = *v2;
  v4 = v2[1];
  *(v0 + 832) = v4;
  v5 = v3 == 0xD00000000000001DLL && 0x800000010010C5A0 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v1 = 0xEF43435073666F6FLL;
    v6 = v3 == 0xD00000000000001ELL && 0x800000010010C5C0 == v4;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v1 = 0xEC00000073666F6FLL;
    }
  }

  *(v0 + 840) = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  v10 = type metadata accessor for Logger();
  *(v0 + 848) = sub_100025AE0(v10, qword_10015D290);
  sub_100027004(v8, v7);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_100026FB0(v8, v7);

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = Data.description.getter();
    v17 = sub_100021D24(v15, v16, v105);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100021D24(v3, v4, v105);
    _os_log_impl(&_mh_execute_header, v12, v13, "Verifying proofs %s for %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 432) = &type metadata for SWTFeatureFlags;
  *(v0 + 440) = sub_1000461C4();
  *(v0 + 408) = 3;
  v18 = isFeatureEnabled(_:)();
  sub_100024E14((v0 + 408));
  if (v18)
  {
    sub_10007997C();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = *(v0 + 696);
    v22 = *(v0 + 688);
    v23 = *(v0 + 680);
    sub_10007A61C();
    v24 = sub_10005D380(v22, v21);
    v26 = v25;
    v27 = v23;
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v103 = v19;

    if (os_log_type_enabled(v28, v29))
    {
      v101 = *(v0 + 832);
      v30 = *(v0 + 824);
      v31 = *(v0 + 680);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v32 = 136315906;
      v34 = sub_100021D24(v24, v26, v105);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v35;
      *v33 = v35;
      *(v32 + 22) = 2082;
      *(v32 + 24) = sub_100021D24(v30, v101, v105);
      *(v32 + 32) = 1026;
      v36 = *&v31[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

      *(v32 + 34) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Proof verification %s failed with %@: %{public}s[%{public}d]", v32, 0x26u);
      sub_10002533C(v33, &qword_100153450, &unk_100104140);

      swift_arrayDestroy();
    }

    else
    {
      v45 = *(v0 + 680);
    }

    v99 = *(v0 + 824);
    v46 = *(v0 + 800);
    v47 = *(v0 + 792);
    v98 = *(v0 + 784);
    v48 = *(v0 + 768);
    v49 = *(v0 + 760);
    v50 = *(v0 + 752);
    v100 = *(v0 + 832);
    v102 = *(v0 + 704);
    v52 = *(v0 + 392);
    v51 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v52);
    v53 = (*(v51 + 80))(v52, v51);
    SuspendingClock.init()();
    SuspendingClock.now.getter();
    (*(v49 + 8))(v48, v50);
    SuspendingClock.Instant.duration(to:)();
    v97 = *(v47 + 8);
    v97(v46, v98);
    v54 = Duration.components.getter();
    Duration.components.getter();
    v56 = [objc_allocWithZone(NSNumber) initWithDouble:v55 / 1.0e18 + v54];
    v57 = String._bridgeToObjectiveC()();
    [v53 logMetric:v56 withName:v57];

    v58 = *(v0 + 392);
    v59 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v58);
    v60 = (*(v59 + 80))(v58, v59);
    v61 = String._bridgeToObjectiveC()();

    v62 = _convertErrorToNSError(_:)();
    sub_100024248(&qword_100153DC8, &unk_100106BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100106430;
    *(v0 + 608) = 99;
    *(v0 + 616) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v99;
    *(inited + 80) = v100;
    *(v0 + 624) = 114;
    *(v0 + 632) = 0xE100000000000000;

    AnyHashable.init<A>(_:)();
    if (v102)
    {
      v64 = [*(v0 + 704) name];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = (inited + 144);
      *(inited + 168) = &type metadata for String;
      if (v67)
      {
        *v68 = v65;
        goto LABEL_32;
      }
    }

    else
    {
      v68 = (inited + 144);
      *(inited + 168) = &type metadata for String;
    }

    *v68 = 45;
    v67 = 0xE100000000000000;
LABEL_32:
    *(inited + 152) = v67;
    sub_10007A4E0(inited);
    swift_setDeallocating();
    sub_100024248(&qword_100153DD0, &unk_100106940);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v60 logResultForEvent:v61 hardFailure:1 result:v62 withAttributes:isa];

    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v70 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
    v71 = *(v70 + 72);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100106420;
    v74 = (v73 + v72);
    *v74 = 0x73736563637573;
    v74[1] = 0xE700000000000000;
    swift_errorRetain();
    EventValue.init(BOOLeanLiteral:)();
    v75 = (v73 + v72 + v71);
    *v75 = 0x746E65696C63;
    v75[1] = 0xE600000000000000;

    EventValue.init(stringLiteral:)();
    v76 = (v73 + v72 + 2 * v71);
    *v76 = 7761509;
    v76[1] = 0xE300000000000000;
    v77 = *(v0 + 392);
    v78 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v77);
    v79 = (*(v78 + 48))(v77, v78);
    v80 = [v79 currentEnvironment];

    if ((v80 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      EventValue.init(integerLiteral:)();
      v81 = (v74 + 3 * v71);
      *v81 = 0x6E6F73616572;
      v81[1] = 0xE600000000000000;
      if (v102)
      {
        v82 = [*(v0 + 704) name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v83 = *(v0 + 808);
      v84 = *(v0 + 784);
      EventValue.init(stringLiteral:)();
      v85 = sub_10004C674(v73);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v86 = *(v0 + 392);
      v87 = *(v0 + 400);
      sub_100026F6C((v0 + 368), v86);
      (*(v87 + 88))(v86, v87);
      v88 = *(v0 + 472);
      v89 = *(v0 + 480);
      sub_100026F6C((v0 + 448), v88);
      (*(v89 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v103, v85, v88, v89);

      sub_100024E14((v0 + 448));
      swift_willThrow();
      v97(v83, v84);
      sub_100024E14((v0 + 368));

      v90 = *(v0 + 8);

      v90();
    }

    return;
  }

  v37 = *(v0 + 704);
  v38 = *(v0 + 392);
  v39 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v38);
  v40 = [(*(v39 + 32))(v38 v39)];
  swift_unknownObjectRelease();
  if (!v37)
  {
    goto LABEL_41;
  }

  v41 = *(v0 + 704);
  [v41 timeout];
  v43 = v42;
  if (v42 <= 0.0)
  {
    v44 = [v41 qualityOfService];
    if (v44 > 16)
    {
      if (v44 != 17)
      {
        v43 = 5.0;
        if (v44 == 33 || v44 == 25)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (v44 == -1 || v44 == 9)
    {
LABEL_40:
      v43 = 60.0;
      goto LABEL_42;
    }

LABEL_41:
    [v40 uiBlockingNetworkTimeout];
    v43 = v91;
  }

LABEL_42:
  *(v0 + 856) = v43;
  v92 = *(v0 + 816);
  swift_unknownObjectRelease();
  v93 = static Duration.milliseconds(_:)();
  v95 = v94;
  v104 = (*(*v92 + 128) + **(*v92 + 128));
  v96 = swift_task_alloc();
  *(v0 + 864) = v96;
  *v96 = v0;
  v96[1] = sub_1000725CC;

  v104(v93, v95);
}

uint64_t sub_1000725CC(char a1)
{
  *(*v1 + 976) = a1;

  return _swift_task_switch(sub_1000726CC, 0, 0);
}

uint64_t sub_1000726CC(uint64_t a1)
{
  v23 = v1;
  if ((*(v1 + 976) & 1) == 0)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "State machine timed out getting ready, attemping to verify proofs regardless", v4, 2u);
    }
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Progressing after waiting for state machine", v7, 2u);
  }

  v8 = *(v1 + 696);
  v9 = *(v1 + 688);

  v10 = objc_allocWithZone(ATLogProofs);
  sub_100027004(v9, v8);
  *(v1 + 872) = sub_1000330B8();
  *(v1 + 880) = 0;
  sub_100026FB0(*(v1 + 688), *(v1 + 696));
  v11 = *(v1 + 392);
  v12 = *(v1 + 400);
  sub_100026F6C((v1 + 368), v11);
  v13 = (*(v12 + 48))(v11, v12);
  ATLogProofs.configBag.setter(v13);
  v14 = *(v1 + 392);
  v15 = *(v1 + 400);
  sub_100026F6C((v1 + 368), v14);
  v16 = (*(v15 + 64))(v14, v15);
  v22[3] = type metadata accessor for KTSWDB();
  v22[4] = sub_10007A668();
  v22[0] = v16;
  sub_10005DCE8(v22);
  v17 = *(v1 + 392);
  v18 = *(v1 + 400);
  sub_100026F6C((v1 + 368), v17);
  v19 = (*(v18 + 56))(v17, v18);
  *(v1 + 888) = v19;
  v20 = *v19 + 160;
  *(v1 + 896) = *v20;
  *(v1 + 904) = v20 & 0xFFFFFFFFFFFFLL | 0x445F000000000000;

  return _swift_task_switch(sub_100073240, v19, 0);
}

uint64_t sub_100073240()
{
  *(v0 + 912) = (*(v0 + 896))();

  return _swift_task_switch(sub_1000732BC, 0, 0);
}

uint64_t sub_1000732BC()
{
  v22 = v0;
  ATLogProofs.keyBag.setter(*(v0 + 912));
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v1);
  v3 = (*(v2 + 80))(v1, v2);
  ATLogProofs.analytics.setter(v3);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v4);
  (*(v5 + 88))(v21, v4, v5);
  sub_10005EA88(v21);
  v6 = ATLogProofs.keyBag.getter();
  if (v6)
  {

    v7 = ATLogProofs.isNewEpoch()();
    if (v8)
    {

LABEL_10:
      v17 = swift_task_alloc();
      *(v0 + 944) = v17;
      *v17 = v0;
      v17[1] = sub_1000737C4;
      v18 = *(v0 + 720);
      v19 = *(v0 + 712);

      return ATLogProofs.verify(digest:)(v19, v18);
    }

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v9 = ATLogProofs.keyBag.getter();
  if (v9)
  {
    v10 = v9;
    sub_10007F3F0();
  }

  v11 = *(v0 + 816);
  v12 = *(v0 + 776);
  v13 = *(v0 + 680);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v16 = v13;
  sub_100075D7C(0, 0, v12, &unk_100106958, v15);

  ATLogProofs.VerificationResult.result.getter();

  return _swift_task_switch(sub_100073518, v11, 0);
}