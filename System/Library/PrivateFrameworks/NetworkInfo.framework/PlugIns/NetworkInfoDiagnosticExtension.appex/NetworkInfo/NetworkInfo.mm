char *sub_100001370(void *a1)
{
  v2 = v1;
  v240 = sub_10000CF7C();
  v4 = *(v240 - 8);
  __chkstk_darwin(v240 - 8);
  v239 = v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_10000D02C();
  v245 = *(v250 - 8);
  v6 = __chkstk_darwin(v250);
  v225 = v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v226 = v224 - v9;
  v10 = __chkstk_darwin(v8);
  v228 = v224 - v11;
  v12 = __chkstk_darwin(v10);
  v227 = v224 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v224 - v15;
  v17 = __chkstk_darwin(v14);
  v242 = (v224 - v18);
  v19 = __chkstk_darwin(v17);
  v241 = v224 - v20;
  v21 = __chkstk_darwin(v19);
  v247 = v224 - v22;
  __chkstk_darwin(v21);
  v24 = v224 - v23;
  v251 = &_swiftEmptyArrayStorage;
  v25 = OBJC_IVAR___NetworkInfoDiagnosticExtension_logger;

  v249 = v25;
  v26 = sub_10000D1AC();
  v27 = sub_10000D3CC();

  v28 = os_log_type_enabled(v26, v27);
  v248 = v2;
  v236 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v262 = v30;
    *v29 = 136315138;
    v264 = a1;

    sub_100009340(&qword_100018868, &qword_10000DF20);
    v31 = sub_10000D26C();
    v33 = sub_100008CF0(v31, v32, &v262);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "incoming parameters: %s", v29, 0xCu);
    sub_100009298(v30);
  }

  if (!a1)
  {
    __break(1u);
  }

  v264 = sub_10000D23C();
  v265 = v34;
  sub_10000D46C();
  if (a1[2] && (v35 = sub_100009420(&v262), (v36 & 1) != 0))
  {
    sub_1000092E4(a1[7] + 32 * v35, &v264);
    sub_10000C6C8(&v262);
    if (swift_dynamicCast())
    {
      v37 = v252 ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10000C6C8(&v262);
  }

  v37 = 1;
LABEL_10:
  v38 = sub_10000D1AC();
  v39 = sub_10000D3BC();
  v40 = os_log_type_enabled(v38, v39);
  v229 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v262 = v42;
    *v41 = 136315138;
    if (v37)
    {
      v43 = 28494;
    }

    else
    {
      v43 = 7562585;
    }

    if (v37)
    {
      v44 = 0xE200000000000000;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    v45 = sub_100008CF0(v43, v44, &v262);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "User provided consent: %s", v41, 0xCu);
    sub_100009298(v42);
  }

  v46 = objc_opt_self();
  v47 = [v46 defaultManager];
  v48 = [v47 temporaryDirectory];

  sub_10000CFEC();
  v234 = v46;
  v49 = [v46 defaultManager];
  v50 = [v49 temporaryDirectory];

  sub_10000CFEC();
  v51 = sub_10000B8D0();
  v53 = v52;
  v264 = 0xD00000000000001ALL;
  v265 = 0x800000010000E530;
  sub_10000D46C();
  if (!a1[2] || (v54 = sub_100009420(&v262), (v55 & 1) == 0))
  {
    sub_10000C6C8(&v262);
    goto LABEL_23;
  }

  sub_1000092E4(a1[7] + 32 * v54, &v264);
  sub_10000C6C8(&v262);
  if (!swift_dynamicCast())
  {
LABEL_23:
    LODWORD(v243) = 0;
    goto LABEL_24;
  }

  LODWORD(v243) = v252;
LABEL_24:
  v264 = 0xD00000000000001ALL;
  v265 = 0x800000010000E550;
  sub_10000D46C();
  if (!a1[2] || (v56 = sub_100009420(&v262), (v57 & 1) == 0))
  {
    sub_10000C6C8(&v262);
    goto LABEL_29;
  }

  sub_1000092E4(a1[7] + 32 * v56, &v264);
  sub_10000C6C8(&v262);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v230 = 0;
    goto LABEL_30;
  }

  v230 = v252;
LABEL_30:
  v252 = 0x6E656E6F706D6F63;
  v253 = 0xEB00000000444974;
  sub_10000D46C();
  v58 = a1[2];
  v246 = v24;
  v224[1] = v4;
  v235 = v51;
  if (!v58 || (v59 = sub_100009420(&v262), (v60 & 1) == 0))
  {
    v73 = v51;
    v74 = v250;
    sub_10000C6C8(&v262);
LABEL_36:
    v233 = OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath;
    v262 = v73;
    v263 = v53;
    v238 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v244 = v53;
    v237 = *(v4 + 104);
    v76 = v239;
    v75 = v240;
    v237(v239);
    v232 = sub_10000C614();
    v77 = v241;
    sub_10000D01C();
    v242 = *(v4 + 8);
    v242(v76, v75);
    v231 = *(v245 + 40);
    v231(v247, v77, v74);
    v262 = v235;
    v263 = v244;
    (v237)(v76, v238, v75);
    sub_10000D01C();
    v78 = v76;
    v71 = v242;
    v242(v78, v75);

    v231(v246, v77, v74);
    v79 = 0;
    v80 = 0;
    goto LABEL_37;
  }

  sub_1000092E4(a1[7] + 32 * v59, &v264);
  sub_10000C6C8(&v262);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = v51;
    v74 = v250;
    goto LABEL_36;
  }

  v61 = (v4 + 104);
  v62 = (v4 + 8);
  v231 = (v4 + 104);
  v232 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v244 = v253;
  v233 = v252;
  if (v243)
  {
    v262 = v252;
    v263 = v253;
    v238 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v63 = *v61;
    v64 = v239;
    v65 = v240;
    (*v61)(v239);
    v224[0] = sub_10000C614();

    v66 = v242;
    sub_10000D01C();
    v67 = *v62;
    (*v62)(v64, v65);
    v262 = v235;
    v263 = v53;
    v68 = v238;
    v237 = v63;
    (v63)(v64, v238, v65);
    v69 = v68;
    v70 = v241;
    sub_10000D01C();
    v67(v64, v65);
    v71 = v67;
    v72 = v245;
    (*(v245 + 8))(v66, v250);
  }

  else
  {
    v262 = v51;
    v263 = v53;
    v69 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v64 = v239;
    v65 = v240;
    v237 = *v61;
    (v237)(v239, enum case for URL.DirectoryHint.inferFromPath(_:), v240);
    sub_10000C614();

    v70 = v241;
    sub_10000D01C();
    v149 = *v62;
    (*v62)(v64, v65);
    v71 = v149;

    v72 = v245;
  }

  v242 = *(v72 + 40);
  v150 = v250;
  (v242)(v247, v70, v250);
  v151 = v70;
  v80 = v244;
  v262 = v233;
  v263 = v244;
  v238 = v69;
  (v237)(v64, v69, v65);
  sub_10000C614();
  sub_10000D01C();
  (v71)(v64, v65);

  (v242)(v246, v151, v150);
  v79 = v233;
LABEL_37:
  v81 = sub_10000D1AC();
  v82 = sub_10000D3BC();
  v83 = os_log_type_enabled(v81, v82);
  v233 = v79;
  v242 = v71;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v262 = v85;
    *v84 = 136315394;
    if (v80)
    {
      v86 = v80;
    }

    else
    {
      v79 = 0x6E776F6E6B6E55;
      v86 = 0xE700000000000000;
    }

    v87 = sub_100008CF0(v79, v86, &v262);

    *(v84 + 4) = v87;
    *(v84 + 12) = 1024;
    *(v84 + 14) = v243;
    _os_log_impl(&_mh_execute_header, v81, v82, "Component %s requested snapshot: %{BOOL}d", v84, 0x12u);
    sub_100009298(v85);
  }

  v88 = v247;
  v89 = sub_10000D1AC();
  v90 = sub_10000D3CC();
  v91 = os_log_type_enabled(v89, v90);
  v244 = v80;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    *v92 = 136315394;
    swift_beginAccess();
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v93 = sub_10000D4FC();
    v95 = sub_100008CF0(v93, v94, &v262);

    *(v92 + 4) = v95;
    v80 = v244;
    *(v92 + 12) = 2080;
    swift_beginAccess();
    v96 = sub_10000D4FC();
    v98 = sub_100008CF0(v96, v97, &v262);

    *(v92 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v89, v90, "working dir: %s bundleWorkingDir: %s", v92, 0x16u);
    swift_arrayDestroy();
  }

  v99 = v245;
  v100 = v236;
  v101 = v243;
  if (!v80)
  {
    v101 = 0;
  }

  if (v101 == 1)
  {
    v102 = v246;
    swift_beginAccess();
    (*(v99 + 16))(v100, v102, v250);
    v103 = sub_10000613C(v100, v230);
    (*(v99 + 8))(v100, v250);
  }

  else
  {
    v103 = &_swiftEmptyArrayStorage;
  }

  v104 = sub_10000D1AC();
  v105 = sub_10000D3CC();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v262 = v107;
    *v106 = 136315138;
    swift_beginAccess();
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v108 = sub_10000D4FC();
    v110 = sub_100008CF0(v108, v109, &v262);

    *(v106 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v104, v105, "Creating working dir %s", v106, 0xCu);
    sub_100009298(v107);
  }

  v111 = [v234 defaultManager];
  swift_beginAccess();
  sub_10000CF8C();
  v112 = sub_10000D20C();

  v264 = 0;
  v113 = [v111 createDirectoryAtPath:v112 withIntermediateDirectories:1 attributes:0 error:&v264];

  v114 = v264;
  v115 = v244;
  if (!v113)
  {
    v126 = v264;

    sub_10000CF4C();

    swift_willThrow();
    swift_errorRetain();
    v127 = sub_10000D1AC();
    v128 = sub_10000D3DC();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = v88;
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v264 = v132;
      *v129 = 136315394;
      v133 = sub_10000CF8C();
      v135 = sub_100008CF0(v133, v134, &v264);

      *(v129 + 4) = v135;
      *(v129 + 12) = 2112;
      swift_errorRetain();
      v136 = _swift_stdlib_bridgeErrorToNSError();
      *(v129 + 14) = v136;
      *v131 = v136;
      _os_log_impl(&_mh_execute_header, v127, v128, "Failed to create temporary directory %s: %@", v129, 0x16u);
      sub_10000C4A0(v131, &qword_1000187D0, &qword_10000DE70);

      sub_100009298(v132);

      v137 = *(v245 + 8);
      v137(v130, v250);
    }

    else
    {

      v137 = *(v245 + 8);
      v137(v88, v250);
    }

LABEL_60:
    v147 = 0;
    goto LABEL_61;
  }

  v116 = objc_allocWithZone(sub_10000D14C());
  v117 = v114;
  v118 = [v116 init];
  sub_10000D13C();
  sub_10000CFFC();
  sub_10000D12C();
  v119 = sub_10000CFFC();
  v264 = 0xD000000000000011;
  v265 = 0x800000010000E570;
  v260 = v119;
  v261 = v120;
  v260 = sub_10000D2FC();
  v261 = v121;
  sub_10000D29C();
  v123 = v260;
  v122 = v261;
  v124 = v248;
  v125 = sub_100005328(v118, v260, v261);
  v236 = v123;
  v138 = v245;
  if (v243)
  {
    v243 = v125;

    swift_beginAccess();
    v139 = v227;
    sub_10000CFCC();
    v140 = sub_1000037E8(v139);
    v141 = v233;
    if (v140)
    {
      v142 = sub_10000CFFC();
      v143 = v124;
      v145 = v144;
      v146 = swift_allocObject();
      v146[2] = v142;
      v146[3] = v145;
      v146[4] = v143;
      v143;
      sub_10000C810(v146);
      v220 = v219;

      v221 = v245;
      if (v220)
      {
        sub_100007314(v246, v103);
      }

      v222 = v227;
      sub_100004464(v227);

      v137 = *(v221 + 8);
      v223 = v250;
      v137(v222, v250);

      v137(v88, v223);
    }

    else
    {

      v174 = sub_10000D1AC();
      v175 = sub_10000D3BC();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v260 = v177;
        *v176 = 136315138;
        v178 = v245;
        if (v244)
        {
          v179 = v244;
        }

        else
        {
          v141 = 0x6E776F6E6B6E55;
          v179 = 0xE700000000000000;
        }

        v180 = sub_100008CF0(v141, v179, &v260);

        *(v176 + 4) = v180;
        _os_log_impl(&_mh_execute_header, v174, v175, "Snapshot already in progress for component %s. Skipping this request.", v176, 0xCu);
        sub_100009298(v177);

        v137 = *(v178 + 8);
        v181 = v250;
        v137(v227, v250);

        v137(v88, v181);
      }

      else
      {

        v137 = *(v245 + 8);
        v187 = v250;
        v137(v227, v250);

        v137(v88, v187);
      }
    }

    goto LABEL_60;
  }

  v152 = v125;
  v235 = v118;

  v153 = *(v138 + 16);
  v154 = v228;
  v153(v228, &v124[OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath], v250);
  if (v115)
  {
    v243 = v152;
    v264 = v233;
    v265 = v115;
    v234 = v153;
    v156 = v239;
    v155 = v240;
    (v237)(v239, v238, v240);
    sub_10000C614();

    sub_10000D01C();
    v242(v156, v155);
    v157 = v245;
    v158 = *(v245 + 8);
    v159 = v250;
    v158(v154, v250);

    (*(v157 + 32))(v154, v241, v159);
    sub_10000CFFC();
    v160 = v226;
    sub_10000CFAC();

    v161 = v225;
    v234(v225, v160, v159);
    v162 = sub_10000D1AC();
    v163 = sub_10000D3CC();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v248 = v158;
      v165 = v164;
      v249 = swift_slowAlloc();
      v264 = v249;
      *v165 = 136315138;
      sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v166 = v250;
      v167 = sub_10000D4FC();
      v169 = v168;
      v170 = v161;
      v171 = v248;
      (v248)(v170, v166);
      v172 = sub_100008CF0(v167, v169, &v264);
      v88 = v247;

      *(v165 + 4) = v172;
      _os_log_impl(&_mh_execute_header, v162, v163, "bundle root URL: %s", v165, 0xCu);
      sub_100009298(v249);

      v173 = v235;
    }

    else
    {

      v158(v161, v250);
      v173 = v235;
      v171 = v158;
    }

    sub_10000CFFC();
    v183 = objc_allocWithZone(DEAttachmentItem);
    v184 = sub_10000D20C();

    v185 = [v183 initWithPath:v184];

    v138 = v245;
    if (v185)
    {
      sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
      isa = sub_10000D40C(0).super.super.isa;
      [v185 setDeleteOnAttach:isa];

      sub_10000D30C();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10000D33C();
      }

      sub_10000D35C();
      v171(v226, v250);
      v182 = v251;
    }

    else
    {
      v171(v226, v250);
      v182 = &_swiftEmptyArrayStorage;
    }

    v152 = v243;
  }

  else
  {
    v182 = &_swiftEmptyArrayStorage;
    v173 = v235;
  }

  if (v152)
  {
    v188 = v173;
    v189 = v236;
    v254 = v236;
    v255 = v122;
    v190 = v152;
    v191 = sub_10000D16C();
    v193 = v192;
    v248 = v191;
    v256 = v191;
    v257 = v192;
    v194 = v190;
    v195 = sub_10000D15C();
    v197 = v196;
    v249 = v195;
    v258 = v195;
    v259 = v196;
    if (!v122)
    {
      goto LABEL_90;
    }

    v198 = HIBYTE(v122) & 0xF;
    if ((v122 & 0x2000000000000000) == 0)
    {
      v198 = v189 & 0xFFFFFFFFFFFFLL;
    }

    if (v198)
    {
      v199 = objc_allocWithZone(DEAttachmentItem);

      v200 = sub_10000D20C();

      v201 = [v199 initWithPath:v200];

      v202 = v235;
      v138 = v245;
      v203 = v194;
      if (v201)
      {
        sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
        v204 = sub_10000D40C(1).super.super.isa;
        [v201 setDeleteOnAttach:v204];

        v205 = v201;
        sub_10000D30C();
        if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10000D33C();
        }

        sub_10000D35C();

        v182 = v251;
      }
    }

    else
    {
LABEL_90:
      v202 = v188;
      v203 = v190;
    }

    if (!v193)
    {
      goto LABEL_99;
    }

    v206 = HIBYTE(v193) & 0xF;
    if ((v193 & 0x2000000000000000) == 0)
    {
      v206 = v248 & 0xFFFFFFFFFFFFLL;
    }

    if (v206)
    {
      v207 = objc_allocWithZone(DEAttachmentItem);

      v208 = sub_10000D20C();

      v209 = [v207 initWithPath:v208];

      v173 = v202;
      if (v209)
      {
        sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
        v210 = sub_10000D40C(1).super.super.isa;
        [v209 setDeleteOnAttach:v210];

        v211 = v209;
        sub_10000D30C();
        if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10000D33C();
        }

        sub_10000D35C();

        v182 = v251;
      }
    }

    else
    {
LABEL_99:
      v173 = v202;
    }

    if (v197)
    {
      v212 = HIBYTE(v197) & 0xF;
      if ((v197 & 0x2000000000000000) == 0)
      {
        v212 = v249 & 0xFFFFFFFFFFFFLL;
      }

      if (v212)
      {
        v213 = objc_allocWithZone(DEAttachmentItem);

        v214 = sub_10000D20C();

        v215 = [v213 initWithPath:v214];

        v138 = v245;
        if (v215)
        {
          sub_10000CB24(0, &qword_100018860, NSNumber_ptr);
          v216 = sub_10000D40C(1).super.super.isa;
          [v215 setDeleteOnAttach:v216];

          v217 = v215;
          sub_10000D30C();
          if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10000D33C();
          }

          sub_10000D35C();

          v182 = v251;
        }
      }
    }

    sub_100009340(&qword_100018858, &qword_10000DF08);
    swift_arrayDestroy();
    v88 = v247;
  }

  else
  {

    v203 = 0;
  }

  v147 = sub_100003534(v182);

  v137 = *(v138 + 8);
  v218 = v250;
  v137(v228, v250);

  v137(v88, v218);
LABEL_61:
  v137(v246, v250);
  return v147;
}

char *sub_100003534(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10000D4CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100009604(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10000D4AC();
        sub_10000CB24(0, &qword_100018878, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100009604((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000CB6C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000CB24(0, &qword_100018878, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100009604((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000CB6C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000037E8(uint64_t a1)
{
  v2 = sub_10000D25C();
  v96 = *(v2 - 8);
  v97 = v2;
  __chkstk_darwin(v2);
  v95 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000D02C();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = __chkstk_darwin(v4);
  v94 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v92 - v7;
  v9 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  __chkstk_darwin(v9 - 8);
  v11 = &v92 - v10;
  v12 = sub_10000D0AC();
  v13 = *(v12 - 8);
  v101 = v12;
  v102 = v13;
  v14 = __chkstk_darwin(v12);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v92 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  sub_10000CFFC();
  v20 = sub_10000D20C();

  v21 = [v19 fileExistsAtPath:v20];

  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = [v18 defaultManager];
  v93 = a1;
  sub_10000CFFC();
  v23 = sub_10000D20C();

  v105[0] = 0;
  v24 = [v22 attributesOfItemAtPath:v23 error:v105];

  v25 = v105[0];
  if (!v24)
  {
    v83 = v105[0];
    sub_10000CF4C();

    swift_willThrow();
    goto LABEL_21;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_10000C18C(&qword_100018850, type metadata accessor for FileAttributeKey, &unk_10000E294);
  v26 = sub_10000D1FC();
  v27 = v25;

  if (*(v26 + 16) && (v28 = sub_10000938C(NSFileCreationDate), (v29 & 1) != 0))
  {
    sub_1000092E4(*(v26 + 56) + 32 * v28, v105);

    v30 = v101;
    v31 = swift_dynamicCast();
    v32 = v102;
    (*(v102 + 56))(v11, v31 ^ 1u, 1, v30);
    if ((*(v32 + 48))(v11, 1, v30) != 1)
    {
      v33 = v102;
      (*(v102 + 32))(v17, v11, v30);
      v34 = v98;
      sub_10000D09C();
      sub_10000D04C();
      v36 = v35;
      v37 = *(v33 + 8);
      v37(v34, v30);
      if (v36 <= 120.0)
      {
        v37(v17, v30);
        return 0;
      }

      v38 = sub_10000D1AC();
      v39 = sub_10000D3DC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing stale lock file older than 2 minutes", v40, 2u);
      }

      v41 = [v18 defaultManager];
      sub_10000CFFC();
      v42 = sub_10000D20C();

      v105[0] = 0;
      v43 = [v41 removeItemAtPath:v42 error:v105];

      if ((v43 & 1) == 0)
      {
        v91 = v105[0];
        sub_10000CF4C();

        swift_willThrow();
        v37(v17, v101);
        goto LABEL_21;
      }

      v44 = v105[0];
      v37(v17, v101);
      goto LABEL_13;
    }
  }

  else
  {

    (*(v102 + 56))(v11, 1, 1, v101);
  }

  sub_10000C4A0(v11, &qword_1000187D8, &qword_10000DE78);
LABEL_13:
  a1 = v93;
LABEL_14:
  sub_10000CFDC();
  v45 = [v18 defaultManager];
  sub_10000CFFC();
  v46 = sub_10000D20C();

  v47 = [v45 fileExistsAtPath:v46];

  v48 = v99;
  if (v47)
  {
LABEL_17:
    v105[0] = 0;
    v105[1] = 0xE000000000000000;
    sub_10000D49C(57);
    v106._object = 0x800000010000E4C0;
    v106._countAndFlagsBits = 0xD000000000000011;
    sub_10000D2AC(v106);
    v55 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    v56 = v98;
    sub_10000D09C();
    isa = sub_10000D06C().super.isa;
    (*(v102 + 8))(v56, v101);
    v58 = [v55 stringFromDate:isa];

    v59 = sub_10000D23C();
    v61 = v60;

    v107._countAndFlagsBits = v59;
    v107._object = v61;
    sub_10000D2AC(v107);

    v108._countAndFlagsBits = 0x64697022090A2C22;
    v108._object = 0xEB00000000203A22;
    sub_10000D2AC(v108);
    v62 = objc_opt_self();
    v63 = [v62 processInfo];
    LODWORD(isa) = [v63 processIdentifier];

    v104 = isa;
    v109._countAndFlagsBits = sub_10000D4FC();
    sub_10000D2AC(v109);

    v110._countAndFlagsBits = 0xD000000000000014;
    v110._object = 0x800000010000E4E0;
    sub_10000D2AC(v110);
    v64 = [v62 processInfo];
    v65 = [v64 processName];

    v66 = sub_10000D23C();
    v68 = v67;

    v111._countAndFlagsBits = v66;
    v111._object = v68;
    sub_10000D2AC(v111);

    v112._countAndFlagsBits = 8194594;
    v112._object = 0xE300000000000000;
    sub_10000D2AC(v112);
    v69 = v95;
    sub_10000D24C();
    sub_10000C614();
    sub_10000D42C();
    (*(v96 + 8))(v69, v97);

    v70 = v94;
    v71 = a1;
    v72 = v100;
    (*(v48 + 16))(v94, v71, v100);
    v73 = sub_10000D1AC();
    v74 = sub_10000D3CC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v105[0] = v76;
      *v75 = 136315138;
      v77 = sub_10000CFFC();
      v79 = v78;
      v103 = v8;
      v80 = *(v48 + 8);
      v80(v70, v72);
      v81 = sub_100008CF0(v77, v79, v105);

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v73, v74, "Successfully acquired snapshot lock at %s", v75, 0xCu);
      sub_100009298(v76);

      v80(v103, v72);
    }

    else
    {

      v90 = *(v48 + 8);
      v90(v70, v72);
      v90(v8, v72);
    }

    return 1;
  }

  v49 = [v18 defaultManager];
  sub_10000CFBC(v50);
  v52 = v51;
  v105[0] = 0;
  v53 = [v49 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v105];

  if (v53)
  {
    v54 = v105[0];
    goto LABEL_17;
  }

  v82 = v105[0];
  sub_10000CF4C();

  swift_willThrow();
  (*(v48 + 8))(v8, v100);
LABEL_21:
  swift_errorRetain();
  v84 = sub_10000D1AC();
  v85 = sub_10000D3DC();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138412290;
    swift_errorRetain();
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v86 + 4) = v88;
    *v87 = v88;
    _os_log_impl(&_mh_execute_header, v84, v85, "Failed to acquire snapshot lock: %@", v86, 0xCu);
    sub_10000C4A0(v87, &qword_1000187D0, &qword_10000DE70);
  }

  else
  {
  }

  return 0;
}

void sub_100004464(uint64_t a1)
{
  v2 = sub_10000D02C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v36 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  sub_10000CFFC();
  v11 = sub_10000D20C();

  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [v9 defaultManager];
    sub_10000CFFC();
    v14 = sub_10000D20C();

    v37 = 0;
    v15 = [v13 removeItemAtPath:v14 error:&v37];

    v16 = v37;
    if (v15)
    {
      (*(v3 + 16))(v8, a1, v2);
      v17 = v16;
      v18 = sub_10000D1AC();
      v19 = sub_10000D3DC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136315138;
        v22 = sub_10000CFFC();
        v24 = v23;
        (*(v3 + 8))(v8, v2);
        v25 = sub_100008CF0(v22, v24, &v37);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Successfully released snapshot lock at %s", v20, 0xCu);
        sub_100009298(v21);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
      }
    }

    else
    {
      v26 = v37;
      sub_10000CF4C();

      swift_willThrow();
      (*(v3 + 16))(v6, a1, v2);
      swift_errorRetain();
      v27 = sub_10000D1AC();
      v28 = sub_10000D3DC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        v37 = v36[0];
        *v29 = 136315394;
        v31 = sub_10000CFFC();
        v33 = v32;
        (*(v3 + 8))(v6, v2);
        v34 = sub_100008CF0(v31, v33, &v37);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2112;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 14) = v35;
        *v30 = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to release snapshot lock at %s: %@", v29, 0x16u);
        sub_10000C4A0(v30, &qword_1000187D0, &qword_10000DE70);

        sub_100009298(v36[0]);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

uint64_t sub_10000493C()
{
  v1 = *(*v0 + 88);
  sub_100008288(&qword_100018728, qword_10000DE18);
  sub_10000D58C();
  v2 = sub_10000D41C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100004A34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_100004B28;

  return v10(v7 + 2);
}

uint64_t sub_100004B28()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100004CB4;
  }

  else
  {
    v2 = sub_100004C3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004C3C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_10000C5F0(v2, v3);
  sub_10000D3FC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100004CB4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_10000C5F0(v2, v3);
  sub_10000D3FC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100004D34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_100004E28;

  return v10(v7 + 6);
}

uint64_t sub_100004E28()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100004FB8;
  }

  else
  {
    v2 = sub_100004F3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 48);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_10000CB00(v2, v3);
  sub_10000D3FC();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004FB8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[5];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_10000CB00(v2, v3);
  sub_10000D3FC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100005038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009340(&qword_100018838, &qword_10000DED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C430(a3, v25 - v10);
  v12 = sub_10000D38C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C4A0(v11, &qword_100018838, &qword_10000DED0);
  }

  else
  {
    sub_10000D37C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000D36C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000D27C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000C4A0(a3, &qword_100018838, &qword_10000DED0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C4A0(a3, &qword_100018838, &qword_10000DED0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100005328(void *a1, uint64_t a2, unint64_t a3)
{
  v48 = a3;
  v46 = a2;
  v6 = sub_10000D02C();
  v47 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_10000CEBC();
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = a1;
  v16 = v3;
  v17 = a1;
  sub_10000BF94(v15);
  v19 = v18;

  if (!v4)
  {
    v44 = v11;
    v45 = v14;
    v43 = v9;
    if (v19)
    {
      v41 = v6;
      v42 = v16;
      v20 = sub_10000D1AC();
      v21 = sub_10000D3BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Completed Assessment", v22, 2u);
      }

      sub_10000CEFC();
      swift_allocObject();
      v23 = sub_10000CEEC();
      sub_100009340(&qword_100018810, &qword_10000DEC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10000DDA0;
      sub_10000CE8C();
      sub_10000CE9C();
      sub_10000CEAC();
      v50 = v24;
      sub_10000C18C(&qword_100018818, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
      sub_100009340(&qword_100018820, &qword_10000DEC8);
      sub_10000C1D4();
      sub_10000D43C();
      sub_10000CECC();
      v50 = v19;
      sub_10000D17C();
      sub_10000C18C(&qword_100018830, &type metadata accessor for NetworkInfoResults, &protocol conformance descriptor for NetworkInfoResults);
      v28 = sub_10000CEDC();
      v49 = v29;
      v45 = v23;

      v30 = sub_10000D1AC();
      v31 = sub_10000D3CC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v50 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100008CF0(v46, v48, &v50);
        _os_log_impl(&_mh_execute_header, v30, v31, "Writing assessment to %s", v32, 0xCu);
        sub_100009298(v33);
      }

      v34 = v41;
      v35 = v47;
      v36 = v44;
      sub_10000CFAC();
      sub_10000D03C();
      v37 = *(v35 + 8);
      v37(v36, v34);
      v38 = v43;
      sub_10000CFAC();
      sub_1000078FC(v38);
      v37(v38, v34);
      sub_10000C238(v28, v49);
    }

    else
    {
      v25 = sub_10000D1AC();
      v26 = sub_10000D3DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No results from NetworkInfoAssessment", v27, 2u);
      }
    }
  }

  return v19;
}

uint64_t sub_100005940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100005964, 0, 0);
}

uint64_t sub_100005964(uint64_t a1)
{
  v2 = sub_10000D1AC();
  v3 = sub_10000D3BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Assessment", v4, 2u);
  }

  v5 = v1[4];

  v6 = objc_allocWithZone(sub_10000D10C());
  v7 = v5;
  v1[5] = sub_10000D0FC();
  v10 = (&async function pointer to dispatch thunk of NetworkInfoAssessment.run() + async function pointer to dispatch thunk of NetworkInfoAssessment.run());
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_100005AAC;

  return v10();
}

uint64_t sub_100005AAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100005C44;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_100005BD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005BD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100005C44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100005CCC, 0, 0);
}

uint64_t sub_100005CCC()
{
  v0[6] = [objc_allocWithZone(sub_10000D11C()) init];
  v5 = (&async function pointer to dispatch thunk of NetworkInfoSnapshotter.run(workingDir:) + async function pointer to dispatch thunk of NetworkInfoSnapshotter.run(workingDir:));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100005D94;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_100005D94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1000060D8;
  }

  else
  {
    v4 = sub_100005EA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005EA8(uint64_t a1)
{
  v21 = v1;
  if (*(v1 + 64))
  {

    v2 = sub_10000D1AC();
    v3 = sub_10000D3CC();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 48);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = sub_10000D32C();
      v10 = v9;

      v11 = sub_100008CF0(v8, v10, &v20);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "snapshot results: %s", v6, 0xCu);
      sub_100009298(v7);
    }

    else
    {
    }

    v17 = 1;
  }

  else
  {
    v12 = sub_10000D1AC();
    v13 = sub_10000D3DC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 48);
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No results from Snapshotter", v16, 2u);
    }

    v17 = 0;
  }

  **(v1 + 16) = v17;
  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1000060D8()
{
  v1 = *(v0 + 8);

  return v1();
}

void *sub_10000613C(char *a1, int a2)
{
  v103 = a2;
  v3 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  __chkstk_darwin(v3 - 8);
  v111 = &v98 - v4;
  v112 = sub_10000D0AC();
  v113 = *(v112 - 8);
  v5 = __chkstk_darwin(v112);
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v110 = &v98 - v8;
  __chkstk_darwin(v7);
  v118 = &v98 - v9;
  v10 = sub_100009340(&qword_1000187E0, &qword_10000DE80);
  __chkstk_darwin(v10 - 8);
  v119 = &v98 - v11;
  v134 = sub_10000CF3C();
  v120 = *(v134 - 8);
  v12 = __chkstk_darwin(v134);
  v114 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v102 = &v98 - v15;
  __chkstk_darwin(v14);
  v117 = &v98 - v16;
  v17 = sub_100009340(&qword_1000187E8, &qword_10000DE88);
  __chkstk_darwin(v17 - 8);
  v19 = &v98 - v18;
  v106 = sub_10000CF6C();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v136 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000D02C();
  v125 = *(v21 - 8);
  v135 = v125;
  v22 = __chkstk_darwin(v21);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v128 = &v98 - v26;
  __chkstk_darwin(v25);
  v28 = &v98 - v27;
  v137 = 0;
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  sub_10000CF8C();
  v31 = sub_10000D20C();

  v32 = [v30 fileExistsAtPath:v31 isDirectory:&v137];

  if ((v32 & 1) == 0)
  {
    v69 = v135;
    v135[2](v28, a1, v21);
    v70 = sub_10000D1AC();
    v71 = sub_10000D3CC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v138 = v73;
      *v72 = 136315138;
      sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = sub_10000D4FC();
      v76 = v75;
      (v69[1])(v28, v21);
      v77 = sub_100008CF0(v74, v76, &v138);

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "Directory %s does not exist, no previous snapshots", v72, 0xCu);
      sub_100009298(v73);
    }

    else
    {

      (v69[1])(v28, v21);
    }

    return &_swiftEmptyArrayStorage;
  }

  v33 = v120;
  v104 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v126 = [v29 defaultManager];
  sub_10000CF8C();
  v34 = v128;
  sub_10000CFAC();

  v133 = sub_100009340(&qword_1000187F0, &qword_10000DE90);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10000DDB0;
  *(v35 + 32) = NSURLIsDirectoryKey;
  *(v35 + 40) = NSURLIsReadableKey;
  *(v35 + 48) = NSURLCreationDateKey;
  *(v35 + 56) = NSURLCanonicalPathKey;
  v132 = NSURLIsDirectoryKey;
  v131 = NSURLIsReadableKey;
  v130 = NSURLCreationDateKey;
  v129 = NSURLCanonicalPathKey;
  v36 = v126;
  v37 = sub_10000D3AC();

  v38 = v135[1];
  ++v135;
  v128 = v38;
  (v38)(v34, v21);
  if (!v37)
  {
    v42 = &_swiftEmptyArrayStorage;
    v43 = v116;
    v39 = v134;
    goto LABEL_32;
  }

  v35 = v33;
  v101 = v37;
  sub_10000D39C();
  sub_10000CF5C();
  v39 = v134;
  if (!v139)
  {
    v42 = &_swiftEmptyArrayStorage;
    v43 = v116;
    goto LABEL_31;
  }

  v40 = v125;
  v41 = (v125 + 7);
  v125 += 4;
  v124 = NSURLNameKey;
  v123 = (v33 + 56);
  v108 = (v33 + 32);
  v107 = (v33 + 8);
  v99 = (v33 + 16);
  v42 = &_swiftEmptyArrayStorage;
  v35 = &type metadata for Any;
  v122 = xmmword_10000DDC0;
  v43 = v116;
  v44 = v119;
  v127 = v19;
  v126 = v40 + 7;
  v121 = v21;
  do
  {
    v100 = v42;
    while (1)
    {
      v45 = swift_dynamicCast();
      v46 = *v41;
      if (v45)
      {
        break;
      }

      v46(v19, 1, 1, v21);
      sub_10000C4A0(v19, &qword_1000187E8, &qword_10000DE88);
LABEL_7:
      sub_10000CF5C();
      if (!v139)
      {
        v42 = v100;
        goto LABEL_31;
      }
    }

    v46(v19, 0, 1, v21);
    (*v125)(v24, v19, v21);
    inited = swift_initStackObject();
    *(inited + 16) = v122;
    v49 = v131;
    v48 = v132;
    *(inited + 32) = v132;
    v50 = v24;
    v51 = v130;
    *(inited + 40) = v49;
    *(inited + 48) = v51;
    v52 = v124;
    v53 = v129;
    *(inited + 56) = v124;
    *(inited + 64) = v53;
    v54 = v48;
    v55 = v49;
    v56 = v51;
    v24 = v50;
    v57 = v53;
    v58 = v52;
    sub_10000BCA0(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10000CF9C();
    if (v43)
    {

      v59 = v50;
      v21 = v121;
      (v128)(v59, v121);
      v39 = v134;
      (*v123)(v44, 1, 1, v134);
      sub_10000C4A0(v44, &qword_1000187E0, &qword_10000DE80);
      v43 = 0;
LABEL_13:
      v19 = v127;
      v41 = v126;
      v35 = &type metadata for Any;
      goto LABEL_7;
    }

    v21 = v121;

    v39 = v134;
    (*v123)(v44, 0, 1, v134);
    v60 = *v108;
    v61 = v117;
    (*v108)();
    v62 = sub_10000CF0C();
    if (v62 == 2)
    {
      (*v107)(v61, v39);
      (v128)(v24, v21);
      v44 = v119;
      goto LABEL_13;
    }

    v41 = v126;
    if (v62)
    {
      (*v99)(v102, v61, v39);
      v63 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v127;
      v116 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_100008B18(0, v63[2] + 1, 1, v63);
      }

      v66 = v63[2];
      v65 = v63[3];
      v98 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v100 = sub_100008B18((v65 > 1), v66 + 1, 1, v63);
      }

      else
      {
        v100 = v63;
      }

      v67 = v120;
      v39 = v134;
      (*(v120 + 8))(v61, v134);
      (v128)(v24, v21);
      v68 = v100;
      v100[2] = v98;
      (v60)(v68 + v104 + *(v67 + 72) * v66, v102, v39);
      v43 = v116;
    }

    else
    {
      (*v107)(v61, v39);
      (v128)(v24, v21);
      v19 = v127;
    }

    sub_10000CF5C();
    v44 = v119;
    v42 = v100;
    v35 = &type metadata for Any;
  }

  while (v139);
LABEL_31:
  (*(v105 + 8))(v136, v106);

LABEL_32:
  v138 = v42;

  sub_100009AD8(&v138);
  v79 = v112;
  v80 = v113;
  v81 = v115;
  v82 = v111;
  if (v43)
  {

    __break(1u);
    return result;
  }

  v83 = v138;
  sub_10000D09C();
  if (!*(v83 + 16))
  {
    __break(1u);
    goto LABEL_54;
  }

  v84 = v39;
  v39 = (v83 + v104);
  (*(v120 + 16))(v114, v83 + v104, v84);
  sub_10000CF1C();
  if ((*(v80 + 48))(v82, 1, v79) == 1)
  {
    sub_10000C4A0(v82, &qword_1000187D8, &qword_10000DE78);
    goto LABEL_42;
  }

  (*(v80 + 32))(v110, v82, v79);
  sub_10000D05C();
  if (sub_10000D08C() & 1) == 0 || (v103)
  {
    v91 = *(v80 + 8);
    v91(v109, v79);
    v91(v110, v79);
LABEL_42:
    v92 = *(v83 + 16);
    if (v92 >= 0xA)
    {
      v80 = (2 * v92) | 1;

      v35 = 9;
      v42 = v83;
    }

    else
    {
      v35 = 0;
      v39 = &_swiftEmptyArrayStorage + v104;
      v42 = &_swiftEmptyArrayStorage;
      v80 = 1;
    }

    sub_10000D51C();
    swift_unknownObjectRetain_n();
    v93 = swift_dynamicCastClass();
    if (!v93)
    {
      swift_unknownObjectRelease();
      v93 = &_swiftEmptyArrayStorage;
    }

    v94 = v93[2];

    if (v94 == (v80 >> 1) - v35)
    {
      v78 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v95 = v113;
      if (v78)
      {
LABEL_51:
        (*(v120 + 8))(v114, v134);
        (*(v95 + 8))(v118, v79);

        return v78;
      }

      v78 = &_swiftEmptyArrayStorage;
LABEL_50:
      swift_unknownObjectRelease();
      goto LABEL_51;
    }

LABEL_54:
    swift_unknownObjectRelease();
    sub_100009464(v42, v39, v35, v80);
    v78 = v97;
    swift_unknownObjectRelease();
    v95 = v113;
    goto LABEL_50;
  }

  v85 = v81;
  v86 = sub_10000D1AC();
  v87 = sub_10000D3DC();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v86, v87, "Last snapshot occurred more recent than the minimumSnapshotInterval: %f. Skipping this invocation.", v88, 0xCu);
  }

  sub_1000082F4();
  v78 = swift_allocError();
  *v89 = 0xD000000000000013;
  v89[1] = 0x800000010000E4A0;
  swift_willThrow();
  v90 = *(v80 + 8);
  v90(v109, v79);
  v90(v110, v79);
  (*(v120 + 8))(v114, v134);
  v90(v118, v79);

  return v78;
}

void sub_100007314(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSFileManager) init];
  v4 = sub_10000CFFC();
  v6 = v5;
  v7 = type metadata accessor for NetworkInfoDiagnosticExtension.RMDashRFDelegate();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath];
  *v9 = v4;
  v9[1] = v6;
  v35.receiver = v8;
  v35.super_class = v7;
  v32 = objc_msgSendSuper2(&v35, "init");
  [v3 setDelegate:?];
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(sub_10000CF3C() - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v34 = *(v11 + 72);
    v33 = v3;
    do
    {
      v14 = sub_10000CF2C();
      if (v15)
      {
        v16 = v14;
        v17 = v15;

        v18 = sub_10000D1AC();
        v19 = sub_10000D3CC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v36 = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_100008CF0(v16, v17, &v36);
          _os_log_impl(&_mh_execute_header, v18, v19, "removing old snapshot %s", v20, 0xCu);
          sub_100009298(v21);
        }

        v22 = sub_10000D20C();
        v36 = 0;
        v23 = [v3 removeItemAtPath:v22 error:&v36];

        if (v23)
        {
          v13 = v36;
        }

        else
        {
          v24 = v36;
          sub_10000CF4C();

          swift_willThrow();

          swift_errorRetain();
          v25 = sub_10000D1AC();
          v26 = sub_10000D3DC();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v36 = v29;
            *v27 = 136315394;
            v30 = sub_100008CF0(v16, v17, &v36);

            *(v27 + 4) = v30;
            *(v27 + 12) = 2112;
            swift_errorRetain();
            v31 = _swift_stdlib_bridgeErrorToNSError();
            *(v27 + 14) = v31;
            *v28 = v31;
            _os_log_impl(&_mh_execute_header, v25, v26, "Failed to remove snapshot %s: %@", v27, 0x16u);
            sub_10000C4A0(v28, &qword_1000187D0, &qword_10000DE70);
            v3 = v33;

            sub_100009298(v29);
          }

          else
          {
          }
        }
      }

      v12 += v34;
      --v10;
    }

    while (v10);
  }
}

char *sub_1000078FC(uint64_t a1)
{
  v3 = sub_10000D02C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_10000D1AC();
  v8 = sub_10000D3CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v30[1] = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v30[0] = a1;
    v12 = v11;
    v33[0] = v11;
    *v10 = 136315138;
    sub_10000C18C(&qword_1000187C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_10000D4FC();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_100008CF0(v13, v15, v33);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Marking %s purgeable", v10, 0xCu);
    sub_100009298(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_10000CFFC();
  sub_10000D27C();

  v17 = sub_10000D1DC();

  if (v17 < 0)
  {
    strcpy(v33, "cannot open: ");
    HIWORD(v33[1]) = -4864;
    v26 = sub_10000D1EC();
    result = strerror(v26);
    if (result)
    {
      v35._countAndFlagsBits = sub_10000D2BC();
      sub_10000D2AC(v35);

      v27 = v33[0];
      v28 = v33[1];
      sub_1000082F4();
      swift_allocError();
      *v29 = v27;
      v29[1] = v28;
      return swift_willThrow();
    }
  }

  else
  {
    v32 = 66565;
    v31 = 0;
    v18 = [objc_opt_self() defaultManager];
    sub_10000CFFC();
    v19 = sub_10000D20C();

    v20 = [v18 fileExistsAtPath:v19 isDirectory:&v31];

    if (v20)
    {
      if (v31 == 1)
      {
        v32 |= 0x2000u;
      }
    }

    if (!ffsctl(v17, 0xC0084A44uLL, &v32, 0))
    {
      return close(v17);
    }

    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_10000D49C(18);

    v33[0] = 0xD000000000000010;
    v33[1] = 0x800000010000E480;
    v21 = sub_10000D1EC();
    result = strerror(v21);
    if (result)
    {
      v34._countAndFlagsBits = sub_10000D2BC();
      sub_10000D2AC(v34);

      v23 = v33[0];
      v24 = v33[1];
      sub_1000082F4();
      swift_allocError();
      *v25 = v23;
      v25[1] = v24;
      swift_willThrow();
      return close(v17);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100007D68()
{
  v1 = v0;
  v2 = sub_100009340(&qword_1000187E8, &qword_10000DE88);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_10000D1BC();
  sub_10000D19C();
  sub_10000D18C();
  sub_10000D00C();

  v5 = sub_10000D02C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_basePath], v4, v5);
    *&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_maxSnapshotsPerBundle] = 10;
    *&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_minimumSnapshotInterval] = 0x404E000000000000;
    v8 = &v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName];
    strcpy(&v1[OBJC_IVAR___NetworkInfoDiagnosticExtension_lockFileName], ".snapshot_lock");
    v8[15] = -18;
    v9 = type metadata accessor for NetworkInfoDiagnosticExtension(0);
    v10.receiver = v1;
    v10.super_class = v9;
    return objc_msgSendSuper2(&v10, "init");
  }

  return result;
}

id sub_100007F78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for NetworkInfoDiagnosticExtension(uint64_t a1)
{
  result = qword_100018978;
  if (!qword_100018978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000080C4(uint64_t a1, uint64_t a2)
{
  result = sub_10000D1CC();
  if (v3 <= 0x3F)
  {
    result = sub_10000D02C();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000081AC(uint64_t a1)
{
  sub_100008288(&qword_100018728, qword_10000DE18);
  sub_10000D58C();
  result = sub_10000D41C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008288(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000082F4()
{
  result = qword_100018A08[0];
  if (!qword_100018A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100018A08);
  }

  return result;
}

uint64_t sub_100008354(uint64_t a1, id *a2)
{
  result = sub_10000D21C();
  *a2 = 0;
  return result;
}

uint64_t sub_1000083D0(uint64_t a1, id *a2)
{
  v3 = sub_10000D22C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100008454@<X0>(uint64_t *a2@<X8>)
{
  sub_10000D23C();
  v3 = sub_10000D20C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000849C()
{
  sub_10000D23C();
  v0 = sub_10000D2EC();

  return v0;
}

uint64_t sub_1000084DC(uint64_t a1)
{
  sub_10000D23C();
  sub_10000D28C();
}

Swift::Int sub_100008534(uint64_t a1)
{
  sub_10000D23C();
  sub_10000D56C();
  sub_10000D28C();
  v1 = sub_10000D57C();

  return v1;
}

uint64_t sub_1000085AC(void *a1, uint64_t *a2)
{
  v2 = sub_10000D23C();
  v4 = v3;
  if (v2 == sub_10000D23C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10000D50C();
  }

  return v7 & 1;
}

uint64_t sub_100008634(uint64_t a1)
{
  v2 = sub_10000C18C(&qword_100018850, type metadata accessor for FileAttributeKey, &unk_10000E294);
  v3 = sub_10000C18C(&qword_1000188D0, type metadata accessor for FileAttributeKey, &unk_10000E1E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000086F4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000D20C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000873C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D23C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008768(uint64_t a1)
{
  v2 = sub_10000C18C(&qword_1000188D8, type metadata accessor for URLResourceKey, &unk_10000E0F0);
  v3 = sub_10000C18C(&unk_1000188E0, type metadata accessor for URLResourceKey, &unk_10000E090);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008824(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000891C;

  return v6(a1);
}

uint64_t sub_10000891C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100008A14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_100018808, &qword_10000DEA8);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100008B18(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009340(&qword_1000187F8, &qword_10000DE98);
  v10 = *(sub_10000CF3C() - 8);
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
  v15 = *(sub_10000CF3C() - 8);
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

unint64_t sub_100008CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008DBC(v11, 0, 0, 1, a1, a2);
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
    sub_1000092E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009298(v11);
  return v7;
}

unint64_t sub_100008DBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008EC8(a5, a6);
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
    result = sub_10000D4BC();
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

char *sub_100008EC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008F14(a1, a2);
  sub_100009044(&off_1000148F8);
  return v3;
}

char *sub_100008F14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009130(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000D4BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000D2CC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009130(v10, 0);
        result = sub_10000D48C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009044(uint64_t result)
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

  result = sub_1000091A4(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_100009130(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100009340(&qword_1000187C8, &qword_10000DE68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000091A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_1000187C8, &qword_10000DE68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100009298(void *a1)
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

uint64_t sub_1000092E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009340(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000938C(uint64_t a1)
{
  sub_10000D23C();
  sub_10000D56C();
  sub_10000D28C();
  v2 = sub_10000D57C();

  return sub_10000990C(a1, v2);
}

unint64_t sub_100009420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000D44C(*(v2 + 40));

  return sub_100009A10(a1, v4);
}

void sub_100009464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100009340(&qword_1000187F8, &qword_10000DE98);
      v7 = *(sub_10000CF3C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_10000CF3C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_100009604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000097FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100009624(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009340(&qword_1000187F8, &qword_10000DE98);
  v10 = *(sub_10000CF3C() - 8);
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
  v15 = *(sub_10000CF3C() - 8);
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

char *sub_1000097FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009340(&qword_100018880, &qword_10000DF40);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000990C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10000D23C();
      v8 = v7;
      if (v6 == sub_10000D23C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10000D50C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100009A10(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000CB7C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000D45C();
      sub_10000C6C8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_100009AD8(uint64_t *a1)
{
  v2 = *(sub_10000CF3C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10000B8BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100009B80(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100009B80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10000D4EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CF3C();
        v6 = sub_10000D34C();
        v6[2] = v5;
      }

      v7 = *(sub_10000CF3C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000A088(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100009CAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100009CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v42 - v12;
  v13 = sub_10000CF3C();
  v14 = __chkstk_darwin(v13);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v58 = &v42 - v17;
  result = __chkstk_darwin(v16);
  v21 = &v42 - v19;
  v44 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v56 = *(v20 + 16);
    v57 = v20 + 16;
    v23 = *(v20 + 72);
    v53 = (v20 + 8);
    v54 = &v42 - v19;
    v24 = v22 + v23 * (a3 - 1);
    v49 = -v23;
    v50 = (v20 + 32);
    v25 = a1 - a3;
    v51 = v22;
    v43 = v23;
    v26 = v22 + v23 * a3;
    v55 = v13;
LABEL_5:
    v47 = v24;
    v48 = a3;
    v45 = v26;
    v46 = v25;
    while (1)
    {
      v59 = v25;
      v27 = v56;
      v56(v21, v26, v13);
      v28 = v58;
      v27(v58, v24, v13);
      v29 = v60;
      sub_10000CF1C();
      v30 = v28;
      v31 = sub_10000D0AC();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      result = v33(v29, 1, v31);
      if (result == 1)
      {
        break;
      }

      sub_10000CF1C();
      result = v33(v11, 1, v31);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v34 = v60;
      v35 = sub_10000D07C();
      v36 = *(v32 + 8);
      v36(v11, v31);
      v36(v34, v31);
      v37 = *v53;
      v13 = v55;
      (*v53)(v30, v55);
      v21 = v54;
      result = v37(v54, v13);
      v38 = v59;
      if (v35)
      {
        if (!v51)
        {
          goto LABEL_15;
        }

        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v26, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = (v39)(v24, v40, v13);
        v24 += v49;
        v26 += v49;
        v41 = __CFADD__(v38, 1);
        v25 = v38 + 1;
        if (!v41)
        {
          continue;
        }
      }

      a3 = v48 + 1;
      v24 = v47 + v43;
      v25 = v46 - 1;
      v26 = v45 + v43;
      if (v48 + 1 == v44)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A088(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = __chkstk_darwin(v8 - 8);
  v180 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v187 = &v153 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v153 - v14;
  v16 = __chkstk_darwin(v13);
  v174 = &v153 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v153 - v19;
  __chkstk_darwin(v18);
  v22 = &v153 - v21;
  v184 = sub_10000CF3C();
  v23 = *(v184 - 8);
  v24 = __chkstk_darwin(v184);
  v167 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v178 = &v153 - v27;
  v28 = __chkstk_darwin(v26);
  v29 = __chkstk_darwin(v28);
  v186 = &v153 - v30;
  v31 = __chkstk_darwin(v29);
  v157 = &v153 - v32;
  v33 = __chkstk_darwin(v31);
  v173 = &v153 - v34;
  v35 = __chkstk_darwin(v33);
  result = __chkstk_darwin(v35);
  v161 = &v153 - v39;
  v40 = a3[1];
  if (v40 >= 1)
  {
    v159 = a4;
    v155 = v38;
    v153 = v37;
    v156 = v22;
    v154 = v20;
    v41 = 0;
    v182 = (v23 + 8);
    v183 = v23 + 16;
    v181 = (v23 + 32);
    v42 = &_swiftEmptyArrayStorage;
    v164 = a3;
    v168 = v15;
    v158 = v23;
    while (1)
    {
      v43 = v41;
      v165 = v42;
      if (v41 + 1 >= v40)
      {
        v70 = v41 + 1;
      }

      else
      {
        v175 = v40;
        v160 = v5;
        v44 = *a3;
        v45 = *(v23 + 72);
        v15 = &v44[v45 * (v41 + 1)];
        v46 = *(v23 + 16);
        v47 = v184;
        v46(v161, v15, v184);
        v163 = v41;
        v185 = v45;
        v166 = v44;
        v48 = &v44[v45 * v41];
        v49 = v155;
        v177 = v46;
        v46(v155, v48, v47);
        v50 = v156;
        sub_10000CF1C();
        v51 = sub_10000D0AC();
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        result = v53(v50, 1, v51);
        if (result == 1)
        {
          goto LABEL_145;
        }

        v54 = v154;
        sub_10000CF1C();
        v176 = v52 + 48;
        v172 = v53;
        result = v53(v54, 1, v51);
        v55 = v157;
        if (result == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        LODWORD(v179) = sub_10000D07C();
        v56 = *(v52 + 8);
        v56(v54, v51);
        v170 = v56;
        v171 = v52 + 8;
        v56(v50, v51);
        v57 = *v182;
        v58 = v184;
        (*v182)(v49, v184);
        v169 = v57;
        result = (v57)(v161, v58);
        v59 = (v163 + 2);
        v60 = v166 + v185 * (v163 + 2);
        while (v175 != v59)
        {
          v61 = v177;
          v177(v173, v60, v58);
          v61(v55, v15, v58);
          v62 = v172;
          v63 = v174;
          sub_10000CF1C();
          result = v62(v63, 1, v51);
          if (result == 1)
          {
            goto LABEL_140;
          }

          v64 = v168;
          sub_10000CF1C();
          result = v62(v64, 1, v51);
          if (result == 1)
          {
            goto LABEL_139;
          }

          v65 = v55;
          v66 = v174;
          v67 = sub_10000D07C() & 1;
          v68 = v170;
          (v170)(v64, v51);
          v68(v66, v51);
          v58 = v184;
          v69 = v169;
          (v169)(v65, v184);
          result = (v69)(v173, v58);
          ++v59;
          v60 += v185;
          v15 += v185;
          v55 = v65;
          if ((v179 & 1) != v67)
          {
            v70 = (v59 - 1);
            goto LABEL_15;
          }
        }

        v70 = v175;
LABEL_15:
        v5 = v160;
        a3 = v164;
        v23 = v158;
        v42 = v165;
        v43 = v163;
        if (v179)
        {
          if (v70 < v163)
          {
            goto LABEL_132;
          }

          if (v163 < v70)
          {
            v71 = v185 * (v70 - 1);
            v72 = v70 * v185;
            v175 = v70;
            v73 = v163;
            v74 = v163 * v185;
            do
            {
              if (v73 != --v70)
              {
                v75 = *a3;
                if (!v75)
                {
                  goto LABEL_142;
                }

                v15 = &v75[v74];
                v76 = *v181;
                (*v181)(v167, &v75[v74], v58);
                if (v74 < v71 || v15 >= &v75[v72])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v74 != v71)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = (v76)(&v75[v71], v167, v58);
                a3 = v164;
                v42 = v165;
              }

              ++v73;
              v71 -= v185;
              v72 -= v185;
              v74 += v185;
            }

            while (v73 < v70);
            v5 = v160;
            v23 = v158;
            v77 = v159;
            v43 = v163;
            v70 = v175;
            goto LABEL_29;
          }
        }
      }

      v77 = v159;
LABEL_29:
      v78 = a3[1];
      if (v70 >= v78)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v70, v43))
      {
        goto LABEL_131;
      }

      if (v70 - v43 >= v77)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v43, v77))
      {
        goto LABEL_133;
      }

      if (v43 + v77 >= v78)
      {
        v15 = a3[1];
      }

      else
      {
        v15 = v43 + v77;
      }

      if (v15 < v43)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        result = sub_10000B7C4(v42);
        v42 = result;
LABEL_105:
        v188 = v42;
        v149 = *(v42 + 2);
        if (v149 >= 2)
        {
          while (*a3)
          {
            v150 = *&v42[16 * v149];
            v151 = *&v42[16 * v149 + 24];
            sub_10000AEF0((*a3 + *(v23 + 72) * v150), (*a3 + *(v23 + 72) * *&v42[16 * v149 + 16]), (*a3 + *(v23 + 72) * v151), v15);
            if (v5)
            {
            }

            if (v151 < v150)
            {
              goto LABEL_128;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_10000B7C4(v42);
            }

            if (v149 - 2 >= *(v42 + 2))
            {
              goto LABEL_129;
            }

            v152 = &v42[16 * v149];
            *v152 = v150;
            *(v152 + 1) = v151;
            v188 = v42;
            result = sub_10000B738(v149 - 1);
            v42 = v188;
            v149 = *(v188 + 2);
            if (v149 <= 1)
            {
            }
          }

          goto LABEL_143;
        }
      }

      if (v70 == v15)
      {
LABEL_38:
        v15 = v70;
        if (v70 < v43)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v160 = v5;
        v125 = *a3;
        v126 = *(v23 + 72);
        v179 = *(v23 + 16);
        v127 = &v125[v126 * (v70 - 1)];
        v176 = -v126;
        v163 = v43;
        v128 = v43 - v70;
        v175 = v70;
        v177 = v125;
        v166 = v126;
        v129 = &v125[v70 * v126];
        v130 = v184;
        v131 = v153;
        v169 = v15;
        do
        {
          v170 = v129;
          v171 = v128;
          v132 = v129;
          v133 = v128;
          v172 = v127;
          do
          {
            v185 = v133;
            v134 = v179;
            v179(v186, v132, v130);
            v134(v131, v127, v130);
            v135 = v131;
            v136 = v187;
            sub_10000CF1C();
            v137 = sub_10000D0AC();
            v138 = *(v137 - 8);
            v139 = *(v138 + 48);
            result = v139(v136, 1, v137);
            if (result == 1)
            {
              goto LABEL_137;
            }

            v140 = v180;
            sub_10000CF1C();
            result = v139(v140, 1, v137);
            if (result == 1)
            {
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
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
              goto LABEL_146;
            }

            v141 = v187;
            v142 = sub_10000D07C();
            v143 = *(v138 + 8);
            v143(v140, v137);
            v143(v141, v137);
            v144 = *v182;
            v130 = v184;
            (*v182)(v135, v184);
            result = (v144)(v186, v130);
            v131 = v135;
            if ((v142 & 1) == 0)
            {
              break;
            }

            v145 = v185;
            if (!v177)
            {
              goto LABEL_138;
            }

            v146 = *v181;
            v147 = v178;
            (*v181)(v178, v132, v130);
            swift_arrayInitWithTakeFrontToBack();
            v146(v127, v147, v130);
            v127 += v176;
            v132 += v176;
            v148 = __CFADD__(v145, 1);
            v133 = v145 + 1;
          }

          while (!v148);
          v127 = &v172[v166];
          v128 = v171 - 1;
          v15 = v169;
          v129 = &v170[v166];
          ++v175;
        }

        while (v175 != v169);
        v5 = v160;
        a3 = v164;
        v23 = v158;
        v42 = v165;
        v43 = v163;
        if (v169 < v163)
        {
          goto LABEL_130;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v169 = v15;
      if ((result & 1) == 0)
      {
        result = sub_100008A14(0, *(v42 + 2) + 1, 1, v42);
        v42 = result;
      }

      v15 = *(v42 + 2);
      v79 = *(v42 + 3);
      v80 = v15 + 1;
      if (v15 >= v79 >> 1)
      {
        result = sub_100008A14((v79 > 1), v15 + 1, 1, v42);
        v42 = result;
      }

      *(v42 + 2) = v80;
      v81 = &v42[16 * v15];
      v82 = v169;
      *(v81 + 4) = v43;
      *(v81 + 5) = v82;
      if (!*v162)
      {
        goto LABEL_144;
      }

      if (v15)
      {
        v83 = *v162;
        while (1)
        {
          v15 = v80 - 1;
          if (v80 >= 4)
          {
            break;
          }

          if (v80 == 3)
          {
            v84 = *(v42 + 4);
            v85 = *(v42 + 5);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
LABEL_59:
            if (v87)
            {
              goto LABEL_119;
            }

            v100 = &v42[16 * v80];
            v102 = *v100;
            v101 = *(v100 + 1);
            v103 = __OFSUB__(v101, v102);
            v104 = v101 - v102;
            v105 = v103;
            if (v103)
            {
              goto LABEL_122;
            }

            v106 = &v42[16 * v15 + 32];
            v108 = *v106;
            v107 = *(v106 + 1);
            v94 = __OFSUB__(v107, v108);
            v109 = v107 - v108;
            if (v94)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v104, v109))
            {
              goto LABEL_126;
            }

            if (v104 + v109 >= v86)
            {
              if (v86 < v109)
              {
                v15 = v80 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v110 = &v42[16 * v80];
          v112 = *v110;
          v111 = *(v110 + 1);
          v94 = __OFSUB__(v111, v112);
          v104 = v111 - v112;
          v105 = v94;
LABEL_73:
          if (v105)
          {
            goto LABEL_121;
          }

          v113 = &v42[16 * v15];
          v115 = *(v113 + 4);
          v114 = *(v113 + 5);
          v94 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v94)
          {
            goto LABEL_124;
          }

          if (v116 < v104)
          {
            goto LABEL_3;
          }

LABEL_80:
          v121 = v15 - 1;
          if (v15 - 1 >= v80)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v122 = *&v42[16 * v121 + 32];
          v123 = *&v42[16 * v15 + 40];
          sub_10000AEF0((*a3 + *(v23 + 72) * v122), (*a3 + *(v23 + 72) * *&v42[16 * v15 + 32]), (*a3 + *(v23 + 72) * v123), v83);
          if (v5)
          {
          }

          if (v123 < v122)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_10000B7C4(v42);
          }

          if (v121 >= *(v42 + 2))
          {
            goto LABEL_116;
          }

          v124 = &v42[16 * v121];
          *(v124 + 4) = v122;
          *(v124 + 5) = v123;
          v188 = v42;
          result = sub_10000B738(v15);
          v42 = v188;
          v80 = *(v188 + 2);
          if (v80 <= 1)
          {
            goto LABEL_3;
          }
        }

        v88 = &v42[16 * v80 + 32];
        v89 = *(v88 - 64);
        v90 = *(v88 - 56);
        v94 = __OFSUB__(v90, v89);
        v91 = v90 - v89;
        if (v94)
        {
          goto LABEL_117;
        }

        v93 = *(v88 - 48);
        v92 = *(v88 - 40);
        v94 = __OFSUB__(v92, v93);
        v86 = v92 - v93;
        v87 = v94;
        if (v94)
        {
          goto LABEL_118;
        }

        v95 = &v42[16 * v80];
        v97 = *v95;
        v96 = *(v95 + 1);
        v94 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v94)
        {
          goto LABEL_120;
        }

        v94 = __OFADD__(v86, v98);
        v99 = v86 + v98;
        if (v94)
        {
          goto LABEL_123;
        }

        if (v99 >= v91)
        {
          v117 = &v42[16 * v15 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v94 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v94)
          {
            goto LABEL_127;
          }

          if (v86 < v120)
          {
            v15 = v80 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

LABEL_3:
      v40 = a3[1];
      v41 = v169;
      if (v169 >= v40)
      {
        goto LABEL_103;
      }
    }
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_103:
  v15 = *v162;
  if (*v162)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_105;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_10000AEF0(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_100009340(&qword_1000187D8, &qword_10000DE78);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v87 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v85 = &v77 - v15;
  __chkstk_darwin(v14);
  v89 = &v77 - v16;
  v91 = sub_10000CF3C();
  v17 = *(v91 - 8);
  v18 = __chkstk_darwin(v91);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v86 = &v77 - v22;
  v23 = __chkstk_darwin(v21);
  result = __chkstk_darwin(v23);
  v88 = &v77 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_66;
  }

  v29 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v28 != -1)
  {
    v30 = (a2 - a1) / v28;
    v94 = a1;
    v93 = a4;
    if (v30 >= v29 / v28)
    {
      v85 = v11;
      v32 = v29 / v28 * v28;
      if (a4 < a2 || &a2[v32] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v32 < 1)
      {
        v58 = &a4[v32];
      }

      else
      {
        v80 = (v17 + 8);
        v81 = (v17 + 16);
        v56 = -v28;
        v57 = &a4[v32];
        v58 = &a4[v32];
        v90 = a1;
        v78 = -v28;
        v79 = a4;
        do
        {
          v77 = v58;
          v59 = a2;
          a2 += v56;
          v83 = v59;
          v84 = a2;
          while (1)
          {
            if (v59 <= a1)
            {
              v94 = v59;
              v92 = v77;
              goto LABEL_64;
            }

            v60 = a3;
            v82 = v58;
            v61 = *v81;
            v88 = &v57[v56];
            v89 = v57;
            v62 = v91;
            v61(v86);
            (v61)(v20, a2, v62);
            v63 = v87;
            sub_10000CF1C();
            v64 = v20;
            v65 = sub_10000D0AC();
            v66 = *(v65 - 8);
            v67 = *(v66 + 48);
            result = v67(v63, 1, v65);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v68 = v85;
            sub_10000CF1C();
            result = v67(v68, 1, v65);
            if (result == 1)
            {
              goto LABEL_71;
            }

            v69 = &v60[v56];
            v70 = v87;
            v71 = sub_10000D07C();
            v72 = *(v66 + 8);
            v72(v68, v65);
            v72(v70, v65);
            v73 = *v80;
            v74 = v91;
            (*v80)(v64, v91);
            v73(v86, v74);
            a2 = v84;
            v75 = v79;
            v20 = v64;
            if (v71)
            {
              break;
            }

            v76 = v88;
            v58 = v88;
            a1 = v90;
            a3 = v69;
            if (v60 < v89 || v69 >= v89)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v78;
            }

            else
            {
              v56 = v78;
              if (v60 != v89)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v57 = v58;
            v59 = v83;
            if (v76 <= v75)
            {
              a2 = v83;
              goto LABEL_63;
            }
          }

          a1 = v90;
          a3 = v69;
          if (v60 < v83 || v69 >= v83)
          {
            swift_arrayInitWithTakeFrontToBack();
            v58 = v82;
            v56 = v78;
          }

          else
          {
            v58 = v82;
            v56 = v78;
            if (v60 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v57 = v89;
        }

        while (v89 > v75);
      }

LABEL_63:
      v94 = a2;
      v92 = v58;
    }

    else
    {
      v31 = v30 * v28;
      v84 = v25;
      if (a4 < a1 || &a1[v31] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v87 = &a4[v31];
      v92 = &a4[v31];
      if (v31 >= 1 && a2 < a3)
      {
        v34 = *(v17 + 16);
        v82 = a3;
        v83 = v34;
        v86 = (v17 + 16);
        v80 = (v17 + 8);
        v81 = v28;
        do
        {
          v90 = a1;
          v35 = a2;
          v36 = v91;
          v37 = v83;
          (v83)(v88, a2, v91);
          v38 = v84;
          (v37)(v84, a4, v36);
          v39 = v89;
          sub_10000CF1C();
          v40 = sub_10000D0AC();
          v41 = *(v40 - 8);
          v42 = *(v41 + 48);
          result = v42(v39, 1, v40);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v43 = v85;
          sub_10000CF1C();
          v44 = v43;
          result = v42(v43, 1, v40);
          if (result == 1)
          {
            goto LABEL_69;
          }

          v45 = v89;
          v46 = sub_10000D07C();
          v47 = v44;
          v48 = v46;
          v49 = *(v41 + 8);
          v49(v47, v40);
          v49(v45, v40);
          v50 = *v80;
          v51 = v91;
          (*v80)(v38, v91);
          v50(v88, v51);
          a2 = v35;
          v52 = v90;
          if (v48)
          {
            v54 = v81;
            v53 = v82;
            if (v90 < a2 || v90 >= v81 + a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v54 + a2;
          }

          else
          {
            v54 = v81;
            v53 = v82;
            v55 = v81 + a4;
            if (v90 < a4 || v90 >= v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v93 = v55;
            a4 = v54 + a4;
          }

          a1 = v54 + v52;
          v94 = a1;
        }

        while (a4 < v87 && a2 < v53);
      }
    }

LABEL_64:
    sub_10000B7D8(&v94, &v93, &v92);
    return 1;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_10000B738(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000B7C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000B7D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10000CF3C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10000B8D0()
{
  v0 = sub_10000D0EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000D0AC();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009340(&qword_100018888, &qword_10000DF48);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  v12 = sub_10000D20C();
  [v11 setDateFormat:v12];

  sub_10000D0CC();
  v13 = *(v1 + 48);
  isa = 0;
  if (v13(v10, 1, v0) != 1)
  {
    isa = sub_10000D0DC().super.isa;
    (*(v1 + 8))(v10, v0);
  }

  v32 = v1;
  [v11 setTimeZone:isa];

  sub_10000D09C();
  v15 = sub_10000D06C().super.isa;
  v16 = [v11 stringFromDate:v15];
  v28 = v11;
  v17 = v4;
  v18 = v16;

  v19 = sub_10000D23C();
  v21 = v20;

  sub_10000D0CC();
  result = (v13)(v8, 1, v0);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v32;
    v24 = v30;
    (*(v32 + 32))(v30, v8, v0);
    if (sub_10000D0BC())
    {
      v25 = 5522512;
    }

    else
    {
      v25 = 5526352;
    }

    v33 = v19;
    v34 = v21;
    v35._countAndFlagsBits = 95;
    v35._object = 0xE100000000000000;
    sub_10000D2AC(v35);
    v36._countAndFlagsBits = v25;
    v36._object = 0xE300000000000000;
    sub_10000D2AC(v36);

    v26 = v33;
    (*(v23 + 8))(v24, v0);
    (*(v29 + 8))(v17, v31);
    return v26;
  }

  return result;
}

void *sub_10000BCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009340(&qword_100018800, &qword_10000DEA0);
    v3 = sub_10000D47C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_10000D23C();
      sub_10000D56C();
      v27 = v7;
      sub_10000D28C();
      v8 = sub_10000D57C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_10000D23C();
        v18 = v17;
        if (v16 == sub_10000D23C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_10000D50C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10000BEA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BEE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CE80;

  return sub_100005940(a1, v5, v4);
}

void sub_10000BF94(uint64_t a1)
{
  v2 = sub_100009340(&qword_100018838, &qword_10000DED0);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  sub_100009340(&qword_100018840, &qword_10000DED8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  v6 = dispatch_semaphore_create(0);
  v7 = sub_10000D38C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_10000DEB8;
  v8[5] = a1;
  v8[6] = v5;
  v8[7] = v6;

  v9 = v6;
  sub_100005038(0, 0, v4, &unk_10000DEE8, v8);

  sub_10000D3EC();
  v10 = *(v5 + 24);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v10)
    {
      v12[1] = *(v5 + 16);
      swift_errorRetain();
      sub_100009340(&qword_100018728, qword_10000DE18);
      swift_willThrowTypedImpl();
    }

    else
    {
      v11 = *(v5 + 16);
    }
  }
}

uint64_t sub_10000C18C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000C1D4()
{
  result = qword_100018828;
  if (!qword_100018828)
  {
    sub_100008288(&qword_100018820, &qword_10000DEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018828);
  }

  return result;
}

uint64_t sub_10000C238(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000C290()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C33C;

  return sub_100004A34(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10000C33C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009340(&qword_100018838, &qword_10000DED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C4A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009340(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C500()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C538(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CE80;

  return sub_100008824(a1, v4);
}

void sub_10000C5F0(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_10000C608(result, a2 & 1);
  }
}

void sub_10000C608(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C614()
{
  result = qword_100018848;
  if (!qword_100018848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018848);
  }

  return result;
}

void sub_10000C67C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000C71C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C75C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C33C;

  return sub_100005CA8(a1, v4, v5, v6);
}

void sub_10000C810(uint64_t a1)
{
  v2 = sub_100009340(&qword_100018838, &qword_10000DED0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  sub_100009340(&qword_100018870, &qword_10000DF28);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  v6 = dispatch_semaphore_create(0);
  v7 = sub_10000D38C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_10000DF18;
  v8[5] = a1;
  v8[6] = v5;
  v8[7] = v6;

  v9 = v6;
  sub_100005038(0, 0, v4, &unk_10000DF38, v8);

  sub_10000D3EC();
  v10 = *(v5 + 24);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v10)
    {
      v11[1] = *(v5 + 16);
      swift_errorRetain();
      sub_100009340(&qword_100018728, qword_10000DE18);
      swift_willThrowTypedImpl();
    }
  }
}

uint64_t sub_10000CA04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000CA54()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000CE80;

  return sub_100004D34(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10000CB00(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000CB18(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000CB18(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10000CB24(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_10000CB6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_10000CC08(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000CC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000CC5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}