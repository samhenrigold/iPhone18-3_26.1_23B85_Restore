uint64_t sub_100597ED4(char *a1, unint64_t *a2)
{
  v350 = a1;
  v351 = a2;
  v2 = type metadata accessor for DateComponents();
  v344 = *(v2 - 1);
  v345 = v2;
  __chkstk_darwin(v2);
  v326 = &v321 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v327 = &v321 - v5;
  __chkstk_darwin(v6);
  v324 = &v321 - v7;
  __chkstk_darwin(v8);
  v325 = &v321 - v9;
  v10 = type metadata accessor for TTRSection();
  v11 = *(v10 - 8);
  v342 = v10;
  v343 = v11;
  __chkstk_darwin(v10);
  v340 = &v321 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v341 = &v321 - v14;
  v15 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v16 = *(v15 - 8);
  v348 = v15;
  v349 = v16;
  __chkstk_darwin(v15);
  v328 = &v321 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v334 = &v321 - v19;
  __chkstk_darwin(v20);
  v329 = &v321 - v21;
  __chkstk_darwin(v22);
  v331 = &v321 - v23;
  __chkstk_darwin(v24);
  v330 = &v321 - v25;
  __chkstk_darwin(v26);
  v323 = &v321 - v27;
  __chkstk_darwin(v28);
  v322 = &v321 - v29;
  __chkstk_darwin(v30);
  v347 = &v321 - v31;
  __chkstk_darwin(v32);
  v333 = &v321 - v33;
  __chkstk_darwin(v34);
  v332 = &v321 - v35;
  __chkstk_darwin(v36);
  v321 = &v321 - v37;
  __chkstk_darwin(v38);
  v346 = &v321 - v39;
  __chkstk_darwin(v40);
  v42 = &v321 - v41;
  __chkstk_darwin(v43);
  v45 = &v321 - v44;
  v46 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v46);
  v338 = (&v321 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v337 = (&v321 - v49);
  __chkstk_darwin(v50);
  v339 = (&v321 - v51);
  __chkstk_darwin(v52);
  v336 = (&v321 - v53);
  __chkstk_darwin(v54);
  v335 = (&v321 - v55);
  __chkstk_darwin(v56);
  v58 = (&v321 - v57);
  __chkstk_darwin(v59);
  v61 = (&v321 - v60);
  __chkstk_darwin(v62);
  v64 = (&v321 - v63);
  __chkstk_darwin(v65);
  v67 = (&v321 - v66);
  v68 = sub_100058000(&qword_10078E3E0, &qword_1006472E8);
  __chkstk_darwin(v68 - 8);
  v70 = &v321 - v69;
  v72 = (&v321 + *(v71 + 56) - v69);
  sub_10059A648(v350, &v321 - v69, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v73 = v351;
  v351 = v72;
  v74 = v72;
  v75 = v70;
  sub_10059A648(v73, v74, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v94 = v346;
    v95 = v347;
    v344 = v42;
    v345 = v45;
    if (EnumCaseMultiPayload <= 1)
    {
      v96 = v349;
      if (EnumCaseMultiPayload)
      {
        v350 = v70;
        sub_10059A648(v70, v64, type metadata accessor for TTRRemindersListMovingRemindersParams);
        v186 = *v64;
        v187 = v64[1];
        v188 = *(sub_100058000(&qword_100776368, &unk_100636950) + 64);
        v189 = v351;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v347 = v187;
          v190 = *v189;
          v345 = v189[1];
          v191 = v189;
          v192 = *(v96 + 32);
          v193 = v348;
          v192(v94, v64 + v188, v348);
          v194 = v191 + v188;
          v195 = v321;
          v192(v321, v194, v193);
          v196 = sub_100126570(v186, v190);

          if (v196)
          {
            sub_100003540(0, &qword_100775690, NSObject_ptr);
            v197 = v347;
            v198 = v345;
            v199 = static NSObject.== infix(_:_:)();
            v176 = v350;
            if (v199)
            {
              sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
              sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
              v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

              v200 = *(v96 + 8);
              v201 = v348;
              v200(v195, v348);
              v200(v94, v201);
              sub_1005838CC(v176, type metadata accessor for TTRRemindersListMovingRemindersParams);
              return v92 & 1;
            }

            v300 = *(v96 + 8);
            v301 = v348;
            v300(v195, v348);
            v300(v94, v301);
            goto LABEL_94;
          }

          v283 = *(v96 + 8);
          v283(v195, v193);
          v283(v94, v193);
LABEL_76:
          v286 = v350;
          goto LABEL_109;
        }

        (*(v96 + 8))(v64 + v188, v348);

        v75 = v350;
LABEL_58:
        sub_1000079B4(v75, &qword_10078E3E0, &qword_1006472E8);
LABEL_110:
        v92 = 0;
        return v92 & 1;
      }

      sub_10059A648(v70, v67, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v97 = *v67;
      v98 = v67[1];
      v99 = sub_100058000(&qword_100776370, &unk_100642660);
      v100 = *(v99 + 64);
      v101 = *(v99 + 80);
      v102 = *(v67 + v101);
      v103 = v351;
      if (swift_getEnumCaseMultiPayload())
      {

        (*(v96 + 8))(v67 + v100, v348);
        goto LABEL_58;
      }

      v347 = v98;
      v350 = v70;
      v260 = *v103;
      v346 = v103[1];
      v343 = *(v103 + v101);
      v261 = *(v96 + 32);
      v262 = v348;
      v261(v345, v67 + v100, v348);
      v263 = v103 + v100;
      v264 = v344;
      v261(v344, v263, v262);
      v265 = sub_100126570(v97, v260);

      if ((v265 & 1) == 0)
      {

        v290 = *(v96 + 8);
        v290(v264, v262);
        v290(v345, v262);
        goto LABEL_76;
      }

      v266 = v343;
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      v268 = v346;
      v267 = v347;
      v269 = static NSObject.== infix(_:_:)();
      v130 = v350;
      if ((v269 & 1) == 0)
      {

        v305 = v348;
        v306 = *(v349 + 8);
        v306(v344, v348);
        v307 = v345;
LABEL_90:
        v306(v307, v305);
        goto LABEL_108;
      }

      v270 = v102;
      sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
      sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
      v271 = v344;
      v272 = v345;
      v273 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();
      v275 = v348;
      v274 = v349;
      if ((v273 & 1) == 0)
      {

        v313 = *(v274 + 8);
        v313(v271, v275);
        goto LABEL_99;
      }

      if (v270)
      {
        if (v266)
        {

          sub_10058B018(v270, v266);
          v277 = v276;

          swift_bridgeObjectRelease_n();
          v278 = *(v274 + 8);
          v278(v344, v275);
          v278(v272, v275);
          if ((v277 & 1) == 0)
          {
LABEL_108:
            v286 = v130;
            goto LABEL_109;
          }

LABEL_112:
          v316 = v130;
          goto LABEL_113;
        }

        v313 = *(v274 + 8);
        v313(v344, v275);
LABEL_99:
        v313(v272, v275);
        goto LABEL_108;
      }

      v317 = *(v274 + 8);
      v317(v344, v275);
      v317(v272, v275);
      if (!v266)
      {
        goto LABEL_112;
      }

LABEL_107:

      goto LABEL_108;
    }

    v104 = v349;
    if (EnumCaseMultiPayload != 2)
    {
      v350 = v70;
      sub_10059A648(v70, v58, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v202 = *v58;
      v136 = v58[1];
      v203 = *(sub_100058000(&qword_10076E908, &unk_100636940) + 64);
      v204 = v351;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v205 = *v204;
        v345 = v204[1];
        v346 = v136;
        v206 = v104;
        v207 = v204;
        v208 = *(v104 + 32);
        v209 = v348;
        v208(v95, v58 + v203, v348);
        v210 = v207 + v203;
        v211 = v322;
        v208(v322, v210, v209);
        v212 = sub_100126570(v202, v205);

        if ((v212 & 1) == 0)
        {

          v284 = *(v104 + 8);
          v284(v211, v209);
          v284(v95, v209);
          goto LABEL_76;
        }

        sub_100003540(0, &qword_100775690, NSObject_ptr);
        v214 = v345;
        v213 = v346;
        v215 = static NSObject.== infix(_:_:)();
        v150 = v350;
        if (v215)
        {
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
          v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

          v216 = *(v206 + 8);
          v217 = v211;
          v218 = v348;
          v216(v217, v348);
          v216(v95, v218);
          goto LABEL_39;
        }

        v302 = *(v206 + 8);
        v303 = v348;
        v302(v211, v348);
        v302(v95, v303);
LABEL_87:
        v286 = v150;
        goto LABEL_109;
      }

      (*(v104 + 8))(v58 + v203, v348);
LABEL_56:

      v75 = v350;
      goto LABEL_58;
    }

    sub_10059A648(v70, v61, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v105 = *v61;
    v106 = v61[1];
    v107 = sub_100058000(&qword_100773398, &unk_100634F70);
    v108 = *(v107 + 64);
    v109 = *(v107 + 80);
    v110 = *(v61 + v109);
    v111 = v351;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      (*(v104 + 8))(v61 + v108, v348);
      v75 = v70;
      goto LABEL_58;
    }

    v346 = v106;
    v347 = v110;
    v350 = v70;
    v112 = v104;
    v114 = *v111;
    v113 = v111[1];
    v344 = *(v111 + v109);
    v345 = v113;
    v115 = v112;
    v116 = *(v112 + 32);
    v117 = v332;
    v118 = v348;
    v116(v332, v61 + v108, v348);
    v119 = v111 + v108;
    v120 = v333;
    v116(v333, v119, v118);
    v121 = sub_100126570(v105, v114);

    if ((v121 & 1) == 0)
    {

      v282 = *(v115 + 8);
      v282(v120, v118);
      v282(v117, v118);
      goto LABEL_76;
    }

    v122 = v344;
    v123 = v346;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;
    v127 = v345;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v350;
    v131 = v347;
    if (v124 == v128 && v126 == v129)
    {

      v133 = v348;
      v132 = v349;
    }

    else
    {
      v294 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v133 = v348;
      v132 = v349;
      if ((v294 & 1) == 0)
      {

        v308 = *(v132 + 8);
        v308(v333, v133);
        v309 = v332;
        goto LABEL_96;
      }
    }

    sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
    v296 = v332;
    v295 = v333;
    if (static TTRRelativeInsertionPosition<A>.== infix(_:_:)())
    {
      if (!v131)
      {

        v314 = *(v132 + 8);
        v314(v333, v133);
        v314(v296, v133);
        if (!v122)
        {
          goto LABEL_112;
        }

        goto LABEL_107;
      }

      if (v122)
      {

        sub_10058B018(v131, v122);
        v298 = v297;

        swift_bridgeObjectRelease_n();
        v299 = *(v132 + 8);
        v299(v333, v133);
        v299(v296, v133);
        if ((v298 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_112;
      }

      v308 = *(v132 + 8);
      v308(v333, v133);
    }

    else
    {

      v308 = *(v132 + 8);
      v308(v295, v133);
    }

    v309 = v296;
LABEL_96:
    v308(v309, v133);
    goto LABEL_108;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v350 = v70;
      v134 = v335;
      sub_10059A648(v70, v335, type metadata accessor for TTRRemindersListMovingRemindersParams);
      v135 = *v134;
      v136 = v134[1];
      v137 = *(sub_100058000(&qword_100776360, &unk_100642650) + 64);
      v138 = v351;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v139 = *v138;
        v347 = v138[1];
        v140 = v349;
        v141 = *(v349 + 32);
        v142 = v134 + v137;
        v143 = v323;
        v144 = v348;
        v141(v323, v142, v348);
        v145 = v138 + v137;
        v146 = v330;
        v141(v330, v145, v144);
        v147 = sub_100126570(v135, v139);

        if ((v147 & 1) == 0)
        {

          v288 = *(v140 + 8);
          v288(v146, v144);
          v288(v143, v144);
          goto LABEL_76;
        }

        sub_100003540(0, &qword_100775690, NSObject_ptr);
        v148 = v347;
        v149 = static NSObject.== infix(_:_:)();
        v150 = v350;
        if (v149)
        {
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
          v151 = v330;
          v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

          v152 = *(v349 + 8);
          v152(v151, v144);
          v152(v143, v144);
LABEL_39:
          sub_1005838CC(v150, type metadata accessor for TTRRemindersListMovingRemindersParams);
          return v92 & 1;
        }

        v304 = *(v349 + 8);
        v304(v330, v144);
        v304(v143, v144);
        goto LABEL_87;
      }

      (*(v349 + 8))(v134 + v137, v348);
      goto LABEL_56;
    }

    v233 = v336;
    sub_10059A648(v70, v336, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v234 = *v233;
    v235 = v233[1];
    v236 = v233[2];
    v237 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
    v238 = v351;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v349 + 8))(v233 + v237, v348);

      v75 = v70;
      goto LABEL_58;
    }

    v346 = v236;
    v347 = v235;
    v350 = v70;
    v239 = *v238;
    v240 = v238[1];
    v345 = v238[2];
    v241 = v349;
    v242 = *(v349 + 32);
    v243 = v233 + v237;
    v244 = v331;
    v245 = v348;
    v242(v331, v243, v348);
    v246 = v238 + v237;
    v247 = v329;
    v242(v329, v246, v245);
    v248 = sub_100126570(v234, v239);

    if ((v248 & 1) == 0)
    {

      v289 = *(v241 + 8);
      v289(v247, v245);
      v289(v244, v245);
      goto LABEL_76;
    }

    v249 = v345;
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v250 = v347;
    v251 = static NSObject.== infix(_:_:)();
    v130 = v350;
    if (v251)
    {
      v252 = v346;
      v253 = static NSObject.== infix(_:_:)();
      v255 = v348;
      v254 = v349;
      v256 = v331;
      if (v253)
      {
        sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
        sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
        v257 = v252;
        v258 = v329;
        v92 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();

        v259 = *(v254 + 8);
        v259(v258, v255);
        v259(v256, v255);
        sub_1005838CC(v130, type metadata accessor for TTRRemindersListMovingRemindersParams);
        return v92 & 1;
      }

      v312 = *(v254 + 8);
      v312(v329, v255);
      v312(v256, v255);
      goto LABEL_108;
    }

    v305 = v348;
    v306 = *(v349 + 8);
    v306(v247, v348);
    v307 = v331;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v153 = v339;
    sub_10059A648(v70, v339, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v154 = *v153;
    v155 = sub_100058000(&qword_100773378, &qword_100634F50);
    v156 = v155[12];
    v157 = v155[16];
    v158 = v155[20];
    v159 = *(v153 + v158);
    v160 = v351;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v350 = v70;
      v161 = v153;
      v345 = *v160;
      v346 = *(v160 + v158);
      v347 = v159;
      v162 = *(v343 + 32);
      v163 = v153 + v156;
      v164 = v342;
      v162(v341, v163, v342);
      v165 = *(v349 + 32);
      v166 = v161 + v157;
      v167 = v348;
      v165(v334, v166, v348);
      v162(v340, v160 + v156, v164);
      v168 = v167;
      v169 = v160 + v157;
      v170 = v328;
      v165(v328, v169, v167);
      v171 = sub_100126570(v154, v345);

      if (v171)
      {
        v172 = v346;
        v174 = v340;
        v173 = v341;
        v175 = static TTRSection.== infix(_:_:)();
        v176 = v350;
        if (v175)
        {
          sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
          sub_1000072CC(&qword_10078E3E8, &qword_10076BB00, REMReminder_ptr, &protocol conformance descriptor for NSObject);
          v177 = v334;
          v178 = static TTRRelativeInsertionPosition<A>.== infix(_:_:)();
          v179 = v349;
          v180 = v170;
          v181 = v342;
          if (v178)
          {
            v182 = v343;
            if (v347)
            {
              if (v172)
              {

                sub_10058B018(v347, v172);
                LODWORD(v351) = v183;

                swift_bridgeObjectRelease_n();
                v184 = *(v179 + 8);
                v184(v328, v168);
                v185 = *(v182 + 8);
                v185(v174, v181);
                v184(v177, v168);
                v185(v173, v181);
                if (v351)
                {
                  goto LABEL_105;
                }
              }

              else
              {

                v319 = *(v179 + 8);
                v319(v328, v168);
                v320 = *(v182 + 8);
                v320(v174, v181);
                v319(v177, v168);
                v320(v173, v181);
              }
            }

            else
            {
              v351 = *(v349 + 8);
              (v351)(v328, v168);
              v315 = *(v182 + 8);
              v315(v174, v181);
              (v351)(v177, v168);
              v315(v173, v181);
              if (!v172)
              {
LABEL_105:
                v316 = v176;
LABEL_113:
                sub_1005838CC(v316, type metadata accessor for TTRRemindersListMovingRemindersParams);
                v92 = 1;
                return v92 & 1;
              }
            }
          }

          else
          {

            v310 = *(v179 + 8);
            v310(v180, v168);
            v311 = *(v343 + 8);
            v311(v174, v181);
            v310(v177, v168);
            v311(v173, v181);
          }
        }

        else
        {

          v291 = *(v349 + 8);
          v291(v170, v168);
          v292 = v342;
          v293 = *(v343 + 8);
          v293(v174, v342);
          v291(v334, v168);
          v293(v173, v292);
        }

LABEL_94:
        v286 = v176;
        goto LABEL_109;
      }

      v279 = *(v349 + 8);
      v279(v170, v167);
      v280 = v342;
      v281 = *(v343 + 8);
      v281(v340, v342);
      v279(v334, v167);
      v281(v341, v280);
      goto LABEL_76;
    }

    (*(v349 + 8))(v153 + v157, v348);
    (*(v343 + 8))(v153 + v156, v342);
    goto LABEL_58;
  }

  v77 = v351;
  if (EnumCaseMultiPayload != 7)
  {
    v219 = v338;
    sub_10059A648(v70, v338, type metadata accessor for TTRRemindersListMovingRemindersParams);
    v220 = *v219;
    v221 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
    v222 = swift_getEnumCaseMultiPayload();
    v223 = v344;
    if (v222 == 8)
    {
      v224 = *v77;
      v225 = *(v344 + 4);
      v226 = v219 + v221;
      v227 = v327;
      v228 = v345;
      v225(v327, v226, v345);
      v229 = v77 + v221;
      v230 = v326;
      v225(v326, v229, v228);
      v231 = sub_100126570(v220, v224);

      if (v231)
      {
        v92 = static DateComponents.== infix(_:_:)();
        v232 = *(v223 + 1);
        v232(v230, v228);
        v232(v227, v228);
        sub_1005838CC(v70, type metadata accessor for TTRRemindersListMovingRemindersParams);
        return v92 & 1;
      }

      v287 = *(v223 + 1);
      v287(v230, v228);
      v287(v227, v228);
      v286 = v70;
      goto LABEL_109;
    }

    (*(v344 + 1))(v219 + v221, v345);
    goto LABEL_54;
  }

  v78 = v337;
  sub_10059A648(v70, v337, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v79 = *v78;
  v80 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
  v81 = swift_getEnumCaseMultiPayload();
  v82 = v344;
  if (v81 != 7)
  {
    (*(v344 + 1))(v78 + v80, v345);
LABEL_54:

    goto LABEL_58;
  }

  v83 = v70;
  v84 = v78;
  v85 = *v77;
  v86 = *(v344 + 4);
  v87 = v325;
  v88 = v345;
  v86(v325, v84 + v80, v345);
  v89 = v77 + v80;
  v90 = v324;
  v86(v324, v89, v88);
  v91 = sub_100126570(v79, v85);

  if ((v91 & 1) == 0)
  {
    v285 = *(v82 + 1);
    v285(v90, v88);
    v285(v87, v88);
    v286 = v83;
LABEL_109:
    sub_1005838CC(v286, type metadata accessor for TTRRemindersListMovingRemindersParams);
    goto LABEL_110;
  }

  v92 = static DateComponents.== infix(_:_:)();
  v93 = *(v82 + 1);
  v93(v90, v88);
  v93(v87, v88);
  sub_1005838CC(v83, type metadata accessor for TTRRemindersListMovingRemindersParams);
  return v92 & 1;
}

void sub_100599F5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_1007823F8, &qword_10063E198);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_10058B518(v7, v1);
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
        type metadata accessor for REMObjectID_Codable();
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
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
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
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10059A228(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100058000(&qword_10076DB18, &unk_10063E2D0);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

id sub_10059A2BC(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_10058BD80(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_10059A3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10059A418(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059A488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059A4D0(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ListInfo() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  v5 = &v4[*(v3 + 64)];
  v6 = *v5;
  if (v5[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1[5];
  v9 = v1[6];
  sub_10000C36C(v1 + 2, v8);
  return (*(v9 + 8))(a1, v4, v7 | v6, v8, v9);
}

uint64_t sub_10059A5B4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10059A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10059A714(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v19 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      v19(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
  }
}

void sub_10059A870(uint64_t a1, uint64_t a2, int a3)
{
  v61 = a3;
  v60 = a1;
  v5 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v57 - v8;
  v9 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v9 - 8);
  v62 = &v57 - v10;
  v11 = type metadata accessor for TTRRemindersListUncommittedSection();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TTRRemindersListViewModel.Item();
  v58 = *(v69 - 8);
  __chkstk_darwin(v69);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_100058000(&qword_10078E0B8, &qword_100647098);
  __chkstk_darwin(v18 - 8);
  v20 = &v57 - v19;
  v21 = sub_100058000(&qword_10078E0C0, &unk_1006470A0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  v68 = v3;

  v28 = a2;
  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_10078E0B8, &qword_100647098);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003E30(v29, qword_10078D7D8);
    v31 = v63;
    v30 = v64;
    v32 = *(v64 + 16);
    v33 = v65;
    v32(v63, v28, v65);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v70 = v37;
      *v36 = 136315138;
      v32(v57, v31, v33);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (*(v30 + 8))(v31, v33);
      v41 = sub_100004060(v38, v40, &v70);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Cannot resolve SectionCreationLocation {location: %s}", v36, 0xCu);
      sub_100004758(v37);
    }

    else
    {

      (*(v30 + 8))(v31, v33);
    }
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    v42 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    (*(*(v42 - 8) + 16))(v17, v60, v42);
    v43 = v58;
    v44 = v69;
    (*(v58 + 104))(v17, enum case for TTRRemindersListViewModel.Item.section(_:), v69);
    (*(v22 + 16))(v24, v27, v21);
    (*(v43 + 16))(v14, v17, v44);
    v45 = v59;
    TTRRemindersListUncommittedSection.init(location:item:)();
    v46 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    v47 = v46;
    v48 = v61;
    if (v61)
    {
      v65 = *(v46 + 48);
      v49 = v62;
      v50 = v27;
      v51 = v43;
      TTRRemindersListUncommittedSection.item.getter();
      v52 = enum case for TTREditingStateOption.InputType.unspecified(_:);
      v53 = type metadata accessor for TTREditingStateOption.InputType();
      v54 = v52;
      v43 = v51;
      v27 = v50;
      v44 = v69;
      (*(*(v53 - 8) + 104))(&v49[v65], v54, v53);
      v55 = 0;
    }

    else
    {
      v55 = 1;
      v49 = v62;
    }

    v56 = (*(*(v47 - 8) + 56))(v49, v55, 1, v47);
    __chkstk_darwin(v56);
    *(&v57 - 2) = v45;
    sub_100581774(v49, v48 & 1, sub_10059C284, (&v57 - 4), v68);
    sub_1000079B4(v49, &qword_10076E0D0, &unk_100635D70);
    (*(v43 + 8))(v17, v44);
    (*(v22 + 8))(v27, v21);
    (*(v66 + 8))(v45, v67);
  }
}

uint64_t sub_10059B024(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = a7;
  v125 = a5;
  v126 = a4;
  v11 = sub_100058000(&qword_100770AA8, &unk_100633130);
  __chkstk_darwin(v11 - 8);
  v120 = &v111 - v12;
  v119 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v115 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v14 - 8);
  v128 = &v111 - v15;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v129 = *(updated - 8);
  __chkstk_darwin(updated);
  v127 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v111 - v18;
  v146 = type metadata accessor for TTRRemindersListViewModel.Item();
  v136 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v117 = &v111 - v21;
  v22 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v22 - 8);
  v131 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v116 = &v111 - v25;
  __chkstk_darwin(v26);
  v123 = &v111 - v27;
  __chkstk_darwin(v28);
  v141 = &v111 - v29;
  v133 = type metadata accessor for REMRemindersListDataView.Diff();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v113 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v139 = &v111 - v32;
  v145 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v114 = *(v145 - 1);
  __chkstk_darwin(v145);
  v143 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for TTRRemindersListLayout();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v140 = &v111 - v37;
  v38 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v38 - 8);
  v40 = &v111 - v39;
  if (a1)
  {
    *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 1;
  }

  sub_10056F540(a2);
  v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(a6 + v41, v40, &unk_10078A380, &qword_10062DE60);
  v42 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v43 = (*(*(v42 - 8) + 48))(v40, 1, v42);
  sub_1000079B4(v40, &unk_10078A380, &qword_10062DE60);
  if (v43 == 1)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_10078D7D8);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unexpected: a non-nil ListInfo should be set by the time the tree is updated.", v47, 2u);
    }
  }

  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v137 + 32))(v140, v35, v138);
  }

  else
  {
    (*(v137 + 104))(v140, enum case for TTRRemindersListLayout.list(_:), v138);
  }

  v48 = a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v49 = *(v48 + 8);
    ObjectType = swift_getObjectType();
    (*(v49 + 40))(v140, 0, 0, ObjectType, v49);
    swift_unknownObjectRelease();
  }

  v124 = v48;
  v51 = &_swiftEmptySetSingleton;
  v148 = &_swiftEmptySetSingleton;
  v52 = (a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  v53 = *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v135 = a3;
  v134 = (a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  if (v53)
  {
    v54 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v55 = *(a6 + v54);
    v56 = *(v55 + 16);
    if (v56)
    {
      v112 = v54;
      v121 = a6;
      v57 = *(v114 + 16);
      v58 = v55 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
      v59 = *(v114 + 72);
      v60 = (v114 + 8);
      v61 = (v136 + 8);
      v114 = v55;

      v62 = v144;
      do
      {
        v63 = v143;
        v64 = v145;
        v57(v143, v58, v145);
        TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
        (*v60)(v63, v64);
        v65 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        (*v61)(v62, v146);
        if (v65)
        {
          sub_10001DFB0(v147, v65);
        }

        v58 += v59;
        --v56;
      }

      while (v56);

      a6 = v121;
      v54 = v112;
      v51 = v148;
      v52 = v134;
    }

    *(a6 + v54) = _swiftEmptyArrayStorage;

    v66 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
    swift_beginAccess();
    *(a6 + v66) = &_swiftEmptyDictionarySingleton;
  }

  if ((v51 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }

  type metadata accessor for TTRRemindersListTreeViewModel();
  v67 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v68 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v147[3] = v67;
  v147[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v147[0] = v68;
  swift_beginAccess();

  sub_100585DF8();
  v69 = TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)();
  if (v52[1] == 1)
  {

    v71 = TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)();

    sub_10057D710(v71);
  }

  sub_10057AB60(v69, v70);
  v72 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v145 = v148;
  v73 = sub_10056F238(v148);
  sub_10059A2BC(v73, v72);

  if (_swiftEmptyArrayStorage >> 62)
  {
    v110 = _CocoaArrayWrapper.endIndex.getter();
    v76 = v123;
    if (v110)
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    v74 = v141;
    v75 = v136;
  }

  else
  {
    v74 = v141;
    v75 = v136;
    v76 = v123;
  }

  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v77 = v146;
  (*(v75 + 56))(v74, 1, 1, v146);
  sub_10000794C(v125, v76, &qword_100772140, &qword_10062D9F0);
  v144 = *(v75 + 48);
  if ((v144)(v76, 1, v77) == 1)
  {
    sub_1000079B4(v76, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    v78 = *(v75 + 32);
    v121 = a6;
    v79 = v117;
    v78(v117, v76, v77);
    v80 = v116;
    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
    a6 = v121;
    (*(v75 + 8))(v79, v146);
    sub_1000079B4(v74, &qword_100772140, &qword_10062D9F0);
    v77 = v146;
    sub_100016588(v80, v74, &qword_100772140, &qword_10062D9F0);
  }

  v81 = v131;
  if (v126)
  {
    v82 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
    v83 = v69;
  }

  else
  {
    v83 = v69;
    if (*v52 == 1)
    {
      v84 = a6;
      v85 = *(sub_100058000(&qword_10078E048, &qword_100646FF8) + 48);
      (*(v132 + 16))(v113, v139, v133);

      v86 = v142;
      v81 = v131;
      v77 = v146;
      TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
      v86[v85] = 1;
      a6 = v84;
      v82 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
    }

    else
    {
      v82 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
    }
  }

  v87 = v144;
  v88 = v129;
  v89 = updated;
  (*(v129 + 104))(v142, *v82, updated);
  sub_10000794C(v141, v81, &qword_100772140, &qword_10062D9F0);
  v90 = 1;
  LODWORD(v87) = v87(v81, 1, v77);
  v91 = sub_100058000(&unk_1007756F0, &unk_100631C00);
  v92 = v77;
  v93 = v91;
  v53 = v87 == 1;
  v94 = v128;
  if (!v53)
  {
    v95 = *(v91 + 48);
    (*(v136 + 32))(v128, v81, v92);
    v96 = enum case for TTREditingStateOption.InputType.unspecified(_:);
    v97 = type metadata accessor for TTREditingStateOption.InputType();
    (*(*(v97 - 8) + 104))(&v94[v95], v96, v97);
    v90 = 0;
  }

  (*(*(v93 - 8) + 56))(v94, v90, 1, v93);

  (*(v88 + 16))(v127, v142, v89);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v98 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(a6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree) = v83;

  v99 = v124;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v100 = *(v99 + 8);
    v101 = swift_getObjectType();
    (*(v100 + 72))(v98, v101, v100);
    swift_unknownObjectRelease();
  }

  v102 = *(REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter() + 16);

  v103 = v134;
  if (v102)
  {
    REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter();
    v104 = v120;
    sub_100587580(v120);

    if ((*(v118 + 48))(v104, 1, v119) == 1)
    {
      sub_1000079B4(v104, &qword_100770AA8, &unk_100633130);
    }

    else
    {
      v105 = v104;
      v106 = v115;
      sub_10059A3B0(v105, v115, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v107 = *(v99 + 8);
        v108 = swift_getObjectType();
        (*(v107 + 136))(v106, v108, v107);
        swift_unknownObjectRelease();
      }

      sub_1005838CC(v106, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    }
  }

  sub_10057C1B0(0);

  (*(v88 + 8))(v142, v89);
  sub_1000079B4(v141, &qword_100772140, &qword_10062D9F0);
  (*(v132 + 8))(v139, v133);
  result = (*(v137 + 8))(v140, v138);
  *v103 = 257;
  v103[2] = 0;
  return result;
}

BOOL sub_10059C2FC()
{
  v0 = *(TTRRemindersListTreeViewModel.delete(_:)() + 16);

  return v0 != 0;
}

char *sub_10059C3C4(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = *a2;
        *a1 = *a2;
        v16 = v15;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v11 = *a2;
        v12 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v12;
        v13 = v11;
        v14 = v12;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v9 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    v17 = *(a3 + 20);
    v18 = &a1[v17];
    v19 = (a2 + v17);
    v20 = v19[1];
    *v18 = *v19;
    *(v18 + 1) = v20;
  }

  return a1;
}

double sub_10059C544(uint64_t a1)
{
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v4 = *a1;
      goto LABEL_7;
    case 2:

      v4 = *(a1 + 8);
LABEL_7:

      break;
    case 1:
      v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v3 - 8) + 8))(a1, v3);
      break;
  }

  return result;
}

void **sub_10059C604(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      swift_storeEnumTagMultiPayload();
      break;
    case 2:
      v9 = *a2;
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = v9;
      v12 = v10;
      swift_storeEnumTagMultiPayload();
      break;
    case 1:
      v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

void **sub_10059C73C(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v13 = *a2;
        *a1 = *a2;
        v14 = v13;
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v9 = *a2;
        *a1 = *a2;
        v10 = a2[1];
        a1[1] = v10;
        v11 = v9;
        v12 = v10;
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

char *sub_10059C8AC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10059C97C(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    v6 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_10059CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10059CB5C(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v8 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = a3[7];
    v3[a3[6]] = a2[a3[6]];
    v3[v9] = a2[v9];
    v10 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    v3[v10] = a2[v10];
    v11 = a3[11];
    v3[a3[10]] = a2[a3[10]];
    v3[v11] = a2[v11];
    v12 = a3[13];
    v3[a3[12]] = a2[a3[12]];
    v3[v12] = a2[v12];
  }

  return v3;
}

uint64_t sub_10059CC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for TTRReminderListCompletionBehavior();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_10059CCDC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

_BYTE *sub_10059CDA8(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  a1[a3[12]] = a2[a3[12]];
  a1[a3[13]] = a2[a3[13]];
  return a1;
}

_BYTE *sub_10059CE84(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

_BYTE *sub_10059CF50(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRReminderListCompletionBehavior();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v11] = a2[v11];
  return a1;
}

uint64_t sub_10059D044(uint64_t a1)
{
  result = type metadata accessor for TTRReminderListCompletionBehavior();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10059D0F4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v15 = *(a2 + 1);
        *(a1 + 1) = v15;
        if (EnumCaseMultiPayload == 2)
        {

          v16 = v15;
          v17 = sub_100058000(&qword_100773398, &unk_100634F70);
          v18 = *(v17 + 64);
          v19 = sub_100058000(&unk_100775620, &unk_1006305B0);
          (*(*(v19 - 8) + 16))(&a1[v18], &a2[v18], v19);
          *&a1[*(v17 + 80)] = *&a2[*(v17 + 80)];
        }

        else
        {

          v32 = v15;
          v33 = *(sub_100058000(&qword_10076E908, &unk_100636940) + 64);
          v34 = sub_100058000(&unk_100775620, &unk_1006305B0);
          (*(*(v34 - 8) + 16))(&a1[v33], &a2[v33], v34);
        }
      }

      else
      {
        v10 = *(a2 + 1);
        *(a1 + 1) = v10;
        if (EnumCaseMultiPayload)
        {

          v29 = v10;
          v30 = *(sub_100058000(&qword_100776368, &unk_100636950) + 64);
          v31 = sub_100058000(&unk_100775620, &unk_1006305B0);
          (*(*(v31 - 8) + 16))(&a1[v30], &a2[v30], v31);
        }

        else
        {

          v11 = v10;
          v12 = sub_100058000(&qword_100776370, &unk_100642660);
          v13 = *(v12 + 64);
          v14 = sub_100058000(&unk_100775620, &unk_1006305B0);
          (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
          *&a1[*(v12 + 80)] = *&a2[*(v12 + 80)];
        }
      }
    }

    else if (EnumCaseMultiPayload <= 5)
    {
      v20 = *(a2 + 1);
      if (EnumCaseMultiPayload == 4)
      {
        *(a1 + 1) = v20;

        v21 = v20;
        v22 = *(sub_100058000(&qword_100776360, &unk_100642650) + 64);
      }

      else
      {
        v35 = *(a2 + 2);
        *(a1 + 1) = v20;
        *(a1 + 2) = v35;

        v36 = v20;
        v37 = v35;
        v22 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
      }

      v23 = sub_100058000(&unk_100775620, &unk_1006305B0);
      (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
    }

    else if (EnumCaseMultiPayload == 6)
    {

      v24 = sub_100058000(&qword_100773378, &qword_100634F50);
      v25 = v24[12];
      v26 = type metadata accessor for TTRSection();
      (*(*(v26 - 8) + 16))(&a1[v25], &a2[v25], v26);
      v27 = v24[16];
      v28 = sub_100058000(&unk_100775620, &unk_1006305B0);
      (*(*(v28 - 8) + 16))(&a1[v27], &a2[v27], v28);
      *&a1[v24[20]] = *&a2[v24[20]];
    }

    else
    {

      v7 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
      v8 = type metadata accessor for DateComponents();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_10059D694(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        v6 = &qword_10076E908;
        v7 = &unk_100636940;
        goto LABEL_23;
      }

      v8 = &qword_100773398;
      v9 = &unk_100634F70;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          return;
        }

        v6 = &qword_100776368;
        v7 = &unk_100636950;
        goto LABEL_23;
      }

      v8 = &qword_100776370;
      v9 = &unk_100642660;
    }

    v10 = *(sub_100058000(v8, v9) + 64);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {

      v4 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
LABEL_24:
      v5 = sub_100058000(&unk_100775620, &unk_1006305B0);
LABEL_25:
      v15 = *(*(v5 - 8) + 8);

      v15(a1 + v4, v5);
      return;
    }

    v6 = &qword_100776360;
    v7 = &unk_100642650;
LABEL_23:
    v4 = *(sub_100058000(v6, v7) + 64);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
    {
      return;
    }

    v4 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
    v5 = type metadata accessor for DateComponents();
    goto LABEL_25;
  }

  v11 = sub_100058000(&qword_100773378, &qword_100634F50);
  v12 = *(v11 + 48);
  v13 = type metadata accessor for TTRSection();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v10 = *(v11 + 64);
LABEL_19:
  v14 = sub_100058000(&unk_100775620, &unk_1006305B0);
  (*(*(v14 - 8) + 8))(a1 + v10, v14);
}

char *sub_10059D96C(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v25 = *(a2 + 1);
        *(a1 + 1) = v25;

        v26 = v25;
        v18 = &qword_10076E908;
        v19 = &unk_100636940;
        goto LABEL_17;
      }

      v12 = *(a2 + 1);
      *(a1 + 1) = v12;

      v13 = v12;
      v10 = &qword_100773398;
      v11 = &unk_100634F70;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v23 = *(a2 + 1);
        *(a1 + 1) = v23;

        v24 = v23;
        v18 = &qword_100776368;
        v19 = &unk_100636950;
        goto LABEL_17;
      }

      v8 = *(a2 + 1);
      *(a1 + 1) = v8;

      v9 = v8;
      v10 = &qword_100776370;
      v11 = &unk_100642660;
    }

    v14 = sub_100058000(v10, v11);
    v15 = v14[16];
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v27 = *(a2 + 1);
      v28 = *(a2 + 2);
      *(a1 + 1) = v27;
      *(a1 + 2) = v28;

      v29 = v27;
      v30 = v28;
      v6 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
      goto LABEL_19;
    }

    v16 = *(a2 + 1);
    *(a1 + 1) = v16;

    v17 = v16;
    v18 = &qword_100776360;
    v19 = &unk_100642650;
LABEL_17:
    v6 = *(sub_100058000(v18, v19) + 64);
LABEL_19:
    v7 = sub_100058000(&unk_100775620, &unk_1006305B0);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {

    v6 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
    v7 = type metadata accessor for DateComponents();
LABEL_20:
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    goto LABEL_21;
  }

  v14 = sub_100058000(&qword_100773378, &qword_100634F50);
  v20 = v14[12];
  v21 = type metadata accessor for TTRSection();
  (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
  v15 = v14[16];
LABEL_14:
  v22 = sub_100058000(&unk_100775620, &unk_1006305B0);
  (*(*(v22 - 8) + 16))(&a1[v15], &a2[v15], v22);
  *&a1[v14[20]] = *&a2[v14[20]];

LABEL_21:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_10059DC28(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListMovingRemindersParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {

          v6 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
          v7 = type metadata accessor for DateComponents();
LABEL_21:
          (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
          goto LABEL_22;
        }

        v14 = sub_100058000(&qword_100773378, &qword_100634F50);
        v20 = v14[12];
        v21 = type metadata accessor for TTRSection();
        (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
        v15 = v14[16];
LABEL_15:
        v22 = sub_100058000(&unk_100775620, &unk_1006305B0);
        (*(*(v22 - 8) + 16))(&a1[v15], &a2[v15], v22);
        *&a1[v14[20]] = *&a2[v14[20]];

LABEL_22:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        v27 = *(a2 + 1);
        *(a1 + 1) = v27;
        v28 = *(a2 + 2);
        *(a1 + 2) = v28;

        v29 = v27;
        v30 = v28;
        v6 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
        goto LABEL_20;
      }

      v16 = *(a2 + 1);
      *(a1 + 1) = v16;

      v17 = v16;
      v18 = &qword_100776360;
      v19 = &unk_100642650;
LABEL_18:
      v6 = *(sub_100058000(v18, v19) + 64);
LABEL_20:
      v7 = sub_100058000(&unk_100775620, &unk_1006305B0);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v25 = *(a2 + 1);
        *(a1 + 1) = v25;

        v26 = v25;
        v18 = &qword_10076E908;
        v19 = &unk_100636940;
        goto LABEL_18;
      }

      v12 = *(a2 + 1);
      *(a1 + 1) = v12;

      v13 = v12;
      v10 = &qword_100773398;
      v11 = &unk_100634F70;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v23 = *(a2 + 1);
        *(a1 + 1) = v23;

        v24 = v23;
        v18 = &qword_100776368;
        v19 = &unk_100636950;
        goto LABEL_18;
      }

      v8 = *(a2 + 1);
      *(a1 + 1) = v8;

      v9 = v8;
      v10 = &qword_100776370;
      v11 = &unk_100642660;
    }

    v14 = sub_100058000(v10, v11);
    v15 = v14[16];
    goto LABEL_15;
  }

  return a1;
}

void *sub_10059DF30(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        a1[1] = a2[1];
        v12 = &qword_10076E908;
        v13 = &unk_100636940;
        goto LABEL_17;
      }

      a1[1] = a2[1];
      v8 = &qword_100773398;
      v9 = &unk_100634F70;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        a1[1] = a2[1];
        v12 = &qword_100776368;
        v13 = &unk_100636950;
        goto LABEL_17;
      }

      a1[1] = a2[1];
      v8 = &qword_100776370;
      v9 = &unk_100642660;
    }

    v10 = sub_100058000(v8, v9);
    v11 = v10[16];
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *(a1 + 1) = *(a2 + 1);
      v6 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
      goto LABEL_19;
    }

    a1[1] = a2[1];
    v12 = &qword_100776360;
    v13 = &unk_100642650;
LABEL_17:
    v6 = *(sub_100058000(v12, v13) + 64);
LABEL_19:
    v7 = sub_100058000(&unk_100775620, &unk_1006305B0);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v6 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
    v7 = type metadata accessor for DateComponents();
LABEL_20:
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    goto LABEL_21;
  }

  v10 = sub_100058000(&qword_100773378, &qword_100634F50);
  v14 = v10[12];
  v15 = type metadata accessor for TTRSection();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  v11 = v10[16];
LABEL_14:
  v16 = sub_100058000(&unk_100775620, &unk_1006305B0);
  (*(*(v16 - 8) + 32))(a1 + v11, a2 + v11, v16);
  *(a1 + v10[20]) = *(a2 + v10[20]);
LABEL_21:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10059E1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListMovingRemindersParams);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          v6 = *(sub_100058000(&qword_100776350, &unk_100636920) + 48);
          v7 = type metadata accessor for DateComponents();
LABEL_21:
          (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
          goto LABEL_22;
        }

        v10 = sub_100058000(&qword_100773378, &qword_100634F50);
        v14 = v10[12];
        v15 = type metadata accessor for TTRSection();
        (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
        v11 = v10[16];
LABEL_15:
        v16 = sub_100058000(&unk_100775620, &unk_1006305B0);
        (*(*(v16 - 8) + 32))(a1 + v11, a2 + v11, v16);
        *(a1 + v10[20]) = *(a2 + v10[20]);
LABEL_22:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(a2 + 8);
        v6 = *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
        goto LABEL_20;
      }

      *(a1 + 8) = *(a2 + 8);
      v12 = &qword_100776360;
      v13 = &unk_100642650;
LABEL_18:
      v6 = *(sub_100058000(v12, v13) + 64);
LABEL_20:
      v7 = sub_100058000(&unk_100775620, &unk_1006305B0);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        *(a1 + 8) = *(a2 + 8);
        v12 = &qword_10076E908;
        v13 = &unk_100636940;
        goto LABEL_18;
      }

      *(a1 + 8) = *(a2 + 8);
      v8 = &qword_100773398;
      v9 = &unk_100634F70;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        *(a1 + 8) = *(a2 + 8);
        v12 = &qword_100776368;
        v13 = &unk_100636950;
        goto LABEL_18;
      }

      *(a1 + 8) = *(a2 + 8);
      v8 = &qword_100776370;
      v9 = &unk_100642660;
    }

    v10 = sub_100058000(v8, v9);
    v11 = v10[16];
    goto LABEL_15;
  }

  return a1;
}

void sub_10059E44C(uint64_t a1)
{
  v15 = &value witness table for Builtin.BridgeObject + 64;
  v16 = &value witness table for Builtin.UnknownObject + 64;
  sub_10059E698(319);
  if (v2 <= 0x3F)
  {
    v3 = *(v1 - 8) + 64;
    swift_getTupleTypeLayout();
    v20 = &v19;
    swift_getTupleTypeLayout3();
    v21 = &v14;
    v15 = &value witness table for Builtin.BridgeObject + 64;
    v16 = &unk_100646E30;
    v17 = v3;
    v18 = "\b";
    swift_getTupleTypeLayout();
    v22 = &v13;
    swift_getTupleTypeLayout3();
    v23 = &v12;
    swift_getTupleTypeLayout3();
    v24 = &v11;
    v15 = &value witness table for Builtin.BridgeObject + 64;
    v16 = &value witness table for Builtin.UnknownObject + 64;
    v17 = &value witness table for Builtin.UnknownObject + 64;
    v18 = v3;
    swift_getTupleTypeLayout();
    v25 = &v10;
    v15 = &value witness table for Builtin.BridgeObject + 64;
    v4 = type metadata accessor for TTRSection();
    if (v5 <= 0x3F)
    {
      v16 = (*(v4 - 8) + 64);
      v17 = v3;
      v18 = "\b";
      swift_getTupleTypeLayout();
      v26 = &v9;
      type metadata accessor for DateComponents();
      if (v6 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v27 = &v8;
        swift_getTupleTypeLayout2();
        v28 = &v7;
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

void sub_10059E698(uint64_t a1)
{
  if (!qword_10078E300)
  {
    sub_100003540(255, &qword_10076BB00, REMReminder_ptr);
    v1 = type metadata accessor for TTRRelativeInsertionPosition();
    if (!v2)
    {
      atomic_store(v1, &qword_10078E300);
    }
  }
}

char *sub_10059E700(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v4 + 16) & ~v4];

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_9;
    case 2:
      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
      goto LABEL_9;
    case 0:
      v8 = type metadata accessor for DateComponents();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v14 = *(v5 + 64);

  return memcpy(a1, a2, v14);
}

void sub_10059E884(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v4 = type metadata accessor for REMHashtagLabelSpecifier();
LABEL_9:
    v6 = *(*(v4 - 8) + 8);

    v6(a1, v4);
    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    v4 = type metadata accessor for DateComponents();
    goto LABEL_9;
  }

  v5 = *a1;
}

void **sub_10059E938(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v10 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_7;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      goto LABEL_7;
    case 0:
      v7 = type metadata accessor for DateComponents();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void **sub_10059EA7C(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v10 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_8;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      goto LABEL_8;
    case 0:
      v7 = type metadata accessor for DateComponents();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_10059EC04(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DateComponents();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10059ED24(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DateComponents();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_10059EE68(uint64_t a1)
{
  result = type metadata accessor for DateComponents();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for REMHashtagLabelSpecifier();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10059EF58()
{
  result = qword_10078E3D8;
  if (!qword_10078E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078E3D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListEditingInteractionOptions.IOS(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10059F070()
{
  result = qword_10078E3F8[0];
  if (!qword_10078E3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10078E3F8);
  }

  return result;
}

uint64_t sub_10059F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRITreeViewNode(0, *(v4 + 80), *(v4 + 88), a4);
  v9 = static Array._allocateUninitialized(_:)();
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  swift_allocObject();
  v7 = sub_10059F4E4(&v9, v5, WitnessTable);

  return v7;
}

uint64_t *sub_10059F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a3;
  v21 = a2;
  v19 = a1;
  v5 = *v3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  swift_beginAccess();
  v22 = v4[2];
  type metadata accessor for TTRITreeViewNode(255, v10, *(v5 + 88), v15);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    (*(v11 + 16))(v14, v19, v10);
    (*(v7 + 16))(v9, v20, v6);
    v16 = v21;

    v17 = sub_10023D440(v14, v16, v9);
  }

  else
  {
    swift_beginAccess();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    swift_endAccess();
    v17 = v23;

    sub_10023C47C(v19, v21, v20);
  }

  return v17;
}

uint64_t sub_10059F494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v18 - v9;
  v11 = *(a2 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + 16);
  v16(v15, a1, a2, v13);
  *(v4 + 16) = Sequence.reversed()();
  (v16)(v15, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v18[1])
    {
      break;
    }

    sub_10023C3E0();
  }

  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v4;
}

uint64_t sub_10059F6F0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v1 - 8);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v3 - 8);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v5 - 8);
  v33 = v30 - v6;
  v7 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v7 - 8);
  v32 = v30 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v13 - 8);
  v15 = v30 - v14;
  v16 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v16 - 8);
  v18 = (v30 - v17);
  swift_getObjectType();
  v19 = dispatch thunk of TTRShowRecentlyDeletedDataModelSourceType.account.getter();
  v20 = [v19 objectID];

  *v18 = v20;
  v21 = enum case for TTRListType.recentlyDeletedList(_:);
  v22 = type metadata accessor for TTRListType();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v18, v21, v22);
  (*(v23 + 56))(v18, 0, 1, v22);
  v31 = v20;
  v30[1] = static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter();
  type metadata accessor for TTRListColors();
  static TTRListColors.recentlyDeleted.getter();
  v24 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  (*(v10 + 104))(v12, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v9);
  v25 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v26 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  v27 = v36;
  TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

  v28 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_10059FC48@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  v4 = enum case for TTRReminderListCompletionBehavior.requireConfirmationForRecoverReminders(_:);
  v5 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v5 - 8) + 104))(&a1[v3], v4, v5);
  *a1 = 2;
  a1[v2[6]] = 0;
  a1[v2[7]] = 1;
  a1[v2[8]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 1;
  a1[v2[11]] = 1;
  a1[v2[12]] = 1;
  a1[v2[13]] = 0;
  return result;
}

uint64_t sub_10059FD18()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380, &qword_10062DE60);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

double sub_10059FEA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_1005A0064();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1005A0064()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072F2A8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1005A0100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1005A0064();
  sub_1004B7628(a1, a2, a3);

  return result;
}

double sub_1005A015C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1005A0064();
  sub_1004B7834(a1, a2);

  return result;
}

double sub_1005A01B0()
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1005A0200()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowRecentlyDeletedViewModelSource(uint64_t a1)
{
  result = qword_10078E4C8;
  if (!qword_10078E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A0354(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v42 = v38 - v3;
  v4 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v4 - 8);
  v40 = v38 - v5;
  v39 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v38[0] = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  __chkstk_darwin(v8 - 8);
  v38[1] = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v41 = v38 - v11;
  v12 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v16 - 8);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v38 - v20;
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  sub_10000794C(v21, v18, &qword_100769378, &qword_10062DE80);
  v22 = (*(v13 + 48))(v18, 1, v12);
  v23 = 0;
  v24 = 0;
  if (v22 != 1)
  {
    (*(v13 + 32))(v15, v18, v12);
    v23 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v24 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v13 + 8))(v15, v12);
  }

  sub_1000079B4(v21, &qword_100769378, &qword_10062DE80);
  v25 = v44;
  v26 = v44 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_remindersCount;
  *v26 = v23;
  *(v26 + 8) = v24;
  *(v26 + 16) = v22 == 1;
  v27 = v41;
  sub_10059F6F0(v41);
  REMRemindersListDataView.FlatModel.reminders.getter();
  sub_100058000(&qword_100770900, &qword_100632FD0);
  type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D400;
  v29 = enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:);
  v30 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v30 - 8) + 104))(v7, v29, v30);
  (*(v38[0] + 104))(v7, enum case for TTRRemindersListViewModel.SectionID.named(_:), v39);
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  v32 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v33 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v35 = v42;
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  v46[3] = v32;
  v46[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v46[0] = v33;
  sub_10000B0D8(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  sub_100005FD0(v45, v36 + 24);
  *(v36 + 64) = v25;

  sub_100586238(1, v27, sub_100070528, v36, v43, 0, v35);

  sub_1000079B4(v35, &qword_100772140, &qword_10062D9F0);
  sub_1000079B4(v27, &unk_10078A380, &qword_10062DE60);

  return sub_100004758(v46);
}

unint64_t sub_1005A09F0()
{
  result = qword_10078EA40;
  if (!qword_10078EA40)
  {
    type metadata accessor for TTRShowRecentlyDeletedViewModelSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EA40);
  }

  return result;
}

void *sub_1005A0A48()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_1005A0CC8()
{
  result = qword_100772610;
  if (!qword_100772610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100772610);
  }

  return result;
}

char *sub_1005A0D14(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v33 = *a2;
    *v4 = *a2;
    v4 = (v33 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = a2[1];
    v8 = a2[2];
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    v9 = a2[3];
    *(a1 + 24) = v9;
    v10 = a3[10];
    v11 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
    v12 = *(*(v11 - 8) + 16);
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v12(&v4[v10], a2 + v10, v11);
    v16 = a3[11];
    v17 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
    (*(*(v17 - 8) + 16))(&v4[v16], a2 + v16, v17);
    v18 = a3[12];
    v19 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
    (*(*(v19 - 8) + 16))(&v4[v18], a2 + v18, v19);
    v20 = a3[13];
    v21 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
    (*(*(v21 - 8) + 16))(&v4[v20], a2 + v20, v21);
    v22 = a3[14];
    v23 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
    (*(*(v23 - 8) + 16))(&v4[v22], a2 + v22, v23);
    v24 = a3[15];
    v25 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
    (*(*(v25 - 8) + 16))(&v4[v24], a2 + v24, v25);
    v26 = a3[16];
    v27 = &v4[v26];
    v28 = a2 + v26;
    *&v4[v26] = *(a2 + v26);
    v29 = &v4[v26 + 8];
    v31 = (a2 + v26 + 8);
    v30 = *v31;

    if (v30)
    {
      v32 = *(v28 + 2);
      *(v27 + 1) = v30;
      *(v27 + 2) = v32;
    }

    else
    {
      *v29 = *v31;
    }

    v34 = a3[17];
    v35 = sub_100058000(&qword_100778F58, &qword_100642AA0);
    (*(*(v35 - 8) + 16))(&v4[v34], a2 + v34, v35);
    v36 = a3[18];
    v37 = sub_100058000(&qword_100778F48, &qword_100638938);
    (*(*(v37 - 8) + 16))(&v4[v36], a2 + v36, v37);
    v38 = a3[19];
    v39 = a3[20];
    v72 = *(a2 + v38);
    *&v4[v38] = v72;
    v40 = &v4[v39];
    v41 = (a2 + v39);
    v42 = v41[1];
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = a3[22];
    v4[a3[21]] = *(a2 + a3[21]);
    v44 = &v4[v43];
    v45 = (a2 + v43);
    v46 = v45[1];
    *v44 = *v45;
    *(v44 + 1) = v46;
    v47 = a3[23];
    v48 = a3[24];
    v49 = &v4[v47];
    v50 = (a2 + v47);
    v51 = v50[1];
    *v49 = *v50;
    *(v49 + 1) = v51;
    v52 = *(a2 + v48);
    *&v4[v48] = v52;
    v53 = a3[25];
    v54 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
    v71 = *(*(v54 - 8) + 16);
    v55 = v72;

    v56 = v52;
    v71(&v4[v53], a2 + v53, v54);
    v57 = a3[26];
    v58 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
    (*(*(v58 - 8) + 16))(&v4[v57], a2 + v57, v58);
    v59 = a3[27];
    v60 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
    (*(*(v60 - 8) + 16))(&v4[v59], a2 + v59, v60);
    v61 = a3[28];
    v62 = &v4[v61];
    v63 = a2 + v61;
    v64 = sub_100058000(&qword_100778EB0, &qword_100638730);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64))
    {
      v66 = sub_100058000(&qword_100778F00, &qword_100642B40);
      memcpy(v62, v63, *(*(v66 - 8) + 64));
    }

    else
    {
      (*(v65 + 16))(v62, v63, v64);
      (*(v65 + 56))(v62, 0, 1, v64);
    }

    v67 = sub_100058000(&qword_100778F70, &unk_100642B10);
    v68 = *(v67 + 28);
    v69 = sub_100058000(&qword_100778F80, &unk_100649010);
    (*(*(v69 - 8) + 16))(&v62[v68], &v63[v68], v69);
    v62[*(v67 + 32)] = v63[*(v67 + 32)];
  }

  return v4;
}

uint64_t sub_1005A12DC(id *a1, int *a2)
{
  v4 = a2[10];
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[11];
  v7 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[12];
  v9 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = a2[13];
  v11 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[14];
  v13 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[15];
  v15 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);
  v16 = a1 + a2[16];

  if (*(v16 + 1))
  {
  }

  v17 = a2[17];
  v18 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  (*(*(v18 - 8) + 8))(a1 + v17, v18);
  v19 = a2[18];
  v20 = sub_100058000(&qword_100778F48, &qword_100638938);
  (*(*(v20 - 8) + 8))(a1 + v19, v20);

  v21 = a2[25];
  v22 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v22 - 8) + 8))(a1 + v21, v22);
  v23 = a2[26];
  v24 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v24 - 8) + 8))(a1 + v23, v24);
  v25 = a2[27];
  v26 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v26 - 8) + 8))(a1 + v25, v26);
  v27 = a1 + a2[28];
  v28 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *(sub_100058000(&qword_100778F70, &unk_100642B10) + 28);
  v31 = sub_100058000(&qword_100778F80, &unk_100649010);
  v32 = *(*(v31 - 8) + 8);

  return v32(&v27[v30], v31);
}

uint64_t sub_1005A1720(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = a3[10];
  v10 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v11 = *(*(v10 - 8) + 16);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v11(a1 + v9, a2 + v9, v10);
  v15 = a3[11];
  v16 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
  v17 = a3[12];
  v18 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
  v19 = a3[13];
  v20 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
  v21 = a3[14];
  v22 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
  v23 = a3[15];
  v24 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
  v25 = a3[16];
  v26 = a1 + v25;
  v27 = a2 + v25;
  *(a1 + v25) = *(a2 + v25);
  v28 = (a1 + v25 + 8);
  v30 = (a2 + v25 + 8);
  v29 = *v30;

  if (v29)
  {
    v31 = *(v27 + 16);
    *(v26 + 8) = v29;
    *(v26 + 16) = v31;
  }

  else
  {
    *v28 = *v30;
  }

  v32 = a3[17];
  v33 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  (*(*(v33 - 8) + 16))(a1 + v32, a2 + v32, v33);
  v34 = a3[18];
  v35 = sub_100058000(&qword_100778F48, &qword_100638938);
  (*(*(v35 - 8) + 16))(a1 + v34, a2 + v34, v35);
  v36 = a3[19];
  v37 = a3[20];
  v70 = *(a2 + v36);
  *(a1 + v36) = v70;
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  v42 = (a1 + v41);
  v43 = (a2 + v41);
  v44 = v43[1];
  *v42 = *v43;
  v42[1] = v44;
  v45 = a3[23];
  v46 = a3[24];
  v47 = (a1 + v45);
  v48 = (a2 + v45);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  v50 = *(a2 + v46);
  *(a1 + v46) = v50;
  v51 = a3[25];
  v52 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v69 = *(*(v52 - 8) + 16);
  v53 = v70;

  v54 = v50;
  v69(a1 + v51, a2 + v51, v52);
  v55 = a3[26];
  v56 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
  v57 = a3[27];
  v58 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
  v59 = a3[28];
  v60 = (a1 + v59);
  v61 = (a2 + v59);
  v62 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v61, 1, v62))
  {
    v64 = sub_100058000(&qword_100778F00, &qword_100642B40);
    memcpy(v60, v61, *(*(v64 - 8) + 64));
  }

  else
  {
    (*(v63 + 16))(v60, v61, v62);
    (*(v63 + 56))(v60, 0, 1, v62);
  }

  v65 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v66 = *(v65 + 28);
  v67 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v67 - 8) + 16))(&v60[v66], &v61[v66], v67);
  v60[*(v65 + 32)] = v61[*(v65 + 32)];
  return a1;
}

uint64_t sub_1005A1C9C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  *(a1 + 8) = v7;
  v8 = v7;

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  *(a1 + 16) = v10;
  v11 = v10;

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  *(a1 + 24) = v13;
  v14 = v13;

  v15 = a3[10];
  v16 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = a3[11];
  v18 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v18 - 8) + 24))(a1 + v17, a2 + v17, v18);
  v19 = a3[12];
  v20 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v20 - 8) + 24))(a1 + v19, a2 + v19, v20);
  v21 = a3[13];
  v22 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v22 - 8) + 24))(a1 + v21, a2 + v21, v22);
  v23 = a3[14];
  v24 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
  v25 = a3[15];
  v26 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v26 - 8) + 24))(a1 + v25, a2 + v25, v26);
  v27 = a3[16];
  v28 = a1 + v27;
  v29 = a2 + v27;
  *(a1 + v27) = *(a2 + v27);

  v30 = *(v29 + 8);
  if (*(v28 + 8))
  {
    if (v30)
    {
      v31 = *(v29 + 16);
      *(v28 + 8) = v30;
      *(v28 + 16) = v31;

      goto LABEL_8;
    }
  }

  else if (v30)
  {
    v32 = *(v29 + 16);
    *(v28 + 8) = v30;
    *(v28 + 16) = v32;

    goto LABEL_8;
  }

  *(v28 + 8) = *(v29 + 8);
LABEL_8:
  v33 = a3[17];
  v34 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  (*(*(v34 - 8) + 24))(a1 + v33, a2 + v33, v34);
  v35 = a3[18];
  v36 = sub_100058000(&qword_100778F48, &qword_100638938);
  (*(*(v36 - 8) + 24))(a1 + v35, a2 + v35, v36);
  v37 = a3[19];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  *(a1 + v37) = v39;
  v40 = v39;

  v41 = a3[20];
  v42 = (a1 + v41);
  v43 = (a2 + v41);
  *v42 = *v43;
  v42[1] = v43[1];

  *(a1 + a3[21]) = *(a2 + a3[21]);
  v44 = a3[22];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  *v45 = *v46;
  v45[1] = v46[1];

  v47 = a3[23];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  *v48 = *v49;
  v48[1] = v49[1];

  v50 = a3[24];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  *(a1 + v50) = v52;
  v53 = v52;

  v54 = a3[25];
  v55 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v55 - 8) + 24))(a1 + v54, a2 + v54, v55);
  v56 = a3[26];
  v57 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v57 - 8) + 24))(a1 + v56, a2 + v56, v57);
  v58 = a3[27];
  v59 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v59 - 8) + 24))(a1 + v58, a2 + v58, v59);
  v60 = a3[28];
  v61 = (a1 + v60);
  v62 = (a2 + v60);
  v63 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  v66 = v65(v61, 1, v63);
  v67 = v65(v62, 1, v63);
  if (!v66)
  {
    if (!v67)
    {
      (*(v64 + 24))(v61, v62, v63);
      goto LABEL_14;
    }

    (*(v64 + 8))(v61, v63);
    goto LABEL_13;
  }

  if (v67)
  {
LABEL_13:
    v68 = sub_100058000(&qword_100778F00, &qword_100642B40);
    memcpy(v61, v62, *(*(v68 - 8) + 64));
    goto LABEL_14;
  }

  (*(v64 + 16))(v61, v62, v63);
  (*(v64 + 56))(v61, 0, 1, v63);
LABEL_14:
  v69 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v70 = *(v69 + 28);
  v71 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v71 - 8) + 24))(&v61[v70], &v62[v70], v71);
  v61[*(v69 + 32)] = v62[*(v69 + 32)];
  return a1;
}

uint64_t sub_1005A22FC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = a3[10];
  v7 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  v9 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[12];
  v11 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  v12 = a3[13];
  v13 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[14];
  v15 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  v16 = a3[15];
  v17 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v17 - 8) + 32))(a1 + v16, a2 + v16, v17);
  v18 = a3[16];
  v19 = a3[17];
  v20 = a1 + v18;
  v21 = a2 + v18;
  *v20 = *v21;
  *(v20 + 16) = *(v21 + 16);
  v22 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  (*(*(v22 - 8) + 32))(a1 + v19, a2 + v19, v22);
  v23 = a3[18];
  v24 = sub_100058000(&qword_100778F48, &qword_100638938);
  (*(*(v24 - 8) + 32))(a1 + v23, a2 + v23, v24);
  v25 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[25];
  v29 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
  v30 = a3[26];
  v31 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v31 - 8) + 32))(a1 + v30, a2 + v30, v31);
  v32 = a3[27];
  v33 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v33 - 8) + 32))(a1 + v32, a2 + v32, v33);
  v34 = a3[28];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37))
  {
    v39 = sub_100058000(&qword_100778F00, &qword_100642B40);
    memcpy(v35, v36, *(*(v39 - 8) + 64));
  }

  else
  {
    (*(v38 + 32))(v35, v36, v37);
    (*(v38 + 56))(v35, 0, 1, v37);
  }

  v40 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v41 = *(v40 + 28);
  v42 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v42 - 8) + 32))(&v35[v41], &v36[v41], v42);
  v35[*(v40 + 32)] = v36[*(v40 + 32)];
  return a1;
}

uint64_t sub_1005A27DC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v9 = a3[10];
  v10 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  v12 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[12];
  v14 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v14 - 8) + 40))(a1 + v13, a2 + v13, v14);
  v15 = a3[13];
  v16 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v16 - 8) + 40))(a1 + v15, a2 + v15, v16);
  v17 = a3[14];
  v18 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v18 - 8) + 40))(a1 + v17, a2 + v17, v18);
  v19 = a3[15];
  v20 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = a3[16];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);

  v24 = *(v23 + 8);
  if (*(v22 + 8))
  {
    if (v24)
    {
      v25 = *(v23 + 16);
      *(v22 + 8) = v24;
      *(v22 + 16) = v25;

      goto LABEL_8;
    }
  }

  else if (v24)
  {
    v26 = *(v23 + 16);
    *(v22 + 8) = v24;
    *(v22 + 16) = v26;
    goto LABEL_8;
  }

  *(v22 + 8) = *(v23 + 8);
LABEL_8:
  v27 = a3[17];
  v28 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  (*(*(v28 - 8) + 40))(a1 + v27, a2 + v27, v28);
  v29 = a3[18];
  v30 = sub_100058000(&qword_100778F48, &qword_100638938);
  (*(*(v30 - 8) + 40))(a1 + v29, a2 + v29, v30);
  v31 = a3[19];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = a3[20];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  v37 = *v35;
  v36 = v35[1];
  *v34 = v37;
  v34[1] = v36;

  v38 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v42 = *v40;
  v41 = v40[1];
  *v39 = v42;
  v39[1] = v41;

  v43 = a3[23];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v47 = *v45;
  v46 = v45[1];
  *v44 = v47;
  v44[1] = v46;

  v48 = a3[24];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);

  v50 = a3[25];
  v51 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v51 - 8) + 40))(a1 + v50, a2 + v50, v51);
  v52 = a3[26];
  v53 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v53 - 8) + 40))(a1 + v52, a2 + v52, v53);
  v54 = a3[27];
  v55 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v55 - 8) + 40))(a1 + v54, a2 + v54, v55);
  v56 = a3[28];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v59 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  v62 = v61(v57, 1, v59);
  v63 = v61(v58, 1, v59);
  if (!v62)
  {
    if (!v63)
    {
      (*(v60 + 40))(v57, v58, v59);
      goto LABEL_14;
    }

    (*(v60 + 8))(v57, v59);
    goto LABEL_13;
  }

  if (v63)
  {
LABEL_13:
    v64 = sub_100058000(&qword_100778F00, &qword_100642B40);
    memcpy(v57, v58, *(*(v64 - 8) + 64));
    goto LABEL_14;
  }

  (*(v60 + 32))(v57, v58, v59);
  (*(v60 + 56))(v57, 0, 1, v59);
LABEL_14:
  v65 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v66 = *(v65 + 28);
  v67 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v67 - 8) + 40))(&v57[v66], &v58[v66], v67);
  v57[*(v65 + 32)] = v58[*(v65 + 32)];
  return a1;
}

uint64_t type metadata accessor for TTRIBoardReminderCellContentConfiguration(uint64_t a1)
{
  result = qword_10078EAA0;
  if (!qword_10078EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A2E54(uint64_t a1)
{
  type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRBoardReminderCellLocationConfiguration();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
        if (v4 <= 0x3F)
        {
          type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
          if (v5 <= 0x3F)
          {
            type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
            if (v6 <= 0x3F)
            {
              sub_1005A3280(319, &qword_10078EAB0, &unk_100775AA0, &unk_100638960, &type metadata accessor for TTRBoardReminderCellTitleConfiguration);
              if (v7 <= 0x3F)
              {
                sub_1005A320C(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for TTRBoardReminderCellURLConfiguration();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
                      if (v11 <= 0x3F)
                      {
                        sub_1005A3280(319, &unk_10078EAC0, &qword_100778F10, &qword_1006428B0, type metadata accessor for TTRIBoardReminderCellAutoCompleteConfiguration);
                        if (v12 <= 0x3F)
                        {
                          swift_initStructMetadata();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005A320C(uint64_t a1)
{
  if (!qword_10078EAB8)
  {
    sub_10005D20C(&qword_100775A90, &qword_100647540);
    type metadata accessor for TTRIReminderCellNotesViewModel();
    v1 = type metadata accessor for TTRBoardReminderCellNotesConfiguration();
    if (!v2)
    {
      atomic_store(v1, &qword_10078EAB8);
    }
  }
}

void sub_1005A3280(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10005D20C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1005A32E8()
{
  result = qword_10078EB50;
  if (!qword_10078EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EB50);
  }

  return result;
}

uint64_t sub_1005A333C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100778F00, &qword_100642B40);
  __chkstk_darwin(v2 - 8);
  v43 = &v40 - v3;
  v4 = sub_100058000(&qword_100778FC8, &unk_1006389C0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v40 - v5;
  v6 = sub_100058000(&unk_100781940, &unk_100638910);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_100058000(&qword_100778F50, &unk_100638940);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100058000(&qword_100781950, &unk_100642A90);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100058000(&qword_100778F30, &qword_100638928);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_100058000(&qword_100778F38, &unk_100647820);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  *a1 = 1;
  *(a1 + 2) = 0;
  v22 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v23 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  TTRBoardReminderCellCompletedButtonConfiguration.init(isCompleted:tintColor:style:preferredSymbolConfiguration:onCompletedPressed:)();
  TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();
  TTRBoardReminderCellShowSubtasksConfiguration.init(isShowingSubtasks:subtaskCount:tintColor:subtaskFont:onShowSubtasksButtonPress:)();
  TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCountString:tintColor:onSubtaskCountPressed:)();
  TTRBoardReminderCellSuggestedSectionConfiguration.init(sectionTitle:onSuggestedSectionPress:isEditingItem:isInMultiSelectMode:)();
  v24 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  TTRBoardReminderCellInfoButtonConfiguration.init(infoButtonState:infoButtonSymbolConfiguration:tintColor:onInfoPressed:)();
  v25 = (a1 + v22[16]);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v26 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
  (*(v10 + 104))(v12, enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:), v9);
  sub_100058000(&unk_100775AA0, &unk_100638960);
  TTRBoardReminderCellTitleConfiguration.init(module:viewModelUpdate:)();
  v28 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  (*(v41 + 104))(v40, v27, v42);
  sub_100058000(&qword_100775A90, &qword_100647540);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderCellNotesConfiguration.init(isHidden:module:viewModelUpdate:)();
  *(a1 + v22[19]) = 0;
  v29 = (a1 + v22[20]);
  *v29 = 0;
  v29[1] = 0;
  *(a1 + v22[21]) = 2;
  v30 = (a1 + v22[22]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a1 + v22[23]);
  *v31 = 0;
  v31[1] = 0;
  *(a1 + v22[24]) = 0;
  TTRBoardReminderCellURLConfiguration.init(attachments:)();
  TTRBoardReminderCellAssigneeConfiguration.init(contact:name:onAssigneePress:)();
  TTRBoardReminderCellAppLinkConfiguration.init(icon:name:onAppLinkPress:)();
  v32 = a1 + v22[28];
  v33 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v34 = *(*(v33 - 8) + 56);
  v35 = v43;
  v34(v43, 1, 1, v33);
  v36 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v37 = *(v36 + 28);
  v38 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v38 - 8) + 104))(v32 + v37, v27, v38);
  v34(v32, 1, 1, v33);
  *(v32 + *(v36 + 32)) = 1;
  return sub_1005A4E68(v35, v32);
}

uint64_t sub_1005A3B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3B78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3C90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_100058000(&qword_100778F48, &qword_100638938);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3DB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = sub_100058000(&qword_100778F48, &qword_100638938);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3FD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A40E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A417C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A41F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A42FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;

  return sub_10003BE34(v4, v5);
}

__n128 sub_1005A43E4(__n128 *a1, uint64_t a2)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = (v2 + *(a2 + 64));

  sub_10008E7F0(v4->n128_i64[1], v4[1].n128_i64[0]);
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v3;
  return result;
}

void *sub_1005A445C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 76));
  v3 = v2;
  return v2;
}

void sub_1005A4488(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);

  *(v2 + v4) = a1;
}

uint64_t sub_1005A44E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));

  return v2;
}

void sub_1005A451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 80));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1005A45BC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

void sub_1005A45F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 88));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1005A4658(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 92));

  return v2;
}

void sub_1005A4690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 92));

  *v6 = a1;
  v6[1] = a2;
}

void *sub_1005A46F4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 96));
  v3 = v2;
  return v2;
}

void sub_1005A4720(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);

  *(v2 + v4) = a1;
}

uint64_t sub_1005A477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A47F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A48FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  v5 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A4A08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  v5 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100787710, &qword_1006431E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7 - 8];
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1005A4D44(v3, a2);
  sub_10000B0D8(a1, v17);
  sub_100058000(&qword_100787718, &unk_1006431F0);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    *(a2 + 1) = UICellConfigurationState.isSelected.getter() & 1;
    UICellConfigurationState.isEditing.getter();
    type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
    TTRBoardReminderCellSuggestedSectionConfiguration.isInMultiSelectMode.setter();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v14(v8, 1, 1, v9);
    return sub_1005A4DA8(v8);
  }
}

id sub_1005A4CA8(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  sub_1005A4D44(v1, v3);
  v4 = sub_1004C1CF4(v3);
  sub_1005A4E10();
  return v4;
}

uint64_t sub_1005A4D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A4DA8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100787710, &qword_1006431E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005A4E10()
{
  result = qword_10078EB58;
  if (!qword_10078EB58)
  {
    type metadata accessor for TTRIBoardReminderCellContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EB58);
  }

  return result;
}

uint64_t sub_1005A4E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778F00, &qword_100642B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double destroy for TTRIBoardReminderCellImageAttachmentsConfiguration(void *a1)
{

  if (a1[1])
  {
  }

  return result;
}

void *sub_1005A4F28(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  return a1;
}

void *assignWithCopy for TTRIBoardReminderCellImageAttachmentsConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;

      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

void *assignWithTake for TTRIBoardReminderCellImageAttachmentsConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;
      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardReminderCellImageAttachmentsConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRIBoardReminderCellImageAttachmentsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_1005A5184(uint64_t *a1, uint64_t *a2)
{
  v4 = *(sub_100058000(&qword_1007724A0, &qword_100647870) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1005A5300(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007724A0, &qword_100647870) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1005A54A4(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(sub_100058000(&qword_1007724A0, &qword_100647870) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_1005A55D4(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007724A0, &qword_100647870) - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1005A5788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_1005A57F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_1005A5858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1005A58BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

id sub_1005A5920(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts] = _swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews] = _swiftEmptyArrayStorage;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10002A9FC();
  }

  return v6;
}

void sub_1005A5A4C()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v2 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 8];
  v3 = v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 16];
  v4 = [v0 traitCollection];
  v49 = sub_1005A6114(v1, v2, v3, v4);
  rect = v5;

  v6 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_1005A65A4(v8);
  v10 = v9;

  [v0 bounds];
  CGRectGetWidth(v51);
  v12 = *&v0[v6];
  if (v12 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v10;
  if (v13)
  {
    do
    {
      v48 = v14 & 0xC000000000000001;
      if ((v14 & 0xC000000000000001) != 0 || v13 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
        v16 = 0.0;
        v17 = 4;
        v47 = v14;
        while (1)
        {
          v18 = v17 - 4;
          if (v48)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v14 + 8 * v17);
          }

          v20 = v19;
          swift_beginAccess();
          v21 = *&v0[v15];
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              v8 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }

            if (v18 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v22 = *(v21 + 8 * v17);
          }

          v23 = v22;
          swift_endAccess();
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_10062D420;
          swift_beginAccess();
          v25 = *&v0[v6];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            if (v18 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v26 = *(v25 + 8 * v17);
          }

          *(v24 + 32) = v26;
          swift_endAccess();
          sub_100003540(0, &qword_100783DE0, CNContact_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v20 setContacts:isa];

          [v0 effectiveUserInterfaceLayoutDirection];
          CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36 = [v20 view];
          [v36 setFrame:{v29, v31, v33, v35}];

          v37 = [v0 traitCollection];
          sub_1005A6A74(v37);

          v38 = [v0 traitCollection];
          [v38 displayScale];

          UIFloorToScale();
          v40 = -v39;
          v52.origin.x = v29;
          v52.origin.y = v31;
          v52.size.width = v33;
          v52.size.height = v35;
          v53 = CGRectInset(v52, v40, v40);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
          [v23 setFrame:?];
          v45 = [v23 layer];
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          [v45 setCornerRadius:CGRectGetWidth(v54) * 0.5];

          v55.origin.y = 0.0;
          v55.origin.x = v16;
          v55.size.width = v49;
          v55.size.height = rect;
          v46 = CGRectGetWidth(v55);

          v16 = v16 + v46 * 0.75;
          ++v17;
          --v13;
          v14 = v47;
          if (!v13)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v13 = v11;
      v14 = v10;
    }

    while (v11);
  }

LABEL_32:
}

uint64_t sub_1005A5F8C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3 = a2;
    if (!(*v4 >> 62))
    {
      v5 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = -v5;
      if (!__OFSUB__(0, v5))
      {
        goto LABEL_5;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v9 = result;
  v11 = a3;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  a3 = v11;
  v5 = v10;
  result = v9;
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_19;
  }

LABEL_5:
  v7 = -result;
  if (v6 <= 0 && v6 > v7)
  {
    goto LABEL_22;
  }

  result = v5 - result;
  if (__OFADD__(v5, v7))
  {
    goto LABEL_20;
  }

  if (v5 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return a3();
}

id sub_1005A60BC(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
  [a1 invalidateIntrinsicContentSize];

  return [a1 setNeedsLayout];
}

double sub_1005A6114(uint64_t a1, int a2, char a3, id a4)
{
  v6 = [a4 preferredContentSizeCategory];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_6:

LABEL_16:
    v23 = 1;
    goto LABEL_17;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
LABEL_14:

    v23 = 2;
    goto LABEL_17;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_21;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_14;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_21:

    v23 = 2;
  }

  else
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      goto LABEL_14;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = 2;
    if ((v35 & 1) == 0)
    {
      v23 = 0;
    }
  }

LABEL_17:
  if (a3)
  {
    return dbl_1006478E0[v23];
  }

  else
  {
    return dbl_1006478E0[v23] / 24.0 * *&a1;
  }
}

uint64_t sub_1005A63E4(uint64_t result, unint64_t a2, unint64_t *a3, void *a4)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v15 = result;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    result = v15;
    v10 = -v9;
    if (!__OFSUB__(0, v9))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = a4;
  v7 = a3;
  v5 = a2;
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = -v9;
  if (__OFSUB__(0, v9))
  {
    goto LABEL_32;
  }

LABEL_4:
  v11 = -result;
  if (v10 > 0 || v10 <= v11)
  {
    v12 = v9 - result;
    if (__OFADD__(v9, v11))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v9 < v12)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v9 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v12 = 0;
    if (!v8)
    {
LABEL_8:
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v9)
  {
    goto LABEL_35;
  }

  if (v9 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v5 & 0xC000000000000001) == 0 || v12 == v9)
  {

    if (!v8)
    {
      return v5 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v12 < v9)
  {
    sub_100003540(0, v7, v6);

    v13 = v12;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v9 != v14);
    if (!v8)
    {
      return v5 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_1005A65A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarViewControllers;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 <= a1;
    if (v6 < a1)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (v7)
    {
      return;
    }

    v18 = v6 - a1;
    if (!__OFSUB__(v6, a1))
    {
      v19 = *&v2[v4];

      sub_1005A63E4(v18, v19, &qword_10076BC68, CNAvatarViewController_ptr);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = (v25 >> 1) - v23;
      if (v25 >> 1 != v23)
      {
        if ((v25 >> 1) <= v23)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v27 = (v21 + 8 * v23);
        do
        {
          v28 = *v27++;
          v29 = v28;
          v30 = [v29 viewIfLoaded];
          [v30 removeFromSuperview];

          --v26;
        }

        while (v26);
      }

      swift_unknownObjectRelease();
      v31 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
      swift_beginAccess();
      v32 = *&v2[v31];

      sub_1005A63E4(v18, v32, &qword_10076B020, UIView_ptr);
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = (v38 >> 1) - v36;
      if (v38 >> 1 != v36)
      {
        if ((v38 >> 1) <= v36)
        {
LABEL_30:
          __break(1u);
          return;
        }

        v40 = (v34 + 8 * v36);
        do
        {
          v41 = *v40++;
          [v41 removeFromSuperview];
          --v39;
        }

        while (v39);
      }

      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1005A5F8C(v18, sub_100100BD8, v42);
      swift_endAccess();
      swift_beginAccess();
      sub_1005A5F8C(v18, sub_100100DD8, v43);
      swift_endAccess();
      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v6 <= a1;
  if (v6 >= a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  v8 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v8 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    v45 = objc_opt_self();
    v44 = kCAFilterDestOut;
    v9 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
    do
    {
      v10 = [objc_allocWithZone(CNAvatarViewController) init];
      [v10 setThreeDTouchEnabled:0];
      v11 = [v10 view];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
      v12 = [objc_allocWithZone(UIView) init];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:1];
      v13 = [v45 whiteColor];
      [v12 setBackgroundColor:v13];

      v14 = [v12 layer];
      v15 = [objc_allocWithZone(CAFilter) initWithType:v44];
      [v14 setCompositingFilter:v15];

      [v2 insertSubview:v11 atIndex:0];
      [v2 insertSubview:v12 atIndex:0];
      swift_beginAccess();
      v16 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      swift_beginAccess();
      v17 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      --v8;
    }

    while (v8);
  }
}

double sub_1005A6A74(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 2.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
LABEL_15:

    return 2.0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 3.0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_18:

    return 3.0;
  }

  else
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
      goto LABEL_14;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 1.5;
    if (v29)
    {
      return 3.0;
    }
  }

  return result;
}

void sub_1005A6CF8()
{
  v1 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  if (*&v0[v1] >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v2 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v3 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 8];
  v4 = v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 16];
  v5 = [v0 traitCollection];
  sub_1005A6114(v2, v3, v4, v5);
}

uint64_t sub_1005A6DF4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078ECD8);
  v1 = sub_100003E30(v0, qword_10078ECD8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1005A6EBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

double sub_1005A6F2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1005A6F84();
  }

  return result;
}

void sub_1005A6F84()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {
    sub_10000C36C((v0 + 72), v2);

    CurrentValueSubject.value.getter();

    v3 = v6;
    if (v6)
    {
      v4 = [v6 canUndo];
      v5 = [v6 canRedo];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  if (v4 != *(v1 + 112) || ((v5 ^ *(v1 + 113)) & 1) != 0)
  {
    *(v1 + 112) = v4;
    *(v1 + 113) = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100081EF8(0xD00000000000001CLL, 0x800000010068D020);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1005A7098(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1005A8210(a1, v1 + 72);
  swift_endAccess();
  v4 = *(v1 + 96);
  if (v4)
  {
    sub_10000C36C((v1 + 72), v4);
    swift_allocObject();
    swift_weakInit();

    sub_100058000(&qword_10078BFD0, &unk_100645888);
    sub_1005A82F0();
    v5 = Publisher<>.sink(receiveValue:)();

    sub_1005A8280(a1);
  }

  else
  {
    sub_1005A8280(a1);
    v5 = 0;
  }

  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_undoManagerCancellable) = v5;

  return result;
}

uint64_t sub_1005A71C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 112) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor) = 0;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget) = 1;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_undoManagerCancellable) = 0;
  *(v2 + 120) = a1;
  v5 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType;
  v6 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

void sub_1005A7298(void *a1)
{
  v3 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  if (!v4)
  {
    sub_1003904D8(0);
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v5 = v4 == 1 || a1 == 0;
  if (v5 || (sub_100003540(0, &qword_100775690, NSObject_ptr), v6 = v4, v7 = static NSObject.== infix(_:_:)(), sub_1003904D8(v4), (v7 & 1) == 0))
  {
LABEL_9:
    sub_1005A7370();
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1003904D8(v8);
    v9 = a1;

    sub_1005A73F8(a1);
  }
}

void sub_1005A7370()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor))
  {

    TTRDataViewMonitor.pause()();

    *(v0 + v1) = 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget) = 1;
  sub_1003904D8(v2);
  v3 = *(v0 + 64);
  *(v0 + 64) = 0;
}

double sub_1005A73F8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for TTRDataViewMonitorEnvironmentInfo();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TTRRemindersListDefaultListType();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor;
  if (!*(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor))
  {
    v20[0] = v4;
    if (qword_100767480 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10078ECD8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRIRemindersListNavigationBarInteractor start fetching and monitoring default list", v15, 2u);
    }

    v16 = v2[15];
    (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType, v6);
    type metadata accessor for TTRIRemindersListNavigationBarDefaultListDataView(0);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    (*(v7 + 32))(v17 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType, v10, v6);
    *(v17 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_listFetchingTarget) = a1;
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v18 = a1;
    v19 = v16;

    static OS_dispatch_queue.main.getter();
    type metadata accessor for RDIDispatchQueue();
    static RDIDispatchQueue.utilityQueue.getter();
    static RDIDispatchQueue.storeUserInteractiveQueue.getter();
    TTRDataViewMonitorEnvironmentInfo.init()();
    v20[2] = 0;
    v20[3] = a1;
    v20[1] = v17;
    sub_100058000(&qword_10078EEE0, &unk_100647C00);
    swift_allocObject();
    sub_1005A8354(&qword_10078EEE8, type metadata accessor for TTRIRemindersListNavigationBarInteractor, &unk_100647B44);

    *(v2 + v11) = TTRDataViewMonitor.init<A>(initialData:dataView:delegate:queue:backgroundQueue:userInteractiveBackgroundQueue:environmentInfo:)();

    TTRDataViewMonitor.resume(userInteractive:)(1);
  }

  return result;
}

void sub_1005A7790(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  if (v5)
  {
    if (v5 == 1 || a2 == 0)
    {
      return;
    }

    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();
    sub_1003904D8(v5);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_1003904D8(0);
    if (a2)
    {
      return;
    }
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    if (a1)
    {
      sub_100003540(0, &qword_10076ABC0, REMList_ptr);
      v10 = v9;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return;
      }

      v9 = *(v2 + 64);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
  }

  *(v2 + 64) = a1;
  v13 = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100081EF8(0xD000000000000012, 0x800000010068D060);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1005A7904()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();

  sub_1005A8280(v0 + 72);
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType;
  v2 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1003904D8(*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget));

  return v0;
}

uint64_t sub_1005A79C4()
{
  sub_1005A7904();

  return swift_deallocClassInstance();
}

uint64_t sub_1005A7A44(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListDefaultListType();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005A7B20(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

void sub_1005A7BC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListEditingSession.acquirerName.getter();
  v6 = v5;
  v7 = (v2 + 48);
  if (*(v2 + 48))
  {
    v8 = v4;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = dispatch thunk of TTRRemindersListEditingSession.acquirerName.getter();
    v11 = v10;
    swift_unknownObjectRelease();
    if (v8 == v9 && v6 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    *v7 = 0;
    *(v3 + 56) = 0;
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1005A7D74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1005A7DD4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1005A7E68;
}

void sub_1005A7E68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_1005A7EF0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005A7F98()
{
  v1 = OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType;
  v2 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005A8074(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListDefaultListType();
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

void **assignWithCopy for TTRIRemindersListNavigationBarListFetchingTarget(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for TTRIRemindersListNavigationBarListFetchingTarget(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

id sub_1005A8198(uint64_t *a1)
{
  result = sub_1005A8534();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1005A8210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10078EED0, &unk_100647BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A8280(uint64_t a1)
{
  v2 = sub_100058000(&qword_10078EED0, &unk_100647BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005A82F0()
{
  result = qword_10078EED8;
  if (!qword_10078EED8)
  {
    sub_10005D20C(&qword_10078BFD0, &unk_100645888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EED8);
  }

  return result;
}

uint64_t sub_1005A8354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005A839C(uint64_t a1)
{
  if (qword_100767480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10078ECD8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.rem_errorDescription.getter();
    v7 = sub_100004060(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "TTRIRemindersListNavigationBarDefaultListDataView: did hit error {error: %s}", v3, 0xCu);
    sub_100004758(v4);
  }

  else
  {
  }
}

id sub_1005A8534()
{
  v1 = type metadata accessor for TTRRemindersListDefaultListType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_listFetchingTarget);
  if (v6)
  {
    v7 = *(v0 + 16);
    v20 = 0;
    v8 = v6;
    v9 = [v7 fetchListWithObjectID:v8 error:&v20];
    if (v9)
    {
      v10 = v9;
      v11 = v20;
LABEL_4:

LABEL_5:
      v12 = v6;
      return v10;
    }

    v10 = v20;
    _convertNSErrorToError(_:)();
LABEL_10:

    swift_willThrow();
    return v10;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType, v1, v3);
  v13 = (*(v2 + 88))(v5, v1);
  if (v13 == enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v14 = *(v0 + 16);
    v20 = 0;
    v10 = [v14 fetchDefaultListRequiringCloudKitAccountWithAccountID:v8 error:&v20];
    if (!v20)
    {
      goto LABEL_4;
    }

    v15 = v20;
    goto LABEL_10;
  }

  if (v13 == enum case for TTRRemindersListDefaultListType.any(_:))
  {
    v16 = *(v0 + 16);
    v20 = 0;
    v17 = [v16 fetchDefaultListWithError:&v20];
    goto LABEL_15;
  }

  if (v13 == enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:))
  {
    v18 = *(v0 + 16);
    v20 = 0;
    v17 = [v18 fetchDefaultListRequiringCloudKitWithError:&v20];
LABEL_15:
    v10 = v17;
    if (v20)
    {
      v20;

      swift_willThrow();
      return v10;
    }

    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A87F4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005A8850(uint64_t a1)
{
  v41 = a1;
  v53 = *v1;
  v54 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v44 = *(v54 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v54);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_100058000(&qword_10078EFC0, &qword_100647C78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_100058000(&qword_10078EFC8, &qword_100647C80);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin(v12);
  v42 = &v38 - v14;
  v49 = sub_100058000(&qword_10078EFD0, &qword_100647C88);
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v38 - v15;
  v16 = sub_100058000(&qword_10078EFD8, &qword_100647C90);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  __chkstk_darwin(v16);
  v46 = &v38 - v18;
  v55 = 1;
  Just.init(_:)();
  v19 = [objc_opt_self() mainRunLoop];
  v55 = v19;
  v20 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_100003540(0, &qword_10076DFB0, NSRunLoop_ptr);
  sub_10000E188(&qword_10078EFE0, &qword_10078EFC0, &qword_100647C78, &protocol conformance descriptor for Just<A>);
  sub_100139DF0();
  Publisher.receive<A>(on:options:)();
  sub_1005A8F8C(v7);

  (*(v9 + 8))(v11, v8);
  v21 = v44;
  v40 = *(v44 + 16);
  v22 = v4;
  v38 = v4;
  v23 = v54;
  v40(v4, a1, v54);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v39 = v45 + v24;
  v25 = swift_allocObject();
  v45 = *(v21 + 32);
  v45(v25 + v24, v22, v23);
  static Subscribers.Demand.unlimited.getter();
  sub_100058000(&qword_10078EFE8, &qword_100647C98);
  sub_10000E188(&qword_10078EFF0, &qword_10078EFC8, &qword_100647C80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_10000E188(&qword_10078EFF8, &qword_10078EFE8, &qword_100647C98, &protocol conformance descriptor for AnyPublisher<A, B>);
  v26 = v43;
  v27 = v47;
  v28 = v42;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v48 + 8))(v28, v27);
  v29 = v38;
  v30 = v54;
  v40(v38, v41, v54);
  v31 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v45(v32 + v24, v29, v30);
  *(v32 + v31) = v53;
  sub_100003540(0, &qword_10078F000, UIPrintInteractionController_ptr);
  sub_10000E188(&qword_10078F008, &qword_10078EFD0, &qword_100647C88, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v33 = v46;
  v34 = v49;
  Publisher.map<A>(_:)();

  (*(v52 + 8))(v26, v34);
  sub_10000E188(&qword_10078F010, &qword_10078EFD8, &qword_100647C90, &protocol conformance descriptor for Publishers.Map<A, B>);
  v35 = v50;
  v36 = Publisher.eraseToAnyPublisher()();
  (*(v51 + 8))(v33, v35);
  return v36;
}

uint64_t sub_1005A8F8C(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A8FF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource(0);
  __chkstk_darwin(v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_allocWithZone(type metadata accessor for TTRWebViewLoadingStateHelper()) init];
  v6 = *(sub_100058000(&qword_1007856B0, &unk_100647CA0) + 48);
  *v4 = TTRRemindersPrintingHTMLResult.html.getter();
  v4[1] = v7;
  TTRRemindersPrintingHTMLResult.baseURL.getter();
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v4 + v6, 0, 1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = sub_100494100(v4);

  result = sub_10049570C(v4);
  *a1 = v9;
  return result;
}

uint64_t sub_1005A912C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRRemindersPrintingHTMLResult();

  return sub_1005A8FF4(a1);
}

void sub_1005A91AC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = TTRRemindersPrintingHTMLResult.jobName.getter();
  v6 = v5;
  v7 = TTRRemindersPrintingHTMLResult.footerText.getter();
  v10 = sub_1005A92D4(v3, v9, v4, v6, v7, v8);

  *a2 = v10;
}

void sub_1005A9228(void **a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TTRRemindersPrintingHTMLResult();

  sub_1005A91AC(a1, a2);
}

id sub_1005A92D4(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = [objc_opt_self() printInfo];
    v16 = String._bridgeToObjectiveC()();
    [v15 setJobName:v16];

    [v15 setOutputType:0];
    v17 = [objc_opt_self() sharedPrintController];
    [v17 setPrintInfo:v15];
    v18 = objc_opt_self();

    v19 = [v18 sharedApplication];
    v20 = [v19 userInterfaceLayoutDirection];

    v21 = objc_allocWithZone(type metadata accessor for TTRIReminderPrintPageRenderer());
    v22 = sub_1005B89CC(a5, a6, v20 == 1);
    v23 = [a1 viewPrintFormatter];
    [v22 addPrintFormatter:v23 startingAtPageAtIndex:0];

    [v17 setPrintPageRenderer:v22];
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1005A9588(uint64_t *a1, void **a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v119 = a6;
  v112 = a4;
  v120 = a1;
  v121 = type metadata accessor for TTRRemindersListLayout();
  v117 = *(v121 - 8);
  __chkstk_darwin(v121);
  v101 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v100 - v10;
  __chkstk_darwin(v11);
  v100 = &v100 - v12;
  __chkstk_darwin(v13);
  v114 = &v100 - v14;
  v15 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v15 - 8);
  v110 = (&v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v111 = &v100 - v18;
  v113 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v113);
  v124 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v20 - 8);
  v109 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TTRRemindersListDefaultListType();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v23 - 8);
  v104 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v107 = (&v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v31 = *(v123 - 8);
  __chkstk_darwin(v123);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v122 = &v100 - v35;
  if (a3)
  {
    v36 = sub_1005AA650();
    v37 = &protocol witness table for REMList;
    v38 = a3;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v131[2] = 0;
    v131[1] = 0;
  }

  v131[0] = v38;
  v132 = v36;
  v133 = v37;
  v102 = a3;
  static REMRemindersListDataView.SortingStyle.fallbackForREMList.getter();
  v103 = a3;
  v39 = v122;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v40 = v123;
  v115 = *(v31 + 8);
  v116 = v31 + 8;
  v115(v33, v123);
  sub_1004D3F04(v131);
  v41 = *a2;
  (*(v28 + 104))(v30, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v27);
  (*(v31 + 16))(v33, v39, v40);
  v42 = type metadata accessor for TTRUserDefaults();
  v43 = v41;
  v44 = static TTRUserDefaults.appUserDefaults.getter();
  v133 = &protocol witness table for TTRUserDefaults;
  v132 = v42;
  v131[0] = v44;
  type metadata accessor for TTRShowRemindersInListDataModelSource();
  swift_allocObject();
  v45 = v102;
  v46 = TTRShowRemindersInListDataModelSource.init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)();
  v47 = v107;
  sub_10010BD5C(a2, v107, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v48 = v104;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v49 = v105;
  (v106[13])(v105, enum case for TTRRemindersListDefaultListType.any(_:), v108);
  sub_10007786C(v47, v48, v49, v131);
  v50 = v131[0];

  v51 = v50;
  v52 = v109;
  static TTRListType.SortingCapability.sortingCapabilityForNonSmartList.getter();
  v53 = static TTRUserDefaults.appUserDefaults.getter();
  v108 = v51;
  v54 = sub_1005AA3D4(v46, v51, v52, v53);
  sub_10010BD5C(a2, v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v131, v128);
  v55 = sub_10014C630(&qword_100781100, type metadata accessor for TTRShowRemindersInListViewModelSource, &unk_100646FD0);
  v56 = v124;
  sub_10010BD5C(v47, v124, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v57 = v113;
  sub_10010BCAC(v128, v56 + *(v113 + 20));
  v58 = (v56 + *(v57 + 24));
  *v58 = v54;
  v58[1] = v55;
  v59 = v128[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v130, v127, &qword_100769608, &unk_1006302F0);
  v61 = *(v127[5] + 8);
  *(v60 + 32) = v127[4];
  *(v60 + 40) = v61;
  sub_10000794C(&v129, v125, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v62 = v59;
  swift_unknownObjectRelease();
  *(v60 + 48) = v126;
  sub_100004758(v125);
  sub_100004758(v127);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v63 = swift_allocObject();
  v64 = sub_1003A6D60(v62, v54, v60, v63);
  v109 = v54;

  sub_10010BD08(v128);
  sub_10010BE0C(v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v57 + 28);
  v106 = v64;
  *(v56 + v65) = v64;
  v66 = v111;
  sub_100078BBC(v111);
  v107 = type metadata accessor for TTRIShowRemindersInListPresenter(0);
  v67 = swift_allocObject();
  *(v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController) = 0;
  *(v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = 0;
  v68 = (v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_dataModelSource);
  *v68 = v46;
  v68[1] = &protocol witness table for TTRShowRemindersInListDataModelSource;
  v69 = v110;
  sub_10010BD5C(v66, v110, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v113 = v46;

  v70 = v112;
  swift_unknownObjectRetain();
  v71 = sub_1003A56E4(v69, v70, v67);
  sub_10010BE0C(v66, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v72 = *(v71 + 144);
  ObjectType = swift_getObjectType();
  v74 = *(v72 + 112);

  if (v74(ObjectType, v72))
  {
    swift_getObjectType();
    v75 = v100;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v76 = v117;
    v77 = v114;
    v78 = v75;
    v79 = v121;
    (*(v117 + 32))(v114, v78, v121);
  }

  else
  {
    v76 = v117;
    v77 = v114;
    v79 = v121;
    (*(v117 + 104))(v114, enum case for TTRRemindersListLayout.list(_:), v121);
  }

  v112 = sub_1003A4A1C(v77, v71);
  v114 = v80;
  v82 = v81;
  v84 = v83;
  (*(v76 + 8))(v77, v79);
  v117 = swift_getObjectType();
  *(v71 + 24) = *(v84 + 8);
  v121 = v82;
  swift_unknownObjectWeakAssign();
  v85 = *(v71 + 144);
  v86 = swift_getObjectType();
  v87 = *(v85 + 112);

  if (v87(v86, v85))
  {
    swift_getObjectType();
    v88 = v101;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v89 = v118;
    (*(v76 + 32))(v118, v88, v79);
  }

  else
  {

    v89 = v118;
    (*(v76 + 104))(v118, enum case for TTRRemindersListLayout.list(_:), v79);
  }

  v90 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v91 = v112;
  v118 = v91;
  v92 = sub_1003A6D94(v71, v91, v114, v89, 0, 1, 0, v90);

  v93 = *(v84 + 32);
  v94 = v92;
  v93(v92, &off_100723D78, v117, v84);
  sub_10014C630(&qword_10078F040, type metadata accessor for TTRIShowRemindersInListPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10014C630(&qword_10078F048, type metadata accessor for TTRShowRemindersInListViewModelSource, &unk_100643560);

  v95 = v94;
  dispatch thunk of TTRShowRemindersInListDataModelSource.delegate.setter();

  sub_10056FEB0(v96, &off_10071A9B0);

  v106[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v134, v128, &qword_100769600, &qword_10062E0A0);
  v97 = v128[4];
  swift_unknownObjectRelease();
  *(v97 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v128);
  sub_10000794C(&v135, v128, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10014C630(&unk_10078F050, type metadata accessor for TTRIShowRemindersInListPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v128);
  dispatch thunk of TTRShowRemindersInListDataModelSource.start(fetchesInitialDataSynchronously:)();
  v98 = v120;
  v120[3] = v107;
  v98[4] = &off_10072DB98;

  swift_unknownObjectRelease();
  *v98 = v71;
  v115(v122, v123);
  sub_10010BE0C(v124, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v131);
  return v95;
}

id TTRIShowRemindersInListAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowRemindersInListAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowRemindersInListAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowRemindersInListAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005AA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for TTRListType.SortingCapability();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = ObjectType;
  v24[4] = &off_10072C130;
  v24[0] = a4;
  type metadata accessor for TTRShowRemindersInListViewModelSource(0);
  v13 = swift_allocObject();
  v14 = sub_10000AE84(v24, ObjectType);
  v15 = __chkstk_darwin(v14);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  v23[3] = ObjectType;
  v23[4] = &off_10072C130;
  v23[0] = v19;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list) = 0;
  v20 = v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = 1;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance) = 0;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper) = 0;
  sub_10000B0D8(v23, v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults);
  (*(v10 + 16))(v12, a3, v9);
  v21 = sub_1003A649C(a1, a2, v12, v13);
  (*(v10 + 8))(a3, v9);
  sub_100004758(v23);
  sub_100004758(v24);
  return v21;
}

unint64_t sub_1005AA650()
{
  result = qword_10076ABC0;
  if (!qword_10076ABC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076ABC0);
  }

  return result;
}

double sub_1005AA69C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1004E836C(v4, v8);

  return result;
}

void sub_1005AA748(uint64_t a1)
{
  v3 = TTRAppBundleIdentifier.getter();
  v4 = v1;
  v2._countAndFlagsBits = 0x6E6F69746365732ELL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  qword_10078F060 = v3;
  *algn_10078F068 = v4;
}

uint64_t type metadata accessor for TTRIRemindersListDragSection(uint64_t a1)
{
  result = qword_10078F098;
  if (!qword_10078F098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AA890(uint64_t a1)
{
  result = type metadata accessor for TTRSection();
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

id sub_1005AAB9C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100767488 != -1)
  {
    swift_once();
  }

  v8 = qword_10078F060;
  v9 = *algn_10078F068;
  v10 = qword_10078F060 == a1 && *algn_10078F068 == a2;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = objc_opt_self();
    _StringGuts.grow(_:)(28);

    v12._countAndFlagsBits = v8;
    v12._object = v9;
    String.append(_:)(v12);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v11 internalErrorWithDebugDescription:{v13, 0xD00000000000001ALL, 0x800000010067EBB0}];

LABEL_9:
    v15 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v15);

    return 0;
  }

  sub_1003FA088();
  if ((static NSItemProviderWriting.canWriteTypeIdentifier(_:)() & 1) == 0)
  {
    v21 = objc_opt_self();
    _StringGuts.grow(_:)(30);

    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    v14 = [v21 internalErrorWithDebugDescription:{v23, 0xD00000000000001CLL, 0x80000001006893D0}];

    goto LABEL_9;
  }

  TTRSection.displayName.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  v24[4] = sub_1002354C8;
  v24[5] = v7;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_1005AA69C;
  v24[3] = &unk_10072F548;
  v19 = _Block_copy(v24);

  v20 = [v17 loadDataWithTypeIdentifier:v18 forItemProviderCompletionHandler:v19];
  _Block_release(v19);

  return v20;
}

id sub_1005AAEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRIInsetTextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_opt_self() quaternarySystemFillColor];
  [v8 setBackgroundColor:v9];

  TTRIInsetTextField.horizontalInset.setter();
  [v8 _setContinuousCornerRadius:12.0];
  v10 = v8;
  UIAccessibilityIsBoldTextEnabled();
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v11 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v10 setFont:v11];

  [v10 setTextAlignment:1];
  [v10 setClearButtonMode:1];
  *&v4[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField] = v10;
  v12 = objc_allocWithZone(type metadata accessor for TTRITextCellTextFieldTextArea());
  v13 = v10;
  v14 = TTRITextCellTextFieldTextArea.init(textField:)();
  v15 = &v4[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_textArea];
  *v15 = v14;
  *(v15 + 1) = &protocol witness table for TTRITextCellTextFieldTextArea;
  v16 = v14;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v44.receiver = v4;
  v44.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v44, "initWithStyle:reuseIdentifier:", a1, v17);

  v19 = v18;
  [v13 addTarget:v19 action:"textFieldEditingDidBegin" forControlEvents:0x10000];
  [v13 addTarget:v19 action:"textFieldEditingDidEnd" forControlEvents:0x40000];
  v20 = v19;
  v21 = [v20 contentView];
  [v21 addSubview:v13];

  v22 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100634FC0;
  v24 = [v20 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v13 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-16.0];

  *(v23 + 32) = v27;
  v28 = [v20 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v13 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  *(v23 + 40) = v31;
  v32 = [v20 contentView];
  v33 = [v32 topAnchor];

  v34 = [v13 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v23 + 48) = v35;
  v36 = [v20 contentView];

  v37 = [v36 bottomAnchor];
  v38 = [v13 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  *(v23 + 56) = v39;
  v40 = [v13 heightAnchor];

  v41 = [v40 constraintEqualToConstant:56.0];
  *(v23 + 64) = v41;
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  return v20;
}

void sub_1005AB51C()
{
  v1 = [*&v0[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField] isEditing];
  v2 = objc_opt_self();
  v3 = &selRef_systemFillColor;
  if (!v1)
  {
    v3 = &selRef_quaternarySystemFillColor;
  }

  v4 = [v2 *v3];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v4;
  v10[4] = sub_1005AB854;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_10072F598;
  v7 = _Block_copy(v10);
  v8 = v4;
  v9 = v0;

  [v5 animateWithDuration:v7 animations:0.2];

  _Block_release(v7);
}

uint64_t sub_1005AB790@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellContentPrototypeCellView.cellClass(_:);
  v3 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1005AB870()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F0E0);
  v1 = sub_100003E30(v0, qword_10078F0E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005AB938()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v8 = [v7 account];
  v9 = [v8 accountTypeHost];

  LODWORD(v8) = [v9 isCloudKit];
  if (v8)
  {
    v10 = [v7 account];
    v11 = [v10 remObjectID];

    v12 = [v11 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = [v7 store];
    v17 = String._bridgeToObjectiveC()();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v15;
    v47 = sub_1005AD560;
    v48 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    v46 = &unk_10072F638;
    v20 = _Block_copy(aBlock);

    [v16 addCKShareObserverIfNeededForAccountID:v17 queue:v18 completion:v20];
    _Block_release(v20);
  }

  v21 = objc_opt_self();
  v22 = [v7 account];
  v23 = [v21 newCloudContainerForAccount:v22];

  REMList.ttrGroceryContext.getter();
  if (v46)
  {
    sub_10000C36C(aBlock, v46);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(aBlock);
  }

  else
  {
    sub_1000079B4(aBlock, &qword_1007757E0, &qword_100636780);
    ShouldCategorizeGrocery = 0;
  }

  v44 = v23;
  v25 = sub_1005AC188(v1, v23);
  [v25 setAvailablePermissions:10];
  type metadata accessor for TTRUserDefaults();
  v26 = static TTRUserDefaults.appUserDefaults.getter();
  v27 = TTRUserDefaults.publicSharingEnabled.getter();

  if (v27)
  {
    [v25 setAvailablePermissions:{objc_msgSend(v25, "availablePermissions") | 1}];
  }

  static TTRLocalizableStrings.Sharing.Notifications.sectionHeaderTitle.getter();
  v28 = String._bridgeToObjectiveC()();

  [v25 _setSectionTitleForAuxiliarySwitches:v28];

  sub_100461868(_swiftEmptyArrayStorage);
  sub_100003540(0, &qword_10078F1F8, _UIShareParticipantDetails_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v25 _setParticipantDetails:isa];

  if (ShouldCategorizeGrocery)
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableAddedItemNotifications.getter();
  }

  else
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableAddedReminderNotifications.getter();
  }

  v30 = String._bridgeToObjectiveC()();

  [v25 _setPrimaryAuxiliarySwitchTitle:v30];

  v31 = [v7 remObjectID];
  v32 = [v31 stringRepresentation];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = objc_opt_self();
  v34 = [v33 daemonUserDefaults];
  v35 = [v34 muteNotificationOptionsForSharedList:v32];

  [v25 _setPrimaryAuxiliarySwitchState:(v35 & 1) == 0];
  if (ShouldCategorizeGrocery)
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableCompletedItemNotifications.getter();
  }

  else
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableCompletedReminderNotifications.getter();
  }

  v36 = String._bridgeToObjectiveC()();

  [v25 _setSecondaryAuxiliarySwitchTitle:v36];

  v37 = [v7 remObjectID];
  v38 = [v37 stringRepresentation];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = [v33 daemonUserDefaults];
  v40 = [v39 muteNotificationOptionsForSharedList:v38];

  [v25 _setSecondaryAuxiliarySwitchState:(v40 & 2) == 0];
  v41 = v25;
  [v41 setModalPresentationStyle:2];
  [v41 setDelegate:v1];

  return v41;
}

void sub_1005ABF90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10078F0E0);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100004060(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100004060(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not add share observer for {accountID: %s, error: %s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1005AC188(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v5 = [v4 store];
  v6 = [v4 objectID];
  *&aBlock = 0;
  v7 = [v5 fetchShareForListWithID:v6 error:&aBlock];

  if (aBlock)
  {
    v8 = aBlock;

    swift_willThrow();
LABEL_3:
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005AD568;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(UICloudSharingController);
    v25 = sub_1005AD570;
    v26 = v10;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v24 = sub_1005AD19C;
    *(&v24 + 1) = &unk_10072F6B0;
    v12 = _Block_copy(&aBlock);
    v13 = a1;
    v14 = a2;
    v15 = [v11 initWithPreparationHandler:v12];
    _Block_release(v12);

    return v15;
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v16 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v17 = static UIImage.ttr_image(named:in:)();

  if (v17 && (v18 = UIImagePNGRepresentation(v17), v17, v18))
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(&v24 + 1) = &type metadata for Data;
    v25 = &protocol witness table for Data;
    *&aBlock = v19;
    *(&aBlock + 1) = v21;
  }

  else
  {
    v25 = 0;
    aBlock = 0u;
    v24 = 0u;
  }

  sub_100003540(0, &qword_10078F200, CKShare_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  v15 = [objc_allocWithZone(UICloudSharingController) initWithShare:v7 container:a2];

  return v15;
}

void sub_1005AC4A0(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, char *a4, uint64_t a5)
{
  v8 = *&a4[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v9 = [v8 store];
  v10 = [v8 objectID];
  v31 = 0;
  v11 = [v9 createShareForListWithID:v10 appIconData:0 error:&v31];

  v12 = v31;
  if (v31)
  {
    v13 = v31;

    swift_willThrow();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_10078F0E0);
    v15 = a4;
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v19 = 138412546;
      *(v19 + 4) = v8;
      *v28 = v8;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v30 = a2;
      v20 = v8;
      v21 = Error.localizedDescription.getter();
      v23 = sub_100004060(v21, v22, &v31);

      *(v19 + 14) = v23;
      a2 = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create share for list {list: %@, error: %s}", v19, 0x16u);
      sub_1000079B4(v28, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v29);
    }

    v24 = v16;
    v25 = 0;
    v26 = 0;
    v27 = v12;
  }

  else
  {
    if (!v11)
    {
      return;
    }

    v24 = v11;
    v25 = v11;
    v26 = a5;
    v27 = 0;
  }

  a2(v25, v26, v27);
}

id sub_1005AC7AC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list) remObjectID];
  v2 = [v1 stringRepresentation];

  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [v3 muteNotificationOptionsForSharedList:v2];

  return v4;
}

void sub_1005AC874(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list) remObjectID];
  v5 = [v3 stringRepresentation];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setMuteNotificationOptions:a1 forSharedList:v5];
}

id sub_1005AC97C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIListSharingController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005ACB28(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 share];
  if (v14)
  {
    v15 = v14;
    v16 = *(v4 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list);
    v17 = [v16 account];
    v18 = [v17 remObjectID];

    v19 = [v18 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    v20 = [v16 store];
    v21 = String._bridgeToObjectiveC()();

    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    aBlock[3] = a3;
    v23 = _Block_copy(aBlock);
    [v20 *a4];
    _Block_release(v23);
  }
}

void sub_1005ACD94(uint64_t a1, const char *a2, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_10078F0E0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100004060(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
      sub_100004758(v7);
    }

    else
    {
    }
  }
}

void sub_1005AD19C(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1005AD254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_1005AD2D4(uint64_t a1)
{
  if (qword_100767490 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10078F0E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004060(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save share with error %s", v6, 0xCu);
    sub_100004758(v7);
  }

  v11 = v1 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(v1, a1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005AD498()
{
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v0 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v1 = static UIImage.ttr_image(named:in:)();

  if (!v1)
  {
    return 0;
  }

  v2 = UIImagePNGRepresentation(v1);

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id TTRIWhatsNewAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWhatsNewAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIWhatsNewAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWhatsNewAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005AD684(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMStore) init];
  type metadata accessor for TTRWhatsNewInteractor();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = v3;
  v5 = type metadata accessor for TTRIWhatsNewRouter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[3] = v5;
  v20[4] = &off_100714508;
  v20[0] = v6;
  type metadata accessor for TTRIWhatsNewPresenter();
  v7 = swift_allocObject();
  v8 = sub_10000AE84(v20, v5);
  v9 = __chkstk_darwin(v8);
  v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v11;
  v7[11] = v5;
  v7[12] = &off_100714508;
  v7[8] = v13;
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = v4;
  v7[7] = &off_1007266E8;
  v14 = v3;

  sub_100004758(v20);
  v15 = objc_allocWithZone(type metadata accessor for TTRIWhatsNewViewController());

  v17 = sub_100472E60(v16);

  v7[5] = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v17;
}

uint64_t sub_1005AD8B4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F230);
  v1 = sub_100003E30(v0, qword_10078F230);
  if (qword_100767278 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005AD97C()
{
  v0 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_100284F94(v5, v2);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v11 = 0;
    if ((*(v9 + 48))(v2, 1, v8) != 1)
    {
      URL._bridgeToObjectiveC()(v10);
      v11 = v12;
      (*(v9 + 8))(v2, v8);
    }

    sub_100008E04(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v7 openSensitiveURL:v11 withOptions:isa];

    if ((v14 & 1) == 0)
    {
      if (qword_100767498 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_10078F230);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRICloudIsOffProvider: Failed to open Settings to turn on iCloud for Reminders", v18, 2u);
      }
    }

    return sub_1005ADC18(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005ADC18(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005ADCCC()
{
  v0 = sub_1005ADD10();
  v1 = TTRIInlineButtonAttachmentTextView.attachmentToken.getter();

  return v1;
}

id sub_1005ADD10()
{
  v1 = qword_10078F250;
  v2 = *(v0 + qword_10078F250);
  if (v2)
  {
    v3 = *(v0 + qword_10078F250);
  }

  else
  {
    v4 = sub_1005AE4EC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1005ADD74()
{
  v0 = sub_1005ADD10();
  v1 = TTRIInlineButtonAttachmentTextView.menuOptions.getter();

  return v1;
}

void sub_1005ADDA8()
{
  v0 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.selectedItem.getter();
}

void (*sub_1005ADDF8(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Optional();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  v9 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.selectedItem.getter();

  return sub_1005ADF30;
}

void sub_1005ADF30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1005AEA70(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1005AEA70(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1005AE00C()
{
  v0 = sub_1005ADD10();
  v1 = [v0 text];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

double (*sub_1005AE078(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  sub_1005AE00C();
  *a1 = v3;
  a1[1] = v4;
  return sub_1005AE0C0;
}

double sub_1005AE0C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    v4 = sub_1005ADD10();
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    TTRIInlineButtonAttachmentTextView.applyText(_:)(v5);
  }

  else
  {
    v6 = sub_1005ADD10();
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    TTRIInlineButtonAttachmentTextView.applyText(_:)(v7);
  }

  return result;
}

void sub_1005AE148()
{
  v0 = sub_1005ADD10();
  v1 = [v0 attributedText];

  if (!v1)
  {
    __break(1u);
  }
}

void (*sub_1005AE194(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  sub_1005AE148();
  *a1 = v3;
  return sub_1005AE1DC;
}

void sub_1005AE1DC(void **a1, char a2)
{
  v5 = *a1;
  if (a2)
  {
    v2.super.isa = *a1;
    isa = v2.super.isa;
    sub_1005AEBD0(v2);
  }

  else
  {
    v4.super.isa = *a1;
    sub_1005AEBD0(v4);
  }
}

uint64_t sub_1005AE23C()
{
  sub_1005AE264();

  return swift_getObjCClassFromMetadata();
}

id sub_1005AE26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[qword_10078F248 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[qword_10078F250] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  v10 = [v9 containerView];
  [v10 setLayoutMarginsRelativeArrangement:1];
  [v10 setPreservesSuperviewLayoutMargins:1];
  v11 = v10;
  [v11 setHorizontalAlignment:0];
  [v11 setVerticalAlignment:0];

  [v11 setDebugBoundingBoxesEnabled:0];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D420;
  *(v12 + 32) = sub_1005ADD10();
  sub_10014C480();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setArrangedSubviews:isa];

  [v9 setSelectionStyle:0];
  [v9 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v9;
}

id sub_1005AE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005AE26C(a3, a4, v6);
}

id sub_1005AE4EC(void *a1)
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v1;
}

void sub_1005AE5AC(uint64_t a1)
{
  sub_10003B788(a1 + qword_10078F248);
  v2 = *(a1 + qword_10078F250);
}

uint64_t sub_1005AE67C(uint64_t a1, uint64_t a2)
{
  sub_1005AEA70(a1);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*sub_1005AE6F8(void *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1005ADDF8(v2);
  return sub_1005AECA8;
}

double sub_1005AE790(uint64_t a1, void *a2)
{
  sub_1005AEB6C(a1, a2);

  return result;
}

void (*sub_1005AE7CC(void *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1005AE078(v2);
  return sub_1005AECA8;
}

void sub_1005AE864(NSAttributedString a1)
{
  sub_1005AEBD0(a1);
}

void (*sub_1005AE8A8(void *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1005AE194(v2);
  return sub_1005AE91C;
}

uint64_t sub_1005AE920(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C38F4(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005AE980()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v0 = UIView.firstDescendantView<A>(ofType:passing:)();
  if (v0 && (v1 = v0, v2 = [v0 accessibilityLabel], v1, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_1005AE148();
    v7 = v6;
    swift_getWitnessTable();
    v8._countAndFlagsBits = v3;
    v8._object = v5;
    TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v7, v8);
  }

  else
  {
    sub_1005AE148();
  }
}

void sub_1005AEA70(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v6 = sub_1005ADD10();
  (*(v3 + 16))(v5, a1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
}

void sub_1005AEB6C(uint64_t a1, void *a2)
{
  v5 = sub_1005ADD10();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  TTRIInlineButtonAttachmentTextView.applyText(_:)(v4);
}

void sub_1005AEBD0(NSAttributedString a1)
{
  v2 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(a1, 0);
}

void sub_1005AEC28()
{
  *(v0 + qword_10078F248 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_10078F250) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005AED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30[0] = v30 - v9;
  v30[1] = a3;
  v30[2] = a4;
  v11 = type metadata accessor for TTRIFilterOperationCellContentState.Option(0, a3, a4, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v33 = v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  v31 = v12;
  v21 = *(v12 + 16);
  v21(v30 - v17, v32, v11, v16);
  (v21)(&v18[v20], a2, v11);
  v32 = v8;
  v22 = *(v8 + 48);
  if (v22(v18, 1, v7) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v33, v18, v11);
    if (v22(&v18[v20], 1, v7) != 1)
    {
      v24 = v32;
      v25 = &v18[v20];
      v26 = v30[0];
      (*(v32 + 32))(v30[0], v25, v7);
      v27 = v33;
      v23 = static TTRIMenuItem.== infix(_:_:)();
      v28 = *(v24 + 8);
      v28(v26, v7);
      v28(v27, v7);
LABEL_8:
      v15 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, v7);
  }

  v23 = 0;
  v11 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v11);
  return v23 & 1;
}

uint64_t sub_1005AF070(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = a2[1];
  v8 = *a1 == *a2 && a1[1] == v7;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRIFilterOperationCellContentState.Option(0, a3, a4, v7);
  swift_getWitnessTable();
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRIFilterOperationCellContentState(0, a3, a4, v9);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1005AF1F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a2;
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = type metadata accessor for TTRIFilterOperationCellContentState(0, v5, *((swift_isaMask & *a1) + 0x58), a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v24 - v8);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  TTRITableCellContent.state.getter();
  v14 = *(v5 - 8);
  (*(v14 + 16))(v13, v9 + *(v6 + 40), v5);
  v15 = *(v7 + 8);
  v15(v9, v6);
  (*(v14 + 56))(v13, 0, 1, v5);
  sub_1005B1884(v13);
  (*(v11 + 8))(v13, v10);
  TTRITableCellContent.state.getter();
  v16 = v9[2];

  v17.n128_f64[0] = v15(v9, v6);
  v18 = *(a1 + qword_10078F400);
  *(a1 + qword_10078F400) = v16;
  sub_1005AFBDC(v18, v17, v19, v20, v21);

  TTRITableCellContent.state.getter();
  v22 = *v9;
  v23 = v9[1];

  v15(v9, v6);
  sub_1005AF4B4(v22, v23);
}

void sub_1005AF4B4(uint64_t a1, unint64_t a2)
{
  v6 = sub_1005AFB78();
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (!a2)
  {
    a2 = 0xE000000000000000;
  }

  v5 = a2;
  TTRIInlineButtonAttachmentTextView.applyText(_:)(*&v4);
}

void sub_1005AF52C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 containerView];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_100026410;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_10072FA30;
  v7 = _Block_copy(v8);

  [v5 performBatchUpdates:v7];

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

double sub_1005AF7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_isaMask & *v4;
  v7 = *(v6 + qword_1007A8990);
  v8 = type metadata accessor for TTRIFilterOperationCellContentState(0, v7, *(v6 + qword_1007A8990 + 8), a4);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = *(v7 - 8);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_1000046FC(a1, v30);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v7);
    (*(v15 + 32))(v18, v14, v7);
    v21 = TTRITableCellContent.state.modify();
    (*(v15 + 24))(v22 + *(v8 + 40), v18, v7);
    v21(v30, 0);
    v23 = v4 + *((swift_isaMask & *v4) + qword_1007A8990 + 16);
    swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = *(v23 + 1);
      swift_endAccess();

      TTRITableCellContent.state.getter();
      v24(v10);
      v26 = sub_1000301AC(v24, v25);
      (*(v29 + 8))(v10, v8, v26);
      (*(v15 + 8))(v18, v7);
    }

    else
    {
      (*(v15 + 8))(v18, v7);
      swift_endAccess();
    }
  }

  else
  {
    v20(v14, 1, 1, v7);
    (*(v12 + 8))(v14, v11);
  }

  return result;
}

id sub_1005AFB78()
{
  v1 = qword_10078F408;
  v2 = *(v0 + qword_10078F408);
  if (v2)
  {
    v3 = *(v0 + qword_10078F408);
  }

  else
  {
    v4 = sub_1005B03AC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005AFBDC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = qword_10078F400;
  v7 = *((swift_isaMask & *v5) + 0x50);
  v8 = *((swift_isaMask & *v5) + 0x58);
  type metadata accessor for TTRIFilterOperationCellContentState.Option(0, v7, v8, a5);

  swift_getWitnessTable();
  v9 = static Array<A>.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = sub_1005AFB78();
    v15[5] = *(v5 + v6);
    __chkstk_darwin(v10);
    v15[2] = v7;
    v15[3] = v8;
    v11 = type metadata accessor for Array();
    v12 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();

    WitnessTable = swift_getWitnessTable();
    sub_1000868E8(sub_1005B1A60, v15, v11, v12, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

    TTRIInlineButtonAttachmentTextView.menuOptions.setter();
  }
}

uint64_t sub_1005AFD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  __chkstk_darwin(a1);
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v12 = type metadata accessor for TTRIFilterOperationCellContentState.Option(0, a2, a3, v11);
  v13 = __chkstk_darwin(v12);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, a1, v13);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = &enum case for TTRIInlineButtonAttachmentTextView.Option.separator<A>(_:);
  }

  else
  {
    (*(v8 + 32))(v10, v15, v7);
    TTRIMenuItem.title.getter();
    TTRIMenuItem.image.getter();
    TTRIMenuItem.item.getter();
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    (*(v8 + 8))(v10, v7);
    v17 = &enum case for TTRIInlineButtonAttachmentTextView.Option.item<A>(_:);
  }

  v18 = *v17;
  v19 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  return (*(*(v19 - 8) + 104))(v22, v18, v19);
}

uint64_t sub_1005B004C()
{
  sub_1005AE264();

  return swift_getObjCClassFromMetadata();
}

id sub_1005B0074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = swift_isaMask;
  *(v3 + qword_10078F3F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = qword_10078F400;
  type metadata accessor for TTRIFilterOperationCellContentState.Option(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v10);
  *(v3 + v9) = Array.init()();
  *(v3 + qword_10078F408) = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v25.receiver = v3;
  v25.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v25, "initWithStyle:reuseIdentifier:", a1, v11);

  v13 = objc_opt_self();
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 textAttachmentViewProviderClassForFileType:v15];

  if (!v16)
  {
    type metadata accessor for TTRIMenuButtonAttachmentProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = String._bridgeToObjectiveC()();
    [v13 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v18];
  }

  v19 = v14;
  v20 = [v19 containerView];
  [v20 setLayoutMarginsRelativeArrangement:1];
  [v20 setPreservesSuperviewLayoutMargins:1];
  v21 = v20;
  [v21 setHorizontalAlignment:0];
  [v21 setVerticalAlignment:0];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = sub_1005AFB78();
  sub_10014C480();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setArrangedSubviews:isa];

  [v19 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v19;
}

id sub_1005B0338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005B0074(a3, a4, v6);
}

id sub_1005B03AC(void *a1)
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  TTRIInlineButtonAttachmentTextView.attachmentToken.setter();
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v1;
}

void sub_1005B0484(uint64_t a1)
{
  sub_10003B788(a1 + qword_10078F3F8);

  v2 = *(a1 + qword_10078F408);
}

uint64_t sub_1005B04F8(uint64_t a1)
{
  result = type metadata accessor for TTRIMenuItem();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1005B0574(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1005B06C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIMenuItem();
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1005B0788(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1005B08A0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1005B0A20(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1005B0B38(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_1005B0CE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIMenuItem();
  v4 = *(*(v3 - 8) + 48);

  return v4(a1, 1, v3);
}

uint64_t sub_1005B0D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRIMenuItem();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, 1, v5);
}

uint64_t sub_1005B0DDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1005B0E84(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-25 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v13 = *(v5 + 16);

    v13(v11 + 1, v12 + 1, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_1005B0FA0(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_1005B1024(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

void *sub_1005B10D4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;

  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

_OWORD *sub_1005B119C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *sub_1005B1224(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + 8) & ~*(v9 + 80), (v8 + *(v9 + 80) + 8) & ~*(v9 + 80));
  return a1;
}

uint64_t sub_1005B12CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1005B1458(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1005B16C8(uint64_t a1)
{
  v3 = v1 + qword_10078F3F8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005B1758()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v0 = UIView.firstDescendantView<A>(ofType:passing:)();
  if (!v0 || (v1 = v0, v2 = [v0 accessibilityLabel], v1, !v2))
  {
    v7 = sub_1005AFB78();
    [v7 attributedText];
    goto LABEL_6;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1005AFB78();
  v7 = [v6 attributedText];

  if (v7)
  {
    swift_getWitnessTable();
    v8._countAndFlagsBits = v3;
    v8._object = v5;
    TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v7, v8);

LABEL_6:

    return;
  }

  __break(1u);
}

void sub_1005B1884(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v6 = sub_1005AFB78();
  (*(v3 + 16))(v5, a1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
}

void sub_1005B1980()
{
  v1 = *v0;
  v2 = swift_isaMask;
  *(v0 + qword_10078F3F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = qword_10078F400;
  type metadata accessor for TTRIFilterOperationCellContentState.Option(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  *(v0 + v3) = Array.init()();
  *(v0 + qword_10078F408) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005B1A80()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F590);
  v1 = sub_100003E30(v0, qword_10078F590);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1005B1B48(uint64_t a1)
{
  sub_100058000(&qword_100785FB0, &qword_100641CF0);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_10062D3F0;
  v4 = *(a1 + 16);
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  return result;
}

uint64_t sub_1005B1BB8()
{
  sub_100058000(&qword_100774070, &unk_10063B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D3F0;
  *(v0 + 32) = 1;
  *(v0 + 72) = 0;
  sub_1005B3968();
  AnyHashable.init<A>(_:)();
  *(v0 + 120) = 1;
  return v0;
}

uint64_t sub_1005B1C30(uint64_t a1)
{
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1];

  sub_100323E20();
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
  swift_allocObject();
  swift_weakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

double sub_1005B1D64(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_100084EC0(0, 0, v4, &unk_1006482E8, v9);
  }

  return result;
}

uint64_t sub_1005B1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1005B1F18;

  return sub_1005B2914();
}

uint64_t sub_1005B1F18(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1 & 1;

    return _swift_task_switch(sub_1005B2068, 0, 0);
  }
}

uint64_t sub_1005B2068()
{
  if (*(v0 + 72) == 1)
  {
    v1 = OBJC_IVAR____TtC9Reminders32TTRIShowRecentlyDeletedPresenter_dataModelSource;
    *(v0 + 32) = *(*(v0 + 16) + 104);
    *(v0 + 40) = v1;
    type metadata accessor for MainActor();
    *(v0 + 48) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005B2150, v3, v2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1005B2150()
{
  v1 = v0[5];
  v2 = v0[2];

  v0[7] = *(v2 + v1);
  v0[8] = *(v2 + v1 + 8);

  return _swift_task_switch(sub_1005B21D0, 0, 0);
}

uint64_t sub_1005B21D0()
{
  swift_getObjectType();
  v1 = dispatch thunk of TTRShowRecentlyDeletedDataModelSourceType.account.getter();
  sub_100256C8C(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1005B225C(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  if (qword_1007674A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10078F590);
  v5 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("User request to perform primary action on cell", 46, 2, v5);

  static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertTitle.getter();
  static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertMessage.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v8 = String._bridgeToObjectiveC()();

  v31 = sub_1005B267C;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001762CC;
  v30 = &unk_10072FA58;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v23 = [v10 actionWithTitle:v8 style:1 handler:v9];
  _Block_release(v9);

  static TTRLocalizableStrings.Common.recoverButton.getter();
  v11 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v11, v25, v1);
  v12 = v1;
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v26;
  v15 = v11;
  v16 = v24;
  (*(v2 + 32))(v14 + v13, v15, v12);

  v17 = String._bridgeToObjectiveC()();

  v31 = sub_1005B3838;
  v32 = v14;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001762CC;
  v30 = &unk_10072FAA8;
  v18 = _Block_copy(&aBlock);

  v19 = [v10 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  v20 = v23;
  [v16 addAction:v23];
  [v16 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong presentViewController:v16 animated:1 completion:0];
  }
}

double sub_1005B267C()
{
  if (qword_1007674A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10078F590);
  v1 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("User cancelled recover reminders", 32, 2, v1);

  return result;
}

uint64_t sub_1005B271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_100775608, &qword_1006367C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_100058000(&qword_100772150, &unk_100635D00);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  (*(v8 + 16))(v10 + v9, a3, v7);
  v11 = enum case for REMRDLUserOperationDetail.rdl_tapToRecover(_:);
  v12 = type metadata accessor for REMRDLUserOperationDetail();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  sub_10024E244(v10, 0, v6);

  return sub_1000079B4(v6, &qword_100775608, &qword_1006367C0);
}

uint64_t sub_1005B2914()
{
  v1[6] = v0;
  sub_100058000(&qword_100776250, &qword_100636800);
  v1[7] = swift_task_alloc();
  v2 = sub_100058000(&qword_100776258, &qword_100636808);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100058000(&qword_100776260, &qword_100636810);
  v1[11] = swift_task_alloc();
  v3 = sub_100058000(&qword_100776268, &qword_100636818);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_100058000(&qword_100769378, &qword_10062DE80);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_100058000(&qword_100790030, &qword_1006482F8);
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v7;
  v1[25] = v6;

  return _swift_task_switch(sub_1005B2C14, v7, v6);
}