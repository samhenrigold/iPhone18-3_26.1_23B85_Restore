void sub_3D63C(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_4F4F8(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_12558C();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000010, 0x800000000012D0C0, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_12558C(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000010, 0x800000000012D0C0, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_12558C(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000010, 0x800000000012D0C0, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

void sub_405FC(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_50464(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_1256CC();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000012, 0x800000000012D060, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_1256CC(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000012, 0x800000000012D060, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_1256CC(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000012, 0x800000000012D060, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

void sub_435BC(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_513D0(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_12550C();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000017, 0x800000000012D0A0, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_12550C(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000017, 0x800000000012D0A0, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_12550C(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000017, 0x800000000012D0A0, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

void sub_4657C(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_5233C(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_12555C();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000010, 0x800000000012D100, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_12555C(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000010, 0x800000000012D100, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_12555C(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000010, 0x800000000012D100, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_4953C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FE80);
  sub_5B30(v0, qword_15FE80);
  return sub_1257AC();
}

uint64_t sub_49588@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15EE08 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_15FE80);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CreateTimer.NeedsValueStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.slot(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_346FC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_4981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_123E8C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_123E4C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_123DAC();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_5AE8(&qword_160510, &qword_12B170);
  v3[14] = swift_task_alloc();
  v7 = sub_123D7C();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = sub_123D6C();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_123CDC();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for TimerNLv3Intent(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v10 = sub_123D3C();
  v3[30] = v10;
  v3[31] = *(v10 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v11 = sub_124BCC();
  v3[34] = v11;
  v3[35] = *(v11 - 8);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_49C08, 0, 0);
}

unint64_t sub_49C08()
{
  v253 = v0;
  v1 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v1 + 240);
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  v5 = sub_123B4C();
  sub_123CCC();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(*(v1 + 248) + 96))(*(v1 + 264), *(v1 + 240));
      sub_5AE8(&unk_15FF80, &unk_126EE0);

      goto LABEL_5;
    }

    if (v6 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(*(v1 + 248) + 96))(*(v1 + 264), *(v1 + 240));
      ObjectType = swift_getObjectType();
      if (SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType))
      {
        sub_1255EC();

        v46 = sub_F139C(v45);
        if (v46)
        {
          v47 = v46;
          v240 = v1;
          if (qword_15EE08 != -1)
          {
            swift_once();
          }

          v48 = sub_125ABC();
          sub_5B30(v48, qword_15FE80);
          v49 = v5;
          v50 = sub_125AAC();
          v51 = sub_125DFC();

          v246 = v49;
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *&v251 = v53;
            *v52 = 136315138;
            v54 = v49;
            v55 = [v54 description];
            v56 = sub_125B9C();
            v58 = v57;

            v59 = sub_8530(v56, v58, &v251);

            *(v52 + 4) = v59;
            _os_log_impl(&dword_0, v50, v51, "Current SK intent %s", v52, 0xCu);
            sub_5BB0(v53);
          }

          v60 = sub_123B4C();
          sub_1255CC();
          sub_1255DC();
          v61 = v47;
          v62 = sub_125AAC();
          v63 = sub_125DFC();

          v237 = v61;
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v251 = v65;
            *v64 = 136315138;
            v66 = v61;
            v67 = [v66 description];
            v68 = sub_125B9C();
            v70 = v69;

            v71 = sub_8530(v68, v70, &v251);

            *(v64 + 4) = v71;
            _os_log_impl(&dword_0, v62, v63, "UsoGraph createTimerIntent:%s", v64, 0xCu);
            sub_5BB0(v65);
          }

          v72 = v60;
          v73 = sub_125AAC();
          v74 = sub_125DFC();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *&v251 = v76;
            *v75 = 136315138;
            v77 = v72;
            v78 = [v77 description];
            v79 = sub_125B9C();
            v81 = v80;

            v82 = sub_8530(v79, v81, &v251);

            *(v75 + 4) = v82;
            _os_log_impl(&dword_0, v73, v74, "Updated SK intent:%s", v75, 0xCu);
            sub_5BB0(v76);
          }

          v37 = v240;
          v251 = 0u;
          v252 = 0u;
          v83 = v72;
          sub_125EDC();

          sub_1239BC();

          swift_unknownObjectRelease();
          goto LABEL_13;
        }
      }

      if (qword_15EE08 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_79;
    }

    if (v6 != enum case for Parse.uso(_:))
    {
      if (qword_15EE08 != -1)
      {
        swift_once();
      }

      v101 = *(v1 + 184);
      v100 = *(v1 + 192);
      v102 = *(v1 + 176);
      v103 = *(v1 + 24);
      v104 = sub_125ABC();
      sub_5B30(v104, qword_15FE80);
      (*(v101 + 16))(v100, v103, v102);
      v105 = sub_125AAC();
      v106 = sub_125DEC();
      if (os_log_type_enabled(v105, v106))
      {
        v248 = v5;
        v108 = *(v1 + 184);
        v107 = *(v1 + 192);
        v109 = *(v1 + 176);
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v251 = v111;
        *v110 = 136315138;
        sub_123CCC();
        v112 = sub_125BAC();
        v114 = v113;
        (*(v108 + 8))(v107, v109);
        v115 = sub_8530(v112, v114, &v251);
        v5 = v248;

        *(v110 + 4) = v115;
        _os_log_impl(&dword_0, v105, v106, "Received unsupported parse: %s", v110, 0xCu);
        sub_5BB0(v111);
      }

      else
      {
        v117 = *(v1 + 184);
        v116 = *(v1 + 192);
        v118 = *(v1 + 176);

        (*(v117 + 8))(v116, v118);
      }

      v119 = *(v1 + 264);
      v121 = *(v1 + 240);
      v120 = *(v1 + 248);
      *(v1 + 296) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      goto LABEL_60;
    }

    v84 = *(v1 + 264);
    v86 = *(v1 + 160);
    v85 = *(v1 + 168);
    v87 = *(v1 + 152);
    (*(*(v1 + 248) + 96))(v84, *(v1 + 240));
    (*(v86 + 32))(v85, v84, v87);
    if (qword_15EE08 != -1)
    {
      swift_once();
    }

    v247 = v5;
    v88 = sub_125ABC();
    sub_5B30(v88, qword_15FE80);
    v89 = sub_125AAC();
    v90 = sub_125DFC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "Received an USO parse in CreateTimer.parseResponseValue().", v91, 2u);
    }

    v93 = *(v1 + 96);
    v92 = *(v1 + 104);
    v94 = *(v1 + 88);

    sub_123D5C();
    v95 = sub_123D9C();
    (*(v93 + 8))(v92, v94);
    v96 = *(v95 + 16);
    if (v96)
    {
      v97 = 0;
      v98 = *(v1 + 72);
      v5 = (v98 + 16);
      while (v97 < *(v95 + 16))
      {
        (*(v98 + 16))(*(v1 + 80), v95 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v97, *(v1 + 64));
        if (sub_123DBC())
        {
          v141 = *(v1 + 112);
          v143 = *(v1 + 72);
          v142 = *(v1 + 80);
          v144 = *(v1 + 64);

          (*(v143 + 32))(v141, v142, v144);
          v99 = 0;
          goto LABEL_53;
        }

        ++v97;
        (*(v98 + 8))(*(v1 + 80), *(v1 + 64));
        if (v96 == v97)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_79:
      swift_once();
LABEL_48:
      v122 = *(v1 + 208);
      v123 = *(v1 + 176);
      v124 = *(v1 + 184);
      v125 = *(v1 + 24);
      v126 = sub_125ABC();
      sub_5B30(v126, qword_15FE80);
      (*(v124 + 16))(v122, v125, v123);
      v127 = sub_125AAC();
      v128 = sub_125DEC();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = *(v1 + 208);
        v131 = *(v1 + 176);
        v130 = *(v1 + 184);
        v132 = swift_slowAlloc();
        v249 = v5;
        *&v251 = swift_slowAlloc();
        v133 = v251;
        *v132 = 136315138;
        sub_123CCC();
        v134 = sub_125BAC();
        v136 = v135;
        (*(v130 + 8))(v129, v131);
        v137 = sub_8530(v134, v136, &v251);

        *(v132 + 4) = v137;
        _os_log_impl(&dword_0, v127, v128, "Failed to parse userDialogAct into createTimerIntent: %s", v132, 0xCu);
        sub_5BB0(v133);
        v5 = v249;
      }

      else
      {
        v138 = *(v1 + 208);
        v139 = *(v1 + 176);
        v140 = *(v1 + 184);

        (*(v140 + 8))(v138, v139);
      }

      *(v1 + 300) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_61;
    }

LABEL_39:

    v99 = 1;
LABEL_53:
    v145 = *(v1 + 112);
    v146 = *(v1 + 64);
    v147 = *(v1 + 72);
    (*(v147 + 56))(v145, v99, 1, v146);
    if ((*(v147 + 48))(v145, 1, v146) == 1)
    {
      sub_5CA8(*(v1 + 112), &qword_160510, &qword_12B170);
      (*(*(v1 + 184) + 16))(*(v1 + 200), *(v1 + 24), *(v1 + 176));
      v156 = sub_125AAC();
      v157 = sub_125DEC();
      v158 = os_log_type_enabled(v156, v157);
      v159 = *(v1 + 200);
      if (v158)
      {
        v161 = *(v1 + 176);
        v160 = *(v1 + 184);
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        *&v251 = v163;
        *v162 = 136315138;
        sub_123CCC();
        v164 = sub_125BAC();
        v166 = v165;
        (*(v160 + 8))(v159, v161);
        v167 = sub_8530(v164, v166, &v251);

        *(v162 + 4) = v167;
        _os_log_impl(&dword_0, v156, v157, "Failed to parse userParse from parse: %s.", v162, 0xCu);
        sub_5BB0(v163);
      }

      else
      {
        v168 = *(v1 + 176);
        v169 = *(v1 + 184);

        (*(v169 + 8))(v159, v168);
      }

      v120 = *(v1 + 160);
      v119 = *(v1 + 168);
      v121 = *(v1 + 152);
      *(v1 + 297) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

LABEL_60:
      (*(v120 + 8))(v119, v121);
      goto LABEL_61;
    }

    v149 = *(v1 + 136);
    v148 = *(v1 + 144);
    v150 = *(v1 + 128);
    v241 = *(v1 + 120);
    v151 = *(v1 + 112);
    v153 = *(v1 + 64);
    v152 = *(v1 + 72);
    v154 = *(v1 + 48);
    v155 = *(v1 + 56);
    v239 = *(v1 + 40);
    sub_123E0C();
    (*(v152 + 8))(v151, v153);
    sub_123E5C();
    (*(v154 + 8))(v155, v239);
    (*(v150 + 32))(v148, v149, v241);
    sub_123F0C();
    v242 = v1;
    result = sub_12424C();
    if (result >> 62)
    {
      v225 = result;
      v226 = sub_1260FC();
      result = v225;
      if (v226)
      {
        goto LABEL_64;
      }
    }

    else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_64:
      if ((result & 0xC000000000000001) != 0)
      {
        sub_125FFC();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }
      }

      sub_1255EC();

      v171 = sub_F139C(v170);
      if (v171)
      {
        v172 = v171;
        v173 = v247;
        v174 = sub_125AAC();
        v175 = sub_125DFC();

        v250 = v173;
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *&v251 = v177;
          *v176 = 136315138;
          v235 = v175;
          v178 = v173;
          v179 = [v178 description];
          v180 = sub_125B9C();
          v182 = v181;

          v183 = sub_8530(v180, v182, &v251);

          *(v176 + 4) = v183;
          _os_log_impl(&dword_0, v174, v235, "Current SK intent %s", v176, 0xCu);
          sub_5BB0(v177);
        }

        v184 = sub_123B4C();
        sub_1255CC();
        sub_1255DC();
        v185 = v172;
        v186 = sub_125AAC();
        v187 = sub_125DFC();

        v236 = v185;
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *&v251 = v189;
          *v188 = 136315138;
          v190 = v185;
          v191 = [v190 description];
          v192 = sub_125B9C();
          v194 = v193;

          v195 = sub_8530(v192, v194, &v251);

          *(v188 + 4) = v195;
          _os_log_impl(&dword_0, v186, v187, "UsoGraph createTimerIntent:%s", v188, 0xCu);
          sub_5BB0(v189);
        }

        v196 = v184;
        v197 = sub_125AAC();
        v198 = sub_125DFC();

        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          *&v251 = v200;
          *v199 = 136315138;
          v201 = v196;
          v202 = [v201 description];
          v203 = sub_125B9C();
          v205 = v204;

          v206 = sub_8530(v203, v205, &v251);

          *(v199 + 4) = v206;
          _os_log_impl(&dword_0, v197, v198, "Updated SK intent:%s", v199, 0xCu);
          sub_5BB0(v200);
        }

        v208 = v242[20];
        v207 = v242[21];
        v209 = v242[18];
        v210 = v242[19];
        v211 = v242[16];
        v212 = v242[15];
        v251 = 0u;
        v252 = 0u;
        v213 = v196;
        sub_125EDC();

        sub_1239BC();

        (*(v211 + 8))(v209, v212);
        v37 = v242;
        (*(v208 + 8))(v207, v210);
        goto LABEL_13;
      }

      v214 = sub_125AAC();
      v215 = sub_125DEC();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *&v251 = v217;
        *v216 = 136315138;
        v218 = sub_124B8C();
        v220 = sub_8530(v218, v219, &v251);

        *(v216 + 4) = v220;
        _os_log_impl(&dword_0, v214, v215, "Could not create IntentType from given task: %s", v216, 0xCu);
        sub_5BB0(v217);
      }

      v221 = *(v1 + 160);
      v243 = *(v1 + 168);
      v222 = *(v1 + 144);
      v238 = *(v1 + 152);
      v224 = *(v1 + 120);
      v223 = *(v1 + 128);
      *(v1 + 298) = 0;
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      sub_1251BC();
      swift_willThrow();

      (*(v223 + 8))(v222, v224);
      (*(v221 + 8))(v243, v238);
LABEL_61:

      v42 = *(v1 + 8);
      goto LABEL_14;
    }

    v227 = sub_125AAC();
    v228 = sub_125DEC();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      *v229 = 0;
      _os_log_impl(&dword_0, v227, v228, "USO graph has no tasks.", v229, 2u);
    }

    v230 = *(v1 + 160);
    v244 = *(v1 + 168);
    v232 = *(v1 + 144);
    v231 = *(v1 + 152);
    v233 = *(v1 + 120);
    v234 = *(v1 + 128);

    *(v1 + 299) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    (*(v234 + 8))(v232, v233);
    (*(v230 + 8))(v244, v231);
    goto LABEL_61;
  }

  (*(*(v1 + 248) + 96))(*(v1 + 264), *(v1 + 240));
LABEL_5:
  v7 = *(v1 + 288);
  v8 = *(v1 + 272);
  v9 = *(v1 + 232);
  v10 = *(*(v1 + 280) + 32);
  v10(v7, *(v1 + 264), v8);
  v10(v9, v7, v8);
  v11 = sub_532A8();
  if (qword_15EE08 != -1)
  {
    swift_once();
  }

  v13 = *(v1 + 224);
  v12 = *(v1 + 232);
  v14 = sub_125ABC();
  sub_5B30(v14, qword_15FE80);
  sub_9848(v12, v13);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v1 + 224);
  v245 = v5;
  v19 = v1;
  if (v17)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v251 = v21;
    *v20 = 136315138;
    sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
    v22 = sub_12618C();
    v24 = v23;
    sub_97EC(v18);
    v25 = sub_8530(v22, v24, &v251);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v15, v16, "NLIntent:%s", v20, 0xCu);
    sub_5BB0(v21);
  }

  else
  {

    sub_97EC(v18);
  }

  v26 = v11;
  v27 = sub_125AAC();
  v28 = sub_125DFC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v251 = v30;
    *v29 = 136315138;
    v31 = v26;
    v32 = [v31 description];
    v33 = sub_125B9C();
    v35 = v34;

    v36 = sub_8530(v33, v35, &v251);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_0, v27, v28, "Updated SK intent:%s", v29, 0xCu);
    sub_5BB0(v30);
  }

  v37 = v19;
  v38 = v19[29];
  v251 = 0u;
  v252 = 0u;
  v39 = v26;
  sub_125EDC();

  sub_1255EC();
  sub_1239BC();

  sub_97EC(v38);
LABEL_13:
  v40 = v37[2];
  v41 = sub_5AE8(&qword_15FF78, &unk_127BB0);
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);

  v42 = v37[1];
LABEL_14:

  return v42();
}

uint64_t sub_4B7CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_125ABC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_124FFC();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_12501C();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_12392C();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = sub_12368C();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_4B9FC, 0, 0);
}

uint64_t sub_4B9FC(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  sub_12363C();
  sub_FFEBC();
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE08 != -1)
  {
    swift_once();
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  v8 = sub_5B30(v7, qword_15FE80);
  (*(v6 + 16))(v5, v8, v7);
  mach_absolute_time();
  sub_12502C();
  if (qword_15EE18 != -1)
  {
    swift_once();
  }

  v11 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_4BBC8;

  return (v11)(0xD00000000000001DLL, 0x800000000012CF50, _swiftEmptyArrayStorage);
}

uint64_t sub_4BBC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_4BE90, 0, 0);
  }

  else
  {
    v4[20] = a1;
    v6 = swift_task_alloc();
    v4[21] = v6;
    *v6 = v5;
    v6[1] = sub_4BD64;
    v7 = v4[17];
    v8 = v4[14];
    v9 = v4[11];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v8, v9, 0);
  }
}

uint64_t sub_4BD64()
{
  v2 = *(*v1 + 160);
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_4C098;
  }

  else
  {
    v3 = sub_4BF98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4BE90()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_4BF98()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_4C098()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_4C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_4981C(a1, a2, a3);
}

uint64_t sub_4C28C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return sub_4B7CC(a1);
}

uint64_t sub_4C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa();
  *v8 = v4;
  v8[1] = sub_5D08;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_4C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa();
  *v8 = v4;
  v8[1] = sub_5D08;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_4C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = _s18NeedsValueStrategyCMa();
  *v12 = v6;
  v12[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_4C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa();
  *v14 = v7;
  v14[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_4C6B4(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1255EC();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_15FFF0, &qword_127C00);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x621Au >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_4D620(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_12561C();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_160000, &qword_127C10);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x6404u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_4E58C(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_12564C();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_160018, &qword_127C28);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x6100u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_4F4F8(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_12558C();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_160010, &qword_127C20);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x10u)
    {
      v36 = 0x6080u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_50464(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1256CC();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_15FFF8, &qword_127C08);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x6400u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_513D0(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_12550C();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&qword_160008, &qword_127C18);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x7000u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t sub_5233C(uint64_t a1)
{
  v107 = a1;
  v1 = sub_1252AC();
  v94 = *(v1 - 8);
  v95 = v1;
  __chkstk_darwin(v1);
  v93 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_123DAC();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_123D6C();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1252CC();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_123D1C();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_123D3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_124BCC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_12555C();
  (*(v16 + 16))(v18, v107, v15);
  v23 = (*(v16 + 88))(v18, v15);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
LABEL_5:
    v24 = *(v20 + 32);
    v24(v22, v18, v19);
    v24(v4, v22, v19);
    if (qword_15EF50 != -1)
    {
      swift_once();
    }

    sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
    sub_12428C();
    sub_97EC(v4);
    v25 = byte_127C3A[SLOBYTE(v110[0])];
LABEL_8:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v26 = sub_125ABC();
    sub_5B30(v26, qword_161820);
    v27 = sub_125AAC();
    v28 = sub_125DFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v29 = 136315394;
      v108 = v105;
      sub_5AE8(&unk_160020, &qword_127C30);
      v30 = sub_125BAC();
      v32 = sub_8530(v30, v31, v110);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      LOBYTE(v108) = v25;
      v33 = sub_125BAC();
      v35 = sub_8530(v33, v34, v110);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Testing currentIntentType %s against input verb %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    if (v25 <= 0x12u)
    {
      v36 = 0x6020u >> v25;
      return v36 & 1;
    }

LABEL_60:
    LOBYTE(v36) = 1;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v16 + 96))(v18, v15);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v23 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v18, v15);
    v38 = v102;
    v37 = v103;
    v39 = v104;
    (*(v103 + 32))(v102, v18, v104);
    v40 = sub_123CFC();
    v42 = v41;
    v43 = v101;
    (*(v101 + 104))(v12, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v10);
    v44 = sub_1252BC();
    v46 = v45;
    (*(v43 + 8))(v12, v10);
    if (v40 == v44 && v42 == v46)
    {

LABEL_24:
      v25 = 10;
LABEL_25:
      (*(v37 + 8))(v38, v39);
      goto LABEL_8;
    }

    v50 = sub_1261BC();

    if (v50)
    {
      goto LABEL_24;
    }

    v57 = sub_123D0C();
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v60 = v93;
    v59 = v94;
    v61 = v95;
    (*(v94 + 104))(v93, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v95);
    v62 = sub_12529C();
    v64 = v63;
    (*(v59 + 8))(v60, v61);
    if (*(v58 + 16))
    {
      v65 = sub_8AD8(v62, v64);
      v67 = v66;

      if (v67)
      {
        sub_8B50(*(v58 + 56) + 32 * v65, v110);

        if (swift_dynamicCast())
        {
          v25 = sub_B66D0(v108, v109);
          if (v25 != 19)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
    }

LABEL_70:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v89 = sub_125ABC();
    sub_5B30(v89, qword_161820);
    v90 = sub_125AAC();
    v91 = sub_125DFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Unknown direct invocation payload (missing/unknown timer verb). Disallowing input.", v92, 2u);
    }

    (*(v37 + 8))(v38, v39);
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  if (v23 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v16 + 96))(v18, v15);
    ObjectType = swift_getObjectType();
    v48 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (!v48)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v68 = sub_125ABC();
      sub_5B30(v68, qword_161820);
      v69 = sub_125AAC();
      v70 = sub_125DFC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "No USO task found on input. Deferring to later checks for parse validity.", v71, 2u);
      }

      swift_unknownObjectRelease();

      goto LABEL_60;
    }

    v25 = sub_C69B0(v48);
    if (sub_B6264(v25) == 1886352499 && v49 == 0xE400000000000000)
    {

      goto LABEL_45;
    }

    v72 = sub_1261BC();

    if (v72)
    {
LABEL_45:
      v73 = sub_C6BD8();
      swift_unknownObjectRelease();

      if (v73)
      {
        goto LABEL_60;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_76:

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.uso(_:))
  {
    (*(v16 + 96))(v18, v15);
    v52 = v98;
    v51 = v99;
    v53 = v100;
    (*(v99 + 32))(v98, v18, v100);
    sub_123D5C();
    v54 = sub_32E7C();
    v55 = (*(v96 + 8))(v7, v97);
    if (!v54)
    {
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v78 = sub_125ABC();
      sub_5B30(v78, qword_161820);
      v79 = sub_125AAC();
      v80 = sub_125DFC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "No USO task found on input. Deferring to later checks for parse validity.", v81, 2u);
      }

      (*(v51 + 8))(v52, v53);
      goto LABEL_60;
    }

    v25 = sub_C69B0(v55);
    if (sub_B6264(v25) == 1886352499 && v56 == 0xE400000000000000)
    {
    }

    else
    {
      v82 = sub_1261BC();

      if ((v82 & 1) == 0)
      {
        (*(v51 + 8))(v52, v53);
        goto LABEL_76;
      }
    }

    v83 = sub_C6BD8();

    (*(v51 + 8))(v52, v53);
    if (v83)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (v23 == enum case for Parse.ifClientAction(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_60;
  }

  if (v23 == enum case for Parse.empty(_:))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v74 = sub_125ABC();
    sub_5B30(v74, qword_161820);
    v75 = sub_125AAC();
    v76 = sub_125DFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "Empty parse found while testing valid input. Disallowing empty input.", v77, 2u);
    }

    LOBYTE(v36) = 0;
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v85 = sub_125ABC();
    sub_5B30(v85, qword_161820);
    v86 = sub_125AAC();
    v87 = sub_125DEC();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "Unknown parse type found while testing input validity. Disallowing unknown input.", v88, 2u);
    }

    (*(v16 + 8))(v18, v15);
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

id sub_532A8()
{
  v0 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_536D8(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  v6 = sub_12412C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v8 = &qword_15FF90;
    v9 = &unk_127BC0;
    v10 = v2;
LABEL_7:
    sub_5CA8(v10, v8, v9);
LABEL_8:
    [objc_opt_self() defaultDuration];
    goto LABEL_9;
  }

  sub_12410C();
  (*(v7 + 8))(v2, v6);
  v11 = sub_1241AC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    v8 = &qword_15FF98;
    v9 = &qword_12AA40;
    v10 = v5;
    goto LABEL_7;
  }

  sub_12419C();
  v21 = v20;
  (*(v12 + 8))(v5, v11);
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (qword_15EF60 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v22[1])
  {
    v13 = objc_allocWithZone(INSpeakableString);
    v14 = sub_125B8C();

    v15 = [v13 initWithSpokenPhrase:v14];

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (LOBYTE(v22[0]))
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = [objc_allocWithZone(sub_1255EC()) init];
  [v18 setLabel:v16];

  sub_1255DC();
  [v18 setType:v17];

  return v18;
}

uint64_t sub_536D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_53720(void *a1)
{
  v2 = sub_1250BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1255EC();
  sub_1255AC();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160030, &unk_128240);
  sub_1233AC();
  sub_53A84();
  sub_12337C();
  sub_1233CC();
  _s18NeedsValueStrategyCMa();
  v9 = swift_allocObject();
  sub_53AD8(&qword_160040, _s18NeedsValueStrategyCMa, &unk_127B40);
  sub_12330C();
  sub_12338C();
  _s25NeedsConfirmationStrategyCMa();
  v9 = swift_allocObject();
  sub_53AD8(&qword_160048, _s25NeedsConfirmationStrategyCMa, &unk_126D78);
  sub_12334C();
  sub_1233DC();
  sub_1250AC();
  v6 = sub_12504C();
  (*(v3 + 8))(v5, v2);
  if (!v6)
  {
    sub_53B20();
    sub_12336C();
    sub_1233BC();
  }

  sub_53B74();
  sub_12332C();
  sub_12339C();

  return sub_5BB0(a1);
}

BOOL sub_53A20()
{
  sub_5AE8(&unk_161EB0, &qword_129CB0);
  v0 = sub_123A9C();
  sub_12559C();

  v1 = sub_1255BC();
  return v1 == sub_1255BC();
}

unint64_t sub_53A84()
{
  result = qword_160038;
  if (!qword_160038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160038);
  }

  return result;
}

uint64_t sub_53AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_53B20()
{
  result = qword_160050;
  if (!qword_160050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160050);
  }

  return result;
}

unint64_t sub_53B74()
{
  result = qword_160058;
  if (!qword_160058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160058);
  }

  return result;
}

uint64_t sub_53C30(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t sub_53D3C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

void sub_53DE8(uint64_t a1)
{
  sub_54018();
  if (v1 <= 0x3F)
  {
    sub_5407C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_53E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_53F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_54018()
{
  result = qword_162160;
  if (!qword_162160)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_162160);
  }

  return result;
}

void sub_5407C(uint64_t a1)
{
  if (!qword_1600F8)
  {
    sub_12532C();
    v1 = sub_125F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1600F8);
    }
  }
}

uint64_t sub_540D4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160060);
  sub_5B30(v0, qword_160060);
  return sub_1257AC();
}

uint64_t sub_54120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v8 - 8);
  v10 = (&v19 - v9);
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_160060);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerIntents.FlowStrategy.actionForInput() called.", v14, 2u);
  }

  v15 = *(a2 + 16);
  v16 = *(a2 + 36);
  v17 = sub_12514C();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_9A934(a1, v4 + v16, 0, v10, v15, a3);
  return sub_5CA8(v10, &unk_15F1B0, qword_126E30);
}

uint64_t sub_542E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_12392C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_12368C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_124EDC();
  v5[11] = swift_task_alloc();
  v8 = sub_125ABC();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_124FFC();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v10 = sub_12501C();
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v5[21] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v5[22] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v5[23] = swift_task_alloc();
  v11 = sub_124FDC();
  v5[24] = v11;
  v5[25] = *(v11 - 8);
  v5[26] = swift_task_alloc();
  v12 = sub_12370C();
  v5[27] = v12;
  v5[28] = *(v12 - 8);
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_546A8, 0, 0);
}

uint64_t sub_546A8()
{
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 96), qword_160060);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TimerIntents.FlowStrategy.makeFailureConfirmingIntentResponse() called", v4, 2u);
  }

  sub_1255AC();
  if (swift_dynamicCastClass())
  {
    v5 = *(v0 + 24);
    if (sub_12559C() == 101)
    {
      v6 = *(v0 + 224);
      v7 = *(v0 + 208);
      v31 = v7;
      v32 = *(v0 + 232);
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v33 = v9;
      v34 = *(v0 + 216);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 168);
      (*(v6 + 104))();
      (*(v8 + 104))(v7, enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:), v9);
      v13 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v14 = sub_12353C();
      v15 = *(v14 - 8);
      (*(v15 + 104))(v10, v13, v14);
      (*(v15 + 56))(v10, 0, 1, v14);
      v16 = sub_124FEC();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
      v17 = enum case for SiriTimeEventSender.ReasonDescription.sleepUnavailable(_:);
      v18 = sub_124FCC();
      v19 = *(v18 - 8);
      (*(v19 + 104))(v12, v17, v18);
      (*(v19 + 56))(v12, 0, 1, v18);
      sub_124FBC();
      sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
      sub_5CA8(v11, &qword_15F6F0, &unk_128340);
      sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
      (*(v8 + 8))(v31, v33);
      (*(v6 + 8))(v32, v34);
    }

    v20 = *(v0 + 112);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 120));
    (*(v22 + 16))(v20, v1, v21);
    mach_absolute_time();
    sub_12502C();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    *(v0 + 240) = sub_124DBC();
    v35 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v23 = swift_task_alloc();
    *(v0 + 248) = v23;
    *v23 = v0;
    v23[1] = sub_54CF4;

    return (v35)(0xD00000000000001CLL, 0x800000000012CF00, _swiftEmptyArrayStorage);
  }

  else
  {
    v25 = sub_125AAC();
    v26 = sub_125DEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "TimerIntents.FlowStrategy.makeFailureConfirmingIntentResponse was called with an unexpected response type", v27, 2u);
    }

    v28 = *(v0 + 32);

    *(v0 + 288) = 4;
    type metadata accessor for TimerIntents.FlowError(0, *(v28 + 16), *(v28 + 24), v29);
    swift_getWitnessTable();
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_54CF4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_550BC;
  }

  else
  {

    v4 = sub_54E10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_54E10(uint64_t a1)
{
  sub_12361C();
  sub_12391C();
  v2 = swift_task_alloc();
  v1[34] = v2;
  *v2 = v1;
  v2[1] = sub_54ED0;
  v3 = v1[20];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_54ED0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  v8 = *(v2 + 40);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_55304;
  }

  else
  {
    v9 = sub_551E4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_550BC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[3];

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_551E4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_55304()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_55428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DE18;

  return sub_55D84(a1, a3);
}

uint64_t sub_554E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_555A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_55674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_55740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_5580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_503C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_558E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return sub_542E8(a1, v9, v10, a4, a5);
}

uint64_t sub_55998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  *v7 = v3;
  v7[1] = sub_4EA0;

  return sub_55AAC(a1, a2, v8);
}

uint64_t sub_55AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_55B4C, 0, 0);
}

uint64_t sub_55B4C()
{
  v22 = v0;
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_125ABC();
  sub_5B30(v2, qword_160060);
  v3 = v1;
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    WitnessTable = swift_getWitnessTable();
    v11 = sub_A8500((v0 + 2), v6, WitnessTable);
    v13 = sub_8530(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "TimerIntents.FlowStrategy.makeIntentExecutionBehavior(app:intent:) called with intent %s", v8, 0xCu);
    sub_5BB0(v9);
  }

  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = sub_A85C8(v16, v15, v14);
  sub_5CA8(v14, &qword_15FFB0, &unk_1270A0);

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_55D84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_124FAC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_55E48, 0, 0);
}

uint64_t sub_55E48()
{
  v39 = v0;
  if (qword_15EE30 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160060);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TimerIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  v8 = sub_A588C(v7, v5 + *(v6 + 36));
  if (v8)
  {
    v9 = v8;
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(_INPBIntentMetadata);
      v13 = v9;
      v14 = [v12 init];
      [v11 _setMetadata:v14];

      v15 = [v11 _metadata];
      if (v15)
      {
        v16 = v15;
        v18 = *(v0 + 48);
        v17 = *(v0 + 56);
        v19 = *(v0 + 40);
        (*(v18 + 104))(v17, enum case for SiriTimeAppBundleId.timerExtension(_:), v19);
        sub_124F9C();
        (*(v18 + 8))(v17, v19);
        v20 = sub_125B8C();

        [v16 setSystemExtensionBundleId:v20];
      }

      v21 = sub_125EDC();

      v22 = sub_125ECC();

      v23 = *(v0 + 8);

      return v23(v22);
    }
  }

  v25 = sub_125AAC();
  v26 = sub_125DEC();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 24);
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    v31 = *(v28 + 16);
    v32 = sub_12631C();
    v34 = sub_8530(v32, v33, &v38);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "Intent is nil or cannot cast converted intent to IntentType %s", v29, 0xCu);
    sub_5BB0(v30);
  }

  else
  {

    v31 = *(v28 + 16);
  }

  v36 = *(v0 + 24);
  *(v0 + 64) = 0;
  type metadata accessor for TimerIntents.FlowError(0, v31, *(v36 + 24), v35);
  swift_getWitnessTable();
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_562B4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160100);
  sub_5B30(v0, qword_160100);
  return sub_1257AC();
}

uint64_t sub_56300(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_5AE8(&unk_160770, &qword_127E08);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_5AE8(&qword_160118, &qword_127E10);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_12532C();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_1250FC();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_56548, 0, 0);
}

uint64_t sub_56548()
{
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  *(v0 + 240) = sub_5B30(v1, qword_160100);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "decideDismissOrDeleteTimerFlow.execute()", v4, 2u);
  }

  sub_1254EC();
  sub_1250CC();
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_566B4;

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_566B4(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 256) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_56814, 0, 0);
}

uint64_t sub_56814()
{
  v1 = sub_125C8C();

  if (*(v1 + 16))
  {
    (*(v0[21] + 16))(v0[29], v1 + ((*(v0[21] + 80) + 32) & ~*(v0[21] + 80)), v0[20]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v0 + 21;
  v3 = v0[21];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[20];

  v36 = *(v3 + 56);
  v36(v5, v2, 1, v7);
  sub_E344(v5, v6, &qword_15FFB0, &unk_1270A0);
  if ((*(v3 + 48))(v6, 1, v7) == 1)
  {
    sub_5CA8(v0[28], &qword_15FFB0, &unk_1270A0);
    v8 = sub_125AAC();
    v9 = sub_125DFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "DecideDismissOrDeleteTimerFlow: Didn't get a valid halInfo for timer. Running delete timer flow", v10, 2u);
    }

    v12 = v0 + 16;
    v11 = v0[16];
    v13 = v0[27];
    v14 = v0[20];
    v16 = v0[12];
    v15 = v0[13];

    sub_2F488(v15, (v0 + 2));
    sub_DDDC0(v0 + 2);
    v36(v13, 1, 1, v14);
    sub_571E0(v11, v13, v15, v16);
    sub_5CA8(v13, &qword_15FFB0, &unk_1270A0);
    v4 = v0 + 15;
    v17 = v0 + 14;
  }

  else
  {
    v12 = v0 + 23;
    (*(v0[21] + 32))(v0[23], v0[28], v0[20]);
    v18 = sub_125AAC();
    v19 = sub_125DDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "DecideDismissOrDeleteTimerFlow: Running dismissTimerFlow.", v20, 2u);
    }

    v21 = v0[27];
    v23 = v0[22];
    v22 = v0[23];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    v34 = v0[18];
    v35 = v0[17];
    v27 = v18;
    v28 = v0[13];
    v33 = v0[12];

    sub_2F488(v28, (v0 + 7));
    v29 = *(v24 + 16);
    v29(v23, v22, v25);
    sub_F61E4(v0 + 7, v23);
    v29(v21, v22, v25);
    v36(v21, 0, 1, v25);
    sub_56C6C(v26, v21, v28, v33);
    sub_5CA8(v21, &qword_15FFB0, &unk_1270A0);
    (*(v34 + 8))(v26, v35);
    v17 = v0 + 20;
  }

  v30 = v0[29];
  (*(*v4 + 8))(*v12, *v17);
  sub_5CA8(v30, &qword_15FFB0, &unk_1270A0);

  v31 = v0[1];

  return v31();
}

uint64_t sub_56C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a2;
  v50 = a4;
  v44 = sub_5AE8(&qword_160120, &qword_127E18);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v39 - v7;
  v47 = sub_5AE8(&qword_160128, &qword_127E20);
  v8 = __chkstk_darwin(v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v39 - v10;
  v11 = sub_5AE8(&qword_160118, &qword_127E10);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_160100);
  v51 = *(v12 + 16);
  v51(v17, a1, v11);
  v19 = sub_125AAC();
  v20 = sub_125DDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a1;
    v22 = v21;
    v40 = swift_slowAlloc();
    v52 = v40;
    *v22 = 136315138;
    v51(v15, v17, v11);
    v23 = sub_125BAC();
    v41 = v15;
    v24 = a3;
    v25 = v23;
    v43 = v6;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    v28 = v25;
    a3 = v24;
    v15 = v41;
    v29 = sub_8530(v28, v27, &v52);
    v6 = v43;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v19, v20, "Initializing next flow: %s", v22, 0xCu);
    sub_5BB0(v40);

    a1 = v42;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v30 = a3;
  v31 = v49;
  sub_2F488(v30, v49);
  sub_E344(v45, v31 + *(v47 + 36), &qword_15FFB0, &unk_1270A0);
  v51(v15, a1, v11);
  sub_5AE8(&qword_160130, &qword_127E28);
  swift_allocObject();
  sub_12340C();
  sub_E344(v31, v46, &qword_160128, &qword_127E20);
  sub_5C60(&qword_160138, &qword_160128, &qword_127E20, &unk_127D90);

  v32 = v48;
  sub_1237CC();
  v33 = v44;
  v34 = sub_1237AC();
  (*(v6 + 8))(v32, v33);
  v52 = v34;
  sub_5AE8(&qword_160140, &qword_127E30);
  sub_5C60(&qword_160148, &qword_160140, &qword_127E30, &protocol conformance descriptor for AnyValueFlow<A>);
  v35 = sub_12342C();

  v36 = sub_1232AC();
  v37 = v50;
  v50[3] = v36;
  v37[4] = &protocol witness table for AnyFlow;

  *v37 = v35;
  return sub_5CA8(v31, &qword_160128, &qword_127E20);
}

uint64_t sub_571E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a2;
  v50 = a4;
  v44 = sub_5AE8(&qword_160150, &unk_128210);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v39 - v7;
  v47 = sub_5AE8(&unk_160780, &qword_127E38);
  v8 = __chkstk_darwin(v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v39 - v10;
  v11 = sub_5AE8(&unk_160770, &qword_127E08);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_160100);
  v51 = *(v12 + 16);
  v51(v17, a1, v11);
  v19 = sub_125AAC();
  v20 = sub_125DDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a1;
    v22 = v21;
    v40 = swift_slowAlloc();
    v52 = v40;
    *v22 = 136315138;
    v51(v15, v17, v11);
    v23 = sub_125BAC();
    v41 = v15;
    v24 = a3;
    v25 = v23;
    v43 = v6;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    v28 = v25;
    a3 = v24;
    v15 = v41;
    v29 = sub_8530(v28, v27, &v52);
    v6 = v43;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v19, v20, "Initializing next flow: %s", v22, 0xCu);
    sub_5BB0(v40);

    a1 = v42;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v30 = a3;
  v31 = v49;
  sub_2F488(v30, v49);
  sub_E344(v45, v31 + *(v47 + 36), &qword_15FFB0, &unk_1270A0);
  v51(v15, a1, v11);
  sub_5AE8(&qword_160158, &unk_128220);
  swift_allocObject();
  sub_12340C();
  sub_E344(v31, v46, &unk_160780, &qword_127E38);
  sub_5C60(&unk_160790, &unk_160780, &qword_127E38, &unk_127D90);

  v32 = v48;
  sub_1237CC();
  v33 = v44;
  v34 = sub_1237AC();
  (*(v6 + 8))(v32, v33);
  v52 = v34;
  sub_5AE8(&qword_160160, &qword_127E40);
  sub_5C60(&unk_1607A0, &qword_160160, &qword_127E40, &protocol conformance descriptor for AnyValueFlow<A>);
  v35 = sub_12342C();

  v36 = sub_1232AC();
  v37 = v50;
  v50[3] = v36;
  v37[4] = &protocol witness table for AnyFlow;

  *v37 = v35;
  return sub_5CA8(v31, &unk_160780, &qword_127E38);
}

uint64_t sub_57754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a2;
  v50 = a4;
  v44 = sub_5AE8(&unk_1607B0, &qword_127E50);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v39 - v7;
  v47 = sub_5AE8(&qword_160170, &unk_128250);
  v8 = __chkstk_darwin(v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v39 - v10;
  v11 = sub_5AE8(&qword_160030, &unk_128240);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  if (qword_15EE38 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_160100);
  v51 = *(v12 + 16);
  v51(v17, a1, v11);
  v19 = sub_125AAC();
  v20 = sub_125DDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a1;
    v22 = v21;
    v40 = swift_slowAlloc();
    v52 = v40;
    *v22 = 136315138;
    v51(v15, v17, v11);
    v23 = sub_125BAC();
    v41 = v15;
    v24 = a3;
    v25 = v23;
    v43 = v6;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    v28 = v25;
    a3 = v24;
    v15 = v41;
    v29 = sub_8530(v28, v27, &v52);
    v6 = v43;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v19, v20, "Initializing next flow: %s", v22, 0xCu);
    sub_5BB0(v40);

    a1 = v42;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v30 = a3;
  v31 = v49;
  sub_2F488(v30, v49);
  sub_E344(v45, v31 + *(v47 + 36), &qword_15FFB0, &unk_1270A0);
  v51(v15, a1, v11);
  sub_5AE8(&unk_1607C0, &qword_127E58);
  swift_allocObject();
  sub_12340C();
  sub_E344(v31, v46, &qword_160170, &unk_128250);
  sub_5C60(&qword_160178, &qword_160170, &unk_128250, &unk_127D90);

  v32 = v48;
  sub_1237CC();
  v33 = v44;
  v34 = sub_1237AC();
  (*(v6 + 8))(v32, v33);
  v52 = v34;
  sub_5AE8(&unk_1607D0, &qword_128260);
  sub_5C60(&qword_160180, &unk_1607D0, &qword_128260, &protocol conformance descriptor for AnyValueFlow<A>);
  v35 = sub_12342C();

  v36 = sub_1232AC();
  v37 = v50;
  v50[3] = v36;
  v37[4] = &protocol witness table for AnyFlow;

  *v37 = v35;
  return sub_5CA8(v31, &qword_160170, &unk_128250);
}

uint64_t sub_57CC8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v2[11] = swift_task_alloc();
  v3 = sub_5AE8(&qword_160030, &unk_128240);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_124EDC();
  v2[15] = swift_task_alloc();
  v4 = sub_1250FC();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_57E54, 0, 0);
}

uint64_t sub_57E54()
{
  sub_23B08(*(v0 + 80), *(*(v0 + 80) + 24));
  if (sub_1235FC())
  {
    if (qword_15EE38 != -1)
    {
      swift_once();
    }

    v1 = sub_125ABC();
    *(v0 + 152) = sub_5B30(v1, qword_160100);
    v2 = sub_125AAC();
    v3 = sub_125DFC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "decideCreateSleepTimerFlow.execute()", v4, 2u);
    }

    sub_1254EC();
    sub_1250CC();
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_58100;

    return SiriTimeDeviceContextProvider.isNothingPlaying.getter();
  }

  else
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    sub_2F488(v10, v0 + 16);
    sub_53720((v0 + 16));
    v12 = sub_12532C();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_57754(v6, v9, v10, v11);
    sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
    (*(v7 + 8))(v6, v8);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_58100(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 168) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_58260, 0, 0);
}

uint64_t sub_58260(uint64_t a1)
{
  if (*(v1 + 168) == 1)
  {
    v2 = *(v1 + 72);
    type metadata accessor for CreateTimerCATs_Async(0);
    sub_124ECC();
    v3 = sub_124DBC();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v4 = sub_124DBC();
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    sub_584B0();
    v5 = sub_12342C();

    v2[3] = sub_1232AC();
    v2[4] = &protocol witness table for AnyFlow;
    *v2 = v5;
  }

  else
  {
    v6 = sub_125AAC();
    v7 = sub_125DFC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Device has media playing; allowing sleep timer creation", v8, 2u);
    }

    v10 = *(v1 + 104);
    v9 = *(v1 + 112);
    v12 = *(v1 + 88);
    v11 = *(v1 + 96);
    v14 = *(v1 + 72);
    v13 = *(v1 + 80);
    sub_2F488(v13, v1 + 16);
    sub_53720((v1 + 16));
    v15 = sub_12532C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_57754(v9, v12, v13, v14);
    sub_5CA8(v12, &qword_15FFB0, &unk_1270A0);
    (*(v10 + 8))(v9, v11);
  }

  v16 = *(v1 + 8);

  return v16();
}

unint64_t sub_584B0()
{
  result = qword_160168;
  if (!qword_160168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160168);
  }

  return result;
}

uint64_t type metadata accessor for CreateTimerCATs_Async(uint64_t a1)
{
  result = qword_160188;
  if (!qword_160188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_58590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_606C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_58720(void *a1)
{
  sub_12555C();
  sub_12554C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_1601D8, &qword_1281E0);
  sub_1233AC();
  sub_5AE8(&qword_1601E0, &qword_127E98);
  sub_5C60(&qword_1601E8, &qword_1601E0, &qword_127E98, &unk_12A6F8);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_589E8();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_58A3C();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_160200, &unk_127EA0);
  sub_5C60(&qword_160208, &qword_160200, &unk_127EA0, &unk_128670);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_58A90(v3);
  sub_58AF8(v4);
  return sub_58B4C(v5);
}

uint64_t sub_5895C(void *a1, uint64_t a2)
{
  *a1 = sub_DDFFC();
  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_589E8()
{
  result = qword_1601F0;
  if (!qword_1601F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1601F0);
  }

  return result;
}

unint64_t sub_58A3C()
{
  result = qword_1601F8;
  if (!qword_1601F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1601F8);
  }

  return result;
}

uint64_t sub_58A90(uint64_t a1)
{
  v2 = sub_5AE8(&qword_160200, &unk_127EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_58C00()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 7368801;
  *(v4 + 40) = 0xE300000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = sub_124DEC();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0x6D69547465736572;
  *(v4 + 88) = 0xEB00000000737265;
  v8 = v0[1];
  v9 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v4 + 96) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x6174614477656976;
  *(v4 + 136) = 0xE800000000000000;
  v10 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v10 + 24), v3, &unk_15F170, &unk_126E00);
  v11 = sub_124E4C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {

    sub_5CA8(v3, &unk_15F170, &unk_126E00);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v11;
    v13 = sub_23B4C((v4 + 144));
    (*(v12 + 32))(v13, v3, v11);
  }

  return v4;
}

uint64_t sub_58E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_58E50, 0, 0);
}

uint64_t sub_58E50()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x6D69547465736572;
  *(v2 + 40) = 0xEB00000000737265;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23FD8;

  return v5(0xD000000000000017, 0x800000000012D2D0, v2);
}

uint64_t sub_58F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_59034, 0, 0);
}

uint64_t sub_59034()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[6] + 24);
  v5 = sub_124E4C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *v1 = 0;
  *(v1 + 1) = v3;

  v2(v1);
  v6 = sub_58C00();
  v0[8] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_5917C;

  return v9(0xD000000000000019, 0x800000000012D2B0, v6);
}

uint64_t sub_5917C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_5933C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_592C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_592C8()
{
  sub_596E8(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_5933C()
{
  sub_596E8(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593CC, 0, 0);
}

uint64_t sub_593CC()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x6D69547465736572;
  *(v2 + 40) = 0xEB00000000737265;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2B3C8;

  return v5(0xD000000000000018, 0x800000000012D290, v2);
}

uint64_t sub_59518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

uint64_t sub_596E8(uint64_t a1)
{
  v2 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_59758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_59828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_598D8(uint64_t a1)
{
  sub_59A04(319, &unk_15FE30, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_59A04(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_59A04(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_59A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_59A68()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160300);
  sub_5B30(v0, qword_160300);
  return sub_12578C();
}

uint64_t sub_59AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (qword_15EE40 != -1)
  {
    swift_once();
  }

  v7 = sub_125ABC();
  sub_5B30(v7, qword_160300);
  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "TimerFlowDelegatePlugin: called findFlowForX()", v10, 2u);
  }

  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v20, v21);
  v11 = sub_12358C();
  sub_5BB0(v20);
  if (v11)
  {
    sub_12573C();
    sub_12572C();
    sub_5BB0(v20);
  }

  else
  {
    sub_12523C();
    sub_12522C();

    sub_23B08(v20, v21);
    v12 = sub_1235DC();
    sub_5BB0(v20);
    if (v12)
    {
      sub_125D2C();
      v13 = sub_125D4C();
      (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      sub_59E64(0, 0, v6, &unk_128008, v14);
    }
  }

  sub_12523C();
  sub_12522C();

  sub_12523C();
  sub_12522C();

  v15 = type metadata accessor for TimerFlowProvider();
  v16 = swift_allocObject();
  sub_2F4EC(&v19, v16 + 16);
  v23 = v15;
  v24 = &off_158B00;
  v22 = v16;
  sub_5AB7C(a1, a2);
  return sub_2F504(v20);
}

uint64_t sub_59DF0()
{
  sub_12573C();
  sub_12572C();
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_59E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_5A830(a3, v25 - v10);
  v12 = sub_125D4C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5A8A0(v11);
  }

  else
  {
    sub_125D3C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_125D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_125BBC() + 32;
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

      sub_5A8A0(a3);

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

  sub_5A8A0(a3);
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

void sub_5A160(uint64_t *a1@<X8>)
{
  type metadata accessor for TimerFlowDelegatePlugin();
  v2 = swift_allocObject();
  sub_124E0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_124DFC();

  *a1 = v2;
}

uint64_t sub_5A26C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5A364;

  return v6(a1);
}

uint64_t sub_5A364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5A45C(uint64_t a1)
{
  v2 = sub_1234CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE40 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_160300);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "TimerFlowDelegatePlugin: called makeFlowFor()", v9, 2u);
  }

  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_12523C();
  sub_12522C();

  v10 = type metadata accessor for TimerFlowProvider();
  v11 = swift_allocObject();
  sub_2F4EC(&v15, v11 + 16);
  v16[8] = v10;
  v16[9] = &off_158B00;
  v16[5] = v11;
  sub_5AB7C(a1, v5);
  sub_2F504(v16);
  v12 = sub_12349C();
  (*(v3 + 8))(v5, v2);
  if (!v12)
  {
    sub_12546C();
    swift_allocObject();
    v16[0] = sub_12545C();
    sub_5A704(&qword_1603C8, 255, &type metadata accessor for NoOpFlow, &protocol conformance descriptor for NoOpFlow);
    v12 = sub_12342C();
  }

  return v12;
}

uint64_t sub_5A704(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5A74C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A784()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C;

  return sub_59DD4();
}

uint64_t sub_5A830(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A8A0(uint64_t a1)
{
  v2 = sub_5AE8(&unk_1603D0, &qword_127FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A940(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_5A26C(a1, v4);
}

uint64_t sub_5A9F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_5A26C(a1, v4);
}

__n128 sub_5AAB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}