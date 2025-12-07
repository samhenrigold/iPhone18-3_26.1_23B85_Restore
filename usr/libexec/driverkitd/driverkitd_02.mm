uint64_t sub_10002859C()
{
  v4 = sub_100054590();
  v0._countAndFlagsBits = 10272;
  v0._object = 0xE200000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

char *sub_100028620(char *a1, int a2, uint64_t a3, void *a4, const char *a5, int a6)
{
  v349 = a6;
  v356 = a5;
  v364 = a4;
  v361 = a3;
  v352 = a2;
  v7 = type metadata accessor for OSSignpostID();
  v354 = *(v7 - 8);
  v355 = v7;
  __chkstk_darwin(v7, v8);
  v353 = &v332 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v365 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v332 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v346 = &v332 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  __chkstk_darwin(v341, v18);
  v342 = &v332 - v19;
  v20 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v22 = __chkstk_darwin(v20 - 8, v21);
  v351 = &v332 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v358 = &v332 - v26;
  __chkstk_darwin(v25, v27);
  v347 = &v332 - v28;
  v339 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v30 = __chkstk_darwin(v339, v29);
  v350 = &v332 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v340 = &v332 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v344 = &v332 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v343 = &v332 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v357 = &v332 - v43;
  v45 = __chkstk_darwin(v42, v44);
  *&v360 = &v332 - v46;
  v48 = __chkstk_darwin(v45, v47);
  v338 = &v332 - v49;
  v51 = __chkstk_darwin(v48, v50);
  *&v345 = &v332 - v52;
  __chkstk_darwin(v51, v53);
  v55 = &v332 - v54;
  v56 = *(a1 + 3);
  v57 = *(a1 + 4);
  v367 = a1;
  sub_100003C4C(a1, v56);
  v58 = (*(v57 + 16))(v56, v57);
  v362 = v15;
  v363 = v14;
  v359 = v13;
  if (v59 == 1)
  {
    v366 = v10;
    v60 = static os_log_type_t.default.getter();
    if (qword_100133A90 != -1)
    {
      swift_once();
    }

    v61 = qword_10014E950;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1000F3160;
    object = v367;
    v65 = *(v367 + 3);
    v64 = *(v367 + 4);
    sub_100003C4C(v367, v65);
    v66 = (*(v64 + 24))(v65, v64);
    v68 = v67;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = sub_100003D24();
    v69 = 0x80000001001052A0;
    v70 = 0xD000000000000016;
    if (v68)
    {
      v70 = v66;
      v69 = v68;
    }

    *(v62 + 32) = v70;
    *(v62 + 40) = v69;
    os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v61, "Realize dext %{public}s", 23, 2, v62);

    v71 = v55;
    v72 = v366;
  }

  else
  {
    sub_100041A00(v58, v59);
    object = v367;
    v72 = v10;
    v71 = v55;
  }

  v73 = v368;
  v74 = sub_1000DDB58(object);
  if (!v74)
  {
    *&v379 = 0;
    *(&v379 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    *&v379 = 0xD00000000000002ALL;
    *(&v379 + 1) = 0x80000001001050A0;
    v83 = *(object + 3);
    v84 = *(object + 4);
    sub_100003C4C(object, v83);
    object = v359;
    (*(v84 + 64))(v83, v84);
    sub_1000305F4(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v85);

    (*(v365 + 8))(object, v72);
    v86._countAndFlagsBits = 46;
    v86._object = 0xE100000000000000;
    String.append(_:)(v86);
    v87 = v379;
    sub_10001449C();
    swift_allocError();
    *v88 = v87;
    v89 = *&v382[0];
    v91 = v380;
    v90 = v381;
    *(v88 + 16) = v379;
    *(v88 + 32) = v91;
    *(v88 + 48) = v90;
    *(v88 + 64) = v89;
    *(v88 + 72) = 9;
    swift_willThrow();
    return object;
  }

  v75 = OBJC_IVAR____TtC10driverkitd11OSExtension_originURL;
  v76 = v74;
  swift_beginAccess();
  v370 = v76;
  sub_100041A14(v364, v76 + v75);
  swift_endAccess();
  v77 = *(object + 3);
  v78 = *(object + 4);
  sub_100003C4C(object, v77);
  v79 = (*(v78 + 16))(v77, v78);
  if (v80 == 1)
  {
    v81 = 23;
    v82 = 22;
  }

  else
  {
    sub_100041A00(v79, v80);
    v81 = 21;
    v82 = 20;
  }

  v92 = v369;
  v93 = v369[v82];
  v364 = v369[v81];

  LODWORD(v94) = *(v92 + 162);
  if ((v94 & 0x100) != 0)
  {
    v337 = v93;
    v336 = 0;
    v392 = 0;
    v391 = 0u;
    v390 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    v96 = v362;
    goto LABEL_17;
  }

  v95 = sub_10002AF70(object);
  if (v73)
  {

    return object;
  }

  v337 = v93;
  v119 = v95;
  if (v349)
  {
    sub_100003C4C(v92 + 2, v92[5]);
    sub_1000E0970(&v375);
    sub_100003C4C(&v375, *(&v376 + 1));
    sub_1000CD72C(v370, v119, 0, 0, 0, &v379);
    v390 = v379;
    v391 = v380;
    v392 = v381;
    sub_100003C90(&v375);
    v174 = v337;
  }

  else
  {
    v348 = v71;
    sub_100003C4C(v92 + 2, v92[5]);
    sub_1000E0970(&v379);
    sub_100003C4C(&v379, *(&v380 + 1));
    v128 = v337;
    sub_10002B24C(&v375, v370, v119, v337, v364);
    v390 = v375;
    v391 = v376;
    v392 = v377;
    sub_100003C90(&v379);
    v73 = 0;
    v174 = v128;
    v71 = v348;
  }

  sub_100003C4C(v92 + 2, v92[5]);
  sub_1000E0970(&v379);
  v336 = sub_1000CF1E4(v370, v174, v364);
  sub_100003C90(&v379);
  v175 = sub_1000D7374();
  v177 = v176;
  v178 = v92[85];
  if (!*(v178 + 16))
  {

LABEL_58:
    *&v381 = 0;
    v379 = 0u;
    v380 = 0u;
    goto LABEL_59;
  }

  v179 = v175;

  v180 = sub_100061588(v179, v177);
  v182 = v181;

  if ((v182 & 1) == 0)
  {

    v92 = v369;
    object = v367;
    goto LABEL_58;
  }

  v183 = *(*(v178 + 56) + 8 * v180);

  __chkstk_darwin(v184, v185);
  sub_10002B8F0(sub_100041BCC, v183, &v379);

  v92 = v369;
  object = v367;
LABEL_59:
  v96 = v362;
  v387 = v379;
  v388 = v380;
  v389 = v381;
LABEL_17:
  v333 = *(v96 + 56);
  v334 = v96 + 56;
  v333(v71, 1, 1, v363);
  v97 = v370;
  v349 = sub_10002B9A8(v370, v361);
  v98 = v97[2];
  if (qword_100133A58 != -1)
  {
    swift_once();
  }

  cache = v98->cache;
  v348 = v71;
  v366 = v72;
  if (cache && (v100 = sub_100061588(qword_10014E8D0, *algn_10014E8D8), (v101 & 1) != 0))
  {
    sub_10000B430(v98[1].cache + 32 * v100, &v379);
    sub_10000A184(&v379, &qword_1001343C8, &unk_1000F3CA0);
    sub_100003C4C(v92 + 2, v92[5]);
    sub_1000DF9D4(&v379);
    v102 = sub_1000C6D74(object, &v379);
    sub_100003C90(&v379);
    if (!v102)
    {
      *&v379 = 0;
      *(&v379 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v379 = 0x6261747563657845;
      *(&v379 + 1) = 0xEF20726F6620656CLL;
      v103._countAndFlagsBits = sub_1000D77B8();
      String.append(_:)(v103);

      v104._countAndFlagsBits = 0x756F6620746F6E20;
      v104._object = 0xEA0000000000646ELL;
      String.append(_:)(v104);
      v105 = v379;
      sub_10001449C();
      v106 = swift_allocError();
      *v107 = v105;
      v108 = *&v382[0];
      v110 = v380;
      v109 = v381;
      *(v107 + 16) = v379;
      *(v107 + 32) = v110;
      *(v107 + 48) = v109;
      *(v107 + 64) = v108;
      *(v107 + 72) = 10;
      swift_willThrow();
      goto LABEL_45;
    }
  }

  else
  {
    v379 = 0u;
    v380 = 0u;
    sub_10000A184(&v379, &qword_1001343C8, &unk_1000F3CA0);
  }

  v111 = v92[24];
  sub_100003C4C(v92 + 2, v92[5]);
  sub_1000DF9D4(&v379);
  v112 = *(object + 3);
  v113 = *(object + 4);
  sub_100003C4C(object, v112);
  v114 = (*(v113 + 56))(v112, v113);
  if (!v115)
  {
    sub_100003C90(&v379);
    *&v345 = 0;
    v117 = v366;
    goto LABEL_60;
  }

  object = v114;
  v116 = v115;
  v335 = v94;
  if (v111 == 5)
  {
    v94 = v115;
    v71 = v348;
    v117 = v366;
    v118 = v369;
  }

  else
  {
    v368 = v73;
    sub_100014968(v111);
    v120 = sub_10008050C(v111);
    v122 = v121;
    *&v375 = object;
    *(&v375 + 1) = v116;

    v123._countAndFlagsBits = v120;
    v123._object = v122;
    String.append(_:)(v123);

    v94 = *(&v375 + 1);
    v124 = v375;
    v125 = *(&v380 + 1);
    v126 = v381;
    sub_100003C4C(&v379, *(&v380 + 1));
    v127 = (*(v126 + 136))(v124, v94, 0, v125, v126);
    sub_100041BBC(v111);

    if (v127)
    {
      object = v124;
    }

    else
    {
      v94 = v116;
    }

    v71 = v348;
    v117 = v366;
    v73 = v368;
    v118 = v369;
  }

  sub_100003C90(&v379);
  sub_100003C4C(v118 + 2, v118[5]);
  sub_1000DF9D4(&v371);
  v129 = *(&v372 + 1);
  v130 = v373;
  sub_100003C4C(&v371, *(&v372 + 1));
  (*(v130 + 112))(&v384, object, v94, 1, v129, v130);
  if (*(&v385 + 1))
  {

    sub_100009F34(&v384, &v375);
    sub_100003C90(&v371);
    v131 = *(v367 + 3);
    v132 = *(v367 + 4);
    sub_100003C4C(v367, v131);
    v133 = (*(v132 + 16))(v131, v132);
    if (v134 == 1)
    {
      v135 = sub_100003C4C(&v375, *(&v376 + 1));
      LODWORD(v379) = 0;
      LODWORD(v371) = 0;
      v136 = v337;
      v137 = v364;
      v138 = String.utf8CString.getter();

      macho_cpu_type_for_arch_name((v138 + 32), &v379, &v371);

      object = v345;
      sub_10002BE38(v136, v137, *v135, v135[1], v345);
      v106 = v73;
      LODWORD(v94) = v335;
      if (v73)
      {

        sub_100003C90(&v375);
        v71 = v348;
        goto LABEL_45;
      }

      v158 = v348;
LABEL_44:
      sub_100041B54(object, v158, &qword_100134FB0, &qword_1000F4E60);
      v73 = 0;
      v159 = sub_100003C4C(&v375, *(&v376 + 1));
      *&v345 = sub_1000D2424(*v159, v159[1]);
      sub_100003C90(&v375);
      goto LABEL_60;
    }

    sub_100041A00(v133, v134);
    v149 = sub_100003C4C(&v375, *(&v376 + 1));
    v150 = v369[20];
    v151 = v369[21];
    LODWORD(v379) = 0;
    LODWORD(v371) = 0;
    object = String.utf8CString.getter();
    macho_cpu_type_for_arch_name(object + 32, &v379, &v371);

    v152 = v73;
    v153 = sub_1000D39A0(v150, v151, v379 | (v371 << 32), *v149, v149[1]);
    v106 = v73;
    v155 = v363;
    LODWORD(v94) = v335;
    if (v152)
    {
      sub_100003C90(&v375);
    }

    else
    {
      v156 = v153;
      v157 = v154;
      v308 = sub_1000CFD80(v153, v154);
      sub_1000128D8(v156, v157);
      if ((v308 & 0x100000000) != 0 || !v308)
      {
        v322 = sub_100003C4C(&v375, *(&v376 + 1));
        LODWORD(v379) = 0;
        LODWORD(v371) = 0;
        v323 = v337;
        v324 = v364;
        v325 = String.utf8CString.getter();

        macho_cpu_type_for_arch_name((v325 + 32), &v379, &v371);

        v94 = v155;
        v326 = v379;
        v327 = v371;
        v328 = *v322;
        v368 = v322[1];
        v329 = swift_allocBox();
        *&v345 = v330;
        v333(v330, 1, 1, v94);

        sub_1000D212C(v323, v324, v326 | (v327 << 32), sub_100041B34, v329, v328, v368);

        v331 = v345;
        swift_beginAccess();
        object = v338;
        sub_100014894(v331, v338, &qword_100134FB0, &qword_1000F4E60);

        v158 = v348;
        v117 = v366;
        LOBYTE(v94) = v335;
        goto LABEL_44;
      }

      *&v379 = 0;
      *(&v379 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v309._countAndFlagsBits = 0xD000000000000036;
      v309._object = 0x8000000100105240;
      String.append(_:)(v309);
      LODWORD(v371) = v308;
      v310._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v310._object;
      String.append(_:)(v310);

      v311._countAndFlagsBits = 0xD000000000000015;
      v311._object = 0x8000000100105280;
      String.append(_:)(v311);
      LODWORD(v371) = 0;
      v312._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v312);

      v313 = v379;
      sub_10001449C();
      v106 = swift_allocError();
      *v314 = v313;
      v315 = *&v382[0];
      v317 = v380;
      v316 = v381;
      *(v314 + 16) = v379;
      *(v314 + 32) = v317;
      *(v314 + 48) = v316;
      *(v314 + 64) = v315;
      *(v314 + 72) = 16;
      swift_willThrow();
      sub_100003C90(&v375);
    }
  }

  else
  {
    sub_10000A184(&v384, &qword_1001350F0, &qword_1000F89E0);
    sub_100003C90(&v371);
    *&v379 = 0;
    *(&v379 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v139._object = 0x8000000100105170;
    v139._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v139);
    v140._countAndFlagsBits = object;
    v140._object = v94;
    String.append(_:)(v140);

    v141._countAndFlagsBits = 0xD000000000000017;
    v141._object = 0x8000000100105190;
    String.append(_:)(v141);
    v142._countAndFlagsBits = sub_1000D77B8();
    String.append(_:)(v142);

    v143._countAndFlagsBits = 46;
    v143._object = 0xE100000000000000;
    String.append(_:)(v143);
    v144 = v379;
    sub_10001449C();
    v106 = swift_allocError();
    *v145 = v144;
    v146 = *&v382[0];
    v148 = v380;
    v147 = v381;
    *(v145 + 16) = v379;
    *(v145 + 32) = v148;
    *(v145 + 48) = v147;
    *(v145 + 64) = v146;
    *(v145 + 72) = 10;
    swift_willThrow();
    LODWORD(v94) = v335;
  }

LABEL_45:
  *&v384 = v106;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {

LABEL_51:

    swift_willThrow();

    sub_10000A184(&v387, &qword_100135090, &qword_1000F4F58);
    sub_10000A184(v71, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(&v390, &unk_100137390, &unk_1000F4E70);
    return object;
  }

  *(v378 + 9) = *(v382 + 9);
  v375 = v379;
  v376 = v380;
  v377 = v381;
  v378[0] = v382[0];
  if (BYTE8(v382[1]) != 10)
  {
    sub_10001465C(&v375);

    goto LABEL_51;
  }

  v335 = v94;
  v368 = 0;
  v160 = v375;

  if ((v349 & 1) == 0)
  {

    sub_10001449C();
    swift_allocError();
    *v170 = v160;
    v171 = v374;
    v172 = v373;
    v173 = v372;
    *(v170 + 16) = v371;
    *(v170 + 32) = v173;
    *(v170 + 48) = v172;
    *(v170 + 64) = v171;
    *(v170 + 72) = 10;
    swift_willThrow();

    sub_10000A184(&v387, &qword_100135090, &qword_1000F4F58);

    sub_10000A184(v348, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(&v390, &unk_100137390, &unk_1000F4E70);
    return object;
  }

  v161 = static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v162 = swift_allocObject();
  v345 = xmmword_1000F3160;
  *(v162 + 16) = xmmword_1000F3160;
  *(v162 + 56) = &type metadata for String;
  v163 = sub_100003D24();
  *(v162 + 64) = v163;
  *(v162 + 32) = v160;
  sub_10001491C();
  v164 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v161, &_mh_execute_header, v164, "Encountered errors while reading executables: %{public}s", 56, 2, v162);

  v165 = static os_log_type_t.info.getter();
  v166 = swift_allocObject();
  *(v166 + 16) = v345;
  v167 = sub_1000D77B8();
  *(v166 + 56) = &type metadata for String;
  *(v166 + 64) = v163;
  *(v166 + 32) = v167;
  *(v166 + 40) = v168;
  v169 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v165, &_mh_execute_header, v169, "realizedInfo for (%{public}s) may not contain info on uuid or bundleArch", 72, 2, v166);

  *&v345 = 0;
  v117 = v366;
  v73 = v368;
  LOBYTE(v94) = v335;
LABEL_60:
  v186 = v369;
  v187 = v356;
  if ((v94 & 0xC0) != 0)
  {
    v188 = sub_1000D7374();
    v190 = v189;
    swift_beginAccess();
    v191 = v186[89];
    if (*(v191 + 16))
    {

      v192 = sub_100061588(v188, v190);
      v194 = v193;

      if (v194)
      {
        v195 = *(*(v191 + 56) + 8 * v192);

        goto LABEL_66;
      }
    }
  }

  v195 = 0;
LABEL_66:
  v196 = *(v365 + 48);
  v197 = v196(v187, 1, v117);
  v339 = v195;
  if (v197 == 1)
  {
    LODWORD(v356) = 1;
    v368 = v73;
    v198 = 0;
  }

  else
  {
    v199 = v369[16];
    v200 = v347;
    sub_100014894(v187, v347, &unk_1001389D0, &qword_1000F4F60);
    result = v196(v200, 1, v117);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v202 = URL.path.getter();
    v204 = v203;
    (*(v365 + 8))(v200, v117);
    v205 = *(v199 + 16);
    if (v205)
    {
      v198 = 0;
      v206 = (v199 + 40);
      while (1)
      {
        v207 = *(v206 - 1) == v202 && *v206 == v204;
        if (v207 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v198;
        v206 += 2;
        if (v205 == v198)
        {
          goto LABEL_77;
        }
      }

      v368 = v73;
      LODWORD(v356) = 0;
    }

    else
    {
LABEL_77:
      v368 = v73;
      v198 = 0;
      LODWORD(v356) = 1;
    }
  }

  sub_100014894(&v390, &v375, &unk_100137390, &unk_1000F4E70);
  sub_100014894(&v387, &v371, &qword_100135090, &qword_1000F4F58);
  sub_100014894(v361, v358, &unk_1001389D0, &qword_1000F4F60);
  v208 = v360;
  sub_100014894(v348, v360, &qword_100134FB0, &qword_1000F4E60);
  memcpy(v393, v369 + 7, 0x255uLL);
  sub_100014894(&v375, &v384, &unk_100137390, &unk_1000F4E70);
  sub_100014894(&v371, v383, &qword_100135090, &qword_1000F4F58);
  v209 = v357;
  sub_100014894(v208, v357, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo.LoadInfo();
  v210 = swift_allocObject();
  *(v210 + 32) = v339;
  *(v210 + 16) = 0;
  *(v210 + 24) = 1025;
  v211 = v393[74];
  v212 = v370;

  if (v211 < 0)
  {
    sub_100041A84(v393, &v379);

    sub_100041A84(v393, &v379);
    v213 = sub_1000264A8();
    if (v214)
    {
      goto LABEL_82;
    }

    v294 = v213;
    v295 = v210;
    v296 = v212;
    v297 = sub_1000D76D4();
    v298 = v343;
    sub_100014894(v209, v343, &qword_100134FB0, &qword_1000F4E60);
    v299 = v344;
    v364 = v295;
    sub_1000263E0(v344);
    if (v294 != v297)
    {

      sub_100041AE0(v393);
      sub_10000A184(v299, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v298, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v209, &qword_100134FB0, &qword_1000F4E60);
      v215 = 3;
      v212 = v296;
      goto LABEL_161;
    }

    v300 = *(v341 + 48);
    v301 = v299;
    v302 = v342;
    sub_100014894(v301, v342, &qword_100134FB0, &qword_1000F4E60);
    sub_100014894(v298, v302 + v300, &qword_100134FB0, &qword_1000F4E60);
    v303 = v363;
    v304 = *(v362 + 48);
    if (v304(v302, 1, v363) == 1)
    {
      v305 = v370;

      sub_100041AE0(v393);
      sub_10000A184(v344, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v298, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v357, &qword_100134FB0, &qword_1000F4E60);
      v306 = v302 + v300;
      v212 = v305;
      if (v304(v306, 1, v303) == 1)
      {
        sub_10000A184(v302, &qword_100134FB0, &qword_1000F4E60);
        v215 = 0;
LABEL_161:
        v210 = v364;
        goto LABEL_83;
      }
    }

    else
    {
      v307 = v340;
      sub_100014894(v302, v340, &qword_100134FB0, &qword_1000F4E60);
      if (v304(v302 + v300, 1, v303) != 1)
      {
        v318 = v362;
        v319 = v346;
        (*(v362 + 32))(v346, v302 + v300, v303);
        sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v361) = dispatch thunk of static Equatable.== infix(_:_:)();
        v320 = v370;

        sub_100041AE0(v393);
        v321 = *(v318 + 8);
        v321(v319, v303);
        sub_10000A184(v344, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v343, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v357, &qword_100134FB0, &qword_1000F4E60);
        v321(v340, v303);
        v212 = v320;
        sub_10000A184(v302, &qword_100134FB0, &qword_1000F4E60);
        v210 = v364;
        if (v361)
        {
          v215 = 0;
          goto LABEL_83;
        }

        goto LABEL_165;
      }

      v212 = v370;

      sub_100041AE0(v393);
      sub_10000A184(v344, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v343, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v357, &qword_100134FB0, &qword_1000F4E60);
      (*(v362 + 8))(v307, v303);
    }

    sub_10000A184(v302, &qword_100134FB8, &qword_1000F4E68);
    v210 = v364;
LABEL_165:
    v215 = 2;
    goto LABEL_83;
  }

  sub_100041A84(v393, &v379);

  sub_100041A84(v393, &v379);
LABEL_82:
  sub_10000A184(v209, &qword_100134FB0, &qword_1000F4E60);

  sub_100041AE0(v393);
  v215 = 4;
LABEL_83:
  *(v210 + 25) = v215;
  v216 = v358;
  v217 = v351;
  sub_100014894(v358, v351, &unk_1001389D0, &qword_1000F4F60);
  v218 = v350;
  sub_100014894(v360, v350, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo(0);
  object = swift_allocObject();
  *(object + 2) = 0;
  *(object + 6) = 0u;
  *(object + 7) = 0u;
  *(object + 5) = 0u;
  *&object[OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors] = _swiftEmptyArrayStorage;
  *(object + 3) = v212;
  *(object + 8) = v386;
  v219 = v385;
  *(object + 2) = v384;
  *(object + 3) = v219;
  object[72] = v336;
  swift_beginAccess();

  sub_100041B54(v383, (object + 80), &qword_100135090, &qword_1000F4F58);
  swift_endAccess();
  *(object + 15) = v210;

  sub_100020D24(v217, &object[OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL], &unk_1001389D0, &qword_1000F4F60);
  v220 = &object[OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex];
  *v220 = v198;
  v220[8] = v356;
  sub_100020D24(v218, &object[OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid], &qword_100134FB0, &qword_1000F4E60);
  *&object[OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches] = v345;
  *(object + 2) = 0;
  v221 = *v212;
  v361 = (v212 + 3);
  v222 = 13;
  if (v221 == _TtC10driverkitd15DriverExtension)
  {
    v222 = 15;
  }

  v223 = v393[v222];
  v224 = 14;
  if (v221 == _TtC10driverkitd15DriverExtension)
  {
    v224 = 16;
  }

  v225 = v212;
  v226 = v393[v224];

  v227 = sub_100023AFC(v223, v226, 0);

  sub_100014894(v216, v217, &unk_1001389D0, &qword_1000F4F60);
  v228 = sub_10003FE2C(v225, v227, v217, v349 & 1, v393);
  sub_10000A184(v360, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v216, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(&v371, &qword_100135090, &qword_1000F4F58);
  sub_10000A184(&v375, &unk_100137390, &unk_1000F4E70);
  *(object + 2) = v228;

  *&v384 = object;
  v229 = v369 + 83;
  v358 = 0x8000000100104280;

  v230 = 0;
  v360 = xmmword_1000F3C80;
  v356 = "OSKextExcludeList";
  v357 = "com.apple.message.bundlePath";
  v351 = "OSKextSigExceptionHashList";
  do
  {
    v231 = *(&off_100126518 + v230 + 32);
    swift_beginAccess();
    v232 = *v229;
    if (!*(*v229 + 16) || (v233 = sub_100061E08(v231), (v234 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_89;
    }

    v235 = *(v232 + 56) + 24 * v233;
    v236 = *(v235 + 8);
    v237 = *v235;
    swift_endAccess();

    v238 = sub_100021C70(object, v237, v236);

    if ((v238 & 1) == 0)
    {
      goto LABEL_89;
    }

    LODWORD(v364) = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v239 = swift_allocObject();
    v240 = v370;
    *(v239 + 16) = v360;
    v241 = *v240;
    v242 = 4144959;
    if (*v240 == _TtC10driverkitd15DriverExtension)
    {
      v242 = 1954047300;
    }

    v243 = v241 == _TtC10driverkitd15DriverExtension || v241 == _TtC10driverkitd15KernelExtension;
    v244 = 0xE300000000000000;
    if (v243)
    {
      v244 = 0xE400000000000000;
    }

    if (v241 == _TtC10driverkitd15KernelExtension)
    {
      v242 = 1954047307;
    }

    *&v375 = v242;
    *(&v375 + 1) = v244;
    v245._countAndFlagsBits = 32;
    v245._object = 0xE100000000000000;
    String.append(_:)(v245);
    v246 = v240[2];
    if (qword_100133A50 == -1)
    {
      if (!v246->cache)
      {
        goto LABEL_108;
      }
    }

    else
    {
      swift_once();
      if (!v246->cache)
      {
        goto LABEL_108;
      }
    }

    v247 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v248)
    {
      sub_10000B430(v246[1].cache + 32 * v247, &v379);
      if (swift_dynamicCast())
      {
        v250 = *(&v371 + 1);
        v249 = v371;
        goto LABEL_109;
      }
    }

LABEL_108:
    v249 = 0xD000000000000014;
    v250 = v358;
LABEL_109:
    v251 = v250;
    String.append(_:)(*&v249);

    v252._countAndFlagsBits = 30240;
    v252._object = 0xE200000000000000;
    String.append(_:)(v252);
    v253 = v370[2];
    if (qword_100133A70 == -1)
    {
      if (!v253->cache)
      {
        goto LABEL_115;
      }
    }

    else
    {
      swift_once();
      if (!v253->cache)
      {
        goto LABEL_115;
      }
    }

    v254 = sub_100061588(qword_10014E900, *algn_10014E908);
    if ((v255 & 1) == 0 || (sub_10000B430(v253[1].cache + 32 * v254, &v379), !swift_dynamicCast()))
    {
LABEL_115:
      v257 = 0xE500000000000000;
      v256 = 0x293F3F3F28;
      goto LABEL_116;
    }

    v257 = *(&v371 + 1);
    v256 = v371;
LABEL_116:
    v258 = v257;
    String.append(_:)(*&v256);

    v259._countAndFlagsBits = 544106784;
    v259._object = 0xE400000000000000;
    String.append(_:)(v259);
    v260._countAndFlagsBits = sub_1000DAD64();
    String.append(_:)(v260);

    v261 = v375;
    *(v239 + 56) = &type metadata for String;
    v262 = sub_100003D24();
    *(v239 + 64) = v262;
    *(v239 + 32) = v261;
    v263 = 0xD00000000000001ALL;
    if (v231)
    {
      if (v231 == 1)
      {
        v264 = v356;
      }

      else
      {
        v263 = 0xD00000000000001DLL;
        v264 = v351;
      }
    }

    else
    {
      v263 = 0xD000000000000011;
      v264 = v357;
    }

    *(v239 + 96) = &type metadata for String;
    *(v239 + 104) = v262;
    *(v239 + 72) = v263;
    *(v239 + 80) = v264 | 0x8000000000000000;
    sub_10001491C();
    v265 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v364, &_mh_execute_header, v265, "%{public}s matches %{public}s.", 30, 2, v239);

    v266 = *(object + 2);
    if (v231)
    {
      if (v231 == 1)
      {
        if ((v266 & 0x800) != 0)
        {
          goto LABEL_89;
        }

        v267 = v266 | 0x800;
      }

      else
      {
        if ((v266 & 0x1000) != 0)
        {
          goto LABEL_89;
        }

        v267 = v266 | 0x1000;
      }
    }

    else
    {
      if ((v266 & 0x400) != 0)
      {
        goto LABEL_89;
      }

      v267 = v266 | 0x400;
    }

    *(object + 2) = v267;
LABEL_89:
    ++v230;
  }

  while (v230 != 3);
  v268 = v369;
  sub_10007B670(&v384);
  sub_10007BCC0(&v384);
  sub_10007C5D8(&v384);
  if ((v352 & 1) == 0)
  {
    sub_100003C4C(v268 + 2, v268[5]);
    sub_1000E05F8(&v379);
    v269 = *(v367 + 3);
    v270 = *(v367 + 4);
    sub_100003C4C(v367, v269);
    v271 = v359;
    (*(v270 + 64))(v269, v270);
    URL.path.getter();

    (*(v365 + 8))(v271, v366);
    sub_100003C90(&v379);
  }

  v272 = *(object + 2);
  if ((v272 & 0x4000) == 0)
  {
    *(object + 2) = v272 | 0x4000;
  }

  sub_10007CA90(&v384);
  LODWORD(v369) = static os_signpost_type_t.event.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  v367 = qword_10014E978;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v273 = swift_allocObject();
  *(v273 + 16) = xmmword_1000F4980;
  v274 = sub_1000D77B8();
  v276 = v275;
  *(v273 + 56) = &type metadata for String;
  v277 = sub_100003D24();
  *(v273 + 64) = v277;
  *(v273 + 32) = v274;
  *(v273 + 40) = v276;
  v279 = v362;
  v278 = v363;
  v280 = v348;
  if ((*(v362 + 48))(v348, 1, v363))
  {
    v281 = (v273 + 72);
    *(v273 + 96) = &type metadata for String;
    *(v273 + 104) = v277;
    goto LABEL_138;
  }

  v283 = v346;
  (*(v279 + 16))(v346, v280, v278);
  v284 = UUID.uuidString.getter();
  v282 = v285;
  (*(v279 + 8))(v283, v278);
  v281 = (v273 + 72);
  *(v273 + 96) = &type metadata for String;
  *(v273 + 104) = v277;
  if (v282)
  {
    *v281 = v284;
    v280 = v348;
  }

  else
  {
    v280 = v348;
LABEL_138:
    *v281 = 0x296C696E28;
    v282 = 0xE500000000000000;
  }

  *(v273 + 80) = v282;
  v286 = *(object + 2);
  v287 = 28265;
  if (v286)
  {
    v288 = 0;
  }

  else
  {
    v288 = 28265;
  }

  if (v286)
  {
    v289 = 0xE000000000000000;
  }

  else
  {
    v289 = 0xE200000000000000;
  }

  *(v273 + 136) = &type metadata for String;
  *(v273 + 144) = v277;
  *(v273 + 112) = v288;
  *(v273 + 120) = v289;
  if ((v286 & 0x10) != 0)
  {
    v287 = 0;
    v290 = 0xE000000000000000;
  }

  else
  {
    v290 = 0xE200000000000000;
  }

  *(v273 + 176) = &type metadata for String;
  *(v273 + 184) = v277;
  *(v273 + 152) = v287;
  *(v273 + 160) = v290;
  v207 = (v286 & 0x100) == 0;
  v291 = 28277;
  if (v207)
  {
    v292 = 0xE200000000000000;
  }

  else
  {
    v291 = 0;
    v292 = 0xE000000000000000;
  }

  *(v273 + 216) = &type metadata for String;
  *(v273 + 224) = v277;
  *(v273 + 192) = v291;
  *(v273 + 200) = v292;
  v293 = v353;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v369, &_mh_execute_header, v367, "ExtensionRealizing", 18, 2, v293, "%{public}s, uuid %{public}s %{public}svalid %{public}sauthentic %{public}sapproved", 82, 2, v273);

  (*(v354 + 8))(v293, v355);
  sub_10000A184(&v387, &qword_100135090, &qword_1000F4F58);

  sub_10000A184(v280, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(&v390, &unk_100137390, &unk_1000F4E70);
  return object;
}

uint64_t sub_10002AF70(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 648) & 1) == 0)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_100003C4C(a1, v10);
    v12 = (*(v11 + 16))(v10, v11);
    if (v13 != 1)
    {
      sub_100041A00(v12, v13);
      return 0;
    }

    v14 = a1[3];
    v15 = a1[4];
    sub_100003C4C(a1, v14);
    (*(v15 + 64))(v14, v15);
    v16 = URL.path.getter();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    sub_100003C4C((v1 + 16), *(v1 + 40));
    sub_1000E07B4(v29);
    sub_100003C4C(v29, v30);
    v19 = sub_10007A718();
    sub_100003C90(v29);
    if (v19)
    {
LABEL_4:

      return 0;
    }

    sub_100003C4C((v3 + 16), *(v3 + 40));
    sub_1000DF9D4(v29);
    v21 = v30;
    v22 = v31;
    sub_100003C4C(v29, v30);
    v23 = (*(v22 + 232))(v16, v18, v21, v22);
    if (v2)
    {

      return sub_100003C90(v29);
    }

    v24 = v23;
    sub_100003C90(v29);
    if ((v24 & 1) == 0)
    {
      goto LABEL_4;
    }

    v25 = static os_log_type_t.default.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000F3160;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100003D24();
    *(v26 + 32) = v16;
    *(v26 + 40) = v18;
    sub_10001491C();
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v27, "Will skip code sign validation of dext in the ARV at %{public}s", 63, 2, v26);
  }

  return 2;
}

uint64_t sub_10002B24C(uint64_t a1, __objc2_class **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 3)
  {
    sub_10001449C();
    swift_allocError();
    *v7 = 0xD000000000000041;
    *(v7 + 8) = 0x80000001001055C0;
    v8 = *&v43[0];
    v9 = v42;
    v10 = v41;
    *(v7 + 16) = v40;
    *(v7 + 32) = v10;
    *(v7 + 48) = v9;
    *(v7 + 64) = v8;
    *(v7 + 72) = 9;
    swift_willThrow();
    return v6;
  }

  v47 = a2;
  sub_1000CD72C(a2, a3, 0, 0, 0, &v40);
  v6 = v5 == 0;
  if (!v5)
  {
    v22 = v41;
    *a1 = v40;
    *(a1 + 16) = v22;
    *(a1 + 32) = v42;
    return v6;
  }

  v44 = v5;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v6;
  }

  *&v46[9] = *(v43 + 9);
  v45[2] = v42;
  *v46 = v43[0];
  v45[0] = v40;
  v45[1] = v41;
  if (BYTE8(v43[1]) != 45)
  {
    sub_10001465C(v45);
    goto LABEL_9;
  }

  v33 = static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F3C80;
  v13 = sub_1000D77B8();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100003D24();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;

  v17 = sub_1000AA704();
  v19 = v18;
  sub_10001465C(v45);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v19;
  v20 = sub_10001491C();
  v21 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v21, "Unable to determine signature for %{public}s, generating adhoc signature... (%{public}s)", 88, 2, v12, 2, 4);

  sub_1000CD72C(v47, 3, a4, a5, 0, &v37);
  v47 = v20;
  v23 = v38;
  *a1 = v37;
  *(a1 + 16) = v23;
  *(a1 + 32) = v39;
  v36 = static os_log_type_t.info.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000F3160;
  result = sub_100014894(a1, &v37, &unk_100137390, &unk_1000F4E70);
  if (*(&v38 + 1))
  {

    sub_10001465C(v45);
    v26 = sub_100003C4C(&v37, *(&v38 + 1));
    v27 = *(*v26 + 40);
    v28 = *(*v26 + 48);
    sub_1000146C4(v27, v28);
    sub_10005BD44(v27, v28);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;
    sub_1000128D8(v27, v28);

    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v16;
    *(v24 + 32) = v29;
    *(v24 + 40) = v31;
    sub_100003C90(&v37);
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v32, "Adhoc cdhash: %{public}s", 24, 2, v24);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B72C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100003C4C(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  sub_100014894(a2, v16, &unk_100137390, &unk_1000F4E70);
  if (v17)
  {
    v8 = sub_100003C4C(v16, v17);
    v9 = *(*v8 + 40);
    v10 = *(*v8 + 48);
    sub_1000146C4(v9, v10);
    sub_10005BD44(v9, v10);
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_100018594();
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;
    sub_1000128D8(v9, v10);

    sub_100003C90(v16);
    if (v7)
    {
      if (v13)
      {
        if (v5 == v11 && v7 == v13)
        {

          v14 = 1;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (v13)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000A184(v16, &unk_100137390, &unk_1000F4E70);
    if (v7)
    {
LABEL_8:
      v14 = 0;
LABEL_13:

      return v14 & 1;
    }
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t (*sub_10002B8F0@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_10000A990(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100003C90(v9);
      }

      if (v8)
      {
        return sub_100009F34(v9, a3);
      }

      result = sub_100003C90(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002B9A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v37[-1] - v7;
  sub_100014894(a2, &v37[-1] - v7, &unk_1001389D0, &qword_1000F4F60);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000A184(v8, &unk_1001389D0, &qword_1000F4F60);
    v11 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000F3160;
    v13 = sub_1000D77B8();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100003D24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_10001491C();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v16, "No unstagedURL found for %{public}s, cannot determine if absent executables are okay", 84, 2, v12);
LABEL_3:

    goto LABEL_5;
  }

  v17 = URL.path.getter();
  v19 = v18;
  (*(v10 + 8))(v8, v9);
  sub_100003C4C((v3 + 16), *(v3 + 40));
  sub_1000DF9D4(v37);
  v20 = v38;
  v21 = v39;
  sub_100003C4C(v37, v38);
  v22 = (*(v21 + 152))(v17, v19, v20, v21);
  v26 = v25;
  v27 = v22;

  if (!v26)
  {
    sub_100003C90(v37);
    v31 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F3160;
    v33 = sub_1000D77B8();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100003D24();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    sub_10001491C();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v16, "Could not get unstaged real path for %{public}s, cannot determine if absent executables are okay", 96, 2, v32);
    goto LABEL_3;
  }

  sub_100003C90(v37);
  v28 = *(v3 + 652);
  if (v28 != 2 && (v28 & 1) == 0 && (*(v3 + 648) & 0x80000) == 0)
  {
    sub_1000D7374();
    v29._countAndFlagsBits = 0x6C7070612E6D6F63;
    v29._object = 0xE900000000000065;
    v30 = String.hasPrefix(_:)(v29);

    if (v30)
    {
      v23 = sub_100069024(0xD00000000000001ALL, 0x80000001001053B0, v27, v26);

      return v23 & 1;
    }
  }

LABEL_5:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_10002BE38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_100003CDC(&qword_100135100, &qword_1000F4FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v12 = *"x86_64";
  v11 = 0xE600000000000000;

  v41 = a2;
  v36 = a5;
  v37 = a1;
  if (!a2 || (*"x86_64" == a1 ? (v13 = a2 == 0xE600000000000000) : (v13 = 0), !v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v14 = _swiftEmptyArrayStorage;

    *type = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000635A4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v14 = *type;
    }

    a1 = v14[2];
    v15 = v14[3];
    a2 = a1 + 1;
    if (a1 >= v15 >> 1)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = sub_100030D88(v14);

    *type = inited;
    sub_100030A9C(v11);
    v17 = *type;
    v42 = *(*type + 16);
    if (!v42)
    {
      break;
    }

    v18 = 0;
    v19 = (*type + 40);
    v38 = *type;
    while (1)
    {
      v15 = *(v17 + 16);
      if (v18 >= v15)
      {
        break;
      }

      inited = *v19;
      if (*v19)
      {
        v43 = v6;
        v20 = *(v19 - 1);
        type[0] = 0;
        subtype[0] = 0;
        v21 = String.utf8CString.getter();

        macho_cpu_type_for_arch_name((v21 + 32), type, subtype);

        a1 = type[0];
        v12 = subtype[0];
        if (a2 && (v20 == v37 && inited == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        else
        {

          v22 = static os_log_type_t.info.getter();
          sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1000F3160;
          *(v23 + 56) = &type metadata for String;
          *(v23 + 64) = sub_100003D24();
          *(v23 + 32) = v20;
          *(v23 + 40) = inited;
          sub_10001491C();

          v24 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v24, "Falling back to arch %{public}s", 31, 2, v23, v36);
        }

        sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
        v25 = swift_allocBox();
        v27 = v26;
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);

        sub_1000D212C(v20, inited, a1 | (v12 << 32), sub_100041D10, v25, a3, a4);
        if (!v43)
        {

          swift_bridgeObjectRelease_n();
          swift_beginAccess();
          sub_100014894(v27, v36, &qword_100134FB0, &qword_1000F4E60);
        }

        swift_errorRetain();
        sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
        if (!swift_dynamicCast() || (*&v47[9] = *&v51[9], v46 = v50, *v47 = *v51, *subtype = *type, v45 = v49, v29 = v51[24], sub_10001465C(subtype), v29 != 16))
        {
        }

        v11 = static os_log_type_t.info.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1000F3160;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_100003D24();
        *(v30 + 32) = v20;
        *(v30 + 40) = inited;
        sub_10001491C();
        inited = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, inited, "Can't find arch %{public}s in binary", 36, 2, v30);

        v6 = 0;
        a2 = v41;
        v17 = v38;
      }

      ++v18;
      v19 += 2;
      if (v42 == v18)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    sub_1000635A4((v15 > 1), a2, 1);
    v14 = *type;
LABEL_11:
    v14[2] = a2;
    v16 = &v14[2 * a1];
    v16[4] = v12;
    v16[5] = v11;
    a2 = v41;
  }

LABEL_27:

  sub_10001449C();
  swift_allocError();
  *v31 = 0xD000000000000015;
  *(v31 + 8) = 0x80000001001052E0;
  v32 = *v51;
  v34 = v49;
  v33 = v50;
  *(v31 + 16) = *type;
  *(v31 + 32) = v34;
  *(v31 + 48) = v33;
  *(v31 + 64) = v32;
  *(v31 + 72) = 16;
  return swift_willThrow();
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v125 = a7;
  v137 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v121 = v11;
  v122 = v12;
  __chkstk_darwin(v11, v13);
  v119 = &v112[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  __chkstk_darwin(v15, v16);
  v123 = &v112[-v17];
  v18 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v124 = &v112[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20, v22);
  v120 = &v112[-v24];
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v112[-v27];
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v112[-v31];
  v34 = __chkstk_darwin(v30, v33);
  v126 = &v112[-v35];
  __chkstk_darwin(v34, v36);
  v127 = &v112[-v37];
  v38 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v40 = __chkstk_darwin(v38 - 8, v39);
  __chkstk_darwin(v40, v41);
  if (a3)
  {
    sub_10001449C();
    swift_allocError();
    *v44 = 0xD000000000000036;
    *(v44 + 8) = 0x8000000100105770;
    v45 = v129;
    v46 = v128[2];
    v47 = v128[1];
    *(v44 + 16) = v128[0];
    *(v44 + 32) = v47;
    *(v44 + 48) = v46;
    *(v44 + 64) = v45;
    *(v44 + 72) = 24;
    swift_willThrow();
    return 2;
  }

  if (*a1 != -2147483595)
  {
    return 2;
  }

  v116 = v43;
  v117 = &v112[-v42];
  v118 = v7;
  v48 = String.init(cString:)();
  v50 = v48;
  v51 = v49;
  if (!*(a5 + 16) || (v52 = sub_100061588(v48, v49), (v53 & 1) == 0))
  {
    if (v50 == 0xD000000000000010 && 0x80000001001033F0 == v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v67 = static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1000F3160;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_100003D24();
      *(v68 + 32) = v50;
      *(v68 + 40) = v51;
      sub_10001491C();
      v69 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v69, "Fileset entry found for %{public}s, but not included in prelink info", 68, 2, v68);
    }

    return 2;
  }

  v54 = v52;

  v55 = *(*(a5 + 56) + 8 * v54);
  memset(v135, 0, sizeof(v135));
  v134 = 0;
  memset(v133, 0, sizeof(v133));
  v56 = v137;
  v57 = *(v137 + 648);

  v58 = 0;
  if ((v57 & 0x40) != 0)
  {
    v115 = v55;
    v59 = v56;
    v60 = sub_1000D7374();
    v62 = v61;
    swift_beginAccess();
    v63 = *(v59 + 712);
    if (*(v63 + 16) && (, v64 = sub_100061588(v60, v62), v66 = v65, , (v66 & 1) != 0))
    {
      v58 = *(*(v63 + 56) + 8 * v64);
    }

    else
    {

      v58 = 0;
    }

    v56 = v137;
    v55 = v115;
  }

  v70 = *(a1 + 8);
  v71 = type metadata accessor for URL();
  (*(*(v71 - 8) + 56))(v117, 1, 1, v71);
  v72 = v127;
  sub_1000D79B4(v127);
  memcpy(v136, (v56 + 56), 0x255uLL);
  sub_100014894(v135, v131, &unk_100137390, &unk_1000F4E70);
  sub_100014894(v133, v130, &qword_100135090, &qword_1000F4F58);
  v73 = v72;
  v74 = v126;
  sub_100014894(v73, v126, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo.LoadInfo();
  v75 = swift_allocObject();
  *(v75 + 32) = v58;
  *(v75 + 16) = v70;
  v76 = v75;
  *(v75 + 24) = 1024;
  v77 = v136[74];

  v78 = v55;
  if (v77 < 0)
  {
    sub_100041A84(v136, v128);

    sub_100041A84(v136, v128);
    v79 = sub_1000264A8();
    if (v80)
    {
      goto LABEL_20;
    }

    v98 = v79;
    v99 = v76;
    v100 = sub_1000D76D4();
    sub_100014894(v74, v32, &qword_100134FB0, &qword_1000F4E60);
    v114 = v99;
    sub_1000263E0(v28);
    if (v98 != v100)
    {

      sub_100041AE0(v136);
      sub_10000A184(v28, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v32, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v74, &qword_100134FB0, &qword_1000F4E60);
      v81 = 3;
      v82 = v78;
      v83 = v117;
      v76 = v114;
      goto LABEL_22;
    }

    v115 = v78;
    v101 = *(v15 + 48);
    v102 = v123;
    sub_100014894(v28, v123, &qword_100134FB0, &qword_1000F4E60);
    sub_100014894(v32, &v102[v101], &qword_100134FB0, &qword_1000F4E60);
    v103 = v121;
    v104 = *(v122 + 48);
    if (v104(v102, 1, v121) == 1)
    {

      sub_100041AE0(v136);
      sub_10000A184(v28, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v32, &qword_100134FB0, &qword_1000F4E60);
      v105 = v123;
      sub_10000A184(v126, &qword_100134FB0, &qword_1000F4E60);
      v106 = v104(&v105[v101], 1, v103);
      v76 = v114;
      if (v106 == 1)
      {
        sub_10000A184(v105, &qword_100134FB0, &qword_1000F4E60);
LABEL_40:
        v81 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v107 = v120;
      sub_100014894(v102, v120, &qword_100134FB0, &qword_1000F4E60);
      if (v104(&v102[v101], 1, v103) != 1)
      {
        v108 = v122;
        v109 = &v102[v101];
        v110 = v119;
        (*(v122 + 32))(v119, v109, v103);
        sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v113 = dispatch thunk of static Equatable.== infix(_:_:)();

        sub_100041AE0(v136);
        v111 = *(v108 + 8);
        v111(v110, v103);
        sub_10000A184(v28, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v32, &qword_100134FB0, &qword_1000F4E60);
        sub_10000A184(v126, &qword_100134FB0, &qword_1000F4E60);
        v111(v107, v103);
        sub_10000A184(v123, &qword_100134FB0, &qword_1000F4E60);
        v76 = v114;
        if (v113)
        {
          goto LABEL_40;
        }

LABEL_38:
        v81 = 2;
LABEL_41:
        v82 = v115;
        goto LABEL_21;
      }

      sub_100041AE0(v136);
      sub_10000A184(v28, &qword_100134FB0, &qword_1000F4E60);
      sub_10000A184(v32, &qword_100134FB0, &qword_1000F4E60);
      v105 = v123;
      sub_10000A184(v126, &qword_100134FB0, &qword_1000F4E60);
      (*(v122 + 8))(v107, v103);
      v76 = v114;
    }

    sub_10000A184(v105, &qword_100134FB8, &qword_1000F4E68);
    goto LABEL_38;
  }

  sub_100041A84(v136, v128);

  sub_100041A84(v136, v128);
LABEL_20:
  sub_10000A184(v74, &qword_100134FB0, &qword_1000F4E60);

  sub_100041AE0(v136);
  v81 = 4;
  v82 = v55;
LABEL_21:
  v83 = v117;
LABEL_22:
  *(v76 + 25) = v81;
  v84 = v116;
  sub_100014894(v83, v116, &unk_1001389D0, &qword_1000F4F60);
  v85 = v127;
  v86 = v124;
  sub_100014894(v127, v124, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo(0);
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *(v87 + 96) = 0u;
  *(v87 + 112) = 0u;
  *(v87 + 80) = 0u;
  *(v87 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors) = _swiftEmptyArrayStorage;
  *(v87 + 24) = v82;
  *(v87 + 64) = v132;
  v88 = v131[1];
  *(v87 + 32) = v131[0];
  *(v87 + 48) = v88;
  *(v87 + 72) = 0;
  swift_beginAccess();

  sub_100041B54(v130, v87 + 80, &qword_100135090, &qword_1000F4F58);
  swift_endAccess();
  *(v87 + 120) = v76;

  sub_100020D24(v84, v87 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);
  v89 = v87 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex;
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_100020D24(v86, v87 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  *(v87 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches) = 0;
  *(v87 + 16) = 0;
  v90 = 13;
  if (*v82 == _TtC10driverkitd15DriverExtension)
  {
    v90 = 15;
  }

  v91 = v136[v90];
  v92 = 14;
  if (*v82 == _TtC10driverkitd15DriverExtension)
  {
    v92 = 16;
  }

  v93 = v136[v92];

  v94 = sub_100023AFC(v91, v93, 0);

  sub_100014894(v83, v84, &unk_1001389D0, &qword_1000F4F60);
  v95 = sub_10003FE2C(v82, v94, v84, 0, v136);
  sub_10000A184(v85, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v83, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v133, &qword_100135090, &qword_1000F4F58);
  sub_10000A184(v135, &unk_100137390, &unk_1000F4E70);
  *(v87 + 16) = v95;

  v135[0] = v87;

  sub_10007BCC0(v135);
  sub_10007C5D8(v135);
  v96 = v125;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v96 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v96 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return 2;
}

uint64_t *sub_10002D180(uint64_t a1)
{
  v162 = type metadata accessor for UUID();
  v2 = *(v162 - 8);
  v4 = __chkstk_darwin(v162, v3);
  v157 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v160 = &v148 - v7;
  v8 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v156 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v155 = &v148 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v161 = (&v148 - v17);
  v19 = __chkstk_darwin(v16, v18);
  v168 = &v148 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v167 = &v148 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v166 = (&v148 - v26);
  v28 = __chkstk_darwin(v25, v27);
  v164 = &v148 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v165 = &v148 - v32;
  __chkstk_darwin(v31, v33);
  v163 = &v148 - v34;
  v35 = type metadata accessor for OSSignpostID();
  v36 = *(v35 - 8);
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v41);
  v43 = &v148 - v42;
  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for OSSignposter();
  sub_1000144F0(v44, qword_10014EA70);
  static OSSignpostID.exclusive.getter();
  v45 = OSSignposter.logHandle.getter();
  v46 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v47 = swift_slowAlloc();
    v159 = v2;
    v48 = a1;
    v49 = v47;
    *v47 = 0;
    v50 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v50, "CollectionRealizing", "", v49, 2u);
    a1 = v48;
    v2 = v159;
  }

  (*(v36 + 16))(v40, v43, v35);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v51 = OSSignpostIntervalState.init(id:isOpen:)();
  v53 = *(v36 + 8);
  v52 = (v36 + 8);
  v53(v43, v35);
  v54 = v169;
  v55 = sub_1000539C0();
  if (v54)
  {
LABEL_80:
    sub_10002E2D8(v51);

    return v52;
  }

  v56 = v55;
  type metadata accessor for KernelCollection(0);
  v57 = *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind);
  v59 = v166;
  v58 = v167;
  v60 = v168;
  sub_100052E70(v166, v167, v168, v56, *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch), *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8), *(a1 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  v169 = 0;
  v154 = v51;
  v153 = a1;
  v61 = v58;
  v62 = v163;
  sub_100020D24(v59, v163, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v61, v165, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v60, v164, &qword_100134FB0, &qword_1000F4E60);
  v63 = v161;
  sub_100014894(v62, v161, &qword_100134FB0, &qword_1000F4E60);
  v64 = v162;
  if ((*(v2 + 48))(v63, 1, v162) == 1)
  {

    sub_10000A184(v63, &qword_100134FB0, &qword_1000F4E60);
    if (v57 > 1)
    {
      v51 = v154;
      if (v57 == 2)
      {
        v117 = "o prelink UUID key?";
        v118 = 0xD000000000000019;
      }

      else
      {
        v117 = "f dext in the ARV at %{public}s";
        v118 = 0xD000000000000012;
      }
    }

    else
    {
      v51 = v154;
      if (v57)
      {
        v65 = "system kext collection";
      }

      else
      {
        v65 = "boot kernel collection";
      }

      v117 = (v65 - 32);
      v118 = 0xD000000000000016;
    }

    v123 = v117 | 0x8000000000000000;
    sub_10001449C();
    swift_allocError();
    *v124 = v118;
    *(v124 + 8) = v123;
    *(v124 + 16) = 0xD000000000000023;
    *(v124 + 24) = 0x8000000100105670;
    v125 = v172;
    v126 = v171;
    *(v124 + 32) = *type;
    *(v124 + 48) = v126;
    *(v124 + 64) = v125;
    *(v124 + 72) = 6;
    swift_willThrow();
    v52 = &qword_100134FB0;
    sub_10000A184(v164, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v165, &qword_100134FB0, &qword_1000F4E60);
    v127 = v163;
LABEL_79:
    sub_10000A184(v127, &qword_100134FB0, &qword_1000F4E60);
    goto LABEL_80;
  }

  v159 = v2;
  v68 = *(v2 + 32);
  v67 = v2 + 32;
  v66 = v68;
  (v68)(v160, v63, v64);
  if (!*(v56 + 16))
  {

    v51 = v154;
    goto LABEL_66;
  }

  v168 = v67;
  v69 = sub_100061588(0xD000000000000016, 0x8000000100105700);
  v51 = v154;
  if ((v70 & 1) == 0)
  {

    goto LABEL_66;
  }

  sub_10000B430(*(v56 + 56) + 32 * v69, type);

  sub_100003CDC(&qword_100135158, &qword_1000F5040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_66:
    v119 = v159;
    if (v57 > 1)
    {
      if (v57 == 2)
      {
        v121 = "o prelink UUID key?";
        v122 = 0xD000000000000019;
      }

      else
      {
        v121 = "f dext in the ARV at %{public}s";
        v122 = 0xD000000000000012;
      }
    }

    else
    {
      if (v57)
      {
        v120 = "system kext collection";
      }

      else
      {
        v120 = "boot kernel collection";
      }

      v121 = (v120 - 32);
      v122 = 0xD000000000000016;
    }

    v128 = v121 | 0x8000000000000000;
    sub_10001449C();
    swift_allocError();
    *v129 = v122;
    *(v129 + 8) = v128;
    *(v129 + 16) = 0xD00000000000002ALL;
    *(v129 + 24) = 0x8000000100105720;
    v130 = v172;
    v131 = v171;
    *(v129 + 32) = *type;
    *(v129 + 48) = v131;
    *(v129 + 64) = v130;
    *(v129 + 72) = 6;
    swift_willThrow();
    (*(v119 + 8))(v160, v162);
    v52 = &qword_100134FB0;
    sub_10000A184(v164, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v165, &qword_100134FB0, &qword_1000F4E60);
    v127 = v163;
    goto LABEL_79;
  }

  v166 = v66;
  v71 = *subtype;
  v167 = sub_1000412F4(_swiftEmptyArrayStorage);
  v72 = v71[2];
  if (!v72)
  {
    goto LABEL_60;
  }

  v73 = 0;
  v150 = "dependenciesValid";
  v151 = 0x8000000100104280;
  v152 = v72 - 1;
  do
  {
    v74 = v73;
    while (1)
    {
      if (v74 >= v71[2])
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v75 = v71[v74 + 4];
      v76 = qword_100133A60;

      if (v76 == -1)
      {
        if (!*(v75 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (!*(v75 + 16))
        {
          goto LABEL_16;
        }
      }

      v77 = sub_100061588(qword_10014E8E0, *algn_10014E8E8);
      if ((v78 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_10000B430(*(v75 + 56) + 32 * v77, type);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v80 = *subtype;
      v79 = v175;
      if (*subtype == 1415071051 && v175 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v82 = type metadata accessor for KernelExtension(0);
        goto LABEL_34;
      }

      if (v80 == 1415071044 && v79 == 0xE400000000000000)
      {
        break;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v81)
      {
        goto LABEL_33;
      }

LABEL_16:

      if (v72 == ++v74)
      {
        goto LABEL_60;
      }
    }

LABEL_33:
    v82 = type metadata accessor for DriverExtension(0);
LABEL_34:
    if (*(v75 + 16) && (v83 = sub_100061588(0xD000000000000010, v150 | 0x8000000000000000), (v84 & 1) != 0))
    {
      sub_10000B430(*(v75 + 56) + 32 * v83, type);
      v85 = swift_dynamicCast();
      v86 = *subtype;
      if (!v85)
      {
        v86 = 0;
      }

      v161 = v86;
      v87 = 0xF000000000000000;
      if (v85)
      {
        v87 = v175;
      }
    }

    else
    {
      v161 = 0;
      v87 = 0xF000000000000000;
    }

    v149 = v87;
    *type = v153;
    v173 = 1;
    v88 = *(v82 + 312);

    v161 = v88(type, v75, v161, v149);
    v89 = v161[2];
    if (qword_100133A50 != -1)
    {
      swift_once();
    }

    if (*(v89 + 16) && (v90 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v91 & 1) != 0) && (sub_10000B430(*(v89 + 56) + 32 * v90, type), (swift_dynamicCast() & 1) != 0))
    {
      v93 = *subtype;
      v92 = v175;
    }

    else
    {
      v93 = 0xD000000000000014;
      v92 = v151;
    }

    v149 = v92;

    v94 = v167;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *type = v94;
    v96 = v93;
    v97 = v93;
    v98 = v149;
    v99 = sub_100061588(v97, v149);
    v101 = *(v94 + 16);
    v102 = (v100 & 1) == 0;
    v103 = __OFADD__(v101, v102);
    v104 = v101 + v102;
    if (v103)
    {
      goto LABEL_87;
    }

    if (*(v94 + 24) < v104)
    {
      LODWORD(v167) = v100;
      sub_1000353D8(v104, isUniquelyReferenced_nonNull_native);
      v99 = sub_100061588(v96, v98);
      v105 = v100 & 1;
      LOBYTE(v100) = v167;
      if ((v167 & 1) != v105)
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_54:
      if (v100)
      {
        goto LABEL_55;
      }

LABEL_57:
      v108 = *type;
      *(*type + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v109 = (v108[6] + 16 * v99);
      *v109 = v96;
      v109[1] = v98;
      *(v108[7] + 8 * v99) = v161;

      v110 = v108[2];
      v103 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (!v103)
      {
        v167 = v108;
        v108[2] = v111;
        goto LABEL_59;
      }

LABEL_88:
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_54;
    }

    v167 = v99;
    v107 = v100;
    sub_10003B2B8();
    v99 = v167;
    if ((v107 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    v106 = v99;

    v167 = *type;
    *(*(*type + 56) + 8 * v106) = v161;

LABEL_59:
    v51 = v154;
    v73 = v74 + 1;
  }

  while (v152 != v74);
LABEL_60:

  v112 = v158;
  v113 = *(v158 + 160);
  v114 = *(v158 + 168);
  type[0] = 0;
  subtype[0] = 0;
  v115 = String.utf8CString.getter();
  macho_cpu_type_for_arch_name((v115 + 32), type, subtype);

  if ((*(v112 + 648) & 0x80) == 0)
  {
    v116 = v169;
    v161 = sub_10003FAC4(v167, sub_100041C60);
    v169 = v116;

    sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);
    goto LABEL_85;
  }

  v132 = type[0];
  v133 = subtype[0];
  v52 = swift_allocObject();
  v52[2] = _swiftEmptyArrayStorage;
  v134 = sub_100003C4C((v153 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data), *(v153 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data + 24));
  v135 = swift_allocObject();
  v136 = v112;
  v137 = v135;
  v135[2] = v167;
  v135[3] = v136;
  v135[4] = v52;
  v138 = *v134;
  v139 = v134[1];

  v140 = v138;
  v141 = v169;
  sub_1000D212C(v113, v114, v132 | (v133 << 32), sub_100041CE8, v137, v140, v139);
  if (v141)
  {

    (*(v159 + 8))(v160, v162);
    sub_10000A184(v164, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v165, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);

    goto LABEL_80;
  }

  v169 = 0;

  sub_10000A184(v163, &qword_100134FB0, &qword_1000F4E60);
  swift_beginAccess();
  v161 = v52[2];

LABEL_85:
  v142 = v157;
  v143 = v162;
  v144 = v166;
  (v166)(v157, v160, v162);
  v145 = v155;
  sub_100020D24(v165, v155, &qword_100134FB0, &qword_1000F4E60);
  v146 = v156;
  sub_100020D24(v164, v156, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedKernelCollection(0);
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection) = v153;
  v144(v52 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_uuid, v142, v143);
  sub_100020D24(v145, v52 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  sub_100020D24(v146, v52 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, &qword_100134FB0, &qword_1000F4E60);
  *(v52 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions) = v161;

  sub_10002E2D8(v51);

  return v52;
}

uint64_t sub_10002E2D8(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_1000144F0(v11, qword_10014EA70);
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v13 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v5, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "CollectionRealizing", v14, v15, 2u);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10002E564(uint64_t a1, uint64_t a2, __objc2_class **a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v90 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v87 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100003CDC(&qword_100134FB8, &qword_1000F4E68);
  __chkstk_darwin(v89, v11);
  v13 = &v86 - v12;
  v14 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v16 = __chkstk_darwin(v14 - 8, v15);
  v94 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v88 = &v86 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v92 = &v86 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v93 = &v86 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v30 = &v86 - v29;
  __chkstk_darwin(v28, v31);
  v99 = &v86 - v32;
  v33 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v35 = __chkstk_darwin(v33 - 8, v34);
  v95 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v86 - v39;
  __chkstk_darwin(v38, v41);
  v98 = &v86 - v42;
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  swift_beginAccess();
  v43 = *(a4 + 712);
  if (*(v43 + 16))
  {

    v44 = sub_100061588(a1, a2);
    if (v45)
    {
      v46 = *(*(v43 + 56) + 8 * v44);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v91 = v8;
  v97 = a3;
  sub_1000D7B9C(v40);
  v47 = type metadata accessor for URL();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v40, 1, v47) == 1)
  {
    sub_10000A184(v40, &unk_1001389D0, &qword_1000F4F60);
    v49 = 1;
    v50 = v98;
  }

  else
  {
    v50 = v98;
    sub_10007A7AC(v98);
    (*(v48 + 8))(v40, v47);
    v49 = 0;
  }

  (*(v48 + 56))(v50, v49, 1, v47);
  v51 = v99;
  sub_1000D79B4(v99);
  v96 = a4;
  memcpy(v108, (a4 + 56), 0x255uLL);
  sub_100014894(v106, v102, &unk_100137390, &unk_1000F4E70);
  sub_100014894(v104, v101, &qword_100135090, &qword_1000F4F58);
  sub_100014894(v51, v30, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo.LoadInfo();
  v52 = swift_allocObject();
  *(v52 + 32) = v46;
  *(v52 + 16) = 0;
  *(v52 + 24) = 1025;
  if ((v108[74] & 0x80) == 0)
  {
    sub_100041A84(v108, v100);
    sub_100041A84(v108, v100);
LABEL_13:
    sub_10000A184(v30, &qword_100134FB0, &qword_1000F4E60);
    sub_100041AE0(v108);
    v55 = 4;
    goto LABEL_14;
  }

  sub_100041A84(v108, v100);
  sub_100041A84(v108, v100);
  v53 = sub_1000264A8();
  if (v54)
  {
    goto LABEL_13;
  }

  v72 = v53;
  v73 = sub_1000D76D4();
  v74 = v93;
  sub_100014894(v30, v93, &qword_100134FB0, &qword_1000F4E60);
  v75 = v92;
  sub_1000263E0(v92);
  if (v72 != v73)
  {
    sub_100041AE0(v108);
    sub_10000A184(v75, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v74, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v30, &qword_100134FB0, &qword_1000F4E60);
    v55 = 3;
    goto LABEL_14;
  }

  v76 = *(v89 + 48);
  sub_100014894(v75, v13, &qword_100134FB0, &qword_1000F4E60);
  sub_100014894(v74, &v13[v76], &qword_100134FB0, &qword_1000F4E60);
  v77 = v91;
  v78 = v75;
  v79 = *(v90 + 48);
  if (v79(v13, 1, v91) == 1)
  {
    sub_100041AE0(v108);
    sub_10000A184(v78, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v74, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v30, &qword_100134FB0, &qword_1000F4E60);
    if (v79(&v13[v76], 1, v91) == 1)
    {
      sub_10000A184(v13, &qword_100134FB0, &qword_1000F4E60);
      v55 = 0;
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v80 = v88;
  sub_100014894(v13, v88, &qword_100134FB0, &qword_1000F4E60);
  v81 = v77;
  if (v79(&v13[v76], 1, v77) == 1)
  {
    sub_100041AE0(v108);
    sub_10000A184(v92, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v93, &qword_100134FB0, &qword_1000F4E60);
    sub_10000A184(v30, &qword_100134FB0, &qword_1000F4E60);
    (*(v90 + 8))(v80, v77);
LABEL_26:
    sub_10000A184(v13, &qword_100134FB8, &qword_1000F4E68);
LABEL_27:
    v55 = 2;
    goto LABEL_14;
  }

  v82 = v90;
  v83 = v87;
  (*(v90 + 32))(v87, &v13[v76], v81);
  sub_1000305F4(&qword_100134FC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100041AE0(v108);
  v85 = *(v82 + 8);
  v85(v83, v81);
  sub_10000A184(v92, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v93, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v30, &qword_100134FB0, &qword_1000F4E60);
  v85(v88, v81);
  sub_10000A184(v13, &qword_100134FB0, &qword_1000F4E60);
  if ((v84 & 1) == 0)
  {
    goto LABEL_27;
  }

  v55 = 0;
LABEL_14:
  v56 = v98;
  *(v52 + 25) = v55;
  v57 = v95;
  sub_100014894(v56, v95, &unk_1001389D0, &qword_1000F4F60);
  v58 = v99;
  v59 = v94;
  sub_100014894(v99, v94, &qword_100134FB0, &qword_1000F4E60);
  type metadata accessor for RealizedInfo(0);
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 96) = 0u;
  *(v60 + 112) = 0u;
  *(v60 + 80) = 0u;
  *(v60 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors) = _swiftEmptyArrayStorage;
  v61 = v97;
  *(v60 + 24) = v97;
  *(v60 + 64) = v103;
  v62 = v102[1];
  *(v60 + 32) = v102[0];
  *(v60 + 48) = v62;
  *(v60 + 72) = 0;
  swift_beginAccess();

  sub_100041B54(v101, v60 + 80, &qword_100135090, &qword_1000F4F58);
  swift_endAccess();
  *(v60 + 120) = v52;

  sub_100020D24(v57, v60 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_unstagedURL, &unk_1001389D0, &qword_1000F4F60);
  v63 = v60 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_repoIndex;
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_100020D24(v59, v60 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_uuid, &qword_100134FB0, &qword_1000F4E60);
  *(v60 + OBJC_IVAR____TtC10driverkitd12RealizedInfo_bundleArches) = 0;
  *(v60 + 16) = 0;
  v64 = 13;
  if (*v61 == _TtC10driverkitd15DriverExtension)
  {
    v64 = 15;
  }

  v65 = v108[v64];
  v66 = 14;
  if (*v61 == _TtC10driverkitd15DriverExtension)
  {
    v66 = 16;
  }

  v67 = v108[v66];

  v68 = sub_100023AFC(v65, v67, 0);

  sub_100014894(v56, v57, &unk_1001389D0, &qword_1000F4F60);

  v70 = sub_10003FE2C(v69, v68, v57, 0, v108);
  sub_10000A184(v58, &qword_100134FB0, &qword_1000F4E60);
  sub_10000A184(v56, &unk_1001389D0, &qword_1000F4F60);
  sub_10000A184(v104, &qword_100135090, &qword_1000F4F58);
  sub_10000A184(v106, &unk_100137390, &unk_1000F4E70);
  *(v60 + 16) = v70;

  v100[0] = v60;
  sub_10007BCC0(v100);
  sub_10007C5D8(v100);
  return v60;
}

void sub_10002F12C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();

    v11 = OSKextParseVersionCFString();
  }

  else
  {
    v11 = 0;
  }

  Hasher._combine(_:)(v11);
  sub_1000138F8(v8 + 24, &v26);
  if (v28)
  {
    if (v28 == 1)
    {
      v12 = v26;
      sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v12 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(&v26, v23);
    v13 = v24;
    v14 = v25;
    sub_100003C4C(v23, v24);
    (*(v14 + 64))(v13, v14);
    sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
    sub_100003C90(v23);
  }

  sub_100014894(v2 + 32, &v26, &unk_100137390, &unk_1000F4E70);
  if (v27)
  {
    v15 = sub_100003C4C(&v26, v27);
    v16 = *(*v15 + 40);
    v17 = *(*v15 + 48);
    sub_1000146C4(v16, v17);
    sub_100003C90(&v26);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    sub_1000128D8(v16, v17);
  }

  else
  {
    sub_10000A184(&v26, &unk_100137390, &unk_1000F4E70);
    Hasher._combine(_:)(0);
  }

  sub_100014894(v2 + 32, &v26, &unk_100137390, &unk_1000F4E70);
  if (!v27)
  {
    sub_10000A184(&v26, &unk_100137390, &unk_1000F4E70);
    Hasher._combine(_:)(0);
    return;
  }

  v18 = sub_100003C4C(&v26, v27);
  v19 = *(*v18 + 24);
  v20 = *(*v18 + 32);
  sub_10003E104(v19, v20);
  sub_100003C90(&v26);
  Hasher._combine(_:)(1u);
  if (!v20)
  {
    v21 = 1;
    goto LABEL_17;
  }

  if (v20 == 1)
  {
    v21 = 2;
LABEL_17:
    Hasher._combine(_:)(v21);
    return;
  }

  Hasher._combine(_:)(0);
  String.hash(into:)();
  sub_10003E118(v19, v20);
}

Swift::Int sub_10002F504()
{
  Hasher.init(_seed:)();
  sub_10002F12C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002F56C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10002F12C(v2);
  return Hasher._finalize()();
}

void sub_10002F5AC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v21 - v14;
  v16 = sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v22 = v1;
  sub_100014894(v1 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v15, &qword_100134FB0, &qword_1000F4E60);
  v17 = *(v4 + 48);
  v18 = v17(v15, 1, v3);
  v21 = v16;
  if (v18 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  v19 = v22;
  sub_100014894(v22 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v12, &qword_100134FB0, &qword_1000F4E60);
  if (v17(v12, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  v20 = *(v19 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v20 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(a1, *(v19 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
}

Swift::Int sub_10002F93C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v18[-1] - v12;
  Hasher.init(_seed:)();
  sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_100014894(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v13, &qword_100134FB0, &qword_1000F4E60);
  v14 = *(v2 + 48);
  if (v14(v13, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v13, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  sub_100014894(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v10, &qword_100134FB0, &qword_1000F4E60);
  if (v14(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v15 = *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v15 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(v18, *(v0 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
  return Hasher._finalize()();
}

Swift::Int sub_10002FD14(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20[-1] - v13;
  v15 = *v1;
  Hasher.init(_seed:)();
  sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_100014894(v15 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_bootCollectionUUID, v14, &qword_100134FB0, &qword_1000F4E60);
  v16 = *(v3 + 48);
  if (v16(v14, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  sub_100014894(v15 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_pageableCollectionUUID, v11, &qword_100134FB0, &qword_1000F4E60);
  if (v16(v11, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v17 = *(v15 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_collection);
  type metadata accessor for URL();
  sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v17 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
  sub_10003CF60(v20, *(v15 + OBJC_IVAR____TtC10driverkitd24RealizedKernelCollection_extensions));
  return Hasher._finalize()();
}

uint64_t sub_1000300A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a4@<X8>)
{
  __chkstk_darwin(a1, a1);
  (*(v7 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v17[0];
    v9 = v17[1];
    if (a2)
    {
      if (a2[2])
      {
        v11 = sub_100061588(1751347809, 0xE400000000000000);
        if (v12)
        {
          sub_10000B430(a2[7] + 32 * v11, v17);
          v13 = swift_dynamicCast();
          v14 = v13 == 0;
          if (v13)
          {
            v15 = v16[0];
          }

          else
          {
            v15 = 0;
          }

          if (v14)
          {
            a2 = 0;
          }

          else
          {
            a2 = v16[1];
          }
        }

        else
        {
          v15 = 0;
          a2 = 0;
        }
      }

      else
      {
        v15 = 0;
        a2 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    sub_100024FF4(v15, a2, v10, v9, a4);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100030250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(v4 + 24) + 16);

  v10 = sub_1000DEDC4(a1, a2, v9, &type metadata for String, &type metadata for Any + 8, a3, &protocol witness table for String, a4);

  return v10;
}

uint64_t sub_100030328(unsigned int a1)
{
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if ((a1 >> v2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100031C54(0, *(v3 + 2) + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100031C54((v4 > 1), v5 + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = v2;
    }

    ++v2;
  }

  while (v2 != 32);
  v6 = Array.description.getter();

  return v6;
}

uint64_t sub_100030434(unint64_t a1)
{
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    if ((a1 >> v2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100031C54(0, *(v3 + 2) + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100031C54((v4 > 1), v5 + 1, 1, v3, &qword_100134FF8, &unk_1000F7B80);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = v2;
    }

    ++v2;
  }

  while (v2 != 64);
  v6 = Array.description.getter();

  return v6;
}

uint64_t sub_1000305F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003063C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100030FAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100030728(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100030EA0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003081C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100031E94(result, v10, 1, v3, &unk_1001389E0, &unk_1000F5090, &qword_1001351A8, &qword_1000F9BC0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100003CDC(&qword_1001351A8, &qword_1000F9BC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100030944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100032000(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1001351A0, &unk_1000F7C20, &qword_100135198, &unk_1000F5080);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100003CDC(&qword_100135198, &unk_1000F5080);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100030A9C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000318C0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100030BA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100057B1C();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10008E4F0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100030C90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000319F4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100030D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000636EC(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000636EC((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100030EA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100030FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100134FA8, &qword_1000F4E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000310B0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135148, &unk_1000F5030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135150, &qword_1000F7BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031208(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100135040, &qword_1000F4F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031324(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135030, &qword_1000F4EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135038, &qword_1000F4EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031468(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003CDC(&qword_100135088, &unk_1000F7B90);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

void *sub_100031664(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_1001350B0, &unk_1000F4F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000317BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_1001389C0, &qword_1000F4FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000318C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135100, &qword_1000F4FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000319F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100135060, &qword_1000F4F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031B10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100135000, &unk_1000F4EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031C54(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100003CDC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100031D50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_1001351D0, &qword_1000F50C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031E94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003CDC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100032000(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003CDC(a5, a6);
  v16 = *(sub_100003CDC(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100003CDC(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1000321E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003CDC(&qword_100135018, &unk_1000F4ED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003230C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100003CDC(&qword_100135008, &qword_1000F4EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135010, &qword_1000F4EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003245C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1000324E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003CDC(&qword_100135050, &qword_1000F4F10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1000325BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003CDC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000326B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003CDC(&qword_100135060, &qword_1000F4F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_100032748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_1001351D8, &qword_1000F50C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_10000B48C(v21, v31);
      }

      else
      {
        sub_10000B430(v21, v31);
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_10000B48C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1000329C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v58 = type metadata accessor for URL();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58, v6);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100003CDC(&qword_100135048, &qword_1000F4F08);
  v57 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v53 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v59 = 0x8000000100104280;
    v54 = (v5 + 8);
    v17 = result + 64;
    v18 = v57;
    v55 = result;
    while (1)
    {
      if (!v15)
      {
        v21 = v11;
        while (1)
        {
          v11 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v11 >= v16)
          {
            break;
          }

          v22 = v12[v11];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v60 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if ((v18 & 1) == 0)
        {

          v3 = v53;
          goto LABEL_49;
        }

        v52 = 1 << *(v8 + 32);
        v3 = v53;
        if (v52 >= 64)
        {
          bzero(v12, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v12 = -1 << v52;
        }

        *(v8 + 16) = 0;
        break;
      }

      v20 = __clz(__rbit64(v15));
      v60 = (v15 - 1) & v15;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(*(v8 + 56) + 8 * v23);
      if ((v18 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      v26 = *(v24 + 16);
      if (qword_100133A50 == -1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        swift_once();
        if (!*(v26 + 16))
        {
          goto LABEL_22;
        }
      }

      v27 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v28)
      {
        sub_10000B430(*(v26 + 56) + 32 * v27, v65);
        swift_dynamicCast();
      }

LABEL_22:
      String.hash(into:)();

      v29 = *(v24 + 16);
      if (qword_100133A70 != -1)
      {
        swift_once();
      }

      v30 = *(v29 + 16);
      v61 = v25;
      if (v30 && (v31 = sub_100061588(qword_10014E900, *algn_10014E908), (v32 & 1) != 0) && (sub_10000B430(*(v29 + 56) + 32 * v31, v65), swift_dynamicCast()))
      {
        v33 = String._bridgeToObjectiveC()();

        v34 = OSKextParseVersionCFString();
      }

      else
      {
        v34 = 0;
      }

      Hasher._combine(_:)(v34);
      sub_1000138F8(v24 + 24, v65);
      if (v66)
      {
        if (v66 == 1)
        {
          v35 = *&v65[0];
          sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          Hasher._combine(_:)(*(v35 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
        }
      }

      else
      {
        sub_100009F34(v65, &v62);
        v36 = v8;
        v37 = v63;
        v38 = v64;
        sub_100003C4C(&v62, v63);
        v39 = *(v38 + 64);
        v40 = v56;
        v41 = v38;
        v8 = v36;
        v18 = v57;
        v39(v37, v41);
        sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v42 = v58;
        dispatch thunk of Hashable.hash(into:)();
        v43 = v40;
        v10 = v55;
        (*v54)(v43, v42);
        sub_100003C90(&v62);
      }

      result = Hasher._finalize()();
      v44 = -1 << *(v10 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      v47 = v61;
      if (((-1 << v45) & ~*(v17 + 8 * (v45 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v44) >> 6;
        while (++v46 != v49 || (v48 & 1) == 0)
        {
          v50 = v46 == v49;
          if (v46 == v49)
          {
            v46 = 0;
          }

          v48 |= v50;
          v51 = *(v17 + 8 * v46);
          if (v51 != -1)
          {
            v19 = __clz(__rbit64(~v51)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v45) & ~*(v17 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      *(*(v10 + 56) + 8 * v19) = v47;
      ++*(v10 + 16);
      v15 = v60;
    }
  }

LABEL_49:
  *v3 = v10;
  return result;
}

uint64_t sub_10003301C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000B48C(v24, v34);
      }

      else
      {
        sub_10000B430(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000B48C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100033310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DriverBinEntry(0);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  sub_100003CDC(&qword_100135078, &qword_1000F4F38);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_100041810(v29 + v30 * v26, v49, type metadata accessor for DriverBinEntry);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_1000418E0(v31 + v30 * v26, v49, type metadata accessor for DriverBinEntry);
      }

      sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = sub_100041810(v49, *(v14 + 56) + v30 * v22, type metadata accessor for DriverBinEntry);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

Swift::Int sub_1000337B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100135110, &qword_1000F4FF0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100033A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v55 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v47 - v14;
  v16 = *v2;
  sub_100003CDC(&qword_100135190, &qword_1000F5078);
  v56 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v16 + 16))
  {
    v53 = v5;
    v47 = v2;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v52 = (v6 + 48);
    v49 = (v6 + 32);
    v48 = (v6 + 8);
    v25 = result + 64;
    v50 = v16;
    v60 = result;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v28 = (v23 - 1) & v23;
LABEL_15:
      v31 = v27 | (v19 << 6);
      v32 = *(v16 + 48);
      v58 = *(v55 + 72);
      v59 = v28;
      v33 = v32 + v58 * v31;
      if (v56)
      {
        sub_100020D24(v33, v15, &unk_1001389D0, &qword_1000F4F60);
        v57 = *(*(v16 + 56) + 8 * v31);
      }

      else
      {
        sub_100014894(v33, v15, &unk_1001389D0, &qword_1000F4F60);
        v57 = *(*(v16 + 56) + 8 * v31);
      }

      Hasher.init(_seed:)();
      v34 = v15;
      v35 = v54;
      sub_100014894(v15, v54, &unk_1001389D0, &qword_1000F4F60);
      v36 = v53;
      if ((*v52)(v35, 1, v53) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v37 = v51;
        (*v49)(v51, v35, v36);
        Hasher._combine(_:)(1u);
        sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        v38 = v37;
        v16 = v50;
        (*v48)(v38, v36);
      }

      result = Hasher._finalize()();
      v39 = -1 << *(v60 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      v15 = v34;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v18 = v60;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v18 = v60;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_100020D24(v15, v18[6] + v58 * v26, &unk_1001389D0, &qword_1000F4F60);
      *(v18[7] + 8 * v26) = v57;
      ++v18[2];
      v23 = v59;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v46 = 1 << *(v16 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v16 + 16) = 0;
  }

LABEL_37:
  *v3 = v18;
  return result;
}

Swift::Int sub_100033FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_1001350C8, &qword_1000F4FA0);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100034244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100003CDC(&qword_1001350C0, &qword_1000F4F98);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100034620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_1001350D8, &qword_1000F4FB0);
  v32 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v34 = *v22;
      v23 = *(v22 + 8);
      v33 = *(v22 + 16);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v34;
      *(v16 + 8) = v23;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100034940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v56 = type metadata accessor for URL();
  v5 = *(v56 - 8);
  __chkstk_darwin(v56, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100003CDC(&qword_1001350E8, &qword_1000F4FC0);
  v59 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v53 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v57 = 0x8000000100104280;
    v54 = (v5 + 8);
    v17 = result + 64;
    v58 = v8;
    while (1)
    {
      if (!v15)
      {
        v22 = v11;
        while (1)
        {
          v11 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v11 >= v16)
          {
            break;
          }

          v23 = v12[v11];
          ++v22;
          if (v23)
          {
            v20 = __clz(__rbit64(v23));
            v21 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        if ((v59 & 1) == 0)
        {

          v3 = v53;
          goto LABEL_50;
        }

        v51 = 1 << *(v8 + 32);
        v3 = v53;
        if (v51 >= 64)
        {
          bzero(v12, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v12 = -1 << v51;
        }

        *(v8 + 16) = 0;
        break;
      }

      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v24 = v20 | (v11 << 6);
      v60 = v21;
      v25 = *(v8 + 56);
      v26 = *(*(v8 + 48) + 8 * v24);
      v27 = (v25 + 80 * v24);
      if (v59)
      {
        v71 = v27[1];
        v72 = v27[2];
        *v73 = v27[3];
        *&v73[9] = *(v27 + 57);
        v70 = *v27;
      }

      else
      {
        v66 = *v27;
        v29 = v27[2];
        v28 = v27[3];
        v30 = v27[1];
        *(v69 + 9) = *(v27 + 57);
        v69[0] = v28;
        v67 = v30;
        v68 = v29;

        sub_1000419A4(&v66, &v70);
        v72 = v68;
        *v73 = v69[0];
        *&v73[9] = *(v69 + 9);
        v70 = v66;
        v71 = v67;
      }

      Hasher.init(_seed:)();
      v31 = *(v26 + 16);
      if (qword_100133A50 == -1)
      {
        if (!*(v31 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        swift_once();
        if (!*(v31 + 16))
        {
          goto LABEL_23;
        }
      }

      v32 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v33)
      {
        sub_10000B430(*(v31 + 56) + 32 * v32, v64);
        swift_dynamicCast();
      }

LABEL_23:
      String.hash(into:)();

      v34 = *(v26 + 16);
      if (qword_100133A70 == -1)
      {
        if (!*(v34 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        swift_once();
        if (!*(v34 + 16))
        {
          goto LABEL_29;
        }
      }

      v35 = sub_100061588(qword_10014E900, *algn_10014E908);
      if (v36)
      {
        sub_10000B430(*(v34 + 56) + 32 * v35, v64);
        if (swift_dynamicCast())
        {
          v37 = String._bridgeToObjectiveC()();

          v38 = OSKextParseVersionCFString();

          goto LABEL_30;
        }
      }

LABEL_29:
      v38 = 0;
LABEL_30:
      Hasher._combine(_:)(v38);
      sub_1000138F8(v26 + 24, v64);
      if (v65)
      {
        if (v65 == 1)
        {
          v39 = *&v64[0];
          sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          Hasher._combine(_:)(*(v39 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
        }
      }

      else
      {
        sub_100009F34(v64, v61);
        v40 = v62;
        v41 = v63;
        sub_100003C4C(v61, v62);
        v42 = v55;
        (*(v41 + 64))(v40, v41);
        sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v43 = v56;
        dispatch thunk of Hashable.hash(into:)();
        (*v54)(v42, v43);
        sub_100003C90(v61);
      }

      result = Hasher._finalize()();
      v44 = -1 << *(v10 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v17 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v17 + 8 * v46);
          if (v50 != -1)
          {
            v18 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_52:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v45) & ~*(v17 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v26;
      v19 = (*(v10 + 56) + 80 * v18);
      v19[1] = v71;
      v19[2] = v72;
      v19[3] = *v73;
      *(v19 + 57) = *&v73[9];
      *v19 = v70;
      ++*(v10 + 16);
      v8 = v58;
      v15 = v60;
    }
  }

LABEL_50:
  *v3 = v10;
  return result;
}

Swift::Int sub_10003506C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v45 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = *v6;
  sub_100003CDC(a4, a5);
  v44 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v42 = v6;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v43 + 72);
      v32 = *(v15 + 56) + v31 * v30;
      v46 = *(*(v15 + 48) + 16 * v30);
      v33 = *(&v46 + 1);
      if (v44)
      {
        sub_100041810(v32, v14, v45);
      }

      else
      {
        sub_1000418E0(v32, v14, v45);
        sub_1000146C4(v46, v33);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v17 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v24 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v26 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v24 + 8 * v36);
          if (v40 != -1)
          {
            v25 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v35) & ~*(v24 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v26 = v46;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v17 + 48) + 16 * v25) = v26;
      result = sub_100041810(v14, *(v17 + 56) + v31 * v25, v45);
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v9 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v15 + 32);
    v9 = v42;
    if (v41 >= 64)
    {
      bzero((v15 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v9 = v17;
  return result;
}

Swift::Int sub_1000353D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100135160, &qword_1000F5048);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100035680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100135140, &qword_1000F5028);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10003592C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_1001351E0, &qword_1000F50D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100035B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100135130, &qword_1000F5010);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100035E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100003CDC(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_1000360E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_1001351B0, &qword_1000F50A0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100009F34(v24, v34);
      }

      else
      {
        sub_10000A990(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100009F34(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000363AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CDC(&qword_100135070, &qword_1000F4F30);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v41 = v23[2];
      v27 = (v22 + 24 * v21);
      v40 = *v27;
      v39 = *(v27 + 16);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v25;
      v16[2] = v41;
      v16[3] = v26;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v40;
      *(v17 + 16) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

double sub_1000366A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100061588(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100039F20();
      v10 = v12;
    }

    sub_10000B48C((*(v10 + 56) + 32 * v8), a3);
    sub_10003706C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100036744@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_1000615C4(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003A100();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DriverBinEntry(0);
    v20 = *(v13 - 8);
    sub_100041810(v12 + *(v20 + 72) * v7, a1, type metadata accessor for DriverBinEntry);
    sub_10003721C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DriverBinEntry(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000368E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_100061968(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(v8[7] + 8 * v4);
        sub_100037A14(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10003ABC0();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100036DB4(v5, v7);

  v9 = sub_100061968(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v8[7] + 8 * v9);
  sub_100037A14(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100036A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000618A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003B054(type metadata accessor for ApplicationRecord, &qword_1001350A8, &qword_1000F4F78, type metadata accessor for ApplicationRecord);
      v10 = v20;
    }

    sub_1000128D8(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for ApplicationRecord(0);
    v19 = *(v12 - 8);
    sub_100041810(v11 + *(v19 + 72) * v8, a3, type metadata accessor for ApplicationRecord);
    sub_100037F60(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ApplicationRecord(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_100036BDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100061698(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10003B590();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_100038154(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100036C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100061588(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10003B6DC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1000382C4(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_100036D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100061588(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003B9BC();
      v10 = v12;
    }

    sub_100009F34((*(v10 + 56) + 40 * v8), a3);
    sub_100038474(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void *sub_100036DB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003CDC(&qword_100135048, &qword_1000F4F08);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v10 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for OSExtension(0);
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        type metadata accessor for RealizedInfo(0);
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1000329C0(v6 + 1, 1);
        }

        v2 = v10;
        sub_100057540(v9, v8, v10);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100036EFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10003706C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10003721C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      sub_1000305F4(&qword_100134FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(type metadata accessor for DriverBinEntry(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100037560(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000376F4(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100037A14(int64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for URL();
  v4 = *(v48 - 8);
  result = __chkstk_darwin(v48, v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v49 = 0x8000000100104280;
    v45 = (v4 + 8);
    do
    {
      v13 = *(*(a2 + 48) + 8 * v10);
      Hasher.init(_seed:)();
      v14 = *(v13 + 16);
      v15 = qword_100133A50;

      if (v15 == -1)
      {
        if (!*(v14 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        swift_once();
        if (!*(v14 + 16))
        {
          goto LABEL_10;
        }
      }

      v16 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if (v17)
      {
        sub_10000B430(*(v14 + 56) + 32 * v16, v53);
        swift_dynamicCast();
      }

LABEL_10:
      String.hash(into:)();

      v18 = *(v13 + 16);
      if (qword_100133A70 == -1)
      {
        if (!*(v18 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (!*(v18 + 16))
        {
          goto LABEL_16;
        }
      }

      v19 = sub_100061588(qword_10014E900, *algn_10014E908);
      if (v20)
      {
        sub_10000B430(*(v18 + 56) + 32 * v19, v53);
        if (swift_dynamicCast())
        {
          v21 = String._bridgeToObjectiveC()();

          v22 = OSKextParseVersionCFString();

          goto LABEL_17;
        }
      }

LABEL_16:
      v22 = 0;
LABEL_17:
      Hasher._combine(_:)(v22);
      sub_1000138F8(v13 + 24, v53);
      if (v54)
      {
        if (v54 == 1)
        {
          v23 = *&v53[0];
          sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          Hasher._combine(_:)(*(v23 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
        }
      }

      else
      {
        sub_100009F34(v53, &v50);
        v24 = v51;
        v25 = v52;
        sub_100003C4C(&v50, v51);
        v26 = *(v25 + 64);
        v47 = a1;
        v27 = a2;
        v28 = v11;
        v29 = v12;
        v30 = v8;
        v31 = v46;
        v26(v24, v25);
        sub_1000305F4(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v32 = v48;
        dispatch thunk of Hashable.hash(into:)();
        v33 = v31;
        v8 = v30;
        v12 = v29;
        v11 = v28;
        a2 = v27;
        a1 = v47;
        (*v45)(v33, v32);
        sub_100003C90(&v50);
      }

      v34 = Hasher._finalize()();

      v35 = v34 & v11;
      if (a1 >= v12)
      {
        if (v35 < v12)
        {
          goto LABEL_4;
        }
      }

      else if (v35 >= v12)
      {
        goto LABEL_26;
      }

      if (a1 >= v35)
      {
LABEL_26:
        v36 = *(a2 + 48);
        v37 = (v36 + 8 * a1);
        v38 = (v36 + 8 * v10);
        if (a1 != v10 || v37 >= v38 + 1)
        {
          *v37 = *v38;
        }

        v39 = *(a2 + 56);
        v40 = (v39 + 8 * a1);
        v41 = (v39 + 8 * v10);
        if (a1 != v10 || v40 >= v41 + 1)
        {
          *v40 = *v41;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v42 = *(a2 + 16);
  v43 = __OFSUB__(v42, 1);
  v44 = v42 - 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v44;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100037F60(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_1000146C4(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_1000128D8(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ApplicationRecord(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100038154(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000382C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100038474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100038630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 32 * v3);
        v14 = (v12 + 32 * v6);
        if (v3 != v6 || v13 >= v14 + 2)
        {
          v15 = v14[1];
          *v13 = *v14;
          v13[1] = v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (24 * v3 < (24 * v6) || v17 >= v18 + 24 || v3 != v6)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100038828(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100061698(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100039DA4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100032748(v14, a3 & 1);
    v9 = sub_100061698(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_100003C90(v20);

    return sub_10000B48C(a1, v20);
  }

  else
  {

    return sub_100039A0C(v9, a2, a1, v19);
  }
}

void sub_100038954(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100061588(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100039F20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10003301C(v16, a4 & 1);
    v11 = sub_100061588(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003C90(v22);

    sub_10000B48C(a1, v22);
  }

  else
  {
    sub_100039A74(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100038AA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000615C4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for DriverBinEntry(0);
      return sub_100041878(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for DriverBinEntry);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_10003A100();
    goto LABEL_7;
  }

  sub_100033310(v18, a3 & 1);
  v25 = sub_1000615C4(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_100039AE0(v15, v12, a1, v21);
}

unint64_t sub_100038C78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000616D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100033FB4(v14, a3 & 1);
      result = sub_1000616D4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10003A7E4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}