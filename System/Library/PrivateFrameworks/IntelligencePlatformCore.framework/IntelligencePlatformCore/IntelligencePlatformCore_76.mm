void sub_1C4B28D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v289);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4F00DD8();
  v37 = sub_1C43FFAE0(v36, v287);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4F00DC8();
  v40 = sub_1C43FFAE0(v39, &v288);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v45 = sub_1C4B2AA0C();
  v46 = sub_1C43FFAE0(v45, &a12);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C43FCE30(v49);
  v50 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v50);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1C447CE30();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  sub_1C43FCE30(v56);
  sub_1C442023C();
  v285 = v57;
  v286 = v58;
  v59 = sub_1C4F029C8();
  v60 = sub_1C447E480(v59, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v60)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v61)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v62 = sub_1C4B2A2B4();
  v63 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v63, v65, v64 + 8) & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DE10);
    v72 = sub_1C440E728();
    v73(v72);
    v74 = sub_1C4F00968();
    sub_1C4F01CD8();
    v75 = sub_1C44016D0();
    if (os_log_type_enabled(v75, v76))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v77 = swift_slowAlloc();
      sub_1C44180A8(v77);
      sub_1C4488458(4.8149e-34);
      v78 = sub_1C4462464();
      v79(v78);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      sub_1C440962C(v43);
      v86 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v86);
      v87 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v87);
    }

    else
    {
      v88 = sub_1C4462464();
      v89(v88);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v90 = swift_allocError();
    sub_1C44060DC(v90, v91);
    swift_willThrow();
    goto LABEL_43;
  }

  v279 = v52;
  v66 = v289[4];
  sub_1C4414EA8();
  v285 = v67;
  v286 = v68;
  v69 = sub_1C4F029C8();
  v70 = sub_1C44AB1A0(v69, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v92)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  v93 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v93, v95, v94 + 8) & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v98 = sub_1C4F00978();
    sub_1C442B738(v98, qword_1EDE2DE10);
    v99 = sub_1C440E728();
    v100(v99);
    v101 = sub_1C4F00968();
    sub_1C4F01CD8();
    v102 = sub_1C44016D0();
    if (os_log_type_enabled(v102, v103))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v104 = swift_slowAlloc();
      sub_1C44180A8(v104);
      sub_1C4488458(4.8149e-34);
      v105 = sub_1C4462464();
      v106(v105);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v107, v108, v109, v110, v111, v112);
      sub_1C440962C(v43);
      v113 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v113);
      v114 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v114);
    }

    else
    {
      v115 = sub_1C4462464();
      v116(v115);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v117 = swift_allocError();
    sub_1C44060DC(v117, v118);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v96 = sub_1C4F029C8();
  v97 = sub_1C44D3E0C(v96, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v119)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v126 = sub_1C4F00978();
    sub_1C442B738(v126, qword_1EDE2DE10);
    v127 = sub_1C440E728();
    v128(v127);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v129 = sub_1C44016D0();
    if (os_log_type_enabled(v129, v130))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v148)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v120 = sub_1C4F00978();
    sub_1C442B738(v120, qword_1EDE2DE10);
    sub_1C443DFBC();
    v121 = sub_1C443FF6C();
    v122(v121);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v124 = sub_1C44016D0();
    v62 = v278;
    if (os_log_type_enabled(v124, v125))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v131 = swift_slowAlloc();
      sub_1C44180A8(v131);
      sub_1C4488458(4.8149e-34);
      v132 = sub_1C4462464();
      v133(v132);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v134, v135, v136, v137, v138, v139);
      sub_1C440962C(v43);
      v140 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v140);
      v141 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v141);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v144 = swift_allocError();
      sub_1C44060DC(v144, v145);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v142 = sub_1C4462464();
    v143(v142);
    goto LABEL_42;
  }

  v146 = sub_1C441E688();
  v147(v146);
  sub_1C44606F4();
  if (!v148)
  {
    sub_1C4419274();
    swift_once();
  }

  v149 = sub_1C4F00978();
  sub_1C442B738(v149, qword_1EDE2DE10);
  v150 = sub_1C447F2A4();
  v151(v150);
  sub_1C4410278(&v290);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v152 = sub_1C4F00968();
  v153 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v153 = swift_slowAlloc();
    sub_1C443FD74();
    v154 = swift_slowAlloc();
    sub_1C44A3BF0(v154);
    v155 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v155);
    sub_1C4407A84();
    v158 = sub_1C44CD238(v156, v157, MEMORY[0x1E69A92F8]);
    sub_1C446BCDC(v158);
    v159 = sub_1C4436664();
    v160(v159);
    v161 = sub_1C43FBC98();
    sub_1C441D828(v161, v162, v163);
    sub_1C441C818();
    v152 = v280;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v164, v165, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v166 = sub_1C4408D20();
    MEMORY[0x1C6942830](v166);
    v167 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v167);

    sub_1C442A76C();
  }

  else
  {

    v168 = sub_1C449528C();
    v169(v168);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v170 = v287[0];
  v171 = v287[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v172 = sub_1C441DE48();
  v173(v172);
  if (v152 >> 60 == 15)
  {

    v174 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v175 = sub_1C4B2AA9C(v174);
    v176 = sub_1C4F01CD8();

    if (os_log_type_enabled(v175, v176))
    {
      sub_1C43FECF0();
      v177 = swift_slowAlloc();
      sub_1C43FEC60();
      v178 = swift_slowAlloc();
      sub_1C44180A8(v178);
      *v177 = 136380675;
      v179 = sub_1C4404DC8();
      v182 = sub_1C441D828(v179, v180, v181);

      *(v177 + 4) = v182;
      sub_1C44AE8E0(&dword_1C43F8000, v183, v184, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v43);
      v185 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v185);
      v186 = sub_1C4408D20();
      MEMORY[0x1C6942830](v186);
    }

    else
    {
    }

    v218 = sub_1C4434234();
    v219(v218);
    v220 = sub_1C4F00968();
    sub_1C4F01CD8();
    v221 = sub_1C44016D0();
    if (os_log_type_enabled(v221, v222))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v223 = swift_slowAlloc();
      sub_1C44180A8(v223);
      *v152 = 136315138;
      v224 = *v170;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v225 = sub_1C448056C();
      v226(v225);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v152 + 4) = v224;
      sub_1C44046B4();
      _os_log_impl(v227, v228, v229, v230, v231, v232);
      sub_1C440962C(v43);
      v233 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v233);
      v234 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v234);
    }

    else
    {
      v261 = sub_1C448056C();
      v262(v261);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v263, 5);
    swift_willThrow();
    sub_1C4485F24();

    v264 = sub_1C4432980();
    v265(v264);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  v189 = sub_1C44CD238(v187, v188, MEMORY[0x1E6966618]);
  sub_1C4469240(v189);
  v190 = sub_1C4404DC8();
  sub_1C44344B8(v190, v191);
  v192 = sub_1C4404DC8();
  sub_1C447E790(v192, v193);
  sub_1C4440A4C();
  v194 = sub_1C443F33C();
  v195(v194);
  v196 = sub_1C44411F4();
  v197(v196);
  v198 = sub_1C44105A8();
  v199(v198);
  sub_1C4424D48();
  v200 = sub_1C4404DC8();
  sub_1C441DFEC(v200, v201);
  v202 = sub_1C44A14CC();
  v203(v202);
  v204 = sub_1C4415C44();
  v205(v204);
  v206 = sub_1C44224A0();
  v207(v206);
  sub_1C440BC84(&v282);
  v208 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v209 = sub_1C4B2AA9C(v208);
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v209, v152))
  {
    v153 = sub_1C440F274();
    sub_1C443FD74();
    v210 = swift_slowAlloc();
    sub_1C449DB28(v210);
    *v153 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v211, v212, MEMORY[0x1E69A9840]);
    sub_1C4F02858();
    sub_1C4433DD4();
    *(v213 - 256) = v214;
    v214();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v153 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v215, v216, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v217 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v217);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v235 = sub_1C447F5DC();
    v236(v235);
  }

  v237 = sub_1C441C480();
  v239.n128_f64[0] = v238(v237);
  sub_1C4B2A910(v239);
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v241 = sub_1C440C6D8(v240);
  sub_1C4401EC4(v241, v242, v243, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0();
  if (v244)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v274, v275, v276, v153);
    v153 = v277;
  }

  *(v153 + 16) = v209;
  sub_1C43FBF6C();
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v43)
  {
    v246 = v245 + 32;
    v283 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v247 = [v281 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v152)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v249 = v279 == v248 && v209 == 0xEA00000000007265;
        if (v249 || (v250 = sub_1C442BB94(), (sub_1C441D39C(v250, v251) & 1) != 0))
        {
          sub_1C44142D8();
          v152 = v171;
          v252 = sub_1C4EFF048();
          sub_1C44A1DB0(v252);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v287);
          v171 = v283;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v171 = v255;
          }

          sub_1C441D740();
          if (v244)
          {
            sub_1C4B2A9D8();
            v283 = v256;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v283 = v259;
        }

        sub_1C445A9DC();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v283 = v260;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v253 = v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v253 = v257;
        }

        sub_1C4475284();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v253 = v258;
        }

        *(v253 + 16) = v209;
        v254 = v253;
      }

      sub_1C4416850(v254);
LABEL_84:
      v246 += 64;
      v43 = (v43 - 1);
      if (!v43)
      {
        goto LABEL_89;
      }
    }
  }

  v283 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v266 = sub_1C442F39C();
    v267(v266);
    v268 = sub_1C4432980();
    v269(v268);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v270 = sub_1C441CD7C();
    v271(v270);
    v272 = sub_1C4408FB4();
    v273(v272);
  }

LABEL_43:
  sub_1C43FBC80();
}

unint64_t sub_1C4B29EE4()
{
  result = qword_1EC0C3510;
  if (!qword_1EC0C3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3510);
  }

  return result;
}

unint64_t sub_1C4B29F38(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B29F68();
  result = sub_1C4B29FBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B29F68()
{
  result = qword_1EC0C3520;
  if (!qword_1EC0C3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3520);
  }

  return result;
}

unint64_t sub_1C4B29FBC()
{
  result = qword_1EC0C3528;
  if (!qword_1EC0C3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3528);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialMediaProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B2A100()
{
  result = qword_1EC0C3530;
  if (!qword_1EC0C3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3530);
  }

  return result;
}

unint64_t sub_1C4B2A158()
{
  result = qword_1EC0C3538;
  if (!qword_1EC0C3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3538);
  }

  return result;
}

unint64_t sub_1C4B2A1B0()
{
  result = qword_1EC0C3540;
  if (!qword_1EC0C3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3540);
  }

  return result;
}

unint64_t sub_1C4B2A2B4()
{
  result = qword_1EC0C3548;
  if (!qword_1EC0C3548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C3548);
  }

  return result;
}

uint64_t sub_1C4B2A2F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B2A8D4(uint64_t a1)
{
  *(v2 - 460) = v1;

  return sub_1C4F02858();
}

uint64_t sub_1C4B2A8F8()
{
}

uint64_t sub_1C4B2A910(__n128 a1)
{

  return sub_1C4EFEBB8();
}

__n128 sub_1C4B2A930()
{
  result = *(v0 + 352);
  *(v0 + 400) = *(v0 + 336);
  *(v0 + 416) = result;
  return result;
}

uint64_t sub_1C4B2A958(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void sub_1C4B2A970()
{
  v2 = *(v0 - 504);
}

uint64_t sub_1C4B2A988(uint64_t a1)
{

  return sub_1C4F01178();
}

void sub_1C4B2A9A4()
{

  JUMPOUT(0x1C6940010);
}

void *sub_1C4B2A9C0()
{

  return sub_1C4F02078();
}

void sub_1C4B2A9D8()
{

  sub_1C458A900();
}

uint64_t sub_1C4B2A9F4()
{

  return sub_1C49D3614(v0);
}

uint64_t sub_1C4B2AA0C()
{

  return sub_1C4EFF0C8();
}

uint64_t sub_1C4B2AA28()
{

  return sub_1C4EFD2E8();
}

uint64_t sub_1C4B2AA44()
{
}

uint64_t sub_1C4B2AA5C@<X0>(char a1@<W8>)
{
  *(v2 - 192) = *(v1 + 608);
  *(v2 - 184) = a1;

  return sub_1C45D17A0(v2 - 176, v1 + 496);
}

uint64_t sub_1C4B2AA80()
{
  *(v2 - 176) = v0;
  *(v2 - 168) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B2AA9C(uint64_t a1)
{

  return sub_1C4F00968();
}

uint64_t sub_1C4B2AAB4(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

double sub_1C4B2AAF8()
{
  result = 0.0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  return result;
}

void sub_1C4B2AB18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x1Cu);
}

uint64_t sub_1C4B2AB38()
{

  return sub_1C4EFF0C8();
}

void sub_1C4B2AB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

unint64_t sub_1C4B2AB78(float a1)
{
  *v2 = a1;

  return sub_1C441D828(v1, v3, (v4 - 128));
}

uint64_t sub_1C4B2AB98()
{

  return sub_1C4F01148();
}

uint64_t sub_1C4B2ABB8()
{
  *(v1 - 192) = *(v0 + 608);
  *(v1 - 184) = 0;

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4B2ABD8(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

void *sub_1C4B2ABF0()
{

  return sub_1C4F02078();
}

id sub_1C4B2AC08(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C4B2AC20()
{
}

uint64_t SoftwareMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for SoftwareMatcher(0);
  *(a4 + *(v8 + 28)) = 1056964608;
  sub_1C4EFD538();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v9);
  *(a4 + *(v8 + 24)) = v7;
  return result;
}

uint64_t type metadata accessor for SoftwareMatcher(uint64_t a1)
{
  result = qword_1EDDF6650;
  if (!qword_1EDDF6650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SoftwareMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SoftwareMatcher(0);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v3, a1);
}

uint64_t SoftwareMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SoftwareMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SoftwareMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SoftwareMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

float sub_1C4B2AE24(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v21 = 0;
  v22 = *(a1 + 16);
  v71 = a1;
  v72 = v22;
  v23 = (v4 + 8);
  v70 = MEMORY[0x1E69E7CC0];
  v76 = v6;
  while (v72 != v21)
  {
    v24 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v25 = *(v77 + 72);
    sub_1C44718CC(v71 + v24 + v25 * v21, v20);
    sub_1C4EFE778();
    sub_1C4B2DC98(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v81 == v79 && v82 == v80)
    {
      (*v23)(v9, v3);

LABEL_10:
      sub_1C448566C(v20, v68);
      v28 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DCC0();
        v28 = v83;
      }

      v30 = v28;
      v31 = *(v28 + 16);
      if (v31 >= *(v30 + 24) >> 1)
      {
        sub_1C459DCC0();
        v30 = v83;
      }

      ++v21;
      *(v30 + 16) = v31 + 1;
      v70 = v30;
      sub_1C448566C(v68, v30 + v24 + v31 * v25);
      v6 = v76;
    }

    else
    {
      v27 = sub_1C4F02938();
      (*v23)(v9, v3);

      if (v27)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
      ++v21;
      v6 = v76;
    }
  }

  v32 = v70;
  v33 = *(v70 + 16);
  if (v33)
  {
    v81 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v33, 0);
    v34 = v81;
    v35 = v32 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v36 = *(v77 + 72);
    do
    {
      v37 = v74;
      sub_1C44718CC(v35, v74);
      v38 = (v37 + *(v78 + 32));
      v39 = *v38;
      v40 = v38[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v37, type metadata accessor for EntityTriple);
      v81 = v34;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C44CD9C0(v41 > 1, v42 + 1, 1);
        v34 = v81;
      }

      *(v34 + 16) = v42 + 1;
      v43 = v34 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v35 += v36;
      --v33;
    }

    while (v33);

    v6 = v76;
  }

  else
  {
  }

  v71 = sub_1C4499940();
  v44 = 0;
  v45 = *(v73 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  while (v45 != v44)
  {
    v46 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v47 = *(v77 + 72);
    sub_1C44718CC(v73 + v46 + v47 * v44, v75);
    sub_1C4EFE778();
    sub_1C4B2DC98(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v81 == v79 && v82 == v80)
    {
      (*v23)(v6, v3);
    }

    else
    {
      v49 = sub_1C4F02938();
      (*v23)(v6, v3);

      if ((v49 & 1) == 0)
      {
        sub_1C44DBD5C(v75, type metadata accessor for EntityTriple);
        ++v44;
        v6 = v76;
        continue;
      }
    }

    sub_1C448566C(v75, v69);
    v50 = v72;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v50;
    if ((v51 & 1) == 0)
    {
      sub_1C459DCC0();
      v50 = v83;
    }

    v52 = *(v50 + 16);
    if (v52 >= *(v50 + 24) >> 1)
    {
      sub_1C459DCC0();
      v50 = v83;
    }

    ++v44;
    *(v50 + 16) = v52 + 1;
    v72 = v50;
    sub_1C448566C(v69, v50 + v46 + v52 * v47);
    v6 = v76;
  }

  v53 = v72;
  v54 = *(v72 + 16);
  if (v54)
  {
    v81 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v54, 0);
    v55 = v81;
    v56 = v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v57 = *(v77 + 72);
    do
    {
      v58 = v74;
      sub_1C44718CC(v56, v74);
      v59 = (v58 + *(v78 + 32));
      v60 = *v59;
      v61 = v59[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
      v81 = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C44CD9C0(v62 > 1, v63 + 1, 1);
        v55 = v81;
      }

      *(v55 + 16) = v63 + 1;
      v64 = v55 + 16 * v63;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      v56 += v57;
      --v54;
    }

    while (v54);
  }

  v65 = sub_1C4499940();
  if (*(v71 + 16))
  {
    v66 = sub_1C4A32590(v65, v71);

    result = 1.0;
    if (v66)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

float sub_1C4B2B700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), void (*a6)(void))
{
  v107 = a2;
  v108 = a6;
  v97 = a5;
  v111 = a4;
  v110 = a3(0);
  sub_1C43FCDF8();
  v105 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v96 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v95 - v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v95 - v13;
  v14 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v103 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v109 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v104 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v98 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v95 - v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v28 = 0;
  v102 = a1;
  v106 = *(a1 + 16);
  v29 = (v16 + 8);
  v100 = MEMORY[0x1E69E7CC0];
  while (v106 != v28)
  {
    sub_1C4417720();
    sub_1C44032D8();
    sub_1C44718CC(v30, v27);
    sub_1C4EFE778();
    sub_1C4400D1C();
    sub_1C4B2DC98(&off_1EDDFCCA8, v31, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v36 = sub_1C4413754();
      v37(v36);

LABEL_10:
      sub_1C448566C(v27, v98);
      v38 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v38 = v117;
      }

      v40 = *(v38 + 16);
      if (v40 >= *(v38 + 24) >> 1)
      {
        sub_1C459DCC0();
        v38 = v117;
      }

      ++v28;
      *(v38 + 16) = v40 + 1;
      v100 = v38;
      sub_1C44032D8();
      sub_1C448566C(v98, v41);
    }

    else
    {
      v33 = sub_1C4F02938();
      v34 = sub_1C4413754();
      v35(v34);

      if (v33)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v27, type metadata accessor for EntityTriple);
      ++v28;
    }
  }

  v42 = v100;
  v43 = *(v100 + 16);
  if (v43)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v43, 0);
    v44 = v115;
    sub_1C4417720();
    v47 = v42 + (v46 & ~v45);
    v49 = *(v48 + 72);
    do
    {
      v50 = v101;
      sub_1C44718CC(v47, v101);
      v51 = (v50 + *(v109 + 32));
      v53 = *v51;
      v52 = v51[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v50, type metadata accessor for EntityTriple);
      v115 = v44;
      v55 = *(v44 + 16);
      v54 = *(v44 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1C44CD9C0(v54 > 1, v55 + 1, 1);
        v44 = v115;
      }

      *(v44 + 16) = v55 + 1;
      v56 = v44 + 16 * v55;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      v47 += v49;
      --v43;
    }

    while (v43);
  }

  v106 = sub_1C4499940();
  v57 = 0;
  v58 = *(v107 + 16);
  v109 = MEMORY[0x1E69E7CC0];
  while (v58 != v57)
  {
    sub_1C4417720();
    v61 = v60 & ~v59;
    v63 = *(v62 + 72);
    sub_1C44718CC(v107 + v61 + v63 * v57, v112);
    v64 = v103;
    sub_1C4EFE778();
    sub_1C4400D1C();
    sub_1C4B2DC98(&off_1EDDFCCA8, v65, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v70 = sub_1C4413754();
      v71(v70);
    }

    else
    {
      v67 = sub_1C4F02938();
      v68 = v64;
      v69 = v67;
      (*v29)(v68, v14);

      if ((v69 & 1) == 0)
      {
        sub_1C44DBD5C(v112, v108);
        ++v57;
        continue;
      }
    }

    sub_1C448566C(v112, v99);
    v72 = v109;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v72;
    if ((v73 & 1) == 0)
    {
      v74 = sub_1C44032F0();
      v97(v74);
      v72 = v117;
    }

    v76 = *(v72 + 16);
    v75 = *(v72 + 24);
    if (v76 >= v75 >> 1)
    {
      (v97)(v75 > 1, v76 + 1, 1);
      v72 = v117;
    }

    ++v57;
    *(v72 + 16) = v76 + 1;
    v109 = v72;
    sub_1C448566C(v99, v72 + v61 + v76 * v63);
  }

  v77 = v109;
  v78 = *(v109 + 16);
  if (v78)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v78, 0);
    v79 = v115;
    sub_1C4417720();
    v82 = v77 + (v81 & ~v80);
    v84 = *(v83 + 72);
    v85 = v96;
    do
    {
      sub_1C44718CC(v82, v85);
      v86 = (v85 + *(v110 + 32));
      v88 = *v86;
      v87 = v86[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v85, v108);
      v115 = v79;
      v90 = *(v79 + 16);
      v89 = *(v79 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1C44CD9C0(v89 > 1, v90 + 1, 1);
        v79 = v115;
      }

      *(v79 + 16) = v90 + 1;
      v91 = v79 + 16 * v90;
      *(v91 + 32) = v88;
      *(v91 + 40) = v87;
      v82 += v84;
      --v78;
    }

    while (v78);
  }

  v92 = sub_1C4499940();
  if (*(v106 + 16))
  {
    v93 = sub_1C4A32590(v92, v106);

    result = 1.0;
    if (v93)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_1C4B2BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v65 = a3;
  v64 = sub_1C4EF9CD8();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = v71;
  result = sub_1C4ACE7DC();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v71 = v13;
    v28 = v69;
    v29 = v25;
    v30 = v66;
    if (v66)
    {
      sub_1C44F1938(v66, v16);
      v31 = type metadata accessor for GraphTriple(0);
      v32 = v10;
      if (sub_1C44157D4(v16, 1, v31) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v25, v16, v70);
        sub_1C44DBD5C(v16, type metadata accessor for GraphTriple);
        v33 = 0;
      }

      v34 = v67;
      v35 = v68;
    }

    else
    {
      v33 = 1;
      v34 = v67;
      v35 = v68;
      v32 = v10;
    }

    sub_1C440BAA8(v29, v33, 1, v70);
    sub_1C44D0BD8(v34, v32);
    if (sub_1C44157D4(v32, 1, v11) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Software Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v41 = v3;
      sub_1C448566C(v32, v71);
      if (v30)
      {
        v42 = sub_1C4B2B700(v34, v30, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v65;
      v44 = v70;
      v45 = v62;
      v46 = v59;
      v68 = type metadata accessor for SoftwareMatcher(0);
      v47 = *(v41 + *(v68 + 28));
      if (v42 <= v47)
      {
        sub_1C4EFF008();
        v44 = v70;
        sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v44);
        sub_1C44DDDBC(v46, v29);
        v42 = v47;
      }

      v70 = v41;
      v48 = v60;
      sub_1C457E858(v29, v60);
      v49 = sub_1C44157D4(v48, 1, v44);
      v67 = v29;
      if (v49 == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v50 = v69;
        (*(v69 + 32))(v45, v48, v44);
        sub_1C4EFD538();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = v44;
        v53 = *(v50 + 16);
        v54 = v71;
        v53(v43 + v51[5], v71, v44);
        v53(v43 + v51[6], v45, v44);
        v55 = v63;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v57 = v56;
        (*(v35 + 8))(v55, v64);
        (*(v50 + 8))(v45, v52);
        sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v58 = *(v70 + *(v68 + 24));
        *(v43 + v51[7]) = v42;
        *(v43 + v51[8]) = v57;
        *(v43 + v51[9]) = v58;
        *(v43 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B2C6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v65 = a3;
  v67 = sub_1C4EF9CD8();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = v72;
  result = sub_1C4ACE7DC();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v63 = v10;
    v28 = v68;
    v29 = v69;
    v72 = v25;
    if (v70)
    {
      v30 = v70;
      sub_1C44D0BD8(v70, v16);
      v31 = v28;
      if (sub_1C44157D4(v16, 1, v8) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v32 = 1;
      }

      else
      {
        (*(v28 + 16))(v72, v16, v29);
        sub_1C44DBD5C(v16, type metadata accessor for EntityTriple);
        v32 = 0;
      }
    }

    else
    {
      v30 = 0;
      v32 = 1;
      v31 = v68;
    }

    v33 = v71;
    sub_1C440BAA8(v72, v32, 1, v29);
    sub_1C44D0BD8(v33, v13);
    if (sub_1C44157D4(v13, 1, v8) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDE2DE10);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v72;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v35, v36, "Software Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v13, v63);
      if (v30)
      {
        v41 = sub_1C4B2AE24(v33, v30);
      }

      else
      {
        v41 = 0.0;
      }

      v42 = v65;
      v43 = v62;
      v44 = v59;
      v70 = type metadata accessor for SoftwareMatcher(0);
      v71 = v3;
      v45 = *(v3 + *(v70 + 28));
      v46 = v72;
      if (v41 <= v45)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v44, 0, 1, v29);
        sub_1C44DDDBC(v44, v46);
        v41 = v45;
      }

      v47 = v60;
      sub_1C457E858(v46, v60);
      if (sub_1C44157D4(v47, 1, v29) == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v31 + 32))(v43, v47, v29);
        sub_1C4EFD538();
        v48 = v43;
        v49 = v29;
        v50 = type metadata accessor for EntityMatch(0);
        v51 = v31;
        v52 = *(v31 + 16);
        v53 = v63;
        v52(v42 + v50[5], v63, v49);
        v52(v42 + v50[6], v48, v49);
        v54 = v66;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v56 = v55;
        (*(v64 + 8))(v54, v67);
        (*(v51 + 8))(v48, v49);
        sub_1C44DBD5C(v53, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v57 = *(v71 + *(v70 + 24));
        *(v42 + v50[7]) = v41;
        *(v42 + v50[8]) = v56;
        *(v42 + v50[9]) = v57;
        *(v42 + v50[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B2CDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v65 = a3;
  v64 = sub_1C4EF9CD8();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = v71;
  result = sub_1C4ACE7DC();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v71 = v13;
    v28 = v69;
    v29 = v25;
    v30 = v66;
    if (v66)
    {
      sub_1C486854C(v66, v16);
      v31 = type metadata accessor for ConstructionGraphTriple(0);
      v32 = v10;
      if (sub_1C44157D4(v16, 1, v31) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v25, v16, v70);
        sub_1C44DBD5C(v16, type metadata accessor for ConstructionGraphTriple);
        v33 = 0;
      }

      v34 = v67;
      v35 = v68;
    }

    else
    {
      v33 = 1;
      v34 = v67;
      v35 = v68;
      v32 = v10;
    }

    sub_1C440BAA8(v29, v33, 1, v70);
    sub_1C44D0BD8(v34, v32);
    if (sub_1C44157D4(v32, 1, v11) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Software Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v41 = v3;
      sub_1C448566C(v32, v71);
      if (v30)
      {
        v42 = sub_1C4B2B700(v34, v30, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v65;
      v44 = v70;
      v45 = v62;
      v46 = v59;
      v68 = type metadata accessor for SoftwareMatcher(0);
      v47 = *(v41 + *(v68 + 28));
      if (v42 <= v47)
      {
        sub_1C4EFF008();
        v44 = v70;
        sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v44);
        sub_1C44DDDBC(v46, v29);
        v42 = v47;
      }

      v70 = v41;
      v48 = v60;
      sub_1C457E858(v29, v60);
      v49 = sub_1C44157D4(v48, 1, v44);
      v67 = v29;
      if (v49 == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v50 = v69;
        (*(v69 + 32))(v45, v48, v44);
        sub_1C4EFD538();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = v44;
        v53 = *(v50 + 16);
        v54 = v71;
        v53(v43 + v51[5], v71, v44);
        v53(v43 + v51[6], v45, v44);
        v55 = v63;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v57 = v56;
        (*(v35 + 8))(v55, v64);
        (*(v50 + 8))(v45, v52);
        sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v58 = *(v70 + *(v68 + 24));
        *(v43 + v51[7]) = v42;
        *(v43 + v51[8]) = v57;
        *(v43 + v51[9]) = v58;
        *(v43 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t SoftwareMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B2D62C, 0, 0);
}

uint64_t sub_1C4B2D62C()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for SoftwareMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C4B2DB90;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4B2DCE0;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4642C50();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA4E0, &unk_1C4F14210);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B2DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4B2DAA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return SoftwareMatcher.execute()();
}

uint64_t sub_1C4B2DBC0(uint64_t a1)
{
  result = sub_1C4B2DC98(&qword_1EDDF6660, type metadata accessor for SoftwareMatcher, &protocol conformance descriptor for SoftwareMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B2DC18(uint64_t a1)
{
  result = sub_1C4B2DC98(qword_1EDDF6670, type metadata accessor for SoftwareMatcher, &protocol conformance descriptor for SoftwareMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B2DC98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B2DD08()
{
  if (qword_1EC0B7100 != -1)
  {
    swift_once();
  }

  qword_1EC152BE8 = qword_1EC0C3808;
  *algn_1EC152BF0 = *&qword_1EC0C3810;
  qword_1EC152C00 = qword_1EC0C3820;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B2DD88(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3578, &qword_1C4F51B98);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B2E48C();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14 = 1;
    sub_1C4F02738();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4B2DF64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C3568, &unk_1C4F51B88);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4B2E48C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v15 = v6;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v10 = sub_1C4402F74();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1C4B2E1DC(uint64_t a1)
{
  v2 = sub_1C4B2E48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B2E218(uint64_t a1)
{
  v2 = sub_1C4B2E48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B2E254@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B70B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152C00;
  *a1 = qword_1EC152BE8;
  *(a1 + 8) = *algn_1EC152BF0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4B2E2D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4B2DF64(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C4B2E338(uint64_t a1)
{
  result = sub_1C4B2E360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B2E360()
{
  result = qword_1EC0C3550;
  if (!qword_1EC0C3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3550);
  }

  return result;
}

unint64_t sub_1C4B2E3B4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B2E3E4();
  result = sub_1C4B2E438();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B2E3E4()
{
  result = qword_1EC0C3558;
  if (!qword_1EC0C3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3558);
  }

  return result;
}

unint64_t sub_1C4B2E438()
{
  result = qword_1EC0C3560;
  if (!qword_1EC0C3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3560);
  }

  return result;
}

unint64_t sub_1C4B2E48C()
{
  result = qword_1EC0C3570;
  if (!qword_1EC0C3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3570);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Song.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B2E5C0()
{
  result = qword_1EC0C3580;
  if (!qword_1EC0C3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3580);
  }

  return result;
}

unint64_t sub_1C4B2E618()
{
  result = qword_1EC0C3588;
  if (!qword_1EC0C3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3588);
  }

  return result;
}

unint64_t sub_1C4B2E670()
{
  result = qword_1EC0C3590;
  if (!qword_1EC0C3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3590);
  }

  return result;
}

uint64_t sub_1C4B2E730()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return sub_1C4499940();
}

uint64_t sub_1C4B2E75C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1C4F00F28();
  sub_1C4B2E814(a1, 1953460082, 0xE400000000000000, v2);
  swift_beginAccess();
  v3 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3;
}

uint64_t sub_1C4B2E814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C465C024(a2, a3, *(a4 + 16));
  v9 = v8;
  swift_endAccess();
  if (v9)
  {
    v52 = a2;
    v53 = a3;
    v10 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v16 = 0.0;
    v17 = 0.0;
    v54 = a1;
    v55 = v14;
    v56 = a1 + 64;
    if (v13)
    {
      while (1)
      {
        v18 = v15;
LABEL_10:
        v19 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v20 = v19 | (v18 << 6);
        v21 = (*(a1 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        sub_1C443E52C(*(a1 + 56) + 32 * v20, &v60);
        v25 = *(&v60 + 1);
        v24 = v60;
        v27 = *(&v61 + 1);
        v26 = v61;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_11:
        v62 = v23;
        v63 = v22;
        v64[0] = v24;
        v64[1] = v25;
        v64[2] = v26;
        v64[3] = v27;
        if (!v22)
        {
          goto LABEL_39;
        }

        if (*(a1 + 16))
        {
          v28 = sub_1C445FAA8(v23, v22);
          if (v29)
          {
            sub_1C443E52C(*(a1 + 56) + 32 * v28, &v58);
            v60 = v58;
            v61 = v59;
            if (*(&v59 + 1))
            {
              sub_1C456902C(&qword_1EC0BA6D0, &qword_1C4F14648);
              if (swift_dynamicCast())
              {
                sub_1C4B2E814(v57, v23, v22, a4);
                v31 = v30;

                goto LABEL_35;
              }
            }

            else
            {
              sub_1C4448244(&v60);
            }
          }
        }

        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v32 = sub_1C445FAA8(v23, v22);
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1C443E52C(*(a1 + 56) + 32 * v32, &v58);
        v60 = v58;
        v61 = v59;
        if (!*(&v59 + 1))
        {
          break;
        }

        if (!swift_dynamicCast())
        {
          goto LABEL_25;
        }

        v31 = *&v57;
LABEL_26:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        *&v58 = *(a4 + 16);
        v34 = v58;
        v35 = a4;
        *(a4 + 16) = 0x8000000000000000;
        v36 = sub_1C445FAA8(v23, v22);
        if (__OFADD__(*(v34 + 16), (v37 & 1) == 0))
        {
          goto LABEL_42;
        }

        v38 = v36;
        v39 = v37;
        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4F02458())
        {
          v40 = sub_1C445FAA8(v23, v22);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_45;
          }

          v38 = v40;
        }

        if (v39)
        {

          v42 = v58;
          *(*(v58 + 56) + 8 * v38) = v31;
        }

        else
        {
          v42 = v58;
          *(v58 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v43 = (v42[6] + 16 * v38);
          *v43 = v23;
          v43[1] = v22;
          *(v42[7] + 8 * v38) = v31;
          v44 = v42[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_43;
          }

          v42[2] = v46;
        }

        a4 = v35;
        *(v35 + 16) = v42;
        swift_endAccess();
        a1 = v54;
LABEL_35:
        v14 = v55;
        v10 = v56;
        v17 = v17 + v31;
        v16 = v16 + 1.0;
        sub_1C4448244(v64);
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      sub_1C4448244(&v60);
LABEL_25:
      v31 = 0.0;
      goto LABEL_26;
    }

LABEL_6:
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        v26 = 0;
        v25 = 0;
        v24 = 0;
        v22 = 0;
        v23 = 0;
        v27 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        v15 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_beginAccess();
  sub_1C465C024(a2, a3, *(a4 + 16));
  v48 = v47;
  result = swift_endAccess();
  if (v48)
  {
    __break(1u);
LABEL_39:

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    *&v60 = *(a4 + 16);
    sub_1C4660594();
    v50 = v60;
    *(a4 + 16) = v60;
    swift_endAccess();
    result = sub_1C465C024(v52, v53, v50);
    if (v51)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_1C4F029F8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4B2ECDC(void *a1)
{
  result = sub_1C4F00F28();
  if (a1)
  {
    v3 = a1;

    BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()();
    v5 = sub_1C4B2E75C(v4);

    return v5;
  }

  return result;
}

uint64_t sub_1C4B2ED6C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4B2EDBC(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4B2EDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  sub_1C4EF9CC8();
  sub_1C4EF9B38();
  v15 = *(a1 + 32);
  (*(v10 + 16))(v8, v13, v9);
  sub_1C440BAA8(v8, 0, 1, v9);
  sub_1C440BAA8(v5, 1, 1, v9);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C457A86C(v8, v5, 1, 1, 0);
  v18 = [v15 publisherWithOptions_];

  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F43FCD68;
  v19 = _Block_copy(&aBlock);
  v30 = sub_1C4B2F91C;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C4440590;
  v29 = &unk_1F43FCD90;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 sinkWithCompletion:v19 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v19);

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  v22 = *(v14 + 16);
  *v25 = v22;
  v23 = v22;
}

void sub_1C4B2F144(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from read event in sound featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4B2F27C()
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v0 = sub_1C4F00F28();
  v43 = sub_1C4B2ED6C();
  v1 = sub_1C4B2ECDC(v43);
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
LABEL_4:
  v44 = v0;
  while (v6)
  {
LABEL_10:
    v10 = (v2[6] + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    v13 = v2[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v13 && (v14 = sub_1C44191B8(), v16 = sub_1C445FAA8(v14, v15), (v17 & 1) != 0))
    {
      v18 = 0;
      v19 = *(v2[7] + 8 * v16);
    }

    else
    {
      v19 = 0;
      v18 = 1;
    }

    v6 &= v6 - 1;
    v20 = sub_1C4A3B944(v19, v18);
    if (v20)
    {
      v26 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v44;
      v27 = sub_1C44191B8();
      v42 = sub_1C445FAA8(v27, v28);
      v45 = v29;
      if (__OFADD__(v46[2], (v29 & 1) == 0))
      {
        goto LABEL_27;
      }

      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      if ((sub_1C4F02458() & 1) == 0)
      {
        v34 = v42;
        if ((v45 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_24:

        v0 = v46;
        v39 = v46[7];
        v40 = *(v39 + 8 * v34);
        *(v39 + 8 * v34) = v26;

        goto LABEL_4;
      }

      v30 = sub_1C44191B8();
      v32 = sub_1C445FAA8(v30, v31);
      if ((v45 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

      v34 = v32;
      if (v45)
      {
        goto LABEL_24;
      }

LABEL_21:
      v46[(v34 >> 6) + 8] |= 1 << v34;
      v35 = (v46[6] + 16 * v34);
      *v35 = v11;
      v35[1] = v12;
      *(v46[7] + 8 * v34) = v26;
      v36 = v46[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_28;
      }

      v0 = v46;
      v46[2] = v38;
      goto LABEL_4;
    }

    v21 = sub_1C44191B8();
    v0 = v44;
    v23 = sub_1C445FAA8(v21, v22);
    v25 = v24;

    if (v25)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      sub_1C4F02478();
      goto LABEL_4;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v0;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C4B2F5C4(uint64_t a1, uint64_t a2)
{
  sub_1C4B2F27C();
  v4 = sub_1C44F9274(a1);
  if (v4)
  {

    v5 = sub_1C44F9274(a1);

    return v5;
  }

  else
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4499940();
    v8 = sub_1C4499AD0(a1, a2, v7);

    if (v8)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C4B2F70C()
{

  return v0;
}

uint64_t sub_1C4B2F734()
{
  sub_1C4B2F70C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B2F78C()
{
  v1 = v0;
  sub_1C4461BB8(0, &qword_1EDDDB8A0, 0x1E698EB70);
  *(v0 + 16) = static BMContextualUnderstandingSoundAnalysis.soundHierarchyLabels()();
  *(v0 + 24) = 0xC08C200000000000;
  v2 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v3 = [v2 SoundAnalysis];
  swift_unknownObjectRelease();
  *(v1 + 32) = v3;
  return v1;
}

unint64_t sub_1C4B2F8A0(uint64_t a1)
{
  result = sub_1C4B2F8C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B2F8C8()
{
  result = qword_1EC0C3598;
  if (!qword_1EC0C3598)
  {
    type metadata accessor for SoundAnalysisSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3598);
  }

  return result;
}

uint64_t sub_1C4B2F92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490A14(&qword_1EDDF0D70, type metadata accessor for Source, &protocol conformance descriptor for Source);

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4B2FA40()
{
  v1 = v0;
  type metadata accessor for Source(0);
  sub_1C4EFD3D8();
  sub_1C4415EA8();
  v2 = sub_1C4F01FD8();

  MEMORY[0x1C6940010](47, 0xE100000000000000);
  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x65697469746E652FLL, 0xE900000000000073);
  return v2;
}

uint64_t Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = a1 == 0x6361746E6F434E43 && a2 == 0xE900000000000074;
  if (v16 || (sub_1C44329A8(0x6361746E6F434E43, 0xE900000000000074) & 1) != 0)
  {

    if (qword_1EDDFED28 != -1)
    {
      sub_1C440FADC(&qword_1EDDFED28);
    }

    v17 = &unk_1EDDFD088;
  }

  else
  {
    v21 = a1 == 0x6E6F737265504E49 && a2 == 0xE800000000000000;
    if (v21 || (sub_1C44329A8(0x6E6F737265504E49, 0xE800000000000000) & 1) != 0)
    {

      if (qword_1EDDFD0D0 != -1)
      {
        sub_1C4410520(&qword_1EDDFD0D0);
      }

      v17 = qword_1EDDFD0D8;
    }

    else
    {
      v22 = a1 == 0x6E6576456566696CLL && a2 == 0xE900000000000074;
      if (v22 || (sub_1C44329A8(0x6E6576456566696CLL, 0xE900000000000074) & 1) != 0)
      {

        if (qword_1EDDFED08 != -1)
        {
          sub_1C440B19C(&qword_1EDDFED08);
        }

        v17 = qword_1EDDFED10;
      }

      else
      {
        v23 = a1 == 0x694C657275747566 && a2 == 0xEF746E6576456566;
        if (v23 || (sub_1C44329A8(0x694C657275747566, 0xEF746E6576456566) & 1) != 0)
        {

          if (qword_1EDDFED40 != -1)
          {
            sub_1C440604C(&qword_1EDDFED40);
          }

          v17 = qword_1EDDFD2A8;
        }

        else
        {
          v24 = a1 == 0xD000000000000011 && 0x80000001C4F8EE80 == a2;
          if (v24 || (sub_1C44329A8(0xD000000000000011, 0x80000001C4F8EE80) & 1) != 0)
          {

            if (qword_1EDDFD268 != -1)
            {
              sub_1C4404CEC(&qword_1EDDFD268);
            }

            v17 = &qword_1EDDFD270;
          }

          else
          {
            v25 = a1 == 0x636E657265666E69 && a2 == 0xE900000000000065;
            if (v25 || (sub_1C44329A8(0x636E657265666E69, 0xE900000000000065) & 1) != 0)
            {

              if (qword_1EDDFD040 != -1)
              {
                sub_1C44046D4(&qword_1EDDFD040);
              }

              v17 = qword_1EDDFD048;
            }

            else
            {
              v26 = a1 == 0x6361746E6F434753 && a2 == 0xE900000000000074;
              if (v26 || (sub_1C44329A8(0x6361746E6F434753, 0xE900000000000074) & 1) != 0)
              {

                if (qword_1EDDFD068 != -1)
                {
                  sub_1C44123D8(&qword_1EDDFD068);
                }

                v17 = qword_1EDDFD070;
              }

              else
              {
                v27 = a1 == 0x746E6576454753 && a2 == 0xE700000000000000;
                if (v27 || (sub_1C44329A8(0x746E6576454753, 0xE700000000000000) & 1) != 0)
                {

                  if (qword_1EDDFD110 != -1)
                  {
                    sub_1C4403664(&qword_1EDDFD110);
                  }

                  v17 = qword_1EDDFD118;
                }

                else
                {
                  v28 = a1 == 0x70756F72474E49 && a2 == 0xE700000000000000;
                  if (v28 || (sub_1C44329A8(0x70756F72474E49, 0xE700000000000000) & 1) != 0)
                  {

                    if (qword_1EDDFD130 != -1)
                    {
                      sub_1C44123B8(&qword_1EDDFD130);
                    }

                    v17 = qword_1EDDFD138;
                  }

                  else
                  {
                    v29 = a1 == 0x6E6F737265504850 && a2 == 0xE800000000000000;
                    if (v29 || (sub_1C44329A8(0x6E6F737265504850, 0xE800000000000000) & 1) != 0)
                    {

                      if (qword_1EDDFD0A8 != -1)
                      {
                        sub_1C440FA20(&qword_1EDDFD0A8);
                      }

                      v17 = qword_1EDDFD0B0;
                    }

                    else
                    {
                      sub_1C4408FD0();
                      v32 = a1 == v31 + 12 && v30 == a2;
                      if (v32 || (sub_1C44329A8(v31 + 12, v30) & 1) != 0)
                      {

                        if (qword_1EDDFD178 != -1)
                        {
                          sub_1C443012C(&qword_1EDDFD178);
                        }

                        v17 = &qword_1EDDFD180;
                      }

                      else
                      {
                        v33 = a1 == 0x796C696D61464146 && a2 == 0xE800000000000000;
                        if (v33 || (sub_1C44329A8(0x796C696D61464146, 0xE800000000000000) & 1) != 0)
                        {

                          if (qword_1EDDFED38 != -1)
                          {
                            sub_1C4408FF0(&qword_1EDDFED38);
                          }

                          v17 = qword_1EDDFD0F0;
                        }

                        else
                        {
                          v34 = a1 == 0x746E6576454B45 && a2 == 0xE700000000000000;
                          if (v34 || (sub_1C44329A8(0x746E6576454B45, 0xE700000000000000) & 1) != 0)
                          {

                            if (qword_1EDDFD150 != -1)
                            {
                              sub_1C4426E18(&qword_1EDDFD150);
                            }

                            v17 = qword_1EDDFD158;
                          }

                          else
                          {
                            v35 = a1 == 0x656C646E7542534CLL && a2 == 0xEE0064726F636552;
                            if (v35 || (sub_1C44329A8(0x656C646E7542534CLL, 0xEE0064726F636552) & 1) != 0)
                            {

                              if (qword_1EDDFD2F0 != -1)
                              {
                                sub_1C44253F4(&qword_1EDDFD2F0);
                              }

                              v17 = qword_1EDDFD2F8;
                            }

                            else
                            {
                              sub_1C4408FD0();
                              v38 = a1 == v37 && v36 == a2;
                              if (v38 || (sub_1C44329A8(0xD000000000000012, v36) & 1) != 0)
                              {

                                if (qword_1EDDFD218 != -1)
                                {
                                  sub_1C441BCC4(&qword_1EDDFD218);
                                }

                                v17 = &qword_1EDDFD220;
                              }

                              else
                              {
                                sub_1C4408FD0();
                                v41 = a1 == v40 && v39 == a2;
                                if (v41 || (sub_1C44329A8(0xD000000000000012, v39) & 1) != 0)
                                {

                                  if (qword_1EDDFD240 != -1)
                                  {
                                    sub_1C440A0AC(&qword_1EDDFD240);
                                  }

                                  v17 = &qword_1EDDFD248;
                                }

                                else
                                {
                                  v42 = a1 == 0x6E6F6974616C6552 && a2 == 0xEC00000070696873;
                                  if (v42 || (sub_1C44329A8(0x6E6F6974616C6552, 0xEC00000070696873) & 1) != 0)
                                  {

                                    if (qword_1EDDFD318 != -1)
                                    {
                                      sub_1C4414EC8(&qword_1EDDFD318);
                                    }

                                    v17 = qword_1EDDFD320;
                                  }

                                  else
                                  {
                                    v43 = a1 == 0x69546E6565726353 && a2 == 0xEA0000000000656DLL;
                                    if (v43 || (sub_1C44329A8(0x69546E6565726353, 0xEA0000000000656DLL) & 1) != 0)
                                    {

                                      if (qword_1EDDFD340 != -1)
                                      {
                                        sub_1C441EF00(&qword_1EDDFD340);
                                      }

                                      v17 = qword_1EDDFD348;
                                    }

                                    else
                                    {
                                      v44 = a1 == 0x6974616C65524750 && a2 == 0xEE00706968736E6FLL;
                                      if (v44 || (sub_1C44329A8(0x6974616C65524750, 0xEE00706968736E6FLL) & 1) != 0)
                                      {

                                        if (qword_1EDDFD2C8 != -1)
                                        {
                                          sub_1C43FC868(&qword_1EDDFD2C8);
                                        }

                                        v17 = qword_1EDDFD2D0;
                                      }

                                      else
                                      {
                                        sub_1C4408FD0();
                                        v47 = a1 == v46 && v45 == a2;
                                        if (v47 || (sub_1C44329A8(0xD000000000000012, v45) & 1) != 0)
                                        {

                                          if (qword_1EDDFD1F0 != -1)
                                          {
                                            sub_1C4425FD4(&qword_1EDDFD1F0);
                                          }

                                          v17 = &qword_1EDDFD1F8;
                                        }

                                        else
                                        {
                                          sub_1C4408FD0();
                                          v50 = a1 == v49 - 2 && v48 == a2;
                                          if (v50 || (sub_1C44329A8(v49 - 2, v48) & 1) != 0)
                                          {

                                            if (qword_1EDDFD288 != -1)
                                            {
                                              sub_1C443373C(&qword_1EDDFD288);
                                            }

                                            v17 = &qword_1EDDFD290;
                                          }

                                          else
                                          {
                                            sub_1C4408FD0();
                                            v53 = a1 == v52 + 4 && v51 == a2;
                                            if (v53 || (sub_1C44329A8(v52 + 4, v51) & 1) != 0)
                                            {

                                              if (qword_1EDDFD1A0 != -1)
                                              {
                                                sub_1C440D7D8(&qword_1EDDFD1A0);
                                              }

                                              v17 = &qword_1EDDFD1A8;
                                            }

                                            else
                                            {
                                              sub_1C4408FD0();
                                              v56 = a1 == v55 && v54 == a2;
                                              if (!v56 && (sub_1C44329A8(0xD000000000000012, v54) & 1) == 0)
                                              {
                                                if (qword_1EDDFDCF8 != -1)
                                                {
                                                  sub_1C43FF284(&qword_1EDDFDCF8);
                                                }

                                                swift_beginAccess();
                                                if (qword_1EDDFF3C8)
                                                {
                                                  (*(off_1EDDFF3D0 + 2))();
                                                  (*(v57 + 8))(a1, a2);

                                                  if (sub_1C44157D4(v8, 1, v9) != 1)
                                                  {
                                                    sub_1C448B210(v8, v12);
                                                    sub_1C448B210(v12, v15);
                                                    goto LABEL_10;
                                                  }
                                                }

                                                else
                                                {

                                                  sub_1C440BAA8(v8, 1, 1, v9);
                                                }

                                                sub_1C46A1238(v8);
                                                v19 = 1;
                                                return sub_1C440BAA8(a3, v19, 1, v9);
                                              }

                                              if (qword_1EDDFD1C8 != -1)
                                              {
                                                sub_1C4411194(&qword_1EDDFD1C8);
                                              }

                                              v17 = &qword_1EDDFD1D0;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = sub_1C442B738(v9, v17);
  sub_1C449ED64(v18, v15);
LABEL_10:
  sub_1C448B210(v15, a3);
  v19 = 0;
  return sub_1C440BAA8(a3, v19, 1, v9);
}

void *static Source.allSources.getter()
{
  if (qword_1EDDFA690 != -1)
  {
    sub_1C44163D4(&qword_1EDDFA690);
  }

  v0 = off_1EDDFA698;
  v3 = off_1EDDFA698;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4B325E4();
  if (v1)
  {
    sub_1C49D3594(v1);
    return v3;
  }

  return v0;
}

uint64_t sub_1C4B30618()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, &unk_1EDDFD088);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v2 = sub_1C441A4CC(0x6361746E6F434E43);
  result = v3(v2);
  *(&unk_1EDDFD088 + *(v1 + 28)) = 1;
  qword_1EDDFD098 = 1;
  return result;
}

uint64_t Source.init(id:entityClass:shouldDedupe:intValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for Source(0);
  v11 = *(v10 + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  result = (*(v12 + 32))(&a6[v11], a3);
  a6[*(v10 + 28)] = a4;
  *(a6 + 2) = a5;
  return result;
}

void sub_1C4B307A8()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD0D8);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v2 = sub_1C441A4CC(0x6E6F737265504E49);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(2);
}

void sub_1C4B3089C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD0B0);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v2 = sub_1C441A4CC(0x6E6F737265504850);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(6);
}

void sub_1C4B30990()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD158);
  sub_1C4420260();
  sub_1C4EFCF28();
  v2 = sub_1C441A4CC(0x746E6576454B45);
  v3(v2);
  sub_1C444FFBC();
  sub_1C43FDE00(9);
}

void sub_1C4B30A84()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD070);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v2 = sub_1C441A4CC(0x6361746E6F434753);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(11);
}

void sub_1C4B30B7C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD118);
  sub_1C4420260();
  sub_1C4EFCF28();
  v2 = sub_1C441A4CC(0x746E6576454753);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(12);
}

void sub_1C4B30C70()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD0F0);
  sub_1C4420260();
  sub_1C4EFCF48();
  v2 = sub_1C441A4CC(0x796C696D61464146);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(14);
}

void sub_1C4B30D64()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD2F8);
  sub_1C4420260();
  sub_1C4EFD538();
  v2 = sub_1C441A4CC(0x656C646E7542534CLL);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(16);
}

void sub_1C4B30E64()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFED10);
  sub_1C4420260();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v2 = sub_1C441A4CC(0x6E6576456566696CLL);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(17);
}

void sub_1C4B30F5C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD048);
  sub_1C4420260();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v2 = sub_1C441A4CC(0x636E657265666E69);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(18);
}

void sub_1C4B31054()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD270);
  sub_1C440B25C();
  sub_1C4413764();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  qword_1EDDFD270 = 0xD000000000000011;
  unk_1EDDFD278 = v0;
  v3 = sub_1C4407AB4();
  v4(v3);
  sub_1C4403704();
  sub_1C43FDE00(19);
}

void sub_1C4B3114C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD138);
  sub_1C4420260();
  sub_1C4EFCF48();
  v2 = sub_1C441A4CC(0x70756F72474E49);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(21);
}

void sub_1C4B31240()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD180);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFD4C8();
  qword_1EDDFD180 = 0xD00000000000001ELL;
  *algn_1EDDFD188 = v0;
  v3 = sub_1C4407AB4();
  v4(v3);
  sub_1C4403704();
  sub_1C43FDE00(22);
}

void sub_1C4B31338()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD2A8);
  sub_1C4420260();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v2 = sub_1C441A4CC(0x694C657275747566);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(23);
}

void sub_1C4B31438()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD220);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFD4C8();
  sub_1C4408FE4();
  qword_1EDDFD220 = v3;
  *algn_1EDDFD228 = v0;
  v4 = sub_1C4407AB4();
  v5(v4);
  sub_1C4403704();
  sub_1C43FDE00(24);
}

void sub_1C4B3152C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD248);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCED8();
  sub_1C4408FE4();
  qword_1EDDFD248 = v3;
  unk_1EDDFD250 = v0;
  v4 = sub_1C4407AB4();
  v5(v4);
  sub_1C4403704();
  sub_1C43FDE00(25);
}

void sub_1C4B31620()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD320);
  sub_1C4420260();
  sub_1C4EFD2C8();
  v2 = sub_1C441A4CC(0x6E6F6974616C6552);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(27);
}

void sub_1C4B3171C()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD348);
  sub_1C4420260();
  sub_1C4EFD0B8();
  v2 = sub_1C441A4CC(0x69546E6565726353);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(28);
}

void sub_1C4B31814()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C4400D34();
  sub_1C44F9918(v1, qword_1EDDFD2D0);
  sub_1C4420260();
  sub_1C4EFD4C8();
  v2 = sub_1C441A4CC(0x6974616C65524750);
  v3(v2);
  sub_1C4403704();
  sub_1C43FDE00(29);
}

void sub_1C4B31914()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD1F8);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  sub_1C4408FE4();
  qword_1EDDFD1F8 = v3;
  unk_1EDDFD200 = v0;
  v4 = sub_1C4407AB4();
  v5(v4);
  sub_1C4403704();
  sub_1C43FDE00(31);
}

void sub_1C4B31A08()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD290);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  qword_1EDDFD290 = 0xD000000000000010;
  unk_1EDDFD298 = v0;
  v3 = sub_1C4407AB4();
  v4(v3);
  sub_1C444FFBC();
  sub_1C43FDE00(32);
}

void sub_1C4B31B00()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD1A8);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  qword_1EDDFD1A8 = 0xD000000000000016;
  unk_1EDDFD1B0 = v0;
  v3 = sub_1C4407AB4();
  v4(v3);
  sub_1C4403704();
  sub_1C43FDE00(33);
}

void sub_1C4B31BF8()
{
  sub_1C4EFD548();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4400D34();
  sub_1C44F9918(v2, &qword_1EDDFD1D0);
  sub_1C440B25C();
  sub_1C4413764();
  sub_1C4EFCEF8();
  sub_1C4408FE4();
  qword_1EDDFD1D0 = v3;
  unk_1EDDFD1D8 = v0;
  v4 = sub_1C4407AB4();
  v5(v4);
  sub_1C444FFBC();
  sub_1C43FDE00(34);
}

uint64_t sub_1C4B31CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Source(0);
  v7 = sub_1C442B738(v6, a2);

  return sub_1C449ED64(v7, a4);
}

uint64_t Source.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Source(0) + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Source.description.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B31E1C()
{
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v0 = type metadata accessor for Source(0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F51DF0;
  v4 = v3 + v2;
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC(&qword_1EDDFED28);
  }

  v5 = sub_1C442B738(v0, &unk_1EDDFD088);
  sub_1C449ED64(v5, v4);
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v6 = sub_1C442B738(v0, qword_1EDDFD0D8);
  v7 = sub_1C449ED64(v6, v4 + v1);
  if (qword_1EDDFED08 != -1)
  {
    v7 = sub_1C440B19C(&qword_1EDDFED08);
  }

  v8 = sub_1C4417768(v7, qword_1EDDFED10);
  if (qword_1EDDFED40 != -1)
  {
    v8 = sub_1C440604C(&qword_1EDDFED40);
  }

  v9 = sub_1C441C4B0(v8, qword_1EDDFD2A8);
  if (qword_1EDDFD268 != -1)
  {
    v9 = sub_1C4404CEC(&qword_1EDDFD268);
  }

  v10 = sub_1C4417768(v9, &qword_1EDDFD270);
  if (qword_1EDDFD040 != -1)
  {
    v10 = sub_1C44046D4(&qword_1EDDFD040);
  }

  v11 = sub_1C441C4B0(v10, qword_1EDDFD048);
  if (qword_1EDDFD110 != -1)
  {
    v11 = sub_1C4403664(&qword_1EDDFD110);
  }

  v12 = sub_1C4417768(v11, qword_1EDDFD118);
  if (qword_1EDDFD068 != -1)
  {
    v12 = sub_1C44123D8(&qword_1EDDFD068);
  }

  v13 = sub_1C4417768(v12, qword_1EDDFD070);
  if (qword_1EDDFD130 != -1)
  {
    v13 = sub_1C44123B8(&qword_1EDDFD130);
  }

  v14 = sub_1C4417768(v13, qword_1EDDFD138);
  if (qword_1EDDFD0A8 != -1)
  {
    v14 = sub_1C440FA20(&qword_1EDDFD0A8);
  }

  v15 = sub_1C441C4B0(v14, qword_1EDDFD0B0);
  if (qword_1EDDFD178 != -1)
  {
    v15 = sub_1C443012C(&qword_1EDDFD178);
  }

  v16 = sub_1C4417768(v15, &qword_1EDDFD180);
  if (qword_1EDDFED38 != -1)
  {
    v16 = sub_1C4408FF0(&qword_1EDDFED38);
  }

  v17 = sub_1C4417768(v16, qword_1EDDFD0F0);
  if (qword_1EDDFD2F0 != -1)
  {
    v17 = sub_1C44253F4(&qword_1EDDFD2F0);
  }

  v18 = sub_1C4417768(v17, qword_1EDDFD2F8);
  if (qword_1EDDFD150 != -1)
  {
    v18 = sub_1C4426E18(&qword_1EDDFD150);
  }

  v19 = sub_1C4417768(v18, qword_1EDDFD158);
  if (qword_1EDDFD218 != -1)
  {
    v19 = sub_1C441BCC4(&qword_1EDDFD218);
  }

  v20 = sub_1C4417768(v19, &qword_1EDDFD220);
  if (qword_1EDDFD240 != -1)
  {
    v20 = sub_1C440A0AC(&qword_1EDDFD240);
  }

  v21 = sub_1C4417768(v20, &qword_1EDDFD248);
  if (qword_1EDDFD318 != -1)
  {
    v21 = sub_1C4414EC8(&qword_1EDDFD318);
  }

  v22 = sub_1C4417768(v21, qword_1EDDFD320);
  if (qword_1EDDFD340 != -1)
  {
    v22 = sub_1C441EF00(&qword_1EDDFD340);
  }

  v23 = sub_1C441C4B0(v22, qword_1EDDFD348);
  if (qword_1EDDFD2C8 != -1)
  {
    v23 = sub_1C43FC868(&qword_1EDDFD2C8);
  }

  v24 = sub_1C4417768(v23, qword_1EDDFD2D0);
  if (qword_1EDDFD1F0 != -1)
  {
    v24 = sub_1C4425FD4(&qword_1EDDFD1F0);
  }

  v25 = sub_1C4417768(v24, &qword_1EDDFD1F8);
  if (qword_1EDDFD288 != -1)
  {
    v25 = sub_1C443373C(&qword_1EDDFD288);
  }

  v26 = sub_1C4417768(v25, &qword_1EDDFD290);
  if (qword_1EDDFD1A0 != -1)
  {
    v26 = sub_1C440D7D8(&qword_1EDDFD1A0);
  }

  sub_1C4417768(v26, &qword_1EDDFD1A8);
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C4411194(&qword_1EDDFD1C8);
  }

  v27 = sub_1C442B738(v0, &qword_1EDDFD1D0);
  result = sub_1C449ED64(v27, v4 + 22 * v1);
  off_1EDDFA698 = v3;
  return result;
}

uint64_t static Source.productionSources.getter()
{
  if (qword_1EDDFA690 != -1)
  {
    sub_1C44163D4(&qword_1EDDFA690);
  }

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B323D4()
{
  result = sub_1C4B323F4();
  qword_1EDE2DCF0 = result;
  return result;
}

uint64_t sub_1C4B323F4()
{
  v0 = type metadata accessor for Source(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA690 != -1)
  {
    swift_once();
  }

  v4 = off_1EDDFA698;
  v18 = off_1EDDFA698;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4B325E4();
  if (v5)
  {
    sub_1C49D3594(v5);
    v4 = v18;
  }

  v6 = v4[2];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C459CF48(0, v6, 0);
    v7 = v18;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_1C449ED64(v8, v3);
      v10 = *(v3 + 2);
      sub_1C448D818(v3);
      v18 = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        sub_1C459CF48(v11 > 1, v12 + 1, 1);
        v7 = v18;
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1C4613374(v7);
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1C4B325E4()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 2))(), (v1 = (*(v0 + 24))()) != 0))
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 16);

      _os_log_impl(&dword_1C43F8000, v4, v5, "InternalPlugin: Source: loadInternalSources: loaded %ld sources", v6, 0xCu);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "InternalPlugin: Source: loadInternalSources: failed to load internal sources", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t static Source.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t sub_1C4B32854@<X0>(uint64_t *a1@<X8>)
{
  result = Source.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4B32988(uint64_t a1)
{
  result = sub_1C4EFD548();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4B32A14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Source(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4B32A90(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Source(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = a1(0);
  sub_1C449ED64(v2 + *(v10 + 36), v9);
  v11 = *(v9 + 16);
  sub_1C448D818(v9);
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v14 & v13)
    {
      v12 = 0;
    }

    *a2 = v12;
  }
}

void SourcedTriple.sources.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Source(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  (*(a2 + 40))(a1, a2);
  v11 = *(v10 + 16);
  sub_1C448D818(v10);
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v14 & v13)
    {
      v12 = 0;
    }

    *a3 = v12;
  }
}

uint64_t SourcedTriple.description.getter(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for Source(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v41 = (v5 - v4);
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v39 = v6;
  v40 = v7;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v38 = v9 - v8;
  sub_1C43FBE44();
  v10 = sub_1C4EFEEF8();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C4F02248();

  swift_getMetatypeMetadata();
  v21 = sub_1C4F01198();
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C441247C();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v22, v23, MEMORY[0x1E69A9840]);
  sub_1C4F02858();
  sub_1C4417794();

  (*(v16 + 8))(v20, v14);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C441247C();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  sub_1C4811074(v24, v25, MEMORY[0x1E69A9780]);
  sub_1C4F02858();
  sub_1C4417794();

  v37 = *(v42 + 8);
  v37(v13, v10);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F02248();

  sub_1C440E740();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v26, v27, MEMORY[0x1E69A9A18]);
  sub_1C4F02858();
  sub_1C4417794();

  (*(v40 + 8))(v38, v39);
  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  sub_1C4EFF7C8();
  sub_1C4F02858();
  sub_1C4417794();

  v37(v13, v10);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x273A697220, 0xE500000000000000);

  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  sub_1C441247C();
  sub_1C4EFF7D8();
  sub_1C4417794();

  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  v28 = sub_1C441247C();
  v30 = v29;
  v31(v28);
  MEMORY[0x1C6940010](*v41, v41[1]);
  sub_1C448D818(v41);
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  v32 = sub_1C441247C();
  v33(v32, v30);
  sub_1C4417794();

  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  v34 = sub_1C441247C();
  v35(v34, v30);
  sub_1C448D934(v1);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 60;
}

uint64_t static SourcedTriple.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Source(0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v122 = (v10 - v11);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v118 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v118 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v118 - v17;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v128 = v19;
  v129 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v130 = v20 - v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v118 - v23;
  sub_1C43FBE44();
  v131 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v133 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  v132 = v26 - v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v118 - v29;
  v31 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v118 - v39;
  v126 = a4;
  v123 = *(a4 + 8);
  v134 = a1;
  sub_1C43FDE0C();
  sub_1C4EFF7E8();
  v135 = a2;
  v41 = a3;
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v42, v43, MEMORY[0x1E69A9830]);
  LOBYTE(a4) = sub_1C4F010B8();
  v44 = *(v33 + 8);
  v44(v37, v31);
  v44(v40, v31);
  if ((a4 & 1) == 0)
  {
    sub_1C4EFF7E8();
    sub_1C4EFF7E8();
    v66 = sub_1C4EFF078();
    v44(v37, v31);
    v44(v40, v31);
    return v66 & 1;
  }

  sub_1C4EFF7F8();
  v45 = v132;
  sub_1C43FDE0C();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  v48 = sub_1C4811074(v46, v47, MEMORY[0x1E69A9768]);
  v49 = v131;
  v120 = v48;
  v50 = sub_1C4F010B8();
  v51 = v133 + 8;
  v52 = *(v133 + 8);
  v52(v45, v49);
  v52(v30, v49);
  if ((v50 & 1) == 0)
  {
    sub_1C441247C();
    v68 = v67;
    sub_1C4EFF7F8();
    sub_1C43FDE0C();
    sub_1C4EFF7F8();
    v66 = sub_1C4EFE9A8();
    v69 = sub_1C440E740();
    (v52)(v69);
    v52(v30, v68);
    return v66 & 1;
  }

  v118 = v52;
  v119 = v30;
  v133 = v51;
  sub_1C441247C();
  v53 = sub_1C4EFF7D8();
  v55 = v54;
  if (v53 == sub_1C4EFF7D8() && v55 == v56)
  {

    v59 = v130;
  }

  else
  {
    v58 = sub_1C4F02938();

    v59 = v130;
    if ((v58 & 1) == 0)
    {
      sub_1C441247C();
      v60 = sub_1C4EFF7D8();
      v62 = v61;
      v63 = sub_1C4EFF7D8();
LABEL_9:
      if (v60 != v63 || v62 != v64)
      {
        sub_1C43FF5A0();
        v66 = sub_1C4F02938();
LABEL_58:

        return v66 & 1;
      }

      v66 = 0;
      return v66 & 1;
    }
  }

  v70 = v127;
  sub_1C441247C();
  sub_1C4EFF7B8();
  sub_1C43FD024();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v71, v72, MEMORY[0x1E69A9A08]);
  v73 = v129;
  v74 = sub_1C4F010B8();
  v75 = *(v128 + 8);
  v75(v59, v73);
  v75(v70, v73);
  if ((v74 & 1) == 0)
  {
    sub_1C43FD024();
    sub_1C4EFF7B8();
    sub_1C43FD024();
    sub_1C4EFF7B8();
    v66 = sub_1C4EFF868();
    v75(v59, v73);
    v75(v70, v73);
    return v66 & 1;
  }

  v76 = v119;
  sub_1C43FD024();
  sub_1C4EFF7C8();
  sub_1C43FD024();
  sub_1C4EFF7C8();
  sub_1C43FD258();
  v77 = v131;
  v78 = sub_1C4F010B8();
  v79 = sub_1C440E740();
  v80 = v118;
  (v118)(v79);
  v80(v76, v77);
  if ((v78 & 1) == 0)
  {
    sub_1C43FD024();
    sub_1C4EFF7C8();
    sub_1C43FD024();
    sub_1C4EFF7C8();
    sub_1C43FD258();
    v66 = sub_1C4EFE9A8();
    v92 = sub_1C440E740();
    (v80)(v92);
    v80(v76, v77);
    return v66 & 1;
  }

  v81 = v126;
  v82 = *(v126 + 40);
  v83 = v125;
  v82(v41, v126);
  v84 = v124;
  v82(v41, v81);
  if (*v83 == *v84 && v83[1] == v84[1])
  {
    sub_1C448D818(v84);
    sub_1C448D818(v83);
  }

  else
  {
    v86 = sub_1C4F02938();
    sub_1C448D818(v84);
    sub_1C448D818(v83);
    if ((v86 & 1) == 0)
    {
      v87 = v121;
      v88 = sub_1C43FD258();
      (v82)(v88);
      v89 = v122;
      v90 = sub_1C43FD258();
      (v82)(v90);
      if (*v87 == *v89 && v87[1] == v89[1])
      {
        v66 = 0;
      }

      else
      {
        v66 = sub_1C4F02938();
      }

      sub_1C448D818(v89);
      sub_1C448D818(v87);
      return v66 & 1;
    }
  }

  v93 = *(v81 + 48);
  v94 = sub_1C43FD258();
  v95 = v93(v94);
  v97 = v96;
  v98 = sub_1C43FD258();
  if (v95 == v93(v98) && v97 == v99)
  {
  }

  else
  {
    sub_1C43FF5A0();
    v101 = sub_1C4F02938();

    if ((v101 & 1) == 0)
    {
      v102 = sub_1C43FD258();
      v60 = v93(v102);
      v62 = v103;
      v104 = sub_1C43FD258();
      v63 = v93(v104);
      goto LABEL_9;
    }
  }

  v105 = *(v81 + 56);
  v106 = sub_1C43FD258();
  v105(v106);
  v107 = sub_1C43FD258();
  v105(v107);
  if ((sub_1C4684BDC() & 1) == 0)
  {
    v111 = 0x6E776F6E6B6E75;
    (v105)((&v136 + 1), v41, v81);
    v112 = BYTE1(v136);
    (v105)(&v136, v41, v81);
    v113 = 0xE700000000000000;
    v114 = 0x6E776F6E6B6E75;
    switch(v112)
    {
      case 1:
        v113 = 0xE400000000000000;
        v114 = 1819047270;
        break;
      case 2:
        v113 = 0xE500000000000000;
        v114 = 0x61746C6564;
        break;
      case 3:
        v114 = 0x69686374614D6F74;
        v113 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    v115 = 0xE700000000000000;
    switch(v136)
    {
      case 1:
        v115 = 0xE400000000000000;
        v111 = 1819047270;
        break;
      case 2:
        v115 = 0xE500000000000000;
        v111 = 0x61746C6564;
        break;
      case 3:
        v111 = 0x69686374614D6F74;
        v115 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    if (v114 == v111 && v113 == v115)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_1C4F02938();
    }

    goto LABEL_58;
  }

  v108 = v123;
  v109 = *(v123 + 24);
  v110 = v109(v41, v123);
  v66 = v110 < v109(v41, v108);
  return v66 & 1;
}

unint64_t sub_1C4B33D20(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C4B33D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4B33D20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4B33DC0(uint64_t a1)
{
  v2 = sub_1C44964E4();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B33E0C(uint64_t a1)
{
  v2 = sub_1C44964E4();

  return MEMORY[0x1EEE09A88](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SourcedTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B33F78()
{
  result = qword_1EC0C35A8;
  if (!qword_1EC0C35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35A8);
  }

  return result;
}

unint64_t sub_1C4B33FD0()
{
  result = qword_1EDDF4A00;
  if (!qword_1EDDF4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A00);
  }

  return result;
}

unint64_t sub_1C4B34028()
{
  result = qword_1EDDF49F8;
  if (!qword_1EDDF49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49F8);
  }

  return result;
}

unint64_t sub_1C4B34080()
{
  result = qword_1EDDF4A08;
  if (!qword_1EDDF4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A08);
  }

  return result;
}

void sub_1C4B340D4()
{
  sub_1C4413774();
  v6 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0(v7);
  sub_1C440E74C();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      v8 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1C4409010();
    v10 = v6();
    if (v0)
    {

      return;
    }

    if (v10)
    {
      v11 = sub_1C4F02318();
      sub_1C4420284(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      sub_1C4400D5C();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C4B3421C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v26 = result;
  v5 = 0;
  v27 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v27 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v28[0] = v9;
    v28[1] = v8;
    v29 = v10;
    v11 = sub_1C44329C4();
    sub_1C45E8718(v11, v12, v13);
    v14 = v26(v28);
    if (v3)
    {
      v22 = sub_1C44329C4();
      sub_1C45E872C(v22, v23, v24);

LABEL_14:

      return v7;
    }

    if (v14)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1C459D1C0(0, *(v7 + 16) + 1, 1);
        v7 = v30;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_1C459D1C0((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v7 = v30;
      }

      *(v7 + 16) = v17;
      v18 = v7 + 24 * v16;
      *(v18 + 32) = v9;
      *(v18 + 40) = v8;
      *(v18 + 48) = v10;
      v4 = a3;
    }

    else
    {
      v19 = sub_1C44329C4();
      result = sub_1C45E872C(v19, v20, v21);
    }

    v6 += 24;
    ++v5;
  }

  __break(1u);
  return result;
}

void sub_1C4B34390()
{
  sub_1C4413774();
  v6 = v5;
  v23 = MEMORY[0x1E69E7CC0];
  v8(v7);
  sub_1C440E74C();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v20 + 16))
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1C4409010();
    v9 = v6();
    if (v0)
    {

      return;
    }

    if (v9)
    {
      v10 = sub_1C4F02318();
      sub_1C4420284(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      sub_1C4400D5C();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4B344BC()
{
  sub_1C4413774();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v15 = *(v1 + 16 * v4 + 32);
    v16 = v15;
    swift_unknownObjectRetain();
    v8 = v3(&v16);
    if (v0)
    {

      swift_unknownObjectRelease();
      return;
    }

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1C44177AC();
        sub_1C459D468(v10, v11, v12);
        v7 = v17;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C459D468((v13 > 1), v14 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 16 * v14 + 32) = v15;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v4;
  }

  __break(1u);
}

void sub_1C4B34660()
{
  sub_1C4413774();
  v3 = v2;
  v4 = 0;
  v20 = *(v5 + 16);
  v6 = (v5 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v19 = v5;
  v18 = v2;
  while (1)
  {
    if (v20 == v4)
    {
      goto LABEL_15;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v21[0] = v8;
    v21[1] = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v3(v21);
    if (v0)
    {

LABEL_15:

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1C44177AC();
        sub_1C44CD9C0(v12, v13, v14);
        v7 = v22;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C44CD9C0(v15 > 1, v16 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v8;
      *(v17 + 40) = v9;
      v1 = v19;
      v3 = v18;
    }

    else
    {
    }

    v6 += 2;
    ++v4;
  }

  __break(1u);
}

void sub_1C4B3480C()
{
  sub_1C43FE96C();
  v29 = v2;
  v4 = v3;
  sub_1C4413774();
  v32 = v5;
  v33 = v6;
  v8 = v7(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = 0;
  v34 = *(v1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v34 == v14)
    {

LABEL_14:
      sub_1C43FBC80();
      return;
    }

    if (v14 >= *(v1 + 16))
    {
      break;
    }

    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = *(v9 + 72);
    sub_1C449F070(v1 + v15 + v16 * v14, v13, v4);
    v17 = v32(v13);
    if (v0)
    {
      v25 = sub_1C43FE5F8();
      sub_1C449F2E0(v25, v26);

      goto LABEL_14;
    }

    if (v17)
    {
      sub_1C4B35DFC(v13, v30, v4);
      v20 = v31;
      v35 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1C440FB9C();
        v29(v21);
        v20 = v35;
      }

      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v31 = v23 + 1;
        v28 = v23;
        (v29)(v22 > 1, v23 + 1, 1);
        v24 = v31;
        v23 = v28;
        v20 = v35;
      }

      ++v14;
      *(v20 + 16) = v24;
      v31 = v20;
      sub_1C4B35DFC(v30, v20 + v15 + v23 * v16, v4);
    }

    else
    {
      v18 = sub_1C43FE5F8();
      sub_1C449F2E0(v18, v19);
      ++v14;
    }
  }

  __break(1u);
}

uint64_t SourceDuplicates.sourceIds()()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C442D2E4();
  v8 = sub_1C440B27C(v2, MEMORY[0x1E69E6158], v3, v2, v4, v5, v6, v7, v10);

  objc_autoreleasePoolPop(v0);
  return v8;
}

uint64_t SourceDuplicates.subtracting<A>(_:)()
{
  sub_1C44111B4();
  v6 = *v1;
  v5 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v7);
  v23 = v3;
  sub_1C43FF5B4();
  sub_1C4B34660();
  v8 = objc_autoreleasePoolPush();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4499940();
  sub_1C44EC90C(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, v2, v4, v24, 30, 0xE100000000000000, v6, v5, v25, v26, v27, v28, v29, v30, v31, v32);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4407ACC(&qword_1EDDFCED0);
  v17 = sub_1C4F01048();
  v19 = v18;

  objc_autoreleasePoolPop(v8);

  *v0 = v17;
  v0[1] = v19;
  return result;
}

uint64_t SourceDuplicates.hashValue.getter()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t SourceDuplicates.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4B34ED0(v13, a1, a2, a3);
  objc_autoreleasePoolPop(v8);
  v9 = v13[1];
  v10 = *(a2 - 8);
  *a4 = v13[0];
  a4[1] = v9;
  v11 = *(v10 + 8);

  return v11(a1, a2);
}

uint64_t static SourceDuplicates.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t SourceDuplicates.rawValue.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B35054(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4B350E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B35054(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4B35114(uint64_t a1)
{
  v2 = sub_1C4B35798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B35150(uint64_t a1)
{
  v2 = sub_1C4B35798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SourceDuplicates.encode(to:)()
{
  sub_1C43FE96C();
  v1 = v0;
  sub_1C456902C(&qword_1EC0C35B0, &qword_1C4F52168);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4409678(v1, v1[3]);
  sub_1C4B35798();
  sub_1C4F02BF8();
  sub_1C4F02798();
  v3 = sub_1C43FE5F8();
  v4(v3);
  sub_1C43FBC80();
}

void SourceDuplicates.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0C35C0, &qword_1C4F52170);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(v2, v2[3]);
  sub_1C4B35798();
  sub_1C4F02BC8();
  if (!v0)
  {
    v6 = sub_1C4F02678();
    v8 = v7;
    v9 = sub_1C43FE5F8();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C4B35440()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t SourceDuplicates.count.getter()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C442D2E4();
  v8 = sub_1C440B27C(v2, MEMORY[0x1E69E6158], v3, v2, v4, v5, v6, v7, v11);

  objc_autoreleasePoolPop(v0);
  v9 = *(v8 + 16);

  return v9;
}

Swift::Bool __swiftcall SourceDuplicates.contains(_:)(Swift::String a1)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v1);
  sub_1C43FF5B4();
  v2 = sub_1C44CE068();

  return v2;
}

uint64_t SourceDuplicates.adding<A>(_:)()
{
  sub_1C44111B4();
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v1);
  v2 = sub_1C4499940();
  v3 = sub_1C43FE5F8();
  v4(v3);
  v5 = sub_1C4F01B48();
  v6 = sub_1C44999E0(v5, v2);
  return sub_1C4B34CFC(v6);
}

unint64_t sub_1C4B35798()
{
  result = qword_1EC0C35B8;
  if (!qword_1EC0C35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35B8);
  }

  return result;
}

uint64_t sub_1C4B357EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

unint64_t SourceDuplicates.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1C4B358E0(uint64_t a1)
{
  v2 = sub_1C4B35DA8();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4B3592C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B35DA8();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t SourceDuplicates.makeIterator()()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C442D2E4();
  v8 = sub_1C440B27C(v2, MEMORY[0x1E69E6158], v3, v2, v4, v5, v6, v7, v10);

  objc_autoreleasePoolPop(v0);
  return v8;
}

uint64_t sub_1C4B359EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = SourceDuplicates.makeIterator()();

  *a1 = v2;
  a1[1] = 0;
  return result;
}

unint64_t sub_1C4B35A40()
{
  result = qword_1EC0C35A0;
  if (!qword_1EC0C35A0)
  {
    sub_1C4EFB258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35A0);
  }

  return result;
}

unint64_t sub_1C4B35A9C()
{
  result = qword_1EC0C35C8;
  if (!qword_1EC0C35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35C8);
  }

  return result;
}

unint64_t sub_1C4B35AF4()
{
  result = qword_1EDDFB508[0];
  if (!qword_1EDDFB508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFB508);
  }

  return result;
}

unint64_t sub_1C4B35B4C()
{
  result = qword_1EDDFB500;
  if (!qword_1EDDFB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceDuplicates.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4B35CA4()
{
  result = qword_1EC0C35E0;
  if (!qword_1EC0C35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35E0);
  }

  return result;
}

unint64_t sub_1C4B35CFC()
{
  result = qword_1EC0C35E8;
  if (!qword_1EC0C35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35E8);
  }

  return result;
}

unint64_t sub_1C4B35D54()
{
  result = qword_1EC0C35F0;
  if (!qword_1EC0C35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35F0);
  }

  return result;
}

unint64_t sub_1C4B35DA8()
{
  result = qword_1EC0C35F8;
  if (!qword_1EC0C35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C35F8);
  }

  return result;
}

uint64_t sub_1C4B35DFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t static SourceEntityRepresentation.event(with:dataVersion:)(uint64_t a1, uint64_t a2)
{
  sub_1C4EF96B8();
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C4B36294(&unk_1EC0C3600, &protocol conformance descriptor for SourceEntityRepresentation);
  sub_1C4EF9698();

  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t SourceEntityRepresentation.serialize()()
{
  swift_getObjectType();
  sub_1C4EF96F8();
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4B36294(&qword_1EC0C3610, &protocol conformance descriptor for SourceEntityRepresentation);
  v0 = sub_1C4EF96D8();

  return v0;
}

uint64_t sub_1C4B36294(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SourceEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B36314()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B18900();
  v1 = v0;

  return v1;
}

void sub_1C4B363D4()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C440B29C();
  v0(v1);
  sub_1C4405320();

  sub_1C4405950();
}

void sub_1C4B36448()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0(v6, v5, v4, v3, v9, v7, v8, v2);

  sub_1C4405950();
}

void sub_1C4B364E0()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C440B29C();
  v0(v1);
  sub_1C4405320();

  sub_1C4405950();
}

void sub_1C4B36558()
{
  sub_1C440D19C();
  sub_1C4400D8C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C440B29C();
  v0(v1);
  sub_1C4405320();

  sub_1C4405950();
}

uint64_t IdentifiableSourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:relationshipId:pipelineType:)(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v14 = *a7;
  v15 = (*(a9 + 24))(a8, a9, a3, a4, a5, a6);
  v16 = (*(a9 + 16))(a8, a9);
  v19 = v14;
  SourceEntityMappable.constructPropertyRows(source:sourceId:map:basicProperties:nestedSourceId:pipelineType:)(a2, a3, a4, a5, v15, v16, v17, &v19, a8, *(a9 + 8));
  sub_1C4405320();

  return a8;
}

uint64_t MapPredicate.description.getter()
{
  v1 = v0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB1CA0);
  v2 = type metadata accessor for MapPredicate(0);
  sub_1C4EFEEF8();
  sub_1C442D308();
  sub_1C4B391BC(v3, v4, MEMORY[0x1E69A9780]);
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](3826464, 0xE300000000000000);
  v6 = *(v2 + 24);
  v7 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C44353B4(v1 + v6, v8, v7, v9, v10);
  MEMORY[0x1C6940010](980447776, 0xE400000000000000);
  v11 = *(v2 + 28);
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44353B4(v1 + v11, v13, v12, v14, v15);
  MEMORY[0x1C6940010](3831328, 0xE300000000000000);
  v21 = *v1;
  v16 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C44353B4(&v21, v17, v16, v18, v19);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v22;
}

uint64_t sub_1C4B36A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6156746567726174 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FB1DF0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4B36B90(char a1)
{
  result = 0x6156746567726174;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B36C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B36A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B36C74(uint64_t a1)
{
  v2 = sub_1C4B38F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B36CB0(uint64_t a1)
{
  v2 = sub_1C4B38F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MapPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C3618, &qword_1C4F524B8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4402A68();
  sub_1C43FD870();
  v25 = sub_1C4B38F04();
  sub_1C440F61C(&type metadata for MapPredicate.CodingKeys, v26, v25);
  sub_1C4F02738();
  if (!v23)
  {
    type metadata accessor for MapPredicate(0);
    sub_1C4EFEEF8();
    sub_1C442D308();
    sub_1C4B391BC(v27, v28, MEMORY[0x1E69A9750]);
    sub_1C43FC888();
    sub_1C4F027E8();
    sub_1C4EFD548();
    sub_1C44202B4();
    sub_1C4B391BC(v29, v30, MEMORY[0x1E69A92D0]);
    sub_1C43FC428();
    sub_1C4F02778();
    sub_1C43FC888();
    sub_1C4F02778();
  }

  v31 = sub_1C43FD024();
  v32(v31);
  sub_1C43FBC80();
}

void MapPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v68 = v24;
  v27 = v26;
  v61 = v28;
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v62 = v60 - v30;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v63 = v60 - v32;
  sub_1C43FBE44();
  v33 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v64 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v67 = sub_1C456902C(&qword_1EC0C3628, &unk_1C4F524C0);
  sub_1C43FCDF8();
  v65 = v39;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C4402A68();
  v41 = type metadata accessor for MapPredicate(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v45 = (v44 - v43);
  sub_1C4409678(v27, v27[3]);
  sub_1C4B38F04();
  v66 = v25;
  v46 = v68;
  sub_1C4F02BC8();
  if (v46)
  {
    sub_1C440962C(v27);
  }

  else
  {
    v68 = v27;
    v47 = v64;
    *v45 = sub_1C4F02618();
    v45[1] = v48;
    v60[3] = v48;
    sub_1C442D308();
    v51 = sub_1C4B391BC(v49, v50, MEMORY[0x1E69A9778]);
    sub_1C4F026C8();
    v60[1] = v51;
    (*(v47 + 32))(v45 + *(v41 + 20), v38, v33);
    sub_1C4EFD548();
    sub_1C44202B4();
    sub_1C4B391BC(v52, v53, MEMORY[0x1E69A92F0]);
    v54 = v63;
    v60[2] = 0;
    sub_1C4F02658();
    sub_1C49328EC(v54, v45 + *(v41 + 24), &qword_1EC0B8568, &unk_1C4F319B0);
    v55 = v41;
    v56 = v62;
    sub_1C4F02658();
    v57 = v68;
    v58 = sub_1C440E764();
    v59(v58);
    sub_1C49328EC(v56, v45 + *(v55 + 28), &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4B38FB0(v45, v61, type metadata accessor for MapPredicate);
    sub_1C440962C(v57);
    sub_1C4B38F58(v45, type metadata accessor for MapPredicate);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B373F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4B374C0(char a1)
{
  if (a1)
  {
    return 1702060386;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C4B374E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B373F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B37510(uint64_t a1)
{
  v2 = sub_1C4B39808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B3754C(uint64_t a1)
{
  v2 = sub_1C4B39808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4B37588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  v28 = sub_1C456902C(&qword_1EC0C36C8, &qword_1C4F52900);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4409678(v25, v25[3]);
  sub_1C4B39808();
  sub_1C4F02BC8();
  if (!v23)
  {
    sub_1C4B3985C();
    sub_1C4F026C8();
    v30 = v36;
    v31 = v37;
    sub_1C4F02608();
    v37 = v30;
    v38 = v31;
    sub_1C4422F90(&v35);
    sub_1C4F01A38();

    v32 = sub_1C441EE48();
    v33(v32, v28);
    sub_1C441D670(&v35, v39);
    v34 = v39[1];
    *v27 = v39[0];
    *(v27 + 16) = v34;
    *(v27 + 32) = v40;
  }

  sub_1C440962C(v25);
  sub_1C43FBC80();
}

void sub_1C4B37788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v23;
  sub_1C456902C(&qword_1EC0C36E0, &qword_1C4F52908);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4402A68();
  sub_1C43FD870();
  v27 = sub_1C4B39808();
  sub_1C440F61C(&type metadata for AnyEntity.CodingKeys, v28, v27);
  sub_1C442E860(v23, v34);
  sub_1C4409678(v34, v34[3]);
  DynamicType = swift_getDynamicType();
  v30 = v34[4];
  sub_1C440962C(v34);
  (*(v30 + 24))(&v33, DynamicType, v30);
  sub_1C4B398B0();
  sub_1C4F027E8();

  if (!v24)
  {
    sub_1C4409678(v25, v25[3]);
    LOBYTE(v33) = 1;
    sub_1C4F02728();
    sub_1C4F00FC8();
    sub_1C440962C(v34);
  }

  v31 = sub_1C43FD024();
  v32(v31);
  sub_1C43FBC80();
}

uint64_t sub_1C4B37960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E45656372756F73 && a2 == 0xEE00736569746974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4B37ACC(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6D617473656D6974;
      break;
    case 3:
      result = 0x6E45656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B37B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B37BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B37960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B37C0C(uint64_t a1)
{
  v2 = sub_1C4B39010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B37C48(uint64_t a1)
{
  v2 = sub_1C4B39010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *SourceEntityRepresentation.init(source:identifier:timestamp:sourceEntities:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  ObjectType = swift_getObjectType();
  sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  String.sourceBasedOnPrefix.getter();
  if (sub_1C44157D4(v14, 1, v15) != 1)
  {
    sub_1C448B210(v14, v19);
    if (*v19 == *a1 && v19[1] == a1[1])
    {
      sub_1C4407AF8();
      sub_1C4B38F58(v19, v23);
    }

    else
    {
      v21 = sub_1C4F02938();
      sub_1C4407AF8();
      sub_1C4B38F58(v19, v22);
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v24 = &v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier];
    *v24 = a2;
    *(v24 + 1) = a3;
    sub_1C4B38FB0(a1, &v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source], type metadata accessor for Source);
    *&v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_timestamp] = a5;
    *&v5[OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities] = a4;
    v27.receiver = v5;
    v27.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v27, sel_init);
    sub_1C4B38F58(a1, type metadata accessor for Source);
    return v25;
  }

  sub_1C4420C3C(v14, &unk_1EC0C0760, &qword_1C4F170D0);
LABEL_11:
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FB1D00);
  MEMORY[0x1C6940010](*a1, a1[1]);
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4FB1D30);
  MEMORY[0x1C6940010](a2, a3);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void *SourceEntityRepresentation.__allocating_init(from:)(void *a1)
{
  type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = sub_1C456902C(&qword_1EC0C3630, &qword_1C4F524D0);
  sub_1C43FCDF8();
  v11 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = a1[3];
  v42 = a1;
  v16 = sub_1C4409678(a1, v15);
  sub_1C4B39010();
  v17 = v41;
  sub_1C4F02BC8();
  if (v17)
  {
    sub_1C440962C(v42);
  }

  else
  {
    v39 = v5;
    v41 = v11;
    LOBYTE(v44[0]) = 0;
    sub_1C43FDE1C();
    sub_1C4B391BC(v18, v19, &protocol conformance descriptor for Source);
    sub_1C4F026C8();
    sub_1C443014C(1);
    v20 = sub_1C4F02678();
    v21 = v41;
    v22 = v20;
    v24 = v23;
    sub_1C443014C(2);
    v25 = sub_1C4F02698();
    sub_1C456902C(&qword_1EC0C3640, &qword_1C4F524D8);
    LOBYTE(v44[0]) = 3;
    sub_1C4B390F0(&qword_1EC0C3648, sub_1C4B39064, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v37 = v22;
    v38 = v24;
    v27 = v46;
    v28 = *(v46 + 16);
    if (v28)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_1C459EDA0();
      v29 = v45;
      v36[1] = v27;
      v30 = v27 + 32;
      v31 = v40;
      do
      {
        sub_1C4B390B8(v30, v43);
        sub_1C441D670(v43, v44);
        v45 = v29;
        v32 = *(v29 + 16);
        v33 = v32 + 1;
        if (v32 >= *(v29 + 24) >> 1)
        {
          v36[0] = v32 + 1;
          sub_1C459EDA0();
          v33 = v36[0];
          v29 = v45;
        }

        *(v29 + 16) = v33;
        sub_1C441D670(v44, v29 + 40 * v32 + 32);
        v30 += 40;
        --v28;
      }

      while (v28);

      v21 = v41;
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
      v31 = v40;
    }

    v34 = v39;
    sub_1C4B38FB0(v8, v39, type metadata accessor for Source);
    v35 = objc_allocWithZone(v31);
    v16 = SourceEntityRepresentation.init(source:identifier:timestamp:sourceEntities:)(v34, v37, v38, v29, v25);
    sub_1C4B38F58(v8, type metadata accessor for Source);
    (*(v21 + 8))(v14, v9);
    sub_1C440962C(v42);
  }

  return v16;
}

void SourceEntityRepresentation.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C3658, &qword_1C4F524E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4B39010();
  sub_1C440F61C(&type metadata for SourceEntityRepresentation.CodingKeys, v4, v3);
  LOBYTE(v18[0]) = 0;
  type metadata accessor for Source(0);
  sub_1C43FDE1C();
  sub_1C4B391BC(v5, v6, &protocol conformance descriptor for Source);
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    sub_1C4F02798();
    LOBYTE(v18[0]) = 2;
    sub_1C4F027B8();
    v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities);
    v8 = *(v7 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v20 = MEMORY[0x1E69E7CC0];
      sub_1C459EE20(0, v8, 0);
      v9 = v20;
      v10 = v7 + 32;
      do
      {
        sub_1C442E860(v10, v18);
        v12 = *(v20 + 16);
        v11 = *(v20 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C459EE20(v11 > 1, v12 + 1, 1);
        }

        *(v20 + 16) = v12 + 1;
        v13 = v20 + 40 * v12;
        v14 = v18[0];
        v15 = v18[1];
        *(v13 + 64) = v19;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        v10 += 40;
        --v8;
      }

      while (v8);
    }

    *&v18[0] = v9;
    sub_1C456902C(&qword_1EC0C3640, &qword_1C4F524D8);
    sub_1C4B390F0(&qword_1EC0C3660, sub_1C4B39168, MEMORY[0x1E69E6300]);
    sub_1C43FC428();
    sub_1C4F027E8();
  }

  v16 = sub_1C43FD024();
  v17(v16);
  sub_1C43FBC80();
}

uint64_t SourceEntityRepresentation.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v87 = v6;
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v85 = v8 - v7;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v89 = v10;
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v84 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v77 - v14;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v93 = v16;
  v94 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v91 = v18 - v17;
  sub_1C43FBE44();
  v19 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v82 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v77 - v26;
  v92 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
  v28 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
  v29 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v30 = sub_1C4F00978();
  v31 = sub_1C442B738(v30, qword_1EDE2DE10);
  v80 = *(v21 + 16);
  v81 = v21 + 16;
  v80(v27, a1, v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v79 = v31;
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CB8();

  v34 = os_log_type_enabled(v32, v33);
  v83 = v19;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v78 = a2;
    v36 = v35;
    v37 = swift_slowAlloc();
    v77 = a1;
    v95 = v37;
    *v36 = 136381187;
    *(v36 + 4) = sub_1C441D828(v28, v29, &v95);
    *(v36 + 12) = 2080;
    sub_1C44202B4();
    sub_1C4B391BC(v38, v39, MEMORY[0x1E69A92F8]);
    v40 = sub_1C4F02858();
    v42 = v41;
    v43 = sub_1C441EE48();
    v44(v43, v45);
    v46 = sub_1C441D828(v40, v42, &v95);

    *(v36 + 14) = v46;
    *(v36 + 22) = 1024;
    *(v36 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v32, v33, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v36, 0x1Cu);
    swift_arrayDestroy();
    a1 = v77;
    sub_1C43FBE2C();
    a2 = v78;
    sub_1C43FBE2C();
  }

  else
  {

    v47 = sub_1C441EE48();
    v48(v47, v19);
  }

  v49 = *v92;
  v50 = v92[1];
  v95 = v28;
  v96 = v29;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v49, v50);
  v52 = v95;
  v51 = v96;
  v53 = v91;
  sub_1C4F01178();
  sub_1C4F01148();
  v55 = v54;
  (*(v93 + 8))(v53, v94);
  if (v55 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CD8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v95 = v59;
      *v58 = 136380675;
      v60 = sub_1C441D828(v52, v51, &v95);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_1C43F8000, v56, v57, "Source: failed to encode identifier as UTF8 data: %{private}s", v58, 0xCu);
      sub_1C440962C(v59);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v74 = 1;
  }

  else
  {

    sub_1C4B391BC(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v61 = v85;
    v62 = v88;
    sub_1C43FD024();
    sub_1C4F00DB8();
    v63 = sub_1C43FFE24();
    sub_1C44344B8(v63, v64);
    v65 = sub_1C43FFE24();
    sub_1C4498FD8(v65, v66, v61);
    v67 = sub_1C43FFE24();
    sub_1C441DFEC(v67, v68);
    v69 = v86;
    sub_1C43FD024();
    sub_1C4F00DA8();
    (*(v87 + 8))(v61, v62);
    v80(v82, a1, v83);
    v71 = v89;
    v70 = v90;
    (*(v89 + 16))(v84, v69, v90);
    sub_1C4EFF028();
    v72 = sub_1C43FFE24();
    sub_1C441DFEC(v72, v73);
    (*(v71 + 8))(v69, v70);
    v74 = 0;
  }

  v75 = sub_1C4EFF0C8();
  return sub_1C440BAA8(a2, v74, 1, v75);
}

id SourceEntityRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SourceEntityRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C4B38E58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SourceEntityRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C4B38F04()
{
  result = qword_1EC0C3620;
  if (!qword_1EC0C3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3620);
  }

  return result;
}

uint64_t sub_1C4B38F58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B38FB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C4B39010()
{
  result = qword_1EC0C3638;
  if (!qword_1EC0C3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3638);
  }

  return result;
}

unint64_t sub_1C4B39064()
{
  result = qword_1EC0C3650;
  if (!qword_1EC0C3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3650);
  }

  return result;
}

uint64_t sub_1C4B390F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C3640, &qword_1C4F524D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4B39168()
{
  result = qword_1EC0C3668;
  if (!qword_1EC0C3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3668);
  }

  return result;
}

uint64_t sub_1C4B391BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4B392B4(uint64_t a1)
{
  sub_1C4700EB8();
  if (v1 <= 0x3F)
  {
    sub_1C4EFEEF8();
    if (v2 <= 0x3F)
    {
      sub_1C4B393A0(319, &qword_1EC0C3680, MEMORY[0x1E69A92C8]);
      if (v3 <= 0x3F)
      {
        sub_1C4B393A0(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B393A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4B3941C(uint64_t a1)
{
  result = type metadata accessor for Source(319);
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

_BYTE *sub_1C4B3951C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B395FC()
{
  result = qword_1EC0C3698;
  if (!qword_1EC0C3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3698);
  }

  return result;
}

unint64_t sub_1C4B39654()
{
  result = qword_1EC0C36A0;
  if (!qword_1EC0C36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36A0);
  }

  return result;
}

unint64_t sub_1C4B396AC()
{
  result = qword_1EC0C36A8;
  if (!qword_1EC0C36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36A8);
  }

  return result;
}

unint64_t sub_1C4B39704()
{
  result = qword_1EC0C36B0;
  if (!qword_1EC0C36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36B0);
  }

  return result;
}

unint64_t sub_1C4B3975C()
{
  result = qword_1EC0C36B8;
  if (!qword_1EC0C36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36B8);
  }

  return result;
}

unint64_t sub_1C4B397B4()
{
  result = qword_1EC0C36C0;
  if (!qword_1EC0C36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36C0);
  }

  return result;
}

unint64_t sub_1C4B39808()
{
  result = qword_1EC0C36D0;
  if (!qword_1EC0C36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36D0);
  }

  return result;
}

unint64_t sub_1C4B3985C()
{
  result = qword_1EC0C36D8;
  if (!qword_1EC0C36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36D8);
  }

  return result;
}

unint64_t sub_1C4B398B0()
{
  result = qword_1EC0C36E8;
  if (!qword_1EC0C36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B399E4()
{
  result = qword_1EC0C36F0;
  if (!qword_1EC0C36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36F0);
  }

  return result;
}

unint64_t sub_1C4B39A3C()
{
  result = qword_1EC0C36F8;
  if (!qword_1EC0C36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C36F8);
  }

  return result;
}

unint64_t sub_1C4B39A94()
{
  result = qword_1EC0C3700;
  if (!qword_1EC0C3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3700);
  }

  return result;
}

id SourceEntityStore.Iterator.next()()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = *(v1 + 32);

      return v2;
    }

    return 0;
  }

  if (!*v0)
  {
    return 0;
  }

  v3 = [*v0 nextEvent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = [v3 eventBody];
  if (v2)
  {
    [v4 timestamp];
  }

  return v2;
}

uint64_t sub_1C4B39BBC()
{
  result = *v0;
  if (*(*v0 + 16))
  {
    result = sub_1C4868024(result);
    if (result)
    {
      v2 = result;
      sub_1C4C07300();
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C4B39C18()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1C4B39C70();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C4B39C70()
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_self();
  v3 = sub_1C4F01108();
  v4 = [v2 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = objc_allocWithZone(MEMORY[0x1E698F318]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4B3A794(v6, v5, v4);
  objc_autoreleasePoolPop(v1);
  return v8;
}

void *sub_1C4B39D1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v35 = a2;
  v36 = a5;
  v10 = sub_1C4EF98F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v32 - v18;
  v33 = *a4;
  v32[1] = *v36;
  v6[2] = 0;
  v36 = a1;
  sub_1C4EF9888();
  v34 = a3;
  sub_1C4B2FA40();
  sub_1C4EF9888();

  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1C4EF9888();

  v20(v16, v10);
  v21 = sub_1C4EF98E8();
  v23 = v22;
  v20(v19, v10);
  v6[3] = v21;
  v6[4] = v23;
  v24 = v34;
  sub_1C449ED64(v34, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore17SourceEntityStore_source);
  v25 = v35;
  v26 = sub_1C4EFD3D8();
  v28 = v27;
  sub_1C441A4E8();
  sub_1C447EB90(v24, v29);
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v30 + 8))(v25);
  sub_1C447EB90(v36, type metadata accessor for Configuration);
  v6[5] = v26;
  v6[6] = v28;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore17SourceEntityStore_stage) = v33;
  return v6;
}

uint64_t SourceEntityStore.deinit()
{

  sub_1C441A4E8();
  sub_1C447EB90(v0 + v1, v2);
  return v0;
}

uint64_t SourceEntityStore.__deallocating_deinit()
{
  SourceEntityStore.deinit();

  return swift_deallocClassInstance();
}

void SourceEntityStore.storeOutput(_:)(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C4B39C18();
  v4 = [v3 source];

  [v4 sendEvent_];
  objc_autoreleasePoolPop(v2);
}

Swift::Void __swiftcall SourceEntityStore.clearAllData()()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4B3A1CC();

  objc_autoreleasePoolPop(v0);
}

void sub_1C4B3A1CC()
{
  v0 = sub_1C4B39C18();
  v6[4] = sub_1C45646BC;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C45B7938;
  v6[3] = &unk_1F43FD220;
  v1 = _Block_copy(v6);

  [v0 pruneWithPredicateBlock_];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (qword_1EDDFFAF0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "SourceEntityStore cleared.", v5, 2u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }
}

void SourceEntityStore.makeIterator(startTime:)(double a1@<D0>, void *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v8 = v2[5];
  v7 = v2[6];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4B3A3F0(v5, v6, v8, v7, a2, a1);
}

void sub_1C4B3A3F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v12 = objc_opt_self();
  v13 = sub_1C4B3A85C(a1, a2, v12);
  objc_allocWithZone(MEMORY[0x1E698F150]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = v13;
  v15 = sub_1C4B3A7F8(a3, a4, v13);
  if (v15 && (v16 = v15, v17 = [v15 newEnumeratorFromStartTime_], v16, v17))
  {

    *a5 = v17;
    a5[1] = 0;
  }

  else
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4FB1EC0);
    MEMORY[0x1C6940010](a3, a4);
    sub_1C4F024A8();
    __break(1u);
  }
}

id sub_1C4B3A560@<X0>(void *a1@<X8>)
{
  result = SourceEntityStore.Iterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for SourceEntityStore(uint64_t a1)
{
  result = qword_1EDDE6070;
  if (!qword_1EDDE6070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B3A618(uint64_t a1)
{
  result = type metadata accessor for Source(319);
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

uint64_t sub_1C4B3A6E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B3A734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1C4B3A794(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:a3];

  return v6;
}

id sub_1C4B3A7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01108();

  v6 = [v3 initWithStream:v5 config:a3];

  return v6;
}

id sub_1C4B3A85C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

unint64_t sub_1C4B3A8A4()
{
  result = sub_1C4A99B90();
  qword_1EC0C3708 = 0x6E6F73726570;
  qword_1EC0C3710 = 0xE600000000000000;
  qword_1EC0C3718 = &type metadata for Person;
  qword_1EC0C3720 = result;
  return result;
}

uint64_t SourceEntityType.init(id:metatype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static SourceEntityType.person.getter()
{
  if (qword_1EC0B70C0 != -1)
  {
    sub_1C44177C4(&qword_1EC0B70C0);
  }

  sub_1C441A500(&qword_1EC0C3708);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3A94C()
{
  result = sub_1C4886200();
  qword_1EC0C3728 = 0x656C646E6168;
  qword_1EC0C3730 = 0xE600000000000000;
  qword_1EC0C3738 = &type metadata for Handle;
  qword_1EC0C3740 = result;
  return result;
}

uint64_t static SourceEntityType.handle.getter()
{
  if (qword_1EC0B70C8 != -1)
  {
    sub_1C44329E0(&qword_1EC0B70C8);
  }

  sub_1C441A500(&qword_1EC0C3728);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3A9E8()
{
  result = sub_1C4AD8DE8();
  strcpy(&qword_1EC0C3748, "postalAddress");
  HIWORD(qword_1EC0C3750) = -4864;
  qword_1EC0C3758 = &type metadata for PostalAddress;
  qword_1EC0C3760 = result;
  return result;
}

uint64_t static SourceEntityType.postalAddress.getter()
{
  if (qword_1EC0B70D0 != -1)
  {
    sub_1C440B2C0(&qword_1EC0B70D0);
  }

  sub_1C441A500(&qword_1EC0C3748);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AA94()
{
  result = sub_1C4ADCCEC();
  strcpy(&qword_1EC0C3768, "relationship");
  BYTE5(qword_1EC0C3770) = 0;
  HIWORD(qword_1EC0C3770) = -5120;
  qword_1EC0C3778 = &type metadata for Relationship;
  qword_1EC0C3780 = result;
  return result;
}

uint64_t static SourceEntityType.relationship.getter()
{
  if (qword_1EC0B70D8 != -1)
  {
    sub_1C442D320(&qword_1EC0B70D8);
  }

  sub_1C441A500(&qword_1EC0C3768);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AB3C()
{
  result = sub_1C4B3C228();
  strcpy(&qword_1EC0C3788, "basicProperty");
  HIWORD(qword_1EC0C3790) = -4864;
  qword_1EC0C3798 = &type metadata for BasicProperty;
  qword_1EC0C37A0 = result;
  return result;
}

uint64_t static SourceEntityType.basicProperty.getter()
{
  if (qword_1EC0B70E0 != -1)
  {
    sub_1C443375C(&qword_1EC0B70E0);
  }

  sub_1C441A500(&qword_1EC0C3788);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3ABE8()
{
  result = sub_1C4B3C1D4();
  strcpy(&qword_1EC0C37A8, "socialProfile");
  HIWORD(qword_1EC0C37B0) = -4864;
  qword_1EC0C37B8 = &type metadata for SocialMediaProfile;
  qword_1EC0C37C0 = result;
  return result;
}

uint64_t static SourceEntityType.socialProfile.getter()
{
  if (qword_1EC0B70E8 != -1)
  {
    sub_1C43FF5C8(&qword_1EC0B70E8);
  }

  sub_1C441A500(&qword_1EC0C37A8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AC94()
{
  result = sub_1C46D3F8C();
  qword_1EC0C37C8 = 0x656D796F6C706D65;
  qword_1EC0C37D0 = 0xEA0000000000746ELL;
  qword_1EC0C37D8 = &type metadata for Employment;
  qword_1EC0C37E0 = result;
  return result;
}

uint64_t static SourceEntityType.employment.getter()
{
  if (qword_1EC0B70F0 != -1)
  {
    sub_1C440FBB0(&qword_1EC0B70F0);
  }

  sub_1C441A500(&qword_1EC0C37C8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3AD38()
{
  sub_1C43FC174();
  sub_1C4B3C180();
  sub_1C4430164(&qword_1EC0C37E8);
  *(v1 + 16) = &type metadata for InstantMessageAddress;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.instantMessageAddress.getter()
{
  if (qword_1EC0B70F8 != -1)
  {
    sub_1C43FDE34(&qword_1EC0B70F8);
  }

  sub_1C441A500(&qword_1EC0C37E8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3ADDC()
{
  result = sub_1C4B2E360();
  qword_1EC0C3808 = 1735290739;
  qword_1EC0C3810 = 0xE400000000000000;
  qword_1EC0C3818 = &type metadata for Song;
  qword_1EC0C3820 = result;
  return result;
}

uint64_t static SourceEntityType.song.getter()
{
  if (qword_1EC0B7100 != -1)
  {
    sub_1C4413780(&qword_1EC0B7100);
  }

  sub_1C441A500(&qword_1EC0C3808);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AE74()
{
  result = sub_1C458AACC();
  qword_1EC0C3828 = 7368801;
  qword_1EC0C3830 = 0xE300000000000000;
  qword_1EC0C3838 = &type metadata for App;
  qword_1EC0C3840 = result;
  return result;
}

uint64_t static SourceEntityType.app.getter()
{
  if (qword_1EC0B7108 != -1)
  {
    sub_1C4412488(&qword_1EC0B7108);
  }

  sub_1C441A500(&qword_1EC0C3828);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3AF0C()
{
  result = sub_1C4782F64();
  qword_1EC0C3848 = 0x746144746E657665;
  qword_1EC0C3850 = 0xEA00000000007365;
  qword_1EC0C3858 = &type metadata for EventDates;
  qword_1EC0C3860 = result;
  return result;
}

uint64_t static SourceEntityType.eventDates.getter()
{
  if (qword_1EC0B7110 != -1)
  {
    sub_1C4400DA8(&qword_1EC0B7110);
  }

  sub_1C441A500(&qword_1EC0C3848);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3AFB0()
{
  sub_1C43FC174();
  sub_1C479B050();
  sub_1C4430164(&qword_1EC0C3868);
  *(v1 + 16) = &type metadata for EventParticipant;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.eventParticipant.getter()
{
  if (qword_1EC0B7118 != -1)
  {
    sub_1C44202CC(&qword_1EC0B7118);
  }

  sub_1C441A500(&qword_1EC0C3868);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B054()
{
  result = sub_1C4B3C12C();
  qword_1EC0C3888 = 0x4C64657469736976;
  qword_1EC0C3890 = 0xEF6E6F697461636FLL;
  qword_1EC0C3898 = &type metadata for VisitedLocation;
  qword_1EC0C38A0 = result;
  return result;
}

uint64_t static SourceEntityType.visitedLocation.getter()
{
  if (qword_1EC0B7120 != -1)
  {
    sub_1C4425FF4(&qword_1EC0B7120);
  }

  sub_1C441A500(&qword_1EC0C3888);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B100()
{
  result = sub_1C479C84C();
  qword_1EC0C38A8 = 0x6E6553746E657665;
  qword_1EC0C38B0 = 0xEB00000000726564;
  qword_1EC0C38B8 = &type metadata for EventSender;
  qword_1EC0C38C0 = result;
  return result;
}

uint64_t static SourceEntityType.eventSender.getter()
{
  if (qword_1EC0B7128 != -1)
  {
    sub_1C440D7F8(&qword_1EC0B7128);
  }

  sub_1C441A500(&qword_1EC0C38A8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3B1A8()
{
  sub_1C43FC174();
  sub_1C4B3C0D8();
  sub_1C4430164(&qword_1EC0C38C8);
  *(v1 + 16) = &type metadata for StructuredLocation;
  *(v1 + 24) = v0;
}

uint64_t static SourceEntityType.structuredLocation.getter()
{
  if (qword_1EC0B7130 != -1)
  {
    sub_1C44111C8(&qword_1EC0B7130);
  }

  sub_1C441A500(&qword_1EC0C38C8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B24C()
{
  result = sub_1C481C3B8();
  qword_1EC0C38E8 = 0x656E6F5A656D6974;
  unk_1EC0C38F0 = 0xE800000000000000;
  qword_1EC0C38F8 = &type metadata for GDTimeZone;
  qword_1EC0C3900 = result;
  return result;
}

uint64_t static SourceEntityType.timeZone.getter()
{
  if (qword_1EC0B7138 != -1)
  {
    sub_1C4409024(&qword_1EC0B7138);
  }

  sub_1C441A500(&qword_1EC0C38E8);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C4B3B2EC()
{
  result = sub_1C47CEF0C();
  strcpy(&qword_1EC0C3908, "familyMember");
  BYTE5(qword_1EC0C3910) = 0;
  HIWORD(qword_1EC0C3910) = -5120;
  qword_1EC0C3918 = &type metadata for FamilyMember;
  qword_1EC0C3920 = result;
  return result;
}

uint64_t static SourceEntityType.familyMember.getter()
{
  if (qword_1EC0B7140 != -1)
  {
    sub_1C4403710(&qword_1EC0B7140);
  }

  sub_1C441A500(&qword_1EC0C3908);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B3B394()
{
  sub_1C43FC174();
  sub_1C4783930();
  sub_1C4430164(&qword_1EC152C28);
  *(v1 + 16) = &type metadata for EventKitCalendar;
  *(v1 + 24) = v0;
}

uint64_t SourceEntityType.id.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

__n128 SourceEntityType.init(rawValue:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C4407B10(0x6E6F73726570, 0xE600000000000000) & 1) != 0)
  {

    if (qword_1EC0B70C0 != -1)
    {
      sub_1C44177C4(&qword_1EC0B70C0);
    }

    v7 = &qword_1EC0C3708;
LABEL_9:
    v8 = *v7;
    v9 = v7[3];
    v32 = *(v7 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_10;
  }

  v11 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v11 || (sub_1C4407B10(0x656C646E6168, 0xE600000000000000) & 1) != 0)
  {

    if (qword_1EC0B70C8 != -1)
    {
      sub_1C44329E0(&qword_1EC0B70C8);
    }

    v7 = &qword_1EC0C3728;
    goto LABEL_9;
  }

  v12 = a1 == 0x64416C6174736F70 && a2 == 0xED00007373657264;
  if (v12 || (sub_1C4407B10(0x64416C6174736F70, 0xED00007373657264) & 1) != 0)
  {

    if (qword_1EC0B70D0 != -1)
    {
      sub_1C440B2C0(&qword_1EC0B70D0);
    }

    v7 = &qword_1EC0C3748;
    goto LABEL_9;
  }

  v13 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
  if (v13 || (sub_1C4407B10(0x6E6F6974616C6572, 0xEC00000070696873) & 1) != 0)
  {

    if (qword_1EC0B70D8 != -1)
    {
      sub_1C442D320(&qword_1EC0B70D8);
    }

    v7 = &qword_1EC0C3768;
    goto LABEL_9;
  }

  v14 = a1 == 0x6F72506369736162 && a2 == 0xED00007974726570;
  if (v14 || (sub_1C4407B10(0x6F72506369736162, 0xED00007974726570) & 1) != 0)
  {

    if (qword_1EC0B70E0 != -1)
    {
      sub_1C443375C(&qword_1EC0B70E0);
    }

    v7 = &qword_1EC0C3788;
    goto LABEL_9;
  }

  v15 = a1 == 0x72506C6169636F73 && a2 == 0xED0000656C69666FLL;
  if (v15 || (sub_1C4407B10(0x72506C6169636F73, 0xED0000656C69666FLL) & 1) != 0)
  {

    if (qword_1EC0B70E8 != -1)
    {
      sub_1C43FF5C8(&qword_1EC0B70E8);
    }

    v7 = &qword_1EC0C37A8;
    goto LABEL_9;
  }

  v16 = a1 == 0x656D796F6C706D65 && a2 == 0xEA0000000000746ELL;
  if (v16 || (sub_1C4407B10(0x656D796F6C706D65, 0xEA0000000000746ELL) & 1) != 0)
  {

    if (qword_1EC0B70F0 != -1)
    {
      sub_1C440FBB0(&qword_1EC0B70F0);
    }

    v7 = &qword_1EC0C37C8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v18 = a1 == 0xD000000000000015 && v17 == a2;
  if (v18 || (sub_1C4407B10(0xD000000000000015, v17) & 1) != 0)
  {

    if (qword_1EC0B70F8 != -1)
    {
      sub_1C43FDE34(&qword_1EC0B70F8);
    }

    v7 = &qword_1EC0C37E8;
    goto LABEL_9;
  }

  v19 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v19 || (sub_1C4407B10(1735290739, 0xE400000000000000) & 1) != 0)
  {

    if (qword_1EC0B7100 != -1)
    {
      sub_1C4413780(&qword_1EC0B7100);
    }

    v7 = &qword_1EC0C3808;
    goto LABEL_9;
  }

  v20 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v20 || (sub_1C4407B10(7368801, 0xE300000000000000) & 1) != 0)
  {

    if (qword_1EC0B7108 != -1)
    {
      sub_1C4412488(&qword_1EC0B7108);
    }

    v7 = &qword_1EC0C3828;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v22 = a1 == 0xD000000000000010 && v21 == a2;
  if (v22 || (sub_1C4407B10(0xD000000000000010, v21) & 1) != 0)
  {

    if (qword_1EC0B7118 != -1)
    {
      sub_1C44202CC(&qword_1EC0B7118);
    }

    v7 = &qword_1EC0C3868;
    goto LABEL_9;
  }

  v23 = a1 == 0x4C64657469736976 && a2 == 0xEF6E6F697461636FLL;
  if (v23 || (sub_1C4407B10(0x4C64657469736976, 0xEF6E6F697461636FLL) & 1) != 0)
  {

    if (qword_1EC0B7120 != -1)
    {
      sub_1C4425FF4(&qword_1EC0B7120);
    }

    v7 = &qword_1EC0C3888;
    goto LABEL_9;
  }

  v24 = a1 == 0x746144746E657665 && a2 == 0xEA00000000007365;
  if (v24 || (sub_1C4407B10(0x746144746E657665, 0xEA00000000007365) & 1) != 0)
  {

    if (qword_1EC0B7110 != -1)
    {
      sub_1C4400DA8(&qword_1EC0B7110);
    }

    v7 = &qword_1EC0C3848;
    goto LABEL_9;
  }

  v25 = a1 == 0x6E6553746E657665 && a2 == 0xEB00000000726564;
  if (v25 || (sub_1C4407B10(0x6E6553746E657665, 0xEB00000000726564) & 1) != 0)
  {

    if (qword_1EC0B7128 != -1)
    {
      sub_1C440D7F8(&qword_1EC0B7128);
    }

    v7 = &qword_1EC0C38A8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v27 = a1 == 0xD000000000000012 && v26 == a2;
  if (v27 || (sub_1C4407B10(0xD000000000000012, v26) & 1) != 0)
  {

    if (qword_1EC0B7130 != -1)
    {
      sub_1C44111C8(&qword_1EC0B7130);
    }

    v7 = &qword_1EC0C38C8;
    goto LABEL_9;
  }

  v28 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (v28 || (sub_1C4407B10(0x656E6F5A656D6974, 0xE800000000000000) & 1) != 0)
  {

    if (qword_1EC0B7138 != -1)
    {
      sub_1C4409024(&qword_1EC0B7138);
    }

    v7 = &qword_1EC0C38E8;
    goto LABEL_9;
  }

  v29 = a1 == 0x654D796C696D6166 && a2 == 0xEC0000007265626DLL;
  if (v29 || (sub_1C4407B10(0x654D796C696D6166, 0xEC0000007265626DLL) & 1) != 0)
  {

    if (qword_1EC0B7140 != -1)
    {
      sub_1C4403710(&qword_1EC0B7140);
    }

    v7 = &qword_1EC0C3908;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v31 = a1 == 0xD000000000000010 && v30 == a2;
  if (v31 || (sub_1C4407B10(0xD000000000000010, v30) & 1) != 0)
  {

    if (qword_1EC0B7148 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC152C28;
    goto LABEL_9;
  }

  sub_1C4B3BBD8(a1, a2, &v33);

  v8 = v33;
  v9 = v35;
  v32 = v34;
  if (!v34)
  {
    v32 = __PAIR128__(*(&v34 + 1), 0);
  }

LABEL_10:
  *a3 = v8;
  result = v32;
  *(a3 + 8) = v32;
  *(a3 + 24) = v9;
  return result;
}

double sub_1C4B3BBD8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 4))(), (*(v6 + 8))(&v22, a1, a2), v23))
  {
    v21 = v23;
    v7 = v22;
    v8 = v24;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      sub_1C43FE984();
      *(v12 + 4) = sub_1C441D828(0xD000000000000022, v14, &v22);
      _os_log_impl(&dword_1C43F8000, v10, v11, "SourceEntityType: resolveInternalType: loaded %s", v12, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    *a3 = v7;
    result = *&v21;
    *(a3 + 8) = v21;
    *(a3 + 24) = v8;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C441D828(a1, a2, &v22);
      _os_log_impl(&dword_1C43F8000, v17, v18, "InternalPlugin: SourceEntityType: resolveInternalType: failed to resolve type for %s", v19, 0xCu);
      sub_1C440962C(v20);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C4B3BEE4@<X0>(uint64_t *a1@<X8>)
{
  result = SourceEntityType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C4B3BFC0()
{
  result = qword_1EC0C3928;
  if (!qword_1EC0C3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3928);
  }

  return result;
}

unint64_t sub_1C4B3C084()
{
  result = qword_1EC0C3930;
  if (!qword_1EC0C3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3930);
  }

  return result;
}

unint64_t sub_1C4B3C0D8()
{
  result = qword_1EC0C3938;
  if (!qword_1EC0C3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3938);
  }

  return result;
}

unint64_t sub_1C4B3C12C()
{
  result = qword_1EC0C3940;
  if (!qword_1EC0C3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3940);
  }

  return result;
}

unint64_t sub_1C4B3C180()
{
  result = qword_1EC0C3948;
  if (!qword_1EC0C3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3948);
  }

  return result;
}

unint64_t sub_1C4B3C1D4()
{
  result = qword_1EC0C3950;
  if (!qword_1EC0C3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3950);
  }

  return result;
}

unint64_t sub_1C4B3C228()
{
  result = qword_1EC0C3958;
  if (!qword_1EC0C3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3958);
  }

  return result;
}

uint64_t String.prefixed(with:)(uint64_t a1)
{
  sub_1C440C724(a1);
  sub_1C445E9B8();
  MEMORY[0x1C6940010](v2, v1);
  return v4;
}

void String.sourceBasedOnPrefix.getter()
{
  sub_1C43FBD3C();
  v16 = v0;
  v15 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  if (qword_1EDDE9370 != -1)
  {
LABEL_11:
    sub_1C443377C(&qword_1EDDE9370);
  }

  v7 = 0;
  v8 = off_1EDDE9378;
  v9 = *(off_1EDDE9378 + 2);
  while (1)
  {
    if (v9 == v7)
    {
      v12 = 1;
      v13 = v16;
      goto LABEL_9;
    }

    if (v7 >= v8[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_1C4407B2C();
    sub_1C44EE574();
    v10 = v3[1];
    v17 = *v3;
    v18 = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445E9B8();
    v11 = sub_1C4F013E8();

    if (v11)
    {
      break;
    }

    ++v7;
    sub_1C4570DE4(v3);
  }

  sub_1C4407B2C();
  sub_1C44EE62C();
  v13 = v16;
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4570DE4(v6);
  v12 = 0;
LABEL_9:
  v14 = type metadata accessor for Source(0);
  sub_1C440BAA8(v13, v12, 1, v14);
  sub_1C43FE9F0();
}

uint64_t String.hasPrefix(_:)(uint64_t a1)
{
  sub_1C440C724(a1);
  sub_1C445E9B8();
  v1 = sub_1C4F013E8();

  return v1 & 1;
}

void sub_1C4B3C50C()
{
  sub_1C43FBD3C();
  sub_1C4404078();
  v2 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v47[0] = v3;
  v47[1] = v4;
  *&v50 = v3;
  *(&v50 + 1) = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3980, &qword_1C4F52E10);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v48, &v51);
    sub_1C4409678(&v51, v52);
    sub_1C440D818();
    sub_1C4EF9688();
    v48[0] = v50;
    sub_1C440962C(&v51);
    goto LABEL_59;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_1C4420C3C(v48, &qword_1EC0C3988, &qword_1C4F52E18);
  if ((v0 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    *&v48[0] = v1;
    *(&v48[0] + 1) = v0 & 0xFFFFFFFFFFFFFFLL;
    v5 = v48;
    v6 = HIBYTE(v0) & 0xF;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v5 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1C4F022F8();
  }

  sub_1C4B4022C(v5, v6, &v51);
  v7 = *(&v51 + 1);
  v8 = v51;
  if (*(&v51 + 1) >> 60 != 15)
  {
    v48[0] = v51;
    goto LABEL_59;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v0) & 0xF;
  }

  else
  {
    v9 = v1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v48[0] = MEMORY[0x1C69386E0](v9);
  *(&v48[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v48[0]);
  v42[2] = v47;
  v11 = sub_1C4B40348(sub_1C4B408A4, v42);
  v13 = *(&v48[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v48[0]);
  switch(*(&v48[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v48[0]) - LODWORD(v48[0]);
      if (__OFSUB__(DWORD1(v48[0]), v48[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v48[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v48[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v48[0] + 16);
      v21 = *(*&v48[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1C4EF99E8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42[4] = v2;
      v43 = v8;
      v44 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v45 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v46 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v48[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v2 = v18 & 0xC;
    v28 = v18;
    if (v2 == v27)
    {
      v32 = sub_1C4425414();
      v28 = sub_1C4B9AAA8(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1C4F01358();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C4F01398();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v51 = v14;
      *(&v51 + 1) = v46;
      v31 = *(&v51 + v29);
    }

    else
    {
      v30 = v45;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C4F022F8();
      }

      v31 = *(v30 + v29);
    }

    if (v2 == v27)
    {
      v35 = sub_1C4425414();
      v18 = sub_1C4B9AAA8(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    sub_1C4425414();
    v18 = sub_1C4F01368();
LABEL_46:
    *(&v50 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      sub_1C441C4DC();
      sub_1C4EF9A08();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    sub_1C441C4DC();
    sub_1C4EF9A08();
    sub_1C441DFEC(v43, v44);
    goto LABEL_58;
  }

  sub_1C441DFEC(v43, v44);
LABEL_59:
  v38 = sub_1C4410428();
  sub_1C44344B8(v38, v39);

  v40 = sub_1C4410428();
  sub_1C4434000(v40, v41);
  sub_1C4410428();
  sub_1C43FE9F0();
}

void sub_1C4B3C9B4()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDDF7898);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC(&qword_1EDDFED28);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, &unk_1EDDFD088);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4414EE8(0x6E63u);
}

uint64_t SourceIdPrefix.init(string:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for SourceIdPrefix(0);
  sub_1C441A520();
  return sub_1C44EE62C();
}

void sub_1C4B3CAA4()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDDF7980);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC(&qword_1EDDFED28);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, &unk_1EDDFD088);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x696E6167724F6E63);
}

uint64_t sub_1C4B3CB68(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v4, a2);
  sub_1C4407B2C();
  return sub_1C44EE574();
}

void sub_1C4B3CBC0()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDDE9328);
  sub_1C442D340();
  if (qword_1EDDFED28 != -1)
  {
    sub_1C440FADC(&qword_1EDDFED28);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, &unk_1EDDFD088);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4405338(0x6E63u);
}

void sub_1C4B3CC6C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDDF78D0);
  sub_1C442D340();
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD0D8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDDF78D0 = v2;
  unk_1EDDF78D8 = 0xE800000000000000;
}

void sub_1C4B3CD20()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDDF79A8);
  sub_1C442D340();
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4410520(&qword_1EDDFD0D0);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD0D8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDDF79A8 = v2;
  *algn_1EDDF79B0 = 0xEB00000000707041;
}

void sub_1C4B3CDDC()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDDE92D0);
  sub_1C442D340();
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD270);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(17);
}

void sub_1C4B3CE94()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDDE9288);
  sub_1C442D340();
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD270);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(21);
}

void sub_1C4B3CF4C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CEE8);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8(&qword_1EDDFD068);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD070);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4414EE8(0x6773u);
}

void sub_1C4B3CFD4()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D050);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8(&qword_1EDDFD068);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD070);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4405338(0x6773u);
}

uint64_t sub_1C4B3D05C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D098);
  sub_1C442D340();
  if (qword_1EDDFD068 != -1)
  {
    sub_1C44123D8(&qword_1EDDFD068);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD070);
  sub_1C441A520();
  result = sub_1C44EE574();
  strcpy(qword_1EDE2D098, "sgContactApp");
  unk_1EDE2D0A5 = 0;
  unk_1EDE2D0A6 = -5120;
  return result;
}

void sub_1C4B3D0FC()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CF18);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664(&qword_1EDDFD110);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD118);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4426E38(0x6773u);
}

uint64_t sub_1C4B3D184()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D0C8);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664(&qword_1EDDFD110);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD118);
  sub_1C441A520();
  result = sub_1C44EE574();
  qword_1EDE2D0C8 = 0x697461636F4C6773;
  *algn_1EDE2D0D0 = 0xEA00000000006E6FLL;
  return result;
}

void sub_1C4B3D220()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2CF00);
  sub_1C442D340();
  if (qword_1EDDFD110 != -1)
  {
    sub_1C4403664(&qword_1EDDFD110);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD118);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDE2CF00 = v2;
  unk_1EDE2CF08 = 0xE800000000000000;
}

uint64_t sub_1C4B3D2B0()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D5D8);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C(&qword_1EDDFED08);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFED10);
  sub_1C441A520();
  result = sub_1C44EE574();
  qword_1EDE2D5D8 = 0x6E6576456566696CLL;
  unk_1EDE2D5E0 = 0xE900000000000074;
  return result;
}

void sub_1C4B3D34C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D6C8);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C(&qword_1EDDFED08);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(17);
}

void sub_1C4B3D40C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D668);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C(&qword_1EDDFED08);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(20);
}

void sub_1C4B3D4A0()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D650);
  sub_1C442D340();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C(&qword_1EDDFED08);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFED10);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(22);
}

uint64_t sub_1C4B3D534()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D068);
  v1 = sub_1C442B738(v0, qword_1EDE2D068);
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Source(0);
  sub_1C442B738(v2, qword_1EDDFD2A8);
  result = sub_1C44EE574();
  *v1 = 0x694C657275747566;
  v1[1] = 0xEF746E6576456566;
  return result;
}

void sub_1C4B3D604()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CF78);
  sub_1C442D340();
  if (qword_1EDDFED40 != -1)
  {
    sub_1C440604C(&qword_1EDDFED40);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2A8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(23);
}

uint64_t sub_1C4B3D6C4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v8, a2);
  v9 = sub_1C442B738(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Source(0);
  sub_1C442B738(v10, a4);
  sub_1C441A520();
  result = sub_1C44EE574();
  *v9 = 0xD000000000000015;
  v9[1] = 0x80000001C4FB2040;
  return result;
}

void sub_1C4B3D77C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CF48);
  sub_1C442D340();
  if (qword_1EDDFED40 != -1)
  {
    sub_1C440604C(&qword_1EDDFED40);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2A8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(28);
}

void sub_1C4B3D810()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D608);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD138);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D608 = v2 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
  *algn_1EDE2D610 = 0xE700000000000000;
}

void sub_1C4B3D8A0()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D728);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD138);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D728 = v2 & 0xFFFFFFFFFFFFLL | 0x5070000000000000;
  *algn_1EDE2D730 = 0xED00006E6F737265;
}

void sub_1C4B3D93C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D740);
  sub_1C442D340();
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8(&qword_1EDDFD130);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD138);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C441E6C0();
  qword_1EDE2D740 = v2 & 0xFFFFFFFFFFFFLL | 0x4170000000000000;
  unk_1EDE2D748 = 0xEA00000000007070;
}

void sub_1C4B3D9D0()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, &qword_1EDE2D5F0);
  sub_1C442D340();
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD0B0);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C440FBD0();
  qword_1EDE2D5F0 = v2;
  unk_1EDE2D5F8 = 0xE800000000000000;
}

void sub_1C4B3DA70()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D620);
  sub_1C442D340();
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD180);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(30);
}

void sub_1C4B3DB14()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D080);
  sub_1C442D340();
  if (qword_1EDDFED38 != -1)
  {
    sub_1C442BF5C(&qword_1EDDFED38);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD0F0);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4415C74();
  sub_1C44163F4(v2);
}

void sub_1C4B3DBA8()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D710);
  sub_1C442D340();
  if (qword_1EDDFED38 != -1)
  {
    sub_1C442BF5C(&qword_1EDDFED38);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD0F0);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4415C74();
  sub_1C44163F4(v2);
}

void sub_1C4B3DC3C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2DD40);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8(&qword_1EDDFD150);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD158);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4426E38(0x6B65u);
}

void sub_1C4B3DCC4()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D680);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8(&qword_1EDDFD150);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD158);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(20);
}

void sub_1C4B3DD58()
{
  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v1, &qword_1EDE2D6B0);
  sub_1C442D340();
  if (qword_1EDDFD150 != -1)
  {
    sub_1C44124A8(&qword_1EDDFD150);
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, qword_1EDDFD158);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2D6B0 = v3;
  unk_1EDE2D6B8 = v0;
}

void sub_1C4B3DDEC()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D6F8);
  sub_1C442D340();
  if (qword_1EDDFD2F0 != -1)
  {
    sub_1C441CD94(&qword_1EDDFD2F0);
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD2F8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x656C646E7542736CLL);
}

void sub_1C4B3DE8C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D698);
  sub_1C442D340();
  if (qword_1EDDFD2F0 != -1)
  {
    sub_1C441CD94(&qword_1EDDFD2F0);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD2F8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(19);
}

void sub_1C4B3DF20()
{
  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v1, &qword_1EDE2DD58);
  sub_1C442D340();
  if (qword_1EDDFD218 != -1)
  {
    sub_1C44353D0(&qword_1EDDFD218);
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD220);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2DD58 = v3;
  unk_1EDE2DD60 = v0;
}

void sub_1C4B3DFB4()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D638);
  sub_1C442D340();
  if (qword_1EDDFD218 != -1)
  {
    sub_1C44353D0(&qword_1EDDFD218);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD220);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(24);
}

void sub_1C4B3E048()
{
  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v1, &qword_1EDE2CFF0);
  sub_1C442D340();
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FC8A0(&qword_1EDDFD240);
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD248);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFF0 = v3;
  *algn_1EDE2CFF8 = v0;
}

void sub_1C4B3E0DC()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CF30);
  sub_1C442D340();
  if (qword_1EDDFD240 != -1)
  {
    sub_1C43FC8A0(&qword_1EDDFD240);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD248);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(29);
}

uint64_t sub_1C4B3E170()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D0B0);
  v1 = sub_1C442B738(v0, qword_1EDE2D0B0);
  if (qword_1EDDFD318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Source(0);
  sub_1C442B738(v2, qword_1EDDFD320);
  result = sub_1C44EE574();
  strcpy(v1, "relationship");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  return result;
}

void sub_1C4B3E23C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D6E0);
  sub_1C442D340();
  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Source(0);
  sub_1C442B738(v1, qword_1EDDFD2D0);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44163F4(0x6974616C65526770);
}

void sub_1C4B3E2EC()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D020);
  sub_1C442D340();
  if (qword_1EDDFD340 != -1)
  {
    sub_1C4430170(&qword_1EDDFD340);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD348);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E380()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D038);
  sub_1C442D340();
  if (qword_1EDDFD340 != -1)
  {
    sub_1C4430170(&qword_1EDDFD340);
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, qword_1EDDFD348);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E414()
{
  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v1, &qword_1EDE2CFD8);
  sub_1C442D340();
  if (qword_1EDDFD1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD1F8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFD8 = v3;
  unk_1EDE2CFE0 = v0;
}

void sub_1C4B3E4B8()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2D008);
  sub_1C442D340();
  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD290);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(16);
}

void sub_1C4B3E55C()
{
  v0 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v0, qword_1EDE2CF90);
  sub_1C442D340();
  if (qword_1EDDFD1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C440E774();
  sub_1C442B738(v1, &qword_1EDDFD1A8);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C44111E8(22);
}

void sub_1C4B3E600()
{
  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C44F9918(v1, &qword_1EDE2CFC0);
  sub_1C442D340();
  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C440E774();
  sub_1C442B738(v2, &qword_1EDDFD1D0);
  sub_1C441A520();
  sub_1C44EE574();
  sub_1C4408FE4();
  qword_1EDE2CFC0 = v3;
  unk_1EDE2CFC8 = v0;
}

uint64_t SourceIdPrefix.source.getter()
{
  type metadata accessor for SourceIdPrefix(0);
  sub_1C441A520();
  return sub_1C44EE574();
}

uint64_t sub_1C4B3E6E0()
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && ((*(off_1EDDFF3D0 + 3))(), (v1 = (*(v0 + 8))()) != 0))
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 16);

      _os_log_impl(&dword_1C43F8000, v4, v5, "InternalPlugin: SourceIdPrefix: loadInternalSourceIdPrefixes: loaded %ld sources", v6, 0xCu);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "InternalPlugin: SourceIdPrefix: loadInternalSourceIdPrefixes: failed to load internal sources", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    return 0;
  }

  return v2;
}