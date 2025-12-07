uint64_t sub_25294()
{
  v5 = v0[14];
  v1 = v0[12];
  v0[7] = v0;
  v8 = v1[3];
  v9 = v1[4];
  sub_808C(v1, v8);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *(v7 + 16) = v5;
  v2 = swift_task_alloc();
  v6[16] = v2;
  *v2 = v6[7];
  v2[1] = sub_253AC;
  v3 = v6[13];

  return dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(v6 + 2, v3, &unk_C5DE0, v7, v8, v9);
}

uint64_t sub_253AC()
{
  *(*v0 + 56) = *v0;

  return _swift_task_switch(sub_254E4, 0);
}

uint64_t sub_254E4()
{
  v5 = v0[11];
  v0[7] = v0;
  v7 = v0[5];
  v4 = v0[6];
  v6 = sub_808C(v0 + 2, v7);
  v5[3] = v7;
  v5[4] = v4;
  v1 = sub_1CC64(v5);
  (*(*(v7 - 8) + 16))(v1, v6);
  sub_2560(v0 + 2);
  v2 = *(v0[7] + 8);

  return v2();
}

uint64_t sub_255EC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[5] = v2;
  return _swift_task_switch(sub_2561C, 0);
}

uint64_t sub_2561C()
{
  v3 = v0[7];
  v5 = v0[6];
  v0[5] = v0;
  swift_beginAccess();
  v6 = sub_C1D94();
  v4 = *(v6 - 8);
  (*(v4 + 16))(v5, v3);
  swift_endAccess();
  (*(v4 + 56))(v5, 0, 1, v6);
  v1 = *(v0[5] + 8);

  return v1();
}

uint64_t sub_2574C(_BYTE *a1, _BYTE *a2)
{
  v195 = a2;
  v187 = a1;
  v171 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v211 = 0;
  v210 = 0;
  v206 = 0;
  v166 = 0;
  v167 = sub_C30A4();
  v168 = *(v167 - 8);
  v169 = v168;
  __chkstk_darwin(0);
  v170 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_C3234();
  v173 = *(v172 - 8);
  v174 = v173;
  v175 = *(v173 + 64);
  __chkstk_darwin(v171);
  v177 = (v175 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v61 - v177;
  __chkstk_darwin(v4);
  v178 = &v61 - v177;
  v192 = sub_C1C64();
  v179 = *(v192 - 8);
  v190 = v179;
  __chkstk_darwin(v187);
  v191 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v6;
  v228 = v7;
  v226 = v2;
  v196 = *sub_537EC();

  v184 = v2 + 16;
  v194 = v219;
  sub_24F4(v2 + 16, v219);

  v181 = v220;
  v180 = v221;
  sub_808C(v194, v220);
  v8 = *(v180 + 8);
  v193 = &v216;
  v8(v181);
  v183 = v217;
  v182 = v218;
  sub_808C(v193, v217);
  sub_C1F34();

  v189 = v213;
  sub_24F4(v184, v213);

  v186 = v214;
  v185 = v215;
  sub_808C(v189, v214);
  v9 = *(v185 + 40);
  v188 = &v212;
  v9(v186);
  sub_550B0(v187, v195, v191, v188, v222);
  sub_2560(v188);
  sub_2560(v189);
  (*(v190 + 8))(v191, v192);
  sub_2560(v193);
  sub_2560(v194);

  if (v222[3])
  {
    v10 = v178;
    v136 = __dst;
    sub_BD6C(v222, __dst);
    v11 = sub_BF704();
    (*(v174 + 16))(v10, v11, v172);

    v145 = 32;
    v150 = 32;
    v151 = 7;
    v12 = swift_allocObject();
    v13 = v195;
    v14 = v12;
    v15 = v136;
    v142 = v14;
    *(v14 + 16) = v187;
    *(v14 + 24) = v13;
    v137 = v202;
    sub_24F4(v15, v202);
    v152 = swift_allocObject();
    sub_BD6C(v137, (v152 + 16));
    v165 = sub_C3224();
    v138 = v165;
    v164 = sub_C3874();
    v139 = v164;
    v146 = 17;
    v155 = swift_allocObject();
    v140 = v155;
    *(v155 + 16) = v145;
    v156 = swift_allocObject();
    v141 = v156;
    v148 = 8;
    *(v156 + 16) = 8;
    v16 = swift_allocObject();
    v17 = v142;
    v143 = v16;
    *(v16 + 16) = sub_1D834;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v143;
    v157 = v18;
    v144 = v18;
    *(v18 + 16) = sub_7BBC;
    *(v18 + 24) = v19;
    v158 = swift_allocObject();
    v147 = v158;
    *(v158 + 16) = v145;
    v159 = swift_allocObject();
    v149 = v159;
    *(v159 + 16) = v148;
    v20 = swift_allocObject();
    v21 = v152;
    v153 = v20;
    *(v20 + 16) = sub_2D2EC;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v153;
    v162 = v22;
    v154 = v22;
    *(v22 + 16) = sub_7BBC;
    *(v22 + 24) = v23;
    v163 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v160 = sub_C3C64();
    v161 = v24;

    v25 = v155;
    v26 = v161;
    *v161 = sub_7B48;
    v26[1] = v25;

    v27 = v156;
    v28 = v161;
    v161[2] = sub_7B48;
    v28[3] = v27;

    v29 = v157;
    v30 = v161;
    v161[4] = sub_7C08;
    v30[5] = v29;

    v31 = v158;
    v32 = v161;
    v161[6] = sub_7B48;
    v32[7] = v31;

    v33 = v159;
    v34 = v161;
    v161[8] = sub_7B48;
    v34[9] = v33;

    v35 = v161;
    v36 = v162;
    v161[10] = sub_7C08;
    v35[11] = v36;
    sub_4E48();

    if (os_log_type_enabled(v165, v164))
    {
      v37 = v166;
      v129 = sub_C3954();
      v126 = v129;
      v127 = sub_21E8(&qword_EE828, &qword_C5100);
      v130 = sub_5DD4(0, v127, v127);
      v128 = v130;
      v132 = 2;
      v131 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v201 = v129;
      v200 = v130;
      v199 = v131;
      v133 = &v201;
      sub_5E28(v132, &v201);
      sub_5E28(v132, v133);
      v197 = sub_7B48;
      v198 = v140;
      sub_5E3C(&v197, v133, &v200, &v199);
      v134 = v37;
      v135 = v37;
      if (v37)
      {
        v124 = 0;

        __break(1u);
      }

      else
      {
        v197 = sub_7B48;
        v198 = v141;
        sub_5E3C(&v197, &v201, &v200, &v199);
        v122 = 0;
        v123 = 0;
        v197 = sub_7C08;
        v198 = v144;
        sub_5E3C(&v197, &v201, &v200, &v199);
        v120 = 0;
        v121 = 0;
        v197 = sub_7B48;
        v198 = v147;
        sub_5E3C(&v197, &v201, &v200, &v199);
        v118 = 0;
        v119 = 0;
        v197 = sub_7B48;
        v198 = v149;
        sub_5E3C(&v197, &v201, &v200, &v199);
        v116 = 0;
        v117 = 0;
        v197 = sub_7C08;
        v198 = v154;
        sub_5E3C(&v197, &v201, &v200, &v199);
        v114 = 0;
        v115 = 0;
        _os_log_impl(&dword_0, v138, v139, "Overriding %s with %s", v126, 0x16u);
        sub_5E88(v128, 0, v127);
        sub_5E88(v131, 2, &type metadata for Any + 8);
        sub_C3934();

        v125 = v114;
      }
    }

    else
    {
      v38 = v166;

      v125 = v38;
    }

    v110 = v125;

    (*(v174 + 8))(v178, v172);
    v106 = v224;
    v105 = v225;
    v107 = __dst;
    sub_808C(__dst, v224);
    (*(v105 + 8))(v106);
    v108 = sub_C3084();
    v109 = v39;
    (*(v169 + 8))(v170, v167);
    sub_2560(v107);
    v111 = v108;
    v112 = v109;
    v113 = v110;
  }

  else
  {
    sub_1FA80(v222);

    v210 = v187;
    v211 = v195;
    if (sub_29674())
    {
      v102 = &type metadata for String;
      v101 = sub_C3C64();
      v100 = v40;
      v99 = 1;
      v41 = sub_C3564("dalHello", 8uLL, 1);
      v42 = v99;
      v43 = v100;
      *v100 = v41;
      v43[1] = v44;
      v45 = sub_C3564("dalHelloSiri", 0xCuLL, v42);
      v46 = v99;
      v47 = v100;
      v100[2] = v45;
      v47[3] = v48;
      v49 = sub_C3564("dalGreetingAsSummons", 0x14uLL, v46);
      v50 = v100;
      v100[4] = v49;
      v50[5] = v51;
      sub_4E48();
      v103 = v52;
      v206 = v52;
      v205[3] = v52;
      v205[1] = v187;
      v205[2] = v195;
      v104 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
      sub_1D00C();
      if (sub_C3684())
      {
        v53 = v176;
        v54 = sub_BF704();
        (*(v174 + 16))(v53, v54, v172);
        v97 = sub_C3224();
        v94 = v97;
        v96 = sub_C3874();
        v95 = v96;
        sub_21E8(&unk_EEFA0, &unk_C50F0);
        v98 = sub_C3C64();
        if (os_log_type_enabled(v97, v96))
        {
          v55 = v166;
          v85 = sub_C3954();
          v81 = v85;
          v82 = sub_21E8(&qword_EE828, &qword_C5100);
          v83 = 0;
          v86 = sub_5DD4(0, v82, v82);
          v84 = v86;
          v87 = sub_5DD4(v83, &type metadata for Any + 8, &type metadata for Any + 8);
          v205[0] = v85;
          v204 = v86;
          v203 = v87;
          v88 = 0;
          v89 = v205;
          sub_5E28(0, v205);
          sub_5E28(v88, v89);
          v202[6] = v98;
          v90 = &v61;
          __chkstk_darwin(&v61);
          v91 = &v61 - 6;
          *(&v61 - 4) = v56;
          *(&v61 - 3) = &v204;
          *(&v61 - 2) = &v203;
          v92 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v93 = v55;
          if (v55)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v94, v95, "Overwriting greeting intents", v81, 2u);
            v79 = 0;
            sub_5E88(v84, 0, v82);
            sub_5E88(v87, v79, &type metadata for Any + 8);
            sub_C3934();

            v80 = v93;
          }
        }

        else
        {

          v80 = v166;
        }

        v77 = v80;

        (*(v174 + 8))(v176, v172);
        v210 = sub_C3564("greeting", 8uLL, 1);
        v211 = v57;

        v78 = v77;
      }

      else
      {
        v78 = v166;
      }

      v75 = v78;

      v76 = v75;
    }

    else
    {
      v76 = v166;
    }

    v74 = v76;
    v62 = 19;
    v67 = 1;
    v208 = sub_C3C44();
    v209 = v58;
    v229._countAndFlagsBits = sub_C3564("SocialConversation#", v62, v67);
    object = v229._object;
    v69 = &v208;
    sub_C3C34(v229);

    v64 = v210;
    v65 = v211;

    v207[0] = v64;
    v207[1] = v65;
    v66 = v207;
    sub_C3C24();
    sub_8224(v66);
    v230._countAndFlagsBits = sub_C3564("", 0, v67);
    v68 = v230._object;
    sub_C3C34(v230);

    v71 = v208;
    v70 = v209;

    sub_8224(v69);
    v72 = sub_C3544();
    v73 = v59;
    sub_8224(&v210);
    v111 = v72;
    v112 = v73;
    v113 = v74;
  }

  return v111;
}

uint64_t sub_268B4(uint64_t a1)
{
  v4 = a1;
  v11 = sub_C30A4();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v10 = &v4 - v5;
  v7 = v1[3];
  v6 = v1[4];
  sub_808C(v1, v7);
  (*(v6 + 8))(v7);
  v12 = sub_C3084();
  v13 = v2;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_269CC(uint64_t a1)
{
  v263 = a1;
  v2 = v1;
  v327 = v2;
  v316 = 0;
  v264 = sub_2D6A0;
  v265 = sub_7BBC;
  v266 = sub_7B48;
  v267 = sub_7B48;
  v268 = sub_7C08;
  v269 = sub_2D6A0;
  v270 = sub_7BBC;
  v271 = sub_1D834;
  v272 = sub_7BBC;
  v273 = sub_7B48;
  v274 = sub_7B48;
  v275 = sub_7C08;
  v276 = sub_7B48;
  v277 = sub_7B48;
  v278 = sub_7C08;
  v279 = sub_28D28;
  v280 = sub_2D6A0;
  v281 = sub_7BBC;
  v282 = sub_7B48;
  v283 = sub_7B48;
  v284 = sub_7C08;
  v285 = "Fatal error";
  v286 = "Unexpectedly found nil while unwrapping an Optional value";
  v287 = "SocialConversationFlowDelegatePlugin/SocialConversationFlowDelegatePlugin.swift";
  v395 = 0;
  v394 = 0;
  v380 = 0;
  v381 = 0;
  v368 = 0;
  v369 = 0;
  v288 = 0;
  v359 = 0;
  v356 = 0;
  v349 = 0;
  v350 = 0;
  v344 = 0;
  v308 = 0;
  v289 = sub_C1C44();
  v290 = *(v289 - 8);
  v291 = v289 - 8;
  v292 = (*(v290 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v289);
  v293 = v87 - v292;
  v294 = (*(*(sub_21E8(&qword_EF280, &qword_C6580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v308);
  v295 = v87 - v294;
  v296 = sub_C1C64();
  v297 = *(v296 - 8);
  v298 = v296 - 8;
  v299 = (*(v297 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v296);
  v300 = v87 - v299;
  v301 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v299);
  v302 = v87 - v301;
  v303 = sub_21E8(&qword_EF288, &qword_C5C10);
  v304 = *(v303 - 8);
  v305 = v303 - 8;
  v306 = (*(v304 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v308);
  v307 = v87 - v306;
  v309 = sub_C1D34();
  v311 = *(v309 - 8);
  v310 = v309 - 8;
  v312 = v311;
  v313 = *(v311 + 64);
  v314 = (v313 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v308);
  v315 = v87 - v314;
  v317 = sub_C3234();
  v318 = *(v317 - 8);
  v319 = v317 - 8;
  v323 = *(v318 + 64);
  v320 = (v323 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v317);
  v321 = v87 - v320;
  v322 = (v323 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v320);
  v324 = v87 - v322;
  v325 = (v323 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v322);
  v326 = v87 - v325;
  v395 = a1;
  v394 = v5;
  v328 = &v393;
  swift_beginAccess();
  v330 = *(v327 + 160);

  swift_endAccess();
  v329 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v331 = sub_C3394();

  v334 = &v392;
  v392 = v331;
  v6 = sub_C1D24();
  v333 = v391;
  v391[0] = v6;
  v391[1] = v7;
  v332 = sub_21E8(&qword_EF290, &qword_C5C18);
  sub_2D4A4();
  v335 = sub_C3684();
  sub_8224(v333);
  sub_1D7C8(v334);
  if (v335)
  {
    v193 = v288;
    goto LABEL_20;
  }

  sub_2D7DC();
  v260 = sub_EE34();
  v356 = v260;
  v261 = sub_C1CF4();
  v262 = v8;
  if (v8)
  {
    v258 = v261;
    v259 = v262;
  }

  else
  {
    sub_C3B84();
    __break(1u);
  }

  v253 = v259;
  v256 = sub_C3484();

  sub_C1D24();
  v254 = v9;
  v255 = sub_C3484();

  v257 = [v260 load:v256 withFlowId:v255];
  _objc_release(v255);
  _objc_release(v256);
  if ((v257 & 1) == 0)
  {
    v48 = v324;
    v49 = sub_BF704();
    (*(v318 + 16))(v48, v49, v317);
    v172 = v312;
    (*(v311 + 16))(v315, v263, v309);
    v173 = (*(v172 + 80) + 16) & ~*(v172 + 80);
    v176 = 7;
    v177 = swift_allocObject();
    (*(v311 + 32))(v177 + v173, v315, v309);
    v185 = sub_C3224();
    v186 = sub_C3884();
    v174 = 17;
    v179 = swift_allocObject();
    *(v179 + 16) = 32;
    v180 = swift_allocObject();
    *(v180 + 16) = 8;
    v175 = 32;
    v50 = swift_allocObject();
    v51 = v177;
    v178 = v50;
    *(v50 + 16) = v264;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v178;
    v182 = v52;
    *(v52 + 16) = v265;
    *(v52 + 24) = v53;
    v184 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v181 = sub_C3C64();
    v183 = v54;

    v55 = v179;
    v56 = v183;
    *v183 = v266;
    v56[1] = v55;

    v57 = v180;
    v58 = v183;
    v183[2] = v267;
    v58[3] = v57;

    v59 = v182;
    v60 = v183;
    v183[4] = v268;
    v60[5] = v59;
    sub_4E48();

    if (os_log_type_enabled(v185, v186))
    {
      v61 = v288;
      v165 = sub_C3954();
      v164 = sub_21E8(&qword_EE828, &qword_C5100);
      v166 = sub_5DD4(0, v164, v164);
      v167 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v168 = &v355;
      v355 = v165;
      v169 = &v354;
      v354 = v166;
      v170 = &v353;
      v353 = v167;
      sub_5E28(2, &v355);
      sub_5E28(1, v168);
      v351 = v266;
      v352 = v179;
      sub_5E3C(&v351, v168, v169, v170);
      v171 = v61;
      if (v61)
      {

        __break(1u);
      }

      else
      {
        v351 = v267;
        v352 = v180;
        sub_5E3C(&v351, &v355, &v354, &v353);
        v163 = 0;
        v351 = v268;
        v352 = v182;
        sub_5E3C(&v351, &v355, &v354, &v353);
        _os_log_impl(&dword_0, v185, v186, "Unable to load flow file for: %s", v165, 0xCu);
        sub_5E88(v166, 0, v164);
        sub_5E88(v167, 1, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v185);
    (*(v318 + 8))(v324, v317);
    _objc_release(v260);
    v162 = 0;
    return v162 & 1;
  }

  v10 = v326;
  sub_C3564("languages", 9uLL, 1);
  v226 = v11;
  v227 = sub_C3484();

  v228 = [v260 getMetadata:v227];
  _objc_release(v227);
  v231 = sub_C3494();
  v232 = v12;
  v349 = v231;
  v350 = v12;
  _objc_release(v228);
  v13 = sub_BF704();
  (*(v318 + 16))(v10, v13, v317);
  v229 = v312;
  (*(v311 + 16))(v315, v263, v309);
  v230 = (*(v229 + 80) + 16) & ~*(v229 + 80);
  v239 = 7;
  v233 = swift_allocObject();
  (*(v311 + 32))(v233 + v230, v315, v309);

  v238 = 32;
  v14 = swift_allocObject();
  v15 = v232;
  v240 = v14;
  *(v14 + 16) = v231;
  *(v14 + 24) = v15;
  v251 = sub_C3224();
  v252 = sub_C3874();
  v236 = 17;
  v242 = swift_allocObject();
  v235 = 32;
  *(v242 + 16) = 32;
  v243 = swift_allocObject();
  v237 = 8;
  *(v243 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v233;
  v234 = v16;
  *(v16 + 16) = v269;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v234;
  v244 = v18;
  *(v18 + 16) = v270;
  *(v18 + 24) = v19;
  v245 = swift_allocObject();
  *(v245 + 16) = v235;
  v246 = swift_allocObject();
  *(v246 + 16) = v237;
  v20 = swift_allocObject();
  v21 = v240;
  v241 = v20;
  *(v20 + 16) = v271;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v241;
  v248 = v22;
  *(v22 + 16) = v272;
  *(v22 + 24) = v23;
  v250 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v247 = sub_C3C64();
  v249 = v24;

  v25 = v242;
  v26 = v249;
  *v249 = v273;
  v26[1] = v25;

  v27 = v243;
  v28 = v249;
  v249[2] = v274;
  v28[3] = v27;

  v29 = v244;
  v30 = v249;
  v249[4] = v275;
  v30[5] = v29;

  v31 = v245;
  v32 = v249;
  v249[6] = v276;
  v32[7] = v31;

  v33 = v246;
  v34 = v249;
  v249[8] = v277;
  v34[9] = v33;

  v35 = v248;
  v36 = v249;
  v249[10] = v278;
  v36[11] = v35;
  sub_4E48();

  if (os_log_type_enabled(v251, v252))
  {
    v37 = v288;
    v218 = sub_C3954();
    v217 = sub_21E8(&qword_EE828, &qword_C5100);
    v219 = sub_5DD4(0, v217, v217);
    v220 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v222 = &v340;
    v340 = v218;
    v223 = &v339;
    v339 = v219;
    v224 = &v338;
    v338 = v220;
    v221 = 2;
    sub_5E28(2, &v340);
    sub_5E28(v221, v222);
    v336 = v273;
    v337 = v242;
    sub_5E3C(&v336, v222, v223, v224);
    v225 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v336 = v274;
      v337 = v243;
      sub_5E3C(&v336, &v340, &v339, &v338);
      v214 = 0;
      v336 = v275;
      v337 = v244;
      sub_5E3C(&v336, &v340, &v339, &v338);
      v213 = 0;
      v336 = v276;
      v337 = v245;
      sub_5E3C(&v336, &v340, &v339, &v338);
      v212 = 0;
      v336 = v277;
      v337 = v246;
      sub_5E3C(&v336, &v340, &v339, &v338);
      v211 = 0;
      v336 = v278;
      v337 = v248;
      sub_5E3C(&v336, &v340, &v339, &v338);
      v210 = 0;
      _os_log_impl(&dword_0, v251, v252, "Languages meta for %s: %s", v218, 0x16u);
      sub_5E88(v219, 0, v217);
      sub_5E88(v220, 2, &type metadata for Any + 8);
      sub_C3934();

      v215 = v210;
    }
  }

  else
  {
    v38 = v288;

    v215 = v38;
  }

  v39 = v215;
  _objc_release(v251);
  (*(v318 + 8))(v326, v317);
  v348[2] = v231;
  v348[3] = v232;
  v200 = 1;
  v198 = 1;
  v40 = sub_C3564("-", 1uLL, 1);
  v196 = v348;
  v348[0] = v40;
  v348[1] = v41;
  v42 = sub_C3564("_", v200, v198 & 1);
  v195 = v347;
  v347[0] = v42;
  v347[1] = v43;
  v194 = sub_B2E8();
  v207 = &type metadata for String;
  sub_28CB8();
  v199 = sub_C39C4();
  v197 = v44;
  sub_8224(v195);
  sub_8224(v196);
  v204 = v346;
  v346[0] = v199;
  v346[1] = v197;
  sub_C3564("/[ ,]+/", 7uLL, v198 & 1);
  sub_C2F24();
  v202 = sub_2DCA0();
  v203 = sub_2DD18();
  v201 = sub_28CF4();
  sub_28D0C();
  v205 = sub_C3424();
  (*(v304 + 8))(v307, v303);
  sub_8224(v204);
  v345 = v205;
  v206 = sub_21E8(&qword_EF2B8, &qword_C5C20);
  v45 = sub_2DDA0();
  result = sub_28D90(v279, 0, v206, v207, &type metadata for Never, v45, &protocol witness table for Never, v216);
  v208 = v39;
  v209 = result;
  if (!v39)
  {
    v192 = v209;
    sub_1D7C8(&v345);
    v344 = v192;
    v187 = sub_C1D24();
    v188 = v47;

    v190 = &v343;
    v343 = v192;
    v189 = v342;
    v342[0] = v187;
    v342[1] = v188;
    v191 = &v341;
    swift_beginAccess();
    sub_21E8(&qword_EF2C8, &qword_C5C28);
    sub_C33F4();
    swift_endAccess();

    _objc_release(v260);
    v193 = v208;
LABEL_20:
    v132 = v193;

    v146 = v388;
    sub_24F4(v327 + 16, v388);

    v134 = v389;
    v133 = v390;
    sub_808C(v146, v389);
    v62 = *(v133 + 8);
    v145 = &v385;
    v62(v134);
    v136 = v386;
    v135 = v387;
    sub_808C(v145, v386);
    sub_C1F34();
    v137 = sub_C1BA4();
    v138 = v63;
    v156 = *(v297 + 8);
    v155 = v297 + 8;
    v156(v302, v296);
    v144 = v384;
    v384[0] = v137;
    v384[1] = v138;
    v139 = 1;
    v158 = 1;
    v64 = sub_C3564("-", 1uLL, 1);
    v143 = v383;
    v383[0] = v64;
    v383[1] = v65;
    v66 = sub_C3564("_", v139, v158 & 1);
    v142 = v382;
    v382[0] = v66;
    v382[1] = v67;
    v140 = sub_B2E8();
    v141 = &type metadata for String;
    sub_28CB8();
    v157 = 0;
    v147 = sub_C39C4();
    v148 = v68;
    sub_8224(v142);
    sub_8224(v143);
    sub_8224(v144);
    sub_2560(v145);
    sub_2560(v146);
    v380 = v147;
    v381 = v148;

    v149 = v375;
    sub_24F4(v327 + 16, v375);

    v151 = v376;
    v150 = v377;
    sub_808C(v149, v376);
    v69 = *(v150 + 8);
    v152 = v372;
    v69(v151);
    v154 = v373;
    v153 = v374;
    sub_808C(v152, v373);
    sub_C1F34();
    sub_C1C54();
    v156(v300, v296);
    sub_C1C24();
    (*(v290 + 8))(v293, v289);
    v159 = sub_C1BC4();
    v160 = *(v159 - 8);
    v161 = v159 - 8;
    if ((*(v160 + 48))(v295, v158) == 1)
    {
      sub_2560(v372);
      sub_2560(v375);
      sub_2D52C(v295);
      v130 = 0;
      v131 = 0;
    }

    else
    {
      v128 = sub_C1BB4();
      v129 = v70;
      (*(v160 + 8))(v295, v159);
      sub_2560(v372);
      sub_2560(v375);
      v130 = v128;
      v131 = v129;
    }

    v370 = v130;
    v371 = v131;
    if (v131)
    {
      v378 = v370;
      v379 = v371;
    }

    else
    {
      v378 = sub_C3564("", 0, 1);
      v379 = v71;
      if (v371)
      {
        sub_8224(&v370);
      }
    }

    v120 = v378;
    v121 = v379;
    v368 = v378;
    v369 = v379;
    v123 = sub_C1D24();
    v124 = v72;
    v122 = &v367;
    swift_beginAccess();
    v125 = *(v327 + 160);

    swift_endAccess();
    v126 = v365;
    v365[0] = v123;
    v365[1] = v124;
    sub_C33E4();
    sub_8224(v126);
    v127 = v366;
    if (v366)
    {
      v119 = v127;
      v117 = v127;
      v359 = v127;

      v358[3] = v117;
      sub_1E160();
      v118 = sub_C3804();

      if (v118)
      {
        v116 = 1;
      }

      else
      {
        v358[2] = v117;
        v115 = v358;
        v358[0] = v120;
        v358[1] = v121;
        sub_1D00C();
        v116 = sub_C3684();
      }

      v114 = v116;

      if (v114)
      {
        v113 = 1;
      }

      else
      {
        v357[2] = v117;
        v112 = v357;
        v357[0] = v147;
        v357[1] = v148;
        sub_1D00C();
        v113 = sub_C3684();
      }

      v111 = v113;

      v162 = v111;
    }

    else
    {
      v73 = v321;

      v74 = sub_BF704();
      (*(v318 + 16))(v73, v74, v317);
      v96 = v312;
      (*(v311 + 16))(v315, v263, v309);
      v97 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v100 = 7;
      v101 = swift_allocObject();
      (*(v311 + 32))(v101 + v97, v315, v309);
      v109 = sub_C3224();
      v110 = sub_C3884();
      v98 = 17;
      v103 = swift_allocObject();
      *(v103 + 16) = 32;
      v104 = swift_allocObject();
      *(v104 + 16) = 8;
      v99 = 32;
      v75 = swift_allocObject();
      v76 = v101;
      v102 = v75;
      *(v75 + 16) = v280;
      *(v75 + 24) = v76;
      v77 = swift_allocObject();
      v78 = v102;
      v106 = v77;
      *(v77 + 16) = v281;
      *(v77 + 24) = v78;
      v108 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v105 = sub_C3C64();
      v107 = v79;

      v80 = v103;
      v81 = v107;
      *v107 = v282;
      v81[1] = v80;

      v82 = v104;
      v83 = v107;
      v107[2] = v283;
      v83[3] = v82;

      v84 = v106;
      v85 = v107;
      v107[4] = v284;
      v85[5] = v84;
      sub_4E48();

      if (os_log_type_enabled(v109, v110))
      {
        v86 = v132;
        v89 = sub_C3954();
        v88 = sub_21E8(&qword_EE828, &qword_C5100);
        v90 = sub_5DD4(0, v88, v88);
        v91 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v92 = &v364;
        v364 = v89;
        v93 = &v363;
        v363 = v90;
        v94 = &v362;
        v362 = v91;
        sub_5E28(2, &v364);
        sub_5E28(1, v92);
        v360 = v282;
        v361 = v103;
        sub_5E3C(&v360, v92, v93, v94);
        v95 = v86;
        if (v86)
        {

          __break(1u);
        }

        else
        {
          v360 = v283;
          v361 = v104;
          sub_5E3C(&v360, &v364, &v363, &v362);
          v87[1] = 0;
          v360 = v284;
          v361 = v106;
          sub_5E3C(&v360, &v364, &v363, &v362);
          _os_log_impl(&dword_0, v109, v110, "Unable to find enabled locales for flow %s", v89, 0xCu);
          sub_5E88(v90, 0, v88);
          sub_5E88(v91, 1, &type metadata for Any + 8);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v109);
      (*(v318 + 8))(v321, v317);

      v162 = 0;
    }

    return v162 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_28CB8()
{
  sub_2C4EC(0);

  return 0;
}

uint64_t sub_28D28@<X0>(uint64_t *a2@<X8>)
{
  result = sub_C3634();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_28D90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
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
  v67 = sub_C37C4();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_C3B14();
  v33 = sub_C3B24();
  sub_C3AF4(v67);
  result = sub_C37B4();
  if (v67 < 0)
  {
    sub_C3B84();
    __break(1u);
LABEL_24:
    v17 = sub_C36F4();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_C37D4();
    swift_getAssociatedConformanceWitness();
    v22 = sub_C3474();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_C3BA4();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

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
      sub_C3B84();
      __break(1u);
LABEL_18:
      sub_C3BA4();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_C3834();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_2CCD8(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_C3B04();
    sub_C37E4();
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

uint64_t sub_29674()
{
  v99 = 0;
  v147 = 0;
  v146 = 0;
  v98 = 0;
  v100 = sub_C3234();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  __chkstk_darwin(0);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v27 - v105;
  __chkstk_darwin(v1);
  v106 = &v27 - v105;
  v107 = sub_C1C64();
  v108 = *(v107 - 8);
  v109 = v108;
  v111 = *(v108 + 64);
  v110 = v111;
  __chkstk_darwin(v107 - 8);
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v27 - v113;
  __chkstk_darwin(&v27 - v113);
  v114 = &v27 - v113;
  v147 = &v27 - v113;
  v146 = v0;

  v121 = v143;
  sub_24F4(v0 + 16, v143);

  v117 = v144;
  v116 = v145;
  sub_808C(v121, v144);
  v2 = *(v116 + 40);
  v120 = &v140;
  v2(v117);
  v119 = v141;
  v118 = v142;
  sub_808C(v120, v141);
  v122 = (*(v118 + 24))(v119);
  sub_2560(v120);
  sub_2560(v121);
  if (v122)
  {

    v92 = v133;
    sub_24F4(v115 + 16, v133);

    v88 = v134;
    v87 = v135;
    sub_808C(v92, v134);
    v3 = *(v87 + 8);
    v91 = &v130;
    v3(v88);
    v90 = v131;
    v89 = v132;
    sub_808C(v91, v131);
    sub_C1F34();
    sub_2560(v91);
    sub_2560(v92);
    v93 = *(v115 + 72);

    v129 = v93;
    v128[0] = sub_C1BA4();
    v128[1] = v4;
    v94 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1D00C();
    v95 = v128;
    v96 = &v129;
    v97 = sub_C3684();
    sub_8224(v95);
    sub_1D7C8(v96);
    if (v97)
    {
      (*(v109 + 8))(v114, v107);
      v85 = 1;
      v86 = v98;
    }

    else
    {
      v5 = v106;
      v6 = sub_BF704();
      (*(v102 + 16))(v5, v6, v100);
      (*(v109 + 16))(v112, v114, v107);
      v65 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v74 = swift_allocObject();
      (*(v109 + 32))(v74 + v65, v112, v107);
      v84 = sub_C3224();
      v66 = v84;
      v83 = sub_C3874();
      v67 = v83;
      v68 = 17;
      v73 = 7;
      v77 = swift_allocObject();
      v69 = v77;
      v70 = 32;
      *(v77 + 16) = 32;
      v7 = swift_allocObject();
      v8 = v70;
      v78 = v7;
      v71 = v7;
      *(v7 + 16) = 8;
      v72 = v8;
      v9 = swift_allocObject();
      v10 = v74;
      v75 = v9;
      *(v9 + 16) = sub_2DEF4;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v75;
      v81 = v11;
      v76 = v11;
      *(v11 + 16) = sub_7BBC;
      *(v11 + 24) = v12;
      v82 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v79 = sub_C3C64();
      v80 = v13;

      v14 = v77;
      v15 = v80;
      *v80 = sub_7B48;
      v15[1] = v14;

      v16 = v78;
      v17 = v80;
      v80[2] = sub_7B48;
      v17[3] = v16;

      v18 = v80;
      v19 = v81;
      v80[4] = sub_7C08;
      v18[5] = v19;
      sub_4E48();

      if (os_log_type_enabled(v84, v83))
      {
        v20 = v98;
        v58 = sub_C3954();
        v55 = v58;
        v56 = sub_21E8(&qword_EE828, &qword_C5100);
        v59 = sub_5DD4(0, v56, v56);
        v57 = v59;
        v61 = 1;
        v60 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v127 = v58;
        v126 = v59;
        v125 = v60;
        v62 = &v127;
        sub_5E28(2, &v127);
        sub_5E28(v61, v62);
        v123 = sub_7B48;
        v124 = v69;
        sub_5E3C(&v123, v62, &v126, &v125);
        v63 = v20;
        v64 = v20;
        if (v20)
        {
          v53 = 0;

          __break(1u);
        }

        else
        {
          v123 = sub_7B48;
          v124 = v71;
          sub_5E3C(&v123, &v127, &v126, &v125);
          v51 = 0;
          v52 = 0;
          v123 = sub_7C08;
          v124 = v76;
          sub_5E3C(&v123, &v127, &v126, &v125);
          v49 = 0;
          v50 = 0;
          _os_log_impl(&dword_0, v66, v67, "New greeting flow not supported for locale: %s", v55, 0xCu);
          sub_5E88(v57, 0, v56);
          sub_5E88(v60, 1, &type metadata for Any + 8);
          sub_C3934();

          v54 = v49;
        }
      }

      else
      {
        v21 = v98;

        v54 = v21;
      }

      v48 = v54;

      (*(v102 + 8))(v106, v100);
      (*(v109 + 8))(v114, v107);
      v85 = 0;
      v86 = v48;
    }
  }

  else
  {
    v22 = v104;
    v23 = sub_BF704();
    (*(v102 + 16))(v22, v23, v100);
    v46 = sub_C3224();
    v43 = v46;
    v45 = sub_C3874();
    v44 = v45;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v47 = sub_C3C64();
    if (os_log_type_enabled(v46, v45))
    {
      v24 = v98;
      v34 = sub_C3954();
      v30 = v34;
      v31 = sub_21E8(&qword_EE828, &qword_C5100);
      v32 = 0;
      v35 = sub_5DD4(0, v31, v31);
      v33 = v35;
      v36 = sub_5DD4(v32, &type metadata for Any + 8, &type metadata for Any + 8);
      v139 = v34;
      v138 = v35;
      v137 = v36;
      v37 = 0;
      v38 = &v139;
      sub_5E28(0, &v139);
      sub_5E28(v37, v38);
      v136 = v47;
      v39 = &v27;
      __chkstk_darwin(&v27);
      v40 = &v27 - 6;
      *(&v27 - 4) = v25;
      *(&v27 - 3) = &v138;
      *(&v27 - 2) = &v137;
      v41 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v42 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v43, v44, "New greeting flow not enabled", v30, 2u);
        v28 = 0;
        sub_5E88(v33, 0, v31);
        sub_5E88(v36, v28, &type metadata for Any + 8);
        sub_C3934();

        v29 = v42;
      }
    }

    else
    {

      v29 = v98;
    }

    v27 = v29;

    (*(v102 + 8))(v104, v100);
    v85 = 0;
    v86 = v27;
  }

  return v85 & 1;
}

uint64_t sub_2A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v135 = a2;
  v136 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v137 = type metadata accessor for INSiriSocialConversation(0);
  v138 = *(v137 - 8);
  v139 = v138;
  v141 = *(v138 + 64);
  v140 = v141;
  __chkstk_darwin(0);
  v143 = (v141 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v33 - v143;
  __chkstk_darwin(v2);
  v144 = v33 - v143;
  v192 = v33 - v143;
  v145 = sub_C3234();
  v146 = *(v145 - 8);
  v147 = v146;
  v148 = *(v146 + 64);
  __chkstk_darwin(v145 - 8);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v33 - v150;
  __chkstk_darwin(v33 - v150);
  v151 = v33 - v150;
  v152 = sub_21E8(&qword_EE800, &unk_C50E0);
  v153 = *(v152 - 8);
  v154 = v153;
  v155 = *(v153 + 64);
  __chkstk_darwin(v152 - 8);
  v157 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = v33 - v157;
  __chkstk_darwin(v33 - v157);
  v158 = v33 - v157;
  v3 = sub_21E8(&qword_EE808, &unk_C5BE0);
  v159 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v161 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = v33 - v161;
  __chkstk_darwin(v33 - v161);
  v162 = v33 - v161;
  v168 = sub_21E8(&qword_EEE30, &qword_C5980);
  v164 = *(v168 - 8);
  v166 = v164;
  v165 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v170);
  v167 = v33 - v165;
  v191 = v4;
  v190 = v5;
  sub_8ECA0();
  v171 = sub_C2D84();
  v169 = v6;
  (*(v166 + 8))(v167, v168);
  v171(v189, v170);
  v172 = 0;
  v173 = 0;
  v131 = v189[0];
  v130 = v189[1];

  v132 = v131;
  v133 = v130;
  v134 = v172;
  v129 = v172;
  v188[0] = v131;
  v188[1] = v130;
  v128 = v130 == 0;
  v127 = v128;
  sub_8224(v188);
  if (v127)
  {
    v7 = v129;
    sub_8EC30();
    v124 = sub_C2D84();
    v123 = v8;
    (*(v154 + 8))(v158, v152);
    v124(v170);
    v125 = v7;
    v126 = v7;
    if (v7)
    {
      v120 = v126;
      v121 = 0;

      (*(v139 + 56))(v162, 1, 1, v137);
      v122 = v121;
    }

    else
    {
      (*(v139 + 56))(v162, 0, 1, v137);

      v122 = v125;
    }

    v119 = v122;
    v118 = (*(v139 + 48))(v162, 1, v137) == 1;
    v115 = v118;
    sub_7C14(v162);
    v116 = v115;
    v117 = v119;
  }

  else
  {
    v116 = 0;
    v117 = v129;
  }

  v114 = v117;
  if (v116)
  {
    v9 = v151;
    v10 = sub_BF704();
    (*(v147 + 16))(v9, v10, v145);
    v112 = sub_C3224();
    v109 = v112;
    v111 = sub_C3884();
    v110 = v111;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v113 = sub_C3C64();
    if (os_log_type_enabled(v112, v111))
    {
      v11 = v114;
      v100 = sub_C3954();
      v96 = v100;
      v97 = sub_21E8(&qword_EE828, &qword_C5100);
      v98 = 0;
      v101 = sub_5DD4(0, v97, v97);
      v99 = v101;
      v102 = sub_5DD4(v98, &type metadata for Any + 8, &type metadata for Any + 8);
      v177 = v100;
      v176 = v101;
      v175 = v102;
      v103 = 0;
      v104 = &v177;
      sub_5E28(0, &v177);
      sub_5E28(v103, v104);
      v174 = v113;
      v105 = v33;
      __chkstk_darwin(v33);
      v106 = &v33[-6];
      v33[-4] = v12;
      v33[-3] = &v176;
      v33[-2] = &v175;
      v107 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v108 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v109, v110, "SocialConversationFlowDelegatePlugin received a parse that cannot be transformed to a valid type", v96, 2u);
        v94 = 0;
        sub_5E88(v99, 0, v97);
        sub_5E88(v102, v94, &type metadata for Any + 8);
        sub_C3934();

        v95 = v108;
      }
    }

    else
    {

      v95 = v114;
    }

    v92 = v95;

    (*(v147 + 8))(v151, v145);
    sub_C1E34();
    return v92;
  }

  v13 = v114;
  sub_8EC30();
  v89 = sub_C2D84();
  v88 = v14;
  (*(v154 + 8))(v156, v152);
  v89(v170);
  v90 = v13;
  v91 = v13;
  if (v13)
  {
    v33[1] = v91;
    v34 = 0;

    (*(v139 + 56))(v160, 1, 1, v137);
    v87 = v34;
  }

  else
  {
    (*(v139 + 56))(v160, 0, 1, v137);

    v87 = v90;
  }

  v86 = v87;
  if ((*(v139 + 48))(v160, 1, v137) == 1)
  {
    sub_7C14(v160);
LABEL_29:
    v35 = sub_22288(v170);
    sub_C1E44();

    return v86;
  }

  sub_7D34(v160, v144);

  v84 = &v185;
  sub_BF5A0();

  v83 = v186;
  v82 = v187;
  sub_808C(v84, v186);
  v85 = (*(v82 + 48))(v83);
  sub_2560(v84);

  if (v85)
  {
    v81 = 0;
  }

  else
  {
    v74 = *(v163 + 104);

    v179 = v74;
    v75 = *v144;
    v76 = *(v144 + 1);

    v178[0] = v75;
    v178[1] = v76;
    v77 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1D00C();
    v78 = v178;
    v79 = &v179;
    v80 = sub_C3684();
    sub_8224(v78);
    sub_1D7C8(v79);
    v81 = v80;
  }

  v73 = v81;

  if ((v73 & 1) == 0)
  {
    sub_7EB4(v144);
    goto LABEL_29;
  }

  v15 = v149;
  v16 = sub_BF704();
  (*(v147 + 16))(v15, v16, v145);
  sub_2C670(v144, v142);
  v53 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v62 = swift_allocObject();
  sub_7D34(v142, (v62 + v53));
  v72 = sub_C3224();
  v54 = v72;
  v71 = sub_C3874();
  v55 = v71;
  v56 = 17;
  v61 = 7;
  v65 = swift_allocObject();
  v57 = v65;
  v58 = 32;
  *(v65 + 16) = 32;
  v17 = swift_allocObject();
  v18 = v58;
  v66 = v17;
  v59 = v17;
  *(v17 + 16) = 8;
  v60 = v18;
  v19 = swift_allocObject();
  v20 = v62;
  v63 = v19;
  *(v19 + 16) = sub_2E1A0;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v63;
  v69 = v21;
  v64 = v21;
  *(v21 + 16) = sub_7BBC;
  *(v21 + 24) = v22;
  v70 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v67 = sub_C3C64();
  v68 = v23;

  v24 = v65;
  v25 = v68;
  *v68 = sub_7B48;
  v25[1] = v24;

  v26 = v66;
  v27 = v68;
  v68[2] = sub_7B48;
  v27[3] = v26;

  v28 = v68;
  v29 = v69;
  v68[4] = sub_7C08;
  v28[5] = v29;
  sub_4E48();

  if (os_log_type_enabled(v72, v71))
  {
    v30 = v86;
    v46 = sub_C3954();
    v43 = v46;
    v44 = sub_21E8(&qword_EE828, &qword_C5100);
    v47 = sub_5DD4(0, v44, v44);
    v45 = v47;
    v49 = 1;
    v48 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v184 = v46;
    v183 = v47;
    v182 = v48;
    v50 = &v184;
    sub_5E28(2, &v184);
    sub_5E28(v49, v50);
    v180 = sub_7B48;
    v181 = v57;
    sub_5E3C(&v180, v50, &v183, &v182);
    v51 = v30;
    v52 = v30;
    if (v30)
    {
      v41 = 0;

      __break(1u);
    }

    else
    {
      v180 = sub_7B48;
      v181 = v59;
      sub_5E3C(&v180, &v184, &v183, &v182);
      v39 = 0;
      v40 = 0;
      v180 = sub_7C08;
      v181 = v64;
      sub_5E3C(&v180, &v184, &v183, &v182);
      v37 = 0;
      v38 = 0;
      _os_log_impl(&dword_0, v54, v55, "Received intent for %s and newMultiturn FF disabled", v43, 0xCu);
      sub_5E88(v45, 0, v44);
      sub_5E88(v48, 1, &type metadata for Any + 8);
      sub_C3934();

      v42 = v37;
    }
  }

  else
  {
    v31 = v86;

    v42 = v31;
  }

  v36 = v42;

  (*(v147 + 8))(v149, v145);
  sub_C1E34();
  sub_7EB4(v144);
  return v36;
}

void sub_2B940()
{
  sub_1D7C8(v0 + 9);
  sub_8224((v0 + 10));
  sub_1D7C8(v0 + 12);
  sub_1D7C8(v0 + 13);
  sub_2CCD8(v0 + 14);
  sub_2560(v0 + 15);
  sub_1D7C8(v0 + 20);
}

void *sub_2B9B4()
{
  v1 = sub_BF340();
  sub_1D7C8(v1 + 9);
  sub_8224((v1 + 10));
  sub_1D7C8(v1 + 12);
  sub_1D7C8(v1 + 13);
  sub_2CCD8(v1 + 14);
  sub_2560(v1 + 15);
  sub_1D7C8(v1 + 20);
  return v1;
}

uint64_t sub_2BA9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E18();
  *a1 = result;
  return result;
}

uint64_t sub_2BB4C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_24F4(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_2BBA0(void *a1)
{
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2560((v1 + 16));
  sub_BD6C(v4, (v1 + 16));
  swift_endAccess();
  return sub_2560(a1);
}

uint64_t sub_2BC6C()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_2BC98@<X0>(uint64_t a1@<X8>)
{
  __dst[5] = 0;
  swift_beginAccess();
  sub_2E2DC((v1 + 64), v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_BD6C(v7, __dst);
    sub_24F4(__dst, a1);
    return sub_2560(__dst);
  }

  else
  {
    sub_1FA80(v7);
    sub_C23C4();
    sub_24F4(v6, v5);
    swift_beginAccess();
    sub_2E370(v5, (v4 + 64));
    swift_endAccess();
    sub_24F4(v6, a1);
    return sub_2560(v6);
  }
}

uint64_t sub_2BDA8(void *a1)
{
  v5 = 0;
  v6 = a1;
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2E370(v4, (v1 + 64));
  swift_endAccess();
  return sub_2560(a1);
}

uint64_t (*sub_2BE24(uint64_t *a1))()
{
  v4 = sub_2E4CC(0x58uLL, 58534);
  *a1 = v4;
  v4[10] = v1;
  sub_2BC98(v4);
  return sub_2BE98;
}

void sub_2BE98(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24F4(v2, (v2 + 5));
    sub_2BDA8(v2 + 5);
    sub_2560(v2);
  }

  else
  {
    sub_2BDA8(v2);
  }

  free(v2);
}

uint64_t sub_2BF10@<X0>(uint64_t a1@<X8>)
{
  __dst[5] = 0;
  swift_beginAccess();
  sub_2E2DC((v1 + 104), v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_BD6C(v7, __dst);
    sub_24F4(__dst, a1);
    return sub_2560(__dst);
  }

  else
  {
    sub_1FA80(v7);
    sub_C22A4();
    sub_24F4(v6, v5);
    swift_beginAccess();
    sub_2E370(v5, (v4 + 104));
    swift_endAccess();
    sub_24F4(v6, a1);
    return sub_2560(v6);
  }
}

uint64_t sub_2C020(void *a1)
{
  v5 = 0;
  v6 = a1;
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2E370(v4, (v1 + 104));
  swift_endAccess();
  return sub_2560(a1);
}

uint64_t (*sub_2C09C(uint64_t *a1))()
{
  v4 = sub_2E4CC(0x58uLL, 7847);
  *a1 = v4;
  v4[10] = v1;
  sub_2BF10(v4);
  return sub_2C110;
}

void sub_2C110(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24F4(v2, (v2 + 5));
    sub_2C020(v2 + 5);
    sub_2560(v2);
  }

  else
  {
    sub_2C020(v2);
  }

  free(v2);
}

uint64_t sub_2C1C4()
{
  sub_2560(v0 + 2);

  sub_1FA80(v0 + 8);
  sub_1FA80(v0 + 13);
  return v2;
}

void *sub_2C254()
{
  sub_71CB0();
  *(v0 + 40) = &type metadata for SocialConversationFeatureFlagManager;
  *(v0 + 48) = &protocol witness table for SocialConversationFeatureFlagManager;
  v3 = *sub_2F7DC();

  result = v2;
  v2[7] = v3;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  return result;
}

uint64_t sub_2C3BC()
{
  v2 = *(sub_C23B4() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2C488()
{
  v1 = *(sub_C23B4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FC0(v2);
}

unint64_t sub_2C4EC(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

char *sub_2C670(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  *(a2 + 2) = *(a1 + 2);
  v6 = *(a1 + 3);

  *(a2 + 3) = v6;
  v7 = *(type metadata accessor for INSiriSocialConversation(0) + 24);
  v9 = sub_C1B54();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a1[v7], 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(&a2[v7], &a1[v7], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(&a2[v7], 0, 1, v9);
  }

  return a2;
}

uint64_t sub_2C824()
{
  v5 = type metadata accessor for INSiriSocialConversation(0);
  v1 = *(*(v5 - 8) + 80);
  v4 = (v1 + 16) & ~v1;

  v6 = *(v5 + 24);
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v4 + v6, 1))
  {
    (*(v8 + 8))(v3 + v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2C994()
{
  v1 = *(type metadata accessor for INSiriSocialConversation(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25074(v2);
}

uint64_t sub_2CAD0()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2CB9C()
{
  v1 = *(sub_C1D34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2510C(v2);
}

unint64_t sub_2CD04()
{
  v2 = qword_EF268;
  if (!qword_EF268)
  {
    type metadata accessor for InitDailyUpliftBehaviorResponseHandler(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CD84()
{
  v2 = qword_EF270;
  if (!qword_EF270)
  {
    type metadata accessor for InitGreetingBehaviorResponseHandler();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CE04()
{
  v2 = qword_EF278;
  if (!qword_EF278)
  {
    type metadata accessor for DismissSiriBehaviorResponseHandler();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2CE84()
{
  v4 = sub_C1D34();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  sub_2560((v0 + 16));
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2CF90(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_C1D34() - 8);
  v7 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = *(v1 + ((v7 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_4CE4;

  return sub_251C8(a1, v1 + 16, v1 + v7, v8);
}

uint64_t sub_2D0C8()
{
  v2 = *(sub_C23B4() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

unint64_t sub_2D4A4()
{
  v2 = qword_EF298;
  if (!qword_EF298)
  {
    sub_81B0(&qword_EF290, &qword_C5C18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D52C(uint64_t a1)
{
  v3 = sub_C1BC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2D5D4()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2D6A0()
{
  v1 = *(sub_C1D34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_28C94(v2);
}

unint64_t sub_2D7DC()
{
  v2 = qword_EF2A0;
  if (!qword_EF2A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF2A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2D840()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2D9E4()
{
  v2 = *(sub_C1D34() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

unint64_t sub_2DCA0()
{
  v2 = qword_EF2A8;
  if (!qword_EF2A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2DD18()
{
  v2 = qword_EF2B0;
  if (!qword_EF2B0)
  {
    sub_81B0(&qword_EF288, &qword_C5C10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2DDA0()
{
  v2 = qword_EF2C0;
  if (!qword_EF2C0)
  {
    sub_81B0(&qword_EF2B8, &qword_C5C20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DE28()
{
  v2 = *(sub_C1C64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2DEF4()
{
  v1 = *(sub_C1C64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2A244(v2);
}

uint64_t sub_2E030()
{
  v5 = type metadata accessor for INSiriSocialConversation(0);
  v1 = *(*(v5 - 8) + 80);
  v4 = (v1 + 16) & ~v1;

  v6 = *(v5 + 24);
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v4 + v6, 1))
  {
    (*(v8 + 8))(v3 + v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2E1A0()
{
  v1 = *(type metadata accessor for INSiriSocialConversation(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_16208(v2);
}

void *sub_2E2DC(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void *sub_2E370(const void *a1, void *a2)
{
  if (a2[3])
  {
    sub_2560(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_2E44C()
{
  v2 = qword_EF568;
  if (!qword_EF568)
  {
    type metadata accessor for SocialConversationFlowDelegatePlugin();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF568);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E4CC(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_2E520(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_255EC(a1, v6);
}

unint64_t sub_2E5E0()
{
  v2 = qword_EF570;
  if (!qword_EF570)
  {
    sub_C1D34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2E660()
{
  v2 = qword_EF578;
  if (!qword_EF578)
  {
    type metadata accessor for INSiriSocialConversation(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF578);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v98 = v140;
  v99 = a5;
  v104 = a1;
  v105 = a2;
  v109 = a3;
  v110 = a4;
  v100 = 0;
  v112 = sub_1D834;
  v116 = sub_7BBC;
  v118 = sub_7B48;
  v120 = sub_7B48;
  v123 = sub_7C08;
  memset(__b, 0, sizeof(__b));
  v170 = 0;
  v171 = 0;
  v168 = 0;
  v169 = 0;
  v101 = 0;
  v108 = sub_C3234();
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v102 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v105);
  v5 = &v48 - v102;
  v103 = &v48 - v102;
  v170 = v6;
  v171 = v7;
  v168 = v8;
  v169 = v9;
  memset(&__b[4], 0, 32);

  __b[0] = v104;
  __b[1] = v105;
  v10 = sub_BF704();
  (*(v106 + 16))(v5, v10, v108);

  v113 = 32;
  v114 = 7;
  v11 = swift_allocObject();
  v12 = v110;
  v115 = v11;
  *(v11 + 16) = v109;
  *(v11 + 24) = v12;
  v127 = sub_C3224();
  v128 = sub_C3874();
  v111 = 17;
  v119 = swift_allocObject();
  *(v119 + 16) = 32;
  v121 = swift_allocObject();
  *(v121 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v115;
  v117 = v13;
  *(v13 + 16) = v112;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v117;
  v124 = v15;
  *(v15 + 16) = v116;
  *(v15 + 24) = v16;
  v126 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v122 = sub_C3C64();
  v125 = v17;

  v18 = v119;
  v19 = v125;
  *v125 = v118;
  v19[1] = v18;

  v20 = v121;
  v21 = v125;
  v125[2] = v120;
  v21[3] = v20;

  v22 = v124;
  v23 = v125;
  v125[4] = v123;
  v23[5] = v22;
  sub_4E48();

  if (os_log_type_enabled(v127, v128))
  {
    v24 = v101;
    v91 = sub_C3954();
    v90 = sub_21E8(&qword_EE828, &qword_C5100);
    v92 = sub_5DD4(0, v90, v90);
    v93 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v94 = &v133;
    v133 = v91;
    v95 = &v132;
    v132 = v92;
    v96 = &v131;
    v131 = v93;
    sub_5E28(2, &v133);
    sub_5E28(1, v94);
    v129 = v118;
    v130 = v119;
    sub_5E3C(&v129, v94, v95, v96);
    v97 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v129 = v120;
      v130 = v121;
      sub_5E3C(&v129, &v133, &v132, &v131);
      v89 = 0;
      v129 = v123;
      v130 = v124;
      sub_5E3C(&v129, &v133, &v132, &v131);
      _os_log_impl(&dword_0, v127, v128, "rawId: %s", v91, 0xCu);
      sub_5E88(v92, 0, v90);
      sub_5E88(v93, 1, &type metadata for Any + 8);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v127);
  (*(v106 + 8))(v103, v108);
  v173._countAndFlagsBits = sub_C3564("dalHappy", 8uLL, 1);
  object = v173._object;
  v88 = sub_C3614(v173);

  if (!v88)
  {
    goto LABEL_38;
  }

  v165[2] = v109;
  v165[3] = v110;
  v25 = sub_C3564("Day", 3uLL, 1);
  v85 = v165;
  v165[0] = v25;
  v165[1] = v26;
  sub_B2E8();
  v86 = sub_C39D4();
  sub_8224(v85);
  if ((v86 & 1) == 0)
  {

    v35 = sub_C3564("dalHappyAprilFools", 0x12uLL, 1);
    v61 = v164;
    v164[0] = v35;
    v164[1] = v36;
    v163[2] = v109;
    v163[3] = v110;
    v62 = sub_C3574();
    sub_8224(v61);
    if (v62)
    {

      __b[4] = sub_C3564("aprilfool", 9uLL, 1);
      __b[5] = v37;
    }

    else
    {

      v38 = sub_C3564("dalHappyFestivalOfLights", 0x18uLL, 1);
      v59 = v163;
      v163[0] = v38;
      v163[1] = v39;
      v162[2] = v109;
      v162[3] = v110;
      v60 = sub_C3574();
      sub_8224(v59);
      if (v60)
      {

        __b[4] = sub_C3564("festivaloflight", 0xFuLL, 1);
        __b[5] = v40;
      }

      else
      {

        v41 = sub_C3564("dalHappyValentines", 0x12uLL, 1);
        v57 = v162;
        v162[0] = v41;
        v162[1] = v42;
        v160 = v109;
        v161 = v110;
        v58 = sub_C3574();
        sub_8224(v57);
        if (v58)
        {

          __b[4] = sub_C3564("valentine", 9uLL, 1);
          __b[5] = v43;
        }

        else
        {

          v157 = v109;
          v158 = v110;
          sub_1E0E8();
          sub_C3814();
          v54 = v159;
          v55 = sub_C3634();
          v56 = v44;

          __b[4] = v55;
          __b[5] = v56;
        }
      }
    }

    goto LABEL_38;
  }

  v150 = v109;
  v151 = v110;
  sub_1E0E8();
  v80 = &type metadata for String;
  sub_C3814();
  v146 = v152;
  v147 = v153;
  v148 = v154;
  v149 = v155;
  sub_3E638();
  sub_C3454();
  v77 = v156;
  v78 = sub_C3974();
  v79 = v27;

  v144 = v78;
  v145 = v79;
  v82 = sub_C3644();
  v83 = v28;

  __b[4] = v82;
  __b[5] = v83;

  v81 = sub_C3564("fathers", 7uLL, 1);
  v84 = v29;

  v142[0] = v82;
  v142[1] = v83;
  v142[2] = v81;
  v143 = v84;
  if (v83)
  {
    sub_146A0(v142, &v136);
    if (v143)
    {
      v74 = &v135;
      v135 = v136;
      v30 = *(v98 + 3);
      v73 = &v134;
      v134 = v30;
      v75 = sub_C3574();
      sub_8224(v73);
      sub_8224(v74);
      sub_8224(v142);
      v76 = v75;
      goto LABEL_14;
    }

    sub_8224(&v136);
    goto LABEL_16;
  }

  if (v143)
  {
LABEL_16:
    sub_146E0(v142);
    v76 = 0;
    goto LABEL_14;
  }

  sub_8224(v142);
  v76 = 1;
LABEL_14:
  v72 = v76;

  if (v72)
  {
    __b[4] = sub_C3564("father", 6uLL, 1);
    __b[5] = v31;

    goto LABEL_38;
  }

  v69 = __b[4];
  v70 = __b[5];

  v68 = sub_C3564("mothers", 7uLL, 1);
  v71 = v32;

  v140[0] = v69;
  v140[1] = v70;
  v140[2] = v68;
  v141 = v71;
  if (v70)
  {
    sub_146A0(v140, &v139);
    if (v141)
    {
      v65 = &v138;
      v138 = v139;
      v33 = *(v98 + 1);
      v64 = &v137;
      v137 = v33;
      v66 = sub_C3574();
      sub_8224(v64);
      sub_8224(v65);
      sub_8224(v140);
      v67 = v66;
      goto LABEL_25;
    }

    sub_8224(&v139);
    goto LABEL_27;
  }

  if (v141)
  {
LABEL_27:
    sub_146E0(v140);
    v67 = 0;
    goto LABEL_25;
  }

  sub_8224(v140);
  v67 = 1;
LABEL_25:
  v63 = v67;

  if (v63)
  {
    __b[4] = sub_C3564("mother", 6uLL, 1);
    __b[5] = v34;
  }

LABEL_38:
  sub_C3564("dalHappyFestivalOfLights", 0x18uLL, 1);
  v52 = v45;
  v53 = sub_C3574();

  if (v53)
  {
    __b[6] = sub_C3564("HINDU", 5uLL, 1);
    __b[7] = v46;
  }

  v49 = __b;
  __b[2] = v109;
  __b[3] = v110;
  v50 = __dst;
  v51 = 64;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1D2DC(__dst, v166);

  sub_1CFBC(v49);
  return memcpy(v99, v50, v51);
}

uint64_t sub_2F52C()
{
  v7[2] = 0;
  v7[0] = sub_C3C44();
  v7[1] = v0;
  v10._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v10);

  v9 = *v2;
  sub_146A0(&v9, &v6);
  v5 = v9;
  sub_C3C24();
  sub_8224(&v5);
  v11._countAndFlagsBits = sub_C3564("#", 1uLL, 1);
  sub_C3C34(v11);

  v8 = v2[1];
  sub_146A0(&v8, &v4);
  v3 = v8;
  sub_C3C24();
  sub_8224(&v3);
  v12._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v12);

  sub_8224(v7);
  return sub_C3544();
}

double sub_2F6D4@<D0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = 0;
  v8[1] = 0;
  v11 = type metadata accessor for DialogServiceButton(0);
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = v8 - v9;
  v12 = v1;
  v14 = v8 - v9;
  *v1 = 0;
  *(v1 + 1) = 0;
  v10 = *(v2 + 20);
  v3 = sub_C1AC4();
  (*(*(v3 - 8) + 56))(&v12[v10], 1);
  v4 = v12;
  v5 = v13;
  v6 = &v12[*(v11 + 24)];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&result = sub_3F708(v4, v5).n128_u64[0];
  return result;
}

uint64_t *sub_2F7DC()
{
  if (qword_EE520 != -1)
  {
    swift_once();
  }

  return &qword_F1040;
}

void *sub_2F83C()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_2F870@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options;
  v2 = sub_C2F14();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2F8DC()
{
  v2[1] = 0;
  v3 = (*(*(sub_C2F14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v4 = v2 - v3;
  type metadata accessor for DialogService(v0);
  sub_2F980();
  result = sub_2F998(v4);
  qword_F1040 = result;
  return result;
}

uint64_t sub_2F9E4()
{
  v1 = *sub_2F7DC();

  return v1;
}

uint64_t sub_2FA14(uint64_t a1)
{
  v17 = a1;
  v20 = 0;
  v19 = 0;
  v12 = 0;
  v16 = sub_C2F14();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v13 = &v11 - v11;
  v20 = v2;
  v19 = v1;
  sub_210D0();
  type metadata accessor for DialogService(v12);
  v3 = sub_2115C();
  v4 = v18;
  v5 = v14;
  v6 = v17;
  v7 = v16;
  v8 = v3;
  v9 = v13;
  *(v18 + 16) = v8;
  (*(v5 + 16))(v9, v6, v7);
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v13, v16);
  (*(v14 + 8))(v17, v16);
  return v18;
}

uint64_t sub_2FB84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v251 = a7;
  v326 = a1;
  v325 = a2;
  v321 = a3;
  v322 = a4;
  v334 = a5;
  v323 = a6;
  v252 = sub_3E874;
  v253 = sub_7BBC;
  v254 = sub_7B48;
  v255 = sub_7B48;
  v256 = sub_7C08;
  v257 = sub_3EAF4;
  v258 = sub_7BBC;
  v259 = sub_7B48;
  v260 = sub_7B48;
  v261 = sub_7C08;
  v262 = sub_31D84;
  v263 = sub_1D834;
  v264 = sub_7BBC;
  v265 = sub_7B48;
  v266 = sub_7B48;
  v267 = sub_7C08;
  v268 = sub_3EE34;
  v269 = sub_3EE94;
  v270 = sub_7BBC;
  v271 = sub_7B48;
  v272 = sub_7B48;
  v273 = sub_7C08;
  v382 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v376 = 0;
  v377 = 0;
  v375 = 0;
  v374 = 0;
  v373 = 0;
  v372 = 0;
  v363 = 0;
  v381 = 0;
  v7 = sub_21E8(&qword_EEF90, &qword_C5DF0);
  v274 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v275 = &v103[-v274];
  v319 = 0;
  v276 = sub_C1FE4();
  v277 = *(v276 - 8);
  v278 = v276 - 8;
  v279 = (*(v277 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v280 = &v103[-v279];
  v281 = sub_C2264();
  v282 = *(v281 - 8);
  v283 = v281 - 8;
  v284 = (*(v282 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v285 = &v103[-v284];
  v286 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v287 = &v103[-v286];
  v382 = &v103[-v286];
  v288 = sub_C2134();
  v289 = *(v288 - 8);
  v290 = v288 - 8;
  v291 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v292 = &v103[-v291];
  v381 = &v103[-v291];
  v293 = sub_C2F14();
  v294 = *(v293 - 8);
  v295 = v293 - 8;
  v296 = (*(v294 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v293);
  v297 = &v103[-v296];
  v298 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v299 = *(v298 - 8);
  v300 = v299;
  v301 = *(v299 + 64);
  v302 = (v301 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v303 = &v103[-v302];
  v304 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v305 = &v103[-v304];
  v306 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v307 = &v103[-v306];
  v380 = &v103[-v306];
  v308 = sub_C3234();
  v309 = *(v308 - 8);
  v310 = v308 - 8;
  v311 = (v309[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v308);
  v312 = &v103[-v311];
  v313 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v311]);
  v314 = &v103[-v313];
  v315 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v313]);
  v316 = &v103[-v315];
  v317 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v315]);
  v318 = &v103[-v317];
  v320 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v332 = &v103[-v320];
  v327 = sub_C1AC4();
  v328 = *(v327 - 8);
  v329 = v327 - 8;
  v330 = (*(v328 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v326);
  v331 = &v103[-v330];
  v379 = &v103[-v330];
  v378 = v17;
  v376 = v18;
  v377 = v19;
  v375 = v20;
  v374 = v21;
  v373 = v22;
  v372 = v23;
  v333 = *(v23 + 16);
  _objc_retain(v333);
  sub_A93A4(v334, v333);
  v335 = 0;
  v336 = 0;
  _objc_release(v333);
  (*(v328 + 56))(v332, 0, 1, v327);
  v250 = v335;
  v249 = v335;
  if ((*(v328 + 48))(v332, 1, v327) == 1)
  {
    sub_1DAA4(v332);
    v104 = 12;
    v94 = sub_C3C44();
    v112 = &v370;
    v370 = v94;
    v371 = v95;
    v110 = 1;
    v383._countAndFlagsBits = sub_C3564("CatGlobals: ", v104, 1);
    object = v383._object;
    sub_C3C34(v383);

    _objc_retain(v334);
    v107 = &v369;
    v369 = v334;
    v109 = 0;
    v106 = sub_C2E74();
    sub_3E724();
    v96 = sub_C3504();
    v108 = v368;
    v368[0] = v96;
    v368[1] = v97;
    sub_C3C24();
    sub_8224(v108);
    v384._countAndFlagsBits = sub_C3564("", v109, v110 & 1);
    v111 = v384._object;
    sub_C3C34(v384);

    v114 = v370;
    v113 = v371;

    sub_8224(v112);
    v116 = sub_C3544();
    v115 = v98;
    sub_3E7A4();
    v99 = swift_allocError();
    v100 = v115;
    v119 = v99;
    *v101 = v116;
    *(v101 + 8) = v100;
    *(v101 + 16) = 1;
    v117 = sub_2F52C();
    v118 = v102;
    sub_3AFDC(v119, v117, v102, v325, v321, v251);
  }

  else
  {
    v24 = v318;
    (*(v328 + 32))(v331, v332, v327);
    v25 = sub_BF704();
    v234 = v309[2];
    v235 = v309 + 2;
    v234(v24, v25, v308);
    sub_1D2DC(v326, v367);
    v238 = 7;
    v239 = swift_allocObject();
    memcpy((v239 + 16), v326, 0x40uLL);
    v247 = sub_C3224();
    v248 = sub_C3874();
    v236 = 17;
    v241 = swift_allocObject();
    *(v241 + 16) = 32;
    v242 = swift_allocObject();
    *(v242 + 16) = 8;
    v237 = 32;
    v26 = swift_allocObject();
    v27 = v239;
    v240 = v26;
    *(v26 + 16) = v252;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v240;
    v244 = v28;
    *(v28 + 16) = v253;
    *(v28 + 24) = v29;
    v246 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v243 = sub_C3C64();
    v245 = v30;

    v31 = v241;
    v32 = v245;
    *v245 = v254;
    v32[1] = v31;

    v33 = v242;
    v34 = v245;
    v245[2] = v255;
    v34[3] = v33;

    v35 = v244;
    v36 = v245;
    v245[4] = v256;
    v36[5] = v35;
    sub_4E48();

    if (os_log_type_enabled(v247, v248))
    {
      v37 = v249;
      v227 = sub_C3954();
      v226 = sub_21E8(&qword_EE828, &qword_C5100);
      v228 = sub_5DD4(0, v226, v226);
      v229 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v230 = &v341;
      v341 = v227;
      v231 = &v340;
      v340 = v228;
      v232 = &v339;
      v339 = v229;
      sub_5E28(2, &v341);
      sub_5E28(1, v230);
      v337 = v254;
      v338 = v241;
      sub_5E3C(&v337, v230, v231, v232);
      v233 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v337 = v255;
        v338 = v242;
        sub_5E3C(&v337, &v341, &v340, &v339);
        v223 = 0;
        v337 = v256;
        v338 = v244;
        sub_5E3C(&v337, &v341, &v340, &v339);
        v222 = 0;
        _os_log_impl(&dword_0, v247, v248, "Calling CAT: %s", v227, 0xCu);
        sub_5E88(v228, 0, v226);
        sub_5E88(v229, 1, &type metadata for Any + 8);
        sub_C3934();

        v224 = v222;
      }
    }

    else
    {
      v38 = v249;

      v224 = v38;
    }

    v198 = v224;
    _objc_release(v247);
    v199 = v309[1];
    v200 = v309 + 1;
    v199(v318, v308);
    v201 = 0;
    v203 = sub_C2EA4();
    v206 = sub_2F52C();
    v208 = v39;
    v204 = type metadata accessor for ParameterService(v201);

    sub_1D2DC(v326, v365);
    _objc_retain(v334);
    v202 = v364;
    sub_24F4(v323, v364);
    v205 = sub_749F0(v324, v326, v334, v202);
    v207 = v366;
    v366[3] = v204;
    v366[4] = sub_3E954();
    v366[0] = v205;
    (*(v294 + 16))(v297, v324 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v293);
    sub_C2E94();
    v40 = v316;
    (*(v294 + 8))(v297, v293);
    sub_1FA80(v207);

    v41 = sub_BF704();
    v234(v40, v41, v308);
    sub_19F8C(v307, v305);
    v209 = (*(v300 + 80) + 16) & ~*(v300 + 80);
    v212 = 7;
    v213 = swift_allocObject();
    sub_1D624(v305, (v213 + v209));
    v220 = sub_C3224();
    v221 = sub_C3874();
    v210 = 17;
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v211 = 32;
    v42 = swift_allocObject();
    v43 = v213;
    v214 = v42;
    *(v42 + 16) = v257;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v214;
    v218 = v44;
    *(v44 + 16) = v258;
    *(v44 + 24) = v45;
    v217 = sub_C3C64();
    v219 = v46;

    v47 = v215;
    v48 = v219;
    *v219 = v259;
    v48[1] = v47;

    v49 = v216;
    v50 = v219;
    v219[2] = v260;
    v50[3] = v49;

    v51 = v218;
    v52 = v219;
    v219[4] = v261;
    v52[5] = v51;
    sub_4E48();

    if (os_log_type_enabled(v220, v221))
    {
      v53 = v198;
      v191 = sub_C3954();
      v190 = sub_21E8(&qword_EE828, &qword_C5100);
      v192 = sub_5DD4(0, v190, v190);
      v193 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v194 = &v346;
      v346 = v191;
      v195 = &v345;
      v345 = v192;
      v196 = &v344;
      v344 = v193;
      sub_5E28(2, &v346);
      sub_5E28(1, v194);
      v342 = v259;
      v343 = v215;
      sub_5E3C(&v342, v194, v195, v196);
      v197 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v342 = v260;
        v343 = v216;
        sub_5E3C(&v342, &v346, &v345, &v344);
        v188 = 0;
        v342 = v261;
        v343 = v218;
        sub_5E3C(&v342, &v346, &v345, &v344);
        v187 = 0;
        _os_log_impl(&dword_0, v220, v221, "result: %s", v191, 0xCu);
        sub_5E88(v192, 0, v190);
        sub_5E88(v193, 1, &type metadata for Any + 8);
        sub_C3934();

        v189 = v187;
      }
    }

    else
    {
      v54 = v198;

      v189 = v54;
    }

    v186 = v189;
    _objc_release(v220);
    v199(v316, v308);
    sub_19F8C(v307, v303);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v123 = *v303;
      v363 = v123;
      swift_errorRetain();
      sub_3E7A4();
      v122 = swift_allocError();
      *v92 = v123;
      *(v92 + 8) = 0;
      *(v92 + 16) = 2;
      v120 = sub_2F52C();
      v121 = v93;
      sub_3AFDC(v122, v120, v93, v325, v321, v251);

      sub_1A068(v307);
      return (*(v328 + 8))(v331, v327);
    }

    else
    {
      v55 = v186;
      v56 = v292;
      (*(v289 + 32))(v292, v303, v288);
      v381 = v56;
      v182 = sub_C2114();
      v362 = sub_C2124();
      v183 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
      v57 = sub_3EC3C();
      result = sub_28D90(v262, 0, v183, &type metadata for String, &type metadata for Never, v57, &protocol witness table for Never, v225);
      v184 = v55;
      v185 = result;
      if (v55)
      {
        __break(1u);
      }

      else
      {
        v169 = v185;
        sub_1D7C8(&v362);
        sub_3C100(v182, v169, v287);
        v59 = v314;

        v60 = sub_BF704();
        v234(v59, v60, v308);

        v171 = 32;
        v172 = 7;
        v61 = swift_allocObject();
        v62 = v321;
        v173 = v61;
        *(v61 + 16) = v325;
        *(v61 + 24) = v62;
        v180 = sub_C3224();
        v181 = sub_C3874();
        v170 = 17;
        v175 = swift_allocObject();
        *(v175 + 16) = 32;
        v176 = swift_allocObject();
        *(v176 + 16) = 8;
        v63 = swift_allocObject();
        v64 = v173;
        v174 = v63;
        *(v63 + 16) = v263;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v66 = v174;
        v178 = v65;
        *(v65 + 16) = v264;
        *(v65 + 24) = v66;
        v177 = sub_C3C64();
        v179 = v67;

        v68 = v175;
        v69 = v179;
        *v179 = v265;
        v69[1] = v68;

        v70 = v176;
        v71 = v179;
        v179[2] = v266;
        v71[3] = v70;

        v72 = v178;
        v73 = v179;
        v179[4] = v267;
        v73[5] = v72;
        sub_4E48();

        if (os_log_type_enabled(v180, v181))
        {
          v74 = v184;
          v162 = sub_C3954();
          v161 = sub_21E8(&qword_EE828, &qword_C5100);
          v163 = sub_5DD4(0, v161, v161);
          v164 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v165 = &v351;
          v351 = v162;
          v166 = &v350;
          v350 = v163;
          v167 = &v349;
          v349 = v164;
          sub_5E28(2, &v351);
          sub_5E28(1, v165);
          v347 = v265;
          v348 = v175;
          sub_5E3C(&v347, v165, v166, v167);
          v168 = v74;
          if (v74)
          {

            __break(1u);
          }

          else
          {
            v347 = v266;
            v348 = v176;
            sub_5E3C(&v347, &v351, &v350, &v349);
            v159 = 0;
            v347 = v267;
            v348 = v178;
            sub_5E3C(&v347, &v351, &v350, &v349);
            v158 = 0;
            _os_log_impl(&dword_0, v180, v181, "Sending SiriKitEvent .completed for %s", v162, 0xCu);
            sub_5E88(v163, 0, v161);
            sub_5E88(v164, 1, &type metadata for Any + 8);
            sub_C3934();

            v160 = v158;
          }
        }

        else
        {
          v75 = v184;

          v160 = v75;
        }

        v136 = v160;
        _objc_release(v180);
        v199(v314, v308);
        v143 = &v359;
        sub_C1E94();
        v140 = v360;
        v141 = v361;
        v139 = sub_808C(v143, v360);
        v137 = 0;
        sub_C1F14();
        (*(v277 + 104))(v280, enum case for ActivityType.completed(_:), v276);

        v76 = sub_C1EB4();
        (*(*(v76 - 8) + 56))(v275, 1);
        sub_1D2DC(v326, v358);
        v144 = 80;
        v148 = 7;
        v138 = swift_allocObject();
        v145 = 64;
        memcpy((v138 + 16), v326, 0x40uLL);
        v142 = sub_C1EE4();
        sub_C1EA4();
        v77 = v312;

        sub_2560(v143);
        v78 = sub_BF704();
        v234(v77, v78, v308);
        sub_1D2DC(v326, v357);
        v149 = swift_allocObject();
        memcpy((v149 + 16), v326, v145);
        v156 = sub_C3224();
        v157 = sub_C3874();
        v146 = 17;
        v151 = swift_allocObject();
        *(v151 + 16) = 32;
        v152 = swift_allocObject();
        *(v152 + 16) = 8;
        v147 = 32;
        v79 = swift_allocObject();
        v80 = v149;
        v150 = v79;
        *(v79 + 16) = v269;
        *(v79 + 24) = v80;
        v81 = swift_allocObject();
        v82 = v150;
        v154 = v81;
        *(v81 + 16) = v270;
        *(v81 + 24) = v82;
        v153 = sub_C3C64();
        v155 = v83;

        v84 = v151;
        v85 = v155;
        *v155 = v271;
        v85[1] = v84;

        v86 = v152;
        v87 = v155;
        v155[2] = v272;
        v87[3] = v86;

        v88 = v154;
        v89 = v155;
        v155[4] = v273;
        v89[5] = v88;
        sub_4E48();

        if (os_log_type_enabled(v156, v157))
        {
          v90 = v136;
          v129 = sub_C3954();
          v128 = sub_21E8(&qword_EE828, &qword_C5100);
          v130 = sub_5DD4(0, v128, v128);
          v131 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v132 = &v356;
          v356 = v129;
          v133 = &v355;
          v355 = v130;
          v134 = &v354;
          v354 = v131;
          sub_5E28(2, &v356);
          sub_5E28(1, v132);
          v352 = v271;
          v353 = v151;
          sub_5E3C(&v352, v132, v133, v134);
          v135 = v90;
          if (v90)
          {

            __break(1u);
          }

          else
          {
            v352 = v272;
            v353 = v152;
            sub_5E3C(&v352, &v356, &v355, &v354);
            v127 = 0;
            v352 = v273;
            v353 = v154;
            sub_5E3C(&v352, &v356, &v355, &v354);
            _os_log_impl(&dword_0, v156, v157, "Successful completion of CAT: %s", v129, 0xCu);
            sub_5E88(v130, 0, v128);
            sub_5E88(v131, 1, &type metadata for Any + 8);
            sub_C3934();
          }
        }

        else
        {
        }

        _objc_release(v156);
        v199(v312, v308);
        v126 = sub_2F52C();
        v124 = v91;
        v125 = sub_C2124();
        (*(v282 + 16))(v285, v287, v281);
        sub_C20E4();
        swift_storeEnumTagMultiPayload();
        (*(v282 + 8))(v287, v281);
        (*(v289 + 8))(v292, v288);
        sub_1A068(v307);
        return (*(v328 + 8))(v331, v327);
      }
    }
  }

  return result;
}

uint64_t sub_31CE8(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_19F8C(v1, (&v3 - v4));
  return sub_C34F4();
}

uint64_t sub_31D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C2144();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_31DD4(void *a1)
{

  sub_2F52C();
  sub_C1EC4();
}

uint64_t sub_31E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 512) = v7;
  *(v8 + 721) = a7 & 1;
  *(v8 + 504) = a6;
  *(v8 + 496) = a5;
  *(v8 + 488) = a4;
  *(v8 + 480) = a3;
  *(v8 + 472) = a2;
  *(v8 + 464) = a1;
  *(v8 + 408) = v8;
  *(v8 + 416) = 0;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 720) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  sub_21E8(&qword_EEF90, &qword_C5DF0);
  *(v8 + 520) = swift_task_alloc();
  v9 = sub_C1FE4();
  *(v8 + 528) = v9;
  *(v8 + 536) = *(v9 - 8);
  *(v8 + 544) = swift_task_alloc();
  v10 = sub_C2F14();
  *(v8 + 552) = v10;
  *(v8 + 560) = *(v10 - 8);
  *(v8 + 568) = swift_task_alloc();
  v11 = sub_C3234();
  *(v8 + 576) = v11;
  *(v8 + 584) = *(v11 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v12 = sub_C1AC4();
  *(v8 + 624) = v12;
  *(v8 + 632) = *(v12 - 8);
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 416) = a1;
  *(v8 + 392) = a2;
  *(v8 + 400) = a3;
  *(v8 + 424) = a4;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 720) = a7 & 1;
  *(v8 + 448) = v7;

  return _swift_task_switch(sub_3220C, 0);
}

uint64_t sub_3220C()
{
  v51 = v0;
  v1 = v0[64];
  v45 = v0[62];
  v0[51] = v0;
  v44 = *(v1 + 16);
  _objc_retain(v44);
  sub_A93A4(v45, v44);
  v2 = v43[77];
  v33 = v43[72];
  __src = v43[58];
  v32 = v43[73];
  _objc_release(v44);
  v3 = sub_BF704();
  v4 = *(v32 + 16);
  v43[81] = v4;
  v43[82] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v2, v3, v33);
  sub_1D2DC(__src, v43 + 2);
  v35 = swift_allocObject();
  memcpy((v35 + 16), __src, 0x40uLL);
  oslog = sub_C3224();
  v42 = sub_C3874();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_3E874;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_7BBC;
  *(v39 + 24) = v36;
  v43[83] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v40 = v5;

  *v40 = sub_7B48;
  v40[1] = v37;

  v40[2] = sub_7B48;
  v40[3] = v38;

  v40[4] = sub_7C08;
  v40[5] = v39;
  sub_4E48();

  if (os_log_type_enabled(oslog, v42))
  {
    buf = sub_C3954();
    v28 = sub_21E8(&qword_EE828, &qword_C5100);
    v30 = sub_5DD4(0, v28, v28);
    v31 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v46 = buf;
    v47 = v30;
    v48 = v31;
    sub_5E28(2, &v46);
    sub_5E28(1, &v46);
    v49 = sub_7B48;
    v50 = v37;
    sub_5E3C(&v49, &v46, &v47, &v48);
    v49 = sub_7B48;
    v50 = v38;
    sub_5E3C(&v49, &v46, &v47, &v48);
    v49 = sub_7C08;
    v50 = v39;
    sub_5E3C(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_0, oslog, v42, "Calling CAT: %s", buf, 0xCu);
    sub_5E88(v30, 0, v28);
    sub_5E88(v31, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v15 = v43[77];
  v16 = v43[72];
  v25 = v43[71];
  v24 = v43[69];
  v22 = v43[64];
  v17 = v43[63];
  v19 = v43[62];
  v18 = v43[58];
  v14 = v43[73];
  v23 = v43[70];
  _objc_release(oslog);
  v6 = *(v14 + 8);
  v43[84] = v6;
  v43[85] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v15, v16);
  sub_C2EF4();
  v26 = sub_2F52C();
  v27 = v7;
  v43[86] = v7;
  v20 = type metadata accessor for ParameterService(0);

  sub_1D2DC(v18, v43 + 10);
  _objc_retain(v19);
  sub_24F4(v17, (v43 + 39));
  v21 = sub_749F0(v22, v18, v19, v43 + 39);
  v43[37] = v20;
  v43[38] = sub_3E954();
  v43[34] = v21;
  (*(v23 + 16))(v25, v22 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v24);
  v8 = swift_task_alloc();
  v43[87] = v8;
  *v8 = v43[51];
  v8[1] = sub_32C38;
  v9 = v43[80];
  v10 = v43[71];
  v11 = v43[62];
  v12 = v43[61];

  return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v9, v26, v27, v12, v11, v43 + 34, v10);
}

uint64_t sub_32C38(uint64_t a1)
{
  v7 = *v2;
  v5 = (*v2 + 16);
  v6 = (*v2 + 272);
  v7[51] = *v2;
  v7[88] = a1;
  v7[89] = v1;

  if (v1)
  {
    v3 = sub_34410;
  }

  else
  {
    (*(v5[68] + 8))(v5[69], v5[67]);
    sub_1FA80(v6);

    v3 = sub_32DF4;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_32DF4(uint64_t a1)
{
  v100 = v1;
  v76 = v1[88];
  v75 = v1[81];
  v2 = v1[76];
  v74 = v1[72];
  v1[51] = v1;
  v1[57] = v76;
  v3 = sub_BF704();
  v75(v2, v3, v74);
  _objc_retain(v76);
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  v83 = sub_C3224();
  v84 = sub_C3874();
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_3F0EC;
  *(v78 + 24) = v77;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_7BBC;
  *(v81 + 24) = v78;
  sub_C3C64();
  v82 = v4;

  *v82 = sub_7B48;
  v82[1] = v79;

  v82[2] = sub_7B48;
  v82[3] = v80;

  v82[4] = sub_7C08;
  v82[5] = v81;
  sub_4E48();

  if (os_log_type_enabled(v83, v84))
  {
    v5 = *(v73 + 712);
    buf = sub_C3954();
    v69 = sub_21E8(&qword_EE828, &qword_C5100);
    v71 = sub_5DD4(0, v69, v69);
    v72 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v95 = buf;
    v96 = v71;
    v97 = v72;
    sub_5E28(2, &v95);
    sub_5E28(1, &v95);
    v98 = sub_7B48;
    v99 = v79;
    sub_5E3C(&v98, &v95, &v96, &v97);
    if (v5)
    {
    }

    v98 = sub_7B48;
    v99 = v80;
    sub_5E3C(&v98, &v95, &v96, &v97);
    v98 = sub_7C08;
    v99 = v81;
    sub_5E3C(&v98, &v95, &v96, &v97);
    _os_log_impl(&dword_0, v83, v84, "result: %s", buf, 0xCu);
    sub_5E88(v71, 0, v69);
    sub_5E88(v72, 1, &type metadata for Any + 8);
    sub_C3934();

    v68 = 0;
  }

  else
  {

    v68 = *(v73 + 712);
  }

  v66 = *(v73 + 672);
  v64 = *(v73 + 608);
  v65 = *(v73 + 576);
  v67 = *(v73 + 721);
  _objc_release(v83);
  v66(v64, v65);
  if (v67)
  {
    v46 = v68;
  }

  else
  {
    v53 = *(v73 + 648);
    v7 = *(v73 + 600);
    v52 = *(v73 + 576);
    v55 = *(v73 + 480);
    v54 = *(v73 + 472);
    v8 = sub_BF704();
    v53(v7, v8, v52);

    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v55;
    oslog = sub_C3224();
    v63 = sub_C3874();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1D834;
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_7BBC;
    *(v60 + 24) = v57;
    sub_C3C64();
    v61 = v9;

    *v61 = sub_7B48;
    v61[1] = v58;

    v61[2] = sub_7B48;
    v61[3] = v59;

    v61[4] = sub_7C08;
    v61[5] = v60;
    sub_4E48();

    if (os_log_type_enabled(oslog, v63))
    {
      v49 = sub_C3954();
      v48 = sub_21E8(&qword_EE828, &qword_C5100);
      v50 = sub_5DD4(0, v48, v48);
      v51 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v90 = v49;
      v91 = v50;
      v92 = v51;
      sub_5E28(2, &v90);
      sub_5E28(1, &v90);
      v93 = sub_7B48;
      v94 = v58;
      sub_5E3C(&v93, &v90, &v91, &v92);
      if (v68)
      {
      }

      v93 = sub_7B48;
      v94 = v59;
      sub_5E3C(&v93, &v90, &v91, &v92);
      v93 = sub_7C08;
      v94 = v60;
      sub_5E3C(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_0, oslog, v63, "Sending SiriKitEvent .completed for %s", v49, 0xCu);
      sub_5E88(v50, 0, v48);
      sub_5E88(v51, 1, &type metadata for Any + 8);
      sub_C3934();

      v47 = 0;
    }

    else
    {

      v47 = v68;
    }

    v39 = *(v73 + 672);
    v37 = *(v73 + 600);
    v38 = *(v73 + 576);
    v43 = *(v73 + 544);
    v41 = *(v73 + 528);
    v44 = *(v73 + 520);
    __src = *(v73 + 464);
    v40 = *(v73 + 536);
    _objc_release(oslog);
    v39(v37, v38);
    sub_C1E94();
    sub_808C((v73 + 352), *(v73 + 376));
    sub_C1F14();
    (*(v40 + 104))(v43, enum case for ActivityType.completed(_:), v41);

    v10 = sub_C1EB4();
    (*(*(v10 - 8) + 56))(v44, 1);
    sub_1D2DC(__src, (v73 + 208));
    v45 = swift_allocObject();
    memcpy((v45 + 16), __src, 0x40uLL);
    sub_C1EE4();
    sub_C1EA4();

    sub_2560((v73 + 352));
    v46 = v47;
  }

  v27 = *(v73 + 648);
  v11 = *(v73 + 592);
  v26 = *(v73 + 576);
  v28 = *(v73 + 464);
  v12 = sub_BF704();
  v27(v11, v12, v26);
  sub_1D2DC(v28, (v73 + 144));
  v29 = swift_allocObject();
  memcpy((v29 + 16), v28, 0x40uLL);
  log = sub_C3224();
  v36 = sub_C3874();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_3EE94;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_7BBC;
  *(v33 + 24) = v30;
  sub_C3C64();
  v34 = v13;

  *v34 = sub_7B48;
  v34[1] = v31;

  v34[2] = sub_7B48;
  v34[3] = v32;

  v34[4] = sub_7C08;
  v34[5] = v33;
  sub_4E48();

  if (os_log_type_enabled(log, v36))
  {
    v23 = sub_C3954();
    v22 = sub_21E8(&qword_EE828, &qword_C5100);
    v24 = sub_5DD4(0, v22, v22);
    v25 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v85 = v23;
    v86 = v24;
    v87 = v25;
    sub_5E28(2, &v85);
    sub_5E28(1, &v85);
    v88 = sub_7B48;
    v89 = v31;
    sub_5E3C(&v88, &v85, &v86, &v87);
    if (v46)
    {
    }

    v88 = sub_7B48;
    v89 = v32;
    sub_5E3C(&v88, &v85, &v86, &v87);
    v88 = sub_7C08;
    v89 = v33;
    sub_5E3C(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_0, log, v36, "Successful completion of CAT: %s", v23, 0xCu);
    sub_5E88(v24, 0, v22);
    sub_5E88(v25, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v17 = *(v73 + 672);
  v20 = *(v73 + 640);
  v19 = *(v73 + 624);
  v21 = *(v73 + 592);
  v16 = *(v73 + 576);
  v18 = *(v73 + 632);
  _objc_release(log);
  v17(v21, v16);
  (*(v18 + 8))(v20, v19);

  v14 = *(*(v73 + 408) + 8);
  v15 = *(v73 + 704);

  return v14(v15);
}

uint64_t sub_34410()
{
  v7 = v0[80];
  v6 = v0[79];
  v8 = v0[78];
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v0[51] = v0;
  (*(v2 + 8))(v1, v3);
  sub_1FA80(v0 + 34);

  (*(v6 + 8))(v7, v8);

  v4 = *(v0[51] + 8);

  return v4();
}

uint64_t sub_345DC(void *a1)
{
  _objc_retain(a1);
  sub_418E8();
  sub_4194C();
  return sub_C3504();
}

double sub_34638@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v64 = a3;
  v100 = a1;
  v108 = a2;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v119 = 0;
  v111 = 0;
  v95 = 0;
  v65 = sub_C2164();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v69 = v28 - v68;
  v70 = sub_C2024();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v74 = v28 - v73;
  v75 = (*(*(sub_21E8(&qword_EF5B0, &qword_C5E08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v76 = v28 - v75;
  v77 = sub_C2134();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v81 = v28 - v80;
  v119 = v28 - v80;
  v82 = type metadata accessor for DialogServiceButton(v3);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v84 = v28 - v83;
  v118 = v28 - v83;
  v85 = sub_C2F14();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v89 = v28 - v88;
  v90 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = (v28 - v91);
  v93 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v94 = (v28 - v93);
  v117 = v28 - v93;
  v96 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v97 = v28 - v96;
  v98 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v106 = v28 - v98;
  v101 = sub_C1AC4();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v105 = v28 - v104;
  v116 = v28 - v104;
  v115 = v8;
  v114 = v9;
  v113 = v10;
  v107 = *(v10 + 16);
  _objc_retain(v107);
  sub_A93A4(v108, v107);
  v109 = 0;
  _objc_release(v107);
  (*(v102 + 56))(v106, 0, 1, v101);
  if ((*(v102 + 48))(v106, 1, v101) == 1)
  {
    sub_1DAA4(v106);
    return sub_2F6D4(v64);
  }

  else
  {
    (*(v102 + 32))(v105, v106, v101);
    v61 = sub_2F52C();
    v62 = v11;
    v63 = sub_3AA78(v105, v61, v11);

    if (v63)
    {
      v56 = 0;
      v55 = sub_C2EA4();
      v57 = sub_2F52C();
      v60 = v14;
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v59 = sub_C3374();
      v58 = v112;
      memset(v112, 0, sizeof(v112));
      (*(v86 + 16))(v89, v99 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v85);
      sub_C2E94();
      (*(v86 + 8))(v89, v85);
      sub_1FA80(v58);

      sub_2F6D4(v84);
      sub_19F8C(v94, v92);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v84;
        v28[2] = *v92;
        *v84 = 0;
        *(v26 + 1) = 0;

        (*(v102 + 56))(v97, 1, 1, v101);
        sub_3F4E0(v97, &v84[*(v82 + 20)]);
        v27 = &v84[*(v82 + 24)];
        *v27 = 0;
        *(v27 + 1) = 0;
      }

      else
      {
        v15 = v81;
        (*(v78 + 32))(v81, v92, v77);
        v119 = v15;
        v53 = sub_C2124();
        v111 = v53;
        v110 = v53;
        v54 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
        sub_3EC3C();
        sub_C37F4();
        if ((*(v66 + 48))(v76, 1, v65) == 1)
        {
          sub_3F89C(v76);
          v51 = 0;
          v52 = 0;
        }

        else
        {
          sub_C2154();
          (*(v66 + 8))(v76, v65);
          v49 = sub_C2014();
          v50 = v16;
          (*(v71 + 8))(v74, v70);
          v51 = v49;
          v52 = v50;
        }

        v17 = v84;
        v18 = v52;
        *v84 = v51;
        *(v17 + 1) = v18;

        (*(v102 + 56))(v97, 1, 1, v101);
        sub_3F4E0(v97, &v84[*(v82 + 20)]);
        v19 = &v84[*(v82 + 24)];
        *v19 = 0;
        *(v19 + 1) = 0;

        v47 = sub_C3714();
        v48 = 1;

        if (v48 < v47)
        {
          sub_C3744();
          v42 = sub_C2144();
          v44 = v20;
          (*(v66 + 8))(v69, v65);
          v120._countAndFlagsBits = sub_C3564("#link", 5uLL, 1);
          object = v120._object;
          v45 = sub_C3624(v120);

          v46 = v45;
        }

        else
        {
          v46 = 0;
        }

        v41 = v46;

        if (v41)
        {
          sub_C3744();
          sub_C2154();
          (*(v66 + 8))(v69, v65);
          v39 = sub_C2014();
          v40 = v21;
          (*(v71 + 8))(v74, v70);
          sub_C1AB4();

          sub_3F4E0(v97, &v84[*(v82 + 20)]);
        }

        else
        {
          v37 = sub_C3714();
          v38 = 1;

          if (v38 < v37)
          {
            sub_C3744();
            v32 = sub_C2144();
            v34 = v22;
            (*(v66 + 8))(v69, v65);
            v121._countAndFlagsBits = sub_C3564("#intentName", 0xBuLL, 1);
            v33 = v121._object;
            v35 = sub_C3624(v121);

            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          v31 = v36;

          if (v31)
          {
            sub_C3744();
            sub_C2154();
            (*(v66 + 8))(v69, v65);
            v29 = sub_C2014();
            v30 = v23;
            (*(v71 + 8))(v74, v70);
            v24 = v30;
            v25 = &v84[*(v82 + 24)];
            *v25 = v29;
            *(v25 + 1) = v24;
          }
        }

        (*(v78 + 8))(v81, v77);
      }

      sub_3F708(v84, v64);
      sub_1A068(v94);
      (*(v102 + 8))(v105, v101);
    }

    else
    {
      v12 = sub_2F6D4(v64);
      (*(v102 + 8))(v105, v101, v12);
    }
  }

  return result;
}

uint64_t sub_35888(uint64_t a1, uint64_t a2, void *a3)
{
  v202 = a1;
  v201 = a2;
  v200 = a3;
  v153 = sub_3FB6C;
  v154 = sub_1D834;
  v155 = sub_7BBC;
  v156 = sub_3FC20;
  v157 = sub_7BBC;
  v158 = sub_7B48;
  v159 = sub_7B48;
  v160 = sub_7C08;
  v161 = sub_7B48;
  v162 = sub_7B48;
  v163 = sub_7C08;
  v244 = 0;
  v242 = 0;
  v241 = 0;
  v239 = 0;
  v240 = 0;
  v238 = 0;
  v237 = 0;
  v234 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  v164 = 0;
  v243 = 0;
  v224[0] = 0;
  v224[1] = 0;
  v197 = 0;
  v165 = sub_C2024();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v169 = v61 - v168;
  v170 = sub_C2164();
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v170);
  v174 = v61 - v173;
  v244 = v61 - v173;
  v175 = (*(*(sub_21E8(&qword_EF5B0, &qword_C5E08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v176 = v61 - v175;
  v177 = sub_C2134();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v181 = v61 - v180;
  v243 = v61 - v180;
  v182 = sub_C2F14();
  v183 = *(v182 - 8);
  v184 = v182 - 8;
  v185 = (*(v183 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v182);
  v186 = v61 - v185;
  v187 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v188 = (*(*(v187 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v189 = (v61 - v188);
  v190 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v191 = (v61 - v190);
  v242 = v61 - v190;
  v192 = sub_C3234();
  v193 = *(v192 - 8);
  v194 = v192 - 8;
  v195 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v192);
  v196 = v61 - v195;
  v198 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v199 = v61 - v198;
  v203 = sub_C1AC4();
  v205 = *(v203 - 8);
  v204 = v203 - 8;
  v206 = v205;
  v207 = *(v205 + 64);
  v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v202);
  v209 = v61 - v208;
  v210 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v211 = v61 - v210;
  v241 = v61 - v210;
  v239 = v8;
  v240 = v9;
  v238 = v10;
  v237 = v3;
  v235 = v8;
  v236 = v9;
  v215 = sub_C3564("#", 1uLL, 1);
  v216 = v11;
  v214 = sub_B2E8();
  v213 = &type metadata for String;
  v212 = sub_37054();
  sub_37068();
  v217 = sub_C39F4();

  v234 = v217;
  if (sub_C3714() >= 2)
  {
    v149 = &type metadata for Substring;
    sub_C3744();
    v141 = v233;
    v233[0] = v233[4];
    v233[1] = v233[5];
    v233[2] = v233[6];
    v233[3] = v233[7];
    v142 = 1;
    v12 = sub_C3564("#", 1uLL, 1);
    v140 = v232;
    v232[0] = v12;
    v232[1] = v13;
    v143 = sub_3F944();
    sub_3F9BC();
    sub_C3854();
    sub_8224(v140);
    sub_3FA34(v141);
    v145 = v231;
    v231[0] = v233[8];
    v231[1] = v233[9];
    v231[2] = v233[10];
    v231[3] = v233[11];
    sub_C3744();
    v144 = v230;
    v230[0] = v230[4];
    v230[1] = v230[5];
    v230[2] = v230[6];
    v230[3] = v230[7];
    sub_C3854();
    sub_3FA34(v144);
    sub_3FA34(v145);
    v146 = v233[15];
    v147 = sub_C3634();
    v148 = v14;

    v228 = v147;
    v229 = v148;
    if (sub_C3714() <= 2)
    {
      v138 = sub_C3564("", 0, 1);
      v139 = v16;
    }

    else
    {
      sub_C3744();
      v135 = v218;
      v136 = sub_C3634();
      v137 = v15;

      v138 = v136;
      v139 = v137;
    }

    v17 = v164;
    v130 = v139;
    v131 = v138;
    v226 = v138;
    v227 = v139;
    v132 = *(v152 + 16);
    _objc_retain(v132);
    sub_A93A4(v200, v132);
    v133 = v17;
    v134 = v17;
    if (v17)
    {
      v61[1] = v134;
      v62 = 0;
      _objc_release(v132);

      (*(v205 + 56))(v199, 1, 1, v203);
      v129 = v62;
    }

    else
    {
      _objc_release(v132);
      (*(v205 + 56))(v199, 0, 1, v203);
      v129 = v133;
    }

    v128 = v129;
    if ((*(v205 + 48))(v199, 1, v203) == 1)
    {
      sub_1DAA4(v199);
      v63 = sub_C3564("", 0, 1);
      v64 = v59;

      v150 = v63;
      v151 = v64;
    }

    else
    {
      v18 = v196;
      v103 = v206;
      v106 = *(v205 + 32);
      v105 = v205 + 32;
      v106(v211, v199, v203);
      v19 = sub_BF704();
      (*(v193 + 16))(v18, v19, v192);

      v113 = 32;
      v114 = 7;
      v20 = swift_allocObject();
      v21 = v148;
      v22 = v205;
      v23 = v211;
      v24 = v203;
      v25 = v20;
      v26 = v209;
      v108 = v25;
      *(v25 + 16) = v147;
      *(v25 + 24) = v21;
      (*(v22 + 16))(v26, v23, v24);
      v104 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v107 = swift_allocObject();
      v106((v107 + v104), v209, v203);

      v27 = swift_allocObject();
      v28 = v107;
      v115 = v27;
      *(v27 + 16) = v153;
      *(v27 + 24) = v28;

      v126 = sub_C3224();
      v127 = sub_C3874();
      v111 = 17;
      v117 = swift_allocObject();
      v110 = 32;
      *(v117 + 16) = 32;
      v118 = swift_allocObject();
      v112 = 8;
      *(v118 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v108;
      v109 = v29;
      *(v29 + 16) = v154;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v109;
      v119 = v31;
      *(v31 + 16) = v155;
      *(v31 + 24) = v32;
      v120 = swift_allocObject();
      *(v120 + 16) = v110;
      v121 = swift_allocObject();
      *(v121 + 16) = v112;
      v33 = swift_allocObject();
      v34 = v115;
      v116 = v33;
      *(v33 + 16) = v156;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v116;
      v123 = v35;
      *(v35 + 16) = v157;
      *(v35 + 24) = v36;
      v125 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v122 = sub_C3C64();
      v124 = v37;

      v38 = v117;
      v39 = v124;
      *v124 = v158;
      v39[1] = v38;

      v40 = v118;
      v41 = v124;
      v124[2] = v159;
      v41[3] = v40;

      v42 = v119;
      v43 = v124;
      v124[4] = v160;
      v43[5] = v42;

      v44 = v120;
      v45 = v124;
      v124[6] = v161;
      v45[7] = v44;

      v46 = v121;
      v47 = v124;
      v124[8] = v162;
      v47[9] = v46;

      v48 = v123;
      v49 = v124;
      v124[10] = v163;
      v49[11] = v48;
      sub_4E48();

      if (os_log_type_enabled(v126, v127))
      {
        v50 = v128;
        v95 = sub_C3954();
        v94 = sub_21E8(&qword_EE828, &qword_C5100);
        v96 = sub_5DD4(0, v94, v94);
        v97 = sub_5DD4(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v99 = v223;
        v223[0] = v95;
        v100 = &v222;
        v222 = v96;
        v101 = &v221;
        v221 = v97;
        v98 = 2;
        sub_5E28(2, v223);
        sub_5E28(v98, v99);
        v219 = v158;
        v220 = v117;
        sub_5E3C(&v219, v99, v100, v101);
        v102 = v50;
        if (v50)
        {

          __break(1u);
        }

        else
        {
          v219 = v159;
          v220 = v118;
          sub_5E3C(&v219, v223, &v222, &v221);
          v92 = 0;
          v219 = v160;
          v220 = v119;
          sub_5E3C(&v219, v223, &v222, &v221);
          v91 = 0;
          v219 = v161;
          v220 = v120;
          sub_5E3C(&v219, v223, &v222, &v221);
          v90 = 0;
          v219 = v162;
          v220 = v121;
          sub_5E3C(&v219, v223, &v222, &v221);
          v89 = 0;
          v219 = v163;
          v220 = v123;
          sub_5E3C(&v219, v223, &v222, &v221);
          v88 = 0;
          _os_log_impl(&dword_0, v126, v127, "Loading label for CAT ID %s from template directory %s", v95, 0x16u);
          sub_5E88(v96, 0, v94);
          sub_5E88(v97, 2, &type metadata for Any + 8);
          sub_C3934();

          v93 = v88;
        }
      }

      else
      {
        v51 = v128;

        v93 = v51;
      }

      v84 = v93;
      _objc_release(v126);
      (*(v193 + 8))(v196, v192);
      v85 = 0;
      sub_C2EA4();
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v87 = sub_C3374();
      v86 = v225;
      memset(v225, 0, sizeof(v225));
      (*(v183 + 16))(v186, v152 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v182);
      sub_C2E94();
      (*(v183 + 8))(v186, v182);
      sub_1FA80(v86);

      sub_19F8C(v191, v189);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = *v189;
        v66 = sub_C3564("", 0, 1);
        v67 = v58;

        sub_1A068(v191);
        (*(v205 + 8))(v211, v203);

        v150 = v66;
        v151 = v67;
      }

      else
      {
        v52 = v181;
        (*(v178 + 32))(v181, v189, v177);
        v243 = v52;
        v223[1] = sub_C2124();
        v82 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
        sub_3EC3C();
        sub_C3824();
        for (i = v84; ; i = v81)
        {
          v81 = i;
          sub_21E8(&qword_EF5D0, &qword_C5E18);
          sub_C3B44();
          if ((*(v171 + 48))(v176, 1, v170) == 1)
          {
            break;
          }

          (*(v171 + 32))(v174, v176, v170);
          v80 = sub_C35B4();

          if (v80)
          {
            v79 = 1;
          }

          else
          {
            v75 = sub_C2144();
            v77 = v53;
            sub_C3564("#", 1uLL, 1);
            v73 = v54;
            v74 = sub_C3554();
            v76 = v55;

            v245._countAndFlagsBits = v74;
            v245._object = v76;
            v78 = sub_C3624(v245);

            v79 = v78;
          }

          v72 = v79;

          if (v72)
          {
            sub_C2154();
            v70 = sub_C2014();
            v71 = v56;
            (*(v166 + 8))(v169, v165);
            (*(v171 + 8))(v174, v170);
            sub_1D7C8(v224);
            (*(v178 + 8))(v181, v177);
            sub_1A068(v191);
            (*(v205 + 8))(v211, v203);

            v150 = v70;
            v151 = v71;
            return v150;
          }

          (*(v171 + 8))(v174, v170);
        }

        sub_1D7C8(v224);
        v68 = sub_C3564("", 0, 1);
        v69 = v57;
        (*(v178 + 8))(v181, v177);
        sub_1A068(v191);
        (*(v205 + 8))(v211, v203);

        v150 = v68;
        v151 = v69;
      }
    }
  }

  else
  {

    v150 = v202;
    v151 = v201;
  }

  return v150;
}

uint64_t sub_370E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[33] = v8;
  v9[32] = a8;
  v9[31] = a7;
  v9[30] = a6;
  v9[29] = a5;
  v9[28] = a4;
  v9[27] = a3;
  v9[26] = a2;
  v9[25] = a1;
  v9[15] = v9;
  v9[16] = 0;
  v9[17] = 0;
  v9[18] = 0;
  v9[19] = 0;
  v9[20] = 0;
  v9[21] = 0;
  v9[22] = 0;
  v9[23] = 0;
  v9[24] = 0;
  v10 = sub_C2304();
  v9[34] = v10;
  v9[35] = *(v10 - 8);
  v9[36] = swift_task_alloc();
  v11 = sub_C3234();
  v9[37] = v11;
  v9[38] = *(v11 - 8);
  v9[39] = swift_task_alloc();
  v9[16] = a2;
  v9[17] = a3;
  v9[18] = a4;
  v9[19] = a5;
  v9[20] = a6;
  v9[21] = a7;
  v9[22] = a8;
  v9[23] = v8;

  return _swift_task_switch(sub_37328, 0);
}

uint64_t sub_37328(uint64_t a1)
{
  v36 = v1;
  v2 = v1[39];
  v20 = v1[38];
  v21 = v1[37];
  __src = v1[26];
  v1[15] = v1;
  v3 = sub_BF704();
  (*(v20 + 16))(v2, v3, v21);
  sub_1D2DC(__src, v1 + 2);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x40uLL);
  v29 = sub_C3224();
  v30 = sub_C3874();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3EE94;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_7BBC;
  *(v27 + 24) = v24;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v28 = v4;

  *v28 = sub_7B48;
  v28[1] = v25;

  v28[2] = sub_7B48;
  v28[3] = v26;

  v28[4] = sub_7C08;
  v28[5] = v27;
  sub_4E48();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_C3954();
    v15 = sub_21E8(&qword_EE828, &qword_C5100);
    v17 = sub_5DD4(0, v15, v15);
    v18 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v31 = buf;
    v32 = v17;
    v33 = v18;
    sub_5E28(2, &v31);
    sub_5E28(1, &v31);
    v34 = sub_7B48;
    v35 = v25;
    sub_5E3C(&v34, &v31, &v32, &v33);
    v34 = sub_7B48;
    v35 = v26;
    sub_5E3C(&v34, &v31, &v32, &v33);
    v34 = sub_7C08;
    v35 = v27;
    sub_5E3C(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_0, v29, v30, "executeAsPattern %s", buf, 0xCu);
    sub_5E88(v17, 0, v15);
    sub_5E88(v18, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v12 = v19[39];
  v13 = v19[37];
  v11 = v19[38];
  _objc_release(v29);
  (*(v11 + 8))(v12, v13);
  v14 = variable initialization expression of PlayWithMeData.initialized();
  v5 = swift_task_alloc();
  v19[40] = v5;
  *v5 = v19[15];
  v5[1] = sub_37A54;
  v6 = v19[29];
  v7 = v19[28];
  v8 = v19[27];
  v9 = v19[26];

  return sub_381B4(v9, v8, v7, v6, v14 & 1);
}

uint64_t sub_37A54(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 120) = *v2;
  *(v5 + 328) = a1;

  if (v1)
  {

    v3 = *(*(v5 + 120) + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_37C80, 0);
  }
}

uint64_t sub_37C80()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[31];
  v5 = v0[30];
  v0[15] = v0;
  v0[24] = v1;
  sub_3C548(v1, v5, v4, v3, v2);
  sub_C20B4();
  v0[42] = sub_C20A4();
  v11 = async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[0];
  v6 = swift_task_alloc();
  v10[43] = v6;
  *v6 = v10[15];
  v6[1] = sub_37DB8;
  v7 = v10[41];
  v8 = v10[36];

  return (v11)(v10 + 10, v7, v8);
}

uint64_t sub_37DB8()
{
  v4 = *v1;
  *(v4 + 120) = *v1;
  *(v4 + 352) = v0;

  if (v0)
  {
    v2 = sub_3805C;
  }

  else
  {

    v2 = sub_37F34;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_37F34()
{
  v6 = v0[41];
  v7 = v0[36];
  v4 = v0[35];
  v5 = v0[34];
  v1 = v0[25];
  v0[15] = v0;
  sub_24F4((v0 + 10), v1);
  sub_2560(v0 + 10);
  (*(v4 + 8))(v7, v5);
  _objc_release(v6);

  v2 = *(v0[15] + 8);

  return v2();
}

uint64_t sub_3805C()
{
  v6 = v0[41];
  v4 = v0[36];
  v3 = v0[35];
  v5 = v0[34];
  v0[15] = v0;

  (*(v3 + 8))(v4, v5);
  _objc_release(v6);

  v1 = *(v0[15] + 8);

  return v1();
}

uint64_t sub_381B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 616) = v5;
  *(v6 + 849) = a5 & 1;
  *(v6 + 608) = a4;
  *(v6 + 600) = a3;
  *(v6 + 592) = a2;
  *(v6 + 584) = a1;
  *(v6 + 424) = v6;
  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 456) = 0;
  *(v6 + 848) = 0;
  *(v6 + 464) = 0;
  *(v6 + 504) = 0;
  *(v6 + 512) = 0;
  sub_21E8(&qword_EEF90, &qword_C5DF0);
  *(v6 + 624) = swift_task_alloc();
  v7 = sub_C1FE4();
  *(v6 + 632) = v7;
  *(v6 + 640) = *(v7 - 8);
  *(v6 + 648) = swift_task_alloc();
  v8 = sub_C2F14();
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 - 8);
  *(v6 + 672) = swift_task_alloc();
  sub_21E8(&qword_EF008, &unk_C5AD0);
  *(v6 + 680) = swift_task_alloc();
  v9 = sub_C1AC4();
  *(v6 + 688) = v9;
  *(v6 + 696) = *(v9 - 8);
  *(v6 + 704) = swift_task_alloc();
  v10 = sub_C3234();
  *(v6 + 712) = v10;
  *(v6 + 720) = *(v10 - 8);
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 448) = a3;
  *(v6 + 456) = a4;
  *(v6 + 848) = a5 & 1;
  *(v6 + 464) = v5;

  return _swift_task_switch(sub_38580, 0);
}

uint64_t sub_38580(uint64_t a1)
{
  v104 = v1;
  v2 = v1[95];
  v87 = v1[90];
  v88 = v1[89];
  v90 = v1[73];
  v1[53] = v1;
  v3 = sub_BF704();
  v89 = *(v87 + 16);
  v1[96] = v89;
  v1[97] = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89(v2, v3, v88);
  sub_1D2DC(v90, v1 + 2);
  v91 = swift_allocObject();
  memcpy((v91 + 16), v90, 0x40uLL);
  v97 = sub_C3224();
  v98 = sub_C3874();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_3EE94;
  *(v92 + 24) = v91;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_7BBC;
  *(v95 + 24) = v92;
  v1[98] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v96 = v4;

  *v96 = sub_7B48;
  v96[1] = v93;

  v96[2] = sub_7B48;
  v96[3] = v94;

  v96[4] = sub_7C08;
  v96[5] = v95;
  sub_4E48();

  if (os_log_type_enabled(v97, v98))
  {
    buf = sub_C3954();
    v82 = sub_21E8(&qword_EE828, &qword_C5100);
    v84 = sub_5DD4(0, v82, v82);
    v85 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v99 = buf;
    v100 = v84;
    v101 = v85;
    sub_5E28(2, &v99);
    sub_5E28(1, &v99);
    v102 = sub_7B48;
    v103 = v93;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7B48;
    v103 = v94;
    sub_5E3C(&v102, &v99, &v100, &v101);
    v102 = sub_7C08;
    v103 = v95;
    sub_5E3C(&v102, &v99, &v100, &v101);
    _os_log_impl(&dword_0, v97, v98, "Executing %s as pattern", buf, 0xCu);
    sub_5E88(v84, 0, v82);
    sub_5E88(v85, 1, &type metadata for Any + 8);
    sub_C3934();
  }

  else
  {
  }

  v76 = *(v86 + 760);
  v5 = *(v86 + 752);
  v78 = *(v86 + 712);
  v75 = *(v86 + 720);
  _objc_release(v97);
  v77 = *(v75 + 8);
  *(v86 + 792) = v77;
  *(v86 + 800) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77(v76, v78);
  v6 = sub_BF704();
  v89(v5, v6, v78);
  oslog = sub_C3224();
  v79 = sub_C3874();
  v81 = sub_C3C64();
  if (os_log_type_enabled(oslog, v79))
  {
    v71 = sub_C3954();
    v70 = sub_21E8(&qword_EE828, &qword_C5100);
    v72 = sub_5DD4(0, v70, v70);
    v73 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v86 + 552) = v71;
    *(v86 + 560) = v72;
    *(v86 + 568) = v73;
    sub_5E28(0, (v86 + 552));
    sub_5E28(0, (v86 + 552));
    *(v86 + 576) = v81;
    v74 = swift_task_alloc();
    v74[2] = v86 + 552;
    v74[3] = v86 + 560;
    v74[4] = v86 + 568;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, oslog, v79, "Will execute pattern. If execution stops here, ssh into the device and run: ffctl DialogEngine/VisualCAT=on && ffctl SiriUI/SnippetUI=on && reboot", v71, 2u);
    sub_5E88(v72, 0, v70);
    sub_5E88(v73, 0, &type metadata for Any + 8);
    sub_C3934();
  }

  v65 = *(v86 + 752);
  v66 = *(v86 + 712);
  v67 = *(v86 + 616);
  v69 = *(v86 + 600);
  _objc_release(oslog);
  v77(v65, v66);
  v68 = *(v67 + 16);
  _objc_retain(v68);
  sub_A93A4(v69, v68);
  v64 = *(v86 + 688);
  v63 = *(v86 + 680);
  v62 = *(v86 + 696);
  _objc_release(v68);
  (*(v62 + 56))(v63, 0, 1, v64);
  if ((*(*(v86 + 696) + 48))(*(v86 + 680), 1, *(v86 + 688)) == 1)
  {
    v17 = *(v86 + 728);
    v28 = *(v86 + 712);
    sub_1DAA4(*(v86 + 680));
    v18 = sub_BF704();
    v89(v17, v18, v28);
    v30 = sub_C3224();
    v29 = sub_C3884();
    v31 = sub_C3C64();
    if (os_log_type_enabled(v30, v29))
    {
      v24 = sub_C3954();
      v23 = sub_21E8(&qword_EE828, &qword_C5100);
      v25 = sub_5DD4(0, v23, v23);
      v26 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v86 + 472) = v24;
      *(v86 + 480) = v25;
      *(v86 + 488) = v26;
      sub_5E28(0, (v86 + 472));
      sub_5E28(0, (v86 + 472));
      *(v86 + 496) = v31;
      v27 = swift_task_alloc();
      v27[2] = v86 + 472;
      v27[3] = v86 + 480;
      v27[4] = v86 + 488;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, v30, v29, "Could not find template directory when executing pattern", v24, 2u);
      sub_5E88(v25, 0, v23);
      sub_5E88(v26, 0, &type metadata for Any + 8);
      sub_C3934();
    }

    v21 = *(v86 + 728);
    v22 = *(v86 + 712);
    _objc_release(v30);
    v77(v21, v22);
    sub_4010C();
    v49 = sub_EE34();
    goto LABEL_19;
  }

  v60 = *(v86 + 584);
  (*(*(v86 + 696) + 32))(*(v86 + 704), *(v86 + 680), *(v86 + 688));

  v61 = sub_C35B4();

  sub_1D2DC(v60, (v86 + 80));
  if (v61)
  {
    sub_1CFBC(*(v86 + 584));
LABEL_10:
    v7 = *(v86 + 744);
    v55 = *(v86 + 712);
    v8 = sub_BF704();
    v89(v7, v8, v55);
    log = sub_C3224();
    v56 = sub_C3884();
    v58 = sub_C3C64();
    if (os_log_type_enabled(log, v56))
    {
      v51 = sub_C3954();
      v50 = sub_21E8(&qword_EE828, &qword_C5100);
      v52 = sub_5DD4(0, v50, v50);
      v53 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v86 + 520) = v51;
      *(v86 + 528) = v52;
      *(v86 + 536) = v53;
      sub_5E28(0, (v86 + 520));
      sub_5E28(0, (v86 + 520));
      *(v86 + 544) = v58;
      v54 = swift_task_alloc();
      v54[2] = v86 + 520;
      v54[3] = v86 + 528;
      v54[4] = v86 + 536;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, log, v56, "Empty CAT id when executing pattern", v51, 2u);
      sub_5E88(v52, 0, v50);
      sub_5E88(v53, 0, &type metadata for Any + 8);
      sub_C3934();
    }

    v43 = *(v86 + 744);
    v44 = *(v86 + 712);
    v47 = *(v86 + 704);
    v46 = *(v86 + 688);
    v45 = *(v86 + 696);
    _objc_release(log);
    v77(v43, v44);
    sub_4010C();
    v48 = sub_EE34();
    (*(v45 + 8))(v47, v46);
    v49 = v48;
LABEL_19:

    v19 = *(*(v86 + 424) + 8);

    return v19(v49);
  }

  v59 = sub_C35B4();

  sub_1CFBC(*(v86 + 584));
  if (v59)
  {
    goto LABEL_10;
  }

  v40 = *(v86 + 672);
  v39 = *(v86 + 656);
  v37 = *(v86 + 616);
  v32 = *(v86 + 608);
  v33 = *(v86 + 600);
  v34 = *(v86 + 584);
  v38 = *(v86 + 664);
  v35 = type metadata accessor for ParameterService(0);

  sub_1D2DC(v34, (v86 + 144));
  _objc_retain(v33);
  sub_24F4(v32, v86 + 272);
  v36 = sub_749F0(v37, v34, v33, (v86 + 272));
  *(v86 + 808) = v36;
  *(v86 + 504) = v36;
  sub_C2EC4();
  *(v86 + 392) = sub_C3C44();
  *(v86 + 400) = v9;
  v106._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v106);

  *(v86 + 408) = sub_2F52C();
  *(v86 + 416) = v10;
  sub_C3C24();
  sub_8224(v86 + 408);
  v107._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v107);

  sub_8224(v86 + 392);
  v41 = sub_C3544();
  v42 = v11;
  *(v86 + 816) = v11;

  *(v86 + 336) = v35;
  *(v86 + 344) = sub_3E954();
  *(v86 + 312) = v36;
  (*(v38 + 16))(v40, v37 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v39);
  v12 = swift_task_alloc();
  *(v86 + 824) = v12;
  *v12 = *(v86 + 424);
  v12[1] = sub_39D38;
  v13 = *(v86 + 704);
  v14 = *(v86 + 672);
  v15 = *(v86 + 600);
  v16 = *(v86 + 592);

  return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v13, v41, v42, v16, v15, v86 + 312, v14);
}

uint64_t sub_39D38(uint64_t a1)
{
  v7 = *v2;
  v5 = (*v2 + 16);
  v6 = (*v2 + 312);
  v7[53] = *v2;
  v7[104] = a1;
  v7[105] = v1;

  if (v1)
  {
    v3 = sub_3A8B8;
  }

  else
  {
    (*(v5[81] + 8))(v5[82], v5[80]);
    sub_1FA80(v6);

    v3 = sub_39EF4;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_39EF4(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 832);
  v3 = *(v1 + 849);
  *(v1 + 424) = v1;
  *(v1 + 512) = v2;
  if ((v3 & 1) == 0)
  {
    v29 = v37[96];
    v4 = v37[92];
    v28 = v37[89];
    v5 = sub_BF704();
    v29(v4, v5, v28);
    v35 = sub_C3224();
    v36 = sub_C3874();
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_4800;
    *(v30 + 24) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_7BBC;
    *(v33 + 24) = v30;
    sub_C3C64();
    v34 = v6;

    *v34 = sub_7B48;
    v34[1] = v31;

    v34[2] = sub_7B48;
    v34[3] = v32;

    v34[4] = sub_7C08;
    v34[5] = v33;
    sub_4E48();

    if (os_log_type_enabled(v35, v36))
    {
      v7 = v37[105];
      buf = sub_C3954();
      v24 = sub_21E8(&qword_EE828, &qword_C5100);
      v26 = sub_5DD4(0, v24, v24);
      v27 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v38 = buf;
      v39 = v26;
      v40 = v27;
      sub_5E28(2, &v38);
      sub_5E28(1, &v38);
      v41 = sub_7B48;
      v42 = v31;
      sub_5E3C(&v41, &v38, &v39, &v40);
      if (v7)
      {
      }

      v41 = sub_7B48;
      v42 = v32;
      sub_5E3C(&v41, &v38, &v39, &v40);
      v41 = sub_7C08;
      v42 = v33;
      sub_5E3C(&v41, &v38, &v39, &v40);
      _os_log_impl(&dword_0, v35, v36, "SiriKitEvent .completed for %s", buf, 0xCu);
      sub_5E88(v26, 0, v24);
      sub_5E88(v27, 1, &type metadata for Any + 8);
      sub_C3934();
    }

    else
    {
    }

    v17 = v37[99];
    v15 = v37[92];
    v16 = v37[89];
    v21 = v37[81];
    v19 = v37[79];
    v22 = v37[78];
    __src = v37[73];
    v18 = v37[80];
    _objc_release(v35);
    v17(v15, v16);
    sub_C1E94();
    sub_808C(v37 + 44, v37[47]);
    sub_C1F14();
    (*(v18 + 104))(v21, enum case for ActivityType.completed(_:), v19);
    sub_41A2C();

    v9 = sub_C1EB4();
    (*(*(v9 - 8) + 56))(v22, 1);
    sub_1D2DC(__src, v37 + 26);
    v23 = swift_allocObject();
    memcpy((v23 + 16), __src, 0x40uLL);
    sub_C1EE4();
    sub_C1EA4();

    sub_2560(v37 + 44);
  }

  v12 = v37[88];
  v13 = v37[86];
  v11 = v37[87];

  (*(v11 + 8))(v12, v13);
  v14 = v37[104];

  v10 = *(v37[53] + 8);

  return v10(v14);
}

uint64_t sub_3A8B8()
{
  v6 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v1 = v0[83];
  v0[53] = v0;
  (*(v1 + 8))();
  sub_1FA80(v0 + 39);

  (*(v4 + 8))(v6, v5);

  v2 = *(*(v7 + 424) + 8);

  return v2();
}

uint64_t sub_3AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = v68;
  v46 = a1;
  v45 = a2;
  v44 = a3;
  memset(&v68[13], 0, 40);
  v68[10] = 0;
  v64 = 0;
  v47 = sub_C1AC4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v53 = *(v48 + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v51 = v24 - v50;
  v52 = v50;
  __chkstk_darwin(v4);
  v54 = v24 - v52;
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v56 = v24 - v55;
  v6[17] = v24 - v55;
  v6[16] = v7;
  v6[14] = v8;
  v6[15] = v9;
  v6[13] = v3;
  v6[11] = v8;
  v6[12] = v9;
  v60 = sub_C3564("#", 1uLL, 1);
  v61 = v10;
  v59 = sub_B2E8();
  v58 = &type metadata for String;
  v57 = sub_37054();
  sub_37068();
  v63 = sub_C39F4();

  v62[10] = v63;
  if (sub_C3714() >= 2)
  {
    v29 = 1;
    sub_C3564("dialog", 6uLL, 1);
    v24[1] = v11;
    sub_C1A84();

    v30 = &type metadata for Substring;
    sub_C3744();
    v12 = v62;
    v13 = v29;
    v14 = v62[4];
    v15 = v62[5];
    v16 = v62[6];
    v17 = v62[7];
    v26 = v68;
    v68[0] = v14;
    v68[1] = v15;
    v62[2] = v16;
    v12[3] = v17;
    v18 = sub_C3564(".catfamily", 0xAuLL, v13 & 1);
    v25 = v67;
    v67[0] = v18;
    v67[1] = v19;
    v31 = sub_3F9BC();
    v32 = sub_402A0();
    v27 = &type metadata for String;
    sub_C3844();
    sub_8224(v25);
    sub_3FA34(v26);
    v28 = v62[9];
    sub_C1A84();

    v41 = *(v48 + 8);
    v40 = v48 + 8;
    v41(v51, v47);
    sub_C3744();
    v34 = v66;
    v66[0] = v66[4];
    v66[1] = v66[5];
    v66[2] = v66[6];
    v66[3] = v66[7];
    v20 = sub_C3564(".cat", 4uLL, v29 & 1);
    v33 = v65;
    v65[0] = v20;
    v65[1] = v21;
    sub_C3844();
    sub_8224(v33);
    sub_3FA34(v34);
    v35 = v66[9];
    sub_C1A84();

    v41(v54, v47);
    v37 = &v64;
    v64 = 1;
    v39 = [objc_opt_self() defaultManager];
    sub_C1AA4();
    v36 = v22;
    v38 = sub_C3484();

    v42 = [v39 fileExistsAtPath:v38 isDirectory:v37];
    _objc_release(v38);
    _objc_release(v39);
    v41(v56, v47);

    v43 = v42;
  }

  else
  {

    v43 = 0;
  }

  return v43 & 1;
}

uint64_t sub_3AFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v96 = a6;
  v126 = a1;
  v115 = a2;
  v112 = a3;
  v113 = a4;
  v114 = a5;
  v128 = sub_1A354;
  v132 = sub_7BBC;
  v134 = sub_7B48;
  v136 = sub_7B48;
  v139 = sub_7C08;
  v97 = sub_1D834;
  v98 = sub_7BBC;
  v99 = sub_7B48;
  v100 = sub_7B48;
  v101 = sub_7C08;
  v102 = sub_1C9F0;
  v163 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  v103 = 0;
  v6 = sub_21E8(&qword_EEF90, &qword_C5DF0);
  v104 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v105 = &v50 - v104;
  v106 = 0;
  v107 = sub_C1FE4();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v111 = &v50 - v110;
  v123 = sub_C3234();
  v121 = *(v123 - 8);
  v122 = v123 - 8;
  v117 = v121[8];
  v116 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v126);
  v118 = &v50 - v116;
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v50 - v119;
  v120 = &v50 - v119;
  v163 = v9;
  v161 = v10;
  v162 = v11;
  v159 = v12;
  v160 = v13;
  v158 = v14;
  v15 = sub_BF704();
  v124 = v121[2];
  v125 = v121 + 2;
  v124(v8, v15, v123);
  swift_errorRetain();
  v130 = 7;
  v131 = swift_allocObject();
  *(v131 + 16) = v126;
  v143 = sub_C3224();
  v144 = sub_C3884();
  v127 = 17;
  v135 = swift_allocObject();
  *(v135 + 16) = 32;
  v137 = swift_allocObject();
  *(v137 + 16) = 8;
  v129 = 32;
  v16 = swift_allocObject();
  v17 = v131;
  v133 = v16;
  *(v16 + 16) = v128;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v133;
  v140 = v18;
  *(v18 + 16) = v132;
  *(v18 + 24) = v19;
  v142 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v138 = sub_C3C64();
  v141 = v20;

  v21 = v135;
  v22 = v141;
  *v141 = v134;
  v22[1] = v21;

  v23 = v137;
  v24 = v141;
  v141[2] = v136;
  v24[3] = v23;

  v25 = v140;
  v26 = v141;
  v141[4] = v139;
  v26[5] = v25;
  sub_4E48();

  if (os_log_type_enabled(v143, v144))
  {
    v27 = v103;
    v89 = sub_C3954();
    v88 = sub_21E8(&qword_EE828, &qword_C5100);
    v90 = sub_5DD4(0, v88, v88);
    v91 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v92 = &v149;
    v149 = v89;
    v93 = &v148;
    v148 = v90;
    v94 = &v147;
    v147 = v91;
    sub_5E28(2, &v149);
    sub_5E28(1, v92);
    v145 = v134;
    v146 = v135;
    sub_5E3C(&v145, v92, v93, v94);
    v95 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v145 = v136;
      v146 = v137;
      sub_5E3C(&v145, &v149, &v148, &v147);
      v86 = 0;
      v145 = v139;
      v146 = v140;
      sub_5E3C(&v145, &v149, &v148, &v147);
      v85 = 0;
      _os_log_impl(&dword_0, v143, v144, "Error: %s", v89, 0xCu);
      sub_5E88(v90, 0, v88);
      sub_5E88(v91, 1, &type metadata for Any + 8);
      sub_C3934();

      v87 = v85;
    }
  }

  else
  {
    v28 = v103;

    v87 = v28;
  }

  v29 = v118;
  v70 = v87;
  _objc_release(v143);
  v71 = v121[1];
  v72 = v121 + 1;
  v71(v120, v123);
  v30 = sub_BF704();
  v124(v29, v30, v123);

  v74 = 32;
  v75 = 7;
  v31 = swift_allocObject();
  v32 = v114;
  v76 = v31;
  *(v31 + 16) = v113;
  *(v31 + 24) = v32;
  v83 = sub_C3224();
  v84 = sub_C3874();
  v73 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v33 = swift_allocObject();
  v34 = v76;
  v77 = v33;
  *(v33 + 16) = v97;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v77;
  v81 = v35;
  *(v35 + 16) = v98;
  *(v35 + 24) = v36;
  v80 = sub_C3C64();
  v82 = v37;

  v38 = v78;
  v39 = v82;
  *v82 = v99;
  v39[1] = v38;

  v40 = v79;
  v41 = v82;
  v82[2] = v100;
  v41[3] = v40;

  v42 = v81;
  v43 = v82;
  v82[4] = v101;
  v43[5] = v42;
  sub_4E48();

  if (os_log_type_enabled(v83, v84))
  {
    v44 = v70;
    v63 = sub_C3954();
    v62 = sub_21E8(&qword_EE828, &qword_C5100);
    v64 = sub_5DD4(0, v62, v62);
    v65 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v66 = &v154;
    v154 = v63;
    v67 = &v153;
    v153 = v64;
    v68 = &v152;
    v152 = v65;
    sub_5E28(2, &v154);
    sub_5E28(1, v66);
    v150 = v99;
    v151 = v78;
    sub_5E3C(&v150, v66, v67, v68);
    v69 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v150 = v100;
      v151 = v79;
      sub_5E3C(&v150, &v154, &v153, &v152);
      v61 = 0;
      v150 = v101;
      v151 = v81;
      sub_5E3C(&v150, &v154, &v153, &v152);
      _os_log_impl(&dword_0, v83, v84, "Sending SiriKitEvent .failed for %s", v63, 0xCu);
      sub_5E88(v64, 0, v62);
      sub_5E88(v65, 1, &type metadata for Any + 8);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v83);
  v71(v118, v123);
  v59 = &v155;
  sub_C1E94();
  v56 = v156;
  v57 = v157;
  v55 = sub_808C(v59, v156);
  v50 = 0;
  sub_C1F14();
  (*(v108 + 104))(v111, enum case for ActivityType.failed(_:), v107);

  v51 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v54 = sub_C1EB4();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  (*(v52 + 104))(v105, v51);
  v45 = *(v52 + 56);
  v60 = 1;
  v45(v105, 0);

  swift_errorRetain();
  v46 = swift_allocObject();
  v47 = v112;
  v48 = v126;
  v46[2] = v115;
  v46[3] = v47;
  v46[4] = v48;
  v58 = sub_C1EE4();
  sub_C1EA4();

  sub_2560(v59);
  swift_errorRetain();
  *v96 = v126;
  sub_21E8(&qword_EEF88, &unk_C5A70);
  return swift_storeEnumTagMultiPayload();
}

void sub_3C100(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[4] = 0;
  v30[0] = 0;
  v30[1] = 0;
  v25 = 0;
  v26 = 0;
  v33[6] = a1;
  v33[5] = a2;
  v33[0] = sub_C3564("listenAfterSpeaking", 0x13uLL, 1);
  v33[1] = v3;
  sub_C33E4();
  sub_8224(v33);
  v18 = v33[2];
  v19 = v33[3];

  v17 = sub_C3564("true", 4uLL, 1);
  v20 = v4;

  v31[0] = v18;
  v31[1] = v19;
  *&v32 = v17;
  *(&v32 + 1) = v20;
  if (v19)
  {
    sub_146A0(v31, &v23);
    if (*(&v32 + 1))
    {
      v22 = v23;
      v21 = v32;
      v13 = sub_C3574();
      sub_8224(&v21);
      sub_8224(&v22);
      sub_8224(v31);
      v14 = v13;
      goto LABEL_7;
    }

    sub_8224(&v23);
    goto LABEL_9;
  }

  if (*(&v32 + 1))
  {
LABEL_9:
    sub_146E0(v31);
    v14 = 0;
    goto LABEL_7;
  }

  sub_8224(v31);
  v14 = 1;
LABEL_7:

  if (v14)
  {
    v12 = enum case for BehaviorAfterSpeaking.listen(_:);
    v5 = sub_C2264();
    (*(*(v5 - 8) + 104))(a3, v12);
  }

  else
  {

    v29 = a2;
    sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1E160();
    sub_C3824();
    while (1)
    {
      sub_21E8(&qword_EF0A8, &qword_C5AF0);
      sub_C3B44();
      if (!v28)
      {
        break;
      }

      v25 = v27;
      v26 = v28;
      v24[2] = v27;
      v24[3] = v28;
      v24[0] = sub_C3564("listenAfterSpeaking", 0x13uLL, 1);
      v24[1] = v6;
      sub_B2E8();
      v11 = sub_C39D4();
      sub_8224(v24);
      if (v11)
      {
        v10 = enum case for BehaviorAfterSpeaking.listen(_:);
        v7 = sub_C2264();
        (*(*(v7 - 8) + 104))(a3, v10);

        sub_1D7C8(v30);
        return;
      }
    }

    sub_1D7C8(v30);
    v9 = enum case for BehaviorAfterSpeaking.defaultBehavior(_:);
    v8 = sub_C2264();
    (*(*(v8 - 8) + 104))(a3, v9);
  }
}

uint64_t sub_3C548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v97 = a3;
  v99 = a2;
  v108 = a1;
  v80 = a5;
  v113 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v123 = 0;
  sub_C1FD4();
  __chkstk_darwin(0);
  v81 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_C2304();
  v83 = *(v82 - 8);
  v84 = v83;
  __chkstk_darwin(v113);
  v85 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v85;
  v86 = sub_C3234();
  v87 = *(v86 - 8);
  v88 = v87;
  __chkstk_darwin(v86 - 8);
  v89 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v91 = v90;
  v93 = *(v90 + 64);
  v92 = v93;
  __chkstk_darwin(v113);
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v40 - v95;
  __chkstk_darwin(v9);
  v96 = v40 - v95;
  v131 = v40 - v95;
  v100 = sub_C2264();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  __chkstk_darwin(v108);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = v40 - v105;
  v11 = __chkstk_darwin(v10);
  v106 = v40 - v105;
  v130 = v40 - v105;
  v129 = v12;
  v128 = v13;
  v127 = v14;
  v126 = v15;
  v125 = v5;
  v107 = [v12 meta];
  v115 = &type metadata for String;
  v109 = sub_C3344();
  v111 = [v108 dialog];
  v110 = v111;
  v112 = sub_40590();
  v124 = sub_C36D4();
  v114 = sub_21E8(&qword_EF5F0, &qword_C5E30);
  v16 = sub_405F4();
  v18 = sub_28D90(sub_3D380, v113, v114, v115, &type metadata for Never, v16, &protocol witness table for Never, v17);
  v116 = 0;
  v117 = v18;
  v79 = v18;
  sub_1D7C8(&v124);

  sub_3C100(v109, v79, v106);

  v123 = 0;
  (*(v102 + 16))(v104, v106, v100);
  if ((*(v102 + 88))(v104, v100) == enum case for BehaviorAfterSpeaking.listen(_:))
  {
    (*(v102 + 8))(v104, v100);
    v123 = 1;
    v78 = 1;
  }

  else
  {
    (*(v102 + 8))(v104, v100);
    v78 = 0;
  }

  v57 = v78;
  type metadata accessor for CannedDialogHelper(0);
  sub_1A3BC(v57 & 1, v99, v96);
  v19 = v89;
  v20 = sub_BF704();
  (*(v88 + 16))(v19, v20, v86);
  sub_1CB3C(v96, v94);
  v58 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v67 = swift_allocObject();
  sub_1F620(v94, (v67 + v58));
  v77 = sub_C3224();
  v59 = v77;
  v76 = sub_C3874();
  v60 = v76;
  v61 = 17;
  v66 = 7;
  v70 = swift_allocObject();
  v62 = v70;
  v63 = 32;
  *(v70 + 16) = 32;
  v21 = swift_allocObject();
  v22 = v63;
  v71 = v21;
  v64 = v21;
  *(v21 + 16) = 8;
  v65 = v22;
  v23 = swift_allocObject();
  v24 = v67;
  v68 = v23;
  *(v23 + 16) = sub_407BC;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v68;
  v74 = v25;
  v69 = v25;
  *(v25 + 16) = sub_7BBC;
  *(v25 + 24) = v26;
  v75 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v72 = sub_C3C64();
  v73 = v27;

  v28 = v70;
  v29 = v73;
  *v73 = sub_7B48;
  v29[1] = v28;

  v30 = v71;
  v31 = v73;
  v73[2] = sub_7B48;
  v31[3] = v30;

  v32 = v73;
  v33 = v74;
  v73[4] = sub_7C08;
  v32[5] = v33;
  sub_4E48();

  if (os_log_type_enabled(v77, v76))
  {
    v34 = v116;
    v50 = sub_C3954();
    v47 = v50;
    v48 = sub_21E8(&qword_EE828, &qword_C5100);
    v51 = sub_5DD4(0, v48, v48);
    v49 = v51;
    v53 = 1;
    v52 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v122 = v50;
    v121 = v51;
    v120 = v52;
    v54 = &v122;
    sub_5E28(2, &v122);
    sub_5E28(v53, v54);
    v118 = sub_7B48;
    v119 = v62;
    sub_5E3C(&v118, v54, &v121, &v120);
    v55 = v34;
    v56 = v34;
    if (v34)
    {
      v45 = 0;

      __break(1u);
    }

    else
    {
      v118 = sub_7B48;
      v119 = v64;
      sub_5E3C(&v118, &v122, &v121, &v120);
      v43 = 0;
      v44 = 0;
      v118 = sub_7C08;
      v119 = v69;
      sub_5E3C(&v118, &v122, &v121, &v120);
      v41 = 0;
      v42 = 0;
      _os_log_impl(&dword_0, v59, v60, "NL context update: %s", v47, 0xCu);
      sub_5E88(v49, 0, v48);
      sub_5E88(v52, 1, &type metadata for Any + 8);
      sub_C3934();

      v46 = v41;
    }
  }

  else
  {
    v35 = v116;

    v46 = v35;
  }

  (*(v88 + 8))(v89, v86);
  sub_C1FC4();

  v40[1] = v40;
  __chkstk_darwin(v81);
  v36 = v98;
  v37 = v97;
  v40[-4] = &v123;
  v40[-3] = v38;
  v40[-2] = v37;
  v40[-1] = v36;
  sub_C22B4();

  (*(v84 + 16))(v80, v85, v82);
  (*(v84 + 8))(v85, v82);
  sub_1CCE4(v96);
  return (*(v102 + 8))(v106, v100);
}

void sub_3D380(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*a1 dialogId];
  *a2 = sub_C3494();
  a2[1] = v2;
  _objc_release(v4);
}

uint64_t sub_3D3F0(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_1CB3C(v1, &v3 - v4);
  return sub_C34F4();
}

uint64_t sub_3D48C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  v78 = a1;
  v74 = a2;
  v76 = a3;
  v79 = a4;
  v80 = a5;
  v55 = sub_4172C;
  v56 = sub_7BBC;
  v57 = sub_7B48;
  v58 = sub_7B48;
  v59 = sub_7C08;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v60 = 0;
  v66 = 0;
  v61 = sub_C3234();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v65 = v27 - v64;
  v67 = (*(*(sub_21E8(&qword_EEFD0, &unk_C6820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v85 = v27 - v67;
  v84 = sub_C2DB4();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v68 = v81;
  v69 = *(v81 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v71 = v27 - v70;
  v72 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v70);
  v73 = v27 - v72;
  v96 = v27 - v72;
  v7 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v75 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v77 = v27 - v75;
  v95 = a1;
  v94 = v8;
  v93 = v9;
  v92 = v10;
  v91 = v11;
  v83 = 1;
  sub_C22F4();
  sub_1CB3C(v76, v77);
  sub_C22D4();

  sub_C22E4();
  sub_41538(v80, v85);
  if ((*(v81 + 48))(v85, v83, v84) == 1)
  {
    return sub_1CF14(v85);
  }

  v13 = v65;
  v38 = v68;
  v41 = *(v81 + 32);
  v40 = v81 + 32;
  v41(v73, v85, v84);
  v14 = sub_BF704();
  (*(v62 + 16))(v13, v14, v61);
  v36 = *(v81 + 16);
  v37 = v81 + 16;
  v36(v71, v73, v84);
  v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v44 = 7;
  v45 = swift_allocObject();
  v41((v45 + v39), v71, v84);
  v53 = sub_C3224();
  v54 = sub_C3874();
  v42 = 17;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v43 = 32;
  v15 = swift_allocObject();
  v16 = v45;
  v46 = v15;
  *(v15 + 16) = v55;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v46;
  v50 = v17;
  *(v17 + 16) = v56;
  *(v17 + 24) = v18;
  v52 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v49 = sub_C3C64();
  v51 = v19;

  v20 = v47;
  v21 = v51;
  *v51 = v57;
  v21[1] = v20;

  v22 = v48;
  v23 = v51;
  v51[2] = v58;
  v23[3] = v22;

  v24 = v50;
  v25 = v51;
  v51[4] = v59;
  v25[5] = v24;
  sub_4E48();

  if (os_log_type_enabled(v53, v54))
  {
    v26 = v60;
    v29 = sub_C3954();
    v28 = sub_21E8(&qword_EE828, &qword_C5100);
    v30 = sub_5DD4(0, v28, v28);
    v31 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = &v90;
    v90 = v29;
    v33 = &v89;
    v89 = v30;
    v34 = &v88;
    v88 = v31;
    sub_5E28(2, &v90);
    sub_5E28(1, v32);
    v86 = v57;
    v87 = v47;
    sub_5E3C(&v86, v32, v33, v34);
    v35 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v86 = v58;
      v87 = v48;
      sub_5E3C(&v86, &v90, &v89, &v88);
      v27[1] = 0;
      v86 = v59;
      v87 = v50;
      sub_5E3C(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_0, v53, v54, "overriding responseMode: %s", v29, 0xCu);
      sub_5E88(v30, 0, v28);
      sub_5E88(v31, 1, &type metadata for Any + 8);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v53);
  (*(v62 + 8))(v65, v61);
  v36(v71, v73, v84);
  sub_C22C4();
  return (*(v81 + 8))(v73, v84);
}

uint64_t sub_3DF30(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_C2DB4();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  sub_41868();
  return sub_C3504();
}

uint64_t sub_3DFEC()
{
  _objc_release(*(v0 + 16));
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options;
  v1 = sub_C2F14();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_3E0D8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_3E110()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_3E13C()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_3E174()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_3E1A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_3E1BC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_3E208()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_3E240(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_3E28C()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_3E2C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_3E310()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_3E348(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_3E40C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1D97C(v2, &v5 - v6);
  v3 = type metadata accessor for DialogServiceButton(0);
  sub_3F4E0(v7, (v1 + *(v3 + 20)));
  return sub_1DAA4(v8);
}

uint64_t sub_3E4BC()
{
  v2 = *(v0 + *(type metadata accessor for DialogServiceButton(0) + 24));

  return v2;
}

uint64_t sub_3E504(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for DialogServiceButton(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

unint64_t sub_3E638()
{
  v2 = qword_EF580;
  if (!qword_EF580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF580);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DialogService(uint64_t a1)
{
  v2 = qword_EF628;
  if (!qword_EF628)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_3E724()
{
  v2 = qword_EF588;
  if (!qword_EF588)
  {
    sub_C2E74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3E7A4()
{
  v2 = qword_EF590;
  if (!qword_EF590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3E81C()
{

  return swift_deallocObject();
}

unint64_t sub_3E954()
{
  v2 = qword_EF598;
  if (!qword_EF598)
  {
    type metadata accessor for ParameterService(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF598);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3E9D4()
{
  v0 = *(*(sub_21E8(&qword_EEF88, &unk_C5A70) - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_C2134();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_3EAF4()
{
  v1 = *(sub_21E8(&qword_EEF88, &unk_C5A70) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_31CE8(v2);
}

unint64_t sub_3EC3C()
{
  v2 = qword_EF5A8;
  if (!qword_EF5A8)
  {
    sub_81B0(&qword_EF5A0, &qword_C5DF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3EDDC()
{

  return swift_deallocObject();
}

uint64_t sub_3EE3C()
{

  return swift_deallocObject();
}

uint64_t sub_3EF74()
{

  return swift_deallocObject();
}

uint64_t sub_3F1CC()
{

  return swift_deallocObject();
}

uint64_t sub_3F414()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for DialogServiceButton(uint64_t a1)
{
  v2 = qword_EF760;
  if (!qword_EF760)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_3F4E0(const void *a1, void *a2)
{
  v7 = sub_C1AC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_21E8(&qword_EF008, &unk_C5AD0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

__n128 sub_3F708(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for DialogServiceButton(0);
  v6 = *(v5 + 20);
  v8 = sub_C1AC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a1[v6], 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(&a2[v6], &a1[v6], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(&a2[v6], 0, 1, v8);
  }

  result = *&a1[*(v5 + 24)];
  *&a2[*(v5 + 24)] = result;
  return result;
}

uint64_t sub_3F89C(uint64_t a1)
{
  v3 = sub_C2164();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_3F944()
{
  v2 = qword_EF5B8;
  if (!qword_EF5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F9BC()
{
  v2 = qword_EF5C0;
  if (!qword_EF5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3FAA0()
{
  v2 = *(sub_C1AC4() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_3FB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C1AC4();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_37080(v3, a1);
}

uint64_t sub_3FC20()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C1AC4();
  v1 = sub_3FC7C();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_3FC7C()
{
  v2 = qword_EF5C8;
  if (!qword_EF5C8)
  {
    sub_C1AC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3FEAC()
{

  return swift_deallocObject();
}

uint64_t sub_3FFDC()
{

  return swift_deallocObject();
}

unint64_t sub_4010C()
{
  v2 = qword_EF5D8;
  if (!qword_EF5D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF5D8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_40248()
{

  return swift_deallocObject();
}

unint64_t sub_402A0()
{
  v2 = qword_EF5E0;
  if (!qword_EF5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_40548()
{

  return swift_deallocObject();
}

unint64_t sub_40590()
{
  v2 = qword_EF5E8;
  if (!qword_EF5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_405F4()
{
  v2 = qword_EF5F8;
  if (!qword_EF5F8)
  {
    sub_81B0(&qword_EF5F0, &qword_C5E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4067C()
{
  v1 = *(*(sub_21E8(&qword_EEF98, &qword_C5A80) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = sub_C2094();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_407BC()
{
  v1 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3D3F0(v2);
}

uint64_t sub_40934(uint64_t a1)
{
  updated = sub_C2F14();
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

uint64_t sub_40A48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_40B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_40D7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_40EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_410D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_21E8(&qword_EF008, &unk_C5AD0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_41230(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = sub_21E8(&qword_EF008, &unk_C5AD0);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_41330(uint64_t a1)
{
  v4 = sub_41408(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_4149C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_41408(uint64_t a1)
{
  v5 = qword_EF770;
  if (!qword_EF770)
  {
    v4 = sub_C3964();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_EF770);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_4149C(uint64_t a1)
{
  v5 = qword_EF778;
  if (!qword_EF778)
  {
    sub_C1AC4();
    v4 = sub_C3964();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_EF778);
      return v2;
    }
  }

  return v5;
}

void *sub_41538(const void *a1, void *a2)
{
  v6 = sub_C2DB4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEFD0, &unk_C6820);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_41660()
{
  v2 = *(sub_C2DB4() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4172C()
{
  v1 = *(sub_C2DB4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3DF30(v2);
}

unint64_t sub_41868()
{
  v2 = qword_EF7B0;
  if (!qword_EF7B0)
  {
    sub_C2DB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_418E8()
{
  v2 = qword_EF7B8;
  if (!qword_EF7B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF7B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_4194C()
{
  v2 = qword_EF7C0;
  if (!qword_EF7C0)
  {
    sub_418E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_419CC()
{
  if (qword_EE538 != -1)
  {
    swift_once();
  }

  return &qword_F1070;
}

uint64_t *sub_41A2C()
{
  if (qword_EE548 != -1)
  {
    swift_once();
  }

  return &qword_F1090;
}

uint64_t *sub_41A8C()
{
  if (qword_EE540 != -1)
  {
    swift_once();
  }

  return &qword_F1080;
}

uint64_t *sub_41AEC()
{
  if (qword_EE528 != -1)
  {
    swift_once();
  }

  return &qword_F1050;
}

uint64_t *sub_41B4C()
{
  if (qword_EE530 != -1)
  {
    swift_once();
  }

  return &qword_F1060;
}

uint64_t sub_41BAC()
{
  result = sub_C3564("SocialConversation", 0x12uLL, 1);
  qword_F1050 = result;
  qword_F1058 = v1;
  return result;
}

uint64_t sub_41BF0()
{
  v1 = *sub_41AEC();

  return v1;
}

uint64_t sub_41C2C()
{
  result = sub_C3564("CannedDialog", 0xCuLL, 1);
  qword_F1060 = result;
  qword_F1068 = v1;
  return result;
}

uint64_t sub_41C70()
{
  v1 = *sub_41B4C();

  return v1;
}

uint64_t sub_41CAC()
{
  result = sub_C3564("dalVoiceTrigger", 0xFuLL, 1);
  qword_F1070 = result;
  qword_F1078 = v1;
  return result;
}

uint64_t sub_41CF0()
{
  v1 = *sub_419CC();

  return v1;
}

uint64_t sub_41D2C()
{
  result = sub_C3564("dalAgain", 8uLL, 1);
  qword_F1080 = result;
  qword_F1088 = v1;
  return result;
}

uint64_t sub_41D70()
{
  v1 = *sub_41A8C();

  return v1;
}

uint64_t sub_41DAC()
{
  result = sub_C3564("SiriSocialConversation", 0x16uLL, 1);
  qword_F1090 = result;
  qword_F1098 = v1;
  return result;
}

uint64_t sub_41DF0()
{
  result = sub_C3564("common_SocialConversation", 0x19uLL, 1);
  qword_F10A0 = result;
  qword_F10A8 = v1;
  return result;
}

uint64_t *sub_41E34()
{
  if (qword_EE550 != -1)
  {
    swift_once();
  }

  return &qword_F10A0;
}

uint64_t sub_41E94()
{
  v1 = *sub_41E34();

  return v1;
}

uint64_t sub_41ED0()
{
  result = sub_C3564("uso_NoEntity", 0xCuLL, 1);
  qword_F10B0 = result;
  qword_F10B8 = v1;
  return result;
}

uint64_t *sub_41F14()
{
  if (qword_EE558 != -1)
  {
    swift_once();
  }

  return &qword_F10B0;
}

uint64_t sub_41F74()
{
  v1 = *sub_41F14();

  return v1;
}

uint64_t sub_41FB0()
{
  result = sub_C3564("dialog", 6uLL, 1);
  qword_F10C0 = result;
  qword_F10C8 = v1;
  return result;
}

uint64_t *sub_41FF4()
{
  if (qword_EE560 != -1)
  {
    swift_once();
  }

  return &qword_F10C0;
}

uint64_t sub_42054()
{
  v1 = *sub_41FF4();

  return v1;
}

uint64_t sub_42090()
{
  result = sub_C3564("dialogId", 8uLL, 1);
  qword_F10D0 = result;
  qword_F10D8 = v1;
  return result;
}

uint64_t *sub_420D4()
{
  if (qword_EE568 != -1)
  {
    swift_once();
  }

  return &qword_F10D0;
}

uint64_t sub_42134()
{
  v1 = *sub_420D4();

  return v1;
}

uint64_t sub_421A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v5 = sub_C3234();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_C1D34();
  v4[19] = v6;
  v10 = *(v6 - 8);
  v4[20] = v10;
  v4[21] = *(v10 + 64);
  v4[22] = swift_task_alloc();
  v7 = sub_C2D04();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = sub_C2C64();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;

  return _swift_task_switch(sub_42454, 0);
}

uint64_t sub_42454()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v0[4] = v0;
  v34 = sub_42B28(v3, v2, v1);
  if (v34)
  {
    v32 = *(v35 + 232);
    v22 = *(v35 + 224);
    v33 = *(v35 + 208);
    v30 = *(v35 + 200);
    v31 = *(v35 + 184);
    v26 = *(v35 + 176);
    v27 = *(v35 + 152);
    v24 = *(v35 + 96);
    v21 = *(v35 + 216);
    v29 = *(v35 + 192);
    v23 = *(v35 + 160);
    *(v35 + 88) = v34;
    sub_C2C54();

    sub_C2C24();
    sub_C1D24();
    sub_C2C14();
    sub_C2C44();
    sub_C2C04();
    (*(v21 + 16))(v22, v32, v33);
    sub_42E5C();
    sub_C2CE4();
    (*(v23 + 16))(v26, v24, v27);
    v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v28 = swift_allocObject();
    (*(v23 + 32))(v28 + v25, v26, v27);
    sub_C2CF4();

    (*(v29 + 8))(v30, v31);
    (*(v21 + 8))(v32, v33);
  }

  else
  {
    v4 = *(v35 + 144);
    v17 = *(v35 + 128);
    v16 = *(v35 + 136);
    v5 = sub_BF704();
    (*(v16 + 16))(v4, v5, v17);
    oslog = sub_C3224();
    v18 = sub_C3884();
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v20 = sub_C3C64();
    if (os_log_type_enabled(oslog, v18))
    {
      buf = sub_C3954();
      v11 = sub_21E8(&qword_EE828, &qword_C5100);
      v13 = sub_5DD4(0, v11, v11);
      v14 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v35 + 56) = buf;
      *(v35 + 64) = v13;
      *(v35 + 72) = v14;
      sub_5E28(0, (v35 + 56));
      sub_5E28(0, (v35 + 56));
      *(v35 + 80) = v20;
      v15 = swift_task_alloc();
      v15[2] = v35 + 56;
      v15[3] = v35 + 64;
      v15[4] = v35 + 72;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, oslog, v18, "Failed to encode flow variables for persisting", buf, 2u);
      sub_5E88(v13, 0, v11);
      sub_5E88(v14, 0, &type metadata for Any + 8);
      sub_C3934();
    }

    v9 = *(v35 + 144);
    v10 = *(v35 + 128);
    v8 = *(v35 + 136);
    _objc_release(oslog);
    (*(v8 + 8))(v9, v10);
  }

  v6 = *(*(v35 + 32) + 8);

  return v6();
}

uint64_t sub_42B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v22 = a2;
  v23 = a3;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v30 = __b;
  v32 = 40;
  memset(__b, 0, sizeof(__b));
  v36 = 0;
  v37 = 0;
  v24 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v25 = (v9 - v24);
  v45 = v3;
  v43 = v4;
  v44 = v5;
  v26 = sub_C2D14();
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v42 = sub_C3314();

  v31 = &v46;
  sub_C3354();
  v6 = v33;
  memcpy(v30, v31, v32);
  for (i = v6; ; i = v17)
  {
    v20 = i;
    sub_21E8(&qword_EF7D0, &qword_C5F98);
    v21 = &v39;
    sub_C33D4();
    memcpy(__dst, v21, sizeof(__dst));
    if (!__dst[1])
    {
      sub_49790(__b);
      v10 = &v42;
      v11 = v42;

      sub_1D7C8(v10);
      return v11;
    }

    v14 = __dst[0];
    v16 = __dst[1];
    v36 = __dst[0];
    v37 = __dst[1];
    v15 = v38;
    sub_49814(&__dst[2], v38);
    v7 = v20;

    sub_45FF4(v15, v22, v23, v25);
    v17 = v7;
    v18 = v16;
    v19 = v7;
    if (v7)
    {
      break;
    }

    (*(*(v26 - 8) + 56))(v25, 0, 1);
    v12 = v35;
    v35[0] = v14;
    v35[1] = v16;
    sub_21E8(&qword_EF7D8, &qword_C5FA0);
    sub_C33F4();
    sub_2560(v38);
  }

  v9[2] = v19;
  v9[1] = v18;

  sub_2560(v38);

  sub_49790(__b);
  sub_1D7C8(&v42);
  return v13;
}

uint64_t sub_42E5C()
{
  sub_49878(0);
  sub_21E8(&qword_EF868, &qword_C6268);
  return sub_C3374();
}

uint64_t sub_42EB4(uint64_t a1, int a2, uint64_t a3)
{
  v106 = a1;
  v105 = a2;
  v104 = a3;
  v85 = sub_2D6A0;
  v86 = sub_7BBC;
  v87 = sub_7B48;
  v88 = sub_7B48;
  v89 = sub_7C08;
  v90 = sub_1A354;
  v91 = sub_7BBC;
  v92 = sub_7B48;
  v93 = sub_7B48;
  v94 = sub_7C08;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v124 = 0;
  v95 = 0;
  v96 = 0;
  v97 = sub_C1D34();
  v99 = *(v97 - 8);
  v98 = v97 - 8;
  v100 = v99;
  v101 = *(v99 + 64);
  v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v103 = &v37 - v102;
  v107 = sub_C3234();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v111 = &v37 - v110;
  v112 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v113 = &v37 - v112;
  v126 = v5;
  v127 = v6 & 1;
  v125 = v7;
  if (v6)
  {
    v84 = v106;
    v23 = v111;
    v46 = v106;
    swift_errorRetain();
    v124 = v46;
    v24 = sub_BF704();
    (*(v108 + 16))(v23, v24, v107);
    swift_errorRetain();
    v49 = 7;
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    v58 = sub_C3224();
    v59 = sub_C3884();
    v47 = 17;
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v48 = 32;
    v25 = swift_allocObject();
    v26 = v50;
    v51 = v25;
    *(v25 + 16) = v90;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v51;
    v55 = v27;
    *(v27 + 16) = v91;
    *(v27 + 24) = v28;
    v57 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v54 = sub_C3C64();
    v56 = v29;

    v30 = v52;
    v31 = v56;
    *v56 = v92;
    v31[1] = v30;

    v32 = v53;
    v33 = v56;
    v56[2] = v93;
    v33[3] = v32;

    v34 = v55;
    v35 = v56;
    v56[4] = v94;
    v35[5] = v34;
    sub_4E48();

    if (os_log_type_enabled(v58, v59))
    {
      v36 = v95;
      v39 = sub_C3954();
      v38 = sub_21E8(&qword_EE828, &qword_C5100);
      v40 = sub_5DD4(0, v38, v38);
      v41 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v42 = &v123;
      v123 = v39;
      v43 = &v122;
      v122 = v40;
      v44 = &v121;
      v121 = v41;
      sub_5E28(2, &v123);
      sub_5E28(1, v42);
      v119 = v92;
      v120 = v52;
      sub_5E3C(&v119, v42, v43, v44);
      v45 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v119 = v93;
        v120 = v53;
        sub_5E3C(&v119, &v123, &v122, &v121);
        v37 = 0;
        v119 = v94;
        v120 = v55;
        sub_5E3C(&v119, &v123, &v122, &v121);
        _os_log_impl(&dword_0, v58, v59, "Failed to donate variable state: %s", v39, 0xCu);
        sub_5E88(v40, 0, v38);
        sub_5E88(v41, 1, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v58);
    (*(v108 + 8))(v111, v107);
  }

  else
  {
    v8 = v113;
    v9 = sub_BF704();
    (*(v108 + 16))(v8, v9, v107);
    v69 = v100;
    (*(v99 + 16))(v103, v104, v97);
    v70 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v73 = 7;
    v74 = swift_allocObject();
    (*(v99 + 32))(v74 + v70, v103, v97);
    v82 = sub_C3224();
    v83 = sub_C3874();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 32;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v10 = swift_allocObject();
    v11 = v74;
    v75 = v10;
    *(v10 + 16) = v85;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v75;
    v79 = v12;
    *(v12 + 16) = v86;
    *(v12 + 24) = v13;
    v81 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v78 = sub_C3C64();
    v80 = v14;

    v15 = v76;
    v16 = v80;
    *v80 = v87;
    v16[1] = v15;

    v17 = v77;
    v18 = v80;
    v80[2] = v88;
    v18[3] = v17;

    v19 = v79;
    v20 = v80;
    v80[4] = v89;
    v20[5] = v19;
    sub_4E48();

    if (os_log_type_enabled(v82, v83))
    {
      v21 = v95;
      v62 = sub_C3954();
      v61 = sub_21E8(&qword_EE828, &qword_C5100);
      v63 = sub_5DD4(0, v61, v61);
      v64 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v65 = &v118;
      v118 = v62;
      v66 = &v117;
      v117 = v63;
      v67 = &v116;
      v116 = v64;
      sub_5E28(2, &v118);
      sub_5E28(1, v65);
      v114 = v87;
      v115 = v76;
      sub_5E3C(&v114, v65, v66, v67);
      v68 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v114 = v88;
        v115 = v77;
        sub_5E3C(&v114, &v118, &v117, &v116);
        v60 = 0;
        v114 = v89;
        v115 = v79;
        sub_5E3C(&v114, &v118, &v117, &v116);
        _os_log_impl(&dword_0, v82, v83, "Successfully donated variable state for %s", v62, 0xCu);
        sub_5E88(v63, 0, v61);
        sub_5E88(v64, 1, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v82);
    return (*(v108 + 8))(v113, v107);
  }
}

uint64_t sub_43D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a3;
  v4[10] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v5 = sub_C1D34();
  v4[13] = v5;
  v11 = *(v5 - 8);
  v4[14] = v11;
  v4[15] = *(v11 + 64);
  v4[16] = swift_task_alloc();
  v6 = sub_C3234();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_21E8(&qword_EF7E0, &unk_C5FB0);
  v4[22] = swift_task_alloc();
  v7 = sub_C2C64();
  v4[23] = v7;
  v12 = *(v7 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v8 = sub_C2CB4();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v9 = sub_C2CD4();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;

  return _swift_task_switch(sub_44124, 0);
}

uint64_t sub_44124()
{
  v89 = v0;
  *(v0 + 32) = v0;
  sub_C2CC4();
  v74 = v78[31];
  v73 = v78[30];
  v75 = v78[28];
  v72 = v78[29];
  sub_C2CA4();

  sub_C2C84();

  v76 = *(v72 + 8);
  v76(v73, v75);
  sub_C1D24();
  sub_C2C74();

  v76(v74, v75);
  v77 = sub_C2C94();
  v71 = v78[23];
  v70 = v78[22];
  v69 = v78[24];
  v76(v78[32], v78[28]);
  v78[8] = v77;
  v78[9] = v77;
  sub_21E8(&qword_EF7E8, &qword_C5FC0);
  sub_4A0A8();
  sub_C3444();
  if ((*(v69 + 48))(v70, 1, v71) == 1)
  {
    v4 = v78[20];
    v21 = v78[17];
    v25 = v78[16];
    v26 = v78[13];
    v23 = v78[10];
    v20 = v78[18];
    v22 = v78[14];
    sub_4A130(v78[22]);
    v5 = sub_BF704();
    (*(v20 + 16))(v4, v5, v21);
    (*(v22 + 16))(v25, v23, v26);
    v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v27 = swift_allocObject();
    (*(v22 + 32))(v27 + v24, v25, v26);
    log = sub_C3224();
    v34 = sub_C3874();
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2D6A0;
    *(v28 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_7BBC;
    *(v31 + 24) = v28;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    sub_C3C64();
    v32 = v6;

    *v32 = sub_7B48;
    v32[1] = v29;

    v32[2] = sub_7B48;
    v32[3] = v30;

    v32[4] = sub_7C08;
    v32[5] = v31;
    sub_4E48();

    if (os_log_type_enabled(log, v34))
    {
      v17 = sub_C3954();
      v16 = sub_21E8(&qword_EE828, &qword_C5100);
      v18 = sub_5DD4(0, v16, v16);
      v19 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v79 = v17;
      v80 = v18;
      v81 = v19;
      sub_5E28(2, &v79);
      sub_5E28(1, &v79);
      v82 = sub_7B48;
      v83 = v29;
      sub_5E3C(&v82, &v79, &v80, &v81);
      v82 = sub_7B48;
      v83 = v30;
      sub_5E3C(&v82, &v79, &v80, &v81);
      v82 = sub_7C08;
      v83 = v31;
      sub_5E3C(&v82, &v79, &v80, &v81);
      _os_log_impl(&dword_0, log, v34, "No previously donated variable state found for %s", v17, 0xCu);
      sub_5E88(v18, 0, v16);
      sub_5E88(v19, 1, &type metadata for Any + 8);
      sub_C3934();
    }

    else
    {
    }

    v13 = v78[35];
    v14 = v78[33];
    v10 = v78[20];
    v11 = v78[17];
    v12 = v78[34];
    v9 = v78[18];
    _objc_release(log);
    (*(v9 + 8))(v10, v11);
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v15 = sub_C3374();

    (*(v12 + 8))(v13, v14);
    v41 = v15;
  }

  else
  {
    v55 = v78[27];
    v58 = v78[26];
    v59 = v78[23];
    v1 = v78[21];
    v54 = v78[17];
    v56 = v78[24];
    v53 = v78[18];
    v60 = *(v56 + 32);
    v60();
    v2 = sub_BF704();
    (*(v53 + 16))(v1, v2, v54);
    (*(v56 + 16))(v58, v55, v59);
    v57 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v61 = swift_allocObject();
    (v60)(v61 + v57, v58, v59);
    oslog = sub_C3224();
    v68 = sub_C3874();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_4A448;
    *(v62 + 24) = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_4A544;
    *(v65 + 24) = v62;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    sub_C3C64();
    v66 = v3;

    *v66 = sub_7B48;
    v66[1] = v63;

    v66[2] = sub_7B48;
    v66[3] = v64;

    v66[4] = sub_4A590;
    v66[5] = v65;
    sub_4E48();

    if (os_log_type_enabled(oslog, v68))
    {
      buf = sub_C3954();
      v49 = sub_21E8(&qword_EE828, &qword_C5100);
      v51 = sub_5DD4(0, v49, v49);
      v52 = sub_5DD4(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v84 = buf;
      v85 = v51;
      v86 = v52;
      sub_5E28(0, &v84);
      sub_5E28(1, &v84);
      v87 = sub_7B48;
      v88 = v63;
      sub_5E3C(&v87, &v84, &v85, &v86);
      v87 = sub_7B48;
      v88 = v64;
      sub_5E3C(&v87, &v84, &v85, &v86);
      v87 = sub_4A590;
      v88 = v65;
      sub_5E3C(&v87, &v84, &v85, &v86);
      _os_log_impl(&dword_0, oslog, v68, "Retrieved donated state for %ld variable(s)", buf, 0xCu);
      sub_5E88(v51, 0, v49);
      sub_5E88(v52, 0, &type metadata for Any + 8);
      sub_C3934();
    }

    else
    {
    }

    v43 = v78[21];
    v44 = v78[17];
    v46 = v78[12];
    v45 = v78[11];
    v42 = v78[18];
    _objc_release(oslog);
    (*(v42 + 8))(v43, v44);
    v47 = sub_C2C34();
    v48 = sub_45A58(v47, v45, v46);
    v39 = v78[35];
    v40 = v78[33];
    v36 = v78[27];
    v37 = v78[23];
    v38 = v78[34];
    v35 = v78[24];

    (*(v35 + 8))(v36, v37);

    (*(v38 + 8))(v39, v40);
    v41 = v48;
  }

  v7 = *(v78[4] + 8);

  return v7(v41);
}

uint64_t sub_459F0(uint64_t a1)
{
  sub_C2C34();
  sub_C2D14();
  v2 = sub_C33A4();

  return v2;
}

uint64_t sub_45A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v28 = a2;
  v29 = a3;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v38 = __b;
  v40 = 40;
  memset(__b, 0, sizeof(__b));
  v45 = 0;
  v46 = 0;
  v36 = sub_C2D14();
  v24 = *(v36 - 8);
  v25 = v36 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v27 = v12 - v26;
  v52 = v12 - v26;
  v30 = (*(*(sub_21E8(&qword_EF800, &qword_C5FC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v31 = (v12 - v30);
  v32 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v33 = (v12 - v32);
  v51 = v5;
  v49 = v6;
  v50 = v7;
  v35 = &type metadata for String;
  v37 = &protocol witness table for String;
  v48 = sub_C3314();

  v39 = &v53;
  sub_C3354();
  v8 = v41;
  memcpy(v38, v39, v40);
  for (i = v8; ; i = v19)
  {
    v22 = i;
    sub_21E8(&qword_EF808, &qword_C5FD0);
    sub_C33D4();
    sub_4A67C(v31, v33);
    v23 = sub_21E8(&qword_EF810, &unk_C5FD8);
    if ((*(*(v23 - 8) + 48))(v33, 1) == 1)
    {
      sub_49790(__b);
      v13 = &v48;
      v14 = v48;

      sub_1D7C8(v13);
      return v14;
    }

    v17 = *v33;
    v18 = *(v33 + 1);
    v9 = v33 + *(v23 + 48);
    v45 = v17;
    v46 = v18;
    (*(v24 + 32))(v27, v9, v36);
    v10 = v22;

    sub_46D68(v27, v28, v29, &v44);
    v19 = v10;
    v20 = v18;
    v21 = v10;
    if (v10)
    {
      break;
    }

    v15 = v43;
    v43[0] = v17;
    v43[1] = v18;
    sub_21E8(&qword_EEFF8, &unk_C5AC0);
    sub_C33F4();
    (*(v24 + 8))(v27, v36);
  }

  v12[2] = v21;
  v12[1] = v20;

  (*(v24 + 8))(v27, v36);

  sub_49790(__b);
  sub_1D7C8(&v48);
  return v16;
}

uint64_t sub_45FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v107 = &v164;
  v117 = a3;
  v119 = a2;
  v118 = a1;
  v109 = a4;
  v114 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0u;
  v144 = 0u;
  v137 = 0uLL;
  v134 = 0;
  v133 = 0;
  v132[1] = 0;
  v132[0] = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v110 = sub_C3234();
  v111 = *(v110 - 8);
  v112 = v111;
  __chkstk_darwin(v110 - 8);
  v113 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v114);
  v116 = (v26 - v115);
  v120 = sub_C2D14();
  v121 = *(v120 - 8);
  v122 = v121;
  __chkstk_darwin(v118);
  v123 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = v6;
  v161 = v7;
  v162 = v8;
  v124 = v160;
  sub_9268(v6, v160);
  if (swift_dynamicCast())
  {
    v105 = v159;
    v106 = 0;
  }

  else
  {
    v105 = 0;
    v106 = 1;
  }

  v104 = v105;
  if (v106)
  {
    v101 = v158;
    sub_9268(v118, v158);
    if (swift_dynamicCast())
    {
      v99 = v157;
      v100 = 0;
    }

    else
    {
      v99 = 0;
      v100 = 1;
    }

    v98 = v99;
    if (v100)
    {
      v96 = v156;
      sub_9268(v118, v156);
      if (swift_dynamicCast())
      {
        v95 = v155[39];
      }

      else
      {
        v95 = 2;
      }

      v94 = v95;
      if (v95 == 2)
      {
        v92 = v155;
        sub_9268(v118, v155);
        if (swift_dynamicCast())
        {
          v90 = v154[4];
          v91 = v154[5];
        }

        else
        {
          v90 = 0;
          v91 = 0;
        }

        v88 = v91;
        v89 = v90;
        if (v91)
        {
          v86 = v89;
          v87 = v88;
          v85 = v88;
          v84 = v89;
          v128 = v89;
          v129 = v88;

          v13 = v109;
          v14 = v122;
          v15 = v85;
          *v109 = v84;
          v13[1] = v15;
          (*(v14 + 104))();

          result = v108;
          v102 = v108;
        }

        else
        {
          v82 = v154;
          sub_9268(v118, v154);
          v83 = sub_21E8(&qword_EF818, &qword_C5FE8);
          if (swift_dynamicCast())
          {
            v81 = v153[4];
          }

          else
          {
            v81 = 0;
          }

          v80 = v81;
          if (v81)
          {
            v79 = v80;
            v77 = v80;
            v134 = v80;
            v133 = sub_C3324();

            v131[4] = v77;
            sub_4A860();
            sub_C3824();
            for (i = v108; ; i = v71)
            {
              v76 = i;
              sub_21E8(&qword_EF830, &qword_C5FF0);
              sub_C3B44();
              if (!v131[3])
              {
                sub_1D7C8(v132);
                v70 = v133;

                v17 = v122;
                *v109 = v70;
                (*(v17 + 104))();
                sub_1D7C8(&v133);

                result = v76;
                v102 = v76;
                return result;
              }

              v72 = v76;
              v73 = v130;
              sub_49814(v131, v130);
              v16 = v72;
              sub_45FF4(v73, v119, v117, v123);
              v74 = v16;
              v75 = v16;
              if (v16)
              {
                break;
              }

              v71 = 0;
              sub_21E8(&qword_EF838, &qword_C5FF8);
              sub_C3724();
              sub_2560(v130);
            }

            v28 = v75;
            sub_2560(v130);
            sub_1D7C8(v132);
            sub_1D7C8(&v133);

            result = v28;
            v31 = v28;
          }

          else
          {
            v69 = v153;
            sub_9268(v118, v153);
            sub_21E8(&qword_EEFF8, &unk_C5AC0);
            if (swift_dynamicCast())
            {
              v68 = v152[1];
            }

            else
            {
              v68 = 0;
            }

            v67 = v68;
            if (v68)
            {
              v66 = v67;
              v62 = v67;
              v148 = v67;
              v63 = &type metadata for String;
              v64 = &protocol witness table for String;
              v147 = sub_C3314();

              sub_C3354();
              v18 = *v107;
              v19 = v107[1];
              v146 = v165;
              v145 = v19;
              v144 = v18;
              for (j = v108; ; j = v52)
              {
                v61 = j;
                sub_21E8(&qword_EF7D0, &qword_C5F98);
                sub_C33D4();
                v143[1] = v141;
                v143[0] = v140;
                v142 = v139;
                if (!*(&v139 + 1))
                {
                  sub_49790(&v144);
                  v51 = v147;

                  v21 = v122;
                  *v109 = v51;
                  (*(v21 + 104))();
                  sub_1D7C8(&v147);

                  result = v61;
                  v102 = v61;
                  return result;
                }

                v54 = v61;
                v55 = *(&v142 + 1);
                v57 = *(&v142 + 1);
                v53 = v142;
                v137 = v142;
                v56 = v138;
                sub_49814(v143, v138);
                v20 = v54;

                sub_45FF4(v56, v119, v117, v116);
                v58 = v20;
                v59 = v57;
                v60 = v20;
                if (v20)
                {
                  break;
                }

                v52 = 0;
                (*(v122 + 56))(v116, 0, 1, v120);
                v135 = v53;
                v136 = v57;
                sub_21E8(&qword_EF7D8, &qword_C5FA0);
                sub_C33F4();
                sub_2560(v138);
              }

              v27 = v60;
              v26[1] = v59;

              sub_2560(v138);

              sub_49790(&v144);
              sub_1D7C8(&v147);

              return v27;
            }

            else
            {
              v22 = v113;
              v23 = sub_BF704();
              (*(v112 + 16))(v22, v23, v110);
              v49 = sub_C3224();
              v46 = v49;
              v48 = sub_C3884();
              v47 = v48;
              sub_21E8(&unk_EEFA0, &unk_C50F0);
              v50 = sub_C3C64();
              if (os_log_type_enabled(v49, v48))
              {
                v45 = v108;
                v37 = sub_C3954();
                v33 = v37;
                v34 = sub_21E8(&qword_EE828, &qword_C5100);
                v35 = 0;
                v38 = sub_5DD4(0, v34, v34);
                v36 = v38;
                v39 = sub_5DD4(v35, &type metadata for Any + 8, &type metadata for Any + 8);
                v152[0] = v37;
                v151 = v38;
                v150 = v39;
                v40 = 0;
                v41 = v152;
                sub_5E28(0, v152);
                sub_5E28(v40, v41);
                v149 = v50;
                v42 = v26;
                __chkstk_darwin(v26);
                v43 = &v26[-6];
                v26[-4] = v24;
                v26[-3] = &v151;
                v26[-2] = &v150;
                v44 = sub_21E8(&unk_EEFB0, qword_C5110);
                sub_8128();
                v25 = v45;
                sub_C3654();
                if (v25)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_0, v46, v47, "Unable to convert [String: Any] to [String: JSONValue]", v33, 2u);
                  v32 = 0;
                  sub_5E88(v36, 0, v34);
                  sub_5E88(v39, v32, &type metadata for Any + 8);
                  sub_C3934();
                }
              }

              else
              {
              }

              (*(v112 + 8))(v113, v110);
              sub_4A7E4();
              v29 = 0;
              v30 = swift_allocError();
              swift_willThrow();
              result = v30;
              v31 = v30;
            }
          }
        }
      }

      else
      {
        v93 = v94;
        v12 = v122;
        v127 = v94 & 1;
        *v109 = v94 & 1;
        (*(v12 + 104))();
        result = v108;
        v102 = v108;
      }
    }

    else
    {
      v97 = v98;
      v11 = v122;
      v126 = v98;
      *v109 = v98;
      (*(v11 + 104))();
      result = v108;
      v102 = v108;
    }
  }

  else
  {
    v103 = v104;
    v9 = v122;
    v125 = v104;
    *v109 = v104;
    (*(v9 + 104))();
    result = v108;
    v102 = v108;
  }

  return result;
}

uint64_t sub_46D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a4;
  v124 = a1;
  v133 = a2;
  v134 = a3;
  v106 = sub_4A9B4;
  v107 = sub_4AA68;
  v108 = sub_7BBC;
  v109 = sub_7B48;
  v110 = sub_7B48;
  v111 = sub_7C08;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v163 = 0;
  v164 = 0;
  v157 = 0;
  v156 = 0;
  memset(__b, 0, sizeof(__b));
  v153 = 0;
  v154 = 0;
  v150 = 0;
  v149 = 0;
  v148[0] = 0;
  v148[1] = 0;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v121 = 0;
  v112 = sub_C3234();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112);
  v116 = v50 - v115;
  v4 = sub_21E8(&qword_EF800, &qword_C5FC8);
  v117 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v118 = (v50 - v117);
  v119 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50 - v117);
  v120 = (v50 - v119);
  v122 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v123 = v50 - v122;
  v139 = sub_C2D14();
  v137 = *(v139 - 8);
  v138 = v139 - 8;
  v125 = v137;
  v131 = *(v137 + 64);
  v126 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v139);
  v127 = v50 - v126;
  v128 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50 - v126);
  v129 = v50 - v128;
  v167 = v50 - v128;
  v130 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v132 = v50 - v130;
  v166 = v50 - v130;
  v8 = __chkstk_darwin(v7);
  v140 = v50 - v9;
  v165 = v10;
  v163 = v133;
  v164 = v134;
  v135 = *(v137 + 16);
  v136 = v137 + 16;
  v135(v8);
  v141 = (*(v137 + 88))(v140, v139);
  if (v141 == enum case for JSONValue.BOOL(_:))
  {
    (*(v137 + 96))(v140, v139);
    v16 = v104;
    result = v105;
    v17 = *v140;
    v144 = *v140 & 1;
    *(v104 + 24) = &type metadata for Bool;
    *v16 = v17;
    v103 = result;
  }

  else if (v141 == enum case for JSONValue.int(_:))
  {
    (*(v137 + 96))(v140, v139);
    v11 = v104;
    result = v105;
    v142 = *v140;
    v13 = v142;
    *(v104 + 24) = &type metadata for Int;
    *v11 = v13;
    v103 = result;
  }

  else if (v141 == enum case for JSONValue.double(_:))
  {
    (*(v137 + 96))(v140, v139);
    v14 = v104;
    result = v105;
    v143 = *v140;
    v15 = v143;
    *(v104 + 24) = &type metadata for Double;
    *v14 = v15;
    v103 = result;
  }

  else if (v141 == enum case for JSONValue.string(_:))
  {
    (*(v137 + 96))(v140, v139);
    v102 = *v140;
    v101 = *(v140 + 1);
    v145 = v102;
    v146 = v101;

    v18 = v101;
    v19 = v102;
    v20 = v104;
    *(v104 + 24) = &type metadata for String;
    *v20 = v19;
    v20[1] = v18;

    result = v105;
    v103 = v105;
  }

  else if (v141 == enum case for JSONValue.array(_:))
  {
    (*(v137 + 96))(v140, v139);
    v98 = *v140;
    v150 = v98;
    v149 = sub_C3324();

    v147[4] = v98;
    v99 = sub_21E8(&qword_EF838, &qword_C5FF8);
    sub_4AC1C();
    sub_C3824();
    for (i = v105; ; i = v95)
    {
      v97 = i;
      sub_21E8(&qword_EF850, qword_C6000);
      sub_C3B44();
      if ((*(v137 + 48))(v123, 1, v139) == 1)
      {
        sub_1D7C8(v148);
        v94 = &v149;
        v93 = v149;

        v22 = sub_21E8(&qword_EF818, &qword_C5FE8);
        v23 = v104;
        v24 = v93;
        v25 = v22;
        v26 = v94;
        *(v104 + 24) = v25;
        *v23 = v24;
        sub_1D7C8(v26);

        result = v97;
        v103 = v97;
        return result;
      }

      (*(v137 + 32))(v132, v123, v139);
      v21 = v97;
      sub_46D68(v132, v133, v134, v147);
      v95 = v21;
      v96 = v21;
      if (v21)
      {
        break;
      }

      sub_21E8(&qword_EF818, &qword_C5FE8);
      sub_C3724();
      (*(v137 + 8))(v132, v139);
    }

    v51 = v96;
    (*(v137 + 8))(v132, v139);
    sub_1D7C8(v148);
    sub_1D7C8(&v149);

    v53 = v51;
  }

  else if (v141 == enum case for JSONValue.object(_:))
  {
    (*(v137 + 96))(v140, v139);
    v88 = *v140;
    v157 = v88;
    v89 = &type metadata for String;
    v90 = &protocol witness table for String;
    v156 = sub_C3314();

    v91 = &v168;
    sub_C3354();
    memcpy(__b, v91, sizeof(__b));
    for (j = v105; ; j = v83)
    {
      v86 = j;
      sub_21E8(&qword_EF808, &qword_C5FD0);
      sub_C33D4();
      sub_4A67C(v118, v120);
      v87 = sub_21E8(&qword_EF810, &unk_C5FD8);
      if ((*(*(v87 - 8) + 48))(v120, 1) == 1)
      {
        sub_49790(__b);
        v79 = &v156;
        v78 = v156;

        v29 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
        v30 = v104;
        v31 = v78;
        v32 = v29;
        v33 = v79;
        *(v104 + 24) = v32;
        *v30 = v31;
        sub_1D7C8(v33);

        result = v86;
        v103 = v86;
        return result;
      }

      v81 = *v120;
      v82 = *(v120 + 1);
      v27 = v120 + *(v87 + 48);
      v153 = v81;
      v154 = v82;
      (*(v137 + 32))(v129, v27, v139);
      v28 = v86;

      sub_46D68(v129, v133, v134, v152);
      v83 = v28;
      v84 = v82;
      v85 = v28;
      if (v28)
      {
        break;
      }

      v80 = v151;
      v151[0] = v81;
      v151[1] = v82;
      sub_21E8(&qword_EEFF8, &unk_C5AC0);
      sub_C33F4();
      (*(v137 + 8))(v129, v139);
    }

    v50[1] = v85;
    v50[0] = v84;

    (*(v137 + 8))(v129, v139);

    sub_49790(__b);
    sub_1D7C8(&v156);
  }

  else
  {
    v34 = v116;
    v35 = sub_BF704();
    (*(v113 + 16))(v34, v35, v112);
    (v135)(v127, v124, v139);
    v63 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v67 = 7;
    v64 = swift_allocObject();
    (*(v137 + 32))(v64 + v63, v127, v139);

    v66 = 32;
    v36 = swift_allocObject();
    v37 = v64;
    v68 = v36;
    *(v36 + 16) = v106;
    *(v36 + 24) = v37;

    v76 = sub_C3224();
    v77 = sub_C3884();
    v65 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v38 = swift_allocObject();
    v39 = v68;
    v69 = v38;
    *(v38 + 16) = v107;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v69;
    v73 = v40;
    *(v40 + 16) = v108;
    *(v40 + 24) = v41;
    v75 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v72 = sub_C3C64();
    v74 = v42;

    v43 = v70;
    v44 = v74;
    *v74 = v109;
    v44[1] = v43;

    v45 = v71;
    v46 = v74;
    v74[2] = v110;
    v46[3] = v45;

    v47 = v73;
    v48 = v74;
    v74[4] = v111;
    v48[5] = v47;
    sub_4E48();

    if (os_log_type_enabled(v76, v77))
    {
      v56 = sub_C3954();
      v55 = sub_21E8(&qword_EE828, &qword_C5100);
      v57 = sub_5DD4(0, v55, v55);
      v58 = sub_5DD4(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v59 = &v162;
      v162 = v56;
      v60 = &v161;
      v161 = v57;
      v61 = &v160;
      v160 = v58;
      sub_5E28(2, &v162);
      sub_5E28(1, v59);
      v49 = v105;
      v158 = v109;
      v159 = v70;
      sub_5E3C(&v158, v59, v60, v61);
      v62 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v158 = v110;
        v159 = v71;
        sub_5E3C(&v158, &v162, &v161, &v160);
        v54 = 0;
        v158 = v111;
        v159 = v73;
        sub_5E3C(&v158, &v162, &v161, &v160);
        _os_log_impl(&dword_0, v76, v77, "Unable to convert [String: JSONValue] to [String: Any] for %s", v56, 0xCu);
        sub_5E88(v57, 0, v55);
        sub_5E88(v58, 1, &type metadata for Any + 8);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v76);
    (*(v113 + 8))(v116, v112);
    sub_4A7E4();
    v52 = swift_allocError();
    swift_willThrow();
    (*(v137 + 8))(v140, v139);
    result = v52;
    v53 = v52;
  }

  return result;
}

uint64_t sub_48128()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_C3564("SocialConversation", 0x12uLL, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_8224(&v4);
  return v3;
}

uint64_t sub_481A0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_421A0(a1, a2, v8, v9);
}

uint64_t sub_48274(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_48348;

  return sub_43D64(a1, a2, v8, v9);
}

uint64_t sub_48348(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_48478()
{
  result = sub_C3564("com.apple.siri.SocialConversation.variables", 0x2BuLL, 1);
  qword_F10E0 = result;
  qword_F10E8 = v1;
  return result;
}

uint64_t *sub_484BC()
{
  if (qword_EE570 != -1)
  {
    swift_once();
  }

  return &qword_F10E0;
}

uint64_t sub_4851C()
{
  v1 = *sub_484BC();

  return v1;
}

uint64_t sub_48588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a3;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return _swift_task_switch(sub_485E8, 0);
}

uint64_t sub_485E8()
{
  v1 = *(v0 + 64);
  v8 = v1;
  *(v0 + 16) = v0;
  _objc_retain(v1);
  if (v8)
  {
    v6 = v7[8];
    sub_48760(v7[7], v6);
    v5 = sub_C3484();

    sub_C1D24();
    v4 = sub_C3484();

    [v6 setObject:v5 forKey:v4];
    _objc_release(v4);
    swift_unknownObjectRelease();
    _objc_release(v6);
  }

  v2 = *(v7[2] + 8);

  return v2();
}

uint64_t sub_48760(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v30 = a2;
  v44 = 0;
  v43 = 0;
  v47 = 0;
  v48 = 0;
  v34 = 0;
  v31 = (*(*(sub_C34E4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v10 - v31;
  v44 = v2;
  v43 = v3;
  v49 = 0;
  v36 = objc_opt_self();

  isa = sub_C3334().super.isa;

  type metadata accessor for WritingOptions(v34);
  v35 = sub_C3C64();
  sub_8720();
  sub_C3A24();
  v42[0] = v49;
  v39 = [v36 dataWithJSONObject:isa options:v42[1] error:v42];
  v37 = v42[0];
  _objc_retain(v42[0]);
  v4 = v49;
  v49 = v37;
  _objc_release(v4);
  swift_unknownObjectRelease();
  if (v39)
  {
    v29 = v39;
    v24 = v39;
    v25 = sub_C1AF4();
    v26 = v5;
    _objc_release(v24);
    v27 = v25;
    v28 = v26;
  }

  else
  {
    v11 = v49;
    v12 = sub_C1A44();
    _objc_release(v11);
    swift_willThrow();

    v27 = 0;
    v28 = 0xF000000000000000;
  }

  v22 = v28;
  v23 = v27;
  if ((v28 & 0xF000000000000000) == 0xF000000000000000)
  {
    v16 = sub_C3564("", 0, 1);
    v17 = v8;
  }

  else
  {
    v20 = v23;
    v21 = v22;
    v19 = v22;
    v18 = v23;
    v47 = v23;
    v48 = v22;
    sub_C34D4();
    v45 = sub_C34B4();
    v46 = v6;
    if (v6)
    {
      v40 = v45;
      v41 = v46;
    }

    else
    {
      v40 = sub_C3564("", 0, 1);
      v41 = v7;
      if (v46)
      {
        sub_8224(&v45);
      }
    }

    v14 = v40;
    v15 = v41;
    sub_4AD20(v18, v19);
    v16 = v14;
    v17 = v15;
  }

  v13 = v17;
  return v16;
}

uint64_t sub_48B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return _swift_task_switch(sub_48BEC, 0);
}

uint64_t sub_48BEC()
{
  v1 = *(v0 + 80);
  v17 = v1;
  *(v0 + 32) = v0;
  _objc_retain(v1);
  if (v17)
  {
    v14 = v16[10];
    sub_C1D24();
    v13 = sub_C3484();

    v15 = [v14 stringForKey:v13];
    _objc_release(v13);
    _objc_release(v14);
    if (v15)
    {
      v9 = sub_C3494();
      v10 = v2;
      _objc_release(v15);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    v3 = v16[10];
    v16[2] = v7;
    v16[3] = v8;
    v16[8] = sub_48FB0(v7, v8, v3);
    if (v16[8])
    {
      v18 = v16[8];
    }

    else
    {
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v18 = sub_C3374();
      if (v16[8])
      {
        sub_1D7C8(v16 + 8);
      }
    }

    v6 = v18;
  }

  else
  {
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v6 = sub_C3374();
  }

  v4 = *(v16[4] + 8);

  return v4(v6);
}

uint64_t sub_48FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v28 = a3;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v48 = 0;
  v49 = 0;
  v40 = 0;
  v36 = sub_C34E4();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v29 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = &v9 - v29;
  v43 = v3;
  v44 = v4;
  v42 = v5;
  sub_C34C4();
  variable initialization expression of PlayWithMeData.initialized();
  v35 = sub_C34A4();
  v37 = v6;
  (*(v32 + 8))(v34, v36);
  if ((v37 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  v26 = v35;
  v27 = v37;
  v18 = v37;
  v19 = v35;
  v48 = v35;
  v49 = v37;
  v20 = 0;
  v47 = 0;
  v22 = objc_opt_self();
  sub_4AD9C(v19, v18);
  isa = sub_C1AD4().super.isa;
  sub_4AD20(v19, v18);
  type metadata accessor for ReadingOptions(v20);
  v21 = sub_C3C64();
  sub_8850();
  sub_C3A24();
  v41[0] = v47;
  v25 = [v22 JSONObjectWithData:isa options:v41[1] error:v41];
  v23 = v41[0];
  _objc_retain(v41[0]);
  v7 = v47;
  v47 = v23;
  _objc_release(v7);
  _objc_release(isa);
  if (!v25)
  {
    v10 = v47;
    v11 = sub_C1A44();
    _objc_release(v10);
    swift_willThrow();
    swift_errorRetain();
    v40 = v11;

    sub_4AD20(v19, v18);
    return 0;
  }

  v17 = v25;
  v15 = v25;
  v16 = &v46;
  sub_C3A14();
  sub_21E8(&qword_EEFF8, &unk_C5AC0);
  if (swift_dynamicCast())
  {
    v14 = v39;
  }

  else
  {
    v14 = 0;
  }

  v45 = v14;
  if (v14)
  {
    v38 = v45;
  }

  else
  {
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v38 = sub_C3374();
    if (v45)
    {
      sub_1D7C8(&v45);
    }
  }

  swift_unknownObjectRelease();
  v12 = v38;
  sub_4AD20(v19, v18);
  return v12;
}

uint64_t sub_494B0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_48588(a1, a2, v8);
}

uint64_t sub_49578(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_48348;

  return sub_48B84(a1, a2, v8);
}