uint64_t sub_100001F28()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009A5D8);
  sub_10000202C(v2, qword_10009A5D8);
  v0 = type metadata accessor for AvailabilityQueue(0);
  return sub_100016180(v0, v0);
}

uint64_t *sub_100001F90(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_10000202C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t type metadata accessor for AvailabilityQueue(uint64_t a1)
{
  v2 = qword_10009A700;
  if (!qword_10009A700)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1000020F8()
{
  if (qword_10009A5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009A5D8);
}

uint64_t sub_100002164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000020F8();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1000021C8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  swift_beginAccess();
  sub_100002224(v3, a1);
  return swift_endAccess();
}

void *sub_100002224(const void *a1, void *a2)
{
  v6 = type metadata accessor for AvailabilityQueue.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_10007CE28();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t type metadata accessor for AvailabilityQueue.State(uint64_t a1)
{
  v2 = qword_10009A820;
  if (!qword_10009A820)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1000023C0(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(type metadata accessor for AvailabilityQueue.State(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_100002224(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  v7 = &v9;
  swift_beginAccess();
  sub_100002484(v5, v6);
  swift_endAccess();
  return sub_1000025C4(v8);
}

void *sub_100002484(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1000025C4(a2);
    v4 = type metadata accessor for AvailabilityQueue.State(0);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_10007CE28();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1000025C4(uint64_t a1)
{
  type metadata accessor for AvailabilityQueue.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_10007CE28();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100002690()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000026F0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_100002760()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000027CC(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1000028B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  type metadata accessor for AvailabilityQueue.State(0);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks;
  sub_10007D658();
  *(v5 + v8) = sub_10007DEC8();
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;

  v6 = (v5 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  *v6 = a2;
  v6[1] = a3;

  return v14;
}

uint64_t sub_1000029C4(uint64_t a1)
{
  v240 = a1;
  v237 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v283 = 0;
  v226 = 0;
  v271 = 0;
  v227 = sub_10007CEF8();
  v228 = *(v227 - 8);
  v229 = v228;
  v233 = *(v228 + 64);
  __chkstk_darwin(0);
  v235 = (v233 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = v65 - v235;
  __chkstk_darwin(v2);
  v231 = v65 - v235;
  __chkstk_darwin(v3);
  v232 = v65 - v235;
  __chkstk_darwin(v4);
  v234 = v65 - v235;
  __chkstk_darwin(v5);
  v236 = v65 - v235;
  v238 = type metadata accessor for AvailabilityQueue.State(v6);
  __chkstk_darwin(v237);
  v239 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_10007CE28();
  v242 = *(v241 - 8);
  v243 = v242;
  v248 = v242[8];
  v244 = v248;
  __chkstk_darwin(v240);
  v250 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  v245 = v65 - v250;
  __chkstk_darwin(v8);
  v246 = v65 - v250;
  v283 = v65 - v250;
  __chkstk_darwin(v9);
  v247 = v65 - v250;
  v282 = v65 - v250;
  __chkstk_darwin(v10);
  v249 = v65 - v250;
  v281 = v65 - v250;
  __chkstk_darwin(v11);
  v251 = v65 - v250;
  v280 = v12;
  v279 = v1;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_10007D898("enqueue() has to be called from the main thread", 0x2FuLL, 1);
    v64 = 0;
    v63 = 50;
    sub_10007DDB8();
    __break(1u);
  }

  v222 = (v225 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  v223 = &v278;
  swift_beginAccess();
  sub_100002224(v222, v239);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = v236;
        v14 = sub_1000020F8();
        (*(v229 + 16))(v13, v14, v227);
        v220 = sub_10007CED8();
        v217 = v220;
        v219 = sub_10007DBC8();
        v218 = v219;
        sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
        v221 = sub_10007DEC8();
        if (os_log_type_enabled(v220, v219))
        {
          v15 = v226;
          v208 = sub_10007DC88();
          v204 = v208;
          v205 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
          v206 = 0;
          v209 = sub_10000742C(0, v205, v205);
          v207 = v209;
          v210 = sub_10000742C(v206, &type metadata for Any + 8, &type metadata for Any + 8);
          v255 = v208;
          v254 = v209;
          v253 = v210;
          v211 = 0;
          v212 = &v255;
          sub_100007480(0, &v255);
          sub_100007480(v211, v212);
          v252 = v221;
          v213 = v65;
          __chkstk_darwin(v65);
          v214 = &v65[-6];
          v65[-4] = v16;
          v65[-3] = &v254;
          v63 = &v253;
          v215 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
          sub_1000097D8();
          sub_10007D948();
          v216 = v15;
          if (v15)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v217, v218, "State is undefined, adding pending task", v204, 2u);
            v202 = 0;
            sub_1000074E0(v207, 0, v205);
            sub_1000074E0(v210, v202, &type metadata for Any + 8);
            sub_10007DC68();

            v203 = v216;
          }
        }

        else
        {

          v203 = v226;
        }

        v200 = v203;

        (*(v229 + 8))(v236, v227);

        v256[3] = v240;
        v199 = v256;
        swift_beginAccess();
        sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
        sub_10007D9F8();
        swift_endAccess();
        sub_100004460();
        return v200;
      }

      else
      {
        v17 = v234;
        v18 = sub_1000020F8();
        (*(v229 + 16))(v17, v18, v227);
        v197 = sub_10007CED8();
        v194 = v197;
        v196 = sub_10007DBC8();
        v195 = v196;
        sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
        v198 = sub_10007DEC8();
        if (os_log_type_enabled(v197, v196))
        {
          v20 = v226;
          v185 = sub_10007DC88();
          v181 = v185;
          v182 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
          v183 = 0;
          v186 = sub_10000742C(0, v182, v182);
          v184 = v186;
          v187 = sub_10000742C(v183, &type metadata for Any + 8, &type metadata for Any + 8);
          v259 = v185;
          v258 = v186;
          v257 = v187;
          v188 = 0;
          v189 = &v259;
          sub_100007480(0, &v259);
          sub_100007480(v188, v189);
          v256[4] = v198;
          v190 = v65;
          __chkstk_darwin(v65);
          v191 = &v65[-6];
          v65[-4] = v21;
          v65[-3] = &v258;
          v63 = &v257;
          v192 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
          sub_1000097D8();
          sub_10007D948();
          v193 = v20;
          if (v20)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v194, v195, "State is currently checked, adding pending task", v181, 2u);
            v179 = 0;
            sub_1000074E0(v184, 0, v182);
            sub_1000074E0(v187, v179, &type metadata for Any + 8);
            sub_10007DC68();

            v180 = v193;
          }
        }

        else
        {

          v180 = v226;
        }

        v178 = v180;

        (*(v229 + 8))(v234, v227);

        v260[3] = v240;
        v177 = v260;
        swift_beginAccess();
        sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
        sub_10007D9F8();
        swift_endAccess();
        return v178;
      }
    }

    v147 = v243[2];
    v148 = (v243 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v147(v247, v239, v241);
    sub_10007CDE8();
    if (*(v225 + 24) < -v27)
    {
      v147(v251, v247, v241);
      v146 = v243[1];
      v145 = v243 + 1;
      v146(v247, v241);
      v146(v239, v241);
      goto LABEL_29;
    }

    v45 = v230;
    v85 = v243[1];
    v86 = (v243 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v247, v241);
    v89 = v243[4];
    v88 = v243 + 4;
    v89(v246, v239, v241);
    v283 = v246;
    v46 = sub_1000020F8();
    (*(v229 + 16))(v45, v46, v227);
    v147(v245, v246, v241);
    v87 = (*(v88 + 48) + 16) & ~*(v88 + 48);
    v90 = swift_allocObject();
    v89((v90 + v87), v245, v241);

    v96 = 32;
    v97 = 7;
    v47 = swift_allocObject();
    v48 = v90;
    v98 = v47;
    *(v47 + 16) = sub_100004740;
    *(v47 + 24) = v48;

    v108 = sub_10007CED8();
    v91 = v108;
    v107 = sub_10007DBB8();
    v92 = v107;
    v93 = 17;
    v101 = swift_allocObject();
    v94 = v101;
    *(v101 + 16) = 34;
    v102 = swift_allocObject();
    v95 = v102;
    *(v102 + 16) = 8;
    v49 = swift_allocObject();
    v50 = v98;
    v99 = v49;
    *(v49 + 16) = sub_10000766C;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v99;
    v105 = v51;
    v100 = v51;
    *(v51 + 16) = sub_100009484;
    *(v51 + 24) = v52;
    v106 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v103 = sub_10007DEC8();
    v104 = v53;

    v54 = v101;
    v55 = v104;
    *v104 = sub_100009410;
    v55[1] = v54;

    v56 = v102;
    v57 = v104;
    v104[2] = sub_100009410;
    v57[3] = v56;

    v58 = v104;
    v59 = v105;
    v104[4] = sub_1000094D0;
    v58[5] = v59;
    sub_100006FD4();

    if (os_log_type_enabled(v108, v107))
    {
      v60 = v226;
      v78 = sub_10007DC88();
      v75 = v78;
      v76 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v79 = sub_10000742C(0, v76, v76);
      v77 = v79;
      v81 = 1;
      v80 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v276 = v78;
      v275 = v79;
      v274 = v80;
      v82 = &v276;
      sub_100007480(2, &v276);
      sub_100007480(v81, v82);
      v272 = sub_100009410;
      v273 = v94;
      sub_100007494(&v272, v82, &v275, &v274);
      v83 = v60;
      v84 = v60;
      if (v60)
      {
        v73 = 0;

        __break(1u);
      }

      else
      {
        v272 = sub_100009410;
        v273 = v95;
        sub_100007494(&v272, &v276, &v275, &v274);
        v71 = 0;
        v72 = 0;
        v272 = sub_1000094D0;
        v273 = v100;
        sub_100007494(&v272, &v276, &v275, &v274);
        v69 = 0;
        v70 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "Device is locked (since %{public}s), tasks will be ignored", v75, 0xCu);
        sub_1000074E0(v77, 0, v76);
        sub_1000074E0(v80, 1, &type metadata for Any + 8);
        sub_10007DC68();

        v74 = v69;
      }
    }

    else
    {
      v61 = v226;

      v74 = v61;
    }

    v68 = v74;

    (*(v229 + 8))(v230, v227);
    v67 = &v277;
    v65[1] = 0;
    swift_beginAccess();
    sub_10007D658();
    v66 = sub_1000047B4();
    sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
    sub_10007DA08(v66 & 1);
    swift_endAccess();
    v85(v246, v241);
    return v68;
  }

  else
  {
    v175 = v243[2];
    v176 = (v243 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v175(v249, v239, v241);
    sub_10007CDE8();
    if (*(v225 + 24) < -v22)
    {
      v175(v251, v249, v241);
      v174 = v243[1];
      v173 = v243 + 1;
      v174(v249, v241);
      v174(v239, v241);
LABEL_29:
      v28 = v231;
      v271 = v251;
      v29 = sub_1000020F8();
      (*(v229 + 16))(v28, v29, v227);

      v132 = 32;
      v133 = 7;
      v30 = swift_allocObject();
      v31 = v225;
      v134 = v30;
      *(v30 + 16) = sub_100009548;
      *(v30 + 24) = v31;

      v144 = sub_10007CED8();
      v127 = v144;
      v143 = sub_10007DBC8();
      v128 = v143;
      v129 = 17;
      v137 = swift_allocObject();
      v130 = v137;
      *(v137 + 16) = 34;
      v138 = swift_allocObject();
      v131 = v138;
      *(v138 + 16) = 8;
      v32 = swift_allocObject();
      v33 = v134;
      v135 = v32;
      *(v32 + 16) = sub_100009590;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v135;
      v141 = v34;
      v136 = v34;
      *(v34 + 16) = sub_100009484;
      *(v34 + 24) = v35;
      v142 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v139 = sub_10007DEC8();
      v140 = v36;

      v37 = v137;
      v38 = v140;
      *v140 = sub_100009410;
      v38[1] = v37;

      v39 = v138;
      v40 = v140;
      v140[2] = sub_100009410;
      v40[3] = v39;

      v41 = v140;
      v42 = v141;
      v140[4] = sub_1000094D0;
      v41[5] = v42;
      sub_100006FD4();

      if (os_log_type_enabled(v144, v143))
      {
        v43 = v226;
        v120 = sub_10007DC88();
        v117 = v120;
        v118 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v121 = sub_10000742C(0, v118, v118);
        v119 = v121;
        v123 = 1;
        v122 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v268 = v120;
        v267 = v121;
        v266 = v122;
        v124 = &v268;
        sub_100007480(2, &v268);
        sub_100007480(v123, v124);
        v264 = sub_100009410;
        v265 = v130;
        sub_100007494(&v264, v124, &v267, &v266);
        v125 = v43;
        v126 = v43;
        if (v43)
        {
          v115 = 0;

          __break(1u);
        }

        else
        {
          v264 = sub_100009410;
          v265 = v131;
          sub_100007494(&v264, &v268, &v267, &v266);
          v113 = 0;
          v114 = 0;
          v264 = sub_1000094D0;
          v265 = v136;
          sub_100007494(&v264, &v268, &v267, &v266);
          v111 = 0;
          v112 = 0;
          _os_log_impl(&_mh_execute_header, v127, v128, "State (%{public}s) expired, check state again", v117, 0xCu);
          sub_1000074E0(v119, 0, v118);
          sub_1000074E0(v122, 1, &type metadata for Any + 8);
          sub_10007DC68();

          v116 = v111;
        }
      }

      else
      {
        v44 = v226;

        v116 = v44;
      }

      v110 = v116;

      (*(v229 + 8))(v231, v227);

      v270 = v240;
      v109 = &v269;
      swift_beginAccess();
      sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
      sub_10007D9F8();
      swift_endAccess();
      sub_100004460();
      (v243[1])(v251, v241);
      return v110;
    }

    v23 = v232;
    v166 = v243[1];
    v167 = (v243 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v166(v249, v241);
    v24 = sub_1000020F8();
    (*(v229 + 16))(v23, v24, v227);
    v171 = sub_10007CED8();
    v168 = v171;
    v170 = sub_10007DBC8();
    v169 = v170;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v172 = sub_10007DEC8();
    if (os_log_type_enabled(v171, v170))
    {
      v25 = v226;
      v157 = sub_10007DC88();
      v153 = v157;
      v154 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v155 = 0;
      v158 = sub_10000742C(0, v154, v154);
      v156 = v158;
      v159 = sub_10000742C(v155, &type metadata for Any + 8, &type metadata for Any + 8);
      v263 = v157;
      v262 = v158;
      v261 = v159;
      v160 = 0;
      v161 = &v263;
      sub_100007480(0, &v263);
      sub_100007480(v160, v161);
      v260[4] = v172;
      v162 = v65;
      __chkstk_darwin(v65);
      v163 = &v65[-6];
      v65[-4] = v26;
      v65[-3] = &v262;
      v63 = &v261;
      v164 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v165 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v168, v169, "Data is available, executing task immediateley", v153, 2u);
        v151 = 0;
        sub_1000074E0(v156, 0, v154);
        sub_1000074E0(v159, v151, &type metadata for Any + 8);
        sub_10007DC68();

        v152 = v165;
      }
    }

    else
    {

      v152 = v226;
    }

    v150 = v152;

    (*(v229 + 8))(v232, v227);
    sub_100009744();
    v149 = sub_10007DC08();
    sub_10007DC28();

    v166(v239, v241);
    return v150;
  }
}

uint64_t sub_100004460()
{
  v8[1] = 0;
  v15 = sub_100009954;
  v14 = *v0;
  v20 = 0;
  v16 = 0;
  v1 = type metadata accessor for AvailabilityQueue.State(0);
  v8[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = v8 - v8[0];
  v20 = v0;
  swift_storeEnumTagMultiPayload();
  v10 = v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state;
  v11 = &v19;
  swift_beginAccess();
  sub_100002484(v9, v10);
  swift_endAccess();
  v13 = 7;
  v18 = swift_allocObject();

  v12 = v0;
  swift_weakInit();

  v2 = swift_allocObject();
  v3 = v14;
  v4 = v15;
  v5 = v2;
  v6 = v16;
  v17 = v5;
  *(v5 + 16) = v18;
  *(v5 + 24) = v3;
  sub_100005444(v6, v4, v5);
}

uint64_t sub_100004674()
{
  v2 = *(sub_10007CE28() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_100004740@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007CE28();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_100004614(v3, a1);
}

uint64_t sub_1000047CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  swift_beginAccess();
  sub_100002224(v3, a2);
  return swift_endAccess();
}

uint64_t sub_100004828(unsigned int a1, uint64_t a2)
{
  v122 = a2;
  v121 = a1;
  v111 = a1;
  v150 = 0;
  v120 = 0;
  v149 = 0;
  v147 = 0;
  v112 = 0;
  v139 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v134 = 0;
  v113 = sub_10007CEF8();
  v114 = *(v113 - 8);
  v115 = v114;
  v116 = *(v114 + 64);
  __chkstk_darwin(0);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v27 - v118;
  __chkstk_darwin(v2);
  v119 = &v27 - v118;
  v123 = type metadata accessor for AvailabilityQueue.State(v3);
  __chkstk_darwin(v121);
  v124 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v5;
  v125 = v6 + 16;
  v149 = v6 + 16;
  v126 = &v148;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v127 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v112;
  }

  v110 = v127;
  v108 = v110;
  v147 = v110;
  if (v111)
  {
    sub_10007CE18();
    v91 = 0;
    swift_storeEnumTagMultiPayload();
    v77 = (v108 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
    v83 = 33;
    v78 = &v141;
    v84 = 0;
    swift_beginAccess();
    sub_100002484(v124, v77);
    swift_endAccess();
    p_ivars = &MFGetMailboxIntentResponse__classData.ivars;
    v79 = (v108 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
    v95 = 32;
    v81 = &v140;
    swift_beginAccess();
    v88 = *v79;
    v80 = v88;

    swift_endAccess();
    v139 = v88;
    v87 = &v138;
    swift_beginAccess();
    sub_10007D658();
    v85 = sub_1000047B4();
    v86 = sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
    sub_10007DA08(v85 & 1);
    v7 = v119;
    swift_endAccess();
    v8 = sub_1000020F8();
    (*(v115 + 16))(v7, v8, v113);

    v96 = 7;
    v97 = swift_allocObject();
    *(v97 + 16) = v88;
    v107 = sub_10007CED8();
    v89 = v107;
    v106 = sub_10007DBC8();
    v90 = v106;
    v92 = 17;
    v100 = swift_allocObject();
    v93 = v100;
    *(v100 + 16) = v91;
    v101 = swift_allocObject();
    v94 = v101;
    *(v101 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v97;
    v98 = v9;
    *(v9 + 16) = sub_10000A6B4;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v98;
    v104 = v11;
    v99 = v11;
    *(v11 + 16) = sub_10000A754;
    *(v11 + 24) = v12;
    v105 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v102 = sub_10007DEC8();
    v103 = v13;

    v14 = v100;
    v15 = v103;
    *v103 = sub_100009410;
    v15[1] = v14;

    v16 = v101;
    v17 = v103;
    v103[2] = sub_100009410;
    v17[3] = v16;

    v18 = v103;
    v19 = v104;
    v103[4] = sub_10000A7A0;
    v18[5] = v19;
    sub_100006FD4();

    if (os_log_type_enabled(v107, v106))
    {
      v20 = v112;
      v71 = sub_10007DC88();
      v67 = v71;
      v68 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v69 = 0;
      v72 = sub_10000742C(0, v68, v68);
      v70 = v72;
      v73 = sub_10000742C(v69, &type metadata for Any + 8, &type metadata for Any + 8);
      v133 = v71;
      v132 = v72;
      v131 = v73;
      v74 = &v133;
      sub_100007480(0, &v133);
      sub_100007480(1, v74);
      v129 = sub_100009410;
      v130 = v93;
      sub_100007494(&v129, v74, &v132, &v131);
      v75 = v20;
      v76 = v20;
      if (v20)
      {
        v65 = 0;

        __break(1u);
      }

      else
      {
        v129 = sub_100009410;
        v130 = v94;
        sub_100007494(&v129, &v133, &v132, &v131);
        v63 = 0;
        v64 = 0;
        v129 = sub_10000A7A0;
        v130 = v99;
        sub_100007494(&v129, &v133, &v132, &v131);
        v61 = 0;
        v62 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "Availability check succeeded, executing %ld tasks", v67, 0xCu);
        v60 = 0;
        sub_1000074E0(v70, 0, v68);
        sub_1000074E0(v73, v60, &type metadata for Any + 8);
        sub_10007DC68();

        v66 = v61;
      }
    }

    else
    {
      v21 = v112;

      v66 = v21;
    }

    v58 = v66;

    (*(v115 + 8))(v119, v113);

    v136 = v80;
    sub_10000A88C();
    sub_10007DB68();
    for (i = v58; ; i = v53)
    {
      v56 = i;
      sub_1000094DC(&qword_10009A8D0, &qword_10007F0E8);
      sub_10007DD88();
      v57 = v135;
      if (!v135)
      {
        break;
      }

      v55 = v57;
      v52 = v57;
      v53 = v56;
      v134 = v57;
      sub_100009744();
      v51 = sub_10007DC08();
      sub_10007DC28();
    }

    sub_10000A480(v137);

    v54 = v56;
  }

  else
  {
    v22 = v117;
    v23 = sub_1000020F8();
    (*(v115 + 16))(v22, v23, v113);
    v49 = sub_10007CED8();
    v46 = v49;
    v48 = sub_10007DBC8();
    v47 = v48;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v50 = sub_10007DEC8();
    if (os_log_type_enabled(v49, v48))
    {
      v24 = v112;
      v37 = sub_10007DC88();
      v33 = v37;
      v34 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v35 = 0;
      v38 = sub_10000742C(0, v34, v34);
      v36 = v38;
      v39 = sub_10000742C(v35, &type metadata for Any + 8, &type metadata for Any + 8);
      v145 = v37;
      v144 = v38;
      v143 = v39;
      v40 = 0;
      v41 = &v145;
      sub_100007480(0, &v145);
      sub_100007480(v40, v41);
      v142 = v50;
      v42 = &v27;
      __chkstk_darwin(&v27);
      v43 = &v27 - 6;
      *(&v27 - 4) = v25;
      *(&v27 - 3) = &v144;
      *(&v27 - 2) = &v143;
      v44 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v45 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v46, v47, "Availability check failed", v33, 2u);
        v31 = 0;
        sub_1000074E0(v36, 0, v34);
        sub_1000074E0(v39, v31, &type metadata for Any + 8);
        sub_10007DC68();

        v32 = v45;
      }
    }

    else
    {

      v32 = v112;
    }

    v30 = v32;

    (*(v115 + 8))(v117, v113);
    sub_10007CE18();
    swift_storeEnumTagMultiPayload();
    v28 = (v108 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
    v29 = &v146;
    swift_beginAccess();
    sub_100002484(v124, v28);
    swift_endAccess();
    v54 = v30;
  }

  v27 = v54;

  return v27;
}

uint64_t sub_100005444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v5 = (v3 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  swift_beginAccess();
  v10 = *v5;

  swift_endAccess();
  v12 = swift_allocObject();

  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = v12;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = v9;
  v10(sub_1000099AC);
}

uint64_t sub_1000055F8(unsigned int a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v135 = a5;
  v134 = a4;
  v133 = a3;
  v137 = a2;
  v136 = a1;
  v115 = a1;
  v171 = 0;
  v125 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v165 = 0;
  v116 = 0;
  v117 = sub_10007D5E8();
  v118 = *(v117 - 8);
  v119 = v118;
  __chkstk_darwin(0);
  v120 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10007D608();
  v122 = *(v121 - 8);
  v123 = v122;
  __chkstk_darwin(v125);
  v124 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10007D628();
  v127 = *(v126 - 8);
  v128 = v127;
  v129 = *(v127 + 64);
  __chkstk_darwin(v125);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = &v38 - v131;
  __chkstk_darwin(v7);
  v132 = &v38 - v131;
  v138 = sub_10007CEF8();
  v139 = *(v138 - 8);
  v140 = v139;
  v142 = *(v139 + 64);
  __chkstk_darwin(v136);
  v144 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v141 = &v38 - v144;
  __chkstk_darwin(v8);
  v143 = &v38 - v144;
  __chkstk_darwin(v9);
  v145 = &v38 - v144;
  v171 = v10;
  v146 = v11 + 16;
  v170 = v11 + 16;
  v168 = v12;
  v169 = v13;
  v167 = v14;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_10007D898("availabilityHandler has to complete on the main thread", 0x36uLL, 1);
    v37 = 0;
    v36 = 101;
    sub_10007DDB8();
    __break(1u);
  }

  v112 = &v166;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v113 = Strong;
  swift_endAccess();
  result = Strong;
  if (!Strong)
  {
    return v116;
  }

  v111 = v113;
  v109 = v111;
  v165 = v111;
  if (v115)
  {
    v16 = v145;
    v17 = sub_1000020F8();
    (*(v140 + 16))(v16, v17, v138);
    v107 = sub_10007CED8();
    v104 = v107;
    v106 = sub_10007DB98();
    v105 = v106;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v108 = sub_10007DEC8();
    if (os_log_type_enabled(v107, v106))
    {
      v18 = v116;
      v95 = sub_10007DC88();
      v91 = v95;
      v92 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v93 = 0;
      v96 = sub_10000742C(0, v92, v92);
      v94 = v96;
      v97 = sub_10000742C(v93, &type metadata for Any + 8, &type metadata for Any + 8);
      v150[0] = v95;
      v149 = v96;
      v148 = v97;
      v98 = 0;
      v99 = v150;
      sub_100007480(0, v150);
      sub_100007480(v98, v99);
      v147 = v108;
      v100 = &v38;
      __chkstk_darwin(&v38);
      v101 = &v38 - 6;
      *(&v38 - 4) = v19;
      *(&v38 - 3) = &v149;
      v36 = &v148;
      v102 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v103 = v18;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v104, v105, "Data is accessible", v91, 2u);
        v89 = 0;
        sub_1000074E0(v94, 0, v92);
        sub_1000074E0(v97, v89, &type metadata for Any + 8);
        sub_10007DC68();

        v90 = v103;
      }
    }

    else
    {

      v90 = v116;
    }

    v87 = v90;

    (*(v140 + 8))(v145, v138);

    v133(1);

    v88 = v87;
LABEL_32:
    v38 = v88;

    return v38;
  }

  v20 = *(v109 + 16);
  v21 = v20 - 1;
  v22 = __OFSUB__(v20, 1);
  v86 = v21;
  if (!v22)
  {
    if (v135 < v86)
    {
      v23 = v143;
      v24 = sub_1000020F8();
      (*(v140 + 16))(v23, v24, v138);
      v84 = sub_10007CED8();
      v81 = v84;
      v83 = sub_10007DBB8();
      v82 = v83;
      sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v85 = sub_10007DEC8();
      if (os_log_type_enabled(v84, v83))
      {
        v25 = v116;
        v72 = sub_10007DC88();
        v68 = v72;
        v69 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v70 = 0;
        v73 = sub_10000742C(0, v69, v69);
        v71 = v73;
        v74 = sub_10000742C(v70, &type metadata for Any + 8, &type metadata for Any + 8);
        v153 = v72;
        v152 = v73;
        v151 = v74;
        v75 = 0;
        v76 = &v153;
        sub_100007480(0, &v153);
        sub_100007480(v75, v76);
        v150[1] = v85;
        v77 = &v38;
        __chkstk_darwin(&v38);
        v78 = &v38 - 6;
        *(&v38 - 4) = v26;
        *(&v38 - 3) = &v152;
        v36 = &v151;
        v79 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
        sub_1000097D8();
        sub_10007D948();
        v80 = v25;
        if (v25)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v81, v82, "Data is not accessible, retry…", v68, 2u);
          v66 = 0;
          sub_1000074E0(v71, 0, v69);
          sub_1000074E0(v74, v66, &type metadata for Any + 8);
          sub_10007DC68();

          v67 = v80;
        }
      }

      else
      {

        v67 = v116;
      }

      v64 = v67;

      (*(v140 + 8))(v143, v138);
      sub_100009744();
      v63 = sub_10007DC08();
      sub_10007D618();
      sub_10007D678();
      v62 = *(v128 + 8);
      v61 = v128 + 8;
      v62(v130, v126);

      v27 = swift_allocObject();
      v28 = v135;
      v29 = v133;
      v30 = v134;
      v27[2] = v109;
      v27[3] = v28;
      v27[4] = v29;
      v27[5] = v30;
      v159 = sub_10000A4F4;
      v160 = v27;
      aBlock = _NSConcreteStackBlock;
      v155 = 1107296256;
      v156 = 0;
      v157 = sub_10000AAE4;
      v158 = &unk_100091BA8;
      v60 = _Block_copy(&aBlock);

      sub_100006978();
      sub_100006990();
      sub_10007DBE8();
      (*(v119 + 8))(v120, v117);
      (*(v123 + 8))(v124, v121);
      _Block_release(v60);
      v62(v132, v126);

      v65 = v64;
    }

    else
    {
      v31 = v141;
      v32 = sub_1000020F8();
      (*(v140 + 16))(v31, v32, v138);
      v58 = sub_10007CED8();
      v55 = v58;
      v57 = sub_10007DBB8();
      v56 = v57;
      sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v59 = sub_10007DEC8();
      if (os_log_type_enabled(v58, v57))
      {
        v34 = v116;
        v46 = sub_10007DC88();
        v42 = v46;
        v43 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v44 = 0;
        v47 = sub_10000742C(0, v43, v43);
        v45 = v47;
        v48 = sub_10000742C(v44, &type metadata for Any + 8, &type metadata for Any + 8);
        v164 = v46;
        v163 = v47;
        v162 = v48;
        v49 = 0;
        v50 = &v164;
        sub_100007480(0, &v164);
        sub_100007480(v49, v50);
        v161 = v59;
        v51 = &v38;
        __chkstk_darwin(&v38);
        v52 = &v38 - 6;
        *(&v38 - 4) = v35;
        *(&v38 - 3) = &v163;
        v36 = &v162;
        v53 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
        sub_1000097D8();
        sub_10007D948();
        v54 = v34;
        if (v34)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v55, v56, "Data is not accessible, retry count exceeded", v42, 2u);
          v40 = 0;
          sub_1000074E0(v45, 0, v43);
          sub_1000074E0(v48, v40, &type metadata for Any + 8);
          sub_10007DC68();

          v41 = v54;
        }
      }

      else
      {

        v41 = v116;
      }

      v39 = v41;

      (*(v140 + 8))(v141, v138);

      v133(0);

      v65 = v39;
    }

    v88 = v65;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000068FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    return sub_100005444(a2 + 1, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006990()
{
  sub_100054C54(0);
  sub_10007D5E8();
  sub_10000A56C();
  sub_1000094DC(&unk_10009A8B0, &qword_10007F0E0);
  sub_10000A5EC();
  return sub_10007DCF8();
}

uint64_t sub_100006A30()
{
  sub_1000025C4(v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  sub_10000A480((v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks));

  return v2;
}

uint64_t sub_100006AF4()
{
  v46 = 0;
  v45 = 0;
  v47 = 0;
  v30 = 0;
  v31 = sub_10007CE28();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &object - v34;
  v47 = &object - v34;
  v38 = type metadata accessor for AvailabilityQueue.State(v0);
  v37 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = &object - v37;
  v46 = v1;
  sub_100002224(v1, &object - v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = v35;
      (*(v32 + 32))(v35, v39, v31);
      v45 = v35;
      v11 = 1;
      v6 = sub_10007DEB8();
      v14 = &v43;
      v43 = v6;
      v44 = v7;
      v12 = 1;
      v50._countAndFlagsBits = sub_10007D898("Protected (", 0xBuLL, 1);
      object = v50._object;
      sub_10007DEA8(v50);

      sub_1000076C8();
      sub_10007DE88();
      v51._countAndFlagsBits = sub_10007D898(")", v11, v12 & 1);
      v13 = v51._object;
      sub_10007DEA8(v51);

      v16 = v43;
      v15 = v44;

      sub_1000099C8(v14);
      v17 = sub_10007D888();
      v18 = v8;
      (*(v32 + 8))(v35, v31);
      v28 = v17;
      v29 = v18;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = sub_10007D898("Undefined", 9uLL, 1);
      }

      else
      {
        v28 = sub_10007D898("Checking", 8uLL, 1);
      }

      v29 = v2;
    }
  }

  else
  {
    (*(v32 + 32))(v35, v39, v31);
    v47 = v35;
    v20 = 1;
    v3 = sub_10007DEB8();
    v23 = &v41;
    v41 = v3;
    v42 = v4;
    v21 = 1;
    v48._countAndFlagsBits = sub_10007D898("Accessible (", 0xCuLL, 1);
    v19 = v48._object;
    sub_10007DEA8(v48);

    sub_1000076C8();
    sub_10007DE88();
    v49._countAndFlagsBits = sub_10007D898(")", v20, v21 & 1);
    v22 = v49._object;
    sub_10007DEA8(v49);

    v25 = v41;
    v24 = v42;

    sub_1000099C8(v23);
    v26 = sub_10007D888();
    v27 = v5;
    (*(v32 + 8))(v35, v31);
    v28 = v26;
    v29 = v27;
  }

  return v28;
}

uint64_t sub_100007020(uint64_t a1)
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE48();
}

uint64_t sub_10000705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE18();
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE28() & 1;
}

uint64_t sub_1000070F8(uint64_t a1, uint64_t a2)
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE38();
}

void sub_100007190(uint64_t a2@<X8>)
{
  sub_1000071CC();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

void sub_10000723C(uint64_t a2@<X8>)
{
  nullsub_1();
  *a2 = v2;
  *(a2 + 8) = 0;
}

uint64_t sub_1000072B0(uint64_t a1)
{
  sub_10000A400();
  sub_10000A308();
  return sub_10007DDF8();
}

uint64_t sub_10000742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_10007DC88();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007480(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1000074E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_10007DC78();
    sub_10007DC68();
  }
}

uint64_t sub_100007548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_10007DE58();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_10000766C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10007CE28();
  v1 = sub_1000076C8();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_1000076C8()
{
  v2 = qword_10009A698;
  if (!qword_10009A698)
  {
    sub_10007CE28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A698);
    return WitnessTable;
  }

  return v2;
}

void *sub_10000777C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_100007818(v4, v5, a3);
  v8 = *a1;

  sub_10007DCA8();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_100007818(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1000079BC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_10000A9B4(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10000A914(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_10000A9B4(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10000A914(v13);
  }

  return v11;
}

void *sub_1000079BC(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_10007DDA8();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_100007D74(v22, v17, v16);
        sub_10007DCB8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_100007EF0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_10007DD28();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_10007DDA8();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_100007D74(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_10007DDC8();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_10007DDC8();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_100007EF0(uint64_t a1, uint64_t a2)
{
  v7 = sub_100007FAC(a1, a2);
  sub_1000094DC(&qword_10009A8D8, &unk_10007F0F0);
  inited = swift_initStackObject();
  sub_1000087BC(inited, 1);
  *v3 = 0;
  sub_100008808();
  sub_10000883C(v4);

  v8 = sub_100008BE4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_100007FAC(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_10007D8C8();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_100009104();
  }

  v10 = sub_100008BFC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_10007DDC8();
    __break(1u);
    return sub_100009104();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_100008D40(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_10007DD28();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_100008D40(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_10007DD18();
  if (v2)
  {
LABEL_29:
    sub_10007DDA8();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_10007DDA8();
    __break(1u);
  }

  sub_1000099C8(v17);
  return v10;
}

uint64_t sub_1000087BC(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_10000883C(uint64_t a1)
{
  v18 = sub_100008BE4(a1);
  v2 = sub_100008BE4(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_100009134(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_10007DDC8();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1000092A0(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_10007DDA8();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_10007DDA8();
    __break(1u);
    goto LABEL_21;
  }

  sub_100008D40((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_100007748();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_100008BFC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1000094DC(&qword_10009A8D8, &unk_10007F0F0);
    v5 = swift_allocObject();

    if (sub_10000AA18())
    {
      v3 = sub_10000AA24(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100008D40(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_10007DDC8();
    __break(1u);
  }

  result = sub_10007DDC8();
  __break(1u);
  return result;
}

unint64_t sub_100008E90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_10007D8E8();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_10007DDA8();
    __break(1u);
  }

  v5 = sub_10007D908();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_100009134(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_100008BFC(v4, v6);
  if (v7)
  {
    sub_1000092A8((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_100008D40((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1000092A8(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1000093D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000094DC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_100009590()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AvailabilityQueue.State(0);
  v1 = sub_1000095EC();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_1000095EC()
{
  v2 = qword_10009A6B8;
  if (!qword_10009A6B8)
  {
    type metadata accessor for AvailabilityQueue.State(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100009744()
{
  v2 = qword_10009A6C0;
  if (!qword_10009A6C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009A6C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000097D8()
{
  v2 = qword_10009A6D0;
  if (!qword_10009A6D0)
  {
    sub_100009860(&qword_10009BB70, &qword_10007EE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100009860(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t sub_100009964()
{

  return swift_deallocObject();
}

uint64_t sub_100009A10(uint64_t a1)
{
  updated = type metadata accessor for AvailabilityQueue.State(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_100009B9C(uint64_t a1)
{
  v3 = sub_10007CE28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t type metadata accessor for MUIBucket(uint64_t a1)
{
  v5 = qword_10009A858;
  if (!qword_10009A858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A858);
      return v2;
    }
  }

  return v5;
}

__n128 sub_100009CC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100009CD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100009DE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CGSize(uint64_t a1)
{
  v5 = qword_10009A860;
  if (!qword_10009A860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A860);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECMailboxType(uint64_t a1)
{
  v5 = qword_10009A868;
  if (!qword_10009A868)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A868);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10000A0D8()
{
  v2 = qword_10009A870;
  if (!qword_10009A870)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A170()
{
  v2 = qword_10009A878;
  if (!qword_10009A878)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A208()
{
  v2 = qword_10009A880;
  if (!qword_10009A880)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A288()
{
  v2 = qword_10009A888;
  if (!qword_10009A888)
  {
    type metadata accessor for MUIBucket(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A308()
{
  v2 = qword_10009A890;
  if (!qword_10009A890)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A388()
{
  v2 = qword_10009A898;
  if (!qword_10009A898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A400()
{
  v2 = qword_10009A8A0;
  if (!qword_10009A8A0)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000A4AC()
{

  return swift_deallocObject();
}

uint64_t sub_10000A508(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10000A56C()
{
  v2 = qword_10009BD10;
  if (!qword_10009BD10)
  {
    sub_10007D5E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A5EC()
{
  v2 = qword_10009BD20;
  if (!qword_10009BD20)
  {
    sub_100009860(&unk_10009A8B0, &qword_10007F0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000A7A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_10000A814();

  return sub_10002CE44(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_10000A814()
{
  v2 = qword_10009A8C0;
  if (!qword_10009A8C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A88C()
{
  v2 = qword_10009A8C8;
  if (!qword_10009A8C8)
  {
    sub_100009860(&qword_10009A6A8, &unk_10007EE10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000A914(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_10000A9B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t type metadata accessor for Base64DecodingOptions(uint64_t a1)
{
  v5 = qword_10009A8E0;
  if (!qword_10009A8E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A8E0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_10000AAE4(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

BOOL sub_10000AB34(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_10000ADF4()
{
  v2 = qword_10009ABA8;
  if (!qword_10009ABA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009ABA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000AF44()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009AB90);
  sub_10000202C(v2, qword_10009AB90);
  v0 = type metadata accessor for DaemonDataSource();
  return sub_100016180(v0, v0);
}

uint64_t sub_10000AFD4()
{
  if (qword_10009A5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009AB90);
}

uint64_t sub_10000B040@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AFD4();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_10000B0D4()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon);
  _objc_retain(v2);
  return v2;
}

void *sub_10000B11C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource);
  _objc_retain(v2);
  return v2;
}

void *sub_10000B164()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10000B1AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_mailboxDataSource);

  return v2;
}

void *sub_10000B1EC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10000B234()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10000B29C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_10000B320()
{
  v12 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon);
  _objc_retain(v9);
  [v9 vipManager];
  _objc_release(v9);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v7 = v10;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  if (v7)
  {
    v6 = [v7 allVIPWaitForResult];
    sub_10000B624();
    sub_10000B688();
    sub_10007DA78();
    v5 = sub_10007DAA8();

    _objc_release(v6);
    _objc_release(v7);
    return (v5 ^ 1) & 1;
  }

  else
  {
    _objc_retain(v8);
    v11[0] = sub_10007DEB8();
    v11[1] = v2;
    v13._countAndFlagsBits = sub_10007D898("Unexpected class for VIP manager (", 0x22uLL, 1);
    sub_10007DEA8(v13);

    v4 = *&v8[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon];
    _objc_retain(v4);
    [v4 vipManager];
    _objc_release(v4);
    ObjectType = swift_getObjectType();
    sub_1000162A8(ObjectType);
    swift_unknownObjectRelease();
    v14._countAndFlagsBits = sub_10007D898(")", 1uLL, 1);
    sub_10007DEA8(v14);

    sub_1000099C8(v11);
    sub_10007D888();
    result = sub_10007DDB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_10000B624()
{
  v2 = qword_10009ABE0;
  if (!qword_10009ABE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ABE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10000B688()
{
  v2 = qword_10009ABE8;
  if (!qword_10009ABE8)
  {
    sub_10000B624();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009ABE8);
    return WitnessTable;
  }

  return v2;
}

char *sub_10000B744(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  _objc_retain(a1);
  *&v1[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon] = a1;
  type metadata accessor for MessagesDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource] = sub_10004CF54([a1 messageRepository]);
  type metadata accessor for MailboxDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_mailboxDataSource] = sub_10001BCB4([a1 mailboxRepository]);
  type metadata accessor for MailStatusDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource] = sub_100020150([a1 messageRepository]);
  sub_10000B9A4();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController] = sub_10000BA08();
  v4 = v10;
  type metadata accessor for AvailabilityQueue(0);
  _objc_retain(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *&v4[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue] = sub_10000284C(3, sub_10000BED4, v2, 20.0, 1.0);
  v8.receiver = v10;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v10 = v7;
  _objc_release(a1);
  _objc_release(v10);
  return v7;
}

unint64_t sub_10000B9A4()
{
  v2 = qword_10009ABF0;
  if (!qword_10009ABF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ABF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000BA38(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = a1;
  v35 = a2;
  v33 = a3;
  v21 = sub_10001488C;
  v36 = sub_100014944;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v49 = 0;
  v24 = 0;
  v29 = sub_10007D628();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v27 = &v18 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v28 = &v18 - v19;
  v20 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v22 = &v18 - v20;
  v58 = v5;
  v59 = v6;
  v57 = v7;
  sub_10007D658();

  v34 = 7;
  v8 = swift_allocObject();
  v9 = v21;
  v10 = v35;
  *(v8 + 16) = v38;
  *(v8 + 24) = v10;
  v55 = v9;
  v56 = v8;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_10000AAE4;
  v54 = &unk_1000929A8;
  v23 = _Block_copy(&aBlock);
  sub_100006990();
  v41 = sub_10007D638();

  v49 = v41;
  sub_100009744();
  v32 = sub_10007DC08();
  sub_10007D618();
  sub_10007D678();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  sub_10007DBF8();
  v31(v28, v29);
  _objc_release(v32);
  v40 = [v33 messageRepository];

  v11 = swift_allocObject();
  v12 = v35;
  v13 = v36;
  v14 = v37;
  v15 = v11;
  v16 = v38;
  v15[2] = v41;
  v15[3] = v16;
  v15[4] = v12;
  v47 = v13;
  v48 = v15;
  v42 = _NSConcreteStackBlock;
  v43 = v14;
  v44 = 0;
  v45 = sub_10000C270;
  v46 = &unk_1000929F8;
  v39 = _Block_copy(&v42);

  [v40 isDataAccessible:v39];
  _Block_release(v39);
  _objc_release(v40);
}

uint64_t sub_10000BEDC(void (*a1)(void))
{

  a1(0);
}

void sub_10000BF44(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v15 = a3;
  v16 = a4;
  v17 = sub_1000149FC;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v19 = 0;
  v23 = sub_10007D5E8();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v13 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v22 = &v12 - v13;
  v27 = sub_10007D608();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v14 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v26 = &v12 - v14;
  v40 = v5 & 1;
  v39 = a2;
  v37 = v6;
  v38 = v7;
  sub_10007D648();
  sub_100009744();
  v29 = sub_10007DC08();

  v8 = swift_allocObject();
  v9 = v16;
  v10 = v17;
  v11 = v8;
  LOBYTE(v8) = v18;
  *(v11 + 16) = v15;
  *(v11 + 24) = v9;
  *(v11 + 32) = v8;
  v35 = v10;
  v36 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = 0;
  v33 = sub_10000AAE4;
  v34 = &unk_100092A48;
  v28 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v20 + 8))(v22, v23);
  (*(v24 + 8))(v26, v27);
  _Block_release(v28);
  _objc_release(v29);
}

uint64_t sub_10000C1F4(void (*a1)(void), uint64_t a2, char a3)
{

  a1(a3 & 1);
}

uint64_t sub_10000C270(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_10000C2C8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v32 = a2;
  v36 = a3;
  v37 = a4;
  v46 = 0;
  v39 = sub_10000E508;
  ObjectType = swift_getObjectType();
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v52 = 0;
  v25 = 0;
  v24 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = &v24 - v24;
  v26 = *(type metadata accessor for Mailbox(v5) - 8);
  v29 = v26;
  v30 = *(v26 + 64);
  v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v34 = (&v24 - v27);
  v64 = v6;
  v63 = v7 & 1;
  v61 = v8;
  v62 = v9;
  v60 = v4;
  sub_10007D658();
  v31 = 7;
  v45 = swift_allocObject();
  _objc_retain(v44);
  swift_unknownObjectWeakInit();
  _objc_release(v44);

  sub_10000DFBC(v28, v34);

  v33 = (*(v29 + 80) + 25) & ~*(v29 + 80);
  v35 = (v33 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = v32;
  v12 = v33;
  v13 = v10;
  v14 = v34;
  v40 = v13;
  *(v13 + 16) = v45;
  *(v13 + 24) = v11;
  sub_10000E380(v14, v13 + v12);
  v15 = v37;
  v16 = v38;
  v17 = v39;
  v18 = v40;
  v19 = ObjectType;
  v20 = (v40 + v35);
  *v20 = v36;
  v20[1] = v15;
  *(v18 + v16) = v19;
  v58 = v17;
  v59 = v18;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = 0;
  v56 = sub_10000AAE4;
  v57 = &unk_100091D38;
  v43 = _Block_copy(&aBlock);
  sub_100006990();
  v21 = sub_10007D638();
  v22 = v44;
  v50 = v21;

  v52 = v50;
  v47 = &v22[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue];
  v48 = &v51;
  swift_beginAccess();
  v49 = *v47;

  swift_endAccess();
  sub_1000029C4(v50);
}

void sub_10000C72C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v256 = a1;
  v255 = a2;
  v251 = a3;
  v252 = a4;
  v253 = a5;
  v200 = a6;
  v254 = 0;
  v201 = sub_100013124;
  v202 = sub_100009484;
  v203 = sub_10001315C;
  v204 = sub_1000134D0;
  v205 = sub_10001351C;
  v206 = sub_100013568;
  v207 = sub_1000132FC;
  v208 = sub_100009484;
  v209 = sub_100009410;
  v210 = sub_100009410;
  v211 = sub_1000094D0;
  v212 = sub_100009410;
  v213 = sub_100009410;
  v214 = sub_1000135B4;
  v215 = sub_100009410;
  v216 = sub_100009410;
  v217 = sub_1000094D0;
  v218 = sub_100013124;
  v219 = sub_100009484;
  v220 = sub_100009410;
  v221 = sub_100009410;
  v222 = sub_1000094D0;
  v223 = sub_100013B08;
  v224 = sub_1000138F0;
  v225 = sub_100013960;
  v226 = sub_100013A30;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v298 = 0;
  v299 = 0;
  v296 = 0;
  v294 = 0;
  v295 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v227 = 0;
  v243 = 0;
  v228 = sub_10007D5E8();
  v229 = *(v228 - 8);
  v230 = v228 - 8;
  v231 = (*(v229 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v232 = &v108 - v231;
  v233 = sub_10007D608();
  v234 = *(v233 - 8);
  v235 = v233 - 8;
  v236 = (*(v234 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v243);
  v237 = &v108 - v236;
  v238 = *(type metadata accessor for Mailbox(v6) - 8);
  v239 = v238;
  v240 = *(v238 + 64);
  v241 = (v240 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v243);
  v242 = (&v108 - v241);
  v244 = sub_10007CEF8();
  v245 = *(v244 - 8);
  v246 = v244 - 8;
  v247 = (v245[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v243);
  v248 = &v108 - v247;
  v249 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v250 = &v108 - v249;
  v257 = sub_10007CE58();
  v258 = *(v257 - 8);
  v259 = v257 - 8;
  v260 = (*(v258 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v256);
  v261 = &v108 - v260;
  v262 = v9 + 16;
  v302 = v9 + 16;
  v301 = v10 & 1;
  v300 = v11;
  v298 = v12;
  v299 = v13;
  v263 = &v297;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v199 = Strong;
    v160 = Strong;
    v296 = Strong;
    sub_10007CE48();
    v14 = sub_10007CE38();
    v15 = v250;
    v169 = v14;
    v170 = v16;
    v294 = v14;
    v295 = v16;
    (*(v258 + 8))(v261, v257);
    v161 = dispatch_group_create();
    v293 = v161;
    v181 = 32;
    v182 = 7;
    v17 = swift_allocObject();
    v162 = v17;
    v292 = v17 + 16;
    *(v17 + 16) = 0;
    *(v17 + 24) = 1;
    v164 = 24;
    v163 = swift_allocObject();
    v291 = v163 + 16;
    *(v163 + 16) = 0;
    v179 = 17;
    v165 = swift_allocObject();
    v290 = v165 + 16;
    *(v165 + 16) = 2;
    v166 = swift_allocObject();
    v289 = v166 + 16;
    *(v166 + 16) = 0;
    v18 = sub_10000AFD4();
    v167 = v245[2];
    v168 = v245 + 2;
    v167(v15, v18, v244);

    v19 = swift_allocObject();
    v20 = v170;
    v172 = v19;
    *(v19 + 16) = v169;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v242;
    v23 = v21;
    v24 = v251;
    v174 = v23;
    *(v23 + 16) = v255;
    sub_10000DFBC(v24, v22);
    v171 = (*(v239 + 80) + 16) & ~*(v239 + 80);
    v183 = swift_allocObject();
    sub_10000E380(v242, v183 + v171);
    v197 = sub_10007CED8();
    v198 = sub_10007DBC8();
    v185 = swift_allocObject();
    v178 = 34;
    *(v185 + 16) = 34;
    v186 = swift_allocObject();
    v180 = 8;
    *(v186 + 16) = 8;
    v25 = swift_allocObject();
    v26 = v172;
    v173 = v25;
    *(v25 + 16) = v201;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v173;
    v187 = v27;
    *(v27 + 16) = v202;
    *(v27 + 24) = v28;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = 4;
    v29 = swift_allocObject();
    v30 = v174;
    v175 = v29;
    *(v29 + 16) = v203;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v175;
    v176 = v31;
    *(v31 + 16) = v204;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v176;
    v177 = v33;
    *(v33 + 16) = v205;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v177;
    v190 = v35;
    *(v35 + 16) = v206;
    *(v35 + 24) = v36;
    v191 = swift_allocObject();
    *(v191 + 16) = v178;
    v192 = swift_allocObject();
    *(v192 + 16) = v180;
    v37 = swift_allocObject();
    v38 = v183;
    v184 = v37;
    *(v37 + 16) = v207;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v184;
    v194 = v39;
    *(v39 + 16) = v208;
    *(v39 + 24) = v40;
    v196 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v193 = sub_10007DEC8();
    v195 = v41;

    v42 = v185;
    v43 = v195;
    *v195 = v209;
    v43[1] = v42;

    v44 = v186;
    v45 = v195;
    v195[2] = v210;
    v45[3] = v44;

    v46 = v187;
    v47 = v195;
    v195[4] = v211;
    v47[5] = v46;

    v48 = v188;
    v49 = v195;
    v195[6] = v212;
    v49[7] = v48;

    v50 = v189;
    v51 = v195;
    v195[8] = v213;
    v51[9] = v50;

    v52 = v190;
    v53 = v195;
    v195[10] = v214;
    v53[11] = v52;

    v54 = v191;
    v55 = v195;
    v195[12] = v215;
    v55[13] = v54;

    v56 = v192;
    v57 = v195;
    v195[14] = v216;
    v57[15] = v56;

    v58 = v194;
    v59 = v195;
    v195[16] = v217;
    v59[17] = v58;
    sub_100006FD4();

    if (os_log_type_enabled(v197, v198))
    {
      v60 = v227;
      v153 = sub_10007DC88();
      v152 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v154 = sub_10000742C(0, v152, v152);
      v155 = sub_10000742C(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v156 = &v269;
      v269 = v153;
      v157 = &v268;
      v268 = v154;
      v158 = &v267;
      v267 = v155;
      sub_100007480(2, &v269);
      sub_100007480(3, v156);
      v265 = v209;
      v266 = v185;
      sub_100007494(&v265, v156, v157, v158);
      v159 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v265 = v210;
        v266 = v186;
        sub_100007494(&v265, &v269, &v268, &v267);
        v150 = 0;
        v265 = v211;
        v266 = v187;
        sub_100007494(&v265, &v269, &v268, &v267);
        v149 = 0;
        v265 = v212;
        v266 = v188;
        sub_100007494(&v265, &v269, &v268, &v267);
        v148 = 0;
        v265 = v213;
        v266 = v189;
        sub_100007494(&v265, &v269, &v268, &v267);
        v147 = 0;
        v265 = v214;
        v266 = v190;
        sub_100007494(&v265, &v269, &v268, &v267);
        v146 = 0;
        v265 = v215;
        v266 = v191;
        sub_100007494(&v265, &v269, &v268, &v267);
        v145 = 0;
        v265 = v216;
        v266 = v192;
        sub_100007494(&v265, &v269, &v268, &v267);
        v144 = 0;
        v265 = v217;
        v266 = v194;
        sub_100007494(&v265, &v269, &v268, &v267);
        v143 = 0;
        _os_log_impl(&_mh_execute_header, v197, v198, "[%{public}s] Fetch messages & count (threaded: %{BOOL}d) for mailbox: %{public}s", v153, 0x1Cu);
        sub_1000074E0(v154, 0, v152);
        sub_1000074E0(v155, 2, &type metadata for Any + 8);
        sub_10007DC68();

        v151 = v143;
      }
    }

    else
    {
      v61 = v227;

      v151 = v61;
    }

    v140 = v151;
    _objc_release(v197);
    v141 = v245[1];
    v142 = v245 + 1;
    v141(v250, v244);
    if (sub_100018CB4())
    {
      dispatch_group_enter(v161);
      v139 = *&v160[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource];
      _objc_retain(v139);

      _objc_retain(v161);
      v62 = swift_allocObject();
      v63 = v170;
      v64 = v162;
      v65 = v161;
      v66 = v200;
      v67 = v223;
      v68 = v62;
      v69 = v251;
      v138 = v68;
      v68[2] = v169;
      v68[3] = v63;
      v68[4] = v64;
      v68[5] = v65;
      v68[6] = v66;
      sub_10002018C(v69, 10, v67, v68);

      _objc_release(v139);
    }

    else
    {
      v70 = v248;
      v71 = sub_10000AFD4();
      v167(v70, v71, v244);

      v127 = 32;
      v128 = 7;
      v72 = swift_allocObject();
      v73 = v170;
      v129 = v72;
      *(v72 + 16) = v169;
      *(v72 + 24) = v73;
      v136 = sub_10007CED8();
      v137 = sub_10007DBB8();
      v126 = 17;
      v131 = swift_allocObject();
      *(v131 + 16) = 34;
      v132 = swift_allocObject();
      *(v132 + 16) = 8;
      v74 = swift_allocObject();
      v75 = v129;
      v130 = v74;
      *(v74 + 16) = v218;
      *(v74 + 24) = v75;
      v76 = swift_allocObject();
      v77 = v130;
      v134 = v76;
      *(v76 + 16) = v219;
      *(v76 + 24) = v77;
      v133 = sub_10007DEC8();
      v135 = v78;

      v79 = v131;
      v80 = v135;
      *v135 = v220;
      v80[1] = v79;

      v81 = v132;
      v82 = v135;
      v135[2] = v221;
      v82[3] = v81;

      v83 = v134;
      v84 = v135;
      v135[4] = v222;
      v84[5] = v83;
      sub_100006FD4();

      if (os_log_type_enabled(v136, v137))
      {
        v85 = v140;
        v119 = sub_10007DC88();
        v118 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v120 = sub_10000742C(0, v118, v118);
        v121 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v122 = &v274;
        v274 = v119;
        v123 = &v273;
        v273 = v120;
        v124 = &v272;
        v272 = v121;
        sub_100007480(2, &v274);
        sub_100007480(1, v122);
        v270 = v220;
        v271 = v131;
        sub_100007494(&v270, v122, v123, v124);
        v125 = v85;
        if (v85)
        {

          __break(1u);
        }

        else
        {
          v270 = v221;
          v271 = v132;
          sub_100007494(&v270, &v274, &v273, &v272);
          v117 = 0;
          v270 = v222;
          v271 = v134;
          sub_100007494(&v270, &v274, &v273, &v272);
          _os_log_impl(&_mh_execute_header, v136, v137, "[%{public}s] Cannot fetch unread count. Mailbox is invalid.", v119, 0xCu);
          sub_1000074E0(v120, 0, v118);
          sub_1000074E0(v121, 1, &type metadata for Any + 8);
          sub_10007DC68();
        }
      }

      else
      {
      }

      _objc_release(v136);
      v141(v248, v244);
      v86 = v162;
      *(v162 + 16) = 0;
      *(v86 + 24) = 0;
    }

    dispatch_group_enter(v161);
    v109 = *&v160[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource];
    _objc_retain(v109);

    _objc_retain(v161);
    v112 = 64;
    v113 = 7;
    v87 = swift_allocObject();
    v88 = v200;
    v89 = v255;
    v90 = v224;
    v91 = v166;
    v92 = v163;
    v93 = v161;
    v94 = v170;
    v95 = v87;
    v96 = v251;
    v108 = v95;
    v95[2] = v169;
    v95[3] = v94;
    v95[4] = v92;
    v95[5] = v91;
    v95[6] = v93;
    v95[7] = v88;
    sub_10004CF90(v96, v89 & 1, v90, v95);

    _objc_release(v109);
    dispatch_group_enter(v161);
    v111 = *&v160[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController];
    _objc_retain(v111);

    _objc_retain(v161);
    v97 = swift_allocObject();
    v98 = v225;
    v99 = v161;
    *(v97 + 16) = v165;
    *(v97 + 24) = v99;
    v287 = v98;
    v288 = v97;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v283 = 1107296256;
    v284 = 0;
    v285 = sub_100010C30;
    v286 = &unk_100092430;
    v110 = _Block_copy(&aBlock);

    [v111 getCurrentFocus:v110];
    _Block_release(v110);
    _objc_release(v111);
    sub_100009744();
    v116 = sub_10007DC08();

    v100 = swift_allocObject();
    v101 = v252;
    v102 = v253;
    v103 = v226;
    v104 = v114;
    v105 = v166;
    v106 = v165;
    v107 = v162;
    v100[2] = v163;
    v100[3] = v107;
    v100[4] = v106;
    v100[5] = v105;
    v100[6] = v101;
    v100[7] = v102;
    v280 = v103;
    v281 = v100;
    v275 = _NSConcreteStackBlock;
    v276 = v104;
    v277 = 0;
    v278 = sub_10000AAE4;
    v279 = &unk_100092480;
    v115 = _Block_copy(&v275);
    sub_100006978();
    sub_100006990();
    sub_10007DBD8();
    (*(v229 + 8))(v232, v228);
    (*(v234 + 8))(v237, v233);
    _Block_release(v115);

    _objc_release(v116);

    _objc_release(v161);

    _objc_release(v160);
  }
}

void *sub_10000DFBC(void *a1, void *a2)
{
  *a2 = *a1;
  v10 = a1[1];

  a2[1] = v10;
  v13 = a1[2];

  a2[2] = v13;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v9 = a1[4];

    a2[4] = v9;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox(0);
  __dst = a2 + *(v2 + 28);
  __src = a1 + *(v2 + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(__src, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(__dst, __src, v7);
    (*(v8 + 56))(__dst, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_10000E1A8()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 25) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10000E380(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(type metadata accessor for Mailbox(0) + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

void sub_10000E508()
{
  v8 = *(type metadata accessor for Mailbox(0) - 8);
  v1 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v2 = (v1 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = *(v0 + v2 + 8);
  v6 = *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 24) & 1;

  sub_10000C72C(v3, v7, v0 + v1, v4, v5, v6);
}

uint64_t sub_10000E5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_10000E690(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v63 = a1;
  v64 = a2;
  v61 = a3;
  v62 = a4;
  v54 = a5;
  v55 = a6;
  v66 = sub_100013124;
  v68 = sub_100009484;
  v72 = sub_100013B90;
  v76 = sub_10000A754;
  v78 = sub_100009410;
  v80 = sub_100009410;
  v82 = sub_1000094D0;
  v84 = sub_100009410;
  v86 = sub_100009410;
  v89 = sub_10000A7A0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v101 = 0;
  v53 = 0;
  v60 = sub_10007CEF8();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v56 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v6 = v43 - v56;
  v57 = v43 - v56;
  v105 = v7;
  v65 = 1;
  v106 = v8 & 1;
  v103 = v9;
  v104 = v10;
  v102 = v11 + 16;
  v101 = v12;
  v13 = sub_10000AFD4();
  (*(v58 + 16))(v6, v13, v60);

  v73 = 32;
  v74 = 7;
  v14 = swift_allocObject();
  v15 = v62;
  v67 = v14;
  *(v14 + 16) = v61;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v64;
  v18 = v65;
  v75 = v16;
  *(v16 + 16) = v63;
  *(v16 + 24) = v17 & 1 & v18;
  v93 = sub_10007CED8();
  v94 = sub_10007DBC8();
  v70 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 34;
  v81 = swift_allocObject();
  v71 = 8;
  *(v81 + 16) = 8;
  v19 = swift_allocObject();
  v20 = v67;
  v69 = v19;
  *(v19 + 16) = v66;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v69;
  v83 = v21;
  *(v21 + 16) = v68;
  *(v21 + 24) = v22;
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v71;
  v23 = swift_allocObject();
  v24 = v75;
  v77 = v23;
  *(v23 + 16) = v72;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v77;
  v90 = v25;
  *(v25 + 16) = v76;
  *(v25 + 24) = v26;
  v92 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v88 = sub_10007DEC8();
  v91 = v27;

  v28 = v79;
  v29 = v91;
  *v91 = v78;
  v29[1] = v28;

  v30 = v81;
  v31 = v91;
  v91[2] = v80;
  v31[3] = v30;

  v32 = v83;
  v33 = v91;
  v91[4] = v82;
  v33[5] = v32;

  v34 = v85;
  v35 = v91;
  v91[6] = v84;
  v35[7] = v34;

  v36 = v87;
  v37 = v91;
  v91[8] = v86;
  v37[9] = v36;

  v38 = v90;
  v39 = v91;
  v91[10] = v89;
  v39[11] = v38;
  sub_100006FD4();

  if (os_log_type_enabled(v93, v94))
  {
    v40 = v53;
    v45 = sub_10007DC88();
    v44 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v46 = sub_10000742C(0, v44, v44);
    v47 = sub_10000742C(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = &v99;
    v99 = v45;
    v50 = &v98;
    v98 = v46;
    v51 = &v97;
    v97 = v47;
    v48 = 2;
    sub_100007480(2, &v99);
    sub_100007480(v48, v49);
    v95 = v78;
    v96 = v79;
    sub_100007494(&v95, v49, v50, v51);
    v52 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v95 = v80;
      v96 = v81;
      sub_100007494(&v95, &v99, &v98, &v97);
      v43[4] = 0;
      v95 = v82;
      v96 = v83;
      sub_100007494(&v95, &v99, &v98, &v97);
      v43[3] = 0;
      v95 = v84;
      v96 = v85;
      sub_100007494(&v95, &v99, &v98, &v97);
      v43[2] = 0;
      v95 = v86;
      v96 = v87;
      sub_100007494(&v95, &v99, &v98, &v97);
      v43[1] = 0;
      v95 = v89;
      v96 = v90;
      sub_100007494(&v95, &v99, &v98, &v97);
      _os_log_impl(&_mh_execute_header, v93, v94, "[%{public}s] Received count:%ld", v45, 0x16u);
      sub_1000074E0(v46, 0, v44);
      sub_1000074E0(v47, 1, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v93);
  (*(v58 + 8))(v57, v60);
  v43[0] = &v100;
  swift_beginAccess();
  v41 = v64;
  v42 = v54;
  *(v54 + 16) = v63;
  *(v42 + 24) = v41 & 1;
  swift_endAccess();
  dispatch_group_leave(v55);
}

uint64_t sub_10000F11C(uint64_t a1, char a2)
{
  if (a2)
  {
    return -1;
  }

  return a1;
}

void sub_10000F178(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v161 = a1;
  v160 = a2;
  v155 = a3;
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v134 = sub_100013124;
  v135 = sub_100009484;
  v136 = sub_1000140C4;
  v137 = sub_100009484;
  v138 = sub_100009410;
  v139 = sub_100009410;
  v140 = sub_1000094D0;
  v141 = sub_100009410;
  v142 = sub_100009410;
  v143 = sub_1000094D0;
  v144 = sub_100013124;
  v145 = sub_100009484;
  v146 = sub_100013E8C;
  v147 = sub_100009484;
  v148 = sub_100009410;
  v149 = sub_100009410;
  v150 = sub_1000094D0;
  v151 = sub_100009410;
  v152 = sub_100009410;
  v153 = sub_1000094D0;
  v188 = 0;
  v189 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v154 = 0;
  v175 = 0;
  v162 = sub_10007CEF8();
  v163 = *(v162 - 8);
  v164 = v162 - 8;
  v165 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v161);
  v166 = v68 - v165;
  v167 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v168 = v68 - v167;
  v188 = v9;
  v189 = v10 & 1;
  v186 = v11;
  v187 = v12;
  v185 = v13 + 16;
  v184 = v14 + 16;
  v183 = v15;
  if (v10)
  {
    v132 = v161;
    v42 = v166;
    v78 = v161;
    swift_errorRetain();
    v182 = v78;
    v43 = sub_10000AFD4();
    (*(v163 + 16))(v42, v43, v162);

    v83 = 32;
    v84 = 7;
    v44 = swift_allocObject();
    v45 = v156;
    v79 = v44;
    *(v44 + 16) = v155;
    *(v44 + 24) = v45;
    swift_errorRetain();
    v85 = swift_allocObject();
    *(v85 + 16) = v78;
    v96 = sub_10007CED8();
    v97 = sub_10007DBB8();
    v81 = 17;
    v87 = swift_allocObject();
    *(v87 + 16) = 34;
    v88 = swift_allocObject();
    v82 = 8;
    *(v88 + 16) = 8;
    v46 = swift_allocObject();
    v47 = v79;
    v80 = v46;
    *(v46 + 16) = v144;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v80;
    v89 = v48;
    *(v48 + 16) = v145;
    *(v48 + 24) = v49;
    v90 = swift_allocObject();
    *(v90 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = v82;
    v50 = swift_allocObject();
    v51 = v85;
    v86 = v50;
    *(v50 + 16) = v146;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v86;
    v93 = v52;
    *(v52 + 16) = v147;
    *(v52 + 24) = v53;
    v95 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v92 = sub_10007DEC8();
    v94 = v54;

    v55 = v87;
    v56 = v94;
    *v94 = v148;
    v56[1] = v55;

    v57 = v88;
    v58 = v94;
    v94[2] = v149;
    v58[3] = v57;

    v59 = v89;
    v60 = v94;
    v94[4] = v150;
    v60[5] = v59;

    v61 = v90;
    v62 = v94;
    v94[6] = v151;
    v62[7] = v61;

    v63 = v91;
    v64 = v94;
    v94[8] = v152;
    v64[9] = v63;

    v65 = v93;
    v66 = v94;
    v94[10] = v153;
    v66[11] = v65;
    sub_100006FD4();

    if (os_log_type_enabled(v96, v97))
    {
      v67 = v154;
      v70 = sub_10007DC88();
      v69 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v71 = sub_10000742C(0, v69, v69);
      v72 = sub_10000742C(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v74 = &v180;
      v180 = v70;
      v75 = &v179;
      v179 = v71;
      v76 = &v178;
      v178 = v72;
      v73 = 2;
      sub_100007480(2, &v180);
      sub_100007480(v73, v74);
      v176 = v148;
      v177 = v87;
      sub_100007494(&v176, v74, v75, v76);
      v77 = v67;
      if (v67)
      {

        __break(1u);
      }

      else
      {
        v176 = v149;
        v177 = v88;
        sub_100007494(&v176, &v180, &v179, &v178);
        v68[5] = 0;
        v176 = v150;
        v177 = v89;
        sub_100007494(&v176, &v180, &v179, &v178);
        v68[4] = 0;
        v176 = v151;
        v177 = v90;
        sub_100007494(&v176, &v180, &v179, &v178);
        v68[3] = 0;
        v176 = v152;
        v177 = v91;
        sub_100007494(&v176, &v180, &v179, &v178);
        v68[2] = 0;
        v176 = v153;
        v177 = v93;
        sub_100007494(&v176, &v180, &v179, &v178);
        _os_log_impl(&_mh_execute_header, v96, v97, "[%{public}s] Fetching messages failed with error: %s", v70, 0x16u);
        sub_1000074E0(v71, 0, v69);
        sub_1000074E0(v72, 2, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v96);
    (*(v163 + 8))(v166, v162);
    swift_errorRetain();
    v68[1] = &v181;
    swift_beginAccess();
    *(v158 + 16) = v78;

    swift_endAccess();
  }

  else
  {
    v133 = v161;
    v16 = v168;
    v112 = v161;

    v175 = v112;
    v17 = sub_10000AFD4();
    (*(v163 + 16))(v16, v17, v162);

    v117 = 32;
    v118 = 7;
    v18 = swift_allocObject();
    v19 = v156;
    v113 = v18;
    *(v18 + 16) = v155;
    *(v18 + 24) = v19;

    v119 = swift_allocObject();
    *(v119 + 16) = v112;
    v130 = sub_10007CED8();
    v131 = sub_10007DBC8();
    v115 = 17;
    v121 = swift_allocObject();
    *(v121 + 16) = 34;
    v122 = swift_allocObject();
    v116 = 8;
    *(v122 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v113;
    v114 = v20;
    *(v20 + 16) = v134;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v114;
    v123 = v22;
    *(v22 + 16) = v135;
    *(v22 + 24) = v23;
    v124 = swift_allocObject();
    *(v124 + 16) = 32;
    v125 = swift_allocObject();
    *(v125 + 16) = v116;
    v24 = swift_allocObject();
    v25 = v119;
    v120 = v24;
    *(v24 + 16) = v136;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v120;
    v127 = v26;
    *(v26 + 16) = v137;
    *(v26 + 24) = v27;
    v129 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v126 = sub_10007DEC8();
    v128 = v28;

    v29 = v121;
    v30 = v128;
    *v128 = v138;
    v30[1] = v29;

    v31 = v122;
    v32 = v128;
    v128[2] = v139;
    v32[3] = v31;

    v33 = v123;
    v34 = v128;
    v128[4] = v140;
    v34[5] = v33;

    v35 = v124;
    v36 = v128;
    v128[6] = v141;
    v36[7] = v35;

    v37 = v125;
    v38 = v128;
    v128[8] = v142;
    v38[9] = v37;

    v39 = v127;
    v40 = v128;
    v128[10] = v143;
    v40[11] = v39;
    sub_100006FD4();

    if (os_log_type_enabled(v130, v131))
    {
      v41 = v154;
      v104 = sub_10007DC88();
      v103 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v105 = sub_10000742C(0, v103, v103);
      v106 = sub_10000742C(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v108 = &v173;
      v173 = v104;
      v109 = &v172;
      v172 = v105;
      v110 = &v171;
      v171 = v106;
      v107 = 2;
      sub_100007480(2, &v173);
      sub_100007480(v107, v108);
      v169 = v138;
      v170 = v121;
      sub_100007494(&v169, v108, v109, v110);
      v111 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v169 = v139;
        v170 = v122;
        sub_100007494(&v169, &v173, &v172, &v171);
        v102 = 0;
        v169 = v140;
        v170 = v123;
        sub_100007494(&v169, &v173, &v172, &v171);
        v101 = 0;
        v169 = v141;
        v170 = v124;
        sub_100007494(&v169, &v173, &v172, &v171);
        v100 = 0;
        v169 = v142;
        v170 = v125;
        sub_100007494(&v169, &v173, &v172, &v171);
        v99 = 0;
        v169 = v143;
        v170 = v127;
        sub_100007494(&v169, &v173, &v172, &v171);
        _os_log_impl(&_mh_execute_header, v130, v131, "[%{public}s] Received messages:\n\t%s", v104, 0x16u);
        sub_1000074E0(v105, 0, v103);
        sub_1000074E0(v106, 2, &type metadata for Any + 8);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v130);
    (*(v163 + 8))(v168, v162);

    v98 = &v174;
    swift_beginAccess();
    *(v157 + 16) = v112;

    swift_endAccess();
  }

  dispatch_group_leave(v159);
}

uint64_t sub_1000107F8(uint64_t a1)
{
  v8[1] = a1;
  KeyPath = swift_getKeyPath();

  v6 = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
  v1 = sub_1000142C8();
  v3 = sub_10001BD00(sub_100014294, KeyPath, v6, &type metadata for String, &type metadata for Never, v1, &protocol witness table for Never, v7);

  v8[0] = v3;
  sub_10007D898("\n\t", 2uLL, 1);
  sub_1000094DC(&qword_10009AC40, &unk_10007F268);
  sub_100014350();
  v4 = sub_10007D828();

  sub_10000A480(v8);
  return v4;
}

char *sub_10001095C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v12 = &v9 - v10;
  sub_1000143D8(v2, &v9 - v10);
  v3 = sub_100031168();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_100014700(v6);
}

char *sub_100010A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v5 = a1;
  v8 = a2;
  v6 = (*(*(type metadata accessor for Message(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v9 = &v5 - v6;
  sub_1000143D8(v3, &v5 - v6);

  swift_getAtKeyPath();

  return sub_100014700(v9);
}

uint64_t sub_100010AC0(uint64_t a1)
{
  swift_errorRetain();
  v2 = sub_10007CD68();
  v3 = [v2 ef_publicDescription];
  v4 = sub_10007D868();
  _objc_release(v2);
  _objc_release(v3);

  return v4;
}

void sub_100010B48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = a1 != 0;
  swift_beginAccess();
  *(a2 + 16) = v3;
  swift_endAccess();
  dispatch_group_leave(a3);
}

uint64_t sub_100010C30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
  _objc_release(a2);
}

uint64_t sub_100010CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  swift_beginAccess();
  v20 = *(a1 + 16);

  swift_endAccess();
  swift_beginAccess();
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a3 + 16);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(a4 + 16);
  swift_errorRetain();
  swift_endAccess();
  if (!v20 || v17 == 2)
  {
    if (v19)
    {
      swift_errorRetain();

      swift_errorRetain();
      LOWORD(v22) = 0;
      BYTE2(v22) = 1;
      a5(v19, 0, v22);
      sub_100013DCC(v19, 0, 0, 1);
    }

    else
    {

      sub_100013D50();
      v9 = swift_allocError();
      *v8 = 0;
      LOWORD(v23) = 0;
      BYTE2(v23) = 1;
      a5(v9, 0, v23);
      sub_100013DCC(v9, 0, 0, 1);
    }
  }

  else
  {

    v6 = v17 & 1;
    v10 = v15 & 1 | (v6 << 8);
    LOWORD(v21) = v15 & 1 | (v6 << 8);
    BYTE2(v21) = 0;
    a5(v20, v14, v21);
    sub_100013DCC(v20, v14, v10, 0);
  }
}

uint64_t sub_1000110BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v34 = a2;
  v37 = a3;
  v38 = a4;
  v45 = 0;
  v39 = sub_1000117D4;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v51 = 0;
  v25 = 0;
  v24 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v41 = &v23 - v24;
  v26 = *(type metadata accessor for Mailbox(v5) - 8);
  v29 = v26;
  v30 = *(v26 + 64);
  v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v33 = (&v23 - v27);
  v63 = v6;
  v62 = v7;
  v60 = v8;
  v61 = v9;
  v59 = v4;
  sub_10007D658();
  v31 = 7;
  v44 = swift_allocObject();
  _objc_retain(v43);
  swift_unknownObjectWeakInit();
  _objc_release(v43);

  sub_10000DFBC(v28, v33);

  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v35 = (v32 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = v32;
  v12 = v10;
  v13 = v33;
  v40 = v12;
  *(v12 + 16) = v44;
  sub_10000E380(v13, v12 + v11);
  v14 = v36;
  v15 = v37;
  v16 = v38;
  v17 = v39;
  v18 = v40;
  *(v40 + v35) = v34;
  v19 = (v18 + v14);
  *v19 = v15;
  v19[1] = v16;
  v57 = v17;
  v58 = v18;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = 0;
  v55 = sub_10000AAE4;
  v56 = &unk_100091D88;
  v42 = _Block_copy(&aBlock);
  sub_100006990();
  v20 = sub_10007D638();
  v21 = v43;
  v49 = v20;

  v51 = v49;
  v46 = &v21[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue];
  v47 = &v50;
  swift_beginAccess();
  v48 = *v46;

  swift_endAccess();
  sub_1000029C4(v49);
}

uint64_t sub_1000114C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v11[8] = (a1 + 16);
  v11[7] = a2;
  v11[6] = a3;
  v11[4] = a4;
  v11[5] = a5;
  swift_beginAccess();
  v11[0] = swift_unknownObjectWeakLoadStrong();
  if (v11[0])
  {
    v6 = v11[0];
    _objc_retain(v11[0]);
    sub_100012FD8(v11);
    swift_endAccess();

    _objc_release(v6);
    sub_10001C5E4(a2, a3, a4, a5);
  }

  else
  {
    sub_100012FD8(v11);
    return swift_endAccess();
  }
}

uint64_t sub_1000115E8()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 24) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000117D4()
{
  v9 = *(type metadata accessor for Mailbox(0) - 8);
  v1 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v2 = (v1 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000114C8(v3, (v0 + v1), v4, v6, v7);
}

uint64_t sub_100011890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1000118F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v18 = a2;
  v16 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController);
  _objc_retain(v8);

  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = ObjectType;
  v14 = sub_100011D44;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_100010C30;
  v13 = &unk_100091DD8;
  v7 = _Block_copy(&aBlock);

  [v8 getCurrentFocus:v7];
  _Block_release(v7);
  _objc_release(v8);
}

void sub_100011A54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_100012E00;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_10007D5E8();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v12 - v13;
  v28 = sub_10007D608();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v12 - v14;
  v40 = v4;
  v38 = v5;
  v39 = v6;
  sub_100009744();
  v30 = sub_10007DC08();
  _objc_retain(v19);

  v7 = swift_allocObject();
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v7[2] = v19;
  v7[3] = v8;
  v7[4] = v9;
  v7[5] = v10;
  v36 = v11;
  v37 = v7;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_10000AAE4;
  v35 = &unk_100091EE0;
  v29 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  _objc_release(v30);
}

uint64_t sub_100011D54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100011DB8(void *a1, void (*a2)(void), uint64_t a3)
{
  v73 = a1;
  v67 = a2;
  v66 = a3;
  v60 = sub_100012EB8;
  v61 = sub_10000A754;
  v62 = sub_100009410;
  v63 = sub_100009410;
  v64 = sub_10000A7A0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v65 = 0;
  v68 = sub_10007CEF8();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v72 = &v22 - v71;
  v84 = v3;
  v82 = v4;
  v83 = v5;
  _objc_retain(v3);
  if (v73)
  {
    v59 = v73;
    v56 = v73;
    v6 = [v73 focusedAccountIdentifiers];
    v57 = v6;
    if (v6)
    {
      v55 = v57;
      v52 = v57;
      v53 = sub_10007DA78();
      _objc_release(v52);
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v51 = v54;
    _objc_release(v56);
    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

  v7 = v72;
  v37 = v58;
  v81 = v58;
  v8 = sub_10000AFD4();
  (*(v69 + 16))(v7, v8, v68);

  v40 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  v49 = sub_10007CED8();
  v50 = sub_10007DBC8();
  v38 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v39 = 32;
  v9 = swift_allocObject();
  v10 = v41;
  v42 = v9;
  *(v9 + 16) = v60;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v42;
  v46 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = v12;
  v48 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v45 = sub_10007DEC8();
  v47 = v13;

  v14 = v43;
  v15 = v47;
  *v47 = v62;
  v15[1] = v14;

  v16 = v44;
  v17 = v47;
  v47[2] = v63;
  v17[3] = v16;

  v18 = v46;
  v19 = v47;
  v47[4] = v64;
  v19[5] = v18;
  sub_100006FD4();

  if (os_log_type_enabled(v49, v50))
  {
    v20 = v65;
    v30 = sub_10007DC88();
    v28 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v29 = 0;
    v31 = sub_10000742C(0, v28, v28);
    v32 = sub_10000742C(v29, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = &v78;
    v78 = v30;
    v34 = &v77;
    v77 = v31;
    v35 = &v76;
    v76 = v32;
    sub_100007480(0, &v78);
    sub_100007480(1, v33);
    v74 = v62;
    v75 = v43;
    sub_100007494(&v74, v33, v34, v35);
    v36 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v74 = v63;
      v75 = v44;
      sub_100007494(&v74, &v78, &v77, &v76);
      v27 = 0;
      v74 = v64;
      v75 = v46;
      sub_100007494(&v74, &v78, &v77, &v76);
      _os_log_impl(&_mh_execute_header, v49, v50, "Received %ld focused account identifiers", v30, 0xCu);
      v26 = 0;
      sub_1000074E0(v31, 0, v28);
      sub_1000074E0(v32, v26, &type metadata for Any + 8);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v49);
  (*(v69 + 8))(v72, v68);

  v79 = v37;
  if (v37)
  {
    v80 = v79;
  }

  else
  {
    v25 = &type metadata for String;
    sub_10007DEC8();
    v80 = sub_10007DA88();
    if (v79)
    {
      sub_10000A480(&v79);
    }
  }

  v23 = v80;
  v24 = 0;
  v67();
  sub_100012F98(v23, v24 & 1);
}

uint64_t sub_100012650(uint64_t a1)
{

  if (a1)
  {
    v3 = sub_10007DA98();

    v4 = v3;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

id sub_1000127C0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012970(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100012AD8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_100012D10()
{
  v2 = qword_10009AC20;
  if (!qword_10009AC20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012DB0()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100012E14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100012F98(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100013168()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 16) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000132FC()
{
  type metadata accessor for Mailbox(0);

  return sub_10000E66C();
}

uint64_t sub_1000135B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_100013628();

  return sub_10002CE44(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_100013628()
{
  v2 = qword_10009AC28;
  if (!qword_10009AC28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100013890()
{

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_100013910()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_10001396C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000139D0()
{

  return swift_deallocObject();
}

uint64_t sub_100013A4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100013AB0()
{

  _objc_release(*(v0 + 40));
  return swift_deallocObject();
}

unint64_t sub_100013D50()
{
  v2 = qword_10009BBA0;
  if (!qword_10009BBA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100013DCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

unint64_t sub_1000142C8()
{
  v2 = qword_10009AC38;
  if (!qword_10009AC38)
  {
    sub_100009860(&qword_10009AC30, &qword_10007F260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014350()
{
  v2 = qword_10009AC48;
  if (!qword_10009AC48)
  {
    sub_100009860(&qword_10009AC40, &unk_10007F268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC48);
    return WitnessTable;
  }

  return v2;
}

char *sub_1000143D8(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = *(a1 + 1);

  *(a2 + 1) = v7;
  *(a2 + 2) = *(a1 + 2);
  v8 = *(a1 + 3);

  *(a2 + 3) = v8;
  *(a2 + 4) = *(a1 + 4);
  v9 = *(a1 + 5);

  *(a2 + 5) = v9;
  *(a2 + 6) = *(a1 + 6);
  v10 = *(a1 + 7);

  *(a2 + 7) = v10;
  v13 = type metadata accessor for Message(0);
  v11 = v13[8];
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 16))(&a2[v11], &a1[v11]);
  a2[v13[9]] = a1[v13[9]];
  a2[v13[10]] = a1[v13[10]];
  a2[v13[11]] = a1[v13[11]];
  a2[v13[12]] = a1[v13[12]];
  v3 = v13[13];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  v4[8] = a1[v3 + 8];
  a2[v13[14]] = a1[v13[14]];
  v14 = v13[15];
  v16 = sub_10007CD98();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&a1[v14], 1))
  {
    v5 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(&a2[v14], &a1[v14], *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))();
    (*(v17 + 56))(&a2[v14], 0, 1, v16);
  }

  return a2;
}

char *sub_100014700(char *a1)
{

  v4 = type metadata accessor for Message(0);
  v3 = *(v4 + 32);
  v1 = sub_10007CE28();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  v5 = *(v4 + 60);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_100014898(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000148FC()
{

  return swift_deallocObject();
}

uint64_t sub_100014958(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100014A10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100014A74(void *a1)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_100014D28(v10, v11);
  switch(v11)
  {
    case 0uLL:
      sub_100014D64(v10, 0);
LABEL_10:
      v6 = a1[2];

      if (v6)
      {
        v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        sub_100014EA4();
        sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
        sub_100014F08();
        sub_100014F88();
        sub_10007DAB8();
        isa = sub_10007DA68().super.isa;

        v5 = [v3 initWithMailboxTypes:0 excludeTypes:0 mailboxObjectIDs:isa excludeMailboxes:0];
        _objc_release(isa);
        _objc_retain(v5);
        v12 = v5;

        v8 = v5;
        goto LABEL_14;
      }

LABEL_15:
      sub_100014DA0(a1);
      return 0;
    case 1uLL:
      sub_100014D64(v10, 1uLL);
      goto LABEL_10;
    case 2uLL:
      goto LABEL_13;
  }

  if (v11 != 3)
  {
    if (v11 - 4 > 1)
    {
      sub_100014D64(v10, v11);
      goto LABEL_10;
    }

LABEL_13:
    sub_100014D64(v10, v11);
    goto LABEL_15;
  }

  v7 = [swift_getObjCClassFromMetadata() mailboxScopeForMailboxType:7 forExclusion:0];
  _objc_retain(v7);
  v12 = v7;
  sub_100014D64(v10, 3uLL);
  v8 = v7;
LABEL_14:
  sub_100014DA0(a1);
  _objc_release(v12);
  return v8;
}

uint64_t sub_100014D28(uint64_t a1, unint64_t a2)
{
  if (a2 > 5)
  {
  }

  return result;
}

uint64_t sub_100014D64(uint64_t a1, unint64_t a2)
{
  if (a2 > 5)
  {
  }

  return result;
}

void *sub_100014DA0(void *a1)
{

  if (a1[4] > 5uLL)
  {
  }

  v2 = a1 + *(type metadata accessor for Mailbox(0) + 28);
  v3 = sub_10007CD98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v2, 1))
  {
    (*(v4 + 8))(v2, v3);
  }

  return a1;
}

unint64_t sub_100014EA4()
{
  v2 = qword_10009AC50;
  if (!qword_10009AC50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AC50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100014F08()
{
  v2 = qword_10009AC60;
  if (!qword_10009AC60)
  {
    sub_100014EA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014F88()
{
  v2 = qword_10009AC68;
  if (!qword_10009AC68)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC68);
    return WitnessTable;
  }

  return v2;
}

void sub_100015010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_1000094DC(&unk_10009ACD0, &qword_10007F288);
  v44 = a1;
  v42 = a2;
  v43 = a3;
  v41 = v3;
  v10 = objc_opt_self();

  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  isa = sub_10007D998().super.isa;

  v9 = [v7 messageListItemsForItemIDs:isa];
  _objc_release(isa);
  sub_1000094DC(&unk_10009ACE0, &qword_10007F298);
  sub_10007D9A8();
  v11 = sub_10007D998().super.isa;

  _objc_release(v9);
  v13 = [v10 join:v11];
  _objc_release(v11);
  v39 = sub_100015408;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_100015764;
  v38 = &unk_100092A70;
  v12 = _Block_copy(&aBlock);
  v18 = [v13 then:?];
  _Block_release(v12);
  _objc_release(v13);
  v33 = v18;

  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v31 = sub_1000159F0;
  v32 = v4;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_1000159FC;
  v30 = &unk_100092AC0;
  v14 = _Block_copy(&v26);

  [v18 addSuccessBlock:v14];
  _Block_release(v14);

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v24 = sub_100015B8C;
  v25 = v5;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_100015B98;
  v23 = &unk_100092B10;
  v17 = _Block_copy(&v19);

  [v18 addFailureBlock:v17];
  _Block_release(v17);
  _objc_release(v18);
}

id sub_100015408(uint64_t a1)
{
  v11[2] = a1;
  v10 = objc_opt_self();
  v11[1] = a1;
  sub_100015F58();
  sub_100015FBC();
  sub_100016020();
  v11[0] = sub_10007D928();
  KeyPath = swift_getKeyPath();

  v6 = sub_1000094DC(&qword_10009AD10, &qword_10007F2E0);
  v7 = sub_1000094DC(&unk_10009ACE0, &qword_10007F298);
  v1 = sub_1000160F8();
  sub_10001BD00(sub_1000160C4, KeyPath, v6, v7, &type metadata for Never, v1, &protocol witness table for Never, v8);

  sub_10000A480(v11);
  isa = sub_10007D998().super.isa;

  v4 = [v10 join:isa];
  _objc_release(isa);
  return v4;
}

uint64_t sub_1000155F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_10000A9B4(a1, v4);
  sub_100015FBC();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

void sub_100015678(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 displayMessage];
  _objc_release(v2);
}

uint64_t sub_1000156EC(id *a1, uint64_t a2)
{
  v3 = *a1;
  _objc_retain(*a1);

  swift_getAtKeyPath();
  _objc_release(v3);
}

id sub_100015764(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v5 = v3(a2);
  _objc_release(a2);

  return v5;
}

uint64_t sub_1000157F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10001585C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_1000094DC(&qword_10009ACF0, qword_10007F2A0);
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    (a2)(v4, 0);
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1000159FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_100015A64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100015AC8(uint64_t a1, void (*a2)(void, uint64_t))
{

  swift_errorRetain();
  a2(0, a1);
}

uint64_t sub_100015B98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
}

uint64_t sub_100015C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_100015D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a1)
  {
    sub_100015EF4();
    isa = sub_10007D998().super.isa;

    v6 = isa;
  }

  else
  {
    v6 = 0;
  }

  swift_errorRetain();
  if (a2)
  {
    v3 = sub_10007CD68();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v6);
  _objc_release(v4);
  _objc_release(v6);
}

unint64_t sub_100015EF4()
{
  v2 = qword_10009B060;
  if (!qword_10009B060)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B060);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100015F58()
{
  v2 = qword_10009ACF8;
  if (!qword_10009ACF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ACF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100015FBC()
{
  v2 = qword_10009AD00;
  if (!qword_10009AD00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AD00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100016020()
{
  v2 = qword_10009AD08;
  if (!qword_10009AD08)
  {
    sub_100015F58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000160F8()
{
  v2 = qword_10009AD18;
  if (!qword_10009AD18)
  {
    sub_100009860(&qword_10009AD10, &qword_10007F2E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100016180(uint64_t a1, uint64_t a2)
{
  v5[3] = a2;
  v5[2] = a1;
  sub_10007D898("com.apple.mobilemail.mailwidgetextension", 0x28uLL, 1);
  v5[0] = sub_10007DEB8();
  v5[1] = v2;
  v6._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v6);

  sub_1000162A8(a1);
  v7._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v7);

  sub_1000099C8(v5);
  sub_10007D888();
  return sub_10007CEE8();
}

uint64_t sub_1000162A8(uint64_t a1)
{
  v2._countAndFlagsBits = sub_10007DF68();
  sub_10007D8B8(v2);
}

BOOL sub_1000162E0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1000164C8()
{
  v2 = qword_10009AD20;
  if (!qword_10009AD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD20);
    return WitnessTable;
  }

  return v2;
}

void sub_1000165A0(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v58 = a1;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v55 = 0;
  v50 = sub_10007CD98();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = v15 - v53;
  v56 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v57 = v15 - v56;
  v59 = (*(*(type metadata accessor for Mailbox(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v60 = (v15 - v59);
  v61 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v62 = (v15 - v61);
  v71 = v15 - v61;
  v70 = v6;
  v63 = [v6 mailbox];
  if (!v63)
  {
    sub_100016CFC();
    v46 = swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v47 = v46;
LABEL_20:
    v15[1] = v47;
    _objc_release(v58);
    return;
  }

  v48 = v63;
  v44 = v63;
  v69 = v63;
  _objc_retain(v63);
  v8 = [v44 identifier];
  v45 = v8;
  if (v8)
  {
    v43 = v45;
    v38 = v45;
    v39 = sub_10007D868();
    v40 = v9;
    _objc_release(v38);
    v41 = v39;
    v42 = v40;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v36 = v42;
  v37 = v41;
  if (!v42)
  {
    _objc_release(v44);
    sub_100016CFC();
    v33 = swift_allocError();
    *v10 = 0;
    swift_willThrow();
    _objc_release(v44);
    v47 = v33;
    goto LABEL_20;
  }

  v34 = v37;
  v35 = v36;
  v29 = v36;
  v30 = v37;
  v67 = v37;
  v68 = v36;
  _objc_release(v44);
  _objc_retain(v44);
  v11 = sub_100016D78(v44);
  v31 = v11;
  v32 = v12;
  if (v12 == 6)
  {
    sub_100016CFC();
    v26 = swift_allocError();
    *v13 = 2;
    swift_willThrow();

    _objc_release(v44);
    v47 = v26;
    goto LABEL_20;
  }

  v27 = v31;
  v28 = v32;
  v24 = v32;
  v25 = v31;
  v65 = v31;
  v66 = v32;

  v14 = [v58 mailbox];
  v64 = v14;
  if (v14)
  {
    v20 = &v64;
    v21 = v64;
    _objc_retain(v64);
    sub_100012FD8(v20);
    v22 = sub_100072798();
    _objc_release(v21);
    v23 = v22;
  }

  else
  {
    sub_100012FD8(&v64);
    v23 = 0;
  }

  v18 = v23;
  v19 = [v44 url];
  if (v19)
  {
    v17 = v19;
    v16 = v19;
    sub_10007CD88();
    (*(v51 + 32))(v57, v54, v50);
    (*(v51 + 56))(v57, 0, 1, v50);
    _objc_release(v16);
  }

  else
  {
    (*(v51 + 56))(v57, 1, 1, v50);
  }

  sub_100018E68(v30, v29, v18, v25, v24, v57, v60);
  sub_10000E380(v60, v62);

  _objc_release(v44);
  sub_10000DFBC(v62, v49);
  _objc_release(v58);
  sub_100014DA0(v62);
}

unint64_t sub_100016CFC()
{
  v2 = qword_10009AD28;
  if (!qword_10009AD28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100016D78(void *a1)
{
  v22 = a1;
  v15 = [a1 kind];
  v21 = v15;
  if (v15)
  {
    if (v15 == 1)
    {
      v23 = 0;
      v24 = 0;
      v7 = 0;
    }

    else if (v15 == 2)
    {
      v23 = 0;
      v24 = 1;
      v7 = 0;
    }

    else if (v15 == 3)
    {
      v23 = 0;
      v24 = 2;
      v7 = 0;
    }

    else if (v15 == 4)
    {
      v23 = 0;
      v24 = 3;
      v7 = 0;
    }

    else if (v15 == 5)
    {
      v23 = 0;
      v24 = 4;
      v7 = 0;
    }

    else if (v15 == 6)
    {
      v23 = 0;
      v24 = 5;
      v7 = 0;
    }

    else if (v15 == 7)
    {
      v13 = [a1 name];
      if (v13)
      {
        v9 = sub_10007D868();
        v10 = v1;
        _objc_release(v13);
        v11 = v9;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v16 = v11;
      v17 = v12;
      _objc_retain(a1);
      if (v12)
      {
        v18 = v16;
        v19 = v17;
      }

      else
      {
        _objc_retain(a1);
        v8 = [a1 displayString];
        v18 = sub_10007D868();
        v19 = v2;
        _objc_release(a1);
        _objc_release(v8);
      }

      _objc_release(a1);
      v5 = v18;
      v6 = v19;
      sub_100014D28(v18, v19);
      v23 = v5;
      v24 = v6;
      v7 = v5;
    }

    else
    {
      v20 = v15;
      sub_10007DEF8();
      __break(1u);
    }

    _objc_release(a1);
    sub_1000170F8(&v23);
    return v7;
  }

  else
  {
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_1000170F8(uint64_t a1)
{
  if (*(a1 + 8) > 5uLL)
  {
  }

  return a1;
}

void *sub_100017140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v72 = a4;
  v92 = a1;
  v91 = a2;
  v90 = a3;
  v74 = sub_1000160C4;
  v75 = sub_1000160C4;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v81 = 0;
  v76 = sub_10007CD98();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v80 = v30 - v79;
  v82 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v83 = v30 - v82;
  v84 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v85 = v30 - v84;
  v86 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v87 = v30 - v86;
  v88 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v89 = v30 - v88;
  v93 = (*(*(type metadata accessor for Mailbox(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v94 = (v30 - v93);
  v95 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v96 = (v30 - v95);
  v97 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v98 = (v30 - v97);
  v109 = v30 - v97;
  v108 = v15;
  v106 = v16;
  v107 = v17;
  if (!v17)
  {
    v63 = NSStringFromEMSmartMailboxType();
    v64 = sub_10007D868();
    v65 = v18;
    v99 = v92;
    KeyPath = swift_getKeyPath();

    v67 = sub_1000094DC(&qword_10009AD30, qword_10007F2F0);
    v68 = sub_100014EA4();
    v19 = sub_100017DE8();
    v20 = v73;
    v21 = sub_10001BD00(v74, KeyPath, v67, v68, &type metadata for Never, v19, &protocol witness table for Never, v69);
    v70 = v20;
    v71 = v21;
    if (!v20)
    {
      v61 = v71;

      sub_100014D28(v91, v90);
      (*(v77 + 56))(v89, 1, 1, v76);
      sub_100018E68(v64, v65, v61, v91, v90, v89, v96);
      _objc_release(v63);
      sub_10000E380(v96, v98);
      v62 = v70;
LABEL_28:
      v30[2] = v62;
      sub_10000DFBC(v98, v72);
      sub_100014D64(v91, v90);

      return sub_100014DA0(v98);
    }

    __break(1u);
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  if (v90 == 1 || v90 - 2 > 3)
  {
    v105 = v92;
    v58 = sub_1000094DC(&qword_10009AD30, qword_10007F2F0);
    v59 = sub_100017DE8();
    sub_10007DB38();
    v60 = v104;
    if (v104)
    {
      v57 = v60;
      v56 = v60;
      v103 = v60;
      sub_100017E70();
      if (sub_10007D9D8() == 1)
      {
        v54 = [v56 objectID];
        v55 = [v54 url];
        if (v55)
        {
          v53 = v55;
          v52 = v55;
          sub_10007CD88();
          (*(v77 + 32))(v85, v80, v76);
          (*(v77 + 56))(v85, 0, 1, v76);
          _objc_release(v52);
        }

        else
        {
          (*(v77 + 56))(v85, 1, 1, v76);
        }

        sub_100017ED4(v85, v87);
        _objc_release(v54);
        if ((*(v77 + 48))(v87, 1, v76) == 1)
        {
          sub_100017FFC(v87);
          v50 = 0;
          v51 = 0;
        }

        else
        {
          v48 = sub_10007CD78();
          v49 = v22;
          (*(v77 + 8))(v87, v76);
          v50 = v48;
          v51 = v49;
        }

        v46 = v51;
        v47 = v50;
        if (!v51)
        {
          sub_100013D50();
          v42 = swift_allocError();
          *v23 = 3;
          swift_willThrow();
          _objc_release(v56);
          v43 = v42;
          goto LABEL_31;
        }

        v44 = v47;
        v45 = v46;
        v37 = v46;
        v38 = v47;
        v101 = v47;
        v102 = v46;

        v100 = v92;
        v39 = swift_getKeyPath();

        v24 = sub_100014EA4();
        v25 = v73;
        v26 = sub_10001BD00(v75, v39, v58, v24, &type metadata for Never, v59, &protocol witness table for Never, v69);
        v40 = v25;
        v41 = v26;
        if (!v25)
        {
          v35 = v41;

          sub_100014D28(v91, v90);
          v36 = [v56 externalURL];
          if (v36)
          {
            v34 = v36;
            v33 = v36;
            sub_10007CD88();
            (*(v77 + 32))(v83, v80, v76);
            (*(v77 + 56))(v83, 0, 1, v76);
            _objc_release(v33);
          }

          else
          {
            (*(v77 + 56))(v83, 1, 1, v76);
          }

          sub_100018E68(v38, v37, v35, v91, v90, v83, v94);
          sub_10000E380(v94, v98);

          _objc_release(v56);
          v62 = v40;
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      _objc_release(v56);
    }

    sub_100013D50();
    v32 = swift_allocError();
    *v27 = 4;
    swift_willThrow();
    v43 = v32;
    goto LABEL_31;
  }

  sub_100013D50();
  v31 = swift_allocError();
  *v28 = 3;
  swift_willThrow();
  v43 = v31;
LABEL_31:
  v30[1] = v43;
  sub_100014D64(v91, v90);
}

unint64_t sub_100017DE8()
{
  v2 = qword_10009AD38;
  if (!qword_10009AD38)
  {
    sub_100009860(&qword_10009AD30, qword_10007F2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017E70()
{
  v2 = qword_10009AD40;
  if (!qword_10009AD40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AD40);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_100017ED4(const void *a1, void *a2)
{
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100017FFC(uint64_t a1)
{
  v3 = sub_10007CD98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_1000180B0(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 objectID];
  _objc_release(v2);
}

void sub_10001813C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v29 = a1;
  v28 = a2;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v30 = sub_10007CD48();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v34 = &v9 - v33;
  v35 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v36 = &v9 - v35;
  v40 = &v9 - v35;
  v38 = v5;
  v39 = v6;
  if (v6)
  {
    switch(v28)
    {
      case 1:
LABEL_7:
        v37 = 0;
        v26 = 0;
        break;
      case 2:
        v24 = MFCombinedMailboxFlagged;
        _objc_retain(MFCombinedMailboxFlagged);
        _objc_retain(v24);
        v37 = v24;
        v26 = v24;
        break;
      case 3:
        v23 = MFCombinedMailboxUnread;
        _objc_retain(MFCombinedMailboxUnread);
        _objc_retain(v23);
        v37 = v23;
        v26 = v23;
        break;
      case 4:
        v22 = MFCombinedMailboxVIP;
        _objc_retain(MFCombinedMailboxVIP);
        _objc_retain(v22);
        v37 = v22;
        v26 = v22;
        break;
      case 5:
        v21 = MFCombinedMailboxToday;
        _objc_retain(MFCombinedMailboxToday);
        _objc_retain(v21);
        v37 = v21;
        v26 = v21;
        break;
      default:
        goto LABEL_7;
    }
  }

  else
  {
    v25 = MFCombinedMailboxAllInbox;
    _objc_retain(MFCombinedMailboxAllInbox);
    _objc_retain(v25);
    v37 = v25;
    v26 = v25;
  }

  v20 = v26;
  sub_10007CD38();
  v17 = EMAppleMailboxURLScheme;
  _objc_retain(EMAppleMailboxURLScheme);
  v18 = sub_100018548(v17);
  v19 = v7;
  _objc_release(v17);
  sub_10007CD28();
  if (v20)
  {
    v16 = v20;
    v11 = v20;
    v12 = sub_100018548(v20);
    v13 = v8;
    _objc_release(v11);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_10007CD18();
  (*(v31 + 16))(v34, v36, v30);
  sub_10007CD08();
  v10 = *(v31 + 8);
  v9 = v31 + 8;
  v10(v34, v30);
  v10(v36, v30);
  sub_100012FD8(&v37);
}

uint64_t sub_100018548(void *a1)
{
  _objc_retain(a1);
  v3 = sub_10007D868();
  _objc_release(a1);
  return v3;
}

uint64_t sub_1000185A8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100018710(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100018938()
{
  v2 = qword_10009AD48;
  if (!qword_10009AD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000189B4()
{
  v22 = 0;
  v23 = 0;
  v28 = v0;
  v19 = sub_1000196A8();
  if (v19)
  {
    v13 = [v19 ef_publicDescription];
    v14 = sub_10007D868();
    v15 = v1;
    _objc_release(v19);
    _objc_release(v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v24 = v16;
  v25 = v17;
  if (v17)
  {
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = sub_10007D898("<nil>", 5uLL, 1);
    v27 = v2;
  }

  v6 = v26;
  v11 = v27;
  v22 = v26;
  v23 = v27;
  v21[0] = sub_10007DEB8();
  v21[1] = v3;
  v29._countAndFlagsBits = sub_10007D898("id:", 3uLL, 1);
  sub_10007DEA8(v29);

  v20[2] = v6;
  v20[3] = v11;
  sub_10007DE98();
  v30._countAndFlagsBits = sub_10007D898(", name:", 7uLL, 1);
  sub_10007DEA8(v30);

  v7 = *(v18 + 24);
  v8 = *(v18 + 32);
  sub_100014D28(v7, v8);
  v9 = sub_10001A6A8(v7, v8);
  v10 = v4;
  sub_100014D64(v7, v8);
  v20[0] = v9;
  v20[1] = v10;
  sub_10007DE98();
  sub_1000099C8(v20);
  v31._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v31);

  sub_1000099C8(v21);
  v12 = sub_10007D888();

  return v12;
}

uint64_t sub_100018CB4()
{
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_100014D28(v8, v9);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_100014D64(v8, 1uLL);
    }

    else
    {
      if (v9 - 2 <= 3)
      {
        sub_100014D64(v8, v9);
        v2 = 1;
        return v2 & 1;
      }

      sub_100014D64(v8, v9);
    }
  }

  else
  {
    sub_100014D64(v8, 0);
  }

  v6 = *(v7 + 16);

  if (v6)
  {
    sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
    sub_10001AA34();
    v4 = sub_10007DB58();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  v2 = v3 ^ 1;
  return v2 & 1;
}

void *sub_100018E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  v25 = a7;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v26 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v39 = &v24 - v26;
  v27 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v26);
  v28 = &v24 - v27;
  v38 = 0;
  v29 = type metadata accessor for Mailbox(0);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v34 = (&v24 - v30);
  v51 = &v24 - v30;
  v49 = v9;
  v50 = v10;
  v48 = v11;
  v46 = v12;
  v47 = v13;
  v45 = v14;

  v15 = v32;
  v16 = v34;
  *v34 = v31;
  v16[1] = v15;

  v17 = v37;
  v18 = v36;
  v34[2] = v33;
  sub_100014D28(v17, v18);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v39;
  v34[3] = v37;
  v19[4] = v21;
  sub_10001AB30(v20, v22);
  sub_100014D28(v37, v36);
  v40 = sub_10007CD98();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = *(v41 + 48);
  v44 = v41 + 48;
  if ((v43)(v39, 1) == 1)
  {
    sub_10001813C(v37, v36, v28);
    if (v43(v39, 1, v40) != 1)
    {
      sub_100017FFC(v39);
    }
  }

  else
  {
    (*(v41 + 32))(v28, v39, v40);
    (*(v41 + 56))(v28, 0, 1, v40);
  }

  sub_100014D64(v37, v36);
  sub_100017ED4(v28, v34 + *(v29 + 28));
  sub_10000DFBC(v34, v25);
  sub_100017FFC(v35);
  sub_100014D64(v37, v36);

  return sub_100014DA0(v34);
}

uint64_t sub_1000191C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100014D28(a1, a2);
  sub_100014D28(a3, a4);
  switch(a2)
  {
    case 0uLL:
      if (!a4)
      {
        sub_100014D64(a1, 0);
        sub_100014D64(a3, 0);
        v5 = 1;
        return v5 & 1;
      }

LABEL_23:
      sub_100014D64(a1, a2);
      sub_100014D64(a3, a4);
      v5 = 0;
      return v5 & 1;
    case 1uLL:
      if (a4 == 1)
      {
        sub_100014D64(a1, 1uLL);
        sub_100014D64(a3, 1uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 2uLL:
      if (a4 == 2)
      {
        sub_100014D64(a1, 2uLL);
        sub_100014D64(a3, 2uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 3uLL:
      if (a4 == 3)
      {
        sub_100014D64(a1, 3uLL);
        sub_100014D64(a3, 3uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 4uLL:
      if (a4 == 4)
      {
        sub_100014D64(a1, 4uLL);
        sub_100014D64(a3, 4uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 5uLL:
      if (a4 == 5)
      {
        sub_100014D64(a1, 5uLL);
        sub_100014D64(a3, 5uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
  }

  if (a4 <= 5)
  {
    goto LABEL_23;
  }

  if (sub_10007D8A8())
  {

    sub_100014D64(a1, a2);
    sub_100014D64(a3, a4);
    v5 = 1;
  }

  else
  {

    sub_100014D64(a1, a2);
    sub_100014D64(a3, a4);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1000195D4()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_10001960C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100019638()
{
  v2 = *(v0 + 24);
  sub_100014D28(v2, *(v0 + 32));
  return v2;
}

uint64_t sub_1000196A8()
{
  v3 = *(v0 + 16);

  if (!v3)
  {
    return 0;
  }

  sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
  sub_10001AA34();
  sub_10007DB38();

  return v4;
}

void *sub_100019764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v28 = a7;
  v26 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v29 = a6;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v17 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v25 = &v16 - v17;
  v19 = *(*(type metadata accessor for Mailbox(0) - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v27 = (&v16 - v18);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v30 = (&v16 - v20);
  v37 = &v16 - v20;
  v35 = v26;
  v36 = v9;
  v34 = v10;
  v32 = v11;
  v33 = v12;
  v31 = v13;
  sub_10001AB30(v13, v14);
  sub_100018E68(v26, v21, v22, v23, v24, v25, v27);
  sub_10000E380(v27, v30);
  sub_10000DFBC(v30, v28);
  sub_100017FFC(v29);
  return sub_100014DA0(v30);
}

void *sub_100019934()
{
  v0 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v13 = &v4 - v5;
  v12 = 0;
  v7 = type metadata accessor for Mailbox(0);
  v6 = qword_10009DC00;
  sub_100001F90(v7, qword_10009DC00);
  v9 = sub_10000202C(v7, v6);
  v8 = 1;
  v10 = sub_10007D898("VIP", 3uLL, 1);
  v11 = v1;
  v2 = sub_10007CD98();
  (*(*(v2 - 8) + 56))(v13, v8);
  return sub_100018E68(v10, v11, v12, v12, 4uLL, v13, v9);
}

uint64_t sub_100019A70()
{
  if (qword_10009A600 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Mailbox(0);
  return sub_10000202C(v0, qword_10009DC00);
}

void *sub_100019B08()
{
  v0 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v13 = &v4 - v5;
  v12 = 0;
  v7 = type metadata accessor for Mailbox(0);
  v6 = qword_10009DC18;
  sub_100001F90(v7, qword_10009DC18);
  v9 = sub_10000202C(v7, v6);
  v8 = 1;
  v10 = sub_10007D898("ALL_INBOXES", 0xBuLL, 1);
  v11 = v1;
  v2 = sub_10007CD98();
  (*(*(v2 - 8) + 56))(v13, v8);
  return sub_100018E68(v10, v11, v12, v12, v12, v13, v9);
}

uint64_t sub_100019C40()
{
  if (qword_10009A608 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Mailbox(0);
  return sub_10000202C(v0, qword_10009DC18);
}

uint64_t sub_100019CD8()
{
  v70 = *(v0 + 24);
  v71 = *(v0 + 32);
  sub_100014D28(v70, v71);
  if (v71)
  {
    switch(v71)
    {
      case 1uLL:
        v52 = sub_10007D898("INBOX", 5uLL, 1);
        v55 = v11;
        v51 = sub_10007D898("Title of the 'Inbox' mailbox displayed in the widget header", 0x3BuLL, 1);
        v54 = v12;
        v53 = sub_10001A2B0();
        v13 = sub_10001A2F0();
        v14.super.isa = v53;
        v86._countAndFlagsBits = v13;
        v74._countAndFlagsBits = v52;
        v86._object = v15;
        v74._object = v55;
        v32._countAndFlagsBits = v54;
        v80.value._object = 0;
        v80.value._countAndFlagsBits = 0;
        v56 = sub_10007CD58(v74, v80, v14, v86, v51, v32);

        _objc_release(v53);

        return v56;
      case 2uLL:
        v46 = sub_10007D898("FLAGGED", 7uLL, 1);
        v49 = v16;
        v45 = sub_10007D898("Title of the 'Flag' mailbox displayed in the widget header", 0x3AuLL, 1);
        v48 = v17;
        v47 = sub_10001A2B0();
        v18 = sub_10001A2F0();
        v19.super.isa = v47;
        v87._countAndFlagsBits = v18;
        v75._countAndFlagsBits = v46;
        v87._object = v20;
        v75._object = v49;
        v32._countAndFlagsBits = v48;
        v81.value._object = 0;
        v81.value._countAndFlagsBits = 0;
        v50 = sub_10007CD58(v75, v81, v19, v87, v45, v32);

        _objc_release(v47);

        return v50;
      case 3uLL:
        v40 = sub_10007D898("UNREAD", 6uLL, 1);
        v43 = v21;
        v39 = sub_10007D898("Title of the 'Unread' mailbox displayed in the widget header", 0x3CuLL, 1);
        v42 = v22;
        v41 = sub_10001A2B0();
        v23 = sub_10001A2F0();
        v24.super.isa = v41;
        v88._countAndFlagsBits = v23;
        v76._countAndFlagsBits = v40;
        v88._object = v25;
        v76._object = v43;
        v32._countAndFlagsBits = v42;
        v82.value._object = 0;
        v82.value._countAndFlagsBits = 0;
        v44 = sub_10007CD58(v76, v82, v24, v88, v39, v32);

        _objc_release(v41);

        return v44;
      case 4uLL:
        v64 = sub_10007D898("VIP", 3uLL, 1);
        v67 = v1;
        v63 = sub_10007D898("Title of the 'VIP' mailbox displayed in the widget header", 0x39uLL, 1);
        v66 = v2;
        v65 = sub_10001A2B0();
        v3 = sub_10001A2F0();
        v4.super.isa = v65;
        v84._countAndFlagsBits = v3;
        v72._countAndFlagsBits = v64;
        v84._object = v5;
        v72._object = v67;
        v32._countAndFlagsBits = v66;
        v78.value._object = 0;
        v78.value._countAndFlagsBits = 0;
        v68 = sub_10007CD58(v72, v78, v4, v84, v63, v32);

        _objc_release(v65);

        return v68;
      case 5uLL:
        HIDWORD(v32._object) = 1;
        v34 = sub_10007D898("TODAY", 5uLL, 1);
        v37 = v26;
        v33 = sub_10007D898("Title of the 'Today' mailbox displayed in the widget header", 0x3BuLL, 1);
        v36 = v27;
        v35 = sub_10001A2B0();
        v28 = sub_10001A2F0();
        v29.super.isa = v35;
        v89._countAndFlagsBits = v28;
        v77._countAndFlagsBits = v34;
        v89._object = v30;
        v77._object = v37;
        v32._countAndFlagsBits = v36;
        v83.value._object = 0;
        v83.value._countAndFlagsBits = 0;
        v38 = sub_10007CD58(v77, v83, v29, v89, v33, v32);

        _objc_release(v35);

        return v38;
      default:
        return v70;
    }
  }

  else
  {
    v58 = sub_10007D898("ALL_INBOXES", 0xBuLL, 1);
    v61 = v6;
    v57 = sub_10007D898("Title of the 'All Inboxes' mailbox displayed in the widget header", 0x41uLL, 1);
    v60 = v7;
    v59 = sub_10001A2B0();
    v8 = sub_10001A2F0();
    v9.super.isa = v59;
    v85._countAndFlagsBits = v8;
    v73._countAndFlagsBits = v58;
    v85._object = v10;
    v73._object = v61;
    v32._countAndFlagsBits = v60;
    v79.value._object = 0;
    v79.value._countAndFlagsBits = 0;
    v62 = sub_10007CD58(v73, v79, v9, v85, v57, v32);

    _objc_release(v59);

    return v62;
  }
}

id sub_10001A2B0()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

id sub_10001A31C()
{
  sub_10007DC38();
  sub_10007DC58();
  v0 = sub_10007DC48();
  result = sub_10001A374(v0);
  qword_10009AD50 = result;
  return result;
}

uint64_t *sub_10001A3B4()
{
  if (qword_10009A610 != -1)
  {
    swift_once();
  }

  return &qword_10009AD50;
}

void *sub_10001A414()
{
  v1 = *sub_10001A3B4();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_10001A44C()
{
  if (EMBlackPearlIsFeatureEnabled())
  {
    v14 = v16[3];
    v13 = v16[4];
    sub_100014D28(v14, v13);
    v15 = sub_1000191C0(v14, v13, 0, 1uLL);
    sub_100014D64(v14, v13);
    if (v15)
    {
      v12 = 1;
    }

    else
    {
      v10 = v16[3];
      v9 = v16[4];
      sub_100014D28(v10, v9);
      v11 = sub_1000191C0(v10, v9, 0, 0);
      sub_100014D64(v10, v9);
      v12 = v11;
    }

    if (v12)
    {
      type metadata accessor for MailboxConfiguration();
      v2 = *v16;
      v3 = v16[1];

      v17 = sub_10001B6B4(v2, v3, 1);
      v6 = *sub_10001A3B4();
      _objc_retain(v6);
      sub_1000094DC(&qword_10009ADD0, &qword_10007F3F8);
      sub_10007DEC8();
      v4 = v0;
      _objc_retain(v17);
      *v4 = v17;
      sub_100006FD4();
      isa = sub_10007D998().super.isa;

      v7 = [v6 isBucketBarHiddenForMailboxes:isa];
      _objc_release(isa);
      _objc_release(v6);
      _objc_release(v17);
      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10001A6A8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return sub_10007D898("All Inboxes", 0xBuLL, 1);
    case 1:
      return sub_10007D898("Inbox", 5uLL, 1);
    case 2:
      return sub_10007D898("Flag", 4uLL, 1);
    case 3:
      return sub_10007D898("Unread", 6uLL, 1);
    case 4:
      return sub_10007D898("VIP", 3uLL, 1);
    case 5:
      return sub_10007D898("Today", 5uLL, 1);
  }

  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 isInternal];
  _objc_release(v13);
  if (v14)
  {
    v8 = objc_opt_self();

    v9 = sub_10007D858();

    v10 = [v8 partiallyRedactedStringForString:v9];
    _objc_release(v9);
    v11 = sub_10007D868();
    _objc_release(v10);
    v12 = v11;
  }

  else
  {
    v4 = objc_opt_self();

    v5 = sub_10007D858();

    v6 = [v4 fullyRedactedStringForString:v5];
    _objc_release(v5);
    v7 = sub_10007D868();
    _objc_release(v6);
    v12 = v7;
  }

  return v12;
}

unint64_t sub_10001AA34()
{
  v2 = qword_10009AD60;
  if (!qword_10009AD60)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD60);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Mailbox(uint64_t a1)
{
  v2 = qword_10009AE30;
  if (!qword_10009AE30)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_10001AB30(const void *a1, void *a2)
{
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001AD00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 28), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_10001AE4C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10001AF48(uint64_t a1)
{
  v4 = sub_10001B038(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_10001B0DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_10001B038(uint64_t a1)
{
  v5 = qword_10009AE40;
  if (!qword_10009AE40)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    v4 = sub_10007DC98();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009AE40);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10001B0DC(uint64_t a1)
{
  v5 = qword_10009AE48;
  if (!qword_10009AE48)
  {
    sub_10007CD98();
    v4 = sub_10007DC98();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009AE48);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_10001B178(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < &_mh_execute_header)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_10001B2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF9 && *(a1 + 16))
    {
      v5 = *a1 + 2147483641;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 6;
      if (v4 - 6 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001B40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF9)
  {
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

id sub_10001B66C(uint64_t a1)
{
  v3 = [v1 initWithProvider:?];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10001B76C()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_10001B834(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_10001B934()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10001BA24(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

id sub_10001BAC4(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v13 = a1;
  v14 = a2;
  v12 = a3 & 1;
  v15 = v3;

  v4 = &v3[OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier];
  *v4 = a1;
  v4[1] = a2;
  v15[OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox] = a3;
  v11.receiver = v15;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "init");
  _objc_retain(v10);
  v15 = v10;

  _objc_release(v15);
  return v10;
}

uint64_t sub_10001BD00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v66 = &v15 - v65;
  v67 = sub_10007DAF8();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_10007DD58();
  v33 = sub_10007DD68();
  sub_10007DD38(v67);
  result = sub_10007DAE8();
  if (v67 < 0)
  {
    sub_10007DDA8();
    __break(1u);
LABEL_24:
    v17 = sub_10007D9B8();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_10007DB08();
    swift_getAssociatedConformanceWitness();
    v22 = sub_10007D848();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_10007DDC8();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_10007DDA8();
      __break(1u);
LABEL_18:
      sub_10007DDC8();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_10007DB78();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_10001DFF8();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_10007DD48();
    sub_10007DB18();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

void sub_10001C5E4(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v61 = a1;
  v60 = a2;
  v58 = a3;
  v59 = a4;
  v52 = sub_10001D174;
  v53 = sub_10001D830;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v54 = 0;
  v68 = 0;
  v55 = sub_1000094DC(&qword_10009AEC8, " P");
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v57 = (v26 - v56);
  v62 = *(type metadata accessor for Mailbox(0) - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v66 = (v26 - v65);
  v83 = v5;
  v82 = v6;
  v80 = v7;
  v81 = v8;
  v79 = v4;
  v67 = sub_10001CD80(v5);
  if (v67)
  {
    v50 = v67;
    v78 = v67;
    if (sub_10007DAA8())
    {
      v49 = 0;
    }

    else
    {
      v47 = v61[3];
      v46 = v61[4];
      sub_100014D28(v47, v46);
      v48 = sub_1000191C0(v47, v46, 0, 0);
      sub_100014D64(v47, v46);
      v49 = v48;
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v54;
    v41 = 0;
    v40 = sub_10001DE00();
    v69 = v60;
    v42 = sub_1000094DC(&qword_10009AED8, &qword_10007F538);
    v43 = sub_10001DE64();
    v10 = sub_10001DEC8();
    v45 = sub_10001BD00(v52, 0, v42, v43, &type metadata for Never, v10, &protocol witness table for Never, v44);
    if (!v9)
    {
      v39 = sub_10001D23C(v45);
      v68 = v39;
      v38 = sub_10007DEC8();
      v37 = v11;
      v36 = v78;
      _objc_retain(v78);
      v12 = v39;
      *v37 = v36;
      _objc_retain(v12);
      v37[1] = v39;
      sub_100006FD4();
      v14 = sub_100020F5C(v13);
      v15 = v78;
      v78 = v14;
      _objc_release(v15);
      _objc_release(v39);
LABEL_8:
      sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
      v27 = 0;
      v29 = sub_100017E70();
      v30 = v78;
      _objc_retain(v78);
      sub_10001D110();
      v28 = sub_10007DEC8();
      v16 = sub_10007D898("Widget.DaemonDataSource.Mailboxes", 0x21uLL, 1);
      v35 = sub_100020FE0(v29, v30, v28, 8, v16, v17, v29);
      v77 = v35;
      v34 = *(v51 + 16);
      _objc_retain(v34);

      sub_10000DFBC(v61, v66);
      v31 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v18 = swift_allocObject();
      v19 = v59;
      v20 = v31;
      v21 = v18;
      v22 = v66;
      v32 = v21;
      *(v21 + 16) = v58;
      *(v21 + 24) = v19;
      sub_10000E380(v22, v21 + v20);
      v75 = v53;
      v76 = v32;
      aBlock = _NSConcreteStackBlock;
      v71 = 1107296256;
      v72 = 0;
      v73 = sub_10001DC6C;
      v74 = &unk_100092CC8;
      v33 = _Block_copy(&aBlock);

      [v34 performQuery:v35 completionHandler:v33];
      _Block_release(v33);
      _objc_release(v34);
      _objc_release(v35);
      _objc_release(v78);
      return;
    }

    __break(1u);
  }

  else
  {

    sub_100013D50();
    v26[1] = 1;
    v23 = swift_allocError();
    v24 = v57;
    *v25 = 3;
    *v24 = v23;
    swift_storeEnumTagMultiPayload();
    v58(v57);
    sub_10001CFC8(v57);
  }
}

void *sub_10001CCE8()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10001CD1C(void *a1)
{
  _objc_retain(a1);
  *(v1 + 16) = a1;
  _objc_release(a1);
  return v4;
}

id sub_10001CD80(uint64_t a1)
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_100014D28(v10, v11);
  if (!v11)
  {
    sub_100014D64(v10, 0);
    return [objc_opt_self() predicateForMailboxType:7];
  }

  if (v11 == 1)
  {
    sub_100014D64(v10, 1uLL);
    return [objc_opt_self() predicateForMailboxType:7];
  }

  if (v11 - 2 > 3)
  {

    sub_10001DE00();
    sub_10001DE64();
    sub_10007DEC8();
    v7 = v1;
    *v1 = [objc_opt_self() predicateForMailboxType:0];
    v4 = objc_opt_self();

    v5 = sub_10007D858();

    v6 = [v4 predicateForMailboxName:v5];
    _objc_release(v5);
    v7[1] = v6;
    sub_100006FD4();
    v8 = sub_100020F5C(v2);

    sub_100014D64(v10, v11);
    return v8;
  }

  else
  {
    sub_100014D64(v10, v11);
    return 0;
  }
}

void *sub_10001CFC8(void *a1)
{
  sub_1000094DC(&qword_10009AEC8, " P");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    if (a1[4] > 5uLL)
    {
    }

    v2 = a1 + *(type metadata accessor for Mailbox(0) + 28);
    v3 = sub_10007CD98();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  return a1;
}

unint64_t sub_10001D110()
{
  v2 = qword_10009AED0;
  if (!qword_10009AED0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AED0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10001D174@<X0>(void *a2@<X8>)
{
  v3 = objc_opt_self();

  v4 = sub_10007D858();

  v5 = [v3 predicateForMailboxAccountIdentifier:v4 topLevelOnly:0];
  _objc_release(v4);
  result = v5;
  *a2 = v5;
  return result;
}

id sub_10001D23C(uint64_t a1)
{
  sub_10001DE64();
  isa = sub_10007D998().super.isa;
  v3 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates:isa];
  _objc_release(isa);

  return v3;
}

void sub_10001D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v23 = a5;
  v32 = sub_10001E1D4;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v34 = 0;
  v38 = sub_10007D5E8();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v19 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v37 = &v18 - v19;
  v42 = sub_10007D608();
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v20 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v41 = &v18 - v20;
  v21 = *(type metadata accessor for Mailbox(v5) - 8);
  v24 = v21;
  v25 = *(v21 + 64);
  v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v31 = (&v18 - v22);
  v56 = v6;
  v55 = v7;
  v53 = v8;
  v54 = v9;
  v52 = v10;
  sub_100009744();
  v44 = sub_10007DC08();
  swift_errorRetain();

  sub_10000DFBC(v23, v31);
  v30 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v11 = swift_allocObject();
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v11;
  v17 = v31;
  v33 = v16;
  v16[2] = v26;
  v16[3] = v12;
  v16[4] = v13;
  v16[5] = v14;
  sub_10000E380(v17, v16 + v15);
  v50 = v32;
  v51 = v33;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_10000AAE4;
  v49 = &unk_100092D18;
  v43 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v35 + 8))(v37, v38);
  (*(v39 + 8))(v41, v42);
  _Block_release(v43);
  _objc_release(v44);
}

uint64_t sub_10001D690()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 32) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

void sub_10001D830(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Mailbox(0);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = (v2 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));

  sub_10001D2C0(a1, a2, v4, v5, v6);
}

uint64_t sub_10001D8B8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v25 = 0;
  v37 = 0;
  v36 = 0;
  v5 = type metadata accessor for Mailbox(0);
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v27 = (v16 - v26);
  v44 = v16 - v26;
  v32 = sub_1000094DC(&qword_10009AEC8, " P");
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = (v16 - v33);
  v43 = v6;
  v41 = v7;
  v42 = v8;
  v40 = v9;
  v39 = v10;
  swift_errorRetain();
  if (v35)
  {
    v24 = v35;
    v22 = v35;
    v36 = v35;

    swift_errorRetain();
    *v34 = v22;
    swift_storeEnumTagMultiPayload();
    v28(v34);
    sub_10001CFC8(v34);
  }

  else
  {

    if (v30)
    {
      v23 = v30;
      v15 = v25;
      v17 = v30;
      v38 = v30;

      v18 = *(v31 + 24);
      v19 = *(v31 + 32);
      sub_100014D28(v18, v19);
      sub_100017140(v17, v18, v19, v27);
      v20 = v15;
      if (v15)
      {
        v16[0] = v20;
        swift_errorRetain();
        v37 = v16[0];

        swift_errorRetain();
        *v34 = v16[0];
        swift_storeEnumTagMultiPayload();
        v28(v34);
        sub_10001CFC8(v34);
      }

      else
      {

        sub_10000DFBC(v27, v34);
        swift_storeEnumTagMultiPayload();
        v28(v34);
        sub_10001CFC8(v34);

        sub_100014DA0(v27);
      }
    }

    else
    {

      sub_100013D50();
      v21 = 1;
      v12 = swift_allocError();
      v13 = v34;
      *v14 = 0;
      *v13 = v12;
      swift_storeEnumTagMultiPayload();
      v28(v34);
      sub_10001CFC8(v34);
    }
  }
}

uint64_t sub_10001DC6C(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);

  _objc_retain(a2);
  if (a2)
  {
    sub_100017E70();
    v4 = sub_10007D9A8();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10001DD9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10001DE00()
{
  v2 = qword_10009B050;
  if (!qword_10009B050)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B050);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10001DE64()
{
  v2 = qword_10009BB50;
  if (!qword_10009BB50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009BB50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10001DEC8()
{
  v2 = qword_10009AEE0;
  if (!qword_10009AEE0)
  {
    sub_100009860(&qword_10009AED8, &qword_10007F538);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001E024()
{
  v7 = type metadata accessor for Mailbox(0);
  v1 = *(*(v7 - 8) + 80);
  v8 = (v1 + 48) & ~v1;

  if (*(v0 + v8 + 32) > 5uLL)
  {
  }

  v3 = v6 + v8 + *(v7 + 28);
  v4 = sub_10007CD98();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10001E1D4()
{
  v1 = *(type metadata accessor for Mailbox(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_10001D8B8(v2, v3, v4, v5, v6);
}

uint64_t sub_10001E248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_10001E2CC(void *a1, void *a2)
{
  *a2 = *a1;
  v14 = a1[1];

  a2[1] = v14;
  v17 = a1[2];

  a2[2] = v17;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v13 = a1[4];

    a2[4] = v13;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox(0);
  __dst = a2 + *(v2 + 28);
  __src = a1 + *(v2 + 28);
  v11 = sub_10007CD98();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(__src, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(__dst, __src, v11);
    (*(v12 + 56))(__dst, 0, 1, v11);
  }

  v4 = type metadata accessor for Snapshot(0);
  v7 = a2 + *(v4 + 20);
  v8 = a1 + *(v4 + 20);
  if (*v8 < 2uLL)
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
  }

  else
  {
    v6 = *v8;

    *v7 = v6;
    *(v7 + 1) = *(v8 + 1);
    v7[16] = v8[16];
    v7[17] = v8[17];
  }

  return a2;
}

uint64_t type metadata accessor for MailEntry(uint64_t a1)
{
  v2 = qword_10009AFE8;
  if (!qword_10009AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_10001E604(const void *a1, void *a2)
{
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001E72C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MailEntry(0) + 24);
  v2 = sub_10007CE28();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_10001E7BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a4;
  v29 = a1;
  v27 = a2;
  v24 = a3;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v16 = 0;
  v23 = sub_10007CE28();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v11 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v18 = &v11 - v11;
  v12 = (*(*(sub_1000094DC(&qword_10009AF88, &unk_10007F7B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v17 = &v11 - v12;
  v13 = (*(*(type metadata accessor for Snapshot(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v11 - v13;
  v19 = type metadata accessor for MailEntry(v5);
  v14 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v30 = &v11 - v14;
  v34 = &v11 - v14;
  v33 = v6;
  v32 = v7;
  v31 = v8;
  sub_10001E2CC(v6, v9);
  sub_10001EB30(v15, v30);
  v28 = sub_10007D768();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  (*(v25 + 16))(v17, v27);
  (*(v25 + 56))(v17, 0, 1, v28);
  sub_10001ECEC(v17, &v30[*(v19 + 20)]);
  (*(v21 + 16))(v18, v24, v23);
  (*(v21 + 32))(&v30[*(v19 + 24)], v18, v23);
  sub_10001EE14(v30, v20);
  (*(v21 + 8))(v24, v23);
  (*(v25 + 8))(v27, v28);
  sub_10001F234(v29);
  return sub_10001F380(v30);
}

__n128 sub_10001EB30(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v8 = *(type metadata accessor for Mailbox(0) + 28);
  v10 = sub_10007CD98();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v8), (a1 + v8), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  v3 = type metadata accessor for Snapshot(0);
  v4 = (a2 + *(v3 + 20));
  v5 = (a1 + *(v3 + 20));
  result = *v5;
  *v4 = *v5;
  v4[1].n128_u16[0] = v5[1].n128_u16[0];
  return result;
}

void *sub_10001ECEC(const void *a1, void *a2)
{
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_10001EE14(void *a1, void *a2)
{
  *a2 = *a1;
  v23 = a1[1];

  a2[1] = v23;
  v26 = a1[2];

  a2[2] = v26;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v22 = a1[4];

    a2[4] = v22;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox(0);
  v18 = a2 + *(v2 + 28);
  v19 = a1 + *(v2 + 28);
  v20 = sub_10007CD98();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v18, v19, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v18, v19, v20);
    (*(v21 + 56))(v18, 0, 1, v20);
  }

  v4 = type metadata accessor for Snapshot(0);
  v16 = a2 + *(v4 + 20);
  v17 = a1 + *(v4 + 20);
  if (*v17 < 2uLL)
  {
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  else
  {
    v15 = *v17;

    *v16 = v15;
    *(v16 + 1) = *(v17 + 1);
    v16[16] = v17[16];
    v16[17] = v17[17];
  }

  v10 = type metadata accessor for MailEntry(0);
  __dst = a2 + *(v10 + 20);
  __src = a1 + *(v10 + 20);
  v13 = sub_10007D768();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(__src, 1))
  {
    v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  v9 = a2 + *(v10 + 24);
  v8 = a1 + *(v10 + 24);
  v6 = sub_10007CE28();
  (*(*(v6 - 8) + 16))(v9, v8);
  return a2;
}

void *sub_10001F234(void *a1)
{

  if (a1[4] > 5uLL)
  {
  }

  v2 = a1 + *(type metadata accessor for Mailbox(0) + 28);
  v3 = sub_10007CD98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v2, 1))
  {
    (*(v4 + 8))(v2, v3);
  }

  if (*(a1 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  return a1;
}

void *sub_10001F380(void *a1)
{

  if (a1[4] > 5uLL)
  {
  }

  v8 = a1 + *(type metadata accessor for Mailbox(0) + 28);
  v9 = sub_10007CD98();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1))
  {
    (*(v10 + 8))(v8, v9);
  }

  if (*(a1 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v4 = type metadata accessor for MailEntry(0);
  v5 = a1 + *(v4 + 20);
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  v3 = a1 + *(v4 + 24);
  v1 = sub_10007CE28();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

void *sub_10001F5C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v22 = a1;
  v25 = 0;
  v24 = 0;
  v13 = 0;
  v11 = (*(*(sub_10007CE28() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v10 - v11;
  v12 = (*(*(sub_10007D768() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v18 = &v10 - v12;
  v14 = (*(*(type metadata accessor for Snapshot(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v17 = (&v10 - v14);
  v5 = type metadata accessor for MailEntry(v4);
  v15 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v20 = (&v10 - v15);
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v15);
  v23 = (&v10 - v16);
  v25 = &v10 - v16;
  v24 = a1;
  sub_10001E2CC(a1, v7);
  v8 = sub_100073F44(v18);
  sub_10001E7A4(v8);
  sub_10001E7BC(v17, v18, v19, v20);
  sub_10001F7F0(v20, v23);
  sub_10001EE14(v23, v21);
  sub_10001F234(v22);
  return sub_10001F380(v23);
}

uint64_t sub_10001F7F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v17 = *(type metadata accessor for Mailbox(0) + 28);
  v19 = sub_10007CD98();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1 + v17, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v17), (a1 + v17), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v20 + 32))();
    (*(v20 + 56))(a2 + v17, 0, 1, v19);
  }

  v3 = type metadata accessor for Snapshot(0);
  v4 = a2 + *(v3 + 20);
  v5 = a1 + *(v3 + 20);
  *v4 = *v5;
  *(v4 + 16) = *(v5 + 16);
  v11 = type metadata accessor for MailEntry(0);
  __dst = (a2 + *(v11 + 20));
  __src = (a1 + *(v11 + 20));
  v14 = sub_10007D768();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v6 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v10 = a2 + *(v11 + 24);
  v9 = a1 + *(v11 + 24);
  v7 = sub_10007CE28();
  (*(*(v7 - 8) + 32))(v10, v9);
  return a2;
}

uint64_t sub_10001FB98(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for Snapshot(0);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else
    {
      v4 = sub_10007CE28();
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

uint64_t sub_10001FDB8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = type metadata accessor for Snapshot(0);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + *(a4 + 20), a2, a2, v5);
  }

  result = sub_10007CE28();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 24), a2, a2, result);
  }

  __break(1u);
  return result;
}

unint64_t sub_10001FFB0(uint64_t a1)
{
  v5 = type metadata accessor for Snapshot(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1000200B4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_10007CE28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1000200B4(uint64_t a1)
{
  v5 = qword_10009AFF8;
  if (!qword_10009AFF8)
  {
    sub_10007D768();
    v4 = sub_10007DC98();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_10009AFF8);
      return v2;
    }
  }

  return v5;
}

void sub_10002018C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v124 = a3;
  v126 = a2;
  v135 = a1;
  ObjectType = swift_getObjectType();
  v138 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v163 = 0;
  v162 = 0;
  v152 = 0;
  v151 = 0;
  v149 = 0;
  v148 = 0;
  v146 = 0;
  v110 = 0;
  v111 = sub_10007D5D8();
  v112 = *(v111 - 8);
  v113 = v112;
  __chkstk_darwin(0);
  v114 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_10007D628();
  v116 = *(v115 - 8);
  v117 = v116;
  v118 = *(v116 + 64);
  __chkstk_darwin(v138);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v46 - v120;
  __chkstk_darwin(v6);
  v121 = v46 - v120;
  type metadata accessor for Mailbox(v7);
  __chkstk_darwin(v138);
  v122 = (v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007D5E8();
  __chkstk_darwin(v138);
  v123 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10007CEF8();
  v128 = *(v127 - 8);
  v129 = v128;
  v130 = *(v128 + 64);
  __chkstk_darwin(v138);
  v131 = v46 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v10;
  v171 = v11;
  v169 = v12;
  v170 = v13;
  v168 = v4;
  v133 = sub_10001DE64();
  v134 = sub_10007DEC8();
  v132 = v14;
  v15 = sub_100072DF8(v135);
  *v132 = v15;
  sub_100006FD4();
  v167 = v16;
  v136 = v135[3];
  v137 = v135[4];
  sub_100014D28(v136, v137);
  v166[0] = v136;
  v166[1] = v137;
  v164 = v138;
  v165 = 3;
  v139 = sub_1000191C0(v136, v137, v138, 3uLL);
  sub_1000170F8(v166);
  if ((v139 & 1) == 0)
  {
    v140 = [objc_opt_self() predicateForUnreadMessages];
    sub_1000094DC(&qword_10009B0C8, &qword_10007F5F0);
    sub_10007D9F8();
  }

  v102 = 0;
  sub_10001DE00();
  v93 = v167;

  v98 = sub_100020F5C(v93);
  v94 = v98;
  v163 = v98;
  v105 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v97 = sub_100015EF4();
  v17 = v98;
  v95 = sub_10001D110();
  v96 = sub_10007DEC8();
  v18 = sub_10007D898("Widget.DaemonDataSource.UnreadCount", 0x23uLL, 1);
  v101 = sub_100020FE0(v97, v98, v96, 8, v18, v19, v97);
  v99 = v101;
  v162 = v101;
  v20 = v101;
  v100 = &v108[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state];
  swift_beginAccess();
  v104 = *v100;
  v160 = v101;
  v106 = type metadata accessor for MailStatusDataSource.State();
  v103 = v106;
  sub_100021A14();
  sub_10007D7F8();

  v107 = v161;
  if (v161)
  {
    v92 = v107;
    v21 = v131;
    v86 = v107;
    v146 = v107;
    swift_endAccess();
    v22 = sub_100021534();
    (*(v129 + 16))(v21, v22, v127);
    v90 = sub_10007CED8();
    v87 = v90;
    v89 = sub_10007DBC8();
    v88 = v89;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v91 = sub_10007DEC8();
    if (os_log_type_enabled(v90, v89))
    {
      v23 = v110;
      v77 = sub_10007DC88();
      v73 = v77;
      v74 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v75 = 0;
      v78 = sub_10000742C(0, v74, v74);
      v76 = v78;
      v79 = sub_10000742C(v75, &type metadata for Any + 8, &type metadata for Any + 8);
      v144 = v77;
      v143 = v78;
      v142 = v79;
      v80 = 0;
      v81 = &v144;
      sub_100007480(0, &v144);
      sub_100007480(v80, v81);
      v141 = v91;
      v82 = v46;
      __chkstk_darwin(v46);
      v83 = &v46[-6];
      v46[-4] = v24;
      v46[-3] = &v143;
      v46[-2] = &v142;
      v84 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v85 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v87, v88, "Query in progress. Appending completion handler", v73, 2u);
        v71 = 0;
        sub_1000074E0(v76, 0, v74);
        sub_1000074E0(v79, v71, &type metadata for Any + 8);
        sub_10007DC68();

        v72 = v85;
      }
    }

    else
    {

      v72 = v110;
    }

    v69 = v72;

    (*(v129 + 8))(v131, v127);

    v25 = swift_allocObject();
    v26 = v125;
    *(v25 + 16) = v124;
    *(v25 + 24) = v26;
    v145[3] = sub_100023B50;
    v145[4] = v25;
    v68 = v145;
    swift_beginAccess();
    sub_1000094DC(&unk_10009B0B8, &qword_10007F5D8);
    sub_10007D9F8();
    swift_endAccess();

    v70 = v69;
  }

  else
  {
    swift_endAccess();
    v60 = 0;
    sub_10007D658();
    v49 = &unk_100092D50;
    v48 = 24;
    v52 = 7;
    v47 = swift_allocObject();
    v46[1] = v47 + 16;
    v27 = v108;
    swift_unknownObjectWeakInit();

    v28 = v99;
    v51 = 40;
    v29 = swift_allocObject();
    v30 = ObjectType;
    v31 = v99;
    v29[2] = v47;
    v29[3] = v31;
    v29[4] = v30;
    v158 = sub_100022700;
    v159 = v29;
    aBlock = _NSConcreteStackBlock;
    v154 = 1107296256;
    v155 = 0;
    v156 = sub_10000AAE4;
    v157 = &unk_100092D90;
    v46[2] = _Block_copy(&aBlock);
    sub_100006990();
    v67 = sub_10007D638();

    v152 = v67;
    sub_100022774();
    v53 = [objc_opt_self() mainThreadScheduler];
    v54 = swift_allocObject();
    v50 = v54 + 16;
    v32 = v108;
    swift_unknownObjectWeakInit();

    v33 = v99;
    v34 = swift_allocObject();
    v35 = ObjectType;
    v36 = v99;
    v37 = v60;
    v38 = v34;
    v39 = v53;
    v38[2] = v54;
    v38[3] = v36;
    v38[4] = v35;
    v66 = sub_100023A4C(v39, v37, sub_100023228, v38, 0.5);

    v151 = v66;
    v40 = v99;
    v41 = v66;
    v150[4] = v66;
    v150[3] = v99;
    v58 = 33;
    v55 = v150;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B090, &unk_10007F5B8);
    sub_10007D808();
    swift_endAccess();
    v57 = *&v108[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository];
    v42 = v57;
    sub_100023AAC();
    sub_10000DFBC(v135, v122);
    v56 = sub_100014A74(v122);
    v43 = v108;
    v65 = [v57 startCountingQuery:v99 includingServerCountsForMailboxScope:v56 withObserver:v108];
    swift_unknownObjectRelease();

    v149 = v65;
    swift_unknownObjectRetain();

    v64 = sub_100021264(v65, v67, v124, v125);
    v148 = v64;
    v44 = v99;

    v147[4] = v64;
    v147[3] = v99;
    v59 = v147;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B0B0, &unk_10007F5C8);
    sub_10007D808();
    swift_endAccess();
    sub_100009744();
    v63 = sub_10007DC08();
    sub_10007D618();
    v45 = v113;
    *v114 = v126;
    (*(v45 + 104))();
    sub_10007D668();
    (*(v113 + 8))(v114, v111);
    v62 = *(v117 + 8);
    v61 = v117 + 8;
    v62(v119, v115);
    sub_10007DBF8();
    v62(v121, v115);

    swift_unknownObjectRelease();

    v70 = v110;
  }

  sub_10000A480(&v167);
}

id sub_100020F5C(uint64_t a1)
{
  sub_10001DE64();
  isa = sub_10007D998().super.isa;
  v3 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];
  _objc_release(isa);

  return v3;
}

uint64_t sub_100021054()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  swift_endAccess();
  return v2;
}

uint64_t sub_1000210A4(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100021104()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_100021154(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_1000211B4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_100021204(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1000212C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v4[2] = a1;

  v4[3] = a2;
  sub_1000094DC(&qword_10009B0D0, &qword_10007F5F8);
  sub_10007DEC8();
  v10 = v5;

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *v10 = sub_100023B50;
  v10[1] = v6;
  sub_100006FD4();
  v4[4] = v7;

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100021444()
{
  swift_unknownObjectRelease();

  sub_10000A480((v0 + 32));
  return v2;
}

uint64_t sub_1000214CC()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009B030);
  sub_10000202C(v2, qword_10009B030);
  v0 = type metadata accessor for MailStatusDataSource();
  return sub_100016180(v0, v0);
}

uint64_t sub_100021534()
{
  if (qword_10009A618 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009B030);
}

uint64_t sub_1000215A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100021534();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_10002160C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100021654()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000216BC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_100021740()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000217A8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *sub_10002182C(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  v3 = OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state;
  sub_1000094DC(&qword_10009B0D8, &qword_10007F600);
  sub_10007DEC8();
  sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  type metadata accessor for MailStatusDataSource.State();
  sub_100021A14();
  *&v1[v3] = sub_10007D7E8();
  v4 = OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers;
  sub_1000094DC(&qword_10009B0E0, &qword_10007F608);
  sub_10007DEC8();
  sub_100022774();
  *&v10[v4] = sub_10007D7E8();
  _objc_retain(a1);
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository] = a1;
  v8.receiver = v10;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v10 = v7;
  _objc_release(a1);
  _objc_release(v10);
  return v7;
}

unint64_t sub_100021A14()
{
  v2 = qword_10009B078;
  if (!qword_10009B078)
  {
    sub_100009860(&unk_10009BB40, &qword_10007F5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009B078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100021ADC(uint64_t a1, void *a2)
{
  v78 = a2;
  v77 = a1;
  v76 = 0;
  v101 = 0;
  v100 = 0;
  v75 = 0;
  v94 = 0;
  v79 = sub_10007CEF8();
  v80 = *(v79 - 8);
  v81 = v80;
  v82 = *(v80 + 64);
  __chkstk_darwin(v77);
  v84 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = &v17 - v84;
  __chkstk_darwin(v2);
  v85 = &v17 - v84;
  v86 = v3 + 16;
  v101 = v3 + 16;
  v100 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v5 = Strong;
    sub_100012FD8(&Strong);
    swift_endAccess();
    v6 = v78;
    v66 = &v72[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_debouncers];
    v71 = &v89;
    v67 = 0;
    swift_beginAccess();
    v68 = *v66;
    v87 = v78;
    v69 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
    v70 = sub_100022774();
    sub_100021A14();
    sub_10007D7F8();

    v73 = v88;
    swift_endAccess();

    v74 = v73;
  }

  else
  {
    sub_100012FD8(&Strong);
    swift_endAccess();
    v74 = 0;
  }

  v65 = v74;
  if (v74)
  {
    v64 = v65;
    v9 = v83;
    v53 = v65;
    v94 = v65;
    v10 = sub_100021534();
    (*(v81 + 16))(v9, v10, v79);
    v57 = sub_10007CED8();
    v54 = v57;
    v56 = sub_10007DBB8();
    v55 = v56;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v58 = sub_10007DEC8();
    if (os_log_type_enabled(v57, v56))
    {
      v12 = v75;
      v44 = sub_10007DC88();
      v40 = v44;
      v41 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v42 = 0;
      v45 = sub_10000742C(0, v41, v41);
      v43 = v45;
      v46 = sub_10000742C(v42, &type metadata for Any + 8, &type metadata for Any + 8);
      v93[0] = v44;
      v92 = v45;
      v91 = v46;
      v47 = 0;
      v48 = v93;
      sub_100007480(0, v93);
      sub_100007480(v47, v48);
      v90 = v58;
      v49 = &v17;
      __chkstk_darwin(&v17);
      v50 = &v17 - 6;
      *(&v17 - 4) = v13;
      *(&v17 - 3) = &v92;
      *(&v17 - 2) = &v91;
      v51 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v52 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v54, v55, "Timeout! No count received", v40, 2u);
        v38 = 0;
        sub_1000074E0(v43, 0, v41);
        sub_1000074E0(v46, v38, &type metadata for Any + 8);
        sub_10007DC68();

        v39 = v52;
      }
    }

    else
    {

      v39 = v75;
    }

    v37 = v39;

    (*(v81 + 8))(v83, v79);
    memset(&v93[1], 0, 32);
    v36 = 0;
    v34 = 0;
    [v53 debounceResult:?];
    swift_unknownObjectRelease();

    return v37;
  }

  else
  {
    v7 = v85;
    v8 = sub_100021534();
    (*(v81 + 16))(v7, v8, v79);
    v62 = sub_10007CED8();
    v59 = v62;
    v61 = sub_10007DBA8();
    v60 = v61;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v63 = sub_10007DEC8();
    if (os_log_type_enabled(v62, v61))
    {
      v14 = v75;
      v25 = sub_10007DC88();
      v21 = v25;
      v22 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v23 = 0;
      v26 = sub_10000742C(0, v22, v22);
      v24 = v26;
      v27 = sub_10000742C(v23, &type metadata for Any + 8, &type metadata for Any + 8);
      v98 = v25;
      v97 = v26;
      v96 = v27;
      v28 = 0;
      v29 = &v98;
      sub_100007480(0, &v98);
      sub_100007480(v28, v29);
      v95 = v63;
      v30 = &v17;
      __chkstk_darwin(&v17);
      v31 = &v17 - 6;
      *(&v17 - 4) = v15;
      *(&v17 - 3) = &v97;
      *(&v17 - 2) = &v96;
      v32 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v33 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v59, v60, "No debouncer for query", v21, 2u);
        v19 = 0;
        sub_1000074E0(v24, 0, v22);
        sub_1000074E0(v27, v19, &type metadata for Any + 8);
        sub_10007DC68();

        v20 = v33;
      }
    }

    else
    {

      v20 = v75;
    }

    v18 = v20;

    (*(v81 + 8))(v85, v79);
    return v18;
  }
}