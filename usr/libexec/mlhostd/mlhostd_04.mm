uint64_t sub_100061064()
{
  v429 = v0;
  (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task.sleep interrupted, skipping waiting for extension completion.", v3, 2u);
  }

  v4 = *(v0 + 1424);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  os_unfair_lock_lock((*(v4 + 56) + 16));
  v7 = *(v4 + 72);

  LOBYTE(v5) = sub_1000292B0(v6, v5, v7);

  os_unfair_lock_unlock((*(v4 + 56) + 16));
  if ((v5 & 1) == 0)
  {
    v8 = *(v0 + 1544);
    swift_beginAccess();
    if (*(v8 + 16) == 2)
    {
      v407 = *(v0 + 1560);
      v9 = *(v0 + 1504);
      v10 = *(v0 + 1136);
      v11 = *(v0 + 1048);
      v12 = *(v0 + 1016);
      v13 = *(v0 + 936);
      v14 = MLHostTask.name.getter();
      v16 = v15;
      v9(v11, enum case for TaskStatus.taskFailed(_:), v12);
      sub_100019300(v14, v16, v13);
      if (v407(v13, 1, v10) == 1)
      {
        sub_100009C94(*(v0 + 936), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v88 = *(v0 + 1456);
        v89 = *(v0 + 1184);
        v90 = *(v0 + 1136);
        v91 = *(v0 + 1120);
        v92 = *(v0 + 1048);
        v93 = *(v0 + 1024);
        v94 = *(v0 + 1016);
        (*(v0 + 1472))(v89, *(v0 + 936), v90);
        (*(v93 + 16))(v91, v92, v94);
        MLHostTask.status.setter();
        sub_10001C4DC(v89);
        v88(v89, v90);
      }

      v95 = *(v0 + 1576);
      v96 = *(v0 + 1440);
      v97 = *(v0 + 1176);
      v98 = *(v0 + 1136);
      v99 = *(v0 + 1048);
      v100 = *(v0 + 1016);
      v101 = *(v0 + 640);

      v95(v99, v100);
      v96(v97, v101, v98);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 1456);
      v106 = *(v0 + 1176);
      v107 = *(v0 + 1136);
      if (v104)
      {
        v422 = v103;
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v427 = v109;
        *v108 = 136315138;
        v110 = MLHostTask.name.getter();
        v112 = v111;
        v105(v106, v107);
        v113 = sub_100008A0C(v110, v112, &v427);

        *(v108 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v102, v422, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v108, 0xCu);
        sub_100009914(v109);
      }

      else
      {

        v105(v106, v107);
      }

      v391 = *(v0 + 1528);
      v114 = *(v0 + 1464);
      v115 = *(v0 + 912);
      v116 = *(v0 + 904);
      v423 = *(v0 + 896);
      v117 = *(v0 + 776);
      v118 = *(v0 + 728);
      v119 = *(v0 + 720);
      v120 = [v114 processIdentifier];
      v427 = 0;
      v428 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v427 = 0x206B736154;
      v428 = 0xE500000000000000;
      v121._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v121);

      v122._countAndFlagsBits = 0xD000000000000024;
      v122._object = 0x8000000100073000;
      String.append(_:)(v122);
      sub_1000530BC(v120);

      swift_unknownObjectRelease();
      (*(v118 + 8))(v117, v119);

      [v114 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v116 + 8))(v115, v423);
LABEL_25:
      v424 = 0;
LABEL_76:

      v327 = *(v0 + 8);

      return v327(v424);
    }
  }

  v17 = *(v0 + 1544);
  swift_beginAccess();
  v18 = *(v17 + 16);
  if (v18 == 2)
  {
    (*(v0 + 1440))(*(v0 + 1280), *(v0 + 640), *(v0 + 1136));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 1424);
      v22 = *(v0 + 1280);
      v23 = *(v0 + 1136);
      v402 = *(v0 + 672);
      v396 = *(v0 + 1456);
      v399 = *(v0 + 664);
      v24 = swift_slowAlloc();
      v427 = swift_slowAlloc();
      *v24 = 136315650;
      v25 = MLHostTask.name.getter();
      v27 = v26;
      v396(v22, v23);
      v28 = sub_100008A0C(v25, v27, &v427);

      *(v24 + 4) = v28;
      *(v24 + 12) = 1024;
      os_unfair_lock_lock((*(v21 + 56) + 16));
      v29 = *(v21 + 72);

      LOBYTE(v23) = sub_1000292B0(v399, v402, v29);

      os_unfair_lock_unlock((*(v21 + 56) + 16));
      *(v24 + 14) = v23 & 1;
      *(v24 + 18) = 2080;
      v30 = Duration.description.getter();
      v32 = sub_100008A0C(v30, v31, &v427);

      *(v24 + 20) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v24, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v48 = *(v0 + 1456);
      v49 = *(v0 + 1280);
      v50 = *(v0 + 1136);

      v48(v49, v50);
    }

    v415 = *(v0 + 1560);
    v51 = *(v0 + 1504);
    v52 = *(v0 + 1136);
    v53 = *(v0 + 1056);
    v54 = *(v0 + 1016);
    v55 = *(v0 + 944);
    v56 = MLHostTask.name.getter();
    v58 = v57;
    v51(v53, enum case for TaskStatus.taskDeferred(_:), v54);
    sub_100019300(v56, v58, v55);
    if (v415(v55, 1, v52) == 1)
    {
      sub_100009C94(*(v0 + 944), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v71 = *(v0 + 1456);
      v72 = *(v0 + 1192);
      v73 = *(v0 + 1136);
      v74 = *(v0 + 1120);
      v75 = *(v0 + 1056);
      v76 = *(v0 + 1024);
      v77 = *(v0 + 1016);
      (*(v0 + 1472))(v72, *(v0 + 944), v73);
      (*(v76 + 16))(v74, v75, v77);
      MLHostTask.status.setter();
      sub_10001C4DC(v72);
      v71(v72, v73);
    }

    v78 = *(v0 + 1576);
    v79 = *(v0 + 1464);
    v80 = *(v0 + 1056);
    v81 = *(v0 + 1016);
    v82 = *(v0 + 912);
    v83 = *(v0 + 904);
    v421 = *(v0 + 896);
    v386 = *(v0 + 776);
    v84 = *(v0 + 728);
    v375 = *(v0 + 1528);
    v381 = *(v0 + 720);

    v78(v80, v81);
    v85 = [v79 processIdentifier];
    v427 = 0;
    v428 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v427 = 0x206B736154;
    v428 = 0xE500000000000000;
    v86._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v86);

    v87._countAndFlagsBits = 0xD00000000000001ELL;
    v87._object = 0x8000000100073030;
    String.append(_:)(v87);
    sub_1000530BC(v85);

    swift_unknownObjectRelease();
    (*(v84 + 8))(v386, v381);

    [v79 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v82, v421);
    goto LABEL_25;
  }

  v33 = *(v0 + 1440);
  v34 = *(v0 + 1136);
  v35 = *(v0 + 640);
  if ((v18 & 1) == 0)
  {
    v33(*(v0 + 1264), v35, v34);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v408 = *(v0 + 1456);
      v61 = *(v0 + 1264);
      v62 = *(v0 + 1136);
      v63 = swift_slowAlloc();
      v427 = swift_slowAlloc();
      *v63 = 136315650;
      v64 = MLHostTask.name.getter();
      v66 = v65;
      v408(v61, v62);
      v67 = sub_100008A0C(v64, v66, &v427);

      *(v63 + 4) = v67;
      *(v63 + 12) = 1024;
      *(v63 + 14) = 0;
      *(v63 + 18) = 2080;
      v68 = Duration.description.getter();
      v70 = sub_100008A0C(v68, v69, &v427);

      *(v63 + 20) = v70;
      _os_log_impl(&_mh_execute_header, v59, v60, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v63, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v154 = *(v0 + 1456);
      v155 = *(v0 + 1264);
      v156 = *(v0 + 1136);

      v154(v155, v156);
    }

    v417 = *(v0 + 1560);
    v157 = *(v0 + 1504);
    v158 = *(v0 + 1136);
    v159 = *(v0 + 1064);
    v160 = *(v0 + 1016);
    v161 = *(v0 + 952);
    v162 = MLHostTask.name.getter();
    v164 = v163;
    v157(v159, enum case for TaskStatus.taskFailed(_:), v160);
    sub_100019300(v162, v164, v161);
    if (v417(v161, 1, v158) == 1)
    {
      sub_100009C94(*(v0 + 952), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v165 = *(v0 + 1456);
      v166 = *(v0 + 1200);
      v167 = *(v0 + 1136);
      v168 = *(v0 + 1120);
      v169 = *(v0 + 1064);
      v170 = *(v0 + 1024);
      v171 = *(v0 + 1016);
      (*(v0 + 1472))(v166, *(v0 + 952), v167);
      (*(v170 + 16))(v168, v169, v171);
      MLHostTask.status.setter();
      sub_10001C4DC(v166);
      v165(v166, v167);
    }

    v172 = *(v0 + 1576);
    v173 = *(v0 + 1536);
    v174 = *(v0 + 1464);
    v175 = *(v0 + 1064);
    v176 = *(v0 + 1016);
    v400 = *(v0 + 912);
    v405 = *(v0 + 904);
    v418 = *(v0 + 896);
    v388 = *(v0 + 776);
    v177 = *(v0 + 728);
    v377 = *(v0 + 1528);
    v382 = *(v0 + 720);

    v172(v175, v176);
    v178 = MLHostTask.name.getter();
    sub_10001C1E4(v178, v179);

    v180 = [v174 processIdentifier];
    v427 = 0;
    v428 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v427 = 0x206B736154;
    v428 = 0xE500000000000000;
    v181._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v181);

    v182._countAndFlagsBits = 0xD000000000000014;
    v182._object = 0x8000000100073050;
    String.append(_:)(v182);
    sub_1000530BC(v180);

    swift_unknownObjectRelease();
    (*(v177 + 8))(v388, v382);
    swift_beginAccess();
    v424 = *(v173 + 16);
    v183 = v424;

    [v174 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v405 + 8))(v400, v418);
    goto LABEL_76;
  }

  v33(*(v0 + 1272), v35, v34);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v403 = *(v0 + 1456);
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1136);
    v40 = swift_slowAlloc();
    v427 = swift_slowAlloc();
    *v40 = 136315650;
    v41 = MLHostTask.name.getter();
    v43 = v42;
    v403(v38, v39);
    v44 = sub_100008A0C(v41, v43, &v427);

    *(v40 + 4) = v44;
    *(v40 + 12) = 1024;
    *(v40 + 14) = 1;
    *(v40 + 18) = 2080;
    v45 = Duration.description.getter();
    v47 = sub_100008A0C(v45, v46, &v427);

    *(v40 + 20) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v40, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v123 = *(v0 + 1456);
    v124 = *(v0 + 1272);
    v125 = *(v0 + 1136);

    v123(v124, v125);
  }

  v126 = *(v0 + 1536);
  v409 = *(v0 + 1520);
  v416 = *(v0 + 1528);
  v127 = *(v0 + 1496);
  v404 = *(v0 + 1488);
  v397 = *(v0 + 1472);
  v376 = *(v0 + 1440);
  v373 = *(v0 + 1336);
  v371 = *(v0 + 1136);
  v128 = *(v0 + 1120);
  v129 = *(v0 + 1024);
  v130 = *(v0 + 1016);
  v392 = *(v0 + 648);
  v370 = *(v0 + 640);
  v131 = (*(v0 + 476) + 16) & ~*(v0 + 476);
  v387 = (*(v0 + 1152) + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
  v132 = (v387 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1504))(v128, *(v0 + 500), v130);
  swift_beginAccess();
  (*(v129 + 40))(v127, v128, v130);
  swift_beginAccess();
  v133 = *(v126 + 16);
  *(v126 + 16) = 0;

  v376(v373, v370, v371);
  v134 = swift_allocObject();
  v397(v134 + v131, v373, v371);
  *(v134 + v387) = v126;
  *(v134 + v132) = v404;
  *(v134 + ((v132 + 15) & 0xFFFFFFFFFFFFFFF8)) = v392;
  *(v0 + 240) = sub_1000643F4;
  *(v0 + 248) = v134;
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_100065970;
  *(v0 + 232) = &unk_100082F50;
  v135 = _Block_copy((v0 + 208));

  [v409 doWorkWithContext:v416 reply:v135];
  _Block_release(v135);
  v136 = *(v0 + 1424);
  os_unfair_lock_lock((*(v136 + 56) + 16));
  v137 = *(v136 + 72);
  if (*(v137 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v138 = Hasher._finalize()();
    v139 = -1 << *(v137 + 32);
    v140 = v138 & ~v139;
    if ((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140))
    {
      v141 = ~v139;
      while (1)
      {
        v142 = (*(v137 + 48) + 16 * v140);
        v143 = *v142 == *(v0 + 664) && v142[1] == *(v0 + 672);
        if (v143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v140 = (v140 + 1) & v141;
        if (((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v184 = *(v0 + 1424);

      os_unfair_lock_unlock((*(v184 + 56) + 16));
      goto LABEL_48;
    }

LABEL_36:
  }

  v144 = *(v0 + 1536);
  os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
  if (!*(v144 + 16))
  {
    v145 = *(v0 + 768);
    v146 = *(v0 + 728);
    v147 = *(v0 + 720);
    static Clock<>.continuous.getter();
    *(v0 + 560) = xmmword_100069320;
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    *(v0 + 496) = 1;
    v148 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v149 = *(v146 + 8);
    *(v0 + 1656) = v149;
    *(v0 + 1664) = (v146 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v149(v145, v147);
    v150 = swift_task_alloc();
    *(v0 + 1672) = v150;
    *v150 = v0;
    v150[1] = sub_10005B044;
    v151 = *(v0 + 744);
    v152 = *(v0 + 680);
    v153 = v0 + 480;
    goto LABEL_39;
  }

LABEL_48:
  v185 = *(v0 + 1536);
  v186 = *(v0 + 768);
  v187 = *(v0 + 728);
  v188 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v189 = *(v187 + 8);
  *(v0 + 1608) = v189;
  *(v0 + 1616) = (v187 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v189(v186, v188);
  v190 = *(v185 + 16);
  v191 = *(v0 + 1440);
  v192 = *(v0 + 1136);
  v193 = *(v0 + 640);
  if (v190)
  {
    v191(*(v0 + 1256), v193, v192);
    v194 = v190;
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.info.getter();

    v197 = os_log_type_enabled(v195, v196);
    v198 = *(v0 + 1456);
    v199 = *(v0 + 1256);
    v200 = *(v0 + 1136);
    v424 = v190;
    v401 = v189;
    if (v197)
    {
      v201 = swift_slowAlloc();
      v389 = swift_slowAlloc();
      v427 = swift_slowAlloc();
      *v201 = 136315650;
      v383 = v195;
      v202 = MLHostTask.name.getter();
      v378 = v196;
      v203 = v194;
      v205 = v204;
      v198(v199, v200);
      v206 = sub_100008A0C(v202, v205, &v427);

      *(v201 + 4) = v206;
      *(v201 + 12) = 2080;
      v207 = Duration.description.getter();
      v209 = sub_100008A0C(v207, v208, &v427);

      *(v201 + 14) = v209;
      *(v201 + 22) = 2112;
      *(v201 + 24) = v203;
      *v389 = v190;
      v210 = v203;
      _os_log_impl(&_mh_execute_header, v383, v378, "Task %s completed after %s. TaskResult: %@", v201, 0x20u);
      sub_100009C94(v389, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();
    }

    else
    {

      v198(v199, v200);
    }

    v393 = *(v0 + 1560);
    v225 = *(v0 + 1496);
    v226 = *(v0 + 1136);
    v227 = *(v0 + 1088);
    v228 = *(v0 + 1024);
    v229 = *(v0 + 1016);
    v230 = *(v0 + 976);
    v231 = MLHostTask.name.getter();
    v233 = v232;
    v234 = v229;
    v235 = *(v228 + 16);
    v235(v227, v225, v234);
    sub_100019300(v231, v233, v230);
    if (v393(v230, 1, v226) == 1)
    {
      sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v410 = *(v0 + 1456);
      v236 = *(v0 + 1240);
      v237 = *(v0 + 1136);
      v238 = *(v0 + 1120);
      v239 = *(v0 + 1088);
      v240 = v235;
      v241 = *(v0 + 1016);
      (*(v0 + 1472))(v236, *(v0 + 976), v237);
      v242 = v241;
      v235 = v240;
      v240(v238, v239, v242);
      MLHostTask.status.setter();
      sub_10001C4DC(v236);
      v410(v236, v237);
    }

    v243 = *(v0 + 1576);
    v244 = *(v0 + 1088);
    v245 = *(v0 + 1016);

    v243(v244, v245);
    v246 = MLHostTask.name.getter();
    sub_10001C1E4(v246, v247);

    MLHostResult.status.getter();
    v248 = MLHostResultStatus.rawValue.getter();
    if (v248 == MLHostResultStatus.rawValue.getter())
    {
      v249 = *(v0 + 1528);
      v401(*(v0 + 776), *(v0 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v384 = *(v0 + 1576);
      v250 = *(v0 + 1496);
      v251 = *(v0 + 1120);
      v252 = *(v0 + 1016);
      v411 = *(v0 + 776);
      v394 = *(v0 + 1528);
      v398 = *(v0 + 720);
      v379 = [*(v0 + 1464) processIdentifier];
      v427 = 0;
      v428 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v253 = v428;
      *(v0 + 608) = v427;
      *(v0 + 616) = v253;
      v254._countAndFlagsBits = 0x206B736154;
      v254._object = 0xE500000000000000;
      String.append(_:)(v254);
      v255._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v255);

      v256._object = 0x8000000100073090;
      v256._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v256);
      v235(v251, v250, v252);
      _print_unlocked<A, B>(_:_:)();
      v384(v251, v252);
      v257._countAndFlagsBits = 46;
      v257._object = 0xE100000000000000;
      String.append(_:)(v257);
      sub_1000530BC(v379);

      swift_unknownObjectRelease();
      v401(v411, v398);
    }

    v258 = *(v0 + 1464);
    v259 = *(v0 + 912);
    v260 = *(v0 + 904);
    v261 = *(v0 + 896);

    [v258 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v260 + 8))(v259, v261);
    goto LABEL_76;
  }

  v191(*(v0 + 1248), v193, v192);
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.info.getter();
  v213 = os_log_type_enabled(v211, v212);
  v214 = *(v0 + 1456);
  v215 = *(v0 + 1248);
  v216 = *(v0 + 1136);
  if (v213)
  {
    v217 = swift_slowAlloc();
    v427 = swift_slowAlloc();
    *v217 = 136315394;
    v218 = MLHostTask.name.getter();
    v220 = v219;
    v214(v215, v216);
    v221 = sub_100008A0C(v218, v220, &v427);

    *(v217 + 4) = v221;
    *(v217 + 12) = 2080;
    v222 = Duration.description.getter();
    v224 = sub_100008A0C(v222, v223, &v427);

    *(v217 + 14) = v224;
    _os_log_impl(&_mh_execute_header, v211, v212, "Task %s asked to terminate because of deferral after %s.", v217, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v214(v215, v216);
  }

  v262 = *(v0 + 1536);
  v263 = *(v0 + 1520);
  static ContinuousClock.now.getter();
  [v263 doStop];
  v264 = *(v262 + 16);
  if (v264)
  {
    goto LABEL_63;
  }

  *(v0 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v264 = *(*(v0 + 1536) + 16);
    if (!v264)
    {
      v414 = *(v0 + 1560);
      v332 = *(v0 + 1504);
      v333 = *(v0 + 1136);
      v334 = *(v0 + 1072);
      v335 = *(v0 + 1016);
      v336 = *(v0 + 960);
      v337 = MLHostTask.name.getter();
      v339 = v338;
      v332(v334, enum case for TaskStatus.taskDeferred(_:), v335);
      sub_100019300(v337, v339, v336);
      if (v414(v336, 1, v333) == 1)
      {
        sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v340 = *(v0 + 1456);
        v341 = *(v0 + 1224);
        v342 = *(v0 + 1136);
        v343 = *(v0 + 1120);
        v344 = *(v0 + 1072);
        v345 = *(v0 + 1024);
        v346 = *(v0 + 1016);
        (*(v0 + 1472))(v341, *(v0 + 960), v342);
        (*(v345 + 16))(v343, v344, v346);
        MLHostTask.status.setter();
        sub_10001C4DC(v341);
        v340(v341, v342);
      }

      v347 = *(v0 + 1576);
      v348 = *(v0 + 1440);
      v349 = *(v0 + 1216);
      v350 = *(v0 + 1136);
      v351 = *(v0 + 1072);
      v352 = *(v0 + 1016);
      v353 = *(v0 + 640);

      v347(v351, v352);
      v348(v349, v353, v350);
      v354 = Logger.logObject.getter();
      v355 = static os_log_type_t.error.getter();
      v356 = os_log_type_enabled(v354, v355);
      v357 = *(v0 + 1456);
      v358 = *(v0 + 1216);
      v359 = *(v0 + 1136);
      if (v356)
      {
        v426 = v355;
        v360 = swift_slowAlloc();
        v361 = swift_slowAlloc();
        v427 = v361;
        *v360 = 136315138;
        v362 = MLHostTask.name.getter();
        v364 = v363;
        v357(v358, v359);
        v365 = sub_100008A0C(v362, v364, &v427);

        *(v360 + 4) = v365;
        _os_log_impl(&_mh_execute_header, v354, v426, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v360, 0xCu);
        sub_100009914(v361);
      }

      else
      {

        v357(v358, v359);
      }

      v366 = [*(v0 + 1464) processIdentifier];
      v427 = 0;
      v428 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v427 = 0x206B736154;
      v428 = 0xE500000000000000;
      v367._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v367);

      v368._countAndFlagsBits = 0xD00000000000001FLL;
      v368._object = 0x8000000100073070;
      String.append(_:)(v368);
      sub_1000530BC(v366);

      goto LABEL_72;
    }

LABEL_63:
    v406 = *(v0 + 1560);
    v265 = *(v0 + 1496);
    v266 = *(v0 + 1136);
    v267 = *(v0 + 1080);
    v268 = *(v0 + 1024);
    v269 = *(v0 + 1016);
    v270 = *(v0 + 968);
    v425 = v264;
    v271 = MLHostTask.name.getter();
    v273 = v272;
    v274 = v269;
    v275 = *(v268 + 16);
    v275(v267, v265, v274);
    sub_100019300(v271, v273, v270);
    if (v406(v270, 1, v266) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v412 = *(v0 + 1456);
      v276 = *(v0 + 1232);
      v277 = *(v0 + 1136);
      v278 = *(v0 + 1120);
      v279 = *(v0 + 1080);
      v280 = v275;
      v281 = *(v0 + 1016);
      (*(v0 + 1472))(v276, *(v0 + 968), v277);
      v282 = v281;
      v275 = v280;
      v280(v278, v279, v282);
      MLHostTask.status.setter();
      sub_10001C4DC(v276);
      v412(v276, v277);
    }

    v283 = *(v0 + 1576);
    v284 = *(v0 + 1080);
    v285 = *(v0 + 1016);

    v283(v284, v285);
    v286 = MLHostTask.name.getter();
    sub_10001C1E4(v286, v287);

    MLHostResult.status.getter();
    v288 = MLHostResultStatus.rawValue.getter();
    if (v288 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v289 = *(v0 + 1576);
      v290 = *(v0 + 1496);
      v291 = *(v0 + 1120);
      v292 = *(v0 + 1016);
      v419 = [*(v0 + 1464) processIdentifier];
      v427 = 0;
      v428 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v293 = v428;
      *(v0 + 592) = v427;
      *(v0 + 600) = v293;
      v294._countAndFlagsBits = 0x206B736154;
      v294._object = 0xE500000000000000;
      String.append(_:)(v294);
      v295._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v295);

      v296._object = 0x8000000100073090;
      v296._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v296);
      v275(v291, v290, v292);
      _print_unlocked<A, B>(_:_:)();
      v289(v291, v292);
      v297._countAndFlagsBits = 46;
      v297._object = 0xE100000000000000;
      String.append(_:)(v297);
      sub_1000530BC(v419);
    }

LABEL_72:
    (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

    v298 = Logger.logObject.getter();
    v299 = static os_log_type_t.info.getter();

    v300 = os_log_type_enabled(v298, v299);
    v420 = *(v0 + 1608);
    if (v300)
    {
      v380 = *(v0 + 1536);
      v385 = *(v0 + 1528);
      v301 = *(v0 + 1208);
      v372 = *(v0 + 1136);
      v374 = *(v0 + 1456);
      v413 = *(v0 + 776);
      v390 = *(v0 + 720);
      v395 = *(v0 + 760);
      v302 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      v427 = swift_slowAlloc();
      *v302 = 136315650;
      v304 = MLHostTask.name.getter();
      v306 = v305;
      v374(v301, v372);
      v307 = sub_100008A0C(v304, v306, &v427);

      *(v302 + 4) = v307;
      *(v302 + 12) = 2080;
      v308 = Duration.description.getter();
      v310 = sub_100008A0C(v308, v309, &v427);

      *(v302 + 14) = v310;
      *(v302 + 22) = 2112;
      v311 = v380[2];
      *(v302 + 24) = v311;
      *v303 = v311;
      v312 = v311;
      _os_log_impl(&_mh_execute_header, v298, v299, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v302, 0x20u);
      sub_100009C94(v303, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v313 = v420;
      v420(v395, v390);
      v314 = v413;
      v315 = v390;
    }

    else
    {
      v316 = *(v0 + 1456);
      v317 = *(v0 + 1208);
      v318 = *(v0 + 1136);
      v319 = *(v0 + 776);
      v320 = *(v0 + 760);
      v321 = *(v0 + 720);

      swift_unknownObjectRelease();
      v316(v317, v318);
      v313 = v420;
      v420(v320, v321);
      v314 = v319;
      v315 = v321;
    }

    v313(v314, v315);
    v322 = *(v0 + 1464);
    v323 = *(v0 + 912);
    v324 = *(v0 + 904);
    v325 = *(v0 + 896);
    v424 = *(*(v0 + 1536) + 16);
    v326 = v424;

    [v322 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v324 + 8))(v323, v325);
    goto LABEL_76;
  }

  v328 = *(v0 + 1608);
  v329 = *(v0 + 768);
  v330 = *(v0 + 720);
  static Clock<>.continuous.getter();
  *(v0 + 576) = xmmword_100069320;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 1;
  v148 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v328(v329, v330);
  v331 = swift_task_alloc();
  *(v0 + 1640) = v331;
  *v331 = v0;
  v331[1] = sub_100059124;
  v151 = *(v0 + 752);
  v152 = *(v0 + 680);
  v153 = v0 + 504;
LABEL_39:

  return dispatch thunk of Clock.sleep(until:tolerance:)(v151, v153, v152, v148);
}

unint64_t sub_100063B48()
{
  result = qword_100085C68;
  if (!qword_100085C68)
  {
    sub_100009A48(255, &qword_100085C60, BGSystemTaskResult_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C68);
  }

  return result;
}

id sub_100063BB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000098DC(v5, qword_100087610);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100008A0C(a1, a2, &v33);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deregistering task: %s", v8, 0xCu);
    sub_100009914(v9);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100008A0C(a1, a2, &v33);
    _os_log_impl(&_mh_execute_header, v10, v11, "Cancelling task request: %s", v12, 0xCu);
    sub_100009914(v13);
  }

  v14 = objc_opt_self();
  v15 = [v14 sharedScheduler];
  v16 = String._bridgeToObjectiveC()();
  v33 = 0;
  v17 = [v15 cancelTaskRequestWithIdentifier:v16 error:&v33];

  if (v17)
  {
    v18 = v33;
  }

  else
  {
    v19 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Task cancellation failed: %@", v22, 0xCu);
      sub_100009C94(v23, &qword_100085970, &qword_100068F48);
    }

    else
    {
    }
  }

  v25 = [v14 sharedScheduler];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 deregisterTaskWithIdentifier:v26];

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_100008A0C(a1, a2, &v33);
    *(v30 + 12) = 1024;
    *(v30 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Task %s deregistered wtih result: %{BOOL}d", v30, 0x12u);
    sub_100009914(v31);
  }

  return v27;
}

uint64_t sub_10006409C()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064194()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064230(uint64_t a1)
{
  v3 = *(type metadata accessor for MLHostTask() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10002C1B4(a1, v1 + v4, v5);
}

uint64_t sub_1000642CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064330()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006440C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MLHostTask() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v8, v9, v10);
}

uint64_t sub_100064500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006591C;

  return sub_10004A160(a1, v4, v5, v6);
}

uint64_t sub_1000645B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000645F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10006466C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1000646BC()
{
  result = qword_100085D48;
  if (!qword_100085D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D48);
  }

  return result;
}

uint64_t sub_100064720()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000647B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064924(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1000649BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064B38(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100044164(a1, a2, v7, v6);
}

uint64_t sub_100064BEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_1000438F4(a1, a2, v7, v6);
}

uint64_t sub_100064CA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043BC4(a1, a2, v7, v6);
}

uint64_t sub_100064D54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043E94(a1, a2, v7, v6);
}

uint64_t sub_100064E08(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042144(a1, a2, v7, v6);
}

uint64_t sub_100064EBC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042510(a1, a2, v7, v6);
}

uint64_t sub_100064F70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042944(a1, a2, v7, v6);
}

uint64_t sub_100065024(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042C14(a1, a2, v7, v6);
}

uint64_t sub_1000650D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100042EE4(a1, a2, v7, v6);
}

uint64_t sub_10006518C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_1000431B4(a1, a2, v7, v6);
}

uint64_t sub_100065240(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10006591C;

  return sub_100043484(a1, a2, v7, v6);
}

uint64_t sub_1000652F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006591C;

  return sub_100043754(a1, a2);
}

uint64_t sub_100065404(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1000654AC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100065530(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1000655B0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000655F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006591C;

  return sub_10003C270(a1, v4, v5, v7, v6);
}

uint64_t sub_1000656B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100065720()
{
  result = qword_1000860E8;
  if (!qword_1000860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E8);
  }

  return result;
}

unint64_t sub_100065778()
{
  result = qword_1000860F0;
  if (!qword_1000860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F0);
  }

  return result;
}

unint64_t sub_1000657D0()
{
  result = qword_1000860F8;
  if (!qword_1000860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F8);
  }

  return result;
}

unint64_t sub_100065828()
{
  result = qword_100086100;
  if (!qword_100086100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudChannelsGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudChannelsGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100065B08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7104112;
  }

  else
  {
    v3 = 0x74736F686C6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7104112;
  }

  else
  {
    v5 = 0x74736F686C6DLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

Swift::Int sub_100065BA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100065C1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100065C80(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100065CF4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000827B8, *a1);

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

void sub_100065D54(uint64_t *a1@<X8>)
{
  v2 = 7104112;
  if (!*v1)
  {
    v2 = 0x74736F686C6DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100065E4C()
{
  result = qword_100086170;
  if (!qword_100086170)
  {
    sub_100009AD8(&qword_100086178, qword_1000699C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086170);
  }

  return result;
}

unint64_t sub_100065EB4()
{
  result = qword_100086180;
  if (!qword_100086180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086180);
  }

  return result;
}

unint64_t sub_100065F08()
{
  result = qword_100086188;
  if (!qword_100086188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086188);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall RemoteProcessInfo.valueStringArray(forEntitlement:)(Swift::String forEntitlement)
{
  v1 = RemoteProcessInfo.valueStringArray(forEntitlement:)(forEntitlement._countAndFlagsBits, forEntitlement._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}